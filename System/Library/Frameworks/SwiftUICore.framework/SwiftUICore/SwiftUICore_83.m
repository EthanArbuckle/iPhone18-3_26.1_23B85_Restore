uint64_t CubicKeyframeHelper.init(from:to:duration:start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 32);
  v13(a5, a1, AssociatedTypeWitness);
  v14 = type metadata accessor for CubicKeyframeHelper();
  v13(a5 + v14[9], a2, AssociatedTypeWitness);
  *(a5 + v14[10]) = a6;
  v15 = v14[11];
  v16 = type metadata accessor for CubicKeyframeHelper.Connection();
  v19 = *(*(v16 - 8) + 32);
  (v19)((v16 - 8), a5 + v15, a3, v16);
  v17 = a5 + v14[12];

  return v19(v17, a4, v16);
}

uint64_t CubicKeyframeHelper.curve.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v82 = a2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = type metadata accessor for CubicKeyframeHelper.Connection();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v79 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v68 - v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v81 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v68 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v68 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v80 = &v68 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v75 = &v68 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v68 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v83 = &v68 - v30;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v84 = a1;
  v85 = &v68 - v33;
  v34 = v3 + *(a1 + 44);
  v77 = *(v8 + 16);
  v78 = v8 + 16;
  v77(v12, v34, v7, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v46 = v86;
    (*(v86 + 32))(v28, v12, AssociatedTypeWitness);
    (*(v46 + 16))(v85, v28, AssociatedTypeWitness);
    v44 = v84;
    v47 = *(v3 + v84[10]);
    if (v47 > 0.0)
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness, v47);
    }

    (*(v86 + 8))(v28, AssociatedTypeWitness);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v44 = v84;
LABEL_11:
    v45 = v83;
    goto LABEL_12;
  }

  v70 = v7;
  v36 = *v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = v86;
  (*(v86 + 32))(v75, v12 + *(TupleTypeMetadata2 + 48), AssociatedTypeWitness);
  v73 = v5;
  v74 = v6;
  v39 = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v40 = v80;
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v39, v80, 0.5);
  v41 = *(v38 + 8);
  v41(v21, AssociatedTypeWitness);
  v42 = v76;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v69 = v39;
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v39, v21, 0.5);
  v41(v42, AssociatedTypeWitness);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v71 = v21;
  v41(v21, AssociatedTypeWitness);
  v41(v40, AssociatedTypeWitness);
  v43 = *(v3 + v84[10]);
  if (v43 > 0.0 && v36 > 0.0)
  {
    (*(v69 + 16))(AssociatedTypeWitness, (v43 + v43) / (v36 + v43));
  }

  v41(v75, AssociatedTypeWitness);
  v5 = v73;
  v6 = v74;
  v45 = v83;
  v44 = v84;
  v7 = v70;
  v21 = v71;
LABEL_12:
  v49 = v79;
  (v77)(v79, v3 + v44[12], v7);
  v50 = swift_getEnumCaseMultiPayload();
  if (!v50)
  {
    v61 = v86;
    v62 = v72;
    (*(v86 + 32))(v72, v49, AssociatedTypeWitness);
    (*(v61 + 16))(v45, v62, AssociatedTypeWitness);
    v63 = *(v3 + v44[10]);
    if (v63 > 0.0)
    {
      v64 = swift_getAssociatedConformanceWitness();
      (*(v64 + 16))(AssociatedTypeWitness, v64, v63);
    }

    (*(v86 + 8))(v62, AssociatedTypeWitness);
    goto LABEL_22;
  }

  if (v50 != 1)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
LABEL_22:
    v60 = v82;
    goto LABEL_23;
  }

  v51 = *v49;
  v52 = swift_getTupleTypeMetadata2();
  v53 = v49;
  v54 = v86;
  (*(v86 + 32))(v81, v53 + *(v52 + 48), AssociatedTypeWitness);
  v73 = v5;
  v74 = v6;
  v55 = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v55, v80, 0.5);
  v56 = *(v54 + 8);
  v56(v21, AssociatedTypeWitness);
  v45 = v83;
  v57 = v76;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v79 = v55;
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v55, v21, 0.5);
  v56(v57, AssociatedTypeWitness);
  v58 = v80;
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v56(v21, AssociatedTypeWitness);
  v56(v58, AssociatedTypeWitness);
  v59 = *(v3 + v84[10]);
  if (v59 > 0.0 && v51 > 0.0)
  {
    (*(v79 + 2))(AssociatedTypeWitness, (v59 + v59) / (v51 + v59));
  }

  v56(v81, AssociatedTypeWitness);
  v60 = v82;
  v44 = v84;
LABEL_23:
  v65 = v85;
  static HermiteCurve.hermite(start:end:startTangent:endTangent:)(v3, v3 + v44[9], v85, v45, v60);
  v66 = *(v86 + 8);
  v66(v45, AssociatedTypeWitness);
  return (v66)(v65, AssociatedTypeWitness);
}

uint64_t instantiation function for generic protocol witness table for KeyframeTrack<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for KeyframeTrack(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 32);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-9 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v10 = a2 + v6 + 8;
    v11 = *(v5 + 16);

    v11((v3 + v6 + 8) & ~v6, v10 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

uint64_t destroy for KeyframeTrack(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 32) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6);
}

void *initializeWithCopy for KeyframeTrack(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 32);
  v5 = *(*(v4 - 8) + 16);
  v6 = *(*(v4 - 8) + 80);
  v7 = a2 + v6 + 8;

  v5((a1 + v6 + 8) & ~v6, v7 & ~v6, v4);
  return a1;
}

void *assignWithCopy for KeyframeTrack(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 32) - 8);
  (*(v6 + 24))((a1 + *(v6 + 80) + 8) & ~*(v6 + 80), (a2 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

void *initializeWithTake for KeyframeTrack(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 32) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

void *assignWithTake for KeyframeTrack(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 32) - 8);
  (*(v6 + 40))((a1 + *(v6 + 80) + 8) & ~*(v6 + 80), (a2 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for KeyframeTrack(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 32) - 8) + 64);
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void storeEnumTagSinglePayload for KeyframeTrack(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 32) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 32) - 8) + 64);
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
      if (v10)
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
LABEL_47:
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
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
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
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t type metadata completion function for CubicKeyframeHelper()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CubicKeyframeHelper.Connection();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CubicKeyframeHelper(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = v6 + v7;
  v10 = v6 + 7;
  v11 = v7 | 7;
  if (((v8 + 8) & ~v8) + v6 <= v6)
  {
    v12 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v12 = ((v7 + 8) & ~v7) + v6;
  }

  v13 = v7 & 0x100000;
  v14 = ((((-9 - v8 - ((v6 + 7 + ((v6 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8)) | v11) - (v12 + 1 + v11)) | v11) - (v12 + 1);
  if (v8 > 7 || v13 != 0 || v14 < 0xFFFFFFFFFFFFFFE7)
  {
    v17 = *a2;
    *a1 = *a2;
    v18 = v17 + ((v8 + 16) & ~v11);

    return v18;
  }

  v19 = AssociatedTypeWitness;
  v20 = ~v8;
  v21 = *(v5 + 16);
  v21(a1, a2, AssociatedTypeWitness);
  v41 = a1;
  v22 = (a1 + v9) & v20;
  v23 = (a2 + v9) & v20;
  v21(v22, v23, v19);
  v24 = ((v10 + v22) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v10 + v23) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  v28 = v27[v12];
  v29 = v28 - 2;
  if (v28 >= 2)
  {
    if (v12 <= 3)
    {
      v30 = v12;
    }

    else
    {
      v30 = 4;
    }

    if (v30 <= 1)
    {
      if (!v30)
      {
        goto LABEL_26;
      }

      v31 = *v27;
    }

    else if (v30 == 2)
    {
      v31 = *v27;
    }

    else if (v30 == 3)
    {
      v31 = *v27 | (v27[2] << 16);
    }

    else
    {
      v31 = *v27;
    }

    v32 = (v31 | (v29 << (8 * v12))) + 2;
    v28 = v31 + 2;
    if (v12 < 4)
    {
      v28 = v32;
    }
  }

LABEL_26:
  if (v28 == 1)
  {
    *v26 = *v27;
    v21(v26 + 1, v27 + 1, v19);
    *(v26 + v12) = 1;
  }

  else if (v28)
  {
    memcpy(v26, v27, v12 + 1);
  }

  else
  {
    v21(v26, v27, v19);
    *(v26 + v12) = 0;
  }

  v33 = ((v26 + v12 + 8) & 0xFFFFFFFFFFFFFFF8);
  v34 = (&v27[v12 + 8] & 0xFFFFFFFFFFFFFFF8);
  v35 = *(v34 + v12);
  v36 = v35 - 2;
  if (v35 >= 2)
  {
    if (v12 <= 3)
    {
      v37 = v12;
    }

    else
    {
      v37 = 4;
    }

    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v38 = *v34;
      }

      else if (v37 == 3)
      {
        v38 = *v34 | (*(v34 + 2) << 16);
      }

      else
      {
        v38 = *v34;
      }

LABEL_43:
      v39 = (v38 | (v36 << (8 * v12))) + 2;
      v35 = v38 + 2;
      if (v12 < 4)
      {
        v35 = v39;
      }

      goto LABEL_45;
    }

    if (v37)
    {
      v38 = *v34;
      goto LABEL_43;
    }
  }

LABEL_45:
  if (v35 == 1)
  {
    *v33 = *v34;
    v21(v33 + 1, v34 + 1, v19);
    *(v33 + v12) = 1;
  }

  else if (v35)
  {
    memcpy(v33, v34, v12 + 1);
  }

  else
  {
    (v21)(v33);
    *(v33 + v12) = 0;
  }

  return v41;
}

unsigned __int8 *destroy for CubicKeyframeHelper(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8) + 8;
  v23 = *v22;
  (*v22)(AssociatedTypeWitness - 8, a1, AssociatedTypeWitness);
  v3 = *(v22 + 56);
  v4 = *(v22 + 72);
  v5 = (v3 + a1 + v4) & ~v4;
  v23(v5, AssociatedTypeWitness);
  v6 = v4 | 7;
  v7 = v4 + 8;
  v8 = ((v4 + 8 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~(v4 | 7));
  if (((v4 + 8) & ~v4) + v3 > v3)
  {
    v3 += (v4 + 8) & ~v4;
  }

  v9 = v8[v3];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v3 <= 3)
    {
      v11 = v3;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_17;
      }

      v12 = *v8;
    }

    else if (v11 == 2)
    {
      v12 = *v8;
    }

    else if (v11 == 3)
    {
      v12 = *v8 | (v8[2] << 16);
    }

    else
    {
      v12 = *v8;
    }

    v13 = (v12 | (v10 << (8 * v3))) + 2;
    v9 = v12 + 2;
    if (v3 < 4)
    {
      v9 = v13;
    }
  }

LABEL_17:
  v14 = ~v4;
  if (v9 == 1)
  {
    v15 = (&v8[v7] & v14);
  }

  else
  {
    if (v9)
    {
      goto LABEL_22;
    }

    v15 = v8;
  }

  v23(v15, AssociatedTypeWitness);
LABEL_22:
  result = (&v8[v6 + 1 + v3] & ~v6);
  v17 = result[v3];
  v18 = v17 - 2;
  if (v17 < 2)
  {
    goto LABEL_36;
  }

  if (v3 <= 3)
  {
    v19 = v3;
  }

  else
  {
    v19 = 4;
  }

  if (v19 <= 1)
  {
    if (!v19)
    {
      goto LABEL_36;
    }

    v20 = *result;
  }

  else if (v19 == 2)
  {
    v20 = *result;
  }

  else if (v19 == 3)
  {
    v20 = *result | (*((&v8[v6 + 1 + v3] & ~v6) + 2) << 16);
  }

  else
  {
    v20 = *result;
  }

  v21 = (v20 | (v18 << (8 * v3))) + 2;
  v17 = v20 + 2;
  if (v3 < 4)
  {
    v17 = v21;
  }

LABEL_36:
  if (v17 == 1)
  {
    result = (&result[v7] & v14);
  }

  else if (v17)
  {
    return result;
  }

  return (v23)(result, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for CubicKeyframeHelper(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 16);
  v7 = v5 + 16;
  v6(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  v35 = a1;
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v6(v10, v11, AssociatedTypeWitness);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = v9 | 7;
  v15 = v9 + 8;
  v16 = ((v12 + v9 + 8) & ~(v9 | 7));
  v17 = ((v13 + v9 + 8) & ~(v9 | 7));
  if (((v9 + 8) & ~v9) + v8 <= v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = ((v9 + 8) & ~v9) + v8;
  }

  v19 = v17[v18];
  v20 = v19 - 2;
  if (v19 < 2)
  {
    goto LABEL_18;
  }

  if (v18 <= 3)
  {
    v21 = v18;
  }

  else
  {
    v21 = 4;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      goto LABEL_18;
    }

    v22 = *v17;
  }

  else if (v21 == 2)
  {
    v22 = *v17;
  }

  else if (v21 == 3)
  {
    v22 = *v17 | (v17[2] << 16);
  }

  else
  {
    v22 = *v17;
  }

  v23 = (v22 | (v20 << (8 * v18))) + 2;
  v19 = v22 + 2;
  if (v18 < 4)
  {
    v19 = v23;
  }

LABEL_18:
  v24 = ~v9;
  v25 = ~v14;
  if (v19 == 1)
  {
    *v16 = *v17;
    v6((v16 + v15) & v24, &v17[v15] & v24, AssociatedTypeWitness);
    *(v16 + v18) = 1;
  }

  else if (v19)
  {
    memcpy(v16, v17, v18 + 1);
  }

  else
  {
    v6(v16, v17, AssociatedTypeWitness);
    *(v16 + v18) = 0;
  }

  v26 = v18 + 1 + v14;
  v27 = ((v16 + v26) & v25);
  v28 = (&v17[v26] & v25);
  v29 = v28[v18];
  v30 = v29 - 2;
  if (v29 >= 2)
  {
    if (v18 <= 3)
    {
      v31 = v18;
    }

    else
    {
      v31 = 4;
    }

    if (v31 <= 1)
    {
      if (!v31)
      {
        goto LABEL_37;
      }

      v32 = *v28;
    }

    else if (v31 == 2)
    {
      v32 = *v28;
    }

    else if (v31 == 3)
    {
      v32 = *v28 | (v28[2] << 16);
    }

    else
    {
      v32 = *v28;
    }

    v33 = (v32 | (v30 << (8 * v18))) + 2;
    v29 = v32 + 2;
    if (v18 < 4)
    {
      v29 = v33;
    }
  }

LABEL_37:
  if (v29 == 1)
  {
    *v27 = *v28;
    v6((v27 + v15) & v24, &v28[v15] & v24, AssociatedTypeWitness);
    *(v27 + v18) = 1;
  }

  else if (v29)
  {
    memcpy(v27, v28, v18 + 1);
  }

  else
  {
    (v6)(v27);
    *(v27 + v18) = 0;
  }

  return v35;
}

uint64_t assignWithCopy for CubicKeyframeHelper(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5;
  v7 = *(v5 + 24);
  v7(a1, a2, AssociatedTypeWitness);
  v8 = *(v5 + 64);
  v9 = *(v5 + 80);
  v42 = ~v9;
  v43 = a1;
  v10 = (v8 + v9 + a2) & ~v9;
  v7((v8 + v9 + a1) & ~v9, v10, AssociatedTypeWitness);
  v11 = ((v8 + 7 + ((v8 + v9 + a1) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = v9 + 8;
  v14 = ~(v9 | 7);
  v15 = ((v11 + v9 + 8) & v14);
  v16 = ((v12 + v9 + 8) & v14);
  if (((v9 + 8) & ~v9) + v8 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = ((v9 + 8) & ~v9) + v8;
  }

  if (v15 != v16)
  {
    v18 = v15[v17];
    v19 = v18 - 2;
    if (v18 < 2)
    {
      goto LABEL_19;
    }

    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_19;
      }

      v21 = *v15;
    }

    else if (v20 == 2)
    {
      v21 = *v15;
    }

    else if (v20 == 3)
    {
      v21 = *v15 | (v15[2] << 16);
    }

    else
    {
      v21 = *v15;
    }

    v22 = (v21 | (v19 << (8 * v17))) + 2;
    v18 = v21 + 2;
    if (v17 < 4)
    {
      v18 = v22;
    }

LABEL_19:
    if (v18 == 1)
    {
      (*(v6 + 8))(&v15[v13] & v42, AssociatedTypeWitness);
    }

    else if (!v18)
    {
      (*(v6 + 8))(v15, AssociatedTypeWitness);
    }

    v23 = v16[v17];
    v24 = v23 - 2;
    if (v23 < 2)
    {
      goto LABEL_37;
    }

    if (v17 <= 3)
    {
      v25 = v17;
    }

    else
    {
      v25 = 4;
    }

    if (v25 <= 1)
    {
      if (!v25)
      {
LABEL_37:
        if (v23 == 1)
        {
          *v15 = *v16;
          (*(v6 + 16))(&v15[v13] & v42, &v16[v13] & v42, AssociatedTypeWitness);
          v15[v17] = 1;
        }

        else if (v23)
        {
          memcpy(v15, v16, v17 + 1);
        }

        else
        {
          (*(v6 + 16))(v15, v16, AssociatedTypeWitness);
          v15[v17] = 0;
        }

        goto LABEL_42;
      }

      v26 = *v16;
    }

    else if (v25 == 2)
    {
      v26 = *v16;
    }

    else if (v25 == 3)
    {
      v26 = *v16 | (v16[2] << 16);
    }

    else
    {
      v26 = *v16;
    }

    v27 = (v26 | (v24 << (8 * v17))) + 2;
    v23 = v26 + 2;
    if (v17 < 4)
    {
      v23 = v27;
    }

    goto LABEL_37;
  }

LABEL_42:
  v28 = v17 + 1 + (v9 | 7);
  v29 = (&v15[v28] & v14);
  v30 = (&v16[v28] & v14);
  if (v29 == v30)
  {
    return v43;
  }

  v31 = v29[v17];
  v32 = v31 - 2;
  if (v31 >= 2)
  {
    if (v17 <= 3)
    {
      v33 = v17;
    }

    else
    {
      v33 = 4;
    }

    if (v33 <= 1)
    {
      if (!v33)
      {
        goto LABEL_57;
      }

      v34 = *v29;
    }

    else if (v33 == 2)
    {
      v34 = *v29;
    }

    else if (v33 == 3)
    {
      v34 = *v29 | (v29[2] << 16);
    }

    else
    {
      v34 = *v29;
    }

    v35 = (v34 | (v32 << (8 * v17))) + 2;
    v31 = v34 + 2;
    if (v17 < 4)
    {
      v31 = v35;
    }
  }

LABEL_57:
  if (v31 == 1)
  {
    (*(v6 + 8))(&v29[v13] & v42, AssociatedTypeWitness);
  }

  else if (!v31)
  {
    (*(v6 + 8))(v29, AssociatedTypeWitness);
  }

  v36 = *(v30 + v17);
  v37 = v36 - 2;
  if (v36 < 2)
  {
    goto LABEL_75;
  }

  if (v17 <= 3)
  {
    v38 = v17;
  }

  else
  {
    v38 = 4;
  }

  if (v38 > 1)
  {
    if (v38 == 2)
    {
      v39 = *v30;
    }

    else if (v38 == 3)
    {
      v39 = *v30 | (*(v30 + 2) << 16);
    }

    else
    {
      v39 = *v30;
    }

LABEL_73:
    v40 = (v39 | (v37 << (8 * v17))) + 2;
    v36 = v39 + 2;
    if (v17 < 4)
    {
      v36 = v40;
    }

    goto LABEL_75;
  }

  if (v38)
  {
    v39 = *v30;
    goto LABEL_73;
  }

LABEL_75:
  if (v36 == 1)
  {
    *v29 = *v30;
    (*(v6 + 16))(&v29[v13] & v42, (v30 + v13) & v42, AssociatedTypeWitness);
    v29[v17] = 1;
  }

  else if (v36)
  {
    memcpy(v29, v30, v17 + 1);
  }

  else
  {
    (*(v6 + 16))(v29, v30, AssociatedTypeWitness);
    v29[v17] = 0;
  }

  return v43;
}

uint64_t initializeWithTake for CubicKeyframeHelper(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 32);
  v7 = v5 + 32;
  v6(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 32);
  v9 = *(v7 + 48);
  v35 = a1;
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v6(v10, v11, AssociatedTypeWitness);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = v9 | 7;
  v15 = v9 + 8;
  v16 = ((v12 + v9 + 8) & ~(v9 | 7));
  v17 = ((v13 + v9 + 8) & ~(v9 | 7));
  if (((v9 + 8) & ~v9) + v8 <= v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = ((v9 + 8) & ~v9) + v8;
  }

  v19 = v17[v18];
  v20 = v19 - 2;
  if (v19 < 2)
  {
    goto LABEL_18;
  }

  if (v18 <= 3)
  {
    v21 = v18;
  }

  else
  {
    v21 = 4;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      goto LABEL_18;
    }

    v22 = *v17;
  }

  else if (v21 == 2)
  {
    v22 = *v17;
  }

  else if (v21 == 3)
  {
    v22 = *v17 | (v17[2] << 16);
  }

  else
  {
    v22 = *v17;
  }

  v23 = (v22 | (v20 << (8 * v18))) + 2;
  v19 = v22 + 2;
  if (v18 < 4)
  {
    v19 = v23;
  }

LABEL_18:
  v24 = ~v9;
  v25 = ~v14;
  if (v19 == 1)
  {
    *v16 = *v17;
    v6((v16 + v15) & v24, &v17[v15] & v24, AssociatedTypeWitness);
    *(v16 + v18) = 1;
  }

  else if (v19)
  {
    memcpy(v16, v17, v18 + 1);
  }

  else
  {
    v6(v16, v17, AssociatedTypeWitness);
    *(v16 + v18) = 0;
  }

  v26 = v18 + 1 + v14;
  v27 = ((v16 + v26) & v25);
  v28 = (&v17[v26] & v25);
  v29 = v28[v18];
  v30 = v29 - 2;
  if (v29 >= 2)
  {
    if (v18 <= 3)
    {
      v31 = v18;
    }

    else
    {
      v31 = 4;
    }

    if (v31 <= 1)
    {
      if (!v31)
      {
        goto LABEL_37;
      }

      v32 = *v28;
    }

    else if (v31 == 2)
    {
      v32 = *v28;
    }

    else if (v31 == 3)
    {
      v32 = *v28 | (v28[2] << 16);
    }

    else
    {
      v32 = *v28;
    }

    v33 = (v32 | (v30 << (8 * v18))) + 2;
    v29 = v32 + 2;
    if (v18 < 4)
    {
      v29 = v33;
    }
  }

LABEL_37:
  if (v29 == 1)
  {
    *v27 = *v28;
    v6((v27 + v15) & v24, &v28[v15] & v24, AssociatedTypeWitness);
    *(v27 + v18) = 1;
  }

  else if (v29)
  {
    memcpy(v27, v28, v18 + 1);
  }

  else
  {
    (v6)(v27);
    *(v27 + v18) = 0;
  }

  return v35;
}

uint64_t assignWithTake for CubicKeyframeHelper(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5;
  v7 = *(v5 + 40);
  v7(a1, a2, AssociatedTypeWitness);
  v8 = *(v5 + 64);
  v9 = *(v5 + 80);
  v42 = ~v9;
  v43 = a1;
  v10 = (v8 + v9 + a2) & ~v9;
  v7((v8 + v9 + a1) & ~v9, v10, AssociatedTypeWitness);
  v11 = ((v8 + 7 + ((v8 + v9 + a1) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = v9 + 8;
  v14 = ~(v9 | 7);
  v15 = ((v11 + v9 + 8) & v14);
  v16 = ((v12 + v9 + 8) & v14);
  if (((v9 + 8) & ~v9) + v8 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = ((v9 + 8) & ~v9) + v8;
  }

  if (v15 != v16)
  {
    v18 = v15[v17];
    v19 = v18 - 2;
    if (v18 < 2)
    {
      goto LABEL_19;
    }

    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_19;
      }

      v21 = *v15;
    }

    else if (v20 == 2)
    {
      v21 = *v15;
    }

    else if (v20 == 3)
    {
      v21 = *v15 | (v15[2] << 16);
    }

    else
    {
      v21 = *v15;
    }

    v22 = (v21 | (v19 << (8 * v17))) + 2;
    v18 = v21 + 2;
    if (v17 < 4)
    {
      v18 = v22;
    }

LABEL_19:
    if (v18 == 1)
    {
      (*(v6 + 8))(&v15[v13] & v42, AssociatedTypeWitness);
    }

    else if (!v18)
    {
      (*(v6 + 8))(v15, AssociatedTypeWitness);
    }

    v23 = v16[v17];
    v24 = v23 - 2;
    if (v23 < 2)
    {
      goto LABEL_37;
    }

    if (v17 <= 3)
    {
      v25 = v17;
    }

    else
    {
      v25 = 4;
    }

    if (v25 <= 1)
    {
      if (!v25)
      {
LABEL_37:
        if (v23 == 1)
        {
          *v15 = *v16;
          (*(v6 + 32))(&v15[v13] & v42, &v16[v13] & v42, AssociatedTypeWitness);
          v15[v17] = 1;
        }

        else if (v23)
        {
          memcpy(v15, v16, v17 + 1);
        }

        else
        {
          (*(v6 + 32))(v15, v16, AssociatedTypeWitness);
          v15[v17] = 0;
        }

        goto LABEL_42;
      }

      v26 = *v16;
    }

    else if (v25 == 2)
    {
      v26 = *v16;
    }

    else if (v25 == 3)
    {
      v26 = *v16 | (v16[2] << 16);
    }

    else
    {
      v26 = *v16;
    }

    v27 = (v26 | (v24 << (8 * v17))) + 2;
    v23 = v26 + 2;
    if (v17 < 4)
    {
      v23 = v27;
    }

    goto LABEL_37;
  }

LABEL_42:
  v28 = v17 + 1 + (v9 | 7);
  v29 = (&v15[v28] & v14);
  v30 = (&v16[v28] & v14);
  if (v29 == v30)
  {
    return v43;
  }

  v31 = v29[v17];
  v32 = v31 - 2;
  if (v31 >= 2)
  {
    if (v17 <= 3)
    {
      v33 = v17;
    }

    else
    {
      v33 = 4;
    }

    if (v33 <= 1)
    {
      if (!v33)
      {
        goto LABEL_57;
      }

      v34 = *v29;
    }

    else if (v33 == 2)
    {
      v34 = *v29;
    }

    else if (v33 == 3)
    {
      v34 = *v29 | (v29[2] << 16);
    }

    else
    {
      v34 = *v29;
    }

    v35 = (v34 | (v32 << (8 * v17))) + 2;
    v31 = v34 + 2;
    if (v17 < 4)
    {
      v31 = v35;
    }
  }

LABEL_57:
  if (v31 == 1)
  {
    (*(v6 + 8))(&v29[v13] & v42, AssociatedTypeWitness);
  }

  else if (!v31)
  {
    (*(v6 + 8))(v29, AssociatedTypeWitness);
  }

  v36 = *(v30 + v17);
  v37 = v36 - 2;
  if (v36 < 2)
  {
    goto LABEL_75;
  }

  if (v17 <= 3)
  {
    v38 = v17;
  }

  else
  {
    v38 = 4;
  }

  if (v38 > 1)
  {
    if (v38 == 2)
    {
      v39 = *v30;
    }

    else if (v38 == 3)
    {
      v39 = *v30 | (*(v30 + 2) << 16);
    }

    else
    {
      v39 = *v30;
    }

LABEL_73:
    v40 = (v39 | (v37 << (8 * v17))) + 2;
    v36 = v39 + 2;
    if (v17 < 4)
    {
      v36 = v40;
    }

    goto LABEL_75;
  }

  if (v38)
  {
    v39 = *v30;
    goto LABEL_73;
  }

LABEL_75:
  if (v36 == 1)
  {
    *v29 = *v30;
    (*(v6 + 32))(&v29[v13] & v42, (v30 + v13) & v42, AssociatedTypeWitness);
    v29[v17] = 1;
  }

  else if (v36)
  {
    memcpy(v29, v30, v17 + 1);
  }

  else
  {
    (*(v6 + 32))(v29, v30, AssociatedTypeWitness);
    v29[v17] = 0;
  }

  return v43;
}

uint64_t getEnumTagSinglePayload for CubicKeyframeHelper(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80);
  v9 = v8 + 8;
  if (((v8 + 8) & ~v8) + v7 <= v7)
  {
    v10 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v10 = ((v8 + 8) & ~v8) + v7;
  }

  if (v6 <= 0xFD)
  {
    v11 = 253;
  }

  else
  {
    v11 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v7 + v8;
  v13 = v7 + 7;
  v14 = v8 | 7;
  if (a2 <= v11)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + 1 + v14 + ((v9 + ((v13 + (v12 & ~v8)) & 0xFFFFFFFFFFFFFFF8)) & ~v14)) & ~v14) + v10 + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v6 < 0xFD)
      {
        v24 = *(((v9 + ((v13 + ((a1 + v12) & ~v8)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + v10);
        if (v24 >= 3)
        {
          return (v24 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v23 = *(v5 + 48);

        return v23(a1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v11 + (v22 | v20) + 1;
}

void storeEnumTagSinglePayload for CubicKeyframeHelper(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = v9 + 8;
  v11 = ((v9 + 8) & ~v9) + v8;
  if (v11 <= v8)
  {
    v11 = *(v6 + 64);
  }

  if (v7 <= 0xFD)
  {
    v12 = 253;
  }

  else
  {
    v12 = *(v6 + 84);
  }

  v13 = v8 + v9;
  v14 = (v8 + v9) & ~v9;
  v15 = v8 + 7;
  v16 = ((v11 + 1 + (v9 | 7) + ((v10 + ((v15 + v14) & 0xFFFFFFFFFFFFFFF8)) & ~(v9 | 7))) & ~(v9 | 7)) + v11 + 1;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
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

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
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
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v7 < 0xFD)
  {
    v24 = ((v10 + ((v15 + (&a1[v13] & ~v9)) & 0xFFFFFFFFFFFFFFF8)) & ~(v9 | 7));
    if (a2 > 0xFD)
    {
      v25 = (v11 + 1);
      v26 = -1 << (8 * (v11 + 1));
      if (v25 <= 3)
      {
        v27 = ~v26;
      }

      else
      {
        v27 = -1;
      }

      if (v25)
      {
        v28 = v27 & (a2 - 254);
        if (v25 <= 3)
        {
          v29 = v25;
        }

        else
        {
          v29 = 4;
        }

        bzero(v24, v25);
        if (v29 > 2)
        {
          if (v29 == 3)
          {
            *v24 = v28;
            v24[2] = BYTE2(v28);
          }

          else
          {
            *v24 = v28;
          }
        }

        else if (v29 == 1)
        {
          *v24 = v28;
        }

        else
        {
          *v24 = v28;
        }
      }
    }

    else
    {
      v24[v11] = -a2;
    }
  }

  else
  {
    v23 = *(v6 + 56);

    v23(a1, a2);
  }
}

uint64_t type metadata completion function for CubicKeyframeHelper.Connection()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    v2[4] = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v2[5] = v2;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for CubicKeyframeHelper.Connection(void *a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v7;
  if (((v8 + 8) & ~v8) + v6 <= v6)
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v9 = ((v7 + 8) & ~v7) + v6;
  }

  v10 = v9 + 1;
  if (v7 > 7u || (v7 & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v7 & 0xF8 ^ 0x1F8u) & (v7 + 16)));

    return a1;
  }

  v14 = a2[v9];
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v9 <= 3)
    {
      v16 = v9;
    }

    else
    {
      v16 = 4;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
        goto LABEL_27;
      }

      v17 = *a2;
    }

    else if (v16 == 2)
    {
      v17 = *a2;
    }

    else if (v16 == 3)
    {
      v17 = *a2 | (a2[2] << 16);
    }

    else
    {
      v17 = *a2;
    }

    v18 = (v17 | (v15 << (8 * v9))) + 2;
    v14 = v17 + 2;
    if (v9 < 4)
    {
      v14 = v18;
    }
  }

LABEL_27:
  if (v14 == 1)
  {
    *a1 = *a2;
    (*(v5 + 16))((a1 + v8 + 8) & ~v8, &a2[v8 + 8] & ~v8, AssociatedTypeWitness);
    *(a1 + v9) = 1;
    return a1;
  }

  if (!v14)
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    *(a1 + v9) = 0;
    return a1;
  }

  return memcpy(a1, a2, v10);
}

uint64_t destroy for CubicKeyframeHelper.Connection(unsigned __int8 *a1)
{
  result = swift_getAssociatedTypeWitness();
  v3 = result;
  v4 = *(result - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (((v6 + 8) & ~v6) + v5 > v5)
  {
    v5 += (v6 + 8) & ~v6;
  }

  v7 = a1[v5];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v5 <= 3)
    {
      v9 = v5;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = *a1;
    }

    else if (v9 == 2)
    {
      v10 = *a1;
    }

    else if (v9 == 3)
    {
      v10 = *a1 | (a1[2] << 16);
    }

    else
    {
      v10 = *a1;
    }

    v11 = (v10 | (v8 << (8 * v5))) + 2;
    v7 = v10 + 2;
    if (v5 < 4)
    {
      v7 = v11;
    }
  }

LABEL_17:
  if (v7 == 1)
  {
    v12 = *(v4 + 8);
    v13 = &a1[v6 + 8] & ~v6;
  }

  else
  {
    if (v7)
    {
      return result;
    }

    v12 = *(v4 + 8);
    v13 = a1;
  }

  return v12(v13, v3);
}

void *initializeWithCopy for CubicKeyframeHelper.Connection(void *a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = a2;
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if (((v8 + 8) & ~v8) + v7 <= v7)
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v9 = ((v8 + 8) & ~v8) + v7;
  }

  v10 = v5[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_18;
      }

      v13 = *v5;
    }

    else if (v12 == 2)
    {
      v13 = *v5;
    }

    else if (v12 == 3)
    {
      v13 = *v5 | (v5[2] << 16);
    }

    else
    {
      v13 = *v5;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_18:
  if (v10 == 1)
  {
    *a1 = *v5;
    (*(v6 + 16))((a1 + v8 + 8) & ~v8, &v5[v8 + 8] & ~v8, AssociatedTypeWitness);
    *(a1 + v9) = 1;
    return a1;
  }

  if (!v10)
  {
    (*(v6 + 16))(a1);
    *(a1 + v9) = 0;
    return a1;
  }

  return memcpy(a1, v5, v9 + 1);
}

unsigned __int8 *assignWithCopy for CubicKeyframeHelper.Connection(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if (((v7 + 8) & ~v7) + v6 <= v6)
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v8 = ((v7 + 8) & ~v7) + v6;
  }

  v9 = a1[v8];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_19;
      }

      v12 = *a1;
    }

    else if (v11 == 2)
    {
      v12 = *a1;
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (a1[2] << 16);
    }

    else
    {
      v12 = *a1;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 2;
    v9 = v12 + 2;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_19:
  v14 = ~v7;
  if (v9 == 1)
  {
    (*(v5 + 8))(&a1[v7 + 8] & v14, AssociatedTypeWitness);
  }

  else if (!v9)
  {
    (*(v5 + 8))(a1, AssociatedTypeWitness);
  }

  v15 = a2[v8];
  v16 = v15 - 2;
  if (v15 >= 2)
  {
    if (v8 <= 3)
    {
      v17 = v8;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_37;
      }

      v18 = *a2;
    }

    else if (v17 == 2)
    {
      v18 = *a2;
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
    }

    else
    {
      v18 = *a2;
    }

    v19 = (v18 | (v16 << (8 * v8))) + 2;
    v15 = v18 + 2;
    if (v8 < 4)
    {
      v15 = v19;
    }
  }

LABEL_37:
  if (v15 == 1)
  {
    *a1 = *a2;
    (*(v5 + 16))(&a1[v7 + 8] & v14, &a2[v7 + 8] & v14, AssociatedTypeWitness);
    a1[v8] = 1;
    return a1;
  }

  if (!v15)
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    a1[v8] = 0;
    return a1;
  }

  return memcpy(a1, a2, v8 + 1);
}

void *initializeWithTake for CubicKeyframeHelper.Connection(void *a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = a2;
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if (((v8 + 8) & ~v8) + v7 <= v7)
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v9 = ((v8 + 8) & ~v8) + v7;
  }

  v10 = v5[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_18;
      }

      v13 = *v5;
    }

    else if (v12 == 2)
    {
      v13 = *v5;
    }

    else if (v12 == 3)
    {
      v13 = *v5 | (v5[2] << 16);
    }

    else
    {
      v13 = *v5;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_18:
  if (v10 == 1)
  {
    *a1 = *v5;
    (*(v6 + 32))((a1 + v8 + 8) & ~v8, &v5[v8 + 8] & ~v8, AssociatedTypeWitness);
    *(a1 + v9) = 1;
    return a1;
  }

  if (!v10)
  {
    (*(v6 + 32))(a1);
    *(a1 + v9) = 0;
    return a1;
  }

  return memcpy(a1, v5, v9 + 1);
}

unsigned __int8 *assignWithTake for CubicKeyframeHelper.Connection(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if (((v7 + 8) & ~v7) + v6 <= v6)
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v8 = ((v7 + 8) & ~v7) + v6;
  }

  v9 = a1[v8];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_19;
      }

      v12 = *a1;
    }

    else if (v11 == 2)
    {
      v12 = *a1;
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (a1[2] << 16);
    }

    else
    {
      v12 = *a1;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 2;
    v9 = v12 + 2;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_19:
  v14 = ~v7;
  if (v9 == 1)
  {
    (*(v5 + 8))(&a1[v7 + 8] & v14, AssociatedTypeWitness);
  }

  else if (!v9)
  {
    (*(v5 + 8))(a1, AssociatedTypeWitness);
  }

  v15 = a2[v8];
  v16 = v15 - 2;
  if (v15 >= 2)
  {
    if (v8 <= 3)
    {
      v17 = v8;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_37;
      }

      v18 = *a2;
    }

    else if (v17 == 2)
    {
      v18 = *a2;
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
    }

    else
    {
      v18 = *a2;
    }

    v19 = (v18 | (v16 << (8 * v8))) + 2;
    v15 = v18 + 2;
    if (v8 < 4)
    {
      v15 = v19;
    }
  }

LABEL_37:
  if (v15 == 1)
  {
    *a1 = *a2;
    (*(v5 + 32))(&a1[v7 + 8] & v14, &a2[v7 + 8] & v14, AssociatedTypeWitness);
    a1[v8] = 1;
    return a1;
  }

  if (!v15)
  {
    (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
    a1[v8] = 0;
    return a1;
  }

  return memcpy(a1, a2, v8 + 1);
}

uint64_t getEnumTagSinglePayload for CubicKeyframeHelper.Connection(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 64);
  v6 = ((*(v4 + 80) + 8) & ~*(v4 + 80)) + v5;
  if (v6 <= v5)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v11 < 2)
    {
LABEL_25:
      v13 = *(a1 + v6);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_25;
  }

LABEL_14:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 254;
}

void storeEnumTagSinglePayload for CubicKeyframeHelper.Connection(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 64);
  v8 = ((*(v6 + 80) + 8) & ~*(v6 + 80)) + v7;
  if (v8 > v7)
  {
    v7 = v8;
  }

  v9 = v7 + 1;
  if (a3 < 0xFE)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 253) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
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

  if (a2 > 0xFD)
  {
    v11 = a2 - 254;
    if (v9 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v7 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v7] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTag for CubicKeyframeHelper.Connection(unsigned __int8 *a1)
{
  v2 = *(swift_getAssociatedTypeWitness() - 8);
  v3 = *(v2 + 64);
  v4 = ((*(v2 + 80) + 8) & ~*(v2 + 80)) + v3;
  if (v4 > v3)
  {
    v3 = v4;
  }

  result = a1[v3];
  if (result >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return result;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | ((result - 2) << (8 * v3))) + 2;
    v9 = v7 + 2;
    if (v3 >= 4)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

void destructiveInjectEnumTag for CubicKeyframeHelper.Connection(_BYTE *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 64);
  v6 = ((*(v4 + 80) + 8) & ~*(v4 + 80)) + v5;
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (a2 > 1)
  {
    v8 = a2 - 2;
    if (v7 < 4)
    {
      a1[v7] = (v8 >> (8 * v7)) + 2;
      if (v7)
      {
        v9 = v8 & ~(-1 << (8 * v7));
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v9;
          a1[2] = BYTE2(v9);
        }

        else if (v7 == 2)
        {
          *a1 = v9;
        }

        else
        {
          *a1 = v8;
        }
      }
    }

    else
    {
      a1[v7] = 2;
      bzero(a1, v7);
      *a1 = v8;
    }
  }

  else
  {
    a1[v7] = a2;
  }
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 7107189;
  if (a1 != 5)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000018DD73F60;
  }

  v6 = 0xE700000000000000;
  v7 = 0x65756C6156736ELL;
  if (a1 != 3)
  {
    v7 = 1702125924;
    v6 = 0xE400000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1635017060;
  if (a1 != 1)
  {
    v9 = 0x7265626D754E736ELL;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x676E69727473;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE400000000000000;
        if (v10 != 1635017060)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x7265626D754E736ELL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x676E69727473)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7107189)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0x800000018DD73F60;
      if (v10 != 0xD000000000000010)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x65756C6156736ELL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1702125924)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7367616C66;
  v6 = 0xE500000000000000;
  v7 = 0x65756C6176;
  if (a1 != 4)
  {
    v7 = 0x6972747461627573;
    v6 = 0xED00007365747562;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1701869940;
  if (a1 != 1)
  {
    v9 = 0x656C626164616572;
    v8 = 0xEC00000065707954;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7367616C66)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x65756C6176)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xED00007365747562;
      if (v10 != 0x6972747461627573)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701869940)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEC00000065707954;
      if (v10 != 0x656C626164616572)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701667182)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

id AccessibilityCustomAttributes.Value.displayDescription.getter()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of AccessibilityCustomAttributes.Value(v0, v11, type metadata accessor for AccessibilityCustomAttributes.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        return *v11;
      }

      v16 = *v11;
      v17 = v11[1];
      v13 = Data.description.getter();
      outlined consume of Data._Representation(v16, v17);
      return v13;
    }

    v14 = *v11;
    if (EnumCaseMultiPayload == 2)
    {
      v15 = [*v11 stringValue];
LABEL_15:
      v18 = v15;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v13;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload > 5)
  {
    v14 = *v11;
    if (EnumCaseMultiPayload == 6)
    {
      v15 = [*v11 string];
      goto LABEL_15;
    }

LABEL_14:
    v15 = [*v11 description];
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 4)
  {
    (*(v6 + 32))(v8, v11, v5);
    v13 = Date.description.getter();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v2 + 32))(v4, v11, v1);
    v13 = URL.absoluteString.getter();
    (*(v2 + 8))(v4, v1);
  }

  return v13;
}

uint64_t AccessibilityCustomAttributes.Value.axRepresentation()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of AccessibilityCustomAttributes.Value(v2, v14, type metadata accessor for AccessibilityCustomAttributes.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v21 = *v14;
        v22 = v14[1];
        isa = Data._bridgeToObjectiveC()().super.isa;
        a1[3] = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSData);
        result = outlined consume of Data._Representation(v21, v22);
        *a1 = isa;
      }

      else
      {
        v16 = MEMORY[0x193ABEC20](*v14, v14[1]);

        result = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSString);
        a1[3] = result;
        *a1 = v16;
      }

      return result;
    }

    v19 = *v14;
    if (EnumCaseMultiPayload == 2)
    {
      v20 = &lazy cache variable for type metadata for NSNumber;
    }

    else
    {
      v20 = &lazy cache variable for type metadata for NSValue;
    }

LABEL_16:
    result = type metadata accessor for CAMediaTimingFunction(0, v20);
    a1[3] = result;
    *a1 = v19;
    return result;
  }

  if (EnumCaseMultiPayload > 5)
  {
    v19 = *v14;
    if (EnumCaseMultiPayload == 6)
    {
      v20 = &lazy cache variable for type metadata for NSAttributedString;
    }

    else
    {
      v20 = &lazy cache variable for type metadata for NSObject;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 4)
  {
    (*(v9 + 32))(v11, v14, v8);
    v18 = Date._bridgeToObjectiveC()().super.isa;
    a1[3] = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSDate);
    *a1 = v18;
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v5 + 32))(v7, v14, v4);
    URL._bridgeToObjectiveC()(v24);
    v26 = v25;
    a1[3] = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSURL);
    *a1 = v26;
    return (*(v5 + 8))(v7, v4);
  }
}

SwiftUI::AccessibilityCustomAttributes __swiftcall AccessibilityCustomAttributes.init()()
{
  v1 = v0;
  result.attributes._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI29AccessibilityCustomAttributesV5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v1->attributes._rawValue = result.attributes._rawValue;
  return result;
}

void *AccessibilityCustomAttributes.attributeNames.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v2, 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, v1);

  outlined consume of Set<EventID>.Iterator._Variant();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t AccessibilityCustomAttributes.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for AccessibilityCustomAttributes.Value();
    v17 = *(v10 - 8);
    outlined init with copy of AccessibilityCustomAttributes.Value(v9 + *(v17 + 72) * v8, a3, type metadata accessor for AccessibilityCustomAttributes.Value);
    v11 = *(v17 + 56);
    v12 = a3;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v15 = type metadata accessor for AccessibilityCustomAttributes.Value();
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a3;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t key path setter for AccessibilityCustomAttributes.subscript(_:) : AccessibilityCustomAttributes(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v9 = *a3;
  v8 = a3[1];
  outlined init with copy of AccessibilityCustomAttributes.Value?(a1, &v11 - v6, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value);

  return AccessibilityCustomAttributes.subscript.setter(v7, v9, v8);
}

void (*AccessibilityCustomAttributes.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  if (v7)
  {
    v9[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v9[3] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v9[4] = v12;
  v14 = *v3;
  if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(v14 + 56);
    v19 = type metadata accessor for AccessibilityCustomAttributes.Value();
    v20 = *(v19 - 8);
    outlined init with copy of AccessibilityCustomAttributes.Value(v18 + *(v20 + 72) * v17, v13, type metadata accessor for AccessibilityCustomAttributes.Value);
    (*(v20 + 56))(v13, 0, 1, v19);
  }

  else
  {
    v21 = type metadata accessor for AccessibilityCustomAttributes.Value();
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  }

  return AccessibilityCustomAttributes.subscript.modify;
}

void AccessibilityCustomAttributes.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = **a1;
  if (a2)
  {
    outlined init with copy of AccessibilityCustomAttributes.Value?((*a1)[4], v3, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value);

    AccessibilityCustomAttributes.subscript.setter(v3, v6, v5);
    _sypSgWOhTm_2(v4, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
  }

  else
  {

    AccessibilityCustomAttributes.subscript.setter(v4, v6, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AccessibilityCustomAttributes.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityCustomAttributes.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityCustomAttributes.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 16 * a2);
    v9 = type metadata accessor for AccessibilityCustomAttributes.Value();
    outlined init with copy of AccessibilityCustomAttributes.Value(v7 + *(*(v9 - 8) + 72) * a2, v6, type metadata accessor for AccessibilityCustomAttributes.Value);

    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance AccessibilityCustomAttributes@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = _HashTable.startBucket.getter();
  v5 = *(v3 + 36);
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  return result;
}

void protocol witness for Collection.endIndex.getter in conformance AccessibilityCustomAttributes(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 36);
  *a1 = 1 << *(*v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

void (*protocol witness for Collection.subscript.read in conformance AccessibilityCustomAttributes(void *a1, uint64_t a2))(uint64_t *a1)
{
  type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value)();
  v6 = v5;
  v7 = *(*(v5 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
    *a1 = v8;
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
    *a1 = v8;
    v9 = malloc(v7);
  }

  v10 = v9;
  a1[1] = v9;
  v11 = *v2;
  v12 = *(v6 + 48);
  *v8 = specialized Dictionary.subscript.getter(v9 + v12, *a2, *(a2 + 8), *(a2 + 16), v11);
  v8[1] = v13;
  outlined init with take of AccessibilityCustomAttributes.Value(v10 + v12, v8 + *(v6 + 48), type metadata accessor for AccessibilityCustomAttributes.Value);
  return protocol witness for Collection.subscript.read in conformance AccessibilityCustomAttributes;
}

void protocol witness for Collection.subscript.read in conformance AccessibilityCustomAttributes(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  outlined destroy of AccessibilityCustomAttributes.Value(*a1, type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value));
  free(v1);

  free(v2);
}

uint64_t protocol witness for Collection.subscript.getter in conformance AccessibilityCustomAttributes@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4 = *a1;
  v5[0] = v2;
  *(v5 + 9) = *(a1 + 25);
  return specialized Collection<>.subscript.getter(&v4, a2);
}

uint64_t protocol witness for Collection.indices.getter in conformance AccessibilityCustomAttributes@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = v3;

  result = _HashTable.startBucket.getter();
  v5 = *(v3 + 36);
  *(a1 + 8) = result;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1 << *(v3 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  return result;
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance AccessibilityCustomAttributes@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v6 = *result;
    v7 = *(result + 8);
    v8 = *(result + 16);
    if (a2)
    {
      v9 = *v3;
      outlined copy of [A : B].Index._Variant<A, B>(*result, v7, v8);
      do
      {
        v10 = specialized _NativeDictionary.index(after:)(v6, v7, v8 & 1, v9);
        v12 = v11;
        v14 = v13;
        result = outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v6, v7, v8 & 1);
        v6 = v10;
        v7 = v12;
        v8 = v14;
        --v4;
      }

      while (v4);
    }

    else
    {
      result = outlined copy of [A : B].Index._Variant<A, B>(*result, v7, v8);
      v10 = v6;
      v12 = v7;
      v14 = v8;
    }

    *a3 = v10;
    *(a3 + 8) = v12;
    *(a3 + 16) = v14 & 1;
  }

  return result;
}

unint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance AccessibilityCustomAttributes@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized Collection.index(_:offsetBy:limitedBy:)(*a1, *(a1 + 8), *(a1 + 16), a2, *a3, *(a3 + 8), *(a3 + 16));
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AccessibilityCustomAttributes(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v2 != *(a2 + 32))
  {
    goto LABEL_11;
  }

  if (*result >= *(a2 + 24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a2 + 32) != v2)
  {
    goto LABEL_11;
  }

  if (*(a2 + 24) < *result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((*(a2 + 40) | *(result + 40)))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a2 + 32) != *(result + 32))
  {
    goto LABEL_11;
  }

  if (*(a2 + 24) < *(result + 24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance AccessibilityCustomAttributes@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized _NativeDictionary.index(after:)(*a1, *(a1 + 8), *(a1 + 16), *v2);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance AccessibilityCustomAttributes(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = specialized _NativeDictionary.index(after:)(*a1, v4, v5, *v1);
  v8 = v7;
  v10 = v9;
  result = outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v3, v4, v5);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance AccessibilityCustomAttributes@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = v3;

  v4 = _HashTable.startBucket.getter();
  v5 = *(v3 + 36);

  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  return result;
}

unint64_t protocol witness for Collection.count.getter in conformance AccessibilityCustomAttributes()
{
  v1 = *v0;
  v2 = _HashTable.startBucket.getter();
  v3 = *(v1 + 36);
  v4 = 1 << *(v1 + 32);
  v5 = *(v1 + 36);

  return specialized Collection.distance(from:to:)(v2, v3, 0, v4, v5, 0);
}

size_t protocol witness for Sequence._copyToContiguousArray() in conformance AccessibilityCustomAttributes()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  return v1;
}

uint64_t AccessibilityCustomAttributes.debugDescription.getter()
{
  v1 = v0;
  v32 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v32);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value)();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v29 - v9;
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, &lazy cache variable for type metadata for (key: String, value: AccessibilityCustomAttributes.Value)?, type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v29 - v14);
  v16 = *v1;
  v39 = 60;
  v40 = 0xE100000000000000;

  v33 = v16 + 64;
  v17 = _HashTable.startBucket.getter();
  v18 = *(v16 + 36);
  v38 = 0;
  v34 = (v6 + 48);
  v35 = (v6 + 56);
  while (1)
  {
    v19 = 1;
    if (v17 == 1 << *(v16 + 32))
    {
      goto LABEL_8;
    }

    v20 = *(v5 + 48);
    v21 = v30;
    v22 = specialized Dictionary.subscript.getter(&v30[v20], v17, v18, 0, v16);
    v23 = v31;
    *v31 = v22;
    *(v23 + 8) = v24;
    outlined init with take of AccessibilityCustomAttributes.Value(&v21[v20], v23 + *(v5 + 48), type metadata accessor for AccessibilityCustomAttributes.Value);
    result = outlined init with take of AccessibilityCustomAttributes.Value(v23, v12, type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value));
    if (v17 < 0 || v17 >= -(-1 << *(v16 + 32)))
    {
      break;
    }

    if (((*(v33 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_13;
    }

    if (*(v16 + 36) != v18)
    {
      goto LABEL_14;
    }

    v17 = _HashTable.occupiedBucket(after:)();
    v19 = 0;
    v18 = *(v16 + 36);
    v38 = 0;
LABEL_8:
    (*v35)(v12, v19, 1, v5);
    _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_1(v12, v15, &lazy cache variable for type metadata for (key: String, value: AccessibilityCustomAttributes.Value)?, type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value), MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
    if ((*v34)(v15, 1, v5) == 1)
    {
      goto LABEL_11;
    }

    v27 = *v15;
    v26 = v15[1];
    outlined init with take of AccessibilityCustomAttributes.Value(v15 + *(v5 + 48), v3, type metadata accessor for AccessibilityCustomAttributes.Value);
    v36 = 0;
    v37 = 0xE000000000000000;
    MEMORY[0x193ABEDD0](v27, v26);

    MEMORY[0x193ABEDD0](8250, 0xE200000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](v36, v37);

    outlined destroy of AccessibilityCustomAttributes.Value(v3, type metadata accessor for AccessibilityCustomAttributes.Value);
    if (*(v16 + 36) != v18)
    {
      __break(1u);
LABEL_11:
      v28 = v38;

      outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v17, v18, v28);
      MEMORY[0x193ABEDD0](62, 0xE100000000000000);
      return v39;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall AccessibilityCustomAttributes.merge(with:)(SwiftUI::AccessibilityCustomAttributes with)
{
  v2 = MEMORY[0x1E69E6720];
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v94 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v100 = &v94 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v99 = &v94 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v94 - v10;
  v109 = type metadata accessor for AccessibilityCustomAttributes.Value();
  v12 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v96 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v94 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v94 - v17;
  type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value)();
  v117 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v103 = (&v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v102 = &v94 - v23;
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, &lazy cache variable for type metadata for (key: String, value: AccessibilityCustomAttributes.Value)?, type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value), v2);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v116 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v112 = (&v94 - v27);
  v28 = *with.attributes._rawValue;

  v105 = v28 + 64;
  v29 = _HashTable.startBucket.getter();
  LODWORD(v98) = 0;
  v30 = *(v28 + 36);
  v120 = 0;
  v110 = (v20 + 48);
  v111 = (v20 + 56);
  v108 = (v12 + 56);
  v114 = v12;
  v97 = (v12 + 48);
  v101 = v28 + 72;
  v106 = v18;
  v115 = v28;
  v104 = v11;
  do
  {
    v34 = 1 << *(v28 + 32);
    if (v29 == v34)
    {
      v118 = v29;
      v36 = v116;
      v35 = v117;
      (*v111)(v116, 1, 1, v117);
    }

    else
    {
      if ((v29 & 0x8000000000000000) != 0 || v29 >= v34)
      {
        goto LABEL_42;
      }

      v37 = v29 >> 6;
      v38 = *(v105 + 8 * (v29 >> 6));
      if (((v38 >> v29) & 1) == 0)
      {
        goto LABEL_43;
      }

      v107 = v30;
      v39 = *(v117 + 48);
      v40 = v29 & 0x3F;
      v41 = *(v28 + 56);
      v42 = (*(v28 + 48) + 16 * v29);
      v43 = *v42;
      v44 = v42[1];
      v45 = v29;
      v46 = v102;
      outlined init with copy of AccessibilityCustomAttributes.Value(v41 + *(v114 + 72) * v29, &v102[v39], type metadata accessor for AccessibilityCustomAttributes.Value);
      v47 = v103;
      *v103 = v43;
      *(v47 + 8) = v44;
      v35 = v117;
      outlined init with take of AccessibilityCustomAttributes.Value(&v46[v39], v47 + *(v117 + 48), type metadata accessor for AccessibilityCustomAttributes.Value);
      outlined init with take of AccessibilityCustomAttributes.Value(v47, v116, type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value));
      if ((v38 & (-2 << v40)) != 0)
      {
        v34 = __clz(__rbit64(v38 & (-2 << v40))) | v45 & 0x7FFFFFFFFFFFFFC0;

        v11 = v104;
      }

      else
      {
        v48 = v37 << 6;
        v49 = v37 + 1;
        v50 = (v101 + 8 * v37);
        v11 = v104;
        v51 = v107;
        while (v49 < (v34 + 63) >> 6)
        {
          v53 = *v50++;
          v52 = v53;
          v48 += 64;
          ++v49;
          if (v53)
          {

            outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v45, v51, 0);
            v34 = __clz(__rbit64(v52)) + v48;
            goto LABEL_18;
          }
        }

        outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v45, v51, 0);
      }

LABEL_18:
      v36 = v116;
      v30 = *(v115 + 36);
      v120 = 0;
      (*v111)(v116, 0, 1, v35);
      v118 = v34;
      v18 = v106;
    }

    v54 = v36;
    v55 = v112;
    _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_1(v54, v112, &lazy cache variable for type metadata for (key: String, value: AccessibilityCustomAttributes.Value)?, type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value), MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
    if ((*v110)(v55, 1, v35) == 1)
    {
      v92 = v120;

      outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v118, v30, v92);
      return v98 & 1;
    }

    v57 = *v55;
    v56 = v55[1];
    outlined init with take of AccessibilityCustomAttributes.Value(v55 + *(v35 + 48), v18, type metadata accessor for AccessibilityCustomAttributes.Value);
    v58 = *v113;
    if (!*(*v113 + 16) || (v59 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v56), (v60 & 1) == 0))
    {
      v107 = v30;
      v62 = v109;
      v63 = *v108;
      (*v108)(v11, 1, 1, v109);
      _sypSgWOhTm_2(v11, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
      v64 = v99;
      outlined init with copy of AccessibilityCustomAttributes.Value(v18, v99, type metadata accessor for AccessibilityCustomAttributes.Value);
      v98 = v63;
      v63(v64, 0, 1, v62);
      v65 = v64;
      v66 = v100;
      outlined init with copy of AccessibilityCustomAttributes.Value?(v65, v100, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value);
      if ((*v97)(v66, 1, v62) == 1)
      {
        _sypSgWOhTm_2(v100, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
        v67 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v56);
        v69 = v68;

        if (v69)
        {
          v70 = v113;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v72 = *v70;
          v119 = *v70;
          *v70 = 0x8000000000000000;
          v32 = v94;
          v18 = v106;
          v30 = v107;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized _NativeDictionary.copy()();
            v72 = v119;
          }

          outlined init with take of AccessibilityCustomAttributes.Value(*(v72 + 56) + *(v114 + 72) * v67, v32, type metadata accessor for AccessibilityCustomAttributes.Value);
          specialized _NativeDictionary._delete(at:)(v67, v72);
          _sypSgWOhTm_2(v99, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
          outlined destroy of AccessibilityCustomAttributes.Value(v18, type metadata accessor for AccessibilityCustomAttributes.Value);
          v73 = v113;

          v31 = 0;
          *v73 = v72;
        }

        else
        {
          _sypSgWOhTm_2(v99, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
          v18 = v106;
          outlined destroy of AccessibilityCustomAttributes.Value(v106, type metadata accessor for AccessibilityCustomAttributes.Value);
          v31 = 1;
          v32 = v94;
          v30 = v107;
        }

        v98(v32, v31, 1, v109);
        _sypSgWOhTm_2(v32, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
        v28 = v115;
        goto LABEL_4;
      }

      v74 = v95;
      outlined init with take of AccessibilityCustomAttributes.Value(v100, v95, type metadata accessor for AccessibilityCustomAttributes.Value);
      outlined init with copy of AccessibilityCustomAttributes.Value(v74, v96, type metadata accessor for AccessibilityCustomAttributes.Value);
      v75 = v113;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v119 = *v75;
      v77 = v119;
      *v75 = 0x8000000000000000;
      v79 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v56);
      v80 = v77[2];
      v81 = (v78 & 1) == 0;
      v82 = v80 + v81;
      if (__OFADD__(v80, v81))
      {
        goto LABEL_44;
      }

      v83 = v78;
      if (v77[3] < v82)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v82, v76);
        v84 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v56);
        v28 = v115;
        v30 = v107;
        if ((v83 & 1) != (v85 & 1))
        {
          goto LABEL_46;
        }

        v79 = v84;
        if ((v83 & 1) == 0)
        {
          goto LABEL_37;
        }

LABEL_35:

        v86 = v119;
        outlined assign with take of AccessibilityCustomAttributes.Value(v96, v119[7] + *(v114 + 72) * v79);
        outlined destroy of AccessibilityCustomAttributes.Value(v95, type metadata accessor for AccessibilityCustomAttributes.Value);
        _sypSgWOhTm_2(v99, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
        outlined destroy of AccessibilityCustomAttributes.Value(v106, type metadata accessor for AccessibilityCustomAttributes.Value);
LABEL_39:
        v91 = v113;

        *v91 = v86;
        v18 = v106;
LABEL_4:
        v33 = *(v28 + 36);
        LODWORD(v98) = 1;
        goto LABEL_5;
      }

      v28 = v115;
      v30 = v107;
      if (v76)
      {
        if (v78)
        {
          goto LABEL_35;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v83)
        {
          goto LABEL_35;
        }
      }

LABEL_37:
      v86 = v119;
      v119[(v79 >> 6) + 8] |= 1 << v79;
      v87 = (v86[6] + 16 * v79);
      *v87 = v57;
      v87[1] = v56;
      outlined init with take of AccessibilityCustomAttributes.Value(v96, v86[7] + *(v114 + 72) * v79, type metadata accessor for AccessibilityCustomAttributes.Value);
      outlined destroy of AccessibilityCustomAttributes.Value(v95, type metadata accessor for AccessibilityCustomAttributes.Value);
      _sypSgWOhTm_2(v99, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
      outlined destroy of AccessibilityCustomAttributes.Value(v106, type metadata accessor for AccessibilityCustomAttributes.Value);
      v88 = v86[2];
      v89 = __OFADD__(v88, 1);
      v90 = v88 + 1;
      if (v89)
      {
        goto LABEL_45;
      }

      v86[2] = v90;
      goto LABEL_39;
    }

    v61 = v114;
    outlined init with copy of AccessibilityCustomAttributes.Value(*(v58 + 56) + *(v114 + 72) * v59, v11, type metadata accessor for AccessibilityCustomAttributes.Value);
    (*(v61 + 56))(v11, 0, 1, v109);
    outlined destroy of AccessibilityCustomAttributes.Value(v18, type metadata accessor for AccessibilityCustomAttributes.Value);

    _sypSgWOhTm_2(v11, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
    v28 = v115;
    v33 = *(v115 + 36);
LABEL_5:
    v29 = v118;
  }

  while (v33 == v30);
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AccessibilityCustomAttributes.Value.CodingKeys()
{
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AccessibilityCustomAttributes.Value.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AccessibilityCustomAttributes.Value.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AccessibilityCustomAttributes.Value.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x676E69727473;
  v5 = 0xE300000000000000;
  v6 = 7107189;
  if (v2 != 5)
  {
    v6 = 0xD000000000000010;
    v5 = 0x800000018DD73F60;
  }

  v7 = 0xE700000000000000;
  v8 = 0x65756C6156736ELL;
  if (v2 != 3)
  {
    v8 = 1702125924;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1635017060;
  if (v2 != 1)
  {
    v10 = 0x7265626D754E736ELL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance AccessibilityCustomAttributes.Value.CodingKeys()
{
  v1 = *v0;
  v2 = 0x676E69727473;
  v3 = 7107189;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x65756C6156736ELL;
  if (v1 != 3)
  {
    v4 = 1702125924;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1635017060;
  if (v1 != 1)
  {
    v5 = 0x7265626D754E736ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance AccessibilityCustomAttributes.Value.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized AccessibilityCustomAttributes.Value.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityCustomAttributes.Value.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityCustomAttributes.Value.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityCustomAttributes.Value.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = MEMORY[0x1E69E6720];
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v29 - v5;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], v3);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v40 = &v29 - v10;
  v11 = type metadata accessor for Date();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedDecodingContainer<AccessibilityCustomAttributes.Value.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AccessibilityCustomAttributes.Value.CodingKeys>, lazy protocol witness table accessor for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys, &unk_1F00530C8, MEMORY[0x1E69E6F48]);
  v14 = v13;
  v41 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v17 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys();
  v20 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v21 = a1;
  if (!v20)
  {
    v30 = v19;
    v31 = v17;
    v42 = a1;
    LOBYTE(v43) = 0;
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v23;
    (*(v41 + 8))(v16, v14);
    v25 = v30;
    *v30 = v22;
    *(v25 + 8) = v24;
    v26 = v42;
    v27 = v37;
    swift_storeEnumTagMultiPayload();
    outlined init with take of AccessibilityCustomAttributes.Value(v25, v27, type metadata accessor for AccessibilityCustomAttributes.Value);
    v21 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t AccessibilityCustomAttributes.Value.encode(to:)(void *a1)
{
  v2 = type metadata accessor for URL();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for KeyedDecodingContainer<AccessibilityCustomAttributes.Value.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityCustomAttributes.Value.CodingKeys>, lazy protocol witness table accessor for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys, &unk_1F00530C8, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of AccessibilityCustomAttributes.Value(v50, v8, type metadata accessor for AccessibilityCustomAttributes.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v14 = v10;
      if (!EnumCaseMultiPayload)
      {
        LOBYTE(v52) = 0;
        KeyedEncodingContainer.encode(_:forKey:)();
        (*(v51 + 8))(v12, v10);
      }

      v29 = v8[1];
      v52 = *v8;
      v38 = v52;
      v53 = v29;
      v54 = 1;
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v51 + 8))(v12, v14);
      v39 = v38;
      return outlined consume of Data._Representation(v39, v29);
    }

    v21 = v10;
    v22 = *v8;
    if (EnumCaseMultiPayload == 2)
    {
      v23 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
      v24 = v22;
      v25 = MEMORY[0x193ABEC20](0x7265626D754E736ELL, 0xE800000000000000);
      [v23 encodeObject:v24 forKey:v25];

      v26 = [v23 encodedData];
      v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v52 = v27;
      v53 = v29;
      v30 = 2;
    }

    else
    {
      v23 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
      v24 = v22;
      v40 = MEMORY[0x193ABEC20](0x65756C6156736ELL, 0xE700000000000000);
      [v23 encodeObject:v24 forKey:v40];

      v41 = [v23 encodedData];
      v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v42;

      v52 = v27;
      v53 = v29;
      v30 = 3;
    }

    v54 = v30;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v51 + 8))(v12, v21);

LABEL_17:
    v39 = v27;
    return outlined consume of Data._Representation(v39, v29);
  }

  if (EnumCaseMultiPayload > 5)
  {
    v31 = v10;
    if (EnumCaseMultiPayload == 6)
    {
      v32 = *v8;
      v33 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
      v34 = v32;
      v35 = MEMORY[0x193ABEC20](0xD000000000000010, 0x800000018DD73F60);
      [v33 encodeObject:v34 forKey:v35];

      v36 = [v33 encodedData];
      v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v37;

      v52 = v27;
      v53 = v29;
      v54 = 6;
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v51 + 8))(v12, v31);

      goto LABEL_17;
    }

    (*(v51 + 8))(v12, v10);
    return outlined destroy of AccessibilityCustomAttributes.Value(v8, type metadata accessor for AccessibilityCustomAttributes.Value);
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v17 = v44;
      v16 = v45;
      v18 = v46;
      (*(v45 + 32))(v44, v8, v46);
      LOBYTE(v52) = 4;
      v19 = &lazy protocol witness table cache variable for type Date and conformance Date;
      v20 = MEMORY[0x1E6969530];
    }

    else
    {
      v17 = v47;
      v16 = v48;
      v18 = v49;
      (*(v48 + 32))(v47, v8, v49);
      LOBYTE(v52) = 5;
      v19 = &lazy protocol witness table cache variable for type URL and conformance URL;
      v20 = MEMORY[0x1E6968FB0];
    }

    lazy protocol witness table accessor for type Date and conformance Date(v19, v20);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v16 + 8))(v17, v18);
    return (*(v51 + 8))(v12, v10);
  }
}

uint64_t AccessibilityCustomAttributes.encode(to:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<AccessibilityCustomAttributes.Value.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityCustomAttributes.CodingKeys>, lazy protocol witness table accessor for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys, &unk_1F0053038, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[3] = v8;
  type metadata accessor for [String : AccessibilityCustomAttributes.Value](0, &lazy cache variable for type metadata for [String : AccessibilityCustomAttributes.Value], MEMORY[0x1E69E5E28]);
  lazy protocol witness table accessor for type [String : AccessibilityCustomAttributes.Value] and conformance <> [A : B]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t AccessibilityCustomAttributes.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  type metadata accessor for KeyedDecodingContainer<AccessibilityCustomAttributes.Value.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AccessibilityCustomAttributes.CodingKeys>, lazy protocol witness table accessor for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys, &unk_1F0053038, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI29AccessibilityCustomAttributesV5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityCustomAttributes.CodingKeys and conformance AccessibilityCustomAttributes.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v12;
    type metadata accessor for [String : AccessibilityCustomAttributes.Value](0, &lazy cache variable for type metadata for [String : AccessibilityCustomAttributes.Value], MEMORY[0x1E69E5E28]);
    lazy protocol witness table accessor for type [String : AccessibilityCustomAttributes.Value] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *v9 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

int64_t specialized Sequence._copySequenceContents(initializing:)(int64_t result, uint64_t a2, int64_t a3)
{
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  if (!a2)
  {
LABEL_17:
    a3 = 0;
    goto LABEL_19;
  }

  if (!a3)
  {
LABEL_19:
    *result = v4;
    *(result + 8) = v5;
    *(result + 16) = v6;
    *(result + 24) = v7;
    *(result + 32) = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    while (1)
    {
      if (v7 == v8)
      {
        a3 = v7;
        goto LABEL_19;
      }

      if (v4)
      {
        if (v8 >> 6 >= *(v6 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(v6 + 32 + 8 * (v8 >> 6)) & (1 << v8);
      }

      else
      {
        v10 = 1 << v8;
        if (v8 >= 0x40)
        {
          v10 = 0;
        }

        v9 = v10 & v5;
      }

      if (v8 >= v7)
      {
        break;
      }

      *(a2 + v8) = v9 != 0;
      if (a3 - 1 == v8)
      {
        goto LABEL_19;
      }

      if (__OFADD__(++v8, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = v3[2];
  if (!a2)
  {
    v7 = 0;
    goto LABEL_13;
  }

  v7 = a3;
  if (!a3)
  {
LABEL_13:
    *result = v4;
    *(result + 8) = v5;
    *(result + 16) = v6;
    *(result + 24) = v7;
    return v7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = *(v4 + 16);
    if (v8)
    {
      v10 = result;
      v11 = 0;
      v12 = -1;
      while (1)
      {
        v13 = a2 + v11;
        v14 = *(v4 + v11 + 32);
        v15 = *(v4 + v11 + 40);
        v16 = *(v4 + v11 + 48);
        v17 = *(v4 + v11 + 72);
        v18 = *(v4 + v11 + 56);
        *v13 = v14;
        *(v13 + 8) = v15;
        *(v13 + 16) = v16;
        *(v13 + 24) = v18;
        *(v13 + 40) = v17;
        if (!(v7 + v12))
        {
          break;
        }

        outlined copy of Text.Layout.Line.Line(v14);
        --v12;
        v11 += 48;
        if (v8 + v12 == -1)
        {
          v7 = v8;
          goto LABEL_12;
        }
      }

      outlined copy of Text.Layout.Line.Line(v14);
LABEL_12:
      result = v10;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

{
  v4 = *v3;
  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (!a2)
  {
LABEL_15:
    v10 = 0;
    v8 = 0;
    a3 = 0;
LABEL_19:
    *result = v4;
    *(result + 8) = v6;
    *(result + 12) = v5;
    *(result + 16) = v10;
    *(result + 20) = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    v8 = 0;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      if (v5 == v7 && !v8)
      {
        v10 = v5;
        a3 = v7;
        goto LABEL_19;
      }

      if (!v4)
      {
        goto LABEL_21;
      }

      v9 = v4 + v8;
      if (v5 - 1 == v7)
      {
        v8 = 0;
      }

      else
      {
        v8 += *(v9 + 8);
      }

      *(a2 + 8 * v7) = v9;
      if (a3 - 1 == v7)
      {
        break;
      }

      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    v10 = a3;
    goto LABEL_19;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

{
  v4 = *v3;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *result = v4;
    *(result + 16) = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = a2;
      v12 = *v3;
      v7 = result;
      v8 = 0;
      v9 = v4 + 32;
      v10 = a3;
      v11 = a3 - 1;
      while (1)
      {
        outlined init with copy of AnyAttributedTextValueConstraint(v9, v6);
        if (v11 == v8)
        {
          break;
        }

        v6 += 40;
        v9 += 40;
        if (v5 == ++v8)
        {
          a3 = v5;
          result = v7;
          goto LABEL_12;
        }
      }

      result = v7;
      a3 = v10;
LABEL_12:
      v4 = v12;
    }

    else
    {
      a3 = 0;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, _OWORD *a2, unint64_t a3)
{
  v4 = result;
  v18 = *v3;
  v5 = *(v3 + 2);
  if (!a2)
  {
LABEL_10:
    v9 = 0;
LABEL_13:
    *v4 = v18;
    *(v4 + 16) = v5;
    *(v4 + 24) = v9;
    return v9;
  }

  if (!a3)
  {
LABEL_12:
    v9 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = a2;
      v9 = 0;
      v10 = (v5 + 32);
      v11 = a3 - 1;
      while (v9 < v7)
      {
        v12 = *v10;
        v13 = v10[1];
        v14 = v10[3];
        v20[2] = v10[2];
        v20[3] = v14;
        v20[0] = v12;
        v20[1] = v13;
        v15 = *v10;
        v16 = v10[1];
        v17 = v10[3];
        v8[2] = v10[2];
        v8[3] = v17;
        *v8 = v15;
        v8[1] = v16;
        if (v11 == v9)
        {
          outlined init with copy of Text.Layout.RunSlice(v20, v19);
          goto LABEL_12;
        }

        v8 += 4;
        result = outlined init with copy of Text.Layout.RunSlice(v20, v19);
        v7 = *(v5 + 16);
        ++v9;
        v10 += 4;
        if (v9 == v7)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = *v3;
  if (!a2)
  {
LABEL_10:
    v9 = 0;
LABEL_13:
    *v4 = v5;
    v4[1] = v9;
    return v9;
  }

  if (!a3)
  {
LABEL_12:
    v9 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = a2;
      v9 = 0;
      v10 = (v5 + 32);
      v11 = a3 - 1;
      while (v9 < v7)
      {
        v12 = *v10;
        v13 = v10[1];
        v14 = v10[2];
        v20 = *(v10 + 6);
        v19[1] = v13;
        v19[2] = v14;
        v19[0] = v12;
        v15 = *v10;
        v16 = v10[1];
        v17 = v10[2];
        *(v8 + 48) = *(v10 + 6);
        *(v8 + 16) = v16;
        *(v8 + 32) = v17;
        *v8 = v15;
        if (v11 == v9)
        {
          outlined init with copy of Text.Layout.Decorations.Segment(v19, v18);
          goto LABEL_12;
        }

        v8 += 56;
        result = outlined init with copy of Text.Layout.Decorations.Segment(v19, v18);
        v7 = *(v5 + 16);
        ++v9;
        v10 = (v10 + 56);
        if (v9 == v7)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = *v3;
  if (!a2)
  {
LABEL_10:
    v9 = 0;
LABEL_12:
    *v4 = v5;
    v4[1] = v9;
    return v9;
  }

  if (!a3)
  {
LABEL_11:
    v9 = a3;
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = a2;
      v9 = 0;
      v10 = v5 + 32;
      v11 = a3 - 1;
      while (v9 < v7)
      {
        result = outlined init with copy of SectionConfiguration(v10, v8);
        if (v11 == v9)
        {
          goto LABEL_11;
        }

        v8 += 152;
        v7 = *(v5 + 16);
        ++v9;
        v10 += 152;
        if (v9 == v7)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = *v3;
  v6 = *(v3 + 2);
  v7 = v3[2];
  if (!a2)
  {
LABEL_10:
    v11 = 0;
LABEL_12:
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 16) = v7;
    *(v4 + 24) = v11;
    return v11;
  }

  if (!a3)
  {
LABEL_11:
    v11 = a3;
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = a2;
      v11 = 0;
      v12 = v7 + 32;
      v13 = a3 - 1;
      while (v11 < v9)
      {
        result = outlined init with copy of PlatformItem(v12, v10);
        if (v13 == v11)
        {
          goto LABEL_11;
        }

        v10 += 632;
        v9 = *(v7 + 16);
        ++v11;
        v12 += 632;
        if (v11 == v9)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v34[0] = *v3;
  v34[1] = v7;
  v35 = *(v3 + 32);
  v36 = *(v3 + 48);
  v37[0] = v34[0];
  v37[1] = v7;
  v37[2] = v35;
  v38 = v36;
  outlined init with copy of Text.Layout.Decorations.Segment(v34, v33);
  result = outlined destroy of Text.Layout.Decorations.Segment(v37);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_41;
  }

  if (!a3)
  {
LABEL_41:
    v32 = *(v3 + 16);
    *a1 = *v3;
    *(a1 + 16) = v32;
    *(a1 + 32) = *(v3 + 32);
    *(a1 + 48) = *(v3 + 48);
    *(a1 + 56) = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(v36 + 16);
    if (v9)
    {
      v10 = v36 + 32;
      v11 = v9 - 1;
      v12 = a3 - 1;
      if (v9 - 1 >= (a3 - 1))
      {
        v13 = a3 - 1;
      }

      else
      {
        v13 = v9 - 1;
      }

      if ((v13 + 1) <= 0x16)
      {
        goto LABEL_37;
      }

      v14 = v11 >= v12 ? a3 - 1 : v9 - 1;
      v15 = &a2[2 * v14] >= a2 && &a2[2 * v14] + 8 >= a2 + 8;
      v16 = v15 && &a2[2 * v14 + 1] >= a2 + 1;
      v17 = v16 && &a2[2 * v14 + 1] + 8 >= a2 + 24;
      v18 = v14 >> 59;
      if (!v17 || v18 != 0)
      {
        goto LABEL_37;
      }

      if (v11 >= v12)
      {
        v11 = a3 - 1;
      }

      v20 = 2 * v11;
      if (v36 + v20 * 16 + 64 <= a2 || v36 >= &a2[v20])
      {
        v22 = a2;
        v23 = v13 & 0xFFFFFFFFFFFFFFFELL;
        v24 = v13 | 1;
        a2 += 2 * v23;
        v25 = v23;
        v26 = (v36 + 32);
        do
        {
          v28 = *v26;
          v27 = v26[1];
          v29 = v26[3];
          v22[2] = v26[2];
          v22[3] = v29;
          *v22 = v28;
          v22[1] = v27;
          v22 += 4;
          v26 += 4;
          v25 -= 2;
        }

        while (v25);
      }

      else
      {
LABEL_37:
        v23 = 0;
        v24 = 1;
      }

      while (1)
      {
        v30 = (v10 + 32 * v23);
        v31 = v30[1];
        *a2 = *v30;
        a2[1] = v31;
        if (a3 == v24)
        {
          break;
        }

        v23 = v24;
        a2 += 2;
        if (v9 + 1 == ++v24)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_40:
      a3 = v9;
    }

    goto LABEL_41;
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v27[0] = *v3;
  v27[1] = v7;
  v8 = *(v3 + 48);
  v28 = *(v3 + 32);
  v29 = v8;
  v10 = *(&v8 + 1);
  v9 = v8;
  v11 = v27[0];
  v12 = v7;
  v13 = *(&v28 + 1);
  v24 = v28;
  v30[2] = v28;
  v30[3] = v8;
  v30[0] = v27[0];
  v30[1] = v7;
  outlined init with copy of Text.Layout.RunSlice(v27, &v25);
  outlined destroy of Text.Layout.RunSlice(v30);
  if (!a2)
  {
LABEL_17:
    a3 = 0;
    goto LABEL_21;
  }

  if (!a3)
  {
LABEL_21:
    *a1 = v11;
    *(a1 + 16) = v12;
    *(a1 + 32) = v24;
    *(a1 + 40) = v13;
    *(a1 + 48) = *(v3 + 48);
    *(a1 + 64) = v9;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v22 = a1;
    v23 = v3;
    v21 = v10 - v9;
    v3 = v24;
    v14 = 1;
    while (1)
    {
      if (v9 - v10 + v14 == 1)
      {
        v9 = v10;
        a3 = v21;
LABEL_20:
        a1 = v22;
        v3 = v23;
        goto LABEL_21;
      }

      v15 = v9 + v14 - 1;
      a1 = v9 + v14;
      v16 = __OFADD__(v15, 1);
      if (a1 < v15)
      {
        break;
      }

      if (v10 < a1)
      {
        goto LABEL_26;
      }

      if (v15 >= v10)
      {
        goto LABEL_23;
      }

      if (v16)
      {
        goto LABEL_24;
      }

      *a2 = v11;
      *(a2 + 16) = v12;
      *(a2 + 32) = v24;
      *(a2 + 40) = v13;
      *(a2 + 48) = v15;
      *(a2 + 56) = a1;
      if (a3 == v14)
      {
        v19 = v11;

        v9 += v14;
        goto LABEL_20;
      }

      v17 = v11;

      a2 += 64;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
LABEL_26:
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v25 = 0xD000000000000011;
  v26 = 0x800000018DD780A0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value)();
  v47 = v7;
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = (&v40 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v40 - v12;
  v13 = *v3;

  v48 = v13 + 64;
  v14 = _HashTable.startBucket.getter();
  v15 = *(v13 + 36);

  if (!a2)
  {
LABEL_21:
    a3 = 0;
    goto LABEL_25;
  }

  if (!a3)
  {
LABEL_25:
    *a1 = v13;
    *(a1 + 8) = v14;
    *(a1 + 16) = v15;
    *(a1 + 24) = 0;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    result = 0;
    v40 = a1;
    v41 = v13 + 72;
    v17 = 1;
    v42 = v13;
    v43 = a3;
    while (1)
    {
      v18 = *(v13 + 36);
      if (v18 != v15)
      {
        break;
      }

      v19 = 1 << *(v13 + 32);
      if (v14 == v19)
      {
        a3 = result;
LABEL_24:
        a1 = v40;
        goto LABEL_25;
      }

      if ((v14 & 0x8000000000000000) != 0 || v14 >= v19)
      {
        goto LABEL_27;
      }

      v20 = v14 >> 6;
      v21 = *(v48 + 8 * (v14 >> 6));
      if (((v21 >> v14) & 1) == 0)
      {
        goto LABEL_28;
      }

      v50 = v17;
      v51 = v18;
      v49 = v15;
      v52 = a2;
      v22 = v47;
      v23 = *(v47 + 48);
      v24 = *(v13 + 56);
      v25 = (*(v13 + 48) + 16 * v14);
      v26 = *v25;
      v27 = v25[1];
      v28 = v24 + *(*(type metadata accessor for AccessibilityCustomAttributes.Value() - 8) + 72) * v14;
      v29 = v46;
      outlined init with copy of AccessibilityCustomAttributes.Value(v28, &v46[v23], type metadata accessor for AccessibilityCustomAttributes.Value);
      v30 = v53;
      *v53 = v26;
      v30[1] = v27;
      outlined init with take of AccessibilityCustomAttributes.Value(&v29[v23], v30 + *(v22 + 48), type metadata accessor for AccessibilityCustomAttributes.Value);
      if ((v21 & (-2 << (v14 & 0x3F))) != 0)
      {
        v14 = __clz(__rbit64(v21 & (-2 << (v14 & 0x3F)))) | v14 & 0x7FFFFFFFFFFFFFC0;

        v31 = v52;
        v13 = v42;
        v32 = v50;
      }

      else
      {
        v33 = v20 << 6;
        v34 = v20 + 1;
        v13 = v42;
        v35 = (v41 + 8 * v20);
        v31 = v52;
        v36 = v49;
        v32 = v50;
        while (v34 < (v19 + 63) >> 6)
        {
          v38 = *v35++;
          v37 = v38;
          v33 += 64;
          ++v34;
          if (v38)
          {

            outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v14, v36, 0);
            v14 = __clz(__rbit64(v37)) + v33;
            goto LABEL_17;
          }
        }

        outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v14, v36, 0);
        v14 = v19;
      }

LABEL_17:
      a1 = v45;
      outlined init with take of AccessibilityCustomAttributes.Value(v53, v45, type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value));
      outlined init with take of AccessibilityCustomAttributes.Value(a1, v31, type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value));
      a3 = v43;
      if (v32 == v43)
      {
        v15 = v51;
        goto LABEL_24;
      }

      a2 = v31 + *(v44 + 72);
      result = v32;
      v15 = v51;
      v39 = __OFADD__(v32, 1);
      v17 = v32 + 1;
      if (v39)
      {
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  outlined init with copy of SubviewsCollectionSlice(v3, v22);
  v7 = *v3;
  result = outlined destroy of SubviewsCollectionSlice(v3);
  v23 = v7;
  if (!a2)
  {
    v10 = 0;
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_14:
    v10 = a3;
LABEL_16:
    v18 = v22[3];
    *(a1 + 32) = v22[2];
    *(a1 + 48) = v18;
    *(a1 + 64) = v22[4];
    *(a1 + 80) = v23;
    v19 = v22[1];
    *a1 = v22[0];
    *(a1 + 16) = v19;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(&v22[0] + 1);
    v10 = *(&v22[0] + 1) - v7;
    v11 = v7 - *(&v22[0] + 1);
    v12 = 1;
    while (v11 + v12 != 1)
    {
      result = v7 + v12 - 1;
      if (result >= v9 || result < *&v22[0])
      {
        __break(1u);
        goto LABEL_18;
      }

      _VariadicView_Children.subscript.getter(result, v20);
      v23 = v7 + v12;
      v14 = v20[5];
      *(a2 + 64) = v20[4];
      *(a2 + 80) = v14;
      *(a2 + 96) = v21;
      v15 = v20[1];
      *a2 = v20[0];
      *(a2 + 16) = v15;
      v16 = v20[3];
      *(a2 + 32) = v20[2];
      *(a2 + 48) = v16;
      if (a3 == v12)
      {
        goto LABEL_14;
      }

      a2 += 104;
      if (__OFADD__(v12++, 1))
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v4 = v3;
  v59 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for Data.Deallocator();
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v43 - v12);
  v53 = a2;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        goto LABEL_48;
      }

      v48 = v11;
      v43 = a1;
      v14 = 0;
      v52 = *MEMORY[0x1E6969028];
      v51 = (v10 + 104);
      v46 = (v10 + 88);
      v47 = (v10 + 16);
      v45 = *MEMORY[0x1E6969010];
      v55 = (v10 + 8);
      a1 = 1;
      v49 = a3;
      v50 = v4;
      while (a1 - 1 != v4[5])
      {
        v15 = v8;
        v16 = v4[2];
        if (!v16)
        {
          goto LABEL_49;
        }

        v17 = (v4[4] + v14);
        v18 = *v17;
        if (*v17 < 0)
        {
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
        }

        v19 = v17[1];

        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        v56 = a1 - 1;
        v20 = swift_allocObject();
        *(v20 + 16) = v4;
        *v13 = partial apply for closure #1 in ArchiveReader.subscript.getter;
        v13[1] = v20;
        v21 = v15;
        (*v51)(v13, v52, v15);
        Data.Deallocator._deallocator.getter();
        v23 = v22;
        if (v19)
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();

          v54 = v23;
          v24 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
          v25 = v48;
          (*v47)(v48, v13, v21);
          v26 = (*v46)(v25, v21);
          v8 = v21;
          if (v26 == v45)
          {
            v27 = __DataStorage._capacity.modify();
            *v28 |= 0x8000000000000000;
            v27(__dst, 0);
          }

          else
          {
            (*v55)(v25, v21);
          }

          v32 = v56;
          if (v19 < 0xF)
          {
            v33 = __DataStorage._bytes.getter();
            if (v33)
            {
              v34 = __DataStorage._offset.getter();
              if (__OFSUB__(0, v34))
              {
                goto LABEL_47;
              }

              v33 -= v34;
            }

            v35 = MEMORY[0x193ABC2C0]();
            if (v35 >= v19)
            {
              v36 = v19;
            }

            else
            {
              v36 = v35;
            }

            v37 = &v33[v36];
            if (v33)
            {
              v38 = v37 - v33;
            }

            else
            {
              v37 = 0;
              v38 = 0;
            }

            if ((v38 & 0x8000000000000000) != 0)
            {
              goto LABEL_45;
            }

            if (v38 > 0xFF)
            {
              goto LABEL_46;
            }

            memset(__dst, 0, sizeof(__dst));
            v58 = v38;
            if (v33 && v37 != v33)
            {
              memcpy(__dst, v33, v37 - v33);
            }

            v30 = *__dst;
            v39 = *&__dst[8] | ((*&__dst[12] | (v58 << 16)) << 32);

            v31 = v44 & 0xF00000000000000 | v39;
            v44 = v31;
          }

          else if (v19 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            v30 = swift_allocObject();
            *(v30 + 16) = 0;
            *(v30 + 24) = v19;

            v31 = v24 | 0x8000000000000000;
          }

          else
          {

            v30 = v19 << 32;
            v31 = v24 | 0x4000000000000000;
          }
        }

        else
        {
          v29 = Data.Deallocator._deallocator.getter();
          v29(v16 + v18, 0);

          v30 = 0;
          v31 = 0xC000000000000000;
          v8 = v21;
          v32 = v56;
        }

        (*v55)(v13, v8);
        v4 = v50;
        if (v32 >= v50[5])
        {
          goto LABEL_44;
        }

        v40 = (v53 + v14);
        *v40 = v30;
        v40[1] = v31;
        a3 = v49;
        if (v49 == a1)
        {
          goto LABEL_40;
        }

        v14 += 16;
        if (__OFADD__(a1++, 1))
        {
          __break(1u);
          goto LABEL_38;
        }
      }

      a3 = a1 - 1;
LABEL_40:
      a1 = v43;
    }
  }

  else
  {
LABEL_38:
    a3 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = a3;
  return a3;
}

{
  v5 = *v3;
  v6 = v3[1];
  result = *(v3 + 1);
  v8 = *(v3 + 2);
  if (!a2)
  {
    v10 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_12:
    v10 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = v8;
    if (v8)
    {
      v11 = a2;
      v12 = 0;
      v13 = a3 - 1;
      while (v12 != 0x80000000)
      {

        if ((v8 & ~(v8 >> 63)) == v12)
        {
          goto LABEL_15;
        }

        *v11 = v12;
        *(v11 + 4) = v6;
        *(v11 + 8) = result;
        if (v13 == v12)
        {
          goto LABEL_12;
        }

        v11 += 16;
        if (v8 == ++v12)
        {
          v10 = v8;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_13:
    *a1 = v5;
    *(a1 + 4) = v6;
    *(a1 + 8) = result;
    *(a1 + 16) = v8;
    *(a1 + 24) = v10;
    return v10;
  }

LABEL_16:
  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  if (!a2)
  {
    goto LABEL_11;
  }

  v11 = a3;
  if (!a3)
  {
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_36;
  }

  if ((v13 = v5, v14 = v13, v15 = v13, v7) && (v15 = _NSTextLineFragmentGetCTLine(v13), v14, !v15) || (RunCount = CTLineGetRunCount(), v15, !RunCount))
  {
LABEL_11:
    v11 = 0;
    goto LABEL_34;
  }

  v41 = v10;
  v38 = v5;
  v40 = v14;
  v17 = v14;
  v18 = v17;
  if (v7)
  {
    v19 = _NSTextLineFragmentGetCTLine(v17);

    if (!v19)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v20 = v18;

    v21 = _NSTextLineFragmentGetCTLine(v20);

    if (!v21)
    {
      v22 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v19 = v17;

    v21 = v19;
  }

  v23 = CTLineGetRunCount();

  v22 = v23 > 0;
LABEL_14:
  v10 = v41;
  if (!v22)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *a2 = v19;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v41;
  *(a2 + 40) = v6;
  if (v11 == 1)
  {
LABEL_16:
    v5 = v38;
    goto LABEL_34;
  }

  v24 = (a2 + 88);
  v25 = 2;
  v39 = v7;
  do
  {
    v26 = v25 - 1;
    v27 = v40;
    v28 = v27;
    v29 = v27;
    if (v7)
    {
      v29 = _NSTextLineFragmentGetCTLine(v27);

      if (!v29)
      {
        goto LABEL_22;
      }
    }

    v30 = CTLineGetRunCount();

    if (v26 == v30)
    {
      goto LABEL_33;
    }

    if (v7)
    {
LABEL_22:
      v31 = v28;
      v32 = _NSTextLineFragmentGetCTLine(v31);

      if (!v32)
      {
        goto LABEL_37;
      }

      v33 = v31;

      v34 = _NSTextLineFragmentGetCTLine(v33);

      if (!v34)
      {
        v35 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      v32 = v28;

      v34 = v32;
    }

    v35 = CTLineGetRunCount();

LABEL_27:
    v36 = v26 < v35;
    v7 = v39;
    v10 = v41;
    if (!v36)
    {
      goto LABEL_35;
    }

    *(v24 - 5) = v32;
    *(v24 - 4) = v26;
    *(v24 - 3) = v8;
    *(v24 - 2) = v9;
    *(v24 - 2) = v41;
    *v24 = v6;
    if (v11 == v25)
    {
      goto LABEL_16;
    }

    v24 += 6;
  }

  while (!__OFADD__(v25++, 1));
  __break(1u);
LABEL_33:
  v11 = v26;
  v5 = v38;
  v10 = v41;
LABEL_34:
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
}

{
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v20 = *(v3 + 32);
  v8 = *(v3 + 40);
  if (!a2)
  {
LABEL_12:
    v9 = 0;
    goto LABEL_15;
  }

  v9 = a3;
  if (!a3)
  {
LABEL_15:
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v20;
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v19 = a1;
    v11 = 1;
    while (1)
    {
      v12 = v11 - 1;
      v13 = CTLineGetRunAtIndex();
      GlyphCount = CTRunGetGlyphCount(v13);

      if (v11 - 1 == GlyphCount)
      {
        v9 = v11 - 1;
LABEL_14:
        a1 = v19;
        goto LABEL_15;
      }

      if (v11 < v12)
      {
        break;
      }

      v15 = v4;

      v16 = CTLineGetRunAtIndex();
      v17 = CTRunGetGlyphCount(v16);

      if (v12 >= v17)
      {
        goto LABEL_17;
      }

      *v10 = v15;
      *(v10 + 8) = v5;
      *(v10 + 16) = v6;
      *(v10 + 24) = v7;
      *(v10 + 32) = v20;
      *(v10 + 40) = v8;
      *(v10 + 48) = v12;
      *(v10 + 56) = v11;
      if (v9 == v11)
      {
        goto LABEL_14;
      }

      v10 += 64;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
}

{
  v80 = type metadata accessor for Calendar.SearchDirection();
  v6 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v8 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Calendar.MatchingPolicy();
  v10 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Calendar();
  v12 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v20 = type metadata accessor for Date();
  v81 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v54 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v86 = &v53 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v72 = &v53 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v71 = &v53 - v27;
  if (!a2 || !a3)
  {
LABEL_16:
    outlined init with take of AccessibilityCustomAttributes.Value(v87, a1, type metadata accessor for AlignedTimelineSchedule.Entries);
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v53 = a1;
    v28 = v12;
    v29 = (v81 + 48);
    v30 = v10;
    v31 = (v81 + 32);
    v66 = *MEMORY[0x1E69698D0];
    v65 = (v30 + 104);
    v64 = *MEMORY[0x1E69699C8];
    v63 = (v8 + 104);
    v62 = (v6 + 104);
    v61 = *MEMORY[0x1E6969998];
    v60 = (v6 + 8);
    v59 = (v8 + 8);
    v58 = (v30 + 8);
    v57 = (v28 + 8);
    v56 = (v81 + 56);
    a1 = 1;
    v69 = v19;
    v70 = a3;
    v67 = (v81 + 48);
    v68 = v20;
    v55 = (v81 + 32);
    while (1)
    {
      outlined init with copy of AccessibilityCustomAttributes.Value?(v87, v19, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
      v32 = *v29;
      if ((*v29)(v19, 1, v20) == 1)
      {
        break;
      }

      v84 = a1;
      v85 = a2;
      v83 = *v31;
      v83(v86, v19, v20);
      v33 = v73;
      static Calendar.current.getter();
      v82 = *(type metadata accessor for AlignedTimelineSchedule.Entries() + 24);
      v34 = v75;
      v35 = v76;
      (*v65)(v75, v66, v76);
      v36 = v16;
      v38 = v77;
      v37 = v78;
      (*v63)(v77, v64, v78);
      v39 = v79;
      v40 = v80;
      (*v62)(v79, v61, v80);
      Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
      (*v60)(v39, v40);
      v41 = v38;
      v16 = v36;
      v29 = v67;
      (*v59)(v41, v37);
      v42 = v35;
      v20 = v68;
      (*v58)(v34, v42);
      (*v57)(v33, v74);
      if (v32(v16, 1, v20) == 1)
      {
        v43 = MEMORY[0x1E6969530];
        v44 = MEMORY[0x1E69E6720];
        _sypSgWOhTm_2(v16, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
        _sypSgWOhTm_2(v87, &lazy cache variable for type metadata for Date?, v43, v44, type metadata accessor for AccessibilityCustomAttributes.Value?);
        v45 = 1;
        v46 = v70;
        v47 = v85;
        v31 = v55;
        v48 = v83;
      }

      else
      {
        v49 = v54;
        v48 = v83;
        v31 = v55;
        v83(v54, v16, v20);
        v50 = v87;
        _sypSgWOhTm_2(v87, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
        v48(v50, v49, v20);
        v45 = 0;
        v46 = v70;
        v47 = v85;
      }

      (*v56)(v87, v45, 1, v20);
      v51 = v72;
      v48(v72, v86, v20);
      v52 = v71;
      v48(v71, v51, v20);
      v48(v47, v52, v20);
      v19 = v69;
      if (v46 == v84)
      {
        goto LABEL_15;
      }

      a2 = v47 + *(v81 + 72);
      a1 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    _sypSgWOhTm_2(v19, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
LABEL_15:
    a1 = v53;
    goto LABEL_16;
  }

  __break(1u);
}

{
  v4 = v3;
  v65 = type metadata accessor for Calendar.SearchDirection();
  v8 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v10 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Calendar.MatchingPolicy();
  v12 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v61 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Calendar();
  v14 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v58 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  v21 = type metadata accessor for Date();
  v66 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v57 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v56 = &v40 - v24;
  if (!a2 || !a3)
  {
LABEL_13:
    outlined init with take of AccessibilityCustomAttributes.Value(v4, a1, type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries);
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v41 = a1;
    v55 = (v66 + 48);
    v69 = (v66 + 32);
    v52 = *MEMORY[0x1E69698D0];
    v51 = (v12 + 104);
    v50 = *MEMORY[0x1E69699C8];
    v49 = (v10 + 104);
    v48 = *MEMORY[0x1E6969998];
    v47 = (v8 + 104);
    v46 = (v8 + 8);
    v45 = (v10 + 8);
    v44 = (v12 + 8);
    v43 = (v14 + 8);
    a1 = 1;
    v54 = a3;
    v42 = v20;
    v53 = v21;
    v25 = v64;
    while (1)
    {
      outlined init with copy of AccessibilityCustomAttributes.Value?(v4, v20, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
      if ((*v55)(v20, 1, v21) == 1)
      {
        break;
      }

      v67 = *v69;
      v26 = v57;
      v67(v57, v20, v21);
      v27 = v59;
      static Calendar.current.getter();
      type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries(0);
      v28 = v61;
      (*v51)(v61, v52, v70);
      v29 = *v49;
      v30 = v62;
      v68 = a1;
      v31 = v63;
      v29(v62, v50, v63);
      v32 = a2;
      v33 = v65;
      (*v47)(v25, v48, v65);
      v34 = v58;
      Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
      (*v46)(v25, v33);
      (*v45)(v30, v31);
      v21 = v53;
      (*v44)(v28, v70);
      (*v43)(v27, v60);
      outlined assign with take of Date?(v34, v4);
      v35 = v56;
      v36 = v67;
      v67(v56, v26, v21);
      v37 = v35;
      v38 = v68;
      v36(v32, v37, v21);
      if (v54 == v38)
      {
        goto LABEL_12;
      }

      a2 = v32 + *(v66 + 72);
      v39 = __OFADD__(v38, 1);
      a1 = v38 + 1;
      v20 = v42;
      if (v39)
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    _sypSgWOhTm_2(v20, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
LABEL_12:
    a1 = v41;
    goto LABEL_13;
  }

  __break(1u);
}

_BYTE *specialized Sequence._copySequenceContents(initializing:)(_BYTE *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
LABEL_36:
    LOBYTE(v6) = 0;
    a3 = 0;
LABEL_39:
    *result = v6;
    return a3;
  }

  if (!a3)
  {
    LOBYTE(v6) = 0;
    goto LABEL_39;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = 0;
    while (v4 != 11)
    {
      if (byte_1F0043DA0 == v4)
      {
        v5 = 0;
      }

      else if (byte_1F0043DA1 == v4)
      {
        v5 = 1;
      }

      else if (byte_1F0043DA2 == v4)
      {
        v5 = 2;
      }

      else if (byte_1F0043DA3 == v4)
      {
        v5 = 3;
      }

      else if (byte_1F0043DA4 == v4)
      {
        v5 = 4;
      }

      else if (byte_1F0043DA5 == v4)
      {
        v5 = 5;
      }

      else if (byte_1F0043DA6 == v4)
      {
        v5 = 6;
      }

      else if (asc_1F0043DA7[0] == v4)
      {
        v5 = 7;
      }

      else if (asc_1F0043DA7[1] == v4)
      {
        v5 = 8;
      }

      else if (asc_1F0043DA7[2] == v4)
      {
        v5 = 9;
      }

      else if (asc_1F0043DA7[3] == v4)
      {
        v5 = 10;
      }

      else
      {
        if (asc_1F0043DA7[4] != v4)
        {
          goto LABEL_41;
        }

        v5 = 11;
      }

      if (v5 >= 0xA)
      {
        v5 = 10;
      }

      v6 = *(&outlined read-only object #0 of static DynamicTypeSize.allCases.getter + v5 + 33);
      *(a2 + v3) = v4;
      if (a3 - 1 == v3)
      {
        goto LABEL_39;
      }

      ++v3;
      v4 = v6;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_36;
      }
    }

    LOBYTE(v6) = 11;
    a3 = v3;
    goto LABEL_39;
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

{
  if (!a2)
  {
LABEL_22:
    LOBYTE(v6) = 0;
    a3 = 0;
LABEL_25:
    *result = v6;
    return a3;
  }

  if (!a3)
  {
    LOBYTE(v6) = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = 0;
    while (v4 != 4)
    {
      if (byte_1F0043DD0 == v4)
      {
        v5 = 0;
      }

      else if (byte_1F0043DD1 == v4)
      {
        v5 = 1;
      }

      else if (byte_1F0043DD2 == v4)
      {
        v5 = 2;
      }

      else if (byte_1F0043DD3 == v4)
      {
        v5 = 3;
      }

      else
      {
        if (byte_1F0043DD4 != v4)
        {
          goto LABEL_27;
        }

        v5 = 4;
      }

      if (v5 >= 3)
      {
        v5 = 3;
      }

      v6 = outlined read-only object #1 of ControlSizeCollection.index(after:)[v5 + 33];
      *(a2 + v3) = v4;
      if (a3 - 1 == v3)
      {
        goto LABEL_25;
      }

      ++v3;
      v4 = v6;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    LOBYTE(v6) = 4;
    a3 = v3;
    goto LABEL_25;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, char *a2, unint64_t a3)
{
  v4 = result;
  v5 = *v3;
  if (!a2)
  {
LABEL_10:
    v10 = 0;
LABEL_13:
    *v4 = v5;
    v4[1] = v10;
    return v10;
  }

  if (!a3)
  {
LABEL_12:
    v10 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    result = swift_beginAccess();
    v8 = *(v5 + 160);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (v8 + 32);
      while (v10 < v9)
      {
        v22[0] = *v11;
        v12 = v11[1];
        v13 = v11[2];
        v14 = v11[4];
        v22[3] = v11[3];
        v22[4] = v14;
        v22[1] = v12;
        v22[2] = v13;
        v15 = v11[5];
        v16 = v11[6];
        v17 = v11[8];
        v22[7] = v11[7];
        v22[8] = v17;
        v22[5] = v15;
        v22[6] = v16;
        v18 = v11[9];
        v19 = v11[10];
        v20 = v11[11];
        *(v23 + 12) = *(v11 + 188);
        v22[10] = v19;
        v23[0] = v20;
        v22[9] = v18;
        memmove(v7, v11, 0xCCuLL);
        if (a3 - 1 == v10)
        {
          outlined init with copy of LayoutGestureBox.Child(v22, v21);
          goto LABEL_12;
        }

        v7 += 208;
        result = outlined init with copy of LayoutGestureBox.Child(v22, v21);
        v9 = *(v8 + 16);
        ++v10;
        v11 += 13;
        if (v10 == v9)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = v3[1];
  v41 = *v3;
  v42 = v6;
  v7 = v3[3];
  v43 = v3[2];
  v44 = v7;
  v45 = 0;
  if (!a2)
  {
    v9 = 0;
    goto LABEL_14;
  }

  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
LABEL_17:
      __break(1u);
    }

    else
    {
      v4 = a2;
      if (one-time initialization token for _lock == -1)
      {
        goto LABEL_5;
      }
    }

    swift_once();
LABEL_5:
    v9 = 0;
    v10 = static Update._lock;
    do
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      _MovableLockLock(v10);
      specialized static Update.begin()();
      v12 = *(&v42 + 1);
      v13 = v43;
      __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
      v14 = ViewList.count.getter(v12, v13);
      static Update.end()();
      _MovableLockUnlock(v10);
      if (v9 == v14)
      {
        goto LABEL_14;
      }

      _VariadicView_Children.subscript.getter(v9, &v27);
      _MovableLockLock(v10);
      specialized static Update.begin()();
      v15 = *(&v42 + 1);
      v16 = v43;
      __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
      v17 = ViewList.count.getter(v15, v16);
      static Update.end()();
      _MovableLockUnlock(v10);
      if (v9 >= v17)
      {
        goto LABEL_16;
      }

      v45 = v9 + 1;
      v18 = v32;
      v38 = v31;
      v39 = v32;
      v19 = v33;
      v40 = v33;
      v20 = v27;
      v21 = v28;
      v34 = v27;
      v35 = v28;
      v22 = v30;
      v23 = v29;
      v36 = v29;
      v37 = v30;
      *(v4 + 64) = v31;
      *(v4 + 80) = v18;
      *(v4 + 96) = v19;
      *v4 = v20;
      *(v4 + 16) = v21;
      *(v4 + 32) = v23;
      *(v4 + 48) = v22;
      if (v11 == a3)
      {
        goto LABEL_12;
      }

      v4 += 104;
      ++v9;
    }

    while (v11 < a3);
    __break(1u);
  }

LABEL_12:
  v9 = a3;
LABEL_14:
  v24 = v44;
  *(a1 + 32) = v43;
  *(a1 + 48) = v24;
  *(a1 + 64) = v45;
  v25 = v42;
  *a1 = v41;
  *(a1 + 16) = v25;
  return v9;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!a2)
  {
LABEL_14:
    LODWORD(v9) = 0;
    v6 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v9;
    *(result + 20) = v6;
    return a3;
  }

  if (!a3)
  {
    LODWORD(v9) = 0;
    v6 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = HIDWORD(a5);
    while (1)
    {
      if (!(v7 | v6))
      {
        v6 = 0;
        v9 = HIDWORD(a5);
        a3 = v5;
        goto LABEL_18;
      }

      if (!a4)
      {
        goto LABEL_20;
      }

      v8 = a4 + v6;
      LODWORD(v7) = v7 - 1;
      if (v7)
      {
        v6 += *(v8 + 8);
      }

      else
      {
        v6 = 0;
      }

      *(a2 + 8 * v5) = v8;
      if (a3 - 1 == v5)
      {
        break;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    LODWORD(v9) = a3;
    goto LABEL_18;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(v3 + 8);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    *result = v4;
    *(result + 8) = v5;
    *(result + 16) = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 32;
      v8 = v6 - 1;
      v9 = a3 - 1;
      if (v6 - 1 >= (a3 - 1))
      {
        v10 = a3 - 1;
      }

      else
      {
        v10 = v6 - 1;
      }

      v11 = v10 + 1;
      if ((v10 + 1) <= 0x1C)
      {
        goto LABEL_9;
      }

      v12 = 0;
      if (v8 >= v9)
      {
        v15 = a3 - 1;
      }

      else
      {
        v15 = v6 - 1;
      }

      v16 = !is_mul_ok(v15, 0xCuLL);
      v17 = 12 * v15;
      v18 = a2 + 4 + 12 * v15;
      v13 = 1;
      if (v18 < a2 + 4 || v16 || a2 + 8 + v17 < a2 + 8 || v16 || a2 + v17 < a2 || v16)
      {
        goto LABEL_10;
      }

      v19 = v8 >= v9 ? a3 - 1 : v6 - 1;
      if (v5 + 8 * v19 + 40 > a2 && v7 < a2 + 12 * v19 + 12)
      {
LABEL_9:
        v12 = 0;
        v13 = 1;
        goto LABEL_10;
      }

      v20 = a2;
      v21 = v11 & 7;
      if ((v11 & 7) == 0)
      {
        v21 = 8;
      }

      v12 = v11 - v21;
      v13 = v12 + 1;
      a2 += 12 * v12;
      v22 = vdupq_n_s32(v4);
      v23 = (v5 + 64);
      v24 = v12;
      do
      {
        v25 = v23 - 8;
        *v29.val[1].f32 = vld2q_f32(v25);
        v28 = vld2q_f32(v23);
        v29.val[0] = v22;
        v26 = v20 + 24;
        vst3q_f32(v20, v29);
        v27 = v20 + 12;
        vst3q_f32(v27, *v22.i8);
        v23 += 16;
        v20 = v26;
        v24 -= 8;
      }

      while (v24);
LABEL_10:
      while (1)
      {
        v14 = *(v7 + 8 * v12);
        *a2 = v4;
        *(a2 + 4) = v14;
        if (a3 == v13)
        {
          break;
        }

        v12 = v13;
        a2 += 12;
        if (v6 + 1 == ++v13)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      a3 = v6;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, void *a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_13:
    *v4 = v3;
    v4[1] = v5;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = *(*v3 + 88);
    v8 = 1;
    while (1)
    {
      if (v8 - 1 == v7())
      {
        v5 = v8 - 1;
        goto LABEL_13;
      }

      v9 = (*(*v3 + 96))(v12, v8 - 1);
      result = (v7)(v9);
      if (v8 - 1 >= result)
      {
        break;
      }

      v10 = v12[1];
      *v6 = v12[0];
      v6[1] = v10;
      if (v5 == v8)
      {
        goto LABEL_13;
      }

      v6 += 2;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = *v3;
  if (*(*v3 + 16))
  {
    v7 = *(v6 + 80);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_22:
    a3 = 0;
    goto LABEL_26;
  }

LABEL_21:
  v7 = 0;
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (!a3)
  {
LABEL_26:
    *result = v6;
    result[1] = v7;
    return a3;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

  v28 = result;
  result = 0;
  v8 = v6 - 24;
  v9 = 1;
  v10 = v7;
  while (1)
  {
    v11 = v9;
    v12 = v7 + v9;
    v14 = v12 - 1;
    v13 = v12 == 1;
    v15 = *(v6 + 16);
    if (v15)
    {
      v16 = v8 + 56 * v15;
      v18 = *(v16 + 40);
      v17 = *(v16 + 48);
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_28;
      }

      if (v14 == v20)
      {
        v7 = v10;
        a3 = result;
LABEL_25:
        result = v28;
        goto LABEL_26;
      }
    }

    else if (v13)
    {
      v7 = 0;
      a3 = v11 - 1;
      goto LABEL_25;
    }

    result = SectionAccumulator.RowIDs.subscript.getter(v14, v29);
    v21 = v29[1];
    v22 = *(v6 + 16);
    if (v22)
    {
      break;
    }

    v27 = 0;
    if (v14 >= 0)
    {
      goto LABEL_27;
    }

LABEL_16:
    if (v14 < v27)
    {
      goto LABEL_27;
    }

    ++v10;
    *v5 = v29[0];
    v5[1] = v21;
    if (a3 == v11)
    {
      v7 = v10;
      goto LABEL_25;
    }

    v5 += 2;
    v9 = v11 + 1;
    result = v11;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  v23 = v8 + 56 * v22;
  v25 = *(v23 + 40);
  v24 = *(v23 + 48);
  v19 = __OFADD__(v24, v25);
  v26 = v24 + v25;
  if (v19)
  {
    goto LABEL_29;
  }

  v27 = *(v6 + 80);
  if (v14 < v26)
  {
    goto LABEL_16;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_14;
  }

  v7 = a3;
  if (!a3)
  {
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = v7;
    return v7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v18 = result;
    v9 = *(*a4 + 88);
    v10 = 1;
    while (1)
    {
      if (v10 - 1 == v9())
      {
        v7 = v10 - 1;
LABEL_13:
        result = v18;
        goto LABEL_14;
      }

      v11 = *(*a4 + 96);

      v11(&v21, v10 - 1);
      v12 = *(&v21 + 1);
      v13 = v21;
      v21 = xmmword_18DD85550;
      v22 = v13;
      v24 = &type metadata for EmptyViewListElements;
      v23 = v12;
      v25 = &protocol witness table for EmptyViewListElements;
      v26 = MEMORY[0x1E69E7CC0];
      v27 = MEMORY[0x1E69E7CC0];
      v28 = 0;
      v29 = 1;
      _ViewList_SublistTransform.apply(sublist:)(&v21);

      v14 = v22;
      v15 = v23;

      v16 = outlined destroy of _ViewList_Sublist(&v21);
      result = (v9)(v16);
      if (v10 - 1 >= result)
      {
        break;
      }

      *v8 = v14;
      v8[1] = v15;
      if (v7 == v10)
      {
        goto LABEL_13;
      }

      v8 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, char *__dst, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v8 = *(v3 + 32);
  if (__dst)
  {
    if (a3)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        v9 = v6 >> 1;
        v10 = (v6 >> 1) - v7;
        if (__OFSUB__(v6 >> 1, v7))
        {
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v11 = v8 + v10;
        if (__OFADD__(v8, v10))
        {
LABEL_25:
          __break(1u);
          return result;
        }

        v12 = __dst;
        v22 = a3;
        v23 = v6;
        v25 = v4;
        v26 = result;
        v13 = 0;
        v14 = a3 - 1;
        v24 = v5;
        v15 = v5 + 8;
        while (1)
        {
          if (v10 == v13)
          {
            a3 = v10;
            result = v26;
LABEL_19:
            v5 = v24;
            v4 = v25;
            v6 = v23;
            goto LABEL_20;
          }

          if (v7 > 0 || v13 >= v9)
          {
            break;
          }

          v16 = *(v15 - 8);
          v17 = *(v15 + 8);
          v18 = *(v15 + 40);
          v28[2] = *(v15 + 24);
          v28[3] = v18;
          v28[0] = v16;
          v28[1] = v17;
          v19 = *(v15 + 56);
          v20 = *(v15 + 72);
          v21 = *(v15 + 104);
          v28[6] = *(v15 + 88);
          v28[7] = v21;
          v28[4] = v19;
          v28[5] = v20;
          if ((v8 + v13) >= v11)
          {
            goto LABEL_22;
          }

          memmove(v12, v15, 0x78uLL);
          if (v14 == v13)
          {
            outlined init with copy of AccessibilityCustomAttributes.Value(v28, v27, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
            v11 = v8 + v13 + 1;
            result = v26;
            a3 = v22;
            goto LABEL_19;
          }

          v12 += 120;
          result = outlined init with copy of AccessibilityCustomAttributes.Value(v28, v27, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
          ++v13;
          v15 += 128;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
      }

      __break(1u);
      goto LABEL_24;
    }
  }

  else
  {
LABEL_15:
    a3 = 0;
  }

  v11 = v8;
LABEL_20:
  *result = v4;
  *(result + 8) = v5;
  *(result + 16) = v7;
  *(result + 24) = v6;
  *(result + 32) = v8;
  *(result + 40) = v11;
  return a3;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, unint64_t a3)
{
  v4 = *v3;
  if (!a2)
  {
LABEL_10:
    v6 = 0;
LABEL_12:
    *result = v4;
    result[1] = v6;
    return v6;
  }

  if (!a3)
  {
LABEL_11:
    v6 = a3;
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      while (v6 < v5)
      {
        *(a2 + 16 * v6) = *(v4 + 32 + 16 * v6);
        if (a3 - 1 == v6)
        {
          goto LABEL_11;
        }

        v5 = *(v4 + 16);
        if (++v6 == v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 16);
  v7 = *(v3 + 17);
  if (!a2)
  {
LABEL_15:
    v9 = 0;
LABEL_17:
    *result = v4;
    *(result + 8) = v5;
    *(result + 16) = v6;
    *(result + 17) = v7;
    *(result + 24) = v9;
    return v9;
  }

  if (!a3)
  {
LABEL_16:
    v9 = a3;
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = *(v5 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = (v5 + 40);
      v11 = (v5 + 32);
      while (1)
      {
        if (v6)
        {
          if (v9 >= v8)
          {
            goto LABEL_20;
          }

          v12 = (v5 + 32 + 12 * v9);
          v13 = *v10;
        }

        else
        {
          if (v9 >= v8)
          {
            goto LABEL_19;
          }

          v12 = v11;
          v13 = v9;
        }

        if (v9 >= v8)
        {
          break;
        }

        v14 = *v12;
        *a2 = v4;
        *(a2 + 4) = v14;
        *(a2 + 12) = v13;
        *(a2 + 16) = v7;
        if (a3 - 1 == v9)
        {
          goto LABEL_16;
        }

        ++v9;
        v8 = *(v5 + 16);
        ++v11;
        v10 += 3;
        a2 += 20;
        if (v9 == v8)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(void *a1, char *a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v33 - v14;
  v15 = type metadata accessor for Date();
  v44 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v40 = &v33 - v18;
  if (!a2 || !a3)
  {
LABEL_15:
    outlined init with take of AccessibilityCustomAttributes.Value(v4, a1, type metadata accessor for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries);
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v19 = *(type metadata accessor for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(0) + 24);
    a1 = (v44 + 48);
    v20 = (v44 + 32);
    v37 = a3;
    v38 = (v44 + 8);
    v21 = 1;
    v35 = v19;
    v36 = v12;
    v39 = v4;
    while (1)
    {
      v46 = v21;
      outlined init with copy of AccessibilityCustomAttributes.Value?(v4 + v19, v12, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
      v22 = *a1;
      if ((*a1)(v12, 1, v15) == 1)
      {
        break;
      }

      v45 = a2;
      v23 = v12;
      v24 = *v20;
      v25 = v41;
      (*v20)(v41, v23, v15);
      v26 = MEMORY[0x1E6969530];
      v27 = v4 + v19;
      v28 = v42;
      outlined init with copy of AccessibilityCustomAttributes.Value?(v27, v42, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
      TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries.makeNext(current:)(v25);
      (*v38)(v25, v15);
      v29 = v26;
      v30 = v43;
      _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_1(v28, v43, &lazy cache variable for type metadata for Date?, v29, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
      if (v22(v30, 1, v15) == 1)
      {
        goto LABEL_13;
      }

      v31 = v40;
      v24(v40, v30, v15);
      v32 = v45;
      v24(v45, v31, v15);
      if (v37 == v46)
      {
        goto LABEL_14;
      }

      a2 = &v32[*(v44 + 72)];
      v21 = v46 + 1;
      v19 = v35;
      v12 = v36;
      v4 = v39;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    _sypSgWOhTm_2(v12, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
    v30 = v43;
    (*(v44 + 56))(v43, 1, 1, v15);
LABEL_13:
    _sypSgWOhTm_2(v30, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
LABEL_14:
    a1 = v34;
    v4 = v39;
    goto LABEL_15;
  }

  __break(1u);
}

{
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = type metadata accessor for Date();
  v58 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v57 = &v45 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v56 = &v45 - v23;
  if (!a2 || !a3)
  {
    goto LABEL_18;
  }

  if (a3 < 0)
  {
    __break(1u);
    return;
  }

  v54 = a3;
  v55 = v14;
  v46 = a1;
  a1 = (v58 + 48);
  v47 = (v58 + 8);
  v51 = (v58 + 56);
  v52 = (v58 + 32);
  v24 = 1;
  v25 = &lazy cache variable for type metadata for Date?;
  v53 = v3;
  v50 = (v58 + 48);
  v62 = v19;
  while (1)
  {
    v61 = a2;
    v26 = v11;
    v27 = v55;
    outlined init with copy of AccessibilityCustomAttributes.Value?(v3, v55, v25, MEMORY[0x1E6969530]);
    v28 = v3;
    v29 = *a1;
    if ((*a1)(v27, 1, v15) == 1)
    {
      break;
    }

    v59 = v24;
    v30 = *v52;
    (*v52)(v62, v27, v15);
    v31 = type metadata accessor for EverySecondEntries(0);
    v11 = v26;
    outlined init with copy of AccessibilityCustomAttributes.Value?(v28 + *(v31 + 20), v26, v25, MEMORY[0x1E6969530]);
    v32 = v29(v26, 1, v15);
    v60 = v30;
    if (v32 == 1)
    {
      _sypSgWOhTm_2(v26, v25, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
    }

    else
    {
      v33 = v48;
      v30(v48, v11, v15);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
      v34 = dispatch thunk of static Comparable.>= infix(_:_:)();
      (*v47)(v33, v15);
      if (v34)
      {
        v3 = v53;
        _sypSgWOhTm_2(v53, v25, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
        (*v51)(v3, 1, 1, v15);
        v35 = v62;
        goto LABEL_11;
      }
    }

    v36 = v25;
    v37 = v49;
    v35 = v62;
    Date.addingTimeInterval(_:)();
    (*v51)(v37, 0, 1, v15);
    v38 = v37;
    v25 = v36;
    v3 = v53;
    outlined assign with take of Date?(v38, v53);
LABEL_11:
    v40 = v59;
    v39 = v60;
    v41 = v57;
    v60(v57, v35, v15);
    v42 = v56;
    v39(v56, v41, v15);
    v43 = v61;
    v39(v61, v42, v15);
    if (v54 == v40)
    {
      goto LABEL_17;
    }

    a2 = &v43[*(v58 + 72)];
    v44 = __OFADD__(v40, 1);
    v24 = v40 + 1;
    a1 = v50;
    if (v44)
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  _sypSgWOhTm_2(v27, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
  v3 = v28;
LABEL_17:
  a1 = v46;
LABEL_18:
  outlined init with take of AccessibilityCustomAttributes.Value(v3, a1, type metadata accessor for EverySecondEntries);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = *(a4 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
      v15 = *v14;
      LOBYTE(v14) = *(v14 + 8);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 8) = v14;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 16;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a6;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  if (!a2)
  {
LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_20:
    *a1 = a4;
    a1[1] = a5;
    a1[2] = v8;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (*(a5 + 16))
    {
      v11 = a2;
      v12 = 1;
      while (1)
      {
        v13 = 0;
        v14 = v12;
        v15 = (a5 + 56);
        v16 = 1 << *(a5 + 32);
        v17 = (v16 + 63) >> 6;
        while (1)
        {
          v19 = *v15++;
          v18 = v19;
          if (v19)
          {
            break;
          }

          v13 -= 64;
          if (!--v17)
          {
            goto LABEL_11;
          }
        }

        v16 = __clz(__rbit64(v18)) - v13;
LABEL_11:
        v7 = specialized Set._Variant.remove(at:)(v16, *(a5 + 36));
        v6 = v20;
        if (v20 < 0)
        {
          goto LABEL_24;
        }

        specialized Set._Variant.insert(_:)(v28, v7, v20);
        outlined consume of AttributedString.AnyAttribute(v28[0], v28[1]);
        if (*(v8 + 16))
        {
          v21 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
          if (v22)
          {
            v28[0] = *(*(v8 + 56) + 8 * v21);
            v23 = v28[0];
            swift_bridgeObjectRetain_n();

            specialized Set.formSymmetricDifference(_:)(v24);
            v25 = v28[0];

            v26 = specialized _NativeSet.intersection(_:)(v25, v23);

            specialized Set.formUnion<A>(_:)(v26);
          }
        }

        *v11 = v7;
        v11[1] = v6;
        if (v14 == v10)
        {
          a4 = v29;
          a5 = v30;
          v8 = v31;
          goto LABEL_20;
        }

        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_23;
        }

        a5 = v30;
        v11 += 2;
        if (!*(v30 + 16))
        {
          a4 = v29;
          v8 = v31;
          v10 = v14;
          goto LABEL_20;
        }
      }
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  outlined consume of AttributedString.AnyAttribute(v7, v6);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    v5 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_12:
    v5 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = a5;
    if (a5)
    {
      v6 = 0;
      v7 = a4;
      while (v6 != 0x111111111111112)
      {
        if ((a5 & ~(a5 >> 63)) == v6)
        {
          goto LABEL_15;
        }

        *(a2 + 8 * v6) = *v7;
        if (a3 - 1 == v6)
        {
          goto LABEL_12;
        }

        ++v6;
        v7 += 15;
        if (a5 == v6)
        {
          v5 = a5;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_13:
    *result = a4;
    result[1] = a5;
    result[2] = v5;
    return v5;
  }

LABEL_16:
  __break(1u);
  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for NamedImage.BitmapKey(0);
    outlined destroy of AccessibilityCustomAttributes.Value(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for NamedImage.BitmapKey);
    _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_1(*(v9 + 56) + 96 * v7, a2, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo, _sypSgMaTm_2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_18DDB1A20;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    *(a2 + 73) = 0u;
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
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
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
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for NamedImage.VectorKey(0);
    outlined destroy of AccessibilityCustomAttributes.Value(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for NamedImage.VectorKey);
    outlined init with take of NamedImage.VectorInfo(*(v9 + 56) + 88 * v7, a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v7 = v6;
  if (v6)
  {
    v8 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v13;
    }

    v11 = *(v10 + 48);
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v8, v12);
    outlined init with take of AccessibilityCustomAttributes.Value(*(v10 + 56) + 8 * v8, a2, type metadata accessor for WeakBox<CUICatalog>);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v7 & 1) == 0;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    v10 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v8 = v10;
    }

    outlined init with take of Any((*(v8 + 56) + 32 * v6), a1);
    specialized _NativeDictionary._delete(at:)(v6, v8);
    *v2 = v8;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void *specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12[0] = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v12[0];
    }

    memmove(a2, (*(v9 + 56) + 640 * v7), 0x27CuLL);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    return _ViewInputs.base.modify(a2, v10);
  }

  else
  {
    _s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOi0_(v12);
    return memcpy(a2, v12, 0x27CuLL);
  }
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
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v14;
    }

    v11 = *(v10 + 48) + 40 * v8;
    outlined consume of ResolvedIDs.Key(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32));
    v12 = *(v10 + 56) + 16 * v8;
    v13 = *v12;
    LODWORD(v12) = *(v12 + 8);
    *a2 = v13;
    *(a2 + 8) = v12;
    result = specialized _NativeDictionary._delete(at:)(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(a2 + 12) = (v7 & 1) == 0;
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

    _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_1(*(v10 + 56) + 8 * v8, a2, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>, type metadata accessor for AnyLocationBase, type metadata accessor for WeakBox, type metadata accessor for AccessibilityCustomAttributes.Value?);
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

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(unint64_t a1, uint64_t a2)
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

  v9 = *(*(v8 + 56) + 16 * v6);
  specialized _NativeDictionary._delete(at:)(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for AccessibilityCustomAttributes.Value();
    v19 = *(v12 - 8);
    outlined init with take of AccessibilityCustomAttributes.Value(v11 + *(v19 + 72) * v8, a3, type metadata accessor for AccessibilityCustomAttributes.Value);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for AccessibilityCustomAttributes.Value();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v11 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v11;
    }

    *a3 = *(*(v10 + 56) + 8 * v8);
    result = specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t specialized _NativeDictionary.index(after:)(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return _HashTable.occupiedBucket(after:)();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized static AccessibilityCustomAttributes.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v3 = type metadata accessor for URL();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v7);
  v61 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v59 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v59 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v59 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v59 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v59 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v59 - v26);
  type metadata accessor for (AccessibilityCustomAttributes.Value, AccessibilityCustomAttributes.Value)();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = &v30[*(v31 + 56)];
  outlined init with copy of AccessibilityCustomAttributes.Value(v68, v30, type metadata accessor for AccessibilityCustomAttributes.Value);
  outlined init with copy of AccessibilityCustomAttributes.Value(a2, v32, type metadata accessor for AccessibilityCustomAttributes.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v36 = v62;
        outlined init with copy of AccessibilityCustomAttributes.Value(v30, v62, type metadata accessor for AccessibilityCustomAttributes.Value);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v38 = v64;
          v37 = v65;
          v39 = v59;
          (*(v64 + 32))(v59, v32, v65);
          v40 = static Date.== infix(_:_:)();
LABEL_22:
          LOBYTE(v32) = v40;
          v52 = *(v38 + 8);
          v52(v39, v37);
          v52(v36, v37);
          v45 = type metadata accessor for AccessibilityCustomAttributes.Value;
          goto LABEL_32;
        }

        v55 = v64;
        v54 = v65;
      }

      else
      {
        v36 = v63;
        outlined init with copy of AccessibilityCustomAttributes.Value(v30, v63, type metadata accessor for AccessibilityCustomAttributes.Value);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v38 = v66;
          v37 = v67;
          v39 = v60;
          (*(v66 + 32))(v60, v32, v67);
          v40 = static URL.== infix(_:_:)();
          goto LABEL_22;
        }

        v55 = v66;
        v54 = v67;
      }

      (*(v55 + 8))(v36, v54);
      goto LABEL_31;
    }

    if (EnumCaseMultiPayload == 6)
    {
      outlined init with copy of AccessibilityCustomAttributes.Value(v30, v11, type metadata accessor for AccessibilityCustomAttributes.Value);
      v44 = *v11;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
LABEL_15:
        v42 = v30;
        v43 = *v32;
        type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject);
        LOBYTE(v32) = static NSObject.== infix(_:_:)();

        goto LABEL_16;
      }
    }

    else
    {
      v53 = v61;
      outlined init with copy of AccessibilityCustomAttributes.Value(v30, v61, type metadata accessor for AccessibilityCustomAttributes.Value);
      v44 = *v53;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_31;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of AccessibilityCustomAttributes.Value(v30, v21, type metadata accessor for AccessibilityCustomAttributes.Value);
      v41 = *v21;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
LABEL_12:
        v42 = v30;
        v43 = *v32;
        type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject);
        LOBYTE(v32) = static NSObject.== infix(_:_:)();

LABEL_16:
LABEL_17:
        v30 = v42;
        v45 = type metadata accessor for AccessibilityCustomAttributes.Value;
        goto LABEL_32;
      }
    }

    else
    {
      outlined init with copy of AccessibilityCustomAttributes.Value(v30, v18, type metadata accessor for AccessibilityCustomAttributes.Value);
      v41 = *v18;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_31;
  }

  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of AccessibilityCustomAttributes.Value(v30, v27, type metadata accessor for AccessibilityCustomAttributes.Value);
    v34 = *v27;
    v35 = v27[1];
    if (swift_getEnumCaseMultiPayload())
    {

LABEL_31:
      LOBYTE(v32) = 0;
      v45 = type metadata accessor for (AccessibilityCustomAttributes.Value, AccessibilityCustomAttributes.Value);
      goto LABEL_32;
    }

    if (v34 == *v32 && v35 == v32[1])
    {

      LOBYTE(v32) = 1;
      v45 = type metadata accessor for AccessibilityCustomAttributes.Value;
      goto LABEL_32;
    }

    v42 = v30;
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    LODWORD(v32) = v58 << 31 >> 31;
    goto LABEL_17;
  }

  outlined init with copy of AccessibilityCustomAttributes.Value(v30, v24, type metadata accessor for AccessibilityCustomAttributes.Value);
  v47 = *v24;
  v46 = v24[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined consume of Data._Representation(v47, v46);
    goto LABEL_31;
  }

  v48 = v30;
  v49 = *v32;
  v50 = v32[1];
  LOBYTE(v32) = specialized static Data.== infix(_:_:)(v47, v46, *v32, v50);
  v51 = v49;
  v30 = v48;
  outlined consume of Data._Representation(v51, v50);
  outlined consume of Data._Representation(v47, v46);
  v45 = type metadata accessor for AccessibilityCustomAttributes.Value;
LABEL_32:
  outlined destroy of AccessibilityCustomAttributes.Value(v30, v45);
  return v32 & 1;
}

uint64_t specialized static AccessibilityCustomAttributes.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AccessibilityCustomAttributes.Value();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v52 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v52 - v12;
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, &lazy cache variable for type metadata for (key: String, value: AccessibilityCustomAttributes.Value)?, type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v58 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v57 = (&v52 - v16);
  v17 = *a1;
  v18 = *a2;
  if (*(*a1 + 16) != *(v18 + 16))
  {
    return 0;
  }

  v19 = *(v17 + 64);
  v52 = v17 + 64;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;

  v25 = 0;
  v53 = v5;
  while (v22)
  {
    v26 = v25;
    v27 = v58;
LABEL_15:
    v30 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v31 = v30 | (v26 << 6);
    v32 = (*(v17 + 48) + 16 * v31);
    v34 = *v32;
    v33 = v32[1];
    v35 = v54;
    outlined init with copy of AccessibilityCustomAttributes.Value(*(v17 + 56) + *(v5 + 72) * v31, v54, type metadata accessor for AccessibilityCustomAttributes.Value);
    type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value)();
    v37 = v36;
    v38 = *(v36 + 48);
    *v27 = v34;
    v27[1] = v33;
    outlined init with take of AccessibilityCustomAttributes.Value(v35, v27 + v38, type metadata accessor for AccessibilityCustomAttributes.Value);
    (*(*(v37 - 8) + 56))(v27, 0, 1, v37);

LABEL_16:
    v39 = v27;
    v40 = v57;
    _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_1(v39, v57, &lazy cache variable for type metadata for (key: String, value: AccessibilityCustomAttributes.Value)?, type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value), MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
    type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value)();
    if ((*(*(v37 - 8) + 48))(v40, 1, v37) == 1)
    {

      return 1;
    }

    v42 = *v40;
    v41 = v40[1];
    outlined init with take of AccessibilityCustomAttributes.Value(v40 + *(v37 + 48), v59, type metadata accessor for AccessibilityCustomAttributes.Value);
    if (!*(v18 + 16))
    {

LABEL_24:

      outlined destroy of AccessibilityCustomAttributes.Value(v59, type metadata accessor for AccessibilityCustomAttributes.Value);
      return 0;
    }

    v43 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v41);
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      goto LABEL_24;
    }

    v5 = v53;
    v46 = v56;
    outlined init with copy of AccessibilityCustomAttributes.Value(*(v18 + 56) + *(v53 + 72) * v43, v56, type metadata accessor for AccessibilityCustomAttributes.Value);
    v47 = v17;
    v48 = v55;
    outlined init with take of AccessibilityCustomAttributes.Value(v46, v55, type metadata accessor for AccessibilityCustomAttributes.Value);
    v49 = v59;
    LOBYTE(v46) = specialized static AccessibilityCustomAttributes.Value.== infix(_:_:)(v59, v48);
    v50 = v48;
    v17 = v47;
    outlined destroy of AccessibilityCustomAttributes.Value(v50, type metadata accessor for AccessibilityCustomAttributes.Value);
    result = outlined destroy of AccessibilityCustomAttributes.Value(v49, type metadata accessor for AccessibilityCustomAttributes.Value);
    if ((v46 & 1) == 0)
    {

      return 0;
    }
  }

  if (v23 <= v25 + 1)
  {
    v28 = v25 + 1;
  }

  else
  {
    v28 = v23;
  }

  v29 = v28 - 1;
  v27 = v58;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value)();
      v37 = v51;
      (*(*(v51 - 8) + 56))(v27, 1, 1, v51);
      v22 = 0;
      v25 = v29;
      goto LABEL_16;
    }

    v22 = *(v52 + 8 * v26);
    ++v25;
    if (v22)
    {
      v25 = v26;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized Data.InlineData.init(count:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

void type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value)()
{
  if (!lazy cache variable for type metadata for (key: String, value: AccessibilityCustomAttributes.Value))
  {
    type metadata accessor for AccessibilityCustomAttributes.Value();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: String, value: AccessibilityCustomAttributes.Value));
    }
  }
}

uint64_t outlined assign with take of AccessibilityCustomAttributes.Value(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityCustomAttributes.Value();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomAttributes.Value.CodingKeys and conformance AccessibilityCustomAttributes.Value.CodingKeys);
  }

  return result;
}