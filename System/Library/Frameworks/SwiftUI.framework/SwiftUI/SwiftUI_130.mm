uint64_t ForEach.reuseID<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 16))(a2, v2, a1);
  swift_getKeyPath();
  type metadata accessor for KeyPath();
  v5 = _AppendKeyPath.appending<A, B, C>(path:)();

  v6 = *(a1 + 68);

  *(a2 + v6) = v5;
  return result;
}

uint64_t static _ReclaimForEachElementsViewModifier._makeInputs(modifier:inputs:)()
{
  AGGraphCreateOffsetAttribute2();
  AGCreateWeakAttribute();
  return PropertyList.subscript.setter();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _ReclaimForEachElementsViewModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ReclaimForEachElementsViewModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance _ReclaimForEachElementsViewModifier();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance _ReclaimForEachElementsViewModifier()
{
  AGGraphCreateOffsetAttribute2();
  AGCreateWeakAttribute();
  return PropertyList.subscript.setter();
}

uint64_t static ForEach.makeWithOffset<>(_:content:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v5[1] = 0;

  return ForEach.init(_:idGenerator:content:)();
}

BOOL ForEach.isConstant.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));

  type metadata accessor for ForEach.IDGenerator();

  return v2 == 0;
}

uint64_t _DrawingGroupEffect.rendersAsynchronously.setter(uint64_t result)
{
  if (result)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t (*_DrawingGroupEffect.rendersAsynchronously.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 4) != 0;
  return _DrawingGroupEffect.rendersAsynchronously.modify;
}

uint64_t _DrawingGroupEffect.rendersAsynchronously.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 8) = v1 | *(result + 8) & 0xFFFFFFFB;
  return result;
}

BOOL _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI23AccessibilityPropertiesV_s5NeverOytTg503_s7c4UI23e22AttachmentVAAE16mergedF19AA0cF0VSgvgyAFXEfU_AFTf1cn_n(uint64_t a1)
{
  outlined init with copy of AccessibilityProperties?(a1, __src);
  v1 = __src[35];
  if (__src[35])
  {
    memcpy(__dst, __src, sizeof(__dst));
    AccessibilityProperties.merge(with:)(__dst);
    lazy protocol witness table accessor for type AccessibilityProperties.BridgedElementKey and conformance AccessibilityProperties.BridgedElementKey();
    AccessibilityProperties.subscript.setter();
    outlined destroy of AccessibilityProperties(__dst);
  }

  return v1 == 0;
}

uint64_t AccessibilityAttachment.Tree.mergedProperties.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  result = outlined init with copy of AccessibilityAttachment.Tree(v1, v105);
  if (!v106)
  {
    memcpy(v104, v105, 0x128uLL);
    AccessibilityAttachment.mergedProperties.getter(v3);
    return outlined destroy of AccessibilityAttachment(v104);
  }

  if (v106 != 1)
  {
    v3[16] = 0u;
    v3[17] = 0u;
    v3[14] = 0u;
    v3[15] = 0u;
    v3[12] = 0u;
    v3[13] = 0u;
    v3[10] = 0u;
    v3[11] = 0u;
    v3[8] = 0u;
    v3[9] = 0u;
    v3[6] = 0u;
    v3[7] = 0u;
    v3[4] = 0u;
    v3[5] = 0u;
    v3[2] = 0u;
    v3[3] = 0u;
    *v3 = 0u;
    v3[1] = 0u;
    return result;
  }

  v5 = v105[0];
  v6 = *(v105[0] + 16);
  if (!v6)
  {

    v62 = MEMORY[0x1E69E7CC0];
    goto LABEL_181;
  }

  v7 = 0;
  v75 = v105[0] + 32;
  v68 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v7 >= *(v5 + 16))
    {
      goto LABEL_188;
    }

    outlined init with copy of AccessibilityAttachment.Tree(v75 + 304 * v7, v104);
    outlined init with copy of AccessibilityAttachment.Tree(v104, v100);
    if (!v101)
    {
      memcpy(v102, v100, 0x128uLL);
      if (!*(&v102[17] + 1))
      {
        goto LABEL_13;
      }

      goto LABEL_149;
    }

    if (v101 != 1)
    {
      memset(v102, 0, 296);
LABEL_13:
      outlined destroy of AccessibilityAttachment.Tree(v104);
      _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_1(v102, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
      memset(v103, 0, sizeof(v103));
      goto LABEL_14;
    }

    v73 = *(v100[0] + 16);
    if (v73)
    {
      break;
    }

    v52 = MEMORY[0x1E69E7CC0];
LABEL_144:
    v53 = *(v52 + 2);
    if (v53 == 1)
    {
      outlined init with copy of AccessibilityAttachment((v52 + 32), v102);
    }

    else
    {
      if (v53)
      {
        v58 = &v52[296 * v53];
        outlined init with copy of AccessibilityAttachment((v58 - 264), v99);

        v59 = v53 - 2;
        v60 = (v58 - 560);
        do
        {
          if (v59 >= v53 - 1)
          {
            __break(1u);
            goto LABEL_186;
          }

          outlined init with copy of AccessibilityAttachment(v60, __src);
          AccessibilityProperties.merge(with:)(__src);
          v61 = AccessibilityAttachment.platformElement.getter();
          if (v61)
          {
          }

          else if (AccessibilityAttachment.platformElement.getter())
          {
            AccessibilityAttachment.platformElement.setter();
          }

          result = outlined destroy of AccessibilityAttachment(__src);
          --v59;
          v60 -= 296;
        }

        while (v59 != -1);

        memcpy(v102, v99, 0x128uLL);

        if (*(&v102[17] + 1))
        {
          goto LABEL_149;
        }

        goto LABEL_13;
      }

      AccessibilityAttachment.init()();
    }

    if (!*(&v102[17] + 1))
    {
      goto LABEL_13;
    }

LABEL_149:
    outlined init with copy of AccessibilityProperties(v102, v100);
    AGGraphClearUpdate();
    lazy protocol witness table accessor for type AccessibilityProperties.BridgedElementKey and conformance AccessibilityProperties.BridgedElementKey();
    AccessibilityProperties.subscript.getter();
    v54 = *&v99[0];
    if (*&v99[0])
    {
      ObjectType = swift_getObjectType();
      PlatformAccessibilityElementProtocol<>.bridgedProperties.getter(ObjectType, v99);
    }

    else
    {
      memset(v99, 0, 288);
    }

    AGGraphSetUpdate();
    outlined init with copy of AccessibilityProperties?(v99, __src);
    if (__src[35])
    {
      memcpy(__dst, __src, 0x120uLL);
      AccessibilityProperties.merge(with:)(__dst);
      v92[0] = 0;
      AccessibilityProperties.subscript.setter();
      outlined destroy of AccessibilityProperties(__dst);
    }

    _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_1(v99, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    outlined destroy of AccessibilityAttachment.Tree(v104);
    if ((v100[15] & 1) != 0 || (v100[14] & 4) == 0 && ((v100[14] & 0x400000000) != 0 || (v100[14] & 8) == 0))
    {
      memcpy(v103, v100, sizeof(v103));
    }

    else
    {
      outlined destroy of AccessibilityProperties(v100);
      memset(v103, 0, sizeof(v103));
    }

    outlined destroy of AccessibilityAttachment(v102);
    if (*(&v103[17] + 1))
    {
      memcpy(v100, v103, 0x120uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v68 + 2) + 1, 1, v68);
      }

      v57 = *(v68 + 2);
      v56 = *(v68 + 3);
      if (v57 >= v56 >> 1)
      {
        v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v68);
      }

      *(v68 + 2) = v57 + 1;
      result = memcpy(&v68[288 * v57 + 32], v100, 0x120uLL);
      goto LABEL_166;
    }

LABEL_14:
    result = _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_1(v103, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
LABEL_166:
    if (++v7 == v6)
    {
      goto LABEL_184;
    }
  }

  v8 = 0;
  v74 = v100[0] + 32;
  v79 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v80 = v8;
    outlined init with copy of AccessibilityAttachment.Tree(v74 + 304 * v8, v99);
    outlined init with copy of AccessibilityAttachment.Tree(v99, __src);
    if (v97)
    {
      break;
    }

    memcpy(__dst, __src, 0x128uLL);
LABEL_127:
    memcpy(v98, __dst, sizeof(v98));
    outlined destroy of AccessibilityAttachment.Tree(v99);
    if (v98[35])
    {
      memcpy(__src, v98, sizeof(__src));
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v45 = v79;
      }

      else
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v79 + 2) + 1, 1, v79);
      }

      v47 = *(v45 + 2);
      v46 = *(v45 + 3);
      if (v47 >= v46 >> 1)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v45);
      }

      *(v45 + 2) = v47 + 1;
      v79 = v45;
      memcpy(&v45[296 * v47 + 32], __src, 0x128uLL);
    }

    else
    {
      _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_1(v98, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    }

    v8 = v80 + 1;
    if (v80 + 1 == v73)
    {

      v52 = v79;
      goto LABEL_144;
    }
  }

  if (v97 != 1)
  {
    memset(__dst, 0, 296);
    goto LABEL_127;
  }

  v69 = *(__src[0] + 16);
  if (!v69)
  {

    v43 = MEMORY[0x1E69E7CC0];
LABEL_122:
    v44 = *(v43 + 2);
    if (v44 == 1)
    {
      outlined init with copy of AccessibilityAttachment((v43 + 32), __dst);
    }

    else
    {
      if (v44)
      {
        v48 = &v43[296 * v44];
        outlined init with copy of AccessibilityAttachment((v48 - 264), v92);

        v49 = v44 - 2;
        v50 = (v48 - 560);
        while (v49 < v44 - 1)
        {
          outlined init with copy of AccessibilityAttachment(v50, __dst);
          AccessibilityProperties.merge(with:)(__dst);
          v51 = AccessibilityAttachment.platformElement.getter();
          if (v51)
          {
          }

          else if (AccessibilityAttachment.platformElement.getter())
          {
            AccessibilityAttachment.platformElement.setter();
          }

          result = outlined destroy of AccessibilityAttachment(__dst);
          --v49;
          v50 -= 296;
          if (v49 == -1)
          {

            memcpy(__dst, v92, 0x128uLL);

            goto LABEL_127;
          }
        }

LABEL_186:
        __break(1u);
        goto LABEL_187;
      }

      AccessibilityAttachment.init()();
    }

    goto LABEL_127;
  }

  v9 = 0;
  v71 = __src[0] + 32;
  v76 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v77 = v9;
    outlined init with copy of AccessibilityAttachment.Tree(v71 + 304 * v9, __dst);
    outlined init with copy of AccessibilityAttachment.Tree(__dst, v92);
    if (v93)
    {
      break;
    }

    memcpy(v91, v92, 0x128uLL);
LABEL_105:
    memcpy(v94, v91, sizeof(v94));
    outlined destroy of AccessibilityAttachment.Tree(__dst);
    if (v94[35])
    {
      memcpy(v92, v94, sizeof(v92));
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v36 = v76;
      }

      else
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v76 + 2) + 1, 1, v76);
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v76 = v36;
      memcpy(&v36[296 * v38 + 32], v92, 0x128uLL);
    }

    else
    {
      _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_1(v94, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    }

    v9 = v77 + 1;
    if (v77 + 1 == v69)
    {

      v43 = v76;
      goto LABEL_122;
    }
  }

  if (v93 != 1)
  {
    memset(v91, 0, 296);
    goto LABEL_105;
  }

  v70 = *(v92[0] + 16);
  if (!v70)
  {

    v34 = MEMORY[0x1E69E7CC0];
    goto LABEL_100;
  }

  v63 = v3;
  v3 = 0;
  v72 = v92[0] + 32;
  v78 = MEMORY[0x1E69E7CC0];
  v64 = v6;
  v65 = v5;
  v66 = v7;
  while (1)
  {
    outlined init with copy of AccessibilityAttachment.Tree(v72 + 304 * v3, v91);
    outlined init with copy of AccessibilityAttachment.Tree(v91, v88);
    if (v89)
    {
      break;
    }

    memcpy(v87, v88, 0x128uLL);
LABEL_84:
    memcpy(v90, v87, sizeof(v90));
    outlined destroy of AccessibilityAttachment.Tree(v91);
    if (v90[35])
    {
      memcpy(v88, v90, sizeof(v88));
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v27 = v78;
      }

      else
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v78 = v27;
      memcpy(&v27[296 * v29 + 32], v88, 0x128uLL);
    }

    else
    {
      _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_1(v90, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    }

    v3 = (v3 + 1);
    if (v3 == v70)
    {

      v3 = v63;
      v34 = v78;
LABEL_100:
      v35 = *(v34 + 2);
      if (v35 != 1)
      {
        if (!v35)
        {
          AccessibilityAttachment.init()();
          goto LABEL_104;
        }

        v39 = &v34[296 * v35];
        outlined init with copy of AccessibilityAttachment((v39 - 264), v88);

        v40 = v35 - 2;
        v41 = (v39 - 560);
        while (v40 < v35 - 1)
        {
          outlined init with copy of AccessibilityAttachment(v41, v91);
          AccessibilityProperties.merge(with:)(v91);
          v42 = AccessibilityAttachment.platformElement.getter();
          if (v42)
          {
          }

          else if (AccessibilityAttachment.platformElement.getter())
          {
            AccessibilityAttachment.platformElement.setter();
          }

          result = outlined destroy of AccessibilityAttachment(v91);
          --v40;
          v41 -= 296;
          if (v40 == -1)
          {

            memcpy(v91, v88, 0x128uLL);

            goto LABEL_105;
          }
        }

LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
        return result;
      }

      outlined init with copy of AccessibilityAttachment((v34 + 32), v91);
LABEL_104:

      goto LABEL_105;
    }
  }

  if (v89 != 1)
  {
    memset(v87, 0, 296);
    goto LABEL_84;
  }

  v10 = *(v88[0] + 16);
  if (!v10)
  {

    v13 = MEMORY[0x1E69E7CC0];
LABEL_79:
    v26 = *(v13 + 2);
    v7 = v66;
    if (v26 == 1)
    {
      outlined init with copy of AccessibilityAttachment((v13 + 32), v87);
    }

    else
    {
      if (v26)
      {
        v30 = &v13[296 * v26];
        outlined init with copy of AccessibilityAttachment((v30 - 264), v84);

        v31 = v26 - 2;
        v32 = (v30 - 560);
        while (v31 < v26 - 1)
        {
          outlined init with copy of AccessibilityAttachment(v32, v87);
          AccessibilityProperties.merge(with:)(v87);
          v33 = AccessibilityAttachment.platformElement.getter();
          if (v33)
          {
          }

          else if (AccessibilityAttachment.platformElement.getter())
          {
            AccessibilityAttachment.platformElement.setter();
          }

          outlined destroy of AccessibilityAttachment(v87);
          --v31;
          v32 -= 296;
          if (v31 == -1)
          {

            memcpy(v87, v84, 0x128uLL);

            v6 = v64;
            v5 = v65;
            goto LABEL_84;
          }
        }

        goto LABEL_183;
      }

      AccessibilityAttachment.init()();
    }

    v6 = v64;
    v5 = v65;
    goto LABEL_84;
  }

  v11 = 0;
  v12 = v88[0] + 32;
  v13 = MEMORY[0x1E69E7CC0];
  v67 = v88[0] + 32;
  while (1)
  {
    outlined init with copy of AccessibilityAttachment.Tree(v12 + 304 * v11, v87);
    outlined init with copy of AccessibilityAttachment.Tree(v87, v84);
    if (v85)
    {
      break;
    }

    memcpy(v83, v84, 0x128uLL);
LABEL_61:
    memcpy(v86, v83, sizeof(v86));
    outlined destroy of AccessibilityAttachment.Tree(v87);
    if (v86[35])
    {
      memcpy(v84, v86, sizeof(v84));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
      }

      v21 = *(v13 + 2);
      v20 = *(v13 + 3);
      if (v21 >= v20 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v13);
      }

      *(v13 + 2) = v21 + 1;
      memcpy(&v13[296 * v21 + 32], v84, 0x128uLL);
    }

    else
    {
      _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_1(v86, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    }

    if (++v11 == v10)
    {

      goto LABEL_79;
    }
  }

  if (v85 != 1)
  {
    memset(v83, 0, 296);
    goto LABEL_61;
  }

  v14 = *(v84[0] + 16);
  if (v14)
  {
    v15 = v84[0] + 32;
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of AccessibilityAttachment.Tree(v15, v83);
      AccessibilityAttachment.Tree.attachment.getter(v82);
      memcpy(v81, v82, sizeof(v81));
      outlined destroy of AccessibilityAttachment.Tree(v83);
      if (v81[35])
      {
        memcpy(v82, v81, sizeof(v82));
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
        memcpy(&v16[296 * v18 + 32], v82, 0x128uLL);
      }

      else
      {
        _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_1(v81, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
      }

      v15 += 304;
      --v14;
    }

    while (v14);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v16 + 2);
  if (v19 == 1)
  {
    outlined init with copy of AccessibilityAttachment((v16 + 32), v83);
LABEL_59:

LABEL_60:
    v12 = v67;
    goto LABEL_61;
  }

  if (!v19)
  {
    AccessibilityAttachment.init()();
    goto LABEL_59;
  }

  v22 = &v16[296 * v19];
  outlined init with copy of AccessibilityAttachment((v22 - 264), v82);

  v23 = v19 - 2;
  v24 = (v22 - 560);
  while (v23 < v19 - 1)
  {
    outlined init with copy of AccessibilityAttachment(v24, v83);
    AccessibilityProperties.merge(with:)(v83);
    v25 = AccessibilityAttachment.platformElement.getter();
    if (v25)
    {
    }

    else if (AccessibilityAttachment.platformElement.getter())
    {
      AccessibilityAttachment.platformElement.setter();
    }

    outlined destroy of AccessibilityAttachment(v83);
    --v23;
    v24 -= 296;
    if (v23 == -1)
    {

      memcpy(v83, v82, 0x128uLL);

      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:

  v62 = v68;
LABEL_181:
  static AccessibilityChildBehavior.defaultCombine(childProperties:createsCustomActions:)(v62, 1, v3);
}

uint64_t AccessibilityAttachment.mergedProperties.getter@<X0>(_OWORD *a1@<X8>)
{
  outlined init with copy of AccessibilityProperties(v1, v7);
  AGGraphClearUpdate();
  lazy protocol witness table accessor for type AccessibilityProperties.BridgedElementKey and conformance AccessibilityProperties.BridgedElementKey();
  AccessibilityProperties.subscript.getter();
  v3 = *&v6[0];
  if (*&v6[0])
  {
    ObjectType = swift_getObjectType();
    PlatformAccessibilityElementProtocol<>.bridgedProperties.getter(ObjectType, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  AGGraphSetUpdate();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI23AccessibilityPropertiesV_s5NeverOytTg503_s7c4UI23e22AttachmentVAAE16mergedF19AA0cF0VSgvgyAFXEfU_AFTf1cn_n(v6);
  _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_1(v6, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
  if ((v9 & 1) != 0 || (v8 & 4) == 0 && ((v8 & 0x400000000) != 0 || (v8 & 8) == 0))
  {
    outlined init with copy of AccessibilityProperties(v7, a1);
  }

  else
  {
    a1[16] = 0u;
    a1[17] = 0u;
    a1[14] = 0u;
    a1[15] = 0u;
    a1[12] = 0u;
    a1[13] = 0u;
    a1[10] = 0u;
    a1[11] = 0u;
    a1[8] = 0u;
    a1[9] = 0u;
    a1[6] = 0u;
    a1[7] = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return outlined destroy of AccessibilityProperties(v7);
}

double static AccessibilityPlatformViewModifier.makeAccessibilityViewModifier(modifier:inputs:body:)@<D0>(__int128 *a1@<X1>, void (*a2)(uint64_t *__return_ptr)@<X2>, double *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v13 = *a1;
  v14 = v4;
  v15 = a1[2];
  v5 = *(a1 + 6);
  v6 = *(a1 + 14);
  v18 = *(a1 + 60);
  v19 = *(a1 + 76);
  v16 = v5;
  v17 = v6;
  a2(&v11);
  *&v13 = v5;
  DWORD2(v13) = v6;
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
    *&v13 = v5;
    DWORD2(v13) = v6;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      *&v13 = v11;
      DWORD2(v13) = LODWORD(v12);
      v7 = PreferencesOutputs.subscript.getter();
      if ((v7 & 0x100000000) != 0)
      {
        v8 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v8 = v7;
      }

      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      *&v13 = __PAIR64__(AGGraphCreateOffsetAttribute2(), OffsetAttribute2);
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type AccessibilityPlatformViewModifier.PlatformViewAttachment and conformance AccessibilityPlatformViewModifier.PlatformViewAttachment();
      *&v13 = __PAIR64__(Attribute.init<A>(body:value:flags:update:)(), v8);
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform();
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v13) = 0;
      PreferencesOutputs.subscript.setter();
    }
  }

  *a3 = v11;
  result = v12;
  a3[1] = v12;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance AccessibilityPlatformViewModifier.PlatformViewAttachment()
{
  Value = AGGraphGetValue();
  outlined init with copy of AccessibilityProperties(Value, &v3);
  type metadata accessor for UIView();
  v1 = *AGGraphGetValue();
  return AccessibilityAttachment.init(properties:platformElement:)();
}

uint64_t protocol witness for AccessibilityViewModifier.initialAttachment(for:) in conformance AccessibilityPlatformViewModifier()
{
  outlined init with copy of AccessibilityProperties((v0 + 1), &v3);
  v1 = *v0;
  return AccessibilityAttachment.init(properties:platformElement:)();
}

id protocol witness for AccessibilityViewModifier.createOrUpdateNode(viewRendererHost:existingNode:) in conformance AccessibilityPlatformViewModifier(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    objc_allocWithZone(type metadata accessor for AccessibilityNode());
    v8 = swift_unknownObjectRetain();
    v6 = specialized AccessibilityNode.init(viewRendererHost:isFromDisplayList:)(v8, a2, 0);
    swift_unknownObjectRelease();
  }

  v9 = *v4;
  v10 = a3;
  [v9 setAccessibilityNodeForPlatformElement_];
  return v6;
}

Swift::Void __swiftcall AccessibilityBridgedPlatformView.updateValue()()
{
  v28[36] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v24 = *(v0 + 24);
  v25 = v1;
  v2 = type metadata accessor for ViewLeafView();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v11 = *(v10 + 48);
  Value = AGGraphGetValue();
  v14 = v13;
  v15 = *(v2 - 8);
  (*(v15 + 16))(v9, Value, v2);
  v9[v11] = v14 & 1;
  v22 = v4;
  v23 = TupleTypeMetadata2;
  (*(v4 + 16))(v6, v9, TupleTypeMetadata2);
  specialized ViewLeafView.platformView.getter(v2);
  v16 = *(v15 + 8);
  swift_unknownObjectRetain();
  v16(v6, v2);
  type metadata accessor for UIKitPlatformViewHost();
  swift_dynamicCastClassUnconditional();
  v17 = dispatch thunk of UICorePlatformViewHost.representedView.getter();
  swift_unknownObjectRelease();
  if ((v14 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v18 = v17;
    AccessibilityProperties.init()();
    v27 = v18;
    AGGraphSetOutputValue();
    outlined destroy of AccessibilityPlatformViewModifier(&v27);
  }

  v27 = v17;
  lazy protocol witness table accessor for type AccessibilityProperties.BridgedElementKey and conformance AccessibilityProperties.BridgedElementKey();
  v19 = v17;
  AccessibilityProperties.init<A>(_:_:)();
  OutputValue = AGGraphGetOutputValue();
  if (!OutputValue)
  {
    __break(1u);
  }

  outlined init with copy of AccessibilityPlatformViewModifier(OutputValue, &v27);
  outlined assign with take of AccessibilityProperties(&v26, v28);
  AGGraphSetOutputValue();

  (*(v22 + 8))(v9, v23);
  outlined destroy of AccessibilityPlatformViewModifier(&v27);
}

Swift::Void __swiftcall AccessibilityHostedViewBridgeTransform.updateValue()()
{
  v2 = HIDWORD(v0);
  v3 = *AGGraphGetValue();
  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v4 != 1 || *MEMORY[0x1E698D3F8] == v2;
  if (v5 || (Value = AGGraphGetValue(), (v7 & 1) == 0))
  {
    AGGraphGetValue();
    AGGraphSetOutputValue();
    return;
  }

  v8 = *Value;

  v9 = *AGGraphGetValue();
  if ((v9 & 0xC000000000000001) != 0)
  {

    v1 = MEMORY[0x18D00E9C0](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_23:

      v10 = MEMORY[0x18D00E9C0](0, v8);

      goto LABEL_21;
    }

    v1 = *(v9 + 32);
  }

  AGGraphGetValue();
  if (v8 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_14:
      if ((v8 & 0xC000000000000001) == 0)
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v10 = *(v8 + 32);
        goto LABEL_21;
      }

      goto LABEL_23;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  v10 = 0;
LABEL_21:
  swift_unknownObjectWeakAssign();

  AGGraphGetValue();

  AGGraphSetOutputValue();
}

uint64_t destroy for AccessibilityPlatformViewModifier(uint64_t a1)
{

  v2 = *(a1 + 96);
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 72);
  }

LABEL_5:
  if (*(a1 + 248) != 1)
  {
  }
}

uint64_t initializeWithCopy for AccessibilityPlatformViewModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 96);
  v7 = v4;

  if (v6)
  {
    if (v6 == 1)
    {
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      goto LABEL_7;
    }

    v8 = *(a2 + 104);
    *(a1 + 96) = v6;
    *(a1 + 104) = v8;
    (**(v6 - 8))(a1 + 72, a2 + 72, v6);
  }

  else
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
  }

  *(a1 + 112) = *(a2 + 112);

LABEL_7:
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v9 = (a1 + 136);
  v10 = (a2 + 136);
  v11 = *(a2 + 248);
  if (v11 == 1)
  {
    v12 = *(a2 + 248);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = v12;
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    v13 = *(a2 + 184);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = v13;
    v14 = *(a2 + 216);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = v14;
    v15 = *(a2 + 152);
    *v9 = *v10;
    *(a1 + 152) = v15;
  }

  else
  {
    *v9 = *v10;
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 161) = *(a2 + 161);
    *(a1 + 163) = *(a2 + 163);
    *(a1 + 164) = *(a2 + 164);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = v11;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 280) = *(a2 + 280);
  }

  *(a1 + 288) = *(a2 + 288);

  return a1;
}

uint64_t assignWithCopy for AccessibilityPlatformViewModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v7;
  v8 = *(a1 + 96);
  v9 = *(a2 + 96);
  if (v8 == 1)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = *(a2 + 72);
        v11 = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 88) = v11;
        *(a1 + 72) = v10;
        goto LABEL_18;
      }

      *(a1 + 96) = v9;
      *(a1 + 104) = *(a2 + 104);
      (**(v9 - 8))(a1 + 72, a2 + 72);
    }

    else
    {
      v15 = *(a2 + 72);
      v16 = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 88) = v16;
      *(a1 + 72) = v15;
    }

    *(a1 + 112) = *(a2 + 112);
  }

  else if (v9 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 72);
    v12 = *(a2 + 104);
    v13 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v13;
    *(a1 + 104) = v12;
  }

  else
  {
    if (v8)
    {
      v14 = (a1 + 72);
      if (v9)
      {
        __swift_assign_boxed_opaque_existential_1(v14, (a2 + 72));
      }

      else
      {
        outlined destroy of AnyAccessibilityValue(v14);
        v17 = *(a2 + 104);
        v18 = *(a2 + 88);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 88) = v18;
        *(a1 + 104) = v17;
      }
    }

    else if (v9)
    {
      *(a1 + 96) = v9;
      *(a1 + 104) = *(a2 + 104);
      (**(v9 - 8))(a1 + 72, a2 + 72);
    }

    else
    {
      v19 = *(a2 + 72);
      v20 = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 88) = v20;
      *(a1 + 72) = v19;
    }

    *(a1 + 112) = *(a2 + 112);
  }

LABEL_18:
  v21 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v21;
  v22 = (a1 + 136);
  v23 = (a2 + 136);
  v24 = *(a2 + 248);
  if (*(a1 + 248) == 1)
  {
    if (v24 == 1)
    {
      v25 = *(a2 + 152);
      *v22 = *v23;
      *(a1 + 152) = v25;
      v26 = *(a2 + 168);
      v27 = *(a2 + 184);
      v28 = *(a2 + 216);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 216) = v28;
      *(a1 + 168) = v26;
      *(a1 + 184) = v27;
      v29 = *(a2 + 232);
      v30 = *(a2 + 248);
      v31 = *(a2 + 264);
      *(a1 + 280) = *(a2 + 280);
      *(a1 + 248) = v30;
      *(a1 + 264) = v31;
      *(a1 + 232) = v29;
    }

    else
    {
      v39 = *v23;
      *(a1 + 144) = *(a2 + 144);
      *v22 = v39;
      v40 = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 152) = v40;
      *(a1 + 161) = *(a2 + 161);
      *(a1 + 162) = *(a2 + 162);
      *(a1 + 163) = *(a2 + 163);
      *(a1 + 164) = *(a2 + 164);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 217) = *(a2 + 217);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
      v41 = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 256) = v41;
      *(a1 + 280) = *(a2 + 280);
    }
  }

  else if (v24 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 136);
    v32 = *(a2 + 152);
    *v22 = *v23;
    *(a1 + 152) = v32;
    v33 = *(a2 + 216);
    v35 = *(a2 + 168);
    v34 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = v33;
    *(a1 + 168) = v35;
    *(a1 + 184) = v34;
    v37 = *(a2 + 248);
    v36 = *(a2 + 264);
    v38 = *(a2 + 232);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 248) = v37;
    *(a1 + 264) = v36;
    *(a1 + 232) = v38;
  }

  else
  {
    v42 = *v23;
    *(a1 + 144) = *(a2 + 144);
    *v22 = v42;
    v43 = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 152) = v43;
    *(a1 + 161) = *(a2 + 161);
    *(a1 + 162) = *(a2 + 162);
    *(a1 + 163) = *(a2 + 163);
    *(a1 + 164) = *(a2 + 164);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 217) = *(a2 + 217);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);

    v44 = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 256) = v44;
    *(a1 + 280) = *(a2 + 280);
  }

  *(a1 + 288) = *(a2 + 288);

  return a1;
}

uint64_t assignWithTake for AccessibilityPlatformViewModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a1 + 96);
  if (v6 == 1)
  {
    goto LABEL_4;
  }

  v7 = *(a2 + 96);
  if (v7 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 72);
LABEL_4:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    goto LABEL_10;
  }

  if (v6)
  {
    v8 = a1 + 72;
    if (v7)
    {
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v8);
    }
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v9 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v9;

LABEL_10:
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v10 = (a1 + 136);
  v11 = (a2 + 136);
  if (*(a1 + 248) != 1)
  {
    v12 = *(a2 + 248);
    if (v12 != 1)
    {
      *v10 = *v11;
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 161) = *(a2 + 161);
      *(a1 + 163) = *(a2 + 163);
      *(a1 + 164) = *(a2 + 164);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 217) = *(a2 + 217);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = v12;

      *(a1 + 256) = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 280) = *(a2 + 280);
      goto LABEL_15;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 136);
  }

  v13 = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = v13;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  v14 = *(a2 + 184);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = v14;
  v15 = *(a2 + 216);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = v15;
  v16 = *(a2 + 152);
  *v10 = *v11;
  *(a1 + 152) = v16;
LABEL_15:
  *(a1 + 288) = *(a2 + 288);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityPlatformViewModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 296))
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

uint64_t storeEnumTagSinglePayload for AccessibilityPlatformViewModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Bool __swiftcall ListItemKind.Set.contains(_:)(SwiftUI::ListItemKind a1)
{
  v2 = *a1;
  if (v2 <= 0x3F)
  {
    v3 = 1 << v2;
  }

  else
  {
    v3 = 0;
  }

  return (v3 & ~*v1) == 0;
}

double static ListItemBackgroundTraitKey.defaultValue.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18CD633F0;
  return result;
}

SwiftUI::ListItemKind::Set __swiftcall ListItemKind.Set.init(_:)(SwiftUI::ListItemKind a1)
{
  v2 = *a1;
  if (v2 <= 0x3F)
  {
    v3 = 1 << v2;
  }

  else
  {
    v3 = 0;
  }

  *v1 = v3;
  LOBYTE(result.rawValue) = a1;
  return result;
}

SwiftUI::ListItemKind_optional __swiftcall ListItemKind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type ListItemKind.Set and conformance ListItemKind.Set()
{
  result = lazy protocol witness table cache variable for type ListItemKind.Set and conformance ListItemKind.Set;
  if (!lazy protocol witness table cache variable for type ListItemKind.Set and conformance ListItemKind.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListItemKind.Set and conformance ListItemKind.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListItemKind.Set and conformance ListItemKind.Set;
  if (!lazy protocol witness table cache variable for type ListItemKind.Set and conformance ListItemKind.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListItemKind.Set and conformance ListItemKind.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListItemKind.Set and conformance ListItemKind.Set;
  if (!lazy protocol witness table cache variable for type ListItemKind.Set and conformance ListItemKind.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListItemKind.Set and conformance ListItemKind.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListItemKind.Set and conformance ListItemKind.Set;
  if (!lazy protocol witness table cache variable for type ListItemKind.Set and conformance ListItemKind.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListItemKind.Set and conformance ListItemKind.Set);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListItemKind and conformance ListItemKind()
{
  result = lazy protocol witness table cache variable for type ListItemKind and conformance ListItemKind;
  if (!lazy protocol witness table cache variable for type ListItemKind and conformance ListItemKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListItemKind and conformance ListItemKind);
  }

  return result;
}

uint64_t EnvironmentValues.menuTitleVisibility.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<MenuTitleVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuTitleVisibilityKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<MenuTitleVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuTitleVisibilityKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

void type metadata accessor for EnvironmentPropertyKey<MenuTitleVisibilityKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<MenuTitleVisibilityKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuTitleVisibilityKey>);
    }
  }
}

uint64_t EnvironmentValues.menuTitleVisibility.setter()
{
  type metadata accessor for EnvironmentPropertyKey<MenuTitleVisibilityKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuTitleVisibilityKey>);

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t (*EnvironmentValues.menuTitleVisibility.modify(uint64_t a1))(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  type metadata accessor for EnvironmentPropertyKey<MenuTitleVisibilityKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuTitleVisibilityKey>);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *(a1 + 24) = *(a1 + 25);
  return EnvironmentValues.menuTitleVisibility.modify;
}

uint64_t EnvironmentValues.menuTitleVisibility.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<MenuTitleVisibilityKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuTitleVisibilityKey>);

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t specialized implicit closure #1 in _GraphInputs.menuTitleVisibility.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<MenuTitleVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuTitleVisibilityKey>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<MenuTitleVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<MenuTitleVisibilityKey>);

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t View.menuTitle(_:)(char a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>();
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  swift_getKeyPath();
  v12 = a1;
  View.environment<A>(_:_:)();

  v9 = lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>);
  v11[1] = a3;
  v11[2] = v9;
  swift_getWitnessTable();
  lazy protocol witness table accessor for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization();
  View.input<A>(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t View.overrideMenuTitle(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3;
  v10 = a4;
  return View.platformItemLabel<A, B>(_:flags:)(v8, a5, MEMORY[0x1E6981148], &type metadata for TextPlatformItemListFlags, a6, MEMORY[0x1E6981138], &protocol witness table for TextPlatformItemListFlags, a7);
}

void type metadata accessor for ViewInputFlagModifier<HasMenuTitleVisibilityCustomization>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<HasMenuTitleVisibilityCustomization>)
  {
    lazy protocol witness table accessor for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<HasMenuTitleVisibilityCustomization>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance HasMenuTitleVisibilityCustomization()
{
  lazy protocol witness table accessor for type HasMenuTitleVisibilityCustomization and conformance HasMenuTitleVisibilityCustomization();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t type metadata completion function for AccessibilityProxyTransformModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityProxyTransformModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10[1];
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    v12[1] = v11;
  }

  return v3;
}

uint64_t destroy for AccessibilityProxyTransformModifier(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 24) - 8) + 8))();
}

uint64_t initializeWithCopy for AccessibilityProxyTransformModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t assignWithCopy for AccessibilityProxyTransformModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t initializeWithTake for AccessibilityProxyTransformModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AccessibilityProxyTransformModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityProxyTransformModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *storeEnumTagSinglePayload for AccessibilityProxyTransformModifier(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t View.accessibilityAttachment<A>(content:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a6;
  v27 = a8;
  v28 = a4;
  v26 = a2;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1E69E73E0];
  v31 = v15;
  v16 = MEMORY[0x1E6982070];
  v32 = MEMORY[0x1E6982070];
  v33 = v17;
  v18 = type metadata accessor for AccessibilityProxyTransformModifier();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v25 - v21;
  (*(v12 + 16))(v14, a1, a5, v20);
  (*(v12 + 32))(v22, v14, a5);
  v30 = MEMORY[0x1E69E73E0];
  v31 = a5;
  v32 = v16;
  v33 = a7;
  v23 = &v22[*(type metadata accessor for AccessibilityProxyTransformModifier() + 52)];
  *v23 = v26;
  *(v23 + 1) = a3;

  MEMORY[0x18D00A570](v22, v28, v18, v29);
  return (*(v19 + 8))(v22, v18);
}

void *AccessibilityAttachment.Tree.attachment.getter@<X0>(_OWORD *a1@<X8>)
{
  result = outlined init with copy of AccessibilityAttachment.Tree(v1, v14);
  if (!v15)
  {
    return memcpy(a1, v14, 0x128uLL);
  }

  if (v15 == 1)
  {
    v4 = *(v14[0] + 16);
    if (v4)
    {
      v5 = MEMORY[0x1E69E7CC0];
      v6 = v14[0] + 32;
      v7 = MEMORY[0x1E697FFF0];
      do
      {
        v8 = outlined init with copy of AccessibilityAttachment.Tree(v6, v13);
        AccessibilityAttachment.Tree.attachment.getter(__src, v8);
        memcpy(__dst, __src, sizeof(__dst));
        outlined destroy of AccessibilityAttachment.Tree(v13);
        if (__dst[35])
        {
          memcpy(__src, __dst, sizeof(__src));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
          }

          v10 = *(v5 + 2);
          v9 = *(v5 + 3);
          if (v10 >= v9 >> 1)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v5);
          }

          *(v5 + 2) = v10 + 1;
          memcpy(&v5[296 * v10 + 32], __src, 0x128uLL);
        }

        else
        {
          _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_2(__dst, &lazy cache variable for type metadata for AccessibilityAttachment?, v7);
        }

        v6 += 304;
        --v4;
      }

      while (v4);
    }

    else
    {

      v5 = MEMORY[0x1E69E7CC0];
    }

    static AccessibilityAttachment.combine(_:)(v5, a1);
  }

  else
  {
    *(a1 + 36) = 0;
    a1[16] = 0u;
    a1[17] = 0u;
    a1[14] = 0u;
    a1[15] = 0u;
    a1[12] = 0u;
    a1[13] = 0u;
    a1[10] = 0u;
    a1[11] = 0u;
    a1[8] = 0u;
    a1[9] = 0u;
    a1[6] = 0u;
    a1[7] = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t View.accessibilityAttachment<A>(content:_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v31 = a8;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v19 = type metadata accessor for AccessibilityProxyTransformModifier();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v27 - v21;
  v23 = PlaceholderContentView.init()();
  v28(v23);
  (*(v12 + 32))(v22, v14, a5);
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v24 = &v22[*(type metadata accessor for AccessibilityProxyTransformModifier() + 52)];
  v25 = v30;
  *v24 = v29;
  *(v24 + 1) = v25;

  MEMORY[0x18D00A570](v22, a4, v19, a6);
  return (*(v20 + 8))(v22, v19);
}

uint64_t AccessibilityAttachment.Tree.properties.getter@<X0>(_OWORD *a1@<X8>)
{
  result = outlined init with copy of AccessibilityAttachment.Tree(v1, v15);
  if (v16)
  {
    if (v16 == 1)
    {
      v4 = *(v15[0] + 16);
      if (v4)
      {
        v5 = v15[0] + 32;
        v6 = MEMORY[0x1E69E7CC0];
        v7 = MEMORY[0x1E697FFF0];
        do
        {
          outlined init with copy of AccessibilityAttachment.Tree(v5, v14);
          AccessibilityAttachment.Tree.attachment.getter(v11);
          if (*(&v11[17] + 1))
          {
            outlined init with copy of AccessibilityAttachment?(v11, v10);
            outlined init with copy of AccessibilityProperties(v10, __src);
            outlined destroy of AccessibilityAttachment(v10);
          }

          else
          {
            memset(__src, 0, sizeof(__src));
          }

          _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_2(v11, &lazy cache variable for type metadata for AccessibilityAttachment?, v7);
          memcpy(__dst, __src, sizeof(__dst));
          outlined destroy of AccessibilityAttachment.Tree(v14);
          if (__dst[35])
          {
            memcpy(v11, __dst, sizeof(v11));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
            }

            v9 = *(v6 + 2);
            v8 = *(v6 + 3);
            if (v9 >= v8 >> 1)
            {
              v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
            }

            *(v6 + 2) = v9 + 1;
            memcpy(&v6[288 * v9 + 32], v11, 0x120uLL);
          }

          else
          {
            _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_2(__dst, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
          }

          v5 += 304;
          --v4;
        }

        while (v4);
      }

      else
      {

        v6 = MEMORY[0x1E69E7CC0];
      }

      static AccessibilityChildBehavior.defaultCombine(childProperties:createsCustomActions:)(v6, 1, a1);
    }

    else
    {
      a1[16] = 0u;
      a1[17] = 0u;
      a1[14] = 0u;
      a1[15] = 0u;
      a1[12] = 0u;
      a1[13] = 0u;
      a1[10] = 0u;
      a1[11] = 0u;
      a1[8] = 0u;
      a1[9] = 0u;
      a1[6] = 0u;
      a1[7] = 0u;
      a1[4] = 0u;
      a1[5] = 0u;
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
    }
  }

  else
  {
    memcpy(v14, v15, 0x128uLL);
    outlined init with copy of AccessibilityProperties(v14, a1);
    return outlined destroy of AccessibilityAttachment(v14);
  }

  return result;
}

uint64_t AccessibilityAttachment.Tree.combine(with:)(uint64_t a1)
{
  v3 = *v1;
  if (!*(v1 + 296))
  {
    v9 = *v1;
    memcpy(v10, (v1 + 8), sizeof(v10));
    *v1 = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 144) = 0u;
    *(v1 + 160) = 0u;
    *(v1 + 176) = 0u;
    *(v1 + 192) = 0u;
    *(v1 + 208) = 0u;
    *(v1 + 224) = 0u;
    *(v1 + 240) = 0u;
    *(v1 + 256) = 0u;
    *(v1 + 272) = 0u;
    *(v1 + 288) = 0;
    *(v1 + 296) = 2;
    outlined destroy of AccessibilityAttachment.Tree(v1);
    outlined init with copy of AccessibilityAttachment(a1, v1);
    AccessibilityProperties.merge(with:)(&v9);
    v8 = AccessibilityAttachment.platformElement.getter();
    if (v8)
    {
    }

    else if (AccessibilityAttachment.platformElement.getter())
    {
      AccessibilityAttachment.platformElement.setter();
    }

    result = outlined destroy of AccessibilityAttachment(&v9);
    goto LABEL_17;
  }

  if (*(v1 + 296) != 1)
  {
    result = outlined init with copy of AccessibilityAttachment(a1, v1);
LABEL_17:
    *(v1 + 296) = 0;
    return result;
  }

  *(v1 + 288) = 0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 296) = 2;

  outlined destroy of AccessibilityAttachment.Tree(v1);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = 32;
    while (1)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        v3 = result;
      }

      if (v6 >= *(v3 + 16))
      {
        break;
      }

      ++v6;
      result = AccessibilityAttachment.Tree.combine(with:)(a1);
      v7 += 304;
      if (v4 == v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    *v1 = v3;
    *(v1 + 296) = 1;
  }

  return result;
}

uint64_t AccessibilityAttachment.DeferredTransform.value.getter@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    a2[36] = 0;
    *(a2 + 16) = 0u;
    *(a2 + 17) = 0u;
    *(a2 + 14) = 0u;
    *(a2 + 15) = 0u;
    *(a2 + 12) = 0u;
    *(a2 + 13) = 0u;
    *(a2 + 10) = 0u;
    *(a2 + 11) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 9) = 0u;
    *(a2 + 6) = 0u;
    *(a2 + 7) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 5) = 0u;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    *(a2 + 296) = 2;
  }

  else
  {
    Value = AGGraphGetValue();
    outlined init with copy of AccessibilityAttachment.Tree(Value, v6);
    memcpy(a2, v6, 0x129uLL);
  }

  v4 = AGGraphGetValue();
  outlined init with copy of AccessibilityAttachment(v4, v6);
  AccessibilityAttachment.Tree.combine(with:)(v6);
  return outlined destroy of AccessibilityAttachment(v6);
}

id static AccessibilityProxyTransformModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v42 = a9;
  v43 = a8;
  v40 = a3;
  v41 = a4;
  v73 = *MEMORY[0x1E69E9840];
  v13 = a2[1];
  v70 = *a2;
  v14 = *a1;
  v71 = v13;
  v72 = a2[2];
  v15 = *(a2 + 6);
  v16 = *(a2 + 14);
  v48 = *(a2 + 60);
  v49 = *(a2 + 76);
  *&v45 = v15;
  *&v53 = v15;
  LODWORD(v44) = v16;
  DWORD2(v53) = v16;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) != 0 || (*&v53 = v45, DWORD2(v53) = v44, (PreferencesInputs.contains<A>(_:includeHostPreferences:)()))
  {
    v17 = a2[1];
    v52[0] = *a2;
    v52[1] = v17;
    v52[2] = a2[2];
    *&v52[3] = v45;
    DWORD2(v52[3]) = v44;
    *(&v52[3] + 12) = *(a2 + 60);
    *(&v52[4] + 12) = *(a2 + 76);
    _ViewInputs.withoutGeometryDependencies.getter();
    DWORD1(v55) &= ~0x40u;
    LOBYTE(v52[0]) = 0;
    lazy protocol witness table accessor for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders();
    PropertyList.subscript.setter();
    PreferenceKeys.remove(_:)();
    PreferenceKeys.add(_:)();
    v66 = v55;
    v67 = v56[0];
    v68 = v56[1];
    v64 = v53;
    v69 = v56[2];
    v65 = v54;
    v47 = v14;
    *&v53 = a5;
    *(&v53 + 1) = a6;
    *&v54 = a7;
    *(&v54 + 1) = v43;
    type metadata accessor for AccessibilityProxyTransformModifier();
    type metadata accessor for _GraphValue();
    v18 = _GraphValue.value.getter();
    v59 = v55;
    v60 = v56[0];
    v61 = v56[1];
    v62 = v56[2];
    v57 = v64;
    v58 = v65;
    result = AGSubgraphGetCurrent();
    if (result)
    {
      *&v63[84] = v62;
      *&v63[68] = v61;
      *&v63[52] = v60;
      *&v63[36] = v59;
      *&v63[20] = v58;
      *&v63[4] = v57;
      *(&v52[2] + 12) = *&v63[32];
      *(&v52[3] + 12) = *&v63[48];
      *(&v52[4] + 12) = *&v63[64];
      *(v52 + 12) = *v63;
      v20 = *MEMORY[0x1E698D3F8];
      *&v52[0] = __PAIR64__(*MEMORY[0x1E698D3F8], v18);
      DWORD2(v52[0]) = v20;
      *(&v52[5] + 12) = *&v63[80];
      *(&v52[1] + 12) = *&v63[16];
      *(&v52[6] + 1) = result;
      MEMORY[0x1EEE9AC00](result);
      *&v53 = a5;
      *(&v53 + 1) = a6;
      *&v54 = a7;
      *(&v54 + 1) = v43;
      v21 = type metadata accessor for AccessibilityProxyTransformModifier.ProxyAttachment();
      v37 = v21;
      WitnessTable = swift_getWitnessTable();
      outlined init with copy of _ViewInputs(&v64, &v53);
      _s7SwiftUI23AccessibilityAttachmentVSgMaTm_0(0, &lazy cache variable for type metadata for Attribute<AccessibilityAttachmentModifier>, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v52, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_18, v36, v21, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
      v56[1] = v52[4];
      v56[2] = v52[5];
      v56[3] = v52[6];
      v53 = v52[0];
      v54 = v52[1];
      v55 = v52[2];
      v56[0] = v52[3];
      (*(*(v21 - 8) + 8))(&v53, v21);
      v24 = v50;
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      *(v25 + 20) = 1;
      v46 = v24;
      v52[0] = v70;
      v52[1] = v71;
      v52[2] = v72;
      *&v52[3] = v45;
      DWORD2(v52[3]) = v44;
      *(&v52[3] + 12) = v48;
      *(&v52[4] + 12) = v49;
      v26 = swift_allocObject();
      v39 = a5;
      *(v26 + 16) = a5;
      *(v26 + 24) = a6;
      v44 = a6;
      v27 = v43;
      *(v26 + 32) = a7;
      *(v26 + 40) = v27;
      *(v26 + 48) = v40;
      *(v26 + 56) = v41;
      *(v26 + 64) = v24;
      *(v26 + 72) = v25;

      static ViewModifier.makeDebuggableView(modifier:inputs:body:)();

      v28 = v50;
      *&v29 = v51;
      v45 = v29;
      swift_beginAccess();
      if (*(v25 + 20) == 1 || (*&v52[0] = v28, DWORD2(v52[0]) = v45, (PreferencesOutputs.subscript.getter() & 0x100000000) != 0))
      {
        outlined destroy of _ViewInputs(&v64);
      }

      else
      {
        v30 = AccessibilityAttachmentToken.init<A>(_:)();
        MEMORY[0x1EEE9AC00](v30);
        v36[0] = a7;
        v36[1] = v43;
        v37 = v31;
        LOBYTE(WitnessTable) = v32;
        *&v52[0] = v39;
        *(&v52[0] + 1) = v44;
        *&v52[1] = a7;
        *(&v52[1] + 1) = v43;
        v33 = type metadata accessor for AccessibilityProxyTransformModifier.PlaceholderAttachment();
        MEMORY[0x1EEE9AC00](v33);
        AGGraphMutateAttribute();
        outlined destroy of _ViewInputs(&v64);
      }

      v34 = v42;
      *v42 = v28;
      v34[1] = v45;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v35 = a2[1];
    v53 = *a2;
    v54 = v35;
    v55 = a2[2];
    *&v56[0] = v45;
    DWORD2(v56[0]) = v44;
    *(v56 + 12) = *(a2 + 60);
    *(&v56[1] + 12) = *(a2 + 76);
    return v40();
  }

  return result;
}

uint64_t closure #1 in static AccessibilityProxyTransformModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, _OWORD *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v15 = *(a2 + 48);
  v16 = *(a2 + 16);
  v24 = *(a2 + 32);
  v25 = v15;
  v17 = *(a2 + 48);
  v26 = *(a2 + 64);
  v18 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v18;
  v28[2] = v24;
  v28[3] = v17;
  v28[4] = *(a2 + 64);
  v27 = *(a2 + 80);
  v29 = *(a2 + 80);
  v28[0] = v23[0];
  v28[1] = v16;
  a3(&v30, a1, v28);
  v19 = v30;
  v20 = v31;
  v21 = v32;
  swift_beginAccess();
  static AccessibilityProxyTransformModifier.makeAttachmentPlaceholder(attachment:nodePlaceholder:inputs:outputs:)(a4, a5 + 16, v23, &v30, a6, a7, a9, a10);
  result = swift_endAccess();
  *a8 = v19;
  *(a8 + 8) = v20;
  *(a8 + 12) = v21;
  return result;
}

uint64_t static AccessibilityProxyTransformModifier.makeAttachmentPlaceholder(attachment:nodePlaceholder:inputs:outputs:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a5 != MEMORY[0x1E69E73E0])
  {
    v25 = result;
    v13 = *(a3 + 48);
    v14 = *(a3 + 56);
    v15 = *a4;
    v16 = *(a4 + 2);
    v29 = v13;
    LODWORD(v30) = v14;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      v29 = v15;
      LODWORD(v30) = v16;
      v17 = PreferencesOutputs.subscript.getter();
      if ((v17 & 0x100000000) == 0)
      {
        v26 = v17;
        v27 = 0;
        v28 = 1;
        MEMORY[0x1EEE9AC00](v17);
        v29 = a5;
        v30 = a6;
        v31 = a7;
        v32 = a8;
        v23 = type metadata accessor for AccessibilityProxyTransformModifier.PlaceholderAttachment();
        WitnessTable = swift_getWitnessTable();
        _s7SwiftUI23AccessibilityAttachmentVSgMaTm_0(0, &lazy cache variable for type metadata for Attribute<AccessibilityAttachment.Tree>, &type metadata for AccessibilityAttachment.Tree, MEMORY[0x1E698D388]);
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v26, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_28, v22, v23, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
        result = v29;
        *a2 = v29;
        *(a2 + 4) = 0;
LABEL_7:
        MEMORY[0x1EEE9AC00](result);
        v22[0] = a7;
        v22[1] = a8;
        LODWORD(v23) = v20;
        v29 = a5;
        v30 = a6;
        v31 = a7;
        v32 = a8;
        v21 = type metadata accessor for AccessibilityProxyTransformModifier.ProxyAttachment();
        MEMORY[0x1EEE9AC00](v21);
        return AGGraphMutateAttribute();
      }
    }

    v29 = v13;
    LODWORD(v30) = v14;
    result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if (result)
    {
      v29 = v15;
      LODWORD(v30) = v16;
      result = PreferencesOutputs.subscript.getter();
      if ((result & 0x100000000) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t static AccessibilityProxyTransformModifier.makeAttachmentInputs(placeholder:inputs:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 != MEMORY[0x1E69E73E0])
  {
    v4 = result;
    type metadata accessor for PlaceholderContentView();
    *(swift_allocObject() + 16) = v4;
    _ViewInputs.pushModifierBody<A>(_:body:)();
  }

  return result;
}

uint64_t AccessibilityProxyTransformModifier.ProxyAttachment.attachment.getter@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  if (result == *MEMORY[0x1E698D3F8])
  {
    *(a1 + 288) = 0;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 296) = -1;
  }

  else
  {
    Value = AGGraphGetValue();

    return outlined init with copy of AccessibilityAttachment.Tree(Value, a1);
  }

  return result;
}

uint64_t AccessibilityProxyTransformModifier.ProxyAttachment.updateValue()(uint64_t *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!AGGraphGetOutputValue())
  {
    v3 = v1[3];
    v4 = v1[5];
    __src[4] = v1[4];
    __src[5] = v4;
    v5 = v1[5];
    __src[6] = v1[6];
    v6 = v1[1];
    __src[0] = *v1;
    __src[1] = v6;
    v7 = v1[3];
    v9 = *v1;
    v8 = v1[1];
    __src[2] = v1[2];
    __src[3] = v7;
    v28 = __src[4];
    v29 = v5;
    v30 = v1[6];
    v24 = v9;
    v25 = v8;
    v26 = __src[2];
    v27 = v3;
    v10 = implicit closure #1 in AccessibilityProxyTransformModifier.ProxyAttachment.updateValue()(&v24, a1[2], a1[3], a1[4], a1[5]);
    *&v20[64] = v28;
    *&v20[80] = v29;
    *&v20[96] = v30;
    *v20 = v24;
    *&v20[16] = v25;
    *&v20[32] = v26;
    *&v20[48] = v27;
    v11 = *(a1 - 1);
    (*(v11 + 16))(v23, __src, a1);
    (*(v11 + 8))(v20, a1);
    AGGraphClearUpdate();
    v12 = AGSubgraphGetCurrent();
    v13 = AGSubgraphSetCurrent();
    v14 = (v10)(v13);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();

    *(v1 + 2) = v14;
  }

  v15 = v1[5];
  v28 = v1[4];
  v29 = v15;
  v30 = v1[6];
  v16 = v1[1];
  v24 = *v1;
  v25 = v16;
  v17 = v1[3];
  v26 = v1[2];
  v27 = v17;
  AccessibilityProxyTransformModifier.ProxyAttachment.attachment.getter(v20);
  if (v21 == 255)
  {
    _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_2(v20, &lazy cache variable for type metadata for AccessibilityAttachment.Tree?, &type metadata for AccessibilityAttachment.Tree);
    goto LABEL_7;
  }

  AccessibilityAttachment.Tree.attachment.getter(__src);
  outlined destroy of AccessibilityAttachment.Tree(v20);
  if (!*(&__src[17] + 1))
  {
LABEL_7:
    AccessibilityAttachment.init()();
    goto LABEL_8;
  }

  memcpy(v20, __src, sizeof(v20));
LABEL_8:
  _s7SwiftUI23AccessibilityAttachmentVSgMaTm_0(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v18 = swift_allocObject();
  memcpy((v18 + 16), v20, 0x128uLL);
  *v20 = v18;
  AGGraphSetOutputValue();
}

uint64_t (*implicit closure #1 in AccessibilityProxyTransformModifier.ProxyAttachment.updateValue()(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = a1[5];
  v20[4] = a1[4];
  v20[5] = v10;
  v20[6] = a1[6];
  v11 = a1[1];
  v20[0] = *a1;
  v20[1] = v11;
  v12 = a1[3];
  v20[2] = a1[2];
  v20[3] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  v14 = a1[5];
  *(v13 + 112) = a1[4];
  *(v13 + 128) = v14;
  *(v13 + 144) = a1[6];
  v15 = a1[1];
  *(v13 + 48) = *a1;
  *(v13 + 64) = v15;
  v16 = a1[3];
  *(v13 + 80) = a1[2];
  *(v13 + 96) = v16;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v17 = type metadata accessor for AccessibilityProxyTransformModifier.ProxyAttachment();
  (*(*(v17 - 8) + 16))(v19, v20, v17);
  return partial apply for implicit closure #2 in implicit closure #1 in AccessibilityProxyTransformModifier.ProxyAttachment.updateValue();
}

uint64_t AccessibilityProxyTransformModifier.ProxyAttachment.makeAttachment()(void *a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v41 = v1[4];
  v42 = v3;
  v4 = v1[5];
  v43 = v1[6];
  v5 = v1[1];
  v37 = *v1;
  v38 = v5;
  v6 = v1[1];
  v7 = v1[3];
  v39 = v1[2];
  v40 = v7;
  v44[0] = v6;
  v44[1] = v39;
  v45 = *(v1 + 24);
  v44[3] = v41;
  v44[4] = v4;
  v44[2] = v2;
  v36 = v45;
  v33 = v2;
  v34 = v41;
  v35 = v4;
  v31 = v6;
  v32 = v39;
  v8 = *MEMORY[0x1E698D3F8];
  v9 = DWORD1(v37) == *MEMORY[0x1E698D3F8];
  if (DWORD1(v37) == *MEMORY[0x1E698D3F8])
  {
    v10 = 0;
  }

  else
  {
    v10 = DWORD1(v37);
  }

  v11 = a1[2];
  v12 = a1[3];
  v18[2] = v11;
  v18[3] = v12;
  v13 = a1[4];
  v14 = a1[5];
  v18[4] = v13;
  v18[5] = v14;
  v18[6] = &v31;
  outlined init with copy of _ViewInputs(v44, v29);
  LOBYTE(v29[0]) = v9;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF14AttributeGraph0C0Vy7SwiftUI23AccessibilityAttachmentVAGE4TreeOG_s5NeverOytTg5(partial apply for closure #1 in AccessibilityProxyTransformModifier.ProxyAttachment.makeAttachment(), v18, v10 | (v9 << 32));
  if (*(*(v12 - 8) + 64))
  {
    closure #2 in AccessibilityProxyTransformModifier.ProxyAttachment.makeAttachment()(1, v11, v12, v13, v14);
  }

  type metadata accessor for ModifiedContent();
  LODWORD(v29[0]) = AGGraphCreateOffsetAttribute2();
  type metadata accessor for AccessibilityAttachmentChild();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  v25[2] = v33;
  v25[3] = v34;
  v25[4] = v35;
  v26 = v36;
  v25[0] = v31;
  v25[1] = v32;
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v19 = v31;
  v20 = v32;
  outlined init with copy of _ViewInputs(v25, v29);
  v15 = lazy protocol witness table accessor for type AccessibilityRepresentableStyleModifier and conformance AccessibilityRepresentableStyleModifier();
  v18[8] = v14;
  v18[9] = v15;
  swift_getWitnessTable();
  static View.makeDebuggableView(view:inputs:)();
  v29[2] = v21;
  v29[3] = v22;
  v29[4] = v23;
  v30 = v24;
  v29[0] = v19;
  v29[1] = v20;
  outlined destroy of _ViewInputs(v29);
  *&v19 = v34;
  DWORD2(v19) = DWORD2(v34);
  MEMORY[0x1EEE9AC00](v34);

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

  *&v19 = v27;
  DWORD2(v19) = v28;
  v16 = PreferencesOutputs.subscript.getter();

  if ((v16 & 0x100000000) != 0)
  {
    v16 = v8;
  }

  else
  {
    v16 = v16;
  }

  v21 = v33;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v19 = v31;
  v20 = v32;
  outlined destroy of _ViewInputs(&v19);
  return v16;
}

uint64_t closure #2 in AccessibilityProxyTransformModifier.ProxyAttachment.makeAttachment()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for AccessibilityProxyTransformModifier();
  v10[3] = a3;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

uint64_t implicit closure #1 in AccessibilityProxyTransformModifier.ProxyAttachment.makeAttachment()(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  type metadata accessor for AccessibilityProxyTransformModifier.ProxyAttachment();
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v14 = v9;
  v15 = partial apply for closure #1 in Attribute.subscript.getter;
  KeyPath = swift_getKeyPath();
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  type metadata accessor for AccessibilityProxyTransformModifier();
  type metadata accessor for (_:)();
  v18 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<(_:)>();
  v11 = v10;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v14, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_22, v17, v18, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);

  return v24;
}

uint64_t key path getter for AccessibilityProxyTransformModifier.transform : <A, B>AccessibilityProxyTransformModifier<A, B>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AccessibilityProxyTransformModifier() + 52));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a2[1] = v6;
}

uint64_t key path setter for AccessibilityProxyTransformModifier.transform : <A, B>AccessibilityProxyTransformModifier<A, B>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for AccessibilityProxyTransformModifier() + 52));

  *v6 = partial apply for thunk for @escaping @callee_guaranteed (@inout UISplitViewControllerProxy) -> (@out ());
  v6[1] = v5;
  return result;
}

unint64_t AccessibilityProxyTransformModifier.PlaceholderAttachment.value.getter@<X0>(unint64_t a1@<X8>)
{
  v20 = *(v1 + 1);
  v19 = *(v1 + 12);
  v21 = *v1;
  AGGraphGetValue();

  if (result >> 62)
  {
    goto LABEL_16;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v5 = result;
      v23 = MEMORY[0x1E69E7CC0];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        break;
      }

      v6 = 0;
      v7 = v23;
      v8 = v5;
      v18 = v5 & 0xC000000000000001;
      v16 = a1;
      v17 = v5 & 0xFFFFFFFFFFFFFF8;
      v9 = v4;
      a1 = v8;
      while (1)
      {
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v18)
        {
          v11 = MEMORY[0x18D00E9C0](v6);
        }

        else
        {
          if (v6 >= *(v17 + 16))
          {
            goto LABEL_15;
          }

          v11 = *(v8 + 8 * v6 + 32);
        }

        v12 = v11;
        LODWORD(__src[0]) = v21;
        *(__src + 4) = v20;
        BYTE4(__src[1]) = v19;
        closure #1 in AccessibilityProxyTransformModifier.PlaceholderAttachment.value.getter(__src[0], __src[1], __src);

        v23 = v7;
        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v7 = v23;
        }

        *(v7 + 16) = v14 + 1;
        result = memcpy((v7 + 304 * v14 + 32), __src, 0x129uLL);
        ++v6;
        v8 = a1;
        if (v10 == v9)
        {

          a1 = v16;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v15 = result;
      v4 = __CocoaSet.count.getter();
      result = v15;
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    v7 = MEMORY[0x1E69E7CC0];
LABEL_18:
    *a1 = v7;
    *(a1 + 296) = 1;
  }

  return result;
}

uint64_t closure #1 in AccessibilityProxyTransformModifier.PlaceholderAttachment.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *&v7[0] = a1;
  *(&v7[0] + 1) = a2;
  v5 = *(v7 + 4);
  v6 = BYTE4(a2);
  AccessibilityNode.attachment(excluding:)(&v5, v7);
  outlined init with copy of AccessibilityProperties(v7, &v5);
  outlined destroy of AccessibilityAttachment(v7);
  result = AccessibilityAttachment.init(properties:)();
  *(a3 + 296) = 0;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityProxyTransformModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

void AccessibilityAttachmentChild.value.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, a2);
  View.accessibilityRepresentationStyle()();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance AccessibilityAttachmentChild<A>@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t specialized static AccessibilityAttachment.Tree.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AccessibilityAttachment.Tree(a1, v8);
  outlined init with copy of AccessibilityAttachment.Tree(a2, v10);
  if (!v9)
  {
    outlined init with copy of AccessibilityAttachment.Tree(v8, v7);
    if (!v11)
    {
      memcpy(__dst, v10, sizeof(__dst));
      v3 = static AccessibilityAttachment.== infix(_:_:)();
      outlined destroy of AccessibilityAttachment(__dst);
      outlined destroy of AccessibilityAttachment(v7);
      goto LABEL_13;
    }

    outlined destroy of AccessibilityAttachment(v7);
    goto LABEL_11;
  }

  if (v9 == 1)
  {
    outlined init with copy of AccessibilityAttachment.Tree(v8, v7);
    if (v11 == 1)
    {
      v3 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI23AccessibilityAttachmentVACE4TreeO_Tt1g5(v7[0], v10[0]);

LABEL_13:
      outlined destroy of AccessibilityAttachment.Tree(v8);
      return v3 & 1;
    }

    goto LABEL_11;
  }

  if (v11 != 2 || (v4 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(*&v10[5], *&v10[21]), vorrq_s8(*&v10[13], *&v10[29])), vorrq_s8(vorrq_s8(*&v10[9], *&v10[25]), vorrq_s8(*&v10[17], *&v10[33]))), vorrq_s8(vorrq_s8(vorrq_s8(*&v10[7], *&v10[23]), vorrq_s8(*&v10[15], *&v10[31])), vorrq_s8(vorrq_s8(*&v10[11], *&v10[27]), vorrq_s8(*&v10[19], *&v10[35])))), *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v10[4] | v10[3] | v10[2] | v10[1] | v10[0]))
  {
LABEL_11:
    outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v8);
    v3 = 0;
    return v3 & 1;
  }

  outlined destroy of AccessibilityAttachment.Tree(v8);
  v3 = 1;
  return v3 & 1;
}

void *specialized static AccessibilityAttachment.Key.reduce(value:nextValue:)(_BYTE *a1, void (*a2)(void *__return_ptr))
{
  a2(__src);
  outlined init with copy of AccessibilityAttachment.Tree(a1, v11);
  memcpy(v12, __src, 0x129uLL);
  if (LOBYTE(v12[37]) == 2)
  {
    v3 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(*&v12[5], *&v12[21]), vorrq_s8(*&v12[13], *&v12[29])), vorrq_s8(vorrq_s8(*&v12[9], *&v12[25]), vorrq_s8(*&v12[17], *&v12[33]))), vorrq_s8(vorrq_s8(vorrq_s8(*&v12[7], *&v12[23]), vorrq_s8(*&v12[15], *&v12[31])), vorrq_s8(vorrq_s8(*&v12[11], *&v12[27]), vorrq_s8(*&v12[19], *&v12[35]))));
    if (!(*&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | v12[4] | v12[3] | v12[2] | v12[1] | v12[0]))
    {
      return outlined destroy of AccessibilityAttachment.Tree(v11);
    }
  }

  outlined destroy of AccessibilityAttachment.Tree(a1);
  if (!LOBYTE(v11[37]))
  {
    if (LOBYTE(v12[37]) != 1)
    {
      memcpy(__dst, v11, 0x129uLL);
      memcpy(v9, v12, 0x129uLL);
      _s7SwiftUI23AccessibilityAttachmentVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAttachment.Tree>, &type metadata for AccessibilityAttachment.Tree, MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_18CD63410;
      outlined init with copy of AccessibilityAttachment.Tree(__dst, v8 + 32);
      memcpy((v8 + 336), v9, 0x129uLL);
      result = outlined destroy of AccessibilityAttachment.Tree(__dst);
      *a1 = v8;
      goto LABEL_14;
    }

    v6 = v12[0];
    memcpy(__dst, v11, 0x129uLL);
    _s7SwiftUI23AccessibilityAttachmentVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAttachment.Tree>, &type metadata for AccessibilityAttachment.Tree, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18CD63400;
    outlined init with copy of AccessibilityAttachment.Tree(__dst, v7 + 32);
    v9[0] = v7;
    goto LABEL_12;
  }

  if (LOBYTE(v11[37]) != 1)
  {
    return memcpy(a1, v12, 0x129uLL);
  }

  v4 = v11[0];
  if (LOBYTE(v12[37]) != 1)
  {
    memcpy(__dst, v12, 0x129uLL);
    _s7SwiftUI23AccessibilityAttachmentVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAttachment.Tree>, &type metadata for AccessibilityAttachment.Tree, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    outlined init with copy of AccessibilityAttachment.Tree(__dst, v6 + 32);
    v9[0] = v4;
LABEL_12:
    specialized Array.append<A>(contentsOf:)(v6);
    result = outlined destroy of AccessibilityAttachment.Tree(__dst);
    *a1 = v9[0];
    goto LABEL_14;
  }

  __dst[0] = v11[0];
  result = specialized Array.append<A>(contentsOf:)(v12[0]);
  *a1 = __dst[0];
LABEL_14:
  a1[296] = 1;
  return result;
}

uint64_t partial apply for closure #2 in static AccessibilityProxyTransformModifier._makeView(modifier:inputs:body:)(uint64_t result)
{
  v2 = *(v1 + 56);
  *(result + 4) = *(v1 + 48);
  *(result + 12) = v2;
  return result;
}

uint64_t partial apply for closure #1 in static AccessibilityProxyTransformModifier.makeAttachmentPlaceholder(attachment:nodePlaceholder:inputs:outputs:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  result = type metadata accessor for AccessibilityProxyTransformModifier.ProxyAttachment();
  *(a1 + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityProxyTransformModifier.PlaceholderAttachment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 13))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
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

uint64_t storeEnumTagSinglePayload for AccessibilityProxyTransformModifier.PlaceholderAttachment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityProxyTransformModifier.ProxyAttachment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v3;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a2 + 104);
  *(a1 + 104) = v4;

  v5 = v4;
  return a1;
}

uint64_t assignWithCopy for AccessibilityProxyTransformModifier.ProxyAttachment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
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
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a2 + 104);
  v5 = *(a1 + 104);
  *(a1 + 104) = v4;
  v6 = v4;

  return a1;
}

uint64_t assignWithTake for AccessibilityProxyTransformModifier.ProxyAttachment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityProxyTransformModifier.ProxyAttachment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityProxyTransformModifier.ProxyAttachment(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unsigned __int8 *assignWithCopy for AccessibilityAttachment.Tree(unsigned __int8 *__dst, unsigned __int8 *__src)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v4 = __dst[296];
  if (v4 >= 2)
  {
    v4 = *__dst + 2;
  }

  if (v4 == 1)
  {

    goto LABEL_14;
  }

  if (v4)
  {
    goto LABEL_14;
  }

  v5 = *(__dst + 11);
  if (!v5)
  {
    goto LABEL_9;
  }

  if (v5 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1((__dst + 64));
LABEL_9:
  }

  if (*(__dst + 30) != 1)
  {
  }

LABEL_14:
  v6 = __src[296];
  if (v6 >= 2)
  {
    v6 = *__src + 2;
  }

  if (v6 == 1)
  {
    *__dst = *__src;
    __dst[296] = 1;

    return __dst;
  }

  if (!v6)
  {
    *__dst = *__src;
    *(__dst + 1) = *(__src + 1);
    __dst[16] = __src[16];
    *(__dst + 3) = *(__src + 3);
    __dst[32] = __src[32];
    v7 = *(__src + 40);
    __dst[56] = __src[56];
    *(__dst + 40) = v7;
    v8 = *(__src + 11);

    if (v8)
    {
      if (v8 == 1)
      {
        v9 = *(__src + 4);
        v10 = *(__src + 6);
        *(__dst + 5) = *(__src + 5);
        *(__dst + 6) = v10;
        *(__dst + 4) = v9;
LABEL_28:
        v14 = *(__src + 14);
        __dst[120] = __src[120];
        *(__dst + 14) = v14;
        if (*(__src + 30) == 1)
        {
          v15 = *(__src + 9);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = v15;
          v16 = *(__src + 10);
          v17 = *(__src + 11);
          v18 = *(__src + 13);
          *(__dst + 12) = *(__src + 12);
          *(__dst + 13) = v18;
          *(__dst + 10) = v16;
          *(__dst + 11) = v17;
          v19 = *(__src + 14);
          v20 = *(__src + 15);
          v21 = *(__src + 16);
          __dst[272] = __src[272];
          *(__dst + 15) = v20;
          *(__dst + 16) = v21;
          *(__dst + 14) = v19;
        }

        else
        {
          v22 = *(__src + 16);
          __dst[136] = __src[136];
          *(__dst + 16) = v22;
          v23 = *(__src + 18);
          __dst[152] = __src[152];
          *(__dst + 18) = v23;
          __dst[153] = __src[153];
          __dst[154] = __src[154];
          __dst[155] = __src[155];
          __dst[156] = __src[156];
          *(__dst + 20) = *(__src + 20);
          *(__dst + 21) = *(__src + 21);
          *(__dst + 22) = *(__src + 22);
          *(__dst + 23) = *(__src + 23);
          *(__dst + 24) = *(__src + 24);
          *(__dst + 25) = *(__src + 25);
          __dst[208] = __src[208];
          __dst[209] = __src[209];
          *(__dst + 27) = *(__src + 27);
          *(__dst + 28) = *(__src + 28);
          __dst[232] = __src[232];
          *(__dst + 30) = *(__src + 30);
          v24 = *(__src + 248);
          *(__dst + 33) = *(__src + 33);
          *(__dst + 248) = v24;
          __dst[272] = __src[272];
        }

        *(__dst + 35) = *(__src + 35);
        v25 = *(__src + 36);
        *(__dst + 36) = v25;
        __dst[296] = 0;

        v26 = v25;
        return __dst;
      }

      *(__dst + 11) = v8;
      *(__dst + 12) = *(__src + 12);
      (**(v8 - 8))(__dst + 64, __src + 64, v8);
    }

    else
    {
      v12 = *(__src + 4);
      v13 = *(__src + 5);
      *(__dst + 12) = *(__src + 12);
      *(__dst + 4) = v12;
      *(__dst + 5) = v13;
    }

    *(__dst + 13) = *(__src + 13);

    goto LABEL_28;
  }

  return memcpy(__dst, __src, 0x129uLL);
}

unsigned __int8 *assignWithTake for AccessibilityAttachment.Tree(unsigned __int8 *__dst, unsigned __int8 *a2)
{
  if (__dst == a2)
  {
    return __dst;
  }

  v3 = __dst[296];
  if (v3 >= 2)
  {
    v3 = *__dst + 2;
  }

  if (v3 != 1)
  {
    if (v3)
    {
      goto LABEL_15;
    }

    v4 = a2;

    v5 = *(__dst + 11);
    if (v5)
    {
      if (v5 == 1)
      {
LABEL_10:
        if (*(__dst + 30) != 1)
        {
        }

        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_1((__dst + 64));
    }

    goto LABEL_10;
  }

  v4 = a2;

LABEL_14:
  a2 = v4;
LABEL_15:
  v6 = a2[296];
  if (v6 >= 2)
  {
    v6 = *a2 + 2;
  }

  if (v6 == 1)
  {
    *__dst = *a2;
    __dst[296] = 1;
    return __dst;
  }

  if (!v6)
  {
    memcpy(__dst, a2, 0x128uLL);
    __dst[296] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, 0x129uLL);
}

uint64_t getEnumTagSinglePayload for AccessibilityAttachment.Tree(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 297))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 296);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AccessibilityAttachment.Tree(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 256) = 0u;
    *(result + 272) = 0u;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 281) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 297) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 297) = 0;
    }

    if (a2)
    {
      *(result + 296) = -a2;
    }
  }

  return result;
}

uint64_t outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(uint64_t a1)
{
  type metadata accessor for (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)()
{
  if (!lazy cache variable for type metadata for (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree));
    }
  }
}

uint64_t destroy for KeyEvent(uint64_t a1)
{

  return __swift_destroy_boxed_opaque_existential_1(a1 + 64);
}

uint64_t initializeWithCopy for KeyEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  v6 = *(a2 + 88);
  *(a1 + 88) = v6;
  v7 = v6;
  v8 = **(v6 - 8);

  v8(a1 + 64, a2 + 64, v7);
  return a1;
}

uint64_t assignWithCopy for KeyEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  __swift_assign_boxed_opaque_existential_1((a1 + 64), (a2 + 64));
  return a1;
}

uint64_t assignWithTake for KeyEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;

  __swift_destroy_boxed_opaque_existential_1(a1 + 64);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t KeyEvent.Tracker.serial(for:)(_BYTE *a1)
{
  v2 = v1;
  if (*a1 == 1)
  {
    v8 = *v1;
    if (*(*v2 + 16))
    {
      v9 = specialized __RawDictionaryStorage.find<A>(_:)((a1 + 64));
      if (v10)
      {
        return *(*(v8 + 56) + 8 * v9);
      }
    }

LABEL_9:
    DisplayList.Version.init(forUpdate:)();
    v7 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, (a1 + 64), isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    return v7;
  }

  if (!*a1)
  {
    goto LABEL_9;
  }

  v4 = *v1;
  if (*(*v2 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)((a1 + 64)), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    specialized Dictionary._Variant.removeValue(forKey:)((a1 + 64), &v13);
  }

  else
  {
    DisplayList.Version.init(forUpdate:)();
    return v13;
  }

  return v7;
}

double protocol witness for EventType.timestamp.getter in conformance KeyEvent@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double protocol witness for EventType.init(_:) in conformance KeyEvent@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for EventType();
  if (swift_dynamicCast())
  {
    v2 = v11;
    *(a1 + 64) = v10;
    *(a1 + 80) = v2;
    *(a1 + 96) = v12;
    v3 = v7;
    *a1 = v6;
    *(a1 + 16) = v3;
    v4 = v9;
    *(a1 + 32) = v8;
    *(a1 + 48) = v4;
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    outlined destroy of KeyEvent?(&v6);
    *(a1 + 96) = 0;
    *&v4 = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return *&v4;
}

uint64_t specialized static KeyEvent.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  if (v2)
  {
    if (v3)
    {
      if (v2 != v3)
      {
        return 0;
      }

      goto LABEL_8;
    }

LABEL_18:

    return 0;
  }

  if (v3)
  {
    goto LABEL_18;
  }

LABEL_8:
  if (*(a1 + 3) == *(a2 + 3))
  {
    if (*(a1 + 4) == *(a2 + 4) && *(a1 + 5) == *(a2 + 5) || (v4 = a1, v5 = a2, v6 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v5, v7 = v6, a1 = v4, (v7 & 1) != 0))
    {
      if (*(a1 + 6) == *(a2 + 6) && *(a1 + 7) == *(a2 + 7) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        JUMPOUT(0x18D00E7E0);
      }
    }
  }

  return 0;
}

uint64_t outlined destroy of KeyEvent?(uint64_t a1)
{
  type metadata accessor for KeyEvent?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for KeyEvent?()
{
  if (!lazy cache variable for type metadata for KeyEvent?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyEvent?);
    }
  }
}

double protocol witness for EventType.init(_:) in conformance TransformEvent@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for EventType();
  if (swift_dynamicCast())
  {
    v2 = *&v9[32];
    v3 = *&v9[48];
    *(a1 + 32) = *&v9[16];
    *(a1 + 48) = v2;
    *(a1 + 64) = v3;
    *(a1 + 80) = *&v9[64];
    result = *&v8;
    v5 = *v9;
    *a1 = v8;
    *(a1 + 16) = v5;
  }

  else
  {
    v8 = 0uLL;
    *v9 = 1;
    memset(&v9[8], 0, 64);
    v6[2] = *&v9[16];
    v6[3] = *&v9[32];
    v6[4] = *&v9[48];
    v7 = 0;
    v6[0] = 0uLL;
    v6[1] = *v9;
    outlined destroy of TransformEvent?(v6);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
  }

  return result;
}

uint64_t protocol witness for HitTestableEventType.hitTestLocation.getter in conformance TransformEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TransformEvent and conformance TransformEvent();

  return MEMORY[0x1EEDE1378](a1, a2, v4);
}

uint64_t protocol witness for HitTestableEventType.hitTestRadius.getter in conformance TransformEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TransformEvent and conformance TransformEvent();

  return MEMORY[0x1EEDE1370](a1, a2, v4);
}

uint64_t outlined destroy of TransformEvent?(uint64_t a1)
{
  type metadata accessor for TransformEvent?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for TransformEvent?()
{
  if (!lazy cache variable for type metadata for TransformEvent?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TransformEvent?);
    }
  }
}

uint64_t initializeWithCopy for TransformEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t assignWithCopy for TransformEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t assignWithTake for TransformEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for TransformEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for TransformEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

BOOL specialized static TransformEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return result;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (v4)
  {
    if (v6)
    {
      result = 0;
      if (v4 != v6 || v5 != v7)
      {
        return result;
      }

      goto LABEL_11;
    }

LABEL_9:

    return 0;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  result = 0;
  if (v5 != v7)
  {
    return result;
  }

LABEL_11:
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
  {
    return *(a1 + 80) == *(a2 + 80);
  }

  return result;
}

uint64_t SearchCompletion.init(kind:label:)@<X0>(_OWORD *a1@<X0>, void (*a2)(void)@<X1>, _OWORD *a3@<X8>)
{
  v5 = a1[3];
  a3[2] = a1[2];
  a3[3] = v5;
  *(a3 + 57) = *(a1 + 57);
  v6 = a1[1];
  *a3 = *a1;
  a3[1] = v6;
  v7 = type metadata accessor for SearchCompletion();
  a2();
  v8 = *(v7 + 40);
  *(a3 + v8) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOyAA7BindingVy10Foundation16AttributedStringVGSg_GMaTm_0(0, &lazy cache variable for type metadata for Environment<Binding<AttributedString>?>.Content, type metadata accessor for Binding<AttributedString>?, MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t SearchCompletion.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[3] = a2;
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_5(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  v24[2] = v4;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for Button();
  type metadata accessor for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>();
  v24[1] = type metadata accessor for ModifiedContent();
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v7 = type metadata accessor for StaticIf();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v26 = v5;
  v27 = v6;
  v28 = v2;
  v24[6] = v5;
  v24[7] = v6;
  v25 = v2;
  v14 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  WitnessTable = swift_getWitnessTable();
  v16 = lazy protocol witness table accessor for type SearchCompletionButtonStyle and conformance SearchCompletionButtonStyle(&lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>, type metadata accessor for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>);
  v35 = WitnessTable;
  v36 = v16;
  v17 = swift_getWitnessTable();
  v18 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>();
  v33 = v17;
  v34 = v18;
  v19 = swift_getWitnessTable();
  v32 = v19;
  v23 = swift_getWitnessTable();
  StaticIf<>.init(_:then:else:)();
  v29 = v14;
  v30 = v19;
  v31 = v23;
  v20 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v7, v20);
  v21 = *(v8 + 8);
  v21(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)(v13, v7, v20);
  return (v21)(v13, v7);
}

uint64_t closure #1 in SearchCompletion.body.getter()
{
  type metadata accessor for Button();
  type metadata accessor for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  v0 = type metadata accessor for ModifiedContent();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v15 - v5;
  v7 = type metadata accessor for SearchCompletion();
  SearchCompletion.completionContent.getter(v7, v3);
  WitnessTable = swift_getWitnessTable();
  v9 = lazy protocol witness table accessor for type SearchCompletionButtonStyle and conformance SearchCompletionButtonStyle(&lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>, type metadata accessor for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>);
  v15[2] = WitnessTable;
  v15[3] = v9;
  v10 = swift_getWitnessTable();
  v11 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>();
  v15[0] = v10;
  v15[1] = v11;
  v12 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v3, v0, v12);
  v13 = *(v1 + 8);
  v13(v3, v0);
  static ViewBuilder.buildExpression<A>(_:)(v6, v0, v12);
  return (v13)(v6, v0);
}

uint64_t SearchCompletion.completionContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  type metadata accessor for Binding<AttributedString>?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SearchCompletionButtonStyle();
  MEMORY[0x1EEE9AC00](v37);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = type metadata accessor for Button();
  v38 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v35 - v16;
  type metadata accessor for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>();
  v17 = type metadata accessor for ModifiedContent();
  v18 = *(v17 - 8);
  v39 = v17;
  v40 = v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v36 = &v35 - v20;
  (*(v9 + 16))(v12, v3, a1, v19);
  v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v13;
  *(v22 + 24) = v14;
  (*(v9 + 32))(v22 + v21, v12, a1);
  v43 = v13;
  v44 = v14;
  v23 = v3;
  v45 = v3;
  v24 = v35;
  Button.init(action:label:)(partial apply for closure #1 in SearchCompletion.completionContent.getter, v22, partial apply for closure #2 in SearchCompletion.completionContent.getter, v35);
  outlined init with copy of TextInputSuggestionCompletionKind(v23, v8);
  v25 = v37;
  v26 = *(v37 + 20);
  *&v8[v26] = swift_getKeyPath();
  type metadata accessor for Environment<DismissSearchAccessoryAction>.Content();
  swift_storeEnumTagMultiPayload();
  v27 = &v8[*(v25 + 24)];
  *v27 = swift_getKeyPath();
  *(v27 + 1) = 0;
  v27[16] = 0;
  WitnessTable = swift_getWitnessTable();
  lazy protocol witness table accessor for type SearchCompletionButtonStyle and conformance SearchCompletionButtonStyle(&lazy protocol witness table cache variable for type SearchCompletionButtonStyle and conformance SearchCompletionButtonStyle, type metadata accessor for SearchCompletionButtonStyle);
  v29 = v36;
  View.buttonStyle<A>(_:)(v8, v15, v25, WitnessTable);
  outlined destroy of Environment<DismissSearchAccessoryAction>.Content(v8, type metadata accessor for SearchCompletionButtonStyle);
  (*(v38 + 8))(v24, v15);
  v30 = v41;
  specialized Environment.wrappedValue.getter(v41);
  type metadata accessor for Binding<AttributedString>();
  (*(*(v31 - 8) + 48))(v30, 1, v31);
  outlined destroy of Environment<DismissSearchAccessoryAction>.Content(v30, type metadata accessor for Binding<AttributedString>?);
  v32 = lazy protocol witness table accessor for type SearchCompletionButtonStyle and conformance SearchCompletionButtonStyle(&lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>, type metadata accessor for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>);
  v46 = WitnessTable;
  v47 = v32;
  v33 = v39;
  swift_getWitnessTable();
  View.disabled(_:)();
  return (*(v40 + 8))(v29, v33);
}

uint64_t closure #2 in SearchCompletion.body.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = type metadata accessor for Button();
  type metadata accessor for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>();
  v37 = v1;
  v2 = type metadata accessor for ModifiedContent();
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  v38 = v2;
  v3 = type metadata accessor for ModifiedContent();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for Optional();
  v35 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = type metadata accessor for SearchCompletion();
  if (SearchCompletion.shouldRenderPreV6.getter())
  {
    SearchCompletion.completionContent.getter(v16, v6);
    WitnessTable = swift_getWitnessTable();
    v18 = lazy protocol witness table accessor for type SearchCompletionButtonStyle and conformance SearchCompletionButtonStyle(&lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>, type metadata accessor for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>);
    v41 = WitnessTable;
    v42 = v18;
    v19 = swift_getWitnessTable();
    v20 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>();
    v39 = v19;
    v40 = v20;
    v21 = swift_getWitnessTable();
    static ViewBuilder.buildExpression<A>(_:)(v6, v3, v21);
    v22 = *(v4 + 8);
    v22(v6, v3);
    static ViewBuilder.buildExpression<A>(_:)(v9, v3, v21);
    v22(v9, v3);
    (*(v4 + 32))(v12, v6, v3);
    (*(v4 + 56))(v12, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v12, 1, 1, v3);
    v23 = swift_getWitnessTable();
    v24 = lazy protocol witness table accessor for type SearchCompletionButtonStyle and conformance SearchCompletionButtonStyle(&lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>, type metadata accessor for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>);
    v50 = v23;
    v51 = v24;
    v25 = swift_getWitnessTable();
    v26 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>();
    v48 = v25;
    v49 = v26;
    swift_getWitnessTable();
  }

  static ToolbarContentBuilder.buildIf<A>(_:)(v12, v15);
  v27 = *(v35 + 8);
  v27(v12, v10);
  v28 = swift_getWitnessTable();
  v29 = lazy protocol witness table accessor for type SearchCompletionButtonStyle and conformance SearchCompletionButtonStyle(&lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>, type metadata accessor for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>);
  v46 = v28;
  v47 = v29;
  v30 = swift_getWitnessTable();
  v31 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>();
  v44 = v30;
  v45 = v31;
  v43 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v15, v10, v32);
  return (v27)(v15, v10);
}

uint64_t SearchCompletion.shouldRenderPreV6.getter()
{
  type metadata accessor for AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>(0, &lazy cache variable for type metadata for AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.AnyTokenAttribute, MEMORY[0x1E6968768]);
  v30 = v1;
  v29 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v28 - v2;
  v4 = type metadata accessor for AttributedString.Runs();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchAttributedString();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributedString();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchCompletion.text.getter(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of Environment<DismissSearchAccessoryAction>.Content(v12, type metadata accessor for AttributedString?);
    v17 = 0;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    outlined init with copy of TextInputSuggestionCompletionKind(v0, v33);
    if (v35)
    {
      v31[2] = v33[2];
      v31[3] = v33[3];
      v32 = v34;
      v31[0] = v33[0];
      v31[1] = v33[1];
      AttributedString.runs.getter();
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v28 - 2) = v19;
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute();
      AttributedString.Runs.subscript.getter();

      v20 = (*(v28 + 8))(v6, v4);
      MEMORY[0x1EEE9AC00](v20);
      *(&v28 - 2) = v31;
      v21 = specialized Sequence.contains(where:)(partial apply for closure #1 in SearchCompletion.shouldRenderPreV6.getter, (&v28 - 4));
      (*(v29 + 8))(v3, v30);
      (*(v14 + 8))(v16, v13);
      v17 = !v21;
      outlined destroy of AnyToken(v31);
    }

    else
    {
      v22 = v33[0];
      (*(v14 + 16))(v9, v16, v13);
      v23 = SearchAttributedString.lastText.getter();
      v25 = v24;
      outlined destroy of Environment<DismissSearchAccessoryAction>.Content(v9, type metadata accessor for SearchAttributedString);
      if (v25)
      {
        if (__PAIR128__(v25, v23) == v22)
        {

          v17 = 0;
        }

        else
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v17 = v26 ^ 1;
        }
      }

      else
      {

        v17 = 1;
      }

      (*(v14 + 8))(v16, v13);
    }
  }

  return v17 & 1;
}

uint64_t closure #1 in SearchCompletion.completionContent.getter(uint64_t a1)
{
  v2 = type metadata accessor for SearchAttributedString();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  outlined init with copy of TextInputSuggestionCompletionKind(a1, v22);
  if (v24)
  {
    v20[2] = v22[2];
    v20[3] = v22[3];
    v21 = v23;
    v20[0] = v22[0];
    v20[1] = v22[1];
    type metadata accessor for SearchCompletion();
    SearchCompletion.text.getter(v7);
    v14 = type metadata accessor for AttributedString();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v7, 1, v14))
    {
      _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_6(v7, v10, type metadata accessor for AttributedString?);
      SearchCompletion.text.setter(v10);
      outlined destroy of AnyToken(v20);
      return outlined destroy of Environment<DismissSearchAccessoryAction>.Content(v7, type metadata accessor for AttributedString?);
    }

    else
    {
      (*(v15 + 16))(v4, v7, v14);
      SearchAttributedString.append(token:)(v20);
      (*(v15 + 8))(v7, v14);
      (*(v15 + 32))(v7, v4, v14);
      SearchCompletion.text.setter(v7);
      return outlined destroy of AnyToken(v20);
    }
  }

  else
  {
    v17 = v22[0];
    type metadata accessor for SearchCompletion();
    SearchCompletion.text.getter(v13);
    v18 = type metadata accessor for AttributedString();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v13, 1, v18))
    {

      _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_6(v13, v10, type metadata accessor for AttributedString?);
      SearchCompletion.text.setter(v10);
      return outlined destroy of Environment<DismissSearchAccessoryAction>.Content(v13, type metadata accessor for AttributedString?);
    }

    else
    {
      (*(v19 + 16))(v4, v13, v18);
      SearchAttributedString.update(text:)(v17);

      (*(v19 + 8))(v13, v18);
      (*(v19 + 32))(v13, v4, v18);
      return SearchCompletion.text.setter(v13);
    }
  }
}

uint64_t SearchCompletion.text.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Binding<AttributedString>?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized Environment.wrappedValue.getter(v4);
  type metadata accessor for Binding<AttributedString>();
  v6 = v5;
  v7 = 1;
  v8 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  v9 = type metadata accessor for Binding<AttributedString>?;
  if (v8 != 1)
  {
    MEMORY[0x18D00ACC0](v6);
    v7 = 0;
    v9 = type metadata accessor for Binding<AttributedString>;
  }

  outlined destroy of Environment<DismissSearchAccessoryAction>.Content(v4, v9);
  v10 = type metadata accessor for AttributedString();
  return (*(*(v10 - 8) + 56))(a1, v7, 1, v10);
}

uint64_t SearchCompletion.text.setter(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AttributedString?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_6(a1, v8, type metadata accessor for AttributedString?);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return outlined destroy of Environment<DismissSearchAccessoryAction>.Content(a1, type metadata accessor for AttributedString?);
  }

  (*(v3 + 32))(v5, v8, v2);
  closure #1 in SearchCompletion.text.setter(&v11);
  outlined destroy of Environment<DismissSearchAccessoryAction>.Content(a1, type metadata accessor for AttributedString?);
  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #2 in SearchCompletion.completionContent.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchCompletion();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v9 + 36), a2, a3);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t closure #1 in SearchCompletion.shouldRenderPreV6.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (AnyToken?, Range<AttributedString.Index>)();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_6(a1, v7, type metadata accessor for (AnyToken?, Range<AttributedString.Index>));
  v8 = *(v5 + 56);
  *&v21[32] = *(v7 + 8);
  v9 = *(v7 + 3);
  *v21 = *(v7 + 2);
  *&v21[16] = v9;
  v10 = *(v7 + 1);
  v19 = *v7;
  v20 = v10;
  if (*(&v10 + 1))
  {
    outlined init with copy of AnyHashable(v21, v24);
    outlined destroy of AnyToken(&v19);
    outlined destroy of Environment<DismissSearchAccessoryAction>.Content(&v7[v8], type metadata accessor for Range<AttributedString.Index>);
  }

  else
  {
    outlined destroy of Environment<DismissSearchAccessoryAction>.Content(&v7[v8], type metadata accessor for Range<AttributedString.Index>);
    _ss11AnyHashableVSgWOhTm_2(&v19, &lazy cache variable for type metadata for AnyToken?, &type metadata for AnyToken);
    memset(v24, 0, sizeof(v24));
    v25 = 0;
  }

  outlined init with copy of AnyHashable(a2 + 32, v23);
  outlined init with copy of AnyHashable?(v24, &v19);
  outlined init with copy of AnyHashable?(v23, &v21[8]);
  if (!*(&v20 + 1))
  {
    v13 = MEMORY[0x1E69E69B8];
    _ss11AnyHashableVSgWOhTm_2(v23, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    _ss11AnyHashableVSgWOhTm_2(v24, &lazy cache variable for type metadata for AnyHashable?, v13);
    if (!*&v21[32])
    {
      _ss11AnyHashableVSgWOhTm_2(&v19, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
      v11 = 1;
      return v11 & 1;
    }

LABEL_10:
    outlined destroy of Environment<DismissSearchAccessoryAction>.Content(&v19, type metadata accessor for (AnyHashable?, AnyHashable?));
    v11 = 0;
    return v11 & 1;
  }

  outlined init with copy of AnyHashable?(&v19, v18);
  if (!*&v21[32])
  {
    v14 = MEMORY[0x1E69E69B8];
    _ss11AnyHashableVSgWOhTm_2(v23, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    _ss11AnyHashableVSgWOhTm_2(v24, &lazy cache variable for type metadata for AnyHashable?, v14);
    outlined destroy of AnyHashable(v18);
    goto LABEL_10;
  }

  v16[0] = *&v21[8];
  v16[1] = *&v21[24];
  v17 = v22;
  v11 = MEMORY[0x18D00E7E0](v18, v16);
  outlined destroy of AnyHashable(v16);
  v12 = MEMORY[0x1E69E69B8];
  _ss11AnyHashableVSgWOhTm_2(v23, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  _ss11AnyHashableVSgWOhTm_2(v24, &lazy cache variable for type metadata for AnyHashable?, v12);
  outlined destroy of AnyHashable(v18);
  _ss11AnyHashableVSgWOhTm_2(&v19, &lazy cache variable for type metadata for AnyHashable?, v12);
  return v11 & 1;
}

uint64_t closure #1 in SearchCompletion.text.setter@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for Binding<AttributedString>?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchCompletion();
  specialized Environment.wrappedValue.getter(v4);
  type metadata accessor for Binding<AttributedString>();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  v7 = type metadata accessor for Binding<AttributedString>?;
  if (v6 != 1)
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
    v7 = type metadata accessor for Binding<AttributedString>;
  }

  result = outlined destroy of Environment<DismissSearchAccessoryAction>.Content(v4, v7);
  *a1 = v6 == 1;
  return result;
}

uint64_t closure #1 in SearchCompletionButtonStyle.makeBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DismissSearchAccessoryAction(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  ButtonAction.callAsFunction()();
  v6 = type metadata accessor for SearchCompletionButtonStyle();
  v7 = specialized Environment.wrappedValue.getter(*(a2 + *(v6 + 24)), *(a2 + *(v6 + 24) + 8), *(a2 + *(v6 + 24) + 16));
  if (v7)
  {
    v8 = v7;
    v11 = 4;
    v7(&v11);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v8);
  }

  specialized Environment.wrappedValue.getter(v5);
  DismissSearchAccessoryAction.callAsFunction()();
  return outlined destroy of Environment<DismissSearchAccessoryAction>.Content(v5, type metadata accessor for DismissSearchAccessoryAction);
}

uint64_t protocol witness for PrimitiveButtonStyle.makeBody(configuration:) in conformance SearchCompletionButtonStyle@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_6(a1, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrimitiveButtonStyleConfiguration);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_6(v4, v9, type metadata accessor for SearchCompletionButtonStyle);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_2(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for PrimitiveButtonStyleConfiguration);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_2(v9, v15 + v14, type metadata accessor for SearchCompletionButtonStyle);
  *a3 = *a1;
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_5(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  v17 = &a3[*(v16 + 36)];
  *v17 = partial apply for closure #1 in SearchCompletionButtonStyle.makeBody(configuration:);
  v17[1] = v15;
  type metadata accessor for ButtonAction();
  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance DefinesSearchCompletionModifier@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    *a1 = *v1;
    *(a1 + 4) = 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t SearchSuggestionsVisibilityModifier.body(content:)@<X0>(_BYTE *a1@<X8>)
{
  if (*v1 == 2)
  {
    v3 = *(v1 + 8);
    result = specialized Environment.wrappedValue.getter(*(v1 + 16), *(v1 + 24), &v6);
    v5 = (v3 >> v6) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t View.searchCompletion(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v5 = a1;
  *(&v5 + 1) = a2;
  v6 = 0;

  return SearchCompletion.init(kind:label:)(&v5, partial apply for closure #1 in View.searchCompletion(_:), a3);
}

uint64_t closure #1 in View.searchCompletion(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v8, v9, v10);
  static ViewBuilder.buildExpression<A>(_:)(v7, a2, a3);
  return (*(v5 + 8))(v7, a2);
}

uint64_t View.searchCompletion<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v14, v12);
  AnyToken.init<A>(_:)(v14, a3, v23);
  v24 = 1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = v6;
  return SearchCompletion.init(kind:label:)(v23, partial apply for closure #1 in View.searchCompletion<A>(_:), a6);
}

uint64_t closure #1 in View.searchCompletion<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v9, v10, v11);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a4);
  return (*(v6 + 8))(v8, a2);
}

uint64_t View.searchSuggestions(_:for:)(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v8[0] = a1;
  v9 = v6;
  KeyPath = swift_getKeyPath();
  v11 = 0;
  MEMORY[0x18D00A570](v8, a3, &type metadata for SearchSuggestionsVisibilityModifier, a4);
  return outlined consume of Environment<Selector?>.Content(KeyPath, v11);
}

uint64_t key path getter for EnvironmentValues.searchSuggestionsPlacement : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_5(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuggestionsPlacementKey>, &type metadata for EnvironmentValues.SearchSuggestionsPlacementKey, &protocol witness table for EnvironmentValues.SearchSuggestionsPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchSuggestionsPlacementKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_5(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuggestionsPlacementKey>, &type metadata for EnvironmentValues.SearchSuggestionsPlacementKey, &protocol witness table for EnvironmentValues.SearchSuggestionsPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchSuggestionsPlacementKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.searchSuggestionsPlacement : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_5(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuggestionsPlacementKey>, &type metadata for EnvironmentValues.SearchSuggestionsPlacementKey, &protocol witness table for EnvironmentValues.SearchSuggestionsPlacementKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchSuggestionsPlacementKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type SearchSuggestionsVisibilityModifier and conformance SearchSuggestionsVisibilityModifier()
{
  result = lazy protocol witness table cache variable for type SearchSuggestionsVisibilityModifier and conformance SearchSuggestionsVisibilityModifier;
  if (!lazy protocol witness table cache variable for type SearchSuggestionsVisibilityModifier and conformance SearchSuggestionsVisibilityModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSuggestionsVisibilityModifier and conformance SearchSuggestionsVisibilityModifier);
  }

  return result;
}

void type metadata completion function for SearchCompletion()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    _s7SwiftUI11EnvironmentV7ContentOyAA7BindingVy10Foundation16AttributedStringVGSg_GMaTm_0(319, &lazy cache variable for type metadata for Environment<Binding<AttributedString>?>.Content, type metadata accessor for Binding<AttributedString>?, MEMORY[0x1E697DCB8]);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for SearchCompletion(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v7;
  v9 = *(v6 + 64);
  v10 = type metadata accessor for AttributedString();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = ((v12 + 16) & ~v12) + *(v11 + 64);
  if (v13 <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = ((v12 + 16) & ~v12) + *(v11 + 64);
  }

  v15 = v14 + ((((v7 + 73) & ~v7) + v9 + (v12 | 7)) & ~(v12 | 7)) + 1;
  v16 = v12 | v7;
  if (v16 > 7 || ((*(v11 + 80) | v7) & 0x100000) != 0 || v15 > 0x18)
  {
    v19 = *a2;
    *a1 = *a2;
    a1 = v19 + ((v16 & 0xF8 ^ 0x1F8) & (v16 + 16));
    goto LABEL_40;
  }

  v20 = *(a2 + 72);
  if (v20 >= 2)
  {
    v20 = *a2 + 2;
  }

  v43 = *(v11 + 84);
  v42 = v10;
  v21 = ~v7;
  if (v20 == 1)
  {
    v22 = a2[3];
    *(a1 + 24) = v22;
    (**(v22 - 8))(a1, a2);
    v23 = *(a2 + 7);
    *(a1 + 56) = v23;
    (**(v23 - 8))(a1 + 32, (a2 + 4));
    v24 = 1;
  }

  else
  {
    v25 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v25;

    v24 = 0;
  }

  *(a1 + 72) = v24;
  v26 = a2 + v8;
  v27 = (a1 + v8 + 73) & v21;
  v28 = (v26 + 73) & v21;
  (*(v6 + 16))(v27, v28, v5);
  v29 = ((v9 + 7 + v28) & 0xFFFFFFFFFFFFFFF8);
  v30 = *(v29 + v14);
  v31 = v30 - 2;
  if (v30 < 2)
  {
    v33 = v43;
  }

  else
  {
    if (v14 <= 3)
    {
      v32 = v14;
    }

    else
    {
      v32 = 4;
    }

    v33 = v43;
    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v34 = *v29;
      }

      else if (v32 == 3)
      {
        v34 = *v29 | (*(v29 + 2) << 16);
      }

      else
      {
        v34 = *v29;
      }

LABEL_31:
      v35 = (v34 | (v31 << (8 * v14))) + 2;
      v30 = v34 + 2;
      if (v14 < 4)
      {
        v30 = v35;
      }

      goto LABEL_33;
    }

    if (v32)
    {
      v34 = *v29;
      goto LABEL_31;
    }
  }

LABEL_33:
  v36 = ((v9 + 7 + v27) & 0xFFFFFFFFFFFFFFF8);
  if (v30 == 1)
  {
    v37 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v33 < 0)
    {
      if ((*(v11 + 48))(v37 + 1))
      {
LABEL_38:
        memcpy(v36, v29, v13);
LABEL_43:
        *(v36 + v14) = 1;
        return a1;
      }
    }

    else
    {
      v38 = *v37;
      if (*v37 >= 0xFFFFFFFF)
      {
        LODWORD(v38) = -1;
      }

      if (v38 != -1)
      {
        goto LABEL_38;
      }
    }

    *v36 = *v29;
    v39 = ((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v39 = *v37;
    v40 = *(v11 + 16);

    v40(v39 + 1, v37 + 1, v42);
    goto LABEL_43;
  }

  *v36 = *v29;
  *(v36 + v14) = 0;
LABEL_40:

  return a1;
}

uint64_t destroy for SearchCompletion(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (v4 >= 2)
  {
    v4 = *a1 + 2;
  }

  if (v4 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(a1 + 32);
  }

  else
  {
  }

  v5 = *(*(a2 + 16) - 8);
  v6 = v5 + 8;
  v7 = (a1 + *(v5 + 80) + 73) & ~*(v5 + 80);
  (*(v5 + 8))(v7);
  v8 = *(v6 + 56);
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((v7 + v8 + (v11 | 7)) & ~(v11 | 7));
  v13 = ((v11 + 16) & ~v11) + *(v10 + 64);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  v14 = v12[v13];
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v13 <= 3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 4;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = *v12;
    }

    else if (v16 == 2)
    {
      v17 = *v12;
    }

    else if (v16 == 3)
    {
      v17 = *v12 | (v12[2] << 16);
    }

    else
    {
      v17 = *v12;
    }

    v18 = (v17 | (v15 << (8 * v13))) + 2;
    v14 = v17 + 2;
    if (v13 < 4)
    {
      v14 = v18;
    }
  }

LABEL_22:
  if (v14 == 1)
  {
    v19 = ~v11;
    v20 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v24 = *(v9 - 8);
    if ((*(v10 + 84) & 0x80000000) != 0)
    {
      result = (*(v10 + 48))((v20 + v11 + 8) & v19);
      if (result)
      {
        return result;
      }
    }

    else
    {
      v21 = *v20;
      if (*v20 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      result = (v21 + 1);
      if (v21 != -1)
      {
        return result;
      }
    }

    v23 = *(v24 + 8);

    return v23((v20 + v11 + 8) & v19, v9);
  }
}

uint64_t initializeWithCopy for SearchCompletion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 72);
  if (v6 >= 2)
  {
    v6 = *a2 + 2;
  }

  if (v6 == 1)
  {
    v7 = *(a2 + 24);
    *(a1 + 24) = v7;
    (**(v7 - 8))(a1, a2);
    v8 = *(a2 + 56);
    *(a1 + 56) = v8;
    (**(v8 - 8))(a1 + 32, a2 + 32);
    v9 = 1;
  }

  else
  {
    v10 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v10;

    v9 = 0;
  }

  *(a1 + 72) = v9;
  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 16;
  v13 = *(v11 + 80);
  v14 = (v13 + 73 + a1) & ~v13;
  v15 = (v13 + 73 + a2) & ~v13;
  (*(v11 + 16))(v14, v15);
  v16 = *(v12 + 48);
  v17 = type metadata accessor for AttributedString();
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  v20 = (v19 | 7) + v16;
  v21 = ((v20 + v14) & ~(v19 | 7));
  v22 = ((v20 + v15) & ~(v19 | 7));
  v23 = *(v18 + 64);
  v24 = ((v19 + 16) & ~v19) + v23;
  if (v24 <= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = ((v19 + 16) & ~v19) + v23;
  }

  v26 = v22[v25];
  v27 = v26 - 2;
  if (v26 >= 2)
  {
    if (v25 <= 3)
    {
      v28 = v25;
    }

    else
    {
      v28 = 4;
    }

    if (v28 <= 1)
    {
      if (!v28)
      {
        goto LABEL_23;
      }

      v29 = *v22;
    }

    else if (v28 == 2)
    {
      v29 = *v22;
    }

    else if (v28 == 3)
    {
      v29 = *v22 | (v22[2] << 16);
    }

    else
    {
      v29 = *v22;
    }

    v30 = (v29 | (v27 << (8 * v25))) + 2;
    v26 = v29 + 2;
    if (v25 < 4)
    {
      v26 = v30;
    }
  }

LABEL_23:
  if (v26 == 1)
  {
    v31 = ~v19;
    v32 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v18 + 84) & 0x80000000) != 0)
    {
      if ((*(v18 + 48))((v32 + v19 + 8) & v31))
      {
LABEL_28:
        memcpy(v21, v22, v24);
LABEL_32:
        *(v21 + v25) = 1;
        return a1;
      }
    }

    else
    {
      v33 = *v32;
      if (*v32 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      if (v33 != -1)
      {
        goto LABEL_28;
      }
    }

    *v21 = *v22;
    v34 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v34 = *v32;
    v35 = v34 + v19 + 8;
    v36 = *(v18 + 16);

    v36(v35 & v31, (v32 + v19 + 8) & v31, v17);
    goto LABEL_32;
  }

  *v21 = *v22;
  *(v21 + v25) = 0;

  return a1;
}

uint64_t assignWithCopy for SearchCompletion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a1 + 72);
    if (v6 >= 2)
    {
      v6 = *a1 + 2;
    }

    if (v6 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      __swift_destroy_boxed_opaque_existential_1(a1 + 32);
    }

    else
    {
    }

    v7 = *(a2 + 72);
    if (v7 >= 2)
    {
      v7 = *a2 + 2;
    }

    if (v7 == 1)
    {
      v8 = *(a2 + 24);
      *(a1 + 24) = v8;
      (**(v8 - 8))(a1, a2);
      v9 = *(a2 + 56);
      *(a1 + 56) = v9;
      *(a1 + 64) = *(a2 + 64);
      (**(v9 - 8))(a1 + 32, a2 + 32);
      *(a1 + 72) = 1;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 72) = 0;
    }
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v12 + 73 + a1) & ~v12;
  v14 = (v12 + 73 + a2) & ~v12;
  (*(v10 + 24))(v13, v14);
  v15 = *(v11 + 40);
  v16 = type metadata accessor for AttributedString();
  v17 = *(v16 - 8);
  v18 = *(v17 + 80);
  v19 = (v18 | 7) + v15;
  v20 = ((v19 + v13) & ~(v18 | 7));
  v21 = ((v19 + v14) & ~(v18 | 7));
  if (v20 == v21)
  {
    return a1;
  }

  v22 = v16;
  v23 = *(v16 - 8);
  v24 = *(v17 + 64);
  v25 = v24 + ((v18 + 16) & ~v18);
  if (v25 <= 8)
  {
    v26 = 8;
  }

  else
  {
    v26 = v24 + ((v18 + 16) & ~v18);
  }

  v27 = *(v20 + v26);
  v28 = v27 - 2;
  if (v27 >= 2)
  {
    if (v26 <= 3)
    {
      v29 = v26;
    }

    else
    {
      v29 = 4;
    }

    if (v29 <= 1)
    {
      if (!v29)
      {
        goto LABEL_30;
      }

      v30 = *v20;
    }

    else if (v29 == 2)
    {
      v30 = *v20;
    }

    else if (v29 == 3)
    {
      v30 = *v20 | (*(v20 + 2) << 16);
    }

    else
    {
      v30 = *v20;
    }

    v31 = (v30 | (v28 << (8 * v26))) + 2;
    v27 = v30 + 2;
    if (v26 < 4)
    {
      v27 = v31;
    }
  }

LABEL_30:
  v32 = *(v17 + 84);
  v46 = ~v18;
  if (v27 != 1)
  {

    goto LABEL_39;
  }

  v33 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v32 & 0x80000000) != 0)
  {
    if ((*(v17 + 48))((v33 + v18 + 8) & v46, v32, v16))
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v34 = *v33;
  if (*v33 >= 0xFFFFFFFF)
  {
    LODWORD(v34) = -1;
  }

  if (v34 == -1)
  {
LABEL_38:

    (*(v23 + 8))((v33 + v18 + 8) & v46, v22);
  }

LABEL_39:
  v35 = *(v21 + v26);
  v36 = v35 - 2;
  if (v35 >= 2)
  {
    if (v26 <= 3)
    {
      v37 = v26;
    }

    else
    {
      v37 = 4;
    }

    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v38 = *v21;
      }

      else if (v37 == 3)
      {
        v38 = *v21 | (*(v21 + 2) << 16);
      }

      else
      {
        v38 = *v21;
      }

LABEL_51:
      v39 = (v38 | (v36 << (8 * v26))) + 2;
      v35 = v38 + 2;
      if (v26 < 4)
      {
        v35 = v39;
      }

      goto LABEL_53;
    }

    if (v37)
    {
      v38 = *v21;
      goto LABEL_51;
    }
  }

LABEL_53:
  if (v35 == 1)
  {
    v40 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v32 & 0x80000000) != 0)
    {
      if ((*(v23 + 48))((v40 + v18 + 8) & v46, v32, v22))
      {
LABEL_58:
        memcpy(v20, v21, v25);
LABEL_62:
        *(v20 + v26) = 1;
        return a1;
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
        goto LABEL_58;
      }
    }

    *v20 = *v21;
    v42 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v42 = *v40;
    v43 = v42 + v18 + 8;
    v44 = *(v23 + 16);

    v44(v43 & v46, (v40 + v18 + 8) & v46, v22);
    goto LABEL_62;
  }

  *v20 = *v21;
  *(v20 + v26) = 0;

  return a1;
}

uint64_t initializeWithTake for SearchCompletion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 72);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    v5 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v5;
    *(a1 + 64) = *(a2 + 64);
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a1 = *a2;
  }

  *(a1 + 72) = v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v10 + 73 + a1) & ~v10;
  v12 = (v10 + 73 + a2) & ~v10;
  (*(v8 + 32))(v11, v12);
  v13 = *(v9 + 32);
  v14 = type metadata accessor for AttributedString();
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = (v16 | 7) + v13;
  v18 = ((v17 + v11) & ~(v16 | 7));
  v19 = ((v17 + v12) & ~(v16 | 7));
  v20 = *(v15 + 64);
  v21 = ((v16 + 16) & ~v16) + v20;
  if (v21 <= 8)
  {
    v22 = 8;
  }

  else
  {
    v22 = ((v16 + 16) & ~v16) + v20;
  }

  v23 = v19[v22];
  v24 = v23 - 2;
  if (v23 >= 2)
  {
    if (v22 <= 3)
    {
      v25 = v22;
    }

    else
    {
      v25 = 4;
    }

    if (v25 <= 1)
    {
      if (!v25)
      {
        goto LABEL_23;
      }

      v26 = *v19;
    }

    else if (v25 == 2)
    {
      v26 = *v19;
    }

    else if (v25 == 3)
    {
      v26 = *v19 | (v19[2] << 16);
    }

    else
    {
      v26 = *v19;
    }

    v27 = (v26 | (v24 << (8 * v22))) + 2;
    v23 = v26 + 2;
    if (v22 < 4)
    {
      v23 = v27;
    }
  }

LABEL_23:
  if (v23 == 1)
  {
    v28 = ~v16;
    v29 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v15 + 84) & 0x80000000) != 0)
    {
      if ((*(v15 + 48))((v29 + v16 + 8) & v28))
      {
LABEL_28:
        memcpy(v18, v19, v21);
LABEL_32:
        v31 = 1;
        goto LABEL_33;
      }
    }

    else
    {
      v30 = *v29;
      if (*v29 >= 0xFFFFFFFF)
      {
        LODWORD(v30) = -1;
      }

      if (v30 != -1)
      {
        goto LABEL_28;
      }
    }

    *v18 = *v19;
    v32 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v32 = *v29;
    (*(v15 + 32))((v32 + v16 + 8) & v28, (v29 + v16 + 8) & v28, v14);
    goto LABEL_32;
  }

  v31 = 0;
  *v18 = *v19;
LABEL_33:
  *(v18 + v22) = v31;
  return a1;
}

uint64_t assignWithTake for SearchCompletion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a1 + 72);
    if (v6 >= 2)
    {
      v6 = *a1 + 2;
    }

    if (v6 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      __swift_destroy_boxed_opaque_existential_1(a1 + 32);
    }

    else
    {
    }

    v7 = *(a2 + 72);
    if (v7 >= 2)
    {
      v7 = *a2 + 2;
    }

    if (v7 == 1)
    {
      v8 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v8;
      *(a1 + 64) = *(a2 + 64);
      v9 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v9;
      v10 = 1;
    }

    else
    {
      v10 = 0;
      *a1 = *a2;
    }

    *(a1 + 72) = v10;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 40;
  v13 = *(v11 + 80);
  v14 = (v13 + 73 + a1) & ~v13;
  v15 = (v13 + 73 + a2) & ~v13;
  (*(v11 + 40))(v14, v15);
  v16 = *(v12 + 24);
  v17 = type metadata accessor for AttributedString();
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  v20 = (v19 | 7) + v16;
  v21 = ((v20 + v14) & ~(v19 | 7));
  v22 = ((v20 + v15) & ~(v19 | 7));
  if (v21 != v22)
  {
    v23 = v17;
    v24 = *(v17 - 8);
    v25 = *(v18 + 64);
    v26 = v25 + ((v19 + 16) & ~v19);
    if (v26 <= 8)
    {
      v27 = 8;
    }

    else
    {
      v27 = v25 + ((v19 + 16) & ~v19);
    }

    v28 = v21[v27];
    v29 = v28 - 2;
    if (v28 >= 2)
    {
      if (v27 <= 3)
      {
        v30 = v27;
      }

      else
      {
        v30 = 4;
      }

      if (v30 <= 1)
      {
        if (!v30)
        {
          goto LABEL_31;
        }

        v31 = *v21;
      }

      else if (v30 == 2)
      {
        v31 = *v21;
      }

      else if (v30 == 3)
      {
        v31 = *v21 | (v21[2] << 16);
      }

      else
      {
        v31 = *v21;
      }

      v32 = (v31 | (v29 << (8 * v27))) + 2;
      v28 = v31 + 2;
      if (v27 < 4)
      {
        v28 = v32;
      }
    }

LABEL_31:
    v33 = *(v18 + 84);
    v46 = ~v19;
    if (v28 != 1)
    {

      goto LABEL_40;
    }

    v34 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v33 & 0x80000000) != 0)
    {
      if ((*(v18 + 48))((v34 + v19 + 8) & v46, v33, v17))
      {
        goto LABEL_40;
      }
    }

    else
    {
      v35 = *v34;
      if (*v34 >= 0xFFFFFFFF)
      {
        LODWORD(v35) = -1;
      }

      if (v35 != -1)
      {
LABEL_40:
        v36 = v22[v27];
        v37 = v36 - 2;
        if (v36 < 2)
        {
          goto LABEL_54;
        }

        if (v27 <= 3)
        {
          v38 = v27;
        }

        else
        {
          v38 = 4;
        }

        if (v38 <= 1)
        {
          if (!v38)
          {
            goto LABEL_54;
          }

          v39 = *v22;
        }

        else if (v38 == 2)
        {
          v39 = *v22;
        }

        else if (v38 == 3)
        {
          v39 = *v22 | (v22[2] << 16);
        }

        else
        {
          v39 = *v22;
        }

        v40 = (v39 | (v37 << (8 * v27))) + 2;
        v36 = v39 + 2;
        if (v27 < 4)
        {
          v36 = v40;
        }

LABEL_54:
        if (v36 != 1)
        {
          v43 = 0;
          *v21 = *v22;
LABEL_64:
          v21[v27] = v43;
          return a1;
        }

        v41 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v33 & 0x80000000) != 0)
        {
          if ((*(v24 + 48))((v41 + v19 + 8) & v46, v33, v23))
          {
LABEL_59:
            memcpy(v21, v22, v26);
LABEL_63:
            v43 = 1;
            goto LABEL_64;
          }
        }

        else
        {
          v42 = *v41;
          if (*v41 >= 0xFFFFFFFF)
          {
            LODWORD(v42) = -1;
          }

          if (v42 != -1)
          {
            goto LABEL_59;
          }
        }

        *v21 = *v22;
        v44 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
        *v44 = *v41;
        (*(v24 + 32))((v44 + v19 + 8) & v46, (v41 + v19 + 8) & v46, v23);
        goto LABEL_63;
      }
    }

    (*(v24 + 8))((v34 + v19 + 8) & v46, v23);
    goto LABEL_40;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for SearchCompletion(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = type metadata accessor for AttributedString();
  v10 = *(*(v9 - 8) + 80);
  v11 = *(v6 + 80);
  v12 = 8;
  if (((v10 + 16) & ~v10) + *(*(v9 - 8) + 64) > 8)
  {
    v12 = ((v10 + 16) & ~v10) + *(*(v9 - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v13 = v12 + (((v10 | 7) + *(v6 + 64) + ((v11 + 73) & ~v11)) & ~(v10 | 7)) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if (v7 > 0xFE)
      {
        v20 = *(v6 + 48);

        return v20((a1 + v11 + 73) & ~v11, v7, v5);
      }

      else
      {
        v19 = *(a1 + 72);
        if (v19 >= 2)
        {
          return (v19 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void storeEnumTagSinglePayload for SearchCompletion(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for AttributedString() - 8);
  v12 = *(v11 + 80);
  v13 = ((v12 + 16) & ~v12) + *(v11 + 64);
  v14 = *(v8 + 80);
  v15 = ((v12 | 7) + *(v8 + 64) + ((v14 + 73) & ~v14)) & ~(v12 | 7);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  v16 = v13 + v15 + 1;
  if (a3 <= v10)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v10 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v10 < a2)
  {
    v18 = ~v10 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_48:
              if (v17 == 2)
              {
                *(a1 + v16) = v19;
              }

              else
              {
                *(a1 + v16) = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v22;
        *(a1 + 2) = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v17)
    {
      *(a1 + v16) = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v16) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *(a1 + v16) = 0;
  }

  else if (v17)
  {
    *(a1 + v16) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 > 0xFE)
  {
    v23 = *(v24 + 56);

    v23((a1 + v14 + 73) & ~v14, a2, v9, v7);
  }

  else if (a2 > 0xFE)
  {
    *(a1 + 57) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = a2 - 255;
  }

  else
  {
    *(a1 + 72) = -a2;
  }
}

uint64_t initializeWithCopy for SearchSuggestionsVisibilityModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v3, v4);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return a1;
}

uint64_t assignWithCopy for SearchSuggestionsVisibilityModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v3, v4);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  return a1;
}

uint64_t assignWithTake for SearchSuggestionsVisibilityModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;
  outlined consume of Environment<Selector?>.Content(v4, v5);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for SearchCompletionButtonStyle(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = v10 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = *(a2 + 72);
    if (v7 == 255)
    {
      v11 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v11;
      *(a1 + 57) = *(a2 + 57);
      v12 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v12;
    }

    else if (v7)
    {
      v8 = a2[3];
      *(a1 + 24) = v8;
      (**(v8 - 8))(a1, a2);
      v9 = *(a2 + 7);
      *(v4 + 56) = v9;
      (**(v9 - 8))(v4 + 32, (a2 + 4));
      *(v4 + 72) = 1;
    }

    else
    {
      v13 = a2[1];
      *v4 = *a2;
      *(v4 + 8) = v13;
      *(v4 + 72) = 0;
    }

    v14 = *(a3 + 20);
    v15 = (v4 + v14);
    v16 = (a2 + v14);
    type metadata accessor for Environment<DismissSearchAccessoryAction>.Content();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for Binding<SearchFieldState>(0);
      v18 = v17;
      v19 = *(v17 - 8);
      if ((*(v19 + 48))(v16, 1, v17))
      {
        _s7SwiftUI11EnvironmentV7ContentOyAA7BindingVy10Foundation16AttributedStringVGSg_GMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>?, type metadata accessor for Binding<SearchFieldState>, MEMORY[0x1E69E6720]);
        memcpy(v15, v16, *(*(v20 - 8) + 64));
      }

      else
      {
        v38 = v16[1];
        *v15 = *v16;
        v15[1] = v38;
        v21 = *(v18 + 32);
        v39 = v19;
        v22 = v15 + v21;
        v23 = v16 + v21;
        *v22 = *(v16 + v21);
        v22[1] = *(v16 + v21 + 1);
        *(v22 + 1) = *(v16 + v21 + 2);
        v22[8] = *(v16 + v21 + 8);
        *(v22 + 1) = *(v16 + v21 + 4);
        v24 = type metadata accessor for SearchFieldState(0);
        v37 = v24[9];
        v25 = type metadata accessor for AttributedString();
        v36 = *(*(v25 - 8) + 16);

        v36(&v22[v37], &v23[v37], v25);
        v22[v24[10]] = v23[v24[10]];
        v26 = v24[11];
        v27 = &v22[v26];
        v28 = &v23[v26];
        v27[4] = v28[4];
        *v27 = *v28;
        (*(v39 + 56))(v15, 0, 1, v18);
      }
    }

    else
    {
      *v15 = *v16;
    }

    swift_storeEnumTagMultiPayload();
    v29 = *(a3 + 24);
    v30 = v4 + v29;
    v31 = a2 + v29;
    v32 = *v31;
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    outlined copy of Environment<AppIntentExecutor?>.Content(*v31, v33, v34);
    *v30 = v32;
    *(v30 + 8) = v33;
    *(v30 + 16) = v34;
  }

  return v4;
}

_OWORD *initializeWithTake for SearchCompletionButtonStyle(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;
  *(a1 + 57) = *(a2 + 57);
  v7 = a2[1];
  *a1 = *a2;
  a1[1] = v7;
  v8 = *(a3 + 20);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  type metadata accessor for Environment<DismissSearchAccessoryAction>.Content();
  v12 = v11;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Binding<SearchFieldState>(0);
    v14 = v13;
    v15 = *(v13 - 8);
    if ((*(v15 + 48))(v10, 1, v13))
    {
      _s7SwiftUI11EnvironmentV7ContentOyAA7BindingVy10Foundation16AttributedStringVGSg_GMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>?, type metadata accessor for Binding<SearchFieldState>, MEMORY[0x1E69E6720]);
      memcpy(v9, v10, *(*(v16 - 8) + 64));
    }

    else
    {
      v17 = v10[1];
      *v9 = *v10;
      v9[1] = v17;
      v18 = *(v14 + 32);
      v19 = v9 + v18;
      v20 = v10 + v18;
      *v19 = *(v10 + v18);
      v19[1] = *(v10 + v18 + 1);
      *(v19 + 1) = *(v10 + v18 + 2);
      v19[8] = *(v10 + v18 + 8);
      *(v19 + 1) = *(v10 + v18 + 4);
      v21 = type metadata accessor for SearchFieldState(0);
      v31 = v15;
      v22 = v21[9];
      v23 = type metadata accessor for AttributedString();
      (*(*(v23 - 8) + 32))(&v19[v22], &v20[v22], v23);
      v19[v21[10]] = v20[v21[10]];
      v24 = v21[11];
      v25 = &v19[v24];
      v26 = &v20[v24];
      v25[4] = v26[4];
      *v25 = *v26;
      (*(v31 + 56))(v9, 0, 1, v14);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v9, v10, *(*(v12 - 8) + 64));
  }

  v27 = *(a3 + 24);
  v28 = a1 + v27;
  v29 = a2 + v27;
  *v28 = *v29;
  v28[16] = v29[16];
  return a1;
}

uint64_t assignWithTake for SearchCompletionButtonStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 72) == 255)
  {
    goto LABEL_7;
  }

  if (*(a2 + 72) == 255 || a1 != a2)
  {
    outlined destroy of TextInputSuggestionCompletionKind(a1);
LABEL_7:
    v7 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v7;
    *(a1 + 57) = *(a2 + 57);
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
  }

  if (a1 != a2)
  {
    v9 = *(a3 + 20);
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    outlined destroy of Environment<DismissSearchAccessoryAction>.Content(a1 + v9, type metadata accessor for Environment<DismissSearchAccessoryAction>.Content);
    type metadata accessor for Environment<DismissSearchAccessoryAction>.Content();
    v13 = v12;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for Binding<SearchFieldState>(0);
      v15 = v14;
      v16 = *(v14 - 8);
      if ((*(v16 + 48))(v11, 1, v14))
      {
        _s7SwiftUI11EnvironmentV7ContentOyAA7BindingVy10Foundation16AttributedStringVGSg_GMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>?, type metadata accessor for Binding<SearchFieldState>, MEMORY[0x1E69E6720]);
        memcpy(v10, v11, *(*(v17 - 8) + 64));
      }

      else
      {
        v18 = v11[1];
        *v10 = *v11;
        v10[1] = v18;
        v19 = *(v15 + 32);
        v20 = v10 + v19;
        v21 = v11 + v19;
        *v20 = *(v11 + v19);
        v20[1] = *(v11 + v19 + 1);
        *(v20 + 1) = *(v11 + v19 + 2);
        v20[8] = *(v11 + v19 + 8);
        *(v20 + 1) = *(v11 + v19 + 4);
        v22 = type metadata accessor for SearchFieldState(0);
        v36 = v16;
        v23 = v22[9];
        v24 = type metadata accessor for AttributedString();
        (*(*(v24 - 8) + 32))(&v20[v23], &v21[v23], v24);
        v20[v22[10]] = v21[v22[10]];
        v25 = v22[11];
        v26 = &v20[v25];
        v27 = &v21[v25];
        v26[4] = v27[4];
        *v26 = *v27;
        (*(v36 + 56))(v10, 0, 1, v15);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v10, v11, *(*(v13 - 8) + 64));
    }
  }

  v28 = *(a3 + 24);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v31 = *(v30 + 16);
  v32 = *v29;
  v33 = *(v29 + 8);
  v34 = *(v29 + 16);
  *v29 = *v30;
  *(v29 + 16) = v31;
  outlined consume of Environment<TriggerSubmitAction?>.Content(v32, v33, v34, outlined consume of TriggerSubmitAction?);
  return a1;
}

uint64_t partial apply for closure #1 in SearchCompletionButtonStyle.makeBody(configuration:)()
{
  v1 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SearchCompletionButtonStyle() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in SearchCompletionButtonStyle.makeBody(configuration:)(v0 + v2, v5);
}

uint64_t partial apply for closure #1 in SearchCompletion.completionContent.getter()
{
  v1 = *(type metadata accessor for SearchCompletion() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return closure #1 in SearchCompletion.completionContent.getter(v2);
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute);
  }

  return result;
}

void type metadata accessor for (AnyToken?, Range<AttributedString.Index>)()
{
  if (!lazy cache variable for type metadata for (AnyToken?, Range<AttributedString.Index>))
  {
    _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for AnyToken?, &type metadata for AnyToken, MEMORY[0x1E69E6720]);
    type metadata accessor for Range<AttributedString.Index>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AnyToken?, Range<AttributedString.Index>));
    }
  }
}

uint64_t lazy protocol witness table accessor for type SearchCompletionButtonStyle and conformance SearchCompletionButtonStyle(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for KeyPath<AttributeScopes.SwiftUIAttributes, AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>()
{
  if (!lazy cache variable for type metadata for KeyPath<AttributeScopes.SwiftUIAttributes, AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>)
  {
    type metadata accessor for AttributeScopes.SwiftUIAttributes();
    v0 = type metadata accessor for KeyPath();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyPath<AttributeScopes.SwiftUIAttributes, AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchSuggestionsPlacementKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchSuggestionsPlacementKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchSuggestionsPlacementKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_5(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuggestionsPlacementKey>, &type metadata for EnvironmentValues.SearchSuggestionsPlacementKey, &protocol witness table for EnvironmentValues.SearchSuggestionsPlacementKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchSuggestionsPlacementKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<SearchSuggestionsVisibilityModifier>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<SearchSuggestionsVisibilityModifier>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<SearchSuggestionsVisibilityModifier>? and conformance <A> A?)
  {
    type metadata accessor for _ViewModifier_Content<SearchSuggestionsVisibilityModifier>?();
    lazy protocol witness table accessor for type _ViewModifier_Content<SearchSuggestionsVisibilityModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<SearchSuggestionsVisibilityModifier>? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<SearchSuggestionsVisibilityModifier>?()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<SearchSuggestionsVisibilityModifier>?)
  {
    type metadata accessor for AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SearchSuggestionsVisibilityModifier>, lazy protocol witness table accessor for type SearchSuggestionsVisibilityModifier and conformance SearchSuggestionsVisibilityModifier, &type metadata for SearchSuggestionsVisibilityModifier, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<SearchSuggestionsVisibilityModifier>?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<SearchSuggestionsVisibilityModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<SearchSuggestionsVisibilityModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<SearchSuggestionsVisibilityModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SearchSuggestionsVisibilityModifier>, lazy protocol witness table accessor for type SearchSuggestionsVisibilityModifier and conformance SearchSuggestionsVisibilityModifier, &type metadata for SearchSuggestionsVisibilityModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<SearchSuggestionsVisibilityModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<DefinesSearchCompletionModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<DefinesSearchCompletionModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<DefinesSearchCompletionModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>(255, &lazy cache variable for type metadata for _ViewModifier_Content<DefinesSearchCompletionModifier>, lazy protocol witness table accessor for type DefinesSearchCompletionModifier and conformance DefinesSearchCompletionModifier, &type metadata for DefinesSearchCompletionModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<DefinesSearchCompletionModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t EnvironmentValues.searchBoundProperties.getter@<X0>(uint64_t a1@<X8>)
{
  if (!*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage);
    PropertyList.subscript.getter();
    v3 = v8;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage);

  PropertyList.Tracker.value<A>(_:for:)();

  v3 = v8;
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  swift_getKeyPath();
  lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage(&lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage, type metadata accessor for SearchEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage__boundProperties;
  swift_beginAccess();
  outlined init with copy of Binding<SearchFieldState>?(v3 + v4, a1, type metadata accessor for SearchEnvironmentStorage.BoundProperties);

  v5 = 0;
LABEL_6:
  v6 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

uint64_t EnvironmentValues.searchFieldPlacement.getter(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (*(v4 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, a1, a2, a3, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(a4, a1, a2, a3);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, a1, a2, a3, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(a4, a1, a2, a3);
    PropertyList.subscript.getter();
  }

  return v10;
}

uint64_t EnvironmentValues.searchProperties.getter()
{
  if (!*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage);
    PropertyList.subscript.getter();
    v1 = v4;
    if (v4)
    {
      goto LABEL_3;
    }

    return 3;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage);

  PropertyList.Tracker.value<A>(_:for:)();

  v1 = v4;
  if (!v4)
  {
    return 3;
  }

LABEL_3:
  swift_getKeyPath();
  lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage(&lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage, type metadata accessor for SearchEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t EnvironmentValues.searchFocusContext.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>, &type metadata for SearchFocusContextKey, &protocol witness table for SearchFocusContextKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFocusContextKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>, &type metadata for SearchFocusContextKey, &protocol witness table for SearchFocusContextKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>, &type metadata for SearchFocusContextKey, &protocol witness table for SearchFocusContextKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFocusContextKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>, &type metadata for SearchFocusContextKey, &protocol witness table for SearchFocusContextKey);

    return PropertyList.subscript.getter();
  }
}

uint64_t SearchEnvironmentStorage.properties.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage(&lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage, type metadata accessor for SearchEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t EnvironmentValues.searchText.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  type metadata accessor for SearchBoundProperty<AttributedString>();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v18 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage);

    PropertyList.Tracker.value<A>(_:for:)();

    v9 = v20;
    if (!v20)
    {
      goto LABEL_7;
    }
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage);
    PropertyList.subscript.getter();
    v9 = v20;
    if (!v20)
    {
      goto LABEL_7;
    }
  }

  swift_getKeyPath();
  v20 = v9;
  lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage(&lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage, type metadata accessor for SearchEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage__boundProperties;
  swift_beginAccess();
  outlined init with copy of Binding<SearchFieldState>?(v9 + v10, v8, type metadata accessor for SearchEnvironmentStorage.BoundProperties);

  v11 = *(v6 + 20);
  if (!(*(v4 + 48))(&v8[v11], 1, v3))
  {
    v14 = v18;
    outlined init with copy of Binding<SearchFieldState>?(&v8[v11], v18, type metadata accessor for SearchBoundProperty<AttributedString>);
    outlined destroy of Binding<SearchFieldState>?(v8, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
    v13 = v19;
    outlined init with copy of Binding<AttributedString>(v14, v19);
    outlined destroy of Binding<SearchFieldState>?(v14, type metadata accessor for SearchBoundProperty<AttributedString>);
    v12 = 0;
    goto LABEL_9;
  }

  outlined destroy of Binding<SearchFieldState>?(v8, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
LABEL_7:
  v12 = 1;
  v13 = v19;
LABEL_9:
  type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  return (*(*(v15 - 8) + 56))(v13, v12, 1, v15);
}

Swift::Void __swiftcall DismissSearchAccessoryAction.callAsFunction()()
{
  v1 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  type metadata accessor for Binding<SearchFieldState>?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Binding<SearchFieldState>?(v0, v9, type metadata accessor for Binding<SearchFieldState>?);
  type metadata accessor for Binding<SearchFieldState>(0);
  v11 = v10;
  v12 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  v13 = type metadata accessor for Binding<SearchFieldState>?;
  if (v12 != 1)
  {
    MEMORY[0x18D00ACC0](v11);
    outlined init with copy of Binding<SearchFieldState>?(v6, v3, type metadata accessor for SearchFieldState);
    if (*v3 != 2)
    {
      *v3 = 0;
    }

    if (!specialized static SearchFieldState.== infix(_:_:)(v6, v3))
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    outlined destroy of Binding<SearchFieldState>?(v3, type metadata accessor for SearchFieldState);
    outlined destroy of Binding<SearchFieldState>?(v6, type metadata accessor for SearchFieldState);
    v13 = type metadata accessor for Binding<SearchFieldState>;
  }

  outlined destroy of Binding<SearchFieldState>?(v9, v13);
}

uint64_t EnvironmentValues.searchFieldState.getter@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  type metadata accessor for SearchBoundProperty<SearchFieldState>();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage);

    PropertyList.Tracker.value<A>(_:for:)();

    v10 = v17;
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage);
    PropertyList.subscript.getter();
    v10 = v17;
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  swift_getKeyPath();
  v17 = v10;
  lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage(&lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage, type metadata accessor for SearchEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage__boundProperties;
  swift_beginAccess();
  outlined init with copy of Binding<SearchFieldState>?(v10 + v11, v9, type metadata accessor for SearchEnvironmentStorage.BoundProperties);

  if (!(*(v4 + 48))(v9, 1, v3))
  {
    outlined init with copy of Binding<SearchFieldState>?(v9, v6, type metadata accessor for SearchBoundProperty<SearchFieldState>);
    outlined destroy of Binding<SearchFieldState>?(v9, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
    v13 = v16;
    outlined init with copy of Binding<SearchFieldState>?(v6, v16, type metadata accessor for Binding<SearchFieldState>);
    outlined destroy of Binding<SearchFieldState>?(v6, type metadata accessor for SearchBoundProperty<SearchFieldState>);
    v12 = 0;
    goto LABEL_9;
  }

  outlined destroy of Binding<SearchFieldState>?(v9, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
LABEL_7:
  v12 = 1;
  v13 = v16;
LABEL_9:
  type metadata accessor for Binding<SearchFieldState>(0);
  return (*(*(v14 - 8) + 56))(v13, v12, 1, v14);
}

uint64_t EnvironmentValues.searchSuggestionsPlacement.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuggestionsPlacementKey>, &type metadata for EnvironmentValues.SearchSuggestionsPlacementKey, &protocol witness table for EnvironmentValues.SearchSuggestionsPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchSuggestionsPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuggestionsPlacementKey>, &type metadata for EnvironmentValues.SearchSuggestionsPlacementKey, &protocol witness table for EnvironmentValues.SearchSuggestionsPlacementKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuggestionsPlacementKey>, &type metadata for EnvironmentValues.SearchSuggestionsPlacementKey, &protocol witness table for EnvironmentValues.SearchSuggestionsPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchSuggestionsPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuggestionsPlacementKey>, &type metadata for EnvironmentValues.SearchSuggestionsPlacementKey, &protocol witness table for EnvironmentValues.SearchSuggestionsPlacementKey);

    return PropertyList.subscript.getter();
  }
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.SearchSuggestionsPlacementKey@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static EnvironmentValues.SearchSuggestionsPlacementKey.defaultValue;
  return result;
}

Swift::Void __swiftcall DismissSearchAction.callAsFunction()()
{
  v1 = type metadata accessor for AttributedString.CharacterView();
  v36 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  type metadata accessor for Binding<SearchFieldState>?(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Binding<SearchFieldState>?(v0, v18, type metadata accessor for Binding<SearchFieldState>?);
  type metadata accessor for Binding<SearchFieldState>(0);
  v20 = v19;
  v21 = (*(*(v19 - 8) + 48))(v18, 1, v19);
  v22 = type metadata accessor for Binding<SearchFieldState>?;
  if (v21 != 1)
  {
    MEMORY[0x18D00ACC0](v20);
    v34 = v15;
    outlined init with copy of Binding<SearchFieldState>?(v15, v12, type metadata accessor for SearchFieldState);
    *v12 = 2;
    v32 = v9;
    AttributedString.init(stringLiteral:)();
    v23 = v3;
    v24 = v1;
    v33 = v10;
    v25 = *(v10 + 36);
    v26 = v35;
    (*(v5 + 16))(v35, &v12[v25], v4);
    (*(v5 + 24))(&v12[v25], v9, v4);
    AttributedString.characters.getter();
    AttributedString.CharacterView._count.getter();
    v31 = v4;
    v27 = *(v36 + 8);
    v27(v23, v24);
    AttributedString.characters.getter();
    AttributedString.CharacterView._count.getter();
    v27(v23, v24);
    v28 = *(v5 + 8);
    v29 = v31;
    v28(v26, v31);
    v28(v32, v29);
    if ((v12[8] & 1) == 0)
    {
      *(v12 + 1) = 0;
      v12[8] = 1;
    }

    v30 = v34;
    v12[*(v33 + 40)] = 0;
    if (!specialized static SearchFieldState.== infix(_:_:)(v30, v12))
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    outlined destroy of Binding<SearchFieldState>?(v30, type metadata accessor for SearchFieldState);
    outlined destroy of Binding<SearchFieldState>?(v12, type metadata accessor for SearchFieldState);
    v22 = type metadata accessor for Binding<SearchFieldState>;
  }

  outlined destroy of Binding<SearchFieldState>?(v18, v22);
}

uint64_t SearchEnvironmentStorage.boundProperties.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage(&lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage, type metadata accessor for SearchEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage__boundProperties;
  swift_beginAccess();
  return outlined init with copy of Binding<SearchFieldState>?(v5 + v3, a1, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
}

uint64_t EnvironmentValues.searchFieldToolbarItemPlacement.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey>, &type metadata for SearchFieldToolbarItemPlacementKey, &protocol witness table for SearchFieldToolbarItemPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey>, &type metadata for SearchFieldToolbarItemPlacementKey, &protocol witness table for SearchFieldToolbarItemPlacementKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey>, &type metadata for SearchFieldToolbarItemPlacementKey, &protocol witness table for SearchFieldToolbarItemPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey>, &type metadata for SearchFieldToolbarItemPlacementKey, &protocol witness table for SearchFieldToolbarItemPlacementKey);

    return PropertyList.subscript.getter();
  }
}

uint64_t EnvironmentValues.searchFieldToolbarItemPlacement.setter(uint64_t a1)
{
  outlined init with copy of ToolbarItemPlacement?(a1, v5, &lazy cache variable for type metadata for ToolbarItemPlacement?, &type metadata for ToolbarItemPlacement);
  outlined init with copy of ToolbarItemPlacement?(v5, &v4, &lazy cache variable for type metadata for ToolbarItemPlacement?, &type metadata for ToolbarItemPlacement);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey>, &type metadata for SearchFieldToolbarItemPlacementKey, &protocol witness table for SearchFieldToolbarItemPlacementKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey>, &type metadata for SearchFieldToolbarItemPlacementKey, &protocol witness table for SearchFieldToolbarItemPlacementKey);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of ToolbarItemPlacement?(a1, &lazy cache variable for type metadata for ToolbarItemPlacement?, &type metadata for ToolbarItemPlacement);
  return outlined destroy of ToolbarItemPlacement?(v5, &lazy cache variable for type metadata for ToolbarItemPlacement?, &type metadata for ToolbarItemPlacement);
}

uint64_t specialized implicit closure #1 in _GraphInputs.searchFieldPlacement.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey);

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance SearchFieldToolbarItemPlacementKey@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v1 = a1;
  }

  return outlined init with copy of ToolbarItemPlacement?(&static SearchFieldToolbarItemPlacementKey.defaultValue, v1, &lazy cache variable for type metadata for ToolbarItemPlacement?, &type metadata for ToolbarItemPlacement);
}

Swift::Void __swiftcall StartSearchAction.callAsFunction()()
{
  v1 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  type metadata accessor for Binding<SearchFieldState>?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Binding<SearchFieldState>?(v0, v9, type metadata accessor for Binding<SearchFieldState>?);
  type metadata accessor for Binding<SearchFieldState>(0);
  v11 = v10;
  v12 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  v13 = type metadata accessor for Binding<SearchFieldState>?;
  if (v12 != 1)
  {
    MEMORY[0x18D00ACC0](v11);
    outlined init with copy of Binding<SearchFieldState>?(v6, v3, type metadata accessor for SearchFieldState);
    v14 = *v3;
    if (v14 == 2 || (v14 & 1) == 0)
    {
      v15 = v3[2];
      if (v15 == 2)
      {
        v15 = v3[3];
        if (v15 == 2)
        {
          LOBYTE(v15) = 0;
        }
      }

      *v3 = v15 & 1;
      v3[*(v1 + 40)] = 1;
    }

    if (!specialized static SearchFieldState.== infix(_:_:)(v6, v3))
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    outlined destroy of Binding<SearchFieldState>?(v3, type metadata accessor for SearchFieldState);
    outlined destroy of Binding<SearchFieldState>?(v6, type metadata accessor for SearchFieldState);
    v13 = type metadata accessor for Binding<SearchFieldState>;
  }

  outlined destroy of Binding<SearchFieldState>?(v9, v13);
}

uint64_t View.searchVibrancyEnabled(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t key path getter for EnvironmentValues.isSearching : EnvironmentValues@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, unint64_t *a5@<X6>, _BYTE *a6@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, a2, a3, a4, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(a5, a2, a3, a4);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, a2, a3, a4, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(a5, a2, a3, a4);
    result = PropertyList.subscript.getter();
  }

  *a6 = v12;
  return result;
}

uint64_t key path setter for EnvironmentValues.isSearching : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, a5, a6, a7, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(a8, a5, a6, a7);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t specialized implicit closure #1 in _GraphInputs.searchFocusContext.getter(uint64_t a1)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>, &type metadata for SearchFocusContextKey, &protocol witness table for SearchFocusContextKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFocusContextKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>, &type metadata for SearchFocusContextKey, &protocol witness table for SearchFocusContextKey);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>, &type metadata for SearchFocusContextKey, &protocol witness table for SearchFocusContextKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFocusContextKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>, &type metadata for SearchFocusContextKey, &protocol witness table for SearchFocusContextKey);

    PropertyList.subscript.getter();
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SearchEnvironmentStorage.Properties(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return 1;
    }
  }

  else
  {
    v5 = (v3 ^ v2) & 1;
    if (v3 != 2 && v5 == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t key path getter for SearchEnvironmentStorage.properties : SearchEnvironmentStorage@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage(&lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage, type metadata accessor for SearchEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t SearchEnvironmentStorage.properties.setter(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2 != 2)
  {
    if (result == 2 || ((v2 ^ result) & 1) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 16) = result;
    return result;
  }

  if (result == 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage(&lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage, type metadata accessor for SearchEnvironmentStorage);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t key path getter for SearchEnvironmentStorage.boundProperties : SearchEnvironmentStorage@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage(&lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage, type metadata accessor for SearchEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage__boundProperties;
  swift_beginAccess();
  return outlined init with copy of Binding<SearchFieldState>?(v3 + v4, a2, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
}

uint64_t key path setter for SearchEnvironmentStorage.boundProperties : SearchEnvironmentStorage(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Binding<SearchFieldState>?(a1, v6, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage(&lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage, type metadata accessor for SearchEnvironmentStorage);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of Binding<SearchFieldState>?(v6, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
}

uint64_t closure #1 in SearchEnvironmentStorage.boundProperties.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage__boundProperties;
  swift_beginAccess();
  outlined assign with copy of SearchEnvironmentStorage.BoundProperties(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t SearchEnvironmentStorage.__deallocating_deinit()
{
  outlined destroy of Binding<SearchFieldState>?(v0 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage__boundProperties, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
  v1 = OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t SearchEnvironmentTransformModifier.UpdateEnvironment.init(transform:environment:version:baseVersion:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a4;
  v8 = *(a4 + 4);
  *a5 = a1;
  *(a5 + 4) = a2;
  type metadata accessor for SearchEnvironmentStorage(0);
  v9 = swift_allocObject();
  *(v9 + 16) = 2;
  v10 = v9 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage__boundProperties;
  type metadata accessor for SearchBoundProperty<SearchFieldState>();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  v13 = v12[5];
  type metadata accessor for SearchBoundProperty<AttributedString>();
  (*(*(v14 - 8) + 56))(v10 + v13, 1, 1, v14);
  v15 = v12[6];
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  (*(*(v16 - 8) + 56))(v10 + v15, 1, 1, v16);
  v17 = (v10 + v12[7]);
  *(v17 + 28) = 0u;
  *v17 = 0u;
  v17[1] = 0u;
  *(v9 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version) = 0;
  result = ObservationRegistrar.init()();
  *(a5 + 8) = v9;
  *(a5 + 16) = a3;
  *(a5 + 20) = v7;
  *(a5 + 24) = v8;
  return result;
}

Swift::Void __swiftcall SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()()
{
  v2 = v1;
  v3 = v0;
  v67 = *MEMORY[0x1E69E9840];
  type metadata accessor for SearchEnvironmentStorage.AllProperties?(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SearchEnvironmentStorage.AllProperties(0);
  v60 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = v8;
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v48 - v10;
  Value = AGGraphGetValue();
  v55 = v12;
  v14 = Value[1];
  v65 = *Value;
  v13 = v65;
  v66 = v14;
  v59 = v3;
  v15 = *(v3 + 16);

  v49 = v15;
  AGGraphGetValue();
  v53 = v16;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
  IsSearching = lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage);
  v57 = v13;
  v54 = v14;
  if (v14)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v17 = v61;
  v18 = v1[1];
  v19 = *(v1 + 24);
  v61 = *v1;
  v62 = v18;
  v63 = v1[2];
  v64 = v19;
  MEMORY[0x1EEE9AC00](v18);
  *(&v48 - 2) = v17;

  v20 = v59;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D000B40](v20, v5, WitnessTable);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v22 = *(v60 + 48);
  v23 = v52;
  if (v22(v7, 1, v52) == 1)
  {
    v24 = v58;
    *v58 = 2;
    v25 = &v24[*(v23 + 20)];
    type metadata accessor for SearchBoundProperty<SearchFieldState>();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
    v27 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
    v28 = v27[5];
    type metadata accessor for SearchBoundProperty<AttributedString>();
    (*(*(v29 - 8) + 56))(&v25[v28], 1, 1, v29);
    v30 = v27[6];
    type metadata accessor for SearchBoundProperty<TextSelection?>();
    (*(*(v31 - 8) + 56))(&v25[v30], 1, 1, v31);
    v32 = &v25[v27[7]];
    *(v32 + 28) = 0u;
    *v32 = 0u;
    v32[1] = 0u;
    v33 = v22(v7, 1, v23);
    if (v33 != 1)
    {
      v33 = outlined destroy of Binding<SearchFieldState>?(v7, type metadata accessor for SearchEnvironmentStorage.AllProperties?);
    }
  }

  else
  {
    v24 = v58;
    v33 = outlined init with take of SearchEnvironmentStorage.AllProperties(v7, v58, type metadata accessor for SearchEnvironmentStorage.AllProperties);
  }

  v34 = v54;
  if (v17)
  {
    if ((v2[3] & 1) == 0)
    {
      v35 = *(v2 + 5);
      v36 = *(v17 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);
      v39 = v36 == -1 || v35 == -1 || v36 != v35;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ((v2[3] & 1) == 0)
  {
LABEL_21:
    v39 = 1;
    goto LABEL_22;
  }

  v39 = 0;
LABEL_22:
  if ((v53 & 1) != 0 || v39)
  {
    MEMORY[0x1EEE9AC00](v33);
    v41 = *(v59 + 24);
    *(&v48 - 4) = v49;
    *(&v48 - 3) = v41;
    *(&v48 - 2) = v2;
    *(&v48 - 1) = v24;
    Attribute.syncMainIfReferences<A>(do:)();
    v42 = *(v2 + 4) + 1;
    *(v2 + 4) = v42;
    LOBYTE(v61) = 17;
    v40 = v2[1];
    v43 = v51;
    outlined init with copy of Binding<SearchFieldState>?(v24, v51, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    v44 = (*(v60 + 80) + 24) & ~*(v60 + 80);
    v45 = (v50 + v44 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v46 = swift_allocObject();
    *(v46 + 16) = v40;
    outlined init with take of SearchEnvironmentStorage.AllProperties(v43, v46 + v44, type metadata accessor for SearchEnvironmentStorage.AllProperties);
    *(v46 + v45) = v42;

    static Update.enqueueAction(reason:_:)();
  }

  else
  {
    v40 = v2[1];
  }

  if ((v55 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v61 = v40;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    swift_retain_n();

    PropertyList.subscript.setter();
    if (v34)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    v61 = v65;
    v62 = v66;
    AGGraphSetOutputValue();
  }

  if (v17)
  {
    v47 = *(v17 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version);
  }

  else
  {
    v47 = 0;
  }

  *(v2 + 5) = v47;
  *(v2 + 24) = v17 == 0;

  outlined destroy of Binding<SearchFieldState>?(v24, type metadata accessor for SearchEnvironmentStorage.AllProperties);
}

uint64_t closure #1 in SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    swift_getKeyPath();
    lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage(&lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage, type metadata accessor for SearchEnvironmentStorage);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(a1 + 16);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage__boundProperties;
    swift_beginAccess();
    v6 = type metadata accessor for SearchEnvironmentStorage.AllProperties(0);
    outlined init with copy of Binding<SearchFieldState>?(a1 + v5, &a2[*(v6 + 20)], type metadata accessor for SearchEnvironmentStorage.BoundProperties);
    *a2 = v4;
    return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
  }

  else
  {
    v8 = type metadata accessor for SearchEnvironmentStorage.AllProperties(0);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t closure #2 in SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()()
{
  updated = type metadata accessor for SearchEnvironmentTransformModifier.UpdateEnvironment();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D000B40](updated, MEMORY[0x1E69E7CA8] + 8, WitnessTable);
  StatefulRule.withObservation<A>(observationCenter:do:)();
}

uint64_t closure #3 in SearchEnvironmentTransformModifier.UpdateEnvironment.updateValue()(uint64_t a1, uint64_t a2, int a3)
{
  v19 = a3;
  v5 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for SearchEnvironmentStorage.AllProperties(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Binding<SearchFieldState>?(a2, v10, type metadata accessor for SearchEnvironmentStorage.AllProperties);
  v11 = *v10;
  v12 = *(a1 + 16);
  if (v12 != 2)
  {
    v13 = (v12 ^ v11) & 1;
    if (v11 != 2 && v13 == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v18[-16] = a1;
    v18[-8] = v11;
    v20 = a1;
    lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage(&lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage, type metadata accessor for SearchEnvironmentStorage);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_9;
  }

  if (v11 != 2)
  {
    goto LABEL_8;
  }

LABEL_3:
  *(a1 + 16) = v11;
LABEL_9:
  outlined init with copy of Binding<SearchFieldState>?(&v10[*(v8 + 20)], v7, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
  v16 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v16);
  *&v18[-16] = a1;
  *&v18[-8] = v7;
  v20 = a1;
  lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage(&lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage, type metadata accessor for SearchEnvironmentStorage);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of Binding<SearchFieldState>?(v10, type metadata accessor for SearchEnvironmentStorage.AllProperties);
  result = outlined destroy of Binding<SearchFieldState>?(v7, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
  *(a1 + OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage_version) = v19;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t SearchBoundProperty.Metadata.__deallocating_deinit()
{
  v1 = *(*v0 + 96);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t specialized closure #1 in SearchBoundProperty.matchesPlatform.getter(uint64_t a1)
{
  v2 = type metadata accessor for TextSelection(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (TextSelection?, TextSelection?)();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0]();
  v16 = *(v7 + 56);
  outlined init with copy of Binding<SearchFieldState>?(v15, v9, type metadata accessor for TextSelection?);
  outlined init with copy of Binding<SearchFieldState>?(a1, &v9[v16], type metadata accessor for TextSelection?);
  v17 = *(v3 + 48);
  if (v17(v9, 1, v2) == 1)
  {
    outlined destroy of Binding<SearchFieldState>?(v15, type metadata accessor for TextSelection?);
    v18 = v17(&v9[v16], 1, v2);
    if (v18 == 1)
    {
      v19 = type metadata accessor for TextSelection?;
    }

    else
    {
      v19 = type metadata accessor for (TextSelection?, TextSelection?);
    }

    if (v18 == 1)
    {
      v20 = -1;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    outlined init with copy of Binding<SearchFieldState>?(v9, v12, type metadata accessor for TextSelection?);
    if (v17(&v9[v16], 1, v2) == 1)
    {
      outlined destroy of Binding<SearchFieldState>?(v15, type metadata accessor for TextSelection?);
      outlined destroy of Binding<SearchFieldState>?(v12, type metadata accessor for TextSelection);
      v20 = 0;
      v21 = type metadata accessor for (TextSelection?, TextSelection?);
    }

    else
    {
      outlined init with take of SearchEnvironmentStorage.AllProperties(&v9[v16], v5, type metadata accessor for TextSelection);
      v22 = specialized static TextSelection.Indices.== infix(_:_:)(v12, v5);
      outlined destroy of Binding<SearchFieldState>?(v15, type metadata accessor for TextSelection?);
      if (v22)
      {
        v23 = *(v2 + 20);
        v24 = v12[v23];
        v25 = v5[v23];
        outlined destroy of Binding<SearchFieldState>?(v5, type metadata accessor for TextSelection);
        v20 = v24 == v25;
      }

      else
      {
        outlined destroy of Binding<SearchFieldState>?(v5, type metadata accessor for TextSelection);
        v20 = 0;
      }

      outlined destroy of Binding<SearchFieldState>?(v12, type metadata accessor for TextSelection);
      v21 = type metadata accessor for TextSelection?;
    }

    v19 = v21;
  }

  outlined destroy of Binding<SearchFieldState>?(v9, v19);
  return v20 & 1;
}

uint64_t SearchBoundProperty.init(internal:metadata:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for Binding();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for SearchBoundProperty();
  *(a4 + *(result + 36)) = a2;
  *(a4 + *(result + 40)) = v7;
  return result;
}

uint64_t SearchBoundProperty.MakeProperty.storage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Binding();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t SearchBoundProperty.MakeProperty.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Binding();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8[-v5];
  SearchBoundProperty.MakeProperty.storage.getter(&v8[-v5]);
  v9 = *(a1 + *(*a1 + 104));
  SearchBoundProperty.init(internal:metadata:version:)(v6, a1, &v9, a2);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance SearchBoundProperty<A>.MakeProperty@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SearchBoundProperty();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

Swift::Void __swiftcall SearchBoundPropertyUpdater.updateValue()()
{
  v1 = v0;
  v35 = *MEMORY[0x1E69E9840];
  type metadata accessor for TextSelection??(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchBoundProperty<TextSelection?>?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchEnvironmentStorage.BoundProperties?(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  OutputValue = AGGraphGetOutputValue();
  v34 = *v0;
  v33 = v0;
  v15 = lazy protocol witness table accessor for type SearchBoundPropertyUpdater and conformance SearchBoundPropertyUpdater();
  MEMORY[0x18D000B40](&type metadata for SearchBoundPropertyUpdater, v8, v15);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  if (!OutputValue)
  {
    goto LABEL_13;
  }

  outlined init with copy of Binding<SearchFieldState>?(v13, v10, type metadata accessor for SearchEnvironmentStorage.BoundProperties?);
  v16 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  if ((*(*(v16 - 8) + 48))(v10, 1, v16) != 1)
  {
    outlined init with copy of Binding<SearchFieldState>?(&v10[*(v16 + 24)], v6, type metadata accessor for SearchBoundProperty<TextSelection?>?);
    outlined destroy of Binding<SearchFieldState>?(v10, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
    type metadata accessor for SearchBoundProperty<TextSelection?>();
    v20 = v19;
    if ((*(*(v19 - 8) + 48))(v6, 1, v19) == 1)
    {
      outlined destroy of Binding<SearchFieldState>?(v13, type metadata accessor for SearchEnvironmentStorage.BoundProperties?);
      v18 = type metadata accessor for SearchBoundProperty<TextSelection?>?;
      v17 = v6;
      goto LABEL_15;
    }

    v21 = *&v6[*(v20 + 40)];
    v22 = *&v6[*(v20 + 36)];
    if (v21 == -1 || ((v23 = *(v22 + *(*v22 + 104)), v23 != -1) ? (v24 = v21 == v23) : (v24 = 0), !v24))
    {
      outlined destroy of Binding<SearchFieldState>?(v6, type metadata accessor for SearchBoundProperty<TextSelection?>);
      goto LABEL_14;
    }

    v25 = *(*v22 + 96);
    swift_beginAccess();
    v26 = v31;
    v27 = outlined init with copy of Binding<SearchFieldState>?(v22 + v25, v31, type metadata accessor for TextSelection??);
    MEMORY[0x1EEE9AC00](v27);
    *(&v30 - 2) = v6;
    v28 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI13TextSelectionVSg_s5NeverOSbTg5(partial apply for specialized closure #1 in SearchBoundProperty.matchesPlatform.getter);
    outlined destroy of Binding<SearchFieldState>?(v26, type metadata accessor for TextSelection??);
    outlined destroy of Binding<SearchFieldState>?(v6, type metadata accessor for SearchBoundProperty<TextSelection?>);
    if (v28)
    {
LABEL_14:
      v18 = type metadata accessor for SearchEnvironmentStorage.BoundProperties?;
      v17 = v13;
      goto LABEL_15;
    }

LABEL_13:
    v29 = *(v1 + 1) + 1;
    *(v1 + 1) = v29;
    v32 = v29;
    AGGraphSetOutputValue();
    goto LABEL_14;
  }

  outlined destroy of Binding<SearchFieldState>?(v13, type metadata accessor for SearchEnvironmentStorage.BoundProperties?);
  v17 = v10;
  v18 = type metadata accessor for SearchEnvironmentStorage.BoundProperties?;
LABEL_15:
  outlined destroy of Binding<SearchFieldState>?(v17, v18);
}

uint64_t closure #1 in SearchBoundPropertyUpdater.updateValue()@<X0>(uint64_t a1@<X8>)
{
  if (*(AGGraphGetValue() + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage);

    PropertyList.subscript.getter();
  }

  if (v6)
  {
    swift_getKeyPath();
    lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage(&lazy protocol witness table cache variable for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage, type metadata accessor for SearchEnvironmentStorage);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = OBJC_IVAR____TtC7SwiftUI24SearchEnvironmentStorage__boundProperties;
    swift_beginAccess();
    outlined init with copy of Binding<SearchFieldState>?(v6 + v2, a1, type metadata accessor for SearchEnvironmentStorage.BoundProperties);

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  return (*(*(v4 - 8) + 56))(a1, v3, 1, v4);
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for DismissSearchAction(void *a1, void *a2)
{
  type metadata accessor for Binding<SearchFieldState>?(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(v4 - 8);
  type metadata accessor for Binding<SearchFieldState>(0);
  v8 = v7;
  v9 = *(v7 - 8);
  if (!(*(v9 + 48))(a2, 1, v7))
  {
    v23 = a2[1];
    *a1 = *a2;
    a1[1] = v23;
    v13 = *(v8 + 32);
    v14 = a1 + v13;
    v15 = a2 + v13;
    *v14 = *(a2 + v13);
    v14[1] = *(a2 + v13 + 1);
    *(v14 + 1) = *(a2 + v13 + 2);
    v14[8] = *(a2 + v13 + 8);
    *(v14 + 1) = *(a2 + v13 + 4);
    v16 = type metadata accessor for SearchFieldState(0);
    v17 = v16[9];
    v18 = type metadata accessor for AttributedString();
    v19 = *(*(v18 - 8) + 16);

    v19(&v14[v17], &v15[v17], v18);
    v14[v16[10]] = v15[v16[10]];
    v20 = v16[11];
    v21 = &v14[v20];
    v22 = &v15[v20];
    v21[4] = v22[4];
    *v21 = *v22;
    (*(v9 + 56))(a1, 0, 1, v8);
    return a1;
  }

  v10 = *(v6 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t destroy for DismissSearchAction(uint64_t a1)
{
  type metadata accessor for Binding<SearchFieldState>(0);
  v3 = v2;
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {

    v5 = a1 + *(v3 + 32);
    v6 = *(type metadata accessor for SearchFieldState(0) + 36);
    v7 = type metadata accessor for AttributedString();
    v8 = *(*(v7 - 8) + 8);

    return v8(v5 + v6, v7);
  }

  return result;
}

void *initializeWithCopy for DismissSearchAction(void *a1, void *a2)
{
  type metadata accessor for Binding<SearchFieldState>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  if ((*(v6 + 48))(a2, 1, v4))
  {
    type metadata accessor for Binding<SearchFieldState>?(0);
    v8 = *(*(v7 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v20 = a2[1];
    *a1 = *a2;
    a1[1] = v20;
    v10 = *(v5 + 32);
    v11 = a1 + v10;
    v12 = a2 + v10;
    *v11 = *(a2 + v10);
    v11[1] = *(a2 + v10 + 1);
    *(v11 + 1) = *(a2 + v10 + 2);
    v11[8] = *(a2 + v10 + 8);
    *(v11 + 1) = *(a2 + v10 + 4);
    v13 = type metadata accessor for SearchFieldState(0);
    v14 = v13[9];
    v15 = type metadata accessor for AttributedString();
    v16 = *(*(v15 - 8) + 16);

    v16(&v11[v14], &v12[v14], v15);
    v11[v13[10]] = v12[v13[10]];
    v17 = v13[11];
    v18 = &v11[v17];
    v19 = &v12[v17];
    v18[4] = v19[4];
    *v18 = *v19;
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *initializeWithTake for DismissSearchAction(void *a1, void *a2)
{
  type metadata accessor for Binding<SearchFieldState>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  if ((*(v6 + 48))(a2, 1, v4))
  {
    type metadata accessor for Binding<SearchFieldState>?(0);
    v8 = *(*(v7 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = *(v5 + 32);
    v12 = a1 + v11;
    v13 = a2 + v11;
    *v12 = *(a2 + v11);
    v12[1] = *(a2 + v11 + 1);
    *(v12 + 1) = *(a2 + v11 + 2);
    v12[8] = *(a2 + v11 + 8);
    *(v12 + 1) = *(a2 + v11 + 4);
    v14 = type metadata accessor for SearchFieldState(0);
    v15 = v14[9];
    v16 = type metadata accessor for AttributedString();
    (*(*(v16 - 8) + 32))(&v12[v15], &v13[v15], v16);
    v12[v14[10]] = v13[v14[10]];
    v17 = v14[11];
    v18 = &v12[v17];
    v19 = &v13[v17];
    v18[4] = v19[4];
    *v18 = *v19;
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithCopy for DismissSearchAction(void *a1, void *a2)
{
  type metadata accessor for Binding<SearchFieldState>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v4);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      v10 = *(v5 + 32);
      v11 = a1 + v10;
      v12 = a2 + v10;
      *v11 = *(a2 + v10);
      v11[1] = *(a2 + v10 + 1);
      v11[2] = *(a2 + v10 + 2);
      v11[3] = *(a2 + v10 + 3);
      LODWORD(v10) = *(a2 + v10 + 4);
      v11[8] = v12[8];
      *(v11 + 1) = v10;
      v13 = type metadata accessor for SearchFieldState(0);
      v14 = v13[9];
      v15 = type metadata accessor for AttributedString();
      v16 = *(*(v15 - 8) + 16);

      v16(&v11[v14], &v12[v14], v15);
      v11[v13[10]] = v12[v13[10]];
      v17 = v13[11];
      v18 = &v11[v17];
      v19 = &v12[v17];
      v20 = v19[4];
      *v18 = *v19;
      v18[4] = v20;
      (*(v6 + 56))(a1, 0, 1, v5);
      return a1;
    }
  }

  else
  {
    if (!v9)
    {
      *a1 = *a2;

      a1[1] = a2[1];

      v24 = *(v5 + 32);
      v25 = a1 + v24;
      v26 = a2 + v24;
      *v25 = *v26;
      v25[1] = v26[1];
      v25[2] = v26[2];
      v25[3] = v26[3];
      LODWORD(v24) = *(v26 + 1);
      v25[8] = v26[8];
      *(v25 + 1) = v24;
      v27 = type metadata accessor for SearchFieldState(0);
      v28 = v27[9];
      v29 = type metadata accessor for AttributedString();
      (*(*(v29 - 8) + 24))(&v25[v28], &v26[v28], v29);
      v25[v27[10]] = v26[v27[10]];
      v30 = v27[11];
      v31 = &v25[v30];
      v32 = &v26[v30];
      *v31 = *v32;
      v31[4] = v32[4];
      return a1;
    }

    outlined destroy of Binding<SearchFieldState>?(a1, type metadata accessor for Binding<SearchFieldState>);
  }

  type metadata accessor for Binding<SearchFieldState>?(0);
  v22 = *(*(v21 - 8) + 64);

  return memcpy(a1, a2, v22);
}

void *assignWithTake for DismissSearchAction(void *a1, void *a2)
{
  type metadata accessor for Binding<SearchFieldState>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v4);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      v10 = a2[1];
      *a1 = *a2;
      a1[1] = v10;
      v11 = *(v5 + 32);
      v12 = a1 + v11;
      v13 = a2 + v11;
      *v12 = *(a2 + v11);
      v12[1] = *(a2 + v11 + 1);
      *(v12 + 1) = *(a2 + v11 + 2);
      v12[8] = *(a2 + v11 + 8);
      *(v12 + 1) = *(a2 + v11 + 4);
      v14 = type metadata accessor for SearchFieldState(0);
      v15 = v14[9];
      v16 = type metadata accessor for AttributedString();
      (*(*(v16 - 8) + 32))(&v12[v15], &v13[v15], v16);
      v12[v14[10]] = v13[v14[10]];
      v17 = v14[11];
      v18 = &v12[v17];
      v19 = &v13[v17];
      v18[4] = v19[4];
      *v18 = *v19;
      (*(v6 + 56))(a1, 0, 1, v5);
      return a1;
    }
  }

  else
  {
    if (!v9)
    {
      *a1 = *a2;

      a1[1] = a2[1];

      v23 = *(v5 + 32);
      v24 = a1 + v23;
      v25 = a2 + v23;
      *v24 = *v25;
      v24[1] = v25[1];
      *(v24 + 1) = *(v25 + 1);
      *(v24 + 1) = *(v25 + 1);
      v24[8] = v25[8];
      v26 = type metadata accessor for SearchFieldState(0);
      v27 = v26[9];
      v28 = type metadata accessor for AttributedString();
      (*(*(v28 - 8) + 40))(&v24[v27], &v25[v27], v28);
      v24[v26[10]] = v25[v26[10]];
      v29 = v26[11];
      v30 = &v24[v29];
      v31 = &v25[v29];
      *v30 = *v31;
      v30[4] = v31[4];
      return a1;
    }

    outlined destroy of Binding<SearchFieldState>?(a1, type metadata accessor for Binding<SearchFieldState>);
  }

  type metadata accessor for Binding<SearchFieldState>?(0);
  v21 = *(*(v20 - 8) + 64);

  return memcpy(a1, a2, v21);
}

uint64_t type metadata completion function for SearchBoundProperty.Metadata()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for SearchEnvironmentStorage.BoundProperties(void *a1, void *a2, int *a3)
{
  v3 = a2;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
LABEL_24:

    return a1;
  }

  v6 = a3;
  type metadata accessor for SearchBoundProperty<SearchFieldState>();
  v8 = v7;
  v9 = *(v7 - 8);
  v71 = v6;
  if ((*(v9 + 48))(v3, 1, v7))
  {
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<SearchFieldState>?, type metadata accessor for SearchBoundProperty<SearchFieldState>, MEMORY[0x1E69E6720]);
    memcpy(a1, v3, *(*(v10 - 8) + 64));
  }

  else
  {
    v69 = v3[1];
    *a1 = *v3;
    a1[1] = v69;
    type metadata accessor for Binding<SearchFieldState>(0);
    v13 = *(v12 + 32);
    v14 = a1 + v13;
    v15 = v3 + v13;
    *v14 = *(v3 + v13);
    v14[1] = *(v3 + v13 + 1);
    *(v14 + 1) = *(v3 + v13 + 2);
    v14[8] = *(v3 + v13 + 8);
    *(v14 + 1) = *(v3 + v13 + 4);
    v16 = type metadata accessor for SearchFieldState(0);
    v17 = v16[9];
    v18 = type metadata accessor for AttributedString();
    __dsta = *(*(v18 - 8) + 16);

    __dsta(&v14[v17], &v15[v17], v18);
    v14[v16[10]] = v15[v16[10]];
    v19 = v16[11];
    v20 = &v14[v19];
    v21 = &v15[v19];
    v20[4] = v21[4];
    *v20 = *v21;
    *(a1 + *(v8 + 36)) = *(v3 + *(v8 + 36));
    *(a1 + *(v8 + 40)) = *(v3 + *(v8 + 40));
    v22 = *(v9 + 56);

    v22(a1, 0, 1, v8);
    v6 = v71;
  }

  v23 = v6[5];
  v24 = (a1 + v23);
  v25 = (v3 + v23);
  type metadata accessor for SearchBoundProperty<AttributedString>();
  v27 = v26;
  v28 = *(v26 - 8);
  if ((*(v28 + 48))(v25, 1, v26))
  {
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<AttributedString>?, type metadata accessor for SearchBoundProperty<AttributedString>, MEMORY[0x1E69E6720]);
    memcpy(v24, v25, *(*(v29 - 8) + 64));
  }

  else
  {
    v30 = v25[1];
    *v24 = *v25;
    v24[1] = v30;
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v32 = *(v31 + 32);
    v33 = type metadata accessor for AttributedString();
    v70 = v3;
    v34 = *(*(v33 - 8) + 16);

    v35 = v24 + v32;
    v36 = v25 + v32;
    v6 = v71;
    v34(v35, v36, v33);
    *(v24 + *(v27 + 36)) = *(v25 + *(v27 + 36));
    *(v24 + *(v27 + 40)) = *(v25 + *(v27 + 40));
    v37 = *(v28 + 56);

    v37(v24, 0, 1, v27);
    v3 = v70;
  }

  v38 = v6[6];
  v39 = (a1 + v38);
  v40 = (v3 + v38);
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  v42 = v41;
  v43 = *(v41 - 8);
  if ((*(v43 + 48))(v40, 1, v41))
  {
    type metadata accessor for SearchBoundProperty<TextSelection?>?();
    memcpy(v39, v40, *(*(v44 - 8) + 64));
  }

  else
  {
    v68 = v43;
    v45 = v40[1];
    *v39 = *v40;
    v39[1] = v45;
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
    v47 = *(v46 + 32);
    v65 = v40 + v47;
    __dst = v39 + v47;
    v48 = type metadata accessor for TextSelection(0);
    v49 = *(v48 - 8);
    v50 = *(v49 + 48);

    if (v50(v65, 1, v48))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v65, *(*(v51 - 8) + 64));
      v6 = v71;
      v52 = v68;
    }

    else
    {
      v64 = v48;
      v53 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        v55 = v65;
        (*(*(v54 - 8) + 16))(__dst, v65, v54);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v55 = v65;
        memcpy(__dst, v65, *(*(v53 - 8) + 64));
      }

      v6 = v71;
      v52 = v68;
      __dst[*(v64 + 20)] = v55[*(v64 + 20)];
      (*(v49 + 56))(__dst, 0, 1);
    }

    *(v39 + *(v42 + 36)) = *(v40 + *(v42 + 36));
    *(v39 + *(v42 + 40)) = *(v40 + *(v42 + 40));
    v56 = *(v52 + 56);

    v56(v39, 0, 1, v42);
  }

  v57 = v6[7];
  v58 = a1 + v57;
  v59 = v3 + v57;
  v60 = *(v3 + v57 + 8);
  if (v60)
  {
    *v58 = *v59;
    *(v58 + 1) = v60;
    v61 = v59[24];

    if (v61)
    {
      *(v58 + 2) = *(v59 + 2);
      v58[24] = v59[24];
    }

    else
    {
      swift_unknownObjectWeakCopyInit();
      v58[24] = 0;
    }

    *(v58 + 4) = *(v59 + 4);
    *(v58 + 10) = *(v59 + 10);
    goto LABEL_24;
  }

  v62 = *(v59 + 1);
  *v58 = *v59;
  *(v58 + 1) = v62;
  *(v58 + 28) = *(v59 + 28);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t destroy for SearchEnvironmentStorage.BoundProperties(uint64_t a1, int *a2)
{
  type metadata accessor for SearchBoundProperty<SearchFieldState>();
  if (!(*(*(v4 - 8) + 48))(a1, 1, v4))
  {

    type metadata accessor for Binding<SearchFieldState>(0);
    v6 = a1 + *(v5 + 32);
    v7 = *(type metadata accessor for SearchFieldState(0) + 36);
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  v9 = a1 + a2[5];
  type metadata accessor for SearchBoundProperty<AttributedString>();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v12 = *(v11 + 32);
    v13 = type metadata accessor for AttributedString();
    (*(*(v13 - 8) + 8))(v9 + v12, v13);
  }

  v14 = a1 + a2[6];
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  result = (*(*(v15 - 8) + 48))(v14, 1, v15);
  if (!result)
  {

    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
    v18 = *(v17 + 32);
    v19 = type metadata accessor for TextSelection(0);
    if (!(*(*(v19 - 8) + 48))(v14 + v18, 1, v19))
    {
      type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v20 - 8) + 8))(v14 + v18, v20);
      }
    }
  }

  v21 = a1 + a2[7];
  if (*(v21 + 8))
  {

    if ((*(v21 + 24) & 1) == 0)
    {
      MEMORY[0x18D011290](v21 + 16);
    }
  }

  return result;
}

void *initializeWithCopy for SearchEnvironmentStorage.BoundProperties(void *a1, void *a2, int *a3)
{
  type metadata accessor for SearchBoundProperty<SearchFieldState>();
  v7 = v6;
  v8 = *(v6 - 8);
  v69 = a3;
  v70 = a1;
  if ((*(v8 + 48))(a2, 1, v6))
  {
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<SearchFieldState>?, type metadata accessor for SearchBoundProperty<SearchFieldState>, MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    v66 = a2[1];
    *a1 = *a2;
    a1[1] = v66;
    type metadata accessor for Binding<SearchFieldState>(0);
    v11 = *(v10 + 32);
    v12 = a1 + v11;
    v13 = a2 + v11;
    *v12 = *(a2 + v11);
    v12[1] = *(a2 + v11 + 1);
    *(v12 + 1) = *(a2 + v11 + 2);
    v12[8] = *(a2 + v11 + 8);
    *(v12 + 1) = *(a2 + v11 + 4);
    v14 = type metadata accessor for SearchFieldState(0);
    v15 = v14[9];
    v16 = type metadata accessor for AttributedString();
    v17 = a2;
    v18 = *(*(v16 - 8) + 16);

    v18(&v12[v15], &v13[v15], v16);
    a2 = v17;
    v12[v14[10]] = v13[v14[10]];
    v19 = v14[11];
    a1 = v70;
    v20 = &v12[v19];
    v21 = &v13[v19];
    v20[4] = v21[4];
    *v20 = *v21;
    *(v70 + *(v7 + 36)) = *(v17 + *(v7 + 36));
    *(v70 + *(v7 + 40)) = *(v17 + *(v7 + 40));
    v22 = *(v8 + 56);

    v22(v70, 0, 1, v7);
    a3 = v69;
  }

  v23 = a3[5];
  v24 = (a1 + v23);
  v25 = (a2 + v23);
  type metadata accessor for SearchBoundProperty<AttributedString>();
  v27 = v26;
  v28 = *(v26 - 8);
  if ((*(v28 + 48))(v25, 1, v26))
  {
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<AttributedString>?, type metadata accessor for SearchBoundProperty<AttributedString>, MEMORY[0x1E69E6720]);
    memcpy(v24, v25, *(*(v29 - 8) + 64));
  }

  else
  {
    v30 = v25[1];
    *v24 = *v25;
    v24[1] = v30;
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v32 = *(v31 + 32);
    v33 = type metadata accessor for AttributedString();
    v67 = a2;
    v34 = *(*(v33 - 8) + 16);
    a1 = v70;

    v34(v24 + v32, v25 + v32, v33);
    a2 = v67;
    *(v24 + *(v27 + 36)) = *(v25 + *(v27 + 36));
    *(v24 + *(v27 + 40)) = *(v25 + *(v27 + 40));
    v35 = *(v28 + 56);

    v35(v24, 0, 1, v27);
    a3 = v69;
  }

  v36 = a3[6];
  v37 = (a1 + v36);
  v38 = (a2 + v36);
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  v40 = v39;
  v41 = *(v39 - 8);
  if ((*(v41 + 48))(v38, 1, v39))
  {
    type metadata accessor for SearchBoundProperty<TextSelection?>?();
    memcpy(v37, v38, *(*(v42 - 8) + 64));
  }

  else
  {
    v65 = v41;
    v68 = a2;
    v43 = v38[1];
    *v37 = *v38;
    v37[1] = v43;
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
    v45 = *(v44 + 32);
    __dst = v37 + v45;
    v46 = v38 + v45;
    v47 = type metadata accessor for TextSelection(0);
    v48 = *(v47 - 8);
    v49 = *(v48 + 48);

    if (v49(v46, 1, v47))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v46, *(*(v50 - 8) + 64));
      a1 = v70;
      v51 = v65;
      a2 = v68;
    }

    else
    {
      v63 = v48;
      v52 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        v54 = v46;
        (*(*(v53 - 8) + 16))(__dst, v46, v53);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v54 = v46;
        memcpy(__dst, v46, *(*(v52 - 8) + 64));
      }

      a1 = v70;
      v51 = v65;
      a2 = v68;
      __dst[*(v47 + 20)] = v54[*(v47 + 20)];
      (*(v63 + 56))(__dst, 0, 1, v47);
    }

    *(v37 + *(v40 + 36)) = *(v38 + *(v40 + 36));
    *(v37 + *(v40 + 40)) = *(v38 + *(v40 + 40));
    v55 = *(v51 + 56);

    v55(v37, 0, 1, v40);
    a3 = v69;
  }

  v56 = a3[7];
  v57 = a1 + v56;
  v58 = a2 + v56;
  v59 = *(a2 + v56 + 8);
  if (v59)
  {
    *v57 = *v58;
    *(v57 + 1) = v59;
    v60 = v58[24];

    if (v60)
    {
      *(v57 + 2) = *(v58 + 2);
      v57[24] = v58[24];
    }

    else
    {
      swift_unknownObjectWeakCopyInit();
      v57[24] = 0;
    }

    *(v57 + 4) = *(v58 + 4);
    *(v57 + 10) = *(v58 + 10);
  }

  else
  {
    v61 = *(v58 + 1);
    *v57 = *v58;
    *(v57 + 1) = v61;
    *(v57 + 28) = *(v58 + 28);
  }

  return a1;
}

void *assignWithCopy for SearchEnvironmentStorage.BoundProperties(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for SearchBoundProperty<SearchFieldState>();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 1, v6);
  v11 = v9(a2, 1, v7);
  if (v10)
  {
    if (!v11)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      type metadata accessor for Binding<SearchFieldState>(0);
      v13 = *(v12 + 32);
      v105 = a1;
      v109 = a2;
      v14 = a1 + v13;
      v15 = v109 + v13;
      *v14 = *(v109 + v13);
      v14[1] = *(v109 + v13 + 1);
      v14[2] = *(v109 + v13 + 2);
      v14[3] = *(v109 + v13 + 3);
      LODWORD(v13) = *(v109 + v13 + 4);
      v14[8] = v15[8];
      *(v14 + 1) = v13;
      v16 = type metadata accessor for SearchFieldState(0);
      v17 = v16[9];
      v18 = a3;
      v19 = type metadata accessor for AttributedString();
      v20 = *(*(v19 - 8) + 16);

      v21 = v19;
      a3 = v18;
      v20(&v14[v17], &v15[v17], v21);
      v14[v16[10]] = v15[v16[10]];
      v22 = v16[11];
      v23 = &v14[v22];
      v24 = &v15[v22];
      a1 = v105;
      a2 = v109;
      v25 = v24[4];
      *v23 = *v24;
      v23[4] = v25;
      *(v105 + *(v7 + 36)) = *(v109 + *(v7 + 36));
      *(v105 + *(v7 + 40)) = *(v109 + *(v7 + 40));
      v26 = *(v8 + 56);

      v26(v105, 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    outlined destroy of Binding<SearchFieldState>?(a1, type metadata accessor for SearchBoundProperty<SearchFieldState>);
LABEL_6:
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<SearchFieldState>?, type metadata accessor for SearchBoundProperty<SearchFieldState>, MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v27 - 8) + 64));
    goto LABEL_7;
  }

  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v61 = *(v60 + 32);
  v62 = a1 + v61;
  v63 = a2 + v61;
  *v62 = *(a2 + v61);
  v62[1] = *(a2 + v61 + 1);
  v62[2] = *(a2 + v61 + 2);
  v62[3] = *(a2 + v61 + 3);
  LODWORD(v61) = *(a2 + v61 + 4);
  v62[8] = v63[8];
  *(v62 + 1) = v61;
  v64 = type metadata accessor for SearchFieldState(0);
  v65 = v64[9];
  v66 = type metadata accessor for AttributedString();
  (*(*(v66 - 8) + 24))(&v62[v65], &v63[v65], v66);
  v62[v64[10]] = v63[v64[10]];
  v67 = v64[11];
  v68 = &v62[v67];
  v69 = &v63[v67];
  *v68 = *v69;
  v68[4] = v69[4];
  *(a1 + *(v7 + 36)) = *(a2 + *(v7 + 36));

  *(a1 + *(v7 + 40)) = *(a2 + *(v7 + 40));
LABEL_7:
  v28 = *(a3 + 20);
  v29 = a1 + v28;
  v30 = a2 + v28;
  type metadata accessor for SearchBoundProperty<AttributedString>();
  v32 = v31;
  v33 = *(v31 - 8);
  v34 = *(v33 + 48);
  v35 = v34(v29, 1, v31);
  v36 = v34(v30, 1, v32);
  v112 = a3;
  if (v35)
  {
    if (!v36)
    {
      *v29 = *v30;
      *(v29 + 1) = *(v30 + 1);
      type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v38 = *(v37 + 32);
      v110 = a2;
      v39 = type metadata accessor for AttributedString();
      v106 = *(*(v39 - 8) + 16);

      v40 = v39;
      a2 = v110;
      v106(&v29[v38], &v30[v38], v40);
      *&v29[*(v32 + 36)] = *&v30[*(v32 + 36)];
      *&v29[*(v32 + 40)] = *&v30[*(v32 + 40)];
      v41 = *(v33 + 56);

      v41(v29, 0, 1, v32);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v36)
  {
    outlined destroy of Binding<SearchFieldState>?(v29, type metadata accessor for SearchBoundProperty<AttributedString>);
LABEL_12:
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<AttributedString>?, type metadata accessor for SearchBoundProperty<AttributedString>, MEMORY[0x1E69E6720]);
    memcpy(v29, v30, *(*(v42 - 8) + 64));
    goto LABEL_13;
  }

  *v29 = *v30;

  *(v29 + 1) = *(v30 + 1);

  type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v71 = *(v70 + 32);
  v72 = type metadata accessor for AttributedString();
  (*(*(v72 - 8) + 24))(&v29[v71], &v30[v71], v72);
  *&v29[*(v32 + 36)] = *&v30[*(v32 + 36)];

  *&v29[*(v32 + 40)] = *&v30[*(v32 + 40)];
LABEL_13:
  v43 = *(a3 + 24);
  v44 = (a1 + v43);
  v45 = (a2 + v43);
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  v47 = v46;
  v48 = *(v46 - 8);
  v49 = *(v48 + 48);
  v50 = v49(v44, 1, v46);
  v51 = v49(v45, 1, v47);
  if (v50)
  {
    if (!v51)
    {
      v107 = a1;
      v111 = a2;
      *v44 = *v45;
      v44[1] = v45[1];
      type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
      v53 = *(v52 + 32);
      __dst = v44 + v53;
      v54 = v45 + v53;
      v55 = type metadata accessor for TextSelection(0);
      v56 = *(v55 - 8);
      v57 = *(v56 + 48);

      if (v57(v54, 1, v55))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v54, *(*(v58 - 8) + 64));
      }

      else
      {
        v84 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v85 - 8) + 16))(__dst, v54, v85);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dst, v54, *(*(v84 - 8) + 64));
        }

        __dst[*(v55 + 20)] = v54[*(v55 + 20)];
        (*(v56 + 56))(__dst, 0, 1, v55);
      }

      a1 = v107;
      *(v44 + *(v47 + 36)) = *(v45 + *(v47 + 36));
      *(v44 + *(v47 + 40)) = *(v45 + *(v47 + 40));
      v87 = *(v48 + 56);

      v87(v44, 0, 1, v47);
      goto LABEL_41;
    }

LABEL_19:
    type metadata accessor for SearchBoundProperty<TextSelection?>?();
    memcpy(v44, v45, *(*(v59 - 8) + 64));
    goto LABEL_42;
  }

  if (v51)
  {
    outlined destroy of Binding<SearchFieldState>?(v44, type metadata accessor for SearchBoundProperty<TextSelection?>);
    goto LABEL_19;
  }

  v108 = a1;
  v111 = a2;
  *v44 = *v45;

  v44[1] = v45[1];

  type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v74 = *(v73 + 32);
  v75 = v44 + v74;
  v76 = v45 + v74;
  v77 = type metadata accessor for TextSelection(0);
  v78 = *(v77 - 8);
  v79 = *(v78 + 48);
  v80 = v79(v75, 1, v77);
  v81 = v79(v76, 1, v77);
  if (v80)
  {
    if (!v81)
    {
      v82 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v83 - 8) + 16))(v75, v76, v83);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v75, v76, *(*(v82 - 8) + 64));
      }

      v75[*(v77 + 20)] = v76[*(v77 + 20)];
      (*(v78 + 56))(v75, 0, 1, v77);
      goto LABEL_39;
    }
  }

  else
  {
    if (!v81)
    {
      a1 = v108;
      if (v108 != v111)
      {
        outlined destroy of Binding<SearchFieldState>?(v75, type metadata accessor for TextSelection.Indices);
        v88 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v89 - 8) + 16))(v75, v76, v89);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v75, v76, *(*(v88 - 8) + 64));
        }

        a1 = v108;
      }

      v75[*(v77 + 20)] = v76[*(v77 + 20)];
      goto LABEL_40;
    }

    outlined destroy of Binding<SearchFieldState>?(v75, type metadata accessor for TextSelection);
  }

  type metadata accessor for TextSelection?(0);
  memcpy(v75, v76, *(*(v86 - 8) + 64));
LABEL_39:
  a1 = v108;
LABEL_40:
  *(v44 + *(v47 + 36)) = *(v45 + *(v47 + 36));

  *(v44 + *(v47 + 40)) = *(v45 + *(v47 + 40));
LABEL_41:
  a2 = v111;
LABEL_42:
  v90 = *(v112 + 28);
  v91 = a1 + v90;
  v92 = a2 + v90;
  v93 = *(a1 + v90 + 8);
  v94 = *(a2 + v90 + 8);
  if (v93)
  {
    if (v94)
    {
      *v91 = *v92;

      *(v91 + 8) = *(v92 + 1);

      if (*(v91 + 24))
      {
        if (v92[24])
        {
          v95 = *(v92 + 2);
          *(v91 + 24) = v92[24];
          *(v91 + 16) = v95;
        }

        else
        {
          swift_unknownObjectWeakCopyInit();
          *(v91 + 24) = 0;
        }
      }

      else if (v92[24])
      {
        outlined destroy of PlatformSearchPopoverAnchor(v91 + 16);
        v100 = v92[24];
        *(v91 + 16) = *(v92 + 2);
        *(v91 + 24) = v100;
      }

      else
      {
        swift_unknownObjectWeakCopyAssign();
      }

      *(v91 + 32) = *(v92 + 4);

      *(v91 + 40) = *(v92 + 10);
    }

    else
    {
      outlined destroy of Binding<SearchFieldState>?(v91, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
      v98 = *(v92 + 28);
      v99 = *(v92 + 1);
      *v91 = *v92;
      *(v91 + 16) = v99;
      *(v91 + 28) = v98;
    }
  }

  else if (v94)
  {
    *v91 = *v92;
    *(v91 + 8) = *(v92 + 1);
    v96 = v92[24];

    if (v96)
    {
      v97 = *(v92 + 2);
      *(v91 + 24) = v92[24];
      *(v91 + 16) = v97;
    }

    else
    {
      swift_unknownObjectWeakCopyInit();
      *(v91 + 24) = 0;
    }

    *(v91 + 32) = *(v92 + 4);
    *(v91 + 40) = *(v92 + 10);
  }

  else
  {
    v101 = *v92;
    v102 = *(v92 + 1);
    *(v91 + 28) = *(v92 + 28);
    *v91 = v101;
    *(v91 + 16) = v102;
  }

  return a1;
}

void *initializeWithTake for SearchEnvironmentStorage.BoundProperties(void *a1, void *a2, int *a3)
{
  type metadata accessor for SearchBoundProperty<SearchFieldState>();
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 1, v6))
  {
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<SearchFieldState>?, type metadata accessor for SearchBoundProperty<SearchFieldState>, MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    type metadata accessor for Binding<SearchFieldState>(0);
    v12 = *(v11 + 32);
    v13 = a1 + v12;
    v14 = a2 + v12;
    *v13 = *(a2 + v12);
    v13[1] = *(a2 + v12 + 1);
    *(v13 + 1) = *(a2 + v12 + 2);
    v13[8] = *(a2 + v12 + 8);
    *(v13 + 1) = *(a2 + v12 + 4);
    v15 = type metadata accessor for SearchFieldState(0);
    v16 = v15[9];
    v17 = type metadata accessor for AttributedString();
    (*(*(v17 - 8) + 32))(&v13[v16], &v14[v16], v17);
    v13[v15[10]] = v14[v15[10]];
    v18 = v15[11];
    v19 = &v13[v18];
    v20 = &v14[v18];
    v19[4] = v20[4];
    *v19 = *v20;
    *(a1 + *(v7 + 36)) = *(a2 + *(v7 + 36));
    *(a1 + *(v7 + 40)) = *(a2 + *(v7 + 40));
    (*(v8 + 56))(a1, 0, 1, v7);
  }

  v21 = a3[5];
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  type metadata accessor for SearchBoundProperty<AttributedString>();
  v25 = v24;
  v26 = *(v24 - 8);
  if ((*(v26 + 48))(v23, 1, v24))
  {
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for SearchBoundProperty<AttributedString>?, type metadata accessor for SearchBoundProperty<AttributedString>, MEMORY[0x1E69E6720]);
    memcpy(v22, v23, *(*(v27 - 8) + 64));
  }

  else
  {
    v28 = v23[1];
    *v22 = *v23;
    v22[1] = v28;
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v30 = *(v29 + 32);
    v31 = type metadata accessor for AttributedString();
    (*(*(v31 - 8) + 32))(v22 + v30, v23 + v30, v31);
    *(v22 + *(v25 + 36)) = *(v23 + *(v25 + 36));
    *(v22 + *(v25 + 40)) = *(v23 + *(v25 + 40));
    (*(v26 + 56))(v22, 0, 1, v25);
  }

  v32 = a3[6];
  v33 = (a1 + v32);
  v34 = (a2 + v32);
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  v36 = v35;
  v37 = *(v35 - 8);
  if ((*(v37 + 48))(v34, 1, v35))
  {
    type metadata accessor for SearchBoundProperty<TextSelection?>?();
    memcpy(v33, v34, *(*(v38 - 8) + 64));
  }

  else
  {
    v55 = a3;
    v39 = v34[1];
    *v33 = *v34;
    v33[1] = v39;
    type metadata accessor for Binding<SearchFieldState>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
    v41 = *(v40 + 32);
    v42 = v33 + v41;
    v43 = v34 + v41;
    v44 = type metadata accessor for TextSelection(0);
    v45 = *(v44 - 8);
    if ((*(v45 + 48))(v43, 1, v44))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(v42, v43, *(*(v46 - 8) + 64));
    }

    else
    {
      v54 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v47 - 8) + 32))(v42, v43, v47);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v42, v43, *(*(v54 - 8) + 64));
      }

      v42[*(v44 + 20)] = v43[*(v44 + 20)];
      (*(v45 + 56))(v42, 0, 1, v44);
    }

    *(v33 + *(v36 + 36)) = *(v34 + *(v36 + 36));
    *(v33 + *(v36 + 40)) = *(v34 + *(v36 + 40));
    (*(v37 + 56))(v33, 0, 1, v36);
    a3 = v55;
  }

  v48 = a3[7];
  v49 = a1 + v48;
  v50 = a2 + v48;
  v51 = *(v50 + 1);
  if (v51)
  {
    *v49 = *v50;
    *(v49 + 1) = v51;
    if (v50[24])
    {
      *(v49 + 2) = *(v50 + 2);
      v49[24] = v50[24];
    }

    else
    {
      swift_unknownObjectWeakTakeInit();
      v49[24] = 0;
    }

    *(v49 + 4) = *(v50 + 4);
    *(v49 + 10) = *(v50 + 10);
  }

  else
  {
    v52 = *(v50 + 1);
    *v49 = *v50;
    *(v49 + 1) = v52;
    *(v49 + 28) = *(v50 + 28);
  }

  return a1;
}