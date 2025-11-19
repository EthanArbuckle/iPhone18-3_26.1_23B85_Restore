void specialized Collection.prefix(while:)(double a1, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = a5 >> 1;
  v7 = a4;
  if (a5 >> 1 != a4)
  {
    if (a4 <= v6)
    {
      v8 = a5 >> 1;
    }

    else
    {
      v8 = a4;
    }

    v7 = a4;
    do
    {
      if (v8 == v7)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v9 = *(a3 + 8 * v7);
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      v10 = *(a6 + 360);
      if (v9 >= *(v10 + 16))
      {
        goto LABEL_19;
      }

      if (*(v10 + (v9 << 8) + 32) != a1)
      {
        goto LABEL_12;
      }

      ++v7;
    }

    while (v6 != v7);
    v7 = a5 >> 1;
LABEL_12:
    if (v7 >= a4)
    {
      goto LABEL_13;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_13:
  if (v6 < a4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v6 < v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v7 < 0)
  {
LABEL_23:
    __break(1u);
  }
}

uint64_t JindoTripleVStack.Implementation.height(of:stack:)(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v7 = v3 + 28;
    if (a3 != 1)
    {
      v7 = v3 + 36;
    }
  }

  else
  {
    v7 = v3 + 20;
  }

  v8 = v3[45];
  v9 = *v7;

  if ((a1 & 0x8000000000000000) == 0)
  {
    v11 = *(v9 + 16);
    if (v11 < a1 || v11 < a2)
    {
      goto LABEL_27;
    }

    if (a2 < 0)
    {
      goto LABEL_28;
    }

    v13 = 0.0;
    if (a1 == a2)
    {
    }

    while (a1 < a2)
    {
      v14 = *(v9 + 32 + 8 * a1);
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      if (v14 >= *(v8 + 16))
      {
        goto LABEL_25;
      }

      v15 = v8 + 32 + (v14 << 8);
      if (a3)
      {
        v16 = (v15 + 64);
        v17 = (v15 + 56);
        if (a3 != 1)
        {
          v17 = (v15 + 72);
          v16 = (v15 + 80);
        }

        if (*v16)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v17 = (v15 + 40);
        if (*(v15 + 48))
        {
          goto LABEL_29;
        }
      }

      ++a1;
      v18 = v13 + *v17;
      result = ViewSize.subscript.getter();
      v13 = v18 + v19;
      if (a2 == a1)
      {
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void JindoTripleVStack.Implementation.placementOrder.getter(_OWORD *a1@<X8>)
{
  v2 = v1[21];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v1[20];
  if (*(v4 + 16) < v2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v1[29];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v1[28];
  if (*(v6 + 16) < v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v1[36];
  v8 = v1[37];
  *&v15 = v1[20];
  v9 = (2 * v5) | 1;
  *&v16 = 0;

  specialized ArraySlice.append<A>(contentsOf:)(v10, v6 + 32, 0, v9);

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(v7 + 16) < v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  specialized ArraySlice.append<A>(contentsOf:)(v11, v7 + 32, 0, (2 * v8) | 1);

  v12 = *(v4 + 16);
  if (v12 >= v2)
  {
    v13 = (2 * v12) | 1;

    specialized ArraySlice.append<A>(contentsOf:)(v14, v4 + 32, v2, v13);

    *(&v15 + 1) = v4 + 32;
    *a1 = v15;
    *(&v16 + 1) = (2 * v2) | 1;
    a1[1] = v16;
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t closure #1 in JindoTripleVStack.Implementation.prepareChildren(with:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = a1;
  result = JindoTripleVStack.MajorAxisGroup.allGroups.getter(*(a2 + 8), *(a2 + 16), a1, *(a2 + 24), a3, a4);
  v65 = *(result + 16);
  if (v65)
  {
    v7 = 0;
    v8 = 0;
    v63 = result;
    v64 = result + 32;
    v69 = 16 * v5;
    v70 = v5;
    while (1)
    {
      v9 = v64 + 24 * v8;
      if ((*v9 & 0x8000000000000000) != 0)
      {
        break;
      }

      v66 = v8;
      v67 = *v9;
      v10 = *(v9 + 8);
      v68 = *(v9 + 16);
      if (*v9)
      {
        v11 = *v9;
        v12 = v7;
        while (1)
        {
          v13 = *(a3 + 176);
          v80 = *(a3 + 160);
          v81 = v13;
          v14 = *(a3 + 208);
          v82 = *(a3 + 192);
          v83 = v14;
          v15 = *(a3 + 240);
          v84 = *(a3 + 224);
          v85 = v15;
          v16 = *(a3 + 272);
          v86 = *(a3 + 256);
          v87 = v16;
          v17 = *(a3 + 288);
          v18 = *(a3 + 304);
          v19 = *(a3 + 336);
          v90 = *(a3 + 320);
          v91 = v19;
          v88 = v17;
          v89 = v18;
          if (v5)
          {
            if (v5 == 1)
            {
              v20 = *(&v87 + 1);
              v21 = v87;
              v22 = v86;
              v23 = BYTE8(v86);
              v25 = *(&v85 + 1);
              v24 = v85;
              v26 = *(&v84 + 1);
              v27 = v84;
              v28 = &v84;
            }

            else
            {
              v20 = *(&v91 + 1);
              v21 = v91;
              v22 = v90;
              v23 = BYTE8(v90);
              v25 = *(&v89 + 1);
              v24 = v89;
              v26 = *(&v88 + 1);
              v27 = v88;
              v28 = &v88;
            }
          }

          else
          {
            v20 = *(&v83 + 1);
            v21 = v83;
            v22 = v82;
            v23 = BYTE8(v82);
            v25 = *(&v81 + 1);
            v24 = v81;
            v26 = *(&v80 + 1);
            v27 = v80;
            v28 = &v80;
          }

          result = outlined init with copy of JindoTripleVStack.StackHeader(v28, &v72);
          v72 = v27;
          v73 = v26;
          v74 = v24;
          v75 = v25;
          v76 = v22;
          v77 = v23;
          v78 = v21;
          v79 = v20;
          if (v7 < 0)
          {
            break;
          }

          if (v12 >= *(v27 + 16))
          {
            goto LABEL_49;
          }

          v29 = *(v27 + 8 * v12 + 32);
          outlined destroy of JindoTripleVStack.StackHeader(&v72);
          v30 = *(*a4 + 16);
          v31 = *(a3 + 360);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(a3 + 360) = v31;
          if (result)
          {
            v5 = v70;
            if ((v29 & 0x8000000000000000) != 0)
            {
              goto LABEL_50;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
            v31 = result;
            *(a3 + 360) = result;
            v5 = v70;
            if ((v29 & 0x8000000000000000) != 0)
            {
              goto LABEL_50;
            }
          }

          if (v29 >= *(v31 + 16))
          {
            goto LABEL_51;
          }

          v32 = v31 + (v29 << 8) + 32 + v69;
          *(v32 + 88) = v30;
          *(v32 + 96) = 0;
          ++v12;
          if (!--v11)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        break;
      }

LABEL_20:
      v33 = v7 + v67;
      if (__OFADD__(v7, v67))
      {
        goto LABEL_53;
      }

      if (v33 < v7)
      {
        goto LABEL_54;
      }

      v34 = v10;
      if ((v68 & 1) == 0)
      {
        v35 = *(a3 + 176);
        v80 = *(a3 + 160);
        v81 = v35;
        v36 = *(a3 + 208);
        v82 = *(a3 + 192);
        v83 = v36;
        v37 = *(a3 + 240);
        v84 = *(a3 + 224);
        v85 = v37;
        v38 = *(a3 + 272);
        v86 = *(a3 + 256);
        v87 = v38;
        v39 = *(a3 + 288);
        v40 = *(a3 + 304);
        v41 = *(a3 + 336);
        v90 = *(a3 + 320);
        v91 = v41;
        v88 = v39;
        v89 = v40;
        if (v5)
        {
          if (v5 == 1)
          {
            v42 = *(&v87 + 1);
            v43 = v87;
            v44 = v86;
            v45 = BYTE8(v86);
            v47 = *(&v85 + 1);
            v46 = v85;
            v48 = *(&v84 + 1);
            v49 = v84;
            v50 = &v84;
          }

          else
          {
            v42 = *(&v91 + 1);
            v43 = v91;
            v44 = v90;
            v45 = BYTE8(v90);
            v47 = *(&v89 + 1);
            v46 = v89;
            v48 = *(&v88 + 1);
            v49 = v88;
            v50 = &v88;
          }
        }

        else
        {
          v42 = *(&v83 + 1);
          v43 = v83;
          v44 = v82;
          v45 = BYTE8(v82);
          v47 = *(&v81 + 1);
          v46 = v81;
          v48 = *(&v80 + 1);
          v49 = v80;
          v50 = &v80;
        }

        result = outlined init with copy of JindoTripleVStack.StackHeader(v50, &v72);
        v72 = v49;
        v73 = v48;
        v74 = v46;
        v75 = v47;
        v76 = v44;
        v77 = v45;
        v78 = v43;
        v79 = v42;
        if (v7 == v33)
        {
          outlined destroy of JindoTripleVStack.StackHeader(&v72);
          v34 = v10 - 0.0;
        }

        else
        {
          v51 = v33 - 1;
          if (v33 - 1 < 0)
          {
            goto LABEL_56;
          }

          v52 = *(v43 + 16);
          if (v51 >= v52)
          {
            goto LABEL_57;
          }

          v53 = *(v43 + 32 + 8 * v51);
          if (v7 <= 0)
          {
            v54 = 0.0;
          }

          else
          {
            if (v7 > v52)
            {
              goto LABEL_58;
            }

            v54 = *(v43 + 32 + 8 * v7 - 8);
          }

          outlined destroy of JindoTripleVStack.StackHeader(&v72);
          v34 = v10 - (v53 - v54);
        }
      }

      v55 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 2) + 1, 1, v55);
        *a4 = v55;
      }

      v58 = *(v55 + 2);
      v57 = *(v55 + 3);
      if (v58 >= v57 >> 1)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v55);
        *a4 = v55;
      }

      v8 = v66 + 1;
      LOBYTE(v72) = v68;
      *(v55 + 2) = v58 + 1;
      v59 = &v55[80 * v58];
      v59[32] = v5;
      v60 = v88;
      *(v59 + 9) = *(&v88 + 3);
      *(v59 + 33) = v60;
      *(v59 + 5) = v7;
      *(v59 + 6) = v33;
      *(v59 + 7) = 0;
      *(v59 + 8) = v34;
      v59[72] = v72;
      v61 = v84;
      *(v59 + 19) = *(&v84 + 3);
      *(v59 + 73) = v61;
      *(v59 + 10) = v10;
      v59[88] = v68;
      v62 = v80;
      *(v59 + 23) = *(&v80 + 3);
      *(v59 + 89) = v62;
      *(v59 + 12) = 0;
      *(v59 + 13) = 0;
      if (v66 + 1 == v65)
      {
      }

      result = v63;
      v7 += v67;
      if (v8 >= *(v63 + 16))
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t protocol witness for static LayoutValueKey.defaultValue.getter in conformance PositionKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for bottom != -1)
  {
    v5 = a1;
    result = swift_once();
    a1 = v5;
  }

  v1 = qword_1EAA06720;
  v2 = byte_1EAA06728;
  v3 = qword_1EAA06730;
  v4 = byte_1EAA06738;
  *a1 = static JindoTripleVStack.Position.bottom;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  return result;
}

double protocol witness for static LayoutValueKey.defaultValue.getter in conformance ContentMarginsKey@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 57) = 1;
  return result;
}

uint64_t JindoTripleVStack.ContentMargins.init(top:leading:bottom:trailing:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v64 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v62 = v6;
    v63 = a3;
    v8 = *(v64 + 8 * a3);
    v61 = v7;
    while ((v8 & 0x8000000000000000) == 0)
    {
      v9 = *(a5 + 360);
      v10 = *(v9 + 16);
      if (v8 >= v10)
      {
        goto LABEL_42;
      }

      v11 = *v6;
      if (*v6 >= v10)
      {
        goto LABEL_43;
      }

      v12 = v8 << 8;
      v13 = v9 + 32 + (v8 << 8);
      v14 = v11 << 8;
      v15 = *(v9 + 32 + (v11 << 8));
      if (v15 < *v13)
      {
        goto LABEL_39;
      }

      if (*v13 >= v15)
      {
        v65 = v11 << 8;
        if (*(v13 + 16))
        {
          ProposedViewSize.init(_:in:by:)();
          v17 = v16;
          v18 = *(a5 + 104);
          v19 = *(a5 + 112);
          v20 = *(a5 + 113);
          LODWORD(v68) = *(a5 + 96);
          v69 = v18;
          v70 = v19;
          v71 = v20;
          LayoutSubviews.subscript.getter();
          v72 = v17 & 1;
          LayoutSubview.lengthThatFits(_:in:)();
          v22 = v21;
          v23 = *(a5 + 360);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(a5 + 360) = v23;
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
            v23 = result;
            *(a5 + 360) = result;
          }

          if (v8 >= *(v23 + 16))
          {
            goto LABEL_47;
          }

          v24 = v23 + v12;
          *(v24 + 40) = v22;
          *(v24 + 48) = 0;
          v9 = *(a5 + 360);
          v10 = *(v9 + 16);
          v14 = v11 << 8;
        }

        if (v8 >= v10)
        {
          goto LABEL_44;
        }

        if (*(v9 + v12 + 64))
        {
          ProposedViewSize.init(_:in:by:)();
          v26 = v25;
          v27 = *(a5 + 104);
          v28 = *(a5 + 112);
          v29 = *(a5 + 113);
          LODWORD(v68) = *(a5 + 96);
          v69 = v27;
          v70 = v28;
          v71 = v29;
          LayoutSubviews.subscript.getter();
          v72 = v26 & 1;
          LayoutSubview.lengthThatFits(_:in:)();
          v31 = v30;
          v32 = *(a5 + 360);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(a5 + 360) = v32;
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
            v32 = result;
            *(a5 + 360) = result;
          }

          if (v8 >= *(v32 + 16))
          {
            goto LABEL_48;
          }

          v33 = v32 + v12;
          *(v33 + 56) = v31;
          *(v33 + 64) = 0;
          v14 = v11 << 8;
        }

        result = _LayoutTraits.FlexibilityEstimate.init(minLength:maxLength:)();
        v34 = *(a5 + 360);
        v35 = *(v34 + 16);
        if (v11 >= v35)
        {
          goto LABEL_45;
        }

        v36 = v68;
        v37 = v69;
        if (*(v34 + v14 + 48))
        {
          ProposedViewSize.init(_:in:by:)();
          v39 = v38;
          v40 = *(a5 + 104);
          v41 = *(a5 + 112);
          v42 = *(a5 + 113);
          LODWORD(v68) = *(a5 + 96);
          v69 = v40;
          v70 = v41;
          v71 = v42;
          LayoutSubviews.subscript.getter();
          v72 = v39 & 1;
          LayoutSubview.lengthThatFits(_:in:)();
          v44 = v43;
          v45 = *(a5 + 360);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(a5 + 360) = v45;
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v45);
            v45 = result;
            *(a5 + 360) = result;
          }

          if (v11 >= *(v45 + 16))
          {
            goto LABEL_49;
          }

          v46 = v45 + v65;
          v14 = v11 << 8;
          *(v46 + 40) = v44;
          *(v46 + 48) = 0;
          v34 = *(a5 + 360);
          v35 = *(v34 + 16);
        }

        if (v11 >= v35)
        {
          goto LABEL_46;
        }

        if (*(v34 + v14 + 64))
        {
          ProposedViewSize.init(_:in:by:)();
          v48 = v47;
          v49 = *(a5 + 104);
          v50 = *(a5 + 112);
          v51 = *(a5 + 113);
          LODWORD(v68) = *(a5 + 96);
          v69 = v49;
          v70 = v50;
          v71 = v51;
          LayoutSubviews.subscript.getter();
          v72 = v48 & 1;
          LayoutSubview.lengthThatFits(_:in:)();
          v53 = v52;
          v54 = *(a5 + 360);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(a5 + 360) = v54;
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v54);
            v54 = result;
            *(a5 + 360) = result;
          }

          if (v11 >= *(v54 + 16))
          {
            goto LABEL_50;
          }

          v55 = v54 + v65;
          *(v55 + 56) = v53;
          *(v55 + 64) = 0;
        }

        _LayoutTraits.FlexibilityEstimate.init(minLength:maxLength:)();
        v56 = v68;
        v57 = v69;
        v68 = v36;
        v69 = v37;
        v66 = v56;
        v67 = v57;
        result = MEMORY[0x18D004770](&v68, &v66);
        if ((result & 1) != 0 || (v68 = v36, v69 = v37, v66 = v56, v67 = v57, result = MEMORY[0x18D004770](&v66, &v68), (result & 1) == 0) && v8 < v11)
        {
LABEL_39:
          if (!v64)
          {
            goto LABEL_51;
          }

          v58 = *v6;
          v8 = v6[1];
          *v6 = v8;
          v6[1] = v58;
          --v6;
          if (!__CFADD__(v7++, 1))
          {
            continue;
          }
        }
      }

      a3 = v63 + 1;
      v6 = v62 + 1;
      v7 = v61 - 1;
      if (v63 + 1 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v188 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_175:
    v8 = *v188;
    if (!*v188)
    {
      goto LABEL_236;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_177;
    }

    goto LABEL_229;
  }

  v8 = a5;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v11 = v9;
    v12 = v9 + 1;
    v192 = v10;
    if (v9 + 1 >= v7)
    {
      goto LABEL_72;
    }

    v13 = *a3;
    v14 = *(*a3 + 8 * v12);
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_219;
    }

    v15 = *(v8 + 360);
    v16 = *(v15 + 16);
    if (v14 >= v16)
    {
      goto LABEL_220;
    }

    v17 = v9 + 1;
    v186 = v11;
    v18 = *(v13 + 8 * v11);
    if (v18 >= v16)
    {
      goto LABEL_221;
    }

    v19 = v15 + 32;
    v20 = *(v19 + (v14 << 8));
    v21 = *(v19 + (v18 << 8));
    v197 = v7;
    if (v21 >= v20)
    {
      if (v20 >= v21)
      {
        majorAxisMin #1 (ofChild:) in JindoTripleVStack.Implementation.prioritize(resetCache:)(v14, v8);
        majorAxisMax #1 (ofChild:) in JindoTripleVStack.Implementation.prioritize(resetCache:)(v14, v8);
        _LayoutTraits.FlexibilityEstimate.init(minLength:maxLength:)();
        v23 = v202;
        v24 = v203;
        majorAxisMin #1 (ofChild:) in JindoTripleVStack.Implementation.prioritize(resetCache:)(v18, v8);
        majorAxisMax #1 (ofChild:) in JindoTripleVStack.Implementation.prioritize(resetCache:)(v18, v8);
        _LayoutTraits.FlexibilityEstimate.init(minLength:maxLength:)();
        v25 = v202;
        v26 = v203;
        v202 = v23;
        v203 = v24;
        v200 = v25;
        v201 = v26;
        result = MEMORY[0x18D004770](&v202, &v200);
        if (result)
        {
          v22 = 1;
        }

        else
        {
          v202 = v23;
          v203 = v24;
          v200 = v25;
          v201 = v26;
          result = MEMORY[0x18D004770](&v200, &v202);
          v22 = (v14 < v18) & ~result;
        }

        v7 = v197;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 1;
    }

    v27 = v11 + 2;
    if (v11 + 2 >= v7)
    {
      v30 = v11 + 2;
LABEL_61:
      v75 = v17;
      v12 = v30;
      if ((v22 & 1) == 0)
      {
        goto LABEL_72;
      }

      if (v30 >= v11)
      {
        goto LABEL_63;
      }

LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
      break;
    }

    v28 = (v13 + 8 * v11 + 16);
    v195 = v22;
    while (1)
    {
      v29 = *v28;
      if ((*v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_199;
      }

      v30 = v27;
      v31 = *(v8 + 360);
      v32 = *(v31 + 16);
      if (v29 >= v32)
      {
        goto LABEL_200;
      }

      v33 = *(v28 - 1);
      if (v33 >= v32)
      {
        goto LABEL_201;
      }

      v34 = v6;
      v6 = v29 << 8;
      v35 = v31 + 32 + (v29 << 8);
      v10 = v33 << 8;
      v36 = *(v31 + 32 + (v33 << 8));
      if (v36 < *v35)
      {
        v6 = v34;
        v10 = v192;
        if ((v22 & 1) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_19;
      }

      if (*v35 < v36)
      {
        v6 = v34;
        v10 = v192;
        if (v22)
        {
          break;
        }

        goto LABEL_19;
      }

      if (*(v35 + 16))
      {
        ProposedViewSize.init(_:in:by:)();
        v37 = *(a5 + 104);
        v38 = *(a5 + 112);
        v39 = *(a5 + 113);
        LODWORD(v202) = *(a5 + 96);
        v203 = v37;
        v204 = v38;
        v205 = v39;
        LayoutSubviews.subscript.getter();
        v8 = a5;
        LayoutSubview.lengthThatFits(_:in:)();
        v41 = v40;
        v42 = *(a5 + 360);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a5 + 360) = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew()(v42);
          *(a5 + 360) = v42;
        }

        if (v29 >= *(v42 + 2))
        {
          goto LABEL_223;
        }

        v44 = &v42[v6];
        *(v44 + 5) = v41;
        v44[48] = 0;
        v31 = *(a5 + 360);
        v32 = *(v31 + 16);
      }

      if (v29 >= v32)
      {
        goto LABEL_215;
      }

      if (*(v31 + v6 + 64))
      {
        ProposedViewSize.init(_:in:by:)();
        v45 = *(a5 + 104);
        v46 = *(a5 + 112);
        v47 = *(a5 + 113);
        LODWORD(v202) = *(a5 + 96);
        v203 = v45;
        v204 = v46;
        v205 = v47;
        LayoutSubviews.subscript.getter();
        v8 = a5;
        LayoutSubview.lengthThatFits(_:in:)();
        v49 = v48;
        v50 = *(a5 + 360);
        v51 = swift_isUniquelyReferenced_nonNull_native();
        *(a5 + 360) = v50;
        if ((v51 & 1) == 0)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew()(v50);
          *(a5 + 360) = v50;
        }

        if (v29 >= *(v50 + 2))
        {
          goto LABEL_224;
        }

        v52 = &v50[v6];
        *(v52 + 7) = v49;
        v52[64] = 0;
      }

      _LayoutTraits.FlexibilityEstimate.init(minLength:maxLength:)();
      v53 = *(v8 + 360);
      v54 = *(v53 + 16);
      if (v33 >= v54)
      {
        goto LABEL_216;
      }

      v6 = v34;
      v55 = v202;
      v56 = v203;
      if (*(v53 + v10 + 48))
      {
        ProposedViewSize.init(_:in:by:)();
        v57 = *(a5 + 104);
        v58 = *(a5 + 112);
        v59 = *(a5 + 113);
        LODWORD(v202) = *(a5 + 96);
        v203 = v57;
        v204 = v58;
        v205 = v59;
        LayoutSubviews.subscript.getter();
        v8 = a5;
        LayoutSubview.lengthThatFits(_:in:)();
        v61 = v60;
        v62 = *(a5 + 360);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        *(a5 + 360) = v62;
        if ((v63 & 1) == 0)
        {
          v62 = specialized _ArrayBuffer._consumeAndCreateNew()(v62);
          *(a5 + 360) = v62;
        }

        if (v33 >= *(v62 + 2))
        {
          goto LABEL_225;
        }

        v64 = &v62[v10];
        *(v64 + 5) = v61;
        v64[48] = 0;
        v53 = *(a5 + 360);
        v54 = *(v53 + 16);
      }

      if (v33 >= v54)
      {
        goto LABEL_217;
      }

      if (*(v53 + v10 + 64))
      {
        ProposedViewSize.init(_:in:by:)();
        v65 = *(a5 + 104);
        v66 = *(a5 + 112);
        v67 = *(a5 + 113);
        LODWORD(v202) = *(a5 + 96);
        v203 = v65;
        v204 = v66;
        v205 = v67;
        LayoutSubviews.subscript.getter();
        v8 = a5;
        LayoutSubview.lengthThatFits(_:in:)();
        v69 = v68;
        v70 = *(a5 + 360);
        v71 = swift_isUniquelyReferenced_nonNull_native();
        *(a5 + 360) = v70;
        if ((v71 & 1) == 0)
        {
          v70 = specialized _ArrayBuffer._consumeAndCreateNew()(v70);
          *(a5 + 360) = v70;
        }

        if (v33 >= *(v70 + 2))
        {
          goto LABEL_226;
        }

        v72 = &v70[v10];
        *(v72 + 7) = v69;
        v72[64] = 0;
      }

      _LayoutTraits.FlexibilityEstimate.init(minLength:maxLength:)();
      v73 = v202;
      v74 = v203;
      v202 = v55;
      v203 = v56;
      v200 = v73;
      v201 = v74;
      result = MEMORY[0x18D004770](&v202, &v200);
      v10 = v192;
      if (result)
      {
        v7 = v197;
        LOBYTE(v22) = v195;
        if ((v195 & 1) == 0)
        {
LABEL_71:
          v12 = v30;
          v11 = v186;
          goto LABEL_72;
        }

        goto LABEL_19;
      }

      v202 = v55;
      v203 = v56;
      v200 = v73;
      v201 = v74;
      result = MEMORY[0x18D004770](&v200, &v202);
      if ((result & 1) == 0)
      {
        LOBYTE(v22) = v195;
        v7 = v197;
        if (((v195 ^ (v29 >= v33)) & 1) == 0)
        {
          v17 = v30 - 1;
          goto LABEL_60;
        }

        goto LABEL_19;
      }

      v7 = v197;
      LOBYTE(v22) = v195;
      if (v195)
      {
        break;
      }

LABEL_19:
      ++v28;
      v27 = v30 + 1;
      if (v7 == v30 + 1)
      {
        v17 = v30;
        v30 = v7;
LABEL_60:
        v11 = v186;
        goto LABEL_61;
      }
    }

    v75 = v30 - 1;
    v11 = v186;
    if (v30 < v186)
    {
      goto LABEL_230;
    }

LABEL_63:
    if (v11 <= v75)
    {
      v76 = v30 - 1;
      v77 = v11;
      do
      {
        if (v77 != v76)
        {
          v79 = *a3;
          if (!*a3)
          {
            goto LABEL_234;
          }

          v80 = *(v79 + 8 * v77);
          *(v79 + 8 * v77) = *(v79 + 8 * v76);
          *(v79 + 8 * v76) = v80;
        }
      }

      while (++v77 < v76--);
    }

    v12 = v30;
LABEL_72:
    v81 = a3[1];
    if (v12 >= v81)
    {
      goto LABEL_121;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_222;
    }

    if (v12 - v11 >= a4)
    {
      goto LABEL_121;
    }

    if (__OFADD__(v11, a4))
    {
      goto LABEL_227;
    }

    if (v11 + a4 >= v81)
    {
      v82 = a3[1];
    }

    else
    {
      v82 = v11 + a4;
    }

    if (v82 < v11)
    {
      goto LABEL_228;
    }

    if (v12 == v82)
    {
      goto LABEL_121;
    }

    v184 = v6;
    v194 = v82;
    v196 = *a3;
    v10 = *a3 + 8 * v12 - 8;
    v187 = v11;
    v6 = v11 - v12;
    while (2)
    {
      v190 = v10;
      v191 = v12;
      v83 = *(v196 + 8 * v12);
      v189 = v6;
      while (2)
      {
        if ((v83 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
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
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          v10 = result;
LABEL_177:
          v206 = v10;
          v179 = *(v10 + 16);
          if (v179 < 2)
          {
          }

          while (*a3)
          {
            v180 = v10;
            v10 = *(v10 + 16 * v179);
            v181 = v180;
            v182 = *&v180[16 * v179 + 24];
            specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + 8 * v10, (*a3 + 8 * *&v180[16 * v179 + 16]), (*a3 + 8 * v182), v8, a5);
            if (v6)
            {
            }

            if (v182 < v10)
            {
              goto LABEL_212;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v181 = specialized _ArrayBuffer._consumeAndCreateNew()(v181);
            }

            if (v179 - 2 >= *(v181 + 2))
            {
              goto LABEL_213;
            }

            v183 = &v181[16 * v179];
            *v183 = v10;
            v183[1] = v182;
            v206 = v181;
            result = specialized Array.remove(at:)(v179 - 1);
            v10 = v206;
            v179 = *(v206 + 16);
            if (v179 <= 1)
            {
            }
          }

          goto LABEL_233;
        }

        v84 = *(v8 + 360);
        v85 = *(v84 + 16);
        if (v83 >= v85)
        {
          goto LABEL_187;
        }

        v86 = *v10;
        if (*v10 >= v85)
        {
          goto LABEL_188;
        }

        v87 = v83 << 8;
        v88 = v84 + 32 + (v83 << 8);
        v89 = v86 << 8;
        v90 = *(v84 + 32 + (v86 << 8));
        if (v90 < *v88)
        {
          goto LABEL_116;
        }

        if (*v88 < v90)
        {
          goto LABEL_83;
        }

        v198 = v86 << 8;
        if (*(v88 + 16))
        {
          ProposedViewSize.init(_:in:by:)();
          v91 = *(a5 + 104);
          v92 = *(a5 + 112);
          v93 = *(a5 + 113);
          LODWORD(v202) = *(a5 + 96);
          v203 = v91;
          v204 = v92;
          v205 = v93;
          LayoutSubviews.subscript.getter();
          v8 = a5;
          LayoutSubview.lengthThatFits(_:in:)();
          v95 = v94;
          v96 = *(a5 + 360);
          v97 = swift_isUniquelyReferenced_nonNull_native();
          *(a5 + 360) = v96;
          if ((v97 & 1) == 0)
          {
            v96 = specialized _ArrayBuffer._consumeAndCreateNew()(v96);
            *(a5 + 360) = v96;
          }

          if (v83 >= *(v96 + 2))
          {
            goto LABEL_193;
          }

          v98 = &v96[v87];
          *(v98 + 5) = v95;
          v98[48] = 0;
          v84 = *(a5 + 360);
          v85 = *(v84 + 16);
          v89 = v86 << 8;
        }

        if (v83 >= v85)
        {
          goto LABEL_189;
        }

        if (*(v84 + v87 + 64))
        {
          ProposedViewSize.init(_:in:by:)();
          v99 = *(a5 + 104);
          v100 = *(a5 + 112);
          v101 = *(a5 + 113);
          LODWORD(v202) = *(a5 + 96);
          v203 = v99;
          v204 = v100;
          v205 = v101;
          LayoutSubviews.subscript.getter();
          v8 = a5;
          LayoutSubview.lengthThatFits(_:in:)();
          v103 = v102;
          v104 = *(a5 + 360);
          v105 = swift_isUniquelyReferenced_nonNull_native();
          *(a5 + 360) = v104;
          if ((v105 & 1) == 0)
          {
            v104 = specialized _ArrayBuffer._consumeAndCreateNew()(v104);
            *(a5 + 360) = v104;
          }

          if (v83 >= *(v104 + 2))
          {
            goto LABEL_194;
          }

          v106 = &v104[v87];
          *(v106 + 7) = v103;
          v106[64] = 0;
          v89 = v86 << 8;
        }

        _LayoutTraits.FlexibilityEstimate.init(minLength:maxLength:)();
        v107 = *(v8 + 360);
        v108 = *(v107 + 16);
        if (v86 >= v108)
        {
          goto LABEL_190;
        }

        v109 = v202;
        v110 = v203;
        if (*(v107 + v89 + 48))
        {
          ProposedViewSize.init(_:in:by:)();
          v111 = *(a5 + 104);
          v112 = *(a5 + 112);
          v113 = *(a5 + 113);
          LODWORD(v202) = *(a5 + 96);
          v203 = v111;
          v204 = v112;
          v205 = v113;
          LayoutSubviews.subscript.getter();
          v8 = a5;
          LayoutSubview.lengthThatFits(_:in:)();
          v115 = v114;
          v116 = *(a5 + 360);
          v117 = swift_isUniquelyReferenced_nonNull_native();
          *(a5 + 360) = v116;
          if ((v117 & 1) == 0)
          {
            v116 = specialized _ArrayBuffer._consumeAndCreateNew()(v116);
            *(a5 + 360) = v116;
          }

          if (v86 >= *(v116 + 2))
          {
            goto LABEL_195;
          }

          v89 = v86 << 8;
          v118 = &v116[v198];
          *(v118 + 5) = v115;
          v118[48] = 0;
          v107 = *(a5 + 360);
          v108 = *(v107 + 16);
        }

        if (v86 >= v108)
        {
          goto LABEL_191;
        }

        if (*(v107 + v89 + 64))
        {
          ProposedViewSize.init(_:in:by:)();
          v119 = *(a5 + 104);
          v120 = *(a5 + 112);
          v121 = *(a5 + 113);
          LODWORD(v202) = *(a5 + 96);
          v203 = v119;
          v204 = v120;
          v205 = v121;
          LayoutSubviews.subscript.getter();
          v8 = a5;
          LayoutSubview.lengthThatFits(_:in:)();
          v123 = v122;
          v124 = *(a5 + 360);
          v125 = swift_isUniquelyReferenced_nonNull_native();
          *(a5 + 360) = v124;
          if ((v125 & 1) == 0)
          {
            v124 = specialized _ArrayBuffer._consumeAndCreateNew()(v124);
            *(a5 + 360) = v124;
          }

          if (v86 >= *(v124 + 2))
          {
            goto LABEL_196;
          }

          v126 = &v124[v198];
          *(v126 + 7) = v123;
          v126[64] = 0;
        }

        _LayoutTraits.FlexibilityEstimate.init(minLength:maxLength:)();
        v127 = v202;
        v128 = v203;
        v202 = v109;
        v203 = v110;
        v200 = v127;
        v201 = v128;
        result = MEMORY[0x18D004770](&v202, &v200);
        v82 = v194;
        if (result)
        {
LABEL_116:
          if (!v196)
          {
            goto LABEL_231;
          }

          v129 = *v10;
          v83 = *(v10 + 8);
          *v10 = v83;
          *(v10 + 8) = v129;
          v10 -= 8;
          if (__CFADD__(v6++, 1))
          {
            goto LABEL_83;
          }

          continue;
        }

        break;
      }

      v202 = v109;
      v203 = v110;
      v200 = v127;
      v201 = v128;
      result = MEMORY[0x18D004770](&v200, &v202);
      if ((result & 1) == 0)
      {
        v82 = v194;
        if (v83 >= v86)
        {
          goto LABEL_83;
        }

        goto LABEL_116;
      }

      v82 = v194;
LABEL_83:
      v12 = v191 + 1;
      v10 = v190 + 8;
      v6 = v189 - 1;
      if (v191 + 1 != v82)
      {
        continue;
      }

      break;
    }

    v12 = v82;
    v6 = v184;
    v10 = v192;
    v11 = v187;
LABEL_121:
    if (v12 < v11)
    {
      goto LABEL_218;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
    }

    v132 = *(v10 + 16);
    v131 = *(v10 + 24);
    v133 = v132 + 1;
    if (v132 >= v131 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v131 > 1), v132 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v133;
    v134 = v10 + 16 * v132;
    *(v134 + 32) = v11;
    *(v134 + 40) = v12;
    v9 = v12;
    v135 = *v188;
    if (*v188)
    {
      if (v132)
      {
        while (1)
        {
          v136 = v133 - 1;
          if (v133 >= 4)
          {
            break;
          }

          if (v133 == 3)
          {
            v137 = *(v10 + 32);
            v138 = *(v10 + 40);
            v147 = __OFSUB__(v138, v137);
            v139 = v138 - v137;
            v140 = v147;
LABEL_141:
            if (v140)
            {
              goto LABEL_204;
            }

            v153 = (v10 + 16 * v133);
            v155 = *v153;
            v154 = v153[1];
            v156 = __OFSUB__(v154, v155);
            v157 = v154 - v155;
            v158 = v156;
            if (v156)
            {
              goto LABEL_207;
            }

            v159 = (v10 + 32 + 16 * v136);
            v161 = *v159;
            v160 = v159[1];
            v147 = __OFSUB__(v160, v161);
            v162 = v160 - v161;
            if (v147)
            {
              goto LABEL_210;
            }

            if (__OFADD__(v157, v162))
            {
              goto LABEL_211;
            }

            if (v157 + v162 >= v139)
            {
              if (v139 < v162)
              {
                v136 = v133 - 2;
              }

              goto LABEL_162;
            }

            goto LABEL_155;
          }

          v163 = (v10 + 16 * v133);
          v165 = *v163;
          v164 = v163[1];
          v147 = __OFSUB__(v164, v165);
          v157 = v164 - v165;
          v158 = v147;
LABEL_155:
          if (v158)
          {
            goto LABEL_206;
          }

          v166 = v10 + 16 * v136;
          v168 = *(v166 + 32);
          v167 = *(v166 + 40);
          v147 = __OFSUB__(v167, v168);
          v169 = v167 - v168;
          if (v147)
          {
            goto LABEL_209;
          }

          if (v169 < v157)
          {
            goto LABEL_3;
          }

LABEL_162:
          v174 = v136 - 1;
          if (v136 - 1 >= v133)
          {
            goto LABEL_192;
          }

          if (!*a3)
          {
            goto LABEL_232;
          }

          v175 = v10;
          v176 = *(v10 + 32 + 16 * v174);
          v177 = *(v10 + 32 + 16 * v136);
          v10 = *(v10 + 32 + 16 * v136 + 8);
          specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + 8 * v176, (*a3 + 8 * v177), (*a3 + 8 * v10), v135, v8);
          if (v6)
          {
          }

          if (v10 < v176)
          {
            goto LABEL_197;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v175 = specialized _ArrayBuffer._consumeAndCreateNew()(v175);
          }

          if (v174 >= *(v175 + 2))
          {
            goto LABEL_198;
          }

          v178 = &v175[16 * v174];
          *(v178 + 4) = v176;
          *(v178 + 5) = v10;
          v206 = v175;
          result = specialized Array.remove(at:)(v136);
          v10 = v206;
          v133 = *(v206 + 16);
          if (v133 <= 1)
          {
            goto LABEL_3;
          }
        }

        v141 = v10 + 32 + 16 * v133;
        v142 = *(v141 - 64);
        v143 = *(v141 - 56);
        v147 = __OFSUB__(v143, v142);
        v144 = v143 - v142;
        if (v147)
        {
          goto LABEL_202;
        }

        v146 = *(v141 - 48);
        v145 = *(v141 - 40);
        v147 = __OFSUB__(v145, v146);
        v139 = v145 - v146;
        v140 = v147;
        if (v147)
        {
          goto LABEL_203;
        }

        v148 = (v10 + 16 * v133);
        v150 = *v148;
        v149 = v148[1];
        v147 = __OFSUB__(v149, v150);
        v151 = v149 - v150;
        if (v147)
        {
          goto LABEL_205;
        }

        v147 = __OFADD__(v139, v151);
        v152 = v139 + v151;
        if (v147)
        {
          goto LABEL_208;
        }

        if (v152 >= v144)
        {
          v170 = (v10 + 32 + 16 * v136);
          v172 = *v170;
          v171 = v170[1];
          v147 = __OFSUB__(v171, v172);
          v173 = v171 - v172;
          if (v147)
          {
            goto LABEL_214;
          }

          if (v139 < v173)
          {
            v136 = v133 - 2;
          }

          goto LABEL_162;
        }

        goto LABEL_141;
      }

LABEL_3:
      v7 = a3[1];
      if (v9 >= v7)
      {
        goto LABEL_175;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_236:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t __src, char *__dst, char *a3, char *a4, uint64_t a5)
{
  v6 = __dst;
  v7 = __src;
  v8 = &__dst[-__src];
  v9 = &__dst[-__src + 7];
  if (&__dst[-__src] >= 0)
  {
    v9 = &__dst[-__src];
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || __src + 8 * v10 <= a4)
    {
      v14 = a4;
      __src = memmove(a4, __src, 8 * v10);
      a4 = v14;
    }

    v131 = &a4[8 * v10];
    v15 = a4;
    if (v8 >= 8)
    {
      v16 = a3;
      while (1)
      {
        if (v6 >= v16)
        {
          goto LABEL_96;
        }

        v20 = *v6;
        if ((*v6 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v21 = *(a5 + 360);
        v22 = *(v21 + 16);
        if (v20 >= v22)
        {
          goto LABEL_103;
        }

        v23 = *v15;
        if (*v15 >= v22)
        {
          goto LABEL_104;
        }

        v24 = v7;
        v25 = v20 << 8;
        v26 = v21 + 32 + (v20 << 8);
        v27 = v23 << 8;
        v28 = *(v21 + 32 + (v23 << 8));
        if (v28 >= *v26)
        {
          if (*v26 < v28)
          {
            break;
          }

          v127 = v15;
          if (*(v26 + 16))
          {
            ProposedViewSize.init(_:in:by:)();
            v30 = v29;
            v31 = *(a5 + 104);
            v32 = *(a5 + 112);
            v33 = *(a5 + 113);
            LODWORD(v134) = *(a5 + 96);
            v135 = v31;
            v136 = v32;
            v137 = v33;
            LayoutSubviews.subscript.getter();
            v138 = v30 & 1;
            LayoutSubview.lengthThatFits(_:in:)();
            v35 = v34;
            v36 = *(a5 + 360);
            __src = swift_isUniquelyReferenced_nonNull_native();
            *(a5 + 360) = v36;
            if ((__src & 1) == 0)
            {
              __src = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
              v36 = __src;
              *(a5 + 360) = __src;
            }

            v15 = v127;
            if (v20 >= *(v36 + 16))
            {
              goto LABEL_118;
            }

            v37 = v36 + v25;
            *(v37 + 40) = v35;
            *(v37 + 48) = 0;
            v21 = *(a5 + 360);
            v22 = *(v21 + 16);
            v16 = a3;
          }

          if (v20 >= v22)
          {
            goto LABEL_111;
          }

          if (*(v21 + v25 + 64))
          {
            ProposedViewSize.init(_:in:by:)();
            v39 = v38;
            v40 = *(a5 + 104);
            v41 = *(a5 + 112);
            v42 = *(a5 + 113);
            LODWORD(v134) = *(a5 + 96);
            v135 = v40;
            v136 = v41;
            v137 = v42;
            LayoutSubviews.subscript.getter();
            v138 = v39 & 1;
            LayoutSubview.lengthThatFits(_:in:)();
            v44 = v43;
            v45 = *(a5 + 360);
            __src = swift_isUniquelyReferenced_nonNull_native();
            *(a5 + 360) = v45;
            if ((__src & 1) == 0)
            {
              __src = specialized _ArrayBuffer._consumeAndCreateNew()(v45);
              v45 = __src;
              *(a5 + 360) = __src;
            }

            v15 = v127;
            if (v20 >= *(v45 + 16))
            {
              goto LABEL_119;
            }

            v46 = v45 + v25;
            *(v46 + 56) = v44;
            *(v46 + 64) = 0;
            v16 = a3;
          }

          __src = _LayoutTraits.FlexibilityEstimate.init(minLength:maxLength:)();
          v47 = *(a5 + 360);
          v48 = *(v47 + 16);
          if (v23 >= v48)
          {
            goto LABEL_112;
          }

          v49 = v134;
          v50 = v135;
          if (*(v47 + v27 + 48))
          {
            ProposedViewSize.init(_:in:by:)();
            v52 = v51;
            v53 = *(a5 + 104);
            v54 = *(a5 + 112);
            v55 = *(a5 + 113);
            LODWORD(v134) = *(a5 + 96);
            v135 = v53;
            v136 = v54;
            v137 = v55;
            LayoutSubviews.subscript.getter();
            v138 = v52 & 1;
            LayoutSubview.lengthThatFits(_:in:)();
            v57 = v56;
            v58 = *(a5 + 360);
            __src = swift_isUniquelyReferenced_nonNull_native();
            *(a5 + 360) = v58;
            if ((__src & 1) == 0)
            {
              __src = specialized _ArrayBuffer._consumeAndCreateNew()(v58);
              v58 = __src;
              *(a5 + 360) = __src;
            }

            v15 = v127;
            if (v23 >= *(v58 + 16))
            {
              goto LABEL_120;
            }

            v59 = v58 + v27;
            *(v59 + 40) = v57;
            *(v59 + 48) = 0;
            v47 = *(a5 + 360);
            v48 = *(v47 + 16);
            v16 = a3;
          }

          if (v23 >= v48)
          {
            goto LABEL_113;
          }

          if (*(v47 + v27 + 64))
          {
            ProposedViewSize.init(_:in:by:)();
            v61 = v60;
            v62 = *(a5 + 104);
            v63 = *(a5 + 112);
            v64 = *(a5 + 113);
            LODWORD(v134) = *(a5 + 96);
            v135 = v62;
            v136 = v63;
            v137 = v64;
            LayoutSubviews.subscript.getter();
            v138 = v61 & 1;
            LayoutSubview.lengthThatFits(_:in:)();
            v66 = v65;
            v67 = *(a5 + 360);
            __src = swift_isUniquelyReferenced_nonNull_native();
            *(a5 + 360) = v67;
            if ((__src & 1) == 0)
            {
              __src = specialized _ArrayBuffer._consumeAndCreateNew()(v67);
              v67 = __src;
              *(a5 + 360) = __src;
            }

            v15 = v127;
            if (v23 >= *(v67 + 16))
            {
              goto LABEL_121;
            }

            v68 = v67 + v27;
            *(v68 + 56) = v66;
            *(v68 + 64) = 0;
            v16 = a3;
          }

          _LayoutTraits.FlexibilityEstimate.init(minLength:maxLength:)();
          v69 = v134;
          v70 = v135;
          v134 = v49;
          v135 = v50;
          v132 = v69;
          v133 = v70;
          __src = MEMORY[0x18D004770](&v134, &v132);
          if ((__src & 1) == 0)
          {
            v134 = v49;
            v135 = v50;
            v132 = v69;
            v133 = v70;
            __src = MEMORY[0x18D004770](&v132, &v134);
            if ((__src & 1) != 0 || v20 >= v23)
            {
              break;
            }
          }
        }

        v17 = v6;
        v18 = v24;
        v19 = v24 == v6;
        v6 += 8;
        if (!v19)
        {
          goto LABEL_12;
        }

LABEL_13:
        v7 = (v18 + 8);
        if (v15 >= v131)
        {
          goto LABEL_96;
        }
      }

      v17 = v15;
      v18 = v24;
      v19 = v24 == v15;
      v15 += 8;
      if (v19)
      {
        goto LABEL_13;
      }

LABEL_12:
      *v18 = *v17;
      goto LABEL_13;
    }

LABEL_96:
    v6 = v7;
    goto LABEL_98;
  }

  v15 = a4;
  if (a4 != __dst || &__dst[8 * v13] <= a4)
  {
    __src = memmove(a4, __dst, 8 * v13);
  }

  v131 = &v15[8 * v13];
  if (v11 < 8 || v6 <= v7)
  {
LABEL_98:
    if (v6 != v15 || v6 >= &v15[(v131 - v15 + (v131 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v6, v15, 8 * ((v131 - v15) / 8));
    }

    return 1;
  }

  v128 = v15;
  v71 = a3;
LABEL_56:
  v125 = v6;
  v72 = v6 - 8;
  v71 -= 8;
  v73 = v131;
  v126 = v72;
  while (1)
  {
    v75 = *(v73 - 1);
    v73 -= 8;
    v74 = v75;
    if ((v75 & 0x8000000000000000) != 0)
    {
      break;
    }

    v76 = *(a5 + 360);
    v77 = *(v76 + 16);
    if (v74 >= v77)
    {
      goto LABEL_106;
    }

    v78 = *v72;
    if (*v72 >= v77)
    {
      goto LABEL_107;
    }

    v79 = v74 << 8;
    v80 = v76 + 32 + (v74 << 8);
    v81 = v78 << 8;
    v82 = *(v76 + 32 + (v78 << 8));
    if (v82 < *v80)
    {
      goto LABEL_91;
    }

    if (*v80 >= v82)
    {
      v130 = v71;
      if (*(v80 + 16))
      {
        ProposedViewSize.init(_:in:by:)();
        v84 = v83;
        v85 = *(a5 + 104);
        v86 = *(a5 + 112);
        v87 = *(a5 + 113);
        LODWORD(v134) = *(a5 + 96);
        v135 = v85;
        v136 = v86;
        v137 = v87;
        LayoutSubviews.subscript.getter();
        v138 = v84 & 1;
        LayoutSubview.lengthThatFits(_:in:)();
        v89 = v88;
        v90 = *(a5 + 360);
        __src = swift_isUniquelyReferenced_nonNull_native();
        *(a5 + 360) = v90;
        if ((__src & 1) == 0)
        {
          __src = specialized _ArrayBuffer._consumeAndCreateNew()(v90);
          v90 = __src;
          *(a5 + 360) = __src;
        }

        v15 = v128;
        if (v74 >= *(v90 + 16))
        {
          goto LABEL_114;
        }

        v91 = v90 + v79;
        *(v91 + 40) = v89;
        *(v91 + 48) = 0;
        v76 = *(a5 + 360);
        v77 = *(v76 + 16);
        v71 = v130;
      }

      if (v74 >= v77)
      {
        goto LABEL_108;
      }

      if (*(v76 + v79 + 64))
      {
        ProposedViewSize.init(_:in:by:)();
        v93 = v92;
        v94 = *(a5 + 104);
        v95 = *(a5 + 112);
        v96 = *(a5 + 113);
        LODWORD(v134) = *(a5 + 96);
        v135 = v94;
        v136 = v95;
        v137 = v96;
        LayoutSubviews.subscript.getter();
        v138 = v93 & 1;
        LayoutSubview.lengthThatFits(_:in:)();
        v98 = v97;
        v99 = *(a5 + 360);
        __src = swift_isUniquelyReferenced_nonNull_native();
        *(a5 + 360) = v99;
        if ((__src & 1) == 0)
        {
          __src = specialized _ArrayBuffer._consumeAndCreateNew()(v99);
          v99 = __src;
          *(a5 + 360) = __src;
        }

        v15 = v128;
        if (v74 >= *(v99 + 16))
        {
          goto LABEL_115;
        }

        v100 = v99 + v79;
        *(v100 + 56) = v98;
        *(v100 + 64) = 0;
        v71 = v130;
      }

      __src = _LayoutTraits.FlexibilityEstimate.init(minLength:maxLength:)();
      v101 = *(a5 + 360);
      v102 = *(v101 + 16);
      if (v78 >= v102)
      {
        goto LABEL_109;
      }

      v103 = v134;
      v104 = v135;
      if (*(v101 + v81 + 48))
      {
        ProposedViewSize.init(_:in:by:)();
        v106 = v105;
        v107 = *(a5 + 104);
        v108 = *(a5 + 112);
        v109 = *(a5 + 113);
        LODWORD(v134) = *(a5 + 96);
        v135 = v107;
        v136 = v108;
        v137 = v109;
        LayoutSubviews.subscript.getter();
        v138 = v106 & 1;
        LayoutSubview.lengthThatFits(_:in:)();
        v111 = v110;
        v112 = *(a5 + 360);
        __src = swift_isUniquelyReferenced_nonNull_native();
        *(a5 + 360) = v112;
        if ((__src & 1) == 0)
        {
          __src = specialized _ArrayBuffer._consumeAndCreateNew()(v112);
          v112 = __src;
          *(a5 + 360) = __src;
        }

        v15 = v128;
        if (v78 >= *(v112 + 16))
        {
          goto LABEL_116;
        }

        v113 = v112 + v81;
        *(v113 + 40) = v111;
        *(v113 + 48) = 0;
        v101 = *(a5 + 360);
        v102 = *(v101 + 16);
        v71 = v130;
      }

      if (v78 >= v102)
      {
        goto LABEL_110;
      }

      if (*(v101 + v81 + 64))
      {
        ProposedViewSize.init(_:in:by:)();
        v115 = v114;
        v116 = *(a5 + 104);
        v117 = *(a5 + 112);
        v118 = *(a5 + 113);
        LODWORD(v134) = *(a5 + 96);
        v135 = v116;
        v136 = v117;
        v137 = v118;
        LayoutSubviews.subscript.getter();
        v138 = v115 & 1;
        LayoutSubview.lengthThatFits(_:in:)();
        v120 = v119;
        v121 = *(a5 + 360);
        __src = swift_isUniquelyReferenced_nonNull_native();
        *(a5 + 360) = v121;
        if ((__src & 1) == 0)
        {
          __src = specialized _ArrayBuffer._consumeAndCreateNew()(v121);
          v121 = __src;
          *(a5 + 360) = __src;
        }

        v15 = v128;
        if (v78 >= *(v121 + 16))
        {
          goto LABEL_117;
        }

        v122 = v121 + v81;
        *(v122 + 56) = v120;
        *(v122 + 64) = 0;
        v71 = v130;
      }

      _LayoutTraits.FlexibilityEstimate.init(minLength:maxLength:)();
      v123 = v134;
      v124 = v135;
      v134 = v103;
      v135 = v104;
      v132 = v123;
      v133 = v124;
      __src = MEMORY[0x18D004770](&v134, &v132);
      if ((__src & 1) != 0 || (v134 = v103, v135 = v104, v132 = v123, v133 = v124, __src = MEMORY[0x18D004770](&v132, &v134), (__src & 1) == 0) && v74 < v78)
      {
LABEL_91:
        if (v71 + 8 != v125)
        {
          *v71 = *v126;
        }

        if (v131 <= v15 || (v6 = v126, v126 <= v7))
        {
          v6 = v126;
          goto LABEL_98;
        }

        goto LABEL_56;
      }
    }

    if (v71 + 8 != v131)
    {
      *v71 = *v73;
    }

    v71 -= 8;
    v131 = v73;
    v72 = v126;
    if (v73 <= v15)
    {
      v131 = v73;
      v6 = v125;
      goto LABEL_98;
    }
  }

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
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
  return __src;
}

uint64_t specialized ArraySlice.reserveCapacity(_:)(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 8 * v6 + 8 * v7 != v9 + 8 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = memcpy((result + 32), (v1[1] + 8 * v14), 8 * (v4 - v14));
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 8 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = v4[2];
  v7 = v4[3] >> 1;
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v30 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v30)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = result - a2;
  if (__OFSUB__(result, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v30)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v38 = v16;
  v18 = (v10 + 32);
  v19 = v10 + 32 + 8 * a2;
  v36 = v10;
  v37 = (v19 + 8 * a3);
  result = specialized _SliceBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(result);
  if (result)
  {
    v20 = result;
    v35 = a4;
    v21 = v4[2];
    v22 = (v4[1] + 8 * v21);
    v23 = &v22[8 * a2];
    if (v18 != v22 || v18 >= v23)
    {
      memmove(v18, v22, 8 * a2);
    }

    v35(v19, a3);
    v24 = &v23[8 * v38];
    if (v37 != v24 || v37 >= &v24[8 * v14])
    {
      memmove(v37, v24, 8 * v14);
    }

    *(v20 + 16) = 0;
  }

  else
  {
    v21 = v4[2];
    v26 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v26 < v21)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v21))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v27 = v4[1];
    memcpy(v18, (v27 + 8 * v21), 8 * a2);
    result = (a4)(&v18[8 * a2], a3);
    v28 = v26 + v38;
    if (__OFADD__(v26, v38))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v29 = v4[3] >> 1;
    v30 = __OFSUB__(v29, v28);
    v31 = v29 < v28;
    v32 = v29 - v28;
    if (v31)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v30)
    {
LABEL_45:
      __break(1u);
      return result;
    }

    memcpy(v37, (v27 + 8 * v28), 8 * v32);
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_36;
  }

  result = v36;
  v33 = *(v36 + 16);
  v30 = __OFADD__(v21, v33);
  v34 = v21 + v33;
  if (v30)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v34 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v34 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v36;
  v4[1] = &v18[-8 * v21];
  v4[2] = v21;
  v4[3] = (2 * v34) | 1;
}

uint64_t specialized _SliceBuffer.count.setter(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void *specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 8 * a5 + 8 * v8;
  if (v13 == v11 + 8 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 8 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 8 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v6, v25);
}

uint64_t specialized _SliceBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v1[1] + 8 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 8 * v7 != v9 + 8 * v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v15 = v8 - result - 25;
  if (v8 - result - 32 >= 0)
  {
    v15 = v8 - result - 32;
  }

  v14 = __OFADD__(v7, v15 >> 3);
  v5 = v7 + (v15 >> 3);
  if (v14)
  {
    goto LABEL_20;
  }

  v4 = *(result + 16);
  if (v5 < v4)
  {
LABEL_21:
    v16 = result;
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v4, 0);
    return v16;
  }

  return result;
}

BOOL specialized static JindoTripleVStack.Position.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  if (a1[2])
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (a1[1] != a2[1])
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((a1[4] & 1) == 0)
  {
    if (a1[3] != a2[3])
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }

  return (a2[4] & 1) != 0;
}

unint64_t lazy protocol witness table accessor for type JindoTripleVStack.HorizontalMode and conformance JindoTripleVStack.HorizontalMode()
{
  result = lazy protocol witness table cache variable for type JindoTripleVStack.HorizontalMode and conformance JindoTripleVStack.HorizontalMode;
  if (!lazy protocol witness table cache variable for type JindoTripleVStack.HorizontalMode and conformance JindoTripleVStack.HorizontalMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JindoTripleVStack.HorizontalMode and conformance JindoTripleVStack.HorizontalMode);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for JindoTripleVStack(uint64_t a1)
{
  result = lazy protocol witness table accessor for type JindoTripleVStack and conformance JindoTripleVStack();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type JindoTripleVStack and conformance JindoTripleVStack()
{
  result = lazy protocol witness table cache variable for type JindoTripleVStack and conformance JindoTripleVStack;
  if (!lazy protocol witness table cache variable for type JindoTripleVStack and conformance JindoTripleVStack)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JindoTripleVStack and conformance JindoTripleVStack);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JindoTripleVStack(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for JindoTripleVStack(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JindoTripleVStack.Position(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[33])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for JindoTripleVStack.Position(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void type metadata accessor for _TraitWritingModifier<_LayoutTrait<PositionKey>>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<PositionKey>>)
  {
    type metadata accessor for _LayoutTrait<PositionKey>(255, &lazy cache variable for type metadata for _LayoutTrait<PositionKey>);
    lazy protocol witness table accessor for type _LayoutTrait<PositionKey> and conformance _LayoutTrait<A>();
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<PositionKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _LayoutTrait<PositionKey> and conformance _LayoutTrait<A>()
{
  result = lazy protocol witness table cache variable for type _LayoutTrait<PositionKey> and conformance _LayoutTrait<A>;
  if (!lazy protocol witness table cache variable for type _LayoutTrait<PositionKey> and conformance _LayoutTrait<A>)
  {
    type metadata accessor for _LayoutTrait<PositionKey>(255, &lazy cache variable for type metadata for _LayoutTrait<PositionKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutTrait<PositionKey> and conformance _LayoutTrait<A>);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA21_TraitWritingModifierVyAA07_LayoutF0VyAA11PositionKey33_92DCAEF653F89C7A009F5FFAA858DAF3LLVGGGAaBHPxAaBHD1__AmA0cH0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(255);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<ContentMarginsKey>> and conformance _TraitWritingModifier<A>(a3, a4);
  return swift_getWitnessTable();
}

void type metadata accessor for _TraitWritingModifier<_LayoutTrait<VerticalPlacementKey>>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<VerticalPlacementKey>>)
  {
    type metadata accessor for _LayoutTrait<PositionKey>(255, &lazy cache variable for type metadata for _LayoutTrait<VerticalPlacementKey>);
    lazy protocol witness table accessor for type _LayoutTrait<VerticalPlacementKey> and conformance _LayoutTrait<A>();
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<VerticalPlacementKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _LayoutTrait<VerticalPlacementKey> and conformance _LayoutTrait<A>()
{
  result = lazy protocol witness table cache variable for type _LayoutTrait<VerticalPlacementKey> and conformance _LayoutTrait<A>;
  if (!lazy protocol witness table cache variable for type _LayoutTrait<VerticalPlacementKey> and conformance _LayoutTrait<A>)
  {
    type metadata accessor for _LayoutTrait<PositionKey>(255, &lazy cache variable for type metadata for _LayoutTrait<VerticalPlacementKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutTrait<VerticalPlacementKey> and conformance _LayoutTrait<A>);
  }

  return result;
}

void type metadata accessor for _TraitWritingModifier<_LayoutTrait<PriorityKey>>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<PriorityKey>>)
  {
    type metadata accessor for _LayoutTrait<PositionKey>(255, &lazy cache variable for type metadata for _LayoutTrait<PriorityKey>);
    lazy protocol witness table accessor for type _LayoutTrait<PriorityKey> and conformance _LayoutTrait<A>();
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<PriorityKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _LayoutTrait<PriorityKey> and conformance _LayoutTrait<A>()
{
  result = lazy protocol witness table cache variable for type _LayoutTrait<PriorityKey> and conformance _LayoutTrait<A>;
  if (!lazy protocol witness table cache variable for type _LayoutTrait<PriorityKey> and conformance _LayoutTrait<A>)
  {
    type metadata accessor for _LayoutTrait<PositionKey>(255, &lazy cache variable for type metadata for _LayoutTrait<PriorityKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutTrait<PriorityKey> and conformance _LayoutTrait<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<ContentMarginsKey>> and conformance _TraitWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for _TraitWritingModifier<_LayoutTrait<ContentMarginsKey>>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<ContentMarginsKey>>)
  {
    type metadata accessor for _LayoutTrait<PositionKey>(255, &lazy cache variable for type metadata for _LayoutTrait<ContentMarginsKey>);
    lazy protocol witness table accessor for type _LayoutTrait<ContentMarginsKey> and conformance _LayoutTrait<A>();
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<ContentMarginsKey>>);
    }
  }
}

void type metadata accessor for _LayoutTrait<PositionKey>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for _LayoutTrait();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _LayoutTrait<ContentMarginsKey> and conformance _LayoutTrait<A>()
{
  result = lazy protocol witness table cache variable for type _LayoutTrait<ContentMarginsKey> and conformance _LayoutTrait<A>;
  if (!lazy protocol witness table cache variable for type _LayoutTrait<ContentMarginsKey> and conformance _LayoutTrait<A>)
  {
    type metadata accessor for _LayoutTrait<PositionKey>(255, &lazy cache variable for type metadata for _LayoutTrait<ContentMarginsKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutTrait<ContentMarginsKey> and conformance _LayoutTrait<A>);
  }

  return result;
}

uint64_t destroy for JindoTripleVStack.Implementation()
{
}

uint64_t initializeWithCopy for JindoTripleVStack.Implementation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 57) = *(a2 + 57);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v5 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v5;
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  v6 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v6;
  *(a1 + 176) = *(a2 + 176);
  v7 = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 192) = v7;
  v8 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = v8;
  v9 = *(a2 + 232);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = v9;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 256) = *(a2 + 256);
  v10 = *(a2 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v10;
  v11 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v11;
  *(a1 + 304) = *(a2 + 304);
  v12 = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 320) = v12;
  v13 = *(a2 + 344);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = v13;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 353) = *(a2 + 353);
  v14 = *(a2 + 368);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = v14;

  return a1;
}

uint64_t assignWithCopy for JindoTripleVStack.Implementation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  v4 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v4;
  v5 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v5;
  *(a1 + 96) = *(a2 + 96);
  LOBYTE(v5) = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v5;

  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  v6 = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 128) = v6;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  v7 = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 192) = v7;
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);

  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  v8 = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 256) = v8;
  *(a1 + 272) = *(a2 + 272);

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  v9 = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 320) = v9;
  *(a1 + 336) = *(a2 + 336);

  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 353) = *(a2 + 353);
  *(a1 + 360) = *(a2 + 360);

  *(a1 + 368) = *(a2 + 368);

  return a1;
}

uint64_t assignWithTake for JindoTripleVStack.Implementation(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 353;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v5;
  *(a1 + 96) = *(a2 + 96);
  v6 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v6;

  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);

  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);

  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 353) = *(a2 + 353);

  *(a1 + 360) = *(v4 + 7);

  return a1;
}

uint64_t getEnumTagSinglePayload for JindoTripleVStack.Implementation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 376))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 160);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for JindoTripleVStack.Implementation(uint64_t result, int a2, int a3)
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
      *(result + 376) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 376) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JindoTripleVStack.Configuration.Sizing and conformance JindoTripleVStack.Configuration.Sizing()
{
  result = lazy protocol witness table cache variable for type JindoTripleVStack.Configuration.Sizing and conformance JindoTripleVStack.Configuration.Sizing;
  if (!lazy protocol witness table cache variable for type JindoTripleVStack.Configuration.Sizing and conformance JindoTripleVStack.Configuration.Sizing)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JindoTripleVStack.Configuration.Sizing and conformance JindoTripleVStack.Configuration.Sizing);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JindoTripleVStack.Position.Region and conformance JindoTripleVStack.Position.Region()
{
  result = lazy protocol witness table cache variable for type JindoTripleVStack.Position.Region and conformance JindoTripleVStack.Position.Region;
  if (!lazy protocol witness table cache variable for type JindoTripleVStack.Position.Region and conformance JindoTripleVStack.Position.Region)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JindoTripleVStack.Position.Region and conformance JindoTripleVStack.Position.Region);
  }

  return result;
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  v11 = MEMORY[0x1E69E7CC0];
  v5 = a2;
LABEL_2:
  v6 = v5;
  while (v4 != v6)
  {
    if (v5 < a2 || v6 >= v4)
    {
      __break(1u);
      return;
    }

    v7 = v6 + 1;
    LayoutSubviews.subscript.getter();
    type metadata accessor for _LayoutTrait<PositionKey>(0, &lazy cache variable for type metadata for _LayoutTrait<PriorityKey>);
    lazy protocol witness table accessor for type _LayoutTrait<PriorityKey> and conformance _LayoutTrait<A>();
    LayoutProxy.subscript.getter();
    v6 = v7;
    if ((v13 & 1) == 0)
    {
      v8 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      }

      v10 = *(v8 + 2);
      v9 = *(v8 + 3);
      if (v10 >= v9 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
      }

      *(v8 + 2) = v10 + 1;
      v11 = v8;
      *&v8[8 * v10 + 32] = v12;
      v5 = v7;
      goto LABEL_2;
    }
  }
}

void *specialized _ArrayBufferProtocol._arrayAppendSequence<A>(_:)(void *result)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    goto LABEL_49;
  }

  v5 = result[4];
  v35 = result[3] >> 1;
  if (v5 == v35)
  {
    return result;
  }

  v31 = result[2];
  if (v5 < v31 || v5 >= v35)
  {
    goto LABEL_50;
  }

  v7 = v1;
  v8 = v5 + 1;
  v9 = *(result[1] + 8 * v5);
  v30 = result[1];
  while (!__OFADD__(v4, 1))
  {
    v36 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(v4, v4 + 1, *v7, v7[1], v3, v2);
    v11 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
    v12 = v7;
    specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v36, v4, 0, v11);

    v3 = v7[2];
    v2 = v7[3];
    v13 = (v2 >> 1) - v3;
    if (__OFSUB__(v2 >> 1, v3))
    {
      goto LABEL_44;
    }

    v33 = v2 >> 1;
    v32 = v7[1];
    v14 = v32 + 8 * v3;
    if (v2)
    {
      v34 = v7[3];
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain();
      v15 = swift_dynamicCastClass();
      if (!v15)
      {
        swift_unknownObjectRelease();
        v15 = MEMORY[0x1E69E7CC0];
      }

      v16 = *(v15 + 16);
      if (v14 + 8 * v13 == v15 + 8 * v16 + 32)
      {
        v18 = *(v15 + 24);

        v19 = (v18 >> 1) - v16;
        v20 = __OFADD__(v13, v19);
        v17 = v13 + v19;
        if (v20)
        {
          goto LABEL_48;
        }

        v7 = v12;
      }

      else
      {

        v17 = v13;
      }

      v2 = v34;
      if (v4 >= v17)
      {
LABEL_33:
        v10 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v17 = (v2 >> 1) - v3;
      if (v4 >= v13)
      {
        goto LABEL_33;
      }
    }

    *(v14 + 8 * v4) = v9;
    v21 = v4 + 1;
    if (v8 != v35)
    {
      v22 = 0;
      while (1)
      {
        if (v8 < v31)
        {
          goto LABEL_42;
        }

        v23 = v22;
        if (v8 + v22 >= v35)
        {
          goto LABEL_42;
        }

        v9 = *(v30 + 8 * v8 + 8 * v22);
        if (!(v21 - v17 + v22))
        {
          break;
        }

        *(v32 + 8 * v4 + 8 * v3 + 8 + 8 * v22++) = v9;
        if (!(v8 - v35 + v23 + 1))
        {
          v9 = 0;
          v4 = v21 + v22;
          v8 = v35;
LABEL_31:
          v10 = v21 + v23 < v17;
          goto LABEL_34;
        }
      }

      v8 += v22 + 1;
      v4 = v17;
      goto LABEL_31;
    }

    v9 = 0;
    v10 = 1;
    v8 = v35;
    ++v4;
LABEL_34:
    v24 = v4 - v13;
    if (__OFSUB__(v4, v13))
    {
      goto LABEL_45;
    }

    if (v24)
    {
      v25 = v10;
      v26 = v2;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = MEMORY[0x1E69E7CC0];
      }

      v27 = result[2];
      v20 = __OFADD__(v27, v24);
      v28 = v27 + v24;
      if (v20)
      {
        goto LABEL_46;
      }

      result[2] = v28;

      v29 = v33 + v24;
      if (__OFADD__(v33, v24))
      {
        goto LABEL_47;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v2 = v26 & 1 | (2 * v29);
      v7[3] = v2;
      v10 = v25;
    }

    if (v10)
    {
      return result;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void *specialized ArraySlice.append<A>(contentsOf:)(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v30 = result;
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v13 + 16);
  if (v12 + 8 * v8 + 8 * v9 != v13 + 8 * v14 + 32)
  {

    goto LABEL_8;
  }

  v16 = *(v13 + 24);

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 < result)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v19 = 2 * v15;
    if (v19 > result)
    {
      result = v19;
    }
  }

  result = specialized ArraySlice.reserveCapacity(_:)(result);
  v21 = v4[2];
  v20 = v4[3];
  v22 = (v20 >> 1) - v21;
  if (__OFSUB__(v20 >> 1, v21))
  {
    goto LABEL_37;
  }

  v23 = (v4[1] + 8 * v21 + 8 * v22);
  if ((v20 & 1) == 0)
  {
LABEL_21:
    v26 = v22;
    goto LABEL_23;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v24 + 16);
  if (v23 != (v24 + 8 * v25 + 32))
  {

    goto LABEL_21;
  }

  v27 = *(v24 + 24);

  v28 = (v27 >> 1) - v25;
  v18 = __OFADD__(v22, v28);
  v26 = v22 + v28;
  if (v18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v29 = v26 - v22;
  if (__OFSUB__(v26, v22))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v29 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = memcpy(v23, (a2 + 8 * a3), 8 * v6);
  if (v6 > 0)
  {
    result = (v22 + v6);
    if (__OFADD__(v22, v6))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = specialized _SliceBuffer.count.setter(result);
  }

LABEL_31:
  if (v6 == v29)
  {
    v32[0] = v30;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a4;
    v32[4] = v5;
    return specialized _ArrayBufferProtocol._arrayAppendSequence<A>(_:)(v32);
  }

  return result;
}

uint64_t specialized JindoTripleVStack.Implementation.resizeChildrenAdjacentToNotch(in:metrics:)(uint64_t a1)
{
  v2 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  v4 = __dst[29];
  memcpy(__src, v1, sizeof(__src));
  outlined init with copy of JindoTripleVStack.Implementation(__dst, v24);
  JindoTripleVStack.Implementation.bottomOf(previousChild:in:includeSpacing:)(v4, 1, 0);
  v6 = v5;
  memcpy(v21, __src, sizeof(v21));
  outlined destroy of JindoTripleVStack.Implementation(v21);
  memcpy(v22, v1, sizeof(v22));
  memcpy(__src, v1, sizeof(__src));
  v7 = *(a1 + 32);
  outlined init with copy of JindoTripleVStack.Implementation(v22, v24);
  v8 = JindoTripleVStack.Implementation.indexToResizeInNotch(_:availableWidth:centerHeight:)(0, v7, 0, v6);
  v10 = v9;
  memcpy(v23, __src, sizeof(v23));
  outlined destroy of JindoTripleVStack.Implementation(v23);
  memcpy(v24, v1, sizeof(v24));
  v11 = v24[45];
  memcpy(v19, v1, sizeof(v19));
  v12 = *(a1 + 40);
  outlined init with copy of JindoTripleVStack.Implementation(v24, __src);
  v13 = JindoTripleVStack.Implementation.indexToResizeInNotch(_:availableWidth:centerHeight:)(2, v12, 0, v6);
  v15 = v14;
  memcpy(__src, v19, sizeof(__src));
  outlined destroy of JindoTripleVStack.Implementation(__src);
  if ((v10 & 1) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *(v24[20] + 16))
    {
      v8 = *(v24[20] + 8 * v8 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_20;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v15)
  {
    return 0;
  }

  while ((v13 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }

LABEL_8:
    if (v8 >= *(v11 + 2))
    {
      goto LABEL_23;
    }

    v17 = &v11[256 * v8];
    *(v17 + 29) = v7;
    *(v17 + 120) = 256;
    *(v17 + 5) = 0;
    result = 1;
    v17[48] = 1;
    *(v17 + 7) = 0;
    v17[64] = 1;
    v17[280] = v17[280] & 0xF5 | 2;
    v2[45] = v11;
    if (v15)
    {
      return result;
    }
  }

  if (v13 >= *(v24[36] + 16))
  {
    goto LABEL_22;
  }

  v13 = *(v24[36] + 8 * v13 + 32);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_24:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
  v11 = result;
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (v13 >= *(v11 + 2))
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v18 = &v11[256 * v13];
  *(v18 + 29) = v12;
  *(v18 + 120) = 256;
  *(v18 + 5) = 0;
  result = 1;
  v18[48] = 1;
  *(v18 + 7) = 0;
  v18[64] = 1;
  v18[280] = v18[280] & 0xF5 | 8;
  v2[45] = v11;
  return result;
}

uint64_t outlined destroy of JindoTripleVStack.StackHeader(uint64_t a1)
{

  return a1;
}

void type metadata accessor for Slice<LazySequence<ArraySlice<Int>>>()
{
  if (!lazy cache variable for type metadata for Slice<LazySequence<ArraySlice<Int>>>)
  {
    type metadata accessor for LazySequence<ArraySlice<Int>>();
    lazy protocol witness table accessor for type LazySequence<ArraySlice<Int>> and conformance <> LazySequence<A>();
    v0 = type metadata accessor for Slice();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Slice<LazySequence<ArraySlice<Int>>>);
    }
  }
}

void type metadata accessor for LazySequence<ArraySlice<Int>>()
{
  if (!lazy cache variable for type metadata for LazySequence<ArraySlice<Int>>)
  {
    type metadata accessor for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>(255, &lazy cache variable for type metadata for ArraySlice<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6948]);
    lazy protocol witness table accessor for type ArraySlice<Int> and conformance ArraySlice<A>();
    v0 = type metadata accessor for LazySequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LazySequence<ArraySlice<Int>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ArraySlice<Int> and conformance ArraySlice<A>()
{
  result = lazy protocol witness table cache variable for type ArraySlice<Int> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Int> and conformance ArraySlice<A>)
  {
    type metadata accessor for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>(255, &lazy cache variable for type metadata for ArraySlice<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6948]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<Int> and conformance ArraySlice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArraySlice<Int> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Int> and conformance ArraySlice<A>)
  {
    type metadata accessor for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>(255, &lazy cache variable for type metadata for ArraySlice<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6948]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<Int> and conformance ArraySlice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazySequence<ArraySlice<Int>> and conformance <> LazySequence<A>()
{
  result = lazy protocol witness table cache variable for type LazySequence<ArraySlice<Int>> and conformance <> LazySequence<A>;
  if (!lazy protocol witness table cache variable for type LazySequence<ArraySlice<Int>> and conformance <> LazySequence<A>)
  {
    type metadata accessor for LazySequence<ArraySlice<Int>>();
    lazy protocol witness table accessor for type ArraySlice<Int> and conformance ArraySlice<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazySequence<ArraySlice<Int>> and conformance <> LazySequence<A>);
  }

  return result;
}

uint64_t outlined init with copy of JindoTripleVStack.StackIndexedStorage<JindoTripleVStack.StackHeader>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>(0, &lazy cache variable for type metadata for JindoTripleVStack.StackIndexedStorage<JindoTripleVStack.StackHeader>, &unk_1EFFFBFF0, type metadata accessor for JindoTripleVStack.StackIndexedStorage);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JindoTripleVStack.StackIndexedStorage<JindoTripleVStack.MajorAxisGroup>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>(0, a2, a3, type metadata accessor for JindoTripleVStack.StackIndexedStorage);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for JindoTripleVStack.MajorAxisGroupState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[80])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for JindoTripleVStack.MajorAxisGroupState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t destroy for JindoTripleVStack.StackHeader()
{
}

uint64_t initializeWithCopy for JindoTripleVStack.StackHeader(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;

  return a1;
}

uint64_t assignWithCopy for JindoTripleVStack.StackHeader(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for JindoTripleVStack.StackHeader(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t initializeWithCopy for JindoTripleVStack.MajorAxisGroup(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void *assignWithCopy for JindoTripleVStack.MajorAxisGroup(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

uint64_t assignWithTake for JindoTripleVStack.MajorAxisGroup(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t type metadata completion function for JindoTripleVStack.StackIndexedStorage()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for JindoTripleVStack.StackIndexedStorage(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = v6 + v7;
  v10 = ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7) + v6;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v7 + 16) & v8));
  }

  else
  {
    v14 = *(v5 + 16);
    v14(a1, a2, v4);
    v16 = (a2 + v9) & v8;
    v14(((v3 + v9) & v8), v16, v4);
    v14(((v9 + ((v3 + v9) & v8)) & v8), ((v9 + v16) & v8), v4);
  }

  return v3;
}

uint64_t destroy for JindoTripleVStack.StackIndexedStorage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v9 = *(v4 + 8);
  v9(a1, v3);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + v5;
  v7 = (v6 + a1) & ~v5;
  v9(v7, v3);

  return (v9)((v6 + v7) & ~v5, v3);
}

uint64_t initializeWithCopy for JindoTripleVStack.StackIndexedStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, (v9 + v10) & ~v8, v5);
  return a1;
}

uint64_t assignWithCopy for JindoTripleVStack.StackIndexedStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, (v9 + v10) & ~v8, v5);
  return a1;
}

uint64_t initializeWithTake for JindoTripleVStack.StackIndexedStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, (v9 + v10) & ~v8, v5);
  return a1;
}

uint64_t assignWithTake for JindoTripleVStack.StackIndexedStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, (v9 + v10) & ~v8, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for JindoTripleVStack.StackIndexedStorage(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80) + ((v6 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
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

char *storeEnumTagSinglePayload for JindoTripleVStack.StackIndexedStorage(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + *(v5 + 64);
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
      if (v7)
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

uint64_t initializeWithCopy for JindoTripleVStack.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 136) = *(a2 + 136);
  v3 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v3;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);

  return a1;
}

uint64_t assignWithCopy for JindoTripleVStack.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v6;
  v7 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v7;
  v8 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v8;
  v9 = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v9;
  v10 = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v10;
  v11 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v11;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v12 = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 200) = v12;
  *(a1 + 209) = *(a2 + 209);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  return a1;
}

uint64_t assignWithTake for JindoTripleVStack.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 209) = *(a2 + 209);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  return a1;
}

uint64_t getEnumTagSinglePayload for JindoTripleVStack.Child(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 249))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 152);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for JindoTripleVStack.Child(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 249) = 1;
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
      *(result + 152) = (a2 - 1);
      return result;
    }

    *(result + 249) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for JindoTripleVStack.Header()
{
}

uint64_t initializeWithCopy for JindoTripleVStack.Header(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 57) = *(a2 + 57);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v5 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v5;
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  v6 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v6;
  *(a1 + 176) = *(a2 + 176);
  v7 = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 192) = v7;
  v8 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = v8;
  v9 = *(a2 + 232);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = v9;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 256) = *(a2 + 256);
  v10 = *(a2 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v10;
  v11 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v11;
  *(a1 + 304) = *(a2 + 304);
  v12 = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 320) = v12;
  v13 = *(a2 + 344);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = v13;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 353) = *(a2 + 353);

  return a1;
}

uint64_t assignWithCopy for JindoTripleVStack.Header(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  v4 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v4;
  v5 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v5;
  *(a1 + 96) = *(a2 + 96);
  LOBYTE(v5) = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v5;

  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  v6 = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 128) = v6;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  v7 = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 192) = v7;
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);

  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  v8 = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 256) = v8;
  *(a1 + 272) = *(a2 + 272);

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  v9 = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 320) = v9;
  *(a1 + 336) = *(a2 + 336);

  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 353) = *(a2 + 353);
  return a1;
}

uint64_t assignWithTake for JindoTripleVStack.Header(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v4;
  *(a1 + 96) = *(a2 + 96);
  v5 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v5;

  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);

  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);

  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 353) = *(a2 + 353);
  return a1;
}

uint64_t getEnumTagSinglePayload for JindoTripleVStack.Header(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 354))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 160);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for JindoTripleVStack.Header(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 354) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 354) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [JindoTripleVStack.Stack] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [JindoTripleVStack.Stack] and conformance [A];
  if (!lazy protocol witness table cache variable for type [JindoTripleVStack.Stack] and conformance [A])
  {
    type metadata accessor for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>(255, &lazy cache variable for type metadata for [JindoTripleVStack.Stack], &unk_1EFFFC330, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [JindoTripleVStack.Stack] and conformance [A]);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroup.Group>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type JindoTripleVStack.Stack and conformance JindoTripleVStack.Stack()
{
  result = lazy protocol witness table cache variable for type JindoTripleVStack.Stack and conformance JindoTripleVStack.Stack;
  if (!lazy protocol witness table cache variable for type JindoTripleVStack.Stack and conformance JindoTripleVStack.Stack)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JindoTripleVStack.Stack and conformance JindoTripleVStack.Stack);
  }

  return result;
}

void CGDrawingView.options.didset(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC7SwiftUI13CGDrawingView_options];
  v3 = *&v1[OBJC_IVAR____TtC7SwiftUI13CGDrawingView_options + 8];
  v4 = *a1 == *&v1[OBJC_IVAR____TtC7SwiftUI13CGDrawingView_options] && *(a1 + 4) == v1[OBJC_IVAR____TtC7SwiftUI13CGDrawingView_options + 4];
  if (!v4 || ((v5 = *(a1 + 5), v6 = v2[5], v5 != 3) ? (v6 != 3 ? (v7 = v5 == v6) : (v7 = 0)) : (v7 = v6 == 3), v7 ? (v8 = *(a1 + 8) == v3) : (v8 = 0), v8 ? (v9 = *(a1 + 12) == v2[12]) : (v9 = 0), !v9))
  {
    [v1 setOpaque_];
    v10 = [v1 layer];
    LODWORD(v12) = *v2;
    WORD2(v12) = *(v2 + 2);
    LODWORD(v13) = *(v2 + 2);
    BYTE4(v13) = v2[12];
    v11 = PlatformDrawableOptions.caLayerContentsFormat.getter();
    [v10 setContentsFormat_];
  }
}

void (*CGDrawingView.options.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7SwiftUI13CGDrawingView_options;
  *a1 = v1;
  *(a1 + 8) = v2;
  v3 = (v1 + v2);
  v4 = *v3;
  v5 = *(v3 + 2);
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 12);
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  *(a1 + 24) = v6;
  *(a1 + 28) = v3;
  return CGDrawingView.options.modify;
}

void CGDrawingView.options.modify(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = *(a1 + 24);
  v3 = *(a1 + 28);
  v4 = (*a1 + *(a1 + 8));
  v5 = *v4;
  v6 = *(v4 + 4);
  v7 = *(v4 + 5);
  v8 = v4[2];
  v9 = *(v4 + 12);
  *v4 = *(a1 + 16);
  *(v4 + 2) = v1;
  v4[2] = v2;
  *(v4 + 12) = v3;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  CGDrawingView.options.didset(&v10);
}

uint64_t CGDrawingView.drawForTesting(in:)()
{
  v1 = [v0 layer];
  v2 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content];
  v3 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content + 8];
  v4 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content + 16];
  v5 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content + 24];
  v6 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content + 32];
  v7 = v1[OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content + 40];
  outlined copy of PlatformDrawableContent.Storage(v2, v3, v4, v5, v6, v7);

  [v0 bounds];
  PlatformDrawableContent.draw(in:size:state:)();
  outlined consume of PlatformDrawableContent.Storage(v2, v3, v4, v5, v6, v7);
}

void protocol witness for PlatformDrawable.options.setter in conformance CGDrawingView(uint64_t a1)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = v1 + OBJC_IVAR____TtC7SwiftUI13CGDrawingView_options;
  v6 = *(v1 + OBJC_IVAR____TtC7SwiftUI13CGDrawingView_options);
  v7 = *(v1 + OBJC_IVAR____TtC7SwiftUI13CGDrawingView_options + 4);
  v8 = *(v1 + OBJC_IVAR____TtC7SwiftUI13CGDrawingView_options + 8);
  v9 = *(v1 + OBJC_IVAR____TtC7SwiftUI13CGDrawingView_options + 12);
  *v5 = *a1;
  *(v5 + 4) = v2;
  *(v5 + 8) = v3;
  *(v5 + 12) = v4;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  CGDrawingView.options.didset(&v10);
}

uint64_t (*protocol witness for PlatformDrawable.options.modify in conformance CGDrawingView(uint64_t *a1))()
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
  *(v2 + 32) = CGDrawingView.options.modify(v2);
  return protocol witness for ViewGraphOwner.renderingPhase.modify in conformance _UIHostingView<A>;
}

uint64_t protocol witness for PlatformDrawable.update(content:required:) in conformance CGDrawingView(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = [v2 layer];
  v10 = v9;
  if (v8 != 255)
  {
    v11 = &v9[OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content];
    v12 = *&v9[OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content + 8];
    v13 = *&v9[OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content + 16];
    v17 = *&v9[OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content + 24];
    v18 = *&v9[OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content];
    v16 = *&v9[OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content + 32];
    *v11 = v3;
    *(v11 + 1) = v4;
    *(v11 + 2) = v5;
    *(v11 + 3) = v6;
    *(v11 + 4) = v7;
    v14 = v11[40];
    v11[40] = v8;
    outlined copy of PlatformDrawableContent.Storage(v3, v4, v5, v6, v7, v8);
    outlined consume of PlatformDrawableContent.Storage(v18, v12, v13, v17, v16, v14);
  }

  [v10 setNeedsDisplay];

  return 1;
}

void RBDrawingView.options.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = a1[2];
  v6 = *(a1 + 12);
  v7 = &v1[OBJC_IVAR____TtC7SwiftUI13RBDrawingView_options];
  v8 = *&v1[OBJC_IVAR____TtC7SwiftUI13RBDrawingView_options];
  v9 = v1[OBJC_IVAR____TtC7SwiftUI13RBDrawingView_options + 4];
  v10 = v1[OBJC_IVAR____TtC7SwiftUI13RBDrawingView_options + 5];
  v11 = *&v1[OBJC_IVAR____TtC7SwiftUI13RBDrawingView_options + 8];
  v12 = v1[OBJC_IVAR____TtC7SwiftUI13RBDrawingView_options + 12];
  *v7 = *a1;
  v7[4] = v3;
  v7[5] = v4;
  *(v7 + 2) = v5;
  v7[12] = v6;
  if (v8 != v2 || v9 != v3)
  {
LABEL_21:
    [v1 setOpaque_];
    LODWORD(v18) = *v7;
    WORD2(v18) = *(v7 + 2);
    LODWORD(v19) = *(v7 + 2);
    BYTE4(v19) = v7[12];
    v17 = [v1 layer];
    PlatformDrawableOptions.update(rbLayer:)();

    v1[OBJC_IVAR____TtC7SwiftUI13RenderBoxView_rendersFirstFrameAsynchronously] = (v7[8] & 0x10) != 0;
    return;
  }

  if (v10 == 3)
  {
    if (v4 != 3)
    {
      goto LABEL_21;
    }

    if (v11 != v5 || v12 != v6)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v4 == 3)
    {
      goto LABEL_21;
    }

    v15 = v10 == v4 && v11 == v5;
    if (!v15 || v12 != v6)
    {
      goto LABEL_21;
    }
  }
}

void (*RBDrawingView.options.modify(uint64_t a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC7SwiftUI13RBDrawingView_options;
  *a1 = v1;
  *(a1 + 8) = v2;
  v3 = (v1 + v2);
  v4 = *v3;
  v5 = *(v3 + 2);
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 12);
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  *(a1 + 24) = v6;
  *(a1 + 28) = v3;
  return RBDrawingView.options.modify;
}

void RBDrawingView.options.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 20);
  v4 = *(a1 + 21);
  v5 = *(a1 + 24);
  v6 = *(a1 + 28);
  v7 = *(a1 + 16);
  v8 = (*a1 + *(a1 + 8));
  v9 = *v8;
  v10 = *(v8 + 4);
  v11 = *(v8 + 5);
  v12 = v8[2];
  v13 = *(v8 + 12);
  *v8 = v7;
  *(v8 + 4) = v3;
  *(v8 + 5) = v4;
  v8[2] = v5;
  *(v8 + 12) = v6;
  v15 = v9 == v7 && v10 == v3;
  if ((a2 & 1) == 0)
  {
    if (v15)
    {
      if (v11 == 3)
      {
        if (v4 != 3)
        {
          goto LABEL_41;
        }

        if (v12 != v5 || v13 != v6)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v4 == 3)
        {
          goto LABEL_41;
        }

        v20 = v11 == v4 && v12 == v5;
        if (!v20 || v13 != v6)
        {
          goto LABEL_41;
        }
      }

      return;
    }

LABEL_41:
    [v2 setOpaque_];
    WORD2(v23) = *(v8 + 2);
    BYTE4(v24) = *(v8 + 12);
    LODWORD(v23) = *v8;
    LODWORD(v24) = v8[2];
    v22 = [v2 layer];
    PlatformDrawableOptions.update(rbLayer:)();

    *(v2 + OBJC_IVAR____TtC7SwiftUI13RenderBoxView_rendersFirstFrameAsynchronously) = (v8[2] & 0x10) != 0;
    return;
  }

  if (!v15)
  {
    goto LABEL_41;
  }

  if (v11 == 3)
  {
    if (v4 != 3)
    {
      goto LABEL_41;
    }

    if (v12 != v5 || v13 != v6)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if (v4 == 3)
    {
      goto LABEL_41;
    }

    v18 = v11 == v4 && v12 == v5;
    if (!v18 || v13 != v6)
    {
      goto LABEL_41;
    }
  }
}

uint64_t closure #1 in RBDrawingView.makeAsyncUpdate(content:required:layer:bounds:)(char *a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  aBlock[6] = *&a1[OBJC_IVAR____TtC7SwiftUI13RBDrawingView__state];
  outlined init with copy of PlatformDrawableContent(a2, aBlock);

  type metadata accessor for AtomicBox<RBDrawingView.State>();
  v14 = AtomicBox.wrappedValue.modify();
  outlined assign with take of PlatformDrawableContent(a2, v15);
  v14(aBlock, 0);

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = a6;
  *(v16 + 48) = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in closure #1 in RBDrawingView.makeAsyncUpdate(content:required:layer:bounds:);
  *(v17 + 24) = v16;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIMutableTraits) -> ();
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FBSMutableSceneClientSettings) -> ();
  aBlock[3] = &block_descriptor_74;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  [a3 displayWithBounds:v18 callback:{a4, a5, a6, a7}];
  _Block_release(v18);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t RBDrawingView.drawForTesting(in:)()
{
  type metadata accessor for AtomicBox<RBDrawingView.State>();
  AtomicBox.wrappedValue.getter();
  v6[0] = v2;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  outlined copy of PlatformDrawableContent.Storage(v2, *(&v2 + 1), v3, *(&v3 + 1), v4, BYTE8(v4));
  outlined destroy of RBDrawingView.State(v6);
  [v0 bounds];
  PlatformDrawableContent.draw(in:size:state:)();
  outlined consume of PlatformDrawableContent.Storage(v2, *(&v2 + 1), v3, *(&v3 + 1), v4, BYTE8(v4));
}

uint64_t assignWithCopy for RBDrawingView.State(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of PlatformDrawableContent.Storage(*a2, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v15 = *(a1 + 40);
  *(a1 + 40) = v9;
  outlined consume of PlatformDrawableContent.Storage(v10, v11, v12, v13, v14, v15);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for RBDrawingView.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  *(a1 + 32) = v4;
  v12 = *(a1 + 40);
  *(a1 + 40) = v5;
  outlined consume of PlatformDrawableContent.Storage(v6, v7, v8, v9, v10, v12);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

void protocol witness for PlatformDrawable.options.setter in conformance RBDrawingView(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *a1;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  RBDrawingView.options.setter(&v4);
}

uint64_t (*protocol witness for PlatformDrawable.options.modify in conformance RBDrawingView(uint64_t *a1))()
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
  *(v2 + 32) = RBDrawingView.options.modify(v2);
  return protocol witness for ObservableDocumentBox.wasOpened.modify in conformance ReferenceFileDocumentBox<A1>;
}

uint64_t (*protocol witness for PlatformDrawable.makeAsyncUpdate(content:required:layer:bounds:) in conformance RBDrawingView(__int128 *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7))()
{
  v14 = a1[1];
  v22 = *a1;
  v23[0] = v14;
  *(v23 + 9) = *(a1 + 25);
  objc_opt_self();
  v15 = swift_dynamicCastObjCClassUnconditional();
  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  v17 = a1[1];
  *(v16 + 24) = *a1;
  *(v16 + 40) = v17;
  *(v16 + 49) = *(a1 + 25);
  *(v16 + 72) = v15;
  *(v16 + 80) = a2;
  *(v16 + 88) = a3;
  *(v16 + 96) = a4;
  *(v16 + 104) = a5;
  v18 = a7;
  v19 = v7;
  outlined init with copy of PlatformDrawableContent(&v22, &v21);
  return partial apply for closure #1 in RBDrawingView.makeAsyncUpdate(content:required:layer:bounds:);
}

void specialized RBDrawingView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC7SwiftUI13RBDrawingView__state;
  PlatformDrawableContent.init()();
  AtomicBox.init(wrappedValue:)();
  *(v0 + v1) = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for _TraitWritingModifier<ReselectionTraitState.Key>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<ReselectionTraitState.Key>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<ReselectionTraitState.Key>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ReselectionTraitState.Key> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<ReselectionTraitState.Key> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ReselectionTraitState.Key> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<ReselectionTraitState.Key>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<ReselectionTraitState.Key> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t assignWithCopy for ReselectionTraitState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a1 + 8);
  v5 = (a2 + 8);
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (v4)
    {
      v7 = *(a2 + 16);
      *(a1 + 8) = v4;
      *(a1 + 16) = v7;

      return a1;
    }

LABEL_7:
    *v3 = *v5;
    return a1;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;

  return a1;
}

__n128 assignWithTake for ReselectionTraitState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = (a1 + 8);
  v4 = (a2 + 8);
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v3)
    {
      v5 = *(a2 + 16);
      *(a1 + 8) = v3;
      *(a1 + 16) = v5;

      return result;
    }
  }

  else if (v3)
  {
    v7 = *(a2 + 16);
    *(a1 + 8) = v3;
    *(a1 + 16) = v7;
    return result;
  }

  result = *v4;
  *v2 = *v4;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ViewTransform.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x736D657469;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x800000018CD3D3A0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x736D657469;
  }

  if (*a2)
  {
    v6 = 0x800000018CD3D3A0;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ViewTransform.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ViewTransform.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ViewTransform.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ViewTransform.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ViewTransform.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ViewTransform.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0x800000018CD3D3A0;
  v3 = 0x736D657469;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ViewTransform.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x736D657469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ViewTransform.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ViewTransform.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ViewTransform.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ViewTransform.CodingKeys and conformance ViewTransform.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ViewTransform.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ViewTransform.CodingKeys and conformance ViewTransform.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewTransform.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<ViewTransform.CodingKeys>();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ViewTransform.CodingKeys and conformance ViewTransform.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v28 = MEMORY[0x1E69E7CC0];
  v22 = v9;
  v23 = v8;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v18[4] = &v28;
  ViewTransform.forEach(inverted:_:)();
  v22 = v28;
  LOBYTE(v20) = 0;
  type metadata accessor for [ViewTransform.Item]();
  lazy protocol witness table accessor for type [ViewTransform.Item] and conformance <A> [A]();
  v14 = v18[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v14)
  {
    v22 = v9;
    v23 = v8;
    v24 = v10;
    v25 = v11;
    v26 = v12;
    v27 = v13;
    ViewTransform.positionAdjustment.getter();
    v20 = v15;
    v21 = v16;
    v19 = 1;
    type metadata accessor for CGSize(0);
    lazy protocol witness table accessor for type CGSize and conformance CGSize();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v5 + 8))(v7, v4);
}

void type metadata accessor for KeyedEncodingContainer<ViewTransform.CodingKeys>()
{
  if (!lazy cache variable for type metadata for KeyedEncodingContainer<ViewTransform.CodingKeys>)
  {
    lazy protocol witness table accessor for type ViewTransform.CodingKeys and conformance ViewTransform.CodingKeys();
    v0 = type metadata accessor for KeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyedEncodingContainer<ViewTransform.CodingKeys>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewTransform.CodingKeys and conformance ViewTransform.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ViewTransform.CodingKeys and conformance ViewTransform.CodingKeys;
  if (!lazy protocol witness table cache variable for type ViewTransform.CodingKeys and conformance ViewTransform.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewTransform.CodingKeys and conformance ViewTransform.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewTransform.CodingKeys and conformance ViewTransform.CodingKeys;
  if (!lazy protocol witness table cache variable for type ViewTransform.CodingKeys and conformance ViewTransform.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewTransform.CodingKeys and conformance ViewTransform.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewTransform.CodingKeys and conformance ViewTransform.CodingKeys;
  if (!lazy protocol witness table cache variable for type ViewTransform.CodingKeys and conformance ViewTransform.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewTransform.CodingKeys and conformance ViewTransform.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewTransform.CodingKeys and conformance ViewTransform.CodingKeys;
  if (!lazy protocol witness table cache variable for type ViewTransform.CodingKeys and conformance ViewTransform.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewTransform.CodingKeys and conformance ViewTransform.CodingKeys);
  }

  return result;
}

__n128 closure #1 in ViewTransform.encode(to:)(__int128 *a1, uint64_t a2, char **a3)
{
  v14 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v17 = *(a1 + 112);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v4 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    *a3 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    *a3 = v4;
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[120 * v7];
  *(v8 + 4) = v12;
  *(v8 + 5) = v13;
  *(v8 + 2) = v10;
  *(v8 + 3) = v11;
  result = v14;
  v8[144] = v17;
  *(v8 + 7) = v15;
  *(v8 + 8) = v16;
  *(v8 + 6) = v14;
  return result;
}

void type metadata accessor for [ViewTransform.Item]()
{
  if (!lazy cache variable for type metadata for [ViewTransform.Item])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ViewTransform.Item]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [ViewTransform.Item] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ViewTransform.Item] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ViewTransform.Item] and conformance <A> [A])
  {
    type metadata accessor for [ViewTransform.Item]();
    lazy protocol witness table accessor for type ViewTransform.Item and conformance ViewTransform.Item();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ViewTransform.Item] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewTransform.Item and conformance ViewTransform.Item()
{
  result = lazy protocol witness table cache variable for type ViewTransform.Item and conformance ViewTransform.Item;
  if (!lazy protocol witness table cache variable for type ViewTransform.Item and conformance ViewTransform.Item)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewTransform.Item and conformance ViewTransform.Item);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGSize and conformance CGSize()
{
  result = lazy protocol witness table cache variable for type CGSize and conformance CGSize;
  if (!lazy protocol witness table cache variable for type CGSize and conformance CGSize)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGSize and conformance CGSize);
  }

  return result;
}

uint64_t type metadata completion function for UniversalList()
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for UniversalList<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t UniversalList.init(selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Binding();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t UniversalList.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  type metadata accessor for Binding();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - v5;
  v7 = type metadata accessor for UniversalList.BodyContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  outlined init with copy of _VariadicView_Children(a1, v18);
  (*(v4 + 16))(v6, v17[0], v3);
  UniversalList.BodyContent.init(children:selection:)(v18, v6, v10);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v7, WitnessTable);
  v15 = *(v8 + 8);
  v15(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)(v13, v7, WitnessTable);
  return (v15)(v13, v7);
}

uint64_t UniversalList.BodyContent.init(children:selection:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v6 = *(type metadata accessor for UniversalList.BodyContent() + 40);
  v7 = type metadata accessor for Binding();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = a1[1];
  *(a3 + 16) = *a1;
  *(a3 + 32) = v8;
  v9 = a1[3];
  *(a3 + 48) = a1[2];
  *(a3 + 64) = v9;
  v10 = type metadata accessor for Optional();
  v11 = *(*(v10 - 8) + 40);

  return v11(a3 + v6, a2, v10);
}

uint64_t UniversalList.BodyContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  type metadata accessor for Binding();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = type metadata accessor for UniversalListContentProvider();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  outlined init with copy of _VariadicView_Children(v2 + 16, v22);
  (*(v5 + 16))(v7, v2 + *(a1 + 40), v4);
  v12 = specialized Environment.wrappedValue.getter(*v2, *(v2 + 8));
  UniversalListContentProvider.init(children:selection:rowHeight:)(v22, v7, v11, v12);
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  type metadata accessor for UniversalListContentProvider.Index();
  v15 = swift_getWitnessTable();
  v16 = MEMORY[0x1E6981900];
  v17 = v21;
  v18 = _ScrollableLayout<>.subscript.getter(v8, MEMORY[0x1E6981900], v15, v21);
  (*(v9 + 8))(v11, v8, v18);
  v22[0] = v8;
  v22[1] = v8;
  v22[2] = WitnessTable;
  v22[3] = v14;
  v22[4] = v16;
  v22[5] = v15;
  type metadata accessor for _ScrollableLayoutView();
  swift_getWitnessTable();
  result = type metadata accessor for _ScrollView();
  *(v17 + *(result + 36) + 80) = 1;
  return result;
}

uint64_t UniversalListContentProvider.init(children:selection:rowHeight:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  outlined init with copy of _VariadicView_Children(a1, a3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = ViewList.allViewIDs.getter();
  outlined destroy of _VariadicView_Children(a1);
  *(a3 + 64) = v8;
  v9 = type metadata accessor for UniversalListContentProvider();
  v10 = *(v9 + 40);
  type metadata accessor for Binding();
  v11 = type metadata accessor for Optional();
  result = (*(*(v11 - 8) + 32))(a3 + v10, a2, v11);
  *(a3 + *(v9 + 44)) = a4;
  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance UniversalList<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata completion function for UniversalList.BodyContent()
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for UniversalList.BodyContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((v7 + 16) & ~v7) + *(v5 + 64);
  if (v7 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-81 - v7) | v7 | 7) - v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    v12 = *a2;
    v13 = *(a2 + 8);
    outlined copy of Environment<Bool>.Content(*a2, v13);
    *a1 = v12;
    *(a1 + 8) = v13;
    v15 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v16 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
    v15[5] = v16;
    v15[6] = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);
    (**(v16 - 8))((a1 & 0xFFFFFFFFFFFFFFF8) + 16, (a2 & 0xFFFFFFFFFFFFFFF8) + 16);
    v17 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 56);
    v15[7] = v17;
    v15[8] = *((a2 & 0xFFFFFFFFFFFFFFF8) + 64);
    v15[9] = *((a2 & 0xFFFFFFFFFFFFFFF8) + 72);
    v18 = (a1 & 0xFFFFFFFFFFFFFFF8) + 87;
    v19 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = v17;

    if ((v6 & 0x80000000) != 0)
    {
      v24 = (*(v5 + 48))(v20 + 1, v6, v4);
      v23 = (v18 & 0xFFFFFFFFFFFFFFF8);
      if (v24)
      {
LABEL_13:
        memcpy(v23, v19, v8);
        return a1;
      }
    }

    else
    {
      v22 = *v20;
      if (*v20 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      v23 = (v18 & 0xFFFFFFFFFFFFFFF8);
      if (v22 != -1)
      {
        goto LABEL_13;
      }
    }

    *v23 = *v19;
    v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v20;
    v26 = *(v5 + 16);

    v26(v25 + 1, v20 + 1, v4);
    return a1;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = v11 + ((v7 + 16) & ~(v7 | 7));

  return a1;
}

uint64_t destroy for UniversalList.BodyContent(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((a1 & 0xFFFFFFFFFFFFFFF8) + 16);

  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + (v7 | 7) + 80) & ~(v7 | 7);
  v9 = ~v7;
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = v6;
  if ((*(v6 + 84) & 0x80000000) != 0)
  {
    result = (*(v6 + 48))((v10 + v7 + 8) & v9);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v11 = *v10;
  if (*v10 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  result = (v11 + 1);
  if (v11 == -1)
  {
LABEL_7:

    v13 = *(v14 + 8);

    return v13((v10 + v7 + 8) & v9, v5);
  }

  return result;
}

uint64_t initializeWithCopy for UniversalList.BodyContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v9 = a2 & 0xFFFFFFFFFFFFFFF8;
  v10 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
  v8[5] = v10;
  v8[6] = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);
  (**(v10 - 8))((a1 & 0xFFFFFFFFFFFFFFF8) + 16, (a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v11 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 56);
  v8[7] = v11;
  v8[8] = *((a2 & 0xFFFFFFFFFFFFFFF8) + 64);
  v8[9] = *((a2 & 0xFFFFFFFFFFFFFFF8) + 72);
  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = *(v13 + 80);
  v16 = *(v13 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v17 = ((v15 + 80 + (a1 & 0xFFFFFFFFFFFFFFF8)) & v16);
  v18 = ((v15 + 80 + v9) & v16);
  v19 = ~v15;
  v27 = *(v13 + 64);
  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = v11;

  if ((v14 & 0x80000000) == 0)
  {
    v22 = *v20;
    if (*v20 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    if (v22 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v17 = *v18;
    v23 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v20;
    v24 = v23 + v15 + 8;
    v25 = *(v13 + 16);

    v25(v24 & v19, (v20 + v15 + 8) & v19, v12);
    return a1;
  }

  if (!(*(v13 + 48))((v20 + v15 + 8) & v19, v14, v12))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v17, v18, ((v15 + 16) & ~v15) + v27);
  return a1;
}

uint64_t assignWithCopy for UniversalList.BodyContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v11 = a2 & 0xFFFFFFFFFFFFFFF8;
  __swift_assign_boxed_opaque_existential_1(((a1 & 0xFFFFFFFFFFFFFFF8) + 16), ((a2 & 0xFFFFFFFFFFFFFFF8) + 16));
  v12 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 56);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 56);
  v10[7] = v12;
  v14 = v12;

  v10[8] = *(v11 + 64);

  v10[9] = *(v11 + 72);
  v15 = *(a3 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = *(v16 + 80);
  v19 = *(v16 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v20 = ((v18 + 80 + (a1 & 0xFFFFFFFFFFFFFFF8)) & v19);
  v21 = ((v18 + 80 + v11) & v19);
  v22 = ~v18;
  v23 = (v18 + 16) & ~v18;
  v24 = *(v16 + 64);
  v25 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v17 & 0x80000000) != 0)
  {
    v32 = v25 + v18 + 8;
    v33 = v21;
    v34 = *(v16 + 48);
    v43 = *(*(v15 - 8) + 64);
    v42 = v34(v32 & ~v18, v17, v15);
    v26 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = ~v18;
    v28 = v34((v26 + v18 + 8) & ~v18, v17, v15);
    v24 = v43;
    v23 = (v18 + 16) & ~v18;
    v21 = v33;
    v25 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (!v42)
    {
LABEL_5:
      if (!v28)
      {
        *v20 = *v21;

        *v25 = *v26;

        (*(v16 + 24))((v25 + v18 + 8) & v22, (v26 + v18 + 8) & v22, v15);
        return a1;
      }

      v29 = v23;
      v30 = v24;

      (*(v16 + 8))((v25 + v18 + 8) & v22, v15);
      v31 = v29 + v30;
      goto LABEL_10;
    }
  }

  else
  {
    v26 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    v27 = *v26;
    if (*v26 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v27) = -1;
    }

    v28 = v27 + 1;
    if (*v25 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v28)
  {
    *v20 = *v21;
    *v25 = *v26;
    v35 = v18 + 8;
    v36 = v15;
    v37 = v25 + v18 + 8;
    v38 = v22;
    v39 = v26 + v35;
    v40 = *(v16 + 16);

    v40(v37 & v38, v39 & v38, v36);
    return a1;
  }

  v31 = v23 + v24;
LABEL_10:
  memcpy(v20, v21, v31);
  return a1;
}

uint64_t initializeWithTake for UniversalList.BodyContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v5 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 64);
  v4[3] = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);
  v4[4] = v7;
  v4[1] = v5;
  v4[2] = v6;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v12 = ((v10 + 80 + (a1 & 0xFFFFFFFFFFFFFFF8)) & v11);
  v13 = ((v10 + 80 + (a2 & 0xFFFFFFFFFFFFFFF8)) & v11);
  v14 = ~v10;
  v15 = *(v9 + 64);
  v16 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v9 + 84) & 0x80000000) == 0)
  {
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if (v17 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v12 = *v13;
    v18 = (v12 + 15);
    *(v18 & 0xFFFFFFFFFFFFFFF8) = *v16;
    (*(v9 + 32))((v10 + 8 + (v18 & 0xFFFFFFFFFFFFFFF8)) & v14, (v16 + v10 + 8) & v14, v8);
    return a1;
  }

  if (!(*(v9 + 48))((v16 + v10 + 8) & v14))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v12, v13, ((v10 + 16) & ~v10) + v15);
  return a1;
}

uint64_t assignWithTake for UniversalList.BodyContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = a1 & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  v11 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v12 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
  *(v10 + 48) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);
  *(v10 + 16) = v11;
  *(v10 + 32) = v12;
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 56);
  *(v10 + 56) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 56);

  *(v10 + 64) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 64);

  *(v10 + 72) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 72);
  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 84);
  v17 = *(v15 + 80);
  v18 = *(v15 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v19 = ((v17 + 80 + (a1 & 0xFFFFFFFFFFFFFFF8)) & v18);
  v20 = ((v17 + 80 + (a2 & 0xFFFFFFFFFFFFFFF8)) & v18);
  v21 = ~v17;
  v22 = (v17 + 16) & ~v17;
  v23 = *(v15 + 64);
  v24 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v16 & 0x80000000) != 0)
  {
    v35 = (v17 + 80 + (a1 & 0xFFFFFFFFFFFFFFF8)) & v18;
    v31 = *(v15 + 48);
    v34 = *(v15 + 64);
    v33 = v31((v24 + v17 + 8) & ~v17, v16, v14);
    v25 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = ~v17;
    v27 = v31((v25 + v17 + 8) & ~v17, v16, v14);
    v23 = v34;
    v22 = (v17 + 16) & ~v17;
    v19 = v35;
    if (!v33)
    {
LABEL_5:
      if (!v27)
      {
        *v19 = *v20;

        *v24 = *v25;

        (*(v15 + 40))((v24 + v17 + 8) & v21, (v25 + v17 + 8) & v21, v14);
        return a1;
      }

      v28 = v22;
      v29 = v23;

      (*(v15 + 8))((v24 + v17 + 8) & v21, v14);
      v30 = v28 + v29;
      goto LABEL_10;
    }
  }

  else
  {
    v25 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    v26 = *v25;
    if (*v25 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v26) = -1;
    }

    v27 = v26 + 1;
    if (*v24 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v27)
  {
    *v19 = *v20;
    *v24 = *v25;
    (*(v15 + 32))((v24 + v17 + 8) & v21, (v25 + v17 + 8) & v21, v14);
    return a1;
  }

  v30 = v22 + v23;
LABEL_10:
  memcpy(v19, v20, v30);
  return a1;
}

uint64_t getEnumTagSinglePayload for UniversalList.BodyContent(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = v6 - 1;
  v8 = *(v4 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v8 | 7;
  v11 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_29;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) - (((-17 - v8) | v8) + ((-81 - v8) | v10)) - 2;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_29:
      v18 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v7 & 0x80000000) != 0)
      {
        v20 = ((((v18 + v10 + 80) & ~v10) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v5 & 0x80000000) != 0)
        {
          v22 = (*(v4 + 48))((v20 + v8 + 8) & ~v8);
        }

        else
        {
          v21 = *v20;
          if (v21 >= 0xFFFFFFFF)
          {
            LODWORD(v21) = -1;
          }

          v22 = v21 + 1;
        }

        if (v22 >= 2)
        {
          return v22 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v19 = *(v18 + 40);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_29;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (*(*(*(a3 + 16) - 8) + 64) - (((-17 - v8) | v8) + ((-81 - v8) | v10)) != 2)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v9 + (v12 | v17) + 1;
}

void storeEnumTagSinglePayload for UniversalList.BodyContent(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  if ((v8 - 1) <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v8 - 1;
  }

  v11 = *(v6 + 80);
  v12 = ((v11 + 16) & ~v11) + *(*(*(a4 + 16) - 8) + 64);
  v13 = v12 + ((v11 + 80) & ~(v11 | 7));
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v19 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v13 < 4)
    {
      v18 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v21 = v17 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_60:
              if (v16 == 2)
              {
                *(a1 + v13) = v18;
              }

              else
              {
                *(a1 + v13) = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v21;
        *(a1 + 2) = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v16)
    {
      *(a1 + v13) = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v13) = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v16)
  {
    goto LABEL_33;
  }

  *(a1 + v13) = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  v22 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v9 & 0x80000000) != 0)
  {
    v23 = ((v22 + (v11 | 7) + 80) & ~(v11 | 7));
    if (v9 >= a2)
    {
      v27 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v28 = *(v6 + 56);
        v29 = a2 + 1;

        v28((v27 + v11 + 8) & ~v11, v29);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v27 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v27 = a2;
      }
    }

    else
    {
      if (v12 <= 3)
      {
        v24 = ~(-1 << (8 * v12));
      }

      else
      {
        v24 = -1;
      }

      if (v12)
      {
        v25 = v24 & (a2 - v8);
        if (v12 <= 3)
        {
          v26 = v12;
        }

        else
        {
          v26 = 4;
        }

        bzero(v23, v12);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v23 = v25;
            v23[2] = BYTE2(v25);
          }

          else
          {
            *v23 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v23 = v25;
        }

        else
        {
          *v23 = v25;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v22 + 72) = 0;
    *(v22 + 56) = 0u;
    *(v22 + 40) = 0u;
    *(v22 + 24) = 0u;
    *(v22 + 16) = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(v22 + 40) = a2 - 1;
  }
}

uint64_t destroy for UniversalListContentProvider.Index(uint64_t a1)
{
  result = *(a1 + 8);
  if (result != 1)
  {
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for UniversalListContentProvider.Index(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == 1)
  {
    *result = *a2;
  }

  else
  {
    *result = *a2;
    *(result + 8) = v3;
    v4 = result;

    result = v4;
  }

  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t assignWithCopy for UniversalListContentProvider.Index(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if (v4 != 1)
    {
      *a1 = *a2;
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 8) = *(a2 + 8);

      goto LABEL_8;
    }

    outlined destroy of _ViewList_ID.Canonical(a1);
    goto LABEL_6;
  }

  if (v4 == 1)
  {
LABEL_6:
    *a1 = *a2;
    goto LABEL_8;
  }

  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

LABEL_8:
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for UniversalListContentProvider.Index(uint64_t result, uint64_t a2)
{
  if (*(result + 8) == 1)
  {
    *result = *a2;
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 == 1)
    {
      v4 = result;
      outlined destroy of _ViewList_ID.Canonical(result);
      result = v4;
      *v4 = *a2;
    }

    else
    {
      *result = *a2;
      *(result + 8) = v3;
      v5 = result;

      result = v5;
    }
  }

  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t getEnumTagSinglePayload for UniversalListContentProvider.Index(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for UniversalListContentProvider.Index(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for UniversalListContentProvider()
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for UniversalListContentProvider(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 84);
  v7 = v5;
  v8 = v5 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v9 = ((v7 + 16) & ~v7) + *(v4 + 64);
  v10 = v5 & 0x100000;
  if (v7 <= 7 && v10 == 0 && ((v9 + (v8 & (v7 + 72)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x18)
  {
    v32 = *(a3 + 16);
    v14 = *(a2 + 3);
    *(a1 + 24) = v14;
    (**(v14 - 8))(a1);
    v16 = a2[5];
    v17 = a2[6];
    v3[5] = v16;
    v3[6] = v17;
    v3[7] = a2[7];
    v18 = ((a2 + 71) & 0xFFFFFFFFFFFFFFF8);
    v20 = *v18;
    v19 = v18 + 15;
    v21 = ((v3 + 71) & 0xFFFFFFFFFFFFFFF8);
    *v21 = v20;
    v22 = v21 + 15;
    v23 = (((v19 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    v24 = v16;

    if ((v6 & 0x80000000) != 0)
    {
      v26 = v32;
      v28 = (*(v4 + 48))(v23 + 1, v6, v32);
      v27 = (v22 & 0xFFFFFFFFFFFFFFF8);
      if (v28)
      {
LABEL_14:
        memcpy(v27, (v19 & 0xFFFFFFFFFFFFFFF8), v9);
LABEL_17:
        *((v22 + v9) & 0xFFFFFFFFFFFFFFF8) = *((v19 + v9) & 0xFFFFFFFFFFFFFFF8);
        return v3;
      }
    }

    else
    {
      v25 = *v23;
      if (*v23 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      v26 = v32;
      v27 = (v22 & 0xFFFFFFFFFFFFFFF8);
      if (v25 != -1)
      {
        goto LABEL_14;
      }
    }

    *v27 = *(v19 & 0xFFFFFFFFFFFFFFF8);
    v29 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v29 = *v23;
    v30 = *(v4 + 16);

    v30(v29 + 1, v23 + 1, v26);
    goto LABEL_17;
  }

  v13 = *a2;
  *v3 = *a2;
  v3 = (v13 + (v8 & (v7 + 16)));

  return v3;
}

uint64_t destroy for UniversalListContentProvider(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  v4 = (a1 + 71) & 0xFFFFFFFFFFFFFFF8;

  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + (v7 | 7) + 8) & ~(v7 | 7);
  v9 = ~v7;
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = v6;
  if ((*(v6 + 84) & 0x80000000) != 0)
  {
    result = (*(v6 + 48))((v10 + v7 + 8) & v9);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v11 = *v10;
  if (*v10 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  result = (v11 + 1);
  if (v11 == -1)
  {
LABEL_7:

    v13 = *(v14 + 8);

    return v13((v10 + v7 + 8) & v9, v5);
  }

  return result;
}

uint64_t initializeWithCopy for UniversalListContentProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  *(a1 + 24) = v6;
  (**(v6 - 8))();
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = *(a2 + 56);
  v9 = ((a1 + 71) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((a2 + 71) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = *(a3 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v12 + 80);
  v15 = v14 + 8;
  v16 = *(v12 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  __dst = ((v9 + v14 + 8) & v16);
  v17 = ((v10 + v14 + 8) & v16);
  v18 = ~v14;
  v29 = (v14 + 16) & ~v14;
  v28 = *(v12 + 64);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v20 = v7;

  if ((v13 & 0x80000000) != 0)
  {
    v22 = (*(v12 + 48))((v19 + v15) & v18, v13, v11);
  }

  else
  {
    v21 = *v19;
    if (*v19 >= 0xFFFFFFFF)
    {
      LODWORD(v21) = -1;
    }

    v22 = v21 + 1;
  }

  v23 = v29 + v28;
  if (v22)
  {
    memcpy(__dst, v17, v29 + v28);
  }

  else
  {
    *__dst = *v17;
    v24 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    v30 = v11;
    *v24 = *v19;
    v25 = v24 + v15;
    v26 = *(v12 + 16);

    v26(v25 & v18, (v19 + v15) & v18, v30);
  }

  *((__dst + v23 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v17 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t *assignWithCopy for UniversalListContentProvider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v6 = a2[5];
  v7 = a1[5];
  a1[5] = v6;
  v8 = v6;

  a1[6] = a2[6];

  a1[7] = a2[7];
  v9 = ((a1 + 71) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((a2 + 71) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  v11 = *(a3 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v12 + 80);
  v15 = v14 + 8;
  v16 = *(v12 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v17 = ((v9 + v14 + 8) & v16);
  v18 = ((v10 + v14 + 8) & v16);
  v19 = *(v12 + 64);
  v20 = ((v14 + 16) & ~v14) + v19;
  v21 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v33 = ~v14;
  if ((v13 & 0x80000000) != 0)
  {
    v30 = ((v14 + 16) & ~v14) + v19;
    v31 = v17;
    v32 = v18;
    v25 = *(v12 + 48);
    v26 = ~v14;
    v29 = v25((v21 + v15) & ~v14, v13, v11);
    v22 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
    v24 = v25((v22 + v15) & v26, v13, v11);
    v20 = v30;
    v17 = v31;
    v18 = v32;
    if (!v29)
    {
LABEL_5:
      if (!v24)
      {
        *v17 = *v18;

        *v21 = *v22;

        (*(v12 + 24))((v21 + v15) & v33, (v22 + v15) & v33, v11);
        goto LABEL_12;
      }

      (*(v12 + 8))((v21 + v15) & v33, v11);
      goto LABEL_9;
    }
  }

  else
  {
    v22 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
    v23 = *v22;
    if (*v22 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v23) = -1;
    }

    v24 = v23 + 1;
    if (*v21 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v24)
  {
    *v17 = *v18;
    *v21 = *v22;
    v27 = *(v12 + 16);

    v27((v21 + v15) & v33, (v22 + v15) & v33, v11);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v17, v18, v20);
LABEL_12:
  *((v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v18 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_OWORD *initializeWithTake for UniversalListContentProvider(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  v6 = ((a1 + 71) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 71) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v10 + 8;
  v12 = *(v9 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v13 = ((v6 + v10 + 8) & v12);
  v14 = ((v7 + v10 + 8) & v12);
  v15 = ~v10;
  v16 = (v10 + 16) & ~v10;
  v17 = *(v9 + 64);
  v18 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v9 + 84) & 0x80000000) == 0)
  {
    v19 = *v18;
    if (*v18 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    v20 = v16 + v17;
    if (v19 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v13 = *v14;
    v21 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v18;
    (*(v9 + 32))((v21 + v11) & v15, (v18 + v11) & v15, v8);
    goto LABEL_8;
  }

  v20 = v16 + v17;
  if (!(*(v9 + 48))((v18 + v11) & v15))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v13, v14, v20);
LABEL_8:
  *((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for UniversalListContentProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 40);
  v8 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  v9 = ((a1 + 71) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((a2 + 71) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  v11 = *(a3 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v12 + 80);
  v15 = v14 + 8;
  v16 = *(v12 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v17 = ((v9 + v14 + 8) & v16);
  v18 = ((v10 + v14 + 8) & v16);
  v19 = ~v14;
  v20 = *(v12 + 64);
  v21 = ((v14 + 16) & ~v14) + v20;
  v22 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v38 = ~v14;
  if ((v13 & 0x80000000) != 0)
  {
    v36 = ((v14 + 16) & ~v14) + v20;
    v37 = v17;
    v27 = *(v12 + 48);
    v28 = v18;
    v29 = v11;
    v30 = v27((v22 + v15) & v19, v13, v11);
    v31 = v27;
    v35 = v30;
    v24 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
    v32 = v13;
    v23 = v29;
    v33 = v29;
    v18 = v28;
    v17 = v37;
    v26 = v31((v24 + v15) & v19, v32, v33);
    v21 = v36;
    if (!v35)
    {
LABEL_5:
      if (!v26)
      {
        *v17 = *v18;

        *v22 = *v24;

        (*(v12 + 40))((v22 + v15) & v38, (v24 + v15) & v38, v23);
        goto LABEL_12;
      }

      (*(v12 + 8))((v22 + v15) & v38, v23);
      goto LABEL_9;
    }
  }

  else
  {
    v23 = v11;
    v24 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
    v25 = *v24;
    if (*v24 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v25) = -1;
    }

    v26 = v25 + 1;
    if (*v22 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v26)
  {
    *v17 = *v18;
    *v22 = *v24;
    (*(v12 + 32))((v22 + v15) & v38, (v24 + v15) & v38, v23);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v17, v18, v21);
LABEL_12:
  *((v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for UniversalListContentProvider(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = v7 - 1;
  v9 = *(v4 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  if (v10 >= a2)
  {
    goto LABEL_31;
  }

  v12 = ((*(*(*(a3 + 16) - 8) + 64) - (((-17 - v9) | v9) + ((-73 - v9) | v11)) + 5) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v10;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_31:
    if ((v8 & 0x80000000) != 0)
    {
      v22 = ((((((a1 + 71) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v24 = (*(v5 + 48))((v22 + v9 + 8) & ~v9);
      }

      else
      {
        v23 = *v22;
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        v24 = v23 + 1;
      }

      if (v24 >= 2)
      {
        return v24 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v21 = *(a1 + 24);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v10 + (v14 | v20) + 1;
}

void storeEnumTagSinglePayload for UniversalListContentProvider(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  if ((v7 - 1) <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7 - 1;
  }

  v10 = *(v5 + 80);
  v12 = ((v10 + 16) & ~v10) + *(*(*(a4 + 16) - 8) + 64);
  v13 = ((v12 + ((v10 + 72) & ~(v10 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v17 = 0;
    v18 = a2 - v9;
    if (a2 <= v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v14 = a3 - v9;
    if (((v12 + ((v10 + 72) & ~(v10 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v9;
    if (a2 <= v9)
    {
LABEL_20:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *&a1[v13] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *&a1[v13] = 0;
      }

      else if (v17)
      {
        a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      if ((v8 & 0x80000000) != 0)
      {
        v11 = v10 | 7;
        v22 = (((a1 + 71) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11;
        if (v8 >= a2)
        {
          v26 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v6 & 0x80000000) != 0)
          {
            v27 = *(v5 + 56);
            v28 = a2 + 1;

            v27((v26 + v10 + 8) & ~v10, v28);
          }

          else if (((a2 + 1) & 0x80000000) != 0)
          {
            *v26 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v26 = a2;
          }
        }

        else
        {
          if (v12 <= 3)
          {
            v23 = ~(-1 << (8 * v12));
          }

          else
          {
            v23 = -1;
          }

          if (v12)
          {
            v24 = v23 & (a2 - v7);
            if (v12 <= 3)
            {
              v25 = v12;
            }

            else
            {
              v25 = 4;
            }

            bzero(((((a1 + 71) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11), v12);
            if (v25 > 2)
            {
              if (v25 == 3)
              {
                *v22 = v24;
                *(v22 + 2) = BYTE2(v24);
              }

              else
              {
                *v22 = v24;
              }
            }

            else if (v25 == 1)
            {
              *v22 = v24;
            }

            else
            {
              *v22 = v24;
            }
          }
        }
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *(a1 + 7) = 0;
        *(a1 + 40) = 0u;
        *(a1 + 24) = 0u;
        *(a1 + 8) = 0u;
        *a1 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(a1 + 3) = a2 - 1;
      }

      return;
    }
  }

  if (((v12 + ((v10 + 72) & ~(v10 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((v12 + ((v10 + 72) & ~(v10 | 7)) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v20 = ~v9 + a2;
    v21 = a1;
    bzero(a1, v13);
    a1 = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *&a1[v13] = v19;
    }

    else
    {
      *&a1[v13] = v19;
    }
  }

  else if (v17)
  {
    a1[v13] = v19;
  }
}

void UniversalListContentProvider.Index.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    _ViewList_ID.Canonical.hash(into:)();
  }
}

BOOL static UniversalListContentProvider.Index.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (v3 != 1)
  {
    v11[0] = *a1;
    v11[1] = v3;
    if (v6 != 1)
    {
      v10[0] = v5;
      v10[1] = v6;
      outlined copy of Text.LineStyle?(v2, v3);
      outlined copy of Text.LineStyle?(v5, v6);
      outlined copy of Text.LineStyle?(v2, v3);
      v9 = MEMORY[0x18D003E10](v11, v10);

      outlined consume of Text.LineStyle?(v2, v3);
      if (v9)
      {
        return v4 == v7;
      }

      return 0;
    }

    outlined copy of Text.LineStyle?(v2, v3);
    outlined copy of Text.LineStyle?(v5, 1);
    outlined copy of Text.LineStyle?(v2, v3);

LABEL_7:
    outlined consume of Text.LineStyle?(v2, v3);
    outlined consume of Text.LineStyle?(v5, v6);
    return 0;
  }

  outlined copy of Text.LineStyle?(*a1, 1);
  if (v6 != 1)
  {
    outlined copy of Text.LineStyle?(v5, v6);
    goto LABEL_7;
  }

  outlined copy of Text.LineStyle?(v5, 1);
  outlined consume of Text.LineStyle?(v2, 1);
  return v4 == v7;
}

Swift::Int UniversalListContentProvider.Index.hashValue.getter()
{
  Hasher.init(_seed:)();
  UniversalListContentProvider.Index.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UniversalListContentProvider<A>.Index()
{
  Hasher.init(_seed:)();
  UniversalListContentProvider.Index.hash(into:)();
  return Hasher._finalize()();
}

uint64_t UniversalListContentProvider._index(atOffset:)@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  if (result)
  {
    dispatch thunk of _ViewList_ID_Views.subscript.getter();
    v5 = v10;
    v6 = *(v11 + 16);

    if (v6)
    {
      v6 = *(v11 + 32);
      v7 = *(v11 + 52);

      result = swift_bridgeObjectRelease_n();
      if (v7)
      {
        v5 = 0xFFFFFFFFLL;
      }

      else
      {
        v5 = v10;
      }
    }

    else
    {
      result = swift_bridgeObjectRelease_n();
    }

    v8 = v9 | (v5 << 32);
  }

  else
  {
    v8 = 0;
    v6 = 1;
  }

  *a2 = v8;
  a2[1] = v6;
  a2[2] = a1;
  return result;
}

double UniversalListContentProvider.endIndex.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  result = 0.0;
  *a1 = xmmword_18CD633F0;
  *(a1 + 16) = v2;
  return result;
}

unint64_t UniversalListContentProvider.index(after:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  result = v2 + 1;
  if (!__OFADD__(v2, 1))
  {
    return UniversalListContentProvider._index(atOffset:)(result, a2);
  }

  __break(1u);
  return result;
}

unint64_t UniversalListContentProvider.index(before:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  result = v2 - 1;
  if (!__OFSUB__(v2, 1))
  {
    return UniversalListContentProvider._index(atOffset:)(result, a2);
  }

  __break(1u);
  return result;
}

unint64_t UniversalListContentProvider.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *(a1 + 16);
  result = v3 + a2;
  if (!__OFADD__(v3, a2))
  {
    return UniversalListContentProvider._index(atOffset:)(result, a3);
  }

  __break(1u);
  return result;
}

uint64_t UniversalListContentProvider.subscript.getter(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v27 = &v24 - v6;
  IsSelected = type metadata accessor for IsSelected();
  v25 = *(IsSelected - 8);
  v26 = IsSelected;
  MEMORY[0x1EEE9AC00](IsSelected);
  v24 = &v24 - v8;
  v9 = type metadata accessor for Binding();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  _VariadicView_Children.subscript.getter();
  outlined init with copy of _VariadicView_Children.Element(v51, v29);
  (*(v11 + 16))(v13, v2 + *(a2 + 40), v10);
  v14 = *(v9 - 8);
  if ((*(v14 + 48))(v13, 1, v9) == 1)
  {
    (*(v11 + 8))(v13, v10);
    LOBYTE(v33) = 0;
    static Binding.constant(_:)();
    v16 = *(&v31 + 1);
    v15 = v31;
    v17 = v32;
LABEL_5:
    v43 = 0;
    v44 = 0;
    KeyPath = swift_getKeyPath();
    v46 = 0;
    v47 = swift_getKeyPath();
    v48 = 0;
    v49 = swift_getKeyPath();
    v50 = 0;
    v37 = v29[4];
    v38 = v29[5];
    v33 = v29[0];
    v34 = v29[1];
    v35 = v29[2];
    v36 = v29[3];
    v39 = v30;
    v40 = v15;
    v41 = v16;
    v42 = v17;
    outlined init with copy of SystemListCell<_VariadicView_Children.Element>(&v33, v29);
    type metadata accessor for SystemListCell<_VariadicView_Children.Element>();
    lazy protocol witness table accessor for type SystemListCell<_VariadicView_Children.Element> and conformance SystemListCell<A>();
    v23 = AnyView.init<A>(_:)();
    outlined destroy of SystemListCell<_VariadicView_Children.Element>(&v33);
    outlined destroy of _VariadicView_Children.Element(v51);
    return v23;
  }

  swift_getAssociatedConformanceWitness();
  v18 = v27;
  _VariadicView_Children.Element.id<A>(as:)();
  result = (*(*(AssociatedTypeWitness - 8) + 48))(v18, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    v20 = swift_getAssociatedTypeWitness();
    v21 = v24;
    (*(*(v20 - 8) + 32))(v24, v18, v20);
    v22 = v26;
    swift_getWitnessTable();
    Binding.projecting<A>(_:)();
    (*(v25 + 8))(v21, v22);
    (*(v14 + 8))(v13, v9);
    v16 = *(&v33 + 1);
    v15 = v33;
    v17 = v34;
    v31 = v33;
    v32 = v34;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void UniversalListContentProvider.update(state:proxy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 40);
  v5 = *(v3 + *(a3 + 44));
  v6 = floor(v4 / v5);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  v22.size.height = *(a2 + 56);
  v22.origin.x = v9;
  v22.origin.y = *(a2 + 40);
  v22.size.width = v10;
  v11 = ceil((v4 + CGRectGetHeight(v22)) / v5);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = v11;
  v13 = v6 & ~(v6 >> 63);
  swift_getWitnessTable();
  v14 = Collection.count.getter();
  if (v14 < v13)
  {
    v13 = v14;
  }

  if (v13 > v12)
  {
    v12 = v13;
  }

  v15 = Collection.count.getter();
  if (v15 < v12)
  {
    v12 = v15;
  }

  *(a2 + 128) = v9;
  *(a2 + 136) = v5 * v13;
  *(a2 + 144) = v10;
  if (__OFSUB__(v12, v13))
  {
    goto LABEL_22;
  }

  v16 = v15;
  *(a2 + 152) = v5 * (v12 - v13);
  v17 = Collection.count.getter();
  *(a2 + 112) = *(a2 + 16);
  *(a2 + 120) = v5 * v17;
  if (v16 >= v13)
  {
    MEMORY[0x1EEE9AC00](v17);
    v19[1] = *(a3 + 16);
    v20 = v3;
    v21 = a2;
    v18 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_7SwiftUI21_ScrollableLayoutItemVs5NeverOTg5(partial apply for closure #1 in UniversalListContentProvider.update(state:proxy:), v19, v13, v12);

    *(a2 + 104) = v18;
    return;
  }

LABEL_23:
  __break(1u);
}

double closure #1 in UniversalListContentProvider.update(state:proxy:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for UniversalListContentProvider();
  v6 = a2[3];
  v7 = a2[5];
  v8 = a2[6];
  v20 = a2[4];
  v21 = v7;
  v9 = a2[1];
  v19[2] = a2[2];
  v19[3] = v6;
  v10 = a2[9];
  v11 = a2[7];
  v24 = a2[8];
  v25 = v10;
  v22 = v8;
  v23 = v11;
  v19[0] = *a2;
  v19[1] = v9;
  v12 = *(&v20 + 1);
  outlined init with copy of _ScrollableLayoutProxy(v19, v16);
  v12(v5);
  outlined destroy of _ScrollableLayoutProxy(v19);
  static UnitPoint.topLeading.getter();
  _Placement.init(proposedSize:anchoring:at:)();
  v13 = v16[1];
  *(a3 + 40) = v16[0];
  *(a3 + 56) = v13;
  result = *&v17;
  v15 = v18;
  *(a3 + 72) = v17;
  *(a3 + 88) = v15;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance UniversalListContentProvider<A>(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for Animatable.animatableData.modify in conformance PlatterButtonStyleView<A>.ClippingShape;
}

void (*protocol witness for Collection.subscript.read in conformance UniversalListContentProvider<A>(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = UniversalListContentProvider.subscript.read(v6, a2, a3);
  v7[4] = v9;
  v7[5] = v8;
  return protocol witness for Collection.subscript.read in conformance UniversalListContentProvider<A>;
}

void protocol witness for Collection.subscript.read in conformance UniversalListContentProvider<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t (*UniversalListContentProvider.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Text.LineStyle?(v6, v7);
  *a1 = UniversalListContentProvider.subscript.getter(&v6, a3);
  outlined consume of Text.LineStyle?(v6, v7);
  return destroy for NavigationDestinationModifier.SeededResolver;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance UniversalListContentProvider<A>(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *))
{
  v4 = *(a1 + 2);
  v7 = *a1;
  v8 = v4;
  a4(&v7);
  v5 = v7;

  return outlined consume of Text.LineStyle?(v5, *(&v5 + 1));
}

uint64_t protocol witness for Sequence.makeIterator() in conformance UniversalListContentProvider<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 - 8);
  (*(v8 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v5 = type metadata accessor for IndexingIterator();
  UniversalListContentProvider.startIndex.getter((a2 + *(v5 + 36)));
  v6 = *(v8 + 8);

  return v6(v2, a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance UniversalListContentProvider<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance UniversalListContentProvider<A>(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = specialized Collection._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t instantiation function for generic protocol witness table for UniversalListContentProvider<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t IsSelected.set(base:newValue:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(a3 + 16);
  if (a2)
  {
    return (*(v6 + 32))(v3, v7);
  }

  else
  {
    return (*(v6 + 48))(v3, v7);
  }
}

uint64_t static IsSelected.== infix(_:_:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t IsSelected.hash(into:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int IsSelected.hashValue.getter()
{
  Hasher.init(_seed:)();
  IsSelected.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Projection.get(base:) in conformance IsSelected<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = IsSelected.get(base:)(a1, a2);
  *a3 = result & 1;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IsSelected<A>()
{
  Hasher.init(_seed:)();
  IsSelected.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized UniversalListContentProvider.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  result = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of SystemListCell<_VariadicView_Children.Element>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SystemListCell<_VariadicView_Children.Element>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for SystemListCell<_VariadicView_Children.Element>()
{
  if (!lazy cache variable for type metadata for SystemListCell<_VariadicView_Children.Element>)
  {
    v0 = type metadata accessor for SystemListCell();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SystemListCell<_VariadicView_Children.Element>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SystemListCell<_VariadicView_Children.Element> and conformance SystemListCell<A>()
{
  result = lazy protocol witness table cache variable for type SystemListCell<_VariadicView_Children.Element> and conformance SystemListCell<A>;
  if (!lazy protocol witness table cache variable for type SystemListCell<_VariadicView_Children.Element> and conformance SystemListCell<A>)
  {
    type metadata accessor for SystemListCell<_VariadicView_Children.Element>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemListCell<_VariadicView_Children.Element> and conformance SystemListCell<A>);
  }

  return result;
}

uint64_t outlined destroy of SystemListCell<_VariadicView_Children.Element>(uint64_t a1)
{
  type metadata accessor for SystemListCell<_VariadicView_Children.Element>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for IsSelected()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for IsSelected(uint64_t *a1, uint64_t *a2)
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

uint64_t destroy for IsSelected(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for IsSelected(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for IsSelected(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for IsSelected(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for IsSelected(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for IsSelected(unsigned __int16 *a1, unsigned int a2)
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

void storeEnumTagSinglePayload for IsSelected(_BYTE *a1, uint64_t a2, unsigned int a3)
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

uint64_t AccessibilityFocus.Target.ancestorAccessibilityNode.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for AccessibilityNode();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3 || (v4 = v3, v5 = [v3 accessibilityNodeForPlatformElement], v4, (result = v5) == 0))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = result;
      swift_getObjectType();
      v7 = [v6 accessibilityNodeForPlatformElement];
      if (v7)
      {
        v8 = v7;

        return v8;
      }

      else
      {
        MEMORY[0x1EEE9AC00](0);
        PlatformAccessibilityElementProtocol<>.traverseAncestors(_:)(partial apply for closure #1 in AccessibilityFocus.Target.ancestorAccessibilityNode.getter);

        return 0;
      }
    }
  }

  return result;
}

uint64_t closure #1 in AccessibilityFocus.Target.ancestorAccessibilityNode.getter(void *a1, void **a2)
{
  type metadata accessor for AccessibilityNode();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *a2;
    *a2 = v4;
    v6 = a1;
LABEL_5:

    return 0;
  }

  v7 = [a1 accessibilityNodeForPlatformElement];
  if (v7)
  {
    v5 = *a2;
    *a2 = v7;
    goto LABEL_5;
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type [AccessibilityFocus.Match] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AccessibilityFocus.Match] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AccessibilityFocus.Match] and conformance [A])
  {
    type metadata accessor for [String](255, &lazy cache variable for type metadata for [AccessibilityFocus.Match], &type metadata for AccessibilityFocus.Match, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AccessibilityFocus.Match] and conformance [A]);
  }

  return result;
}

uint64_t AccessibilityFocus.Target.match(focusStoreNode:)(char *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_5:
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = v6;
    v5 = [v6 accessibilityNodeForPlatformElement];

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = Strong;
  type metadata accessor for AccessibilityNode();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

    goto LABEL_5;
  }

  v5 = v4;
LABEL_7:
  type metadata accessor for AccessibilityNode();
  v8 = a1;
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {
    return 0;
  }

LABEL_8:
  v10 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v11 = *&a1[v10];
  v12 = *(v11 + 16);

  if (!v12)
  {
LABEL_13:

    goto LABEL_16;
  }

  v14 = v11 + 320 * v12 - 288;
  while (1)
  {
    if (v12 > *(v11 + 16))
    {
      __break(1u);
      return result;
    }

    outlined init with copy of AccessibilityAttachment(v14, v31);
    v15 = AccessibilityAttachment.platformElement.getter();
    result = outlined destroy of AccessibilityAttachment(v31);
    if (v15)
    {
      break;
    }

    v14 -= 320;
    if (!--v12)
    {
      goto LABEL_13;
    }
  }

  v16 = swift_unknownObjectWeakLoadStrong();

  if (v16)
  {

    if (v16 == v15)
    {
      return 0;
    }
  }

LABEL_16:
  v17 = AccessibilityFocus.Target.ancestorAccessibilityNode.getter();
  if (v17)
  {
    v18 = v17;
    type metadata accessor for NSObject();
    v19 = static NSObject.== infix(_:_:)();

    if (v19)
    {
      return 2;
    }
  }

  v20 = AccessibilityFocus.Target.ancestorAccessibilityNode.getter();
  if (!v20)
  {
    return 4;
  }

  v21 = v20;
  v22 = AccessibilityNode.representedElement.getter();

  if (v22 != v21)
  {
    v23 = v21;
    while (1)
    {
      if ([v23 respondsToSelector_])
      {
        if ([v23 accessibilityContainer])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = 0u;
          v30 = 0u;
        }

        v31[0] = v29;
        v31[1] = v30;
        if (*(&v30 + 1))
        {
          type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
          if (swift_dynamicCast())
          {

            v24 = v28;
            goto LABEL_24;
          }
        }

        else
        {
          outlined destroy of Any?(v31);
        }
      }

      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (!v26)
      {
        v27 = 4;
        goto LABEL_40;
      }

      v24 = [v26 superview];

      if (!v24)
      {
        v27 = 4;
        goto LABEL_41;
      }

LABEL_24:
      v23 = v24;
      v25 = AccessibilityNode.representedElement.getter();

      if (v23 == v25)
      {
        v27 = 3;
        goto LABEL_40;
      }
    }
  }

  v27 = 3;
  v23 = v21;
LABEL_40:

  v21 = v23;
LABEL_41:

  return v27;
}

BOOL specialized AccessibilityFocus.Match.takesPriority(over:)(char a1)
{
  if (byte_1EFF8CC18 == a1)
  {
    v1 = 0;
    v2 = 0;
    return v1 < v2;
  }

  if (byte_1EFF8CC19 == a1)
  {
    v1 = 1;
  }

  else if (byte_1EFF8CC1A == a1)
  {
    v1 = 2;
  }

  else
  {
    if (byte_1EFF8CC1B != a1)
    {
      return 0;
    }

    v1 = 3;
  }

  if (byte_1EFF8CC19 == a1)
  {
    v2 = 1;
    return v1 < v2;
  }

  if (byte_1EFF8CC1A == a1)
  {
    v2 = 2;
    return v1 < v2;
  }

  if (byte_1EFF8CC1B == a1)
  {
    v2 = 3;
    return v1 < v2;
  }

  return 0;
}

SwiftUI::BorderedListStyle __swiftcall BorderedListStyle.init(alternatesRowBackgrounds:)(Swift::Bool alternatesRowBackgrounds)
{
  result.options.rawValue = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}