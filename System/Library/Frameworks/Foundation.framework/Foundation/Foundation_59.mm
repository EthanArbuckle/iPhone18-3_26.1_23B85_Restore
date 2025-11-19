uint64_t specialized AttributedString.Guts.updateRun(at:within:with:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v63 = v10;
  v64 = a1[4];
  v11 = a4[9];
  v13 = a4[10];
  v12 = a4 + 9;
  v14 = a4[11];
  v15 = a4[12];
  swift_unknownObjectRetain();
  specialized Rope.subscript.getter(v9, v8, v10, v11, v13, v14, v15);
  v17 = v16;
  v19 = v18;
  swift_unknownObjectRelease();
  v20 = *v12;
  v21 = v12[1];
  v23 = v12[2];
  v22 = v12[3];
  swift_unknownObjectRetain();
  v24 = v23;
  v25 = v64;
  v26 = specialized Rope.subscript.getter(v9, v8, v63, v20, v21, v24, v22);
  swift_unknownObjectRelease();

  v28 = v64 + v26;
  if (__OFADD__(v64, v26))
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v67 = v17;
  v68 = v19;
  if (v64 >= a3)
  {
    v29 = a3;
  }

  else
  {
    v29 = v64;
  }

  if (v64 >= a2)
  {
    v30 = v29;
  }

  else
  {
    v30 = a2;
  }

  if (v28 <= a2)
  {
    v31 = a2;
  }

  else
  {
    v31 = v64 + v26;
  }

  if (v28 <= a3)
  {
    v32 = v31;
  }

  else
  {
    v32 = a3;
  }

  if (v30 == v32)
  {
    goto LABEL_70;
  }

  if (v30 != v64 || v32 != v28)
  {
    v65 = a6;
    v66 = a7;
    result = specialized AttributedString._AttributeStorage.matchStyle(of:for:)(a5, &v65);
    if ((result & 1) == 0)
    {
LABEL_50:
    }

    if (__OFSUB__(v32, v30))
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    result = specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v30, v32, v32 - v30, v67, v68);
    v34 = a4[9];
    if (v34)
    {
      v35 = a4[11];
    }

    else
    {
      v35 = 0;
    }

    if (v64 < 0 || v35 < v64)
    {
      goto LABEL_76;
    }

    v36 = a4[10];
    v37 = a4[12];
    if (v34)
    {
      v38 = (v34 + 16);
      LODWORD(v39) = *(v34 + 16);
      if (*(v34 + 16))
      {
        if (v64 < a4[11])
        {
          v40 = *(v34 + 18);
          result = swift_unknownObjectRetain_n();
          if (v40)
          {
            v41 = v40;
            v42 = v34;
            do
            {
              v43 = *v38;
              if (*v38)
              {
                v45 = 0;
                v46 = (v42 + 40);
                while (1)
                {
                  v47 = *v46;
                  v46 += 3;
                  v48 = v25 - v47;
                  if (__OFSUB__(v25, v47))
                  {
                    goto LABEL_67;
                  }

                  if (__OFADD__(v48, 1))
                  {
                    goto LABEL_68;
                  }

                  if (v48 + 1 < 1)
                  {
                    v43 = v45;
                    goto LABEL_35;
                  }

                  ++v45;
                  v25 = v48;
                  if (v43 == v45)
                  {
                    goto LABEL_44;
                  }
                }
              }

              v48 = v25;
LABEL_44:
              if (v48)
              {
                goto LABEL_73;
              }

              v25 = 0;
LABEL_35:
              v41 = (v43 << ((4 * v40 + 8) & 0x3C)) | ((-15 << ((4 * v40 + 8) & 0x3C)) - 1) & v41;
              v44 = *(v42 + 24 + 24 * v43);
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v38 = (v44 + 16);
              LOBYTE(v40) = *(v44 + 18);
              v42 = v44;
            }

            while (v40);
            LODWORD(v39) = *v38;
            if (*v38)
            {
              goto LABEL_54;
            }

            v39 = 0;
LABEL_62:
            if (!v25)
            {
              v51 = 0;
LABEL_64:
              swift_unknownObjectRelease();
              v50 = v41 & 0xFFFFFFFFFFFFF0FFLL | (v39 << 8);
              v25 = v64;
              goto LABEL_48;
            }

            goto LABEL_77;
          }

          v41 = 0;
          v44 = v34;
LABEL_54:
          v54 = 0;
          v55 = 24;
          v51 = v25;
          v39 = v39;
          while (1)
          {
            v56 = *(v44 + v55);
            v25 = v51 - v56;
            if (__OFSUB__(v51, v56))
            {
              goto LABEL_71;
            }

            if (__OFADD__(v25, 1))
            {
              goto LABEL_72;
            }

            if (v25 + 1 < 1)
            {
              v39 = v54;
              goto LABEL_64;
            }

            ++v54;
            v55 += 24;
            v51 -= v56;
            if (v39 == v54)
            {
              goto LABEL_62;
            }
          }
        }
      }
    }

    v49 = swift_unknownObjectRetain();
    v50 = specialized Rope._endPath.getter(v49);
    v44 = 0;
    v51 = 0;
    if (!v34)
    {
      v52 = 0;
      v53 = v64;
      goto LABEL_49;
    }

LABEL_48:
    v52 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v37, v50, v44, v34, v36);
    result = swift_unknownObjectRelease();
    v53 = v25 - v51;
    if (!__OFSUB__(v25, v51))
    {
LABEL_49:
      *a1 = v37;
      a1[1] = v50;
      a1[2] = v44;
      a1[3] = v52;
      a1[4] = v53;
      goto LABEL_50;
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v9 != a4[12])
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (!*v12)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  specialized Rope._Node._prepareModify(at:)(v8, v69);
  v72 = v70;
  v73 = v71;
  outlined destroy of TermOfAddress?(&v72, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  result = outlined destroy of TermOfAddress?(&v73, &_sShySSGMd);
  v70 = MEMORY[0x1E69E7CC8];
  v71 = MEMORY[0x1E69E7CD0];
  a4[12] = v9 + 1;
  *a1 = v9 + 1;
  if (a4[9])
  {
    v33 = specialized Rope._Node._finalizeModify(_:)(&v65, v69);

    a1[2] = v33;
    v65 = a6;
    v66 = a7;
    if (specialized AttributedString._AttributeStorage.matchStyle(of:for:)(a5, &v65))
    {
      specialized AttributedString._InternalRuns.updateAndCoalesce(at:with:)(a1, v12, &v67);
    }

    else
    {
      specialized Rope.update<A>(at:by:)(a1, v12, &v67);
    }

    goto LABEL_50;
  }

LABEL_79:
  __break(1u);
  return result;
}

uint64_t specialized AttributedString.Guts.copy(in:)(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v31[3] = *(a2 + 24);
  v31[4] = v4;
  v31[5] = *(a2 + 56);
  swift_unknownObjectRetain();
  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();
  BigString.init(_:)();
  v5 = *(a2 + 72);
  v6 = *(a2 + 80);
  v7 = *(a2 + 88);
  v8 = *a1;
  v9 = *a1 >> 11;
  v10 = a1[4];
  swift_unknownObjectRetain();
  v11 = specialized Rope.extract<A>(from:to:in:)(v9, v10 >> 11, v5, v6, v7);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  swift_unknownObjectRelease();
  v18 = swift_allocObject();
  v19 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(v31, &v30);
  v20 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v20);
  if (v11)
  {
    v21 = v15 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21;
  if (v19 != v22)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_14:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v24 = v31[1];
  *(v18 + 24) = v31[0];
  *(v18 + 16) = add_explicit;
  *(v18 + 40) = v24;
  *(v18 + 56) = v31[2];
  *(v18 + 72) = v11;
  *(v18 + 80) = v13;
  *(v18 + 88) = v15;
  *(v18 + 96) = v17;
  *(v18 + 104) = MEMORY[0x1E69E7CC0];
  v25 = BigString.startIndex.getter();
  if ((v25 ^ v8) > 0x3FF || (BigString.endIndex.getter() ^ v10) >= 0x400)
  {
    v26 = BigString.endIndex.getter();
    v27 = AttributedString.Guts.enforceAttributeConstraintsBeforeMutation(to:)(v25 >> 11, v26 >> 11);
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v27, v28, 1, 0);
  }

  outlined destroy of BigString(v31);
  swift_unknownObjectRelease();
  return v18;
}

uint64_t specialized AttributedString.Guts.updateRun(at:within:with:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t *, uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v60 = v8;
  v62 = a1[4];
  v9 = a4[9];
  v10 = a4[10];
  v11 = a4 + 9;
  v12 = a4[11];
  v13 = a4[12];
  swift_unknownObjectRetain();
  specialized Rope.subscript.getter(v7, v6, v8, v9, v10, v12, v13);
  v15 = v14;
  v17 = v16;
  swift_unknownObjectRelease();
  v18 = *v11;
  v19 = v11[1];
  v21 = v11[2];
  v20 = v11[3];
  swift_unknownObjectRetain();
  v53 = v6;
  v54 = v7;
  v22 = specialized Rope.subscript.getter(v7, v6, v60, v18, v19, v21, v20);
  swift_unknownObjectRelease();
  v23 = v62;

  v25 = v62 + v22;
  if (__OFADD__(v62, v22))
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v64 = v15;
  v65 = v17;
  if (v62 >= a3)
  {
    v26 = a3;
  }

  else
  {
    v26 = v62;
  }

  if (v62 >= a2)
  {
    v27 = v26;
  }

  else
  {
    v27 = a2;
  }

  if (v25 <= a2)
  {
    v28 = a2;
  }

  else
  {
    v28 = v62 + v22;
  }

  if (v25 <= a3)
  {
    v29 = v28;
  }

  else
  {
    v29 = a3;
  }

  if (v27 == v29)
  {
    goto LABEL_71;
  }

  if (v27 == v62 && v29 == v25)
  {
    if (v54 == a4[12])
    {
      if (*v11)
      {
        specialized Rope._Node._prepareModify(at:)(v53, v66);
        v69 = v67;
        v70 = v68;
        outlined destroy of TermOfAddress?(&v69, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        result = outlined destroy of TermOfAddress?(&v70, &_sShySSGMd);
        v67 = MEMORY[0x1E69E7CC8];
        v68 = MEMORY[0x1E69E7CD0];
        a4[12] = v54 + 1;
        *a1 = v54 + 1;
        if (a4[9])
        {
          v30 = specialized Rope._Node._finalizeModify(_:)(v63, v66);

          a1[2] = v30;
          a5(&v64, v62, v25);
          specialized AttributedString._InternalRuns.updateAndCoalesce(at:with:)(a1, v11, &v64);
          goto LABEL_47;
        }

        goto LABEL_76;
      }

LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      return result;
    }

    goto LABEL_73;
  }

  result = (a5)(&v64, v27, v29);
  if (__OFSUB__(v29, v27))
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  result = specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v27, v29, v29 - v27, v64, v65);
  v31 = a4[9];
  if (v31)
  {
    v32 = a4[11];
  }

  else
  {
    v32 = 0;
  }

  if (v62 < 0 || v32 < v62)
  {
    goto LABEL_74;
  }

  v59 = a4[10];
  v61 = a4[12];
  if (!v31 || (v34 = (v31 + 16), LODWORD(v33) = *(v31 + 16), !*(v31 + 16)) || v62 >= a4[11])
  {
    v44 = swift_unknownObjectRetain();
    v45 = v61;
    result = specialized Rope._endPath.getter(v44);
    v46 = result;
    v39 = 0;
    v47 = 0;
    if (!v31)
    {
      goto LABEL_60;
    }

    goto LABEL_45;
  }

  v35 = *(v31 + 18);
  result = swift_unknownObjectRetain_n();
  if (v35)
  {
    v36 = v62;
    v23 = v35;
    v37 = v31;
    do
    {
      v38 = *v34;
      if (*v34)
      {
        v40 = 0;
        v41 = (v37 + 40);
        while (1)
        {
          v42 = *v41;
          v41 += 3;
          v43 = v36 - v42;
          if (__OFSUB__(v36, v42))
          {
            goto LABEL_65;
          }

          if (__OFADD__(v43, 1))
          {
            goto LABEL_66;
          }

          if (v43 + 1 < 1)
          {
            break;
          }

          ++v40;
          v36 = v43;
          if (v38 == v40)
          {
            goto LABEL_42;
          }
        }

        v38 = v40;
      }

      else
      {
        v43 = v36;
LABEL_42:
        if (v43)
        {
          goto LABEL_69;
        }

        v36 = 0;
      }

      v23 = (v38 << ((4 * v35 + 8) & 0x3C)) | ((-15 << ((4 * v35 + 8) & 0x3C)) - 1) & v23;
      v39 = *(v37 + 24 + 24 * v38);
      swift_unknownObjectRetain();
      result = swift_unknownObjectRelease();
      v34 = (v39 + 16);
      LOBYTE(v35) = *(v39 + 18);
      v37 = v39;
    }

    while (v35);
    LODWORD(v33) = *v34;
    if (!*v34)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v36 = v62;
    v23 = 0;
    v39 = v31;
  }

  v49 = 0;
  v50 = 24;
  v47 = v36;
  v33 = v33;
  do
  {
    v51 = *(v39 + v50);
    v52 = v47 - v51;
    if (__OFSUB__(v47, v51))
    {
      goto LABEL_67;
    }

    if (__OFADD__(v52, 1))
    {
      goto LABEL_68;
    }

    if (v52 + 1 < 1)
    {
      v33 = v49;
      goto LABEL_59;
    }

    ++v49;
    v50 += 24;
    v47 -= v51;
  }

  while (v33 != v49);
  if (v52)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  while (1)
  {
    v47 = 0;
LABEL_59:
    result = swift_unknownObjectRelease();
    v46 = v23 & 0xFFFFFFFFFFFFF0FFLL | (v33 << 8);
    v45 = v61;
    v23 = v62;
    if (!v31)
    {
      break;
    }

LABEL_45:
    v36 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v45, v46, v39, v31, v59);
    result = swift_unknownObjectRelease();
    v48 = v23 - v47;
    if (!__OFSUB__(v23, v47))
    {
      goto LABEL_46;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    v33 = 0;
    if (v36)
    {
      goto LABEL_64;
    }
  }

LABEL_60:
  v36 = 0;
  v48 = v23 - v47;
  if (__OFSUB__(v23, v47))
  {
    goto LABEL_62;
  }

LABEL_46:
  *a1 = v45;
  a1[1] = v46;
  a1[2] = v39;
  a1[3] = v36;
  a1[4] = v48;
LABEL_47:
}

uint64_t thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error)partial apply(void *a1, uint64_t a2)
{
  return partial apply for thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error)(a1, a2) & 1;
}

{
  return _sSS10Foundation16AttributedStringV15_AttributeValueVSbs5Error_pIggndzo_SSAESbsAF_pIegnndzo_TRTA_0(a1, a2) & 1;
}

uint64_t _s10Foundation16AttributedStringV9transform8updating4bodyySnyAC5IndexVGz_yACzxYKXEtxYKs5ErrorRzlF(_OWORD *a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14[3];
  v37 = v14[2];
  v38 = v15;
  v39 = v14[4];
  v16 = v14[1];
  v35 = *v14;
  v36 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySny10Foundation16AttributedStringV5IndexVGGMd);
  inited = swift_initStackObject();
  v18 = v37;
  v19 = v38;
  v20 = v35;
  inited[3] = v36;
  inited[4] = v18;
  v21 = v39;
  inited[5] = v19;
  inited[6] = v21;
  inited[1] = xmmword_181218E20;
  inited[2] = v20;
  v22 = v40;
  v23 = _s10Foundation16AttributedStringV9transform8updating4bodySaySnyAC5IndexVGGSgAJ_yACzxYKXEtxYKs5ErrorRzlF(inited, a2, a3, a4, a5, v13);
  swift_setDeallocating();
  if (v22)
  {
    return (*(v11 + 32))(v29, v13, a4);
  }

  if (!v23)
  {
    goto LABEL_8;
  }

  if (!*(v23 + 16))
  {

LABEL_8:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v25 = *(v23 + 80);
  v32 = *(v23 + 64);
  v33 = v25;
  v34 = *(v23 + 96);
  v26 = *(v23 + 48);
  v30 = *(v23 + 32);
  v31 = v26;

  v27 = v33;
  a1[2] = v32;
  a1[3] = v27;
  a1[4] = v34;
  v28 = v31;
  *a1 = v30;
  a1[1] = v28;
  return result;
}

double _s10Foundation16AttributedStringV9transform8updating4bodySnyAC5IndexVGSgAI_yACzxYKXEtxYKs5ErrorRzlF@<D0>(__int128 *a1@<X0>, void (*a2)(uint64_t *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v29 = a6;
  v28 = a7;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySny10Foundation16AttributedStringV5IndexVGGMd);
  inited = swift_initStackObject();
  v16 = a1[2];
  v17 = a1[3];
  v18 = *a1;
  inited[3] = a1[1];
  inited[4] = v16;
  v19 = a1[4];
  inited[5] = v17;
  inited[6] = v19;
  inited[1] = xmmword_181218E20;
  inited[2] = v18;
  v20 = v35;
  v21 = _s10Foundation16AttributedStringV9transform8updating4bodySaySnyAC5IndexVGGSgAJ_yACzxYKXEtxYKs5ErrorRzlF(inited, a2, a3, a4, a5, v14);
  swift_setDeallocating();
  if (v20)
  {
    (*(v12 + 32))(v29, v14, a4);
  }

  else
  {
    v23 = v28;
    if (v21)
    {
      if (*(v21 + 16))
      {
        v24 = *(v21 + 80);
        v32 = *(v21 + 64);
        v33 = v24;
        v34 = *(v21 + 96);
        v25 = *(v21 + 32);
        v31 = *(v21 + 48);
        v30 = v25;

        v26 = v33;
        *(v23 + 2) = v32;
        *(v23 + 3) = v26;
        *(v23 + 4) = v34;
        v22 = v31;
        *v23 = v30;
        *(v23 + 1) = v22;
      }

      else
      {

        *v23 = 0;
        v23[1] = 0;
        v23[2] = 0;
        v23[3] = 2;
        *&v22 = 0;
        *(v23 + 2) = 0u;
        *(v23 + 3) = 0u;
        *(v23 + 4) = 0u;
      }
    }

    else
    {
      *v28 = 0;
      v23[1] = 0;
      v23[2] = 0;
      v23[3] = 2;
      *&v22 = 0;
      *(v23 + 2) = 0u;
      *(v23 + 3) = 0u;
      *(v23 + 4) = 0u;
    }
  }

  return *&v22;
}

uint64_t _s10Foundation16AttributedStringV9transform8updating4bodyySaySnyAC5IndexVGGz_yACzxYKXEtxYKs5ErrorRzlF(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s10Foundation16AttributedStringV9transform8updating4bodySaySnyAC5IndexVGGSgAJ_yACzxYKXEtxYKs5ErrorRzlF(*v13, v14, v15, v16, v17, v12);
  if (v6)
  {
    return (*(v10 + 32))(a6, v12, a4);
  }

  if (v18)
  {
    v20 = v18;

    *a1 = v20;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _s10Foundation16AttributedStringV9transform8updating4bodySaySnyAC5IndexVGGSgAJ_yACzxYKXEtxYKs5ErrorRzlF(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = v7;
  v10 = v6;
  v89 = a3;
  v90 = a2;
  v12 = a1;
  v94 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v83 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v81 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v81 - v18;
  v95 = v20;
  v21 = type metadata accessor for Optional();
  v93 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v109 = &v81 - v26;
  v96 = *(v12 + 16);
  if (!v96)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v88 = v7;
  v84 = v25;
  v82 = v16;
  v85 = a6;
  v86 = a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v10;
  v28 = &unk_1EA7B2000;
  v16 = &static AttributedString.Guts._nextVersion;
  v91 = v21;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_12;
  }

  v29 = *(v9 + 40);
  v106 = *(v9 + 24);
  v107 = v29;
  v108 = *(v9 + 56);
  v30 = *(v9 + 72);
  v31 = *(v9 + 80);
  v21 = *(v9 + 88);
  v32 = *(v9 + 96);
  type metadata accessor for AttributedString.Guts();
  v9 = swift_allocObject();
  v33 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v106, v101);
  v34 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v34);
  if (v30)
  {
    v35 = v21 == 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = v35;
  if (v36 != v33)
  {
    goto LABEL_52;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v16 = &static AttributedString.Guts._nextVersion;
    add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v38 = v107;
    *(v9 + 24) = v106;
    *(v9 + 16) = add_explicit;
    *(v9 + 40) = v38;
    *(v9 + 56) = v108;
    *(v9 + 72) = v30;
    *(v9 + 80) = v31;
    *(v9 + 88) = v21;
    *(v9 + 96) = v32;
    *(v9 + 104) = MEMORY[0x1E69E7CC0];

    *v10 = v9;
    v21 = v91;
    v28 = &unk_1EA7B2000;
LABEL_12:
    if (v28[147] != -1)
    {
LABEL_50:
      swift_once();
    }

    *(v9 + 16) = atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
    v39 = *(v9 + 104);
    v92 = *(v39 + 2);
    v40 = (v12 + 72);
    v12 = v96;
    do
    {
      v98 = *(v40 - 24);
      v100 = *(v40 - 40);
      v41 = *v40;
      v97 = v40[1];
      v99 = v41;
      v42 = *(v9 + 40);
      v105[0] = *(v9 + 24);
      v105[1] = v42;
      v105[2] = *(v9 + 56);
      v16 = v105;
      if (v100 >> 10 < BigString.startIndex.getter() >> 10)
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (BigString.endIndex.getter() >> 10 < v99 >> 10)
      {
        goto LABEL_48;
      }

      v43 = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 104) = v39;
      if ((v43 & 1) == 0)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
        *(v9 + 104) = v39;
      }

      v45 = *(v39 + 2);
      v44 = *(v39 + 3);
      if (v45 >= v44 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v39);
      }

      *(v39 + 2) = v45 + 1;
      v46 = &v39[64 * v45];
      v47 = v98;
      *(v46 + 2) = v100;
      *(v46 + 3) = v47;
      v48 = v97;
      *(v46 + 4) = v99;
      *(v46 + 5) = v48;
      *(v9 + 104) = v39;
      v40 += 5;
      --v12;
    }

    while (v12);
    v9 = v21;
    v31 = v94;
    v32 = *(v94 + 56);
    v49 = v109;
    v50 = v10;
    v51 = v95;
    v32(v109, 1, 1, v95);
    v52 = v88;
    v90(v50, v19);
    if (v52)
    {
      (*(v93 + 8))(v49, v21);
      (*(v31 + 32))(v49, v19, v51);
      v32(v49, 0, 1, v51);
      v52 = 0;
    }

    *&v100 = v52;
    v10 = v50;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v50;
    if (v53)
    {
      v30 = *(v12 + 104);
      v19 = v95;
    }

    else
    {
      v54 = *(v12 + 40);
      v102 = *(v12 + 24);
      v103 = v54;
      v104 = *(v12 + 56);
      v55 = *(v12 + 72);
      v32 = *(v12 + 80);
      v56 = *(v12 + 88);
      v31 = *(v12 + 96);
      type metadata accessor for AttributedString.Guts();
      v12 = swift_allocObject();
      v57 = BigString.isEmpty.getter() & 1;
      outlined init with copy of BigString(&v102, v101);
      v58 = swift_unknownObjectRetain();
      result = specialized Rope._endPath.getter(v58);
      if (v55)
      {
        v60 = v56 == 0;
      }

      else
      {
        v60 = 1;
      }

      v61 = v60;
      v19 = v95;
      if (v61 != v57)
      {
        __break(1u);
        goto LABEL_54;
      }

      v62 = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      v63 = v103;
      *(v12 + 24) = v102;
      *(v12 + 16) = v62;
      *(v12 + 40) = v63;
      *(v12 + 56) = v104;
      *(v12 + 72) = v55;
      *(v12 + 80) = v32;
      *(v12 + 88) = v56;
      *(v12 + 96) = v31;
      v30 = MEMORY[0x1E69E7CC0];
      *(v12 + 104) = MEMORY[0x1E69E7CC0];

      *v10 = v12;
      v21 = v91;
    }

    *(v12 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    if (!__OFADD__(v92, v96))
    {
      break;
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  if (*(v30 + 16) != v92 + v96)
  {
    *(v12 + 104) = MEMORY[0x1E69E7CC0];

    v72 = v93;
    v73 = v87;
    v74 = v109;
    (*(v93 + 16))(v87, v109, v21);
    v75 = v94;
    if ((*(v94 + 48))(v73, 1, v19) == 1)
    {
      v76 = *(v72 + 8);
      v76(v74, v21);
      v76(v73, v21);
      return 0;
    }

    v79 = v83;
    (*(v75 + 32))(v83, v73, v19);
    (*(v75 + 16))(v85, v79, v19);
    swift_willThrowTypedImpl();
    v80 = *(v75 + 8);
    v71 = v75 + 8;
    v80(v79, v19);
    goto LABEL_45;
  }

  v64 = v93;
  v65 = v84;
  (*(v93 + 16))(v84, v109, v21);
  v66 = v94;
  if ((*(v94 + 48))(v65, 1, v19) != 1)
  {
    v77 = v82;
    (*(v66 + 32))(v82, v65, v19);
    v71 = v85;
    (*(v66 + 16))(v85, v77, v19);
    swift_willThrowTypedImpl();
    (*(v66 + 8))(v77, v19);
    v78 = *(*(v12 + 104) + 16);
    result = v92;
    if (v78 < v92)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    specialized Array.replaceSubrange<A>(_:with:)(v92, v78);
    v72 = v93;
    v74 = v109;
LABEL_45:
    (*(v72 + 8))(v74, v21);
    return v71;
  }

  v67 = *(v64 + 8);
  result = v67(v65, v21);
  v68 = *(v12 + 104);
  v69 = *(v68 + 16);
  if (v69 < v92)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs10ArraySliceVySny19CollectionsInternal9BigStringV5IndexVGG_Sny10Foundation010AttributedI0VAKVGs5NeverOTg5016_s10Foundation16li34V9transform8updating4bodySaySnyAC5j23VGGSgAJ_yACzxYKXEtxYKs5c11RzlFAISny19f10Internal03H12C0VAGVGXEfU_AQTf1cn_nTf4xn_n((v68 + 32), v92, (2 * v69) | 1, v10);
  v70 = *(*(v12 + 104) + 16);
  if (v70 >= v92)
  {
    v71 = result;
    specialized Array.replaceSubrange<A>(_:with:)(v92, v70);
    v67(v109, v21);
    return v71;
  }

LABEL_56:
  __break(1u);
  return result;
}

char *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs10ArraySliceVySny19CollectionsInternal9BigStringV5IndexVGG_Sny10Foundation010AttributedI0VAKVGs5NeverOTg5016_s10Foundation16li34V9transform8updating4bodySaySnyAC5j23VGGSgAJ_yACzxYKXEtxYKs5c11RzlFAISny19f10Internal03H12C0VAGVGXEfU_AQTf1cn_nTf4xn_n(char *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_14;
  }

  v5 = result;
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v24 = a3 >> 1;
    v26 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v7 = 0;
    result = v26;
    v8 = &v5[64 * a2 + 32];
    v9 = a4;
    v10 = v24;
    while (1)
    {
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ((a2 + v7) >= v10 || v7 >= v4)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 2);
      v13 = *(v8 - 1);
      v14 = *v8;
      v15 = *(v8 + 1);
      v16 = *(*v9 + 16);
      v27 = result;
      v18 = *(result + 2);
      v17 = *(result + 3);
      if (v18 >= v17 >> 1)
      {
        v22 = *(v8 + 1);
        v23 = *v8;
        v20 = *(v8 - 1);
        v21 = *(v8 - 2);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v13 = v20;
        v12 = v21;
        v15 = v22;
        v14 = v23;
        v10 = v24;
        v9 = a4;
        result = v27;
      }

      *(result + 2) = v18 + 1;
      v19 = &result[80 * v18];
      *(v19 + 2) = v12;
      *(v19 + 3) = v13;
      *(v19 + 8) = v16;
      *(v19 + 72) = v14;
      *(v19 + 88) = v15;
      *(v19 + 13) = v16;
      ++v7;
      v8 += 64;
      if (v11 == v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  return result;
}

BOOL AttributedString.Index.isValid<A>(within:)(uint64_t a1, ValueMetadata *a2, void (**a3)(void *__return_ptr, void, void))
{
  v6 = *v3;
  v7 = v3[4];
  if (a2 == &type metadata for AttributedString || a2 == &type metadata for AttributedSubstring)
  {
  }

  else
  {
    (a3)[7](v12, a2, a3);
    v8 = v12[0];
  }

  v9 = *(v8 + 16);

  if (v7 != v9)
  {
    return 0;
  }

  (a3)[4](v12, a2, a3);
  v10 = v6 >> 10;
  if (v10 < v12[0] >> 10)
  {
    return 0;
  }

  (a3)[5](v12, a2, a3);
  return v10 < v12[0] >> 10;
}

uint64_t AttributedString.Index.isValid(within:)(uint64_t a1)
{
  if (*(v1 + 32) == *(*a1 + 16))
  {
    type metadata accessor for DiscontiguousAttributedSubstring();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    v2 = RangeSet.contains(_:)();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL Range<>.isValid<A>(within:)(uint64_t a1, ValueMetadata *a2, void (**a3)(void *__return_ptr, void, void))
{
  v6 = *v3;
  v8 = v3[4];
  v7 = v3[5];
  v9 = v3[9];
  if (a2 == &type metadata for AttributedString || a2 == &type metadata for AttributedSubstring)
  {
  }

  else
  {
    (a3)[7](v15, a2, a3);
    v10 = v15[0];
  }

  v11 = *(v10 + 16);

  if (v8 != v11)
  {
    return 0;
  }

  (a3)[4](v15, a2, a3);
  if (v6 >> 10 < v15[0] >> 10)
  {
    return 0;
  }

  if (a2 == &type metadata for AttributedString || a2 == &type metadata for AttributedSubstring)
  {
  }

  else
  {
    (a3)[7](v15, a2, a3);
    v12 = v15[0];
  }

  v13 = *(v12 + 16);

  if (v9 != v13)
  {
    return 0;
  }

  (a3)[5](v15, a2, a3);
  return v15[0] >> 10 >= v7 >> 10;
}

uint64_t Range<>.isValid(within:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = *(v1 + 4);
  v23 = *(v1 + 56);
  v24 = v7;
  v10 = *(v1 + 40);
  v26 = v8;
  v27 = v10;
  v25 = *(v1 + 9);
  type metadata accessor for DiscontiguousAttributedSubstring();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  RangeSet.ranges.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    (*(v4 + 8))(v6, v3);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v13 = dispatch thunk of Collection.subscript.read();
    v15 = *(v14 + 32);
    v16 = *(v14 + 56);
    v13(&v28, 0);
    (*(v4 + 8))(v6, v3);
    v12 = v16 != 2;
    v11 = v15 >> 10;
  }

  v17 = *a1;
  v18 = v27;
  if (v9 != *(*a1 + 16))
  {
    goto LABEL_17;
  }

  if (v11 != v26 >> 10 || !v12)
  {
    v28 = v26;
    v29 = v24;
    if ((RangeSet.contains(_:)() & 1) == 0)
    {
LABEL_17:
      v21 = 0;
      return v21 & 1;
    }

    v9 = *(v17 + 16);
    v18 = v27;
  }

  if (v25 != v9)
  {
    goto LABEL_17;
  }

  if (v11 == v18 >> 10 && v12)
  {
    v21 = 1;
  }

  else
  {
    v28 = v18;
    v29 = v23;
    v21 = RangeSet.contains(_:)();
  }

  return v21 & 1;
}

uint64_t RangeSet<>.isValid<A>(within:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-v8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMd);
  RangeSet.ranges.getter();
  v12 = a2;
  v13 = a3;
  v14 = a1;
  LOBYTE(a3) = specialized Sequence.allSatisfy(_:)(partial apply for closure #1 in RangeSet<>.isValid<A>(within:), v11);
  (*(v7 + 8))(v9, v6);
  return a3 & 1;
}

uint64_t specialized Sequence.allSatisfy(_:)(uint64_t (*a1)(_OWORD *), uint64_t a2)
{
  v28 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GGMd);
  v10 = v9 - 8;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  (*(v6 + 16))(v8, v2, v5, v11);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
  dispatch thunk of Sequence.makeIterator()();
  v14 = *(v10 + 44);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v13[v14] == v23)
  {
LABEL_5:
    outlined destroy of IndexingIterator<RangeSet<AttributedString.Index>.Ranges>(v13);
    return 1;
  }

  else
  {
    while (1)
    {
      v15 = dispatch thunk of Collection.subscript.read();
      v23 = *v16;
      v17 = v16[4];
      v19 = v16[1];
      v18 = v16[2];
      v26 = v16[3];
      v27 = v17;
      v24 = v19;
      v25 = v18;
      v15(v22, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v22[2] = v25;
      v22[3] = v26;
      v22[4] = v27;
      v22[0] = v23;
      v22[1] = v24;
      v20 = a1(v22);
      if (v3 || (v20 & 1) == 0)
      {
        break;
      }

      dispatch thunk of Collection.endIndex.getter();
      if (*&v13[v14] == v23)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of IndexingIterator<RangeSet<AttributedString.Index>.Ranges>(v13);
    return 0;
  }
}

uint64_t RangeSet<>.isValid(within:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMd);
  RangeSet.ranges.getter();
  v8 = a1;
  LOBYTE(a1) = specialized Sequence.allSatisfy(_:)(partial apply for closure #1 in RangeSet<>.isValid(within:), v7);
  (*(v3 + 8))(v5, v2);
  return a1 & 1;
}

uint64_t closure #1 in RangeSet<>.isValid(within:)(__int128 *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v8 = a1[1];
  v27 = *a1;
  v9 = *(a1 + 4);
  v23 = *(a1 + 56);
  v24 = v8;
  v28 = *(a1 + 40);
  v26 = *(a1 + 9);
  v10 = *(type metadata accessor for DiscontiguousAttributedSubstring() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v25 = v10;
  RangeSet.ranges.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    (*(v5 + 8))(v7, v4);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v13 = dispatch thunk of Collection.subscript.read();
    v15 = *(v14 + 32);
    v16 = *(v14 + 56);
    v13(&v29, 0);
    (*(v5 + 8))(v7, v4);
    v12 = v16 != 2;
    v11 = v15 >> 10;
  }

  v17 = *a2;
  v18 = v28;
  if (v9 != *(*a2 + 16))
  {
    goto LABEL_17;
  }

  if (v11 != v27 >> 10 || !v12)
  {
    v29 = v27;
    v30 = v24;
    if ((RangeSet.contains(_:)() & 1) == 0)
    {
LABEL_17:
      v21 = 0;
      return v21 & 1;
    }

    v9 = *(v17 + 16);
    v18 = v28;
  }

  if (v26 != v9)
  {
    goto LABEL_17;
  }

  if (v11 == v18 >> 10 && v12)
  {
    v21 = 1;
  }

  else
  {
    v29 = v18;
    v30 = v23;
    v21 = RangeSet.contains(_:)();
  }

  return v21 & 1;
}

uint64_t outlined destroy of IndexingIterator<RangeSet<AttributedString.Index>.Ranges>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Rope.distance<A>(from:to:in:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (result != a10 || a4 != a10)
  {
    goto LABEL_23;
  }

  if (a2 == a5)
  {
    return 0;
  }

  if (!a7)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  if (a3 && a6 && a3 == a6)
  {
    v11 = (4 * *(a3 + 18) + 8) & 0x3C;
    v12 = (a2 >> v11) & 0xF;
    v13 = (a5 >> v11) & 0xF;
    v15 = a3 + 16;

    return specialized Rope._UnsafeHandle.distance<A>(from:to:in:)(v12, v13, v15, a3 + 24);
  }

  else if (a2 >= a5)
  {
    v16 = specialized Rope._Node.distance<A>(from:to:in:)(result, a5, a6, result, a2, a3, a7, a8, a9);
    v17 = __OFSUB__(0, v16);
    result = -v16;
    if (v17)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  else
  {

    return specialized Rope._Node.distance<A>(from:to:in:)(result, a2, a3, result, a5, a6, a7, a8, a9);
  }

  return result;
}

{
  if (result != a10 || a4 != a10)
  {
    goto LABEL_26;
  }

  if (a2 == a5)
  {
    return 0;
  }

  if (!a7)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  if (a3 && a6 && a3 == a6)
  {
    v11 = (4 * *(a3 + 18) + 8) & 0x3C;
    v12 = (a5 >> v11) & 0xF;
    v13 = (a2 >> v11) & 0xF;
    result = v12 - v13;
    v14 = (v12 - v13) < 0;
    if (v12 < v13)
    {
      v15 = v13 - v12;
      if (v15 >= 0)
      {
        return -v15;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (a2 < a5)
    {

      return specialized Rope._Node.distance<A>(from:to:in:)(result, a2, a3, result, a5, a6, a7, a8);
    }

    v16 = specialized Rope._Node.distance<A>(from:to:in:)(result, a5, a6, result, a2, a3, a7, a8);
    v17 = __OFSUB__(0, v16);
    result = -v16;
    v14 = result < 0;
    if (!v17)
    {
      return result;
    }

    __break(1u);
  }

  if (v14)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return result;
}

uint64_t *specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  if (*result < *a2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = result[8];
  v4 = result[11];
  if (*a2 >= v2 && a2[11] != 2)
  {
    if (v4 == 2)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    if (v3 >> 10 < a2[8] >> 10)
    {
      goto LABEL_14;
    }
  }

  v5 = a2[14];
  if (v2 < v5)
  {
    return result;
  }

  if (v5 < v2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a2[25] == 2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 != 2 && v3 >> 10 >= a2[22] >> 10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

{
  v2 = *result;
  if (*result < *a2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = result[8];
  v4 = result[11];
  if (*a2 >= v2)
  {
    if (a2[11] == 2)
    {
      v5 = a2[14];
      if (v5 >= v2)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    if (v4 == 2)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    if (v3 >> 10 < a2[8] >> 10)
    {
      goto LABEL_19;
    }
  }

  v5 = a2[14];
  if (v5 < v2)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_9:
  if (v2 >= v5 && v4 != 2)
  {
    if (a2[25] == 2)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (a2[22] >> 10 >= v3 >> 10)
    {
      return result;
    }

    goto LABEL_18;
  }

  return result;
}

void *specialized Collection._failEarlyRangeCheck(_:bounds:)(void *result, void *a2)
{
  if (*result < *a2)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*a2 < *result)
  {
LABEL_8:
    v2 = result[14];
    v3 = a2[14];
    if (v3 >= v2)
    {
      goto LABEL_9;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2[11] != 2)
  {
LABEL_6:
    if (result[11] == 2)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    if (result[8] >> 10 < a2[8] >> 10)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v2 = result[14];
  v3 = a2[14];
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_9:
  if (v2 >= v3 && result[25] != 2)
  {
    if (a2[25] == 2)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (a2[22] >> 10 >= result[22] >> 10)
    {
      return result;
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t specialized BidirectionalCollection.last.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  result = dispatch thunk of Collection.isEmpty.getter();
  if (result)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 2;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
  }

  else
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v3 = dispatch thunk of Collection.subscript.read();
    v5 = v4[3];
    v7 = *v4;
    v6 = v4[1];
    *(a1 + 32) = v4[2];
    *(a1 + 48) = v5;
    *a1 = v7;
    *(a1 + 16) = v6;
    return v3(v8, 0);
  }

  return result;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

void *specialized BidirectionalCollection.last.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 8 * v1 + 24);
  v3 = v2;
  return v2;
}

uint64_t AttributedString.Runs.init(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v147 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v141 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v142 = &v127 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v127 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v127 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v146 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v127 - v18;
  v145 = a3;
  *a3 = a1;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  v149 = v19;
  RangeSet.init()();
  v150 = v17;
  v20 = v5;
  RangeSet.ranges.getter();
  (*(v6 + 16))(v16, v12, v5);
  v21 = *(v14 + 44);
  v22 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  v23 = *(v6 + 8);
  v143 = v12;
  v144 = v6 + 8;
  v148 = v23;
  v23(v12, v20);
  v24 = v16;
  dispatch thunk of Collection.endIndex.getter();
  v25 = *&v16[v21];
  *&v155 = v22;
  if (v25 != v159)
  {
    v153 = a1;
    v154 = v20;
    v151 = v21;
    v152 = v16;
    do
    {
      v35 = dispatch thunk of Collection.subscript.read();
      v37 = v36[4];
      v157 = v36[5];
      v158 = v37;
      v38 = v36[6];
      *(&v155 + 1) = v36[7];
      v156 = v38;
      v35(&v159, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v39 = *(a1 + 40);
      v171 = *(a1 + 24);
      v172 = v39;
      v173 = *(a1 + 56);
      swift_unknownObjectRetain();
      v40 = BigString.UnicodeScalarView.index(roundingDown:)();
      v42 = v41;
      v44 = v43;
      v46 = v45;
      swift_unknownObjectRelease();
      v47 = *(a1 + 40);
      v168 = *(a1 + 24);
      v169 = v47;
      v170 = *(a1 + 56);
      swift_unknownObjectRetain();
      v48 = BigString.UnicodeScalarView.index(roundingDown:)();
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v20 = v154;
      swift_unknownObjectRelease();
      *&v159 = v40;
      *(&v159 + 1) = v42;
      *&v160 = v44;
      *(&v160 + 1) = v46;
      *&v161 = v48;
      *(&v161 + 1) = v50;
      v162 = v52;
      v163 = v54;
      if ((v48 ^ v40) >= 0x400)
      {
        v55 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v55(&v165, 0);
      }

      v24 = v152;
      dispatch thunk of Collection.endIndex.getter();
      a1 = v153;
    }

    while (*(v24 + v151) != v159);
  }

  outlined destroy of TermOfAddress?(v24, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v26 = type metadata accessor for AttributedString.Runs();
  v27 = *(v26 + 24);
  v28 = v145;
  v29 = v20;
  (*(v146 + 16))(&v27[v145], v149, v150);
  v30 = v143;
  RangeSet.ranges.getter();
  v31 = RangeSet.Ranges.count.getter();
  v148(v30, v20);
  v32 = *(v26 + 28);
  LODWORD(v152) = v31 > 1;
  *(v28 + v32) = v152;
  v33 = v142;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v165 == v159)
  {
    v148(v33, v20);
    v34 = *(a1 + 72);
    if (v34)
    {
LABEL_4:
      v158 = *(v34 + 18);
LABEL_12:
      v157 = *(a1 + 96);
      v62 = *(a1 + 40);
      v159 = *(a1 + 24);
      v160 = v62;
      v161 = *(a1 + 56);
      v156 = BigString.startIndex.getter();
      v66 = v63;
      v67 = v64;
      v68 = v65;
      v69 = *(a1 + 72);
      v70 = *(a1 + 96);
      if (v69)
      {
        v71 = *(v69 + 18);
        *&v155 = *(a1 + 96);
        *(&v155 + 1) = v71;
        v72 = v65;
        v73 = v64;
        v74 = v63;
        v75 = *(v146 + 8);
        swift_unknownObjectRetain();
        v76 = v150;
        v75(v147, v150);
        v75(v149, v76);
        v66 = v74;
        v67 = v73;
        v68 = v72;
        v70 = v155;
        swift_unknownObjectRelease();
      }

      else
      {
        v77 = *(v146 + 8);
        v78 = v150;
        v77(v147, v150);
        v77(v149, v78);
        *(&v155 + 1) = 0;
      }

      v165 = *(a1 + 24);
      v79 = *(a1 + 56);
      v166 = *(a1 + 40);
      v167 = v79;
      result = BigString.startIndex.getter();
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v89 = -1;
      v90 = v156;
      v91 = v157;
      v92 = v156;
      v93 = v66;
      v94 = v67;
      v95 = v68;
      v96 = result;
      v97 = v81;
      v98 = v82;
      v99 = v83;
      v100 = -1;
      v101 = v158;
      goto LABEL_25;
    }

LABEL_11:
    v158 = 0;
    goto LABEL_12;
  }

  v56 = dispatch thunk of Collection.subscript.read();
  v58 = v57[1];
  v151 = *v57;
  v59 = v57[3];
  v139 = v57[2];
  v140 = v58;
  v138 = v59;
  v56(&v159, 0);
  v60 = v148;
  v148(v33, v20);
  v142 = v27;
  v61 = v141;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v60(v61, v20);
    v34 = *(a1 + 72);
    if (v34)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v102 = v61;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v103 = dispatch thunk of Collection.subscript.read();
  v96 = v104[4];
  v137 = v104[5];
  v106 = v104[6];
  v105 = v104[7];
  v103(&v159, 0);
  v154 = v29;
  v60(v102, v29);
  AttributedString.Guts.findRun(at:)(v151, v138, &v159);
  v107 = *(&v159 + 1);
  v157 = v159;
  v132 = *(&v160 + 1);
  v133 = v160;
  v108 = *(&v161 + 1);
  v109 = v162;
  v67 = v163;
  v136 = v164;
  v165 = *(a1 + 24);
  v110 = *(a1 + 56);
  v166 = *(a1 + 40);
  v167 = v110;
  v111 = BigString.endIndex.getter();
  v158 = v107;
  v156 = v108;
  v141 = v109;
  v134 = v105;
  v135 = v106;
  if ((v111 ^ v96) > 0x3FF)
  {
    AttributedString.Guts.findRun(at:)(v96, v105, &v159);
    v155 = v159;
    v88 = v160;
    v153 = *(&v161 + 1);
    v131 = v162;
    v129 = *(&v160 + 1);
    v130 = v163;
    v128 = v164;
    v120 = v143;
    v121 = v146;
    v122 = v150;
    RangeSet.ranges.getter();
    v123 = v154;
    v100 = RangeSet.Ranges.count.getter();
    v124 = *(v121 + 8);
    v124(v147, v122);
    v125 = v120;
    v66 = v141;
    v126 = v123;
    v87 = v129;
    v148(v125, v126);
    v124(v149, v122);
    v70 = v155;
    v90 = v156;
    v91 = v157;
    v83 = v128;
    v28 = v145;
    v82 = v130;
    v81 = v131;
    result = v153;
    v89 = 0;
    v86 = v152;
    v92 = v151;
    v94 = v139;
    v93 = v140;
    v97 = v137;
    v95 = v138;
    v98 = v135;
    v68 = v136;
    v99 = v134;
    v101 = v158;
  }

  else
  {
    v131 = v67;
    v112 = v154;
    v113 = *(a1 + 72);
    v114 = a1;
    if (v113)
    {
      v87 = *(a1 + 80);
    }

    else
    {
      v87 = 0;
    }

    v115 = *(v114 + 96);
    v116 = swift_unknownObjectRetain();
    *&v155 = v115;
    *(&v155 + 1) = specialized Rope._endPath.getter(v116);
    if (v113)
    {
      swift_unknownObjectRelease();
    }

    v28 = v145;
    v117 = v143;
    v118 = v150;
    RangeSet.ranges.getter();
    v100 = RangeSet.Ranges.count.getter();
    v119 = *(v146 + 8);
    v119(v147, v118);
    v148(v117, v112);
    v119(v149, v118);
    v89 = 0;
    v88 = 0;
    result = v96;
    v97 = v137;
    v95 = v138;
    v81 = v137;
    v99 = v134;
    v98 = v135;
    v82 = v135;
    v83 = v134;
    v86 = v152;
    v91 = v157;
    v101 = v158;
    v92 = v151;
    v94 = v139;
    v93 = v140;
    v90 = v156;
    v66 = v141;
    v67 = v131;
    v68 = v136;
    v70 = v155;
  }

  v84 = v132;
  v85 = v133;
LABEL_25:
  v28[1] = v84;
  v28[2] = v91;
  v28[3] = v101;
  v28[4] = v85;
  v28[5] = v90;
  v28[6] = v66;
  v28[7] = v67;
  v28[8] = v68;
  v28[9] = v92;
  v28[10] = v93;
  v28[11] = v94;
  v28[12] = v95;
  v28[13] = v89;
  *(v28 + 112) = 0;
  *(v28 + 113) = v86;
  v28[15] = v87;
  v28[16] = v70;
  v28[17] = *(&v155 + 1);
  v28[18] = v88;
  v28[19] = result;
  v28[20] = v81;
  v28[21] = v82;
  v28[22] = v83;
  v28[23] = v96;
  v28[24] = v97;
  v28[25] = v98;
  v28[26] = v99;
  v28[27] = v100;
  *(v28 + 224) = 0;
  *(v28 + 225) = v86;
  return result;
}

BOOL static AttributedString.Runs.Index.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[11];
  v3 = a1[11];
  v4 = v3 == 2;
  if (v2 != 2)
  {
    v4 = 0;
  }

  if (v3 == 2 || v2 == 2)
  {
    return v4;
  }

  else
  {
    return (a2[8] ^ a1[8]) < 0x400uLL;
  }
}

__n128 AttributedString.Runs.description.getter()
{
  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v421);
  v395 = &v389 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v435 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v415 = &v389 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v417 = &v389 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v389 - v7;
  v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd) - 8;
  MEMORY[0x1EEE9AC00](v434);
  v427 = &v389 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v430 = &v389 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v389 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v389 - v17;
  v19 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v19);
  v419 = &v389 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v389 - v22);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v391 = &v389 - v26;
  v27 = *v0;
  v423 = v28;
  v29 = *(v28 + 24);
  v460 = 0;
  v461 = 0xE000000000000000;
  v420 = v11;
  v393 = *(v11 + 16);
  v394 = v11 + 16;
  v393(v18, v0 + v29, v10, v25);
  v422 = v23;
  *v23 = v27;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  v416 = v27;
  v30 = v427;

  v424 = v15;
  RangeSet.init()();
  v436 = v10;
  v418 = v18;
  RangeSet.ranges.getter();
  v31 = v435;
  (*(v435 + 16))(v30, v8, v2);
  v32 = *(v434 + 44);
  v33 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  v34 = *(v31 + 8);
  v432 = v8;
  v434 = v34;
  v435 = v31 + 8;
  v34(v8, v2);
  dispatch thunk of Collection.endIndex.getter();
  v35 = *(v30 + v32);
  v433 = v2;
  if (v35 != v506)
  {
    v425 = v32;
    v426 = v33;
    do
    {
      v45 = dispatch thunk of Collection.subscript.read();
      v47 = v46[5];
      v431 = v46[4];
      v428 = v46[7];
      v429 = v47;
      v45(&v506, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v48 = v416;
      v49 = *(v416 + 40);
      v525 = *(v416 + 24);
      v526 = v49;
      v527 = *(v416 + 56);
      swift_unknownObjectRetain();
      v50 = BigString.UnicodeScalarView.index(roundingDown:)();
      v52 = v51;
      v54 = v53;
      v56 = v55;
      swift_unknownObjectRelease();
      v57 = *(v48 + 40);
      v522 = *(v48 + 24);
      v523 = v57;
      v524 = *(v48 + 56);
      swift_unknownObjectRetain();
      v58 = BigString.UnicodeScalarView.index(roundingDown:)();
      v60 = v59;
      v62 = v61;
      v64 = v63;
      swift_unknownObjectRelease();
      *&v506 = v50;
      *(&v506 + 1) = v52;
      *&v507 = v54;
      *(&v507 + 1) = v56;
      *&v508 = v58;
      *(&v508 + 1) = v60;
      v2 = v433;
      *&v509 = v62;
      *(&v509 + 1) = v64;
      if ((v58 ^ v50) >= 0x400)
      {
        v65 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v65(v462, 0);
      }

      v30 = v427;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v30 + v425) != v506);
  }

  outlined destroy of TermOfAddress?(v30, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v36 = v422;
  v37 = v423;
  v38 = v436;
  (v393)(v422 + *(v423 + 24), v424, v436);
  v39 = v432;
  RangeSet.ranges.getter();
  v40 = RangeSet.Ranges.count.getter();
  v41 = v434;
  (v434)(v39, v2);
  v42 = *(v37 + 28);
  v414 = v40 > 1;
  *(v36 + v42) = v414;
  v43 = v417;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v462[0] == v506)
  {
    v41(v43, v2);
    v44 = v416;
  }

  else
  {
    v66 = dispatch thunk of Collection.subscript.read();
    v68 = *v67;
    v69 = v67[1];
    v412 = v67[2];
    v413 = v69;
    v70 = v67[3];
    v410 = v68;
    v411 = v70;
    v66(&v506, 0);
    v41(v43, v2);
    v71 = v415;
    RangeSet.ranges.getter();
    v72 = dispatch thunk of Collection.isEmpty.getter();
    v44 = v416;
    if ((v72 & 1) == 0)
    {
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
      dispatch thunk of BidirectionalCollection.index(before:)();
      v342 = dispatch thunk of Collection.subscript.read();
      v344 = v343[4];
      v409 = v343[5];
      v345 = v343[7];
      v417 = v343[6];
      v342(&v506, 0);
      v41(v71, v2);
      v98 = v410;
      AttributedString.Guts.findRun(at:)(v410, v411, &v506);
      v431 = *(&v506 + 1);
      v405 = *(&v507 + 1);
      v406 = v507;
      v415 = *(&v508 + 1);
      v428 = *(&v509 + 1);
      v408 = v509;
      v429 = v506;
      v427 = v510;
      v346 = *(v44 + 40);
      v519 = *(v44 + 24);
      v520 = v346;
      v521 = *(v44 + 56);
      v347 = BigString.endIndex.getter();
      v407 = v345;
      if ((v347 ^ v344) >= 0x400)
      {
        v357 = v344;
        AttributedString.Guts.findRun(at:)(v344, v345, &v506);
        v425 = *(&v506 + 1);
        v426 = v506;
        v96 = v507;
        *&v404 = *(&v508 + 1);
        *(&v404 + 1) = *(&v507 + 1);
        v89 = *(&v509 + 1);
        v403 = v509;
        v91 = v510;
        v358 = v422;
        v359 = v432;
        v360 = v2;
        v361 = v436;
        RangeSet.ranges.getter();
        v108 = RangeSet.Ranges.count.getter();
        (v434)(v359, v360);
        v362 = *(v420 + 8);
        v362(v424, v361);
        v363 = v361;
        v75 = v358;
        v98 = v410;
        v362(v418, v363);
        v87 = v403;
        v95 = *(&v404 + 1);
        v86 = v404;
        v92 = v405;
        v104 = v357;
        v97 = 0;
        v109 = v421;
        v94 = v414;
        v110 = v431;
        v102 = v412;
        v99 = v413;
        v103 = v411;
        v77 = v415;
        v79 = v408;
        v105 = v409;
        v101 = v427;
        v100 = v428;
        v106 = v417;
        v93 = v406;
        v107 = v407;
      }

      else
      {
        v348 = v344;
        v349 = *(v44 + 72);
        if (v349)
        {
          v350 = *(v44 + 80);
        }

        else
        {
          v350 = 0;
        }

        *(&v404 + 1) = v350;
        v351 = *(v44 + 96);
        v352 = swift_unknownObjectRetain();
        v426 = v351;
        v425 = specialized Rope._endPath.getter(v352);
        if (v349)
        {
          swift_unknownObjectRelease();
        }

        v353 = v432;
        v354 = v436;
        RangeSet.ranges.getter();
        v355 = v433;
        v108 = RangeSet.Ranges.count.getter();
        (v434)(v353, v355);
        v356 = *(v420 + 8);
        v356(v424, v354);
        v75 = v422;
        v356(v418, v354);
        v97 = 0;
        v96 = 0;
        v104 = v348;
        v86 = v348;
        v79 = v408;
        v105 = v409;
        v87 = v409;
        v106 = v417;
        v89 = v417;
        v93 = v406;
        v107 = v407;
        v91 = v407;
        v109 = v421;
        v94 = v414;
        v110 = v431;
        v102 = v412;
        v99 = v413;
        v103 = v411;
        v77 = v415;
        v101 = v427;
        v100 = v428;
        v95 = *(&v404 + 1);
        v92 = v405;
      }

      goto LABEL_17;
    }

    v41(v71, v2);
  }

  v73 = *(v44 + 72);
  v74 = v420;
  v75 = v422;
  if (v73)
  {
    v431 = *(v73 + 18);
  }

  else
  {
    v431 = 0;
  }

  v429 = *(v44 + 96);
  v76 = *(v44 + 40);
  v519 = *(v44 + 24);
  v520 = v76;
  v521 = *(v44 + 56);
  v77 = BigString.startIndex.getter();
  v79 = v78;
  v427 = v81;
  v428 = v80;
  v82 = *(v44 + 72);
  v426 = *(v44 + 96);
  if (v82)
  {
    v425 = *(v82 + 18);
    v83 = *(v74 + 8);
    swift_unknownObjectRetain();
    v83(v424, v38);
    v83(v418, v38);
    swift_unknownObjectRelease();
  }

  else
  {
    v84 = *(v74 + 8);
    v84(v424, v38);
    v84(v418, v38);
    v425 = 0;
  }

  v85 = *(v44 + 40);
  v518[2] = *(v44 + 24);
  v518[3] = v85;
  v518[4] = *(v44 + 56);
  v86 = BigString.startIndex.getter();
  v89 = v88;
  v91 = v90;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = -1;
  v98 = v77;
  v99 = v79;
  v101 = v427;
  v100 = v428;
  v102 = v428;
  v103 = v427;
  v104 = v86;
  v105 = v87;
  v106 = v89;
  v107 = v91;
  v108 = -1;
  v109 = v421;
  v110 = v431;
LABEL_17:
  *(v75 + 8) = v92;
  *(v75 + 16) = v429;
  *(v75 + 24) = v110;
  *(v75 + 32) = v93;
  *(v75 + 40) = v77;
  *(v75 + 48) = v79;
  *(v75 + 56) = v100;
  *(v75 + 64) = v101;
  *(v75 + 72) = v98;
  *(v75 + 80) = v99;
  *(v75 + 88) = v102;
  *(v75 + 96) = v103;
  *(v75 + 104) = v97;
  *(v75 + 112) = 0;
  *(v75 + 113) = v94;
  v111 = v425;
  v112 = v426;
  *(v75 + 120) = v95;
  *(v75 + 128) = v112;
  *(v75 + 136) = v111;
  *(v75 + 144) = v96;
  *(v75 + 152) = v86;
  *(v75 + 160) = v87;
  *(v75 + 168) = v89;
  *(v75 + 176) = v91;
  *(v75 + 184) = v104;
  *(v75 + 192) = v105;
  *(v75 + 200) = v106;
  *(v75 + 208) = v107;
  *(v75 + 216) = v108;
  *(v75 + 224) = 0;
  *(v75 + 225) = v94;
  v113 = v391;
  outlined init with take of AttributedString.Runs(v75, v391);
  v114 = v419;
  outlined init with copy of AttributedString.Runs(v113, v419);
  v115 = v395;
  outlined init with copy of AttributedString.Runs(v114, v395);
  v116 = v115 + *(v109 + 36);
  v117 = *(v114 + 8);
  v118 = *(v114 + 16);
  v119 = *(v114 + 48);
  v457 = *(v114 + 32);
  v458 = v119;
  v120 = *(v114 + 72);
  v459 = *(v114 + 64);
  v455 = *(v114 + 80);
  v456 = v118;
  v454 = *(v114 + 112);
  v121 = *(v114 + 96);
  v453 = *(v114 + 104);
  outlined destroy of AttributedString.Runs(v114);
  v122 = v455;
  *(v116 + 8) = v456;
  v123 = v458;
  *(v116 + 24) = v457;
  *(v116 + 40) = v123;
  v426 = v117;
  v427 = v120;
  *v116 = v117;
  *(v116 + 56) = v459;
  *(v116 + 64) = v120;
  *(v116 + 72) = v122;
  v124 = v453;
  *(v116 + 88) = v121;
  *(v116 + 96) = v124;
  *(v116 + 104) = v454;
  v125 = *(v116 + 8);
  v126 = *(v116 + 16);
  v424 = *(v116 + 24);
  v425 = v125;
  v128 = *(v116 + 32);
  v127 = *(v116 + 40);
  v428 = v121;
  v429 = v128;
  v419 = v127;
  v129 = *(v116 + 56);
  v418 = *(v116 + 48);
  v421 = v126;
  v422 = v129;
  v130 = *(v116 + 72);
  v412 = *(v116 + 80);
  v413 = v130;
  v392 = (v420 + 8);
  LODWORD(v417) = *(v116 + 104);
  v390 = v116;
  v131 = *(v116 + 105);
  v133 = v432;
  v132 = v433;
  while (1)
  {
    *&v500 = v426;
    *(&v500 + 1) = v425;
    *&v501 = v421;
    *(&v501 + 1) = v424;
    *&v502 = v429;
    *(&v502 + 1) = v419;
    v503.n128_u64[0] = v418;
    v503.n128_u64[1] = v422;
    *&v504 = v427;
    *(&v504 + 1) = v413;
    *&v505[0] = v412;
    *(&v505[0] + 1) = v428;
    *&v505[1] = v124;
    BYTE8(v505[1]) = v417;
    BYTE9(v505[1]) = v131;
    v135 = v426;
    if (v426 == *(v115 + 120))
    {
      v136 = *(v115 + 208);
      if (v428 == 2)
      {
        if (v136 == 2)
        {
          goto LABEL_253;
        }
      }

      else if (v136 != 2 && (*(v115 + 184) ^ v427) < 0x400)
      {
        goto LABEL_253;
      }
    }

    v431 = v124;
    v137 = *(v115 + 184);
    v516 = *(v115 + 168);
    v517 = v137;
    v518[0] = *(v115 + 200);
    *(v518 + 10) = *(v115 + 210);
    v138 = *(v115 + 120);
    v512 = *(v115 + 104);
    v513 = v138;
    v139 = *(v115 + 152);
    v514 = *(v115 + 136);
    v515 = v139;
    v140 = *(v115 + 56);
    v508 = *(v115 + 40);
    v509 = v140;
    v141 = *(v115 + 88);
    v510 = *(v115 + 72);
    v511 = v141;
    v142 = *(v115 + 24);
    v506 = *(v115 + 8);
    v507 = v142;
    v143 = v506;
    v409 = v510;
    v144 = *(&v511 + 1);
    v145 = specialized Range.contains(_:)(&v500);
    if (v135 < v143 || (v145 & 1) == 0)
    {
      goto LABEL_260;
    }

    v146 = v143 < v135 || v144 == 2;
    v147 = v146;
    if (!v146)
    {
      if (v428 == 2)
      {
        goto LABEL_282;
      }

      if (v427 >> 10 < v409 >> 10)
      {
        goto LABEL_272;
      }
    }

    if (v513 < v135)
    {
      goto LABEL_261;
    }

    LODWORD(v408) = v147;
    v410 = v517;
    v148 = v135 < v513 || v428 == 2;
    v149 = v148;
    LODWORD(v406) = v149;
    if (!v148)
    {
      if (*(&v518[0] + 1) == 2)
      {
        goto LABEL_283;
      }

      if (v410 >> 10 < v427 >> 10)
      {
        goto LABEL_273;
      }
    }

    v415 = (v429 >> 11);
    v405 = v513;
    v426 = v135;
    v407 = *(&v518[0] + 1);
    if (v424 == 1 || (v150 = *v115, v425 != *(*v115 + 96)))
    {
      if (*(v115 + *(v423 + 28)))
      {
        goto LABEL_268;
      }

      v158 = *v115;
      v160 = *(*v115 + 72);
      v159 = *(*v115 + 80);
      v161 = v159;
      if (!v160)
      {
        v159 = 0;
      }

      if (v135 < 0 || v159 < v135)
      {
        goto LABEL_269;
      }

      v163 = *(v158 + 88);
      v162 = *(v158 + 96);
      v420 = *v115;
      v411 = v162;
      if (v160)
      {
        v165 = (v160 + 16);
        v164 = *(v160 + 16);
        if (*(v160 + 16))
        {
          if (v135 < v161)
          {
            v166 = *(v160 + 18);
            swift_unknownObjectRetain_n();
            if (v166)
            {
              v167 = v166;
              v168 = v160;
              do
              {
                v169 = *v165;
                if (*v165)
                {
                  v171 = 0;
                  v172 = (v168 + 32);
                  while (1)
                  {
                    v173 = *v172;
                    v172 += 3;
                    v174 = v135 - v173;
                    if (__OFSUB__(v135, v173))
                    {
                      goto LABEL_248;
                    }

                    if (__OFADD__(v174, 1))
                    {
                      goto LABEL_249;
                    }

                    if (v174 + 1 < 1)
                    {
                      v169 = v171;
                      goto LABEL_62;
                    }

                    ++v171;
                    v135 = v174;
                    if (v169 == v171)
                    {
                      goto LABEL_71;
                    }
                  }
                }

                v174 = v135;
LABEL_71:
                if (v174)
                {
                  goto LABEL_257;
                }

                v135 = 0;
LABEL_62:
                v167 = (v169 << ((4 * v166 + 8) & 0x3C)) | ((-15 << ((4 * v166 + 8) & 0x3C)) - 1) & v167;
                v166 = *(v168 + 24 + 24 * v169);
                swift_unknownObjectRetain();
                swift_unknownObjectRelease();
                v170 = v166;
                v165 = (v166 + 16);
                LODWORD(v166) = *(v166 + 18);
                v168 = v170;
              }

              while (v166);
              v164 = *v165;
              if (*v165)
              {
                goto LABEL_79;
              }

              v179 = 0;
              v133 = v432;
              v132 = v433;
LABEL_84:
              v181 = v179;
              if (!v135)
              {
LABEL_85:
                v182 = v170;
                swift_unknownObjectRelease();
                v177 = v182;
                v176 = v167 & 0xFFFFFFFFFFFFF0FFLL | (v181 << 8);
                *&v404 = v176;
                *(&v404 + 1) = v182;
                goto LABEL_74;
              }

LABEL_280:
              __break(1u);
              goto LABEL_281;
            }

            v167 = 0;
            v170 = v160;
LABEL_79:
            v133 = v432;
            v132 = v433;
            v180 = 0;
            v179 = v164;
            v181 = v135 & ~(v135 >> 63);
            while ((v135 ^ v180) != 0x8000000000000000)
            {
              if (v181 == v180)
              {
                goto LABEL_85;
              }

              if (v179 == ++v180)
              {
                v135 -= v180;
                goto LABEL_84;
              }
            }

            goto LABEL_256;
          }
        }
      }

      v175 = swift_unknownObjectRetain();
      v176 = specialized Rope._endPath.getter(v175);
      v177 = 0;
      v133 = v432;
      v404 = v176;
      if (v160)
      {
LABEL_74:
        v178 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v411, v176, v177, v160, v161, v163);
        swift_unknownObjectRelease();
      }

      else
      {
        v178 = 0;
      }

      v151 = v422;
      v150 = v420;
    }

    else
    {
      v151 = v422;
      if (v422 == 2)
      {
        v152 = *(v150 + 72);
        if (v152)
        {
          v154 = *(v150 + 80);
          v153 = *(v150 + 88);
          swift_unknownObjectRetain();
          v156 = v424;
          v155 = v425;
          v157 = v421;
          specialized Rope._Node.distanceFromStart<A>(to:in:)(v425, v421, v424, v152, v154, v153);
          swift_unknownObjectRelease();
        }

        else
        {
          v156 = v424;
          v155 = v425;
          v157 = v421;
        }

        v396 = 0;
        v414 = 1;
        *&v404 = v157;
        *(&v404 + 1) = v156;
        v411 = v155;
        goto LABEL_93;
      }

      v411 = v425;
      *&v404 = v421;
      *(&v404 + 1) = v424;
      v178 = v415;
    }

    v414 = v151 == 2;
    v396 = v151 != 2;
    if (v151 != 2 && v415 == v178)
    {
      v183 = *(v150 + 40);
      v491 = *(v150 + 24);
      v492 = v183;
      v420 = v150;
      v493 = *(v150 + 56);
      swift_unknownObjectRetain();
      v184 = BigString.UTF8View.index(roundingDown:)();
      v186 = v185;
      v188 = v187;
      v190 = v189;
      swift_unknownObjectRelease();
      v414 = 0;
      goto LABEL_94;
    }

LABEL_93:
    v191 = *(v150 + 24);
    v192 = *(v150 + 56);
    v498 = *(v150 + 40);
    v499 = v192;
    v193 = *(v150 + 40);
    v494 = *(v150 + 24);
    v495 = v193;
    v420 = v150;
    v496 = *(v150 + 56);
    v497 = v191;
    BigString.startIndex.getter();
    v528[0] = v497;
    v528[1] = v498;
    v529 = v499;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v528, &v446);
    v184 = BigString.UTF8View.index(_:offsetBy:)();
    v186 = v194;
    v188 = v195;
    v190 = v196;
    outlined destroy of BigString(&v497);
    v132 = v433;
    v115 = v395;
LABEL_94:
    v197 = v434;
    if (v417)
    {
      v400 = v190;
      v401 = v188;
      v402 = v186;
      v403 = v184;
      if (v428 != 2)
      {
        v184 = v427;
      }

      RangeSet.ranges.getter();
      v198 = RangeSet.Ranges.count.getter();
      v197(v133, v132);
      if (v198 < 1)
      {
LABEL_247:
        __break(1u);
LABEL_248:
        __break(1u);
LABEL_249:
        __break(1u);
        goto LABEL_250;
      }

      v199 = 0;
      v200 = v184 >> 10;
      while (!__OFADD__(v199, v198))
      {
        v201 = (v199 + v198) / 2;
        v202 = v115;
        v203 = v432;
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        (v434)(v203, v132);
        v204 = v446;
        if (v200 >= v446 >> 10)
        {
          v205 = v449;
          if (v200 < v449 >> 10)
          {
            v206 = v447;
            v208 = *(&v448 + 1);
            v207 = v448;
            v210 = v418;
            v209 = v419;
            v186 = v402;
            v184 = v403;
            v190 = v400;
            v188 = v401;
            goto LABEL_109;
          }

          v199 = v201 + 1;
          v201 = v198;
        }

        v198 = v201;
        v132 = v433;
        v115 = v202;
        if (v199 >= v201)
        {
          goto LABEL_247;
        }
      }

      __break(1u);
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    v197(v133, v132);
    v204 = v446;
    v206 = v447;
    v208 = *(&v448 + 1);
    v207 = v448;
    v205 = v449;
    v210 = v418;
    v209 = v419;
    if (v428 != 2 && (v427 >> 10 < v446 >> 10 || v427 >> 10 >= v449 >> 10))
    {
      goto LABEL_278;
    }

LABEL_109:
    v401 = v208;
    v402 = v207;
    v403 = v206;
    v211 = v429;
    v212 = v422;
    if (v414)
    {
      v211 = v184;
      v209 = v186;
      v210 = v188;
      v212 = v190;
    }

    v398 = v209;
    v399 = v210;
    v400 = v212;
    if (v428 == 2)
    {
      v213 = v184;
    }

    else
    {
      v213 = v427;
    }

    if (v428 == 2)
    {
      v214 = v186;
    }

    else
    {
      v214 = v413;
    }

    v215 = v412;
    if (v428 == 2)
    {
      v215 = v188;
    }

    v412 = v215;
    v413 = v214;
    if (v428 == 2)
    {
      v216 = v190;
    }

    else
    {
      v216 = v428;
    }

    v397 = v216;
    v217 = v420;
    v218 = *(v420 + 72);
    v219 = *(v420 + 80);
    v220 = *(v420 + 88);
    v221 = *(v420 + 96);
    swift_unknownObjectRetain();
    v222 = specialized Rope.subscript.getter(v411, v404, *(&v404 + 1), v218, v219, v220, v221);
    v224 = v223;
    v411 = v225;
    swift_unknownObjectRelease();
    if (v204 >> 10 >= v211 >> 10)
    {
      v226 = v204;
    }

    else
    {
      v226 = v211;
    }

    if (v204 >> 10 >= v211 >> 10)
    {
      v227 = v403;
    }

    else
    {
      v227 = v398;
    }

    if (v204 >> 10 >= v211 >> 10)
    {
      v228 = v402;
    }

    else
    {
      v228 = v399;
    }

    if (v204 >> 10 >= v211 >> 10)
    {
      v229 = v401;
    }

    else
    {
      v229 = v400;
    }

    v230 = v222 + (v211 >> 11);
    if (__OFADD__(v222, v211 >> 11))
    {
      goto LABEL_262;
    }

    if ((v205 >> 11) < v230)
    {
      v230 = v205 >> 11;
    }

    v231 = *(v217 + 24);
    v232 = *(v217 + 40);
    v233 = *(v217 + 56);
    v402 = (v217 + 24);
    v488 = v231;
    v489 = v232;
    v490 = v233;
    if (__OFSUB__(v230, v213 >> 11))
    {
      goto LABEL_263;
    }

    v403 = v226;
    *&v404 = v228;
    *(&v404 + 1) = v229;
    swift_unknownObjectRetain();
    v234 = BigString.UTF8View.index(_:offsetBy:)();
    v236 = v235;
    v238 = v237;
    v240 = v239;
    swift_unknownObjectRelease();
    v446 = v224;
    v447 = v411;
    *&v448 = v403;
    *(&v448 + 1) = v227;
    v449 = v404;
    *&v450 = v234;
    *(&v450 + 1) = v236;
    *&v451 = v238;
    *(&v451 + 1) = v240;
    v452 = v217;
    if (v408)
    {
      v242 = v425;
      v241 = v426;
      v115 = v395;
      v243 = v423;
      v244 = v424;
      v245 = v429;
      v246 = v421;
      v247 = v407;
      if (v426 >= v405)
      {
        if (v407 == 2)
        {
          goto LABEL_284;
        }

        if (v428 != 2)
        {
          v248 = v427 >> 10;
          goto LABEL_147;
        }
      }
    }

    else
    {
      v115 = v395;
      v242 = v425;
      v241 = v426;
      v244 = v424;
      v246 = v421;
      v247 = v407;
      if (v428 == 2)
      {
        goto LABEL_285;
      }

      v248 = v427 >> 10;
      v243 = v423;
      v245 = v429;
      if (v427 >> 10 < v409 >> 10)
      {
        goto LABEL_274;
      }

      if (v426 >= v405)
      {
        if (v407 == 2)
        {
          goto LABEL_284;
        }

LABEL_147:
        if (v248 >= v410 >> 10)
        {
          goto LABEL_277;
        }
      }
    }

    if (!v406)
    {
      if (v247 == 2)
      {
        goto LABEL_286;
      }

      if (v410 >> 10 < v427 >> 10)
      {
        goto LABEL_275;
      }
    }

    v429 = v245;
    if (v244 != 1 && v242 == *(v217 + 96))
    {
      if (!v414)
      {

        v275 = v415;
        goto LABEL_196;
      }

      v249 = *(v217 + 72);
      if (v249)
      {
        v250 = *(v420 + 88);
        v251 = *(v420 + 80);

        swift_unknownObjectRetain();
        v252 = v242;
        v253 = v246;
        v254 = v244;
        v255 = v249;
        v256 = v251;
        v257 = v250;
        v217 = v420;
LABEL_193:
        v275 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v252, v253, v254, v255, v256, v257);
        swift_unknownObjectRelease();
        goto LABEL_196;
      }

      goto LABEL_195;
    }

    if (*(v115 + *(v243 + 28)))
    {
      goto LABEL_270;
    }

    v258 = *(v217 + 72);
    v259 = *(v217 + 80);
    if (v258)
    {
      v260 = *(v217 + 80);
    }

    else
    {
      v260 = 0;
    }

    if (v241 < 0 || v260 < v241)
    {
      goto LABEL_271;
    }

    v261 = *(v217 + 96);
    v424 = *(v217 + 88);
    v425 = v261;
    if (v258)
    {
      v262 = (v258 + 16);
      v263 = *(v258 + 16);
      if (*(v258 + 16))
      {
        if (v241 < v259)
        {
          break;
        }
      }
    }

    v274 = swift_unknownObjectRetain();
    v242 = v425;
    v246 = specialized Rope._endPath.getter(v274);
    v244 = 0;
    if (v258)
    {
LABEL_192:
      v252 = v242;
      v253 = v246;
      v254 = v244;
      v255 = v258;
      v256 = v259;
      v257 = v424;
      goto LABEL_193;
    }

LABEL_195:
    v275 = 0;
LABEL_196:
    v281 = v396;
    if (v415 != v275)
    {
      v281 = 0;
    }

    v413 = v275;
    if (v281)
    {
      v282 = *(v217 + 40);
      v479 = *(v217 + 24);
      v480 = v282;
      v481 = *(v217 + 56);
      swift_unknownObjectRetain();
      v412 = BigString.UTF8View.index(roundingDown:)();
      swift_unknownObjectRelease();
      v283 = v242;
      v284 = v246;
      v285 = v426;
    }

    else
    {
      v286 = *v402;
      v287 = v402[2];
      v486 = v402[1];
      v487 = v287;
      v288 = *(v217 + 40);
      v482 = *(v217 + 24);
      v483 = v288;
      v484 = *(v217 + 56);
      v485 = v286;
      v289 = BigString.startIndex.getter();
      v424 = v244;
      v425 = v289;
      v412 = v290;
      v421 = v246;
      v291 = v242;
      v530[0] = v485;
      v530[1] = v486;
      v531 = v487;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v530, &v437);
      v285 = v426;
      v244 = v424;
      v284 = v421;
      v412 = BigString.UTF8View.index(_:offsetBy:)();
      outlined destroy of BigString(&v485);
      v283 = v291;
    }

    v292 = *(v217 + 72);
    v293 = *(v217 + 80);
    v295 = *(v217 + 88);
    v294 = *(v217 + 96);
    v437 = v283;
    v438 = v284;
    v439 = v244;
    v296 = __OFADD__(v285, 1);
    v297 = v285 + 1;
    if (v296)
    {
      goto LABEL_264;
    }

    v426 = v297;
    v298 = v283;
    swift_unknownObjectRetain();
    v299 = v292;
    v300 = v244;
    v424 = v293;
    v425 = v299;
    v301 = specialized Rope.subscript.getter(v298, v284, v244, v299, v293, v295, v294);

    v296 = __OFADD__(v413, v301);
    v302 = v413 + v301;
    if (v296)
    {
      goto LABEL_265;
    }

    if (v298 != v294)
    {
      goto LABEL_266;
    }

    if (v284 >= specialized Rope._endPath.getter(v425))
    {
      goto LABEL_267;
    }

    if (v244 && (v303 = (4 * *(v244 + 18) + 8) & 0x3C, v304 = ((v284 >> v303) & 0xF) + 1, v304 < *(v300 + 16)))
    {
      swift_unknownObjectRelease();
      v421 = (v304 << v303) | ((-15 << v303) - 1) & v284;
      v132 = v433;
      v305 = v436;
    }

    else
    {
      v306 = v425;
      v307 = specialized Rope._Node.formSuccessor(of:)(&v437, v425);
      v132 = v433;
      if (v307)
      {
        swift_unknownObjectRelease();
        v421 = v438;
      }

      else
      {
        v308 = specialized Rope._endPath.getter(v306);
        swift_unknownObjectRelease();
        v437 = v298;
        v438 = v308;
        v421 = v308;
        v439 = 0;
      }

      v305 = v436;
    }

    v309 = *(v423 + 24);
    v133 = v432;
    v424 = v439;
    v425 = v437;
    if (v417)
    {
      v310 = v115;
      (v393)(v430, v115 + v309, v305);
      if (v428 == 2)
      {
        v311 = v412;
      }

      else
      {
        v311 = v427;
      }

      RangeSet.ranges.getter();
      v115 = RangeSet.Ranges.count.getter();
      (v434)(v133, v132);
      if (v115 >= 1)
      {
        v312 = 0;
        v313 = v311 >> 10;
        while (!__OFADD__(v312, v115))
        {
          v314 = (v312 + v115) / 2;
          RangeSet.ranges.getter();
          RangeSet.Ranges.subscript.getter();
          (v434)(v133, v132);
          if (v313 < v437 >> 10)
          {
            v115 = (v312 + v115) / 2;
            if (v312 >= v314)
            {
              goto LABEL_250;
            }
          }

          else
          {
            v431 = (v312 + v115) / 2;
            v315 = v441;
            if (v313 < v441 >> 10)
            {
              (*v392)(v430, v436);
              v115 = v310;
              v316 = v434;
              if (v302 < (v315 >> 11))
              {
                goto LABEL_225;
              }

              goto LABEL_228;
            }

            v312 = v431 + 1;
            if (v431 + 1 >= v115)
            {
              goto LABEL_250;
            }
          }
        }

        goto LABEL_255;
      }

LABEL_250:
      __break(1u);
LABEL_251:
      __break(1u);
LABEL_252:
      __break(1u);
LABEL_253:
      v364 = v505[0];
      v366 = v390;
      v365 = v391;
      v390[4] = v504;
      v366[5] = v364;
      *(v366 + 90) = *(v505 + 10);
      v367 = v501;
      *v366 = v500;
      v366[1] = v367;
      v368 = v503;
      v366[2] = v502;
      v366[3] = v368;
      outlined destroy of AttributedString.Runs(v365);
      outlined destroy of TermOfAddress?(v115, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
      return result;
    }

    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    v316 = v434;
    (v434)(v133, v132);
    if (v302 >= (v441 >> 11))
    {
LABEL_228:
      if (__OFADD__(v431, 1))
      {
        goto LABEL_276;
      }

      v326 = v423;
      ++v431;
      RangeSet.ranges.getter();
      v327 = RangeSet.Ranges.count.getter();
      v316(v133, v132);
      if (v431 == v327)
      {
        v328 = *(v115 + 120);
        v425 = *(v115 + 128);
        v426 = v328;
        v329 = *(v115 + 136);
        v424 = *(v115 + 144);
        v330 = *(v115 + 152);
        v331 = *(v115 + 160);
        v418 = *(v115 + 168);
        v419 = v331;
        v333 = *(v115 + 176);
        v332 = *(v115 + 184);
        v421 = v329;
        v422 = v333;
        v427 = v332;
        v334 = *(v115 + 192);
        v412 = *(v115 + 200);
        v413 = v334;
        v335 = *(v115 + 216);
        v428 = *(v115 + 208);
        v429 = v330;
        v431 = v335;
        LODWORD(v417) = *(v115 + 224);
        v131 = *(v115 + 225);
      }

      else
      {
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        v316(v133, v132);
        v427 = v437;
        v428 = v440;
        v412 = v439;
        v413 = v438;
        AttributedString.Guts.findRun(at:)(v437, v440, &v437);
        LODWORD(v417) = 0;
        v424 = v439;
        v425 = v437;
        v426 = v440;
        v429 = v442;
        v418 = v444;
        v419 = v443;
        v421 = v438;
        v422 = v445;
        v131 = *(v115 + *(v326 + 28));
      }
    }

    else
    {
LABEL_225:
      if (v414)
      {
        v317 = *v402;
        v318 = v402[2];
        v477 = v402[1];
        v478 = v318;
        v319 = *(v420 + 40);
        v473 = *(v420 + 24);
        v474 = v319;
        v475 = *(v420 + 56);
        v476 = v317;
        BigString.startIndex.getter();
        v532[0] = v476;
        v532[1] = v477;
        v533 = v478;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v532, &v437);
        v132 = v433;
        v429 = BigString.UTF8View.index(_:offsetBy:)();
        v321 = v320;
        v323 = v322;
        v325 = v324;
        outlined destroy of BigString(&v476);
      }

      else
      {
        v336 = *(v420 + 40);
        v470 = *(v420 + 24);
        v471 = v336;
        v472 = *(v420 + 56);
        if (__OFSUB__(v302, v415))
        {
          goto LABEL_279;
        }

        swift_unknownObjectRetain();
        v429 = BigString.UTF8View.index(_:offsetBy:)();
        v321 = v337;
        v323 = v338;
        v325 = v339;
        swift_unknownObjectRelease();
      }

      LODWORD(v417) = 0;
      v131 = *(v115 + *(v423 + 28));
      v427 = v429;
      v428 = v325;
      v418 = v323;
      v419 = v321;
      v412 = v323;
      v413 = v321;
      v422 = v325;
    }

    v340 = *(v416 + 40);
    v467 = *(v416 + 24);
    v468 = v340;
    v469 = *(v416 + 56);
    v463 = v448;
    v464 = v449;
    v465 = v450;
    v466 = v451;
    swift_unknownObjectRetain();
    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    MEMORY[0x1865CAF60](v462);
    v341 = v460 & 0xFFFFFFFFFFFFLL;
    if ((v461 & 0x2000000000000000) != 0)
    {
      v341 = HIBYTE(v461) & 0xF;
    }

    if (v341)
    {
      MEMORY[0x1865CB0E0](10, 0xE100000000000000);
    }

    v437 = 0;
    v438 = 0xE000000000000000;
    MEMORY[0x1865CB0E0]();

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);
    v134 = v446;

    specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v134);

    MEMORY[0x1865CB0E0](v437, v438);

    outlined destroy of AttributedString.Runs.Run(&v446);
    v124 = v431;
  }

  v421 = v259;
  v264 = *(v258 + 18);
  swift_unknownObjectRetain_n();

  if (!v264)
  {
    v266 = 0;
    v265 = v426;
    v276 = v258;
LABEL_185:
    v242 = v425;
    v278 = 0;
    v277 = v263;
    v279 = v265 & ~(v265 >> 63);
    while ((v265 ^ v278) != 0x8000000000000000)
    {
      if (v279 == v278)
      {
        goto LABEL_191;
      }

      if (v263 == ++v278)
      {
        v265 -= v278;
        goto LABEL_190;
      }
    }

LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
LABEL_264:
    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
    goto LABEL_280;
  }

  v265 = v426;
  v266 = v264;
  v267 = v258;
  do
  {
    v268 = *v262;
    if (*v262)
    {
      v270 = 0;
      v271 = (v267 + 32);
      while (1)
      {
        v272 = *v271;
        v271 += 3;
        v273 = v265 - v272;
        if (__OFSUB__(v265, v272))
        {
          goto LABEL_251;
        }

        if (__OFADD__(v273, 1))
        {
          goto LABEL_252;
        }

        if (v273 + 1 < 1)
        {
          v268 = v270;
          goto LABEL_168;
        }

        ++v270;
        v265 = v273;
        if (v268 == v270)
        {
          goto LABEL_177;
        }
      }
    }

    v273 = v265;
LABEL_177:
    if (v273)
    {
      goto LABEL_259;
    }

    v265 = 0;
LABEL_168:
    v266 = (v268 << ((4 * v264 + 8) & 0x3C)) | ((-15 << ((4 * v264 + 8) & 0x3C)) - 1) & v266;
    v269 = *(v267 + 24 + 24 * v268);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v262 = (v269 + 16);
    LOBYTE(v264) = *(v269 + 18);
    v267 = v269;
  }

  while (v264);
  v276 = v269;
  v263 = *v262;
  if (*v262)
  {
    goto LABEL_185;
  }

  v277 = 0;
  v242 = v425;
LABEL_190:
  v279 = v277;
  if (!v265)
  {
LABEL_191:
    v280 = v276;
    swift_unknownObjectRelease();
    v246 = v266 & 0xFFFFFFFFFFFFF0FFLL | (v279 << 8);
    v244 = v280;
    v217 = v420;
    v259 = v421;
    goto LABEL_192;
  }

LABEL_281:
  __break(1u);
LABEL_282:
  v370 = v505[0];
  v371 = v390;
  v390[4] = v504;
  v371[5] = v370;
  *(v371 + 90) = *(v505 + 10);
  v372 = v501;
  *v371 = v500;
  v371[1] = v372;
  v373 = v503;
  v371[2] = v502;
  v371[3] = v373;
  __break(1u);
LABEL_283:
  v374 = v505[0];
  v375 = v390;
  v390[4] = v504;
  v375[5] = v374;
  *(v375 + 90) = *(v505 + 10);
  v376 = v501;
  *v375 = v500;
  v375[1] = v376;
  v377 = v503;
  v375[2] = v502;
  v375[3] = v377;
  __break(1u);
LABEL_284:
  v378 = v505[0];
  v379 = v390;
  v390[4] = v504;
  v379[5] = v378;
  *(v379 + 90) = *(v505 + 10);
  v380 = v501;
  *v379 = v500;
  v379[1] = v380;
  v381 = v503;
  v379[2] = v502;
  v379[3] = v381;
  __break(1u);
LABEL_285:
  v382 = v505[0];
  v383 = v390;
  v390[4] = v504;
  v383[5] = v382;
  *(v383 + 90) = *(v505 + 10);
  v384 = v501;
  *v383 = v500;
  v383[1] = v384;
  v385 = v503;
  v383[2] = v502;
  v383[3] = v385;
  __break(1u);
LABEL_286:
  result = v503;
  v386 = v505[0];
  v387 = v390;
  v390[4] = v504;
  v387[5] = v386;
  *(v387 + 90) = *(v505 + 10);
  v388 = v501;
  *v387 = v500;
  v387[1] = v388;
  v387[2] = v502;
  v387[3] = result;
  __break(1u);
  return result;
}

uint64_t static AttributedString.Runs.Index.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  v3 = a1[8] >> 10 < a2[8] >> 10;
  if (a1[11] == 2)
  {
    v3 = 1;
  }

  return *a2 >= *a1 && a2[11] != 2 && v3;
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance AttributedString.Runs.Index(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  v3 = a1[8] >> 10 < a2[8] >> 10;
  if (a1[11] == 2)
  {
    v3 = 1;
  }

  return *a2 >= *a1 && a2[11] != 2 && v3;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance AttributedString.Runs.Index(void *a1, void *a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  if (*a1 < *a2 || a1[11] == 2)
  {
    return 1;
  }

  if (a2[11] == 2)
  {
    return 0;
  }

  return a2[8] >> 10 >= a1[8] >> 10;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance AttributedString.Runs.Index(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  if (*a2 < *a1 || a2[11] == 2)
  {
    return 1;
  }

  if (a1[11] == 2)
  {
    return 0;
  }

  return a1[8] >> 10 >= a2[8] >> 10;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance AttributedString.Runs.Index(void *a1, void *a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  v3 = a2[8] >> 10 < a1[8] >> 10;
  if (a2[11] == 2)
  {
    v3 = 1;
  }

  return *a1 >= *a2 && a1[11] != 2 && v3;
}

uint64_t AttributedString.Runs.Index.distance(to:)(uint64_t result)
{
  if (*(result + 105) & 1) != 0 || (*(v1 + 105))
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = __OFSUB__(*result, *v1);
  result = *result - *v1;
  if (v2)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t AttributedString.Runs.Index.advanced(by:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 105))
  {
    __break(1u);
  }

  else if (!__OFADD__(*v2, result))
  {
    *a2 = *v2 + result;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 2;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    *(a2 + 88) = xmmword_18121D490;
    *(a2 + 104) = 1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Strideable.distance(to:) in conformance AttributedString.Runs.Index@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 105) & 1) != 0 || (*(v2 + 105))
  {
    __break(1u);
  }

  else if (!__OFSUB__(*result, *v2))
  {
    *a2 = *result - *v2;
    return result;
  }

  __break(1u);
  return result;
}

void *protocol witness for Strideable.advanced(by:) in conformance AttributedString.Runs.Index@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 105))
  {
    __break(1u);
  }

  else if (!__OFADD__(*v2, *result))
  {
    *a2 = *v2 + *result;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 2;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    *(a2 + 88) = xmmword_18121D490;
    *(a2 + 104) = 1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Strideable._step(after:from:by:) in conformance AttributedString.Runs.Index(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*(a4 + 105))
  {
    __break(1u);
  }

  else if (!__OFADD__(*a4, *a6))
  {
    *result = *a4 + *a6;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 1;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 2;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 64) = 0;
    *(result + 88) = xmmword_18121D490;
    *(result + 104) = 1;
    return 0;
  }

  __break(1u);
  return result;
}

__n128 AttributedString.Runs._resolve(_:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v30 = *a1;
  v31 = v4;
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 6);
  v8 = *(a1 + 7);
  v9 = a1[5];
  v35 = a1[4];
  v36[0] = v9;
  *(v36 + 10) = *(a1 + 90);
  *&v32 = v5;
  *(&v32 + 1) = v6;
  v33 = v7;
  v34 = v8;
  AttributedString.Runs._resolveRun(_:)(&v30, v37);
  v27 = v37[1];
  v28 = v37[0];
  v10 = v38;
  v11 = *v2;
  if (v8 == 2 || v5 >> 11 != v38)
  {
    v20 = *(v11 + 24);
    v21 = *(v11 + 56);
    v31 = *(v11 + 40);
    v32 = v21;
    v30 = v20;
    v22 = *(v11 + 40);
    v39 = *(v11 + 24);
    v40 = v22;
    v41 = *(v11 + 56);
    BigString.startIndex.getter();
    v42[0] = v30;
    v42[1] = v31;
    v43 = v32;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v42, v29);
    v13 = BigString.UTF8View.index(_:offsetBy:)();
    v15 = v23;
    v17 = v24;
    v19 = v25;
    outlined destroy of BigString(&v30);
  }

  else
  {
    v12 = *(v11 + 40);
    v30 = *(v11 + 24);
    v31 = v12;
    v32 = *(v11 + 56);
    swift_unknownObjectRetain();
    v13 = BigString.UTF8View.index(roundingDown:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    swift_unknownObjectRelease();
  }

  result = v27;
  *a2 = v28;
  *(a2 + 16) = v27;
  *(a2 + 32) = v10;
  *(a2 + 40) = v13;
  *(a2 + 48) = v15;
  *(a2 + 56) = v17;
  *(a2 + 64) = v19;
  return result;
}

__n128 AttributedString.Runs.startIndex.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 56);
  v3 = *(v1 + 88);
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v3;
  *(a1 + 90) = *(v1 + 98);
  v4 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = result;
  return result;
}

__n128 AttributedString.Runs.endIndex.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 168);
  v3 = *(v1 + 200);
  *(a1 + 64) = *(v1 + 184);
  *(a1 + 80) = v3;
  *(a1 + 90) = *(v1 + 210);
  v4 = *(v1 + 136);
  *a1 = *(v1 + 120);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 152);
  *(a1 + 48) = result;
  return result;
}

void AttributedString.Runs.index(after:)(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v136 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v148 = &v125 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v141 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v125 - v8;
  v10 = *a1;
  v11 = v2[1];
  if (*a1 < v11)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v135 = a2;
  v13 = *(a1 + 8);
  v12 = *(a1 + 16);
  v15 = *(a1 + 24);
  v14 = *(a1 + 32);
  v16 = *(a1 + 40);
  v132 = *(a1 + 48);
  v133 = v16;
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 88);
  v20 = *(a1 + 96);
  v21 = *(a1 + 104);
  v22 = v11 < v10 || v2[12] == 2;
  v23 = v22;
  v24 = v2[9];
  v25 = v10;
  if (!v22)
  {
    if (v19 == 2)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v18 >> 10 < v24 >> 10)
    {
      goto LABEL_123;
    }
  }

  v26 = v2[15];
  v27 = v2[23];
  v125 = v2 + 15;
  v28 = v2[26];
  if (v25 >= v26)
  {
    if (v26 < v25)
    {
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if (v28 == 2)
    {
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    if (v19 == 2)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_21;
    }

    if (v18 >> 10 >= v27 >> 10)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }
  }

  if ((v23 & 1) == 0)
  {
    if (v19 == 2)
    {
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    if (v18 >> 10 < v24 >> 10)
    {
      goto LABEL_127;
    }
  }

LABEL_21:
  if (v26 < v25)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  if (v25 >= v26 && v19 != 2)
  {
    if (v28 == 2)
    {
LABEL_134:
      __break(1u);
      return;
    }

    if (v27 >> 10 < v18 >> 10)
    {
      goto LABEL_125;
    }
  }

  v137 = v21;
  v129 = v19;
  v130 = v18;
  v131 = v14;
  v145 = v14 >> 11;
  v146 = v12;
  v149 = v5;
  v139 = v17;
  v140 = v2;
  v144 = v25;
  if (v15 == 1 || (v29 = *v2, v13 != *(*v2 + 96)))
  {
    if (*(v2 + *(type metadata accessor for AttributedString.Runs() + 28)))
    {
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    v29 = *v2;
    v34 = *(*v2 + 80);
    v143 = *(*v2 + 72);
    if (v143)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    if (v25 < 0 || v35 < v25)
    {
      goto LABEL_122;
    }

    v36 = v29[12];
    v142 = v29[11];
    v147 = v36;
    v37 = v143;
    v134 = v34;
    if (v143 && v25 < v34 && (v39 = (v143 + 16), v38 = *(v143 + 16), *(v143 + 16)))
    {
      v138 = v29;
      v40 = *(v143 + 18);
      swift_unknownObjectRetain_n();
      v15 = v37;
      if (!v40)
      {
        v42 = 0;
        v41 = v144;
LABEL_60:
        v13 = v147;
        v55 = 0;
        v54 = v38;
        v56 = v41 & ~(v41 >> 63);
        while ((v41 ^ v55) != 0x8000000000000000)
        {
          if (v56 == v55)
          {
            goto LABEL_66;
          }

          if (v54 == ++v55)
          {
            v41 -= v55;
            goto LABEL_65;
          }
        }

LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v41 = v144;
      v42 = v40;
      v43 = v15;
      do
      {
        v44 = *v39;
        if (*v39)
        {
          v45 = 0;
          v46 = (v43 + 32);
          while (1)
          {
            v47 = *v46;
            v46 += 3;
            v48 = v41 - v47;
            if (__OFSUB__(v41, v47))
            {
              break;
            }

            if (__OFADD__(v48, 1))
            {
              goto LABEL_111;
            }

            if (v48 + 1 < 1)
            {
              v44 = v45;
              goto LABEL_43;
            }

            ++v45;
            v41 = v48;
            if (v44 == v45)
            {
              goto LABEL_52;
            }
          }

          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

        v48 = v41;
LABEL_52:
        if (v48)
        {
          goto LABEL_114;
        }

        v41 = 0;
LABEL_43:
        v42 = (v44 << ((4 * v40 + 8) & 0x3C)) | ((-15 << ((4 * v40 + 8) & 0x3C)) - 1) & v42;
        v15 = *(v43 + 24 + 24 * v44);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v39 = (v15 + 16);
        LOBYTE(v40) = *(v15 + 18);
        v43 = v15;
      }

      while (v40);
      v38 = *v39;
      if (*v39)
      {
        goto LABEL_60;
      }

      v54 = 0;
      v13 = v147;
LABEL_65:
      v56 = v54;
      if (v41)
      {
        goto LABEL_130;
      }

LABEL_66:
      swift_unknownObjectRelease();
      v146 = v42 & 0xFFFFFFFFFFFFF0FFLL | (v56 << 8);
      v29 = v138;
      v17 = v139;
      v50 = v142;
      v37 = v143;
      if (v143)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v49 = swift_unknownObjectRetain();
      v50 = v142;
      v13 = v147;
      v146 = specialized Rope._endPath.getter(v49);
      v15 = 0;
      v17 = v139;
      if (v37)
      {
LABEL_55:
        v51 = v13;
        v52 = v17;
        v53 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v51, v146, v15, v37, v134, v50);
        swift_unknownObjectRelease();
        v17 = v52;
        v13 = v147;
        goto LABEL_68;
      }
    }

    v53 = 0;
  }

  else
  {
    if (v17 == 2)
    {
      v147 = v13;
      v30 = v29[9];
      if (v30)
      {
        v32 = v29[10];
        v31 = v29[11];
        swift_unknownObjectRetain();
        v33 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v147, v146, v15, v30, v32, v31);
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0;
      }

      v142 = v33;
      v57 = 1;
      goto LABEL_74;
    }

    v53 = v145;
  }

LABEL_68:
  v57 = v17 == 2;
  v147 = v13;
  if (v17 != 2)
  {
    v58 = v145;
    if (v145 == v53)
    {
      v59 = *(v29 + 5);
      v154 = *(v29 + 3);
      v155 = v59;
      v156 = *(v29 + 7);
      swift_unknownObjectRetain();
      v60 = v29;
      v128 = BigString.UTF8View.index(roundingDown:)();
      swift_unknownObjectRelease();
      v127 = 0;
      v142 = v58;
      v61 = v58;
      goto LABEL_75;
    }
  }

  v142 = v53;
LABEL_74:
  v127 = v57;
  v62 = *(v29 + 3);
  v63 = *(v29 + 7);
  v155 = *(v29 + 5);
  v156 = v63;
  v64 = *(v29 + 5);
  v153[6] = *(v29 + 3);
  v153[7] = v64;
  v153[8] = *(v29 + 7);
  v154 = v62;
  v60 = v29;
  v143 = BigString.startIndex.getter();
  v138 = v65;
  v157[0] = v154;
  v157[1] = v155;
  v158 = v156;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v157, &v151);
  v128 = BigString.UTF8View.index(_:offsetBy:)();
  outlined destroy of BigString(&v154);
  v61 = v145;
LABEL_75:
  v66 = v60[9];
  v67 = v60[10];
  v69 = v60[11];
  v68 = v60[12];
  v138 = v60;
  v134 = v68;
  v70 = v146;
  v71 = v147;
  *&v151 = v147;
  *(&v151 + 1) = v146;
  *&v152 = v15;
  if (__OFADD__(v144, 1))
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v126 = v144 + 1;
  v145 = v61;
  swift_unknownObjectRetain();
  v143 = v69;
  v144 = v67;
  v72 = v69;
  v73 = v134;
  v74 = specialized Rope.subscript.getter(v71, v70, v15, v66, v67, v72, v134);

  if (__OFADD__(v142, v74))
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  if (v71 != v73)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v142 += v74;
  v75 = specialized Rope._endPath.getter(v66);
  v76 = v146;
  if (v146 >= v75)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  if (v15 && (v77 = (4 * *(v15 + 18) + 8) & 0x3C, v78 = ((v146 >> v77) & 0xF) + 1, v78 < *(v15 + 16)))
  {
    swift_unknownObjectRelease();
    v79 = (v78 << v77) | ((-15 << v77) - 1) & v76;
    v80 = v149;
    v81 = v140;
  }

  else
  {
    v82 = specialized Rope._Node.formSuccessor(of:)(&v151, v66);
    v80 = v149;
    v81 = v140;
    if (v82)
    {
      swift_unknownObjectRelease();
      v79 = *(&v151 + 1);
    }

    else
    {
      v83 = v147;
      v79 = specialized Rope._endPath.getter(v66);
      swift_unknownObjectRelease();
      *&v151 = v83;
      *(&v151 + 1) = v79;
      *&v152 = 0;
    }
  }

  v144 = v151;
  v146 = v152;
  v84 = type metadata accessor for AttributedString.Runs();
  v85 = *(v84 + 24);
  v147 = v84;
  if (v137)
  {
    v143 = v79;
    (*(v136 + 16))(v148, v81 + v85, v80);
    if (v129 == 2)
    {
      v86 = v128;
    }

    else
    {
      v86 = v130;
    }

    RangeSet.ranges.getter();
    v87 = RangeSet.Ranges.count.getter();
    v79 = v141 + 8;
    v88 = *(v141 + 8);
    v84 = v88(v9, v7);
    if (v87 >= 1)
    {
      v81 = 0;
      v89 = v86 >> 10;
      while (!__OFADD__(v81, v87))
      {
        v20 = (v81 + v87) / 2;
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        v84 = v88(v9, v7);
        if (v89 < v151 >> 10)
        {
          v87 = (v81 + v87) / 2;
          if (v81 >= v20)
          {
            goto LABEL_96;
          }
        }

        else
        {
          v90 = *&v153[0];
          if (v89 < *&v153[0] >> 10)
          {
            (*(v136 + 8))(v148, v149);
            v81 = v140;
            v91 = v147;
            v79 = v143;
            goto LABEL_99;
          }

          v81 = v20 + 1;
          if (v20 + 1 >= v87)
          {
            goto LABEL_96;
          }
        }
      }

LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

LABEL_96:
    __break(1u);
  }

  v91 = v84;
  RangeSet.ranges.getter();
  RangeSet.Ranges.subscript.getter();
  v88 = *(v141 + 8);
  v88(v9, v7);
  v90 = *&v153[0];
LABEL_99:
  if (v142 < (v90 >> 11))
  {
    if (v127)
    {
      v92 = *(v138 + 3);
      v93 = *(v138 + 7);
      v152 = *(v138 + 5);
      v153[0] = v93;
      v151 = v92;
      v153[3] = *(v138 + 3);
      v94 = *(v138 + 7);
      v153[4] = *(v138 + 5);
      v153[5] = v94;
      v149 = BigString.startIndex.getter();
      v159[0] = v151;
      v159[1] = v152;
      v160 = *&v153[0];
      outlined init with copy of Rope<BigString._Chunk>._Node?(v159, v150);
      v95 = BigString.UTF8View.index(_:offsetBy:)();
      v97 = v96;
      v99 = v98;
      v101 = v100;
      outlined destroy of BigString(&v151);
    }

    else
    {
      v109 = *(v138 + 5);
      v151 = *(v138 + 3);
      v152 = v109;
      v153[0] = *(v138 + 7);
      if (__OFSUB__(v142, v145))
      {
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      swift_unknownObjectRetain();
      v95 = BigString.UTF8View.index(_:offsetBy:)();
      v97 = v110;
      v99 = v111;
      v101 = v112;
      swift_unknownObjectRelease();
    }

    v113 = *(v81 + *(v91 + 28));
    v150[0] = 0;
    v114 = v135;
    v115 = v144;
    *v135 = v126;
    *(v114 + 1) = v115;
    v116 = v146;
    *(v114 + 2) = v79;
    *(v114 + 3) = v116;
    *(v114 + 4) = v95;
    *(v114 + 5) = v97;
    *(v114 + 6) = v99;
    *(v114 + 7) = v101;
    *(v114 + 8) = v95;
    *(v114 + 9) = v97;
    *(v114 + 10) = v99;
    *(v114 + 11) = v101;
    *(v114 + 12) = v20;
    *(v114 + 104) = 0;
    *(v114 + 105) = v113;
    return;
  }

  v102 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    goto LABEL_126;
  }

  RangeSet.ranges.getter();
  v103 = RangeSet.Ranges.count.getter();
  v88(v9, v7);
  if (v102 == v103)
  {
    v104 = v125;
    v105 = v125[5];
    v106 = v135;
    v135[4] = v125[4];
    v106[5] = v105;
    *(v106 + 90) = *(v104 + 90);
    v107 = v104[1];
    *v106 = *v104;
    v106[1] = v107;
    v108 = v104[3];
    v106[2] = v104[2];
    v106[3] = v108;
  }

  else
  {
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    v88(v9, v7);
    v117 = v151;
    v118 = v152;
    AttributedString.Guts.findRun(at:)(v151, *(&v152 + 1), &v151);
    v119 = v152;
    v120 = v151;
    v121 = *(v153 + 8);
    v122 = *(&v153[1] + 8);
    v123 = *(v81 + *(v147 + 28));
    LOBYTE(v151) = 0;
    v124 = v135;
    *v135 = *(&v152 + 1);
    *(v124 + 8) = v120;
    *(v124 + 3) = v119;
    v124[2] = v121;
    v124[3] = v122;
    v124[4] = v117;
    v124[5] = v118;
    *(v124 + 12) = v102;
    *(v124 + 104) = 0;
    *(v124 + 105) = v123;
  }
}

uint64_t AttributedString.Runs.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v151 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v160 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v141 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v135 - v8;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v152 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v162 = &v135 - v10;
  v12 = *a1;
  v11 = *(a1 + 8);
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 56);
  v144 = *(a1 + 48);
  v145 = v16;
  v18 = *(a1 + 64);
  v19 = *(a1 + 88);
  v20 = *(a1 + 96);
  result = *(a1 + 104);
  v22 = v3[1];
  if (v22 >= v12)
  {
    if (v12 < v22)
    {
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    if (v19 == 2)
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v3[12] != 2 && v3[9] >> 10 >= v18 >> 10)
    {
      goto LABEL_123;
    }
  }

  v23 = v3[15];
  if (v23 < v12)
  {
    goto LABEL_115;
  }

  v24 = v3[23];
  v25 = v3[26];
  if (v12 >= v23 && v19 != 2)
  {
    if (v25 == 2)
    {
LABEL_127:
      __break(1u);
      return result;
    }

    if (v24 >> 10 < v18 >> 10)
    {
      goto LABEL_120;
    }
  }

  LODWORD(v154) = *(a1 + 104);
  v149 = v17;
  v150 = v23;
  v142 = v25;
  v143 = v15;
  v136 = v24;
  v153 = v19;
  v146 = v18;
  v26 = v15 >> 11;
  v156 = v12;
  v157 = v3;
  if (v13 == 1 || (v27 = *v3, v11 != *(*v3 + 96)))
  {
    result = type metadata accessor for AttributedString.Runs();
    if (*(v3 + *(result + 28)))
    {
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v27 = *v3;
    v32 = *(*v3 + 72);
    v31 = *(*v3 + 80);
    v155 = v31;
    if (!v32)
    {
      v31 = 0;
    }

    if (v12 < 0 || v31 < v12)
    {
      goto LABEL_117;
    }

    v161 = v26;
    v33 = *(v27 + 96);
    v148 = *(v27 + 88);
    v159 = v33;
    if (v32)
    {
      if (v12 < v155)
      {
        v34 = (v32 + 16);
        v35 = *(v32 + 16);
        if (*(v32 + 16))
        {
          v158 = v27;
          v36 = *(v32 + 18);
          result = swift_unknownObjectRetain_n();
          v140 = v32;
          if (v36)
          {
            v37 = v12;
            v38 = v36;
            v39 = result;
            do
            {
              v40 = *v34;
              if (*v34)
              {
                v42 = 0;
                v43 = (v39 + 32);
                while (1)
                {
                  v44 = *v43;
                  v43 += 3;
                  v45 = v37 - v44;
                  if (__OFSUB__(v37, v44))
                  {
                    break;
                  }

                  if (__OFADD__(v45, 1))
                  {
                    goto LABEL_111;
                  }

                  if (v45 + 1 < 1)
                  {
                    v40 = v42;
                    goto LABEL_27;
                  }

                  ++v42;
                  v37 = v45;
                  if (v40 == v42)
                  {
                    goto LABEL_36;
                  }
                }

                __break(1u);
LABEL_111:
                __break(1u);
                goto LABEL_112;
              }

              v45 = v37;
LABEL_36:
              if (v45)
              {
                goto LABEL_114;
              }

              v37 = 0;
LABEL_27:
              v38 = (v40 << ((4 * v36 + 8) & 0x3C)) | ((-15 << ((4 * v36 + 8) & 0x3C)) - 1) & v38;
              v41 = *(v39 + 24 + 24 * v40);
              swift_unknownObjectRetain();
              swift_unknownObjectRelease();
              result = v41;
              v34 = (v41 + 16);
              LOBYTE(v36) = *(result + 18);
              v39 = result;
            }

            while (v36);
            v35 = *v34;
            if (*v34)
            {
              goto LABEL_43;
            }

            v50 = 0;
            v27 = v158;
            v26 = v161;
            v47 = v148;
LABEL_48:
            v52 = v50;
            if (!v37)
            {
LABEL_49:
              v53 = result;
              swift_unknownObjectRelease();
              v49 = v53;
              v48 = v38 & 0xFFFFFFFFFFFFF0FFLL | (v52 << 8);
              v3 = v157;
              v32 = v140;
              goto LABEL_50;
            }

            goto LABEL_125;
          }

          v38 = 0;
          v37 = v12;
LABEL_43:
          v27 = v158;
          v47 = v148;
          v51 = 0;
          v50 = v35;
          v52 = v37 & ~(v37 >> 63);
          v26 = v161;
          while ((v37 ^ v51) != 0x8000000000000000)
          {
            if (v52 == v51)
            {
              goto LABEL_49;
            }

            if (v50 == ++v51)
            {
              v37 -= v51;
              goto LABEL_48;
            }
          }

          goto LABEL_113;
        }
      }
    }

    v46 = swift_unknownObjectRetain();
    v47 = v148;
    v48 = specialized Rope._endPath.getter(v46);
    v49 = 0;
    v26 = v161;
LABEL_50:
    v17 = v149;
    v147 = v48;
    v148 = v49;
    if (v32)
    {
      v32 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v159, v48, v49, v32, v155, v47);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v159 = v11;
    v147 = v14;
    v148 = v13;
    if (v17 == 2)
    {
      v28 = *(v27 + 72);
      if (v28)
      {
        v30 = *(v27 + 80);
        v29 = *(v27 + 88);
        swift_unknownObjectRetain();
        v155 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v159, v147, v148, v28, v30, v29);
        swift_unknownObjectRelease();
      }

      else
      {
        v155 = 0;
      }

      LODWORD(v140) = 1;
      goto LABEL_59;
    }

    v32 = v15 >> 11;
  }

  if (v17 != 2 && v26 == v32)
  {
    v54 = *(v27 + 40);
    v182 = *(v27 + 24);
    v183 = v54;
    v158 = v27;
    v184 = *(v27 + 56);
    swift_unknownObjectRetain();
    v55 = BigString.UTF8View.index(roundingDown:)();
    v138 = v57;
    v139 = v56;
    v137 = v58;
    v59 = v55;
    swift_unknownObjectRelease();
    LODWORD(v140) = 0;
    v155 = v26;
    if ((v154 & 1) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_60;
  }

  LODWORD(v140) = v17 == 2;
  v155 = v32;
LABEL_59:
  v60 = *(v27 + 24);
  v61 = *(v27 + 56);
  v183 = *(v27 + 40);
  v184 = v61;
  v62 = *(v27 + 40);
  v179 = *(v27 + 24);
  v180 = v62;
  v158 = v27;
  v181 = *(v27 + 56);
  v182 = v60;
  BigString.startIndex.getter();
  v161 = v63;
  v139 = v64;
  v185[0] = v182;
  v185[1] = v183;
  v186 = v184;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v185, &v165);
  v59 = BigString.UTF8View.index(_:offsetBy:)();
  v138 = v66;
  v139 = v65;
  v137 = v67;
  outlined destroy of BigString(&v182);
  if ((v154 & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_60:
  v161 = v26;
  v68 = type metadata accessor for AttributedString.Runs();
  (*(v152 + 16))(v162, v3 + *(v68 + 24), v163);
  v154 = v59;
  if (v153 == 2)
  {
    v69 = v59;
  }

  else
  {
    v69 = v146;
  }

  RangeSet.ranges.getter();
  v70 = RangeSet.Ranges.count.getter();
  v71 = *(v160 + 8);
  result = v71(v9, v5);
  if (v70 >= 1)
  {
    v72 = 0;
    v73 = v69 >> 10;
    while (!__OFADD__(v72, v70))
    {
      v20 = (v72 + v70) / 2;
      RangeSet.ranges.getter();
      RangeSet.Ranges.subscript.getter();
      result = v71(v9, v5);
      if (v73 < v165 >> 10)
      {
        v70 = (v72 + v70) / 2;
        if (v72 >= v20)
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v73 < v168 >> 10)
        {
          goto LABEL_71;
        }

        v72 = v20 + 1;
        if (v20 + 1 >= v70)
        {
          goto LABEL_70;
        }
      }
    }

LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  (*(v152 + 8))(v162, v163);
  v3 = v157;
  v26 = v161;
  v59 = v154;
LABEL_72:
  v74 = v156;
  if (v156 == v150)
  {
    if (v153 == 2)
    {
      if (v142 == 2)
      {
        goto LABEL_83;
      }
    }

    else if (v142 != 2 && (v136 ^ v146) < 0x400)
    {
      goto LABEL_83;
    }
  }

  v162 = type metadata accessor for AttributedString.Runs();
  v154 = *(v162 + 6);
  RangeSet.ranges.getter();
  RangeSet.Ranges.subscript.getter();
  v75 = *(v160 + 8);
  result = v75(v9, v5);
  if (v165 >> 11 < v59 >> 11)
  {
    v160 = v75;
    v161 = v26;
    v76 = *(v158 + 72);
    v77 = *(v158 + 80);
    v79 = *(v158 + 88);
    v78 = *(v158 + 96);
    *&v165 = v159;
    *(&v165 + 1) = v147;
    v166 = v148;
    if (__OFSUB__(v74, 1))
    {
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v159 = v74 - 1;
    swift_unknownObjectRetain();
    specialized Rope.formIndex(before:)(&v165, v76, v77, v79, v78);
    v156 = v165;
    v152 = v166;
    v153 = *(&v165 + 1);
    v80 = specialized Rope.subscript.getter(v165, *(&v165 + 1), v166, v76, v77, v79, v78);
    swift_unknownObjectRelease();

    v81 = __OFSUB__(v155, v80);
    v82 = v155 - v80;
    if (v81)
    {
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    if (v140)
    {
      v83 = *(v158 + 24);
      v84 = *(v158 + 56);
      v177 = *(v158 + 40);
      v178 = v84;
      v176 = v83;
      v85 = *(v158 + 40);
      v173 = *(v158 + 24);
      v174 = v85;
      v175 = *(v158 + 56);
      v161 = BigString.startIndex.getter();
      v158 = v86;
      v187[0] = v176;
      v187[1] = v177;
      v188 = v178;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v187, &v165);
      v87 = BigString.UTF8View.index(_:offsetBy:)();
      v161 = v88;
      v90 = v89;
      v92 = v91;
      outlined destroy of BigString(&v176);
    }

    else
    {
      v123 = *(v158 + 40);
      v176 = *(v158 + 24);
      v177 = v123;
      v178 = *(v158 + 56);
      if (__OFSUB__(v82, v161))
      {
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      swift_unknownObjectRetain();
      v87 = BigString.UTF8View.index(_:offsetBy:)();
      v161 = v124;
      v90 = v125;
      v92 = v126;
      swift_unknownObjectRelease();
    }

    v127 = v141;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    result = (v160)(v127, v5);
    v129 = *(&v165 + 1);
    v128 = v165;
    v130 = v166;
    v131 = v167;
    if (v165 >> 10 < v87 >> 10)
    {
      v128 = v87;
    }

    v132 = v161;
    if (v165 >> 10 < v87 >> 10)
    {
      v129 = v161;
      v130 = v90;
      v131 = v92;
    }

    v133 = *(v3 + *(v162 + 7));
    v164 = 0;
    v134 = v151;
    *v151 = v159;
    v134[1] = v156;
    v134[2] = v153;
    v134[3] = v152;
    v134[4] = v87;
    v134[5] = v132;
    v134[6] = v90;
    v134[7] = v92;
    v134[8] = v128;
    v134[9] = v129;
    v134[10] = v130;
    v134[11] = v131;
    v134[12] = v20;
    *(v134 + 104) = 0;
    *(v134 + 105) = v133;
    return result;
  }

LABEL_83:
  v93 = type metadata accessor for AttributedString.Runs();
  RangeSet.ranges.getter();
  result = v20 - 1;
  if (__OFSUB__(v20, 1))
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v162 = v93;
  v163 = v20 - 1;
  RangeSet.Ranges.subscript.getter();
  (*(v160 + 8))(v9, v5);
  v155 = *(&v165 + 1);
  v94 = v165;
  v160 = v166;
  v161 = v167;
  v95 = *(v158 + 40);
  v176 = *(v158 + 24);
  v177 = v95;
  v178 = *(v158 + 56);
  swift_unknownObjectRetain();
  v96 = BigString.UTF8View.index(before:)();
  v98 = v97;
  result = swift_unknownObjectRelease();
  v99 = v59 >> 10;
  if (v59 >> 10 <= v96 >> 10)
  {
    v112 = v161;
    v113 = *(v157 + *(v162 + 7));
    v114 = v94 >> 10 >= v99;
    if (v94 >> 10 >= v99)
    {
      v115 = v94;
    }

    else
    {
      v115 = v59;
    }

    v117 = v138;
    v116 = v139;
    v118 = v155;
    if (!v114)
    {
      v118 = v139;
    }

    LOBYTE(v165) = 0;
    v119 = v160;
    if (!v114)
    {
      v119 = v138;
    }

    v120 = v137;
    if (!v114)
    {
      v112 = v137;
    }

    v121 = v151;
    *v151 = v156;
    v121[1] = v159;
    v121[2] = v147;
    v121[3] = v148;
    v121[4] = v59;
    v121[5] = v116;
    v121[6] = v117;
    v121[7] = v120;
    v121[8] = v115;
    v121[9] = v118;
    v121[10] = v119;
    v122 = v163;
    v121[11] = v112;
    v121[12] = v122;
    *(v121 + 104) = 0;
    *(v121 + 105) = v113;
  }

  else
  {
    AttributedString.Guts.findRun(at:)(v96, v98, &v165);
    v100 = v166;
    v101 = v169;
    v102 = v170;
    v103 = v171;
    v104 = v172;
    if (v94 >> 10 >= v169 >> 10)
    {
      v105 = v94;
    }

    else
    {
      v105 = v169;
    }

    v106 = v155;
    if (v94 >> 10 < v169 >> 10)
    {
      v106 = v170;
    }

    v107 = v160;
    v108 = v161;
    if (v94 >> 10 < v169 >> 10)
    {
      v107 = v171;
      v108 = v172;
    }

    v109 = v165;
    result = *(v157 + *(v162 + 7));
    LOBYTE(v165) = 0;
    v110 = v151;
    *v151 = v167;
    *(v110 + 1) = v109;
    v110[3] = v100;
    v110[4] = v101;
    v110[5] = v102;
    v110[6] = v103;
    v110[7] = v104;
    v110[8] = v105;
    v110[9] = v106;
    v110[10] = v107;
    v111 = v163;
    v110[11] = v108;
    v110[12] = v111;
    *(v110 + 104) = 0;
    *(v110 + 105) = result;
  }

  return result;
}

uint64_t AttributedString.Runs._distance(from:to:)(uint64_t *a1, uint64_t *a2)
{
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v150 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v127 - v5;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v149 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v7 = &v127 - v6;
  v8 = a1;
  v9 = *a1;
  v10 = *a2;
  v11 = a2[4];
  v12 = a2[7];
  v13 = a2[8];
  v14 = a2[11];
  result = type metadata accessor for AttributedString.Runs();
  if (v2[*(result + 28)] == 1)
  {
    v18 = v2;
    v134 = result;
    result = 0;
    v19 = *(v8 + 104);
    v20 = v8[11];
    v148 = v8[12];
    v22 = v8[7];
    v21 = v8[8];
    v23 = v8[5];
    v135 = v8[6];
    v136 = v23;
    v24 = v13 >> 10;
    v25 = v21;
    v26 = v8[3];
    v141 = v8[4];
    v143 = v18;
    v144 = v26;
    v27 = (v149 + 8);
    v129 = (v150 + 16);
    v130 = v10;
    v127 = v24;
    v128 = (v150 + 8);
    v28 = v8[1];
    v146 = v8[2];
    v29 = v22;
    v150 = v7;
    while (1)
    {
      v159 = v19;
      if (v9 >= v10 && (v10 < v9 || v14 == 2 || v20 != 2 && v25 >> 10 >= v127))
      {
        return result;
      }

      v39 = *(v18 + 1);
      if (v9 < v39)
      {
        goto LABEL_134;
      }

      v40 = *(v18 + 9);
      v41 = v39 < v9 || *(v18 + 12) == 2;
      v42 = v41;
      v43 = v144;
      if (!v41)
      {
        if (v20 == 2)
        {
          goto LABEL_157;
        }

        if (v25 >> 10 < v40 >> 10)
        {
          goto LABEL_144;
        }
      }

      v44 = *(v18 + 15);
      v45 = *(v18 + 23);
      v46 = *(v18 + 26);
      if (v9 >= v44)
      {
        if (v44 < v9)
        {
          goto LABEL_145;
        }

        if (v46 == 2)
        {
          goto LABEL_158;
        }

        if (v20 == 2)
        {
          if (!v42)
          {
            goto LABEL_156;
          }

          goto LABEL_40;
        }

        if (v25 >> 10 >= v45 >> 10)
        {
          goto LABEL_150;
        }
      }

      if ((v42 & 1) == 0)
      {
        if (v20 == 2)
        {
          goto LABEL_156;
        }

        if (v25 >> 10 < v40 >> 10)
        {
          goto LABEL_148;
        }
      }

LABEL_40:
      if (v44 < v9)
      {
        goto LABEL_135;
      }

      if (v9 >= v44 && v20 != 2)
      {
        if (v46 == 2)
        {
          goto LABEL_159;
        }

        if (v45 >> 10 < v25 >> 10)
        {
          goto LABEL_146;
        }
      }

      if (v144 == 1)
      {
        goto LABEL_155;
      }

      v47 = *v18;
      if (v28 != *(*v18 + 96))
      {
        goto LABEL_155;
      }

      v142 = *v18;
      v137 = result;
      v139 = v20;
      v140 = v25;
      v132 = v29;
      v147 = v28;
      v145 = v9;
      if (v29 == 2)
      {
        v48 = *(v47 + 72);
        if (v48)
        {
          v49 = *(v47 + 80);
          v50 = *(v47 + 88);
          swift_unknownObjectRetain();
          v51 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v147, v146, v43, v48, v49, v50);
          swift_unknownObjectRelease();
          v47 = v142;
        }

        else
        {
          v51 = 0;
        }

        v131 = v141 >> 11;
        v54 = *(v47 + 24);
        v55 = *(v47 + 56);
        v179 = *(v47 + 40);
        v180 = v55;
        v56 = *(v47 + 40);
        v175 = *(v47 + 24);
        v176 = v56;
        v177 = *(v47 + 56);
        v178 = v54;
        v149 = BigString.startIndex.getter();
        v181[0] = v178;
        v181[1] = v179;
        v182 = v180;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v181, &v154);
        v149 = v51;
        v133 = BigString.UTF8View.index(_:offsetBy:)();
        result = outlined destroy of BigString(&v178);
        v43 = v144;
      }

      else
      {
        v52 = v141;
        v53 = *(v47 + 40);
        v172 = *(v47 + 24);
        v173 = v53;
        v174 = *(v47 + 56);
        swift_unknownObjectRetain();
        v133 = BigString.UTF8View.index(roundingDown:)();
        result = swift_unknownObjectRelease();
        v131 = v52 >> 11;
        v149 = (v52 >> 11);
      }

      v57 = *(v47 + 72);
      v58 = *(v47 + 96);
      v59 = v146;
      v154 = v147;
      v155 = v146;
      v156 = v43;
      if (__OFADD__(v145, 1))
      {
        goto LABEL_137;
      }

      if (v147 != v58)
      {
        goto LABEL_138;
      }

      ++v145;
      if (v43)
      {
        v60 = *(v43 + 24 * ((v146 >> ((4 * *(v43 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v138 = &v149[v60];
        if (__OFADD__(v149, v60))
        {
          goto LABEL_143;
        }

        v61 = v153;
        if (!v57)
        {
          goto LABEL_136;
        }

        v62 = v147;
        result = swift_unknownObjectRetain();
        v63 = v146;
      }

      else
      {
        v64 = v147;
        swift_unknownObjectRetain();
        v65 = specialized Rope._Node.subscript.getter(v59, v57);

        v138 = &v149[v65];
        if (__OFADD__(v149, v65))
        {
          goto LABEL_149;
        }

        v62 = v64;
        v63 = v146;
        v61 = v153;
        if (!v57)
        {
          goto LABEL_136;
        }
      }

      if (v63 >= (((-15 << ((4 * *(v57 + 18) + 8) & 0x3C)) - 1) & *(v57 + 18) | (*(v57 + 16) << ((4 * *(v57 + 18) + 8) & 0x3C))))
      {
        goto LABEL_136;
      }

      if (v43 && (v66 = v43, v67 = (4 * *(v43 + 18) + 8) & 0x3C, v68 = ((v63 >> v67) & 0xF) + 1, v68 < *(v66 + 16)))
      {
        v69 = v63;
        swift_unknownObjectRelease();
        v70 = (v68 << v67) | ((-15 << v67) - 1) & v69;
      }

      else if (specialized Rope._Node.formSuccessor(of:)(&v154, v57))
      {
        swift_unknownObjectRelease();
        v70 = v155;
      }

      else
      {
        v71 = *(v57 + 18);
        v72 = *(v57 + 16);
        swift_unknownObjectRelease();
        v70 = ((-15 << ((4 * v71 + 8) & 0x3C)) - 1) & v71 | (v72 << ((4 * v71 + 8) & 0x3C));
        v154 = v62;
        v155 = v70;
        v156 = 0;
      }

      v73 = v150;
      v146 = v70;
      v147 = v154;
      v74 = *(v134 + 24);
      v144 = v156;
      if (v159)
      {
        (*v129)(v151, &v143[v74], v61);
        if (v139 == 2)
        {
          v75 = v133;
        }

        else
        {
          v75 = v140;
        }

        RangeSet.ranges.getter();
        v76 = v152;
        v77 = RangeSet.Ranges.count.getter();
        v149 = *v27;
        result = (v149)(v73, v76);
        if (v77 < 1)
        {
          goto LABEL_130;
        }

        v78 = 0;
        v79 = v75 >> 10;
        while (!__OFADD__(v78, v77))
        {
          v80 = v27;
          v81 = (v78 + v77) / 2;
          v82 = v150;
          RangeSet.ranges.getter();
          v83 = v152;
          RangeSet.Ranges.subscript.getter();
          v84 = v82;
          v27 = v80;
          result = (v149)(v84, v83);
          if (v79 < v154 >> 10)
          {
            v77 = (v78 + v77) / 2;
            if (v78 >= v81)
            {
              goto LABEL_130;
            }
          }

          else
          {
            v148 = (v78 + v77) / 2;
            v85 = v158;
            if (v79 < v158 >> 10)
            {
              result = (*v128)(v151, v153);
              v73 = v150;
              goto LABEL_82;
            }

            v78 = v148 + 1;
            if (v148 + 1 >= v77)
            {
              goto LABEL_130;
            }
          }
        }

        goto LABEL_131;
      }

      RangeSet.ranges.getter();
      v83 = v152;
      RangeSet.Ranges.subscript.getter();
      v149 = *v27;
      result = (v149)(v73, v83);
      v85 = v158;
LABEL_82:
      if (v138 >= (v85 >> 11))
      {
        v91 = v148 + 1;
        if (__OFADD__(v148, 1))
        {
          goto LABEL_147;
        }

        RangeSet.ranges.getter();
        v92 = RangeSet.Ranges.count.getter();
        v93 = v149;
        (v149)(v73, v83);
        if (v91 == v92)
        {
          v18 = v143;
          v9 = *(v143 + 15);
          v28 = *(v143 + 16);
          v94 = *(v143 + 18);
          v146 = *(v143 + 17);
          v144 = v94;
          v95 = *(v143 + 20);
          v141 = *(v143 + 19);
          v29 = *(v143 + 22);
          v135 = *(v143 + 21);
          v136 = v95;
          v25 = *(v143 + 23);
          v20 = *(v143 + 26);
          v148 = *(v143 + 27);
          v19 = v143[224];
          v37 = v137;
          v10 = v130;
        }

        else
        {
          RangeSet.ranges.getter();
          v148 = v91;
          RangeSet.Ranges.subscript.getter();
          result = v93(v73, v83);
          v96 = v142;
          v97 = *(v142 + 72);
          v98 = *(v142 + 88);
          v99 = v154 >> 11;
          if (v97)
          {
            v100 = *(v142 + 88);
          }

          else
          {
            v100 = 0;
          }

          if (v100 < v99)
          {
            goto LABEL_152;
          }

          v147 = *(v142 + 96);
          v139 = v157;
          v140 = v154;
          v149 = v155;
          v145 = v156;
          if (v97)
          {
            v101 = *(v142 + 80);
            v102 = (v97 + 16);
            v103 = *(v97 + 18);
            if (v99 < v98 && *(v97 + 16))
            {
              v104 = *(v97 + 16);
              v146 = v98;
              result = swift_unknownObjectRetain_n();
              if (!v103)
              {
                v105 = 0;
                v117 = v97;
                v118 = v104;
LABEL_115:
                v119 = 0;
                v120 = 24;
                v113 = v99;
                while (1)
                {
                  v121 = *(v117 + v120);
                  v99 = v113 - v121;
                  if (__OFSUB__(v113, v121))
                  {
                    goto LABEL_140;
                  }

                  if (__OFADD__(v99, 1))
                  {
                    goto LABEL_141;
                  }

                  if (v99 + 1 < 1)
                  {
                    goto LABEL_124;
                  }

                  ++v119;
                  v120 += 24;
                  v113 -= v121;
                  if (v118 == v119)
                  {
                    v119 = v118;
                    goto LABEL_122;
                  }
                }
              }

              v144 = v101;
              v105 = v103;
              v106 = v97;
              do
              {
                v107 = *v102;
                if (*v102)
                {
                  v109 = 0;
                  v110 = (v106 + 40);
                  while (1)
                  {
                    v111 = *v110;
                    v110 += 3;
                    v112 = v99 - v111;
                    if (__OFSUB__(v99, v111))
                    {
                      goto LABEL_132;
                    }

                    if (__OFADD__(v112, 1))
                    {
                      goto LABEL_133;
                    }

                    if (v112 + 1 < 1)
                    {
                      v107 = v109;
                      goto LABEL_99;
                    }

                    ++v109;
                    v99 = v112;
                    if (v107 == v109)
                    {
                      goto LABEL_108;
                    }
                  }
                }

                v112 = v99;
LABEL_108:
                if (v112)
                {
                  goto LABEL_142;
                }

                v99 = 0;
LABEL_99:
                v105 = (v107 << ((4 * v103 + 8) & 0x3C)) | ((-15 << ((4 * v103 + 8) & 0x3C)) - 1) & v105;
                v108 = *(v106 + 24 + 24 * v107);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v102 = (v108 + 16);
                LOBYTE(v103) = *(v108 + 18);
                v106 = v108;
              }

              while (v103);
              v118 = *v102;
              if (*v102)
              {
                v117 = v108;
                v101 = v144;
                goto LABEL_115;
              }

              v119 = 0;
              v117 = v108;
              v101 = v144;
LABEL_122:
              if (!v99)
              {
                v113 = 0;
LABEL_124:
                swift_unknownObjectRelease();
                v116 = v105 & 0xFFFFFFFFFFFFF0FFLL | (v119 << 8);
                goto LABEL_125;
              }

              goto LABEL_154;
            }

            v114 = *(v142 + 80);
            v115 = ((-15 << ((4 * v103 + 8) & 0x3C)) - 1) & v103 | (*(v97 + 16) << ((4 * v103 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v116 = v115;
            v101 = v114;
            v113 = 0;
            v117 = 0;
LABEL_125:
            v146 = v116;
            v144 = v117;
            v9 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v147, v116, v117, v97, v101);
            result = swift_unknownObjectRelease();
            v96 = v142;
          }

          else
          {
            v113 = 0;
            v144 = 0;
            v146 = 0;
            v9 = 0;
          }

          v122 = *(v96 + 40);
          v169 = *(v96 + 24);
          v170 = v122;
          v171 = *(v96 + 56);
          v10 = v130;
          if (__OFSUB__(0, v113))
          {
            goto LABEL_153;
          }

          swift_unknownObjectRetain();
          v123 = v139;
          v25 = v140;
          v141 = BigString.UTF8View.index(_:offsetBy:)();
          v135 = v125;
          v136 = v124;
          v29 = v126;
          swift_unknownObjectRelease();
          v20 = v123;
          v19 = 0;
          v18 = v143;
          v37 = v137;
          v28 = v147;
        }
      }

      else
      {
        if (v132 == 2)
        {
          v30 = *(v142 + 24);
          v31 = *(v142 + 56);
          v167 = *(v142 + 40);
          v168 = v31;
          v32 = *(v142 + 40);
          v163 = *(v142 + 24);
          v164 = v32;
          v165 = *(v142 + 56);
          v166 = v30;
          BigString.startIndex.getter();
          v183[0] = v166;
          v183[1] = v167;
          v184 = v168;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v183, &v154);
          v33 = BigString.UTF8View.index(_:offsetBy:)();
          v135 = v35;
          v136 = v34;
          v29 = v36;
          outlined destroy of BigString(&v166);
          v10 = v130;
          v28 = v147;
        }

        else
        {
          v86 = *(v142 + 40);
          v160 = *(v142 + 24);
          v161 = v86;
          v162 = *(v142 + 56);
          v10 = v130;
          v87 = v147;
          if (__OFSUB__(v138, v131))
          {
            goto LABEL_151;
          }

          swift_unknownObjectRetain();
          v33 = BigString.UTF8View.index(_:offsetBy:)();
          v135 = v89;
          v136 = v88;
          v29 = v90;
          swift_unknownObjectRelease();
          v28 = v87;
        }

        v19 = 0;
        v141 = v33;
        v25 = v33;
        v20 = v29;
        v18 = v143;
        v37 = v137;
        v9 = v145;
      }

      v38 = __OFADD__(v37, 1);
      result = v37 + 1;
      if (v38)
      {
        goto LABEL_139;
      }
    }
  }

  v16 = v10 - v9;
  if (!__OFSUB__(v10, v9))
  {
    if (v14 == 2)
    {
      if (v12 != 2)
      {
        v17 = 1;
        goto LABEL_9;
      }
    }

    else
    {
      v17 = 1;
      if (v12 == 2 || (v13 ^ v11) >= 0x400)
      {
LABEL_9:
        result = v16 + v17;
        if (!__OFADD__(v16, v17))
        {
          return result;
        }

        goto LABEL_129;
      }
    }

    v17 = 0;
    goto LABEL_9;
  }

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
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
  return result;
}

void AttributedString.Runs._index(_:offsetBy:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v88 = a3;
  v6 = type metadata accessor for AttributedString.Runs();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = *(a1 + 88);
  v20 = *(v3 + *(v19 + 36));
  v89 = v16;
  v90 = v9;
  v85 = v13;
  v86 = v15;
  v87 = v11;
  if (v20 == 1)
  {
    v82 = v10;
    v83 = v17;
    v84 = v18;
    outlined init with copy of AttributedString.Runs(v3, &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    if (a2 >= 0)
    {
      v22 = partial apply for implicit closure #5 in implicit closure #4 in AttributedString.Runs._index(_:offsetBy:);
    }

    else
    {
      v22 = partial apply for implicit closure #3 in implicit closure #2 in AttributedString.Runs._index(_:offsetBy:);
    }

    v23 = swift_allocObject();
    outlined init with take of AttributedString.Runs(&v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21);
    *&v91 = v90;
    *(&v91 + 1) = v82;
    *&v92 = v87;
    *(&v92 + 1) = v12;
    *&v93 = v14;
    *(&v93 + 1) = v85;
    *&v94 = v86;
    *(&v94 + 1) = v89;
    *&v95[0] = v83;
    *(v95 + 8) = *(a1 + 72);
    v24 = *(a1 + 96);
    *(&v95[1] + 1) = v84;
    *&v95[2] = v24;
    WORD4(v95[2]) = *(a1 + 104);
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (!a2)
      {
LABEL_48:

        v48 = v95[1];
        v49 = v88;
        v88[4] = v95[0];
        v49[5] = v48;
        *(v49 + 90) = *(&v95[1] + 10);
        v50 = v92;
        *v49 = v91;
        v49[1] = v50;
        v51 = v94;
        v49[2] = v93;
        v49[3] = v51;
        return;
      }

      do
      {
LABEL_47:
        v22(&v91);
        --a2;
      }

      while (a2);
      goto LABEL_48;
    }

    v47 = __OFSUB__(0, a2);
    a2 = -a2;
    if (v47)
    {
      goto LABEL_84;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_76;
  }

  v83 = v14;
  v25 = v3[1];
  if (v9 < v25)
  {
    goto LABEL_75;
  }

  v26 = *v3;
  v28 = *(*v3 + 72);
  v27 = *(*v3 + 80);
  v30 = *(*v3 + 88);
  v29 = *(*v3 + 96);
  if (v25 >= v9 && v3[12] != 2)
  {
    if (v18 == 2)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if (v17 >> 10 < v3[9] >> 10)
    {
      goto LABEL_80;
    }
  }

  v31 = v3[15];
  if (v31 < v9)
  {
    goto LABEL_77;
  }

  if (v9 < v31 || v18 == 2)
  {
LABEL_18:
    if (v12 != 1 && v10 == v29)
    {
      if (v16 == 2)
      {
        if (v28)
        {
          v32 = v10;
          swift_unknownObjectRetain();
          v33 = v87;
          v34 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v32, v87, v12, v28, v27, v30);
          v10 = v32;
          v84 = v34;
        }

        else
        {
          v84 = 0;
          v33 = v87;
        }
      }

      else
      {
        v84 = v83 >> 11;
        v54 = v10;
        swift_unknownObjectRetain();
        v10 = v54;
        v33 = v87;
      }

      goto LABEL_64;
    }

    if (v28)
    {
      v35 = *(*v3 + 80);
    }

    else
    {
      v35 = 0;
    }

    if (v9 < 0 || v35 < v9)
    {
      goto LABEL_82;
    }

    v87 = *(*v3 + 96);
    if (!v28 || v9 >= v27 || (v37 = (v28 + 16), v36 = *(v28 + 16), !*(v28 + 16)))
    {
      v52 = swift_unknownObjectRetain_n();
      v53 = specialized Rope._endPath.getter(v52);
      v12 = 0;
      if (v28)
      {
LABEL_50:
        v29 = v87;
        v33 = v53;
        v84 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v87, v53, v12, v28, v27, v30);
        swift_unknownObjectRelease();
        v10 = v87;
      }

      else
      {
        v84 = 0;
        v29 = v87;
        v10 = v87;
        v33 = v53;
      }

LABEL_64:
      *&v98 = v10;
      *(&v98 + 1) = v33;
      *&v99 = v12;
      *&v97[0] = a2;
      v58 = v10;
      specialized Rope.formIndex<A>(_:offsetBy:in:preferEnd:)(&v98, v97, 0, v28, v27, v30, v29);
      v59 = v27;
      v60 = v30;
      v61 = *(&v98 + 1);
      v62 = v99;
      v87 = v98;
      v63 = specialized Rope.distance<A>(from:to:in:)(v58, v33, v12, v98, *(&v98 + 1), v99, v28, v59, v60, v29);
      swift_unknownObjectRelease();
      v64 = v90 + a2;
      if (!__OFADD__(v90, a2))
      {
        if (!__OFADD__(v84, v63))
        {
          if (v89 == 2)
          {
            v65 = *(v26 + 24);
            v66 = *(v26 + 56);
            v99 = *(v26 + 40);
            v100 = v66;
            v67 = *(v26 + 40);
            v97[0] = *(v26 + 24);
            v97[1] = v67;
            v97[2] = *(v26 + 56);
            v98 = v65;
            BigString.startIndex.getter();
            v101[0] = v98;
            v101[1] = v99;
            v102 = v100;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v101, &v96);
            v68 = BigString.UTF8View.index(_:offsetBy:)();
            v70 = v69;
            v72 = v71;
            v74 = v73;
            outlined destroy of BigString(&v98);
          }

          else
          {
            v75 = *(v26 + 40);
            v98 = *(v26 + 24);
            v99 = v75;
            v100 = *(v26 + 56);
            if (__OFSUB__(v84 + v63, v83 >> 11))
            {
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            swift_unknownObjectRetain();
            v68 = BigString.UTF8View.index(_:offsetBy:)();
            v70 = v76;
            v72 = v77;
            v74 = v78;
            swift_unknownObjectRelease();
          }

          v80 = v87;
          v79 = v88;
          *v88 = v64;
          *(v79 + 1) = v80;
          *(v79 + 2) = v61;
          *(v79 + 3) = v62;
          *(v79 + 4) = v68;
          *(v79 + 5) = v70;
          *(v79 + 6) = v72;
          *(v79 + 7) = v74;
          *(v79 + 8) = v68;
          *(v79 + 9) = v70;
          *(v79 + 10) = v72;
          *(v79 + 11) = v74;
          *(v79 + 12) = 0;
          *(v79 + 52) = 0;
          return;
        }

        goto LABEL_79;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v82 = v30;
    v84 = v27;
    v38 = *(v28 + 18);
    swift_unknownObjectRetain_n();
    if (v38)
    {
      v39 = v90;
      v40 = v38;
      v41 = v28;
      do
      {
        v42 = *v37;
        if (*v37)
        {
          v43 = 0;
          v44 = (v41 + 32);
          while (1)
          {
            v45 = *v44;
            v44 += 3;
            v46 = v39 - v45;
            if (__OFSUB__(v39, v45))
            {
              break;
            }

            if (__OFADD__(v46, 1))
            {
              goto LABEL_72;
            }

            if (v46 + 1 < 1)
            {
              v42 = v43;
              goto LABEL_34;
            }

            ++v43;
            v39 = v46;
            if (v42 == v43)
            {
              goto LABEL_43;
            }
          }

          __break(1u);
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v46 = v39;
LABEL_43:
        if (v46)
        {
          goto LABEL_74;
        }

        v39 = 0;
LABEL_34:
        v40 = (v42 << ((4 * v38 + 8) & 0x3C)) | ((-15 << ((4 * v38 + 8) & 0x3C)) - 1) & v40;
        v12 = *(v41 + 24 + 24 * v42);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v37 = (v12 + 16);
        LOBYTE(v38) = *(v12 + 18);
        v41 = v12;
      }

      while (v38);
      v36 = *v37;
      if (*v37)
      {
        goto LABEL_56;
      }

      v55 = 0;
LABEL_61:
      v57 = v55;
      if (!v39)
      {
LABEL_62:
        swift_unknownObjectRelease();
        v53 = v40 & 0xFFFFFFFFFFFFF0FFLL | (v57 << 8);
        v27 = v84;
        v30 = v82;
        goto LABEL_50;
      }

      goto LABEL_85;
    }

    v40 = 0;
    v39 = v90;
    v12 = v28;
LABEL_56:
    v56 = 0;
    v55 = v36;
    v57 = v39 & ~(v39 >> 63);
    while ((v39 ^ v56) != 0x8000000000000000)
    {
      if (v57 == v56)
      {
        goto LABEL_62;
      }

      if (v55 == ++v56)
      {
        v39 -= v56;
        goto LABEL_61;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v3[26] != 2)
  {
    if (v3[23] >> 10 < v17 >> 10)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    goto LABEL_18;
  }

LABEL_87:
  __break(1u);
}

void implicit closure #3 in implicit closure #2 in AttributedString.Runs._index(_:offsetBy:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v161 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v141 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v136 - v7;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v152 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v163 = &v136 - v9;
  v11 = *a1;
  v10 = *(a1 + 8);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  v143 = *(a1 + 48);
  v144 = v15;
  v159 = *(a1 + 64);
  v17 = *(a1 + 88);
  v18 = *(a1 + 96);
  v151 = a1;
  v19 = *(a1 + 104);
  v20 = a2[1];
  if (v20 >= v11)
  {
    if (v11 < v20)
    {
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    if (v17 == 2)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (a2[12] != 2 && a2[9] >> 10 >= v159 >> 10)
    {
      goto LABEL_126;
    }
  }

  v21 = a2[15];
  if (v21 < v11)
  {
    goto LABEL_118;
  }

  v145 = a2[23];
  v22 = a2[26];
  if (v11 >= v21 && v17 != 2)
  {
    if (v22 == 2)
    {
LABEL_130:
      __break(1u);
      return;
    }

    if (v145 >> 10 < v159 >> 10)
    {
      goto LABEL_123;
    }
  }

  LODWORD(v154) = v19;
  v149 = v21;
  v150 = v22;
  v153 = v17;
  v142 = v14;
  v155 = v14 >> 11;
  v157 = v11;
  v158 = a2;
  v148 = v16;
  if (v12 == 1 || (v23 = *a2, v10 != *(*a2 + 96)))
  {
    if (*(a2 + *(type metadata accessor for AttributedString.Runs() + 28)))
    {
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v23 = *a2;
    v30 = *(*a2 + 72);
    v29 = *(*a2 + 80);
    v156 = v29;
    if (!v30)
    {
      v29 = 0;
    }

    if (v11 < 0 || v29 < v11)
    {
      goto LABEL_120;
    }

    v31 = *(v23 + 96);
    v147 = *(v23 + 88);
    v162 = v31;
    if (v30 && v11 < v156 && (v32 = (v30 + 16), v33 = *(v30 + 16), *(v30 + 16)))
    {
      v160 = v23;
      v34 = *(v30 + 18);
      v35 = swift_unknownObjectRetain_n();
      v140 = v30;
      if (!v34)
      {
        v37 = 0;
        v36 = v11;
LABEL_50:
        v10 = v162;
        v57 = 0;
        v56 = v33;
        v58 = v36 & ~(v36 >> 63);
        v45 = v147;
        v16 = v148;
        while ((v36 ^ v57) != 0x8000000000000000)
        {
          if (v58 == v57)
          {
            goto LABEL_56;
          }

          if (v56 == ++v57)
          {
            v36 -= v57;
            goto LABEL_55;
          }
        }

LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v36 = v11;
      v37 = v34;
      v38 = v35;
      do
      {
        v39 = *v32;
        if (*v32)
        {
          v40 = 0;
          v41 = (v38 + 32);
          while (1)
          {
            v42 = *v41;
            v41 += 3;
            v43 = v36 - v42;
            if (__OFSUB__(v36, v42))
            {
              break;
            }

            if (__OFADD__(v43, 1))
            {
              goto LABEL_114;
            }

            if (v43 + 1 < 1)
            {
              v39 = v40;
              goto LABEL_27;
            }

            ++v40;
            v36 = v43;
            if (v39 == v40)
            {
              goto LABEL_36;
            }
          }

          __break(1u);
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

        v43 = v36;
LABEL_36:
        if (v43)
        {
          goto LABEL_117;
        }

        v36 = 0;
LABEL_27:
        v37 = (v39 << ((4 * v34 + 8) & 0x3C)) | ((-15 << ((4 * v34 + 8) & 0x3C)) - 1) & v37;
        v34 = *(v38 + 24 + 24 * v39);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v35 = v34;
        v32 = (v34 + 16);
        LODWORD(v34) = *(v34 + 18);
        v38 = v35;
      }

      while (v34);
      v33 = *v32;
      if (*v32)
      {
        goto LABEL_50;
      }

      v56 = 0;
      v45 = v147;
      v16 = v148;
      v10 = v162;
LABEL_55:
      v58 = v56;
      if (v36)
      {
        goto LABEL_128;
      }

LABEL_56:
      v59 = v35;
      swift_unknownObjectRelease();
      v47 = v59;
      v46 = v37 & 0xFFFFFFFFFFFFF0FFLL | (v58 << 8);
      a2 = v158;
      v23 = v160;
      v30 = v140;
      v146 = v46;
      v147 = v47;
      if (v140)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v44 = swift_unknownObjectRetain();
      v45 = v147;
      v10 = v162;
      v46 = specialized Rope._endPath.getter(v44);
      v47 = 0;
      v16 = v148;
      v146 = v46;
      v147 = 0;
      if (v30)
      {
LABEL_39:
        v30 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v10, v46, v47, v30, v156, v45);
        swift_unknownObjectRelease();
      }
    }

    v48 = v155;
  }

  else
  {
    v146 = v13;
    v147 = v12;
    if (v16 == 2)
    {
      v162 = v10;
      v24 = *(v23 + 72);
      if (v24)
      {
        v25 = v23;
        v26 = *(v23 + 88);
        v27 = *(v25 + 80);
        swift_unknownObjectRetain();
        v28 = v26;
        v23 = v25;
        v156 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v162, v146, v147, v24, v27, v28);
        swift_unknownObjectRelease();
      }

      else
      {
        v156 = 0;
      }

      LODWORD(v140) = 1;
      goto LABEL_60;
    }

    v48 = v155;
    v30 = v155;
  }

  v162 = v10;
  if (v16 != 2 && v48 == v30)
  {
    v49 = v48;
    v50 = *(v23 + 40);
    v183 = *(v23 + 24);
    v184 = v50;
    v160 = v23;
    v185 = *(v23 + 56);
    swift_unknownObjectRetain();
    v51 = BigString.UTF8View.index(roundingDown:)();
    v138 = v53;
    v139 = v52;
    v137 = v54;
    v55 = v51;
    swift_unknownObjectRelease();
    LODWORD(v140) = 0;
    v156 = v49;
    if (!v154)
    {
      goto LABEL_73;
    }

    goto LABEL_61;
  }

  LODWORD(v140) = v16 == 2;
  v156 = v30;
LABEL_60:
  v60 = *(v23 + 24);
  v61 = *(v23 + 56);
  v184 = *(v23 + 40);
  v185 = v61;
  v62 = *(v23 + 40);
  v180 = *(v23 + 24);
  v181 = v62;
  v160 = v23;
  v182 = *(v23 + 56);
  v183 = v60;
  BigString.startIndex.getter();
  v138 = v64;
  v139 = v63;
  v186[0] = v183;
  v186[1] = v184;
  v187 = v185;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v186, &v166);
  v55 = BigString.UTF8View.index(_:offsetBy:)();
  v138 = v66;
  v139 = v65;
  v137 = v67;
  outlined destroy of BigString(&v183);
  if (!v154)
  {
    goto LABEL_73;
  }

LABEL_61:
  v68 = type metadata accessor for AttributedString.Runs();
  (*(v152 + 16))(v163, a2 + *(v68 + 24), v164);
  v154 = v55;
  if (v153 == 2)
  {
    v18 = v55;
  }

  else
  {
    v18 = v159;
  }

  RangeSet.ranges.getter();
  v69 = RangeSet.Ranges.count.getter();
  v70 = *(v161 + 8);
  v70(v8, v4);
  if (v69 >= 1)
  {
    v71 = 0;
    v72 = v18 >> 10;
    while (!__OFADD__(v71, v69))
    {
      v18 = (v71 + v69) / 2;
      RangeSet.ranges.getter();
      RangeSet.Ranges.subscript.getter();
      v70(v8, v4);
      if (v72 < v166 >> 10)
      {
        v69 = (v71 + v69) / 2;
        if (v71 >= v18)
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (v72 < v169 >> 10)
        {
          goto LABEL_72;
        }

        v71 = v18 + 1;
        if (v18 + 1 >= v69)
        {
          goto LABEL_71;
        }
      }
    }

LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  (*(v152 + 8))(v163, v164);
  a2 = v158;
  v55 = v154;
LABEL_73:
  v73 = v157;
  if (v157 == v149)
  {
    if (v153 == 2)
    {
      if (v150 == 2)
      {
        goto LABEL_84;
      }
    }

    else if (v150 != 2 && (v145 ^ v159) < 0x400)
    {
      goto LABEL_84;
    }
  }

  v74 = type metadata accessor for AttributedString.Runs();
  v163 = *(v74 + 24);
  RangeSet.ranges.getter();
  RangeSet.Ranges.subscript.getter();
  v75 = *(v161 + 8);
  v75(v8, v4);
  if (v166 >> 11 < v55 >> 11)
  {
    v159 = v75;
    v161 = v74;
    v76 = *(v160 + 72);
    v77 = *(v160 + 80);
    v78 = *(v160 + 88);
    v79 = *(v160 + 96);
    *&v166 = v162;
    *(&v166 + 1) = v146;
    v167 = v147;
    if (__OFSUB__(v73, 1))
    {
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    v162 = v73 - 1;
    swift_unknownObjectRetain();
    specialized Rope.formIndex(before:)(&v166, v76, v77, v78, v79);
    v157 = v166;
    v153 = v167;
    v154 = *(&v166 + 1);
    v80 = specialized Rope.subscript.getter(v166, *(&v166 + 1), v167, v76, v77, v78, v79);
    swift_unknownObjectRelease();

    v81 = __OFSUB__(v156, v80);
    v82 = v156 - v80;
    if (v81)
    {
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v140)
    {
      v83 = *(v160 + 24);
      v84 = *(v160 + 56);
      v178 = *(v160 + 40);
      v179 = v84;
      v177 = v83;
      v85 = *(v160 + 40);
      v174 = *(v160 + 24);
      v175 = v85;
      v176 = *(v160 + 56);
      v160 = BigString.startIndex.getter();
      v156 = v86;
      v188[0] = v177;
      v188[1] = v178;
      v189 = v179;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v188, &v166);
      v87 = BigString.UTF8View.index(_:offsetBy:)();
      v160 = v88;
      v90 = v89;
      v92 = v91;
      outlined destroy of BigString(&v177);
    }

    else
    {
      v124 = *(v160 + 40);
      v177 = *(v160 + 24);
      v178 = v124;
      v179 = *(v160 + 56);
      if (__OFSUB__(v82, v155))
      {
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      swift_unknownObjectRetain();
      v87 = BigString.UTF8View.index(_:offsetBy:)();
      v160 = v125;
      v90 = v126;
      v92 = v127;
      swift_unknownObjectRelease();
    }

    v128 = v141;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    (v159)(v128, v4);
    v130 = *(&v166 + 1);
    v129 = v166;
    v131 = v167;
    v132 = v168;
    if (v166 >> 10 < v87 >> 10)
    {
      v129 = v87;
    }

    v133 = v160;
    if (v166 >> 10 < v87 >> 10)
    {
      v130 = v160;
      v131 = v90;
      v132 = v92;
    }

    v134 = *(a2 + *(v161 + 28));
    v165 = 0;
    v135 = v151;
    *v151 = v162;
    v135[1] = v157;
    v135[2] = v154;
    v135[3] = v153;
    v135[4] = v87;
    v135[5] = v133;
    v135[6] = v90;
    v135[7] = v92;
    v135[8] = v129;
    v135[9] = v130;
    v135[10] = v131;
    v135[11] = v132;
    v135[12] = v18;
    *(v135 + 104) = 0;
    *(v135 + 105) = v134;
    return;
  }

LABEL_84:
  v93 = type metadata accessor for AttributedString.Runs();
  RangeSet.ranges.getter();
  if (__OFSUB__(v18, 1))
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v163 = v93;
  v164 = v18 - 1;
  RangeSet.Ranges.subscript.getter();
  (*(v161 + 8))(v8, v4);
  v156 = *(&v166 + 1);
  v94 = v166;
  v159 = v167;
  v161 = v168;
  v95 = *(v160 + 40);
  v177 = *(v160 + 24);
  v178 = v95;
  v179 = *(v160 + 56);
  swift_unknownObjectRetain();
  v96 = BigString.UTF8View.index(before:)();
  v98 = v97;
  swift_unknownObjectRelease();
  v99 = v55 >> 10;
  if (v55 >> 10 <= v96 >> 10)
  {
    v113 = v159;
    v114 = *(v158 + *(v163 + 7));
    v115 = v94 >> 10 >= v99;
    if (v94 >> 10 >= v99)
    {
      v116 = v94;
    }

    else
    {
      v116 = v55;
    }

    v118 = v138;
    v117 = v139;
    v119 = v156;
    if (!v115)
    {
      v119 = v139;
    }

    LOBYTE(v166) = 0;
    if (!v115)
    {
      v113 = v138;
    }

    v120 = v137;
    v121 = v161;
    if (!v115)
    {
      v121 = v137;
    }

    v122 = v151;
    *v151 = v157;
    v122[1] = v162;
    v122[2] = v146;
    v122[3] = v147;
    v122[4] = v55;
    v122[5] = v117;
    v122[6] = v118;
    v122[7] = v120;
    v122[8] = v116;
    v122[9] = v119;
    v122[10] = v113;
    v123 = v164;
    v122[11] = v121;
    v122[12] = v123;
    *(v122 + 104) = 0;
    *(v122 + 105) = v114;
  }

  else
  {
    AttributedString.Guts.findRun(at:)(v96, v98, &v166);
    v100 = v167;
    v101 = v170;
    v102 = v171;
    v103 = v172;
    v104 = v173;
    if (v94 >> 10 >= v170 >> 10)
    {
      v105 = v94;
    }

    else
    {
      v105 = v170;
    }

    v106 = v156;
    if (v94 >> 10 < v170 >> 10)
    {
      v106 = v171;
    }

    v107 = v159;
    if (v94 >> 10 < v170 >> 10)
    {
      v107 = v172;
    }

    v108 = v161;
    if (v94 >> 10 < v170 >> 10)
    {
      v108 = v173;
    }

    v109 = v166;
    v110 = *(v158 + *(v163 + 7));
    LOBYTE(v166) = 0;
    v111 = v151;
    *v151 = v168;
    *(v111 + 1) = v109;
    v111[3] = v100;
    v111[4] = v101;
    v111[5] = v102;
    v111[6] = v103;
    v111[7] = v104;
    v111[8] = v105;
    v111[9] = v106;
    v111[10] = v107;
    v112 = v164;
    v111[11] = v108;
    v111[12] = v112;
    *(v111 + 104) = 0;
    *(v111 + 105) = v110;
  }
}

void implicit closure #5 in implicit closure #4 in AttributedString.Runs._index(_:offsetBy:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v125 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v138 = &v115 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v128 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v115 - v7;
  v9 = *a1;
  v10 = a2[1];
  if (*a1 < v10)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v139 = v4;
  v11 = *(a1 + 8);
  v136 = *(a1 + 16);
  v13 = *(a1 + 24);
  v12 = *(a1 + 32);
  v14 = *(a1 + 40);
  v120 = *(a1 + 48);
  v121 = v14;
  v15 = *(a1 + 64);
  v131 = *(a1 + 56);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  v19 = v10 < v9 || a2[12] == 2;
  v20 = v19;
  v21 = a2[9];
  if (!v19)
  {
    if (v16 == 2)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v15 >> 10 < v21 >> 10)
    {
      goto LABEL_121;
    }
  }

  v22 = a2[15];
  v23 = a2[23];
  v115 = a2 + 15;
  v24 = a2[26];
  if (v9 >= v22)
  {
    if (v22 < v9)
    {
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v24 == 2)
    {
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    if (v16 == 2)
    {
      if (!v20)
      {
        goto LABEL_129;
      }

      goto LABEL_21;
    }

    if (v15 >> 10 >= v23 >> 10)
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }
  }

  if ((v20 & 1) == 0)
  {
    if (v16 == 2)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v15 >> 10 < v21 >> 10)
    {
      goto LABEL_125;
    }
  }

LABEL_21:
  if (v22 < v9)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (v9 >= v22 && v16 != 2)
  {
    if (v24 == 2)
    {
LABEL_132:
      __break(1u);
      return;
    }

    if (v23 >> 10 < v15 >> 10)
    {
      goto LABEL_123;
    }
  }

  v126 = v18;
  v127 = v15;
  v118 = v16;
  v119 = v12;
  v129 = v12 >> 11;
  v132 = v9;
  v133 = a2;
  v124 = a1;
  if (v13 == 1 || (v25 = *a2, v11 != *(*a2 + 96)))
  {
    if (*(a2 + *(type metadata accessor for AttributedString.Runs() + 28)))
    {
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v25 = *a2;
    v13 = *(*a2 + 72);
    v29 = *(*a2 + 80);
    v134 = v29;
    if (!v13)
    {
      v29 = 0;
    }

    if (v9 < 0 || v29 < v9)
    {
      goto LABEL_120;
    }

    v30 = *(v25 + 96);
    v130 = *(v25 + 88);
    v137 = v30;
    if (v13 && v9 < v134 && (v31 = (v13 + 16), v32 = *(v13 + 16), *(v13 + 16)))
    {
      v135 = v25;
      v33 = *(v13 + 18);
      swift_unknownObjectRetain_n();
      v123 = v13;
      if (!v33)
      {
        v35 = 0;
        v34 = v132;
LABEL_59:
        v47 = 0;
        v46 = v32;
        v48 = v34 & ~(v34 >> 63);
        while ((v34 ^ v47) != 0x8000000000000000)
        {
          if (v48 == v47)
          {
            goto LABEL_65;
          }

          if (v32 == ++v47)
          {
            v34 -= v47;
            goto LABEL_64;
          }
        }

LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      v34 = v132;
      v35 = v33;
      v36 = v13;
      do
      {
        v37 = *v31;
        if (*v31)
        {
          v38 = 0;
          v39 = (v36 + 32);
          while (1)
          {
            v40 = *v39;
            v39 += 3;
            v41 = v34 - v40;
            if (__OFSUB__(v34, v40))
            {
              break;
            }

            if (__OFADD__(v41, 1))
            {
              goto LABEL_109;
            }

            if (v41 + 1 < 1)
            {
              v37 = v38;
              goto LABEL_42;
            }

            ++v38;
            v34 = v41;
            if (v37 == v38)
            {
              goto LABEL_51;
            }
          }

          __break(1u);
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        v41 = v34;
LABEL_51:
        if (v41)
        {
          goto LABEL_112;
        }

        v34 = 0;
LABEL_42:
        v35 = (v37 << ((4 * v33 + 8) & 0x3C)) | ((-15 << ((4 * v33 + 8) & 0x3C)) - 1) & v35;
        v13 = *(v36 + 24 + 24 * v37);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v31 = (v13 + 16);
        LOBYTE(v33) = *(v13 + 18);
        v36 = v13;
      }

      while (v33);
      v32 = *v31;
      if (*v31)
      {
        goto LABEL_59;
      }

      v46 = 0;
LABEL_64:
      v48 = v46;
      if (v34)
      {
        goto LABEL_128;
      }

LABEL_65:
      swift_unknownObjectRelease();
      v136 = v35 & 0xFFFFFFFFFFFFF0FFLL | (v48 << 8);
      v25 = v135;
      v43 = v123;
      v44 = v129;
      if (v123)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v42 = swift_unknownObjectRetain();
      v136 = specialized Rope._endPath.getter(v42);
      v43 = v13;
      v13 = 0;
      v44 = v129;
      if (v43)
      {
LABEL_54:
        v45 = v137;
        v134 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v137, v136, v13, v43, v134, v130);
        swift_unknownObjectRelease();
        v44 = v129;
        v11 = v45;
        goto LABEL_67;
      }
    }

    v134 = 0;
    v11 = v137;
    goto LABEL_67;
  }

  if (v131 == 2)
  {
    v137 = v11;
    v26 = *(v25 + 72);
    if (v26)
    {
      v28 = *(v25 + 80);
      v27 = *(v25 + 88);
      swift_unknownObjectRetain();
      v134 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v137, v136, v13, v26, v28, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      v134 = 0;
    }

    v122 = 1;
    goto LABEL_72;
  }

  v44 = v129;
  v134 = v129;
LABEL_67:
  v122 = v131 == 2;
  v137 = v11;
  if (v131 != 2 && v44 == v134)
  {
    v49 = v44;
    v50 = *(v25 + 40);
    v144 = *(v25 + 24);
    v145 = v50;
    v146 = *(v25 + 56);
    swift_unknownObjectRetain();
    v117 = BigString.UTF8View.index(roundingDown:)();
    swift_unknownObjectRelease();
    v122 = 0;
    v134 = v49;
    goto LABEL_73;
  }

LABEL_72:
  v135 = v25;
  v51 = *(v25 + 24);
  v52 = *(v25 + 56);
  v145 = *(v25 + 40);
  v146 = v52;
  v53 = *(v25 + 40);
  v143[6] = *(v25 + 24);
  v143[7] = v53;
  v143[8] = *(v25 + 56);
  v144 = v51;
  v130 = BigString.startIndex.getter();
  v147[0] = v144;
  v147[1] = v145;
  v148 = v146;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v147, &v141);
  v25 = v135;
  v117 = BigString.UTF8View.index(_:offsetBy:)();
  outlined destroy of BigString(&v144);
LABEL_73:
  v54 = *(v25 + 72);
  v55 = *(v25 + 80);
  v56 = *(v25 + 88);
  v123 = *(v25 + 96);
  v58 = v136;
  v57 = v137;
  *&v141 = v137;
  *(&v141 + 1) = v136;
  *&v142 = v13;
  if (__OFADD__(v132, 1))
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v116 = v132 + 1;
  v135 = v25;
  v59 = v56;
  swift_unknownObjectRetain();
  v132 = v54;
  v130 = v55;
  v60 = v55;
  v61 = v123;
  v62 = specialized Rope.subscript.getter(v57, v58, v13, v54, v60, v59, v123);

  if (__OFADD__(v134, v62))
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  if (v57 != v61)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v63 = v134 + v62;
  v64 = specialized Rope._endPath.getter(v132);
  v65 = v136;
  if (v136 >= v64)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v134 = v63;
  if (v13 && (v66 = (4 * *(v13 + 18) + 8) & 0x3C, v67 = ((v136 >> v66) & 0xF) + 1, v67 < *(v13 + 16)))
  {
    swift_unknownObjectRelease();
    v136 = (v67 << v66) | ((-15 << v66) - 1) & v65;
    v68 = v133;
    v69 = v139;
    v70 = v135;
    v71 = v127;
    v72 = v126;
  }

  else
  {
    v73 = v132;
    v74 = specialized Rope._Node.formSuccessor(of:)(&v141, v132);
    v68 = v133;
    v70 = v135;
    v72 = v126;
    if (v74)
    {
      swift_unknownObjectRelease();
      v136 = *(&v141 + 1);
    }

    else
    {
      v75 = v137;
      v76 = specialized Rope._endPath.getter(v73);
      v77 = v68;
      v78 = v76;
      swift_unknownObjectRelease();
      *&v141 = v75;
      *(&v141 + 1) = v78;
      v136 = v78;
      v68 = v77;
      *&v142 = 0;
    }

    v69 = v139;
    v71 = v127;
  }

  v130 = v141;
  v132 = v142;
  v137 = type metadata accessor for AttributedString.Runs();
  if (v72)
  {
    (*(v125 + 16))(v138, v68 + *(v137 + 24), v69);
    if (v118 == 2)
    {
      v17 = v117;
    }

    else
    {
      v17 = v71;
    }

    RangeSet.ranges.getter();
    v70 = RangeSet.Ranges.count.getter();
    v79 = *(v128 + 8);
    v79(v8, v6);
    if (v70 >= 1)
    {
      v80 = 0;
      v81 = v17 >> 10;
      while (!__OFADD__(v80, v70))
      {
        v17 = (v80 + v70) / 2;
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        v79(v8, v6);
        if (v81 < v141 >> 10)
        {
          v70 = (v80 + v70) / 2;
          if (v80 >= v17)
          {
            goto LABEL_95;
          }
        }

        else
        {
          v82 = *&v143[0];
          if (v81 < *&v143[0] >> 10)
          {
            (*(v125 + 8))(v138, v139);
            v83 = v124;
            v70 = v135;
            goto LABEL_98;
          }

          v80 = v17 + 1;
          if (v17 + 1 >= v70)
          {
            goto LABEL_95;
          }
        }
      }

LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

LABEL_95:
    __break(1u);
  }

  RangeSet.ranges.getter();
  RangeSet.Ranges.subscript.getter();
  v79 = *(v128 + 8);
  v79(v8, v6);
  v82 = *&v143[0];
  v83 = v124;
LABEL_98:
  if (v134 < (v82 >> 11))
  {
    if (v122)
    {
      v84 = *(v70 + 24);
      v85 = *(v70 + 56);
      v142 = *(v70 + 40);
      v143[0] = v85;
      v141 = v84;
      v143[3] = *(v70 + 24);
      v86 = *(v70 + 56);
      v143[4] = *(v70 + 40);
      v143[5] = v86;
      BigString.startIndex.getter();
      v149[0] = v141;
      v149[1] = v142;
      v150 = *&v143[0];
      outlined init with copy of Rope<BigString._Chunk>._Node?(v149, v140);
      v87 = BigString.UTF8View.index(_:offsetBy:)();
      v89 = v88;
      v91 = v90;
      v93 = v92;
      outlined destroy of BigString(&v141);
    }

    else
    {
      v100 = *(v70 + 40);
      v141 = *(v70 + 24);
      v142 = v100;
      v143[0] = *(v70 + 56);
      if (__OFSUB__(v134, v129))
      {
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      swift_unknownObjectRetain();
      v87 = BigString.UTF8View.index(_:offsetBy:)();
      v89 = v101;
      v91 = v102;
      v93 = v103;
      swift_unknownObjectRelease();
    }

    v104 = v136;
    v105 = v132;
    v106 = v130;
    v107 = *(v133 + *(v137 + 28));
    v140[0] = 0;
    *v83 = v116;
    *(v83 + 8) = v106;
    *(v83 + 16) = v104;
    *(v83 + 24) = v105;
    *(v83 + 32) = v87;
    *(v83 + 40) = v89;
    *(v83 + 48) = v91;
    *(v83 + 56) = v93;
    *(v83 + 64) = v87;
    *(v83 + 72) = v89;
    *(v83 + 80) = v91;
    *(v83 + 88) = v93;
    *(v83 + 96) = v17;
    *(v83 + 104) = 0;
    *(v83 + 105) = v107;
    return;
  }

  v94 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    goto LABEL_124;
  }

  RangeSet.ranges.getter();
  v95 = RangeSet.Ranges.count.getter();
  v79(v8, v6);
  if (v94 == v95)
  {
    v96 = v115;
    v97 = v115[5];
    *(v83 + 64) = v115[4];
    *(v83 + 80) = v97;
    *(v83 + 90) = *(v96 + 90);
    v98 = v96[1];
    *v83 = *v96;
    *(v83 + 16) = v98;
    v99 = v96[3];
    *(v83 + 32) = v96[2];
    *(v83 + 48) = v99;
  }

  else
  {
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    v79(v8, v6);
    v108 = v141;
    v109 = v142;
    AttributedString.Guts.findRun(at:)(v141, *(&v142 + 1), &v141);
    v110 = v142;
    v111 = v141;
    v112 = *(v143 + 8);
    v113 = *(&v143[1] + 8);
    v114 = *(v133 + *(v137 + 28));
    LOBYTE(v141) = 0;
    *v83 = *(&v142 + 1);
    *(v83 + 8) = v111;
    *(v83 + 24) = v110;
    *(v83 + 32) = v112;
    *(v83 + 48) = v113;
    *(v83 + 64) = v108;
    *(v83 + 80) = v109;
    *(v83 + 96) = v94;
    *(v83 + 104) = 0;
    *(v83 + 105) = v114;
  }
}

void AttributedString.Runs.index(_:offsetBy:limitedBy:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = AttributedString.Runs._distance(from:to:)(a1, a3);
  if (a2 >= 1)
  {
    if (v7 < 0 || v7 >= a2)
    {
      goto LABEL_8;
    }

LABEL_7:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 2;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 90) = 0u;
    return;
  }

  if (v7 <= 0 && v7 > a2)
  {
    goto LABEL_7;
  }

LABEL_8:

  AttributedString.Runs._index(_:offsetBy:)(a1, a2, a4);
}

uint64_t AttributedString.Runs.subscript.getter@<X0>(unint64_t *a1@<X0>, int8x16_t *a2@<X8>)
{
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52.i8[-v6];
  v8 = *a1;
  v57 = a1[1];
  v58 = v8;
  v9 = a1[2];
  v55 = a1[3];
  v56 = v9;
  v10 = *(type metadata accessor for AttributedString.Runs() + 24);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v61 = v10;
  v62.i64[0] = v2;
  v60 = v11;
  RangeSet.ranges.getter();
  v12 = RangeSet.Ranges.count.getter();
  v13 = *(v5 + 8);
  v59 = v5 + 8;
  v14 = v13;
  result = v13(v7, v4);
  if (v12 < 1)
  {
LABEL_13:
    __break(1u);
  }

  else
  {
    v16 = 0;
    v17 = v58 >> 10;
    while (!__OFADD__(v16, v12))
    {
      v18 = (v16 + v12) / 2;
      RangeSet.ranges.getter();
      RangeSet.Ranges.subscript.getter();
      result = v14(v7, v4);
      v19 = v63;
      v20 = v63 >> 10;
      if (v17 >= v63 >> 10)
      {
        v21 = *&v65[0];
        if (v17 < *&v65[0] >> 10)
        {
          v59 = *(&v64 + 1);
          v53 = v64;
          v60 = *(&v63 + 1);
          v22 = *v62.i64[0];
          AttributedString.Guts.findRun(at:)(v58, v55, &v63);
          v23 = *(&v63 + 1);
          v61 = v63;
          v24 = v64;
          v52 = *(&v65[1] + 8);
          v62 = *(v65 + 8);
          v26 = *(v22 + 72);
          v25 = *(v22 + 80);
          v28 = *(v22 + 88);
          v27 = *(v22 + 96);
          swift_unknownObjectRetain();
          v29 = specialized Rope.subscript.getter(v61, v23, v24, v26, v25, v28, v27);
          v31 = v30;
          v33 = v32;
          result = swift_unknownObjectRelease();
          v34 = v29 + (v62.i64[0] >> 11);
          if (__OFADD__(v29, v62.i64[0] >> 11))
          {
            goto LABEL_15;
          }

          if ((v21 >> 11) < v34)
          {
            v34 = v21 >> 11;
          }

          v35 = *(v22 + 40);
          v63 = *(v22 + 24);
          v64 = v35;
          v65[0] = *(v22 + 56);
          if (!__OFSUB__(v34, v58 >> 11))
          {
            v36 = v20 < v62.i64[0] >> 10;
            swift_unknownObjectRetain();
            v37 = BigString.UTF8View.index(_:offsetBy:)();
            v39 = v38;
            v41 = v40;
            v43 = v42;
            swift_unknownObjectRelease();
            v44.i64[0] = v53;
            v45 = v60;
            v44.i64[1] = v59;
            v46 = v54;
            v54->i64[0] = v31;
            v46->i64[1] = v33;
            v47.i64[0] = v19;
            v47.i64[1] = v45;
            v48 = vdup_n_s32(v36);
            v49.i64[0] = v48.u32[0];
            v49.i64[1] = v48.u32[1];
            v50 = vcltzq_s64(vshlq_n_s64(v49, 0x3FuLL));
            v51 = vbslq_s8(v50, v52, v44);
            v46[1] = vbslq_s8(v50, v62, v47);
            v46[2] = v51;
            v46[3].i64[0] = v37;
            v46[3].i64[1] = v39;
            v46[4].i64[0] = v41;
            v46[4].i64[1] = v43;
            v46[5].i64[0] = v22;
          }

          goto LABEL_16;
        }

        v16 = v18 + 1;
        v18 = v12;
      }

      v12 = v18;
      if (v16 >= v18)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void protocol witness for BidirectionalCollection.formIndex(before:) in conformance AttributedString.Runs(uint64_t a1, uint64_t a2)
{
  v143 = a2;
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v140 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v117 - v9;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v131 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v117 - v11;
  v13 = *a1;
  v12 = *(a1 + 8);
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = *(a1 + 32);
  v124 = *(a1 + 40);
  v123 = *(a1 + 48);
  v136 = *(a1 + 56);
  v137 = v16;
  v17 = *(a1 + 64);
  v18 = *(a1 + 96);
  v141 = *(a1 + 88);
  v19 = *(a1 + 104);
  v20 = v3[1];
  if (v20 >= v13)
  {
    if (v13 < v20)
    {
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v141 == 2)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    if (v3[12] != 2 && v3[9] >> 10 >= v17 >> 10)
    {
      goto LABEL_92;
    }
  }

  v21 = v3[15];
  if (v21 < v13)
  {
    goto LABEL_84;
  }

  v126 = v3[23];
  v132 = v3[26];
  if (v13 >= v21 && v141 != 2)
  {
    if (v132 == 2)
    {
LABEL_95:
      __break(1u);
      return;
    }

    if (v126 >> 10 < v17 >> 10)
    {
      goto LABEL_89;
    }
  }

  v125 = v17;
  v134 = v13;
  v138 = v3;
  v122 = v7;
  v130 = v21;
  LODWORD(v133) = v19;
  if (v14 == 1 || (v22 = *v3, v12 != *(*v3 + 96)))
  {
    if (*(v3 + *(v143 + 28)))
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v29 = *v3;
    v30 = *(*v3 + 72);
    v31 = *(*v3 + 80);
    v32 = *(*v3 + 88);
    v33 = *(*v3 + 96);
    v142 = v29;
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v13, 0, v30, v31, v32, v33) != v33)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v128 = v35;
    v129 = v33;
    v127 = v34;
    if (v30)
    {
      v36 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v33, v34, v35, v30, v31, v32);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0;
    }

    v22 = v142;
    v3 = v138;
  }

  else
  {
    v128 = v14;
    v129 = v12;
    v127 = v15;
    if (v136 == 2)
    {
      v23 = *(v22 + 72);
      if (v23)
      {
        v25 = *(v22 + 80);
        v24 = *(v22 + 88);
        v26 = v3;
        v27 = v22;
        swift_unknownObjectRetain();
        v28 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v129, v127, v128, v23, v25, v24);
        swift_unknownObjectRelease();
        v22 = v27;
        v3 = v26;
      }

      else
      {
        v28 = 0;
      }

      v135 = v28;
      v117 = v137 >> 11;
      v121 = 1;
      goto LABEL_29;
    }

    v36 = v137 >> 11;
  }

  v37 = v137 >> 11;
  v117 = v137 >> 11;
  if (v136 != 2 && v37 == v36)
  {
    v38 = *(v22 + 40);
    v164 = *(v22 + 24);
    v165 = v38;
    v142 = v22;
    v166 = *(v22 + 56);
    swift_unknownObjectRetain();
    v139 = BigString.UTF8View.index(roundingDown:)();
    v119 = v40;
    v120 = v39;
    v118 = v41;
    swift_unknownObjectRelease();
    v121 = 0;
    goto LABEL_30;
  }

  v121 = v136 == 2;
  v135 = v36;
LABEL_29:
  v42 = *(v22 + 24);
  v43 = *(v22 + 56);
  v165 = *(v22 + 40);
  v166 = v43;
  v44 = *(v22 + 40);
  v161 = *(v22 + 24);
  v162 = v44;
  v142 = v22;
  v163 = *(v22 + 56);
  v164 = v42;
  BigString.startIndex.getter();
  v139 = v45;
  v120 = v46;
  v167[0] = v164;
  v167[1] = v165;
  v168 = v166;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v167, &v147);
  v37 = v135;
  v139 = BigString.UTF8View.index(_:offsetBy:)();
  v119 = v48;
  v120 = v47;
  v118 = v49;
  outlined destroy of BigString(&v164);
LABEL_30:
  v135 = v37;
  if (v133)
  {
    v133 = a1;
    (*(v131 + 16))(v144, v3 + *(v143 + 24), v145);
    if (v141 == 2)
    {
      v18 = v139;
    }

    else
    {
      v18 = v125;
    }

    RangeSet.ranges.getter();
    v50 = RangeSet.Ranges.count.getter();
    v51 = *(v140 + 8);
    v51(v10, v5);
    if (v50 >= 1)
    {
      v52 = 0;
      v53 = v18 >> 10;
      while (!__OFADD__(v52, v50))
      {
        v18 = (v52 + v50) / 2;
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        v51(v10, v5);
        if (v53 < v147 >> 10)
        {
          v50 = (v52 + v50) / 2;
          if (v52 >= v18)
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v53 < v150 >> 10)
          {
            goto LABEL_42;
          }

          v52 = v18 + 1;
          if (v18 + 1 >= v50)
          {
            goto LABEL_41;
          }
        }
      }

      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    (*(v131 + 8))(v144, v145);
    a1 = v133;
    v3 = v138;
  }

  v54 = v134;
  if (v134 == v130)
  {
    if (v141 == 2)
    {
      if (v132 == 2)
      {
        goto LABEL_54;
      }
    }

    else if (v132 != 2 && (v126 ^ v125) < 0x400)
    {
      goto LABEL_54;
    }
  }

  v55 = *(v143 + 24);
  RangeSet.ranges.getter();
  RangeSet.Ranges.subscript.getter();
  v56 = *(v140 + 8);
  v56(v10, v5);
  if (v147 >> 11 < v139 >> 11)
  {
    v141 = v56;
    v144 = v55;
    v57 = *(v142 + 72);
    v58 = *(v142 + 80);
    v59 = v54;
    v60 = *(v142 + 88);
    v61 = *(v142 + 96);
    *&v147 = v129;
    *(&v147 + 1) = v127;
    v148 = v128;
    v62 = __OFSUB__(v59, 1);
    v63 = v59 - 1;
    if (v62)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v140 = v63;
    swift_unknownObjectRetain();
    specialized Rope.formIndex(before:)(&v147, v57, v58, v60, v61);
    v139 = v147;
    v133 = v148;
    v134 = *(&v147 + 1);
    v64 = specialized Rope.subscript.getter(v147, *(&v147 + 1), v148, v57, v58, v60, v61);
    swift_unknownObjectRelease();

    v62 = __OFSUB__(v135, v64);
    v65 = v135 - v64;
    if (v62)
    {
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    if (v121)
    {
      v66 = *(v142 + 24);
      v67 = *(v142 + 56);
      v159 = *(v142 + 40);
      v160 = v67;
      v158 = v66;
      v68 = *(v142 + 40);
      v155 = *(v142 + 24);
      v156 = v68;
      v157 = *(v142 + 56);
      v142 = BigString.startIndex.getter();
      v136 = v70;
      v137 = v69;
      v169[0] = v158;
      v169[1] = v159;
      v170 = v160;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v169, &v147);
      v71 = BigString.UTF8View.index(_:offsetBy:)();
      v142 = v72;
      v137 = v73;
      v75 = v74;
      outlined destroy of BigString(&v158);
    }

    else
    {
      v105 = *(v142 + 40);
      v158 = *(v142 + 24);
      v159 = v105;
      v160 = *(v142 + 56);
      if (__OFSUB__(v65, v117))
      {
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      swift_unknownObjectRetain();
      v71 = BigString.UTF8View.index(_:offsetBy:)();
      v142 = v106;
      v137 = v107;
      v75 = v108;
      swift_unknownObjectRelease();
    }

    v109 = v122;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    v141(v109, v5);
    v111 = *(&v147 + 1);
    v110 = v147;
    v112 = v148;
    v113 = v149;
    if (v147 >> 10 < v71 >> 10)
    {
      v110 = v71;
    }

    v114 = v142;
    if (v147 >> 10 < v71 >> 10)
    {
      v111 = v142;
    }

    v115 = v137;
    if (v147 >> 10 < v71 >> 10)
    {
      v112 = v137;
      v113 = v75;
    }

    v116 = *(v3 + *(v143 + 28));
    v146 = 0;
    *a1 = v140;
    *(a1 + 8) = v139;
    *(a1 + 16) = v134;
    *(a1 + 24) = v133;
    *(a1 + 32) = v71;
    *(a1 + 40) = v114;
    *(a1 + 48) = v115;
    *(a1 + 56) = v75;
    *(a1 + 64) = v110;
    *(a1 + 72) = v111;
    *(a1 + 80) = v112;
    *(a1 + 88) = v113;
    *(a1 + 96) = v18;
    *(a1 + 104) = 0;
    *(a1 + 105) = v116;
    return;
  }

LABEL_54:
  RangeSet.ranges.getter();
  if (__OFSUB__(v18, 1))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v145 = v18 - 1;
  RangeSet.Ranges.subscript.getter();
  (*(v140 + 8))(v10, v5);
  v140 = *(&v147 + 1);
  v76 = v147;
  v141 = v148;
  v144 = v149;
  v77 = *(v142 + 40);
  v158 = *(v142 + 24);
  v159 = v77;
  v160 = *(v142 + 56);
  swift_unknownObjectRetain();
  v78 = BigString.UTF8View.index(before:)();
  v80 = v79;
  swift_unknownObjectRelease();
  v81 = v139;
  v82 = v139 >> 10;
  if (v139 >> 10 <= v78 >> 10)
  {
    v95 = v144;
    v96 = *(v138 + *(v143 + 28));
    v97 = v76 >> 10 >= v82;
    if (v76 >> 10 >= v82)
    {
      v98 = v76;
    }

    else
    {
      v98 = v139;
    }

    v100 = v119;
    v99 = v120;
    v101 = v140;
    v102 = v141;
    if (!v97)
    {
      v101 = v120;
    }

    LOBYTE(v147) = 0;
    if (!v97)
    {
      v102 = v119;
    }

    v103 = v118;
    if (!v97)
    {
      v95 = v118;
    }

    *a1 = v134;
    *(a1 + 8) = v129;
    *(a1 + 16) = v127;
    *(a1 + 24) = v128;
    *(a1 + 32) = v81;
    *(a1 + 40) = v99;
    *(a1 + 48) = v100;
    *(a1 + 56) = v103;
    *(a1 + 64) = v98;
    *(a1 + 72) = v101;
    *(a1 + 80) = v102;
    v104 = v145;
    *(a1 + 88) = v95;
    *(a1 + 96) = v104;
    *(a1 + 104) = 0;
    *(a1 + 105) = v96;
  }

  else
  {
    AttributedString.Guts.findRun(at:)(v78, v80, &v147);
    v83 = v148;
    v84 = v151;
    v85 = v152;
    v86 = v153;
    v87 = v154;
    if (v76 >> 10 >= v151 >> 10)
    {
      v88 = v76;
    }

    else
    {
      v88 = v151;
    }

    v89 = v140;
    v90 = v141;
    if (v76 >> 10 < v151 >> 10)
    {
      v89 = v152;
      v90 = v153;
    }

    v91 = v144;
    if (v76 >> 10 < v151 >> 10)
    {
      v91 = v154;
    }

    v92 = v147;
    v93 = *(v138 + *(v143 + 28));
    LOBYTE(v147) = 0;
    *a1 = v149;
    *(a1 + 8) = v92;
    *(a1 + 24) = v83;
    *(a1 + 32) = v84;
    *(a1 + 40) = v85;
    *(a1 + 48) = v86;
    *(a1 + 56) = v87;
    *(a1 + 64) = v88;
    *(a1 + 72) = v89;
    *(a1 + 80) = v90;
    v94 = v145;
    *(a1 + 88) = v91;
    *(a1 + 96) = v94;
    *(a1 + 104) = 0;
    *(a1 + 105) = v93;
  }
}

void *protocol witness for Collection.subscript.getter in conformance AttributedString.Runs@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[11];
  v9[10] = a1[10];
  v9[11] = v2;
  v10[0] = a1[12];
  *(v10 + 10) = *(a1 + 202);
  v3 = a1[7];
  v9[6] = a1[6];
  v9[7] = v3;
  v4 = a1[9];
  v9[8] = a1[8];
  v9[9] = v4;
  v5 = a1[3];
  v9[2] = a1[2];
  v9[3] = v5;
  v6 = a1[5];
  v9[4] = a1[4];
  v9[5] = v6;
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  return specialized Collection<>.subscript.getter(v9, a2);
}

__n128 protocol witness for Collection.indices.getter in conformance AttributedString.Runs@<Q0>(uint64_t a1@<X8>)
{
  outlined init with copy of AttributedString.Runs(v1, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSIy10Foundation16AttributedStringV4RunsVGMd);
  v4 = (a1 + *(v3 + 36));
  v5 = *(v1 + 56);
  v6 = *(v1 + 88);
  v4[4] = *(v1 + 72);
  v4[5] = v6;
  *(v4 + 90) = *(v1 + 98);
  v7 = *(v1 + 24);
  *v4 = *(v1 + 8);
  v4[1] = v7;
  v4[2] = *(v1 + 40);
  v4[3] = v5;
  v8 = a1 + *(v3 + 40);
  result = *(v1 + 168);
  v10 = *(v1 + 200);
  *(v8 + 64) = *(v1 + 184);
  *(v8 + 80) = v10;
  *(v8 + 90) = *(v1 + 210);
  v11 = *(v1 + 136);
  *v8 = *(v1 + 120);
  *(v8 + 16) = v11;
  *(v8 + 32) = *(v1 + 152);
  *(v8 + 48) = result;
  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AttributedString.Runs(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v16[4] = a1[4];
  v17[0] = v2;
  *(v17 + 10) = *(a1 + 90);
  v3 = a1[1];
  v16[0] = *a1;
  v16[1] = v3;
  v4 = a1[3];
  v16[2] = a1[2];
  v16[3] = v4;
  v5 = a2[1];
  v18[0] = *a2;
  v18[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[5];
  v18[4] = a2[4];
  v18[5] = v8;
  v18[2] = v6;
  v18[3] = v7;
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[6] = v9;
  v18[7] = v10;
  v12 = a2[10];
  v13 = a2[11];
  v14 = a2[12];
  *(v19 + 10) = *(a2 + 202);
  v18[11] = v13;
  v19[0] = v14;
  v18[10] = v12;
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(v16, v18);
}

{
  v2 = a1[5];
  v16[4] = a1[4];
  v17[0] = v2;
  *(v17 + 10) = *(a1 + 90);
  v3 = a1[1];
  v16[0] = *a1;
  v16[1] = v3;
  v4 = a1[3];
  v16[2] = a1[2];
  v16[3] = v4;
  v5 = a2[1];
  v18[0] = *a2;
  v18[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[5];
  v18[4] = a2[4];
  v18[5] = v8;
  v18[2] = v6;
  v18[3] = v7;
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[6] = v9;
  v18[7] = v10;
  v12 = a2[10];
  v13 = a2[11];
  v14 = a2[12];
  *(v19 + 10) = *(a2 + 202);
  v18[11] = v13;
  v19[0] = v14;
  v18[10] = v12;
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(v16, v18);
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AttributedString.Runs(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[11];
  v15[10] = a1[10];
  v15[11] = v2;
  v16[0] = a1[12];
  *(v16 + 10) = *(a1 + 202);
  v3 = a1[7];
  v15[6] = a1[6];
  v15[7] = v3;
  v4 = a1[9];
  v15[8] = a1[8];
  v15[9] = v4;
  v5 = a1[3];
  v15[2] = a1[2];
  v15[3] = v5;
  v6 = a1[5];
  v15[4] = a1[4];
  v15[5] = v6;
  v7 = a1[1];
  v15[0] = *a1;
  v15[1] = v7;
  v8 = a2[11];
  v17[10] = a2[10];
  v17[11] = v8;
  v18[0] = a2[12];
  *(v18 + 10) = *(a2 + 202);
  v9 = a2[7];
  v17[6] = a2[6];
  v17[7] = v9;
  v10 = a2[9];
  v17[8] = a2[8];
  v17[9] = v10;
  v11 = a2[3];
  v17[2] = a2[2];
  v17[3] = v11;
  v12 = a2[5];
  v17[4] = a2[4];
  v17[5] = v12;
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(v15, v17);
}

uint64_t AttributedString.Runs._firstOfMatchingRuns(with:comparing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  if (!*(a2 + 16))
  {
    goto LABEL_54;
  }

  v5 = *result;
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = *(result + 24);
  v50 = *(result + 32);
  v9 = *v3;
  v11 = *(*v3 + 72);
  v10 = *(*v3 + 80);
  v12 = v9[11];
  v13 = v9[12];
  swift_unknownObjectRetain();
  v51 = v5;
  specialized Rope.subscript.getter(v5, v6, v7, v11, v10, v12, v13);
  v49 = v14;
  result = swift_unknownObjectRelease();
  v47 = *(v46 + 8);
  if (v47 >= v8)
  {
LABEL_47:

    *a3 = v51;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v8;
    a3[4] = v50;
    return result;
  }

  v42 = a3;
  while (1)
  {
    v15 = v9[9];
    v16 = v9[10];
    v17 = v9[12];
    v53 = v51;
    v54 = v6;
    v55 = v7;
    if (v51 != v17)
    {
      break;
    }

    if (v15)
    {
      v18 = *(v15 + 18);
      result = swift_unknownObjectRetain();
      if (v18 >= v6)
      {
        goto LABEL_49;
      }
    }

    else if (!v6)
    {
      goto LABEL_49;
    }

    if (v7)
    {
      v19 = (4 * *(v7 + 18) + 8) & 0x3C;
      if (((v6 >> v19) & 0xF) != 0)
      {
        v20 = ((((v6 >> v19) & 0xF) - 1) << v19) | ((-15 << v19) - 1) & v6;
        v5 = v7;
        goto LABEL_28;
      }
    }

    v20 = (4 * *(v15 + 18) + 8) & 0x3C;
    v21 = (v6 >> v20) & 0xF;
    if (!*(v15 + 18))
    {
      if (!v21)
      {
        goto LABEL_53;
      }

      v20 = ((v21 - 1) << v20) | v6 & 0xFFFFFFFFFFFFF0FFLL;
      v54 = v20;
      v5 = v15;
      if (!v15)
      {
        goto LABEL_21;
      }

      goto LABEL_28;
    }

    if (v21 >= *(v15 + 16))
    {
      goto LABEL_24;
    }

    v5 = *(v15 + 24 * ((v6 >> v20) & 0xF) + 24);
    v22 = (4 * *(v5 + 18) + 8) & 0x3C;
    v23 = (v6 >> v22) & 0xF;
    if (!*(v5 + 18))
    {
      if (v23)
      {
        v54 = ((v23 - 1) << v22) | v6 & 0xFFFFFFFFFFFFF0FFLL;
        v55 = v5;
        swift_unknownObjectRetain();
        goto LABEL_26;
      }

LABEL_24:
      swift_unknownObjectRetain();
      if (!v21)
      {
        goto LABEL_44;
      }

LABEL_25:
      v54 = v54 & ((-15 << v20) - 1) | ((v21 - 1) << v20);
      v30 = *(v15 + 24 * ((v6 >> v20) & 0xF));
      swift_unknownObjectRetain();
      v5 = specialized Rope._Node.descendToLastItem(under:)(&v54, v30);
      swift_unknownObjectRelease();
      v55 = v5;
      goto LABEL_26;
    }

    if (v23 < *(v5 + 8))
    {
      v24 = *(v15 + 24 * ((v6 >> v20) & 0xF) + 24);
      v5 = v5[3 * ((v6 >> v22) & 0xF) + 3];
      v25 = *(v5 + 18);
      v26 = (4 * v25 + 8) & 0x3C;
      v27 = (v6 >> v26) & 0xF;
      v52 = v27;
      v43 = v24;
      if (v25)
      {
        v44 = v22;
        v45 = (v6 >> v22) & 0xF;
        v40 = v25;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v41 = specialized closure #1 in Rope._Node.formPredecessor(of:)(v5 + 8, (v5 + 3), &v52, &v53, v40);
        swift_unknownObjectRelease();
        v5 = v43;
        if (v41)
        {
          v5 = v55;
          swift_unknownObjectRelease();
          goto LABEL_26;
        }

        goto LABEL_41;
      }

      if (v27)
      {
        v54 = ((v27 - 1) << v26) | v6 & 0xFFFFFFFFFFFFF0FFLL;
        v55 = v5;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      v5 = v24;
    }

    v44 = v22;
    v45 = (v6 >> v22) & 0xF;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
LABEL_41:
    if (!v45)
    {
      swift_unknownObjectRelease();
      if (!v21)
      {
LABEL_44:
        swift_unknownObjectRelease();
        __break(1u);
LABEL_45:
        v6 = v20;
        v7 = v5;
        v8 = v47;
        v50 = v16;
LABEL_46:
        a3 = v42;
        goto LABEL_47;
      }

      goto LABEL_25;
    }

    v54 = v54 & ((-15 << v44) - 1) | ((v45 - 1) << v44);
    v39 = v5[3 * v45];
    swift_unknownObjectRetain();
    v5 = specialized Rope._Node.descendToLastItem(under:)(&v54, v39);
    swift_unknownObjectRelease();
    v55 = v5;
    swift_unknownObjectRelease();
LABEL_26:
    result = swift_unknownObjectRelease();
    if (v53 != v51)
    {
      goto LABEL_50;
    }

    v20 = v54;
    if (!v5)
    {
LABEL_21:
      v28 = specialized Rope._Node.subscript.getter(v20, v15);
      swift_unknownObjectRelease();

      v5 = 0;
      v29 = 1;
      goto LABEL_29;
    }

LABEL_28:
    v28 = v5[3 * ((v20 >> ((4 * *(v5 + 18) + 8) & 0x3C)) & 0xF) + 3];

    result = swift_unknownObjectRelease();
    v29 = 0;
LABEL_29:
    v31 = __OFSUB__(v50, v28);
    v16 = (v50 - v28);
    if (v31)
    {
      goto LABEL_51;
    }

    if (v51 != v9[12])
    {
      goto LABEL_52;
    }

    if (v29)
    {
      v32 = v9[9];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v20, v32);
      v34 = v33;
      v36 = v35;
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = &v5[3 * ((v20 >> ((4 * *(v5 + 18) + 8) & 0x3C)) & 0xF)];
      v34 = v37[4];
      v36 = v37[5];
    }

    v38 = AttributedString._AttributeStorage.isEqual(to:comparing:)(v34, v36, a2, v49);

    if ((v38 & 1) == 0)
    {
      goto LABEL_46;
    }

    v8 = (v8 - 1);
    v6 = v20;
    v7 = v5;
    v50 = v16;
    if (v47 >= v8)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_49:
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
  return result;
}