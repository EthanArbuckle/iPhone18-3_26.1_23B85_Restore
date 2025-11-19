uint64_t storeEnumTagSinglePayload for AnyIdentifiableShareConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

void destroy for AnyShareConfiguration(uint64_t a1)
{
  outlined consume of AnyShareConfiguration.Storage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  if (*(a1 + 64))
  {
    outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  if (*(a1 + 96))
  {
    outlined consume of Text.Storage(*(a1 + 72), *(a1 + 80), *(a1 + 88));
  }
}

uint64_t initializeWithCopy for AnyShareConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of AnyShareConfiguration.Storage(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(a2 + 64);
  if (!v9)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    v13 = *(a2 + 96);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    return a1;
  }

  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  outlined copy of Text.Storage(v10, v11, v12);
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v9;

  v13 = *(a2 + 96);
  if (!v13)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = *(a2 + 72);
  v15 = *(a2 + 80);
  v16 = *(a2 + 88);
  outlined copy of Text.Storage(v14, v15, v16);
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 88) = v16;
  *(a1 + 96) = v13;

  return a1;
}

uint64_t assignWithCopy for AnyShareConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of AnyShareConfiguration.Storage(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of AnyShareConfiguration.Storage(v9, v10, v11, v12, v13);
  v14 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v14)
    {
      v15 = *(a2 + 40);
      v16 = *(a2 + 48);
      v17 = *(a2 + 56);
      outlined copy of Text.Storage(v15, v16, v17);
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v20 = *(a1 + 56);
      *(a1 + 40) = v15;
      *(a1 + 48) = v16;
      *(a1 + 56) = v17;
      outlined consume of Text.Storage(v18, v19, v20);
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of Text(a1 + 40);
      v24 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v24;
    }
  }

  else if (v14)
  {
    v21 = *(a2 + 40);
    v22 = *(a2 + 48);
    v23 = *(a2 + 56);
    outlined copy of Text.Storage(v21, v22, v23);
    *(a1 + 40) = v21;
    *(a1 + 48) = v22;
    *(a1 + 56) = v23;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v25 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v25;
  }

  v26 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v26)
    {
      v27 = *(a2 + 72);
      v28 = *(a2 + 80);
      v29 = *(a2 + 88);
      outlined copy of Text.Storage(v27, v28, v29);
      v30 = *(a1 + 72);
      v31 = *(a1 + 80);
      v32 = *(a1 + 88);
      *(a1 + 72) = v27;
      *(a1 + 80) = v28;
      *(a1 + 88) = v29;
      outlined consume of Text.Storage(v30, v31, v32);
      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      outlined destroy of Text(a1 + 72);
      v36 = *(a2 + 88);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = v36;
    }
  }

  else if (v26)
  {
    v33 = *(a2 + 72);
    v34 = *(a2 + 80);
    v35 = *(a2 + 88);
    outlined copy of Text.Storage(v33, v34, v35);
    *(a1 + 72) = v33;
    *(a1 + 80) = v34;
    *(a1 + 88) = v35;
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v37 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v37;
  }

  return a1;
}

uint64_t assignWithTake for AnyShareConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of AnyShareConfiguration.Storage(v5, v6, v7, v8, v10);
  if (*(a1 + 64))
  {
    v11 = *(a2 + 64);
    if (v11)
    {
      v12 = *(a2 + 56);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v12;
      outlined consume of Text.Storage(v13, v14, v15);
      *(a1 + 64) = v11;

      if (!*(a1 + 96))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    outlined destroy of Text(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  if (!*(a1 + 96))
  {
LABEL_10:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    return a1;
  }

LABEL_7:
  v16 = *(a2 + 96);
  if (!v16)
  {
    outlined destroy of Text(a1 + 72);
    goto LABEL_10;
  }

  v17 = *(a2 + 88);
  v18 = *(a1 + 72);
  v19 = *(a1 + 80);
  v20 = *(a1 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v17;
  outlined consume of Text.Storage(v18, v19, v20);
  *(a1 + 96) = v16;

  return a1;
}

uint64_t AnyShareConfiguration.init<A, B, C>(item:subject:message:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *(a12 - 8);
  v19 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a12;
  *(v20 + 3) = a13;
  *(v20 + 4) = a14;
  *(v20 + 5) = a15;
  *(v20 + 6) = a16;
  *(v20 + 7) = a17;
  (*(v18 + 32))(&v20[v19], a1, a12);
  v21 = type metadata accessor for SharePreview();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 64) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = a12;
  *(v24 + 3) = a13;
  *(v24 + 4) = a14;
  *(v24 + 5) = a15;
  *(v24 + 6) = a16;
  *(v24 + 7) = a17;
  result = (*(v22 + 32))(&v24[v23], a11, v21);
  *a9 = partial apply for closure #1 in AnyShareConfiguration.init<A, B, C>(item:subject:message:preview:);
  *(a9 + 8) = v20;
  *(a9 + 16) = partial apply for closure #2 in AnyShareConfiguration.init<A, B, C>(item:subject:message:preview:);
  *(a9 + 24) = v24;
  *(a9 + 32) = 1;
  *(a9 + 33) = a13;
  *(a9 + 36) = a13 >> 24;
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  return result;
}

double protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance AnyShareConfiguration.Key(__int128 *a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v15);
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v3 = *v19;
  v26 = *&v19[8];
  v27 = *&v19[24];
  if (*v19 == 1)
  {
    v4 = a1[1];
    v22 = *a1;
    v23 = v4;
    v5 = a1[3];
    v24 = a1[2];
    v25 = v5;
    v3 = *(a1 + 8);
    v6 = *(a1 + 72);
    v7 = *(a1 + 88);
  }

  else
  {
    v8 = a1[5];
    *v19 = a1[4];
    *&v19[16] = v8;
    *&v19[32] = *(a1 + 12);
    v9 = a1[1];
    v15 = *a1;
    v16 = v9;
    v10 = a1[3];
    v17 = a1[2];
    v18 = v10;
    outlined destroy of AnyShareConfiguration?(&v15, &lazy cache variable for type metadata for AnyShareConfiguration?, &type metadata for AnyShareConfiguration);
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v6 = v26;
    v7 = v27;
  }

  v20 = v6;
  v21 = v7;
  v11 = v23;
  *a1 = v22;
  a1[1] = v11;
  v12 = v25;
  a1[2] = v24;
  a1[3] = v12;
  *(a1 + 8) = v3;
  result = *&v20;
  v14 = v21;
  *(a1 + 72) = v20;
  *(a1 + 88) = v14;
  return result;
}

uint64_t AnySharePreview.init<A, B>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a4;
  v40 = a2;
  v41 = a3;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v31 = a5;
  v29 = type metadata accessor for SharePreview();
  v9 = *(v29 - 8);
  v30 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v28 - v10;
  *(a6 + 64) = 0u;
  v38 = a6 + 64;
  *(a6 + 80) = 0u;
  v12 = a1[4];
  v36 = a1[5];
  v13 = v36;
  v37 = v12;
  v14 = a1[6];
  v34 = a1[7];
  v15 = v34;
  v35 = v14;
  *a6 = v12;
  *(a6 + 8) = v13;
  *(a6 + 16) = v14;
  *(a6 + 24) = v15;
  v32 = *(v9 + 16);
  v32(v11, a1);
  v16 = *(v9 + 80);
  v33 = v9;
  v17 = (v16 + 48) & ~v16;
  v18 = swift_allocObject();
  v19 = v41;
  *(v18 + 2) = v40;
  *(v18 + 3) = v19;
  *(v18 + 4) = v39;
  *(v18 + 5) = a5;
  v20 = *(v9 + 32);
  v21 = v29;
  v20(&v18[v17], v11, v29);
  *(a6 + 48) = partial apply for closure #1 in AnySharePreview.init<A, B>(_:);
  *(a6 + 56) = v18;
  (v32)(v11, a1, v21);
  v22 = swift_allocObject();
  v23 = v41;
  *(v22 + 2) = v40;
  *(v22 + 3) = v23;
  v24 = v31;
  *(v22 + 4) = v39;
  *(v22 + 5) = v24;
  v25 = v21;
  v20(&v22[v17], v11, v21);
  *(a6 + 32) = partial apply for closure #2 in AnySharePreview.init<A, B>(_:);
  *(a6 + 40) = v22;
  outlined copy of Text?(v37, v36, v35, v34);
  v26 = v38;
  outlined destroy of AnyShareConfiguration?(v38, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  outlined init with copy of Any?(a1, v26);
  return (*(v33 + 8))(a1, v25);
}

uint64_t closure #1 in AnySharePreview.init<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  type metadata accessor for SharePreview();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  type metadata accessor for Optional();
  v9 = type metadata accessor for NSItemProvider();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in closure #1 in AnySharePreview.init<A, B>(_:), v12, MEMORY[0x1E69E73E0], v9, v10, v13);
  return v13[0];
}

uint64_t closure #1 in closure #1 in AnySharePreview.init<A, B>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v15 = a4;
  v16 = a6;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for NSItemProvider();
  (*(v10 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v12 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = v15;
  *(v13 + 5) = a5;
  (*(v10 + 32))(&v13[v12], &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  result = NSItemProvider.init<A>(transferable:)();
  *v16 = result;
  return result;
}

uint64_t closure #2 in AnySharePreview.init<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  type metadata accessor for SharePreview();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  type metadata accessor for Optional();
  v9 = type metadata accessor for NSItemProvider();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in closure #2 in AnySharePreview.init<A, B>(_:), v12, MEMORY[0x1E69E73E0], v9, v10, v13);
  return v13[0];
}

uint64_t partial apply for closure #1 in AnySharePreview.init<A, B>(_:)(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for SharePreview() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t closure #1 in closure #2 in AnySharePreview.init<A, B>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v16 = a5;
  v17 = a6;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for NSItemProvider();
  (*(v10 + 16))(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v12 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  v14 = v16;
  *(v13 + 4) = a4;
  *(v13 + 5) = v14;
  (*(v10 + 32))(&v13[v12], &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  result = NSItemProvider.init<A>(transferable:)();
  *v17 = result;
  return result;
}

uint64_t (*makeItemProviders #1 <A, B, C, D>(from:) in AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))()
{
  v24 = a7;
  v25 = a8;
  v23 = a6;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v16);
  v18 = (*(v14 + 80) + 88) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  v20 = v24;
  *(v19 + 6) = v23;
  *(v19 + 7) = v20;
  *(v19 + 8) = v25;
  *(v19 + 9) = a9;
  *(v19 + 10) = a10;
  (*(v14 + 32))(&v19[v18], v17, a2);
  return partial apply for closure #1 in makeItemProviders #1 <A, B, C, D>(from:) in AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:);
}

uint64_t closure #1 in makeItemProviders #1 <A, B, C, D>(from:) in AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v38 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v32 - v12;
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_getAssociatedTypeWitness();
  v33 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v32 - v23;
  v25 = MEMORY[0x1E69E7CC0];
  v39 = MEMORY[0x1E69E7CC0];
  (*(v17 + 16))(v20, v38, a2, v22);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = v24;
  v38 = v21;
  v27 = v32;
  v36 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v35 = *(v27 + 48);
  if (v35(v16, 1, AssociatedTypeWitness) != 1)
  {
    v34 = a10;
    v29 = *(v27 + 32);
    v30 = (v27 + 8);
    do
    {
      v29(v13, v16, AssociatedTypeWitness);
      v31 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
      MEMORY[0x18D00CC30]();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v25 = v39;
      NSItemProvider.register<A>(shareItem:)(v13, AssociatedTypeWitness, v34);

      (*v30)(v13, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v35(v16, 1, AssociatedTypeWitness) != 1);
  }

  (*(v33 + 8))(v37, v38);
  return v25;
}

void NSItemProvider.register<A>(shareItem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v5 = type metadata accessor for TransferRepresentationVisibility();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v61 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  v21 = *(a2 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v21 + 16);
  v63 = a1;
  v55 = v26;
  v56 = v21 + 16;
  (v26)(v25, a1, a2, v24);
  v27 = *(v21 + 80);
  v28 = (v27 + 32) & ~v27;
  v52 = v28 + v22;
  v54 = v27 | 7;
  v29 = swift_allocObject();
  v30 = v70;
  *(v29 + 16) = a2;
  *(v29 + 24) = v30;
  v31 = *(v21 + 32);
  v57 = v28;
  v58 = v25;
  v60 = v21 + 32;
  v53 = v31;
  v31(v29 + v28, v25, a2);
  v67 = a2;
  v32 = v69;
  NSItemProvider.register<A>(_:)();

  v33 = [v32 registeredContentTypes];
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = 0;
  v36 = *(v34 + 16);
  v71 = v8 + 16;
  while (1)
  {
    if (v36 == v35)
    {

      v39 = v64;
      v40 = v67;
      default argument 0 of static Transferable.exportedFileContentTypes(visibility:)(v67, v70);
      v41 = static Transferable.exportedFileContentTypes(visibility:)();
      (*(v65 + 8))(v39, v66);
      if (*(v41 + 16))
      {
        v42 = *(v8 + 80);
        v65 = *(v8 + 16);
        v43 = v59;
        (v65)(v59, v41 + ((v42 + 32) & ~v42), v7);

        v66 = *(v8 + 32);
        v44 = v68;
        v66(v68, v43, v7);
        static UTType.fileURL.getter();
        v45 = v58;
        v55(v58, v63, v40);
        v46 = v62;
        (v65)(v62, v44, v7);
        v47 = (v52 + v42) & ~v42;
        v48 = swift_allocObject();
        v49 = v70;
        *(v48 + 16) = v40;
        *(v48 + 24) = v49;
        v53(v48 + v57, v45, v40);
        v66((v48 + v47), v46, v7);
        NSItemProvider.registerDataRepresentation(for:visibility:loadHandler:)();

        v50 = *(v8 + 8);
        v50(v16, v7);
        v50(v68, v7);
        return;
      }

LABEL_8:

      return;
    }

    if (v35 >= *(v34 + 16))
    {
      break;
    }

    (*(v8 + 16))(v20, v34 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v35++, v7);
    static UTType.fileURL.getter();
    v37 = static UTType.== infix(_:_:)();
    v38 = *(v8 + 8);
    v38(v16, v7);
    v38(v20, v7);
    if (v37)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t closure #1 in AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a4;
  v26 = a5;
  v27 = a3;
  v28 = a2;
  v29 = a6;
  v30[0] = a4;
  v24 = a9;
  v22 = a1;
  v23 = a8;
  v30[1] = a5;
  v30[2] = a8;
  v30[3] = a9;
  v9 = type metadata accessor for SharePreview();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v22 - v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v22 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v22 - v18;
  Collection.index(atOffset:)();
  v20 = dispatch thunk of Collection.subscript.read();
  (*(v17 + 16))(v19);
  v20(v30, 0);
  (*(v13 + 8))(v15, AssociatedTypeWitness);
  v28(v19);
  AnySharePreview.init<A, B>(_:)(v11, v25, v26, v23, v24, v29);
  return (*(v17 + 8))(v19, v16);
}

double closure #1 in AnyShareConfiguration.init<A, B, C>(item:subject:message:preview:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  NSItemProvider.register<A>(shareItem:)(a1, a2, a5);
  type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *&result = 1;
  *(v9 + 16) = xmmword_18CD69590;
  *(v9 + 32) = v8;
  return result;
}

uint64_t closure #2 in AnyShareConfiguration.init<A, B, C>(item:subject:message:preview:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v12 = type metadata accessor for SharePreview();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (v18 - v14);
  (*(v16 + 16))(v18 - v14, a1, v13);
  return AnySharePreview.init<A, B>(_:)(v15, a2, a3, a4, a5, a6);
}

uint64_t closure #2 in NSItemProvider.register<A>(shareItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a4;
  v30 = a6;
  v31 = a1;
  v32 = a2;
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v14 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v14, a3, a5);
  v19 = v8;
  (*(v9 + 16))(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v8);
  v20 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v21 = (v12 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v30;
  *(v22 + 4) = a5;
  *(v22 + 5) = v23;
  (*(v11 + 32))(&v22[v20], v14, a5);
  (*(v9 + 32))(&v22[v21], v28, v19);
  v24 = &v22[(v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  v25 = v32;
  *v24 = v31;
  *(v24 + 1) = v25;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:), v22);

  return 0;
}

uint64_t closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:), 0, 0);
}

uint64_t closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:)()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  v2 = *(v0 + 56);
  *(v1 + 16) = *(v0 + 72);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 48);

  return MEMORY[0x1EEDBF588](v6, partial apply for closure #1 in closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:), v1, v4, v5);
}

{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v1 = v0[13];
  v2 = v0[7];

  _StringGuts.grow(_:)(21);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x18D00C9B0](0x742064656C696146, 0xEF2064616F6C206FLL);
  v3 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v3);

  MEMORY[0x18D00C9B0](8250, 0xE200000000000000);
  v0[4] = v1;
  type metadata accessor for Error();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D009810](v0[2], v0[3]);

  v4 = v1;
  v2(0, 0xF000000000000000, v1);

  v5 = v0[1];

  return v5();
}

void closure #1 in closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (aBlock - v12);
  URL._bridgeToObjectiveC()(v12);
  v15 = v14;
  static UTType.fileURL.getter();
  v16 = UTType.identifier.getter();
  v18 = v17;
  (*(v10 + 8))(v13, v9);
  v19 = MEMORY[0x18D00C850](v16, v18);

  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a2;
  v20[5] = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_27;
  v21 = _Block_copy(aBlock);

  v22 = [v15 loadDataWithTypeIdentifier:v19 forItemProviderCompletionHandler:v21];
  _Block_release(v21);
}

uint64_t static NSItemProvider.Handler.handle<A>(_:data:error:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t))
{
  if (a4)
  {
    type metadata accessor for Error();
    _print_unlocked<A, B>(_:_:)();
    v10 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v9 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
  }

  if (a3 >> 60 == 15)
  {
    _StringGuts.grow(_:)(30);

    v11 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v11);

    MEMORY[0x18D00C9B0](8250, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v10, v9);

    MEMORY[0x18D009810](0xD000000000000018, 0x800000018CD48BC0);

    return a5(a2, a3, a4);
  }

  v13 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_14;
    }

    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
LABEL_13:
    outlined copy of Data?(a2, a3);
    if (v14 != v15)
    {
      goto LABEL_15;
    }

LABEL_14:
    _StringGuts.grow(_:)(42);

    v16 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v16);

    MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD48C00);
    MEMORY[0x18D00C9B0](v10, v9);

    MEMORY[0x18D009810](0xD000000000000014, 0x800000018CD48BE0);
    goto LABEL_15;
  }

  if (v13)
  {
    v14 = a2;
    v15 = a2 >> 32;
    goto LABEL_13;
  }

  if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:

  outlined copy of Data._Representation(a2, a3);
  a5(a2, a3, a4);
  outlined consume of Data?(a2, a3);
  return outlined consume of Data?(a2, a3);
}

uint64_t specialized AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v57) = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v71 = v13;
  v72 = v14;
  v61 = v14;
  v62 = v15;
  v66 = v16;
  v67 = v17;
  v73 = v16;
  v74 = v18;
  v68 = v18;
  v75 = v15;
  v76 = v19;
  v63 = v19;
  v77 = v17;
  v78 = v20;
  v59 = v20;
  v60 = v21;
  v79 = v21;
  v22 = type metadata accessor for ShareLink();
  v23 = *(v7 + 16);
  v23(v12, a1 + *(v22 + 92), a3);
  v64 = v22;
  v65 = a1;
  v24 = (a1 + *(v22 + 104));
  v26 = *v24;
  v25 = v24[1];
  v69 = v26;
  v70 = v25;
  if (v26)
  {
    v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23(v9, v12, a3);
    v58 = v7;
    v27 = (*(v7 + 80) + 88) & ~*(v7 + 80);
    v57 = (v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    v30 = v61;
    v29 = v62;
    *(v28 + 2) = a3;
    *(v28 + 3) = v30;
    v31 = v67;
    v32 = v68;
    *(v28 + 4) = v66;
    *(v28 + 5) = v32;
    v33 = v63;
    *(v28 + 6) = v29;
    *(v28 + 7) = v33;
    v35 = v59;
    v34 = v60;
    *(v28 + 8) = v31;
    *(v28 + 9) = v35;
    *(v28 + 10) = v34;
    (*(v58 + 32))(&v28[v27], v56, a3);
    v36 = &v28[v57];
    v37 = v70;
    *v36 = v69;
    *(v36 + 1) = v37;
    v38 = makeItemProviders #1 <A, B, C, D>(from:) in AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:)(v12, a3, v30, v66, v68, v29, v33, v67, v35, v34);
    v67 = v39;
    v68 = v38;
    LODWORD(v63) = 1;
    v66 = partial apply for closure #1 in AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:);
    v40 = v58;
  }

  else
  {
    if (v57)
    {
      (v23)(v9, v12, a3, v66, v68);
      swift_getAssociatedTypeWitness();
      Array.init<A>(_:)();
      v68 = _arrayForceCast<A, B>(_:)();

      v66 = 0;
      v67 = 0;
      v28 = 0;
      LODWORD(v63) = 0;
    }

    else
    {
      v41 = makeItemProviders #1 <A, B, C, D>(from:) in AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:)(v12, a3, v61, v66, v68, v62, v63, v67, v59, v60);
      v67 = v42;
      v68 = v41;
      v66 = 0;
      v28 = 0;
      LODWORD(v63) = 1;
    }

    v40 = v7;
  }

  outlined copy of AppIntentExecutor?(v69);
  (*(v40 + 8))(v12, a3);
  v43 = (v65 + *(v64 + 96));
  v44 = *v43;
  v45 = v43[1];
  v46 = v43[2];
  v47 = v43[3];
  v48 = (v65 + *(v64 + 100));
  v50 = *v48;
  v49 = v48[1];
  v51 = v48[2];
  v52 = v48[3];
  outlined copy of Text?(v44, v45, v46, v47);
  result = outlined copy of Text?(v50, v49, v51, v52);
  v54 = v67;
  *a4 = v68;
  *(a4 + 8) = v54;
  *(a4 + 16) = v66;
  *(a4 + 24) = v28;
  *(a4 + 32) = v63;
  *(a4 + 40) = v44;
  *(a4 + 48) = v45;
  *(a4 + 56) = v46;
  *(a4 + 64) = v47;
  *(a4 + 72) = v50;
  *(a4 + 80) = v49;
  *(a4 + 88) = v51;
  *(a4 + 96) = v52;
  return result;
}

uint64_t partial apply for closure #2 in NSItemProvider.register<A>(shareItem:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(v5 - 8) + 64);
  v8 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v9 = *(type metadata accessor for UTType() - 8);
  v10 = v2 + ((v8 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return closure #2 in NSItemProvider.register<A>(shareItem:)(a1, a2, v2 + v8, v10, v5, v6);
}

uint64_t partial apply for closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = *(*(v4 - 8) + 64);
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = *(type metadata accessor for UTType() - 8);
  v8 = (v6 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #2 in NSItemProvider.register<A>(shareItem:)(a1, v9, v10, v1 + v6, v1 + v8, v12, v13, v4);
}

double specialized AnyIdentifiableShareConfiguration.init<A, B, C, D>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *&v19 = a2;
  *(&v19 + 1) = a3;
  *&v20 = a4;
  *(&v20 + 1) = a5;
  *&v21 = a6;
  *(&v21 + 1) = a7;
  *&v22 = a8;
  *(&v22 + 1) = a10;
  *&v23 = a11;
  type metadata accessor for ShareLink();
  v18 = ShareLink.namespace.getter();
  specialized AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:)(a1, 1, a2, &v19);
  v14 = v21;
  *(a9 + 56) = v22;
  v15 = v24;
  *(a9 + 72) = v23;
  *(a9 + 88) = v15;
  result = *&v19;
  v17 = v20;
  *(a9 + 8) = v19;
  *(a9 + 24) = v17;
  *a9 = v18;
  *(a9 + 104) = v25;
  *(a9 + 40) = v14;
  return result;
}

uint64_t partial apply for closure #2 in AnyShareConfiguration.init<A, B, C>(item:subject:message:preview:)@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v1 + 24);
  v7 = *(v1 + 48);
  v3 = *(type metadata accessor for SharePreview() - 8);
  v4 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  return closure #2 in AnyShareConfiguration.init<A, B, C>(item:subject:message:preview:)(v4, v6, *(&v6 + 1), v7, *(&v7 + 1), a1);
}

uint64_t destroy for AnySharePreview(uint64_t a1)
{
  if (*(a1 + 24))
  {
    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  if (*(a1 + 88))
  {

    return __swift_destroy_boxed_opaque_existential_1(a1 + 64);
  }

  return result;
}

uint64_t initializeWithCopy for AnySharePreview(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v6, v7);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v4;
  }

  else
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
  }

  *(a1 + 32) = *(a2 + 32);
  v9 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v9;
  v10 = *(a2 + 88);

  if (v10)
  {
    *(a1 + 88) = v10;
    (**(v10 - 8))(a1 + 64, a2 + 64, v10);
  }

  else
  {
    v11 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v11;
  }

  return a1;
}

uint64_t assignWithCopy for AnySharePreview(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      v7 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v6, v7);
      v8 = *a1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Text(a1);
      v14 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v14;
    }
  }

  else if (v4)
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v12, v13);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
  }

  v16 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v16;

  v17 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v17;

  v18 = *(a2 + 88);
  if (!*(a1 + 88))
  {
    if (v18)
    {
      *(a1 + 88) = v18;
      (**(v18 - 8))(a1 + 64, a2 + 64);
      return a1;
    }

LABEL_14:
    v20 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v20;
    return a1;
  }

  v19 = (a1 + 64);
  if (!v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
    goto LABEL_14;
  }

  __swift_assign_boxed_opaque_existential_0(v19, (a2 + 64));
  return a1;
}

uint64_t assignWithTake for AnySharePreview(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = *a1;
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);
      *a1 = *a2;
      *(a1 + 16) = v5;
      outlined consume of Text.Storage(v6, v7, v8);
      *(a1 + 24) = v4;

      goto LABEL_6;
    }

    outlined destroy of Text(a1);
  }

  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
LABEL_6:
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  if (*(a1 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 64);
  }

  v10 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v10;
  return a1;
}

uint64_t getEnumTagSinglePayload for AnySharePreview(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for AnySharePreview(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t initializeWithCopy for AnyShareConfiguration.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of AnyShareConfiguration.Storage(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for AnyShareConfiguration.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of AnyShareConfiguration.Storage(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  outlined consume of AnyShareConfiguration.Storage(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for AnyShareConfiguration.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  outlined consume of AnyShareConfiguration.Storage(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t lazy protocol witness table accessor for type RemoteDeviceIdentifier and conformance RemoteDeviceIdentifier(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t initializeBufferWithCopyOfBuffer for RemoteDeviceIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for RemoteDeviceIdentifier(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for RemoteDeviceIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for RemoteDeviceIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for RemoteDeviceIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for RemoteDeviceIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t type metadata completion function for RemoteDeviceIdentifier()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<InternalControlGroupStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<InternalControlGroupStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<InternalControlGroupStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<InternalControlGroupStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<InternalControlGroupStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<InternalControlGroupStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<InternalControlGroupStyle>>)
  {
    type metadata accessor for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, type metadata accessor for StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>);
    type metadata accessor for ControlGroupStyleModifier<MenuControlGroupStyle>(255, &lazy cache variable for type metadata for ControlGroupStyleModifier<InternalControlGroupStyle>, lazy protocol witness table accessor for type InternalControlGroupStyle and conformance InternalControlGroupStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<InternalControlGroupStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>();
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, type metadata accessor for ControlGroup<ControlGroupStyleConfiguration.Content>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ControlGroup<ControlGroupStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for ControlGroup<ControlGroupStyleConfiguration.Content>)
  {
    v0 = type metadata accessor for ControlGroup();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ControlGroup<ControlGroupStyleConfiguration.Content>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>);
    type metadata accessor for ControlGroupStyleModifier<MenuControlGroupStyle>(255, &lazy cache variable for type metadata for ControlGroupStyleModifier<MenuControlGroupStyle>, lazy protocol witness table accessor for type MenuControlGroupStyle and conformance MenuControlGroupStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MenuControlGroupStyle and conformance MenuControlGroupStyle()
{
  result = lazy protocol witness table cache variable for type MenuControlGroupStyle and conformance MenuControlGroupStyle;
  if (!lazy protocol witness table cache variable for type MenuControlGroupStyle and conformance MenuControlGroupStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MenuControlGroupStyle and conformance MenuControlGroupStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListControlGroupStyle and conformance ListControlGroupStyle()
{
  result = lazy protocol witness table cache variable for type ListControlGroupStyle and conformance ListControlGroupStyle;
  if (!lazy protocol witness table cache variable for type ListControlGroupStyle and conformance ListControlGroupStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListControlGroupStyle and conformance ListControlGroupStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, a3);
    type metadata accessor for ControlGroupStyleModifier<MenuControlGroupStyle>(255, &lazy cache variable for type metadata for ControlGroupStyleModifier<ListControlGroupStyle>, lazy protocol witness table accessor for type ListControlGroupStyle and conformance ListControlGroupStyle);
    v4 = type metadata accessor for StaticIf();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>)
  {
    type metadata accessor for ControlGroupStyleModifier<MenuControlGroupStyle>(255, &lazy cache variable for type metadata for ControlGroupStyleModifier<ToolbarControlGroupStyle>, lazy protocol witness table accessor for type ToolbarControlGroupStyle and conformance ToolbarControlGroupStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarControlGroupStyle and conformance ToolbarControlGroupStyle()
{
  result = lazy protocol witness table cache variable for type ToolbarControlGroupStyle and conformance ToolbarControlGroupStyle;
  if (!lazy protocol witness table cache variable for type ToolbarControlGroupStyle and conformance ToolbarControlGroupStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarControlGroupStyle and conformance ToolbarControlGroupStyle);
  }

  return result;
}

void type metadata accessor for ControlGroupStyleModifier<MenuControlGroupStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ControlGroupStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type InternalControlGroupStyle and conformance InternalControlGroupStyle()
{
  result = lazy protocol witness table cache variable for type InternalControlGroupStyle and conformance InternalControlGroupStyle;
  if (!lazy protocol witness table cache variable for type InternalControlGroupStyle and conformance InternalControlGroupStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InternalControlGroupStyle and conformance InternalControlGroupStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, type metadata accessor for StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    lazy protocol witness table accessor for type StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, type metadata accessor for ControlGroup<ControlGroupStyleConfiguration.Content>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>);
    lazy protocol witness table accessor for type ControlGroup<ControlGroupStyleConfiguration.Content> and conformance ControlGroup<A>();
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ControlGroup<ControlGroupStyleConfiguration.Content> and conformance ControlGroup<A>()
{
  result = lazy protocol witness table cache variable for type ControlGroup<ControlGroupStyleConfiguration.Content> and conformance ControlGroup<A>;
  if (!lazy protocol witness table cache variable for type ControlGroup<ControlGroupStyleConfiguration.Content> and conformance ControlGroup<A>)
  {
    type metadata accessor for ControlGroup<ControlGroupStyleConfiguration.Content>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ControlGroup<ControlGroupStyleConfiguration.Content> and conformance ControlGroup<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ControlGroupStyleModifier<ListControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type UseToolbarStyle and conformance UseToolbarStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<UseToolbarStyle, ControlGroupStyleModifier<ToolbarControlGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UseToolbarStyle and conformance UseToolbarStyle()
{
  result = lazy protocol witness table cache variable for type UseToolbarStyle and conformance UseToolbarStyle;
  if (!lazy protocol witness table cache variable for type UseToolbarStyle and conformance UseToolbarStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseToolbarStyle and conformance UseToolbarStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance UseToolbarStyle()
{
  static Semantics.v4.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    v0 = static StyleContextAcceptsPredicate.evaluate(inputs:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t EnvironmentValues.searchTextClearAction.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchTextClearAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchTextClearAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t View.onSearchTextClear(_:)()
{
  swift_getKeyPath();

  View.environment<A>(_:_:)();
}

double key path getter for EnvironmentValues.searchTextClearAction : EnvironmentValues@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchTextClearAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchTextClearAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.searchTextClearAction : EnvironmentValues(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>();

  outlined copy of AppIntentExecutor?(v3);
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchTextClearAction?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>);
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<SearchTextClearAction?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SearchTextClearAction?>)
  {
    type metadata accessor for SearchTextClearAction?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SearchTextClearAction?>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchTextClearAction?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized OrderedDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 16);
  if (!a3)
  {
    if (v9)
    {
      v11 = 0;
      for (i = (a4 + 40); ; i += 2)
      {
        result = *(i - 1);
        if (result == a1 && *i == a2)
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }

        if (v9 == ++v11)
        {
          return 0;
        }
      }

      goto LABEL_4;
    }

    return 0;
  }

  v11 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, a2, a4 + 32, v9, (a3 + 16));
  v13 = v12;

  if (v13)
  {
    return 0;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_4:
  if (v11 < *(a5 + 16))
  {
    v15 = *(a5 + 8 * v11 + 32);
    v16 = v15;
    return v15;
  }

LABEL_17:
  __break(1u);
  return result;
}

BOOL TabItem.pinned.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v4 = static TabOptions.TraitKey.defaultValue;
  v5[0] = unk_1EAB09380;
  *(v5 + 9) = *(&word_1EAB09388 + 1);
  v8 = static TabOptions.TraitKey.defaultValue;
  v9[0] = unk_1EAB09380;
  *(v9 + 9) = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v4, &v6);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v6 = v8;
  v7[0] = v9[0];
  *(v7 + 9) = *(v9 + 9);
  outlined destroy of TabOptions(&v6);
  v8 = v2;
  v9[0] = *v3;
  *(v9 + 9) = *&v3[9];
  v0 = TabOptions.pinned.getter();
  outlined destroy of TabOptions(&v8);
  return v0;
}

BOOL TabItem.sidebarOnly.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v3 = static TabOptions.TraitKey.defaultValue;
  v4[0] = unk_1EAB09380;
  *(v4 + 9) = *(&word_1EAB09388 + 1);
  v7 = static TabOptions.TraitKey.defaultValue;
  v8[0] = unk_1EAB09380;
  *(v8 + 9) = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v3, &v5);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v5 = v7;
  v6[0] = v8[0];
  *(v6 + 9) = *(v8 + 9);
  outlined destroy of TabOptions(&v5);
  v7 = v1;
  v8[0] = *v2;
  *(v8 + 9) = *&v2[9];
  outlined destroy of TabOptions(&v7);
  return v7 == 2;
}

uint64_t TabItem.isGroupChild.getter()
{
  v4 = *(v0 + 96);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v1 = *(v5 + 16);

  if (v1)
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v2 = v4 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL TabItem.isSearchItem.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v3 = static TabOptions.TraitKey.defaultValue;
  v4[0] = unk_1EAB09380;
  *(v4 + 9) = *(&word_1EAB09388 + 1);
  v7 = static TabOptions.TraitKey.defaultValue;
  *v8 = unk_1EAB09380;
  *&v8[9] = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v3, &v5);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v5 = v7;
  v6[0] = *v8;
  *(v6 + 9) = *&v8[9];
  outlined destroy of TabOptions(&v5);
  v7 = v1;
  *v8 = *v2;
  *&v8[9] = *&v2[9];
  outlined destroy of TabOptions(&v7);
  return (v8[24] & 1) == 0;
}

unint64_t TabItem.resolvedCustomizationID.getter()
{
  if ((TabItem.needsCustomizationIDForEnablement.getter() & 1) == 0)
  {
    return TabItem.platformIdentifier.getter();
  }

  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v7 = static TabOptions.TraitKey.defaultValue;
  v8[0] = unk_1EAB09380;
  *(v8 + 9) = *(&word_1EAB09388 + 1);
  v3 = static TabOptions.TraitKey.defaultValue;
  *v4 = unk_1EAB09380;
  *&v4[9] = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v7, &v5);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v9 = v3;
  v10[0] = *v4;
  *(v10 + 9) = *&v4[9];
  outlined destroy of TabOptions(&v9);
  v11 = v5;
  v12[0] = v6[0];
  *(v12 + 9) = *(v6 + 9);
  v0 = BYTE8(v6[0]);
  v1 = *(&v5 + 1);
  outlined copy of TabCustomizationID?(*(&v5 + 1), *&v6[0], SBYTE8(v6[0]));
  outlined destroy of TabOptions(&v11);
  if (v0 == 255)
  {
    return TabItem.platformIdentifier.getter();
  }

  else
  {
    return v1;
  }
}

uint64_t TabItem.needsCustomizationIDForEnablement.getter()
{
  *&v9 = *(v0 + 96);
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v13 = static TabOptions.TraitKey.defaultValue;
  v14[0] = unk_1EAB09380;
  *(v14 + 9) = *(&word_1EAB09388 + 1);
  v17 = static TabOptions.TraitKey.defaultValue;
  v18[0] = unk_1EAB09380;
  *(v18 + 9) = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v13, &v15);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v15 = v17;
  v16[0] = v18[0];
  *(v16 + 9) = *(v18 + 9);
  outlined destroy of TabOptions(&v15);
  v17 = v11;
  v18[0] = v12[0];
  *(v18 + 9) = *(v12 + 9);
  outlined destroy of TabOptions(&v17);
  if (BYTE10(v18[0]) && (v7 = static TabOptions.TraitKey.defaultValue, v8[0] = unk_1EAB09380, *(v8 + 9) = *(&word_1EAB09388 + 1), v3 = static TabOptions.TraitKey.defaultValue, *v4 = unk_1EAB09380, *&v4[9] = *(&word_1EAB09388 + 1), outlined init with copy of TabOptions(&v7, &v5), ViewTraitCollection.value<A>(for:defaultValue:)(), v9 = v3, v10[0] = *v4, *(v10 + 9) = *&v4[9], outlined destroy of TabOptions(&v9), v11 = v5, v12[0] = v6[0], *(v12 + 9) = *(v6 + 9), outlined destroy of TabOptions(&v11), BYTE9(v12[0])))
  {
    v1 = TabItem.alwaysRequiresCustomizationID.getter();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

BOOL TabItem.hasCustomizationID.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v3 = static TabOptions.TraitKey.defaultValue;
  v4[0] = unk_1EAB09380;
  *(v4 + 9) = *(&word_1EAB09388 + 1);
  v7 = static TabOptions.TraitKey.defaultValue;
  *v8 = unk_1EAB09380;
  *&v8[9] = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v3, &v5);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v5 = v7;
  v6[0] = *v8;
  *(v6 + 9) = *&v8[9];
  outlined destroy of TabOptions(&v5);
  v7 = v1;
  *v8 = *v2;
  *&v8[9] = *&v2[9];
  outlined copy of TabCustomizationID?(*(&v1 + 1), *v2, v2[8]);
  outlined destroy of TabOptions(&v7);
  if (v2[8] != 255)
  {
    outlined consume of TabCustomizationID?(*(&v1 + 1), *v2, v2[8]);
  }

  return v2[8] != 255;
}

uint64_t TabItem.alwaysRequiresCustomizationID.getter()
{
  if (TabItem.sidebarOnly.getter() || TabItem.pinned.getter())
  {
    v0 = 0;
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v4 = static TabOptions.TraitKey.defaultValue;
    v5[0] = unk_1EAB09380;
    *(v5 + 9) = *(&word_1EAB09388 + 1);
    v8 = static TabOptions.TraitKey.defaultValue;
    *v9 = unk_1EAB09380;
    *&v9[9] = *(&word_1EAB09388 + 1);
    outlined init with copy of TabOptions(&v4, &v6);
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v6 = v8;
    v7[0] = *v9;
    *(v7 + 9) = *&v9[9];
    outlined destroy of TabOptions(&v6);
    v8 = v2;
    *v9 = *v3;
    *&v9[9] = *&v3[9];
    outlined destroy of TabOptions(&v8);
    v0 = v9[10] == 1;
  }

  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v4 = static TabOptions.TraitKey.defaultValue;
  v5[0] = unk_1EAB09380;
  *(v5 + 9) = *(&word_1EAB09388 + 1);
  v8 = static TabOptions.TraitKey.defaultValue;
  *v9 = unk_1EAB09380;
  *&v9[9] = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v4, &v6);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v6 = v8;
  v7[0] = *v9;
  *(v7 + 9) = *&v9[9];
  outlined destroy of TabOptions(&v6);
  v8 = v2;
  *v9 = *v3;
  *&v9[9] = *&v3[9];
  outlined destroy of TabOptions(&v8);
  return v9[9] == 1 || v0;
}

SwiftUI::TabCustomizationBehavior __swiftcall TabItem.resolvedUIKitTopBarCustomizationBehavior(customizationEnabled:)(Swift::Bool customizationEnabled)
{
  v3 = v1;
  if (TabItem.needsCustomizationIDForEnablement.getter() & 1) == 0 || (result.role = TabItem.hasCustomizationID.getter(), (result.role))
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v8 = static TabOptions.TraitKey.defaultValue;
    v9[0] = unk_1EAB09380;
    *(v9 + 9) = *(&word_1EAB09388 + 1);
    v12 = static TabOptions.TraitKey.defaultValue;
    *v13 = unk_1EAB09380;
    *&v13[9] = *(&word_1EAB09388 + 1);
    outlined init with copy of TabOptions(&v8, &v10);
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v10 = v12;
    v11[0] = *v13;
    *(v11 + 9) = *&v13[9];
    outlined destroy of TabOptions(&v10);
    v12 = v6;
    *v13 = *v7;
    *&v13[9] = *&v7[9];
    result.role = outlined destroy of TabOptions(&v12);
    v5 = v13[10];
    goto LABEL_6;
  }

  if (customizationEnabled)
  {
    result.role = TabItem.isGroupChild.getter();
    if ((result.role & 1) == 0)
    {
      v5 = 2;
LABEL_6:
      *v3 = v5;
      return result;
    }
  }

  *v3 = 0;
  return result;
}

SwiftUI::SpringLoadingBehavior __swiftcall TabItem.resolvedSpringLoadingBehavior(environmentBehavior:)(SwiftUI::SpringLoadingBehavior environmentBehavior)
{
  v2 = v1;
  v3 = *environmentBehavior.guts;
  result.guts = ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v5)
  {
    result.guts = ViewTraitCollection.value<A>(for:defaultValue:)();
    v3 = v5;
  }

  *v2 = v3;
  return result;
}

uint64_t TabItem.clientDefaultVisibility(for:)(unsigned __int8 *a1)
{
  v2 = *a1;
  *&v15 = *(v1 + 96);
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v19 = static TabOptions.TraitKey.defaultValue;
  v20[0] = unk_1EAB09380;
  *(v20 + 9) = *(&word_1EAB09388 + 1);
  v23 = static TabOptions.TraitKey.defaultValue;
  *v24 = unk_1EAB09380;
  *&v24[9] = *(&word_1EAB09388 + 1);
  outlined init with copy of TabOptions(&v19, &v21);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v21 = v23;
  v22[0] = *v24;
  *(v22 + 9) = *&v24[9];
  outlined destroy of TabOptions(&v21);
  *&v24[9] = *&v18[9];
  v23 = v17;
  *v24 = *v18;
  v3 = *&v18[9] >> 56;

  outlined destroy of TabOptions(&v23);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0) || (, v13 = static TabOptions.TraitKey.defaultValue, v14[0] = unk_1EAB09380, *(v14 + 9) = *(&word_1EAB09388 + 1), v9 = static TabOptions.TraitKey.defaultValue, *v10 = unk_1EAB09380, *&v10[9] = *(&word_1EAB09388 + 1), outlined init with copy of TabOptions(&v13, &v11), ViewTraitCollection.value<A>(for:defaultValue:)(), v15 = v9, v16[0] = *v10, *(v16 + 9) = *&v10[9], outlined destroy of TabOptions(&v15), *&v18[9] = *&v12[9], v17 = v11, *v18 = *v12, v3 = *&v12[9] >> 56, , outlined destroy of TabOptions(&v17), *(v3 + 16)) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(2u), (v6 & 1) != 0))
  {
    v7 = *(*(v3 + 56) + v4);
  }

  else
  {

    return 0;
  }

  return v7;
}

Swift::Bool_optional __swiftcall TabSidebarConfiguration.sidebarVisible()()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  if (v2 && (v3 = v0[24], v6 = *(v0 + 1), v7 = v2, v8 = v3, type metadata accessor for Binding<Visibility>(0, &lazy cache variable for type metadata for Binding<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E6981948]), MEMORY[0x18D00ACC0](&v5), v5))
  {
    LOBYTE(v1) = v5 == 1;
  }

  else if (v1 != 1 && v1 != 2)
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

Swift::Int_optional __swiftcall TabItem.sectionID(at:)(Swift::Int at)
{
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (at < 0 || *(v5 + 16) <= at)
  {

    v3 = 0;
    v4 = 1;
  }

  else
  {
    v2 = *(v5 + 8 * at + 32);

    v3 = v2;
    v4 = 0;
  }

  result.value = v3;
  result.is_nil = v4;
  return result;
}

char *static AdaptableTabView.makeTabGroups(_:depth:maxDepth:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  v71[0] = MEMORY[0x1E69E7CC0];
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI8TabEntryOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v69 = v8;
  v70 = v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
LABEL_37:
    static AdaptableTabView.makeGroup(from:depth:maxDepth:result:cache:)(&v69, a2, a3, v71, &v70);

    v46 = v59;
    static Log.tabView.getter();
    v47 = type metadata accessor for Logger();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      outlined destroy of Binding<TabViewCustomization>(v46, type metadata accessor for Logger?);
    }

    else
    {
      v49 = v71[0];

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v62[0] = v53;
        *v52 = 136315138;
        v54 = specialized implicit closure #1 in static AdaptableTabView.extractTabs(_:)(v49);
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v62);

        *(v52 + 4) = v56;
        _os_log_impl(&dword_18BD4A000, v50, v51, "Made groups:\n%s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x18D0110E0](v53, -1, -1);
        v57 = v52;
        v46 = v59;
        MEMORY[0x18D0110E0](v57, -1, -1);
      }

      (*(v48 + 8))(v46, v47);
    }

    swift_beginAccess();
    return v71[0];
  }

  v11 = a1 + 32;
  v60 = a3;
  while (1)
  {
    outlined init with copy of TabItem(v11, v67);
    v61[0] = v68;
    v66 = v8;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v13 = *(*&v62[0] + 16);

    if (v13 || (*&v62[0] = v68, (ViewTraitCollection.isAuxiliaryContent.getter() & 1) != 0))
    {
      v61[0] = v68;
      v66 = v8;
      ViewTraitCollection.value<A>(for:defaultValue:)();
      if ((a2 & 0x8000000000000000) != 0 || *(*&v62[0] + 16) <= a2)
      {
      }

      else
      {
        v14 = *(*&v62[0] + 8 * a2 + 32);

        v15 = *(v69 + 16);
        if (v15)
        {
          outlined init with copy of TabItem(v69 + 112 * v15 - 80, v62);
          v65 = v8;
          v66 = v63;
          ViewTraitCollection.value<A>(for:defaultValue:)();
          if (*(v61[0] + 16) <= a2)
          {

            outlined destroy of TabItem(v62);
          }

          else
          {
            v16 = *(v61[0] + 8 * a2 + 32);

            outlined destroy of TabItem(v62);
            if (v16 == v14)
            {
              goto LABEL_30;
            }
          }
        }

        static AdaptableTabView.makeGroup(from:depth:maxDepth:result:cache:)(&v69, a2, a3, v71, &v70);
      }

LABEL_30:
      outlined init with copy of TabItem(v67, v62);
      v37 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[112 * v39];
      v41 = v62[0];
      v42 = v62[2];
      *(v40 + 3) = v62[1];
      *(v40 + 4) = v42;
      *(v40 + 2) = v41;
      v43 = v62[3];
      v44 = v62[4];
      v45 = v63;
      *(v40 + 7) = v62[5];
      *(v40 + 8) = v45;
      *(v40 + 5) = v43;
      *(v40 + 6) = v44;
      v69 = v37;
      outlined destroy of TabItem(v67);
      goto LABEL_5;
    }

    static AdaptableTabView.makeGroup(from:depth:maxDepth:result:cache:)(&v69, a2, a3, v71, &v70);
    outlined init with copy of TabItem(v67, v62);
    v64 = 0;
    outlined init with copy of TabEntry(v62, v61);
    v17 = v71[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    memcpy(&v17[288 * v19 + 32], v61, 0x119uLL);
    v71[0] = v17;
    v20 = TabItem.platformIdentifier.getter();
    v22 = v21;
    outlined init with copy of TabEntry(v62, v61);
    v23 = v70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v23;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v22);
    v27 = v23[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v23[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v25 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if ((v30 & 1) == 0)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_45;
      }

      v26 = v31;
      if ((v30 & 1) == 0)
      {
LABEL_26:
        v12 = v66;
        v66[(v26 >> 6) + 8] |= 1 << v26;
        v33 = (v12[6] + 16 * v26);
        *v33 = v20;
        v33[1] = v22;
        memcpy((v12[7] + 288 * v26), v61, 0x119uLL);
        outlined destroy of TabEntry(v62);
        v34 = v12[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_44;
        }

        v12[2] = v36;
        goto LABEL_4;
      }
    }

    v12 = v66;
    outlined assign with take of TabEntry(v61, v66[7] + 288 * v26);
    outlined destroy of TabEntry(v62);
LABEL_4:
    v70 = v12;
    outlined destroy of TabItem(v67);
    a3 = v60;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v11 += 112;
    if (!--v10)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t static AdaptableTabView.makeGroup(from:depth:maxDepth:result:cache:)(uint64_t *a1, uint64_t a2, uint64_t a3, char **a4, void *a5)
{
  v8 = a1;
  v9 = *a1;
  v97 = static AdaptableTabView.parseItems(from:depth:maxDepth:)(v96, v99, *a1, a2, a3);
  v98 = v10;
  outlined init with copy of (offset: Int, element: TabItem)(v96, v90, type metadata accessor for (header: TabItem?, children: [TabEntry], actions: [TabItem], compactItem: TabItem?));
  v11 = *&v90[7];
  v95[4] = v90[4];
  v95[5] = v90[5];
  v95[6] = v90[6];
  v95[0] = v90[0];
  v95[1] = v90[1];
  v95[3] = v90[3];
  v95[2] = v90[2];
  v94[0] = v90[8];
  v94[1] = v90[9];
  v94[6] = v90[14];
  v94[5] = v90[13];
  v94[4] = v90[12];
  v94[2] = v90[10];
  v94[3] = v90[11];
  if (!*(*&v90[7] + 16) || !*(v9 + 16) || (v67 = *(&v90[7] + 1), outlined init with copy of TabItem(v9 + 32, v90), v100 = TabItem.sectionID(at:)(a2), value = v100.value, is_nil = v100.is_nil, outlined destroy of TabItem(v90), is_nil))
  {

    v14 = MEMORY[0x1E69E6720];
    outlined destroy of Binding<Visibility>(v94, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
    outlined destroy of Binding<Visibility>(v95, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, v14);
    outlined destroy of Binding<TabViewCustomization>(v96, type metadata accessor for (header: TabItem?, children: [TabEntry], actions: [TabItem], compactItem: TabItem?));

    goto LABEL_5;
  }

  v64 = a5;
  v65 = v8;
  v66 = a4;
  *&v90[0] = value;
  v62 = dispatch thunk of CustomStringConvertible.description.getter();
  v63 = v16;
  outlined init with copy of TabItem?(v95, v93, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem);
  outlined init with copy of TabItem?(v94, v92, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem);
  memset(&v91[6], 0, 224);
  v17 = *(v11 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (!v17)
  {
LABEL_49:
    v91[0] = v18;
    v91[1] = v11;
    v91[2] = v67;
    outlined init with copy of TabItem?(v93, v90, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem);
    if (*(&v90[1] + 1))
    {
      v80 = *&v90[6];
      v52 = one-time initialization token for defaultValue;

      if (v52 != -1)
      {
        swift_once();
      }

      v81 = static TabOptions.TraitKey.defaultValue;
      *v82 = unk_1EAB09380;
      *&v82[9] = *(&word_1EAB09388 + 1);
      v68 = static TabOptions.TraitKey.defaultValue;
      *v69 = unk_1EAB09380;
      *&v69[9] = *(&word_1EAB09388 + 1);
      outlined init with copy of TabOptions(&v81, &v74);
      ViewTraitCollection.value<A>(for:defaultValue:)();
      __dst[0] = v68;
      __dst[1] = *v69;
      *(&__dst[1] + 9) = *&v69[9];
      outlined destroy of TabOptions(__dst);
      *__src = v74;
      *&__src[16] = *v75;
      *&__src[25] = *&v75[9];
      v53 = *(&v74 + 1);
      v54 = *v75;
      v55 = v75[8];
      outlined copy of TabCustomizationID?(*(&v74 + 1), *v75, v75[8]);
      outlined destroy of TabOptions(__src);
      outlined destroy of TabItem(v90);
      if (v55 != 255)
      {

        v8 = v65;
LABEL_56:
        v91[3] = v53;
        v91[4] = v54;
        LOBYTE(v91[5]) = v55 & 1;
        outlined assign with copy of TabItem?(v93, &v91[6]);
        outlined assign with copy of TabItem?(v92, &v91[20]);
        if (*(v18 + 2) && (outlined init with copy of TabItem((v18 + 32), v90), , v56 = *&v90[6], , outlined destroy of _VariadicView_Children.Element(v90), *&__dst[0] = v56, *&v81 = MEMORY[0x1E69E7CC0], ViewTraitCollection.value<A>(for:defaultValue:)(), , *(*__src + 16)))
        {
          v57 = *(*__src + 32);
        }

        else
        {

          v57 = AGMakeUniqueID();
        }

        v58 = MEMORY[0x1E69E6720];
        outlined destroy of Binding<Visibility>(v92, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
        outlined destroy of Binding<Visibility>(v93, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, v58);
        v91[34] = v57;
        memcpy(__src, v91, sizeof(__src));
        static AdaptableTabView.updateEntryCache(_:adding:)(v64, __src);
        outlined init with copy of TabItemGroup(__src, v90);
        BYTE8(v90[17]) = 1;
        v19 = *v66;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_72;
        }

        goto LABEL_61;
      }
    }

    else
    {

      outlined destroy of Binding<Visibility>(v90, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
    }

    v8 = v65;
    v53 = v62;
    v54 = v63;
    LOBYTE(v55) = 1;
    goto LABEL_56;
  }

  v19 = (v11 + 32);
  v8 = 112;
  while (1)
  {
    outlined init with copy of TabEntry(v19, v90);
    outlined init with copy of TabEntry(v90, __src);
    if ((v89 & 1) == 0)
    {
      __dst[4] = *&__src[64];
      __dst[5] = *&__src[80];
      __dst[6] = *&__src[96];
      __dst[0] = *__src;
      __dst[1] = *&__src[16];
      __dst[2] = *&__src[32];
      __dst[3] = *&__src[48];
      outlined init with copy of TabItem(__dst, &v81);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
      }

      v39 = *(v18 + 2);
      v38 = *(v18 + 3);
      if (v39 >= v38 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v18);
      }

      outlined destroy of TabItem(__dst);
      outlined destroy of TabEntry(v90);
      *(v18 + 2) = v39 + 1;
      v40 = &v18[112 * v39];
      v42 = *v82;
      v41 = *&v82[16];
      *(v40 + 2) = v81;
      *(v40 + 3) = v42;
      *(v40 + 4) = v41;
      v43 = v86;
      v45 = v83;
      v44 = v84;
      *(v40 + 7) = v85;
      *(v40 + 8) = v43;
      *(v40 + 5) = v45;
      *(v40 + 6) = v44;
      goto LABEL_10;
    }

    memcpy(__dst, __src, 0x118uLL);
    outlined init with copy of TabItem?(&__dst[3], &v81, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem);
    if (*&v82[8])
    {
      v77 = v84;
      v78 = v85;
      v79 = v86;
      v74 = v81;
      *v75 = *v82;
      *&v75[16] = *&v82[16];
      v76 = v83;
      outlined init with copy of TabItem(&v74, &v68);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
      }

      outlined destroy of TabItem(&v74);
      *(v18 + 2) = v21 + 1;
      v22 = &v18[112 * v21];
      v24 = *v69;
      v23 = *&v69[16];
      *(v22 + 2) = v68;
      *(v22 + 3) = v24;
      *(v22 + 4) = v23;
      v25 = v73;
      v27 = v70;
      v26 = v71;
      *(v22 + 7) = v72;
      *(v22 + 8) = v25;
      *(v22 + 5) = v27;
      *(v22 + 6) = v26;
    }

    v28 = *&__dst[0];
    v29 = *&__dst[1];
    v30 = *(*&__dst[1] + 16);
    v31 = *(*&__dst[0] + 16);
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v32 > *(v28 + 3) >> 1)
    {
      if (v31 <= v32)
      {
        v34 = v31 + v30;
      }

      else
      {
        v34 = v31;
      }

      v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v34, 1, v28);
    }

    if (*(v29 + 16))
    {
      if ((*(v28 + 3) >> 1) - *(v28 + 2) < v30)
      {
        goto LABEL_68;
      }

      swift_arrayInitWithCopy();

      if (v30)
      {
        v35 = *(v28 + 2);
        v36 = __OFADD__(v35, v30);
        v37 = v35 + v30;
        if (v36)
        {
          goto LABEL_70;
        }

        *(v28 + 2) = v37;
        goto LABEL_37;
      }
    }

    else
    {

      if (v30)
      {
        goto LABEL_65;
      }
    }

    v37 = *(v28 + 2);
LABEL_37:
    v46 = *(v18 + 2);
    v47 = v46 + v37;
    if (__OFADD__(v46, v37))
    {
      goto LABEL_66;
    }

    v48 = swift_isUniquelyReferenced_nonNull_native();
    if (!v48 || v47 > *(v18 + 3) >> 1)
    {
      if (v46 <= v47)
      {
        v49 = v46 + v37;
      }

      else
      {
        v49 = v46;
      }

      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48, v49, 1, v18);
    }

    if (*(v28 + 2))
    {
      if ((*(v18 + 3) >> 1) - *(v18 + 2) < v37)
      {
        goto LABEL_69;
      }

      swift_arrayInitWithCopy();

      if (v37)
      {
        v50 = *(v18 + 2);
        v36 = __OFADD__(v50, v37);
        v51 = v50 + v37;
        if (v36)
        {
          goto LABEL_71;
        }

        *(v18 + 2) = v51;
      }
    }

    else
    {

      if (v37)
      {
        goto LABEL_67;
      }
    }

    outlined destroy of TabItemGroup(__dst);
    outlined destroy of TabEntry(v90);
LABEL_10:
    v19 += 288;
    if (!--v17)
    {
      goto LABEL_49;
    }
  }

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
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
LABEL_61:
  v60 = *(v19 + 2);
  v59 = *(v19 + 3);
  if (v60 >= v59 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v19);
  }

  outlined destroy of TabItemGroup(__src);
  v61 = MEMORY[0x1E69E6720];
  outlined destroy of Binding<Visibility>(v94, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
  outlined destroy of Binding<Visibility>(v95, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, v61);
  outlined destroy of Binding<TabViewCustomization>(v96, type metadata accessor for (header: TabItem?, children: [TabEntry], actions: [TabItem], compactItem: TabItem?));
  *(v19 + 2) = v60 + 1;
  memcpy(&v19[288 * v60 + 32], v90, 0x119uLL);

  *v66 = v19;
LABEL_5:
  *v8 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t specialized implicit closure #1 in static AdaptableTabView.extractTabs(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v45 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = a1 + 32;
    v2 = v45;
    do
    {
      outlined init with copy of TabEntry(v4, v44);
      outlined init with copy of TabEntry(v44, __src);
      if (v43)
      {
        memcpy(__dst, __src, sizeof(__dst));
        strcpy(&v37, "TabItemGroup ");
        HIWORD(v37) = -4864;
        v5 = TabItemGroup.description.getter();
        MEMORY[0x18D00C9B0](v5);

        v7 = *(&v37 + 1);
        v6 = v37;
        outlined destroy of TabItemGroup(__dst);
      }

      else
      {
        *&__dst[64] = *&__src[64];
        *&__dst[80] = *&__src[80];
        *&__dst[96] = *&__src[96];
        *__dst = *__src;
        *&__dst[16] = *&__src[16];
        *&__dst[32] = *&__src[32];
        *&__dst[48] = *&__src[48];
        *&v37 = 0;
        *(&v37 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(20);

        v39 = 0x206D657449626154;
        v40 = 0xE800000000000000;
        *&v37 = *&__dst[104];
        v8 = dispatch thunk of CustomStringConvertible.description.getter();
        v10 = v9;
        *&v37 = *&__dst[96];
        if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
        {
          *&v25 = *&__dst[96];
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v33 = static TabOptions.TraitKey.defaultValue;
          v34[0] = unk_1EAB09380;
          *(v34 + 9) = *(&word_1EAB09388 + 1);
          v29 = static TabOptions.TraitKey.defaultValue;
          v30[0] = unk_1EAB09380;
          *(v30 + 9) = *(&word_1EAB09388 + 1);
          outlined init with copy of TabOptions(&v33, &v27);
          ViewTraitCollection.value<A>(for:defaultValue:)();
          v35 = v29;
          v36[0] = v30[0];
          *(v36 + 9) = *(v30 + 9);
          outlined destroy of TabOptions(&v35);
          v37 = v31;
          *v38 = v32[0];
          *&v38[9] = *(v32 + 9);
          outlined destroy of TabOptions(&v37);
          if (v38[24])
          {
            if (TabItem.needsCustomizationIDForEnablement.getter())
            {
              v27 = static TabOptions.TraitKey.defaultValue;
              v28[0] = unk_1EAB09380;
              *(v28 + 9) = *(&word_1EAB09388 + 1);
              v23 = static TabOptions.TraitKey.defaultValue;
              *v24 = unk_1EAB09380;
              *&v24[9] = *(&word_1EAB09388 + 1);
              outlined init with copy of TabOptions(&v27, &v25);
              ViewTraitCollection.value<A>(for:defaultValue:)();
              v29 = v23;
              v30[0] = *v24;
              *(v30 + 9) = *&v24[9];
              outlined destroy of TabOptions(&v29);
              v31 = v25;
              v32[0] = v26[0];
              *(v32 + 9) = *(v26 + 9);
              v11 = *(&v25 + 1);
              v12 = *&v26[0];
              v13 = BYTE8(v26[0]);
              outlined copy of TabCustomizationID?(*(&v25 + 1), *&v26[0], SBYTE8(v26[0]));
              outlined destroy of TabOptions(&v31);
              if (v13 != 255)
              {

                v8 = v11;
                v10 = v12;
              }
            }
          }

          else
          {

            v8 = 0xD000000000000016;
            v10 = 0x800000018CD45E10;
          }
        }

        MEMORY[0x18D00C9B0](v8, v10);

        MEMORY[0x18D00C9B0](0x3D6E656464696820, 0xE800000000000000);
        v14 = TabEntry.hidden.getter();
        v15 = (v14 & 1) == 0;
        if (v14)
        {
          v16 = 1702195828;
        }

        else
        {
          v16 = 0x65736C6166;
        }

        if (v15)
        {
          v17 = 0xE500000000000000;
        }

        else
        {
          v17 = 0xE400000000000000;
        }

        MEMORY[0x18D00C9B0](v16, v17);

        v6 = v39;
        v7 = v40;
        outlined destroy of TabItem(__dst);
      }

      outlined destroy of TabEntry(v44);
      v45 = v2;
      v19 = *(v2 + 16);
      v18 = *(v2 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v2 = v45;
      }

      *(v2 + 16) = v19 + 1;
      v20 = v2 + 16 * v19;
      *(v20 + 32) = v6;
      *(v20 + 40) = v7;
      v4 += 288;
      --v1;
    }

    while (v1);
  }

  v44[0] = v2;
  type metadata accessor for Binding<Visibility>(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v21 = BidirectionalCollection<>.joined(separator:)();

  return v21;
}

char *static AdaptableTabView.parseItems(from:depth:maxDepth:)(char *result, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v5 = MEMORY[0x1E69E7CC0];
  v60 = MEMORY[0x1E69E7CC0];
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  v6 = *(a3 + 16);
  if (!v6)
  {
LABEL_45:
    v44 = v66;
    *(result + 4) = v65;
    *(result + 5) = v44;
    *(result + 6) = v67;
    v45 = v62;
    *result = v61;
    *(result + 1) = v45;
    v46 = v64;
    *(result + 2) = v63;
    *(result + 3) = v46;
    return v5;
  }

  v7 = a4 + 1;
  if (__OFADD__(a4, 1))
  {
    goto LABEL_50;
  }

  v8 = a5;
  v47 = result;
  v10 = a3 + 32;
  v11 = v5;
  v12 = v5;
  v48 = a4 + 1;
  while (1)
  {
    outlined init with copy of TabItem(v10, &v53);
    if (v7 >= v8)
    {
      goto LABEL_18;
    }

    *&__src[0] = v59;
    if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
    {
      break;
    }

    v51 = v59;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v13 = *(*&__src[0] + 16);

    v14 = v13 + 1 - a4;
    if (__OFSUB__(v13 + 1, a4))
    {
      goto LABEL_47;
    }

LABEL_12:
    if (v14 >= 2)
    {
      outlined init with copy of TabItem(&v53, __src);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      if (v17 >= v16 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v12);
      }

      *(v12 + 2) = v17 + 1;
      v18 = &v12[112 * v17];
      v19 = __src[0];
      v20 = __src[2];
      *(v18 + 3) = __src[1];
      *(v18 + 4) = v20;
      *(v18 + 2) = v19;
      v21 = __src[3];
      v22 = __src[4];
      v23 = __src[6];
      *(v18 + 7) = __src[5];
      *(v18 + 8) = v23;
      *(v18 + 5) = v21;
      *(v18 + 6) = v22;
      outlined destroy of TabItem(&v53);
      v8 = a5;
      goto LABEL_5;
    }

LABEL_18:
    if (*(v12 + 2))
    {
      v24 = static AdaptableTabView.makeTabGroups(_:depth:maxDepth:)(v12, v7, v8);

      specialized Array.append<A>(contentsOf:)(v24);
      v12 = v5;
    }

    *&__src[0] = v59;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    if (v51 == 1)
    {
      *&__src[0] = v59;
      if (ViewTraitCollection.isAuxiliaryContent.getter())
      {
        v51 = v59;
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v25 = *(*&__src[0] + 16);

        v26 = v25 + 1 - a4;
        if (__OFSUB__(v25 + 1, a4))
        {
          goto LABEL_49;
        }
      }

      else
      {
        v51 = v59;
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v27 = *(*&__src[0] + 16);

        v26 = v27 - a4;
        if (__OFSUB__(v27, a4))
        {
          goto LABEL_48;
        }
      }

      if (v26 <= 1)
      {
        outlined init with copy of TabItem?(&v61, __src, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem);
        if (!*(&__src[1] + 1))
        {
          v43 = MEMORY[0x1E69E6720];
          outlined destroy of Binding<Visibility>(&v61, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
          v7 = v48;
          outlined destroy of Binding<Visibility>(__src, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, v43);
          v65 = v57;
          v66 = v58;
          v67 = v59;
          v61 = v53;
          v62 = v54;
          v63 = v55;
          v64 = v56;
          goto LABEL_5;
        }

        outlined destroy of Binding<Visibility>(__src, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
      }
    }

    *&__src[0] = v59;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    if (v51 != 1)
    {
      goto LABEL_32;
    }

    outlined init with copy of TabItem?(a2, __src, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem);
    if (*(&__src[1] + 1))
    {
      outlined destroy of Binding<Visibility>(__src, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
LABEL_32:
      *&__src[0] = v59;
      if (ViewTraitCollection.isAuxiliaryContent.getter())
      {
        outlined init with copy of TabItem(&v53, __src);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        }

        v29 = *(v11 + 2);
        v28 = *(v11 + 3);
        if (v29 >= v28 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v11);
        }

        *(v11 + 2) = v29 + 1;
        v30 = &v11[112 * v29];
        v31 = __src[0];
        v32 = __src[2];
        *(v30 + 3) = __src[1];
        *(v30 + 4) = v32;
        *(v30 + 2) = v31;
        v33 = __src[3];
        v34 = __src[4];
        v35 = __src[6];
        *(v30 + 7) = __src[5];
        *(v30 + 8) = v35;
        *(v30 + 5) = v33;
        *(v30 + 6) = v34;
        outlined destroy of TabItem(&v53);
      }

      else
      {
        outlined init with copy of TabItem(&v53, __src);
        BYTE8(__src[17]) = 0;
        v36 = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
        }

        v38 = *(v36 + 2);
        v37 = *(v36 + 3);
        if (v38 >= v37 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36);
        }

        *(v36 + 2) = v38 + 1;
        memcpy(&v36[288 * v38 + 32], __src, 0x119uLL);
        v60 = v36;
        outlined destroy of TabItem(&v53);
        v8 = a5;
      }

      goto LABEL_5;
    }

    v39 = MEMORY[0x1E69E6720];
    outlined destroy of Binding<Visibility>(a2, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
    v7 = v48;
    outlined destroy of Binding<Visibility>(__src, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, v39);
    v40 = v58;
    a2[4] = v57;
    a2[5] = v40;
    a2[6] = v59;
    v41 = v54;
    *a2 = v53;
    a2[1] = v41;
    v42 = v56;
    a2[2] = v55;
    a2[3] = v42;
LABEL_5:
    v10 += 112;
    if (!--v6)
    {

      v5 = v60;
      result = v47;
      goto LABEL_45;
    }
  }

  v51 = v59;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v15 = *(*&__src[0] + 16);

  v14 = v15 - a4;
  if (!__OFSUB__(v15, a4))
  {
    goto LABEL_12;
  }

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

uint64_t static AdaptableTabView.updateEntryCache(_:adding:)(void *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  outlined init with copy of TabItemGroup(a2, __src);
  BYTE8(__src[17]) = 1;
  outlined copy of TabCustomizationID.Base();
  result = specialized Dictionary.subscript.setter(__src, v4, v5);
  v55 = a2;
  v7 = a2[1];
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_27:
    v32 = v55[2];
    v57 = *(v32 + 16);
    if (!v57)
    {
      return result;
    }

    v33 = 0;
    for (i = v32 + 32; ; i += 112)
    {
      if (v33 >= *(v32 + 16))
      {
        goto LABEL_53;
      }

      outlined init with copy of TabItem(i, v60);
      *&__src[0] = *(&v60[6] + 1);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      *&__src[0] = *&v60[6];
      if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
      {
        *&v69 = *&v60[6];
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v61 = static TabOptions.TraitKey.defaultValue;
        *v62 = unk_1EAB09380;
        *&v62[9] = *(&word_1EAB09388 + 1);
        v74 = static TabOptions.TraitKey.defaultValue;
        v75[0] = unk_1EAB09380;
        *(v75 + 9) = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v61, &v72);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        __dst[0] = v74;
        __dst[1] = v75[0];
        *(&__dst[1] + 9) = *(v75 + 9);
        outlined destroy of TabOptions(__dst);
        __src[0] = v76;
        __src[1] = v77[0];
        *(&__src[1] + 9) = *(v77 + 9);
        outlined destroy of TabOptions(__src);
        if (BYTE8(__src[2]))
        {
          if (TabItem.needsCustomizationIDForEnablement.getter())
          {
            v72 = static TabOptions.TraitKey.defaultValue;
            v73[0] = unk_1EAB09380;
            *(v73 + 9) = *(&word_1EAB09388 + 1);
            v67 = static TabOptions.TraitKey.defaultValue;
            v68[0] = unk_1EAB09380;
            *(v68 + 9) = *(&word_1EAB09388 + 1);
            outlined init with copy of TabOptions(&v72, &v69);
            ViewTraitCollection.value<A>(for:defaultValue:)();
            v74 = v67;
            v75[0] = v68[0];
            *(v75 + 9) = *(v68 + 9);
            outlined destroy of TabOptions(&v74);
            v76 = v69;
            v77[0] = v70[0];
            *(v77 + 9) = *(v70 + 9);
            v39 = *(&v69 + 1);
            v40 = *&v70[0];
            v41 = BYTE8(v70[0]);
            outlined copy of TabCustomizationID?(*(&v69 + 1), *&v70[0], SBYTE8(v70[0]));
            outlined destroy of TabOptions(&v76);
            if (v41 != 255)
            {

              v36 = v39;
              v38 = v40;
            }
          }
        }

        else
        {

          v36 = 0xD000000000000016;
          v38 = 0x800000018CD45E10;
        }
      }

      outlined init with copy of TabItem(v60, __src);
      BYTE8(__src[17]) = 0;
      memcpy(__dst, __src, 0x119uLL);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v61 = *a1;
      v43 = v61;
      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v38);
      v46 = *(v43 + 16);
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_54;
      }

      v49 = v44;
      if (*(v43 + 24) >= v48)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v44)
          {
            goto LABEL_29;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if (v49)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v48, isUniquelyReferenced_nonNull_native);
        v50 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v38);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_58;
        }

        v45 = v50;
        if (v49)
        {
LABEL_29:

          v35 = v61;
          outlined assign with take of TabEntry(__dst, *(v61 + 56) + 288 * v45);
          goto LABEL_30;
        }
      }

      v35 = v61;
      *(v61 + 8 * (v45 >> 6) + 64) |= 1 << v45;
      v52 = (v35[6] + 16 * v45);
      *v52 = v36;
      v52[1] = v38;
      memcpy((v35[7] + 288 * v45), __dst, 0x119uLL);
      v53 = v35[2];
      v30 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v30)
      {
        goto LABEL_56;
      }

      v35[2] = v54;
LABEL_30:
      ++v33;
      *a1 = v35;
      result = outlined destroy of TabItem(v60);
      if (v57 == v33)
      {
        return result;
      }
    }
  }

  v9 = 0;
  v10 = v7 + 32;
  v56 = v7;
  while (v9 < *(v7 + 16))
  {
    outlined init with copy of TabEntry(v10, __src);
    if ((BYTE8(__src[17]) & 1) == 0)
    {
      v65 = __src[5];
      v66 = __src[6];
      v61 = __src[0];
      *v62 = __src[1];
      v63 = __src[3];
      v64 = __src[4];
      *&v62[16] = __src[2];
      *&__dst[0] = *(&__src[6] + 1);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      *&__dst[0] = v66;
      if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
      {
        *&v67 = v66;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v76 = static TabOptions.TraitKey.defaultValue;
        v77[0] = unk_1EAB09380;
        *(v77 + 9) = *(&word_1EAB09388 + 1);
        v72 = static TabOptions.TraitKey.defaultValue;
        v73[0] = unk_1EAB09380;
        *(v73 + 9) = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v76, &v69);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v60[0] = v72;
        v60[1] = v73[0];
        *(&v60[1] + 9) = *(v73 + 9);
        outlined destroy of TabOptions(v60);
        __dst[0] = v74;
        __dst[1] = v75[0];
        *(&__dst[1] + 9) = *(v75 + 9);
        outlined destroy of TabOptions(__dst);
        if (BYTE8(__dst[2]))
        {
          if (TabItem.needsCustomizationIDForEnablement.getter())
          {
            v69 = static TabOptions.TraitKey.defaultValue;
            v70[0] = unk_1EAB09380;
            *(v70 + 9) = *(&word_1EAB09388 + 1);
            v58 = static TabOptions.TraitKey.defaultValue;
            *v59 = unk_1EAB09380;
            *&v59[9] = *(&word_1EAB09388 + 1);
            outlined init with copy of TabOptions(&v69, &v67);
            ViewTraitCollection.value<A>(for:defaultValue:)();
            v72 = v58;
            v73[0] = *v59;
            *(v73 + 9) = *&v59[9];
            outlined destroy of TabOptions(&v72);
            v74 = v67;
            v75[0] = v68[0];
            *(v75 + 9) = *(v68 + 9);
            v14 = *(&v67 + 1);
            v15 = *&v68[0];
            v16 = BYTE8(v68[0]);
            outlined copy of TabCustomizationID?(*(&v67 + 1), *&v68[0], SBYTE8(v68[0]));
            outlined destroy of TabOptions(&v74);
            if (v16 != 255)
            {

              v11 = v14;
              v13 = v15;
            }
          }
        }

        else
        {

          v11 = 0xD000000000000016;
          v13 = 0x800000018CD45E10;
        }
      }

      outlined init with copy of TabItem(&v61, __dst);
      BYTE8(__dst[17]) = 0;
      memcpy(v60, __dst, 0x119uLL);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      *&v76 = *a1;
      v18 = v76;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13);
      v21 = *(v18 + 16);
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        goto LABEL_55;
      }

      v24 = v19;
      if (*(v18 + 24) >= v23)
      {
        if (v17)
        {
          if ((v19 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if ((v24 & 1) == 0)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, v17);
        v25 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_58;
        }

        v20 = v25;
        if ((v24 & 1) == 0)
        {
LABEL_24:
          v27 = v76;
          *(v76 + 8 * (v20 >> 6) + 64) |= 1 << v20;
          v28 = (v27[6] + 16 * v20);
          *v28 = v11;
          v28[1] = v13;
          memcpy((v27[7] + 288 * v20), v60, 0x119uLL);
          v29 = v27[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_57;
          }

          v27[2] = v31;
          goto LABEL_26;
        }
      }

      v27 = v76;
      outlined assign with take of TabEntry(v60, *(v76 + 56) + 288 * v20);
LABEL_26:
      *a1 = v27;
      result = outlined destroy of TabItem(&v61);
      v7 = v56;
      goto LABEL_4;
    }

    memcpy(__dst, __src, 0x118uLL);
    static AdaptableTabView.updateEntryCache(_:adding:)(a1, __dst);
    result = outlined destroy of TabItemGroup(__dst);
LABEL_4:
    ++v9;
    v10 += 288;
    if (v8 == v9)
    {
      goto LABEL_27;
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int __swiftcall IndexUniqueIDProjection.get(base:)(Swift::Int base)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3 <= base)
  {
    if (v3)
    {
      return *(v2 + 136);
    }

    else
    {
      return 0;
    }
  }

  else if (base < 0)
  {
    __break(1u);
  }

  else
  {
    return *(v2 + 112 * base + 136);
  }

  return base;
}

Swift::Void __swiftcall IndexUniqueIDProjection.set(base:newValue:)(Swift::Int *base, Swift::Int newValue)
{
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = 0;
    v8 = v4 + 32;
    while (v7 < *(v4 + 16))
    {
      *&v30 = v7;
      outlined init with copy of TabItem(v8, &v30 + 8);
      v27 = v35;
      v28 = v36;
      v22 = v30;
      v23 = v31;
      v24 = v32;
      v29 = v37;
      v25 = v33;
      v26 = v34;
      outlined init with copy of (offset: Int, element: TabItem)(&v22, v20, type metadata accessor for (offset: Int, element: TabItem));
      v9 = v21[13];
      outlined destroy of TabItem(v21);
      if (v9 == newValue)
      {
        v11 = v22;
        v12 = v23;
        v13 = v24;
        v14 = v25;
        v15 = v26;
        v16 = v27;
        v17 = v28;
        v10 = v29;
        goto LABEL_8;
      }

      ++v7;
      outlined destroy of Binding<TabViewCustomization>(&v22, type metadata accessor for (offset: Int, element: TabItem));
      v8 += 112;
      if (v5 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v10 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
LABEL_8:
    v30 = v11;
    v31 = v12;
    v32 = v13;
    v33 = v14;
    v34 = v15;
    v35 = v16;
    v36 = v17;
    v37 = v10;
    if (v13)
    {
      v19 = v11;
      outlined destroy of TabItem(&v30 + 8);
      v18 = v19;
    }

    else
    {
      outlined destroy of Binding<TabViewCustomization>(&v30, type metadata accessor for (offset: Int, element: TabItem)?);
      v18 = 0;
    }

    *base = v18;
  }
}

Swift::Int protocol witness for Projection.get(base:) in conformance IndexUniqueIDProjection@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = IndexUniqueIDProjection.get(base:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IndexUniqueIDProjection()
{
  Hasher.init(_seed:)();
  IndexUniqueIDProjection.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IndexUniqueIDProjection()
{
  Hasher.init(_seed:)();
  IndexUniqueIDProjection.hash(into:)();
  return Hasher._finalize()();
}

uint64_t IndexUniqueIDProjection.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      outlined init with copy of TabItem(v3, v6);
      _ViewList_View.viewID.getter();
      AnyHashable.hash(into:)();
      outlined destroy of AnyHashable(v5);
      result = outlined destroy of TabItem(v6);
      v3 += 112;
      --v2;
    }

    while (v2);
  }

  return result;
}

Swift::Void __swiftcall ItemIndexTabsOnlyIndexProjection.set(base:newValue:)(Swift::Int *base, Swift::Int newValue)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(newValue), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    *base = v8;
  }

  else
  {
    swift_endAccess();
  }
}

Swift::Int ItemIndexTabsOnlyIndexProjection.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      outlined init with copy of TabItem(v3, v6);
      _ViewList_View.viewID.getter();
      AnyHashable.hash(into:)();
      outlined destroy of AnyHashable(&v5);
      outlined destroy of TabItem(v6);
      v3 += 112;
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Projection.get(base:) in conformance ItemIndexTabsOnlyIndexProjection@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 24);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  result = swift_endAccess();
  *a2 = v9;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ItemIndexTabsOnlyIndexProjection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      outlined init with copy of TabItem(v4, v7);
      _ViewList_View.viewID.getter();
      AnyHashable.hash(into:)();
      outlined destroy of AnyHashable(&v6);
      outlined destroy of TabItem(v7);
      v4 += 112;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance InAdaptableTabViewContext()
{
  lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t TabHostingController.HostingView.appendViewGraphFeatures()()
{
  UIHostingViewBase.viewGraph.getter();

  lazy protocol witness table accessor for type ToolbarInputFeature and conformance ToolbarInputFeature();
  ViewGraph.append<A>(feature:)();
}

char *TabHostingController.HostingView.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  outlined init with copy of TabItem.RootView(a1, v6);
  v4 = specialized _UIHostingView.init(rootView:)(v6);
  outlined destroy of TabItem.RootView(a1);
  return v4;
}

id @objc TabHostingController.HostingView.init(coder:)(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for TabHostingController.HostingView(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id TabHostingController.HostingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabHostingController.HostingView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TabHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  objc_allocWithZone(v1);
  outlined init with copy of TabItem.RootView(a1, v8);
  v3 = objc_allocWithZone(type metadata accessor for TabHostingController.HostingView(0));
  outlined init with copy of TabItem.RootView(v8, v7);
  v4 = specialized _UIHostingView.init(rootView:)(v7);
  outlined destroy of TabItem.RootView(v8);
  v5 = specialized UIHostingController.init(_hostingView:)(v4);
  outlined destroy of TabItem.RootView(a1);
  return v5;
}

uint64_t destroy for TabSidebarConfiguration(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  result = *(a1 + 32);
  if (result != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for TabSidebarConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  if (v4)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v4;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
  }

  v5 = *(a2 + 32);
  if (v5 == 1)
  {
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v6 = *(a2 + 40);
    v7 = *(a2 + 48);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    *(a1 + 48) = v7;
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for TabSidebarConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4)
    {
      *(a1 + 8) = *(a2 + 8);

      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Binding<Visibility>(a1 + 8, &lazy cache variable for type metadata for Binding<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E6981948]);
      v5 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v6 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v6;
  }

  v7 = (a1 + 32);
  v9 = (a2 + 32);
  v8 = *(a2 + 32);
  if (*(a1 + 32) == 1)
  {
    if (v8 == 1)
    {
      v10 = *v9;
      *(a1 + 48) = *(a2 + 48);
      *v7 = v10;
    }

    else
    {
      *(a1 + 32) = v8;
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
    }
  }

  else if (v8 == 1)
  {
    outlined destroy of TabSidebarAccessoryViewConfiguration(a1 + 32);
    v11 = *(a2 + 48);
    *v7 = *v9;
    *(a1 + 48) = v11;
  }

  else
  {
    *(a1 + 32) = v8;

    *(a1 + 40) = *(a2 + 40);

    *(a1 + 48) = *(a2 + 48);
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for TabSidebarConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a1 + 16))
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      *(a1 + 8) = *(a2 + 8);

      *(a1 + 16) = v4;

      *(a1 + 24) = *(a2 + 24);
      goto LABEL_6;
    }

    outlined destroy of Binding<Visibility>(a1 + 8, &lazy cache variable for type metadata for Binding<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E6981948]);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
LABEL_6:
  v5 = *(a2 + 32);
  if (*(a1 + 32) != 1)
  {
    if (v5 != 1)
    {
      *(a1 + 32) = v5;

      *(a1 + 40) = *(a2 + 40);

      *(a1 + 48) = *(a2 + 48);

      goto LABEL_11;
    }

    outlined destroy of TabSidebarAccessoryViewConfiguration(a1 + 32);
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
LABEL_11:
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for TabSidebarConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for TabSidebarConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static AdaptableTabView.makeSelectionCache(items:selectionValueOnlyIncludesTabs:processedTabs:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Si14uiKitHostIndex_Si07swiftuieF0SS18platformIdentifiertTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v40 = v6;
  v7 = specialized static AdaptableTabView.makeIDToSelectionCache(items:selectionValueOnlyIncludesTabs:)(a1, a2);
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = a3 + 32;
    do
    {
      *v37 = v9;
      outlined init with copy of TabEntry(v11, &v37[8]);
      if (v39 == 255)
      {
        break;
      }

      v12 = *v37;
      *v37 = *&v37[8];
      *&v37[16] = *&v37[24];
      *&v37[32] = *&v37[40];
      *&v37[48] = *&v37[56];
      *&v37[64] = *&v37[72];
      *&v37[80] = *&v37[88];
      *&v37[96] = *&v37[104];
      *&v37[112] = *&v37[120];
      *&v37[128] = *&v37[136];
      *&v37[144] = *&v37[152];
      *&v37[160] = *&v37[168];
      *&v37[176] = *&v37[184];
      *&v37[192] = *&v37[200];
      *&v37[208] = *&v37[216];
      *&v37[224] = *&v37[232];
      *&v37[240] = *&v37[248];
      *&v37[256] = *&v37[264];
      *&v37[272] = v38;
      LOBYTE(v38) = v39;
      static AdaptableTabView.updateSelectionCache(_:adding:idToSelectionCache:hostIndex:)(&v40, v37, v7, v10, v12);
      outlined init with copy of TabEntry(v37, __src);
      if (v36)
      {
        memcpy(__dst, __src, 0x118uLL);
        outlined init with copy of TabItem?(&__dst[3], &v32, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem);
        if (*&v33[8])
        {
          v13 = one-time initialization token for defaultValue;

          if (v13 != -1)
          {
            swift_once();
          }

          v26 = static TabOptions.TraitKey.defaultValue;
          v27[0] = unk_1EAB09380;
          *(v27 + 9) = *(&word_1EAB09388 + 1);
          v30 = static TabOptions.TraitKey.defaultValue;
          v31[0] = unk_1EAB09380;
          *(v31 + 9) = *(&word_1EAB09388 + 1);
          outlined init with copy of TabOptions(&v26, &v28);
          ViewTraitCollection.value<A>(for:defaultValue:)();
          outlined destroy of TabItemGroup(__dst);
          outlined destroy of TabEntry(v37);
          v28 = v30;
          v29[0] = v31[0];
          *(v29 + 9) = *(v31 + 9);
          outlined destroy of TabOptions(&v28);

          v30 = v24;
          v31[0] = *v25;
          *(v31 + 9) = *&v25[9];
          outlined destroy of TabOptions(&v30);
          v14 = BYTE1(v30);
          result = outlined destroy of TabItem(&v32);
        }

        else
        {
          outlined destroy of TabItemGroup(__dst);
          outlined destroy of TabEntry(v37);
          result = outlined destroy of Binding<Visibility>(&v32, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
          v14 = 0;
        }
      }

      else
      {
        __dst[5] = *&__src[80];
        __dst[6] = *&__src[96];
        __dst[0] = *__src;
        __dst[1] = *&__src[16];
        __dst[3] = *&__src[48];
        __dst[4] = *&__src[64];
        __dst[2] = *&__src[32];
        *&v24 = *&__src[96];
        v16 = one-time initialization token for defaultValue;

        if (v16 != -1)
        {
          swift_once();
        }

        v28 = static TabOptions.TraitKey.defaultValue;
        v29[0] = unk_1EAB09380;
        *(v29 + 9) = *(&word_1EAB09388 + 1);
        v32 = static TabOptions.TraitKey.defaultValue;
        *v33 = unk_1EAB09380;
        *&v33[9] = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v28, &v30);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        outlined destroy of TabItem(__dst);
        outlined destroy of TabEntry(v37);
        v30 = v32;
        v31[0] = *v33;
        *(v31 + 9) = *&v33[9];
        outlined destroy of TabOptions(&v30);

        v32 = v26;
        *v33 = v27[0];
        *&v33[9] = *(v27 + 9);
        result = outlined destroy of TabOptions(&v32);
        v14 = BYTE1(v32);
      }

      v17 = v14 ^ 1u;
      v18 = __OFADD__(v10, v17);
      v10 += v17;
      if (v18)
      {
        __break(1u);
        return result;
      }

      ++v9;
      v11 += 288;
    }

    while (v8 != v9);
    v6 = v40;

    if (!v6[2] || (specialized __RawDictionaryStorage.find<A>(_:)(0), (v19 & 1) == 0))
    {
      v20 = TabEntry.platformIdentifier.getter();
      v22 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v37 = v6;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, 0, v20, v22, 0, isUniquelyReferenced_nonNull_native);
      return *v37;
    }
  }

  else
  {

    if (v6[2])
    {
      specialized __RawDictionaryStorage.find<A>(_:)(0);
    }
  }

  return v6;
}

uint64_t static AdaptableTabView.updateSelectionCache(_:adding:idToSelectionCache:hostIndex:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of TabEntry(a2, __src);
  if (v23)
  {
    memcpy(__dst, __src, sizeof(__dst));
    v9 = *(__dst[1] + 16);
    if (v9)
    {
      v10 = __dst[1] + 32;
      do
      {
        outlined init with copy of TabEntry(v10, v20);
        static AdaptableTabView.updateSelectionCache(_:adding:idToSelectionCache:hostIndex:)(a1, v20, a3, a4, a5);
        outlined destroy of TabEntry(v20);
        v10 += 288;
        --v9;
      }

      while (v9);
    }

    return outlined destroy of TabItemGroup(__dst);
  }

  else
  {
    v20[4] = *&__src[64];
    v20[5] = *&__src[80];
    v20[6] = *&__src[96];
    v20[0] = *__src;
    v20[1] = *&__src[16];
    v20[2] = *&__src[32];
    v20[3] = *&__src[48];
    v12 = TabItem.platformIdentifier.getter();
    v14 = v13;
    if (*(a3 + 16) && (v15 = v12, v16 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v17 & 1) != 0))
    {
      v18 = *(*(a3 + 56) + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = *a1;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a4, a5, v15, v14, v18, isUniquelyReferenced_nonNull_native);
      *a1 = __dst[0];
    }

    else
    {
    }

    return outlined destroy of TabItem(v20);
  }
}

uint64_t TabItemGroup.updateChildSelection(in:selectedID:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = v5;
  v8 = [v6 _children];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UITab);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
LABEL_29:
    v10 = __CocoaSet.count.getter();
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_30:

LABEL_31:

    return 0;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_5:
  v24 = v6;
  v25 = v7;
  v7 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x18D00E9C0](v7, v9);
    }

    else
    {
      if (v7 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v11 = *(v9 + 8 * v7 + 32);
    }

    v12 = v11;
    v13 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v6 = [v11 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v14 == a2 && v16 == a3)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v23 = v19;

      [v24 _setSelectedElement_];

      goto LABEL_25;
    }

LABEL_19:
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      break;
    }

    ++v7;
    if (v13 == v10)
    {

      goto LABEL_31;
    }
  }

  v21 = v20;

  v22 = v12;
  if (TabItemGroup.updateChildSelection(in:selectedID:)(v21, a2, a3))
  {
    [v24 _setSelectedElement_];

LABEL_25:
    return 1;
  }

  return 0;
}

id TabItem.swipeActionsConfiguration(for:)(char a1)
{
  if (a1)
  {
    *&v147 = *(v1 + 96);
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    *&v140 = static SwipeActions.TraitKey.defaultValue;
    v2 = ViewTraitCollection.value<A>(for:defaultValue:)();
    v3 = v175;
    MEMORY[0x18D00ABE0](v2);
    v244 = 0u;
    v243 = 0u;
    v242 = 0u;
    v241 = 0u;
    v240 = 0u;
    v239 = 0u;
    v238 = 0u;
    v4 = MEMORY[0x1E69E6720];
    outlined destroy of Binding<Visibility>(&v238, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
    v245 = 0u;
    v246 = 0u;
    v247 = 0u;
    v248 = 0u;
    v249 = 0u;
    v250 = 0u;
    v251 = 0u;
    outlined destroy of Binding<Visibility>(&v245, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v4);
    AGGraphClearUpdate();
    v5 = *(v175 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = *MEMORY[0x1E698D3F8];
      v8 = v5 - 1;
      v9 = 1;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      while (2)
      {
        while (1)
        {
          v24 = v6 <= *(v3 + 16) ? *(v3 + 16) : v6;
          v25 = v6;
          v136 = v17;
          v138 = v16;
          v132 = v19;
          v134 = v18;
          v128 = v21;
          v130 = v20;
          v124 = v23;
          v126 = v22;
          v120 = v10;
          v122 = v15;
          v116 = v12;
          v118 = v11;
          v112 = v14;
          v114 = v13;
          while (1)
          {
            if (v24 == v25)
            {
              __break(1u);
              goto LABEL_43;
            }

            v6 = v25 + 1;
            if (AGWeakAttributeGetAttribute() != v7)
            {
              break;
            }

            ++v25;
            if (v5 == v6)
            {

              goto LABEL_37;
            }
          }

          if (v9)
          {
            break;
          }

          Value = AGGraphGetValue();
          v38 = Value[1];
          v175 = *Value;
          v176 = v38;
          v39 = Value[4];
          v41 = Value[2];
          v40 = Value[3];
          v180 = Value[5];
          v179 = v39;
          v177 = v41;
          v178 = v40;
          v42 = Value[8];
          v44 = Value[6];
          v43 = Value[7];
          v184 = Value[9];
          v183 = v42;
          v181 = v44;
          v182 = v43;
          v45 = Value[12];
          v47 = Value[10];
          v46 = Value[11];
          v188 = Value[13];
          v187 = v45;
          v185 = v47;
          v186 = v46;
          v189 = v124;
          v190 = v120;
          v191 = v118;
          v192 = v116;
          v193 = v114;
          v194 = v112;
          v195 = v122;
          v172 = v114;
          v173 = v112;
          v174 = v122;
          v169 = v120;
          v171 = v116;
          v170 = v118;
          v165 = v179;
          v166 = v180;
          v167 = v181;
          v168 = v124;
          v161 = v175;
          v162 = v176;
          v163 = v177;
          v164 = v178;
          outlined init with copy of SwipeActions.Value(&v175, &v147);
          outlined init with copy of TabItem?(&v175, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
          outlined init with copy of TabItem?(&v182, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
          outlined init with copy of TabItem?(&v189, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
          static SwipeActions.Configuration.reduce(_:_:)(&v168, &v161, &v147);
          v200 = v165;
          v201 = v166;
          v202 = v167;
          v196 = v161;
          v197 = v162;
          v199 = v164;
          v198 = v163;
          v48 = MEMORY[0x1E69E6720];
          outlined destroy of Binding<Visibility>(&v196, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
          v207 = v172;
          v208 = v173;
          v209 = v174;
          v203 = v168;
          v204 = v169;
          v206 = v171;
          v205 = v170;
          outlined destroy of Binding<Visibility>(&v203, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v48);
          v106 = v147;
          v107 = v149;
          v108 = v148;
          v110 = v150;
          v111 = v152;
          v109 = v151;
          v105 = v153;
          v210 = v124;
          v211 = v120;
          v212 = v118;
          v213 = v116;
          v214 = v114;
          v215 = v112;
          v216 = v122;
          outlined destroy of Binding<Visibility>(&v210, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v48);
          v217 = v138;
          v218 = v136;
          v219 = v134;
          v220 = v132;
          v221 = v130;
          v222 = v128;
          v223 = v126;
          v172 = v130;
          v173 = v128;
          v174 = v126;
          v169 = v136;
          v171 = v132;
          v170 = v134;
          v165 = v186;
          v166 = v187;
          v167 = v188;
          v168 = v138;
          v161 = v182;
          v162 = v183;
          v163 = v184;
          v164 = v185;
          outlined init with copy of TabItem?(&v217, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
          static SwipeActions.Configuration.reduce(_:_:)(&v168, &v161, &v147);
          outlined destroy of SwipeActions.Value(&v175);
          v228 = v165;
          v229 = v166;
          v230 = v167;
          v224 = v161;
          v225 = v162;
          v227 = v164;
          v226 = v163;
          outlined destroy of Binding<Visibility>(&v224, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v48);
          v235 = v172;
          v236 = v173;
          v237 = v174;
          v231 = v168;
          v232 = v169;
          v234 = v171;
          v233 = v170;
          outlined destroy of Binding<Visibility>(&v231, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v48);
          v98 = v148;
          v99 = v147;
          v101 = v150;
          v102 = v149;
          v100 = v151;
          v103 = v152;
          v104 = v153;
          v140 = v138;
          v141 = v136;
          v142 = v134;
          v143 = v132;
          v144 = v130;
          v145 = v128;
          v146 = v126;
          outlined destroy of Binding<Visibility>(&v140, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v48);
          if (v8 == v25)
          {
            goto LABEL_44;
          }

          v9 = 0;
          v15 = v105;
          v23 = v106;
          v11 = v107;
          v10 = v108;
          v13 = v109;
          v12 = v110;
          v14 = v111;
          v17 = v98;
          v16 = v99;
          v19 = v101;
          v18 = v102;
          v20 = v100;
          v21 = v103;
          v22 = v104;
        }

        v26 = AGGraphGetValue();
        v27 = v26[1];
        v147 = *v26;
        v148 = v27;
        v28 = v26[2];
        v29 = v26[3];
        v30 = v26[5];
        v151 = v26[4];
        v152 = v30;
        v149 = v28;
        v150 = v29;
        v31 = v26[6];
        v32 = v26[7];
        v33 = v26[9];
        v155 = v26[8];
        v156 = v33;
        v153 = v31;
        v154 = v32;
        v34 = v26[10];
        v35 = v26[11];
        v36 = v26[13];
        v159 = v26[12];
        v160 = v36;
        v157 = v34;
        v158 = v35;
        v175 = v124;
        v176 = v120;
        v177 = v118;
        v178 = v116;
        v179 = v114;
        v180 = v112;
        v181 = v122;
        v182 = v138;
        v183 = v136;
        v184 = v134;
        v185 = v132;
        v186 = v130;
        v187 = v128;
        v188 = v126;
        outlined init with copy of SwipeActions.Value(&v147, &v140);
        outlined destroy of SwipeActions.Value(&v175);
        v23 = v147;
        v10 = v148;
        v11 = v149;
        v12 = v150;
        v13 = v151;
        v14 = v152;
        v15 = v153;
        v16 = v154;
        v17 = v155;
        v18 = v156;
        v19 = v157;
        v20 = v158;
        v21 = v159;
        v22 = v160;
        if (v8 != v25)
        {
          v9 = 0;
          continue;
        }

        break;
      }

      v136 = v155;
      v138 = v154;
      v132 = v157;
      v134 = v156;
      v128 = v159;
      v130 = v158;
      v124 = v147;
      v126 = v160;
      v120 = v148;
      v122 = v153;
      v116 = v150;
      v118 = v149;
      v112 = v152;
      v114 = v151;
    }

    else
    {

      v122 = 0u;
      v124 = 0u;
      v118 = 0u;
      v120 = 0u;
      v114 = 0u;
      v116 = 0u;
      v112 = 0u;
      v136 = 0u;
      v138 = 0u;
      v132 = 0u;
      v134 = 0u;
      v128 = 0u;
      v130 = 0u;
      v126 = 0u;
    }

LABEL_37:
    AGGraphSetUpdate();
    static Update.end()();
    v176 = v120;
    v175 = v124;
    v178 = v116;
    v177 = v118;
    v180 = v112;
    v179 = v114;
    v182 = v138;
    v181 = v122;
    v184 = v134;
    v183 = v136;
    v186 = v130;
    v185 = v132;
    v188 = v126;
    v187 = v128;
    outlined init with copy of TabItem?(&v182, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
    outlined destroy of SwipeActions.Value(&v175);
    v96 = *(&v183 + 1);
    *&v141 = v183;
    v140 = v182;
    v149 = v186;
    v150 = v187;
    v151 = v188;
    v147 = v184;
    v148 = v185;
    if (*(&v183 + 1))
    {
LABEL_38:
      v175 = v140;
      *&v176 = v141;
      v179 = v149;
      v180 = v150;
      v181 = v151;
      v178 = v148;
      v177 = v147;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISwipeActionsConfiguration);
      *(&v176 + 1) = v96;
      return specialized UISwipeActionsConfiguration.init(configuration:graphHost:performDestructiveAction:)(&v175, 0, closure #1 in closure #1 in TabItem.swipeActionsConfiguration(for:), 0);
    }
  }

  else
  {
    *&v147 = *(v1 + 96);
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    *&v140 = static SwipeActions.TraitKey.defaultValue;
    v49 = ViewTraitCollection.value<A>(for:defaultValue:)();
    v50 = v175;
    MEMORY[0x18D00ABE0](v49);
    v244 = 0u;
    v243 = 0u;
    v242 = 0u;
    v241 = 0u;
    v240 = 0u;
    v239 = 0u;
    v238 = 0u;
    v51 = MEMORY[0x1E69E6720];
    outlined destroy of Binding<Visibility>(&v238, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
    v245 = 0u;
    v246 = 0u;
    v247 = 0u;
    v248 = 0u;
    v249 = 0u;
    v250 = 0u;
    v251 = 0u;
    outlined destroy of Binding<Visibility>(&v245, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v51);
    AGGraphClearUpdate();
    v52 = *(v175 + 16);
    if (v52)
    {
      v53 = 0;
      v54 = *MEMORY[0x1E698D3F8];
      v55 = v52 - 1;
      v56 = 1;
      v57 = 0uLL;
      v58 = 0uLL;
      v59 = 0uLL;
      v60 = 0uLL;
      v61 = 0uLL;
      v62 = 0uLL;
      v63 = 0uLL;
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      v67 = 0uLL;
      v68 = 0uLL;
      v69 = 0uLL;
      v70 = 0uLL;
      while (2)
      {
        if (v53 <= *(v50 + 16))
        {
          v71 = *(v50 + 16);
        }

        else
        {
          v71 = v53;
        }

        v72 = v53;
        v137 = v64;
        v139 = v63;
        v133 = v66;
        v135 = v65;
        v129 = v68;
        v131 = v67;
        v125 = v70;
        v127 = v69;
        v121 = v57;
        v123 = v62;
        v117 = v59;
        v119 = v58;
        v113 = v61;
        v115 = v60;
        while (1)
        {
          if (v71 == v72)
          {
LABEL_43:
            __break(1u);
LABEL_44:

            v118 = v107;
            v120 = v108;
            v122 = v105;
            v124 = v106;
            v114 = v109;
            v116 = v110;
            v112 = v111;
            v136 = v98;
            v138 = v99;
            v132 = v101;
            v134 = v102;
            v128 = v103;
            v130 = v100;
            v126 = v104;
            goto LABEL_37;
          }

          v53 = v72 + 1;
          if (AGWeakAttributeGetAttribute() != v54)
          {
            break;
          }

          ++v72;
          if (v52 == v53)
          {

            goto LABEL_40;
          }
        }

        if (v56)
        {
          v73 = AGGraphGetValue();
          v74 = v73[1];
          v147 = *v73;
          v148 = v74;
          v75 = v73[2];
          v76 = v73[3];
          v77 = v73[5];
          v151 = v73[4];
          v152 = v77;
          v149 = v75;
          v150 = v76;
          v78 = v73[6];
          v79 = v73[7];
          v80 = v73[9];
          v155 = v73[8];
          v156 = v80;
          v153 = v78;
          v154 = v79;
          v81 = v73[10];
          v82 = v73[11];
          v83 = v73[13];
          v159 = v73[12];
          v160 = v83;
          v157 = v81;
          v158 = v82;
          v175 = v125;
          v176 = v121;
          v177 = v119;
          v178 = v117;
          v179 = v115;
          v180 = v113;
          v181 = v123;
          v182 = v139;
          v183 = v137;
          v184 = v135;
          v185 = v133;
          v186 = v131;
          v187 = v129;
          v188 = v127;
          outlined init with copy of SwipeActions.Value(&v147, &v140);
          outlined destroy of SwipeActions.Value(&v175);
          v70 = v147;
          v57 = v148;
          v58 = v149;
          v59 = v150;
          v60 = v151;
          v61 = v152;
          v62 = v153;
          v63 = v154;
          v64 = v155;
          v65 = v156;
          v66 = v157;
          v67 = v158;
          v68 = v159;
          v69 = v160;
          if (v55 != v72)
          {
            v56 = 0;
            continue;
          }

          v137 = v155;
          v139 = v154;
          v133 = v157;
          v135 = v156;
          v129 = v159;
          v131 = v158;
          v125 = v147;
          v127 = v160;
          v121 = v148;
          v123 = v153;
          v117 = v150;
          v119 = v149;
          v113 = v152;
          v115 = v151;
        }

        else
        {
          v84 = AGGraphGetValue();
          v85 = v84[1];
          v175 = *v84;
          v176 = v85;
          v86 = v84[4];
          v88 = v84[2];
          v87 = v84[3];
          v180 = v84[5];
          v179 = v86;
          v177 = v88;
          v178 = v87;
          v89 = v84[8];
          v91 = v84[6];
          v90 = v84[7];
          v184 = v84[9];
          v183 = v89;
          v181 = v91;
          v182 = v90;
          v92 = v84[12];
          v94 = v84[10];
          v93 = v84[11];
          v188 = v84[13];
          v187 = v92;
          v185 = v94;
          v186 = v93;
          v189 = v125;
          v190 = v121;
          v191 = v119;
          v192 = v117;
          v193 = v115;
          v194 = v113;
          v195 = v123;
          v172 = v115;
          v173 = v113;
          v174 = v123;
          v169 = v121;
          v171 = v117;
          v170 = v119;
          v165 = v179;
          v166 = v180;
          v167 = v181;
          v168 = v125;
          v161 = v175;
          v162 = v176;
          v163 = v177;
          v164 = v178;
          outlined init with copy of SwipeActions.Value(&v175, &v147);
          outlined init with copy of TabItem?(&v175, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
          outlined init with copy of TabItem?(&v182, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
          outlined init with copy of TabItem?(&v189, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
          static SwipeActions.Configuration.reduce(_:_:)(&v168, &v161, &v147);
          v200 = v165;
          v201 = v166;
          v202 = v167;
          v196 = v161;
          v197 = v162;
          v199 = v164;
          v198 = v163;
          v95 = MEMORY[0x1E69E6720];
          outlined destroy of Binding<Visibility>(&v196, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
          v207 = v172;
          v208 = v173;
          v209 = v174;
          v203 = v168;
          v204 = v169;
          v206 = v171;
          v205 = v170;
          outlined destroy of Binding<Visibility>(&v203, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v95);
          v106 = v147;
          v107 = v149;
          v108 = v148;
          v110 = v150;
          v111 = v152;
          v109 = v151;
          v105 = v153;
          v210 = v125;
          v211 = v121;
          v212 = v119;
          v213 = v117;
          v214 = v115;
          v215 = v113;
          v216 = v123;
          outlined destroy of Binding<Visibility>(&v210, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v95);
          v217 = v139;
          v218 = v137;
          v219 = v135;
          v220 = v133;
          v221 = v131;
          v222 = v129;
          v223 = v127;
          v172 = v131;
          v173 = v129;
          v174 = v127;
          v169 = v137;
          v171 = v133;
          v170 = v135;
          v165 = v186;
          v166 = v187;
          v167 = v188;
          v168 = v139;
          v161 = v182;
          v162 = v183;
          v163 = v184;
          v164 = v185;
          outlined init with copy of TabItem?(&v217, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
          static SwipeActions.Configuration.reduce(_:_:)(&v168, &v161, &v147);
          outlined destroy of SwipeActions.Value(&v175);
          v228 = v165;
          v229 = v166;
          v230 = v167;
          v224 = v161;
          v225 = v162;
          v227 = v164;
          v226 = v163;
          outlined destroy of Binding<Visibility>(&v224, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v95);
          v235 = v172;
          v236 = v173;
          v237 = v174;
          v231 = v168;
          v232 = v169;
          v234 = v171;
          v233 = v170;
          outlined destroy of Binding<Visibility>(&v231, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v95);
          v98 = v148;
          v99 = v147;
          v101 = v150;
          v102 = v149;
          v100 = v151;
          v103 = v152;
          v104 = v153;
          v140 = v139;
          v141 = v137;
          v142 = v135;
          v143 = v133;
          v144 = v131;
          v145 = v129;
          v146 = v127;
          outlined destroy of Binding<Visibility>(&v140, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v95);
          if (v55 != v72)
          {
            v56 = 0;
            v62 = v105;
            v70 = v106;
            v58 = v107;
            v57 = v108;
            v60 = v109;
            v59 = v110;
            v61 = v111;
            v64 = v98;
            v63 = v99;
            v66 = v101;
            v65 = v102;
            v67 = v100;
            v68 = v103;
            v69 = v104;
            continue;
          }

          v119 = v107;
          v121 = v108;
          v123 = v105;
          v125 = v106;
          v115 = v109;
          v117 = v110;
          v113 = v111;
          v137 = v98;
          v139 = v99;
          v133 = v101;
          v135 = v102;
          v129 = v103;
          v131 = v100;
          v127 = v104;
        }

        break;
      }
    }

    else
    {

      v123 = 0u;
      v125 = 0u;
      v119 = 0u;
      v121 = 0u;
      v115 = 0u;
      v117 = 0u;
      v113 = 0u;
      v137 = 0u;
      v139 = 0u;
      v133 = 0u;
      v135 = 0u;
      v129 = 0u;
      v131 = 0u;
      v127 = 0u;
    }

LABEL_40:
    AGGraphSetUpdate();
    static Update.end()();
    v176 = v121;
    v175 = v125;
    v178 = v117;
    v177 = v119;
    v180 = v113;
    v179 = v115;
    v182 = v139;
    v181 = v123;
    v184 = v135;
    v183 = v137;
    v186 = v131;
    v185 = v133;
    v188 = v127;
    v187 = v129;
    outlined init with copy of TabItem?(&v175, &v147, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
    outlined destroy of SwipeActions.Value(&v175);
    v96 = *(&v176 + 1);
    *&v141 = v176;
    v140 = v175;
    v149 = v179;
    v150 = v180;
    v151 = v181;
    v147 = v177;
    v148 = v178;
    if (*(&v176 + 1))
    {
      goto LABEL_38;
    }
  }

  return 0;
}

UIContextMenuConfiguration_optional __swiftcall TabItem.menuConfiguration()()
{
  v1 = type metadata accessor for TabContextMenuKey.Storage.Guts(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TabContextMenuKey.Storage?(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformItemList.Item?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlatformItemList.Item();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = *(v0 + 96);
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, static TabContextMenuKey.defaultValue);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v15 = type metadata accessor for TabContextMenuKey.Storage(0);
  if ((*(*(v15 - 8) + 48))(v7, 1, v15) == 1)
  {
    outlined destroy of Binding<TabViewCustomization>(v7, type metadata accessor for TabContextMenuKey.Storage?);
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_9:
    v16 = type metadata accessor for PlatformItemList.Item?;
    v17 = v10;
    goto LABEL_10;
  }

  outlined init with copy of (offset: Int, element: TabItem)(v7, v3, type metadata accessor for TabContextMenuKey.Storage.Guts);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of Binding<TabViewCustomization>(v3, type metadata accessor for TabContextMenuKey.Storage.Guts);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  else
  {
    _s7SwiftUI16PlatformItemListV0D0VWObTm_0(v3, v10, type metadata accessor for PlatformItemList.Item?);
  }

  outlined destroy of Binding<TabViewCustomization>(v7, type metadata accessor for TabContextMenuKey.Storage);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_9;
  }

  _s7SwiftUI16PlatformItemListV0D0VWObTm_0(v10, v14, type metadata accessor for PlatformItemList.Item);
  v20 = *(v14 + 117);
  if (v20)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v22 = objc_opt_self();
    aBlock[4] = partial apply for closure #1 in TabItem.menuConfiguration();
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
    aBlock[3] = &block_descriptor_28;
    v23 = _Block_copy(aBlock);

    v24 = [v22 configurationWithIdentifier:0 previewProvider:0 actionProvider:v23];

    _Block_release(v23);
    [v24 setPreferredMenuElementOrder_];
    outlined destroy of Binding<TabViewCustomization>(v14, type metadata accessor for PlatformItemList.Item);
    v19 = v24;
    goto LABEL_14;
  }

  v16 = type metadata accessor for PlatformItemList.Item;
  v17 = v14;
LABEL_10:
  outlined destroy of Binding<TabViewCustomization>(v17, v16);
  v19 = 0;
LABEL_14:
  result.value.super.isa = v19;
  result.is_nil = v18;
  return result;
}

void closure #1 in TabItem.menuConfiguration()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  v6 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v8 = MEMORY[0x1E69E7CC8];
  v5[8] = 0;
  *(v5 + 2) = v8;
  *(v5 + 3) = v7;
  *(v5 + 4) = v6;
  *(v5 + 5) = v8;
  v5[48] = 0;
  type metadata accessor for (offset: Int, element: TabItem)?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
  v9 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
  v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18CD63400;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v9, static MenuVisitor.MenuStackGroup.empty);
  outlined init with copy of (offset: Int, element: TabItem)(v12, v11 + v10, type metadata accessor for MenuVisitor.MenuStackGroup);
  *(v5 + 7) = v11;
  v13 = *(v3 + 32);
  v14 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  *v5 = 0;
  MenuVisitor.visit(_:uniqueNames:)(a2, &v20);

  v15 = *(v5 + 4);

  outlined destroy of Binding<TabViewCustomization>(v5, type metadata accessor for MenuVisitor);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v21.value.super.isa = 0;
  v21.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v17, v16, 0, v21, 0, 0xFFFFFFFFFFFFFFFFLL, v15, v18);
}

BOOL TabItem.visibleInSidebar(customization:)(uint64_t a1)
{
  v2 = type metadata accessor for TabViewCustomization();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Binding<TabViewCustomization>(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of (offset: Int, element: TabItem)(a1, v7, type metadata accessor for Binding<TabViewCustomization>?);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    outlined destroy of Binding<TabViewCustomization>(v7, type metadata accessor for Binding<TabViewCustomization>?);
    v27 = 1;
    v13 = TabItem.clientDefaultVisibility(for:)(&v27) >= 2u;
  }

  else
  {
    _s7SwiftUI16PlatformItemListV0D0VWObTm_0(v7, v12, type metadata accessor for Binding<TabViewCustomization>);
    v14 = TabItem.resolvedCustomizationID.getter();
    v16 = v15;
    v18 = v17;
    MEMORY[0x18D00ACC0](v9);
    v19 = *&v4[*(v2 + 20)];
    if (*(v19 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v16, v18 & 1), (v21 & 1) != 0))
    {
      v22 = *(*(v19 + 56) + 2 * v20);
      outlined consume of TabCustomizationID.Base();
      if (v22)
      {
        outlined destroy of Binding<TabViewCustomization>(v4, type metadata accessor for TabViewCustomization);
        outlined destroy of Binding<TabViewCustomization>(v12, type metadata accessor for Binding<TabViewCustomization>);
        return v22 == 1;
      }
    }

    else
    {
      outlined consume of TabCustomizationID.Base();
    }

    outlined destroy of Binding<TabViewCustomization>(v4, type metadata accessor for TabViewCustomization);
    v26 = 1;
    v24 = TabItem.clientDefaultVisibility(for:)(&v26);
    outlined destroy of Binding<TabViewCustomization>(v12, type metadata accessor for Binding<TabViewCustomization>);
    v13 = v24 >= 2;
  }

  return !v13;
}

uint64_t TabItem.tabPlacement(customization:)(uint64_t a1)
{
  v2 = TabItem.sidebarOnly.getter();
  v11 = 0;
  v3 = TabItem.clientDefaultVisibility(for:)(&v11);
  type metadata accessor for Binding<TabViewCustomization>(0);
  v5 = (*(*(v4 - 8) + 48))(a1, 1, v4) != 1;
  TabItem.resolvedUIKitTopBarCustomizationBehavior(customizationEnabled:)(v5);
  v6 = qword_18CD9BC40[v10];
  v7 = TabItem.pinned.getter();
  v8 = 2;
  if (v3 != 2)
  {
    v8 = v6;
  }

  if (v7)
  {
    v8 = 4;
  }

  if (v2)
  {
    return 6;
  }

  else
  {
    return v8;
  }
}

void UIKitTabBarController.updateTabBarToConfiguration(_:transaction:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  v6 = [v1 tabBar];
  [v6 setSpringLoaded_];

  v7 = qword_18CD9BC58[v4];
  if (v7 != [v2 tabBarMinimizeBehavior])
  {
    [v2 setTabBarMinimizeBehavior_];
  }

  if (v5)
  {
    swift_retain_n();
    v8 = AnyView.init<A>(_:)();
    v9 = *&v2[OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_bottomAccessoryHost];
    if (v9)
    {
      v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x60);
      swift_beginAccess();
      *(v9 + v10) = v8;
      v11 = v9;

      _s7SwiftUI14_UIHostingViewCyAA7TabItemV04RootD0VGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView);
      lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView);
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
    }

    else
    {
      v13 = objc_allocWithZone(type metadata accessor for UIKitTabBarBottomAccessory());
      v14 = swift_retain_n();
      v15 = specialized _UIHostingView.init(rootView:)(v14);
      *(v15 + *((*MEMORY[0x1E69E7D40] & *v15) + 0x1C0) + 8) = &protocol witness table for UIKitTabBarBottomAccessory;
      swift_unknownObjectWeakAssign();
      v16 = v15;
      v17 = specialized _UIHostingView.base.getter();
      UIHostingViewBase.safeAreaRegions.setter();

      v18 = v16;
      v19 = Transaction.isAnimated.getter();
      v20 = [objc_allocWithZone(MEMORY[0x1E69DCFE8]) initWithContentView_];
      [v2 setBottomAccessory:v20 animated:v19 & 1];
    }
  }

  else
  {
    v12 = Transaction.isAnimated.getter() & 1;

    [v2 setBottomAccessory:0 animated:v12];
  }
}

uint64_t UIKitTabBarController.updateColorScheme(selectedHostVC:environment:)(uint64_t a1)
{
  v2 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v2);
  v3 = *(a1 + direct field offset for UIHostingController.host);
  _s7SwiftUI14_UIHostingViewCyAA7TabItemV04RootD0VGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView);
  lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView);
  v4 = v3;
  ViewGraphRootValueUpdater._preferenceValue<A>(_:)();

  if (v6 == 2)
  {
    EnvironmentValues.systemColorScheme.getter();
  }

  UIViewController.traitOverrides.getter();
  UIMutableTraits.userInterfaceStyle.setter();
  UIViewController.traitOverrides.setter();
  UIViewController.traitOverrides.getter();
  UIMutableTraits.userInterfaceStyle.setter();
  return UIViewController.traitOverrides.setter();
}

uint64_t closure #1 in UIHostingController.createBridgedTab(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    swift_unknownObjectRetain();
    PlatformItem.SelectionContent.select()();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TabHostingController.updateTabEnvironment(environment:coordinator:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for Logger?();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = [v3 traitCollection];
  v12 = [v11 userInterfaceIdiom];

  v42 = v9;
  v43 = v10;
  EnvironmentValues.horizontalSizeClass.getter();
  if (v12 > 4)
  {
    if (v12 == 5)
    {
      goto LABEL_13;
    }

    if (v12 == 6)
    {
      v15 = 3;
      v14 = 1;
      goto LABEL_16;
    }

LABEL_12:
    v14 = 0;
    v15 = 5;
    v16 = 1;
    goto LABEL_17;
  }

  if (!v12)
  {
LABEL_8:
    v14 = 0;
    v15 = 2;
    goto LABEL_16;
  }

  if (v12 != 1 || v40 == 2)
  {
    goto LABEL_12;
  }

  if ((v40 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  if (*(a2 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_isUIKitSidebarVisible))
  {
    v16 = 0;
    v15 = 1;
    v14 = 1;
    goto LABEL_17;
  }

  v14 = 0;
  v15 = 0;
LABEL_16:
  v16 = 0;
LABEL_17:
  v17 = direct field offset for UIHostingController.host;
  v18 = *&v3[direct field offset for UIHostingController.host];
  UIHostingViewBase.environmentOverride.getter();

  if (v40 == 1)
  {
    EnvironmentValues.init()();
    v19 = v43;
  }

  else
  {
    v19 = v41;
    v42 = v40;
    v43 = v41;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabBarPlacementKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TabBarPlacementKey> and conformance EnvironmentPropertyKey<A>();
  if (v19)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (v40 == 5)
  {
    if ((v16 & 1) == 0)
    {
LABEL_30:
      LOBYTE(v40) = v15;
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabBarPlacementKey>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<TabBarPlacementKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.subscript.setter();
      if (v19)
      {
        PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

        v20 = 1;
        goto LABEL_32;
      }

      v20 = 1;
      goto LABEL_34;
    }
  }

  else if ((v16 & 1) != 0 || v40 != v15)
  {
    goto LABEL_30;
  }

  v20 = 0;
  if (v19)
  {
LABEL_32:
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    goto LABEL_35;
  }

LABEL_34:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.getter();
LABEL_35:
  if (v14 == v40)
  {
    if ((v20 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    LOBYTE(v40) = v14;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v19)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  v37 = v14;
  v21 = v17;
  v22 = v38;
  static Log.tabView.getter();
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    outlined destroy of Binding<TabViewCustomization>(v22, type metadata accessor for Logger?);
  }

  else
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40 = v28;
      *v27 = 136315394;
      v39 = v15;
      type metadata accessor for Binding<Visibility>(0, &lazy cache variable for type metadata for TabBarPlacement.Placement?, &type metadata for TabBarPlacement.Placement, MEMORY[0x1E69E6720]);
      v29 = String.init<A>(describing:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v40);

      *(v27 + 4) = v31;
      *(v27 + 12) = 1024;
      *(v27 + 14) = v37;
      _os_log_impl(&dword_18BD4A000, v25, v26, "Updated tab environment to tabBarPlacement: %s showingSections\n%{BOOL}d", v27, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x18D0110E0](v28, -1, -1);
      v32 = v27;
      v22 = v38;
      MEMORY[0x18D0110E0](v32, -1, -1);
    }

    (*(v24 + 8))(v22, v23);
  }

  v33 = *&v3[v21];
  v40 = v42;
  v41 = v43;

  v34 = v33;

  UIHostingViewBase.environmentOverride.setter();

LABEL_46:
}

void TabHostingController.setChildRootViewCreatingHostIfNeeded(_:childID:transaction:coordinator:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v74 - v17);
  v19 = [v5 _uip_tabElement];
  if (v19)
  {
    v20 = v19;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v80 = v18;
      v86 = v6;
      v87 = a4;
      v82 = a1;
      v22 = a2;
      v84 = v20;
      v23 = [v21 identifier];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_groupHostCache;
      swift_beginAccess();
      v28 = v26;
      v29 = v24;
      v30 = *(a5 + v27);
      v31 = *(v30 + 16);
      v85 = a3;
      v88 = v28;
      v83 = a5;
      if (v31 && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v28), (v33 & 1) != 0))
      {
        v34 = (*(v30 + 56) + 32 * v32);
        v35 = v34[1];
        v36 = v34[2];
        v37 = v34[3];
        swift_endAccess();

        v38 = v22;
        v39 = specialized OrderedDictionary.subscript.getter(v22, a3, v35, v36, v37);
        if (v39)
        {
          v40 = v39;
          v77 = v37;
          v78 = v36;
          v41 = swift_dynamicCastClass();
          v42 = v86;
          if (v41)
          {
            v43 = v41;
            v81 = v29;
            v82 = v40;
            ObjectType = v35;
            v44 = v80;
            static Log.tabView.getter();
            v45 = type metadata accessor for Logger();
            v46 = *(v45 - 8);
            if ((*(v46 + 48))(v44, 1, v45) == 1)
            {
              outlined destroy of Binding<TabViewCustomization>(v44, type metadata accessor for Logger?);
            }

            else
            {
              v79 = v38;
              v65 = v85;

              v66 = v88;

              v67 = Logger.logObject.getter();
              v68 = static os_log_type_t.default.getter();

              v76 = v67;
              if (os_log_type_enabled(v67, v68))
              {
                v69 = swift_slowAlloc();
                v75 = swift_slowAlloc();
                v92[0] = v75;
                *v69 = 136315394;
                *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v65, v92);
                *(v69 + 12) = 2080;
                *(v69 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v66, v92);
                v70 = v68;
                v71 = v76;
                _os_log_impl(&dword_18BD4A000, v76, v70, "Using cached VC for child '%s' in group '%s'", v69, 0x16u);
                v72 = v75;
                swift_arrayDestroy();
                MEMORY[0x18D0110E0](v72, -1, -1);
                MEMORY[0x18D0110E0](v69, -1, -1);
              }

              else
              {
              }

              (*(v46 + 8))(v44, v45);
              v38 = v79;
            }

            v73 = v82;
            specialized TabViewCoordinator_Phone.didUseChild(_:childID:for:)(v38, v85, v81, v88);

LABEL_22:

            v92[0] = v43;
            v93 = 1;
            v64 = *&v42[direct field offset for UIHostingController.host];
            specialized _UIHostingView.setRootView(_:transaction:)(v92);

            outlined destroy of TabItem.RootView(v92);
            return;
          }

          a3 = v85;
LABEL_11:
          static Log.tabView.getter();
          v47 = type metadata accessor for Logger();
          v48 = *(v47 - 8);
          if ((*(v48 + 48))(v14, 1, v47) == 1)
          {
            outlined destroy of Binding<TabViewCustomization>(v14, type metadata accessor for Logger?);
            v49 = ObjectType;
          }

          else
          {
            v81 = v29;
            v79 = v38;

            v51 = v88;

            v52 = Logger.logObject.getter();
            v53 = static os_log_type_t.default.getter();

            v80 = v52;
            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              v92[0] = swift_slowAlloc();
              v55 = v92[0];
              *v54 = 136315394;
              v38 = v79;
              *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, a3, v92);
              *(v54 + 12) = 2080;
              *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v51, v92);
              v56 = v53;
              v57 = v80;
              _os_log_impl(&dword_18BD4A000, v80, v56, "Making new VC for child '%s' in group '%s'", v54, 0x16u);
              swift_arrayDestroy();
              v58 = v55;
              v42 = v86;
              MEMORY[0x18D0110E0](v58, -1, -1);
              MEMORY[0x18D0110E0](v54, -1, -1);
            }

            else
            {

              v38 = v79;
            }

            v49 = ObjectType;
            (*(v48 + 8))(v14, v47);
            v29 = v81;
          }

          outlined init with copy of TabItem.RootView(v82, v92);
          objc_allocWithZone(v49);
          outlined init with copy of TabItem.RootView(v92, v91);
          v59 = objc_allocWithZone(type metadata accessor for TabHostingController.HostingView(0));
          outlined init with copy of TabItem.RootView(v91, v90);
          v60 = specialized _UIHostingView.init(rootView:)(v90);
          outlined destroy of TabItem.RootView(v91);
          v61 = specialized UIHostingController.init(_hostingView:)(v60);
          outlined destroy of TabItem.RootView(v92);
          v43 = v61;
          v62._countAndFlagsBits = v38;
          v62._object = v85;
          v63._countAndFlagsBits = v29;
          v63._object = v88;
          TabViewCoordinator_Phone.cacheChild(_:childID:for:)(v43, v62, v63);
          goto LABEL_22;
        }
      }

      else
      {
        swift_endAccess();
        v38 = v22;
      }

      v42 = v86;
      goto LABEL_11;
    }
  }

  ObjectType = *&v6[direct field offset for UIHostingController.host];
  specialized _UIHostingView.setRootView(_:transaction:)(a1);
  v50 = ObjectType;
}

void type metadata accessor for (offset: Int, element: TabItem)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: TabItem))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: TabItem));
    }
  }
}

uint64_t outlined destroy of Binding<TabViewCustomization>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (offset: Int, element: TabItem)?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of Binding<Visibility>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for Binding<Visibility>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined init with copy of TabItem?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for Binding<Visibility>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TabViewAdaptationMode and conformance TabViewAdaptationMode()
{
  result = lazy protocol witness table cache variable for type TabViewAdaptationMode and conformance TabViewAdaptationMode;
  if (!lazy protocol witness table cache variable for type TabViewAdaptationMode and conformance TabViewAdaptationMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewAdaptationMode and conformance TabViewAdaptationMode);
  }

  return result;
}

uint64_t specialized static AdaptableTabView.extractTabs(_:)(uint64_t a1)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI8TabEntryOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_32:
    v30 = v43;
    static Log.tabView.getter();
    v31 = type metadata accessor for Logger();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {
      outlined destroy of Binding<TabViewCustomization>(v30, type metadata accessor for Logger?);
    }

    else
    {

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v61[0] = v36;
        *v35 = 136315138;
        v37 = specialized implicit closure #1 in static AdaptableTabView.extractTabs(_:)(v4);
        v44 = v4;
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v61);
        v4 = v44;

        *(v35 + 4) = v39;
        _os_log_impl(&dword_18BD4A000, v33, v34, "Extracted tabs:\n%s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x18D0110E0](v36, -1, -1);
        MEMORY[0x18D0110E0](v35, -1, -1);
      }

      (*(v32 + 8))(v43, v31);
    }

    return v4;
  }

  v7 = a1 + 32;
  v42 = 0x800000018CD45E10;
  while (1)
  {
    outlined init with copy of TabItem(v7, v63);
    v61[0] = v64;
    if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
    {
      v61[0] = v64;
      LOBYTE(v58) = 0;
      ViewTraitCollection.value<A>(for:defaultValue:)();
      if ((v60[0] & 1) == 0)
      {
        v61[0] = v64;
        LOBYTE(v58) = 0;
        ViewTraitCollection.value<A>(for:defaultValue:)();
        if ((v60[0] & 1) == 0)
        {
          break;
        }
      }
    }

    outlined destroy of TabItem(v63);
LABEL_4:
    v7 += 112;
    if (!--v6)
    {
      goto LABEL_32;
    }
  }

  outlined init with copy of TabItem(v63, v61);
  v62 = 0;
  outlined init with copy of TabEntry(v61, v60);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v9 = *(v4 + 2);
  v8 = *(v4 + 3);
  if (v9 >= v8 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v4);
  }

  *(v4 + 2) = v9 + 1;
  memcpy(&v4[288 * v9 + 32], v60, 0x119uLL);
  *&v60[0] = v65;
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  v12 = v11;
  *&v60[0] = v64;
  v13 = ViewTraitCollection.isAuxiliaryContent.getter();
  v44 = v4;
  if ((v13 & 1) == 0)
  {
    *&v48 = v64;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v56 = static TabOptions.TraitKey.defaultValue;
    v57[0] = unk_1EAB09380;
    *(v57 + 9) = *(&word_1EAB09388 + 1);
    v52 = static TabOptions.TraitKey.defaultValue;
    v53[0] = unk_1EAB09380;
    *(v53 + 9) = *(&word_1EAB09388 + 1);
    outlined init with copy of TabOptions(&v56, &v50);
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v58 = v52;
    v59[0] = v53[0];
    *(v59 + 9) = *(v53 + 9);
    outlined destroy of TabOptions(&v58);
    v60[0] = v54;
    v60[1] = v55[0];
    *(&v60[1] + 9) = *(v55 + 9);
    outlined destroy of TabOptions(v60);
    if (BYTE8(v60[2]))
    {
      if (TabItem.needsCustomizationIDForEnablement.getter())
      {
        v47 = v64;
        v50 = static TabOptions.TraitKey.defaultValue;
        v51[0] = unk_1EAB09380;
        *(v51 + 9) = *(&word_1EAB09388 + 1);
        v45 = static TabOptions.TraitKey.defaultValue;
        v46[0] = unk_1EAB09380;
        *(v46 + 9) = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v50, &v48);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v52 = v45;
        v53[0] = v46[0];
        *(v53 + 9) = *(v46 + 9);
        outlined destroy of TabOptions(&v52);
        v54 = v48;
        v55[0] = *v49;
        *(v55 + 9) = *&v49[9];
        v14 = *(&v48 + 1);
        v15 = *v49;
        v16 = v49[8];
        outlined copy of TabCustomizationID?(*(&v48 + 1), *&v55[0], SBYTE8(v55[0]));
        outlined destroy of TabOptions(&v54);
        if (v16 != 255)
        {

          v10 = v14;
          v12 = v15;
        }
      }
    }

    else
    {

      v10 = 0xD000000000000016;
      v12 = v42;
    }
  }

  outlined init with copy of TabEntry(v61, v60);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v58 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
  v20 = v5[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (!__OFADD__(v20, v21))
  {
    v23 = v18;
    if (v5[3] < v22)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_40;
      }

      v19 = v24;
      if ((v23 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_27:

      v5 = v58;
      outlined assign with take of TabEntry(v60, *(v58 + 56) + 288 * v19);
      outlined destroy of TabEntry(v61);
LABEL_31:
      outlined destroy of TabItem(v63);
      v4 = v44;
      goto LABEL_4;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v18)
      {
        goto LABEL_27;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v23)
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    v5 = v58;
    *(v58 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v26 = (v5[6] + 16 * v19);
    *v26 = v10;
    v26[1] = v12;
    memcpy((v5[7] + 288 * v19), v60, 0x119uLL);
    outlined destroy of TabEntry(v61);
    v27 = v5[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_39;
    }

    v5[2] = v29;
    goto LABEL_31;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized ItemIndexTabsOnlyIndexProjection.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v2[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v44 = v2 + 3;
  v2[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v4);
  v5 = v2 + 4;
  v2[2] = a1;
  v6 = *(a1 + 16);

  if (v6)
  {
    v7 = 0;
    v43 = 0;
    v45 = a1 + 32;
LABEL_3:
    v8 = v45 + 112 * v7;
    while (v7 < v6)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_35;
      }

      *v47 = v7;
      outlined init with copy of TabItem(v8, &v47[8]);
      if (!*&v48[8])
      {
        return v2;
      }

      v10 = *v47;
      *v47 = *&v47[8];
      *&v47[16] = *v48;
      *v48 = *&v48[8];
      *&v48[16] = *&v48[24];
      *&v48[32] = *&v48[40];
      *&v48[48] = *&v48[56];
      *&v48[64] = *&v49[0];
      v49[0] = *(v49 + 8);
      if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
      {
        ViewTraitCollection.value<A>(for:defaultValue:)();
        if ((v46 & 1) == 0)
        {
          ViewTraitCollection.value<A>(for:defaultValue:)();
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v11 = *v44;
          *v44 = 0x8000000000000000;
          v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
          v14 = v11[2];
          v15 = (v12 & 1) == 0;
          v16 = v14 + v15;
          if (!__OFADD__(v14, v15))
          {
            if (v11[3] >= v16)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v19 = v11;
                if ((v12 & 1) == 0)
                {
                  goto LABEL_19;
                }
              }

              else
              {
                v39 = v12;
                specialized _NativeDictionary.copy()();
                v19 = v11;
                if ((v39 & 1) == 0)
                {
                  goto LABEL_19;
                }
              }
            }

            else
            {
              v38 = v12;
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
              v17 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
              if ((v38 & 1) != (v18 & 1))
              {
                goto LABEL_41;
              }

              v13 = v17;
              v19 = v11;
              if ((v38 & 1) == 0)
              {
LABEL_19:
                v19[(v13 >> 6) + 8] |= 1 << v13;
                *(v19[6] + 8 * v13) = v10;
                *(v19[7] + 8 * v13) = v43;
                v20 = v19[2];
                v21 = __OFADD__(v20, 1);
                v22 = v20 + 1;
                if (v21)
                {
                  goto LABEL_39;
                }

                v19[2] = v22;
LABEL_21:
                *v44 = v19;
                swift_endAccess();
                swift_beginAccess();
                v23 = swift_isUniquelyReferenced_nonNull_native();
                v24 = *v5;
                v46 = *v5;
                *v5 = 0x8000000000000000;
                v25 = v43;
                v26 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
                v28 = v24[2];
                v29 = (v27 & 1) == 0;
                v21 = __OFADD__(v28, v29);
                v30 = v28 + v29;
                if (!v21)
                {
                  if (v24[3] < v30)
                  {
                    v41 = v27;
                    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, v23);
                    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
                    v32 = v31 & 1;
                    v27 = v41;
                    if ((v41 & 1) != v32)
                    {
                      goto LABEL_41;
                    }

LABEL_26:
                    v33 = v46;
                    if (v27)
                    {
                      goto LABEL_27;
                    }

LABEL_29:
                    v33[(v26 >> 6) + 8] |= 1 << v26;
                    *(v33[6] + 8 * v26) = v43;
                    *(v33[7] + 8 * v26) = v10;
                    v35 = v33[2];
                    v21 = __OFADD__(v35, 1);
                    v36 = v35 + 1;
                    if (!v21)
                    {
                      v33[2] = v36;
                      goto LABEL_31;
                    }

LABEL_40:
                    __break(1u);
LABEL_41:
                    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                    __break(1u);
                    return result;
                  }

                  if (v23)
                  {
                    goto LABEL_26;
                  }

                  v42 = v26;
                  v34 = v27;
                  specialized _NativeDictionary.copy()();
                  v26 = v42;
                  v33 = v46;
                  if ((v34 & 1) == 0)
                  {
                    goto LABEL_29;
                  }

LABEL_27:
                  *(v33[7] + 8 * v26) = v10;
LABEL_31:
                  *v5 = v33;
                  swift_endAccess();
                  outlined destroy of TabItem(v47);
                  ++v43;
                  if (!__OFADD__(v25, 1))
                  {
                    v7 = v9;
                    if (v9 != v6)
                    {
                      goto LABEL_3;
                    }

                    return v2;
                  }

LABEL_38:
                  __break(1u);
LABEL_39:
                  __break(1u);
                  goto LABEL_40;
                }

LABEL_37:
                __break(1u);
                goto LABEL_38;
              }
            }

            *(v19[7] + 8 * v13) = v43;
            goto LABEL_21;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      outlined destroy of TabItem(v47);
      ++v7;
      v8 += 112;
      if (v9 == v6)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  return v2;
}

uint64_t specialized static AdaptableTabView.makeIDToSelectionCache(items:selectionValueOnlyIncludesTabs:)(uint64_t a1, char a2)
{
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return v3;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 112)
  {
    outlined init with copy of TabItem(i, v53);
    if (a2)
    {
      *&v51 = v54;
      if (ViewTraitCollection.isAuxiliaryContent.getter() & 1) != 0 || (*&v51 = v54, LOBYTE(v47) = 0, ViewTraitCollection.value<A>(for:defaultValue:)(), (v49) || (*&v51 = v54, LOBYTE(v47) = 0, ViewTraitCollection.value<A>(for:defaultValue:)(), v49 == 1))
      {
        outlined destroy of TabItem(v53);
        goto LABEL_4;
      }
    }

    *&v51 = v55;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v7;
    *&v51 = v54;
    if (ViewTraitCollection.isAuxiliaryContent.getter())
    {
LABEL_10:
      v9 = v26;
      goto LABEL_20;
    }

    *&v40 = v54;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v47 = static TabOptions.TraitKey.defaultValue;
    v48[0] = unk_1EAB09380;
    *(v48 + 9) = *(&word_1EAB09388 + 1);
    v44 = static TabOptions.TraitKey.defaultValue;
    v45[0] = unk_1EAB09380;
    *(v45 + 9) = *(&word_1EAB09388 + 1);
    outlined init with copy of TabOptions(&v47, &v42);
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v49 = v44;
    v50[0] = v45[0];
    *(v50 + 9) = *(v45 + 9);
    outlined destroy of TabOptions(&v49);
    v51 = v45[2];
    *v52 = v46[0];
    *&v52[9] = *(v46 + 9);
    outlined destroy of TabOptions(&v51);
    if (v52[24])
    {
      *&v34 = v54;
      v40 = static TabOptions.TraitKey.defaultValue;
      v41[0] = unk_1EAB09380;
      *(v41 + 9) = *(&word_1EAB09388 + 1);
      v36 = static TabOptions.TraitKey.defaultValue;
      v37[0] = unk_1EAB09380;
      *(v37 + 9) = *(&word_1EAB09388 + 1);
      outlined init with copy of TabOptions(&v40, &v38);
      ViewTraitCollection.value<A>(for:defaultValue:)();
      v42 = v36;
      v43[0] = v37[0];
      *(v43 + 9) = *(v37 + 9);
      outlined destroy of TabOptions(&v42);
      v44 = v38;
      v45[0] = v39[0];
      *(v45 + 9) = *(v39 + 9);
      outlined destroy of TabOptions(&v44);
      if (BYTE10(v45[0]))
      {
        v34 = static TabOptions.TraitKey.defaultValue;
        v35[0] = unk_1EAB09380;
        *(v35 + 9) = *(&word_1EAB09388 + 1);
        v28 = static TabOptions.TraitKey.defaultValue;
        *v30 = unk_1EAB09380;
        *&v30[9] = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v34, &v32);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v36 = v28;
        v37[0] = *v30;
        *(v37 + 9) = *&v30[9];
        outlined destroy of TabOptions(&v36);
        v38 = v32;
        v39[0] = v33[0];
        *(v39 + 9) = *(v33 + 9);
        outlined destroy of TabOptions(&v38);
        if (BYTE9(v39[0]))
        {
          if ((TabItem.alwaysRequiresCustomizationID.getter() & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      v34 = static TabOptions.TraitKey.defaultValue;
      v35[0] = unk_1EAB09380;
      *(v35 + 9) = *(&word_1EAB09388 + 1);
      v29 = static TabOptions.TraitKey.defaultValue;
      *v31 = unk_1EAB09380;
      *&v31[9] = *(&word_1EAB09388 + 1);
      outlined init with copy of TabOptions(&v34, &v32);
      ViewTraitCollection.value<A>(for:defaultValue:)();
      v36 = v29;
      v37[0] = *v31;
      *(v37 + 9) = *&v31[9];
      outlined destroy of TabOptions(&v36);
      v38 = v32;
      v39[0] = v33[0];
      *(v39 + 9) = *(v33 + 9);
      v9 = *(&v32 + 1);
      v10 = *&v33[0];
      v11 = BYTE8(v33[0]);
      outlined copy of TabCustomizationID?(*(&v32 + 1), *&v33[0], SBYTE8(v33[0]));
      outlined destroy of TabOptions(&v38);
      if (v11 == 255)
      {
        goto LABEL_10;
      }

      v8 = v10;
    }

    else
    {

      v9 = 0xD000000000000016;
      v8 = 0x800000018CD45E10;
    }

LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v51 = v3;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
    v15 = v3[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v13;
    if (v3[3] >= v17)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v13 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if ((v18 & 1) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_38;
      }

      v14 = v19;
      if ((v18 & 1) == 0)
      {
LABEL_30:
        v3 = v51;
        *(v51 + 8 * (v14 >> 6) + 64) |= 1 << v14;
        v21 = (v3[6] + 16 * v14);
        *v21 = v9;
        v21[1] = v8;
        *(v3[7] + 8 * v14) = v5;
        v22 = v3[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_37;
        }

        v3[2] = v24;
        goto LABEL_32;
      }
    }

    v3 = v51;
    *(*(v51 + 56) + 8 * v14) = v5;
LABEL_32:
    outlined destroy of TabItem(v53);
    v23 = __OFADD__(v5++, 1);
    if (v23)
    {
      __break(1u);
      return v3;
    }

LABEL_4:
    if (!--v4)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void type metadata accessor for (header: TabItem?, children: [TabEntry], actions: [TabItem], compactItem: TabItem?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (header: TabItem?, children: [TabEntry], actions: [TabItem], compactItem: TabItem?))
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Binding<Visibility>(255, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
    v1 = MEMORY[0x1E69E62F8];
    type metadata accessor for Binding<Visibility>(255, &lazy cache variable for type metadata for [TabEntry], &type metadata for TabEntry, MEMORY[0x1E69E62F8]);
    type metadata accessor for Binding<Visibility>(255, &lazy cache variable for type metadata for [TabItem], &type metadata for TabItem, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (header: TabItem?, children: [TabEntry], actions: [TabItem], compactItem: TabItem?));
    }
  }
}

uint64_t outlined assign with copy of TabItem?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<Visibility>(0, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TabBarPlacementKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabBarPlacementKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabBarPlacementKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabBarPlacementKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabBarPlacementKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined init with copy of (offset: Int, element: TabItem)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI14_UIHostingViewCyAA7TabItemV04RootD0VGMaTm_0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized UIKitTabBarController.updateSidebarToConfiguration(coordinator:customization:transaction:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v85 = (&v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TabViewCustomization();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v84 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 16);
  v91[0] = *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration);
  v91[1] = v13;
  v15 = *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration);
  v14 = *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 16);
  v92[0] = *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 32);
  *(v92 + 9) = *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 41);
  v88 = v15;
  v89 = v14;
  v90[0] = *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 32);
  *(v90 + 9) = *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 41);
  outlined init with copy of TabSidebarConfiguration(v91, v87);
  v16.value = TabSidebarConfiguration.sidebarVisible()().value;
  v86 = v2;
  if (v16.value != 2)
  {
    value = v16.value;
    v18 = [v3 sidebar];
    v19 = [v18 isHidden];

    v20 = v19 ^ value;
    v3 = v86;
    if ((v20 & 1) == 0)
    {
      v21 = [v86 sidebar];
      [v21 setHidden_];
    }
  }

  v22 = [v3 mode] == 2;
  v23 = [v3 sidebar];
  v24 = [v23 isHidden];

  *(a1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_isUIKitSidebarVisible) = v22 & ~v24;
  type metadata accessor for Binding<TabViewCustomization>(0);
  v26 = v25;
  v27 = *(*(v25 - 8) + 48);
  v28 = v27(a2, 1, v25);
  v29 = [v3 _uip_sidebar];
  v30 = [v29 _isEditable];

  v31 = (v28 != 1) == v30;
  v32 = v86;
  if (!v31)
  {
    v33 = [v86 _uip_sidebar];
    [v33 _setEditable_];
  }

  outlined init with copy of (offset: Int, element: TabItem)(a2, v12, type metadata accessor for Binding<TabViewCustomization>?);
  if (v27(v12, 1, v26) == 1)
  {
    outlined destroy of Binding<TabViewCustomization>(v12, type metadata accessor for Binding<TabViewCustomization>?);
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v36 = v84;
    MEMORY[0x18D00ACC0](v26);
    outlined destroy of Binding<TabViewCustomization>(v12, type metadata accessor for Binding<TabViewCustomization>);
    v34 = UUID.uuidString.getter();
    v35 = v37;
    outlined destroy of Binding<TabViewCustomization>(v36, type metadata accessor for TabViewCustomization);
  }

  v38 = v85;
  v39 = [v32 customizationIdentifier];
  if (v39)
  {
    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (!v35)
    {
      if (!v43)
      {
        goto LABEL_32;
      }

      v44 = 1;
      goto LABEL_22;
    }

    if (v43)
    {
      if (v34 == v41 && v35 == v43)
      {

        goto LABEL_32;
      }

      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v45)
      {

        goto LABEL_32;
      }
    }
  }

  else if (!v35)
  {
    goto LABEL_32;
  }

  v44 = 0;
LABEL_22:
  static Log.tabView.getter();
  v46 = type metadata accessor for Logger();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v38, 1, v46) == 1)
  {
    outlined destroy of Binding<TabViewCustomization>(v38, type metadata accessor for Logger?);
  }

  else
  {

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    v85 = v48;
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v83 = v50;
      v84 = swift_slowAlloc();
      v87[0] = v84;
      *v50 = 136315138;
      *&v88 = v34;
      *(&v88 + 1) = v35;
      type metadata accessor for Binding<Visibility>(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);

      v51 = String.init<A>(describing:)();
      v53 = v34;
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v87);

      v55 = v83;
      *(v83 + 1) = v54;
      v34 = v53;
      v56 = v49;
      v57 = v85;
      v58 = v55;
      _os_log_impl(&dword_18BD4A000, v85, v56, "Updating sidebar customization id to\n%s", v55, 0xCu);
      v59 = v84;
      __swift_destroy_boxed_opaque_existential_1(v84);
      MEMORY[0x18D0110E0](v59, -1, -1);
      MEMORY[0x18D0110E0](v58, -1, -1);
    }

    else
    {
    }

    (*(v47 + 8))(v38, v46);
  }

  v32 = v86;
  if (v44)
  {
    v60 = 0;
  }

  else
  {
    v60 = MEMORY[0x18D00C850](v34, v35);
  }

  [v32 setCustomizationIdentifier_];

LABEL_32:
  v61 = *(&v92[0] + 1);
  v62 = *&v92[0];
  if (*&v92[0] == 1)
  {
    v63 = 0;
  }

  else
  {

    v63 = v62;
  }

  v64 = [v32 sidebar];
  if (v63)
  {
    type metadata accessor for UIHostingConfiguration<AnyView, EmptyView>();
    v66 = v65;
    *(&v89 + 1) = v65;
    *&v90[0] = lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type UIHostingConfiguration<AnyView, EmptyView> and conformance UIHostingConfiguration<A, B>, 255, type metadata accessor for UIHostingConfiguration<AnyView, EmptyView>);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v88);
    v68 = boxed_opaque_existential_1 + *(v66 + 56);
    *v68 = 1;

    MEMORY[0x18D007050](v69);
    *(v68 + 9) = 0;
    v68[80] = 1;
    *(v68 + 11) = 0;
    v68[96] = 1;
    *(v68 + 97) = 1;
    v70 = type metadata accessor for UIHostingConfigurationStorage(0);
    v71 = v70[9];
    v72 = type metadata accessor for UICellConfigurationState();
    (*(*(v72 - 8) + 56))(&v68[v71], 1, 1, v72);
    v68[v70[10]] = 0;
    *&v68[v70[11] + 8] = 0;
    swift_unknownObjectWeakInit();
    *boxed_opaque_existential_1 = v63;
    *v68 = 0;
  }

  else
  {
    *&v90[0] = 0;
    v88 = 0u;
    v89 = 0u;
  }

  UITabBarControllerSidebar.headerContentConfiguration.setter();

  if (v62 == 1)
  {
    v61 = 0;
  }

  else
  {
  }

  v73 = [v32 sidebar];
  if (v61)
  {
    type metadata accessor for UIHostingConfiguration<AnyView, EmptyView>();
    v75 = v74;
    *(&v89 + 1) = v74;
    *&v90[0] = lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type UIHostingConfiguration<AnyView, EmptyView> and conformance UIHostingConfiguration<A, B>, 255, type metadata accessor for UIHostingConfiguration<AnyView, EmptyView>);
    v76 = __swift_allocate_boxed_opaque_existential_1(&v88);
    v77 = v76 + *(v75 + 56);
    *v77 = 1;

    MEMORY[0x18D007050](v78);
    *(v77 + 9) = 0;
    v77[80] = 1;
    *(v77 + 11) = 0;
    v77[96] = 1;
    *(v77 + 97) = 1;
    v79 = type metadata accessor for UIHostingConfigurationStorage(0);
    v80 = v79[9];
    v81 = type metadata accessor for UICellConfigurationState();
    (*(*(v81 - 8) + 56))(&v77[v80], 1, 1, v81);
    v77[v79[10]] = 0;
    *&v77[v79[11] + 8] = 0;
    swift_unknownObjectWeakInit();
    *v76 = v61;
    *v77 = 0;
  }

  else
  {
    *&v90[0] = 0;
    v88 = 0u;
    v89 = 0u;
  }

  UITabBarControllerSidebar.footerContentConfiguration.setter();

  return outlined destroy of TabSidebarConfiguration(v91);
}

void type metadata accessor for UIHostingConfiguration<AnyView, EmptyView>()
{
  if (!lazy cache variable for type metadata for UIHostingConfiguration<AnyView, EmptyView>)
  {
    v0 = type metadata accessor for UIHostingConfiguration();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIHostingConfiguration<AnyView, EmptyView>);
    }
  }
}

void type metadata accessor for Binding<Visibility>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI14_UIHostingViewCyAA7TabItemV04RootD0VGMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for _UIHostingView();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for TabBarConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithCopy for TabBarConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for TabBarConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

Swift::Int __swiftcall DragReorderableDelegate.targetDropDestinationIndex(from:destinationIndex:)(Swift::Int_optional from, Swift::Int destinationIndex)
{
  return destinationIndex;
}

{
  return destinationIndex;
}

uint64_t type metadata accessor for DragReorderableChildResponder()
{
  result = type metadata singleton initialization cache for DragReorderableChildResponder;
  if (!type metadata singleton initialization cache for DragReorderableChildResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DragReorderableLayoutAdaptor.init(root:content:padding:contentTypes:spacing:delegate:containerID:placeholderID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15)
{
  (*(*(a14 - 8) + 32))(a9, a1, a14);
  v25 = type metadata accessor for DragReorderableLayoutAdaptor();
  (*(*(a15 - 8) + 32))(a9 + v25[17], a2, a15);
  v26 = (a9 + v25[18]);
  *v26 = a10;
  v26[1] = a11;
  v26[2] = a12;
  v26[3] = a13;
  *(a9 + v25[19]) = a3;
  v27 = a9 + v25[20];
  *v27 = a4;
  *(v27 + 8) = a5 & 1;
  result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(a6, a9 + v25[21]);
  *(a9 + v25[22]) = a7;
  *(a9 + v25[23]) = a8;
  return result;
}

uint64_t static DragReorderableLayoutView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v9 = *(a2 + 16);
  v41 = *(a2 + 32);
  v42 = v8;
  v10 = *(a2 + 48);
  v43 = *(a2 + 64);
  v11 = *(a2 + 16);
  v40[0] = *a2;
  v40[1] = v11;
  v36 = v41;
  v37 = v10;
  v38 = *(a2 + 64);
  v12 = *a1;
  v44 = *(a2 + 80);
  v39 = *(a2 + 80);
  v34 = v40[0];
  v35 = v9;
  LODWORD(v47[0]) = HIDWORD(v8);
  v32 = type metadata accessor for DragReorderableLayoutView.ChildTransform();
  WitnessTable = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(v40, &v49);
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Attribute<ViewTransform>, MEMORY[0x1E697E228], MEMORY[0x1E698D388]);
  v13 = MEMORY[0x1E69E73E0];
  v14 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v47, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_17, v31, v32, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  _ViewInputs.transform.setter();
  v29 = a3;
  v30 = a4;
  LODWORD(v49) = v12;
  type metadata accessor for DragReorderableLayoutView();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v17 = _GraphValue.value.getter();
  v18 = *MEMORY[0x1E698D3F8];
  *&v49 = __PAIR64__(HIDWORD(v37), v17);
  DWORD2(v49) = v18;
  Coordinator = type metadata accessor for DragReorderableLayoutView.MakeCoordinator();
  v28 = swift_getWitnessTable();
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for Attribute<DragReorderableLayoutCoordinator>, type metadata accessor for DragReorderableLayoutCoordinator, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v49, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_16, v26, Coordinator, v13, v19, v14, v20);
  v21 = v47[0];
  type metadata accessor for DragReorderableLayoutCore();
  *&v49 = __PAIR64__(v21, v17);
  type metadata accessor for DragReorderableLayoutView.MakeCore();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  v45[2] = v36;
  v45[3] = v37;
  v45[4] = v38;
  v46 = v39;
  v45[0] = v34;
  v45[1] = v35;
  v51 = v36;
  v52 = v37;
  v53 = v38;
  v54 = v39;
  v49 = v34;
  v50 = v35;
  outlined init with copy of _ViewInputs(v45, v47);
  swift_getWitnessTable();
  static View.makeDebuggableView(view:inputs:)();
  v47[2] = v51;
  v47[3] = v52;
  v47[4] = v53;
  v48 = v54;
  v47[0] = v49;
  v47[1] = v50;
  outlined destroy of _ViewInputs(v47);
  AGGraphMutateAttribute();
  v51 = v36;
  v52 = v37;
  v53 = v38;
  v54 = v39;
  v49 = v34;
  v50 = v35;
  result = outlined destroy of _ViewInputs(&v49);
  *a5 = v23;
  *(a5 + 8) = v24;
  *(a5 + 12) = v25;
  return result;
}

uint64_t closure #2 in static DragReorderableLayoutView._makeView(view:inputs:)(uint64_t a1)
{
  v2 = _ViewOutputs.viewResponders()();
  result = type metadata accessor for DragReorderableLayoutView.MakeCoordinator();
  *(a1 + 8) = v2;
  return result;
}

char **DragReorderableLayoutView.MakeCoordinator.updateValue()(uint64_t a1)
{
  v93 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *&v91 = swift_getAssociatedTypeWitness();
  *(&v91 + 1) = swift_getAssociatedTypeWitness();
  *v92 = swift_getAssociatedTypeWitness();
  *&v92[8] = swift_getAssociatedConformanceWitness();
  *&v92[16] = swift_getAssociatedConformanceWitness();
  *&v92[24] = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for DragReorderableLayoutAdaptor();
  v89 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v84 = (v69 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v82 = (v69 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v69 - v12;
  v14 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v85 = (v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v83 = (v69 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v69 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v69 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v69 - v26;
  v88 = type metadata accessor for DragReorderableLayoutCoordinator();
  OutputValue = AGGraphGetOutputValue();
  if (!OutputValue)
  {
    goto LABEL_11;
  }

  v29 = *OutputValue;
  v30 = *v1;
  v81 = *(v1 + 4);
  LODWORD(v80) = *(v1 + 8);

  LODWORD(v86) = v30;
  Value = AGGraphGetValue();
  v21 = (v14 + 16);
  v85 = *(v14 + 16);
  v85(v27, Value, v2);
  v24 = (v3 + 64);
  v84 = *(v3 + 64);
  v84(v2, v3);
  v32 = *(v14 + 8);
  v87 = v14 + 8;
  v82 = v32;
  v32(v27, v2);
  v33 = *&v13[v4[22]];
  v34 = v89 + 8;
  v83 = *(v89 + 8);
  v83(v13, v4);
  *(v29 + 16) = v33;

  result = AGGraphGetOutputValue();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v36 = *result;

  v37 = AGGraphGetValue();
  v85(v27, v37, v2);
  v84(v2, v3);
  v82(v27, v2);
  v38 = *&v13[v4[19]];

  v89 = v34;
  v83(v13, v4);
  *(v36 + 3) = v38;

  result = AGGraphGetOutputValue();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v39 = *result;

  v40 = AGGraphGetValue();
  v85(v27, v40, v2);
  v84(v2, v3);
  v82(v27, v2);
  v41 = &v13[v4[20]];
  v42 = *v41;
  v14 = v41[8];
  v83(v13, v4);
  *(v39 + 4) = v42;
  v39[40] = v14;

  result = AGGraphGetOutputValue();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = *result;

  v43 = AGGraphGetValue();
  v85(v27, v43, v2);
  v84(v2, v3);
  v82(v27, v2);
  outlined init with copy of _Benchmark(&v13[v4[21]], &v91);
  v83(v13, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v6 + 48));
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v91, (v6 + 48));
  swift_endAccess();

  result = AGGraphGetOutputValue();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2 = *result;
  if (*MEMORY[0x1E698D3F8] == v80)
  {
    v1 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v1 = v80;
  }

  *(v2 + 11) = AGCreateWeakAttribute();

  result = AGGraphGetOutputValue();
  if (result)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v78 = *v1;
  v81 = *(v1 + 4);
  v72 = v21;
  v44 = AGGraphGetValue();
  v86 = *(v14 + 16);
  v80 = v14 + 16;
  v86(v27, v44, v2);
  v73 = v6;
  v77 = *(v3 + 64);
  v77(v2, v3);
  v45 = *(v14 + 8);
  v45(v27, v2);
  v87 = v14 + 8;
  v71 = v45;
  v75 = *&v13[v4[22]];
  v70 = *(v89 + 8);
  v89 += 8;
  v70(v13, v4);
  v46 = AGGraphGetValue();
  v86(v24, v46, v2);
  v47 = v82;
  v48 = v3;
  v69[1] = v3 + 64;
  v79 = v3;
  v49 = v77;
  v77(v2, v48);
  v45(v24, v2);
  v74 = *&v47[v4[19]];

  v50 = v70;
  v76 = v4;
  v70(v47, v4);
  v51 = AGGraphGetValue();
  v52 = v72;
  v53 = v86;
  v86(v72, v51, v2);
  v54 = v84;
  v49(v2, v79);
  v55 = v71;
  v71(v52, v2);
  v56 = &v54[v76[20]];
  v82 = *v56;
  LODWORD(v72) = v56[8];
  v50(v54);
  v57 = AGGraphGetValue();
  v58 = v83;
  v53(v83, v57, v2);
  v59 = v73;
  v60 = v79;
  v77(v2, v79);
  v61 = v55;
  v55(v58, v2);
  v62 = v76;
  outlined init with copy of _Benchmark(&v59[v76[21]], v90);
  (v50)(v59, v62);
  v63 = AGGraphGetValue();
  v64 = v85;
  v86(v85, v63, v2);
  (*(v60 + 72))(&v91, v2, v60);
  v61(v64, v2);
  v65 = swift_allocObject();
  *(v65 + 32) = 0;
  *(v65 + 40) = 1;
  *(v65 + 152) = 0;
  *(v65 + 160) = 1;
  *(v65 + 168) = 0u;
  *(v65 + 184) = 0u;
  *(v65 + 200) = 0u;
  *(v65 + 216) = 1;
  *(v65 + 224) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI32DragReorderableLayoutCoordinator33_1B0CD5E46D60A3CA175732DDA089171CLLC10ChildFrameVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v65 + 232) = 0;
  v66 = v74;
  *(v65 + 16) = v75;
  *(v65 + 24) = v66;
  *(v65 + 32) = v82;
  *(v65 + 40) = v72;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v90, v65 + 48);
  v67 = *v92;
  *(v65 + 104) = v91;
  *(v65 + 120) = v67;
  *(v65 + 129) = *&v92[9];
  *(v65 + 88) = 0;
  *(v65 + 96) = 0;
  *&v90[0] = v65;
  AGGraphSetOutputValue();

  result = AGGraphGetOutputValue();
  if (result)
  {
LABEL_12:
    v68 = *result;

    *(v68 + 12) = AGCreateWeakAttribute();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t DragReorderableLayoutView.ChildTransform.transform.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
}

uint64_t DragReorderableLayoutView.ChildTransform.value.getter@<X0>(uint64_t a1@<X8>)
{
  DragReorderableLayoutView.ChildTransform.transform.getter(a1);
  lazy protocol witness table accessor for type ReorderableLayoutCoordinateSpace and conformance ReorderableLayoutCoordinateSpace();
  AnyHashable.init<A>(_:)();
  ViewTransform.appendCoordinateSpace(name:)();
  return outlined destroy of AnyHashable(v2);
}

uint64_t DragReorderableLayoutView.MakeCore.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v32 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  *&v36 = v8;
  *(&v36 + 1) = v9;
  v37 = AssociatedTypeWitness;
  v38 = AssociatedConformanceWitness;
  v39 = v11;
  v40 = v12;
  v13 = type metadata accessor for DragReorderableLayoutAdaptor();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v33 = &v32 - v14;
  v15 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v32 - v23;
  Value = AGGraphGetValue();
  v26 = *(v15 + 16);
  v26(v24, Value, a1);
  (*(a2 + 64))(a1, a2);
  v27 = *(v15 + 8);
  v27(v24, a1);
  AGGraphClearUpdate();
  closure #1 in DragReorderableLayoutView.MakeCore.value.getter(&v36);
  AGGraphSetUpdate();
  v32 = v36;
  v28 = AGGraphGetValue();
  v26(v21, v28, a1);
  (*(a2 + 72))(&v36, a1, a2);
  v27(v21, a1);
  v29 = AGGraphGetValue();
  v26(v18, v29, a1);
  v30 = v34;
  (*(a2 + 80))(a1, a2);
  v27(v18, a1);
  return DragReorderableLayoutCore.init(adaptor:coordinator:state:placeholder:)(v33, v32, &v36, v30, v35);
}

uint64_t closure #1 in DragReorderableLayoutView.MakeCore.value.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for DragReorderableLayoutCoordinator();
  *a1 = *AGGraphGetValue();
}

uint64_t DragReorderableLayoutCore.init(adaptor:coordinator:state:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for DragReorderableLayoutAdaptor();
  (*(*(v7 - 8) + 32))(a5, a1, v7);
  v8 = type metadata accessor for DragReorderableLayoutCore();
  *(a5 + v8[9]) = a2;
  v9 = (a5 + v8[10]);
  v10 = a3[1];
  *v9 = *a3;
  v9[1] = v10;
  *(v9 + 25) = *(a3 + 25);
  v11 = v8[11];
  v12 = type metadata accessor for Optional();
  return (*(*(v12 - 8) + 32))(a5 + v11, a4, v12);
}

uint64_t DragReorderableLayoutCore.state.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = *(v2 + 2);
  v5 = *(v2 + 24);
  v6 = *(v2 + 4);
  LOBYTE(v2) = *(v2 + 40);
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v2;
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v8);
  return v8;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance DragReorderableLayoutView<A>.MakeCore@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DragReorderableLayoutCore();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance DragReorderableLayoutView<A>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t DragReorderableLayoutCore.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v70 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>, MEMORY[0x1E697F960]);
  v67 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0> and conformance <> _ConditionalContent<A, B>();
  v65 = MEMORY[0x1E6981400];
  swift_getOpaqueTypeMetadata2();
  *&v62 = swift_getAssociatedTypeWitness();
  *&v61 = swift_getAssociatedConformanceWitness();
  v87 = v62;
  *&v88 = MEMORY[0x1E69E6530];
  *(&v88 + 1) = v61;
  *&v89 = MEMORY[0x1E69E6540];
  type metadata accessor for IDView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  WitnessTable = swift_getWitnessTable();
  v95 = &protocol witness table for HiddenModifierAllowingViewResponders;
  v60 = MEMORY[0x1E697E858];
  v92 = swift_getWitnessTable();
  v93 = &protocol witness table for DragReorderableChildModifier;
  v91 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for DropPlaceholderListModifier();
  v44 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v44);
  v50 = &v43 - v3;
  v4 = swift_getAssociatedTypeWitness();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - v6;
  v47 = swift_getAssociatedConformanceWitness();
  v53 = *(v47 + 8);
  v45 = *(v53 + 8);
  v8 = type metadata accessor for _VariadicView.Tree();
  v54 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for ModifiedContent();
  v55 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v43 - v12;
  v13 = type metadata accessor for ModifiedContent();
  v57 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v43 - v14;
  _s7SwiftUI19ShadowRowCollectionVyAA22TableDataSourceAdaptorVGMaTm_0(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E69805E0]);
  v46 = type metadata accessor for ModifiedContent();
  v58 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v43 - v15;
  v16 = type metadata accessor for ModifiedContent();
  v59 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v56 = &v43 - v20;
  v21 = v69;
  (*(v5 + 16))(v7, v69, v4, v19);
  DragReorderableLayoutCore.children.getter(v70, v50);
  _VariadicView.Tree.init(root:content:)();
  v22 = AssociatedTypeWitness;
  v87 = v4;
  *&v88 = AssociatedTypeWitness;
  *(&v88 + 1) = v62;
  *&v89 = v47;
  v23 = AssociatedConformanceWitness;
  *(&v89 + 1) = AssociatedConformanceWitness;
  v90 = v61;
  v24 = (v21 + *(type metadata accessor for DragReorderableLayoutAdaptor() + 72));
  v25 = v24[1];
  v62 = *v24;
  v61 = v25;
  LOBYTE(v87) = static Edge.Set.all.getter();
  v89 = v61;
  v88 = v62;
  LOBYTE(v90) = 0;
  v83 = v22;
  v84 = v67;
  v85 = v23;
  v86 = v66;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = &protocol witness table for DropPlaceholderListModifier<A>;
  v26 = swift_getWitnessTable();
  v79 = v53;
  v80 = v26;
  v27 = swift_getWitnessTable();
  v28 = v49;
  MEMORY[0x18D00A570](&v87, v8, MEMORY[0x1E697E5E0], v27);
  (*(v54 + 8))(v10, v8);
  v77 = v27;
  v78 = MEMORY[0x1E697E5D8];
  v29 = swift_getWitnessTable();
  v30 = v51;
  MEMORY[0x18D00A570](v29, v11, &unk_1EFFBF2F0, v29);
  (*(v55 + 8))(v28, v11);
  v87 = 1;
  v75 = v29;
  v76 = &protocol witness table for ReorderableLayout;
  v31 = swift_getWitnessTable();
  lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  v32 = v48;
  View.contentShape<A>(_:_:eoFill:)();
  (*(v57 + 8))(v30, v13);
  v33 = *(v69 + *(v70 + 36));
  v34 = *(v33 + 24);
  *&v89 = type metadata accessor for DragReorderableLayoutCoordinator();
  *(&v89 + 1) = &protocol witness table for DragReorderableLayoutCoordinator;
  v87 = v33;
  v35 = lazy protocol witness table accessor for type _ContentShapeKindModifier<Rectangle> and conformance _ContentShapeKindModifier<A>();
  v73 = v31;
  v74 = v35;

  v36 = v46;
  v37 = swift_getWitnessTable();
  v38 = v52;
  View.onDrop(of:delegate:)(v34, &v87, v36, v37);

  (*(v58 + 8))(v32, v36);
  __swift_destroy_boxed_opaque_existential_1(&v87);
  v71 = v37;
  v72 = &protocol witness table for DropModifier;
  v39 = swift_getWitnessTable();
  v40 = v56;
  static ViewBuilder.buildExpression<A>(_:)(v38, v16, v39);
  v41 = *(v59 + 8);
  v41(v38, v16);
  static ViewBuilder.buildExpression<A>(_:)(v40, v16, v39);
  return (v41)(v40, v16);
}

uint64_t DragReorderableLayoutCore.children.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = AssociatedTypeWitness;
  v58 = MEMORY[0x1E69E6530];
  v59 = AssociatedConformanceWitness;
  v60 = MEMORY[0x1E69E6540];
  type metadata accessor for IDView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for Optional();
  v55 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v38 - v6;
  WitnessTable = swift_getWitnessTable();
  v67 = &protocol witness table for HiddenModifierAllowingViewResponders;
  v64 = swift_getWitnessTable();
  v65 = &protocol witness table for DragReorderableChildModifier;
  v63 = swift_getWitnessTable();
  v49 = v5;
  swift_getWitnessTable();
  v48 = type metadata accessor for DropPlaceholderListModifier();
  v52 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v38 - v7;
  v8 = *(a1 - 8);
  v43 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3;
  v13 = swift_getAssociatedTypeWitness();
  type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>, MEMORY[0x1E697F960]);
  v15 = v14;
  v41 = v14;
  v16 = swift_getAssociatedConformanceWitness();
  v42 = lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0> and conformance <> _ConditionalContent<A, B>();
  v57 = v13;
  v58 = v15;
  v59 = v16;
  v60 = v42;
  v39 = v16;
  v44 = MEMORY[0x1E6981400];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v40 = &v38 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v57 = v18;
  v58 = v13;
  v38 = v13;
  v59 = AssociatedTypeWitness;
  v60 = v19;
  v61 = v16;
  v62 = AssociatedConformanceWitness;
  AssociatedTypeWitness = *(type metadata accessor for DragReorderableLayoutAdaptor() + 68);
  (*(v8 + 16))(v11, v53, a1);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  *(v21 + 24) = v12;
  (*(v8 + 32))(v21 + v20, v11, a1);
  v22 = swift_checkMetadataState();
  v23 = v39;
  v24 = v42;
  View.map<A>(_:)();

  v25 = v54;
  DragReorderableLayoutCore.insertionPlaceholder.getter(a1, v54);
  v26 = DragReorderableLayoutCore.state.getter(a1);
  v28 = v27;
  LOBYTE(v16) = v29 & 1;
  LOBYTE(v57) = v30 & 1;
  LOBYTE(v4) = v30 & 1;
  v31 = v47;
  (*(v55 + 32))(v47, v25, v49);
  v32 = v48;
  v33 = &v31[*(v48 + 36)];
  *v33 = v26;
  v33[8] = v16;
  *(v33 + 2) = v28;
  v33[24] = v4 & 1;
  v57 = v38;
  v58 = v22;
  v59 = v23;
  v60 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = OpaqueTypeMetadata2;
  v36 = v40;
  MEMORY[0x18D00A570](v31, OpaqueTypeMetadata2, v32, OpaqueTypeConformance2);
  (*(v52 + 8))(v31, v32);
  return (*(v46 + 8))(v36, v35);
}

uint64_t closure #1 in DragReorderableLayoutCore.children.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of MappedViewElement.view>>.0();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v13 = a1[2];
  v21 = *a1;
  v22 = v12;
  v23 = v13;
  MappedViewElement.view.getter();
  v20 = v13;
  v18 = 0;
  v19 = 1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v22 == 1)
  {
    (*(v9 + 32))(a2, v11, v8);
  }

  else
  {
    v14 = v21;
    v15 = type metadata accessor for DragReorderableLayoutCore();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    DragReorderableLayoutCore.draggableView<A>(_:offset:)(v11, v14, v15, v8, OpaqueTypeConformance2, v6);
    (*(v9 + 8))(v11, v8);
    sub_18C0C5430(v6, a2);
  }

  type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _EnvironmentKeyWritingModifier<Bool>>, DragReorderableChildModifier>, <<opaque return type of MappedViewElement.view>>.0>.Storage, MEMORY[0x1E697F948]);
  return swift_storeEnumTagMultiPayload();
}

uint64_t DragReorderableLayoutCore.draggableView<A>(_:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v84 = a4;
  v85 = a5;
  v75 = a1;
  v77 = a6;
  type metadata accessor for Binding<_DragReorderableView_DragState>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v74 = type metadata accessor for ModifiedContent();
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = v64 - v9;
  v86 = *(a3 - 8);
  v10 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v70 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v68 = v64 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v64 - v15;
  v17 = *(v6 + *(a3 + 36));
  swift_beginAccess();
  outlined init with copy of _Benchmark(v17 + 48, &v89);
  v18 = v91;
  v19 = v92;
  __swift_project_boxed_opaque_existential_1(&v89, v91);
  v71 = (*(v19 + 32))(a2, v18, v19);
  __swift_destroy_boxed_opaque_existential_1(&v89);
  outlined init with copy of _Benchmark(v17 + 48, &v89);
  v20 = v91;
  v21 = v92;
  __swift_project_boxed_opaque_existential_1(&v89, v91);
  v22 = *(v21 + 40);
  v78 = a2;
  v72 = v22(a2, v20, v21);
  __swift_destroy_boxed_opaque_existential_1(&v89);
  v23 = v86;
  v24 = *(v86 + 16);
  v82 = v86 + 16;
  v83 = v24;
  v25 = v16;
  v66 = v6;
  v24(v16, v6, a3);
  v26 = v23;
  v27 = *(v23 + 80);
  v28 = (v27 + 48) & ~v27;
  v80 = v28;
  v81 = v27;
  v64[1] = v28 + v10;
  v29 = (v28 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = v29;
  v30 = swift_allocObject();
  v31 = *(a3 + 16);
  v32 = *(a3 + 24);
  v33 = a3;
  v35 = v84;
  v34 = v85;
  v30[2] = v31;
  v30[3] = v35;
  v30[4] = v32;
  v30[5] = v34;
  v79 = *(v26 + 32);
  v36 = v30 + v28;
  v37 = v30;
  v69 = v30;
  v38 = v25;
  v39 = v33;
  v79(v36, v38);
  v86 = v26 + 32;
  *(v37 + v29) = v78;
  v40 = v68;
  v65 = v39;
  v83(v68, v6, v39);
  v41 = swift_allocObject();
  v41[2] = v31;
  v41[3] = v35;
  v41[4] = v32;
  v41[5] = v34;
  (v79)(v41 + v80, v40, v39);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = swift_getAssociatedTypeWitness();
  v44 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v46 = swift_getAssociatedConformanceWitness();
  v47 = swift_getAssociatedConformanceWitness();
  v89 = AssociatedTypeWitness;
  v90[0] = v43;
  v90[1] = v44;
  v91 = AssociatedConformanceWitness;
  v92 = v46;
  v93 = v47;
  v48 = type metadata accessor for DragReorderableLayoutAdaptor();
  v49 = v65;
  v50 = *(v66 + *(v48 + 88));
  v107 = &unk_1EFFBF198;
  v51 = v78;
  v105 = v50;
  v106 = v78;
  v52 = v70;
  (v83)(v70);
  v53 = v67;
  v54 = swift_allocObject();
  v55 = v84;
  v54[2] = v31;
  v54[3] = v55;
  v54[4] = v32;
  v56 = v85;
  v54[5] = v85;
  (v79)(v54 + v80, v52, v49);
  *(v54 + v53) = v51;
  v57 = swift_allocObject();
  *(v57 + 16) = partial apply for closure #3 in DragReorderableLayoutCore.draggableView<A>(_:offset:);
  *(v57 + 24) = v54;
  type metadata accessor for DragPayloadBox<Drag.Payload<ObjectIdentifier>>();
  v58 = swift_allocObject();
  *(v58 + 16) = partial apply for specialized thunk for @escaping @callee_guaranteed () -> (@owned [DraggingItem<A>]);
  *(v58 + 24) = v57;
  *(v58 + 32) = 1;
  *(v58 + 40) = 0;
  v96[0] = v71 & 1;
  v97 = 0;
  v98 = 0;
  v99 = partial apply for closure #1 in DragReorderableLayoutCore.draggableView<A>(_:offset:);
  v100 = v69;
  v101 = partial apply for closure #2 in DragReorderableLayoutCore.draggableView<A>(_:offset:);
  v102 = v41;
  v103 = 0;
  v104 = 0;
  v108 = xmmword_18CD7DD20;
  v109 = xmmword_18CD6A6D0;
  v110 = v58;
  swift_getKeyPath();
  LOBYTE(v89) = 1;
  v59 = v73;
  View.environment<A>(_:_:)();

  outlined init with copy of _DraggingModifier(v96, v90);
  LOBYTE(v89) = v72 & 1;
  v94 = v51;
  v95 = 0;
  v60 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  v87 = v56;
  v88 = v60;
  v61 = v74;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00A570](&v89, v61, &type metadata for DragReorderableChildModifier, WitnessTable);
  outlined destroy of DragReorderableChildModifier(&v89);
  (*(v76 + 8))(v59, v61);
  return outlined destroy of _DraggingModifier(v96);
}

uint64_t DragReorderableLayoutCore.insertionPlaceholder.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = AssociatedTypeWitness;
  v61 = MEMORY[0x1E69E6530];
  v44 = AssociatedConformanceWitness;
  v62 = AssociatedConformanceWitness;
  v63 = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for IDView();
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - v6;
  v57 = v7;
  v8 = type metadata accessor for ModifiedContent();
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - v9;
  v56 = v10;
  v11 = type metadata accessor for ModifiedContent();
  v52 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v41 - v14;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v20);
  v42 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v50 = &v41 - v23;
  v24 = type metadata accessor for Optional();
  v54 = *(v24 - 8);
  v55 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v51 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v53 = &v41 - v28;
  (*(v16 + 16))(v18, v59 + *(a1 + 44), v15, v27);
  if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) != 1)
  {
    v41 = v19;
    v30 = v50;
    (*(v19 + 32))(v50, v18, AssociatedTypeWitness);
    (*(v19 + 16))(v42, v30, AssociatedTypeWitness);
    v31 = swift_getAssociatedTypeWitness();
    v32 = swift_getAssociatedTypeWitness();
    v33 = swift_getAssociatedConformanceWitness();
    v34 = swift_getAssociatedConformanceWitness();
    v60 = v31;
    v61 = v32;
    v62 = AssociatedTypeWitness;
    v63 = v33;
    v64 = v34;
    v65 = v44;
    v60 = *(v59 + *(type metadata accessor for DragReorderableLayoutAdaptor() + 92));
    IDView.init(_:id:)();
    swift_getWitnessTable();
    View.hiddenAllowingViewResponders()();
  }

  (*(v16 + 8))(v18, v15);
  v29 = v51;
  (*(v52 + 56))(v51, 1, 1, v11);
  WitnessTable = swift_getWitnessTable();
  v74 = &protocol witness table for HiddenModifierAllowingViewResponders;
  v71 = swift_getWitnessTable();
  v72 = &protocol witness table for DragReorderableChildModifier;
  swift_getWitnessTable();
  v35 = v53;
  static ToolbarContentBuilder.buildIf<A>(_:)(v29, v53);
  v36 = *(v54 + 8);
  v37 = v29;
  v38 = v55;
  v36(v37, v55);
  v69 = swift_getWitnessTable();
  v70 = &protocol witness table for HiddenModifierAllowingViewResponders;
  v67 = swift_getWitnessTable();
  v68 = &protocol witness table for DragReorderableChildModifier;
  v66 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v35, v38, v39);
  return (v36)(v35, v38);
}

uint64_t DragReorderableLayoutCoordinator.dragBegan(at:)(uint64_t a1)
{
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v11 = *(v1 + 104);
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v9);
  if ((v10 & 1) != 0 || v9 != a1)
  {
    *(v1 + 200) = 0u;
    *(v1 + 184) = 0u;
    *(v1 + 168) = 0u;
    *(v1 + 216) = 1;
  }

  *&v11 = static Transaction.current.getter();
  v7 = Transaction.disablesAnimations.setter();
  MEMORY[0x1EEE9AC00](v7);
  withTransaction<A>(_:_:)();
}

uint64_t DragReorderableLayoutCoordinator.dragEnded()()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v16 = *(v0 + 104);
  v17 = v1;
  v18 = v2;
  LOBYTE(v19) = v3;
  v20 = v4;
  v21 = v5;
  type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for Binding<_DragReorderableView_DragState>, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E6981948]);
  v7 = v6;

  MEMORY[0x18D00ACC0](&v22, v7);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  v16 = *(v0 + 104);
  v17 = v8;
  v18 = v9;
  LOBYTE(v19) = v10;
  v20 = v11;
  v21 = v12;

  MEMORY[0x18D00ACC0](&v22, v7);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 1;
  swift_beginAccess();
  outlined init with copy of _Benchmark(v0 + 48, &v16);
  v13 = v19;
  v14 = v20;
  __swift_project_boxed_opaque_existential_1(&v16, v19);
  (*(v14 + 88))(v13, v14);
  return __swift_destroy_boxed_opaque_existential_1(&v16);
}

uint64_t closure #3 in DragReorderableLayoutCore.draggableView<A>(_:offset:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ContiguousArrayStorage<DraggingItem<ObjectIdentifier>>();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18CD63400;
  v5 = *(a1 + *(type metadata accessor for DragReorderableLayoutCore() + 36));
  swift_beginAccess();
  outlined init with copy of _Benchmark(v5 + 48, v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = (*(v7 + 48))(a2, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v10);
  *(v4 + 32) = v8;
  *(v4 + 40) = v8;
  return v4;
}

uint64_t ConditionalDraggingModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  result = _s7SwiftUI17_DraggingModifierVSgWOcTm_0(v1, v13, &lazy cache variable for type metadata for _DraggingModifier?, &type metadata for _DraggingModifier, MEMORY[0x1E69E6720], type metadata accessor for Binding<_DragReorderableView_DragState>);
  v4 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    v5 = v13[7];
    v6 = v14;
    v7 = v13[2];
    v8 = v13[3];
    v10 = v13[4];
    v9 = v13[5];
    v12 = v13[0];
    v11 = v13[1];
    *(a1 + 96) = v13[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v6;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
    *(a1 + 64) = v10;
    *(a1 + 80) = v9;
    *a1 = v12;
    *(a1 + 16) = v11;
  }

  else
  {
    result = outlined destroy of Path?(v13, &lazy cache variable for type metadata for _DraggingModifier?, &type metadata for _DraggingModifier);
  }

  *(a1 + 144) = v4 == 0;
  return result;
}

uint64_t static DragSourceProxyModifier._makeView(modifier:inputs:body:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t *))
{
  v4 = (a2 + 1);
  v5 = *a2;
  lazy protocol witness table accessor for type DragSourceProxyInput and conformance DragSourceProxyInput();
  v6 = PropertyList.subscript.getter();
  if (v11 == *MEMORY[0x1E698D3F8])
  {
    v11 = v5;
    v7 = *v4;
    v8 = v4[2];
    v9 = v4[3];
    v13 = v4[1];
    v14 = v8;
    *v15 = v9;
    *&v15[12] = *(v4 + 60);
    v12 = v7;
    return a3(v6, &v11);
  }

  else
  {
    lazy protocol witness table accessor for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier();
    return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  }
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ReorderableLayout(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v11 = lazy protocol witness table accessor for type ReorderableLayout and conformance ReorderableLayout();
  return (*(v11 + 80))(&v15, v13, a3, a4, a5, v11);
}

double static DragReorderableChildModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v5 = a2[1];
  v41 = a2[2];
  v42 = v4;
  v6 = a2[3];
  v43 = a2[4];
  v7 = a2[1];
  v39 = *a2;
  v40 = v7;
  v35 = v41;
  v36 = v6;
  v37 = a2[4];
  v8 = *a1;
  v44 = *(a2 + 20);
  v38 = *(a2 + 20);
  v33 = v39;
  v34 = v5;
  LODWORD(v45[0]) = v8;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(&v39, &v47);
  lazy protocol witness table accessor for type DragReorderableChildModifier.MakeDragSourceProxy and conformance DragReorderableChildModifier.MakeDragSourceProxy();
  LODWORD(v47) = Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type DragSourceProxyInput and conformance DragSourceProxyInput();
  PropertyList.subscript.setter();
  v49 = v41;
  v50 = v42;
  v51 = v43;
  v9 = HIDWORD(v42);
  v52 = v44;
  v47 = v39;
  v48 = v40;
  *&v47 = __PAIR64__(_ViewInputs.animatedPosition()(), v9);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type DragReorderableChildModifier.ChildCoordinateSpace and conformance DragReorderableChildModifier.ChildCoordinateSpace();
  Attribute.init<A>(body:value:flags:update:)();
  _ViewInputs.transform.setter();
  LODWORD(v47) = v8;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type DragReorderableChildModifier.MakeDragSource and conformance DragReorderableChildModifier.MakeDragSource();
  LODWORD(v25[0]) = Attribute.init<A>(body:value:flags:update:)();
  v45[2] = v35;
  v45[3] = v36;
  v45[4] = v37;
  v46 = v38;
  v45[0] = v33;
  v45[1] = v34;
  outlined init with copy of _ViewInputs(v45, &v47);
  lazy protocol witness table accessor for type ConditionalDraggingModifier and conformance ConditionalDraggingModifier();
  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  v49 = v35;
  v50 = v36;
  v51 = v37;
  v52 = v38;
  v47 = v33;
  v48 = v34;
  outlined destroy of _ViewInputs(&v47);
  *&v27 = v42;
  DWORD2(v27) = DWORD2(v42);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v23[2] = v35;
    v23[3] = v36;
    v23[4] = v37;
    v24 = v38;
    v23[0] = v33;
    v23[1] = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    outlined init with copy of _ViewInputs(v23, v25);
    v10 = _ViewInputs.animatedPosition()();
    v25[2] = v29;
    v25[3] = v30;
    v25[4] = v31;
    v26 = v32;
    v25[0] = v27;
    v25[1] = v28;
    outlined destroy of _ViewInputs(v25);
    v27 = v15;

    v11 = _ViewOutputs.viewResponders()();

    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    type metadata accessor for DragReorderableChildResponder();
    v12 = swift_allocObject();
    *(v12 + 216) = 0;
    *(v12 + 224) = 1;
    *(v12 + 232) = 0;
    *(v12 + 240) = 0;
    *(v12 + 248) = 0;
    v19 = v35;
    v20 = v36;
    v21 = v37;
    v22 = v38;
    v17 = v33;
    v18 = v34;
    outlined init with copy of _ViewInputs(&v27, v16);
    v13 = DefaultLayoutViewResponder.init(inputs:)();
    *&v17 = __PAIR64__(v10, v8);
    DWORD2(v17) = v11;
    *&v18 = v13;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type DragReorderableChildModifier.ResponderFilter and conformance DragReorderableChildModifier.ResponderFilter();
    Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v17) = 0;
    PreferencesOutputs.subscript.setter();
  }

  v29 = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v27 = v33;
  v28 = v34;
  outlined destroy of _ViewInputs(&v27);
  *a3 = v15;
  return *(&v15 + 1);
}

uint64_t DragReorderableChildResponder.__allocating_init(inputs:)()
{
  v0 = swift_allocObject();
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0;
  return DefaultLayoutViewResponder.init(inputs:)();
}

_BYTE *protocol witness for Rule.value.getter in conformance DragReorderableChildModifier.MakeDragSource@<X0>(_OWORD *a1@<X8>)
{
  result = AGGraphGetValue();
  v3 = 0uLL;
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  if ((*result & 1) == 0)
  {
    Value = AGGraphGetValue();
    result = outlined init with copy of DragReorderableChildModifier(Value, v13);
    v3 = v14;
    v4 = v15;
    v5 = v16;
    v6 = v17;
    v7 = v18;
    v8 = v19;
    v9 = v20;
    v10 = v21;
    v11 = v22;
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  return result;
}

_BYTE *protocol witness for Rule.value.getter in conformance DragReorderableChildModifier.MakeDragSourceProxy@<X0>(_OWORD *a1@<X8>)
{
  result = AGGraphGetValue();
  v3 = 0uLL;
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  if (*result == 1)
  {
    Value = AGGraphGetValue();
    result = outlined init with copy of DragReorderableChildModifier(Value, v13);
    v3 = v14;
    v4 = v15;
    v5 = v16;
    v6 = v17;
    v7 = v18;
    v8 = v19;
    v9 = v20;
    v10 = v21;
    v11 = v22;
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  return result;
}

uint64_t DragReorderableChildModifier.ResponderFilter.updateValue()()
{
  v1 = *(v0 + 16);
  Value = AGGraphGetValue();
  v3 = *(Value + 160);
  *(v1 + 216) = *(Value + 152);
  *(v1 + 224) = v3;
  type metadata accessor for CGPoint(0);
  *(v1 + 232) = *AGGraphGetValue();
  *(v1 + 248) = *(AGGraphGetValue() + 161);
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);

  AGGraphGetValue();
  if (v4)
  {

    MultiViewResponder.children.setter();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for Binding<_DragReorderableView_DragState>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD69590;
    *(v6 + 32) = v1;

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t DragReorderableChildModifier.ChildCoordinateSpace.value.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
  type metadata accessor for CGPoint(0);

  v5 = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*v5);
  lazy protocol witness table accessor for type ReorderableChildCoordinateSpace and conformance ReorderableChildCoordinateSpace();
  AnyHashable.init<A>(_:)();
  ViewTransform.appendCoordinateSpace(name:)();
  return outlined destroy of AnyHashable(v7);
}

uint64_t DragReorderableChildResponder.__allocating_init(inputs:viewSubgraph:)()
{
  v0 = swift_allocObject();
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
}

uint64_t DragReorderableChildResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

uint64_t static DropPlaceholderListModifier._makeViewList(modifier:inputs:body:)@<X0>(int *a1@<X0>, void (*a2)(void *__return_ptr)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v25[9] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  a2(v25);
  v9 = _ViewListOutputs.makeAttribute(inputs:)();
  v22 = a3;
  v23 = a4;
  type metadata accessor for DropPlaceholderListModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  static View.makeDebuggableViewList(view:inputs:)();
  v10 = _ViewListOutputs.makeAttribute(inputs:)();
  v20 = a3;
  v21 = a4;
  v16 = v8;
  _GraphValue.subscript.getter();
  v15[0] = v9;
  v15[1] = v10;
  List = type metadata accessor for DropPlaceholderListModifier.MakeList();
  WitnessTable = swift_getWitnessTable();
  _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for Attribute<ViewList>, type metadata accessor for ViewList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, closure #1 in Attribute.init<A>(_:)partial apply, v17, List, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  outlined destroy of _ViewListOutputs(v24);
  *a5 = v16;
  *(a5 + 8) = 0;
  *(a5 + 40) = 1;
  v13 = v25[6];
  result = outlined destroy of _ViewListOutputs(v25);
  *(a5 + 48) = v13;
  *(a5 + 56) = 0;
  *(a5 + 64) = 1;
  return result;
}

uint64_t closure #1 in static DragReorderableLayoutView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11[2] = a4(0);
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a5, v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t closure #2 in static DropPlaceholderListModifier._makeViewList(modifier:inputs:body:)(uint64_t a1)
{
  v2 = type metadata accessor for DropPlaceholderListModifier();
  v3 = *(v2 + 36);
  v7[2] = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, closure #1 in static PointerOffset.of(_:)partial apply, v7, &type metadata for _DragReorderableView_DragState, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t DropPlaceholderListModifier.MakeList.value.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ViewList();
  Value = AGGraphGetValue();
  outlined init with copy of _Benchmark(Value, v12);
  v3 = AGGraphGetValue();
  outlined init with copy of _Benchmark(v3, v11);
  v4 = AGGraphGetValue();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v13 = *(v4 + 24);
  v8 = v13;
  a1[3] = type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList();
  a1[4] = swift_getWitnessTable();
  v9 = swift_allocObject();
  *a1 = v9;
  v13 = v8 & 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v12, v9 + 16);
  result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v11, v9 + 56);
  *(v9 + 96) = v5;
  *(v9 + 104) = v6;
  *(v9 + 112) = v7;
  *(v9 + 120) = v8 & 1;
  return result;
}

uint64_t DropPlaceholderListModifier.DropPlaceholderList.viewIDs.getter()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  __swift_project_boxed_opaque_existential_1((v0 + 40), v2);
  v4 = (*(v3 + 40))(v2, v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    type metadata accessor for _ViewList_ID._Views<EmptyCollection<_ViewList_ID>>();
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
  }

  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v0, v6);
  v8 = (*(v7 + 40))(v6, v7);
  if (v8)
  {
    v9 = v8;
    if (*(v0 + 104))
    {

      return v9;
    }

    else
    {
      v11 = *(v0 + 96);
      v12 = *(v1 + 88);
      v13 = *(v1 + 80);
      type metadata accessor for DropPlaceholderListModifier.PlaceholderViews();
      swift_allocObject();
      v14 = specialized DropPlaceholderListModifier.PlaceholderViews.init(base:placeholder:sourceIndex:destinationIndex:)(v9, v5, v13, v12, v11);

      return v14;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t DropPlaceholderListModifier.DropPlaceholderList.count(style:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v11 = v2;
  result = (*(v4 + 16))(&v11, v3, v4);
  if ((*(v1 + 104) & 1) == 0)
  {
    v6 = *(v1 + 64);
    v7 = *(v1 + 72);
    v8 = result;
    __swift_project_boxed_opaque_existential_1((v1 + 40), v6);
    v11 = v2;
    v9 = (*(v7 + 16))(&v11, v6, v7);
    v10 = __OFADD__(v8, v9);
    result = v8 + v9;
    if (v10)
    {
      __break(1u);
LABEL_7:
      __break(1u);
      return result;
    }
  }

  if ((*(v1 + 88) & 1) == 0)
  {
    v10 = __OFSUB__(result--, 1);
    if (v10)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t DropPlaceholderListModifier.DropPlaceholderList.estimatedCount(style:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v11 = v2;
  result = (*(v4 + 24))(&v11, v3, v4);
  if ((*(v1 + 104) & 1) == 0)
  {
    v6 = *(v1 + 64);
    v7 = *(v1 + 72);
    v8 = result;
    __swift_project_boxed_opaque_existential_1((v1 + 40), v6);
    v11 = v2;
    v9 = (*(v7 + 24))(&v11, v6, v7);
    v10 = __OFADD__(v8, v9);
    result = v8 + v9;
    if (v10)
    {
      __break(1u);
LABEL_7:
      __break(1u);
      return result;
    }
  }

  if ((*(v1 + 88) & 1) == 0)
  {
    v10 = __OFSUB__(result--, 1);
    if (v10)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t DropPlaceholderListModifier.DropPlaceholderList.applyNodes(from:style:list:transform:to:)(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = *a2;
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = DropPlaceholderListModifier.DropPlaceholderList.indexRanges(from:)(*a1);
  v11 = type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList.IndexRange();
  if (MEMORY[0x18D00CDE0](v10, v11))
  {
    v12 = 0;
    v13 = (v10 + 49);
    v20 = a3 | ((HIDWORD(a3) & 1) << 32);
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      result = Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (!IsNativeType)
      {
        break;
      }

      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_13;
      }

      v17 = *(v13 - 9);
      v18 = *(v13 - 1);
      v19 = *v13;
      *a1 = *(v13 - 17);
      if (v19)
      {
        v26 = v21;
        v24 = v8;
        v25 = v9;
        if ((DropPlaceholderListModifier.DropPlaceholderList.applyToPlaceholder(start:style:list:transform:body:)(a1, &v26, v20, &v24, a5, a6) & 1) == 0)
        {
LABEL_9:

          return 0;
        }
      }

      else
      {
        v26 = v21;
        v24 = v8;
        v25 = v9;
        if ((DropPlaceholderListModifier.DropPlaceholderList.applyToBase(start:end:style:list:transform:body:)(a1, v17, v18, &v26, v20, &v24) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      ++v12;
      v13 += 24;
      if (v16 == MEMORY[0x18D00CDE0](v10, v11))
      {
        goto LABEL_10;
      }
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_10:

    return 1;
  }

  return result;
}

uint64_t DropPlaceholderListModifier.DropPlaceholderList.indexRanges(from:)(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 104);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 96);
  }

  if (*(v1 + 88))
  {
LABEL_5:
    if (v4 < result)
    {
      v3 = 1;
    }

    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

  v6 = *(v1 + 80);
  if (v6 == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(v1 + 104);
  }

  if (v7 == 1)
  {
    if (v6 >= result)
    {
      type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList.IndexRange();
      type metadata accessor for _ContiguousArrayStorage();
      swift_allocObject();
      result = static Array._adoptStorage(_:count:)();
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6;
      }

      *v11 = v2;
      *(v11 + 8) = v12;
      *(v11 + 16) = v6 == 0x7FFFFFFFFFFFFFFFLL;
      *(v11 + 17) = 0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *(v11 + 40) = 257;
      if (!__OFADD__(v6, 1))
      {
        *(v11 + 48) = v6 + 1;
        *(v11 + 56) = 0;
LABEL_38:
        *(v11 + 64) = 1;
        goto LABEL_39;
      }

      __break(1u);
      goto LABEL_58;
    }

    if (*(v1 + 104))
    {
      goto LABEL_8;
    }
  }

  if (v6 < v4)
  {
    if (v6 >= result)
    {
      type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList.IndexRange();
      type metadata accessor for _ContiguousArrayStorage();
      swift_allocObject();
      result = static Array._adoptStorage(_:count:)();
      *v14 = v2;
      *(v14 + 8) = v6;
      *(v14 + 16) = 0;
      v15 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        if (v15 > v6)
        {
          if (v4 == 0x7FFFFFFFFFFFFFFELL)
          {
            v16 = 0;
          }

          else
          {
            v16 = v4 + 1;
          }

          *(v14 + 24) = v6 + 1;
          *(v14 + 32) = v16;
          *(v14 + 40) = v4 == 0x7FFFFFFFFFFFFFFELL;
          *(v14 + 41) = 0;
          *(v14 + 48) = 0;
          *(v14 + 56) = 0;
          *(v14 + 64) = 257;
          *(v14 + 72) = v15;
          *(v14 + 80) = 0;
          *(v14 + 88) = 1;
          goto LABEL_39;
        }

        goto LABEL_60;
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v8 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      if (v8 >= result)
      {
        type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList.IndexRange();
        type metadata accessor for _ContiguousArrayStorage();
        swift_allocObject();
        result = static Array._adoptStorage(_:count:)();
        if (v4 == 0x7FFFFFFFFFFFFFFELL)
        {
          v19 = 0;
        }

        else
        {
          v19 = v4 + 1;
        }

        *v11 = v2;
        *(v11 + 8) = v19;
        *(v11 + 16) = v4 == 0x7FFFFFFFFFFFFFFELL;
        *(v11 + 17) = 0;
        *(v11 + 24) = 0;
        *(v11 + 32) = 0;
        *(v11 + 40) = 257;
        *(v11 + 48) = v8;
        goto LABEL_37;
      }

      goto LABEL_19;
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_19:
  if (v4 < v6)
  {
    if (v4 < result)
    {
      if (v6 < result)
      {
        goto LABEL_5;
      }

      type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList.IndexRange();
      type metadata accessor for _ContiguousArrayStorage();
      swift_allocObject();
      result = static Array._adoptStorage(_:count:)();
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = 0;
      }

      else
      {
        v10 = v6;
      }

      *v9 = v2;
      *(v9 + 8) = v10;
      *(v9 + 16) = v6 == 0x7FFFFFFFFFFFFFFFLL;
      *(v9 + 17) = 0;
      if (!__OFADD__(v6, 1))
      {
        *(v9 + 24) = v6 + 1;
        *(v9 + 32) = 0;
        *(v9 + 40) = 1;
        goto LABEL_39;
      }

LABEL_62:
      __break(1u);
      return result;
    }

    type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList.IndexRange();
    type metadata accessor for _ContiguousArrayStorage();
    swift_allocObject();
    result = static Array._adoptStorage(_:count:)();
    *v17 = v2;
    *(v17 + 8) = v4;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    *(v17 + 40) = 257;
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = 0;
    }

    else
    {
      v18 = v6;
    }

    *(v17 + 48) = v4;
    *(v17 + 56) = v18;
    *(v17 + 64) = v6 == 0x7FFFFFFFFFFFFFFFLL;
    *(v17 + 65) = 0;
    if (!__OFADD__(v6, 1))
    {
      *(v17 + 72) = v6 + 1;
      *(v17 + 80) = 0;
      *(v17 + 88) = 1;
      goto LABEL_39;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v4 >= result)
  {
LABEL_33:
    type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList.IndexRange();
    type metadata accessor for _ContiguousArrayStorage();
    swift_allocObject();
    result = static Array._adoptStorage(_:count:)();
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    else
    {
      v13 = v4;
    }

    *v11 = v2;
    *(v11 + 8) = v13;
    *(v11 + 16) = v4 == 0x7FFFFFFFFFFFFFFFLL;
    *(v11 + 17) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 257;
    *(v11 + 48) = v4;
LABEL_37:
    *(v11 + 56) = 0;
    goto LABEL_38;
  }

LABEL_8:
  type metadata accessor for DropPlaceholderListModifier.DropPlaceholderList.IndexRange();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  result = static Array._adoptStorage(_:count:)();
  *v5 = v2;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
LABEL_39:

  _finalizeUninitializedArray<A>(_:)();
  return result;
}

uint64_t DropPlaceholderListModifier.DropPlaceholderList.applyToPlaceholder(start:style:list:transform:body:)(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = *a4;
  v13 = *(a4 + 8);
  v14 = v6[8];
  v15 = v6[9];
  __swift_project_boxed_opaque_existential_1(v6 + 5, v14);
  v19 = v11;
  v17 = v12;
  v18 = v13;
  return (*(v15 + 64))(a1, &v19, a3 | ((HIDWORD(a3) & 1) << 32), &v17, a5, a6, v14, v15) & 1;
}

uint64_t DropPlaceholderListModifier.DropPlaceholderList.applyToBase(start:end:style:list:transform:body:)(void *a1, uint64_t a2, char a3, uint64_t *a4, unint64_t a5, uint64_t *a6)
{
  v8 = 1;
  if ((a3 & 1) != 0 || *a1 < a2)
  {
    v9 = *(a6 + 8);
    v10 = *a6;
    v11 = *a4;
    v25 = *a1;
    v24 = 1;
    v12 = v6[3];
    v13 = v6[4];
    v18 = a1;
    v19 = v12;
    v14 = __swift_project_boxed_opaque_existential_1(v6, v12);
    v20 = &v17;
    v23 = v11;
    v21 = v10;
    v22 = v9;
    v15 = MEMORY[0x1EEE9AC00](v14);
    (*(v13 + 64))(v18, &v23, a5 | ((HIDWORD(a5) & 1) << 32), &v21, partial apply for closure #1 in DropPlaceholderListModifier.DropPlaceholderList.applyToBase(start:end:style:list:transform:body:), v15);
    return v24;
  }

  return v8;
}

uint64_t DropPlaceholderListModifier.DropPlaceholderList.edit(forID:since:)(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = *a2;
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v10[0] = *a1;
  v10[1] = v4;
  v9 = v5;
  return (*(v7 + 72))(v10, &v9, v6, v7);
}

void *DropPlaceholderListModifier.DropPlaceholderList.firstOffset<A>(forID:style:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v38 = a3;
  v10 = *a2;
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  __swift_project_boxed_opaque_existential_1(v5, v11);
  v39 = v10;
  v13 = (*(v12 + 80))(a1, &v39, a4, a5, v11, v12);
  v15 = v14;
  v16 = *(v5 + 64);
  v17 = *(v5 + 72);
  __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
  v39 = v10;
  result = (*(v17 + 80))(a1, &v39, a4, a5, v16, v17);
  if (*(v5 + 104))
  {
    return v13;
  }

  v20 = v19;
  v37 = result;
  v21 = *(v6 + 96);
  if (*(v6 + 88))
  {
    MEMORY[0x1EEE9AC00](result);
    v22 = *(v38 + 24);
    v29 = *(v38 + 16);
    v30 = a4;
    v31 = v22;
    v32 = a5;
    v33 = v21;
    v34 = v6;
    v35 = v10;
    v6 = 0;
    result = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFSi_s5NeverOSiSgTg5(partial apply for closure #3 in DropPlaceholderListModifier.DropPlaceholderList.firstOffset<A>(forID:style:), v28, v13, v15 & 1);
    if ((v23 & 0x100) == 0)
    {
      return result;
    }

    if (v20)
    {
      return v37;
    }

    result = (v37 + v21);
    if (!__OFADD__(v37, v21))
    {
      return result;
    }

    __break(1u);
  }

  v24 = *(v6 + 80);
  MEMORY[0x1EEE9AC00](result);
  v25 = *(v38 + 24);
  v29 = *(v38 + 16);
  v30 = a4;
  v31 = v25;
  v32 = a5;
  v33 = v24;
  v34 = v21;
  v35 = v6;
  v36 = v10;
  result = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFSi_s5NeverOSiSgTg5(partial apply for closure #1 in DropPlaceholderListModifier.DropPlaceholderList.firstOffset<A>(forID:style:), v28, v13, v15 & 1);
  if ((v26 & 0x100) == 0)
  {
    return result;
  }

  if (v20)
  {
    return v37;
  }

  v27 = v21 - (v24 < v21);
  result = (v37 + v27);
  if (__OFADD__(v37, v27))
  {
    __break(1u);
  }

  return result;
}