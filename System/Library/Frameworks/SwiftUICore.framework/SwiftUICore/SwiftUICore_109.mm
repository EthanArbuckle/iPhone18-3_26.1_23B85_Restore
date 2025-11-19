uint64_t $defer #1 <A>() in StackPlacement.flushMinorGroup()(uint64_t a1)
{
  v2 = type metadata accessor for StackPlacement();
  v3 = *(v2 + 72);
  v4 = (a1 + *(v2 + 76));

  return swapSubviews(_:_:)(v4, (a1 + v3));
}

uint64_t specialized flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(uint64_t a1, uint64_t *a2, _BYTE *a3, char a4, _BYTE *a5, _BYTE *a6)
{
  return specialized flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(a1, a2, a3, a4, a5, a6, closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply, specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));
}

{
  return specialized flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));
}

uint64_t specialized flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(uint64_t result, uint64_t *a2, _BYTE *a3, char a4, _BYTE *a5, _BYTE *a6, void (*a7)(uint64_t *__return_ptr, _OWORD *), double (*a8)(uint64_t, uint64_t, void, uint64_t, unint64_t, double))
{
  v14 = a2 + 17;
  v13 = a2[17];
  v15 = *(v13 + 16);
  if ((result & 1) != 0 || v15)
  {
    v16 = a2 + 18;
    v17 = a2[18];
    if (!v17)
    {
LABEL_43:
      __break(1u);
      return result;
    }

    v44 = result;
    if (v15)
    {
      v8 = a3;

      a3 = v8;
      if (*(v17 + 16))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v13 = 0;
      if (*(v17 + 16))
      {
LABEL_6:
        v45 = a3;
        outlined init with copy of _LazyLayout_Subview(v17 + 32, &v54);
        if (v57 == 1)
        {

          outlined destroy of _LazyLayout_Subview(&v54);
        }

        else
        {
          v18 = v58;

          outlined destroy of _LazyLayout_Subview(&v54);
          if (v18 != 1)
          {
            v29 = *a2;
            v30 = a2[1];
            v31 = *(a2 + 6);
            v32 = *(a2 + 5);
            v53[0] = *(a2 + 16);
            v24 = a8(v17, v13, *&v29, v30, v53[0] | (v32 << 32), v31);
            v28 = v33;

LABEL_26:
            result = swift_beginAccess();
            if (*v45 == 1)
            {
              *(a2 + 14) = *(a2 + 14) - v24;
            }

            v34 = a2[12];
            if (v34)
            {
              result = swift_beginAccess();
              if (*v45)
              {
                *(a2 + 14) = *(a2 + 14) - v28;
              }
            }

            if (v28 + *(a2 + 14) <= *(a2 + 7) && (v44 & 1) == 0 && (a4 & 1) == 0)
            {
              swift_beginAccess();
              *a5 = 1;
              return swapSubviews(_:_:)(v16, v14);
            }

            v35 = a2[4];
            v36 = __OFSUB__(v34, v35);
            v37 = v34 - v35;
            if (!v36)
            {
              swift_beginAccess();
              if (*a6 == 1 && (v37 & 0x8000000000000000) == 0)
              {
                a2[12] = v37;
              }

              return swapSubviews(_:_:)(v16, v14);
            }

            __break(1u);
            goto LABEL_42;
          }
        }

        v38 = v14;
        outlined init with copy of _LazyLayout_Subview(v17 + 32, &v54);

        LOBYTE(v17) = *(a2 + 24);
        if (v17)
        {
          v14 = a2[5];
        }

        else
        {
          v14 = 0;
        }

        if (*(a2 + 24))
        {
          v8 = 0;
        }

        else
        {
          v8 = a2[5];
        }

        v40 = a6;
        v41 = a2 + 18;
        v39 = a5;
        if (v13)
        {
          if (!*(v13 + 16))
          {
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          outlined init with copy of _LazyLayout_Subview(v13 + 32, v53);

          goto LABEL_21;
        }

LABEL_20:
        memset(v53, 0, 112);
LABEL_21:
        v19 = v55;
        v20 = *(LazyLayoutViewCache.item(data:)(v56) + 44);

        v21 = *MEMORY[0x1E698D3F8];
        v50 = v19;
        v51 = v20;
        v52 = v21;
        v46 = v14;
        v47 = v17 ^ 1;
        v48 = v8;
        v49 = v17;
        v22 = LayoutProxy.lengthThatFits(_:in:)(&v46, v17);
        v24 = v23;
        MEMORY[0x1EEE9AC00](v22);
        v25 = COERCE_DOUBLE(_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(a7));
        v27 = v26;
        outlined destroy of _LazyLayout_Subview?(v53, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
        if (v27)
        {
          v28 = 0.0;
        }

        else
        {
          v28 = v25;
        }

        outlined destroy of _LazyLayout_Subview(&v54);
        a6 = v40;
        v16 = v41;
        v14 = v38;
        a5 = v39;
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = a3;
  v61 = a6;
  v58 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v56 = &v54 - v13;
  v62 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  result = type metadata accessor for StackPlacement();
  v21 = result;
  v22 = *(a2 + *(result + 72));
  v23 = *(v22 + 16);
  v59 = a1;
  if ((a1 & 1) != 0 || v23)
  {
    v54 = a5;
    v24 = *(a2 + *(result + 76));
    if (!v24)
    {
      goto LABEL_40;
    }

    if (v23)
    {

      if (*(v24 + 16))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v22 = 0;
      if (*(v24 + 16))
      {
LABEL_6:
        outlined init with copy of _LazyLayout_Subview(v24 + 32, &v71);
        if (v74)
        {

          outlined destroy of _LazyLayout_Subview(&v71);
        }

        else
        {
          v25 = v75;

          outlined destroy of _LazyLayout_Subview(&v71);
          if ((v25 & 1) == 0)
          {
            (*(v62 + 16))(v19, a2, a7);
            v40 = a2 + v21[10];
            v41 = type metadata accessor for MinorProperties();
            v42 = v55;
            v43 = v40 + *(v41 + 40);
            v44 = v56;
            (*(v55 + 16))(v56, v43, AssociatedTypeWitness);
            v36 = (*(a8 + 80))(v24, v22, v44, a7, a8);
            v39 = v45;

            (*(v42 + 8))(v56, AssociatedTypeWitness);
            (*(v62 + 8))(v19, a7);
LABEL_24:
            v46 = v60;
            result = swift_beginAccess();
            v47 = v61;
            if (*(v46 + 16) == 1)
            {
              *(a2 + v21[16]) = *(a2 + v21[16]) - v36;
            }

            v48 = v21[14];
            v49 = *(a2 + v48);
            if (v49)
            {
              result = swift_beginAccess();
              if (*(v46 + 16) == 1)
              {
                *(a2 + v21[16]) = *(a2 + v21[16]) - v39;
              }
            }

            if (v39 + *(a2 + v21[16]) <= *(a2 + v21[11]) && (v59 & 1) == 0 && (v58 & 1) == 0)
            {
              v50 = v54;
              swift_beginAccess();
              *(v50 + 16) = 1;
              return swapSubviews(_:_:)((a2 + v21[19]), (a2 + v21[18]));
            }

            v51 = *(a2 + v21[10]);
            v52 = __OFSUB__(v49, v51);
            v53 = v49 - v51;
            if (!v52)
            {
              swift_beginAccess();
              if (*(v47 + 16) == 1 && (v53 & 0x8000000000000000) == 0)
              {
                *(a2 + v48) = v53;
              }

              return swapSubviews(_:_:)((a2 + v21[19]), (a2 + v21[18]));
            }

            __break(1u);
LABEL_40:
            __break(1u);
            return result;
          }
        }

        outlined init with copy of _LazyLayout_Subview(v24 + 32, &v71);

        LODWORD(v24) = *(a2 + v21[9]);
        v26 = *(a2 + v21[10] + 8);
        LODWORD(AssociatedTypeWitness) = v24 ^ 1;
        if (v24)
        {
          a1 = v26;
        }

        else
        {
          a1 = 0;
        }

        if (v24)
        {
          v26 = 0;
        }

        v56 = v26;
        if (v22)
        {
          Array.subscript.getter();

LABEL_19:
          v27 = v62;
          (*(v62 + 16))(v16, a2, a7);
          v28 = (*(a8 + 40))(a7, a8);
          v30 = v29;
          (*(v27 + 8))(v16, a7);
          v31 = v72;
          v32 = *(LazyLayoutViewCache.item(data:)(v73) + 44);

          v33 = *MEMORY[0x1E698D3F8];
          v67 = v31;
          v68 = v32;
          v69 = v33;
          v63 = a1;
          v64 = AssociatedTypeWitness;
          v65 = v56;
          v66 = v24;
          v34 = LayoutProxy.lengthThatFits(_:in:)(&v63, v24);
          v36 = v35;
          MEMORY[0x1EEE9AC00](v34);
          *(&v54 - 4) = v28;
          *(&v54 - 24) = v30 & 1;
          *(&v54 - 23) = v24;
          *(&v54 - 2) = &v71;
          v37 = COERCE_DOUBLE(_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply));
          LOBYTE(v31) = v38;
          outlined destroy of _LazyLayout_Subview?(v70, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
          if (v31)
          {
            v39 = 0.0;
          }

          else
          {
            v39 = v37;
          }

          outlined destroy of _LazyLayout_Subview(&v71);
          goto LABEL_24;
        }

LABEL_18:
        memset(v70, 0, 112);
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t protocol witness for LazyLayout.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:) in conformance LazyVStackLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  *&v10 = &unk_1F0070948;
  *(&v10 + 1) = partial apply for specialized implicit closure #2 in implicit closure #1 in LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:);
  return protocol witness for LazyLayout.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:) in conformance LazyHStackLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, v10, closure #1 in LazyStack<>.placementOfNearbySubview(_:subviews:context:cache:)partial apply, specialized LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:));
}

uint64_t protocol witness for LazyLayout.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:) in conformance LazyVStackLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  *&v10 = &unk_1F0070920;
  *(&v10 + 1) = partial apply for specialized implicit closure #2 in implicit closure #1 in LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:);
  return protocol witness for LazyLayout.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:) in conformance LazyHStackLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, v10, partial apply for closure #1 in LazyStack<>.placementOfNearbySubview(_:subviews:context:cache:), specialized LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:));
}

double protocol witness for LazyLayout.boundingRect(at:subviews:context:cache:) in conformance LazyHStackLayout@<D0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, void (*a5)(_OWORD *__return_ptr, uint64_t, uint64_t, _BYTE *, uint64_t, uint64_t, uint64_t, unint64_t)@<X6>, uint64_t a6@<X8>)
{
  memcpy(__dst, __src, 0x129uLL);
  v12 = *v6;
  v13 = v6[1];
  v14 = *(v6 + 5);
  LOBYTE(v17[0]) = *(v6 + 16);
  a5(v17, a2, a3, __dst, a4, v12, v13, LOBYTE(v17[0]) | (v14 << 32));
  result = *v17;
  v16 = v17[1];
  *a6 = v17[0];
  *(a6 + 16) = v16;
  *(a6 + 32) = v18;
  return result;
}

uint64_t specialized closure #1 in LazyHVStack<>.flexibleMinorSize(subviews:)(uint64_t a1, _BYTE *a2, void *a3)
{
  if (AGGraphHasDeadlinePassed())
  {
    result = AGGraphCancelUpdate();
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(LazyLayoutViewCache.item(data:)((a1 + 16)) + 44);

    v8 = *MEMORY[0x1E698D3F8];
    v15 = v6;
    v16 = v7;
    v17 = v8;
    if (one-time initialization token for unspecified != -1)
    {
      swift_once();
    }

    v11 = static _ProposedSize.unspecified;
    v12 = byte_1ED52ECF8;
    v13 = qword_1ED52ED00;
    v14 = byte_1ED52ED08;
    result = LayoutProxy.size(in:)(&v11);
    *a3 = v10;
  }

  *a2 = 1;
  return result;
}

{
  if (AGGraphHasDeadlinePassed())
  {
    result = AGGraphCancelUpdate();
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(LazyLayoutViewCache.item(data:)((a1 + 16)) + 44);

    v8 = *MEMORY[0x1E698D3F8];
    v15 = v6;
    v16 = v7;
    v17 = v8;
    if (one-time initialization token for unspecified != -1)
    {
      swift_once();
    }

    v11 = static _ProposedSize.unspecified;
    v12 = byte_1ED52ECF8;
    v13 = qword_1ED52ED00;
    v14 = byte_1ED52ED08;
    result = LayoutProxy.size(in:)(&v11);
    *a3 = v10;
  }

  *a2 = 1;
  return result;
}

void specialized implicit closure #2 in implicit closure #1 in LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  v14 = CGRectGetWidth(v19) * 0.5 + a5;
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  v15 = CGRectGetHeight(v20) * 0.5 + a6;

  CGRect.distance(to:)(v14, v15, a1, a2, a3, a4);
}

uint64_t specialized LazyStack<>.collectBackwards(from:to:subviews:style:atEnd:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v9 = *a4;
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  v12 = (v10 + 16);
  v32 = a1;
  v30 = 0;
  v31 = 1;
  v29 = 3;
  result = swift_allocObject();
  v14 = result;
  *(result + 16) = v11;
  v15 = (result + 16);
  v16 = v9 >> 1;
  v17 = (v9 >> 1) - 1;
  if (v9 >> 1 == 1)
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
      v27 = a1;
      v28 = v21;
      v26[0] = v9;
      MEMORY[0x1EEE9AC00](result);
      v25[2] = &v30;
      v25[3] = &v29;
      v25[4] = v9;
      v25[5] = &v32;
      v25[6] = &v28;
      v25[7] = v14;
      v25[8] = v10;
      *a5 = _LazyLayout_Subviews.apply(from:style:to:)(&v27, v26, partial apply for closure #1 in LazyStack<>.collectBackwards(from:to:subviews:style:atEnd:), v25) & 1;
      swift_beginAccess();
      a3 = *(v14 + 16);
      if (!*(a3 + 16))
      {
LABEL_12:
        swift_beginAccess();
        v24 = *(v10 + 16);

        return v24;
      }

      swift_beginAccess();
      a5 = *v12;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_9:
        v23 = a5[2];
        v22 = a5[3];
        if (v23 >= v22 >> 1)
        {
          a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, a5);
        }

        a5[2] = v23 + 1;
        a5[v23 + 4] = a3;
        *v12 = a5;
        swift_endAccess();
        *v15 = v11;

        goto LABEL_12;
      }
    }

    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a5[2] + 1, 1, a5);
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

void *initializeBufferWithCopyOfBuffer for _LazyStack_Cache(void *a1, unsigned __int16 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v7 = *(v5 + 80);
  v6 = *(v5 + 84);
  v8 = (v7 + 16) & ~v7;
  v9 = *(v5 + 64);
  v10 = v8 + v9;
  if (v6)
  {
    v11 = v8 + v9;
  }

  else
  {
    v11 = v10 + 1;
  }

  v12 = type metadata accessor for IndexSet();
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = (v14 | v7) <= 7 && ((*(v13 + 80) | v7) & 0x100000) == 0;
  if (v15 && ((-17 - v14) | v14) - *(*(v12 - 8) + 64) + ((-9 - (v14 | 7) - ((((((((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v14 | 7) + 26 <= 0x18)
  {
    v16 = v12;
    if (v6)
    {
      if (!(*(v5 + 48))(((a2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v6, AssociatedTypeWitness))
      {
LABEL_31:
        *a1 = *a2;
        v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        v22 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
        *v21 = *v22;
        (*(v5 + 16))(v21 + 1, v22 + 1, AssociatedTypeWitness);
        if (!v6)
        {
          *(a1 + v10) = 0;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (!*(a2 + v10))
      {
        goto LABEL_31;
      }

      v18 = (*(a2 + v10) - 1) << (8 * v10);
      if (v10 > 3)
      {
        v18 = 0;
      }

      if (v10)
      {
        v19 = v10 <= 3 ? v10 : 4;
        if (v19 > 2)
        {
          v20 = v19 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
        }

        else
        {
          v20 = v19 == 1 ? *a2 : *a2;
        }
      }

      else
      {
        v20 = 0;
      }

      if ((v20 | v18) == 0xFFFFFFFF)
      {
        goto LABEL_31;
      }
    }

    memcpy(a1, a2, v11);
LABEL_33:
    v23 = (a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = (a2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = *v24;
    *(v23 + 8) = *(v24 + 8);
    *v23 = v25;
    v26 = ((a1 + v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    v27 = ((a2 + v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v26 = *v27;
    v28 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
    v29 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v28 = *v29;
    v30 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
    v31 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v30 = *v31;
    v32 = ((v30 + 23) & 0xFFFFFFFFFFFFFFF8);
    v33 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v32 = *v33;
    *((v32 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
    v34 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
    v36 = *v35;
    v35 += 15;
    *v34 = v36;
    v34 += 15;
    v37 = (v35 & 0xFFFFFFFFFFFFFFF8) + 8;
    *(v34 & 0xFFFFFFFFFFFFFFF8) = *(v35 & 0xFFFFFFFFFFFFFFF8);
    v38 = (v34 & 0xFFFFFFFFFFFFFFF8) + 8;
    v39 = *(v13 + 16);

    v39(v38, v37, v16);
    return a1;
  }

  v17 = *a2;
  *a1 = *a2;
  a1 = (v17 + (((v14 | v7) & 0xF8 ^ 0x1F8) & ((v14 | v7) + 16)));

  return a1;
}

unsigned __int16 *assignWithCopy for _LazyStack_Cache(unsigned __int16 *a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = ((v7 + 16) & ~v7) + *(v5 + 64);
  v53 = ~v7;
  if (!v6)
  {
    v13 = 8 * v9;
    if (*(a1 + v9))
    {
      v14 = (*(a1 + v9) - 1) << v13;
      if (v9 > 3)
      {
        v14 = 0;
      }

      if (v9)
      {
        v15 = v9 <= 3 ? ((v7 + 16) & ~v7) + *(v5 + 64) : 4;
        if (v15 > 2)
        {
          v16 = v15 == 3 ? *a1 | (*(a1 + 2) << 16) : *a1;
        }

        else
        {
          v16 = v15 == 1 ? *a1 : *a1;
        }
      }

      else
      {
        v16 = 0;
      }

      if ((v16 | v14) != 0xFFFFFFFF)
      {
        if (!a2[v9])
        {
          goto LABEL_60;
        }

        v17 = (a2[v9] - 1) << v13;
        if (v9 > 3)
        {
          v17 = 0;
        }

        if (v9)
        {
          v18 = v9 <= 3 ? ((v7 + 16) & ~v7) + *(v5 + 64) : 4;
          if (v18 > 2)
          {
            v19 = v18 == 3 ? *a2 | (a2[2] << 16) : *a2;
          }

          else
          {
            v19 = v18 == 1 ? *a2 : *a2;
          }
        }

        else
        {
          v19 = 0;
        }

        if ((v19 | v17) == 0xFFFFFFFF)
        {
          goto LABEL_60;
        }

LABEL_52:
        if (v6)
        {
          v23 = v9;
        }

        else
        {
          v23 = v9 + 1;
        }

        memcpy(a1, a2, v23);
        goto LABEL_62;
      }
    }

    if (!a2[v9])
    {
LABEL_56:
      *a1 = *a2;
      v24 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      v25 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v24 = *v25;
      (*(v5 + 24))((v24 + v7 + 8) & v8, (v25 + v7 + 8) & v8, AssociatedTypeWitness);
      goto LABEL_62;
    }

    v20 = (a2[v9] - 1) << v13;
    if (v9 > 3)
    {
      v20 = 0;
    }

    if (v9)
    {
      if (v9 <= 3)
      {
        v21 = ((v7 + 16) & ~v7) + *(v5 + 64);
      }

      else
      {
        v21 = 4;
      }

      if (v21 > 2)
      {
        if (v21 == 3)
        {
          v22 = *a2 | (a2[2] << 16);
        }

        else
        {
          v22 = *a2;
        }
      }

      else if (v21 == 1)
      {
        v22 = *a2;
      }

      else
      {
        v22 = *a2;
      }
    }

    else
    {
      v22 = 0;
    }

    v12 = (v22 | v20) + 1;
LABEL_50:
    v8 = ~v7;
    if (v12)
    {
      (*(v5 + 8))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & v53, AssociatedTypeWitness);
      goto LABEL_52;
    }

    goto LABEL_56;
  }

  v10 = *(v5 + 48);
  v11 = v10((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & v8, v6, AssociatedTypeWitness);
  v12 = v10((((a2 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7, v6, AssociatedTypeWitness);
  if (!v11)
  {
    goto LABEL_50;
  }

  if (v12)
  {
    goto LABEL_52;
  }

LABEL_60:
  *a1 = *a2;
  v26 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  (*(v5 + 16))((v26 + v7 + 8) & v53, (v27 + v7 + 8) & v53, AssociatedTypeWitness);
  if (!v6)
  {
    *(a1 + v9) = 0;
  }

LABEL_62:
  if (v6)
  {
    v28 = v9;
  }

  else
  {
    v28 = v9 + 1;
  }

  v29 = a1 + v28;
  v30 = &a2[v28];
  v31 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  *(v31 + 8) = *(v32 + 8);
  *v31 = v33;
  v34 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v30 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;
  v34[1] = v35[1];
  v36 = ((v34 + 23) & 0xFFFFFFFFFFFFFFF8);
  v37 = ((v35 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v36 = *v37;
  v36[1] = v37[1];
  v38 = ((v36 + 23) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v37 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v38 = *v39;
  v38[1] = v39[1];
  v40 = ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  v41 = ((v39 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v40 = *v41;
  v42 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
  v43 = ((v41 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v42 = *v43;
  v44 = type metadata accessor for IndexSet();
  v45 = *(v44 - 8);
  v46 = *(v45 + 80);
  v47 = *(v45 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v48 = ((v42 + v46 + 8) & v47);
  v49 = v43 + v46 + 8;
  v50 = (v49 & v47) + 15;
  *v48 = *(v49 & v47);

  v51 = ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
  v50 &= 0xFFFFFFFFFFFFFFF8;
  *v51 = *v50;

  (*(v45 + 24))((v51 + v46 + 8) & ~v46, (v46 + 8 + v50) & ~v46, v44);
  return a1;
}

void *initializeWithTake for _LazyStack_Cache(void *a1, unsigned __int16 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = ((v7 + 16) & ~v7) + *(v5 + 64);
  if (!v6)
  {
    if (!*(a2 + v9))
    {
      goto LABEL_24;
    }

    v10 = (*(a2 + v9) - 1) << (8 * v9);
    if (v9 > 3)
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v9 <= 3 ? ((v7 + 16) & ~v7) + *(v5 + 64) : 4;
      if (v11 > 2)
      {
        v12 = v11 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v12 = v11 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v12 = 0;
    }

    if ((v12 | v10) == 0xFFFFFFFF)
    {
      goto LABEL_24;
    }

LABEL_20:
    if (v6)
    {
      v13 = v9;
    }

    else
    {
      v13 = v9 + 1;
    }

    memcpy(a1, a2, v13);
    goto LABEL_26;
  }

  if ((*(v5 + 48))((((a2 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & v8, *(v5 + 84), AssociatedTypeWitness))
  {
    goto LABEL_20;
  }

LABEL_24:
  *a1 = *a2;
  v14 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  (*(v5 + 32))((v14 + v7 + 8) & v8, (v15 + v7 + 8) & v8, AssociatedTypeWitness);
  if (!v6)
  {
    *(a1 + v9) = 0;
  }

LABEL_26:
  if (v6)
  {
    v16 = v9;
  }

  else
  {
    v16 = v9 + 1;
  }

  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 8) = *(v20 + 8);
  *v19 = v21;
  v22 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v18 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v26 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  v30 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v32 = type metadata accessor for IndexSet();
  v33 = *(v32 - 8);
  v34 = *(v33 + 32);
  v35 = *(v33 + 80);
  v36 = *(v33 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v37 = ((v30 + v35 + 8) & v36);
  v38 = ((v31 + v35 + 8) & v36);
  *v37 = *v38;
  v39 = ((v37 + 15) & 0xFFFFFFFFFFFFFFF8);
  v40 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v39 = *v40;
  v34((v39 + v35 + 8) & ~v35, (v40 + v35 + 8) & ~v35, v32);
  return a1;
}

uint64_t getEnumTagSinglePayload for _LazyStack_Cache(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = type metadata accessor for IndexSet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v5 + 80);
  v12 = *(v5 + 64);
  v13 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v14;
  }

  if (!v6)
  {
    ++v12;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v12 + ((v11 + 16) & ~v11);
  v17 = v13 | 7;
  if (a2 <= v15)
  {
    goto LABEL_35;
  }

  v18 = *(*(v8 - 8) + 64) - ((-17 - v13) | v13) - ((-9 - v17 - ((((((((((v16 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v17) - 2;
  v19 = 8 * v18;
  if (v18 > 3)
  {
    goto LABEL_15;
  }

  v21 = ((a2 - v15 + ~(-1 << v19)) >> v19) + 1;
  if (HIWORD(v21))
  {
    v20 = *(a1 + v18);
    if (v20)
    {
      goto LABEL_22;
    }

LABEL_35:
    if (v7 < v14)
    {
      v25 = ((v13 + 8 + ((((((((((a1 + v16 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v17);
      if ((v10 & 0x80000000) != 0)
      {
        v30 = *(v9 + 48);

        return v30((v13 + 8 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13);
      }

      else
      {
        v26 = *v25;
        if (*v25 >= 0xFFFFFFFF)
        {
          LODWORD(v26) = -1;
        }

        return (v26 + 1);
      }
    }

    if (v6)
    {
      v28 = (*(v5 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11, v6, AssociatedTypeWitness);
      v29 = v28 != 0;
      result = (v28 - 1);
      if (result != 0 && v29)
      {
        return result;
      }
    }

    return 0;
  }

  if (v21 > 0xFF)
  {
    v20 = *(a1 + v18);
    if (*(a1 + v18))
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if (v21 < 2)
  {
    goto LABEL_35;
  }

LABEL_15:
  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_35;
  }

LABEL_22:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = v18;
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

void storeEnumTagSinglePayload for _LazyStack_Cache(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v40 = v7;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for IndexSet();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = *(v7 + 80);
  if (v13 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (v16 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v14 + 16) & ~v14;
  v15 = *(v7 + 64);
  v19 = v18 + v15;
  if (v8)
  {
    v20 = v18 + v15;
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = *(v12 + 80);
  v22 = *(v12 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v23 = v21 + 8;
  v24 = ((v21 + 16) & ~v21) + *(*(v10 - 8) + 64);
  v25 = ((v21 + 8 + ((((((((((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v22) + v24;
  if (a3 <= v17)
  {
    goto LABEL_27;
  }

  if (v25 > 3)
  {
    v11 = 1;
    if (v17 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v28 = ~v17 + a2;
    if (v25 >= 4)
    {
      bzero(a1, v25);
      *a1 = v28;
      v29 = 1;
      if (v11 > 1)
      {
        goto LABEL_30;
      }

LABEL_74:
      if (v11)
      {
        a1[v25] = v29;
      }

      return;
    }

    v29 = (v28 >> (8 * v25)) + 1;
    if (v25)
    {
      v34 = v28 & ~(-1 << (8 * v25));
      bzero(a1, v25);
      if (v25 != 3)
      {
        if (v25 == 2)
        {
          *a1 = v34;
          if (v11 <= 1)
          {
            goto LABEL_74;
          }
        }

        else
        {
          *a1 = v28;
          if (v11 <= 1)
          {
            goto LABEL_74;
          }
        }

LABEL_30:
        if (v11 == 2)
        {
          *&a1[v25] = v29;
        }

        else
        {
          *&a1[v25] = v29;
        }

        return;
      }

      *a1 = v34;
      a1[2] = BYTE2(v34);
    }

    if (v11 <= 1)
    {
      goto LABEL_74;
    }

    goto LABEL_30;
  }

  v26 = ((a3 - v17 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
  if (!HIWORD(v26))
  {
    if (v26 < 0x100)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v26 >= 2)
    {
      v11 = v27;
    }

    else
    {
      v11 = 0;
    }

LABEL_27:
    if (v17 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v11 = 4;
  if (v17 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v25] = 0;
  }

  else if (v11)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 >= v16)
  {
    if (v9 >= a2)
    {
      if (a2 >= v8)
      {
        if (v19 <= 3)
        {
          v38 = ~(-1 << (8 * v19));
        }

        else
        {
          v38 = -1;
        }

        if (v19)
        {
          v31 = v38 & (a2 - v8);
          if (v19 <= 3)
          {
            v32 = v19;
          }

          else
          {
            v32 = 4;
          }

          v33 = a1;
          goto LABEL_87;
        }
      }

      else
      {
        v37 = *(v40 + 56);

        v37((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14, (a2 + 1), v8, AssociatedTypeWitness);
      }
    }

    else
    {
      if (v20 <= 3)
      {
        v35 = ~(-1 << (8 * v20));
      }

      else
      {
        v35 = -1;
      }

      if (v20)
      {
        v31 = v35 & (~v9 + a2);
        if (v20 <= 3)
        {
          v32 = v20;
        }

        else
        {
          v32 = 4;
        }

        v33 = a1;
        v19 = v20;
        goto LABEL_87;
      }
    }
  }

  else
  {
    a1 = ((v23 + (((((((((&a1[v20 + 23] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v22);
    if (v16 >= a2)
    {
      if ((v13 & 0x80000000) != 0)
      {
        v39 = *(v12 + 56);

        v39((v23 + ((a1 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v21, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v36 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v36 = (a2 - 1);
        }

        *a1 = v36;
      }
    }

    else
    {
      if (v24 <= 3)
      {
        v30 = ~(-1 << (8 * v24));
      }

      else
      {
        v30 = -1;
      }

      if (v24)
      {
        v31 = v30 & (~v16 + a2);
        if (v24 <= 3)
        {
          v32 = v24;
        }

        else
        {
          v32 = 4;
        }

        v33 = a1;
        v19 = v24;
LABEL_87:
        bzero(v33, v19);
        if (v32 > 2)
        {
          if (v32 == 3)
          {
            *a1 = v31;
            a1[2] = BYTE2(v31);
          }

          else
          {
            *a1 = v31;
          }
        }

        else if (v32 == 1)
        {
          *a1 = v31;
        }

        else
        {
          *a1 = v31;
        }
      }
    }
  }
}

char *initializeBufferWithCopyOfBuffer for EstimationCache(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v5 = a1;
    a1[1] = a2[1];
    v6 = *(a3 + 24);
    v8 = type metadata accessor for IndexSet();
    v9 = *(*(v8 - 8) + 16);

    v9(&v5[v6], a2 + v6, v8);
  }

  return v5;
}

char *assignWithCopy for EstimationCache(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  v6 = *(a3 + 24);
  v7 = type metadata accessor for IndexSet();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  return a1;
}

char *initializeWithTake for EstimationCache(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v6 = type metadata accessor for IndexSet();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *assignWithTake for EstimationCache(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  v6 = *(a3 + 24);
  v7 = type metadata accessor for IndexSet();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for PlacementProperties(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 16) & ~v6) + *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v11 = AssociatedTypeWitness;
    *a1 = *a2;
    v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    (*(v5 + 16))(v12 + 1, v13 + 1, v11);
    v14 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v14 = *v15;
    *(v14 + 16) = *(v15 + 16);
    *(v14 + 17) = *(v15 + 17);
    v16 = ((v14 + 25) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((v15 + 25) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

void *assignWithCopy for PlacementProperties(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  (*(v7 + 24))((v4 + v9 + 8) & ~v9, (v5 + v9 + 8) & ~v9, AssociatedTypeWitness);
  v10 = ((v9 + 16) & ~v9) + *(v8 + 40) + 7;
  v11 = (a1 + v10) & 0xFFFFFFFFFFFFFFF8;
  v12 = (a2 + v10) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  *(v11 + 16) = *(v12 + 16);
  *(v11 + 17) = *(v12 + 17);
  v13 = ((v11 + 25) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 25) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  *((v13 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *initializeWithTake for PlacementProperties(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  (*(v7 + 32))((v4 + v9 + 8) & ~v9, (v5 + v9 + 8) & ~v9, AssociatedTypeWitness);
  v10 = ((v9 + 16) & ~v9) + *(v8 + 32) + 7;
  v11 = (a1 + v10) & 0xFFFFFFFFFFFFFFF8;
  v12 = (a2 + v10) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 16) = *(v12 + 16);
  *(v11 + 17) = *(v12 + 17);
  v13 = ((v11 + 25) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 25) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  *((v13 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for PlacementProperties(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  (*(v7 + 40))((v4 + v9 + 8) & ~v9, (v5 + v9 + 8) & ~v9, AssociatedTypeWitness);
  v10 = ((v9 + 16) & ~v9) + *(v8 + 24) + 7;
  v11 = (a1 + v10) & 0xFFFFFFFFFFFFFFF8;
  v12 = (a2 + v10) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  *(v11 + 16) = *(v12 + 16);
  *(v11 + 17) = *(v12 + 17);
  v13 = ((v11 + 25) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 25) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  *((v13 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlacementProperties(int *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v10 = ((v8 + 16) & ~v8) + v9;
  if (v7 < a2)
  {
    v11 = ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v12 = v11 & 0xFFFFFFF8;
    if ((v11 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = a2 - v7 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *(a1 + v11);
        if (v16)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = *(a1 + v11);
        if (v16)
        {
          goto LABEL_20;
        }
      }
    }

    else if (v15)
    {
      v16 = *(a1 + v11);
      if (v16)
      {
LABEL_20:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          v18 = *a1;
        }

        else
        {
          v18 = 0;
        }

        v22 = v7 + (v18 | v17);
        return (v22 + 1);
      }
    }
  }

  if (v6 < 0xFE)
  {
    v21 = *(((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v21 >= 2)
    {
      v22 = (v21 + 2147483646) & 0x7FFFFFFF;
      return (v22 + 1);
    }

    return 0;
  }

  v19 = *(v5 + 48);

  return v19((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8);
}

void storeEnumTagSinglePayload for PlacementProperties(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v11 = ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v14 = 0;
    v15 = a2 - v9;
    if (a2 <= v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((v10 + 7) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = a3 - v9 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v9;
    if (a2 <= v9)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v14)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v7 < 0xFE)
        {
          *((&a1[v10 + 7] & 0xFFFFFFFFFFFFFFF8) + 16) = a2 + 1;
        }

        else if (v7 >= a2)
        {
          v21 = *(v6 + 56);

          v21((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8, a2);
        }

        else
        {
          if (v10 <= 3)
          {
            v18 = ~(-1 << (8 * v10));
          }

          else
          {
            v18 = -1;
          }

          if (v10)
          {
            v19 = v18 & (~v7 + a2);
            if (v10 <= 3)
            {
              v20 = v10;
            }

            else
            {
              v20 = 4;
            }

            bzero(a1, v10);
            if (v20 > 2)
            {
              if (v20 == 3)
              {
                *a1 = v19;
                a1[2] = BYTE2(v19);
              }

              else
              {
                *a1 = v19;
              }
            }

            else if (v20 == 1)
            {
              *a1 = v19;
            }

            else
            {
              *a1 = v19;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }
  }

  if (((((((v10 + 7) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((v10 + 7) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v9 + a2;
    bzero(a1, ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&a1[v11] = v16;
    }

    else
    {
      *&a1[v11] = v16;
    }
  }

  else if (v14)
  {
    a1[v11] = v16;
  }
}

void *initializeBufferWithCopyOfBuffer for StackPlacement(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = type metadata accessor for IndexSet();
  v71 = *(v12 - 8);
  v13 = *(v71 + 80);
  v14 = v13;
  v15 = v13 | *(v6 + 80) & 0xF8 | v10;
  v16 = (v13 | *(v6 + 80) | v10) & 0x100000;
  v17 = v15 <= 7 && v16 == 0;
  if (v17 && (v18 = ((v10 + 16) & ~v10) + v11 + 7, ((-17 - v14) | v14) - *(*(v12 - 8) + 64) + ((-18 - ((v14 | 7) + ((((((((((((((((((((v18 + (((v10 | 7) + v7 + 1) & ~(v10 | 7))) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 43) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8))) | v14 | 7) + 26 <= 0x18))
  {
    v70 = v12;
    (*(v6 + 16))(a1, a2, v5);
    v19 = a2 + v7;
    *(a1 + v7) = *(a2 + v7);
    v20 = (a1 + v7) & 0xFFFFFFFFFFFFFFF8;
    v21 = ((v19 & 0xFFFFFFFFFFFFFFF8) + 8);
    *(v20 + 8) = *v21;
    v20 += 8;
    v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    v23 = (((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v23;
    (*(v9 + 16))((v22 + (v10 | 8)) & ~v10, (v23 + (v10 | 8)) & ~v10, AssociatedTypeWitness);
    v24 = ((v18 + v20) & 0xFFFFFFFFFFFFFFF8);
    v25 = ((v21 + v18) & 0xFFFFFFFFFFFFFFF8);
    *v24 = *v25;
    v26 = ((v25 + 19) & 0xFFFFFFFFFFFFFFF8);
    v27 = v26 + 43;
    v28 = ((v24 + 19) & 0xFFFFFFFFFFFFFFF8);
    *v28 = *v26;
    v29 = (v28 + 11) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v26 + 11) & 0xFFFFFFFFFFFFFFF8;
    v31 = *v30;
    *(v29 + 8) = *(v30 + 8);
    *v29 = v31;
    v32 = (v28 + 27) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v26 + 27) & 0xFFFFFFFFFFFFFFF8;
    *v32 = *v33;
    *(v32 + 8) = *(v33 + 8);
    v34 = ((v28 + 43) & 0xFFFFFFFFFFFFFFF8);
    v35 = (v27 & 0xFFFFFFFFFFFFFFF8) + 15;
    v36 = (v27 & 0xFFFFFFFFFFFFFFF8) + 31;
    *v34 = *(v27 & 0xFFFFFFFFFFFFFFF8);
    v37 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 &= 0xFFFFFFFFFFFFFFF8;
    v38 = *v35;
    *(v37 + 8) = *(v35 + 8);
    *v37 = v38;
    v36 &= 0xFFFFFFFFFFFFFFF8;
    v39 = ((v34 + 31) & 0xFFFFFFFFFFFFFFF8);
    *v39 = *v36;
    v40 = ((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
    v41 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v41 = *v40;
    v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = *v43;

    if (v44 < 0xFFFFFFFF)
    {
      v50 = *v43;
      v51 = *(v43 + 32);
      *(v42 + 16) = *(v43 + 16);
      *(v42 + 32) = v51;
      *v42 = v50;
      v52 = *(v43 + 48);
      v53 = *(v43 + 64);
      v54 = *(v43 + 96);
      *(v42 + 80) = *(v43 + 80);
      *(v42 + 96) = v54;
      *(v42 + 48) = v52;
      *(v42 + 64) = v53;
    }

    else
    {
      *v42 = v44;
      *(v42 + 8) = *(v43 + 8);
      v45 = *(v43 + 40);
      *(v42 + 40) = v45;
      *(v42 + 48) = *(v43 + 48);
      v46 = **(v45 - 8);

      v46(v42 + 16, v43 + 16, v45);
      *(v42 + 56) = *(v43 + 56);
      *(v42 + 64) = *(v43 + 64);
      *(v42 + 68) = *(v43 + 68);
      *(v42 + 72) = *(v43 + 72);
      *(v42 + 80) = *(v43 + 80);
      v47 = *(v43 + 88);
      *(v42 + 92) = *(v43 + 92);
      *(v42 + 88) = v47;
      v48 = *(v43 + 99);
      *(v42 + 96) = *(v43 + 96);
      *(v42 + 99) = v48;
      *(v42 + 104) = *(v43 + 104);
    }

    v55 = ((v42 + 119) & 0xFFFFFFFFFFFFFFF8);
    v56 = ((v43 + 119) & 0xFFFFFFFFFFFFFFF8);
    *v55 = *v56;
    v57 = ((v55 + 15) & 0xFFFFFFFFFFFFFFF8);
    v58 = ((v56 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v57 = *v58;
    v59 = ((v57 + 23) & 0xFFFFFFFFFFFFFFF8);
    v60 = ((v58 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v59 = *v60;
    v61 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
    *v61 = *v62;
    *(v61 + 16) = *(v62 + 16);
    v63 = (v59 + 47) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v60 + 47) & 0xFFFFFFFFFFFFFFF8;
    v65 = *v64;
    v64 += 15;
    *v63 = v65;
    v63 += 15;
    v66 = (v64 & 0xFFFFFFFFFFFFFFF8) + 8;
    *(v63 & 0xFFFFFFFFFFFFFFF8) = *(v64 & 0xFFFFFFFFFFFFFFF8);
    v67 = (v63 & 0xFFFFFFFFFFFFFFF8) + 8;
    v68 = *(v71 + 16);

    v68(v67, v66, v70);
  }

  else
  {
    v49 = *a2;
    *a1 = *a2;
    a1 = (v49 + (((v15 | 7) + 16) & ~(v15 | 7)));
  }

  return a1;
}

uint64_t assignWithCopy for StackPlacement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = (v6 + a2);
  *(v6 + a1) = *v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 24);
  v12 = v10 + 24;
  v13 = *(v10 + 80);
  v14 = (v13 | 7) + 1;
  v15 = ((v14 + v7) & ~(v13 | 7));
  v16 = (&v8[v14] & ~(v13 | 7));
  *v15 = *v16;
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v11((v17 + v13 + 8) & ~v13, (v18 + v13 + 8) & ~v13, AssociatedTypeWitness);
  v19 = *(v12 + 40) + ((v13 + 16) & ~v13) + 7;
  v20 = ((v15 + v19) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v16 + v19) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v20[1] = v21[1];
  v22 = ((v20 + 19) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 19) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = (v22 + 11) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + 11) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 8);
  *v24 = *v25;
  *(v24 + 8) = v26;
  v27 = (v22 + 27) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v23 + 27) & 0xFFFFFFFFFFFFFFF8;
  *v27 = *v28;
  *(v27 + 8) = *(v28 + 8);
  v29 = (v22 + 43) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v23 + 43) & 0xFFFFFFFFFFFFFFF8;
  v31 = v30 + 15;
  v32 = *v30;
  v30 += 31;
  v33 = v29 + 15;
  *v29 = v32;
  v29 += 31;
  v33 &= 0xFFFFFFFFFFFFFFF8;
  v31 &= 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v24) = *(v31 + 8);
  *v33 = *v31;
  *(v33 + 8) = v24;
  v34 = (v30 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v29 & 0xFFFFFFFFFFFFFFF8) = *(v30 & 0xFFFFFFFFFFFFFFF8);
  v35 = (v29 & 0xFFFFFFFFFFFFFFF8) + 15;

  v35 &= 0xFFFFFFFFFFFFFFF8;
  v36 = (v34 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v35 = *(v34 & 0xFFFFFFFFFFFFFFF8);

  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = v36 & 0xFFFFFFFFFFFFFFF8;
  v39 = *v38;
  if (*v37 < 0xFFFFFFFFuLL)
  {
    if (v39 >= 0xFFFFFFFF)
    {
      *v37 = v39;
      *(v37 + 8) = *(v38 + 8);
      v42 = *(v38 + 40);
      *(v37 + 40) = v42;
      *(v37 + 48) = *(v38 + 48);
      v43 = **(v42 - 8);

      v43(v37 + 16, v38 + 16, v42);
      *(v37 + 56) = *(v38 + 56);
      *(v37 + 64) = *(v38 + 64);
      *(v37 + 68) = *(v38 + 68);
      *(v37 + 72) = *(v38 + 72);
      *(v37 + 80) = *(v38 + 80);
      v44 = *(v38 + 88);
      *(v37 + 92) = *(v38 + 92);
      *(v37 + 88) = v44;
      v45 = *(v38 + 99);
      *(v37 + 96) = *(v38 + 96);
      *(v37 + 99) = v45;
      *(v37 + 104) = *(v38 + 104);

      goto LABEL_8;
    }

LABEL_7:
    v46 = *v38;
    v47 = *(v38 + 32);
    *(v37 + 16) = *(v38 + 16);
    *(v37 + 32) = v47;
    *v37 = v46;
    v48 = *(v38 + 48);
    v49 = *(v38 + 64);
    v50 = *(v38 + 96);
    *(v37 + 80) = *(v38 + 80);
    *(v37 + 96) = v50;
    *(v37 + 48) = v48;
    *(v37 + 64) = v49;
    goto LABEL_8;
  }

  if (v39 < 0xFFFFFFFF)
  {

    __swift_destroy_boxed_opaque_existential_1(v37 + 16);

    goto LABEL_7;
  }

  *v37 = v39;

  *(v37 + 8) = *(v38 + 8);
  __swift_assign_boxed_opaque_existential_1((v37 + 16), (v38 + 16));
  *(v37 + 56) = *(v38 + 56);

  *(v37 + 64) = *(v38 + 64);
  *(v37 + 68) = *(v38 + 68);
  *(v37 + 72) = *(v38 + 72);

  *(v37 + 80) = *(v38 + 80);

  v40 = *(v38 + 88);
  *(v37 + 92) = *(v38 + 92);
  *(v37 + 88) = v40;
  v41 = *(v38 + 96);
  *(v37 + 100) = *(v38 + 100);
  *(v37 + 96) = v41;
  *(v37 + 101) = *(v38 + 101);
  *(v37 + 102) = *(v38 + 102);
  *(v37 + 104) = *(v38 + 104);
LABEL_8:
  v51 = ((v37 + 119) & 0xFFFFFFFFFFFFFFF8);
  v52 = (v38 + 119) & 0xFFFFFFFFFFFFFFF8;
  v53 = *v52;
  v52 += 15;
  *v51 = v53;

  v54 = ((v51 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v54 = *(v52 & 0xFFFFFFFFFFFFFFF8);
  v54[1] = *((v52 & 0xFFFFFFFFFFFFFFF8) + 8);
  v55 = ((v54 + 23) & 0xFFFFFFFFFFFFFFF8);
  v56 = (((v52 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  *v55 = *v56;
  v55[1] = v56[1];
  v57 = (v55 + 23) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v57 = *v58;
  *(v57 + 8) = *(v58 + 8);
  *(v57 + 16) = *(v58 + 16);
  v59 = type metadata accessor for IndexSet();
  v60 = *(v59 - 8);
  v61 = *(v60 + 80);
  v62 = (v61 | 7) + 17;
  v63 = ((v62 + v57) & ~(v61 | 7));
  v64 = ((v62 + v58) & ~(v61 | 7));
  *v63 = *v64;

  v65 = ((v63 + 15) & 0xFFFFFFFFFFFFFFF8);
  v66 = ((v64 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v65 = *v66;

  (*(v60 + 24))((v65 + v61 + 8) & ~v61, (v66 + v61 + 8) & ~v61, v59);
  return a1;
}

uint64_t initializeWithTake for StackPlacement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = (v6 + a2);
  *(v6 + a1) = *v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 32);
  v12 = v10 + 32;
  v13 = *(v10 + 80);
  v14 = (v13 | 7) + 1;
  v15 = ((v14 + v7) & ~(v13 | 7));
  v16 = (&v8[v14] & ~(v13 | 7));
  *v15 = *v16;
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v11((v17 + v13 + 8) & ~v13, (v18 + v13 + 8) & ~v13, AssociatedTypeWitness);
  v19 = *(v12 + 32) + ((v13 + 16) & ~v13) + 7;
  v20 = ((v15 + v19) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v16 + v19) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v20 + 19) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 19) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = (v22 + 11) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + 11) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  *(v24 + 8) = *(v25 + 8);
  *v24 = v26;
  v27 = (v22 + 27) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v23 + 27) & 0xFFFFFFFFFFFFFFF8;
  *v27 = *v28;
  *(v27 + 8) = *(v28 + 8);
  v29 = ((v22 + 43) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((v23 + 43) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *v30;
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  *(v31 + 8) = *(v32 + 8);
  *v31 = v33;
  v34 = ((v29 + 31) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v30 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;
  v36 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
  v37 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v36 = *v37;
  v38 = ((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v37 + 15) & 0xFFFFFFFFFFFFFFF8);
  v40 = v39[3];
  v41 = v39[4];
  v42 = v39[6];
  v38[5] = v39[5];
  v38[6] = v42;
  v38[3] = v40;
  v38[4] = v41;
  v43 = *v39;
  v44 = v39[2];
  v38[1] = v39[1];
  v38[2] = v44;
  *v38 = v43;
  v45 = ((v38 + 119) & 0xFFFFFFFFFFFFFFF8);
  v46 = ((v39 + 119) & 0xFFFFFFFFFFFFFFF8);
  *v45 = *v46;
  v47 = ((v45 + 15) & 0xFFFFFFFFFFFFFFF8);
  v48 = ((v46 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v47 = *v48;
  v49 = ((v47 + 23) & 0xFFFFFFFFFFFFFFF8);
  v50 = ((v48 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v49 = *v50;
  v51 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v51 = *v52;
  *(v51 + 16) = *(v52 + 16);
  v53 = type metadata accessor for IndexSet();
  v54 = *(v53 - 8);
  v55 = *(v54 + 32);
  v56 = *(v54 + 80);
  v57 = (v56 | 7) + 17;
  v58 = ((v57 + v51) & ~(v56 | 7));
  v59 = ((v57 + v52) & ~(v56 | 7));
  *v58 = *v59;
  v60 = ((v58 + 15) & 0xFFFFFFFFFFFFFFF8);
  v61 = ((v59 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v60 = *v61;
  v55((v60 + v56 + 8) & ~v56, (v61 + v56 + 8) & ~v56, v53);
  return a1;
}

uint64_t assignWithTake for StackPlacement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = (v6 + a2);
  *(v6 + a1) = *v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 40);
  v12 = v10 + 40;
  v13 = *(v10 + 80);
  v14 = (v13 | 7) + 1;
  v15 = ((v14 + v7) & ~(v13 | 7));
  v16 = (&v8[v14] & ~(v13 | 7));
  *v15 = *v16;
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v11((v17 + v13 + 8) & ~v13, (v18 + v13 + 8) & ~v13, AssociatedTypeWitness);
  v19 = *(v12 + 24) + ((v13 + 16) & ~v13) + 7;
  v20 = ((v15 + v19) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v16 + v19) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v20[1] = v21[1];
  v22 = ((v20 + 19) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 19) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = (v22 + 11) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + 11) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 8);
  *v24 = *v25;
  *(v24 + 8) = v26;
  v27 = (v22 + 27) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v23 + 27) & 0xFFFFFFFFFFFFFFF8;
  *v27 = *v28;
  *(v27 + 8) = *(v28 + 8);
  v29 = (v22 + 43) & 0xFFFFFFFFFFFFFFF8;
  v30 = ((v23 + 43) & 0xFFFFFFFFFFFFFFF8);
  v31 = v29 + 15;
  *v29 = *v30;
  v29 += 31;
  v31 &= 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v24) = *(v32 + 8);
  *v31 = *v32;
  *(v31 + 8) = v24;
  v33 = ((v30 + 31) & 0xFFFFFFFFFFFFFFF8);
  *(v29 & 0xFFFFFFFFFFFFFFF8) = *v33;
  v34 = (v29 & 0xFFFFFFFFFFFFFFF8) + 15;

  v34 &= 0xFFFFFFFFFFFFFFF8;
  v35 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;

  v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*v36 < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*v37 < 0xFFFFFFFFuLL)
  {

    __swift_destroy_boxed_opaque_existential_1(v36 + 16);

LABEL_5:
    v42 = *v37;
    v43 = *(v37 + 32);
    *(v36 + 16) = *(v37 + 16);
    *(v36 + 32) = v43;
    *v36 = v42;
    v44 = *(v37 + 48);
    v45 = *(v37 + 64);
    v46 = *(v37 + 96);
    *(v36 + 80) = *(v37 + 80);
    *(v36 + 96) = v46;
    *(v36 + 48) = v44;
    *(v36 + 64) = v45;
    goto LABEL_6;
  }

  *v36 = *v37;

  *(v36 + 8) = *(v37 + 8);
  __swift_destroy_boxed_opaque_existential_1(v36 + 16);
  v38 = *(v37 + 16);
  v39 = *(v37 + 32);
  *(v36 + 48) = *(v37 + 48);
  *(v36 + 16) = v38;
  *(v36 + 32) = v39;
  *(v36 + 56) = *(v37 + 56);

  *(v36 + 64) = *(v37 + 64);
  *(v36 + 68) = *(v37 + 68);
  *(v36 + 72) = *(v37 + 72);

  *(v36 + 80) = *(v37 + 80);

  v40 = *(v37 + 88);
  *(v36 + 92) = *(v37 + 92);
  *(v36 + 88) = v40;
  v41 = *(v37 + 96);
  *(v36 + 100) = *(v37 + 100);
  *(v36 + 96) = v41;
  *(v36 + 101) = *(v37 + 101);
  *(v36 + 102) = *(v37 + 102);
  *(v36 + 104) = *(v37 + 104);
LABEL_6:
  v47 = ((v36 + 119) & 0xFFFFFFFFFFFFFFF8);
  v48 = (v37 + 119) & 0xFFFFFFFFFFFFFFF8;
  v49 = *v48;
  v48 += 15;
  *v47 = v49;

  v50 = ((v47 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v50 = *(v48 & 0xFFFFFFFFFFFFFFF8);
  v50[1] = *((v48 & 0xFFFFFFFFFFFFFFF8) + 8);
  v51 = ((v50 + 23) & 0xFFFFFFFFFFFFFFF8);
  v52 = (((v48 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  *v51 = *v52;
  v51[1] = v52[1];
  v53 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v53 = *v54;
  *(v53 + 8) = *(v54 + 8);
  *(v53 + 16) = *(v54 + 16);
  v55 = type metadata accessor for IndexSet();
  v56 = *(v55 - 8);
  v57 = *(v56 + 80);
  v58 = (v57 | 7) + 17;
  v59 = ((v58 + v53) & ~(v57 | 7));
  v60 = ((v58 + v54) & ~(v57 | 7));
  *v59 = *v60;

  v61 = ((v59 + 15) & 0xFFFFFFFFFFFFFFF8);
  v62 = ((v60 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v61 = *v62;

  (*(v56 + 40))((v61 + v57 + 8) & ~v57, (v62 + v57 + 8) & ~v57, v55);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for MinorProperties(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-17 - v6) | v6) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = AssociatedTypeWitness;
    v12 = *a2;
    v11 = a2 + 15;
    *a1 = v12;
    v13 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *(v11 & 0xFFFFFFFFFFFFFFF8);
    (*(v5 + 16))(v13 + 1, (v11 & 0xFFFFFFFFFFFFFFF8) + 8, v10);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

void *assignWithCopy for MinorProperties(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v4 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v3 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 24))((v3 + *(v6 + 80) + 8) & ~*(v6 + 80), (v4 + *(v6 + 80) + 8) & ~*(v6 + 80), AssociatedTypeWitness);
  return a1;
}

void *initializeWithTake for MinorProperties(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v4 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v3 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 32))((v3 + *(v6 + 80) + 8) & ~*(v6 + 80), (v4 + *(v6 + 80) + 8) & ~*(v6 + 80), AssociatedTypeWitness);
  return a1;
}

void *assignWithTake for MinorProperties(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v4 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v3 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 40))((v3 + *(v6 + 80) + 8) & ~*(v6 + 80), (v4 + *(v6 + 80) + 8) & ~*(v6 + 80), AssociatedTypeWitness);
  return a1;
}

void partial apply for closure #1 in StackPlacement.placeSection(_:from:)(uint64_t a1, BOOL *a2)
{
  v5 = *(v2 + 40);
  v7 = 1;
  v6 = type metadata accessor for StackPlacement();
  StackPlacement.placeHeaderOrFooter(start:subview:kind:)(v5, a1, &v7, v6);
  *a2 = (*(a1 + 101) & 1) == 0;
}

void partial apply for closure #3 in StackPlacement.placeSection(_:from:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  v5 = 2;
  v4 = type metadata accessor for StackPlacement();
  StackPlacement.placeHeaderOrFooter(start:subview:kind:)(v3, a1, &v5, v4);
}

uint64_t outlined init with copy of _LazyLayout_Subview?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined destroy of _LazyLayout_Subview?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for specialized closure #1 in LazyHVStack<>.flexibleMinorSize(subviews:)(uint64_t a1, _BYTE *a2)
{
  return specialized closure #1 in LazyHVStack<>.flexibleMinorSize(subviews:)(a1, a2, *(v2 + 16));
}

{
  return specialized closure #1 in LazyHVStack<>.flexibleMinorSize(subviews:)(a1, a2, *(v2 + 16));
}

void type metadata accessor for _LazyStack_Cache<LazyVStackLayout>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for _LazyStack_Cache();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for [[_LazyLayout_Subview]]()
{
  if (!lazy cache variable for type metadata for [[_LazyLayout_Subview]])
  {
    type metadata accessor for [_LazyLayout_Subview](255, &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [[_LazyLayout_Subview]]);
    }
  }
}

double specialized LazyStack<>.distanceFromRect(_:toRect:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  (*(*(a2 + 8) + 32))(&v31);
  v20 = *(a2 + 32);
  v21 = v20(a1, a2);
  if (Axis.Set.contains(_:)((v21 & 1)))
  {
    v33.origin.x = a7;
    v33.origin.y = a8;
    v33.size.width = a9;
    v33.size.height = a10;
    v30 = a6;
    v22 = CGRectGetWidth(v33) * 0.5 + a7;
    v34.origin.x = a7;
    v34.origin.y = a8;
    v34.size.width = a9;
    v34.size.height = a10;
    v23 = CGRectGetHeight(v34) * 0.5 + a8;

    CGRect.distance(to:)(v22, v23, a3, a4, a5, v30);
  }

  else
  {
    v25 = v20(a1, a2);
    if (v25)
    {
      v26 = a6;
    }

    else
    {
      v26 = a5;
    }

    if (v25)
    {
      v27 = a4;
    }

    else
    {
      v27 = a3;
    }

    if (v25)
    {
      v28 = a8;
    }

    else
    {
      v28 = a7;
    }

    if (v25)
    {
      v29 = a10;
    }

    else
    {
      v29 = a9;
    }

    return vabdd_f64(v28 + v29 * 0.5, v26 * 0.5 + v27) - (v26 * 0.5 + v29 * 0.5);
  }

  return result;
}

uint64_t objectdestroy_30Tm()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t ViewIdentity.Tracker.update(for:)(int *a1, _DWORD *a2)
{
  v3 = *a2 >> 1;
  if (v3 == v2[1] && (v4 = *v2) != 0)
  {
    v5 = 0;
  }

  else
  {
    v4 = static ViewIdentity.nextSeed;
    v5 = 1;
    if ((static ViewIdentity.nextSeed + 1) > 1)
    {
      v6 = static ViewIdentity.nextSeed + 1;
    }

    else
    {
      v6 = 1;
    }

    static ViewIdentity.nextSeed = v6;
    *v2 = v4;
    v2[1] = v3;
  }

  *a1 = v4;
  return v5;
}

uint64_t IdentityLink.wrappedValue.getter@<X0>(_DWORD *a1@<X8>)
{
  if (*v1)
  {
    *a1 = *v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void ViewIdentity.init()(int *a1@<X8>)
{
  v1 = static ViewIdentity.nextSeed;
  if ((static ViewIdentity.nextSeed + 1) > 1)
  {
    v2 = static ViewIdentity.nextSeed + 1;
  }

  else
  {
    v2 = 1;
  }

  static ViewIdentity.nextSeed = v2;
  *a1 = v1;
}

Swift::Int ViewIdentity.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t ViewIdentity.description.getter()
{
  _StringGuts.grow(_:)(16);

  strcpy(v2, "ViewIdentity(");
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return v2[0];
}

uint64_t View.variableBlur(maxRadius:mask:opaque:)(uint64_t a1, char a2, uint64_t a3, double a4)
{
  *v5 = a4;
  v5[1] = a1;
  v6 = a2;
  return View.modifier<A>(_:)(v5, a3, &type metadata for VariableBlurEffect);
}

uint64_t VariableBlurEffect.resolve(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  LODWORD(v36) = a3;
  v35 = a2;
  type metadata accessor for Text.Style?();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v34 = v10;
  v11 = type metadata accessor for ImageResolutionContext();
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v15 = a1[1];
  v17 = type metadata accessor for Text.Style(0);
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  LODWORD(v33) = *MEMORY[0x1E698D3F8];
  *(v14 + 2) = 0;
  v19 = v12[8];
  v18(&v14[v19], 1, 1, v17);
  v20 = v12[9];
  v21 = &v14[v12[10]];
  *v21 = 520;
  v21[2] = 2;
  v14[v12[11]] = 3;
  v14[v12[12]] = 1;
  *v14 = v16;
  *(v14 + 1) = v15;

  outlined assign with take of Text.Style?(v34, &v14[v19]);
  *&v14[v20] = v33;
  (*(*v35 + 80))(&v37, v14);
  outlined init with copy of GraphicsImage(&v37, v48);
  outlined destroy of Image.Resolved(&v37);
  v35 = v37;
  v22 = v38;
  v34 = v39;
  v23 = v40;
  v24 = v42;
  v25 = v43;
  v26 = v41 & 0xFFFFFFFF00000007;
  v27 = v44 & 1;
  LODWORD(v20) = v47 & 0x30301FF;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0x80000000;
  *a4 = a5;
  *(a4 + 8) = v36;
  v28 = *(a4 + 96);
  v48[4] = *(a4 + 80);
  v49[0] = v28;
  *(v49 + 12) = *(a4 + 108);
  v29 = *(a4 + 32);
  v48[0] = *(a4 + 16);
  v48[1] = v29;
  v30 = *(a4 + 64);
  v48[2] = *(a4 + 48);
  v48[3] = v30;
  v36 = v45;
  v33 = v46;
  outlined destroy of VariableBlurStyle.Mask(v48);
  *(a4 + 16) = v35;
  *(a4 + 24) = v22;
  v31 = v33;
  *(a4 + 32) = v34;
  *(a4 + 48) = v23;
  *(a4 + 56) = v26;
  *(a4 + 64) = v24;
  *(a4 + 72) = v25;
  *(a4 + 80) = v27;
  *(a4 + 104) = v31;
  *(a4 + 88) = v36;
  *(a4 + 120) = v20;
  return _s7SwiftUI22ImageResolutionContextVWOhTm_0(v14, type metadata accessor for ImageResolutionContext);
}

__n128 VariableBlurStyle.init(radius:isOpaque:dither:mask:)@<Q0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 120) = 0x80000000;
  *a4 = a5;
  *(a4 + 8) = a1;
  *(a4 + 9) = a2;
  v7 = *(a4 + 96);
  v13[4] = *(a4 + 80);
  v14[0] = v7;
  *(v14 + 12) = *(a4 + 108);
  v8 = *(a4 + 32);
  v13[0] = *(a4 + 16);
  v13[1] = v8;
  v9 = *(a4 + 64);
  v13[2] = *(a4 + 48);
  v13[3] = v9;
  outlined destroy of VariableBlurStyle.Mask(v13);
  v10 = *(a3 + 80);
  *(a4 + 80) = *(a3 + 64);
  *(a4 + 96) = v10;
  *(a4 + 108) = *(a3 + 92);
  v11 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v11;
  result = *(a3 + 48);
  *(a4 + 48) = *(a3 + 32);
  *(a4 + 64) = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance VariableBlurEffect(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (v2 == *(a2 + 8) || ((*(*v2 + 96))(*a1) & 1) != 0)
  {
    return v3 ^ v4 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t VariableBlurStyle.mask.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[6];
  v13 = v1[5];
  v2 = v13;
  v14[0] = v3;
  *(v14 + 12) = *(v1 + 108);
  v4 = *(v14 + 12);
  v5 = v1[2];
  v10[0] = v1[1];
  v10[1] = v5;
  v6 = v1[4];
  v11 = v1[3];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  *(a1 + 92) = v4;
  return outlined init with copy of VariableBlurStyle.Mask(v10, &v9);
}

__n128 VariableBlurStyle.mask.setter(uint64_t a1)
{
  v3 = v1[6];
  v9[4] = v1[5];
  v10[0] = v3;
  *(v10 + 12) = *(v1 + 108);
  v4 = v1[2];
  v9[0] = v1[1];
  v9[1] = v4;
  v5 = v1[4];
  v9[2] = v1[3];
  v9[3] = v5;
  outlined destroy of VariableBlurStyle.Mask(v9);
  v6 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v6;
  *(v1 + 108) = *(a1 + 92);
  v7 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v7;
  result = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = result;
  return result;
}

double VariableBlurStyle.caFilterRadius.setter(double a1)
{
  result = a1 + a1;
  *v1 = result;
  return result;
}

double (*VariableBlurStyle.caFilterRadius.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = *v1 * 0.5;
  return VariableBlurStyle.caFilterRadius.modify;
}

double VariableBlurStyle.caFilterRadius.modify(uint64_t a1)
{
  result = *a1 + *a1;
  **(a1 + 8) = result;
  return result;
}

BOOL VariableBlurStyle.isIdentity.getter()
{
  if (*v0 <= 0.0)
  {
    return 1;
  }

  v1 = vorrq_s8(vorrq_s8(vorrq_s8(*(v0 + 56), *(v0 + 88)), vorrq_s8(*(v0 + 72), *(v0 + 104))), vorrq_s8(*(v0 + 24), *(v0 + 40)));
  v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | *(v0 + 16);
  return *(v0 + 120) == 0x80000000 && v2 == 0;
}

uint64_t VariableBlurStyle.effectValue(size:)@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v15[4] = v1[4];
  v15[5] = v3;
  v16[0] = v1[6];
  *(v16 + 12) = *(v1 + 108);
  v4 = v1[1];
  v15[0] = *v1;
  v15[1] = v4;
  v5 = v1[3];
  v15[2] = v1[2];
  v15[3] = v5;
  v6 = swift_allocObject();
  v7 = v1[5];
  v21 = v1[4];
  v22 = v7;
  v23[0] = v1[6];
  *(v23 + 12) = *(v1 + 108);
  v8 = v1[1];
  v17 = *v1;
  v18 = v8;
  v9 = v1[3];
  v19 = v1[2];
  v20 = v9;
  _s7SwiftUI14GraphicsFilterOWOi0_(&v17);
  v10 = v22;
  v6[5] = v21;
  v6[6] = v10;
  v6[7] = v23[0];
  *(v6 + 124) = *(v23 + 12);
  v11 = v18;
  v6[1] = v17;
  v6[2] = v11;
  v12 = v20;
  v6[3] = v19;
  v6[4] = v12;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return outlined init with copy of VariableBlurStyle(v15, &v14);
}

uint64_t protocol witness for _RendererEffect.effectValue(size:) in conformance VariableBlurStyle@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v15[4] = v1[4];
  v15[5] = v3;
  v16[0] = v1[6];
  *(v16 + 12) = *(v1 + 108);
  v4 = v1[1];
  v15[0] = *v1;
  v15[1] = v4;
  v5 = v1[3];
  v15[2] = v1[2];
  v15[3] = v5;
  v6 = swift_allocObject();
  v7 = v1[5];
  v21 = v1[4];
  v22 = v7;
  v23[0] = v1[6];
  *(v23 + 12) = *(v1 + 108);
  v8 = v1[1];
  v17 = *v1;
  v18 = v8;
  v9 = v1[3];
  v19 = v1[2];
  v20 = v9;
  _s7SwiftUI14GraphicsFilterOWOi0_(&v17);
  v10 = v22;
  v6[5] = v21;
  v6[6] = v10;
  v6[7] = v23[0];
  *(v6 + 124) = *(v23 + 12);
  v11 = v18;
  v6[1] = v17;
  v6[2] = v11;
  v12 = v20;
  v6[3] = v19;
  v6[4] = v12;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return outlined init with copy of VariableBlurStyle(v15, &v14);
}

double (*VariableBlurStyle.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

void VariableBlurStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 9);
  v7 = *(v2 + 96);
  v15[4] = *(v2 + 80);
  v16[0] = v7;
  *(v16 + 12) = *(v2 + 108);
  v8 = *(v2 + 32);
  v15[0] = *(v2 + 16);
  v15[1] = v8;
  v9 = *(v2 + 64);
  v15[2] = *(v2 + 48);
  v15[3] = v9;
  if (v4 != 0.0)
  {
    v10 = fabs(v4);
    if (v10 >= 65536.0)
    {
      v11 = 9;
    }

    else
    {
      v11 = 13;
    }

    ProtobufEncoder.encodeVarint(_:)(v11);
    if (v10 < 65536.0)
    {
      v12 = a1[1];
      v13 = v12 + 4;
      if (!__OFADD__(v12, 4))
      {
        *&v4 = v4;
        if (a1[2] >= v13)
        {
          a1[1] = v13;
          *(*a1 + v12) = LODWORD(v4);
          goto LABEL_12;
        }

        goto LABEL_19;
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      *ProtobufEncoder.growBufferSlow(to:)(v13) = LODWORD(v4);
      goto LABEL_12;
    }

    v14 = a1[1];
    v13 = v14 + 8;
    if (__OFADD__(v14, 8))
    {
      goto LABEL_18;
    }

    if (a1[2] < v13)
    {
      *ProtobufEncoder.growBufferSlow(to:)(v13) = v4;
    }

    else
    {
      a1[1] = v13;
      *(*a1 + v14) = v4;
    }
  }

LABEL_12:
  if (v5)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

  if (v6)
  {
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

  specialized ProtobufEncoder.messageField<A>(_:_:)(4, v15);
}

unint64_t VariableBlurStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  memset(v86, 0, sizeof(v86));
  v87 = 0;
  v65 = 0x80000000;
  v88 = 0x80000000;
  result = outlined destroy of VariableBlurStyle.Mask(v86);
  v5 = a1[1];
  if (v5 < a1[2])
  {
    v56 = 0;
    v57 = 0.0;
    v63 = 0;
    v64 = 0.0;
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    v6 = 0;
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v65 = 0x80000000;
    v12 = 0.0;
    v13 = a1[2];
    while (1)
    {
      result = a1[3];
      if (result)
      {
        v14 = a1[4];
        if (v5 < v14)
        {
          goto LABEL_13;
        }

        if (v14 < v5)
        {
          goto LABEL_75;
        }

        a1[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_76;
      }

      if (result <= 7)
      {
        goto LABEL_75;
      }

LABEL_13:
      v15 = result >> 3;
      if (result >> 3 > 2)
      {
        if (v15 == 3)
        {
          if ((result & 7) != 0)
          {
            if ((result & 7) != 2)
            {
              goto LABEL_75;
            }

            v37 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_76;
            }

            if (v37 < 0)
            {
              goto LABEL_84;
            }

            v38 = a1[1] + v37;
            if (v13 < v38)
            {
              goto LABEL_75;
            }

            a1[3] = 24;
            a1[4] = v38;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_76;
          }

          LODWORD(v8) = result != 0;
          goto LABEL_6;
        }

        if (v15 == 4)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_75;
          }

          v18 = v13;
          v54 = v8;
          v52 = v11;
          v11 = v10;
          v10 = v6;
          v19 = a1[5];
          v55 = v9;
          v8 = v7;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
          }

          v7 = *(v19 + 2);
          v20 = *(v19 + 3);
          if (v7 >= v20 >> 1)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v7 + 1, 1, v19);
          }

          *(v19 + 2) = v7 + 1;
          *&v19[8 * v7 + 32] = v18;
          a1[5] = v19;
          v21 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            v7 = v8;
            v10 = v11;
            v11 = v52;
            LOBYTE(v8) = v54;
            goto LABEL_76;
          }

          v9 = v9;
          if (v21 < 0)
          {
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
            __break(1u);
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
            v44 = *(result + 16);
            if (!v44)
            {
              __break(1u);
              return result;
            }

            v42 = v44 - 1;
            v43 = *(result + 8 * v42 + 32);
            *(result + 16) = v42;
            a1[5] = result;
            a1[2] = v43;
            v41 = v9;
            v11 = v52;
            LOBYTE(v9) = v55;
LABEL_77:
            v68 = v12;
            LOBYTE(v69) = v9;
            BYTE1(v69) = v8;
            *(&v69 + 2) = v84;
            HIWORD(v69) = v85;
            v70 = v57;
            v71 = v56;
            v72 = v41;
            v73 = v63;
            v74 = v62;
            v75 = v61;
            v76 = v60;
            v77 = v59;
            v78 = v58;
            v79 = v6;
            v80 = v7;
            v81 = v10;
            v82 = v11;
            v83 = v65;
            return outlined destroy of VariableBlurStyle(&v68);
          }

          v7 = v8;
          v22 = a1[1] + v21;
          if (v18 < v22)
          {
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            v10 = v11;
            v11 = v52;
            LOBYTE(v8) = v54;
LABEL_76:
            v41 = *&v64;
            goto LABEL_77;
          }

          a1[2] = v22;
          VariableBlurStyle.Mask.init(from:)(a1, &v68);
          v10 = v11;
          LOBYTE(v8) = v54;
          v23 = a1[5];
          if (!*(v23 + 2))
          {
            goto LABEL_82;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v24 = *(v23 + 2);
            if (!v24)
            {
              goto LABEL_74;
            }
          }

          else
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
            v24 = *(v23 + 2);
            if (!v24)
            {
LABEL_74:
              __break(1u);
LABEL_75:
              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();
              goto LABEL_76;
            }
          }

          v25 = v24 - 1;
          v8 = *&v23[8 * v25 + 32];
          *(v23 + 2) = v25;
          a1[5] = v23;
          a1[2] = v8;
          v50 = v69;
          v51 = v68;
          v48 = v71;
          v49 = v70;
          v46 = v73;
          v47 = v72;
          v26 = v11;
          v27 = v75;
          v45 = v74;
          v28 = v6;
          v29 = v76;
          v6 = v77;
          v30 = v7;
          v7 = v78;
          v10 = v79;
          v31 = v80;
          v32 = v81;
          *v66 = v57;
          v66[1] = v56;
          *&v66[2] = v64;
          v66[3] = v63;
          v66[4] = v62;
          v66[5] = v61;
          v66[6] = v60;
          v66[7] = v59;
          v66[8] = v58;
          v66[9] = v28;
          v66[10] = v30;
          v66[11] = v26;
          v66[12] = v52;
          v67 = v65;
          result = outlined destroy of VariableBlurStyle.Mask(v66);
          v56 = v50;
          v57 = v51;
          v63 = v48;
          v64 = v49;
          v61 = v46;
          v62 = v47;
          v59 = v27;
          v60 = v45;
          v58 = v29;
          v13 = v8;
          LODWORD(v8) = v54;
          v11 = v31;
          v65 = v32;
          v9 = v55;
          goto LABEL_6;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v35 = result & 7;
          if (v35 == 5)
          {
            v39 = a1[1];
            if (v13 < (v39 + 1))
            {
              goto LABEL_75;
            }

            v40 = *v39;
            a1[1] = v39 + 1;
            v12 = v40;
          }

          else
          {
            if (v35 == 2)
            {
              result = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                goto LABEL_76;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_85;
              }

              v36 = a1[1];
              if (v13 < v36 + result)
              {
                goto LABEL_75;
              }

              a1[3] = 9;
              a1[4] = v36 + result;
            }

            else
            {
              if (v35 != 1)
              {
                goto LABEL_75;
              }

              v36 = a1[1];
            }

            if (v13 < (v36 + 1))
            {
              goto LABEL_75;
            }

            v12 = *v36;
            a1[1] = v36 + 1;
          }

          goto LABEL_6;
        }

        if (v15 == 2)
        {
          if ((result & 7) != 0)
          {
            if ((result & 7) != 2)
            {
              goto LABEL_75;
            }

            v16 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_76;
            }

            if (v16 < 0)
            {
              goto LABEL_83;
            }

            v17 = a1[1] + v16;
            if (v13 < v17)
            {
              goto LABEL_75;
            }

            a1[3] = 16;
            a1[4] = v17;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_76;
          }

          v9 = result != 0;
          goto LABEL_6;
        }
      }

      v33 = result & 7;
      if (v33 > 1)
      {
        if (v33 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_76;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_86;
          }

          v34 = a1[1] + result;
          if (v13 < v34)
          {
            goto LABEL_75;
          }
        }

        else
        {
          if (v33 != 5)
          {
            goto LABEL_75;
          }

          v34 = a1[1] + 4;
          if (v13 < v34)
          {
            goto LABEL_75;
          }
        }

        goto LABEL_5;
      }

      if ((result & 7) != 0)
      {
        if (v33 != 1)
        {
          goto LABEL_75;
        }

        v34 = a1[1] + 8;
        if (v13 < v34)
        {
          goto LABEL_75;
        }

LABEL_5:
        a1[1] = v34;
        goto LABEL_6;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_76;
      }

LABEL_6:
      v5 = a1[1];
      if (v5 >= v13)
      {
        goto LABEL_4;
      }
    }
  }

  v56 = 0;
  v57 = 0.0;
  v63 = 0;
  v64 = 0.0;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v6 = 0;
  v7 = 0;
  LOBYTE(v8) = 0;
  LOBYTE(v9) = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0.0;
LABEL_4:
  a1[3] = 0;
  *a2 = v12;
  *(a2 + 8) = v9;
  *(a2 + 9) = v8;
  *(a2 + 16) = v57;
  *(a2 + 24) = v56;
  *(a2 + 32) = v64;
  *(a2 + 40) = v63;
  *(a2 + 48) = v62;
  *(a2 + 56) = v61;
  *(a2 + 64) = v60;
  *(a2 + 72) = v59;
  *(a2 + 80) = v58;
  *(a2 + 88) = v6;
  *(a2 + 96) = v7;
  *(a2 + 104) = v10;
  *(a2 + 112) = v11;
  *(a2 + 120) = v65;
  return result;
}

void VariableBlurStyle.Mask.encode(to:)()
{
  v1 = *v0;
  v2 = *(v0 + 104);
  if (v2 >> 30)
  {
    if (v2 >> 30 == 1 && v1 != 0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(v1);
    }
  }

  else
  {
    specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  }
}

unint64_t VariableBlurStyle.Mask.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = result;
  v6 = *(result + 8);
  v7 = *(result + 16);
  if (v6 >= v7)
  {
    v19 = 0;
    v20 = 0;
    v22 = 0;
    v25 = 0;
    v26 = 0;
    v21 = 0uLL;
    v23 = 0uLL;
    v8 = 0x80000000;
    v24 = 0uLL;
    v27 = 0uLL;
LABEL_50:
    v4[3] = 0;
    *a2 = v19;
    *(a2 + 8) = v20;
    *(a2 + 16) = v21;
    *(a2 + 32) = v22;
    *(a2 + 40) = v25;
    *(a2 + 48) = v23;
    *(a2 + 64) = v26;
    *(a2 + 72) = v24;
    *(a2 + 88) = v27;
    *(a2 + 104) = v8;
    return result;
  }

  memset(v53, 0, sizeof(v53));
  v51 = 0u;
  v52 = 0u;
  v8 = 0x80000000;
  v49 = 0u;
  v50 = 0u;
  while (1)
  {
    v54 = v8;
    result = v4[3];
    if (result)
    {
      v9 = v4[4];
      if (v6 < v9)
      {
        goto LABEL_9;
      }

      if (v9 < v6)
      {
        goto LABEL_51;
      }

      v4[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined destroy of VariableBlurStyle.Mask(&v49);
    }

    if (result < 8)
    {
      goto LABEL_51;
    }

LABEL_9:
    if (result >> 3 != 2)
    {
      break;
    }

    if ((result & 7) != 0)
    {
      if ((result & 7) != 2)
      {
        goto LABEL_51;
      }

      v28 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined destroy of VariableBlurStyle.Mask(&v49);
      }

      if (v28 < 0)
      {
        goto LABEL_59;
      }

      v29 = v4[1] + v28;
      if (v7 < v29)
      {
LABEL_51:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        return outlined destroy of VariableBlurStyle.Mask(&v49);
      }

      v4[3] = 16;
      v4[4] = v29;
    }

    v30 = ProtobufDecoder.decodeVarint()();
    v16 = v2;
    if (v2)
    {
      return outlined destroy of VariableBlurStyle.Mask(&v49);
    }

    v19 = v30;
    result = outlined destroy of VariableBlurStyle.Mask(&v49);
    v20 = v37;
    v25 = v38 & 0xFFFFFFFF00000007;
    v26 = v55 & 1;
    v22 = v3 & 0x30301FF;
    v3 = v22 | 0x40000000;
    v55 = v26;
    v38 &= 0xFFFFFFFF00000007;
    v8 = v22 | 0x40000000;
LABEL_47:
    v6 = v4[1];
    if (v6 >= v7)
    {
      goto LABEL_50;
    }

    *&v49 = v19;
    *(&v49 + 1) = v20;
    v50 = v21;
    *&v51 = v22;
    *(&v51 + 1) = v25;
    v52 = v23;
    *v53 = v26;
    *&v53[8] = v24;
    *&v53[24] = v27;
    v2 = v16;
  }

  if (result >> 3 != 1)
  {
    v31 = result & 7;
    if (v31 > 1)
    {
      if (v31 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined destroy of VariableBlurStyle.Mask(&v49);
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        v32 = v4[1] + result;
      }

      else
      {
        if (v31 != 5)
        {
          goto LABEL_51;
        }

        v32 = v4[1] + 4;
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()();
        v16 = v2;
        if (v2)
        {
          return outlined destroy of VariableBlurStyle.Mask(&v49);
        }

LABEL_46:
        v20 = *(&v49 + 1);
        v19 = v49;
        v21 = v50;
        v25 = *(&v51 + 1);
        v22 = v51;
        v23 = v52;
        v26 = *v53;
        v24 = *&v53[8];
        v27 = *&v53[24];
        v8 = v54;
        goto LABEL_47;
      }

      if (v31 != 1)
      {
        goto LABEL_51;
      }

      v32 = v4[1] + 8;
    }

    if (v7 < v32)
    {
      goto LABEL_51;
    }

    v16 = v2;
    v4[1] = v32;
    goto LABEL_46;
  }

  if ((result & 7) != 2)
  {
    goto LABEL_51;
  }

  v10 = v4[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  *&v10[8 * v12 + 32] = v7;
  v4[5] = v10;
  v13 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return outlined destroy of VariableBlurStyle.Mask(&v49);
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = v4[1] + v13;
    if (v7 < v14)
    {
      goto LABEL_51;
    }

    v4[2] = v14;
    GraphicsImage.init(from:)(v4, &v39);
    v15 = v4[5];
    if (!*(v15 + 2))
    {
      goto LABEL_57;
    }

    v16 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
    }

    v17 = *(v15 + 2);
    if (!v17)
    {
      goto LABEL_58;
    }

    v18 = v17 - 1;
    v7 = *&v15[8 * v18 + 32];
    *(v15 + 2) = v18;
    result = outlined destroy of VariableBlurStyle.Mask(&v49);
    v4[5] = v15;
    v4[2] = v7;
    v19 = v39;
    v20 = v40;
    v21 = v41;
    v22 = v42;
    v23 = v44;
    v24 = v46;
    v25 = v43 & 0xFFFFFFFF00000007;
    v26 = v45 & 1;
    v8 = v48 & 0x30301FF;
    v27 = v47;
    goto LABEL_47;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v35 = result;
  v36 = *(result + 16);
  if (v36)
  {
    v33 = v36 - 1;
    v34 = *(result + 8 * v33 + 32);
    *(result + 16) = v33;
    result = outlined destroy of VariableBlurStyle.Mask(&v49);
    v4[5] = v35;
    v4[2] = v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance VariableBlurStyle.Mask()
{
  v1 = *v0;
  v2 = *(v0 + 104);
  if (v2 >> 30)
  {
    if (v2 >> 30 == 1 && v1 != 0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(v1);
    }
  }

  else
  {
    specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  }
}

uint64_t specialized static VariableBlurStyle.Mask.== infix(_:_:)(__int128 *a1, _OWORD *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v36 = a1[4];
  *v37 = v3;
  *&v37[12] = *(a1 + 92);
  v4 = a1[1];
  v32 = *a1;
  v33 = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v34 = a1[2];
  v35 = v5;
  v8 = a2[1];
  *v38 = *a2;
  *&v38[16] = v8;
  *&v38[92] = *(a2 + 92);
  v9 = a2[3];
  v10 = a2[5];
  *&v38[64] = a2[4];
  *&v38[80] = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  *&v38[32] = a2[2];
  *&v38[48] = v11;
  v39[0] = v7;
  v39[1] = v6;
  *(v40 + 12) = *(a1 + 92);
  v14 = a1[5];
  v39[4] = v36;
  v40[0] = v14;
  v39[2] = v34;
  v39[3] = v2;
  v40[2] = v12;
  v40[3] = v13;
  *&v41[12] = *(a2 + 92);
  v15 = a2[5];
  v40[6] = *&v38[64];
  *v41 = v15;
  v40[4] = *&v38[32];
  v40[5] = v9;
  if (!(*&v37[24] >> 30))
  {
    if (!(*&v38[104] >> 30))
    {
      v26 = v32;
      v27 = v33;
      v28 = v34;
      v29 = v35;
      v30 = v36;
      *v31 = *v37;
      *&v31[16] = *&v37[16];
      *&v31[24] = *&v37[24] & 0x3FFFFFFF;
      v23[0] = *v38;
      v23[1] = *&v38[16];
      v23[2] = *&v38[32];
      v23[3] = *&v38[48];
      v23[4] = *&v38[64];
      v23[5] = *&v38[80];
      v24 = *&v38[96];
      v25 = *&v38[104];
      outlined init with copy of VariableBlurStyle.Mask(v38, v22);
      outlined init with copy of VariableBlurStyle.Mask(&v32, v22);
      outlined init with copy of VariableBlurStyle.Mask(v38, v22);
      outlined init with copy of VariableBlurStyle.Mask(&v32, v22);
      v16 = specialized static GraphicsImage.== infix(_:_:)(&v26, v23);
      _s7SwiftUI22ImageResolutionContextVWOhTm_0(v39, type metadata accessor for (VariableBlurStyle.Mask, VariableBlurStyle.Mask));
      outlined destroy of VariableBlurStyle.Mask(v38);
      outlined destroy of VariableBlurStyle.Mask(&v32);
      return v16 & 1;
    }

    *&v31[12] = *(a1 + 92);
    v18 = a1[5];
    v30 = a1[4];
    *v31 = v18;
    v19 = a1[1];
    v26 = *a1;
    v27 = v19;
    v20 = a1[3];
    v28 = a1[2];
    v29 = v20;
    *&v31[24] &= 0x3FFFFFFFu;
    outlined init with copy of GraphicsImage(&v26, v23);
LABEL_12:
    outlined init with copy of VariableBlurStyle.Mask(v38, &v26);
    _s7SwiftUI22ImageResolutionContextVWOhTm_0(v39, type metadata accessor for (VariableBlurStyle.Mask, VariableBlurStyle.Mask));
    v16 = 0;
    return v16 & 1;
  }

  if (*&v37[24] >> 30 != 1)
  {
    if (*&v38[104] >> 30 == 2 && *&v38[104] == 0x80000000)
    {
      v17 = vorrq_s8(vorrq_s8(vorrq_s8(*&v38[40], *&v38[72]), vorrq_s8(*&v38[56], *&v38[88])), vorrq_s8(*&v38[8], *&v38[24]));
      if (!(*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)) | *v38))
      {
        _s7SwiftUI22ImageResolutionContextVWOhTm_0(v39, type metadata accessor for (VariableBlurStyle.Mask, VariableBlurStyle.Mask));
        v16 = 1;
        return v16 & 1;
      }
    }

    goto LABEL_12;
  }

  if (*&v38[104] >> 30 != 1)
  {
    goto LABEL_12;
  }

  _s7SwiftUI22ImageResolutionContextVWOhTm_0(v39, type metadata accessor for (VariableBlurStyle.Mask, VariableBlurStyle.Mask));
  v16 = v32 == *v38;
  return v16 & 1;
}

uint64_t specialized static VariableBlurStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 96);
  v38[4] = *(a1 + 80);
  v39[0] = v6;
  *(v39 + 12) = *(a1 + 108);
  v7 = *(a1 + 32);
  v38[0] = *(a1 + 16);
  v38[1] = v7;
  v8 = *(a1 + 64);
  v38[2] = *(a1 + 48);
  v38[3] = v8;
  *&v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  v11 = *(a2 + 96);
  v40[4] = *(a2 + 80);
  v41[0] = v11;
  *(v41 + 12) = *(a2 + 108);
  v12 = *(a2 + 32);
  v40[0] = *(a2 + 16);
  v40[1] = v12;
  v13 = v3 == *&v8;
  v14 = *(a2 + 64);
  v40[2] = *(a2 + 48);
  v40[3] = v14;
  if (v13 && ((v4 ^ v9) & 1) == 0 && ((v5 ^ v10) & 1) == 0)
  {
    v15 = *(a1 + 96);
    v32 = *(a1 + 80);
    v33[0] = v15;
    *(v33 + 12) = *(a1 + 108);
    v16 = *(a1 + 32);
    v28 = *(a1 + 16);
    v29 = v16;
    v17 = *(a1 + 64);
    v30 = *(a1 + 48);
    v31 = v17;
    v18 = *(a2 + 96);
    v26 = *(a2 + 80);
    v27[0] = v18;
    *(v27 + 12) = *(a2 + 108);
    v19 = *(a2 + 32);
    v22 = *(a2 + 16);
    v23 = v19;
    v20 = *(a2 + 64);
    v24 = *(a2 + 48);
    v25 = v20;
    outlined init with copy of VariableBlurStyle.Mask(v38, v36);
    outlined init with copy of VariableBlurStyle.Mask(v40, v36);
    v2 = specialized static VariableBlurStyle.Mask.== infix(_:_:)(&v28, &v22);
    v34[4] = v26;
    v35[0] = v27[0];
    *(v35 + 12) = *(v27 + 12);
    v34[0] = v22;
    v34[1] = v23;
    v34[2] = v24;
    v34[3] = v25;
    outlined destroy of VariableBlurStyle.Mask(v34);
    v36[4] = v32;
    v37[0] = v33[0];
    *(v37 + 12) = *(v33 + 12);
    v36[0] = v28;
    v36[1] = v29;
    v36[2] = v30;
    v36[3] = v31;
    outlined destroy of VariableBlurStyle.Mask(v36);
  }

  return v2 & 1;
}

unint64_t instantiation function for generic protocol witness table for VariableBlurStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type VariableBlurStyle and conformance VariableBlurStyle();
  *(a1 + 8) = result;
  return result;
}

uint64_t initializeWithCopy for VariableBlurStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  v13 = *(a2 + 88);
  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  v16 = *(a2 + 112);
  v17 = *(a2 + 120);
  outlined copy of VariableBlurStyle.Mask(v3, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  *(a1 + 80) = v11;
  *(a1 + 88) = v13;
  *(a1 + 96) = v14;
  *(a1 + 104) = v15;
  *(a1 + 112) = v16;
  *(a1 + 120) = v17;
  return a1;
}

uint64_t assignWithCopy for VariableBlurStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  v25 = *(a2 + 88);
  v26 = *(a2 + 96);
  v27 = *(a2 + 104);
  v28 = *(a2 + 112);
  v29 = *(a2 + 120);
  outlined copy of VariableBlurStyle.Mask(v3, v4, v5, v6, v7, v8, v9, v10, v11, v25, v26, v27, v28, v29);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v21 = *(a1 + 96);
  v22 = *(a1 + 112);
  v23 = *(a1 + 120);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  *(a1 + 80) = v11;
  *(a1 + 88) = v25;
  *(a1 + 96) = v26;
  *(a1 + 104) = v27;
  *(a1 + 112) = v28;
  *(a1 + 120) = v29;
  outlined consume of VariableBlurStyle.Mask(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23);
  return a1;
}

uint64_t assignWithTake for VariableBlurStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  v3 = *(a2 + 112);
  v4 = *(a2 + 120);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 96);
  v15 = *(a1 + 112);
  v16 = *(a1 + 120);
  v17 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v17;
  v18 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v18;
  v19 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v19;
  *(a1 + 112) = v3;
  *(a1 + 120) = v4;
  outlined consume of VariableBlurStyle.Mask(v5, v7, v6, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for VariableBlurStyle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 124))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 25);
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

double storeEnumTagSinglePayload for VariableBlurStyle(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 124) = 1;
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
      *(a1 + 16) = 0;
      *(a1 + 24) = -a2 << 8;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 108) = 0u;
      return result;
    }

    *(a1 + 124) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for VariableBlurStyle.Mask(uint64_t a1, uint64_t a2)
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
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  v17 = *(a2 + 104);
  outlined copy of VariableBlurStyle.Mask(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17);
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
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  return a1;
}

uint64_t assignWithCopy for VariableBlurStyle.Mask(uint64_t a1, uint64_t a2)
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
  v25 = *(a2 + 72);
  v26 = *(a2 + 80);
  v27 = *(a2 + 88);
  v28 = *(a2 + 96);
  v29 = *(a2 + 104);
  outlined copy of VariableBlurStyle.Mask(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v25, v26, v27, v28, v29);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 104);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v25;
  *(a1 + 80) = v26;
  *(a1 + 88) = v27;
  *(a1 + 96) = v28;
  *(a1 + 104) = v29;
  outlined consume of VariableBlurStyle.Mask(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23);
  return a1;
}

__n128 __swift_memcpy108_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for VariableBlurStyle.Mask(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  v4 = *(a2 + 104);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  v17 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v17;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  v19 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v19;
  *(a1 + 96) = v3;
  *(a1 + 104) = v4;
  outlined consume of VariableBlurStyle.Mask(v5, v7, v6, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for VariableBlurStyle.Mask(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 108))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 9);
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

double storeEnumTagSinglePayload for VariableBlurStyle.Mask(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 104) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 108) = 1;
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
      *a1 = 0;
      *(a1 + 8) = -a2 << 8;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 92) = 0u;
      return result;
    }

    *(a1 + 108) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTag for VariableBlurStyle.Mask(_DWORD *a1)
{
  v1 = a1[26];
  if (v1 >= 0)
  {
    return v1 >> 30;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for VariableBlurStyle.Mask(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 40) & 0xFFFFFFFF00000007;
    v3 = *(result + 64) & 1;
    v4 = *(result + 104) & 0x30301FF | (a2 << 30);
    *(result + 8) = *(result + 8);
    *(result + 40) = v2;
    *(result + 64) = v3;
    *(result + 104) = v4;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0x80000000;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for VariableBlurEffect(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for VariableBlurEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for VariableBlurEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

void type metadata accessor for (VariableBlurStyle.Mask, VariableBlurStyle.Mask)()
{
  if (!lazy cache variable for type metadata for (VariableBlurStyle.Mask, VariableBlurStyle.Mask))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (VariableBlurStyle.Mask, VariableBlurStyle.Mask));
    }
  }
}

SwiftUI::FillStyle __swiftcall FillStyle.init(eoFill:antialiased:)(Swift::Bool eoFill, Swift::Bool antialiased)
{
  if (antialiased)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | eoFill);
}

void FillStyle.encode(to:)(uint64_t a1, __int16 a2)
{
  if (a2)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

  if ((a2 & 0x100) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance FillStyle()
{
  v1 = v0[1];
  if (*v0 == 1)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

  if ((v1 & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }
}

unint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance FillStyle@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FillStyle.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

Swift::Int BlendMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t _BlendModeShapeStyle.init(style:blendMode:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for _BlendModeShapeStyle();
  *(a4 + *(result + 36)) = *a2;
  return result;
}

uint64_t partial apply for closure #2 in _BlendModeShapeStyle._apply(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *(v5 + *(type metadata accessor for _BlendModeShapeStyle() + 36));
  *a2 = a1;
  *(a2 + 8) = v6;
}

unint64_t lazy protocol witness table accessor for type BlendMode and conformance BlendMode()
{
  result = lazy protocol witness table cache variable for type BlendMode and conformance BlendMode;
  if (!lazy protocol witness table cache variable for type BlendMode and conformance BlendMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlendMode and conformance BlendMode);
  }

  return result;
}

Swift::Int Material.ID.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Material.ID()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Material.ID()
{
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t Material.ResolvedMaterial.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return outlined copy of Material.ID(v2, v3);
}

uint64_t Material.ResolvedMaterial.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = outlined consume of Material.ID(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

void Material.ResolvedMaterial.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 12);
  Material.ID.hash(into:)(a1);
  Hasher._combine(_:)(v2);
}

Swift::Int Material.ResolvedMaterial.hashValue.getter()
{
  v1 = *(v0 + 12);
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v3);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Material.ResolvedMaterial()
{
  v1 = *(v0 + 12);
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v3);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Material.ResolvedMaterial(uint64_t a1)
{
  v2 = *(v1 + 12);
  Material.ID.hash(into:)(a1);
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Material.ResolvedMaterial()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 12);
  Material.ID.hash(into:)(v3);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *Material.init(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 8);
  *(a2 + 12) = 0;
  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void *Material.resolve(in:role:substrate:shapeMetrics:)@<X0>(double *a1@<X0>, char *a2@<X1>, char *a3@<X2>, void *(*a4)(double *__return_ptr, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 1);
  v27 = *a3;
  v28 = *a2;
  v10 = *v5;
  v11 = *(v5 + 8);
  v12 = *(v5 + 12);
  v40 = *a1;
  v41 = v9;
  *&v38[0] = v10;
  BYTE8(v38[0]) = v11;
  HIDWORD(v38[0]) = v12;
  v13 = EnvironmentValues.materialProvider(for:)(v38);
  if (v13)
  {
    v14 = v13;
    v51 = 1;
    v50 = 1;
    outlined copy of Material.ID(v10, v11);

    result = a4(&v40, v15);
    v26 = v12;
    if (LOBYTE(v43))
    {
      v17 = 0;
      v18 = 0.0;
      v19 = 0.0;
LABEL_9:
      v25 = v17;
      *&v34 = v8;
      *(&v34 + 1) = v9;
      LOBYTE(v35) = v28;
      BYTE1(v35) = v27;
      *(&v35 + 1) = v19;
      *&v36 = v18;
      v21 = v51;
      BYTE8(v36) = v51;
      *v37 = v19;
      *&v37[8] = v17;
      *&v37[16] = v18;
      v22 = v50;
      v37[24] = v50;
      v31 = v36;
      v32[0] = *v37;
      *(v32 + 9) = *&v37[9];
      v29 = v34;
      v30 = v35;
      v23 = *(*v14 + 80);
      outlined init with copy of Material.Context(&v34, &v40);
      v23(&v33, &v29);

      v38[2] = v31;
      v39[0] = v32[0];
      *(v39 + 9) = *(v32 + 9);
      v38[0] = v29;
      v38[1] = v30;
      outlined destroy of Material.Context(v38);
      v40 = v8;
      v41 = v9;
      LOBYTE(v42) = v28;
      BYTE1(v42) = v27;
      v43 = v19;
      v44 = v18;
      v45 = v21;
      v46 = v19;
      v47 = v25;
      v48 = v18;
      v49 = v22;
      outlined destroy of Material.Context(&v40);
      v24 = v33;
      outlined consume of Material.ID(v10, v11);
      *a5 = v24;
      *(a5 + 8) = 2;
      *(a5 + 12) = v26;
      outlined copy of Material.ID(v24, 2u);
      return outlined consume of Material.ID(v24, 2u);
    }

    v19 = v40;
    v18 = v42;
    if (v40 <= v42)
    {
      v17 = v41;
      v51 = 0;
      v50 = 0;
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    v40 = v8;
    v41 = v9;

    v20 = specialized Material.ResolvedMaterial.Flags.init(environment:)(&v40);
    *a5 = v10;
    *(a5 + 8) = v11;
    *(a5 + 12) = v20 | v12;

    return outlined copy of Material.ID(v10, v11);
  }

  return result;
}

uint64_t static Material.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *a2;
  v4 = *(a2 + 12);
  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  v10 = *a1;
  v11 = v5;
  v8 = v3;
  v9 = v6;
  outlined copy of Material.ID(v10, v5);
  outlined copy of Material.ID(v3, v6);
  LOBYTE(v3) = specialized static Material.ID.== infix(_:_:)(&v10, &v8);
  outlined consume of Material.ID(v8, v9);
  outlined consume of Material.ID(v10, v11);
  return v3 & (v2 == v4);
}

void *Material.animatableData.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8) == 1 && (v3 = *v1, v4 = *(*v3 + 144), v5 = , v4(v8, v5), result = outlined consume of Material.ID(v3, 1u), *&v8[0]))
  {
    v7 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v7;
    *(a1 + 32) = v9;
  }

  else
  {
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    return outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, a1);
  }

  return result;
}

uint64_t key path setter for Material.animatableData : Material(void *a1, _BYTE *a2)
{
  outlined init with copy of _AnyAnimatableData(a1, v7);
  if (a2[8] != 1)
  {
    return outlined destroy of _AnyAnimatableData(v7);
  }

  v3 = *a2;
  v4 = *(**a2 + 152);

  v5 = v4(v7);
  outlined consume of Material.ID(v3, 1u);
  outlined destroy of _AnyAnimatableData(v7);
  result = outlined consume of Material.ID(*a2, a2[8]);
  *a2 = v5;
  a2[8] = 1;
  return result;
}

uint64_t Material.animatableData.setter(uint64_t a1)
{
  if (v1[8] == 1)
  {
    v2 = *v1;
    v3 = *(**v1 + 152);

    v5 = v1;
    v6 = v3(a1);
    outlined consume of Material.ID(v2, 1u);
    outlined destroy of _AnyAnimatableData(a1);
    result = outlined consume of Material.ID(*v5, v5[8]);
    *v5 = v6;
    v5[8] = 1;
  }

  else
  {

    return outlined destroy of _AnyAnimatableData(a1);
  }

  return result;
}

void (*Material.animatableData.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  if (*(v1 + 8) == 1 && (v5 = *v1, v6 = *(*v5 + 144), v7 = , v6(v10, v7), outlined consume of Material.ID(v5, 1u), *&v10[0]))
  {
    v8 = v10[1];
    *v4 = v10[0];
    *(v4 + 16) = v8;
    *(v4 + 32) = v11;
  }

  else
  {
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, v4);
  }

  return Material.animatableData.modify;
}

void Material.animatableData.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[10];
  if (a2)
  {
    outlined init with copy of _AnyAnimatableData(*a1, v2 + 5);
    if (v3[8] == 1)
    {
      v4 = v2[10];
      v5 = *v4;
      v6 = *(**v4 + 152);

      v7 = v6(v2 + 5);
      outlined consume of Material.ID(v5, 1u);
      outlined destroy of _AnyAnimatableData((v2 + 5));
      outlined consume of Material.ID(*v4, *(v4 + 8));
      *v4 = v7;
      *(v4 + 8) = 1;
    }

    else
    {
      outlined destroy of _AnyAnimatableData((v2 + 5));
    }
  }

  else if (v3[8] == 1)
  {
    v8 = *v3;
    v9 = *(**v3 + 152);

    v10 = v9(v2);
    outlined consume of Material.ID(v8, 1u);
    outlined destroy of _AnyAnimatableData(v2);
    outlined consume of Material.ID(*v3, v3[8]);
    *v3 = v10;
    v3[8] = 1;
    goto LABEL_8;
  }

  outlined destroy of _AnyAnimatableData(v2);
LABEL_8:

  free(v2);
}

uint64_t Material.disablingBlur(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 12);
  *a2 = *v2;
  v5 = *(v2 + 8);
  *(a2 + 8) = v5;
  v6 = v4 & 0xFFFFFFDF;
  if (a1)
  {
    v7 = 32;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 12) = v6 | v7;
  return outlined copy of Material.ID(v3, v5);
}

uint64_t static Material.ultraThick.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for ultraThick != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static Material.ultraThick;
  v3 = dword_1EAB1DF94;
  *a1 = static Material.ultraThick;
  v4 = byte_1EAB1DF90;
  *(a1 + 8) = byte_1EAB1DF90;
  *(a1 + 12) = v3;

  return outlined copy of Material.ID(v2, v4);
}

uint64_t static Material.bar.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for bar != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static Material.bar;
  v3 = dword_1ED51F794;
  *a1 = static Material.bar;
  v4 = byte_1ED51F790;
  *(a1 + 8) = byte_1ED51F790;
  *(a1 + 12) = v3;

  return outlined copy of Material.ID(v2, v4);
}

void one-time initialization function for ultraThick()
{
  dword_1EAB1DF94 = 0;
  static Material.ultraThick = 4;
  byte_1EAB1DF90 = 3;
}

void static Material.pinched.getter(uint64_t a1@<X8>)
{
  *(a1 + 12) = 0;
  *a1 = 2;
  *(a1 + 8) = 3;
}

void one-time initialization function for bar()
{
  dword_1ED51F794 = 0;
  static Material.bar = 5;
  byte_1ED51F790 = 3;
}

void one-time initialization function for chrome()
{
  dword_1EAB1DFA4 = 0;
  static Material.chrome = 5;
  byte_1EAB1DFA0 = 3;
}

uint64_t static Material.chrome.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for chrome != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static Material.chrome;
  v3 = dword_1EAB1DFA4;
  *a1 = static Material.chrome;
  v4 = byte_1EAB1DFA0;
  *(a1 + 8) = byte_1EAB1DFA0;
  *(a1 + 12) = v3;

  return outlined copy of Material.ID(v2, v4);
}

uint64_t static Material._intelligenceLightSource(prefersAudioReactivity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 6;
  if (result)
  {
    v2 = 7;
  }

  *(a2 + 12) = 0;
  *a2 = v2;
  *(a2 + 8) = 3;
  return result;
}

uint64_t View.backgroundMaterial(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  v5 = *(a1 + 8);
  v10 = *a1;
  v3 = v10;
  v11 = v5;
  v12 = v4;
  v13 = 15;
  type metadata accessor for MaterialView<Rectangle>(0, &lazy cache variable for type metadata for MaterialView<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, &type metadata for Rectangle, type metadata accessor for MaterialView);
  View.modifier<A>(_:)(&v10, a2, v6);
  v7 = v10;
  v8 = v11;
  outlined copy of Material.ID(v3, v5);
  return outlined consume of Material.ID(v7, v8);
}

uint64_t MaterialView.init(material:shape:ignoredSafeAreaEdges:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 3);
  v12 = type metadata accessor for MaterialView();
  v13 = *(v12 + 40);
  *a5 = v9;
  *(a5 + 8) = v10;
  *(a5 + 12) = v11;
  result = (*(*(a4 - 8) + 32))(a5 + *(v12 + 36), a2, a4);
  *(a5 + v13) = a3;
  return result;
}

uint64_t View.backgroundMaterial<A>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a5;
  v21 = a6;
  v22 = a3;
  v8 = a1;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MaterialView();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  v17 = *v8;
  v18 = *(v8 + 12);
  LOBYTE(v8) = *(v8 + 8);
  (*(v9 + 16))(v11, a2, a4, v14);
  *v16 = v17;
  v16[8] = v8;
  *(v16 + 3) = v18;
  v19 = *(v12 + 40);
  (*(v9 + 32))(&v16[*(v12 + 36)], v11, a4);
  v16[v19] = 0;
  View.modifier<A>(_:)(v16, v22, v12);
  outlined copy of Material.ID(v17, v8);
  return (*(v13 + 8))(v16, v12);
}

void (*EnvironmentValues.backgroundMaterial.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v3[5] = *v1;
  v6 = *(v1 + 8);
  v3[6] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v5, v4);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(v5);
    if (v7)
    {
      v9 = v7[9];
      v8 = v7[10];
      *v4 = v9;
      v4[1] = v8;
      outlined copy of Material?(v9, v8);
    }

    else
    {
      *v4 = xmmword_18DDA6AB0;
    }
  }

  return EnvironmentValues.backgroundMaterial.modify;
}

void EnvironmentValues.backgroundMaterial.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];

  v6 = v3[6];
  v7 = v3[4];
  if (a2)
  {
    outlined copy of Material?(v4, v5);

    outlined copy of Material?(v4, v5);
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(v7, v4, v5);

    outlined consume of Material?(v4, v5);
    if (v6)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v3[5], *v3[4]);
    }

    outlined consume of Material?(v4, v5);
    v8 = *v3;
    v9 = v3[1];
  }

  else
  {

    outlined copy of Material?(v4, v5);
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(v7, v4, v5);

    outlined consume of Material?(v4, v5);
    if (v6)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v3[5], *v3[4]);
    }

    v8 = v4;
    LOBYTE(v9) = v5;
  }

  outlined consume of Material?(v8, v9);

  free(v3);
}

uint64_t MaterialView.material.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  *a1 = *v1;
  v4 = *(v1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  return outlined copy of Material.ID(v2, v4);
}

uint64_t MaterialView.material.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 3);
  result = outlined consume of Material.ID(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 12) = v4;
  return result;
}

uint64_t MaterialView.Background.view.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MaterialView();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t MaterialView.Background.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v34 = a3;
  v31 = *(a2 - 8);
  v5 = v31;
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v7;
  v9 = v8;
  v10 = type metadata accessor for MaterialView();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v35 = a2;
  v36 = &type metadata for Material;
  v37 = v9;
  v38 = &protocol witness table for Material;
  v17 = type metadata accessor for _ShapeView();
  v18 = *(v17 - 8);
  v32 = v17;
  v33 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v30 = &v27 - v19;
  v29 = v4;
  MaterialView.Background.view.getter(v16);
  (*(v5 + 16))(v7, &v16[*(v10 + 36)], a2);
  v20 = *(v11 + 8);
  v20(v16, v10);
  MaterialView.Background.view.getter(v13);
  v21 = *v13;
  LODWORD(v5) = *(v13 + 3);
  LOBYTE(v11) = v13[8];
  outlined copy of Material.ID(*v13, v11);
  v20(v13, v10);
  v35 = v21;
  LOBYTE(v36) = v11;
  HIDWORD(v36) = v5;
  v22 = v30;
  v23 = v28;
  Shape.fill<A>(_:style:)(&v35, 256, a2, &type metadata for Material, v30);
  outlined consume of Material.ID(v35, v36);
  (*(v31 + 8))(v23, a2);
  MaterialView.Background.view.getter(v16);
  LOBYTE(v21) = v16[*(v10 + 40)];
  v20(v16, v10);
  v24 = v21;
  v25 = v32;
  View.ignoresSafeArea(_:edges:)(1, v24, v32);
  return (*(v33 + 8))(v22, v25);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance MaterialView<A>.Background@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for _ShapeView();
  v2 = type metadata accessor for ModifiedContent();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance MaterialView<A>.Background()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t static MaterialView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *(a2 + 48);
  v44 = *(a2 + 32);
  v45 = v7;
  v46 = *(a2 + 64);
  v47 = *(a2 + 80);
  v8 = *(a2 + 16);
  v42 = *a2;
  v43 = v8;
  LODWORD(v34[0]) = v6;
  *&v36 = a3;
  *(&v36 + 1) = &type metadata for Material;
  *&v37 = a4;
  *(&v37 + 1) = &protocol witness table for Material;
  v9 = type metadata accessor for _ShapeView();
  v19 = type metadata accessor for ModifiedContent();
  v20 = type metadata accessor for MaterialView.Background();
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v34, partial apply for closure #1 in Attribute.init<A>(_:), v18, v20, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  _GraphValue.init(_:)(v36, v17);
  v12 = v17[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v30 = v44;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v28 = v42;
  v29 = v43;
  v14 = v44;
  LODWORD(v30) = 0;
  v16 = v12;
  v34[0] = v42;
  v34[1] = v43;
  v35 = v47;
  v34[3] = v45;
  v34[4] = v46;
  v34[2] = v30;
  v24 = v30;
  v25 = v45;
  v26 = v46;
  v27 = v47;
  v22 = v42;
  v23 = v43;
  outlined init with copy of _ViewInputs(&v42, &v36);
  outlined init with copy of _ViewInputs(v34, &v36);
  static ModifiedContent<>._makeView(view:inputs:)(&v16, &v22, v9, &type metadata for _SafeAreaRegionsIgnoringLayout, &protocol witness table for _ShapeView<A, B>, &protocol witness table for _SafeAreaRegionsIgnoringLayout, a5);
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v36 = v22;
  v37 = v23;
  outlined destroy of _ViewInputs(&v36);
  LODWORD(v30) = v14;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v28);
    AGSubgraphEndTreeElement();
  }

  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v29;
  return outlined destroy of _ViewInputs(&v22);
}

uint64_t static MaterialView._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a2[3];
  *v63 = a2[2];
  *&v63[16] = v7;
  *&v63[32] = a2[4];
  *&v63[48] = *(a2 + 20);
  v8 = a2[1];
  v61 = *a2;
  v62 = v8;
  LODWORD(v48[0]) = v6;
  *&v50 = a4;
  *(&v50 + 1) = &type metadata for Material;
  v51 = a5;
  v52 = &protocol witness table for Material;
  type metadata accessor for _ShapeView();
  v9 = type metadata accessor for ModifiedContent();
  v34 = v9;
  v35 = type metadata accessor for MaterialView.Background();
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for Attribute();
  v11 = MEMORY[0x1E69E73E0];
  v12 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v48, closure #1 in Attribute.init<A>(_:)partial apply, v33, v35, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v13);
  v25 = v50;
  v24 = *v63;
  v14 = v62;
  v57 = *&v63[4];
  v58 = *&v63[20];
  v59 = *&v63[36];
  v60 = v61;
  outlined init with copy of _ViewInputs(&v61, &v50);
  closure #1 in static MaterialView._makeView(modifier:inputs:body:)(1);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  swift_beginAccess();
  *&v50 = __PAIR64__(*(v14 + 16), OffsetAttribute2);
  v31 = type metadata accessor for MaterialView.ChildEnvironment();
  v32 = swift_getWitnessTable();
  type metadata accessor for Attribute<EnvironmentValues>(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, &type metadata for EnvironmentValues, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v50, closure #1 in Attribute.init<A>(_:)partial apply, v30, v31, v11, v16, v12, v17);
  v18 = v48[0];
  v19 = MEMORY[0x1E69E7CC0];
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Attribute<EnvironmentValues>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *(v21 + 64) = 0u;
  *(v21 + 80) = 256;
  *(v21 + 82) = v28;
  *(v21 + 86) = v29;
  *(v21 + 88) = v20;

  v45 = v60;
  *&v46 = v21;
  *(&v46 + 1) = *(&v14 + 1);
  LODWORD(v47[0]) = v24 | 0x20;
  *(&v47[2] + 4) = v59;
  *(&v47[1] + 4) = v58;
  *(v47 + 4) = v57;
  v42 = v47[1];
  v43 = v47[2];
  v44 = HIDWORD(v59);
  v39 = v60;
  v40 = v46;
  v41 = v47[0];
  outlined init with copy of _ViewInputs(&v45, &v50);
  v37 = &protocol witness table for _ShapeView<A, B>;
  v38 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v22 = swift_getWitnessTable();
  LOBYTE(v50) = 1;
  makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)(v25, 0x100000000, &v39, a3, 1, v9, v22, a6);
  v48[2] = v41;
  v48[3] = v42;
  v48[4] = v43;
  v49 = v44;
  v48[0] = v39;
  v48[1] = v40;
  outlined destroy of _ViewInputs(v48);
  v50 = v60;
  v51 = v21;
  v52 = *(&v14 + 1);
  v53 = v24 | 0x20;
  v54 = v57;
  v55 = v58;
  v56 = v59;
  return outlined destroy of _ViewInputs(&v50);
}

uint64_t closure #1 in static MaterialView._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v5[2] = type metadata accessor for MaterialView();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_5, v5, &type metadata for Material, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v5[5];
}

uint64_t MaterialView.ChildEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  MaterialView.ChildEnvironment.environment.getter(v14);
  v13[27] = 0;
  *&v9 = 0;
  v8 = 0uLL;
  BYTE8(v9) = 4;
  *&v10 = 0;
  BYTE8(v10) = 5;
  v11 = v14[0];
  v12 = 0u;
  memset(v13, 0, 24);
  v13[24] = 1;
  *&v13[25] = 768;
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 12);
  v5 = *(Value + 8);
  outlined copy of Material.ID(*Value, v5);
  *&v14[0] = v3;
  BYTE8(v14[0]) = v5;
  HIDWORD(v14[0]) = v4;
  Material._apply(to:)(&v8);
  outlined consume of Material.ID(v3, v5);
  v6 = *(&v11 + 1);
  *a1 = v11;
  a1[1] = v6;
  v14[4] = v12;
  v15[0] = *v13;
  *(v15 + 12) = *&v13[12];
  v14[0] = v8;
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v11;

  return outlined destroy of _ShapeStyle_Shape(v14);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance MaterialView<A>.ChildEnvironment()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t static Material._makeView<A>(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v11 = v5;
  return static ShapeStyle.legacyMakeShapeView<A>(view:inputs:)(&v11, v9, &type metadata for Material, a3, &protocol witness table for Material, a4, a5);
}

uint64_t ForegroundMaterialStyle.material.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  *a1 = *v1;
  v4 = *(v1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  return outlined copy of Material.ID(v2, v4);
}

uint64_t ForegroundMaterialStyle.material.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 3);
  result = outlined consume of Material.ID(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 12) = v4;
  return result;
}

uint64_t ForegroundMaterialStyle.init(material:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  return result;
}

void *EnvironmentValues.materialActiveAppearance.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA24MaterialActiveAppearanceVAAE0I033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA24MaterialActiveAppearanceVAAE0S033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.materialActiveAppearance : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA24MaterialActiveAppearanceVAAE0I033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA24MaterialActiveAppearanceVAAE0S033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.materialActiveAppearance : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA24MaterialActiveAppearanceVAAE0F033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA24MaterialActiveAppearanceVAAE0K033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v3, *a2);
  }
}

uint64_t EnvironmentValues.materialActiveAppearance.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA24MaterialActiveAppearanceVAAE0F033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA24MaterialActiveAppearanceVAAE0K033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v3, *v2);
  }
}

void (*EnvironmentValues.materialActiveAppearance.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA24MaterialActiveAppearanceVAAE0I033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA24MaterialActiveAppearanceVAAE0S033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 0;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.materialActiveAppearance.modify;
}

void EnvironmentValues.materialActiveAppearance.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA24MaterialActiveAppearanceVAAE0F033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA24MaterialActiveAppearanceVAAE0K033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t Material.materialActiveAppearance(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  *a1 = *v1;
  v4 = *(v1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  return outlined copy of Material.ID(v2, v4);
}

uint64_t MaterialActiveAppearanceShapeStyle._apply(to:)(uint64_t a1, uint64_t a2)
{
  v6 = (a1 + 48);
  v5 = *(a1 + 48);
  v7 = *(v2 + *(a2 + 36));
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA24MaterialActiveAppearanceVAAE0F033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(v6, v7);

  if (v6[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA24MaterialActiveAppearanceVAAE0K033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v5, *v6);
  }

  return (*(*(a2 + 24) + 32))(a1, *(a2 + 16));
}

uint64_t ShapeStyle.materialActiveAppearance(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v10;
  (*(v6 + 16))(v9, v3, a2, v7);
  (*(v6 + 32))(a3, v9, a2);
  result = type metadata accessor for MaterialActiveAppearanceShapeStyle();
  *(a3 + *(result + 36)) = v11;
  return result;
}

uint64_t View.materialActiveAppearance(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = v5;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);
}

uint64_t specialized static Material.ResolvedMaterial.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *a2;
  v4 = *(a2 + 12);
  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  v10 = *a1;
  v11 = v5;
  v8 = v3;
  v9 = v6;
  outlined copy of Material.ID(v10, v5);
  outlined copy of Material.ID(v3, v6);
  LOBYTE(v3) = specialized static Material.ID.== infix(_:_:)(&v10, &v8);
  outlined consume of Material.ID(v8, v9);
  outlined consume of Material.ID(v10, v11);
  return v3 & (v2 == v4);
}

void type metadata accessor for MaterialView<Rectangle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider()
{
  result = lazy protocol witness table cache variable for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider;
  if (!lazy protocol witness table cache variable for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider;
  if (!lazy protocol witness table cache variable for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider;
  if (!lazy protocol witness table cache variable for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider);
  }

  return result;
}

uint64_t outlined destroy of MaterialProvider?(uint64_t a1)
{
  type metadata accessor for MaterialProvider?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for MaterialProvider?()
{
  if (!lazy cache variable for type metadata for MaterialProvider?)
  {
    type metadata accessor for MaterialProvider();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MaterialProvider?);
    }
  }
}

unint64_t type metadata accessor for MaterialProvider()
{
  result = lazy cache variable for type metadata for MaterialProvider;
  if (!lazy cache variable for type metadata for MaterialProvider)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MaterialProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Material.ID and conformance Material.ID()
{
  result = lazy protocol witness table cache variable for type Material.ID and conformance Material.ID;
  if (!lazy protocol witness table cache variable for type Material.ID and conformance Material.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material.ID and conformance Material.ID);
  }

  return result;
}

uint64_t assignWithCopy for Material.ID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of Material.ID(v5, v6);
  return a1;
}

uint64_t assignWithTake for Material.ID(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  outlined consume of Material.ID(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for Material.ID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Material.ID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for Material.ID(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t destructiveInjectEnumTag for Material.ID(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t type metadata completion function for MaterialView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MaterialView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v7 + ((v6 + 16) & ~v6) + 1 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  else
  {
    v11 = ~v6;
    v12 = *a2;
    v13 = *(a2 + 8);
    outlined copy of Material.ID(*a2, v13);
    *a1 = v12;
    *(a1 + 8) = v13;
    *(a1 + 12) = *(a2 + 12);
    (*(v5 + 16))((a1 + v6 + 16) & v11, (a2 + v6 + 16) & v11, v4);
    *(((a1 + v6 + 16) & v11) + v7) = *(((a2 + v6 + 16) & v11) + v7);
  }

  return a1;
}

uint64_t destroy for MaterialView(uint64_t a1, uint64_t a2)
{
  outlined consume of Material.ID(*a1, *(a1 + 8));
  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 16) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t initializeWithCopy for MaterialView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 12) = *(a2 + 12);
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = (v10 + 16 + a1) & ~v10;
  v12 = (v10 + 16 + a2) & ~v10;
  (*(v8 + 16))(v11, v12);
  *(*(v9 + 48) + v11) = *(*(v9 + 48) + v12);
  return a1;
}

uint64_t assignWithCopy for MaterialView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v7);
  v8 = *a1;
  *a1 = v6;
  v9 = *(a1 + 8);
  *(a1 + 8) = v7;
  outlined consume of Material.ID(v8, v9);
  *(a1 + 12) = *(a2 + 12);
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v12 + 16 + a1) & ~v12;
  v14 = (v12 + 16 + a2) & ~v12;
  (*(v10 + 24))(v13, v14);
  *(*(v11 + 40) + v13) = *(*(v11 + 40) + v14);
  return a1;
}

_OWORD *initializeWithTake for MaterialView(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 32))(v7, v8);
  *(*(v5 + 32) + v7) = *(*(v5 + 32) + v8);
  return a1;
}

uint64_t assignWithTake for MaterialView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = *a1;
  *a1 = *a2;
  v8 = *(a1 + 8);
  *(a1 + 8) = v6;
  outlined consume of Material.ID(v7, v8);
  *(a1 + 12) = *(a2 + 12);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = (v11 + 16 + a1) & ~v11;
  v13 = (v11 + 16 + a2) & ~v11;
  (*(v9 + 40))(v12, v13);
  *(*(v10 + 24) + v12) = *(*(v10 + 24) + v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for MaterialView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFC)
  {
    v7 = 252;
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
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFC)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 8);
      if (v15 > 3)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
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

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for MaterialView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFC)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFC)
  {
    *a1 = a2 - 253;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[8] = -a2;
  }
}

uint64_t assignWithTake for Material(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of Material.ID(v5, v6);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t type metadata completion function for MaterialActiveAppearanceShapeStyle()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialActiveAppearanceShapeStyle(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFC)
  {
    v7 = 252;
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
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFC)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 4)
      {
        return v15 - 3;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
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

  return v7 + (v9 | v14) + 1;
}

unsigned int *storeEnumTagSinglePayload for MaterialActiveAppearanceShapeStyle(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
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
      if (v6 < 0xFC)
      {
        *(result + v8) = a2 + 3;
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
    bzero(result, v8 + 1);
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
  if (v8 == -1)
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

uint64_t instantiation function for generic protocol witness table for MaterialView<A>.Background(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for MaterialView<A>.ChildEnvironment(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags()
{
  result = lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags;
  if (!lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags;
  if (!lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags;
  if (!lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags;
  if (!lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material.ResolvedMaterial.Flags and conformance Material.ResolvedMaterial.Flags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialActiveAppearance.Storage and conformance MaterialActiveAppearance.Storage()
{
  result = lazy protocol witness table cache variable for type MaterialActiveAppearance.Storage and conformance MaterialActiveAppearance.Storage;
  if (!lazy protocol witness table cache variable for type MaterialActiveAppearance.Storage and conformance MaterialActiveAppearance.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialActiveAppearance.Storage and conformance MaterialActiveAppearance.Storage);
  }

  return result;
}

unint64_t type metadata accessor for NSBundle()
{
  result = lazy cache variable for type metadata for NSBundle;
  if (!lazy cache variable for type metadata for NSBundle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSBundle);
  }

  return result;
}

Swift::Bool __swiftcall _ShapeStyle_Pack.isClear(name:)(Swift::Bool name)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *name;
    v6 = 1;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return name;
      }

      v7 = (v2 + 32 + (v4 << 7));
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[3];
      v22 = v7[2];
      v23 = v10;
      v20 = v8;
      v21 = v9;
      v11 = v7[4];
      v12 = v7[5];
      v13 = v7[7];
      v26 = v7[6];
      v27 = v13;
      v24 = v11;
      v25 = v12;
      if (v6)
      {
        v6 = 1;
        if (v20 != v5 || *&v26 == 0.0)
        {
          goto LABEL_4;
        }

        if (BYTE13(v25) <= 2u)
        {
          break;
        }
      }

      v6 = 0;
LABEL_4:
      if (++v4 == v3)
      {
        return v6 & 1;
      }
    }

    if (BYTE13(v25) == 1)
    {
      v14 = *(**(&v20 + 1) + 96);
      v15 = outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v20, v19, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      if ((v14(v15) & 1) == 0)
      {
LABEL_12:
        v6 = 0;
LABEL_21:
        name = outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v20, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *(&v21 + 1);
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v20, v19, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      if (v16 != 0.0)
      {
        goto LABEL_12;
      }
    }

    v17 = *(*(&v27 + 1) + 16);
    if (v17)
    {
      v18 = *(&v27 + 1) + 44;
      v6 = 1;
      do
      {
        if (v6)
        {
          v6 = *(v18 + 41) | (*v18 == 0.0);
        }

        else
        {
          v6 = 0;
        }

        v18 += 80;
        --v17;
      }

      while (v17);
    }

    else
    {
      v6 = 1;
    }

    goto LABEL_21;
  }

  v6 = 1;
  return v6 & 1;
}

__n128 _ShapeStyle_Pack.Style.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 88) = 1065353216;
  *(a2 + 96) = 0;
  *(a2 + 104) = -1;
  *(a2 + 112) = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 78) = *(a1 + 78);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  return result;
}

uint64_t _ShapeStyle_Pack.modify(name:levels:_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v8 = *a1;
  v9 = *v4;
  v18 = *v4;
  v17 = v8;
  v10 = _ShapeStyle_Pack.indices(of:)(&v17);
  v12 = v11;

  if (v10 == v12)
  {
    return result;
  }

  if (v12 < v10)
  {
LABEL_24:
    __break(1u);
  }

  else if (v10 < v12)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v9;
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_26:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  v9 = result;
LABEL_5:
  *v4 = v9;
  v14 = (v10 << 7) | 0x21;
  do
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v10 >= v9[2])
    {
      goto LABEL_22;
    }

    v15 = *(v9 + v14);
    if (v15 >= a2 && v15 < a3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      }

      if (v10 >= v9[2])
      {
        goto LABEL_23;
      }

      result = a4(v9 + v14 + 7);
    }

    ++v10;
    v14 += 128;
  }

  while (v12 != v10);
  *v4 = v9;
  return result;
}

uint64_t _ShapeStyle_Shape.stylePack.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 40) == 1)
  {
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  *a1 = result;
  return result;
}

void _ShapeStyle_Pack.Style.applyingOpacity(_:)(uint64_t a1@<X8>, Swift::Float a2@<S0>)
{
  v4 = *(v2 + 64);
  v6 = *(v2 + 96);
  v13 = *(v2 + 80);
  v5 = v13;
  v14 = v6;
  v15 = *(v2 + 112);
  v7 = v15;
  v8 = *(v2 + 16);
  v12[0] = *v2;
  v9 = *(v2 + 32);
  v10 = *(v2 + 48);
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  v12[4] = v4;
  *a1 = v12[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  *(a1 + 48) = v10;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  outlined init with copy of _ShapeStyle_Pack.Style(v12, v11);
  _ShapeStyle_Pack.Style.applyOpacity(_:)(a2);
}

uint64_t _ShapeStyle_Pack.Style.applyBlend(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (one-time initialization token for semantic != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v4 = static Semantics_v6.semantic;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    result = swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      result = dyld_program_sdk_at_least();
      if (result)
      {
        goto LABEL_8;
      }
    }

    else if (static Semantics.forced >= v4)
    {
LABEL_8:
      v6 = 1;
      if (*(v1 + 104) != 255)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v6 = 0;
LABEL_9:
    v7 = *(v1 + 96);
    v8 = *(v1 + 104);
    outlined copy of GraphicsBlendMode(v2, v3);
    result = outlined consume of GraphicsBlendMode?(v7, v8);
    *(v1 + 96) = v2;
    *(v1 + 104) = v3;
LABEL_10:
    v9 = *(v1 + 112);
    v10 = *(v9 + 16);
    if (!v10)
    {
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
    }

    v11 = 0;
    v12 = (v9 + 104);
    while (v6)
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_23;
      }

      if (*v12 == 255)
      {
        break;
      }

LABEL_14:
      ++v11;
      v12 += 80;
      if (v10 == v11)
      {
        *(v1 + 112) = v9;
        return result;
      }
    }

    outlined copy of GraphicsBlendMode(v2, v3);
    if (v11 < *(v9 + 16))
    {
      v13 = *(v12 - 1);
      *(v12 - 1) = v2;
      v14 = *v12;
      *v12 = v3;
      result = outlined consume of GraphicsBlendMode?(v13, v14);
      goto LABEL_14;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }
}

uint64_t _ShapeStyle_Pack.Style.fill.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11[0] = v4;
  *(v11 + 14) = *(v1 + 78);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 78) = *(v11 + 14);
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of _ShapeStyle_Pack.Fill(v9, v8);
}

__n128 _ShapeStyle_Pack.Style.fill.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v9[0] = *(v1 + 64);
  *(v9 + 14) = *(v1 + 78);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  outlined destroy of _ShapeStyle_Pack.Fill(v8);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 78) = *(a1 + 78);
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  return result;
}

uint64_t _ShapeStyle_Pack.Style._blend.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = v2;
  v3 = *(v1 + 104);
  *(a1 + 8) = v3;
  return outlined copy of GraphicsBlendMode?(v2, v3);
}

uint64_t _ShapeStyle_Pack.Style._blend.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = outlined consume of GraphicsBlendMode?(*(v1 + 96), *(v1 + 104));
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  return result;
}

uint64_t _ShapeStyle_Pack.Style.blend.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  if (v3 == 255)
  {
    if (one-time initialization token for normal != -1)
    {
      v7 = a1;
      swift_once();
      a1 = v7;
    }

    v4 = static GraphicsBlendMode.normal;
    v5 = byte_1ED52F818;
    *a1 = static GraphicsBlendMode.normal;
    *(a1 + 8) = v5;
    outlined copy of GraphicsBlendMode(v4, v5);
  }

  else
  {
    *a1 = v2;
    *(a1 + 8) = v3 & 1;
  }

  return outlined copy of GraphicsBlendMode?(v2, v3);
}

uint64_t _ShapeStyle_Pack.Style.effects.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

void one-time initialization function for clear()
{
  DWORD2(xmmword_1ED51ECC0) = 1065353216;
  *&xmmword_1ED51ECD0 = 0;
  BYTE8(xmmword_1ED51ECD0) = -1;
  qword_1ED51ECE0 = MEMORY[0x1E69E7CC0];
  static _ShapeStyle_Pack.Style.clear = 0uLL;
  dword_1ED51EC80 = 2143289344;
  BYTE5(xmmword_1ED51ECC0) = 0;
}

uint64_t static _ShapeStyle_Pack.Style.clear.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for clear != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1ED51ECB0;
  v2 = xmmword_1ED51ECC0;
  v3 = xmmword_1ED51ECD0;
  v11[5] = xmmword_1ED51ECC0;
  v11[6] = xmmword_1ED51ECD0;
  v4 = qword_1ED51ECE0;
  v12 = qword_1ED51ECE0;
  v5 = *&dword_1ED51EC80;
  v11[0] = static _ShapeStyle_Pack.Style.clear;
  v6 = xmmword_1ED51EC90;
  v7 = unk_1ED51ECA0;
  v11[1] = *&dword_1ED51EC80;
  v11[2] = xmmword_1ED51EC90;
  v11[3] = unk_1ED51ECA0;
  v11[4] = xmmword_1ED51ECB0;
  *a1 = static _ShapeStyle_Pack.Style.clear;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v1;
  *(a1 + 80) = v2;
  *(a1 + 96) = v3;
  *(a1 + 112) = v4;
  return outlined init with copy of _ShapeStyle_Pack.Style(v11, v10);
}

uint64_t static _ShapeStyle_Pack.Effect.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 53) & *(a2 + 53);
  if ((*(a1 + 53) & 1) == 0 && (*(a2 + 53) & 1) == 0)
  {
    v3 = *(a1 + 16);
    v8[0] = *a1;
    v8[1] = v3;
    v9[0] = *(a1 + 32);
    *(v9 + 13) = *(a1 + 45);
    v4 = *(a2 + 16);
    v6[0] = *a2;
    v6[1] = v4;
    v7[0] = *(a2 + 32);
    *(v7 + 13) = *(a2 + 45);
    v2 = specialized static ResolvedShadowStyle.== infix(_:_:)(v8, v6);
  }

  return v2 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _ShapeStyle_Pack.Effect.Kind(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 53) & *(a2 + 53);
  if ((*(a1 + 53) & 1) == 0 && (*(a2 + 53) & 1) == 0)
  {
    v3 = *(a1 + 16);
    v8[0] = *a1;
    v8[1] = v3;
    v9[0] = *(a1 + 32);
    *(v9 + 13) = *(a1 + 45);
    v4 = *(a2 + 16);
    v6[0] = *a2;
    v6[1] = v4;
    v7[0] = *(a2 + 32);
    *(v7 + 13) = *(a2 + 45);
    v2 = specialized static ResolvedShadowStyle.== infix(_:_:)(v8, v6);
  }

  return v2 & 1;
}

__n128 _ShapeStyle_Pack.Effect.kind.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 46) = *(v1 + 46);
  return result;
}

__n128 _ShapeStyle_Pack.Effect.kind.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 46) = *(a1 + 46);
  return result;
}

uint64_t _ShapeStyle_Pack.Effect._blend.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  v3 = *(v1 + 72);
  *(a1 + 8) = v3;
  return outlined copy of GraphicsBlendMode?(v2, v3);
}

uint64_t _ShapeStyle_Pack.Effect._blend.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = outlined consume of GraphicsBlendMode?(*(v1 + 64), *(v1 + 72));
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return result;
}

uint64_t _ShapeStyle_Pack.Effect.blend.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  if (v3 == 255)
  {
    if (one-time initialization token for normal != -1)
    {
      v7 = a1;
      swift_once();
      a1 = v7;
    }

    v4 = static GraphicsBlendMode.normal;
    v5 = byte_1ED52F818;
    *a1 = static GraphicsBlendMode.normal;
    *(a1 + 8) = v5;
    outlined copy of GraphicsBlendMode(v4, v5);
  }

  else
  {
    *a1 = v2;
    *(a1 + 8) = v3 & 1;
  }

  return outlined copy of GraphicsBlendMode?(v2, v3);
}

_BYTE *_ShapeStyle_Pack.Key.init(_:_:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

void *(*_ShapeStyle_Pack.Key.level.modify(void *a1))(void *result)
{
  *a1 = *(v1 + 1);
  a1[1] = v1;
  return _ShapeStyle_Pack.Key.level.modify;
}

BOOL static _ShapeStyle_Pack.Key.< infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 1;
  }

  return v2 == v3 && a1[1] < a2[1];
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance _ShapeStyle_Pack.Key(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 1;
  }

  return v2 == v3 && a1[1] < a2[1];
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance _ShapeStyle_Pack.Key(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v2 < v3)
  {
    return 0;
  }

  return v2 != v3 || a2[1] >= a1[1];
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance _ShapeStyle_Pack.Key(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 0;
  }

  return v2 != v3 || a1[1] >= a2[1];
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance _ShapeStyle_Pack.Key(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v2 < v3)
  {
    return 1;
  }

  return v2 == v3 && a2[1] < a1[1];
}

uint64_t static _ShapeStyle_Pack.style(_:name:level:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + 64);
  v8 = *(a1 + 96);
  v19[5] = *(a1 + 80);
  v19[6] = v8;
  v9 = *(a1 + 16);
  v19[0] = *a1;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v19[1] = v9;
  v19[2] = v10;
  v20 = *(a1 + 112);
  v19[3] = v11;
  v19[4] = v7;
  v12 = *a2;
  type metadata accessor for _ContiguousArrayStorage<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18DDA6EB0;
  v14 = *(a1 + 80);
  *(v13 + 104) = *(a1 + 64);
  *(v13 + 120) = v14;
  *(v13 + 136) = *(a1 + 96);
  v15 = *(a1 + 16);
  *(v13 + 40) = *a1;
  *(v13 + 56) = v15;
  v16 = *(a1 + 48);
  *(v13 + 72) = *(a1 + 32);
  *(v13 + 32) = v12;
  *(v13 + 33) = a3;
  *(v13 + 152) = *(a1 + 112);
  *(v13 + 88) = v16;
  *a4 = v13;
  return outlined init with copy of _ShapeStyle_Pack.Style(v19, v18);
}

uint64_t static _ShapeStyle_Pack.fill(_:name:level:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v17[3] = *(a1 + 48);
  v18[0] = v8;
  *(v18 + 14) = *(a1 + 78);
  v9 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v9;
  v17[2] = v7;
  v10 = *a2;
  type metadata accessor for _ContiguousArrayStorage<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18DDA6EB0;
  v12 = *(a1 + 48);
  *(v11 + 72) = *(a1 + 32);
  *(v11 + 88) = v12;
  *(v11 + 104) = *(a1 + 64);
  v13 = *(a1 + 16);
  *(v11 + 40) = *a1;
  *(v11 + 32) = v10;
  *(v11 + 33) = a3;
  *(v11 + 128) = 1065353216;
  *(v11 + 136) = 0;
  v14 = MEMORY[0x1E69E7CC0];
  *(v11 + 144) = -1;
  *(v11 + 152) = v14;
  *(v11 + 118) = *(a1 + 78);
  *(v11 + 56) = v13;
  *a4 = v11;
  return outlined init with copy of _ShapeStyle_Pack.Fill(v17, v16);
}

uint64_t static _ShapeStyle_Pack.defaultValue.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static _ShapeStyle_Pack.defaultValue;
}

uint64_t key path setter for _ShapeStyle_Pack.subscript(_:_:) : _ShapeStyle_Pack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v6;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v8 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v8;
  v11 = v4;
  outlined init with copy of _ShapeStyle_Pack.Style(v12, &v10);
  return _ShapeStyle_Pack.subscript.setter(a1, &v11, v5);
}

void (*_ShapeStyle_Pack.subscript.modify(uint64_t *a1, unsigned __int8 *a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x1F8uLL);
  }

  *a1 = v7;
  *(v7 + 480) = a3;
  *(v7 + 488) = v3;
  v8 = *a2;
  *(v7 + 496) = *a2;
  v11 = *v3;
  v10 = v8;
  _ShapeStyle_Pack.subscript.getter(&v10, a3, v7);
  return _ShapeStyle_Pack.subscript.modify;
}

void _ShapeStyle_Pack.subscript.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 4);
    v3 = *(v2 + 5);
    v5 = *(v2 + 3);
    *(v2 + 19) = v4;
    *(v2 + 20) = v3;
    v6 = *(v2 + 5);
    *(v2 + 21) = *(v2 + 6);
    v7 = *(v2 + 1);
    *(v2 + 15) = *v2;
    *(v2 + 16) = v7;
    v8 = *(v2 + 3);
    v10 = *v2;
    v9 = *(v2 + 1);
    v11 = *(v2 + 2);
    *(v2 + 17) = v11;
    *(v2 + 18) = v8;
    v26 = v4;
    v27 = v6;
    v28 = *(v2 + 6);
    v22 = v10;
    v23 = v9;
    v12 = v2[496];
    v13 = *(v2 + 60);
    *(v2 + 44) = *(v2 + 14);
    v29 = *(v2 + 14);
    v24 = v11;
    v25 = v5;
    v30 = v12;
    outlined init with copy of _ShapeStyle_Pack.Style((v2 + 240), (v2 + 360));
    _ShapeStyle_Pack.subscript.setter(&v22, &v30, v13);
    v14 = *(v2 + 5);
    *(v2 + 184) = *(v2 + 4);
    *(v2 + 200) = v14;
    *(v2 + 216) = *(v2 + 6);
    v15 = *(v2 + 1);
    *(v2 + 120) = *v2;
    *(v2 + 136) = v15;
    v16 = *(v2 + 3);
    *(v2 + 152) = *(v2 + 2);
    *(v2 + 29) = *(v2 + 14);
    *(v2 + 168) = v16;
    outlined destroy of _ShapeStyle_Pack.Style((v2 + 120));
  }

  else
  {
    v17 = v2[496];
    v18 = *(v2 + 60);
    v19 = *(v2 + 5);
    v26 = *(v2 + 4);
    v27 = v19;
    v28 = *(v2 + 6);
    v29 = *(v2 + 14);
    v20 = *(v2 + 1);
    v22 = *v2;
    v23 = v20;
    v21 = *(v2 + 3);
    v24 = *(v2 + 2);
    v25 = v21;
    v30 = v17;
    _ShapeStyle_Pack.subscript.setter(&v22, &v30, v18);
  }

  free(v2);
}

uint64_t _ShapeStyle_Pack.subscript.getter@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v6 = *v2;
  v5 = v3;
  _ShapeStyle_Pack.Slice.init(pack:name:)(&v6, &v5, a2);
}

uint64_t _ShapeStyle_Pack.Slice.endIndex.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  v3 = __OFSUB__(v2, v1);
  v4 = v2 - v1;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = *(v0 + 32);
  result = v5 + v4;
  if (__OFADD__(v5, v4))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t _ShapeStyle_Pack.Slice.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  v7 = __OFSUB__(result, v3);
  v4 = result - v3;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 24) >> 1;
    if (v4 >= *(v2 + 16))
    {
      v7 = __OFSUB__(v4, v5);
      v6 = v4 - v5 < 0;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    if (v6 != v7)
    {
      v8 = (*(v2 + 8) + (v4 << 7));
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[3];
      v22[2] = v8[2];
      v22[3] = v11;
      v22[0] = v9;
      v22[1] = v10;
      v12 = v8[4];
      v13 = v8[5];
      v14 = v8[7];
      v22[6] = v8[6];
      v22[7] = v14;
      v22[4] = v12;
      v22[5] = v13;
      v15 = *(v8 + 8);
      v16 = *(v8 + 24);
      v17 = *(v8 + 56);
      *(a2 + 32) = *(v8 + 40);
      *(a2 + 48) = v17;
      *a2 = v15;
      *(a2 + 16) = v16;
      v18 = *(v8 + 72);
      v19 = *(v8 + 88);
      v20 = *(v8 + 104);
      *(a2 + 112) = *(v8 + 15);
      *(a2 + 80) = v19;
      *(a2 + 96) = v20;
      *(a2 + 64) = v18;
      return outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v22, &v21, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance _ShapeStyle_Pack.Slice@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = *(v2 + 16);
  v5 = *(v2 + 24) >> 1;
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = *(v2 + 32);
  v6 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 >= v8 && v3 < v9)
  {
    *a2 = v3;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance _ShapeStyle_Pack.Slice(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = *(v1 + 16);
  v4 = *(v1 + 24) >> 1;
  v5 = __OFSUB__(v4, v3);
  v6 = v4 - v3;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v1 + 32);
  v5 = __OFADD__(v7, v6);
  v8 = v7 + v6;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 >= v7 && v2 < v8)
  {
    *result = v2;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void protocol witness for Collection.endIndex.getter in conformance _ShapeStyle_Pack.Slice(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24) >> 1;
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v1 + 32);
    v4 = __OFADD__(v6, v5);
    v7 = v6 + v5;
    if (!v4)
    {
      *a1 = v7;
      return;
    }
  }

  __break(1u);
}

void (*protocol witness for Collection.subscript.read in conformance _ShapeStyle_Pack.Slice(uint64_t *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = _ShapeStyle_Pack.Slice.subscript.read(v4, *a2);
  return protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>;
}

void (*_ShapeStyle_Pack.Slice.subscript.read(void (**a1)(uint64_t *a1), uint64_t a2))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x178uLL);
  }

  *a1 = result;
  v6 = *(v2 + 32);
  v7 = __OFSUB__(a2, v6);
  v8 = a2 - v6;
  if (v7)
  {
    __break(1u);
  }

  else if (v8 >= *(v2 + 16) && v8 < *(v2 + 24) >> 1)
  {
    v10 = (*(v2 + 8) + (v8 << 7));
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[3];
    *(result + 2) = v10[2];
    *(result + 3) = v13;
    *result = v11;
    *(result + 1) = v12;
    v14 = v10[4];
    v15 = v10[5];
    v16 = v10[7];
    *(result + 6) = v10[6];
    *(result + 7) = v16;
    *(result + 4) = v14;
    *(result + 5) = v15;
    v17 = *(v10 + 88);
    v18 = *(v10 + 104);
    v19 = *(v10 + 72);
    *(result + 46) = *(v10 + 15);
    *(result + 21) = v17;
    *(result + 22) = v18;
    *(result + 20) = v19;
    v20 = *(v10 + 8);
    v21 = *(v10 + 24);
    v22 = *(v10 + 56);
    *(result + 18) = *(v10 + 40);
    *(result + 19) = v22;
    *(result + 16) = v20;
    *(result + 17) = v21;
    outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(result, result + 128, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    return _ShapeStyle_Pack.Slice.subscript.read;
  }

  __break(1u);
  return result;
}

void _ShapeStyle_Pack.Slice.subscript.read(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 336);
  *(v1 + 192) = *(*a1 + 320);
  *(v1 + 208) = v2;
  *(v1 + 224) = *(v1 + 352);
  *(v1 + 240) = *(v1 + 368);
  v3 = *(v1 + 272);
  *(v1 + 128) = *(v1 + 256);
  *(v1 + 144) = v3;
  v4 = *(v1 + 304);
  *(v1 + 160) = *(v1 + 288);
  *(v1 + 176) = v4;
  outlined destroy of _ShapeStyle_Pack.Style(v1 + 128);

  free(v1);
}

uint64_t *protocol witness for Collection.subscript.getter in conformance _ShapeStyle_Pack.Slice@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = *(v2 + 32);
  v7 = v6 + v5;
  if (__OFADD__(v6, v5))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v7 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *result;
  if (*result < v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result[1];
  if (v7 >= v9)
  {
    *(a2 + 16) = *v2;
    *(a2 + 32) = v3;
    *(a2 + 40) = v4;
    *(a2 + 48) = v6;
    *a2 = v8;
    *(a2 + 8) = v9;
    return swift_unknownObjectRetain();
  }

LABEL_11:
  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance _ShapeStyle_Pack.Slice(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24) >> 1;
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *(v1 + 32);
  v4 = __OFADD__(v6, v5);
  v7 = v6 + v5;
  if (v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 >= v6)
  {
    *a1 = v6;
    a1[1] = v7;
    return;
  }

LABEL_7:
  __break(1u);
}

BOOL protocol witness for Collection.isEmpty.getter in conformance _ShapeStyle_Pack.Slice()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  v3 = __OFSUB__(v2, v1);
  v4 = v2 - v1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 32);
    v3 = __OFADD__(v5, v4);
    v6 = v5 + v4;
    if (!v3)
    {
      return v6 == v5;
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance _ShapeStyle_Pack.Slice@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v3 + 16);
  v6 = *(v3 + 24) >> 1;
  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = *(v3 + 32);
  v7 = __OFADD__(v9, v8);
  v10 = v9 + v8;
  if (v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 >= v9 && v10 >= v4)
  {
    *a3 = v4;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance _ShapeStyle_Pack.Slice(uint64_t *result, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24) >> 1;
  v5 = __OFSUB__(v4, v3);
  v6 = v4 - v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(v2 + 32);
  v5 = __OFADD__(v7, v6);
  v8 = v7 + v6;
  if (v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *result;
  v10 = *a2;
  if (v8 >= *a2 && v10 >= v7 && v9 >= v7 && v8 >= v9)
  {
    return (v10 - v9);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance _ShapeStyle_Pack.Slice@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24) >> 1;
  v5 = __OFSUB__(v4, v3);
  v6 = v4 - v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(v2 + 32);
  v8 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = *result;
  if (*result >= v7 && v9 < v8)
  {
    *a2 = v9 + 1;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance _ShapeStyle_Pack.Slice(uint64_t *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24) >> 1;
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v1 + 32);
  v7 = v6 + v5;
  if (__OFADD__(v6, v5))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *result;
  if (*result >= v6 && v8 < v7)
  {
    *result = v8 + 1;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance _ShapeStyle_Pack.Slice@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance _ShapeStyle_Pack.Slice()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  v3 = __OFSUB__(v2, v1);
  v4 = v2 - v1;
  if (v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *(v0 + 32);
  v3 = __OFADD__(v5, v4);
  v6 = v5 + v4;
  if (v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v6 - v5;
  if (v6 < v5)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance _ShapeStyle_Pack.Slice()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t _ShapeStyle_Pack.Style.isClear.getter()
{
  if (*(v0 + 88) == 0.0)
  {
    goto LABEL_2;
  }

  if (*(v0 + 85) > 2u)
  {
LABEL_4:
    v1 = 0;
    return v1 & 1;
  }

  v3 = *(v0 + 112);
  if (*(v0 + 85))
  {
    v4 = *(v0 + 85) == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    if (((*(**v0 + 96))() & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (*(v0 + 12) != 0.0)
  {
    goto LABEL_4;
  }

  v5 = *(v3 + 16);
  if (!v5)
  {
LABEL_2:
    v1 = 1;
    return v1 & 1;
  }

  v6 = v3 + 44;
  v1 = 1;
  do
  {
    if (v1)
    {
      v1 = *(v6 + 41) | (*v6 == 0.0);
    }

    else
    {
      v1 = 0;
    }

    v6 += 80;
    --v5;
  }

  while (v5);
  return v1 & 1;
}

unint64_t _ShapeStyle_Pack.subscript.getter(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  LOBYTE(v7[0]) = 2;
  _ShapeStyle_Pack.subscript.getter(v7, 0, v9);
  outlined init with copy of _ShapeStyle_Pack.Fill(v9, v7);
  outlined destroy of _ShapeStyle_Pack.Style(v9);
  if (v10 == 6)
  {
    v7[0] = v9[0];
    v7[1] = v9[1];
    v5 = ResolvedMulticolorStyle.resolveHDR(name:)(a1, a2);
    outlined destroy of _ShapeStyle_Pack.Fill(v9);
    return v5;
  }

  else
  {
    outlined destroy of _ShapeStyle_Pack.Fill(v9);
    return 0;
  }
}

BOOL _ShapeStyle_Pack.Style.ignoresBackdrop.getter()
{
  v1 = *(v0 + 48);
  v12[2] = *(v0 + 32);
  v12[3] = v1;
  *v13 = *(v0 + 64);
  *&v13[14] = *(v0 + 78);
  v2 = *(v0 + 88) == 1.0;
  v3 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v3;
  if (!v2)
  {
    return 0;
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  if (v5 == 255)
  {
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v6 = static GraphicsBlendMode.normal;
    v7 = byte_1ED52F818;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  }

  else
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
  }

  outlined copy of GraphicsBlendMode?(v4, v5);
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v8 = static GraphicsBlendMode.normal;
  v9 = byte_1ED52F818;
  if ((v7 & 1) == 0)
  {
    if ((byte_1ED52F818 & 1) == 0)
    {
      outlined consume of GraphicsBlendMode(v6, 0);
      outlined consume of GraphicsBlendMode(v8, 0);
      if (v6 == v8)
      {
        goto LABEL_16;
      }

      return 0;
    }

LABEL_20:
    outlined copy of GraphicsBlendMode(v8, v9);
    outlined consume of GraphicsBlendMode(v6, v7 & 1);
    outlined consume of GraphicsBlendMode(v8, v9);
    outlined consume of GraphicsBlendMode(v6, v7 & 1);
    return 0;
  }

  if (!byte_1ED52F818)
  {
    swift_unknownObjectRetain();
    goto LABEL_20;
  }

  swift_unknownObjectRetain();
  outlined consume of GraphicsBlendMode(v6, 1);
  outlined consume of GraphicsBlendMode(v8, 1);
  if (v6 != v8)
  {
    return 0;
  }

LABEL_16:
  if (v13[21] > 1u)
  {
    return v13[21] - 2 >= 4;
  }

  if (!v13[21])
  {
    return *(v12 + 3) == 1.0;
  }

  v11 = *(**&v12[0] + 104);

  LOBYTE(v11) = v11();
  outlined destroy of _ShapeStyle_Pack.Fill(v12);
  return v11 & 1;
}

uint64_t _ShapeStyle_Pack.animatableData.setter(char **a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = *(*a1 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    *v1 = v4;
    if (!v5)
    {
      goto LABEL_61;
    }
  }

  else
  {
LABEL_60:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    *v2 = v4;
    if (!v5)
    {
      goto LABEL_61;
    }
  }

  v8 = 0;
  v9 = 0;
  v10 = v3 + 32;
  while (2)
  {
    v11 = v4 + 4;
    if (v9 <= v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = v9;
    }

    v13 = v9;
LABEL_8:
    if (v13 != v12)
    {
      v14 = &v10[112 * v13];
      v15 = v8 << 7;
      v16 = v8;
      while (1)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (v16 >= v4[2])
        {
          goto LABEL_56;
        }

        if (v9 < 0)
        {
          goto LABEL_57;
        }

        if (v13 >= *(v3 + 2))
        {
          goto LABEL_58;
        }

        v17 = *(v11 + v15);
        v18 = *(v11 + v15 + 1);
        v19 = *v14;
        v20 = v14[1];
        if (v17 == v19 && v18 == v20)
        {
          break;
        }

        v22 = v18 < v20 && v17 == v19;
        if (v17 >= v19 && !v22)
        {
          ++v13;
          v8 = v16;
          if (v16 < v5)
          {
            goto LABEL_8;
          }

          goto LABEL_61;
        }

        ++v16;
        v15 += 128;
        if (v16 >= v5)
        {
          goto LABEL_61;
        }
      }

      v23 = *v14;
      v24 = *(v14 + 2);
      *&v64[16] = *(v14 + 1);
      *&v64[32] = v24;
      *v64 = v23;
      v25 = *(v14 + 3);
      v26 = *(v14 + 4);
      v27 = *(v14 + 6);
      *&v64[80] = *(v14 + 5);
      v65 = v27;
      *&v64[48] = v25;
      *&v64[64] = v26;
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v64, v62, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        v4 = result;
      }

      if (v16 >= v4[2])
      {
        __break(1u);
        return result;
      }

      v56 = v10;
      v29 = v4 + v15;
      v62[2] = *&v64[40];
      v62[3] = *&v64[56];
      v62[4] = *&v64[72];
      v63 = v64[88];
      v62[0] = *&v64[8];
      v62[1] = *&v64[24];
      _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)((v29 + 40));
      v30 = *(&v65 + 1);
      *(v29 + 32) = v65;
      v31 = *(v29 + 19);
      if (*(v30 + 16) >= *(v31 + 2))
      {
        v32 = *(v31 + 2);
      }

      else
      {
        v32 = *(v30 + 16);
      }

      if (v32)
      {
        v57 = v30;

        v54 = v3;
        v55 = v2;
        v52 = v5;
        v53 = v4;
        v50 = v29;
        v51 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
        }

        v34 = v57;
        if (*(v31 + 2))
        {
          v35 = 0;
          v5 = 0;
          v4 = 0;
          v6 = v32 - 1;
          while (1)
          {
            v36 = *(v4 + v34 + 40);
            v3 = *(v4 + v34 + 48);
            v37 = *(v4 + v34 + 56);
            v38 = *(v4 + v34 + 72);
            v39 = *(v4 + v34 + 80);
            v2 = &v31[v35];
            *&v31[v35 + 88] = *(v4 + v34 + 32);
            if (v31[v35 + 85] & 1) != 0 || (v39)
            {
              LOBYTE(v62[0]) = 1;
              *(v2 + 2) = 0u;
              *(v2 + 3) = 0u;
              *(v2 + 4) = 0u;
              *(v2 + 77) = 0;
              v2[85] = 1;
              if (v6 == v5)
              {
                goto LABEL_52;
              }
            }

            else
            {
              v59 = v37;
              v40 = *(v2 + 6);
              v60 = *(v2 + 20);
              v61 = v2[84];
              if (one-time initialization token for legacyInterpolation != -1)
              {
                swift_once();
              }

              *&v33 = vmul_f32(v36, 0x3C0000003C000000);
              v58 = v33;
              v41 = *&v3 * 0.0078125;
              v42 = *(&v3 + 1) * 0.0078125;
              v3 = &static Color.Resolved.legacyInterpolation;
              swift_beginAccess();
              if (static Color.Resolved.legacyInterpolation)
              {
                v34 = v57;
                v44 = v58;
                v43 = v59;
              }

              else
              {
                if (v42 == 0.0)
                {
                  v34 = v57;
                  v33 = v58;
                }

                else
                {
                  *(&v33 + 1) = *(&v58 + 1);
                  *&v33 = vmul_n_f32(*&v58, 1.0 / v42);
                  v41 = v41 * (1.0 / v42);
                  v34 = v57;
                }

                v45 = v41 * (v41 * v41);
                v46 = vmul_f32(*&v33, vmul_f32(*&v33, *&v33));
                v47 = vsub_f32(vmul_f32(v46, 0x40270644408274ABLL), vrev64_s32(vmul_f32(v46, 0x4053B18C3FA25C2DLL)));
                v48 = vmul_n_f32(0x3EAEC16A3E6C8362, v45);
                LODWORD(v44) = vadd_f32(v47, v48).u32[0];
                HIDWORD(v44) = vsub_f32(v47, v48).i32[1];
                v49 = vmul_f32(v46, 0x3F34133EBB897F53);
                v41 = (v45 * 1.7076) + vsub_f32(v49, vdup_lane_s32(v49, 1)).f32[0];
                v43 = v59;
              }

              LOBYTE(v62[0]) = 0;
              *(v2 + 4) = v44;
              *(v2 + 10) = v41;
              *(v2 + 11) = v42;
              *(v2 + 6) = v40;
              *(v2 + 56) = v43;
              *(v2 + 9) = v38;
              *(v2 + 20) = v60;
              v2[84] = v61;
              v2[85] = 0;
              if (v6 == v5)
              {
LABEL_52:
                *(v50 + 19) = v31;

                v3 = v54;
                v2 = v55;
                v5 = v52;
                v4 = v53;
                v6 = v51;
                goto LABEL_53;
              }
            }

            v4 += 7;
            ++v5;
            v35 += 80;
            if (v5 >= *(v31 + 2))
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_53:
      outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v64, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
      v8 = v16 + 1;
      v9 = v13 + 1;
      v10 = v56;
      if ((v16 + 1) < v5)
      {
        continue;
      }
    }

    break;
  }

LABEL_61:

  *v2 = v4;
  return result;
}

double _ShapeStyle_Pack.Style.animatableData.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v3;
  v15[0] = *(v1 + 64);
  *(v15 + 14) = *(v1 + 78);
  v4 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v4;
  v5 = *(v1 + 88);
  v6 = *(v1 + 112);
  outlined init with copy of _ShapeStyle_Pack.Fill(v14, v12);
  _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(v1, v12);
  specialized Array<A>.animatableData.getter(v6, &v11);
  v7 = v11;
  v8 = v12[3];
  *(a1 + 32) = v12[2];
  *(a1 + 48) = v8;
  *(a1 + 64) = v12[4];
  *(a1 + 80) = v13;
  result = *v12;
  v10 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v10;
  *(a1 + 88) = v5;
  *(a1 + 96) = v7;
  return result;
}

uint64_t _ShapeStyle_Pack.Style.animatableData.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v8 = v2;
  v9 = *(a1 + 96);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(v1);
  *(v1 + 88) = DWORD2(v8);

  specialized Array<A>.animatableData.setter(v5);

  return outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v7, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
}

uint64_t (*_ShapeStyle_Pack.animatableData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  _ShapeStyle_Pack.animatableData.getter(a1);
  return _ShapeStyle_Pack.animatableData.modify;
}

uint64_t _ShapeStyle_Pack.animatableData.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v4 = *a1;
    v5 = v2;

    _ShapeStyle_Pack.animatableData.setter(&v4);
  }

  else
  {
    v4 = *a1;
    v5 = v2;
    return _ShapeStyle_Pack.animatableData.setter(&v4);
  }
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeStyle_Pack(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = _ShapeStyle_Pack.animatableData.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t key path setter for _ShapeStyle_Pack.Style.animatableData : _ShapeStyle_Pack.Style(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(a2);
  *(a2 + 88) = v3;

  specialized Array<A>.animatableData.setter(v4);
}

double _ShapeStyle_Pack.Fill.animatableData.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v8[3] = *(v1 + 48);
  v9[0] = v4;
  *(v9 + 14) = *(v1 + 78);
  v5 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v5;
  v8[2] = v3;
  outlined init with copy of _ShapeStyle_Pack.Fill(v8, v7);
  return _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(v1, a1);
}

uint64_t specialized Array<A>.animatableData.getter@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = result;
    v29 = a2;
    v41 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v41;
    v5 = (v4 + 32);
    do
    {
      v6 = v5[1];
      v38 = *v5;
      *v39 = v6;
      v7 = v5[3];
      *&v39[16] = v5[2];
      *v40 = v7;
      *&v40[9] = *(v5 + 57);
      v8 = BYTE5(v7);
      if (BYTE5(v7))
      {
        v9 = 0;
        v10 = 0uLL;
        v11 = 0uLL;
      }

      else
      {
        v12 = *(&v38 + 2);
        v31 = v38;
        v33 = *(&v38 + 3);
        v35 = *&v39[8];
        v9 = *&v39[24];
        outlined init with copy of _ShapeStyle_Pack.Effect(&v38, v37);
        if (one-time initialization token for legacyInterpolation != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (static Color.Resolved.legacyInterpolation == 1)
        {
          result = outlined destroy of _ShapeStyle_Pack.Effect(&v38);
          v13.i32[0] = v31.i32[1];
          v14 = __PAIR64__(LODWORD(v12), v31.u32[0]);
          v15 = v33;
        }

        else
        {
          v16 = ((0.2119 * v31.f32[0]) + vmuls_lane_f32(0.6807, v31, 1)) + (v12 * 0.1074);
          v17 = powf(fabsf(v16), 0.33333);
          v18 = copysignf(v17, v16);
          v19 = vadd_f32(vadd_f32(vrev64_s32(vmul_f32(v31, 0x3F094D173DB4D7ECLL)), vmul_f32(v31, 0x3E903D743ED30EB1)), vmul_n_f32(0x3F2146493D52B909, v12));
          v20 = vabs_f32(v19);
          v30 = v20.f32[0];
          v32 = powf(v20.f32[1], 0.33333);
          *v21.i32 = powf(v30, 0.33333);
          *&v21.i32[1] = v32;
          v22 = vbsl_s8(0x8000000080000000, v21, v19);
          result = outlined destroy of _ShapeStyle_Pack.Effect(&v38);
          v15 = v33;
          v13.f32[0] = v33 * v18;
          v14 = vmul_n_f32(v22, v33);
        }

        v23 = vmul_f32(v14, 0x4300000043000000);
        v13.f32[1] = v15;
        v24.i64[0] = v23.u32[0];
        v24.i64[1] = v23.u32[1];
        v10 = vorrq_s8(vshll_n_s32(vmul_f32(v13, 0x4300000043000000), 0x20uLL), v24);
        v11 = v35;
      }

      v25 = *&v40[8];
      v41 = v3;
      v27 = *(v3 + 16);
      v26 = *(v3 + 24);
      if (v27 >= v26 >> 1)
      {
        v34 = v10;
        v36 = v11;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v10 = v34;
        v11 = v36;
        v3 = v41;
      }

      *(v3 + 16) = v27 + 1;
      v28 = v3 + 56 * v27;
      *(v28 + 32) = v25;
      *(v28 + 40) = v10;
      *(v28 + 56) = v11;
      *(v28 + 72) = v9;
      *(v28 + 80) = v8 & 1;
      v5 += 5;
      --v2;
    }

    while (v2);
    a2 = v29;
  }

  *a2 = v3;
  return result;
}

uint64_t _ShapeStyle_Pack.Fill.animatableData.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v5[4] = *(a1 + 64);
  v6 = *(a1 + 80);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(v1);
  return outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(v5);
}

void (*_ShapeStyle_Pack.Style.animatableData.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x258uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v3 + 416;
  *(v4 + 592) = v1;
  v6 = *(v1 + 16);
  *(v4 + 416) = *v1;
  *(v4 + 432) = v6;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  *(v5 + 78) = *(v1 + 78);
  *(v4 + 464) = v8;
  *(v4 + 480) = v9;
  *(v4 + 448) = v7;
  v10 = *(v1 + 88);
  v11 = *(v1 + 112);
  v12 = *(v1 + 48);
  v17[2] = *(v1 + 32);
  v17[3] = v12;
  v18[0] = *(v1 + 64);
  *(v18 + 14) = *(v1 + 78);
  v13 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v13;
  outlined init with copy of _ShapeStyle_Pack.Fill(v5, v4 + 104);
  _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(v17, v4 + 504);
  specialized Array<A>.animatableData.getter(v11, (v4 + 96));
  v14 = *(v4 + 552);
  *(v4 + 32) = *(v4 + 536);
  *(v4 + 48) = v14;
  *(v4 + 64) = *(v4 + 568);
  *(v4 + 80) = *(v4 + 584);
  v15 = *(v4 + 520);
  *v4 = *(v4 + 504);
  *(v4 + 16) = v15;
  *(v4 + 88) = v10;
  return _ShapeStyle_Pack.Style.animatableData.modify;
}

void _ShapeStyle_Pack.Style.animatableData.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 5);
    *(v2 + 17) = *(v2 + 4);
    *(v2 + 18) = v3;
    v4 = *(v2 + 1);
    *(v2 + 13) = *v2;
    *(v2 + 14) = v4;
    v5 = *(v2 + 3);
    *(v2 + 15) = *(v2 + 2);
    *(v2 + 16) = v5;
    v6 = *(v2 + 74);
    *(v2 + 38) = *(v2 + 12);
    outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)((v2 + 208), (v2 + 312), type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(v6);
    *(v6 + 88) = *(v2 + 74);

    specialized Array<A>.animatableData.setter(v7);

    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)((v2 + 208), type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    v8 = *(v2 + 2);
    *(v2 + 152) = *(v2 + 3);
    v9 = *(v2 + 5);
    *(v2 + 168) = *(v2 + 4);
    *(v2 + 184) = v9;
    *(v2 + 25) = *(v2 + 12);
    v10 = *(v2 + 1);
    *(v2 + 104) = *v2;
    *(v2 + 120) = v10;
    *(v2 + 136) = v8;
  }

  else
  {
    *(v2 + 152) = *(v2 + 3);
    *(v2 + 168) = *(v2 + 4);
    *(v2 + 184) = *(v2 + 5);
    v11 = *(v2 + 1);
    *(v2 + 104) = *v2;
    *(v2 + 120) = v11;
    *(v2 + 136) = *(v2 + 2);
    v12 = *(v2 + 74);
    *(v2 + 25) = *(v2 + 12);
    _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(v12);
    *(v12 + 88) = *(v2 + 48);

    specialized Array<A>.animatableData.setter(v13);
  }

  outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)((v2 + 104), type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);

  free(v2);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance _ShapeStyle_Pack.Style(uint64_t a1)
{
  v2 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v8 = v2;
  v9 = *(a1 + 96);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(v1);
  *(v1 + 88) = DWORD2(v8);

  specialized Array<A>.animatableData.setter(v5);

  return outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v7, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeStyle_Pack.Style(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = _ShapeStyle_Pack.Style.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

double _ShapeStyle_Pack.Fill.AnimatableData.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v26[0] = *a1;
  *&v27[14] = *(a1 + 78);
  v4 = *(a1 + 32);
  v6 = *(a1 + 48);
  v26[1] = v3;
  v26[2] = v4;
  v5 = *(a1 + 64);
  v26[3] = v6;
  *v27 = v5;
  v6.i64[0] = v26[0].i64[1];
  if (v27[21] > 2u)
  {
    if (v27[21] > 4u)
    {
      if (v27[21] == 5)
      {
        *(&v24[1] + 8) = *(a1 + 24);
        *(&v24[2] + 8) = *(a1 + 40);
        *(&v24[3] + 8) = *(a1 + 56);
        *(&v24[4] + 1) = *(a1 + 72);
        *&v24[0] = v26[0].i64[0];
        v6.i64[1] = v3.i64[0];
        *(v24 + 8) = v6;
        v8 = 8;
        goto LABEL_11;
      }
    }

    else if (v27[21] != 3)
    {
      v7.i64[0] = 0x4300000043000000;
      v7.i64[1] = 0x4300000043000000;
      v24[0] = vmulq_f32(v26[0], v7);
      *&v24[1] = vmul_f32(*v3.f32, 0x4300000043000000);
      v8 = 1;
LABEL_11:
      v25 = v8;
      goto LABEL_25;
    }

    outlined destroy of _ShapeStyle_Pack.Fill(v26);
    memset(v24, 0, sizeof(v24));
    v8 = 9;
    goto LABEL_11;
  }

  if (!v27[21])
  {
    v18 = v3.i32[0];
    if (one-time initialization token for legacyInterpolation != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (static Color.Resolved.legacyInterpolation)
    {
      v9 = v26[0];
    }

    else
    {
      ResolvedGradient.ColorSpace.convertIn(_:)(v24, v26[0].f32[0], v26[0].u32[1], v26[0].f32[2], v26[0].f32[3]);
      v9 = v24[0];
    }

    v11 = v18;
    v12.i64[0] = 0x4300000043000000;
    v12.i64[1] = 0x4300000043000000;
    v13 = vmulq_f32(v9, v12);
    goto LABEL_24;
  }

  if (v27[21] != 1)
  {
    v20 = v26[0].i32[1];
    v21 = v26[0].i32[0];
    v22 = v26[0].i64[1];
    v19 = v3.i32[0];
    if (one-time initialization token for legacyInterpolation != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (static Color.Resolved.legacyInterpolation == 1)
    {
      outlined destroy of _ShapeStyle_Pack.Fill(v26);
      v10.i64[1] = v22;
      v10.i64[0] = __PAIR64__(v20, v21);
    }

    else
    {
      ResolvedGradient.ColorSpace.convertIn(_:)(v24, v26[0].f32[0], v26[0].u32[1], v26[0].f32[2], v26[0].f32[3]);
      outlined destroy of _ShapeStyle_Pack.Fill(v26);
      v10 = v24[0];
    }

    v14.i64[0] = 0x4300000043000000;
    v14.i64[1] = 0x4300000043000000;
    v13 = vmulq_f32(v10, v14);
    v11 = v19;
LABEL_24:
    v24[0] = v13;
    LODWORD(v24[1]) = v11;
    v25 = 0;
    goto LABEL_25;
  }

  memset(v24, 0, sizeof(v24));
  v25 = 9;
  v23 = v24;
  (*(*v26[0].i64[0] + 152))(&v23, &unk_1F0071D30, &protocol witness table for _ShapeStyle_Pack.Fill.AnimatableData.PaintInitVisitor);
  outlined destroy of _ShapeStyle_Pack.Fill(v26);
LABEL_25:
  v15 = v24[3];
  *(a2 + 32) = v24[2];
  *(a2 + 48) = v15;
  *(a2 + 64) = v24[4];
  *(a2 + 80) = v25;
  result = *v24;
  v17 = v24[1];
  *a2 = v24[0];
  *(a2 + 16) = v17;
  return result;
}