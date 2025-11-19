uint64_t closure #1 in AccessibilityRotorInfo.resolveEntry(for:range:on:resolveToLeaf:previous:next:)(void *a1, uint64_t a2)
{
  v6 = 0;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 8))(a2, &v6, &type metadata for MatchingVisitor #1 in AccessibilityRotorInfo.resolveEntry(for:range:on:resolveToLeaf:previous:next:), &protocol witness table for MatchingVisitor #1 in AccessibilityRotorInfo.resolveEntry(for:range:on:resolveToLeaf:previous:next:), v3, v4);
}

char *AccessibilityNode.resolvedRotorLeafElement.getter()
{
  swift_getObjectType();
  result = static AccessibilityNode.resolvedRotorLeafElement(for:)(v0);
  if (!result)
  {

    return AccessibilityNode.representedElement.getter();
  }

  return result;
}

unint64_t AccessibilityRotorInfo.resolveImplicitElement(with:on:scrollIfNeeded:shouldLog:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v9 = v4[1];
  v102 = *v4;
  v103 = v9;
  v104[0] = v4[2];
  *(v104 + 9) = *(v4 + 41);
  MEMORY[0x18D00ABE0]();
  AccessibilityNode.attachment.getter(&v94);
  outlined init with copy of AccessibilityProperties(&v94, &v97);
  outlined destroy of AccessibilityAttachment(&v94);
  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableCollectionKey and conformance AccessibilityProperties.ScrollableCollectionKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(&v97);
  v83 = a4;
  v84 = a2;
  if (v100)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v99, &v86);
    v10 = AccessibilityNode.rotorChildNodes.getter();
    v11 = v87;
    v12 = v88;
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    v13 = (*(v12 + 16))(v11, v12);
    MEMORY[0x1EEE9AC00](v13);
    specialized Sequence.first(where:)(closure #1 in AccessibilityRotorInfo.resolveImplicitElement(with:in:node:scrollIfNeeded:shouldLog:)partial apply, v13, &v94);

    v14 = *(&v94 + 1);
    if (*(&v94 + 1) != 1)
    {
      v15 = v94;
      v16 = v5[1];
      v94 = *v5;
      v95 = v16;
      v96[0] = v5[2];
      *(v96 + 9) = *(v5 + 41);
      *&v97 = v15;
      *(&v97 + 1) = v14;
      v17 = AccessibilityRotorInfo.findNode(for:in:)(&v97, v10);
      outlined consume of Text.LineStyle?(v15, v14);
      if (v17)
      {

LABEL_61:
        v58 = &v86;
        goto LABEL_73;
      }
    }

    *&v91 = 0;
    v97 = xmmword_18CD633F0;
    v18 = v88;
    v19 = __swift_project_boxed_opaque_existential_1(&v86, v87);
    v20 = MEMORY[0x1EEE9AC00](v19);
    (*(v18 + 64))(&v91, closure #2 in AccessibilityRotorInfo.resolveImplicitElement(with:in:node:scrollIfNeeded:shouldLog:)partial apply, v20);
    v21 = *(&v97 + 1);
    if (*(&v97 + 1) != 1)
    {
      v54 = a1;
      v55 = v97;
      v56 = DWORD1(v97);
      v57 = v5[1];
      v94 = *v5;
      v95 = v57;
      v96[0] = v5[2];
      *(v96 + 9) = *(v5 + 41);
      v99 = v97;

      v17 = AccessibilityRotorInfo.findNode(for:in:)(&v99, v10);

      if (v17)
      {
        if (a3)
        {
          AccessibilityNode.scrollToVisible()();
        }
      }

      else
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_84;
        }

        v62 = v87;
        v63 = v88;
        __swift_project_boxed_opaque_existential_1(&v86, v87);
        *&v94 = __PAIR64__(v56, v55);
        *(&v94 + 1) = v21;
        static UnitPoint.center.getter();
        if (((*(v63 + 80))(&v94, v64, v65, 0, v62, v63) & 1) == 0)
        {
          goto LABEL_107;
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_getObjectType();
          *&v94 = 0;
          BYTE8(v94) = 1;
          ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
          swift_unknownObjectRelease();
        }

        v66 = AccessibilityNode.rotorChildNodes.getter();
        v94 = v102;
        v95 = v103;
        v96[0] = v104[0];
        *(v96 + 9) = *(v104 + 9);
        *&v99 = __PAIR64__(v56, v55);
        *(&v99 + 1) = v21;
        v17 = AccessibilityRotorInfo.findNode(for:in:)(&v99, v66);

        if (!v17)
        {
LABEL_107:
          v67 = v87;
          v68 = v88;
          __swift_project_boxed_opaque_existential_1(&v86, v87);
          *&v94 = __PAIR64__(v56, v55);
          *(&v94 + 1) = v21;
          static UnitPoint.center.getter();
          if (((*(v68 + 80))(&v94, v69, v70, 0, v67, v68) & 1) == 0)
          {
            goto LABEL_84;
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_getObjectType();
            *&v94 = 0;
            BYTE8(v94) = 1;
            ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
            swift_unknownObjectRelease();
          }

          v71 = AccessibilityNode.rotorChildNodes.getter();
          v94 = v102;
          v95 = v103;
          v96[0] = v104[0];
          *(v96 + 9) = *(v104 + 9);
          *&v99 = __PAIR64__(v56, v55);
          *(&v99 + 1) = v21;
          v17 = AccessibilityRotorInfo.findNode(for:in:)(&v99, v71);

          if (!v17)
          {
LABEL_84:
            outlined consume of Text.LineStyle?(v55, v21);
            outlined consume of Text.LineStyle?(v97, *(&v97 + 1));
            __swift_destroy_boxed_opaque_existential_1(&v86);
            a1 = v54;
            a2 = v84;
            goto LABEL_8;
          }
        }
      }

      outlined consume of Text.LineStyle?(v55, v21);
      outlined consume of Text.LineStyle?(v97, *(&v97 + 1));
      goto LABEL_61;
    }

    outlined consume of Text.LineStyle?(v97, *(&v97 + 1));
    __swift_destroy_boxed_opaque_existential_1(&v86);
    a2 = v84;
  }

  else
  {
    outlined destroy of ScrollableCollection?(&v99);
  }

LABEL_8:
  v82 = a1;
  v22 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
  swift_beginAccess();
  v23 = *(a2 + v22);
  v24 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
LABEL_97:
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v23 & 0xC000000000000001;

  v27 = 0;
  while (v25 != v27)
  {
    if (v26)
    {
      v28 = MEMORY[0x18D00E9C0](v27, v23);
    }

    else
    {
      if (v27 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v28 = *(v23 + 8 * v27 + 32);
    }

    v29 = v28;
    AccessibilityNode.attachment.getter(&v94);
    outlined init with copy of AccessibilityProperties(&v94, &v97);
    outlined destroy of AccessibilityAttachment(&v94);
    lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
    AccessibilityProperties.subscript.getter();
    outlined destroy of AccessibilityProperties(&v97);
    if (v90 == 255)
    {
      outlined destroy of AnyAccessibilityValue?(&v86, &lazy cache variable for type metadata for AccessibilityScrollableContext?);
LABEL_20:
      v94 = 0u;
      v95 = 0u;
      *&v96[0] = 0;
      goto LABEL_21;
    }

    if (((((v89 | (v90 << 16)) & 0xFFFFFF) << 32) & 0xFF000000000000) != 0x2000000000000)
    {
      outlined destroy of AccessibilityScrollableContext(&v86);
      goto LABEL_20;
    }

    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v86, &v94);
LABEL_21:

    v30 = *(&v95 + 1);
    outlined destroy of ScrollableCollection?(&v94);
    if (v30)
    {
      v25 = v27;
      break;
    }

    if (__OFADD__(v27++, 1))
    {
      goto LABEL_96;
    }
  }

  v32 = v83;
  if (v23 >> 62)
  {
    if (v25 == __CocoaSet.count.getter())
    {
      goto LABEL_35;
    }

LABEL_29:
    if (v26)
    {
      v33 = MEMORY[0x18D00E9C0](v25, v23);
    }

    else
    {
      if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_100;
      }

      v33 = *(v23 + 32 + 8 * v25);
    }

    v34 = v33;
    *&v97 = v33;
    closure #1 in AccessibilityRotorInfo.resolveImplicitElement(with:on:scrollIfNeeded:shouldLog:)(&v94);

    result = outlined init with copy of ScrollableCollection?(&v94, &v97);
    v24 = v82;
    if (v98)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v97, &v91);
      outlined destroy of ScrollableCollection?(&v94);
      goto LABEL_36;
    }
  }

  else
  {
    if (v25 != *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

LABEL_35:
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v24 = v82;
LABEL_36:

    if (*(&v92 + 1))
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v91, &v99);
      v36 = AccessibilityNode.rotorChildNodes.getter();
      v37 = v100;
      v38 = v101;
      __swift_project_boxed_opaque_existential_1(&v99, v100);
      v39 = (*(v38 + 16))(v37, v38);
      MEMORY[0x1EEE9AC00](v39);
      specialized Sequence.first(where:)(partial apply for closure #1 in AccessibilityRotorInfo.resolveImplicitElement(with:in:node:scrollIfNeeded:shouldLog:), v39, &v94);

      v40 = *(&v94 + 1);
      if (*(&v94 + 1) != 1)
      {
        v41 = v94;
        v94 = v102;
        v95 = v103;
        v96[0] = v104[0];
        *(v96 + 9) = *(v104 + 9);
        *&v97 = v41;
        *(&v97 + 1) = v40;
        v17 = AccessibilityRotorInfo.findNode(for:in:)(&v97, v36);
        outlined consume of Text.LineStyle?(v41, v40);
        if (v17)
        {

          goto LABEL_72;
        }
      }

      *&v91 = 0;
      v97 = xmmword_18CD633F0;
      v42 = v101;
      v43 = __swift_project_boxed_opaque_existential_1(&v99, v100);
      v44 = MEMORY[0x1EEE9AC00](v43);
      (*(v42 + 64))(&v91, partial apply for closure #2 in AccessibilityRotorInfo.resolveImplicitElement(with:in:node:scrollIfNeeded:shouldLog:), v44);
      v45 = *(&v97 + 1);
      if (*(&v97 + 1) == 1)
      {

        outlined consume of Text.LineStyle?(v97, *(&v97 + 1));
        __swift_destroy_boxed_opaque_existential_1(&v99);
        goto LABEL_43;
      }

      v60 = v97;
      v61 = DWORD1(v97);
      v94 = v102;
      v95 = v103;
      v96[0] = v104[0];
      *(v96 + 9) = *(v104 + 9);
      v86 = v97;

      v17 = AccessibilityRotorInfo.findNode(for:in:)(&v86, v36);

      if (v17)
      {
        if (a3)
        {
          AccessibilityNode.scrollToVisible()();
        }

LABEL_71:
        outlined consume of Text.LineStyle?(v60, v45);
        outlined consume of Text.LineStyle?(v97, *(&v97 + 1));
LABEL_72:
        v58 = &v99;
LABEL_73:
        __swift_destroy_boxed_opaque_existential_1(v58);
        goto LABEL_74;
      }

      if (a3)
      {
        v72 = v100;
        v73 = v101;
        __swift_project_boxed_opaque_existential_1(&v99, v100);
        *&v94 = __PAIR64__(v61, v60);
        *(&v94 + 1) = v45;
        static UnitPoint.center.getter();
        if ((*(v73 + 80))(&v94, v74, v75, 0, v72, v73))
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_getObjectType();
            *&v94 = 0;
            BYTE8(v94) = 1;
            ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
            swift_unknownObjectRelease();
          }

          v76 = AccessibilityNode.rotorChildNodes.getter();
          v94 = v102;
          v95 = v103;
          v96[0] = v104[0];
          *(v96 + 9) = *(v104 + 9);
          *&v86 = __PAIR64__(v61, v60);
          *(&v86 + 1) = v45;
          v17 = AccessibilityRotorInfo.findNode(for:in:)(&v86, v76);

          if (v17)
          {
            goto LABEL_71;
          }
        }

        v77 = v100;
        v78 = v101;
        __swift_project_boxed_opaque_existential_1(&v99, v100);
        *&v94 = __PAIR64__(v61, v60);
        *(&v94 + 1) = v45;
        static UnitPoint.center.getter();
        if ((*(v78 + 80))(&v94, v79, v80, 0, v77, v78))
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_getObjectType();
            *&v94 = 0;
            BYTE8(v94) = 1;
            ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
            swift_unknownObjectRelease();
          }

          v81 = AccessibilityNode.rotorChildNodes.getter();
          v94 = v102;
          v95 = v103;
          v96[0] = v104[0];
          *(v96 + 9) = *(v104 + 9);
          *&v86 = __PAIR64__(v61, v60);
          *(&v86 + 1) = v45;
          v17 = AccessibilityRotorInfo.findNode(for:in:)(&v86, v81);

          if (v17)
          {
            goto LABEL_71;
          }
        }
      }

      outlined consume of Text.LineStyle?(v60, v45);
      outlined consume of Text.LineStyle?(v97, *(&v97 + 1));
      __swift_destroy_boxed_opaque_existential_1(&v99);
      v32 = v83;
    }

    else
    {
      outlined destroy of ScrollableCollection?(&v91);
    }

LABEL_43:
    v46 = AccessibilityNode.representedElement.getter();
    type metadata accessor for HostingScrollView();
    v47 = swift_dynamicCastClass();

    if (!v47)
    {
      if (v32)
      {
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    result = AccessibilityNode.rotorChildNodes.getter();
    v26 = result;
    if (!(result >> 62))
    {
      v48 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48)
      {
        goto LABEL_46;
      }

LABEL_101:

      if (v32)
      {
        goto LABEL_66;
      }

      goto LABEL_67;
    }

LABEL_100:
    result = __CocoaSet.count.getter();
    v48 = result;
    if (!result)
    {
      goto LABEL_101;
    }

LABEL_46:
    if (v48 >= 1)
    {
      v17 = 0;
      v49 = 0;
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x18D00E9C0](v49, v26);
        }

        else
        {
          v51 = *(v26 + 8 * v49 + 32);
        }

        v50 = v51;
        type metadata accessor for AccessibilityLazyLayoutNode();
        v52 = swift_dynamicCastClass();
        if (v52)
        {
          v94 = v102;
          v95 = v103;
          v96[0] = v104[0];
          *(v96 + 9) = *(v104 + 9);
          v53 = AccessibilityRotorInfo.resolveImplicitElement(with:on:scrollIfNeeded:shouldLog:)(v24, v52, a3 & 1, v32 & 1);

          if (!v53)
          {
            goto LABEL_50;
          }

          v50 = v17;
          v17 = v53;
        }

LABEL_50:
        if (v48 == ++v49)
        {

          if (v17 || (v32 & 1) == 0)
          {
LABEL_74:
            static Update.end()();
            return v17;
          }

LABEL_66:
          *&v94 = 0;
          *(&v94 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(253);
          MEMORY[0x18D00C9B0](0xD00000000000004ELL, 0x800000018CD524E0);
          v59 = AnyHashable.description.getter();
          MEMORY[0x18D00C9B0](v59);

          MEMORY[0x18D00C9B0](0xD0000000000000ADLL, 0x800000018CD52530);
          MEMORY[0x18D009810](v94, *(&v94 + 1));

LABEL_67:
          v17 = 0;
          goto LABEL_74;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *AccessibilityRotorInfo.findNode(for:in:)(unsigned int *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 1);
  if (a2 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x18D00E9C0](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v8 = *(a2 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      AccessibilityNode.attachment.getter(&v16);
      outlined init with copy of AccessibilityProperties(&v16, v22);
      outlined destroy of AccessibilityAttachment(&v16);
      lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
      AccessibilityProperties.subscript.getter();
      outlined destroy of AccessibilityProperties(v22);
      if (v24[70] == 255)
      {
        outlined destroy of AnyAccessibilityValue?(v24, &lazy cache variable for type metadata for AccessibilityScrollableContext?);
        v11 = 0;
LABEL_20:
        if (v5 == 1)
        {

          outlined consume of Text.LineStyle?(v11, 1);
          return v9;
        }

        v12 = 1;
LABEL_5:
        outlined consume of Text.LineStyle?(v11, v12);
        outlined consume of Text.LineStyle?(v4 | (v3 << 32), v5);
        goto LABEL_6;
      }

      outlined init with copy of AccessibilityScrollableContext(v24, &v16);
      if (v21)
      {
        if (v21 == 1)
        {
          v14 = v16;
          v12 = v17;
          goto LABEL_19;
        }

        v14 = v18;
        v12 = v19;
      }

      else
      {
        v14 = v19;
        v12 = v20;
      }

      __swift_destroy_boxed_opaque_existential_1(&v16);
LABEL_19:
      outlined destroy of AccessibilityScrollableContext(v24);
      v11 = v14 | (HIDWORD(v14) << 32);
      if (v12 == 1)
      {
        goto LABEL_20;
      }

      v16 = v14 | (HIDWORD(v14) << 32);
      v17 = v12;
      if (v5 == 1)
      {

        outlined copy of Text.LineStyle?(v11, v12);

        goto LABEL_5;
      }

      v22[0] = v4;
      v22[1] = v3;
      v23 = v5;

      outlined copy of Text.LineStyle?(v11, v12);
      v15 = MEMORY[0x18D003E10](&v16, v22);

      outlined consume of Text.LineStyle?(v11, v12);
      if (v15)
      {
        return v9;
      }

LABEL_6:
      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  return 0;
}

uint64_t closure #1 in AccessibilityRotorInfo.resolveImplicitElement(with:in:node:scrollIfNeeded:shouldLog:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v5[5] = *(a1 + 8);

    AnyHashable2.anyHashable.getter();
    v3 = MEMORY[0x18D00E7E0](v5, a2);

    outlined destroy of AnyHashable(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t *closure #2 in AccessibilityRotorInfo.resolveImplicitElement(with:in:node:scrollIfNeeded:shouldLog:)(uint64_t *result, _BYTE *a2, uint64_t a3, uint64_t *a4)
{
  v4 = result[1];
  if (v4)
  {
    v8 = *result;
    v12[5] = result[1];

    AnyHashable2.anyHashable.getter();
    v9 = MEMORY[0x18D00E7E0](v12, a3);

    result = outlined destroy of AnyHashable(v12);
    if (v9)
    {
      v10 = *a4;
      v11 = a4[1];
      *a4 = v8;
      a4[1] = v4;

      result = outlined consume of Text.LineStyle?(v10, v11);
      *a2 = 1;
    }
  }

  return result;
}

double closure #1 in AccessibilityRotorInfo.resolveImplicitElement(with:on:scrollIfNeeded:shouldLog:)@<D0>(uint64_t a1@<X8>)
{
  AccessibilityNode.attachment.getter(v3);
  outlined init with copy of AccessibilityProperties(v3, v4);
  outlined destroy of AccessibilityAttachment(v3);
  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v4);
  if (v7 == 255)
  {
    outlined destroy of AnyAccessibilityValue?(v5, &lazy cache variable for type metadata for AccessibilityScrollableContext?);
  }

  else
  {
    if (((((v6 | (v7 << 16)) & 0xFFFFFF) << 32) & 0xFF000000000000) == 0x2000000000000)
    {

      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v5, a1);
      return result;
    }

    outlined destroy of AccessibilityScrollableContext(v5);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

char *static AccessibilityNode.resolvedRotorLeafElement(for:)(uint64_t a1)
{
  v16[0] = 4;
  AccessibilityNode.impliedVisibility(consideringParent:with:)(0, v16, v15);
  if (v15[0] - 1 < 2)
  {
    v2 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    swift_beginAccess();
    v3 = *(a1 + v2);
    v4 = *(v3 + 16);

    if (v4)
    {
      v5 = v3 + 320 * v4 - 288;
      while (v4 <= *(v3 + 16))
      {
        outlined init with copy of AccessibilityAttachment(v5, v15);
        v6 = AccessibilityAttachment.platformElement.getter();
        outlined destroy of AccessibilityAttachment(v15);
        if (v6)
        {
LABEL_16:

          return v6;
        }

        v5 -= 320;
        if (!--v4)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      v7 = specialized static AccessibilityCore.queryChildren(element:options:)(a1, 2);
      v8 = v7;
      v9 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
LABEL_27:
        v10 = __CocoaSet.count.getter();
      }

      else
      {
        v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = 0;
      while (v10 != v11)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x18D00E9C0](v11, v8);
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            goto LABEL_26;
          }

          v12 = *(v8 + 8 * v11 + 32);
        }

        v13 = v12;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v6 = static AccessibilityNode.resolvedRotorLeafElement(for:)(v12);

        ++v11;
        if (v6)
        {
          goto LABEL_16;
        }
      }
    }

    return 0;
  }

  if (v15[0])
  {
    return 0;
  }

  return AccessibilityNode.representedElement.getter();
}

uint64_t IndexWrappingVisitor.visit(entry:) in IndexingWrappingGenerator #1 in closure #1 in AccessibilityRotorInfo.readEntryList(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  outlined init with copy of AccessibilityListRotorEntry(a1, v8);
  v9 = *v3;
  v5 = v9;
  v10 = 0;
  v6 = (*(*(a2 + 24) + 8))(v8, *(a2 + 16));
  result = outlined destroy of AccessibilityListRotorEntry(v8);
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *v3 = v5 + 1;
    return v6 & 1;
  }

  return result;
}

uint64_t visitEntries<A>(applying:from:) in IndexingWrappingGenerator #1 in closure #1 in AccessibilityRotorInfo.readEntryList(_:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexWrappingVisitor in IndexingWrappingGenerator #1 in closure #1 in AccessibilityRotorInfo.readEntryList(_:)();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v20 - v13);
  v15 = *a2;
  v16 = *(v8 + 32);
  v16(v10, a1, a3, v12);
  *v14 = v15;
  (v16)(v14 + *(v11 + 36), v10, a3);
  v17 = v4[3];
  v18 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v17);
  LOBYTE(a2) = (*(v18 + 8))(v14, a2, v11, &protocol witness table for IndexWrappingVisitor in IndexingWrappingGenerator #1 in closure #1 in AccessibilityRotorInfo.readEntryList(_:)<A>, v17, v18);
  (v16)(a1, v14 + *(v11 + 36), a3);
  return a2 & 1;
}

uint64_t protocol witness for AccessibilityRotorEntryGenerator.count.getter in conformance IndexingWrappingGenerator #1 in closure #1 in AccessibilityRotorInfo.readEntryList(_:)()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t protocol witness for AccessibilityRotorEntryVisitor.visit(entry:) in conformance AccumulatingVisitor #1 in closure #1 in AccessibilityRotorInfo.resolveAllEntries()(uint64_t a1)
{
  outlined init with copy of AccessibilityListRotorEntry(a1, v13);
  v2 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[120 * v4];
  v6 = v13[0];
  v7 = v13[1];
  v8 = v13[3];
  *(v5 + 4) = v13[2];
  *(v5 + 5) = v8;
  *(v5 + 2) = v6;
  *(v5 + 3) = v7;
  v9 = v13[4];
  v10 = v13[5];
  v11 = v13[6];
  v5[144] = v14;
  *(v5 + 7) = v10;
  *(v5 + 8) = v11;
  *(v5 + 6) = v9;
  *v1 = v2;
  return 1;
}

uint64_t protocol witness for AccessibilityRotorEntryVisitor.visit(entry:) in conformance FirstVisitor #1 in AccessibilityRotorInfo.entry(at:)(uint64_t a1)
{
  outlined destroy of AnyAccessibilityValue?(v1, &lazy cache variable for type metadata for AccessibilityListRotorEntry?);
  outlined init with copy of AccessibilityListRotorEntry(a1, v1);
  return 0;
}

void visit(entry:) in MatchingVisitor #1 in AccessibilityRotorInfo.resolveEntry(for:range:on:resolveToLeaf:previous:next:)(uint64_t a1)
{
  v2 = v1;
  outlined init with copy of AnyAccessibilityValue?(v1 + 104, v90, &lazy cache variable for type metadata for AccessibilityListRotorEntry?);
  if (v91)
  {
    outlined destroy of AnyAccessibilityValue?(v90, &lazy cache variable for type metadata for AccessibilityListRotorEntry?);
    outlined destroy of AnyAccessibilityValue?(v1 + 344, &lazy cache variable for type metadata for AccessibilityListRotorEntry?);
    v4 = v1 + 344;
LABEL_7:
    outlined init with copy of AccessibilityListRotorEntry(a1, v4);
    return;
  }

  outlined destroy of AnyAccessibilityValue?(v90, &lazy cache variable for type metadata for AccessibilityListRotorEntry?);
  v5 = v1[1];
  v86[0] = *v1;
  v86[1] = v5;
  v7 = *v1;
  v6 = v1[1];
  v87[0] = v1[2];
  *(v87 + 9) = *(v1 + 41);
  v83 = v7;
  v84 = v6;
  *v85 = v1[2];
  *&v85[9] = *(v1 + 41);
  v8 = *(v1 + 8);
  v9 = *(v1 + 97);
  outlined init with copy of AccessibilityRotorInfo(v86, v88);
  v10 = AccessibilityRotorInfo.resolveElement(with:on:scrollIfNeeded:resolveToLeaf:shouldLog:)(a1, v8, 0, v9, 0);
  v88[0] = v83;
  v88[1] = v84;
  v89[0] = *v85;
  *(v89 + 9) = *&v85[9];
  outlined destroy of AccessibilityRotorInfo(v88);
  if (!v10)
  {
LABEL_6:
    outlined destroy of AnyAccessibilityValue?((v2 + 29), &lazy cache variable for type metadata for AccessibilityListRotorEntry?);
    v4 = (v2 + 29);
    goto LABEL_7;
  }

  swift_getObjectType();
  if (*(v1 + 9) != v10)
  {
LABEL_5:

    goto LABEL_6;
  }

  v11 = *(a1 + 80);
  if (v11 == 255)
  {
    v30 = a1;
    v31 = *(v2 + 96);

    v32 = v31 == 255;
    a1 = v30;
    if (!v32)
    {
      goto LABEL_6;
    }

    goto LABEL_60;
  }

  v77 = *(a1 + 72);
  v81 = *(v1 + 10);
  v82 = *(a1 + 64);
  v75 = *(v1 + 11);
  LODWORD(v12) = *(v1 + 96);
  v74 = *(a1 + 80);
  v76 = v12;
  if (!*(v1 + 96))
  {
    outlined copy of AccessibilityRotorEntryRange?(v82, v77, v11);
    v29 = v75;
    outlined copy of AccessibilityRotorEntryRange?(v81, v75, 0);
    v72 = 0;
    v69 = v81;
    goto LABEL_35;
  }

  if (v12 == 255)
  {
    goto LABEL_5;
  }

  outlined copy of AccessibilityRotorEntryRange?(v82, v77, v11);
  outlined copy of AccessibilityRotorEntryRange?(v81, v75, v12);
  v13 = PlatformAccessibilityElementProtocol<>.stringsForResolvingRange.getter();
  v14 = *(v13 + 2);
  outlined copy of AccessibilityRotorEntryRange?(v81, v75, v12);
  v73 = v10;
  v78 = v14;
  v67 = v13;
  if (!v14)
  {
    goto LABEL_22;
  }

  v70 = a1;
  v15 = 0;
  v16 = (v13 + 40);
  while (1)
  {
    v19 = *v16;
    if (v12 != 2)
    {
      break;
    }

    PlatformAccessibilityElementProtocol<>.accessibilityResolvedNSRange(from:)(v81);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    ++v15;
    v16 += 2;
    if (v78 == v15)
    {
      goto LABEL_21;
    }
  }

  v20 = *(v16 - 1);
  type metadata accessor for AccessibilityRotorEntryElementSpecifier<AnyHashable>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
  lazy protocol witness table accessor for type String and conformance String();
  swift_bridgeObjectRetain_n();
  v21 = _NSRange.init<A, B>(_:in:)();
  v23 = v22;
  if (v21 == NSNotFound.getter())
  {

    LODWORD(v12) = v76;
    goto LABEL_14;
  }

  v24 = __OFADD__(v21, v23);
  v12 = v21 + v23;
  if (v24)
  {
    goto LABEL_62;
  }

  v25 = MEMORY[0x18D00C850](v20, v19);
  v26 = [v25 length];

  v27 = v26 < v12;
  LODWORD(v12) = v76;
  if (v27)
  {
    goto LABEL_14;
  }

LABEL_20:
  v78 = v15;
LABEL_21:
  a1 = v70;
  v11 = v74;
  v13 = v67;
LABEL_22:
  v28 = *(v13 + 2);
  v72 = v78 == v28;
  if (v78 == v28)
  {

    v69 = 0;
    v29 = 0;
  }

  else
  {
    if (v78 >= v28)
    {
      goto LABEL_64;
    }

    v33 = &v67[16 * v78 + 32];
    v34 = v33[1];
    if (v12 == 2)
    {

      v35 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedNSRange(from:)(v81);
    }

    else
    {
      v38 = *v33;

      v35 = specialized String.resolveNSRange(_:in:)(v81, v75, v38, v34);
    }

    v69 = v35;
    v29 = v36;
    v39 = v37;

    if (v39)
    {
      goto LABEL_66;
    }
  }

  outlined consume of AccessibilityRotorEntryRange?(v81, v75, v12);

LABEL_35:
  if (!v11)
  {

    outlined consume of AccessibilityRotorEntryRange?(v81, v75, v12);
    if (v72)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

  v68 = v29;
  v40 = PlatformAccessibilityElementProtocol<>.stringsForResolvingRange.getter();
  v41 = *(v40 + 2);
  outlined copy of AccessibilityRotorEntryRange?(v82, v77, v11);
  v42 = v10;
  v79 = v41;
  v73 = v40;
  if (!v41)
  {
LABEL_47:
    v54 = *(v40 + 2);
    if (v79 == v54)
    {
      outlined consume of AccessibilityRotorEntryRange?(v82, v77, v11);

      outlined consume of AccessibilityRotorEntryRange?(v81, v75, v12);

      outlined consume of AccessibilityRotorEntryRange?(v82, v77, v11);

      if (!v72)
      {
        goto LABEL_6;
      }

LABEL_60:
      outlined destroy of AnyAccessibilityValue?(v2 + 104, &lazy cache variable for type metadata for AccessibilityListRotorEntry?);
      outlined init with copy of AccessibilityListRotorEntry(a1, v2 + 104);
      outlined assign with copy of AccessibilityListRotorEntry?((v2 + 29), (v2 + 14));
      goto LABEL_6;
    }

    if (v79 >= v54)
    {
      goto LABEL_63;
    }

    v55 = &v40[16 * v79 + 32];
    v56 = v55[1];
    if (v74 == 2)
    {

      v80 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedNSRange(from:)(v82);
      v58 = v57;
      v60 = v59;

      v61 = v82;
      v62 = v77;
      v63 = 2;
    }

    else
    {
      v64 = *v55;

      v80 = specialized String.resolveNSRange(_:in:)(v82, v77, v64, v56);
      v58 = v65;
      v60 = v66;

      v61 = v82;
      LOBYTE(v12) = v76;
      v62 = v77;
      v63 = v74;
    }

    outlined consume of AccessibilityRotorEntryRange?(v61, v62, v63);

    if (v60)
    {
      goto LABEL_65;
    }

    outlined consume of AccessibilityRotorEntryRange?(v81, v75, v12);

    outlined consume of AccessibilityRotorEntryRange?(v82, v77, v74);

    v77 = v58;
    v82 = v80;
    v29 = v68;
    if (v72)
    {
      goto LABEL_6;
    }

LABEL_58:
    if (v69 != v82 || v29 != v77)
    {
      goto LABEL_6;
    }

    goto LABEL_60;
  }

  v71 = a1;
  v43 = 0;
  v44 = (v40 + 40);
  while (1)
  {
    v47 = *v44;
    if (v11 == 2)
    {

      PlatformAccessibilityElementProtocol<>.accessibilityResolvedNSRange(from:)(v82);
      v46 = v45;

      if ((v46 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_39;
    }

    v48 = *(v44 - 1);
    type metadata accessor for AccessibilityRotorEntryElementSpecifier<AnyHashable>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
    lazy protocol witness table accessor for type String and conformance String();
    swift_bridgeObjectRetain_n();
    v49 = _NSRange.init<A, B>(_:in:)();
    v51 = v50;
    if (v49 == NSNotFound.getter())
    {

      v11 = v74;
      LOBYTE(v12) = v76;
      goto LABEL_39;
    }

    v24 = __OFADD__(v49, v51);
    v12 = v49 + v51;
    if (v24)
    {
      break;
    }

    v52 = MEMORY[0x18D00C850](v48, v47);
    v53 = [v52 length];

    v27 = v53 < v12;
    v11 = v74;
    LOBYTE(v12) = v76;
    if (!v27)
    {
LABEL_45:
      v79 = v43;
LABEL_46:
      a1 = v71;
      v40 = v73;
      goto LABEL_47;
    }

LABEL_39:
    ++v43;
    v44 += 2;
    if (v79 == v43)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  outlined consume of AccessibilityRotorEntryRange?(v81, v75, v12);

  __break(1u);
}

uint64_t outlined init with copy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AccessibilityRotorEntryElementSpecifier<AnyHashable>(0, &lazy cache variable for type metadata for AccessibilityRotorEntryElementSpecifier<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], type metadata accessor for AccessibilityRotorEntryElementSpecifier);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of AccessibilityNavigationRotorEntry?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for AccessibilityNavigationRotorEntry?);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void outlined consume of AccessibilityRotorEntryRange?(id a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    outlined consume of AccessibilityRotorEntryRange(a1, a2, a3);
  }
}

void type metadata accessor for AccessibilityRotorEntryElementSpecifier<AnyHashable>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<NSRunLoopMode>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of ScrollableCollection?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ContiguousArrayStorage<NSRunLoopMode>(0, &lazy cache variable for type metadata for ScrollableCollection?, type metadata accessor for ScrollableCollection, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t destroy for FirstVisitor #1 in AccessibilityRotorInfo.entry(at:)(uint64_t result)
{
  if (*(result + 88))
  {
    v1 = result;
    if (*(result + 48) <= 1u)
    {
      __swift_destroy_boxed_opaque_existential_1(result);
    }

    v2 = *(v1 + 80);
    if (v2 != 255)
    {
      outlined consume of AccessibilityRotorEntryRange(*(v1 + 64), *(v1 + 72), v2);
    }
  }

  return result;
}

uint64_t initializeWithCopy for FirstVisitor #1 in AccessibilityRotorInfo.entry(at:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 88))
  {
    v5 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v5;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    v7 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v7;
    return a1;
  }

  if (*(a2 + 48) == 1)
  {
    v8 = *(a2 + 24);
    *(a1 + 24) = v8;
    (**(v8 - 8))(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    v9 = 1;
LABEL_8:
    *(a1 + 48) = v9;
    goto LABEL_9;
  }

  if (*(a2 + 48))
  {
    v10 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v10;
    *(a1 + 32) = *(a2 + 32);
    v9 = *(a2 + 48);
    goto LABEL_8;
  }

  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))(a1, a2);
  *(a1 + 48) = 0;
LABEL_9:
  v11 = *(a2 + 56);
  *(a1 + 56) = v11;
  v12 = *(a2 + 80);
  v13 = v11;
  if (v12 == 255)
  {
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    v14 = *(a2 + 64);
    v15 = *(a2 + 72);
    outlined copy of AccessibilityRotorEntryRange(v14, v15, v12);
    *(a1 + 64) = v14;
    *(a1 + 72) = v15;
    *(a1 + 80) = v12;
  }

  v16 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v16;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t assignWithCopy for FirstVisitor #1 in AccessibilityRotorInfo.entry(at:)(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 11);
  if (*(a1 + 88))
  {
    if (v4)
    {
      if (a1 != a2)
      {
        outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(a1);
        if (*(a2 + 48) == 1)
        {
          v19 = *(a2 + 3);
          *(a1 + 24) = v19;
          *(a1 + 32) = *(a2 + 4);
          (**(v19 - 8))(a1, a2);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 48) = 1;
        }

        else if (*(a2 + 48))
        {
          v20 = *a2;
          v21 = a2[1];
          v22 = a2[2];
          *(a1 + 48) = *(a2 + 48);
          *(a1 + 16) = v21;
          *(a1 + 32) = v22;
          *a1 = v20;
        }

        else
        {
          v5 = *(a2 + 3);
          *(a1 + 24) = v5;
          *(a1 + 32) = *(a2 + 4);
          (**(v5 - 8))(a1, a2);
          *(a1 + 48) = 0;
        }
      }

      v23 = *(a1 + 56);
      v24 = *(a2 + 7);
      *(a1 + 56) = v24;
      v25 = v24;

      v26 = *(a2 + 80);
      if (*(a1 + 80) == 255)
      {
        if (v26 == 255)
        {
          v47 = a2[4];
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 64) = v47;
        }

        else
        {
          v32 = *(a2 + 8);
          v33 = *(a2 + 9);
          outlined copy of AccessibilityRotorEntryRange(v32, v33, *(a2 + 80));
          *(a1 + 64) = v32;
          *(a1 + 72) = v33;
          *(a1 + 80) = v26;
        }
      }

      else if (v26 == 255)
      {
        outlined destroy of AccessibilityRotorEntryRange(a1 + 64);
        v34 = *(a2 + 80);
        *(a1 + 64) = a2[4];
        *(a1 + 80) = v34;
      }

      else
      {
        v27 = *(a2 + 8);
        v28 = *(a2 + 9);
        outlined copy of AccessibilityRotorEntryRange(v27, v28, *(a2 + 80));
        v29 = *(a1 + 64);
        v30 = *(a1 + 72);
        *(a1 + 64) = v27;
        *(a1 + 72) = v28;
        v31 = *(a1 + 80);
        *(a1 + 80) = v26;
        outlined consume of AccessibilityRotorEntryRange(v29, v30, v31);
      }

      v48 = *(a2 + 12);
      *(a1 + 88) = *(a2 + 11);
      *(a1 + 96) = v48;

      v49 = *(a2 + 13);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 104) = v49;
    }

    else
    {
      outlined destroy of AccessibilityListRotorEntry(a1);
      v7 = a2[3];
      v9 = *a2;
      v8 = a2[1];
      *(a1 + 32) = a2[2];
      *(a1 + 48) = v7;
      *a1 = v9;
      *(a1 + 16) = v8;
      v11 = a2[5];
      v10 = a2[6];
      v12 = a2[4];
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 80) = v11;
      *(a1 + 96) = v10;
      *(a1 + 64) = v12;
    }
  }

  else if (v4)
  {
    if (*(a2 + 48) == 1)
    {
      v35 = *(a2 + 3);
      *(a1 + 24) = v35;
      *(a1 + 32) = *(a2 + 4);
      (**(v35 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = 1;
    }

    else if (*(a2 + 48))
    {
      v36 = *a2;
      v37 = a2[1];
      v38 = a2[2];
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 16) = v37;
      *(a1 + 32) = v38;
      *a1 = v36;
    }

    else
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 48) = 0;
    }

    v39 = *(a2 + 7);
    *(a1 + 56) = v39;
    v40 = *(a2 + 80);
    v41 = v39;
    if (v40 == 255)
    {
      v44 = a2[4];
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = v44;
    }

    else
    {
      v42 = *(a2 + 8);
      v43 = *(a2 + 9);
      outlined copy of AccessibilityRotorEntryRange(v42, v43, v40);
      *(a1 + 64) = v42;
      *(a1 + 72) = v43;
      *(a1 + 80) = v40;
    }

    v45 = *(a2 + 12);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 96) = v45;
    v46 = *(a2 + 13);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 104) = v46;
  }

  else
  {
    v13 = *a2;
    v14 = a2[1];
    v15 = a2[3];
    *(a1 + 32) = a2[2];
    *(a1 + 48) = v15;
    *a1 = v13;
    *(a1 + 16) = v14;
    v16 = a2[4];
    v17 = a2[5];
    v18 = a2[6];
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 80) = v17;
    *(a1 + 96) = v18;
    *(a1 + 64) = v16;
  }

  return a1;
}

uint64_t assignWithTake for FirstVisitor #1 in AccessibilityRotorInfo.entry(at:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88))
  {
    if (*(a2 + 88))
    {
      if (a1 != a2)
      {
        outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(a1);
        v4 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v4;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = *(a2 + 48);
      }

      v5 = *(a1 + 56);
      *(a1 + 56) = *(a2 + 56);

      v6 = *(a1 + 80);
      if (v6 != 255)
      {
        v7 = *(a2 + 80);
        if (v7 != 255)
        {
          v8 = *(a1 + 64);
          v9 = *(a1 + 72);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 80) = v7;
          outlined consume of AccessibilityRotorEntryRange(v8, v9, v6);
LABEL_12:
          *(a1 + 88) = *(a2 + 88);

          *(a1 + 104) = *(a2 + 104);
          *(a1 + 112) = *(a2 + 112);
          return a1;
        }

        outlined destroy of AccessibilityRotorEntryRange(a1 + 64);
      }

      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      goto LABEL_12;
    }

    outlined destroy of AccessibilityListRotorEntry(a1);
  }

  v10 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v10;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  v12 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v12;
  return a1;
}

uint64_t getEnumTagSinglePayload for FirstVisitor #1 in AccessibilityRotorInfo.entry(at:)(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
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

uint64_t storeEnumTagSinglePayload for FirstVisitor #1 in AccessibilityRotorInfo.entry(at:)(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

void destroy for MatchingVisitor #1 in AccessibilityRotorInfo.resolveEntry(for:range:on:resolveToLeaf:previous:next:)(uint64_t a1)
{
  outlined consume of Text.Suffix.Storage(*a1, *(a1 + 8), *(a1 + 16));

  v2 = *(a1 + 96);
  if (v2 != 255)
  {
    outlined consume of AccessibilityRotorEntryRange(*(a1 + 80), *(a1 + 88), v2);
  }

  if (*(a1 + 192))
  {
    if (*(a1 + 152) <= 1u)
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 104);
    }

    v3 = *(a1 + 184);
    if (v3 != 255)
    {
      outlined consume of AccessibilityRotorEntryRange(*(a1 + 168), *(a1 + 176), v3);
    }
  }

  if (*(a1 + 312))
  {
    if (*(a1 + 272) <= 1u)
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 224);
    }

    v4 = *(a1 + 304);
    if (v4 != 255)
    {
      outlined consume of AccessibilityRotorEntryRange(*(a1 + 288), *(a1 + 296), v4);
    }
  }

  if (*(a1 + 432))
  {
    if (*(a1 + 392) <= 1u)
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 344);
    }

    v5 = *(a1 + 424);
    if (v5 != 255)
    {
      outlined consume of AccessibilityRotorEntryRange(*(a1 + 408), *(a1 + 416), v5);
    }
  }

  if (*(a1 + 552))
  {
    if (*(a1 + 512) <= 1u)
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 464);
    }

    v6 = *(a1 + 544);
    if (v6 != 255)
    {
      outlined consume of AccessibilityRotorEntryRange(*(a1 + 528), *(a1 + 536), v6);
    }
  }
}

uint64_t initializeWithCopy for MatchingVisitor #1 in AccessibilityRotorInfo.resolveEntry(for:range:on:resolveToLeaf:previous:next:)(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Text.Suffix.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  v10 = *(a2 + 96);
  v11 = v8;
  v12 = v9;
  if (v10 == 255)
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v13 = *(a2 + 80);
    v14 = *(a2 + 88);
    outlined copy of AccessibilityRotorEntryRange(v13, v14, v10);
    *(a1 + 80) = v13;
    *(a1 + 88) = v14;
    *(a1 + 96) = v10;
  }

  *(a1 + 97) = *(a2 + 97);
  if (!*(a2 + 192))
  {
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    if (*(a2 + 312))
    {
      goto LABEL_16;
    }

LABEL_9:
    v16 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v16;
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 336) = *(a2 + 336);
    v17 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v17;
    v18 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v18;
    goto LABEL_26;
  }

  if (*(a2 + 152) == 1)
  {
    v19 = *(a2 + 128);
    *(a1 + 128) = v19;
    (**(v19 - 8))(a1 + 104, a2 + 104);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = 1;
  }

  else if (*(a2 + 152))
  {
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
  }

  else
  {
    v15 = *(a2 + 128);
    *(a1 + 128) = v15;
    (**(v15 - 8))(a1 + 104, a2 + 104);
    *(a1 + 152) = 0;
  }

  v20 = *(a2 + 160);
  *(a1 + 160) = v20;
  v21 = *(a2 + 184);
  v22 = v20;
  if (v21 == 255)
  {
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
  }

  else
  {
    v23 = *(a2 + 168);
    v24 = *(a2 + 176);
    outlined copy of AccessibilityRotorEntryRange(v23, v24, v21);
    *(a1 + 168) = v23;
    *(a1 + 176) = v24;
    *(a1 + 184) = v21;
  }

  v25 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v25;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  if (!*(a2 + 312))
  {
    goto LABEL_9;
  }

LABEL_16:
  if (*(a2 + 272) == 1)
  {
    v27 = *(a2 + 248);
    *(a1 + 248) = v27;
    (**(v27 - 8))(a1 + 224, a2 + 224);
    *(a1 + 264) = *(a2 + 264);
    v28 = 1;
LABEL_21:
    *(a1 + 272) = v28;
    goto LABEL_22;
  }

  if (*(a2 + 272))
  {
    v29 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v29;
    *(a1 + 256) = *(a2 + 256);
    v28 = *(a2 + 272);
    goto LABEL_21;
  }

  v26 = *(a2 + 248);
  *(a1 + 248) = v26;
  (**(v26 - 8))(a1 + 224, a2 + 224);
  *(a1 + 272) = 0;
LABEL_22:
  v30 = *(a2 + 280);
  *(a1 + 280) = v30;
  v31 = *(a2 + 304);
  v32 = v30;
  if (v31 == 255)
  {
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
  }

  else
  {
    v33 = *(a2 + 288);
    v34 = *(a2 + 296);
    outlined copy of AccessibilityRotorEntryRange(v33, v34, v31);
    *(a1 + 288) = v33;
    *(a1 + 296) = v34;
    *(a1 + 304) = v31;
  }

  v35 = *(a2 + 320);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = v35;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);

LABEL_26:
  v36 = (a1 + 344);
  v37 = (a2 + 344);
  if (!*(a2 + 432))
  {
    v39 = *(a2 + 424);
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 424) = v39;
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 456) = *(a2 + 456);
    v40 = *(a2 + 360);
    *v36 = *v37;
    *(a1 + 360) = v40;
    v41 = *(a2 + 392);
    *(a1 + 376) = *(a2 + 376);
    *(a1 + 392) = v41;
    if (*(a2 + 552))
    {
      goto LABEL_38;
    }

LABEL_31:
    v42 = *(a2 + 544);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 544) = v42;
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 576) = *(a2 + 576);
    v43 = *(a2 + 480);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 480) = v43;
    v44 = *(a2 + 512);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 512) = v44;
    return a1;
  }

  if (*(a2 + 392) == 1)
  {
    v45 = *(a2 + 368);
    *(a1 + 368) = v45;
    (**(v45 - 8))(v36, v37);
    *(a1 + 384) = *(a2 + 384);
    *(a1 + 392) = 1;
  }

  else if (*(a2 + 392))
  {
    v46 = *(a2 + 360);
    *v36 = *v37;
    *(a1 + 360) = v46;
    *(a1 + 376) = *(a2 + 376);
    *(a1 + 392) = *(a2 + 392);
  }

  else
  {
    v38 = *(a2 + 368);
    *(a1 + 368) = v38;
    (**(v38 - 8))(v36, v37);
    *(a1 + 392) = 0;
  }

  v47 = *(a2 + 400);
  *(a1 + 400) = v47;
  v48 = *(a2 + 424);
  v49 = v47;
  if (v48 == 255)
  {
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 424) = *(a2 + 424);
  }

  else
  {
    v50 = *(a2 + 408);
    v51 = *(a2 + 416);
    outlined copy of AccessibilityRotorEntryRange(v50, v51, v48);
    *(a1 + 408) = v50;
    *(a1 + 416) = v51;
    *(a1 + 424) = v48;
  }

  v52 = *(a2 + 440);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 440) = v52;
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);

  if (!*(a2 + 552))
  {
    goto LABEL_31;
  }

LABEL_38:
  if (*(a2 + 512) == 1)
  {
    v55 = *(a2 + 488);
    v56 = *(a2 + 496);
    *(a1 + 488) = v55;
    *(a1 + 496) = v56;
    (**(v55 - 8))(a1 + 464, a2 + 464);
    *(a1 + 504) = *(a2 + 504);
    v57 = 1;
LABEL_43:
    *(a1 + 512) = v57;
    goto LABEL_44;
  }

  if (*(a2 + 512))
  {
    v58 = *(a2 + 480);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 480) = v58;
    *(a1 + 496) = *(a2 + 496);
    v57 = *(a2 + 512);
    goto LABEL_43;
  }

  v53 = *(a2 + 488);
  v54 = *(a2 + 496);
  *(a1 + 488) = v53;
  *(a1 + 496) = v54;
  (**(v53 - 8))(a1 + 464, a2 + 464);
  *(a1 + 512) = 0;
LABEL_44:
  v59 = *(a2 + 520);
  *(a1 + 520) = v59;
  v60 = *(a2 + 544);
  v61 = v59;
  if (v60 == 255)
  {
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 544) = *(a2 + 544);
  }

  else
  {
    v62 = *(a2 + 528);
    v63 = *(a2 + 536);
    outlined copy of AccessibilityRotorEntryRange(v62, v63, v60);
    *(a1 + 528) = v62;
    *(a1 + 536) = v63;
    *(a1 + 544) = v60;
  }

  v64 = *(a2 + 560);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = v64;
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);

  return a1;
}

uint64_t assignWithCopy for MatchingVisitor #1 in AccessibilityRotorInfo.resolveEntry(for:range:on:resolveToLeaf:previous:next:)(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Text.Suffix.Storage(*a2, v5, v6);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  outlined consume of Text.Suffix.Storage(v8, v9, v10);
  v11 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v11;
  LOBYTE(v11) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v11;
  v12 = *(a2 + 64);
  v13 = *(a1 + 64);
  *(a1 + 64) = v12;
  v14 = v12;

  v15 = *(a2 + 72);
  v16 = *(a1 + 72);
  *(a1 + 72) = v15;
  v17 = v15;

  v18 = *(a2 + 96);
  if (*(a1 + 96) == 255)
  {
    if (v18 == 255)
    {
      v27 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 80) = v27;
    }

    else
    {
      v24 = *(a2 + 80);
      v25 = *(a2 + 88);
      outlined copy of AccessibilityRotorEntryRange(v24, v25, *(a2 + 96));
      *(a1 + 80) = v24;
      *(a1 + 88) = v25;
      *(a1 + 96) = v18;
    }
  }

  else if (v18 == 255)
  {
    outlined destroy of AccessibilityRotorEntryRange(a1 + 80);
    v26 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v26;
  }

  else
  {
    v19 = *(a2 + 80);
    v20 = *(a2 + 88);
    outlined copy of AccessibilityRotorEntryRange(v19, v20, *(a2 + 96));
    v21 = *(a1 + 80);
    v22 = *(a1 + 88);
    *(a1 + 80) = v19;
    *(a1 + 88) = v20;
    v23 = *(a1 + 96);
    *(a1 + 96) = v18;
    outlined consume of AccessibilityRotorEntryRange(v21, v22, v23);
  }

  *(a1 + 97) = *(a2 + 97);
  v28 = *(a2 + 192);
  if (*(a1 + 192))
  {
    if (v28)
    {
      if (a1 != a2)
      {
        outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(a1 + 104);
        if (*(a2 + 152) == 1)
        {
          v43 = *(a2 + 128);
          *(a1 + 128) = v43;
          *(a1 + 136) = *(a2 + 136);
          (**(v43 - 8))(a1 + 104, a2 + 104);
          *(a1 + 144) = *(a2 + 144);
          *(a1 + 152) = 1;
        }

        else if (*(a2 + 152))
        {
          v44 = *(a2 + 104);
          v45 = *(a2 + 120);
          v46 = *(a2 + 136);
          *(a1 + 152) = *(a2 + 152);
          *(a1 + 136) = v46;
          *(a1 + 120) = v45;
          *(a1 + 104) = v44;
        }

        else
        {
          v29 = *(a2 + 128);
          *(a1 + 128) = v29;
          *(a1 + 136) = *(a2 + 136);
          (**(v29 - 8))(a1 + 104, a2 + 104);
          *(a1 + 152) = 0;
        }
      }

      v47 = *(a1 + 160);
      v48 = *(a2 + 160);
      *(a1 + 160) = v48;
      v49 = v48;

      v50 = *(a2 + 184);
      if (*(a1 + 184) == 255)
      {
        if (v50 == 255)
        {
          v71 = *(a2 + 168);
          *(a1 + 184) = *(a2 + 184);
          *(a1 + 168) = v71;
        }

        else
        {
          v56 = *(a2 + 168);
          v57 = *(a2 + 176);
          outlined copy of AccessibilityRotorEntryRange(v56, v57, *(a2 + 184));
          *(a1 + 168) = v56;
          *(a1 + 176) = v57;
          *(a1 + 184) = v50;
        }
      }

      else if (v50 == 255)
      {
        outlined destroy of AccessibilityRotorEntryRange(a1 + 168);
        v58 = *(a2 + 184);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 184) = v58;
      }

      else
      {
        v51 = *(a2 + 168);
        v52 = *(a2 + 176);
        outlined copy of AccessibilityRotorEntryRange(v51, v52, *(a2 + 184));
        v53 = *(a1 + 168);
        v54 = *(a1 + 176);
        *(a1 + 168) = v51;
        *(a1 + 176) = v52;
        v55 = *(a1 + 184);
        *(a1 + 184) = v50;
        outlined consume of AccessibilityRotorEntryRange(v53, v54, v55);
      }

      v72 = *(a2 + 200);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = v72;

      v73 = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 208) = v73;
    }

    else
    {
      outlined destroy of AccessibilityListRotorEntry(a1 + 104);
      v31 = *(a2 + 120);
      v32 = *(a2 + 136);
      v33 = *(a2 + 152);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 152) = v33;
      *(a1 + 136) = v32;
      *(a1 + 120) = v31;
      v34 = *(a2 + 184);
      v35 = *(a2 + 200);
      v36 = *(a2 + 216);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 216) = v36;
      *(a1 + 200) = v35;
      *(a1 + 184) = v34;
    }
  }

  else if (v28)
  {
    if (*(a2 + 152) == 1)
    {
      v59 = *(a2 + 128);
      *(a1 + 128) = v59;
      *(a1 + 136) = *(a2 + 136);
      (**(v59 - 8))(a1 + 104, a2 + 104);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = 1;
    }

    else if (*(a2 + 152))
    {
      v60 = *(a2 + 104);
      v61 = *(a2 + 120);
      v62 = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 136) = v62;
      *(a1 + 120) = v61;
      *(a1 + 104) = v60;
    }

    else
    {
      v30 = *(a2 + 128);
      *(a1 + 128) = v30;
      *(a1 + 136) = *(a2 + 136);
      (**(v30 - 8))(a1 + 104, a2 + 104);
      *(a1 + 152) = 0;
    }

    v63 = *(a2 + 160);
    *(a1 + 160) = v63;
    v64 = *(a2 + 184);
    v65 = v63;
    if (v64 == 255)
    {
      v68 = *(a2 + 168);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 168) = v68;
    }

    else
    {
      v66 = *(a2 + 168);
      v67 = *(a2 + 176);
      outlined copy of AccessibilityRotorEntryRange(v66, v67, v64);
      *(a1 + 168) = v66;
      *(a1 + 176) = v67;
      *(a1 + 184) = v64;
    }

    v69 = *(a2 + 200);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = v69;
    v70 = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 208) = v70;
  }

  else
  {
    v37 = *(a2 + 104);
    v38 = *(a2 + 120);
    v39 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v39;
    *(a1 + 120) = v38;
    *(a1 + 104) = v37;
    v40 = *(a2 + 168);
    v41 = *(a2 + 184);
    v42 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v42;
    *(a1 + 184) = v41;
    *(a1 + 168) = v40;
  }

  v74 = *(a2 + 312);
  if (*(a1 + 312))
  {
    if (v74)
    {
      if (a1 != a2)
      {
        outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(a1 + 224);
        if (*(a2 + 272) == 1)
        {
          v89 = *(a2 + 248);
          *(a1 + 248) = v89;
          *(a1 + 256) = *(a2 + 256);
          (**(v89 - 8))(a1 + 224, a2 + 224);
          *(a1 + 264) = *(a2 + 264);
          *(a1 + 272) = 1;
        }

        else if (*(a2 + 272))
        {
          v90 = *(a2 + 224);
          v91 = *(a2 + 240);
          v92 = *(a2 + 256);
          *(a1 + 272) = *(a2 + 272);
          *(a1 + 240) = v91;
          *(a1 + 256) = v92;
          *(a1 + 224) = v90;
        }

        else
        {
          v75 = *(a2 + 248);
          *(a1 + 248) = v75;
          *(a1 + 256) = *(a2 + 256);
          (**(v75 - 8))(a1 + 224, a2 + 224);
          *(a1 + 272) = 0;
        }
      }

      v93 = *(a1 + 280);
      v94 = *(a2 + 280);
      *(a1 + 280) = v94;
      v95 = v94;

      v96 = *(a2 + 304);
      if (*(a1 + 304) == 255)
      {
        if (v96 == 255)
        {
          v117 = *(a2 + 288);
          *(a1 + 304) = *(a2 + 304);
          *(a1 + 288) = v117;
        }

        else
        {
          v102 = *(a2 + 288);
          v103 = *(a2 + 296);
          outlined copy of AccessibilityRotorEntryRange(v102, v103, *(a2 + 304));
          *(a1 + 288) = v102;
          *(a1 + 296) = v103;
          *(a1 + 304) = v96;
        }
      }

      else if (v96 == 255)
      {
        outlined destroy of AccessibilityRotorEntryRange(a1 + 288);
        v104 = *(a2 + 304);
        *(a1 + 288) = *(a2 + 288);
        *(a1 + 304) = v104;
      }

      else
      {
        v97 = *(a2 + 288);
        v98 = *(a2 + 296);
        outlined copy of AccessibilityRotorEntryRange(v97, v98, *(a2 + 304));
        v99 = *(a1 + 288);
        v100 = *(a1 + 296);
        *(a1 + 288) = v97;
        *(a1 + 296) = v98;
        v101 = *(a1 + 304);
        *(a1 + 304) = v96;
        outlined consume of AccessibilityRotorEntryRange(v99, v100, v101);
      }

      v118 = *(a2 + 320);
      *(a1 + 312) = *(a2 + 312);
      *(a1 + 320) = v118;

      v119 = *(a2 + 328);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 328) = v119;
    }

    else
    {
      outlined destroy of AccessibilityListRotorEntry(a1 + 224);
      v77 = *(a2 + 272);
      v79 = *(a2 + 224);
      v78 = *(a2 + 240);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 272) = v77;
      *(a1 + 224) = v79;
      *(a1 + 240) = v78;
      v81 = *(a2 + 304);
      v80 = *(a2 + 320);
      v82 = *(a2 + 288);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 304) = v81;
      *(a1 + 320) = v80;
      *(a1 + 288) = v82;
    }
  }

  else if (v74)
  {
    if (*(a2 + 272) == 1)
    {
      v105 = *(a2 + 248);
      *(a1 + 248) = v105;
      *(a1 + 256) = *(a2 + 256);
      (**(v105 - 8))(a1 + 224, a2 + 224);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 272) = 1;
    }

    else if (*(a2 + 272))
    {
      v106 = *(a2 + 224);
      v107 = *(a2 + 240);
      v108 = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 240) = v107;
      *(a1 + 256) = v108;
      *(a1 + 224) = v106;
    }

    else
    {
      v76 = *(a2 + 248);
      *(a1 + 248) = v76;
      *(a1 + 256) = *(a2 + 256);
      (**(v76 - 8))(a1 + 224, a2 + 224);
      *(a1 + 272) = 0;
    }

    v109 = *(a2 + 280);
    *(a1 + 280) = v109;
    v110 = *(a2 + 304);
    v111 = v109;
    if (v110 == 255)
    {
      v114 = *(a2 + 288);
      *(a1 + 304) = *(a2 + 304);
      *(a1 + 288) = v114;
    }

    else
    {
      v112 = *(a2 + 288);
      v113 = *(a2 + 296);
      outlined copy of AccessibilityRotorEntryRange(v112, v113, v110);
      *(a1 + 288) = v112;
      *(a1 + 296) = v113;
      *(a1 + 304) = v110;
    }

    v115 = *(a2 + 320);
    *(a1 + 312) = *(a2 + 312);
    *(a1 + 320) = v115;
    v116 = *(a2 + 328);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 328) = v116;
  }

  else
  {
    v83 = *(a2 + 224);
    v84 = *(a2 + 240);
    v85 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v85;
    *(a1 + 224) = v83;
    *(a1 + 240) = v84;
    v86 = *(a2 + 288);
    v87 = *(a2 + 304);
    v88 = *(a2 + 320);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 304) = v87;
    *(a1 + 320) = v88;
    *(a1 + 288) = v86;
  }

  v120 = (a1 + 344);
  v121 = (a2 + 344);
  v122 = *(a2 + 432);
  if (*(a1 + 432))
  {
    if (v122)
    {
      if (a1 != a2)
      {
        outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(a1 + 344);
        if (*(a2 + 392) == 1)
        {
          v137 = *(a2 + 368);
          *(a1 + 368) = v137;
          *(a1 + 376) = *(a2 + 376);
          (**(v137 - 8))(a1 + 344, a2 + 344);
          *(a1 + 384) = *(a2 + 384);
          *(a1 + 392) = 1;
        }

        else if (*(a2 + 392))
        {
          v138 = *v121;
          v139 = *(a2 + 360);
          v140 = *(a2 + 376);
          *(a1 + 392) = *(a2 + 392);
          *(a1 + 360) = v139;
          *(a1 + 376) = v140;
          *v120 = v138;
        }

        else
        {
          v123 = *(a2 + 368);
          *(a1 + 368) = v123;
          *(a1 + 376) = *(a2 + 376);
          (**(v123 - 8))(a1 + 344, a2 + 344);
          *(a1 + 392) = 0;
        }
      }

      v141 = *(a1 + 400);
      v142 = *(a2 + 400);
      *(a1 + 400) = v142;
      v143 = v142;

      v144 = (a1 + 408);
      v145 = (a2 + 408);
      v146 = *(a2 + 424);
      if (*(a1 + 424) == 255)
      {
        if (v146 == 255)
        {
          v167 = *v145;
          *(a1 + 424) = *(a2 + 424);
          *v144 = v167;
        }

        else
        {
          v152 = *(a2 + 408);
          v153 = *(a2 + 416);
          outlined copy of AccessibilityRotorEntryRange(v152, v153, *(a2 + 424));
          *(a1 + 408) = v152;
          *(a1 + 416) = v153;
          *(a1 + 424) = v146;
        }
      }

      else if (v146 == 255)
      {
        outlined destroy of AccessibilityRotorEntryRange(a1 + 408);
        v154 = *(a2 + 424);
        *v144 = *v145;
        *(a1 + 424) = v154;
      }

      else
      {
        v147 = *(a2 + 408);
        v148 = *(a2 + 416);
        outlined copy of AccessibilityRotorEntryRange(v147, v148, *(a2 + 424));
        v149 = *(a1 + 408);
        v150 = *(a1 + 416);
        *(a1 + 408) = v147;
        *(a1 + 416) = v148;
        v151 = *(a1 + 424);
        *(a1 + 424) = v146;
        outlined consume of AccessibilityRotorEntryRange(v149, v150, v151);
      }

      v168 = *(a2 + 440);
      *(a1 + 432) = *(a2 + 432);
      *(a1 + 440) = v168;

      v169 = *(a2 + 448);
      *(a1 + 456) = *(a2 + 456);
      *(a1 + 448) = v169;
    }

    else
    {
      outlined destroy of AccessibilityListRotorEntry(a1 + 344);
      v125 = *(a2 + 392);
      v127 = *v121;
      v126 = *(a2 + 360);
      *(a1 + 376) = *(a2 + 376);
      *(a1 + 392) = v125;
      *v120 = v127;
      *(a1 + 360) = v126;
      v129 = *(a2 + 424);
      v128 = *(a2 + 440);
      v130 = *(a2 + 408);
      *(a1 + 456) = *(a2 + 456);
      *(a1 + 424) = v129;
      *(a1 + 440) = v128;
      *(a1 + 408) = v130;
    }
  }

  else if (v122)
  {
    if (*(a2 + 392) == 1)
    {
      v155 = *(a2 + 368);
      *(a1 + 368) = v155;
      *(a1 + 376) = *(a2 + 376);
      (**(v155 - 8))(a1 + 344, a2 + 344);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 392) = 1;
    }

    else if (*(a2 + 392))
    {
      v156 = *v121;
      v157 = *(a2 + 360);
      v158 = *(a2 + 376);
      *(a1 + 392) = *(a2 + 392);
      *(a1 + 360) = v157;
      *(a1 + 376) = v158;
      *v120 = v156;
    }

    else
    {
      v124 = *(a2 + 368);
      *(a1 + 368) = v124;
      *(a1 + 376) = *(a2 + 376);
      (**(v124 - 8))(a1 + 344, a2 + 344);
      *(a1 + 392) = 0;
    }

    v159 = *(a2 + 400);
    *(a1 + 400) = v159;
    v160 = *(a2 + 424);
    v161 = v159;
    if (v160 == 255)
    {
      v164 = *(a2 + 408);
      *(a1 + 424) = *(a2 + 424);
      *(a1 + 408) = v164;
    }

    else
    {
      v162 = *(a2 + 408);
      v163 = *(a2 + 416);
      outlined copy of AccessibilityRotorEntryRange(v162, v163, v160);
      *(a1 + 408) = v162;
      *(a1 + 416) = v163;
      *(a1 + 424) = v160;
    }

    v165 = *(a2 + 440);
    *(a1 + 432) = *(a2 + 432);
    *(a1 + 440) = v165;
    v166 = *(a2 + 448);
    *(a1 + 456) = *(a2 + 456);
    *(a1 + 448) = v166;
  }

  else
  {
    v131 = *v121;
    v132 = *(a2 + 360);
    v133 = *(a2 + 392);
    *(a1 + 376) = *(a2 + 376);
    *(a1 + 392) = v133;
    *v120 = v131;
    *(a1 + 360) = v132;
    v134 = *(a2 + 408);
    v135 = *(a2 + 424);
    v136 = *(a2 + 440);
    *(a1 + 456) = *(a2 + 456);
    *(a1 + 424) = v135;
    *(a1 + 440) = v136;
    *(a1 + 408) = v134;
  }

  v170 = *(a2 + 552);
  if (*(a1 + 552))
  {
    if (v170)
    {
      if (a1 != a2)
      {
        outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(a1 + 464);
        if (*(a2 + 512) == 1)
        {
          v185 = *(a2 + 488);
          *(a1 + 488) = v185;
          *(a1 + 496) = *(a2 + 496);
          (**(v185 - 8))(a1 + 464, a2 + 464);
          *(a1 + 504) = *(a2 + 504);
          *(a1 + 512) = 1;
        }

        else if (*(a2 + 512))
        {
          v186 = *(a2 + 464);
          v187 = *(a2 + 480);
          v188 = *(a2 + 496);
          *(a1 + 512) = *(a2 + 512);
          *(a1 + 480) = v187;
          *(a1 + 496) = v188;
          *(a1 + 464) = v186;
        }

        else
        {
          v171 = *(a2 + 488);
          *(a1 + 488) = v171;
          *(a1 + 496) = *(a2 + 496);
          (**(v171 - 8))(a1 + 464, a2 + 464);
          *(a1 + 512) = 0;
        }
      }

      v189 = *(a1 + 520);
      v190 = *(a2 + 520);
      *(a1 + 520) = v190;
      v191 = v190;

      v192 = *(a2 + 544);
      if (*(a1 + 544) == 255)
      {
        if (v192 == 255)
        {
          v213 = *(a2 + 528);
          *(a1 + 544) = *(a2 + 544);
          *(a1 + 528) = v213;
        }

        else
        {
          v198 = *(a2 + 528);
          v199 = *(a2 + 536);
          outlined copy of AccessibilityRotorEntryRange(v198, v199, *(a2 + 544));
          *(a1 + 528) = v198;
          *(a1 + 536) = v199;
          *(a1 + 544) = v192;
        }
      }

      else if (v192 == 255)
      {
        outlined destroy of AccessibilityRotorEntryRange(a1 + 528);
        v200 = *(a2 + 544);
        *(a1 + 528) = *(a2 + 528);
        *(a1 + 544) = v200;
      }

      else
      {
        v193 = *(a2 + 528);
        v194 = *(a2 + 536);
        outlined copy of AccessibilityRotorEntryRange(v193, v194, *(a2 + 544));
        v195 = *(a1 + 528);
        v196 = *(a1 + 536);
        *(a1 + 528) = v193;
        *(a1 + 536) = v194;
        v197 = *(a1 + 544);
        *(a1 + 544) = v192;
        outlined consume of AccessibilityRotorEntryRange(v195, v196, v197);
      }

      v214 = *(a2 + 560);
      *(a1 + 552) = *(a2 + 552);
      *(a1 + 560) = v214;

      v215 = *(a2 + 568);
      *(a1 + 576) = *(a2 + 576);
      *(a1 + 568) = v215;
    }

    else
    {
      outlined destroy of AccessibilityListRotorEntry(a1 + 464);
      v173 = *(a2 + 512);
      v175 = *(a2 + 464);
      v174 = *(a2 + 480);
      *(a1 + 496) = *(a2 + 496);
      *(a1 + 512) = v173;
      *(a1 + 464) = v175;
      *(a1 + 480) = v174;
      v177 = *(a2 + 544);
      v176 = *(a2 + 560);
      v178 = *(a2 + 528);
      *(a1 + 576) = *(a2 + 576);
      *(a1 + 544) = v177;
      *(a1 + 560) = v176;
      *(a1 + 528) = v178;
    }
  }

  else if (v170)
  {
    if (*(a2 + 512) == 1)
    {
      v201 = *(a2 + 488);
      *(a1 + 488) = v201;
      *(a1 + 496) = *(a2 + 496);
      (**(v201 - 8))(a1 + 464, a2 + 464);
      *(a1 + 504) = *(a2 + 504);
      *(a1 + 512) = 1;
    }

    else if (*(a2 + 512))
    {
      v202 = *(a2 + 464);
      v203 = *(a2 + 480);
      v204 = *(a2 + 496);
      *(a1 + 512) = *(a2 + 512);
      *(a1 + 480) = v203;
      *(a1 + 496) = v204;
      *(a1 + 464) = v202;
    }

    else
    {
      v172 = *(a2 + 488);
      *(a1 + 488) = v172;
      *(a1 + 496) = *(a2 + 496);
      (**(v172 - 8))(a1 + 464, a2 + 464);
      *(a1 + 512) = 0;
    }

    v205 = *(a2 + 520);
    *(a1 + 520) = v205;
    v206 = *(a2 + 544);
    v207 = v205;
    if (v206 == 255)
    {
      v210 = *(a2 + 528);
      *(a1 + 544) = *(a2 + 544);
      *(a1 + 528) = v210;
    }

    else
    {
      v208 = *(a2 + 528);
      v209 = *(a2 + 536);
      outlined copy of AccessibilityRotorEntryRange(v208, v209, v206);
      *(a1 + 528) = v208;
      *(a1 + 536) = v209;
      *(a1 + 544) = v206;
    }

    v211 = *(a2 + 560);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 560) = v211;
    v212 = *(a2 + 568);
    *(a1 + 576) = *(a2 + 576);
    *(a1 + 568) = v212;
  }

  else
  {
    v179 = *(a2 + 464);
    v180 = *(a2 + 480);
    v181 = *(a2 + 512);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 512) = v181;
    *(a1 + 464) = v179;
    *(a1 + 480) = v180;
    v182 = *(a2 + 528);
    v183 = *(a2 + 544);
    v184 = *(a2 + 560);
    *(a1 + 576) = *(a2 + 576);
    *(a1 + 544) = v183;
    *(a1 + 560) = v184;
    *(a1 + 528) = v182;
  }

  return a1;
}

uint64_t assignWithTake for MatchingVisitor #1 in AccessibilityRotorInfo.resolveEntry(for:range:on:resolveToLeaf:previous:next:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  outlined consume of Text.Suffix.Storage(v4, v5, v6);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v8 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  v9 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  v10 = *(a1 + 96);
  if (v10 != 255)
  {
    v11 = *(a2 + 96);
    if (v11 != 255)
    {
      v12 = *(a1 + 80);
      v13 = *(a1 + 88);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = v11;
      outlined consume of AccessibilityRotorEntryRange(v12, v13, v10);
      goto LABEL_6;
    }

    outlined destroy of AccessibilityRotorEntryRange(a1 + 80);
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
LABEL_6:
  v14 = (a2 + 312);
  *(a1 + 97) = *(a2 + 97);
  if (!*(a1 + 192))
  {
    goto LABEL_14;
  }

  if (!*(a2 + 192))
  {
    outlined destroy of AccessibilityListRotorEntry(a1 + 104);
LABEL_14:
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    if (!*(a1 + 312))
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  if (a1 != a2)
  {
    outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(a1 + 104);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
  }

  v15 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);

  v16 = *(a1 + 184);
  if (v16 != 255)
  {
    v17 = *(a2 + 184);
    if (v17 != 255)
    {
      v18 = *(a1 + 168);
      v19 = *(a1 + 176);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 184) = v17;
      outlined consume of AccessibilityRotorEntryRange(v18, v19, v16);
      goto LABEL_18;
    }

    outlined destroy of AccessibilityRotorEntryRange(a1 + 168);
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
LABEL_18:
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  if (!*(a1 + 312))
  {
LABEL_26:
    v26 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v26;
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 336) = *(a2 + 336);
    v27 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v27;
    v28 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v28;
    goto LABEL_30;
  }

LABEL_19:
  if (!*v14)
  {
    outlined destroy of AccessibilityListRotorEntry(a1 + 224);
    goto LABEL_26;
  }

  if (a1 != a2)
  {
    outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(a1 + 224);
    v20 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v20;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
  }

  v21 = *(a1 + 280);
  *(a1 + 280) = *(a2 + 280);

  v22 = *(a1 + 304);
  if (v22 == 255)
  {
    goto LABEL_28;
  }

  v23 = *(a2 + 304);
  if (v23 == 255)
  {
    outlined destroy of AccessibilityRotorEntryRange(a1 + 288);
LABEL_28:
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    goto LABEL_29;
  }

  v24 = *(a1 + 288);
  v25 = *(a1 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v23;
  outlined consume of AccessibilityRotorEntryRange(v24, v25, v22);
LABEL_29:
  *(a1 + 312) = *v14;

  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
LABEL_30:
  v29 = (a1 + 344);
  v30 = (a2 + 344);
  if (*(a1 + 432))
  {
    if (*(a2 + 432))
    {
      if (a1 != a2)
      {
        outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(a1 + 344);
        v31 = *(a2 + 360);
        *v29 = *v30;
        *(a1 + 360) = v31;
        *(a1 + 376) = *(a2 + 376);
        *(a1 + 392) = *(a2 + 392);
      }

      v32 = *(a1 + 400);
      *(a1 + 400) = *(a2 + 400);

      v33 = *(a1 + 424);
      if (v33 != 255)
      {
        v34 = *(a2 + 424);
        if (v34 != 255)
        {
          v35 = *(a1 + 408);
          v36 = *(a1 + 416);
          *(a1 + 408) = *(a2 + 408);
          *(a1 + 424) = v34;
          outlined consume of AccessibilityRotorEntryRange(v35, v36, v33);
          goto LABEL_42;
        }

        outlined destroy of AccessibilityRotorEntryRange(a1 + 408);
      }

      *(a1 + 408) = *(a2 + 408);
      *(a1 + 424) = *(a2 + 424);
LABEL_42:
      *(a1 + 432) = *(a2 + 432);

      *(a1 + 448) = *(a2 + 448);
      *(a1 + 456) = *(a2 + 456);
      if (!*(a1 + 552))
      {
        goto LABEL_50;
      }

      goto LABEL_43;
    }

    outlined destroy of AccessibilityListRotorEntry(a1 + 344);
  }

  v37 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v37;
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 456) = *(a2 + 456);
  v38 = *(a2 + 360);
  *v29 = *v30;
  *(a1 + 360) = v38;
  v39 = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 392) = v39;
  if (!*(a1 + 552))
  {
    goto LABEL_50;
  }

LABEL_43:
  if (*(a2 + 552))
  {
    if (a1 != a2)
    {
      outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(a1 + 464);
      v40 = *(a2 + 480);
      *(a1 + 464) = *(a2 + 464);
      *(a1 + 480) = v40;
      *(a1 + 496) = *(a2 + 496);
      *(a1 + 512) = *(a2 + 512);
    }

    v41 = *(a1 + 520);
    *(a1 + 520) = *(a2 + 520);

    v42 = *(a1 + 544);
    if (v42 != 255)
    {
      v43 = *(a2 + 544);
      if (v43 != 255)
      {
        v44 = *(a1 + 528);
        v45 = *(a1 + 536);
        *(a1 + 528) = *(a2 + 528);
        *(a1 + 544) = v43;
        outlined consume of AccessibilityRotorEntryRange(v44, v45, v42);
LABEL_53:
        *(a1 + 552) = *(a2 + 552);

        *(a1 + 568) = *(a2 + 568);
        *(a1 + 576) = *(a2 + 576);
        return a1;
      }

      outlined destroy of AccessibilityRotorEntryRange(a1 + 528);
    }

    *(a1 + 528) = *(a2 + 528);
    *(a1 + 544) = *(a2 + 544);
    goto LABEL_53;
  }

  outlined destroy of AccessibilityListRotorEntry(a1 + 464);
LABEL_50:
  v46 = *(a2 + 544);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = v46;
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 576) = *(a2 + 576);
  v47 = *(a2 + 480);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = v47;
  v48 = *(a2 + 512);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = v48;
  return a1;
}

uint64_t getEnumTagSinglePayload for MatchingVisitor #1 in AccessibilityRotorInfo.resolveEntry(for:range:on:resolveToLeaf:previous:next:)(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 577))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MatchingVisitor #1 in AccessibilityRotorInfo.resolveEntry(for:range:on:resolveToLeaf:previous:next:)(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 568) = 0;
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
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 576) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 577) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 577) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for AccessibilityNavigationRotorEntry(uint64_t a1)
{
  if (*(a1 + 48) <= 1u)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v2 = *(a1 + 80);
  if (v2 != 255)
  {
    outlined consume of AccessibilityRotorEntryRange(*(a1 + 64), *(a1 + 72), v2);
  }

  v3 = *(a1 + 128);
}

uint64_t initializeWithCopy for AccessibilityNavigationRotorEntry(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    v6 = 1;
  }

  else
  {
    if (!*(a2 + 48))
    {
      v4 = *(a2 + 24);
      *(a1 + 24) = v4;
      (**(v4 - 8))(a1, a2);
      *(a1 + 48) = 0;
      goto LABEL_7;
    }

    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(a2 + 32);
    v6 = *(a2 + 48);
  }

  *(a1 + 48) = v6;
LABEL_7:
  v8 = *(a2 + 56);
  *(a1 + 56) = v8;
  v9 = *(a2 + 80);
  v10 = v8;
  if (v9 == 255)
  {
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    v11 = *(a2 + 64);
    v12 = *(a2 + 72);
    outlined copy of AccessibilityRotorEntryRange(v11, v12, v9);
    *(a1 + 64) = v11;
    *(a1 + 72) = v12;
    *(a1 + 80) = v9;
  }

  v13 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v13;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v15 = *(a2 + 120);
  v14 = *(a2 + 128);
  *(a1 + 120) = v15;
  *(a1 + 128) = v14;

  v16 = v15;
  v17 = v14;
  return a1;
}

uint64_t assignWithCopy for AccessibilityNavigationRotorEntry(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(a1);
    if (*(a2 + 48) == 1)
    {
      v5 = *(a2 + 3);
      *(a1 + 24) = v5;
      *(a1 + 32) = *(a2 + 4);
      (**(v5 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = 1;
    }

    else if (*(a2 + 48))
    {
      v6 = *a2;
      v7 = a2[1];
      v8 = a2[2];
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 16) = v7;
      *(a1 + 32) = v8;
      *a1 = v6;
    }

    else
    {
      v4 = *(a2 + 3);
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      *(a1 + 48) = 0;
    }
  }

  v9 = *(a1 + 56);
  v10 = *(a2 + 7);
  *(a1 + 56) = v10;
  v11 = v10;

  v12 = *(a2 + 80);
  if (*(a1 + 80) == 255)
  {
    if (v12 == 255)
    {
      v21 = a2[4];
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = v21;
    }

    else
    {
      v18 = *(a2 + 8);
      v19 = *(a2 + 9);
      outlined copy of AccessibilityRotorEntryRange(v18, v19, *(a2 + 80));
      *(a1 + 64) = v18;
      *(a1 + 72) = v19;
      *(a1 + 80) = v12;
    }
  }

  else if (v12 == 255)
  {
    outlined destroy of AccessibilityRotorEntryRange(a1 + 64);
    v20 = *(a2 + 80);
    *(a1 + 64) = a2[4];
    *(a1 + 80) = v20;
  }

  else
  {
    v13 = *(a2 + 8);
    v14 = *(a2 + 9);
    outlined copy of AccessibilityRotorEntryRange(v13, v14, *(a2 + 80));
    v15 = *(a1 + 64);
    v16 = *(a1 + 72);
    *(a1 + 64) = v13;
    *(a1 + 72) = v14;
    v17 = *(a1 + 80);
    *(a1 + 80) = v12;
    outlined consume of AccessibilityRotorEntryRange(v15, v16, v17);
  }

  v22 = *(a2 + 12);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 96) = v22;

  v23 = *(a2 + 13);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v23;
  v24 = *(a2 + 15);
  v25 = *(a1 + 120);
  *(a1 + 120) = v24;
  v26 = v24;

  v27 = *(a1 + 128);
  v28 = *(a2 + 16);
  *(a1 + 128) = v28;
  v29 = v28;

  return a1;
}

uint64_t assignWithTake for AccessibilityNavigationRotorEntry(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(a1);
    v4 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v4;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
  }

  v5 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  v6 = *(a1 + 80);
  if (v6 == 255)
  {
    goto LABEL_7;
  }

  v7 = *(a2 + 80);
  if (v7 == 255)
  {
    outlined destroy of AccessibilityRotorEntryRange(a1 + 64);
LABEL_7:
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_8;
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  outlined consume of AccessibilityRotorEntryRange(v8, v9, v6);
LABEL_8:
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v10 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  v11 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityNavigationRotorEntry(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityNavigationRotorEntry(uint64_t result, int a2, int a3)
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
      *(result + 88) = (a2 - 1);
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

uint64_t outlined assign with copy of AccessibilityListRotorEntry?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for AccessibilityListRotorEntry?);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in closure #1 in ModifierKeySource.values.getter(uint64_t a1)
{
  type metadata accessor for AsyncStream<EventModifiers>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for AsyncStream<EventModifiers>.Continuation.YieldResult, MEMORY[0x1E69E8638]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v8 - v5;
  v8[1] = a1;
  type metadata accessor for AsyncStream<EventModifiers>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for AsyncStream<EventModifiers>.Continuation, MEMORY[0x1E69E8660]);
  AsyncStream.Continuation.yield(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t specialized closure #2 in closure #1 in ModifierKeySource.values.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v4 + 16))(v6, a2, v3);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  (*(v4 + 32))(v13 + v12, v6, v3);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for specialized closure #1 in closure #2 in closure #1 in ModifierKeySource.values.getter, v13);
}

uint64_t specialized closure #1 in closure #2 in closure #1 in ModifierKeySource.values.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #2 in closure #1 in ModifierKeySource.values.getter, v6, v5);
}

uint64_t specialized closure #1 in closure #2 in closure #1 in ModifierKeySource.values.getter()
{

  if (one-time initialization token for monitor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = static DefaultModifierKeySource.monitor;
  v6 = *(static DefaultModifierKeySource.monitor + 16);

  v3 = specialized Dictionary.removeValue(forKey:)(v1);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v3);
  *(v2 + 16) = v6;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t ModifierKeyMonitor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in closure #1 in ModifierKeySource.values.getter(uint64_t a1)
{
  type metadata accessor for AsyncStream<EventModifiers>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for AsyncStream<EventModifiers>.Continuation, MEMORY[0x1E69E8660]);

  return closure #1 in closure #1 in ModifierKeySource.values.getter(a1);
}

uint64_t partial apply for specialized closure #2 in closure #1 in ModifierKeySource.values.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return specialized closure #2 in closure #1 in ModifierKeySource.values.getter(a1, v4);
}

uint64_t partial apply for specialized closure #1 in closure #2 in closure #1 in ModifierKeySource.values.getter(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return specialized closure #1 in closure #2 in closure #1 in ModifierKeySource.values.getter(a1, v6, v7, v1 + v5);
}

void specialized Sequence.forEach(_:)(unint64_t a1, void *a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_51:
    v3 = __CocoaSet.count.getter();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = v2 & 0xC000000000000001;
      v6 = v2 & 0xFFFFFFFFFFFFFF8;
      v43 = v2;
      v44 = v2 & 0xC000000000000001;
      v45 = v3;
      v46 = v2 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v5)
        {
          v7 = MEMORY[0x18D00E9C0](v4, v2);
          v8 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_49;
          }

          v7 = *(v2 + 8 * v4 + 32);
          v8 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }
        }

        v48 = v8;
        v9 = v7;
        AccessibilityNode.attachment.getter(&aBlock);
        outlined init with copy of AccessibilityProperties(&aBlock, &v55);
        outlined destroy of AccessibilityAttachment(&aBlock);
        v73 = v63;
        v74 = v64;
        v75 = v65;
        v76 = v66;
        v69 = v59;
        v70 = v60;
        v71 = v61;
        v72 = v62;
        v67 = v57;
        v68 = v58;
        outlined init with copy of AnyAccessibilityValue?(&v67, &aBlock, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?);
        outlined destroy of AccessibilityProperties(&v55);
        v77[6] = v73;
        v77[7] = v74;
        v77[8] = v75;
        v78 = v76;
        v77[2] = v69;
        v77[3] = v70;
        v77[4] = v71;
        v77[5] = v72;
        v77[0] = v67;
        v77[1] = v68;
        if (_s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(v77) == 1)
        {
        }

        else
        {
          outlined destroy of AnyAccessibilityValue?(&v67, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?);
          v47 = v9;
          AccessibilityNode.attachment.getter(&aBlock);
          outlined init with copy of AccessibilityProperties(&aBlock, &v55);
          outlined destroy of AccessibilityAttachment(&aBlock);
          v10 = *(&v56 + 1);

          v11 = outlined destroy of AccessibilityProperties(&v55);
          if (v10)
          {
            v12 = v2;
            if (*(v10 + 2))
            {
              v13 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x338))(v11);
              if (v13)
              {
                v14 = v13;
                ObjectType = swift_getObjectType();
                v16 = swift_conformsToProtocol2();
                if (v16)
                {
                  v17 = *(v9 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
                  *&aBlock = *(v9 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
                  *(&aBlock + 1) = v17;
                  v18 = *(v16 + 8);
                  v19 = v16;

                  v20 = v18(&aBlock, ObjectType, v19);

                  if (v20)
                  {
                    v21 = *(v10 + 2);
                    v22 = *(v20 + 16);
                    v23 = v21 + v22;
                    v5 = v44;
                    if (__OFADD__(v21, v22))
                    {
                      __break(1u);
                      return;
                    }

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *&aBlock = v10;
                    if (!isUniquelyReferenced_nonNull_native || v23 > *(v10 + 3) >> 1)
                    {
                      if (v21 <= v23)
                      {
                        v25 = v21 + v22;
                      }

                      else
                      {
                        v25 = v21;
                      }

                      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v25, 1, v10);
                      *&aBlock = v10;
                    }

                    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, v22, v20);

                    v12 = v43;
                  }

                  else
                  {

                    v12 = v43;
                    v5 = v44;
                  }
                }

                else
                {
                }
              }
            }

            else
            {

              v10 = 0;
            }
          }

          else
          {
            v12 = v2;
          }

          v26 = v5;
          LODWORD(aBlock) = 2;
          if (one-time initialization token for comma != -1)
          {
            swift_once();
          }

          v27 = specialized AccessibilityNode.resolvedAttributedTexts(_:options:separator:)(v10);

          if (v27)
          {
            LOBYTE(v55) = 0;
            v28 = static NSAttributedStringKey.coreAXLink.getter();
            v2 = NSAttributedString.range.getter();
            v30 = v29;
            v31 = swift_allocObject();
            *(v31 + 16) = &v55;
            v32 = swift_allocObject();
            *(v32 + 16) = closure #1 in NSAttributedString.hasAccessibilityLinks.getterpartial apply;
            *(v32 + 24) = v31;
            v53 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
            v54 = v32;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v52 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
            *(&v52 + 1) = &block_descriptor_134_0;
            v33 = _Block_copy(&aBlock);

            [v27 enumerateAttribute:v28 inRange:v2 options:v30 usingBlock:{0, v33}];

            _Block_release(v33);
            LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

            if (v30)
            {
              goto LABEL_50;
            }

            v34 = v55;

            v2 = v43;
            v5 = v44;
            v3 = v45;
            v6 = v46;
            if (v34)
            {
              if ([v47 swiftUI_accessibilityStoredLinkRotor])
              {
                _bridgeAnyObjectToAny(_:)();
                swift_unknownObjectRelease();
              }

              else
              {
                v55 = 0u;
                v56 = 0u;
              }

              aBlock = v55;
              v52 = v56;
              if (*(&v56 + 1))
              {
                type metadata accessor for UIKitAccessibilityLinkRotorBridge();
                if (swift_dynamicCast())
                {
                  v35 = v49;
LABEL_43:
                  v41 = v35;
                  MEMORY[0x18D00CC30]();
                  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v6 = v46;
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                  goto LABEL_5;
                }
              }

              else
              {
                outlined destroy of AnyAccessibilityValue?(&aBlock, &lazy cache variable for type metadata for Any?);
              }

              v36 = type metadata accessor for UIKitAccessibilityLinkRotorBridge();
              v37 = objc_allocWithZone(v36);
              swift_unknownObjectWeakInit();
              *&v37[OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_paragraphHash] = 0;
              *&v37[OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_elements] = MEMORY[0x1E69E7CC0];
              swift_unknownObjectWeakAssign();
              v38 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v53 = closure #1 in UIKitAccessibilityLinkRotorBridge.init(for:)partial apply;
              v54 = v38;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              *&v52 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomRotorSearchPredicate) -> (@owned UIAccessibilityCustomRotorItemResult?);
              *(&v52 + 1) = &block_descriptor_139_0;
              v39 = _Block_copy(&aBlock);
              v40 = v47;

              v50.receiver = v37;
              v50.super_class = v36;
              v35 = objc_msgSendSuper2(&v50, sel_initWithSystemType_itemSearchBlock_, 1, v39);

              _Block_release(v39);
              [v40 setSwiftUI:v35 accessibilityStoredLinkRotor:?];
              v5 = v44;
              v6 = v46;
              goto LABEL_43;
            }
          }

          else
          {

            v5 = v26;
            v2 = v12;
            v3 = v45;
            v6 = v46;
          }
        }

LABEL_5:
        ++v4;
      }

      while (v48 != v3);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    outlined init with take of Any(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return outlined destroy of AnyAccessibilityValue?(v13, &lazy cache variable for type metadata for Any?);
}

id AccessibilityNode.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v3 = *&v1[v2];
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = v3 + 320 * v4 - 288;
    while (v4 <= *(v3 + 16))
    {
      outlined init with copy of AccessibilityAttachment(v6, v9);
      v7 = AccessibilityAttachment.platformElement.getter();
      result = outlined destroy of AccessibilityAttachment(v9);
      if (v7)
      {

        [v7 setAccessibilityNodeForPlatformElement_];

        goto LABEL_8;
      }

      v6 -= 320;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

LABEL_8:
    if ([v1 respondsToSelector_])
    {
      [v1 _accessibilityUnregister];
    }

    v8.receiver = v1;
    v8.super_class = type metadata accessor for AccessibilityNode();
    return objc_msgSendSuper2(&v8, sel_dealloc);
  }

  return result;
}

uint64_t AccessibilityNode.platformElement.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = v2 + 320 * v3 - 288;
    while (v3 <= *(v2 + 16))
    {
      outlined init with copy of AccessibilityAttachment(v5, v7);
      v6 = AccessibilityAttachment.platformElement.getter();
      result = outlined destroy of AccessibilityAttachment(v7);
      if (v6)
      {

        return v6;
      }

      v5 -= 320;
      if (!--v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

Swift::Void __swiftcall AccessibilityNode.updatePlatformProperties()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = v3 + 320 * v4 - 288;
    while (1)
    {
      if (v4 > *(v3 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      outlined init with copy of AccessibilityAttachment(v5, v14);
      v6 = AccessibilityAttachment.platformElement.getter();
      outlined destroy of AccessibilityAttachment(v14);
      if (v6)
      {
        break;
      }

      v5 -= 320;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    AccessibilityNode.applyProperties(to:includingRelations:)(v6, 1);
  }

  else
  {
LABEL_6:
  }

  AccessibilityNode.visibility.getter(v14);
  AccessibilityNullableOptionSet<>.resolved.getter();
  if (v13 <= 4u && ((1 << v13) & 0x16) != 0)
  {
    v7 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
    swift_beginAccess();
    v1 = *(v1 + v7);
    if (v1 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {

      if (!i)
      {
        break;
      }

      v9 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x18D00E9C0](v9, v1);
        }

        else
        {
          if (v9 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v10 = *(v1 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        AccessibilityNode.updatePlatformProperties()();

        ++v9;
        if (v12 == i)
        {
          goto LABEL_21;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_21:
  }
}

uint64_t AccessibilityNode.attachment(excluding:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v17 = *a1;
  v4 = *(a1 + 8);
  v5 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*(v2 + v5) + 16), 0, MEMORY[0x1E69E7CC0]);
  v7 = *(v2 + v5);
  v8 = *(v7 + 16);
  if (v8)
  {
    v16 = a2;
    v9 = v7 + 32;

    v11 = 0;
    while (v11 < *(v7 + 16))
    {
      outlined init with copy of AccessibilityAttachmentStorage(v9, v19);
      if (v21 != 255)
      {
        if (v21)
        {
          if (v20 == v17)
          {
            v12 = v4;
          }

          else
          {
            v12 = 0;
          }

          if (v12)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (v20 == v17)
          {
            v13 = v4;
          }

          else
          {
            v13 = 1;
          }

          if ((v13 & 1) == 0)
          {
LABEL_19:

            outlined destroy of AccessibilityAttachmentStorage(v19);
            goto LABEL_20;
          }
        }
      }

      outlined init with copy of AccessibilityAttachment(v19, __src);
      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (v15 >= v14 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v6);
      }

      ++v11;
      outlined destroy of AccessibilityAttachmentStorage(v19);
      *(v6 + 2) = v15 + 1;
      result = memcpy(&v6[296 * v15 + 32], __src, 0x128uLL);
      v9 += 320;
      if (v8 == v11)
      {

LABEL_20:
        a2 = v16;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    static AccessibilityAttachment.combine(_:)(v6, a2);
  }

  return result;
}

uint64_t AccessibilityNode.removeAttachments(after:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  *&v16[0] = *a1;
  BYTE8(v16[0]) = v3;
  result = AccessibilityNode.attachmentIndex(of:)(v16);
  if ((v5 & 1) == 0)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    result = swift_beginAccess();
    v8 = *(v2 + v7);
    v9 = *(v8 + 16);
    if (v9 >= v6)
    {
      if (v6 < 0)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      swift_beginAccess();

      specialized Array.replaceSubrange<A>(_:with:)(v6, v9);
      swift_endAccess();
      v10 = MEMORY[0x1E69E7CC0];
      v11 = v9 - v6;
      if (v9 == v6)
      {
LABEL_5:
        static AccessibilityAttachment.combine(_:)(v10, v16);

        memset(__src, 0, 296);
        AccessibilityNode.scheduleNotifyForAttachmentChange(from:to:)(v16, __src);

        outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?);
        outlined destroy of AccessibilityAttachment(v16);
        v17 = 0;
        memset(v16, 0, sizeof(v16));
        v12 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
        swift_beginAccess();
        outlined assign with copy of AccessibilityAttachment?(v16, v2 + v12);
        swift_endAccess();
        result = outlined destroy of AnyAccessibilityValue?(v16, &lazy cache variable for type metadata for AccessibilityAttachment?);
        *(v2 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty) = 1;
        return result;
      }

      v19 = MEMORY[0x1E69E7CC0];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      v10 = v19;
      v13 = v8 + 320 * v6 + 32;
      while (v11)
      {
        outlined init with copy of AccessibilityAttachmentStorage(v13, v16);
        outlined init with copy of AccessibilityAttachment(v16, __src);
        outlined destroy of AccessibilityAttachmentStorage(v16);
        v19 = v10;
        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        if (v15 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
          v10 = v19;
        }

        *(v10 + 16) = v15 + 1;
        result = memcpy((v10 + 296 * v15 + 32), __src, 0x128uLL);
        v13 += 320;
        if (!--v11)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t AccessibilityNode.scheduleNotifyForChildrenChange(fullReplacement:)(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && (AccessibilityNode.visibility.getter(aBlock), (aBlock[0] & 0x80) != 0))
  {
    v18 = &type metadata for AccessibilityCore.Notification.ScreenChanged;
    v19 = &protocol witness table for AccessibilityCore.Notification.ScreenChanged;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = &type metadata for AccessibilityCore.Notification.LayoutChanged;
    v19 = &protocol witness table for AccessibilityCore.Notification.LayoutChanged;
    v16 = 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v10 = static OS_dispatch_queue.main.getter();
  outlined init with copy of _Benchmark(&v16, v15);
  v11 = swift_allocObject();
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v15, v11 + 16);
  aBlock[4] = partial apply for closure #1 in AccessibilityNode.scheduleNotifyForChildrenChange(fullReplacement:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_145;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  _sSay8Dispatch0A13WorkItemFlagsVGMaTm_0(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x18D00DA20](0, v9, v5, v12);
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  return __swift_destroy_boxed_opaque_existential_1(&v16);
}

uint64_t AccessibilityNode.updateFrame(_:token:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = *(a1 + 8);
  v17 = *(a1 + 32);
  v18 = *(a1 + 16);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a2 + 8);
  v19 = *a2;
  LOBYTE(v20) = v8;
  result = AccessibilityNode.attachmentIndex(of:)(&v19);
  if (v10)
  {
    return result;
  }

  v11 = result;
  v12 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v13 = *(v3 + v12);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v12) = v13;
  if (result)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
  v13 = result;
  *(v3 + v12) = result;
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v11 >= *(v13 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v14 = v13 + 320 * v11;
  v15 = *(v14 + 328);
  if (!v15)
  {
    type metadata accessor for AccessibilityGeometryStorage();
    v15 = swift_allocObject();
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 1;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = -1;
    *(v15 + 92) = 0;
    *(v15 + 100) = 1;
    *(v15 + 104) = 0;
    *(v15 + 112) = 1;
    *(v15 + 120) = 0;
    *(v14 + 328) = v15;
  }

  v26 = 0uLL;
  *&v27 = v6;
  *(&v27 + 1) = v7;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v25 = 2;
  v19 = v4;
  v20 = v5;
  v21 = v18;
  v22 = v17;

  CGRect.convert(to:transform:)();
  outlined destroy of CoordinateSpace(v23);

  v16 = v27;
  *(v15 + 16) = v26;
  *(v15 + 32) = v16;
  *(v15 + 48) = 0;
  *(v3 + v12) = v13;
  return swift_endAccess();
}

uint64_t AccessibilityNode.updatePath(_:token:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v20 = *a1;
  v21 = a1[1];
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  *&v23[0] = *a2;
  BYTE8(v23[0]) = v6;
  result = AccessibilityNode.attachmentIndex(of:)(v23);
  if (v8)
  {
    return result;
  }

  v9 = result;
  v10 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v11 = *(v3 + v10);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v10) = v11;
  if (result)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
  v11 = result;
  *(v3 + v10) = result;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v9 >= *(v11 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v12 = v11 + 320 * v9;
  v13 = *(v12 + 328);
  if (!v13)
  {
    type metadata accessor for AccessibilityGeometryStorage();
    v13 = swift_allocObject();
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 1;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0u;
    *(v13 + 88) = -1;
    *(v13 + 92) = 0;
    *(v13 + 100) = 1;
    *(v13 + 104) = 0;
    *(v13 + 112) = 1;
    *(v13 + 120) = 0;
    *(v12 + 328) = v13;
  }

  if ((Path.isEmpty.getter() & 1) == 0)
  {
    Path.boundingRect.getter();
    v26 = CGRectStandardize(v25);
    if (!CGRectIsEmpty(v26))
    {
      v14 = *(v13 + 56);
      v15 = *(v13 + 64);
      v16 = *(v13 + 72);
      v17 = *(v13 + 80);
      *(v13 + 56) = v20;
      *(v13 + 72) = v21;
      v18 = *(v13 + 88);
      *(v13 + 88) = v5;
      outlined consume of Path?(v14, v15, v16, v17, v18);
      v19 = a1[1];
      v23[0] = *a1;
      v23[1] = v19;
      v24 = *(a1 + 32);
      outlined init with copy of Path.Storage(v23, v22);
    }
  }

  *(v3 + v10) = v11;
  return swift_endAccess();
}

uint64_t AccessibilityNode.sendAction<A>(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a4;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  v25 = *(v4 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v26 = v12;

  v13 = EnvironmentValues.isEnabled.getter();

  if ((v13 & 1) == 0)
  {
    v20 = 0;
    return v20 & 1;
  }

  (*(v9 + 16))(v11, a1, a3);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = v25;
  v15 = v26;
  v16 = v27;
  if (v28 != 1)
  {
    outlined consume of AccessibilityActionKind.ActionKind(v25, v26, v27, v28);
LABEL_8:
    AccessibilityNode.attachment.getter(&v25);
    outlined init with copy of AccessibilityProperties(&v25, v29);
    outlined destroy of AccessibilityAttachment(&v25);
    lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
    AccessibilityProperties.subscript.getter();
    result = outlined destroy of AccessibilityProperties(v29);
    v17 = v25;
    v19 = *(v25 + 16);
    if (!v19)
    {
LABEL_16:

      v20 = 0;
      return v20 & 1;
    }

    goto LABEL_9;
  }

  AccessibilityNode.attachment.getter(&v25);
  outlined init with copy of AccessibilityProperties(&v25, v29);
  outlined destroy of AccessibilityAttachment(&v25);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v29);
  v17 = specialized Sequence.reversed()(v25);
  result = outlined consume of AccessibilityActionKind.ActionKind(v14, v15, v16, 1uLL);
  v19 = *(v17 + 16);
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_9:
  v23 = v5;
  v21 = 0;
  v20 = 0;
  v22 = v17 + 32;
  do
  {
    if (v21 >= *(v17 + 16))
    {
      __break(1u);
      return result;
    }

    outlined init with copy of AnyAccessibilityAction(v22, &v25);
    AnyAccessibilityAction.perform<A>(action:value:)(a1, a2, a3, v24);
    result = outlined destroy of AnyAccessibilityAction(&v25);
    if (v29[0] == 3)
    {
      v20 = 1;
    }

    else
    {
      if (v29[0] == 2)
      {

        v20 = 1;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return v20 & 1;
        }

        goto LABEL_21;
      }

      if ((v29[0] & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    ++v21;
    v22 += 48;
  }

  while (v19 != v21);

  if ((v20 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
LABEL_21:
    swift_getObjectType();
    v25 = 0;
    LOBYTE(v26) = 1;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    swift_unknownObjectRelease();
  }

  return v20 & 1;
}

Swift::Bool __swiftcall AccessibilityNode.sendAction(named:)(Swift::String named)
{
  v2 = *(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  v36 = (v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v40 = *(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v41 = v2;

  v3 = EnvironmentValues.isEnabled.getter();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  AccessibilityNode.attachment.getter(&v40);
  outlined init with copy of AccessibilityProperties(&v40, v44);
  outlined destroy of AccessibilityAttachment(&v40);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  result = outlined destroy of AccessibilityProperties(v44);
  v5 = v40;
  v6 = *(v40 + 16);
  if (!v6)
  {
LABEL_23:

    return 0;
  }

  v7 = 0;
  v8 = 0;
  v32 = v6 - 1;
  v9 = v40 + 32;
  v34 = MEMORY[0x1E69E7CA8] + 8;
  v35 = *(v40 + 16);
  v10 = v35;
  v31 = v40 + 32;
LABEL_4:
  v33 = v7;
  v11 = v9 + 48 * v8;
  do
  {
    if (v8 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    outlined init with copy of AnyAccessibilityAction(v11, &v40);
    v12 = v42;
    v13 = v43;
    __swift_project_boxed_opaque_existential_1(&v40, v42);
    v14 = (*(v13 + 8))(v12, v13);
    if (!v17)
    {
      result = outlined destroy of AnyAccessibilityAction(&v40);
      goto LABEL_6;
    }

    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = v36[1];
    v44[0] = *v36;
    v44[1] = v21;
    v39[0] = 0;
    v39[1] = 0;

    MEMORY[0x18D005BC0](&v38, v22);
    v23 = static AccessibilityCore.textResolvedToPlainText(_:in:options:idiom:)();
    v25 = v24;

    v26 = v23 == named._countAndFlagsBits && v25 == named._object;
    if (v26)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        outlined destroy of AnyAccessibilityAction(&v40);
        outlined consume of Text.Storage(v18, v19, v20 & 1);

        v10 = v35;
        goto LABEL_6;
      }
    }

    v44[3] = v34;
    v28 = v42;
    v29 = v43;
    __swift_project_boxed_opaque_existential_1(&v40, v42);
    (*(v29 + 32))(v39, v44, v28, v29);
    outlined consume of Text.Storage(v18, v19, v20 & 1);

    __swift_destroy_boxed_opaque_existential_1(v44);
    result = outlined destroy of AnyAccessibilityAction(&v40);
    if (LOBYTE(v39[0]) == 2)
    {
      goto LABEL_22;
    }

    v10 = v35;
    if (LOBYTE(v39[0]) == 3)
    {
      v7 = 1;
      v9 = v31;
      v26 = v32 == v8++;
      if (!v26)
      {
        goto LABEL_4;
      }

LABEL_22:

      goto LABEL_25;
    }

    if ((v39[0] & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_6:
    ++v8;
    v11 += 48;
  }

  while (v10 != v8);

  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  Strong = swift_unknownObjectWeakLoadStrong();
  result = 1;
  if (Strong)
  {
    swift_getObjectType();
    v40 = 0;
    LOBYTE(v41) = 1;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    swift_unknownObjectRelease();
    return 1;
  }

  return result;
}

uint64_t AccessibilityNode.impliedTraits.getter()
{
  v0 = 0;
  AccessibilityNode.attachment.getter(v30);
  outlined init with copy of AccessibilityProperties(v30, v33);
  outlined destroy of AccessibilityAttachment(v30);
  v1 = v34;
  v2 = v35;
  v3 = v36;
  outlined destroy of AccessibilityProperties(v33);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v1;
  }

  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  AccessibilityNode.attachment.getter(v30);
  outlined init with copy of AccessibilityProperties(v30, v33);
  outlined destroy of AccessibilityAttachment(v30);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v33);
  v6 = *(v30[0] + 16);
  if (!v6)
  {

    v8 = MEMORY[0x1E69E7CC0];
    v15 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v15)
    {
      goto LABEL_26;
    }

LABEL_19:
    if (v15 > 3)
    {
      v16 = v15 & 0x7FFFFFFFFFFFFFFCLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = (v8 + 48);
      v20 = v15 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v18 = vorrq_s8(v19[-1], v18);
        v17 = vorrq_s8(*v19, v17);
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      v21 = vorrq_s8(v17, v18);
      v0 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
      if (v15 == v16)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v16 = 0;
    }

    v22 = v15 - v16;
    v23 = &v8[8 * v16 + 32];
    do
    {
      v24 = *v23;
      v23 += 8;
      *&v0 |= v24;
      --v22;
    }

    while (v22);
    goto LABEL_26;
  }

  v7 = v30[0] + 32;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    outlined init with copy of AnyAccessibilityAction(v7, v30);
    v9 = v31;
    v10 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v29[0] = v4;
    v29[1] = v5;
    v11 = (*(v10 + 48))(v29, v9, v10);
    LOWORD(v9) = v12;
    outlined destroy of AnyAccessibilityAction(v30);
    if ((v9 & 0x100) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v14 = *(v8 + 2);
      v13 = *(v8 + 3);
      if (v14 >= v13 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
      }

      *(v8 + 2) = v14 + 1;
      *&v8[8 * v14 + 32] = v11;
    }

    v7 += 48;
    --v6;
  }

  while (v6);

  v15 = *(v8 + 2);
  if (v15)
  {
    goto LABEL_19;
  }

LABEL_26:

  AccessibilityNode.attachment.getter(v30);
  outlined init with copy of AccessibilityProperties(v30, v33);
  outlined destroy of AccessibilityAttachment(v30);
  outlined init with copy of AnyAccessibilityValue?(&v37, v29, &lazy cache variable for type metadata for AccessibilityValueStorage?);
  outlined destroy of AccessibilityProperties(v33);
  if (v29[3] == 1)
  {
    outlined destroy of AnyAccessibilityValue?(v29, &lazy cache variable for type metadata for AccessibilityValueStorage?);
  }

  else
  {
    v30[0] = v4;
    v30[1] = v5;
    v25 = AccessibilityValueStorage.impliedRole(for:)(v30);
    v27 = v26;
    outlined destroy of AccessibilityValueStorage(v29);
    if ((v27 & 0x100) == 0)
    {
      *&v0 |= v25;
    }
  }

  return v0;
}

uint64_t AccessibilityNode.resolvedTraits.getter()
{
  v1 = v0;
  v2 = 0;
  AccessibilityNode.attachment.getter(&v26);
  outlined init with copy of AccessibilityProperties(&v26, v31);
  outlined destroy of AccessibilityAttachment(&v26);
  v3 = v32;
  v4 = v33;
  v5 = v34;
  outlined destroy of AccessibilityProperties(v31);
  if (v5)
  {
    v4 = 0;
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  v31[0] = 4;
  AccessibilityNode.impliedVisibility(consideringParent:with:)(0, v31, &v26);
  if (v26 - 1 > 1)
  {
    v13 = 0;
    v14 = AccessibilityNode.impliedTraits.getter();
    v36 = v14;
    do
    {
      v15 = outlined read-only object #0 of static AccessibilityTrait.allCases.getter[v13 + 32];
      if (v15 <= 0x1E && ((1 << v15) & 0x79C23FFF) != 0 && ((v6 >> v15) & 1) != 0)
      {
        LOBYTE(v26) = outlined read-only object #0 of static AccessibilityTrait.allCases.getter[v13 + 32];
        v17 = AccessibilityTrait.uiTrait.getter();
        if ((v18 & 1) == 0)
        {
          v2 |= v17;
        }
      }

      ++v13;
    }

    while (v13 != 32);
    v19 = v2 | v14;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = outlined read-only object #0 of static AccessibilityTrait.allCases.getter[v7 + 32];
      if (v9 <= 0x16 && ((1 << v9) & 0x401404) != 0 && ((v6 >> v9) & 1) != 0)
      {
        LOBYTE(v26) = outlined read-only object #0 of static AccessibilityTrait.allCases.getter[v7 + 32];
        v11 = AccessibilityTrait.uiTrait.getter();
        if ((v12 & 1) == 0)
        {
          v8 |= v11;
        }
      }

      ++v7;
    }

    while (v7 != 32);
    v19 = v8;
  }

  v36 = v19;
  v20 = *(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  v26 = *(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v27 = v20;

  v21 = EnvironmentValues.isEnabled.getter();

  if ((v21 & 1) == 0)
  {
    v19 |= 0x100uLL;
    v36 = v19;
  }

  v26 = v6;
  v27 = v4;
  v31[0] = 29;
  if (AccessibilityNullableOptionSet<>.subscript.getter())
  {
    AccessibilityNode.attachment.getter(&v26);
    outlined init with copy of AccessibilityProperties(&v26, v31);
    outlined destroy of AccessibilityAttachment(&v26);
    outlined init with copy of AnyAccessibilityValue?(&v35, &v26, &lazy cache variable for type metadata for AccessibilityValueStorage?);
    outlined destroy of AccessibilityProperties(v31);
    v22 = v29;
    outlined destroy of AnyAccessibilityValue?(&v26, &lazy cache variable for type metadata for AccessibilityValueStorage?);
    if (v22 == 1)
    {
      v19 &= ~8uLL;
      v36 = v19;
    }
  }

  AccessibilityNode.attachment.getter(&v26);
  outlined init with copy of AccessibilityProperties(&v26, v31);
  outlined destroy of AccessibilityAttachment(&v26);
  lazy protocol witness table accessor for type AccessibilityProperties.TouchInfoKey and conformance AccessibilityProperties.TouchInfoKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v31);
  if (v26 != 2 && (v26 & 1) != 0 && ((v6 & 0x1000) != 0 || (v4 & 0x1000) == 0))
  {
    v36 = v19 | 0x2000;
  }

  AccessibilityNode.attachment.getter(&v26);
  outlined init with copy of AccessibilityProperties(&v26, v31);
  outlined destroy of AccessibilityAttachment(&v26);
  lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v31);
  if (v30 == 255)
  {
    outlined destroy of AnyAccessibilityValue?(&v26, &lazy cache variable for type metadata for AccessibilityTableContext?);
  }

  else
  {
    AccessibilityTableContext.resolve(into:for:)(&v36);
    outlined destroy of AccessibilityTableContext(&v26);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = [v23 _accessibilityCanDrag];
      swift_unknownObjectRelease();
      if (v24)
      {
        AccessibilityNode.attachment.getter(&v26);
        outlined init with copy of AccessibilityProperties(&v26, v31);
        outlined destroy of AccessibilityAttachment(&v26);
        AccessibilityProperties.activationPointStorage.getter();
        outlined destroy of AccessibilityProperties(v31);
        if (v29)
        {
          if (*(v29 + 16))
          {
            outlined consume of AccessibilityActivationPointStorage?(v26, v27, v28, v29);
            v36 |= 0x4000000000uLL;
          }

          else
          {
            outlined consume of AccessibilityActivationPointStorage?(v26, v27, v28, v29);
          }
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  AccessibilityNode.attachment.getter(&v26);
  outlined init with copy of AccessibilityProperties(&v26, v31);
  outlined destroy of AccessibilityAttachment(&v26);
  lazy protocol witness table accessor for type AccessibilityProperties.UIKitTraitsKey and conformance AccessibilityProperties.UIKitTraitsKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v31);
  if (v28)
  {
    return v36;
  }

  else
  {
    return (v36 | v27) & ~v26;
  }
}

uint64_t AccessibilityNode.resolvedCustomRotors.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  v8[0] = *(v0 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v8[1] = v1;

  v2 = AccessibilityNode.customRotors(in:)(v8);

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v3 = v2;
  }

  v10 = v3;
  v4 = AccessibilityNode.linkRotor.getter();
  if (v4)
  {
    v5 = v4;
    MEMORY[0x18D00CC30]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v9 = 4;
  AccessibilityNode.impliedVisibility(consideringParent:with:)(1, &v9, v8);
  if (!LOBYTE(v8[0]))
  {
    swift_beginAccess();

    specialized Sequence.forEach(_:)(v6, &v10);
  }

  return v10;
}

uint64_t AccessibilityNode.linkRotor.getter()
{
  v1 = v0;
  AccessibilityNode.attachment.getter(v22);
  outlined init with copy of AccessibilityProperties(v22, &aBlock);
  outlined destroy of AccessibilityAttachment(v22);
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v49 = v39;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v45 = v35;
  v40 = v30;
  v41 = v31;
  outlined init with copy of AnyAccessibilityValue?(&v40, v22, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?);
  outlined destroy of AccessibilityProperties(&aBlock);
  v22[7] = v47;
  v22[8] = v48;
  v23 = v49;
  v22[2] = v42;
  v22[3] = v43;
  v22[4] = v44;
  v22[5] = v45;
  v22[6] = v46;
  v22[0] = v40;
  v22[1] = v41;
  if (_s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(v22) == 1)
  {
    return 0;
  }

  outlined destroy of AnyAccessibilityValue?(&v40, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?);
  v2 = AccessibilityNode.resolvedLabels.getter();
  LODWORD(aBlock) = 2;
  if (one-time initialization token for comma != -1)
  {
    swift_once();
  }

  v3 = specialized AccessibilityNode.resolvedAttributedTexts(_:options:separator:)(v2);

  if (!v3)
  {
    return 0;
  }

  v21 = 0;
  v4 = static NSAttributedStringKey.coreAXLink.getter();
  v5 = NSAttributedString.range.getter();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = &v21;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in NSAttributedString.hasAccessibilityLinks.getter;
  *(v9 + 24) = v8;
  v28 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v29 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v27 = &block_descriptor_117;
  v10 = _Block_copy(&aBlock);

  [v3 enumerateAttribute:v4 inRange:v5 options:v7 usingBlock:{0, v10}];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return result;
  }

  v13 = v21;

  if (v13 != 1)
  {
    return 0;
  }

  result = AccessibilityNode.currentLinkRotor.getter();
  if (!result)
  {
    v14 = type metadata accessor for UIKitAccessibilityLinkRotorBridge();
    v15 = objc_allocWithZone(v14);
    swift_unknownObjectWeakInit();
    *&v15[OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_paragraphHash] = 0;
    *&v15[OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_elements] = MEMORY[0x1E69E7CC0];
    swift_unknownObjectWeakAssign();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = partial apply for closure #1 in UIKitAccessibilityLinkRotorBridge.init(for:);
    v29 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomRotorSearchPredicate) -> (@owned UIAccessibilityCustomRotorItemResult?);
    v27 = &block_descriptor_123_0;
    v17 = _Block_copy(&aBlock);
    v18 = v1;

    v20.receiver = v15;
    v20.super_class = v14;
    v19 = objc_msgSendSuper2(&v20, sel_initWithSystemType_itemSearchBlock_, 1, v17);

    _Block_release(v17);
    [v18 setSwiftUI:v19 accessibilityStoredLinkRotor:?];
    return v19;
  }

  return result;
}

uint64_t AccessibilityNode.supplementaryLinkElements.getter()
{
  v0 = AccessibilityNode.linkRotor.getter();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;

  EnvironmentValues.redactionReasons.getter();

  if ((v10 & 2) != 0)
  {

    v2 = EnvironmentValues.sensitiveContent.getter();

    if (v2)
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  UIKitAccessibilityLinkRotorBridge.update()();
  v4 = OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_elements;
  swift_beginAccess();
  v3 = *&v1[v4];
  if (v3 >> 62)
  {
    type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();

    v9 = _bridgeCocoaArray<A>(_:)();

    return v9;
  }

  else
  {
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
    if (swift_dynamicCastMetatype() || (v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_8:
    }

    else
    {
      v8 = v5 + 32;
      while (swift_dynamicCastObjCProtocolConditional())
      {
        v8 += 8;
        if (!--v7)
        {
          goto LABEL_8;
        }
      }

      return v5 | 1;
    }
  }

  return v3;
}

uint64_t AccessibilityNode.currentLinkRotor.getter()
{
  if ([v0 swiftUI_accessibilityStoredLinkRotor])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    type metadata accessor for UIKitAccessibilityLinkRotorBridge();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(v5, &lazy cache variable for type metadata for Any?);
    return 0;
  }
}

uint64_t AccessibilityNode.visualExpansionProxy.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (!v1)
    {
      goto LABEL_8;
    }

    v2 = v1;
    AccessibilityNode.visibility.getter(&aBlock);
    if ((aBlock & 0x20) != 0)
    {
      return v2;
    }

    if ([v2 swiftUI_accessibilityIsSwiftUIHostingCellView] && (AccessibilityNode.isSingleLeafItemCell.getter() & 1) != 0)
    {
      v8 = closure #1 in AccessibilityNode.visualExpansionProxy.getter;
      v9 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v7 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@unowned Bool);
      *(&v7 + 1) = &block_descriptor_107;
      v3 = _Block_copy(&aBlock);
      v4 = [v2 swiftUI:v3 accessibilityFindAncestor:0 startWithSelf:?];
      _Block_release(v3);
      if (v4)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        aBlock = 0u;
        v7 = 0u;
      }

      v10[0] = aBlock;
      v10[1] = v7;
      if (*(&v7 + 1))
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
        if (swift_dynamicCast())
        {
          return v5;
        }

        else
        {
          return 0;
        }
      }

      outlined destroy of AnyAccessibilityValue?(v10, &lazy cache variable for type metadata for Any?);
    }

    else
    {
LABEL_8:
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t closure #1 in AccessibilityNode.visualExpansionProxy.getter(uint64_t a1)
{
  outlined init with copy of Any(a1, v5);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITableViewCell);
  if (swift_dynamicCast())
  {

    return 1;
  }

  else
  {
    outlined init with copy of Any(a1, v5);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell);
    result = swift_dynamicCast();
    if (result)
    {
      v3 = result;

      return v3;
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;

  swift_unknownObjectRetain();
  LOBYTE(a2) = v3(v5);

  __swift_destroy_boxed_opaque_existential_1(v5);
  return a2 & 1;
}

unint64_t AccessibilityNode.isSingleLeafItemCell.getter()
{
  v1 = v0;
  v22 = 4;
  AccessibilityNode.impliedVisibility(consideringParent:with:)(0, &v22, v21);
  if (v21[0])
  {
    return 0;
  }

  v3 = &unk_1ED580000;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = result;
    AccessibilityNode.visibility.getter(v21);
    if ((v21[0] & 0x20) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        AccessibilityNode.visibility.getter(v21);
        if ((v21[0] & 0x20) == 0)
        {
          goto LABEL_47;
        }

        result = specialized static AccessibilityCore.queryChildren(element:options:)(v3, 0);
        v5 = result;
        if (!(result >> 62))
        {
          if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
          {
LABEL_10:
            if ((v5 & 0xC000000000000001) != 0)
            {
              v7 = MEMORY[0x18D00E9C0](0, v5);
            }

            else
            {
              if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_44;
              }

              v7 = *(v5 + 32);
            }

            v8 = v7;

            v9 = AccessibilityNode.representedElement.getter();

            if (v9 == v4)
            {
              result = specialized static AccessibilityCore.queryChildren(element:options:)(v4, 0);
              if (!(result >> 62))
              {
                if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
                {
LABEL_16:
                  if ((result & 0xC000000000000001) != 0)
                  {
                    v10 = MEMORY[0x18D00E9C0](0);
                  }

                  else
                  {
                    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      return result;
                    }

                    v10 = *(result + 32);
                  }

                  v11 = v10;

                  v12 = AccessibilityNode.representedElement.getter();

                  return v12 == v1;
                }

                goto LABEL_46;
              }

LABEL_44:
              v19 = result;
              if (__CocoaSet.count.getter() == 1)
              {
                v20 = __CocoaSet.count.getter();
                result = v19;
                if (v20)
                {
                  goto LABEL_16;
                }
              }

LABEL_46:
            }

LABEL_47:

            goto LABEL_48;
          }

LABEL_41:

LABEL_48:

          return 0;
        }

        goto LABEL_38;
      }

LABEL_35:

      return 0;
    }

    v14 = specialized static AccessibilityCore.queryChildren(element:options:)(v4, 0);
    if (v14 >> 62)
    {
      if (v14 < 0)
      {
        v5 = v14;
      }

      else
      {
        v5 = v14 & 0xFFFFFFFFFFFFFF8;
      }

      v3 = v14;
      if (__CocoaSet.count.getter() == 1)
      {
        v18 = __CocoaSet.count.getter();
        v14 = v3;
        if (v18)
        {
LABEL_22:
          if ((v14 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x18D00E9C0](0);
          }

          else
          {
            if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_38:
              if (__CocoaSet.count.getter() != 1)
              {
                goto LABEL_41;
              }

              result = __CocoaSet.count.getter();
              if (result)
              {
                goto LABEL_10;
              }

              return 0;
            }

            v15 = *(v14 + 32);
          }

          v16 = v15;

          v17 = AccessibilityNode.representedElement.getter();

          return v17 == v1;
        }
      }
    }

    else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  return result;
}

uint64_t AccessibilityNode.automationVisibility.getter@<X0>(int *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
  swift_beginAccess();
  outlined init with copy of AnyAccessibilityValue?(v1 + v3, __src, &lazy cache variable for type metadata for AccessibilityAttachment?);
  if (__src[35])
  {
    memcpy(__dst, __src, 0x128uLL);
    outlined init with copy of AccessibilityProperties(__dst, __src);
    lazy protocol witness table accessor for type AccessibilityProperties.AutomationVisibilityKey and conformance AccessibilityProperties.AutomationVisibilityKey();
    AccessibilityProperties.subscript.getter();
    outlined destroy of AccessibilityProperties(__src);
    result = outlined destroy of AccessibilityAttachment(__dst);
    v5 = v17[1];
    if (v18)
    {
      v6 = 0;
    }

    else
    {
      v6 = v17[0];
    }

    if (v18)
    {
      v5 = 0;
    }

    *a1 = v6;
    a1[1] = v5;
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?);
    v7 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    result = swift_beginAccess();
    v8 = *(v1 + v7);
    v9 = *(v8 + 16);
    if (v9)
    {

      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = v8 + 320 * v9 - 288;
      while (v9 <= *(v8 + 16))
      {
        outlined init with copy of AccessibilityAttachmentStorage(v13, __dst);
        outlined init with copy of AccessibilityAttachment(__dst, __src);
        outlined destroy of AccessibilityAttachmentStorage(__dst);
        outlined init with copy of AccessibilityProperties(__src, v17);
        outlined destroy of AccessibilityAttachment(__src);
        lazy protocol witness table accessor for type AccessibilityProperties.AutomationVisibilityKey and conformance AccessibilityProperties.AutomationVisibilityKey();
        AccessibilityProperties.subscript.getter();
        outlined destroy of AccessibilityProperties(v17);
        if ((v16 & 1) == 0)
        {
          v10 = v12 | v15;
          v11 = (v12 | ~v15) & v11 | v14 & ~v12;
          v12 |= v15;
        }

        v13 -= 320;
        if (!--v9)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_15:
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *a1 = v11;
    a1[1] = v10;
  }

  return result;
}

uint64_t AccessibilityNode.resolvedContainerType.getter()
{
  AccessibilityNode.attachment.getter(v6);
  outlined init with copy of AccessibilityProperties(v6, v4);
  outlined destroy of AccessibilityAttachment(v6);
  AccessibilityProperties.dataSeriesConfiguration.getter();
  outlined destroy of AccessibilityProperties(v4);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v6, __src, sizeof(v6));
  if (getEnumTag for AccessibilityActionCategory.Category(v6) == 1)
  {
    AccessibilityNode.attachment.getter(__src);
    outlined init with copy of AccessibilityProperties(__src, v4);
    outlined destroy of AccessibilityAttachment(__src);
    lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
    AccessibilityProperties.subscript.getter();
    outlined destroy of AccessibilityProperties(v4);
    if (__src[40])
    {
      if (__src[40] == 255)
      {
        outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for AccessibilityTableContext?);
      }

      else
      {
        outlined destroy of AccessibilityTableContext(__src);
      }

      __src[0] = 4;
      AccessibilityNode.impliedVisibility(consideringParent:with:)(1, __src, &v2);
      if (v2 == 1)
      {
        AccessibilityNode.attachment.getter(__src);
        outlined init with copy of AccessibilityProperties(__src, v4);
        outlined destroy of AccessibilityAttachment(__src);
        __src[0] = 26;
        v1 = AccessibilityProperties.subscript.getter();
        outlined destroy of AccessibilityProperties(v4);
        if (v1)
        {
          return 11;
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      outlined destroy of AccessibilityTableContext(__src);
      return 1;
    }
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(__dst, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?);
    return 13;
  }
}

uint64_t AccessibilityNode.contentPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  if (*(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_isFromDisplayList) != 1)
  {
    swift_beginAccess();
    result = *(v1 + v3);
    v9 = *(result + 16);
    if (v9)
    {
      v61 = a1;

      v53 = v52 + 320 * v9 - 288;
      while (v9 <= *(v52 + 16))
      {
        v55 = v52;
        outlined init with copy of AccessibilityAttachmentStorage(v53, v75);
        v56 = v76;

        outlined destroy of AccessibilityAttachmentStorage(v75);
        if (v56)
        {
          v57 = AGGraphClearUpdate();
          MEMORY[0x1EEE9AC00](v57);
          type metadata accessor for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?(0, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Responders, changed: Bool));
          static Update.ensure<A>(_:)();
          v58 = v77;
          v59 = BYTE12(v77);
          v60 = DWORD2(v77);
          AGGraphSetUpdate();
          if (v58)
          {
            if (((v60 | (v59 << 32)) & 0x100000000) != 0 || *(v56 + 88) == 255)
            {
              AccessibilityGeometryStorage.updatePath(responders:)(v58);
            }
          }

          v7 = *(v56 + 56);
          v8 = *(v56 + 64);
          v54 = *(v56 + 72);
          v10 = *(v56 + 80);
          v11 = *(v56 + 88);
          outlined copy of Path?(v7, v8, v54, v10, *(v56 + 88));

          if (v11 != 255)
          {
            v9 = v54;
            goto LABEL_37;
          }
        }

        v53 -= 320;
        --v9;
        v52 = v55;
        if (!v9)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_42:
      v7 = 0;
      v8 = 0;
      v10 = 0;
      LOBYTE(v11) = -1;
      goto LABEL_37;
    }

    v7 = 0;
    v8 = 0;
LABEL_40:
    v10 = 0;
    LOBYTE(v11) = -1;
    goto LABEL_38;
  }

  swift_beginAccess();
  result = *(v1 + v3);
  if (!*(result + 16))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_40;
  }

  v5 = *(result + 16);
  v61 = a1;
  v6 = result + 32;

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  LOBYTE(v11) = -1;
  v12 = v5;
  do
  {
    outlined init with copy of AccessibilityAttachmentStorage(v6, v75);
    v13 = v76;
    if (v76)
    {
      v69 = v12;
      v70 = v9;
      v14 = v7;
      v15 = AGGraphClearUpdate();
      MEMORY[0x1EEE9AC00](v15);
      type metadata accessor for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?(0, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Responders, changed: Bool));
      static Update.ensure<A>(_:)();
      AGGraphSetUpdate();
      if (v72)
      {
        if (((DWORD2(v72) | (BYTE12(v72) << 32)) & 0x100000000) != 0 || *(v13 + 88) == 255)
        {
          AccessibilityGeometryStorage.updatePath(responders:)(v72);
        }
      }

      v71 = v10;
      v16 = *(v13 + 88);
      if (v16 == 255)
      {
        v10 = v71;
      }

      else
      {
        v68 = v6;
        v18 = *(v13 + 72);
        v17 = *(v13 + 80);
        v19 = *(v13 + 56);
        v20 = *(v13 + 64);
        *&v77 = v19;
        *(&v77 + 1) = v20;
        v21 = v14;
        v22 = v14;
        v23 = v8;
        *&v78 = v18;
        *(&v78 + 1) = v17;
        v79 = v16;
        v24 = v70;
        v25 = v71;
        v26 = v11;
        if (v11 == 0xFF)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 6;
        }

        *&v72 = v22;
        *(&v72 + 1) = v23;
        *&v73 = v24;
        *(&v73 + 1) = v25;
        v74 = v26;
        v66 = v23;
        v67 = v22;
        v80 = v22;
        v81 = v23;
        v64 = v25;
        v65 = v24;
        v82 = v24;
        v83 = v25;
        v63 = v26;
        v84 = v26;
        v27 = v17;
        outlined copy of Path?(v19, v20, v18, v17, v16);
        outlined copy of Path?(v21, v8, v70, v71, v11);
        if ((Path.isEmpty.getter() & 1) != 0 || (v62 = v20, Path.boundingRect.getter(), v86 = CGRectStandardize(v85), CGRectIsEmpty(v86)))
        {
          outlined consume of Path?(v19, v20, v18, v27, v16);
          outlined consume of Path?(v21, v8, v70, v71, v11);
          v6 = v68;
        }

        else
        {
          Path.boundingRect.getter();
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          Path.boundingRect.getter();
          v89.origin.x = v36;
          v89.origin.y = v37;
          v89.size.width = v38;
          v89.size.height = v39;
          v87.origin.x = v29;
          v87.origin.y = v31;
          v87.size.width = v33;
          v87.size.height = v35;
          v6 = v68;
          if (CGRectContainsRect(v87, v89))
          {
            outlined consume of Path?(v21, v8, v70, v71, v11);
            outlined consume of Path.Storage(v67, v66, v65, v64, v63);
            v72 = v77;
            v73 = v78;
            v74 = v79;
          }

          else
          {
            Path.boundingRect.getter();
            v41 = v40;
            v43 = v42;
            v45 = v44;
            v47 = v46;
            Path.boundingRect.getter();
            v90.origin.x = v48;
            v90.origin.y = v49;
            v90.size.width = v50;
            v90.size.height = v51;
            v88.origin.x = v41;
            v88.origin.y = v43;
            v88.size.width = v45;
            v88.size.height = v47;
            if (!CGRectContainsRect(v88, v90))
            {
              Path.formTrivialUnion(_:)();
            }

            outlined consume of Path?(v19, v62, v18, v27, v16);
            outlined consume of Path?(v21, v8, v70, v71, v11);
          }
        }

        v8 = *(&v72 + 1);
        v7 = v72;
        v10 = *(&v73 + 1);
        v9 = v73;
        LOBYTE(v11) = v74;
        v12 = v69;
      }
    }

    outlined destroy of AccessibilityAttachmentStorage(v75);
    v6 += 320;
    --v12;
  }

  while (v12);
LABEL_37:

  a1 = v61;
LABEL_38:
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  return result;
}

uint64_t AccessibilityNode.contentFrameFromChildren(with:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v138 = *a1;
  v3 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
LABEL_124:
    v142 = v4 & 0xFFFFFFFFFFFFFF8;
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v142 = v4 & 0xFFFFFFFFFFFFFF8;
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v137 = v4;
  if (!v5)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_106;
  }

  v139 = v5;
  v141 = v4 & 0xC000000000000001;
  v6 = MEMORY[0x1E69E7CC0];
  v140 = v4 + 32;
  v4 = 0;
  do
  {
    v143 = v6;
    while (1)
    {
      if (v141)
      {
        v7 = MEMORY[0x18D00E9C0](v4, v137);
      }

      else
      {
        if (v4 >= *(v142 + 16))
        {
          goto LABEL_123;
        }

        v7 = *(v140 + 8 * v4);
      }

      v8 = v7;
      if (__OFADD__(v4++, 1))
      {
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v144 = v4;
      v145 = v7;
      v4 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
      if (v7[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_isFromDisplayList] == 1)
      {
        break;
      }

      swift_beginAccess();
      v61 = *&v8[v4];
      v62 = *(v61 + 16);
      if (!v62)
      {
        v13 = 0;
        v159 = 0;
        v15 = 0;
        v69 = 0;
        goto LABEL_51;
      }

      v63 = v61 + 320 * v62 - 288;
      do
      {
        if (v62 > *(v61 + 16))
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        outlined init with copy of AccessibilityAttachmentStorage(v63, v178);
        v4 = v180;

        outlined destroy of AccessibilityAttachmentStorage(v178);
        if (v4)
        {
          v65 = AGGraphClearUpdate();
          MEMORY[0x1EEE9AC00](v65);
          type metadata accessor for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?(0, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Responders, changed: Bool));
          static Update.ensure<A>(_:)();
          v66 = v173;
          v67 = BYTE12(v173);
          v68 = DWORD2(v173);
          AGGraphSetUpdate();
          if (v66)
          {
            if (((v68 | (v67 << 32)) & 0x100000000) != 0 || *(v4 + 88) == 255)
            {
              AccessibilityGeometryStorage.updatePath(responders:)(v66);
            }
          }

          v13 = *(v4 + 56);
          v14 = *(v4 + 64);
          v15 = *(v4 + 72);
          v64 = *(v4 + 80);
          v16 = *(v4 + 88);
          outlined copy of Path?(v13, v14, v15, v64, *(v4 + 88));

          if (v16 != 255)
          {

            v6 = v143;
            goto LABEL_94;
          }
        }

        v63 -= 320;
        --v62;
      }

      while (v62);

LABEL_50:
      v13 = 0;
      v159 = 0;
      v15 = 0;
      v69 = 0;
      v8 = v145;
LABEL_51:
      LOBYTE(v178[0]) = v138;
      AccessibilityNode.impliedVisibility(consideringParent:with:)(1, v178, &v177);
      v70 = v177;
      v71 = v13;
      v161 = v15;
      v154 = v69;
      if (v177 != 2)
      {
        AccessibilityNode.contentPath.getter(v181);
        if (v182 == 255)
        {
          v81 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
          swift_beginAccess();
          v4 = *&v8[v81];
          v82 = *(v4 + 16);
          if (v82)
          {

            v83 = v4 + 320 * v82 - 288;
            while (1)
            {
              if (v82 > *(v4 + 16))
              {
                goto LABEL_120;
              }

              outlined init with copy of AccessibilityAttachmentStorage(v83, v178);
              v85 = v180;

              outlined destroy of AccessibilityAttachmentStorage(v178);
              if (v85)
              {
                v86 = AGGraphClearUpdate();
                MEMORY[0x1EEE9AC00](v86);
                type metadata accessor for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?(0, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Size, changed: Bool)?, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Size, changed: Bool));
                static Update.ensure<A>(_:)();
                AGGraphSetUpdate();
                *(v176 + 13) = *(v172 + 13);
                v175 = v171;
                v176[0] = v172[0];
                v173 = v169;
                v174 = v170;
                v87 = v169;
                if (v169 != 1)
                {
                  v88 = *(&v173 + 1);
                  v89 = v176[0];
                  if ((BYTE4(v176[1]) & 1) != 0 || *(v85 + 48) == 1)
                  {
                    v157 = v174;
                    v152 = v175;

                    v162 = 0uLL;
                    v163 = v89;
                    v167 = 0;
                    v165 = 0u;
                    v166 = 0u;
                    v168 = 2;
                    *&v169 = v87;
                    *(&v169 + 1) = v88;
                    v170 = v157;
                    v171 = v152;
                    CGRect.convert(to:transform:)();
                    outlined destroy of CoordinateSpace(&v165);

                    v92 = *(&v162 + 1);
                    *(v85 + 16) = v162;
                    *(v85 + 24) = v92;
                    v93 = *(&v163 + 1);
                    *(v85 + 32) = v163;
                    *(v85 + 40) = v93;
                    *(v85 + 48) = 0;

                    goto LABEL_91;
                  }

                  outlined destroy of (value: AccessibilityGeometryStorage.Size, changed: Bool)?(&v173, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Size, changed: Bool)?, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Size, changed: Bool), &type metadata for AccessibilityGeometryStorage.Size, type metadata accessor for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?);
                }

                v84 = *(v85 + 48);

                if ((v84 & 1) == 0)
                {

LABEL_91:
                  v13 = v71;
LABEL_92:
                  v6 = v143;
                  v15 = v161;
                  goto LABEL_93;
                }

                v15 = v161;
              }

              v83 -= 320;
              if (!--v82)
              {

                v8 = v145;
                v69 = v154;
                break;
              }
            }
          }

          LOBYTE(v178[0]) = v70;
          AccessibilityNode.contentFrameFromChildren(with:)(v185, v178);
          v13 = v71;
          if (v186)
          {
            v6 = v143;
            v4 = v144;
            goto LABEL_82;
          }
        }

        else
        {
          v192 = v181[0];
          v193 = v181[1];
          v194 = v182;
          Path.boundingRect.getter();
          CGRectStandardize(v207);
          outlined destroy of AnyAccessibilityValue?(v181, &lazy cache variable for type metadata for Path?);
        }

        v6 = v143;
LABEL_93:
        Path.init(_:)();
        v94 = v187;
        v14 = v188;
        v95 = v189;
        v64 = v190;
        LOBYTE(v16) = v191;

        outlined consume of Path?(v13, v159, v15, v154, 0xFFu);
        v13 = v94;
        v15 = v95;
        goto LABEL_94;
      }

      v72 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
      swift_beginAccess();
      v4 = *&v8[v72];
      v73 = *(v4 + 16);
      if (v73)
      {

        v74 = v4 + 320 * v73 - 288;
        while (v73 <= *(v4 + 16))
        {
          outlined init with copy of AccessibilityAttachmentStorage(v74, v178);
          v76 = v180;

          outlined destroy of AccessibilityAttachmentStorage(v178);
          if (v76)
          {
            v77 = AGGraphClearUpdate();
            MEMORY[0x1EEE9AC00](v77);
            type metadata accessor for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?(0, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Size, changed: Bool)?, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Size, changed: Bool));
            static Update.ensure<A>(_:)();
            v13 = v71;
            AGGraphSetUpdate();
            *(v176 + 13) = *(v172 + 13);
            v175 = v171;
            v176[0] = v172[0];
            v173 = v169;
            v174 = v170;
            v78 = v169;
            if (v169 != 1)
            {
              v79 = *(&v173 + 1);
              v80 = v176[0];
              if ((BYTE4(v176[1]) & 1) != 0 || *(v76 + 48) == 1)
              {
                v156 = v174;
                v151 = v175;

                v162 = 0uLL;
                v163 = v80;
                v167 = 0;
                v165 = 0u;
                v166 = 0u;
                v168 = 2;
                *&v169 = v78;
                *(&v169 + 1) = v79;
                v170 = v156;
                v171 = v151;
                CGRect.convert(to:transform:)();
                outlined destroy of CoordinateSpace(&v165);

                v90 = *(&v162 + 1);
                *(v76 + 16) = v162;
                *(v76 + 24) = v90;
                v91 = *(&v163 + 1);
                *(v76 + 32) = v163;
                *(v76 + 40) = v91;
                *(v76 + 48) = 0;

                goto LABEL_92;
              }

              outlined destroy of (value: AccessibilityGeometryStorage.Size, changed: Bool)?(&v173, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Size, changed: Bool)?, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Size, changed: Bool), &type metadata for AccessibilityGeometryStorage.Size, type metadata accessor for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?);
            }

            v75 = *(v76 + 48);

            if ((v75 & 1) == 0)
            {

              goto LABEL_92;
            }
          }

          v74 -= 320;
          if (!--v73)
          {

            v8 = v145;
            v15 = v161;
            v69 = v154;
            goto LABEL_77;
          }
        }

        goto LABEL_119;
      }

LABEL_77:
      LOBYTE(v178[0]) = 2;
      AccessibilityNode.contentFrameFromChildren(with:)(v183, v178);
      v6 = v143;
      if ((v184 & 1) == 0)
      {
        goto LABEL_93;
      }

      v4 = v144;
LABEL_82:

      outlined consume of Path?(v13, v159, v15, v69, 0xFFu);
      if (v4 == v139)
      {
        goto LABEL_106;
      }
    }

    swift_beginAccess();
    v10 = *&v8[v4];
    v11 = *(v10 + 16);
    if (!v11)
    {
      goto LABEL_50;
    }

    v12 = v10 + 32;

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v153 = 0;
    LOBYTE(v16) = -1;
    do
    {
      outlined init with copy of AccessibilityAttachmentStorage(v12, v178);
      v17 = v180;
      if (!v180)
      {
        goto LABEL_14;
      }

      v158 = v14;
      v160 = v15;
      v18 = AGGraphClearUpdate();
      MEMORY[0x1EEE9AC00](v18);
      type metadata accessor for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?(0, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Responders, changed: Bool));
      static Update.ensure<A>(_:)();
      v19 = v173;
      v20 = BYTE12(v173);
      v21 = DWORD2(v173);
      AGGraphSetUpdate();
      if (v19)
      {
        if (((v21 | (v20 << 32)) & 0x100000000) != 0 || *(v17 + 88) == 255)
        {
          AccessibilityGeometryStorage.updatePath(responders:)(v19);
        }
      }

      v22 = *(v17 + 88);
      if (v22 == 255)
      {
        v14 = v158;
        v15 = v160;
        goto LABEL_14;
      }

      v24 = *(v17 + 72);
      v23 = *(v17 + 80);
      v26 = *(v17 + 56);
      v25 = *(v17 + 64);
      *&v195 = v26;
      *(&v195 + 1) = v25;
      v27 = v13;
      v28 = v160;
      v29 = v158;
      *&v196 = v24;
      *(&v196 + 1) = v23;
      v197 = v22;
      v155 = v13;
      v30 = v153;
      v31 = v16;
      if (v16 == 0xFF)
      {
        v27 = 0;
        v29 = 0;
        v28 = 0;
        v30 = 0;
        v31 = 6;
      }

      *&v173 = v27;
      *(&v173 + 1) = v29;
      *&v174 = v28;
      *(&v174 + 1) = v30;
      LOBYTE(v175) = v31;
      v149 = v29;
      v150 = v27;
      v198 = v27;
      v199 = v29;
      v147 = v30;
      v148 = v28;
      v200 = v28;
      v201 = v30;
      v146 = v31;
      v202 = v31;
      v32 = v25;
      outlined copy of Path?(v26, v25, v24, v23, v22);
      outlined copy of Path?(v155, v158, v160, v153, v16);
      if (Path.isEmpty.getter())
      {
        outlined consume of Path?(v26, v32, v24, v23, v22);
        v33 = v155;
        v34 = v158;
        v35 = v160;
        v36 = v153;
      }

      else
      {
        Path.boundingRect.getter();
        v204 = CGRectStandardize(v203);
        if (!CGRectIsEmpty(v204))
        {
          Path.boundingRect.getter();
          v38 = v37;
          v40 = v39;
          v42 = v41;
          v44 = v43;
          Path.boundingRect.getter();
          v214.origin.x = v45;
          v214.origin.y = v46;
          v214.size.width = v47;
          v214.size.height = v48;
          v205.origin.x = v38;
          v205.origin.y = v40;
          v205.size.width = v42;
          v205.size.height = v44;
          if (CGRectContainsRect(v205, v214))
          {
            outlined consume of Path?(v155, v158, v160, v153, v16);
            outlined consume of Path.Storage(v150, v149, v148, v147, v146);
            v173 = v195;
            v174 = v196;
            LOBYTE(v175) = v197;
          }

          else
          {
            Path.boundingRect.getter();
            v50 = v49;
            v52 = v51;
            v54 = v53;
            v56 = v55;
            Path.boundingRect.getter();
            v215.origin.x = v57;
            v215.origin.y = v58;
            v215.size.width = v59;
            v215.size.height = v60;
            v206.origin.x = v50;
            v206.origin.y = v52;
            v206.size.width = v54;
            v206.size.height = v56;
            if (!CGRectContainsRect(v206, v215))
            {
              Path.formTrivialUnion(_:)();
            }

            outlined consume of Path?(v26, v32, v24, v23, v22);
            outlined consume of Path?(v155, v158, v160, v153, v16);
          }

          goto LABEL_29;
        }

        outlined consume of Path?(v26, v32, v24, v23, v22);
        v36 = v153;
        v33 = v155;
        v34 = v158;
        v35 = v160;
      }

      outlined consume of Path?(v33, v34, v35, v36, v16);
LABEL_29:
      v14 = *(&v173 + 1);
      v13 = v173;
      v153 = *(&v174 + 1);
      v15 = v174;
      LOBYTE(v16) = v175;
LABEL_14:
      outlined destroy of AccessibilityAttachmentStorage(v178);
      v12 += 320;
      --v11;
    }

    while (v11);

    if (v16 == 0xFF)
    {
      v159 = v14;
      v8 = v145;
      v69 = v153;
      goto LABEL_51;
    }

    v6 = v143;
    v64 = v153;
LABEL_94:
    v96 = v14;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v98 = *(v6 + 2);
    v97 = *(v6 + 3);
    if (v98 >= v97 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v6);
    }

    *(v6 + 2) = v98 + 1;
    v99 = &v6[40 * v98];
    *(v99 + 4) = v13;
    *(v99 + 5) = v96;
    *(v99 + 6) = v15;
    *(v99 + 7) = v64;
    v99[64] = v16;
    v4 = v144;
  }

  while (v144 != v139);
LABEL_106:

  v162 = 0u;
  v163 = 0u;
  v164 = 6;
  v100 = *(v6 + 2);
  if (v100)
  {
    v101 = 0;
    v102 = v6 + 32;
    do
    {
      if (v101 >= *(v6 + 2))
      {
        goto LABEL_121;
      }

      v103 = *v102;
      v104 = *(v102 + 1);
      LOBYTE(v171) = v102[32];
      v169 = v103;
      v170 = v104;
      v105 = *v102;
      v106 = *(v102 + 1);
      v179 = v102[32];
      v178[0] = v105;
      v178[1] = v106;
      outlined init with copy of Path.Storage(v178, &v165);
      v4 = &v169;
      if ((Path.isEmpty.getter() & 1) == 0)
      {
        v4 = &v169;
        Path.boundingRect.getter();
        v209 = CGRectStandardize(v208);
        if (!CGRectIsEmpty(v209))
        {
          Path.boundingRect.getter();
          v108 = v107;
          v110 = v109;
          v112 = v111;
          v114 = v113;
          v173 = v162;
          v174 = v163;
          LOBYTE(v175) = v164;
          v4 = &v173;
          Path.boundingRect.getter();
          v216.origin.x = v115;
          v216.origin.y = v116;
          v216.size.width = v117;
          v216.size.height = v118;
          v210.origin.x = v108;
          v210.origin.y = v110;
          v210.size.width = v112;
          v210.size.height = v114;
          if (CGRectContainsRect(v210, v216))
          {
            outlined destroy of Path(&v173);
            v162 = v169;
            v163 = v170;
            v164 = v171;
            goto LABEL_109;
          }

          Path.boundingRect.getter();
          v120 = v119;
          v122 = v121;
          v124 = v123;
          v126 = v125;
          v4 = &v169;
          Path.boundingRect.getter();
          v217.origin.x = v127;
          v217.origin.y = v128;
          v217.size.width = v129;
          v217.size.height = v130;
          v211.origin.x = v120;
          v211.origin.y = v122;
          v211.size.width = v124;
          v211.size.height = v126;
          if (!CGRectContainsRect(v211, v217))
          {
            v4 = &v162;
            Path.formTrivialUnion(_:)();
          }
        }
      }

      outlined destroy of Path(&v169);
LABEL_109:
      ++v101;
      v102 += 40;
    }

    while (v100 != v101);
  }

  v165 = v162;
  v166 = v163;
  LOBYTE(v167) = v164;
  Path.boundingRect.getter();
  v213 = CGRectStandardize(v212);
  x = v213.origin.x;
  y = v213.origin.y;
  width = v213.size.width;
  height = v213.size.height;
  result = outlined destroy of Path(&v165);
  *a2 = x;
  *(a2 + 8) = y;
  *(a2 + 16) = width;
  *(a2 + 24) = height;
  *(a2 + 32) = 0;
  return result;
}

uint64_t AccessibilityNode.contentFrame(with:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v19) = *a1;
  AccessibilityNode.impliedVisibility(consideringParent:with:)(1, &v19, &v14);
  v3 = v14;
  if (v14 == 2)
  {
    result = AccessibilityNode.globalFrame.getter(v17);
    v5 = v18;
    if (v18)
    {
      LOBYTE(v15[0]) = 2;
      v6 = v15;
LABEL_8:
      result = AccessibilityNode.contentFrameFromChildren(with:)(v6, &v19);
      v8 = v19;
      v7 = v20;
      v5 = v21;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  AccessibilityNode.contentPath.getter(v15);
  if (v16 == 255)
  {
    result = AccessibilityNode.globalFrame.getter(v17);
    v5 = v18;
    if (v18)
    {
      v13 = v3;
      v6 = &v13;
      goto LABEL_8;
    }

LABEL_9:
    v7 = v17[1];
    v8 = v17[0];
    goto LABEL_10;
  }

  v19 = v15[0];
  v20 = v15[1];
  v21 = v16;
  Path.boundingRect.getter();
  v23 = CGRectStandardize(v22);
  width = v23.size.width;
  x = v23.origin.x;
  height = v23.size.height;
  y = v23.origin.y;
  result = outlined destroy of AnyAccessibilityValue?(v15, &lazy cache variable for type metadata for Path?);
  *&v7 = width;
  *&v8 = x;
  v5 = 0;
  *(&v7 + 1) = height;
  *(&v8 + 1) = y;
LABEL_10:
  *a2 = v8;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  return result;
}

uint64_t AccessibilityNode.globalFrame.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v18 = a1;

    v7 = v5 + 320 * v6 - 288;
    while (v6 <= *(v5 + 16))
    {
      outlined init with copy of AccessibilityAttachmentStorage(v7, v36);
      v9 = v36[37];

      outlined destroy of AccessibilityAttachmentStorage(v36);
      if (v9)
      {
        v10 = AGGraphClearUpdate();
        MEMORY[0x1EEE9AC00](v10);
        type metadata accessor for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?(0, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Size, changed: Bool)?, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Size, changed: Bool));
        static Update.ensure<A>(_:)();
        AGGraphSetUpdate();
        *&v35[13] = *&v31[13];
        v34 = v30;
        *v35 = *v31;
        v32 = v28;
        v33 = v29;
        if (v28 != 1)
        {
          v11 = *(&v32 + 1);
          v12 = *v35;
          v13 = *&v35[8];
          if ((v35[20] & 1) != 0 || *(v9 + 48) == 1)
          {
            v20 = v34;
            v22 = v33;

            v26 = 0uLL;
            *&v27 = v12;
            *(&v27 + 1) = v13;
            v24 = 0;
            memset(v23, 0, sizeof(v23));
            v25 = 2;
            *(&v28 + 1) = v11;
            v30 = v20;
            v29 = v22;
            CGRect.convert(to:transform:)();
            outlined destroy of CoordinateSpace(v23);

            v14 = v27;
            v19 = v27;
            v21 = v26;
            *(v9 + 16) = v26;
            *(v9 + 32) = v14;
            *(v9 + 48) = 0;

LABEL_13:
            v15 = 0;
            a1 = v18;
            v17 = v19;
            v16 = v21;
            goto LABEL_14;
          }

          outlined destroy of (value: AccessibilityGeometryStorage.Size, changed: Bool)?(&v32, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Size, changed: Bool)?, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Size, changed: Bool), &type metadata for AccessibilityGeometryStorage.Size, type metadata accessor for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?);
        }

        v19 = *(v9 + 32);
        v21 = *(v9 + 16);
        v8 = *(v9 + 48);

        if ((v8 & 1) == 0)
        {

          goto LABEL_13;
        }
      }

      v7 -= 320;
      if (!--v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_16:

    v16 = 0uLL;
    v15 = 1;
    v17 = 0uLL;
    a1 = v18;
  }

  else
  {
    v16 = 0uLL;
    v15 = 1;
    v17 = 0uLL;
  }

LABEL_14:
  *a1 = v16;
  *(a1 + 16) = v17;
  *(a1 + 32) = v15;
  return result;
}

uint64_t AccessibilityNode.explicitActivationPoint.getter()
{
  AccessibilityNode.attachment.getter(&v3);
  outlined init with copy of AccessibilityProperties(&v3, v5);
  outlined destroy of AccessibilityAttachment(&v3);
  AccessibilityProperties.activationPoint.getter();
  outlined destroy of AccessibilityProperties(v5);
  if (v4 == 255)
  {
    return AccessibilityNode.childActivationPoint(implicit:options:)(0, 0);
  }

  v1 = v3;
  v2 = v4;
  return AccessibilityNode.resolvedActivationPoint(for:)(&v1);
}

uint64_t AccessibilityNode.implicitActivationPoint(options:)(uint64_t a1)
{
  v2 = v1;
  AccessibilityNode.attachment.getter(v21);
  outlined init with copy of AccessibilityProperties(v21, v23);
  outlined destroy of AccessibilityAttachment(v21);
  AccessibilityProperties.activationPoint.getter();
  outlined destroy of AccessibilityProperties(v23);
  if (v22 == 255)
  {
    v4 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    swift_beginAccess();
    v5 = *(v2 + v4);
    v6 = *(v5 + 16);

    if (v6)
    {
      v8 = v5 + 320 * v6 - 288;
      while (1)
      {
        if (v6 > *(v5 + 16))
        {
          __break(1u);
          return result;
        }

        outlined init with copy of AccessibilityAttachment(v8, v21);
        v9 = AccessibilityAttachment.platformElement.getter();
        result = outlined destroy of AccessibilityAttachment(v21);
        if (v9)
        {
          break;
        }

        v8 -= 320;
        if (!--v6)
        {
          goto LABEL_7;
        }
      }

      v10 = [v9 knownRepresentedElement];
      [v10 accessibilityActivationPoint];
      v12 = v11;
      v14 = v13;

      if (v12 != 0.0 || v14 != 0.0)
      {
        return *&v12;
      }
    }

    else
    {
LABEL_7:
    }
  }

  if ((a1 & 2) == 0 || (result = AccessibilityNode.textLinkActivationPoint.getter(), v15 == -1))
  {
    result = AccessibilityNode.childActivationPoint(implicit:options:)(1, a1);
    if (v16 == -1)
    {
      AccessibilityNode.attachment.getter(v21);
      outlined init with copy of AccessibilityProperties(v21, v23);
      outlined destroy of AccessibilityAttachment(v21);
      LOBYTE(v21[0]) = 20;
      v17 = AccessibilityProperties.subscript.getter();
      outlined destroy of AccessibilityProperties(v23);
      if ((v17 & 1) == 0)
      {
        return 0;
      }

      static UnitPoint.center.getter();
      v21[0] = v18;
      v21[1] = v19;
      v22 = 1;
      result = AccessibilityNode.resolvedActivationPoint(for:)(v21);
      if (v20 == -1)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AccessibilityNode.childActivationPoint(implicit:options:)(char a1, uint64_t a2)
{
  v3 = v2;
  AccessibilityNode.visibility.getter(&v26);
  v28[0] = v26;
  AccessibilityNullableOptionSet<>.resolved.getter();
  if ((v29[2] | 4) != 4)
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
  swift_beginAccess();
  v7 = *(v3 + v6);
  v8 = swift_allocObject();
  *(v8 + 16) = a1 & 1;
  *(v8 + 24) = v3;

  v11 = v3;
  v9 = specialized Collection<>.filterVisible(_:)(partial apply for closure #1 in AccessibilityNode.childActivationPoint(implicit:options:), v8, v7);

  v10 = *(v11 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  *&v26 = *(v11 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  *(&v26 + 1) = v10;

  EnvironmentValues.layoutDirection.getter();

  LOBYTE(v3) = v29[1];
  LOBYTE(v28[0]) = 4;
  AccessibilityNode.impliedVisibility(consideringParent:with:)(1, v28, v29);
  LOBYTE(v11) = v29[0];
  v28[0] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI22AccessibilitySortCache33_53F8EA6FDE2098E3B48F956069C295B7LLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (v9 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    type metadata accessor for [ObjectIdentifier : AccessibilitySortCache]();
    Dictionary.reserveCapacity(_:)(i);

    *&v24 = specialized Array._copyToContiguousArray()(v13);
    specialized MutableCollection<>.sort(by:)(&v24, v3, 0, v11, v28);

    v3 = v24;

    v14 = *(v3 + 16);
    if (!v14)
    {
      goto LABEL_28;
    }

LABEL_7:
    v11 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x18D00E9C0](v11, v3);
      }

      else
      {
        if (v11 >= *(v3 + 16))
        {
          goto LABEL_25;
        }

        v16 = *(v3 + 8 * v11 + 32);
      }

      v17 = v16;
      v18 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (a1)
      {
        AccessibilityNode.implicitActivationPoint(options:)(a2);
        if (v15 != -1)
        {

          v21 = AccessibilityNode.implicitActivationPoint(options:)(a2);
          goto LABEL_23;
        }
      }

      else
      {
        AccessibilityNode.attachment.getter(&v26);
        outlined init with copy of AccessibilityProperties(&v26, v28);
        outlined destroy of AccessibilityAttachment(&v26);
        AccessibilityProperties.activationPoint.getter();
        outlined destroy of AccessibilityProperties(v28);
        if (v27 == 255)
        {
          AccessibilityNode.childActivationPoint(implicit:options:)(0, 0);
          if (v20 != -1)
          {
LABEL_21:

            v21 = AccessibilityNode.explicitActivationPoint.getter();
LABEL_23:
            v22 = v21;

            return v22;
          }
        }

        else
        {
          v24 = v26;
          v25 = v27;
          AccessibilityNode.resolvedActivationPoint(for:)(&v24);
          if (v19 != -1)
          {
            goto LABEL_21;
          }
        }
      }

      ++v11;
      if (v18 == v14)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v14 = __CocoaSet.count.getter();
  if (v14)
  {
    goto LABEL_7;
  }

LABEL_28:

  return 0;
}

uint64_t closure #1 in AccessibilityNode.childActivationPoint(implicit:options:)(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    return 1;
  }

  AccessibilityNode.attachment.getter(&v27);
  outlined init with copy of AccessibilityProperties(&v27, v29);
  outlined destroy of AccessibilityAttachment(&v27);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  result = outlined destroy of AccessibilityProperties(v29);
  v4 = v27;
  v5 = *(v27 + 16);
  if (!v5)
  {
LABEL_7:

    memset(v31, 0, 41);
LABEL_8:
    outlined destroy of AnyAccessibilityValue?(v31, &lazy cache variable for type metadata for AnyAccessibilityAction?);
    return 1;
  }

  v6 = 0;
  v7 = v27 + 32;
  while (1)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    outlined init with copy of AnyAccessibilityAction(v7, &v27);
    memset(v26, 0, sizeof(v26));
    v8 = *&v28[8];
    __swift_project_boxed_opaque_existential_1(&v27, *&v28[8]);
    v9 = *(*(&v8 + 1) + 80);
    v10 = lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction();
    if (v9(v26, &type metadata for AccessibilityVoidAction, v10, v8, *(&v8 + 1)))
    {
      break;
    }

    ++v6;
    result = outlined destroy of AnyAccessibilityAction(&v27);
    v7 += 48;
    if (v5 == v6)
    {
      goto LABEL_7;
    }
  }

  *(&v31[1] + 9) = *&v28[9];
  v31[0] = v27;
  v31[1] = *v28;
  if (!*&v28[8])
  {
    goto LABEL_8;
  }

  *&v33[9] = *(&v31[1] + 9);
  v32 = v31[0];
  *v33 = v31[1];
  v11 = *(&v31[1] + 1);
  v12 = *(&v31[1] + 9) >> 56;
  __swift_project_boxed_opaque_existential_1(&v32, *(&v31[1] + 1));
  v13 = (*(v12 + 8))(v11, v12);
  if (v16)
  {
    v17 = v13;
    v18 = v14;
    v19 = v15;
    v20 = *(a3 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
    *&v27 = *(a3 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
    *(&v27 + 1) = v20;

    v19 &= 1u;
    v29[0] = v19;
    v21 = static AccessibilityCore.textResolvesToEmpty(_:in:)();
    outlined consume of Text.Storage(v17, v18, v19);

    if ((v21 & 1) == 0)
    {
      outlined destroy of AnyAccessibilityAction(&v32);
      return 0;
    }
  }

  AccessibilityNode.attachment.getter(&v27);
  outlined init with copy of AccessibilityProperties(&v27, v29);
  outlined destroy of AccessibilityAttachment(&v27);
  v22 = v30;

  outlined destroy of AccessibilityProperties(v29);
  if (!v22)
  {
    outlined destroy of AnyAccessibilityAction(&v32);
    return 1;
  }

  v23 = *(a3 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  *&v27 = *(a3 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  *(&v27 + 1) = v23;

  v24 = static AccessibilityCore.textsResolveToEmpty(_:in:)();

  outlined destroy of AnyAccessibilityAction(&v32);
  return (v24 & 1) != 0;
}

uint64_t AccessibilityNode.resolvedActivationPoint(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  memset(__dst, 0, 317);
  v6 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = v7 + 320 * v8 - 288;
    while (v8 <= *(v7 + 16))
    {
      outlined init with copy of AccessibilityAttachmentStorage(v9, __src);
      AccessibilityProperties.activationPoint.getter();
      if (v24 == 255)
      {
        if (v5 == 255)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v19 = v23;
        v20 = v24;
        if (v5 != 255)
        {
          *v17 = v4;
          v17[1] = v3;
          v18 = v5;
          if (MEMORY[0x18D009070](&v19, v17))
          {
LABEL_9:

            outlined destroy of AnyAccessibilityValue?(__dst, &lazy cache variable for type metadata for AccessibilityAttachmentStorage?);
            memcpy(__dst, __src, 0x13DuLL);
            goto LABEL_10;
          }
        }
      }

      --v8;
      outlined destroy of AccessibilityAttachmentStorage(__src);
      v9 -= 320;
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_16:

    if (!__dst[35])
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_10:
    if (!__dst[35])
    {
      goto LABEL_17;
    }
  }

  if (__dst[37])
  {

    specialized AccessibilityGeometryStorage.path.getter(&v23);
    outlined init with copy of AnyAccessibilityValue?(&v23, __src, &lazy cache variable for type metadata for Path?);

    if (v25 != 255)
    {
      __src[0] = v23;
      __src[1] = v24;
      LOBYTE(__src[2]) = v25;
      Path.boundingRect.getter();
      v27 = CGRectStandardize(v26);
      x = v27.origin.x;
      y = v27.origin.y;
      width = v27.size.width;
      height = v27.size.height;
      outlined destroy of AnyAccessibilityValue?(&v23, &lazy cache variable for type metadata for Path?);
      if (v5)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

LABEL_17:
  LOBYTE(v19) = 4;
  AccessibilityNode.contentFrame(with:)(&v19, __src);
  if (__src[2])
  {
    goto LABEL_22;
  }

  y = *(__src + 1);
  x = *__src;
  height = *(&__src[1] + 1);
  width = *&__src[1];
  if (v5)
  {
LABEL_19:
    if (v5 == 1)
    {
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      *&v14 = *&UnitPoint.in(_:)(v28);
      goto LABEL_21;
    }

LABEL_22:
    v15 = 0.0;
    goto LABEL_23;
  }

LABEL_14:
  v14 = x + v4;
LABEL_21:
  v15 = v14;
LABEL_23:
  outlined destroy of AnyAccessibilityValue?(__dst, &lazy cache variable for type metadata for AccessibilityAttachmentStorage?);
  return *&v15;
}

uint64_t AccessibilityNode.textLinkActivationPoint.getter()
{
  v1 = v0;
  AccessibilityNode.attachment.getter(&aBlock);
  outlined init with copy of AccessibilityProperties(&aBlock, &v46);
  outlined destroy of AccessibilityAttachment(&aBlock);
  LOBYTE(aBlock) = 8;
  v2 = AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(&v46);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  AccessibilityNode.attachment.getter(&aBlock);
  outlined init with copy of AccessibilityProperties(&aBlock, &v46);
  outlined destroy of AccessibilityAttachment(&aBlock);
  v34 = v56;
  v35 = v57;
  v36 = v58;
  v37 = v59;
  v30 = v52;
  v31 = v53;
  v32 = v54;
  v33 = v55;
  v28 = v50;
  v29 = v51;
  outlined init with copy of AnyAccessibilityValue?(&v28, &aBlock, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?);
  outlined destroy of AccessibilityProperties(&v46);
  v38[6] = v34;
  v38[7] = v35;
  v38[8] = v36;
  v39 = v37;
  v38[2] = v30;
  v38[3] = v31;
  v38[4] = v32;
  v38[5] = v33;
  v38[0] = v28;
  v38[1] = v29;
  if (_s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(v38) == 1)
  {
    return 0;
  }

  outlined destroy of AnyAccessibilityValue?(&v28, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?);
  AccessibilityNode.attachment.getter(&aBlock);
  outlined init with copy of AccessibilityProperties(&aBlock, &v46);
  outlined destroy of AccessibilityAttachment(&aBlock);
  v3 = v49;

  outlined destroy of AccessibilityProperties(&v46);
  if (!v3)
  {
    return 0;
  }

  if (*(v3 + 16) != 1)
  {

    return 0;
  }

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);

  outlined copy of Text.Storage(v4, v5, v6);

  v7 = *(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  aBlock = *(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v41 = v7;
  v47 = 0;
  v46 = 0;

  v8 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)();
  outlined consume of Text.Storage(v4, v5, v6);

  if (!v8)
  {
    return 0;
  }

  v47 = 0;
  v46 = 0;
  v48 = 1;
  v9 = *MEMORY[0x1E69DB670];
  v10 = NSAttributedString.range.getter();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = &v46;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in AccessibilityNode.textLinkActivationPoint.getter;
  *(v14 + 24) = v13;
  v44 = _sypSgSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgnyy_AacGIegnyy_TRTA_0;
  v45 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  *&v42 = COERCE_DOUBLE(thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ());
  v43 = COERCE_DOUBLE(&block_descriptor_91_0);
  v15 = _Block_copy(&aBlock);

  [v8 enumerateAttribute:v9 inRange:v10 options:v12 usingBlock:{0, v15}];
  _Block_release(v15);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    if (v48)
    {
      goto LABEL_14;
    }

    specialized AccessibilityNode.withLayoutManager<A>(_:_:)(v8, v46, v47, &aBlock);
    if (v44)
    {
      goto LABEL_14;
    }

    v17 = aBlock;
    v18 = *&v41;
    v19 = *&v42;
    v20 = v43;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_14;
    }

    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (!v21)
    {
      swift_unknownObjectRelease();
    }

    v22 = [v21 window];

    if (!v22 || (v60.origin.x = v17, v60.origin.y = v18, v60.size.width = v19, v60.size.height = v20, v61 = UIAccessibilityConvertFrameToScreenCoordinates(v60, v22), x = v61.origin.x, y = v61.origin.y, width = v61.size.width, height = v61.size.height, v22, v65.origin.x = 0.0, v65.origin.y = 0.0, v65.size.width = 0.0, v65.size.height = 0.0, v62.origin.x = x, v62.origin.y = y, v62.size.width = width, v62.size.height = height, CGRectEqualToRect(v62, v65)))
    {
LABEL_14:

      return 0;
    }

    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    v27 = x + CGRectGetWidth(v63) * 0.5;
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    CGRectGetHeight(v64);

    return *&v27;
  }

  return result;
}

uint64_t closure #1 in AccessibilityNode.textLinkActivationPoint.getter(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v10 = MEMORY[0x1E6968FB0];
  v11 = MEMORY[0x1E69E6720];
  _sSay8Dispatch0A13WorkItemFlagsVGMaTm_0(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17[-v13];
  outlined init with copy of AnyAccessibilityValue?(a1, v17, &lazy cache variable for type metadata for Any?);
  URL.init(urlValue:)();
  v15 = type metadata accessor for URL();
  LODWORD(a1) = (*(*(v15 - 8) + 48))(v14, 1, v15);
  result = outlined destroy of (value: AccessibilityGeometryStorage.Size, changed: Bool)?(v14, &lazy cache variable for type metadata for URL?, v10, v11, _sSay8Dispatch0A13WorkItemFlagsVGMaTm_0);
  if (a1 != 1)
  {
    if (*(a5 + 16))
    {
      *a5 = a2;
      *(a5 + 8) = a3;
      *(a5 + 16) = 0;
    }

    else
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 1;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t AccessibilityNode.sortPriority.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
  swift_beginAccess();
  outlined init with copy of AnyAccessibilityValue?(v0 + v1, __src, &lazy cache variable for type metadata for AccessibilityAttachment?);
  if (__src[35])
  {
    memcpy(__dst, __src, sizeof(__dst));
    v2 = AccessibilityProperties.sortPriority.getter();
    outlined destroy of AccessibilityAttachment(__dst);
    return v2;
  }

  outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?);
  v3 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = *(v4 + 16);

  if (!v5)
  {
LABEL_8:

    return 0;
  }

  v7 = v4 + 320 * v5 - 288;
  while (v5 <= *(v4 + 16))
  {
    outlined init with copy of AccessibilityProperties(v7, __dst);
    v2 = AccessibilityProperties.sortPriority.getter();
    v9 = v8;
    result = outlined destroy of AccessibilityProperties(__dst);
    if ((v9 & 1) == 0)
    {

      return v2;
    }

    v7 -= 320;
    if (!--v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t AccessibilityNode.resolvedAttributedValue.getter()
{
  AccessibilityNode.attachment.getter(&v8);
  outlined init with copy of AccessibilityProperties(&v8, &v11);
  outlined destroy of AccessibilityAttachment(&v8);
  outlined init with copy of AnyAccessibilityValue?(v14, v15, &lazy cache variable for type metadata for AccessibilityValueStorage?);
  outlined destroy of AccessibilityProperties(&v11);
  if (v16 == 1)
  {
    v0 = &lazy cache variable for type metadata for AccessibilityValueStorage?;
    v1 = v15;
  }

  else
  {
    outlined init with copy of AnyAccessibilityValue?(v15, v17, &lazy cache variable for type metadata for AnyAccessibilityValue?);
    outlined destroy of AccessibilityValueStorage(v15);
    if (v18)
    {
      AnyAccessibilityValue.type.getter();
      v2 = v8;
      outlined destroy of AnyAccessibilityValue(v17);
      v3 = 2 * ((v2 & 0xFE) != 4);
      goto LABEL_7;
    }

    v0 = &lazy cache variable for type metadata for AnyAccessibilityValue?;
    v1 = v17;
  }

  outlined destroy of AnyAccessibilityValue?(v1, v0);
  v3 = 2;
LABEL_7:
  AccessibilityNode.attachment.getter(&v8);
  outlined init with copy of AccessibilityProperties(&v8, &v11);
  outlined destroy of AccessibilityAttachment(&v8);
  outlined init with copy of AnyAccessibilityValue?(v14, &v8, &lazy cache variable for type metadata for AccessibilityValueStorage?);
  outlined destroy of AccessibilityProperties(&v11);
  if (*(&v9 + 1) == 1)
  {
    outlined destroy of AnyAccessibilityValue?(&v8, &lazy cache variable for type metadata for AccessibilityValueStorage?);
    v4 = 0;
  }

  else
  {
    v4 = AccessibilityValueStorage.valueDescription.getter();
    outlined destroy of AccessibilityValueStorage(&v8);
  }

  LODWORD(v8) = v3;
  if (one-time initialization token for comma != -1)
  {
    swift_once();
  }

  v5 = specialized AccessibilityNode.resolvedAttributedTexts(_:options:separator:)(v4);

  if (!v5)
  {
    AccessibilityNode.resolvedToggleValue.getter(&v11);
    if (*(&v12 + 1) == 1)
    {
      outlined destroy of AnyAccessibilityValue?(&v11, &lazy cache variable for type metadata for AccessibilityValueStorage?);
      return 0;
    }

    else
    {
      v8 = v11;
      v9 = v12;
      v10 = v13;
      v6 = AccessibilityValueStorage.valueDescription.getter();
      LODWORD(v11) = 0;
      v5 = specialized AccessibilityNode.resolvedAttributedTexts(_:options:separator:)(v6);

      outlined destroy of AccessibilityValueStorage(&v8);
    }
  }

  return v5;
}

uint64_t AccessibilityNode.resolvedPlainTextValue.getter()
{
  AccessibilityNode.attachment.getter(&v6);
  outlined init with copy of AccessibilityProperties(&v6, &v9);
  outlined destroy of AccessibilityAttachment(&v6);
  outlined init with copy of AnyAccessibilityValue?(&v12, &v6, &lazy cache variable for type metadata for AccessibilityValueStorage?);
  outlined destroy of AccessibilityProperties(&v9);
  if (*(&v7 + 1) == 1)
  {
    outlined destroy of AnyAccessibilityValue?(&v6, &lazy cache variable for type metadata for AccessibilityValueStorage?);
    v0 = 0;
  }

  else
  {
    v0 = AccessibilityValueStorage.valueDescription.getter();
    outlined destroy of AccessibilityValueStorage(&v6);
  }

  if (one-time initialization token for comma != -1)
  {
    swift_once();
  }

  v1 = specialized AccessibilityNode.resolvedPlainTexts(_:separator:)(v0);
  v3 = v2;

  if (!v3)
  {
    AccessibilityNode.resolvedToggleValue.getter(&v9);
    if (*(&v10 + 1) == 1)
    {
      outlined destroy of AnyAccessibilityValue?(&v9, &lazy cache variable for type metadata for AccessibilityValueStorage?);
      return 0;
    }

    else
    {
      v6 = v9;
      v7 = v10;
      v8 = v11;
      v4 = AccessibilityValueStorage.valueDescription.getter();
      v1 = specialized AccessibilityNode.resolvedPlainTexts(_:separator:)(v4);

      outlined destroy of AccessibilityValueStorage(&v6);
    }
  }

  return v1;
}

uint64_t AccessibilityNode.resolvedLabels.getter()
{
  AccessibilityNode.attachment.getter(v12);
  outlined init with copy of AccessibilityProperties(v12, v13);
  outlined destroy of AccessibilityAttachment(v12);
  v1 = v13[3];

  v2 = outlined destroy of AccessibilityProperties(v13);
  if (v1)
  {
    v13[0] = v1;
    if (*(v1 + 16))
    {
      v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x338))(v2);
      if (v3)
      {
        v4 = v3;
        ObjectType = swift_getObjectType();
        v6 = swift_conformsToProtocol2();
        if (v6 && (v7 = *(v0 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8), v12[0] = *(v0 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment), v12[1] = v7, v8 = *(v6 + 8), v9 = v6, , , v10 = v8(v12, ObjectType, v9), , , v10))
        {
          specialized Array.replaceSubrange<A>(_:with:)(0, 0, v10);

          return v13[0];
        }

        else
        {
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return v1;
}

uint64_t AccessibilityNode.resolvedToggleValue.getter@<X0>(void *a1@<X8>)
{
  AccessibilityNode.attachment.getter(&v7);
  outlined init with copy of AccessibilityProperties(&v7, v9);
  outlined destroy of AccessibilityAttachment(&v7);
  v2 = v10;
  v3 = v11;
  v4 = v12;
  outlined destroy of AccessibilityProperties(v9);
  if (v4)
  {
    v3 = 0;
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  v7 = v5;
  v8 = v3;
  v9[0] = 29;
  result = AccessibilityNullableOptionSet<>.subscript.getter();
  if (result)
  {
    v7 = v5;
    v8 = v3;
    v9[0] = 2;
    LOBYTE(v7) = AccessibilityNullableOptionSet<>.subscript.getter() & 1;
    lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
    lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
    lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
    return AccessibilityValueStorage.init<A>(_:description:)();
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 1;
    a1[4] = 0;
    a1[5] = 0;
  }

  return result;
}

uint64_t AccessibilityNode.resolvedAttributedText(_:options:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v9 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v11 = *(v10 + 16);
  if (!v11)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);

LABEL_12:
    v17 = *(v4 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
    v18[0] = *(v4 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
    v18[1] = v17;

    v16 = static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)();
    outlined consume of Text.Storage(a1, a2, a3 & 1);

    return v16;
  }

  v12 = v10 + 32;
  outlined copy of Text?(a1, a2, a3, a4);

  v14 = 0;
  while (v14 < *(v10 + 16))
  {
    outlined init with copy of AccessibilityAttachmentStorage(v12, v18);
    v15 = v19;
    result = outlined destroy of AccessibilityAttachmentStorage(v18);
    if (v15 == 255 || (v15 & 1) == 0)
    {
      ++v14;
      v12 += 320;
      if (v11 != v14)
      {
        continue;
      }
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t AccessibilityNode.resolvedPlainText(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  outlined copy of Text.Storage(a1, a2, a3 & 1);

  static AccessibilityCore.TextResolutionOptions.defaultPlainText.getter();
  AccessibilityNode.attachment.getter(v11);
  outlined init with copy of AccessibilityProperties(v11, v13);
  outlined destroy of AccessibilityAttachment(v11);
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v33 = v23;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v24 = v14;
  v25 = v15;
  outlined init with copy of AnyAccessibilityValue?(&v24, v11, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?);
  outlined destroy of AccessibilityProperties(v13);
  v11[6] = v30;
  v11[7] = v31;
  v11[8] = v32;
  v12 = v33;
  v11[2] = v26;
  v11[3] = v27;
  v11[4] = v28;
  v11[5] = v29;
  v11[0] = v24;
  v11[1] = v25;
  if (_s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(v11) != 1)
  {
    outlined destroy of AnyAccessibilityValue?(&v24, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?);
  }

  v8 = *(v4 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  v13[0] = *(v4 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v13[1] = v8;

  v9 = static AccessibilityCore.textResolvedToPlainText(_:in:options:idiom:)();
  outlined consume of Text.Storage(a1, a2, a3 & 1);

  return v9;
}

uint64_t AccessibilityNode.resolvedIsInteractive.getter()
{
  AccessibilityNode.attachment.getter(v7);
  outlined init with copy of AccessibilityProperties(v7, v8);
  outlined destroy of AccessibilityAttachment(v7);
  if ((v10 & 1) == 0)
  {
    if ((v8[42] & 0x20) != 0)
    {
      v4 = 1;
    }

    else
    {
      if ((v9 & 0x200000) == 0)
      {
        goto LABEL_2;
      }

      v4 = 0;
    }

    outlined destroy of AccessibilityProperties(v8);
    return v4;
  }

LABEL_2:
  outlined destroy of AccessibilityProperties(v8);
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  v7[0] = *(v0 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v7[1] = v1;

  v2 = EnvironmentValues.isEnabled.getter();

  if ((v2 & 1) == 0)
  {
    return 0;
  }

  AccessibilityNode.attachment.getter(v7);
  outlined init with copy of AccessibilityProperties(v7, v8);
  outlined destroy of AccessibilityAttachment(v7);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v8);
  v3 = *(v7[0] + 16);

  v4 = 1;
  if (!v3)
  {
    AccessibilityNode.attachment.getter(v7);
    outlined init with copy of AccessibilityProperties(v7, v8);
    outlined destroy of AccessibilityAttachment(v7);
    LOBYTE(v7[0]) = 20;
    v5 = AccessibilityProperties.subscript.getter();
    outlined destroy of AccessibilityProperties(v8);
    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v4;
}

uint64_t AccessibilityNode.resolvedLocale.getter()
{
  _sSay8Dispatch0A13WorkItemFlagsVGMaTm_0(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v17 - v2;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  AccessibilityNode.attachment.getter(v17);
  outlined init with copy of AccessibilityProperties(v17, v18);
  outlined destroy of AccessibilityAttachment(v17);
  AccessibilityProperties.locale.getter();
  outlined destroy of AccessibilityProperties(v18);
  v11 = *(v5 + 48);
  if (v11(v3, 1, v4) == 1)
  {
    v12 = *(v0 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
    v17[0] = *(v0 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
    v17[1] = v12;

    EnvironmentValues.locale.getter();

    if (v11(v3, 1, v4) != 1)
    {
      outlined destroy of (value: AccessibilityGeometryStorage.Size, changed: Bool)?(v3, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], _sSay8Dispatch0A13WorkItemFlagsVGMaTm_0);
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
  }

  static Locale.current.getter();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v5 + 8);
  v14(v7, v4);
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = Locale.bcp47LanguageCode.getter();
  }

  v14(v10, v4);
  return v15;
}

uint64_t AccessibilityNode.next.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        return 0;
      }
    }
  }

  return result;
}

void closure #1 in AccessibilityNode.scheduleNotifyForAttachmentChange(from:to:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      AccessibilityCoreNotification.post()();
      v2 += 5;
      --v1;
    }

    while (v1);
  }
}

uint64_t specialized AccessibilityCoreNotification.post()(uint64_t ObjectType)
{
  v1 = ObjectType;
  if (ObjectType)
  {
    ObjectType = swift_getObjectType();
  }

  v15[0] = v1;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = ObjectType;
  v2 = *MEMORY[0x1E69DD8E8];
  outlined init with copy of AnyAccessibilityValue?(v15, v13, &lazy cache variable for type metadata for Any?);
  v3 = v14;
  if (v14)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = v1;
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = v1;
    v10 = 0;
  }

  UIAccessibilityPostNotification(v2, v10);
  swift_unknownObjectRelease();
  return outlined destroy of AccessibilityCore.Notification.Info(v15);
}

uint64_t specialized AccessibilityCoreNotification.post()(void *a1, char a2)
{
  AccessibilityCore.Notification.ScreenChanged.info.getter(a1, a2, v13);
  v2 = *MEMORY[0x1E69DD930];
  outlined init with copy of AnyAccessibilityValue?(v13, v11, &lazy cache variable for type metadata for Any?);
  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v9 = 0;
  }

  UIAccessibilityPostNotification(v2, v9);
  swift_unknownObjectRelease();
  return outlined destroy of AccessibilityCore.Notification.Info(v13);
}

uint64_t AccessibilityNode.accessibilityCustomAttribute(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  _sSay8Dispatch0A13WorkItemFlagsVGMaTm_0(0, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, MEMORY[0x1E6980920], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18[-1] - v7;
  AccessibilityNode.attachment.getter(v18);
  outlined init with copy of AccessibilityProperties(v18, v19);
  outlined destroy of AccessibilityAttachment(v18);
  AccessibilityProperties.customAttributes.getter();
  result = outlined destroy of AccessibilityProperties(v19);
  v10 = v18[0];
  if (!v18[0])
  {
    goto LABEL_8;
  }

  if (*(v18[0] + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = type metadata accessor for AccessibilityCustomAttributes.Value();
    v16 = *(v15 - 8);
    outlined init with copy of AccessibilityCustomAttributes.Value(v14 + *(v16 + 72) * v13, v8);
    (*(v16 + 56))(v8, 0, 1, v15);
  }

  else
  {
    v15 = type metadata accessor for AccessibilityCustomAttributes.Value();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  }

  type metadata accessor for AccessibilityCustomAttributes.Value();
  if ((*(*(v15 - 8) + 48))(v8, 1, v15) == 1)
  {
    result = outlined destroy of (value: AccessibilityGeometryStorage.Size, changed: Bool)?(v8, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, MEMORY[0x1E6980920], MEMORY[0x1E69E6720], _sSay8Dispatch0A13WorkItemFlagsVGMaTm_0);
LABEL_8:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  AccessibilityCustomAttributes.Value.axRepresentation()();
  return outlined destroy of (AccessibilityValueStorage?, AccessibilityValueStorage?)(v8, MEMORY[0x1E6980920]);
}

uint64_t assignWithCopy for AccessibilityAttachmentStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a1 + 88);
  v6 = *(a2 + 88);
  if (v5 == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = *(a2 + 64);
        v8 = *(a2 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v8;
        *(a1 + 64) = v7;
        goto LABEL_18;
      }

      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v12 = *(a2 + 64);
      v13 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v12;
      *(a1 + 80) = v13;
    }

    *(a1 + 104) = *(a2 + 104);
  }

  else if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
    v10 = *(a2 + 80);
    v9 = *(a2 + 96);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v10;
    *(a1 + 96) = v9;
  }

  else
  {
    if (v5)
    {
      v11 = (a1 + 64);
      if (v6)
      {
        __swift_assign_boxed_opaque_existential_1(v11, (a2 + 64));
      }

      else
      {
        outlined destroy of AnyAccessibilityValue(v11);
        v14 = *(a2 + 96);
        v15 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v15;
        *(a1 + 96) = v14;
      }
    }

    else if (v6)
    {
      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v16 = *(a2 + 64);
      v17 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v16;
      *(a1 + 80) = v17;
    }

    *(a1 + 104) = *(a2 + 104);
  }

LABEL_18:
  v18 = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = v18;
  v19 = *(a2 + 240);
  if (*(a1 + 240) == 1)
  {
    if (v19 == 1)
    {
      v20 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v20;
      v21 = *(a2 + 160);
      v22 = *(a2 + 176);
      v23 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v23;
      *(a1 + 160) = v21;
      *(a1 + 176) = v22;
      v24 = *(a2 + 224);
      v25 = *(a2 + 240);
      v26 = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 240) = v25;
      *(a1 + 256) = v26;
      *(a1 + 224) = v24;
    }

    else
    {
      v34 = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 128) = v34;
      v35 = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 144) = v35;
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 154) = *(a2 + 154);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      v36 = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 248) = v36;
      *(a1 + 272) = *(a2 + 272);
    }
  }

  else if (v19 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
    v27 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v27;
    v28 = *(a2 + 208);
    v30 = *(a2 + 160);
    v29 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v28;
    *(a1 + 160) = v30;
    *(a1 + 176) = v29;
    v32 = *(a2 + 240);
    v31 = *(a2 + 256);
    v33 = *(a2 + 224);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 240) = v32;
    *(a1 + 256) = v31;
    *(a1 + 224) = v33;
  }

  else
  {
    v37 = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 128) = v37;
    v38 = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 144) = v38;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 154) = *(a2 + 154);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 209) = *(a2 + 209);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);

    v39 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = v39;
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);

  v40 = *(a1 + 288);
  v41 = *(a2 + 288);
  *(a1 + 288) = v41;
  v42 = v41;

  *(a1 + 296) = *(a2 + 296);

  *(a1 + 304) = *(a2 + 304);
  v43 = *(a2 + 308);
  *(a1 + 316) = *(a2 + 316);
  *(a1 + 308) = v43;
  return a1;
}

uint64_t assignWithTake for AccessibilityAttachmentStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 88);
  if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
LABEL_4:
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_10;
  }

  if (v5)
  {
    v8 = a1 + 64;
    if (v6)
    {
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v8);
    }
  }

  v9 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v9;
  v10 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v10;

LABEL_10:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 240) != 1)
  {
    v11 = *(a2 + 240);
    if (v11 != 1)
    {
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      v16 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v16;
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = v11;

      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 272) = *(a2 + 272);
      goto LABEL_15;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
  }

  v12 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v12;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  v13 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v13;
  v14 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v14;
  v15 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v15;
LABEL_15:
  *(a1 + 280) = *(a2 + 280);

  v17 = *(a1 + 288);
  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);

  *(a1 + 304) = *(a2 + 304);
  *(a1 + 308) = *(a2 + 308);
  *(a1 + 316) = *(a2 + 316);
  return a1;
}

uint64_t specialized AccessibilityNode.resolvedAttributedTexts(_:options:separator:)(uint64_t a1)
{
  v2 = a1;
  if (a1)
  {
    if (one-time initialization token for comma != -1)
    {
      goto LABEL_15;
    }

    while (1)
    {
      AccessibilityNode.resolvedPlainText(_:)(static Text.Accessibility.comma, *algn_1ED5A7348, byte_1ED5A7350, qword_1ED5A7358);
      v3 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
      swift_beginAccess();
      v4 = *(v1 + v3);
      v5 = *(v4 + 16);
      if (!v5)
      {
        break;
      }

      v6 = v4 + 32;

      v7 = 0;
      while (v7 < *(v4 + 16))
      {
        outlined init with copy of AccessibilityAttachmentStorage(v6, v32);
        v8 = v34;
        outlined destroy of AccessibilityAttachmentStorage(v32);
        if (v8 == 255 || (v8 & 1) == 0)
        {
          ++v7;
          v6 += 320;
          if (v5 != v7)
          {
            continue;
          }
        }

        goto LABEL_10;
      }

      __break(1u);
LABEL_15:
      swift_once();
    }

LABEL_10:
    AccessibilityNode.attachment.getter(v32);
    outlined init with copy of AccessibilityProperties(v32, v11);
    outlined destroy of AccessibilityAttachment(v32);
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v22 = v12;
    v23 = v13;
    outlined init with copy of AnyAccessibilityValue?(&v22, v32, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?);
    outlined destroy of AccessibilityProperties(v11);
    v32[6] = v28;
    v32[7] = v29;
    v32[8] = v30;
    v33 = v31;
    v32[2] = v24;
    v32[3] = v25;
    v32[4] = v26;
    v32[5] = v27;
    v32[0] = v22;
    v32[1] = v23;
    if (_s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(v32) != 1)
    {
      outlined destroy of AnyAccessibilityValue?(&v22, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?);
    }

    v9 = *(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
    v11[0] = *(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
    v11[1] = v9;

    static _GraphInputs.defaultInterfaceIdiom.getter();
    v2 = static AccessibilityCore.textsResolvedToAttributedText(_:in:options:idiom:separator:)();
  }

  return v2;
}

void type metadata accessor for (AccessibilityValueStorage?, AccessibilityValueStorage?)()
{
  if (!lazy cache variable for type metadata for (AccessibilityValueStorage?, AccessibilityValueStorage?))
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for AccessibilityValueStorage?);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AccessibilityValueStorage?, AccessibilityValueStorage?));
    }
  }
}

uint64_t outlined destroy of (AccessibilityValueStorage?, AccessibilityValueStorage?)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized AccessibilityNode.resolvedPlainTexts(_:separator:)(uint64_t result)
{
  if (result)
  {
    if (*(result + 16))
    {
      if (one-time initialization token for comma != -1)
      {
        swift_once();
      }

      AccessibilityNode.resolvedPlainText(_:)(static Text.Accessibility.comma, *algn_1ED5A7348, byte_1ED5A7350, qword_1ED5A7358);

      static AccessibilityCore.TextResolutionOptions.defaultPlainText.getter();
      static _GraphInputs.defaultInterfaceIdiom.getter();
      v1 = static AccessibilityCore.textsResolvedToPlainText(_:in:options:idiom:separator:)();

      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t outlined destroy of (value: AccessibilityGeometryStorage.Size, changed: Bool)?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void type metadata accessor for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for (value: AccessibilityGeometryStorage.Size, changed: Bool)(255, a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for (value: AccessibilityGeometryStorage.Size, changed: Bool)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t specialized AccessibilityNode.removeAttachment(isInPlatformItemList:token:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  result = swift_beginAccess();
  v7 = *(v1 + v5);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return result;
  }

  v9 = v7 + 32;

  v10 = 0;
  while (1)
  {
    if (v10 >= *(v7 + 16))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    outlined init with copy of AccessibilityAttachmentStorage(v9, __src);
    if (BYTE4(__src[39]) == 255)
    {
      if (v4 == 255)
      {
        goto LABEL_14;
      }

      goto LABEL_4;
    }

    if (v4 == 255)
    {
      goto LABEL_4;
    }

    if ((__src[39] & 0x100000000) == 0)
    {
      break;
    }

    if ((v4 & 1) != 0 && HIDWORD(__src[38]) == v3)
    {
      goto LABEL_14;
    }

LABEL_4:
    ++v10;
    result = outlined destroy of AccessibilityAttachmentStorage(__src);
    v9 += 320;
    if (v8 == v10)
    {
    }
  }

  if ((v4 & 1) != 0 || *(&__src[38] + 4) != v3)
  {
    goto LABEL_4;
  }

LABEL_14:

  memcpy(__dst, __src, 0x13DuLL);
  memset(__src, 0, 296);
  AccessibilityNode.scheduleNotifyForAttachmentChange(from:to:)(__dst, __src);
  outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?);
  swift_beginAccess();
  v11 = *(v2 + v5);
  v12 = (v11 + 16);
  result = *(v11 + 2);
  if (!result)
  {
LABEL_32:
    v17 = *(v11 + 2);
LABEL_33:
    specialized Array.replaceSubrange<A>(_:with:)(result, v17);
    swift_endAccess();
    outlined destroy of AccessibilityAttachmentStorage(__dst);
    memset(__src, 0, 296);
    v18 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
    swift_beginAccess();
    outlined assign with copy of AccessibilityAttachment?(__src, v2 + v18);
    swift_endAccess();
    result = outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?);
    *(v2 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty) = 1;
    return result;
  }

  v13 = 0;
  v14 = 352;
  while (1)
  {
    v15 = v11[v14 - 4];
    if (v15 == 255)
    {
      if (v4 == 255)
      {
        goto LABEL_26;
      }

      goto LABEL_17;
    }

    if (v4 != 255)
    {
      break;
    }

LABEL_17:
    ++v13;
    v14 += 320;
    if (result == v13)
    {
      goto LABEL_32;
    }
  }

  v16 = *&v11[v14 - 12];
  if (v15)
  {
    if ((v4 & 1) != 0 && v16 == v3)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  if ((v4 & 1) != 0 || v16 != v3)
  {
    goto LABEL_17;
  }

LABEL_26:
  v17 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
LABEL_64:
    __break(1u);
    return result;
  }

  if (v17 != result)
  {
    while (1)
    {
      if (v17 >= result)
      {
        goto LABEL_59;
      }

      outlined init with copy of AccessibilityAttachmentStorage(&v11[v14], __src);
      if (BYTE4(__src[39]) == 255)
      {
        if (v4 == 255)
        {
          goto LABEL_57;
        }
      }

      else if (v4 != 255)
      {
        if ((__src[39] & 0x100000000) != 0)
        {
          if ((v4 & 1) != 0 && HIDWORD(__src[38]) == v3)
          {
            goto LABEL_57;
          }
        }

        else if ((v4 & 1) == 0 && *(&__src[38] + 4) == v3)
        {
LABEL_57:
          outlined destroy of AccessibilityAttachmentStorage(__src);
          goto LABEL_38;
        }
      }

      result = outlined destroy of AccessibilityAttachmentStorage(__src);
      if (v17 != v13)
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        v19 = v3;
        v20 = *v12;
        if (v13 >= *v12)
        {
          goto LABEL_61;
        }

        result = outlined init with copy of AccessibilityAttachmentStorage(&v11[320 * v13 + 32], __src);
        if (v17 >= v20)
        {
          goto LABEL_62;
        }

        outlined init with copy of AccessibilityAttachmentStorage(&v11[v14], v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + v5) = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
          *(v2 + v5) = v11;
        }

        v3 = v19;
        result = outlined assign with take of AccessibilityAttachmentStorage(v22, &v11[320 * v13 + 32]);
        *(v2 + v5) = v11;
        if (v17 >= *(v11 + 2))
        {
          goto LABEL_63;
        }

        outlined assign with take of AccessibilityAttachmentStorage(__src, &v11[v14]);
        *(v2 + v5) = v11;
      }

      ++v13;
LABEL_38:
      ++v17;
      v12 = (v11 + 16);
      result = *(v11 + 2);
      v14 += 320;
      if (v17 == result)
      {
        goto LABEL_29;
      }
    }
  }

  v17 = *(v11 + 2);
LABEL_29:
  result = v13;
  if (v17 >= v13)
  {
    goto LABEL_33;
  }

  __break(1u);
}

uint64_t closure #1 in NavigationStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a2;
  v41 = a5;
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v9;
  type metadata accessor for ModifiedContent();
  v10 = lazy protocol witness table accessor for type NavigationStackRootDecoratingModifier and conformance NavigationStackRootDecoratingModifier();
  v48 = a4;
  v49 = v10;
  v40 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  v37 = type metadata accessor for NavigationStackStyledCore();
  v44 = v37;
  v45 = a3;
  v46 = &protocol witness table for NavigationStackStyledCore<A>;
  v47 = a4;
  v11 = type metadata accessor for NavigationStackReader();
  v38 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for ModifiedContent();
  v39 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v20 = type metadata accessor for NavigationStack();
  v36 = Namespace.wrappedValue.getter();
  v21 = NavigationStack.$path.getter(v20);
  v34 = v22;
  v35 = v21;
  v33 = v23;
  (*(*(*(v20 + 24) - 8) + 16))(v9, a1);
  LOBYTE(v9) = *(a1 + *(v20 + 48) + 24);
  v24 = NavigationStack.localStateHost.getter();
  v25 = swift_allocObject();
  v25[2] = v31;
  v25[3] = a3;
  v25[4] = a4;
  v26 = NavigationStackReader.init(namespace:path:root:hasImplicitState:stateHost:transform:)(v36, v35, v34, v33, v32, (v9 & 1) == 0, v24, partial apply for closure #1 in closure #1 in NavigationStack.body.getter, v13, v25, v37, a3);
  MEMORY[0x18D00A570](v26, v11, &type metadata for NavigationCommonModifier, &protocol witness table for NavigationStackReader<A, B>);
  (*(v38 + 8))(v13, v11);
  v27 = lazy protocol witness table accessor for type NavigationCommonModifier and conformance NavigationCommonModifier();
  v42 = &protocol witness table for NavigationStackReader<A, B>;
  v43 = v27;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v14, WitnessTable);
  v29 = *(v39 + 8);
  v29(v16, v14);
  static ViewBuilder.buildExpression<A>(_:)(v19, v14, WitnessTable);
  return (v29)(v19, v14);
}

uint64_t closure #1 in closure #1 in NavigationStack.body.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v20 - v15;
  (*(v13 + 16))(v20 - v15, a4, v12, v14);
  v17 = lazy protocol witness table accessor for type NavigationStackRootDecoratingModifier and conformance NavigationStackRootDecoratingModifier();
  v20[0] = a5;
  v20[1] = v17;
  swift_getWitnessTable();
  (*(v13 + 32))(a6, v16, v12);
  result = type metadata accessor for NavigationStackStyledCore();
  v19 = a6 + *(result + 36);
  *v19 = a1;
  *(v19 + 8) = a2;
  *(v19 + 16) = a3;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for NavigationStack(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
    v14 = *(v13 + 24);
    if (v14 >= 2)
    {
      v14 = *v13 + 2;
    }

    *v12 = *v13;
    *(v12 + 8) = *(v13 + 8);
    if (v14 == 1)
    {
      *(v12 + 16) = *(v13 + 16);

      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    *(v12 + 24) = v15;
    v16 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v11 + 47) & 0xFFFFFFFFFFFFFFF8;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
    *v16 = v18;
    *(v16 + 8) = v19;
    *(v16 + 16) = v20;
  }

  return v3;
}

uint64_t initializeWithTake for NavigationStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 24);
  if (v10 >= 2)
  {
    v10 = *v9 + 2;
  }

  v11 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v10 == 1)
  {
    v12 = *v9;
    *(v11 + 16) = *(v9 + 16);
  }

  else
  {
    LOBYTE(v10) = 0;
    v12 = *v9;
  }

  *v11 = v12;
  *(v11 + 24) = v10;
  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  *(v13 + 16) = *(v14 + 16);
  *v13 = v15;
  return a1;
}

uint64_t assignWithTake for NavigationStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v9 != v10)
  {
    v11 = *(v9 + 24);
    if (v11 >= 2)
    {
      v11 = *v9 + 2;
    }

    if (v11 == 1)
    {
    }

    v12 = *(v10 + 24);
    if (v12 >= 2)
    {
      v12 = *v10 + 2;
    }

    if (v12 == 1)
    {
      v13 = *v10;
      *(v9 + 16) = *(v10 + 16);
      *v9 = v13;
      v14 = 1;
    }

    else
    {
      v14 = 0;
      *v9 = *v10;
    }

    *(v9 + 24) = v14;
  }

  v15 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 16);
  *v15 = *v16;
  *(v15 + 16) = v17;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationStack(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 2)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}