void IKRig.ConstraintsCollection.subscript.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[85];
    v4 = v2[84];
    v5 = v2[83];
    v6 = v2[82];
    v7 = *(v2 + 7);
    *(v2 + 26) = *(v2 + 6);
    *(v2 + 27) = v7;
    v8 = *(v2 + 9);
    *(v2 + 28) = *(v2 + 8);
    *(v2 + 29) = v8;
    v9 = *(v2 + 3);
    *(v2 + 22) = *(v2 + 2);
    *(v2 + 23) = v9;
    v10 = *(v2 + 5);
    *(v2 + 24) = *(v2 + 4);
    *(v2 + 25) = v10;
    v11 = *(v2 + 1);
    *(v2 + 20) = *v2;
    *(v2 + 21) = v11;
    v2[80] = v6;
    v2[81] = v5;
    outlined init with copy of [String : String]((v2 + 40), (v2 + 60), &_s17RealityFoundation5IKRigV10ConstraintVSgMd, &_s17RealityFoundation5IKRigV10ConstraintVSgMR);
    v12 = StringProtocol.hash.getter();
    v13 = *(v2 + 27);
    v38 = *(v2 + 26);
    v39 = v13;
    v14 = *(v2 + 29);
    v40 = *(v2 + 28);
    v41 = v14;
    v15 = *(v2 + 23);
    v34 = *(v2 + 22);
    v35 = v15;
    v16 = *(v2 + 25);
    v36 = *(v2 + 24);
    v37 = v16;
    v17 = *(v2 + 21);
    v32 = *(v2 + 20);
    v33 = v17;
    v42 = v12;
    IKRig.ConstraintsCollection.subscript.setter(&v32, &v42);
    v18 = *(v2 + 7);
    *(v2 + 16) = *(v2 + 6);
    *(v2 + 17) = v18;
    v19 = *(v2 + 9);
    *(v2 + 18) = *(v2 + 8);
    *(v2 + 19) = v19;
    v20 = *(v2 + 3);
    *(v2 + 12) = *(v2 + 2);
    *(v2 + 13) = v20;
    v21 = *(v2 + 5);
    *(v2 + 14) = *(v2 + 4);
    *(v2 + 15) = v21;
    v22 = *(v2 + 1);
    *(v2 + 10) = *v2;
    *(v2 + 11) = v22;
    outlined destroy of BodyTrackingComponent?((v2 + 20), &_s17RealityFoundation5IKRigV10ConstraintVSgMd, &_s17RealityFoundation5IKRigV10ConstraintVSgMR);
  }

  else
  {
    v23 = v2[85];
    v24 = v2[84];
    v25 = v2[83];
    v26 = v2[82];
    v27 = *(v2 + 7);
    v38 = *(v2 + 6);
    v39 = v27;
    v28 = *(v2 + 9);
    v40 = *(v2 + 8);
    v41 = v28;
    v29 = *(v2 + 3);
    v34 = *(v2 + 2);
    v35 = v29;
    v30 = *(v2 + 5);
    v36 = *(v2 + 4);
    v37 = v30;
    v31 = *(v2 + 1);
    v32 = *v2;
    v33 = v31;
    v2[20] = v26;
    v2[21] = v25;
    v42 = StringProtocol.hash.getter();
    IKRig.ConstraintsCollection.subscript.setter(&v32, &v42);
  }

  free(v2);
}

{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    v2[26] = v4;
    v2[27] = v3;
    v6 = v2[7];
    v8 = v2[8];
    v7 = v2[9];
    v2[28] = v8;
    v2[29] = v7;
    v10 = v2[2];
    v9 = v2[3];
    v11 = v2[1];
    v2[22] = v10;
    v2[23] = v9;
    v12 = v2[3];
    v14 = v2[4];
    v13 = v2[5];
    v2[24] = v14;
    v2[25] = v13;
    v15 = v2[1];
    v16 = *v2;
    v2[20] = *v2;
    v2[21] = v15;
    v38 = v4;
    v39 = v6;
    v17 = v2[9];
    v40 = v8;
    v41 = v17;
    v34 = v10;
    v35 = v12;
    v36 = v14;
    v37 = v5;
    v18 = *(v2 + 81);
    v19 = *(v2 + 80);
    v32 = v16;
    v33 = v11;
    v42 = v18;
    outlined init with copy of [String : String]((v2 + 20), (v2 + 30), &_s17RealityFoundation5IKRigV10ConstraintVSgMd, &_s17RealityFoundation5IKRigV10ConstraintVSgMR);
    IKRig.ConstraintsCollection.subscript.setter(&v32, &v42);
    v20 = v2[7];
    v2[16] = v2[6];
    v2[17] = v20;
    v21 = v2[9];
    v2[18] = v2[8];
    v2[19] = v21;
    v22 = v2[3];
    v2[12] = v2[2];
    v2[13] = v22;
    v23 = v2[5];
    v2[14] = v2[4];
    v2[15] = v23;
    v24 = v2[1];
    v2[10] = *v2;
    v2[11] = v24;
    outlined destroy of BodyTrackingComponent?((v2 + 10), &_s17RealityFoundation5IKRigV10ConstraintVSgMd, &_s17RealityFoundation5IKRigV10ConstraintVSgMR);
  }

  else
  {
    v25 = *(v2 + 81);
    v26 = *(v2 + 80);
    v27 = v2[7];
    v38 = v2[6];
    v39 = v27;
    v28 = v2[9];
    v40 = v2[8];
    v41 = v28;
    v29 = v2[3];
    v34 = v2[2];
    v35 = v29;
    v30 = v2[5];
    v36 = v2[4];
    v37 = v30;
    v31 = v2[1];
    v32 = *v2;
    v33 = v31;
    v42 = v25;
    IKRig.ConstraintsCollection.subscript.setter(&v32, &v42);
  }

  free(v2);
}

void (*IKRig.ConstraintsCollection.subscript.modify(uint64_t *a1, uint64_t *a2))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x290uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 640) = v2;
  v7 = *a2;
  *(v6 + 648) = *a2;
  v8 = v2[1];
  if (!*(v8 + 16) || (v9 = *v2, v10 = v2[1], result = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v12 & 1) == 0))
  {
    _s17RealityFoundation5IKRigV10ConstraintVSgWOi0_(v6);
    return IKRig.ConstraintsCollection.subscript.modify;
  }

  v13 = *(*(v8 + 56) + 8 * result);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(v9 + 16))
  {
    v14 = (v9 + 160 * v13);
    v15 = v14[3];
    *(v6 + 320) = v14[2];
    *(v6 + 336) = v15;
    v16 = v14[4];
    v17 = v14[5];
    v18 = v14[7];
    *(v6 + 384) = v14[6];
    *(v6 + 400) = v18;
    *(v6 + 352) = v16;
    *(v6 + 368) = v17;
    v19 = v14[8];
    v20 = v14[9];
    v21 = v14[11];
    *(v6 + 448) = v14[10];
    *(v6 + 464) = v21;
    *(v6 + 416) = v19;
    *(v6 + 432) = v20;
    memmove((v6 + 160), v14 + 2, 0xA0uLL);
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v6 + 160, v22);
    v23 = *(v6 + 272);
    *(v6 + 96) = *(v6 + 256);
    *(v6 + 112) = v23;
    v24 = *(v6 + 304);
    *(v6 + 128) = *(v6 + 288);
    *(v6 + 144) = v24;
    v25 = *(v6 + 208);
    *(v6 + 32) = *(v6 + 192);
    *(v6 + 48) = v25;
    v26 = *(v6 + 240);
    *(v6 + 64) = *(v6 + 224);
    *(v6 + 80) = v26;
    v27 = *(v6 + 176);
    *v6 = *(v6 + 160);
    *(v6 + 16) = v27;
    outlined init with copy of IKRig.Constraint(v6 + 320, v6 + 480);
    return IKRig.ConstraintsCollection.subscript.modify;
  }

  __break(1u);
  return result;
}

uint64_t IKRig.JointCollection.contains(_:)(void *a1, void (*a2)(void))
{
  if (*(*(v2 + 8) + 16))
  {
    a2(*a1);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void IKRig.ConstraintsCollection.set(_:)(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = a1[7];
  v76 = a1[6];
  v77 = v5;
  v6 = a1[9];
  v78 = a1[8];
  v79 = v6;
  v7 = a1[3];
  v72 = a1[2];
  v73 = v7;
  v8 = a1[5];
  v74 = a1[4];
  v75 = v8;
  v9 = a1[1];
  v70 = *a1;
  v71 = v9;
  v60 = v70;
  lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.hash.getter();
  v11 = v2[1];
  if (!*(v11 + 2) || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v13 & 1) == 0))
  {
    _s17RealityFoundation5IKRigV10ConstraintVSgWOi0_(&v60);
    v45 = v67;
    a2[6] = v66;
    a2[7] = v45;
    v46 = v69;
    a2[8] = v68;
    a2[9] = v46;
    v47 = v63;
    a2[2] = v62;
    a2[3] = v47;
    v48 = v65;
    a2[4] = v64;
    a2[5] = v48;
    v43 = v60;
    v44 = v61;
    goto LABEL_8;
  }

  v14 = *(*(v11 + 7) + 8 * v12);
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = *v3;
  if (v14 >= *(*v3 + 2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = &v11[160 * v14];
  v16 = *(v15 + 3);
  v60 = *(v15 + 2);
  v61 = v16;
  v17 = *(v15 + 4);
  v18 = *(v15 + 5);
  v19 = *(v15 + 7);
  v64 = *(v15 + 6);
  v65 = v19;
  v62 = v17;
  v63 = v18;
  v20 = *(v15 + 8);
  v21 = *(v15 + 9);
  v22 = *(v15 + 11);
  v68 = *(v15 + 10);
  v69 = v22;
  v66 = v20;
  v67 = v21;
  outlined init with copy of IKRig.Constraint(&v60, &v50);
  outlined init with copy of IKRig.Constraint(&v70, &v50);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_11:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
  }

  v23 = &v11[160 * v14];
  v24 = *(v23 + 3);
  v49[0] = *(v23 + 2);
  v49[1] = v24;
  v25 = *(v23 + 4);
  v26 = *(v23 + 5);
  v27 = *(v23 + 7);
  v49[4] = *(v23 + 6);
  v49[5] = v27;
  v49[2] = v25;
  v49[3] = v26;
  v28 = *(v23 + 8);
  v29 = *(v23 + 9);
  v30 = *(v23 + 11);
  v49[8] = *(v23 + 10);
  v49[9] = v30;
  v49[6] = v28;
  v49[7] = v29;
  v31 = v71;
  *(v23 + 2) = v70;
  *(v23 + 3) = v31;
  v32 = v72;
  v33 = v73;
  v34 = v75;
  *(v23 + 6) = v74;
  *(v23 + 7) = v34;
  *(v23 + 4) = v32;
  *(v23 + 5) = v33;
  v35 = v76;
  v36 = v77;
  v37 = v79;
  *(v23 + 10) = v78;
  *(v23 + 11) = v37;
  *(v23 + 8) = v35;
  *(v23 + 9) = v36;
  outlined destroy of IKRig.Constraint(v49);
  *v3 = v11;
  v56 = v66;
  v57 = v67;
  v58 = v68;
  v59 = v69;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v55 = v65;
  v50 = v60;
  v51 = v61;
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(&v50, v38);
  v39 = v57;
  a2[6] = v56;
  a2[7] = v39;
  v40 = v59;
  a2[8] = v58;
  a2[9] = v40;
  v41 = v53;
  a2[2] = v52;
  a2[3] = v41;
  v42 = v55;
  a2[4] = v54;
  a2[5] = v42;
  v43 = v50;
  v44 = v51;
LABEL_8:
  *a2 = v43;
  a2[1] = v44;
}

unint64_t IKRig.ConstraintsCollection.subscript.getter@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = (*v2 + 160 * result);
    v4 = v3[3];
    v17[0] = v3[2];
    v17[1] = v4;
    v5 = v3[4];
    v6 = v3[5];
    v7 = v3[7];
    v17[4] = v3[6];
    v17[5] = v7;
    v17[2] = v5;
    v17[3] = v6;
    v8 = v3[8];
    v9 = v3[9];
    v10 = v3[11];
    v17[8] = v3[10];
    v17[9] = v10;
    v17[6] = v8;
    v17[7] = v9;
    v11 = v3[9];
    a2[6] = v3[8];
    a2[7] = v11;
    v12 = v3[11];
    a2[8] = v3[10];
    a2[9] = v12;
    v13 = v3[5];
    a2[2] = v3[4];
    a2[3] = v13;
    v14 = v3[7];
    a2[4] = v3[6];
    a2[5] = v14;
    v15 = v3[3];
    *a2 = v3[2];
    a2[1] = v15;
    return outlined init with copy of IKRig.Constraint(v17, &v16);
  }

  __break(1u);
  return result;
}

uint64_t key path getter for IKRig.ConstraintsCollection.subscript(_:) : IKRig.ConstraintsCollection@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *result;
    if (v5 < *(*result + 16))
    {
      v22 = v3;
      v23 = v4;
      v7 = (v6 + 160 * v5);
      v8 = v7[3];
      v21[0] = v7[2];
      v21[1] = v8;
      v9 = v7[4];
      v10 = v7[5];
      v11 = v7[7];
      v21[4] = v7[6];
      v21[5] = v11;
      v21[2] = v9;
      v21[3] = v10;
      v12 = v7[8];
      v13 = v7[9];
      v14 = v7[11];
      v21[8] = v7[10];
      v21[9] = v14;
      v21[6] = v12;
      v21[7] = v13;
      v15 = v7[9];
      a3[6] = v7[8];
      a3[7] = v15;
      v16 = v7[11];
      a3[8] = v7[10];
      a3[9] = v16;
      v17 = v7[5];
      a3[2] = v7[4];
      a3[3] = v17;
      v18 = v7[7];
      a3[4] = v7[6];
      a3[5] = v18;
      v19 = v7[3];
      *a3 = v7[2];
      a3[1] = v19;
      return outlined init with copy of IKRig.Constraint(v21, &v20);
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for IKRig.ConstraintsCollection.subscript(_:) : IKRig.ConstraintsCollection(__int128 *a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = a1[7];
  v34 = a1[6];
  v35 = v5;
  v6 = a1[9];
  v36 = a1[8];
  v37 = v6;
  v7 = a1[3];
  v30 = a1[2];
  v31 = v7;
  v8 = a1[5];
  v32 = a1[4];
  v33 = v8;
  v9 = a1[1];
  v28 = *a1;
  v29 = v9;
  v10 = *a2;
  outlined init with copy of IKRig.Constraint(&v28, v27);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
  v10 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v10 + 16))
  {
    v12 = (v10 + 160 * v4);
    v13 = v12[3];
    v27[0] = v12[2];
    v27[1] = v13;
    v14 = v12[4];
    v15 = v12[5];
    v16 = v12[7];
    v27[4] = v12[6];
    v27[5] = v16;
    v27[2] = v14;
    v27[3] = v15;
    v17 = v12[8];
    v18 = v12[9];
    v19 = v12[11];
    v27[8] = v12[10];
    v27[9] = v19;
    v27[6] = v17;
    v27[7] = v18;
    v20 = v29;
    v12[2] = v28;
    v12[3] = v20;
    v21 = v30;
    v22 = v31;
    v23 = v33;
    v12[6] = v32;
    v12[7] = v23;
    v12[4] = v21;
    v12[5] = v22;
    v24 = v34;
    v25 = v35;
    v26 = v37;
    v12[10] = v36;
    v12[11] = v26;
    v12[8] = v24;
    v12[9] = v25;
    result = outlined destroy of IKRig.Constraint(v27);
    *a2 = v10;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t IKRig.ConstraintsCollection.subscript.setter(_OWORD *a1, unint64_t a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a2)
  {
    v7 = (v5 + 160 * a2);
    v8 = v7[3];
    v20[0] = v7[2];
    v20[1] = v8;
    v9 = v7[4];
    v10 = v7[5];
    v11 = v7[7];
    v20[4] = v7[6];
    v20[5] = v11;
    v20[2] = v9;
    v20[3] = v10;
    v12 = v7[8];
    v13 = v7[9];
    v14 = v7[11];
    v20[8] = v7[10];
    v20[9] = v14;
    v20[6] = v12;
    v20[7] = v13;
    v15 = a1[7];
    v7[8] = a1[6];
    v7[9] = v15;
    v16 = a1[9];
    v7[10] = a1[8];
    v7[11] = v16;
    v17 = a1[3];
    v7[4] = a1[2];
    v7[5] = v17;
    v18 = a1[5];
    v7[6] = a1[4];
    v7[7] = v18;
    v19 = a1[1];
    v7[2] = *a1;
    v7[3] = v19;
    result = outlined destroy of IKRig.Constraint(v20);
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*IKRig.ConstraintsCollection.subscript.modify(uint64_t *a1, unint64_t a2))()
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
  *(v4 + 32) = specialized Array.subscript.modify(v4, a2);
  return IKRig.ConstraintsCollection.subscript.modify;
}

void IKRig.JointCollection.subscript.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void IKRig.ConstraintsCollection.Iterator.next()(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    _s17RealityFoundation5IKRigV10ConstraintVSgWOi0_(&v20);
    v5 = v27;
    a1[6] = v26;
    a1[7] = v5;
    v6 = v29;
    a1[8] = v28;
    a1[9] = v6;
    v7 = v23;
    a1[2] = v22;
    a1[3] = v7;
    v8 = v25;
    a1[4] = v24;
    a1[5] = v8;
    v9 = v21;
    *a1 = v20;
    a1[1] = v9;
  }

  else if (v3 >= v4)
  {
    __break(1u);
  }

  else
  {
    v10 = (*v1 + 160 * v3);
    v11 = v10[3];
    v20 = v10[2];
    v21 = v11;
    v12 = v10[4];
    v13 = v10[5];
    v14 = v10[7];
    v24 = v10[6];
    v25 = v14;
    v22 = v12;
    v23 = v13;
    v15 = v10[8];
    v16 = v10[9];
    v17 = v10[11];
    v28 = v10[10];
    v29 = v17;
    v26 = v15;
    v27 = v16;
    memmove(a1, v10 + 2, 0xA0uLL);
    v1[1] = v3 + 1;
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(a1, v18);
    outlined init with copy of IKRig.Constraint(&v20, &v19);
  }
}

void (*protocol witness for Collection.subscript.read in conformance IKRig.ConstraintsCollection(void (**a1)(uint64_t a1), unint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x1E0uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = (*v2 + 160 * v7);
    v9 = v8[3];
    *result = v8[2];
    *(result + 1) = v9;
    v10 = v8[4];
    v11 = v8[5];
    v12 = v8[7];
    *(result + 4) = v8[6];
    *(result + 5) = v12;
    *(result + 2) = v10;
    *(result + 3) = v11;
    v13 = v8[8];
    v14 = v8[9];
    v15 = v8[11];
    *(result + 8) = v8[10];
    *(result + 9) = v15;
    *(result + 6) = v13;
    *(result + 7) = v14;
    memmove(result + 160, v8 + 2, 0xA0uLL);
    outlined init with copy of IKRig.Constraint(v6, v6 + 320);
    return protocol witness for Collection.subscript.read in conformance IKRig.ConstraintsCollection;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance IKRig.ConstraintsCollection(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 272);
  v1[26] = *(*a1 + 256);
  v1[27] = v2;
  v3 = v1[19];
  v1[28] = v1[18];
  v1[29] = v3;
  v4 = v1[13];
  v1[22] = v1[12];
  v1[23] = v4;
  v5 = v1[15];
  v1[24] = v1[14];
  v1[25] = v5;
  v6 = v1[11];
  v1[20] = v1[10];
  v1[21] = v6;
  outlined destroy of IKRig.Constraint((v1 + 20));

  free(v1);
}

uint64_t *protocol witness for Collection.subscript.getter in conformance IKRig.JointCollection@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, (*v2)[2] < v4))
  {
    __break(1u);
  }

  else
  {
    v5 = v2[1];
    a2[2] = result;
    a2[3] = v5;
    *a2 = v3;
    a2[1] = v4;
  }

  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance IKRig.JointCollection@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  v4 = *(v2 + 16);
  a1[2] = 0;
  a1[3] = v4;
}

uint64_t *protocol witness for Collection.index(_:offsetBy:) in conformance IKRig.JointCollection@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.distance(from:to:) in conformance IKRig.JointCollection(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance IKRig.JointCollection(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v4 = a3(*v3, v3[1]);

  return v4;
}

double protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance IKRig.ConstraintsCollection@<D0>(Swift::OpaquePointer a1@<X0>, _OWORD *a2@<X8>)
{
  IKRig.ConstraintsCollection.init(_:)(a1);
  result = *&v4;
  *a2 = v4;
  return result;
}

double _s17RealityFoundation5IKRigV5JointVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double _s17RealityFoundation5IKRigV10ConstraintVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
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
  return result;
}

unint64_t lazy protocol witness table accessor for type IKRig.Joint.ID and conformance IKRig.Joint.ID()
{
  result = lazy protocol witness table cache variable for type IKRig.Joint.ID and conformance IKRig.Joint.ID;
  if (!lazy protocol witness table cache variable for type IKRig.Joint.ID and conformance IKRig.Joint.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKRig.Joint.ID and conformance IKRig.Joint.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IKRig.Joint.ID and conformance IKRig.Joint.ID;
  if (!lazy protocol witness table cache variable for type IKRig.Joint.ID and conformance IKRig.Joint.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKRig.Joint.ID and conformance IKRig.Joint.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKRig.Joint.LimitsDefinition.Axis and conformance IKRig.Joint.LimitsDefinition.Axis()
{
  result = lazy protocol witness table cache variable for type IKRig.Joint.LimitsDefinition.Axis and conformance IKRig.Joint.LimitsDefinition.Axis;
  if (!lazy protocol witness table cache variable for type IKRig.Joint.LimitsDefinition.Axis and conformance IKRig.Joint.LimitsDefinition.Axis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKRig.Joint.LimitsDefinition.Axis and conformance IKRig.Joint.LimitsDefinition.Axis);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKRig.Constraint.ID and conformance IKRig.Constraint.ID()
{
  result = lazy protocol witness table cache variable for type IKRig.Constraint.ID and conformance IKRig.Constraint.ID;
  if (!lazy protocol witness table cache variable for type IKRig.Constraint.ID and conformance IKRig.Constraint.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKRig.Constraint.ID and conformance IKRig.Constraint.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IKRig.Constraint.ID and conformance IKRig.Constraint.ID;
  if (!lazy protocol witness table cache variable for type IKRig.Constraint.ID and conformance IKRig.Constraint.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKRig.Constraint.ID and conformance IKRig.Constraint.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKRig.Constraint.IKPositionDemand.Mode and conformance IKRig.Constraint.IKPositionDemand.Mode()
{
  result = lazy protocol witness table cache variable for type IKRig.Constraint.IKPositionDemand.Mode and conformance IKRig.Constraint.IKPositionDemand.Mode;
  if (!lazy protocol witness table cache variable for type IKRig.Constraint.IKPositionDemand.Mode and conformance IKRig.Constraint.IKPositionDemand.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKRig.Constraint.IKPositionDemand.Mode and conformance IKRig.Constraint.IKPositionDemand.Mode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKRig.JointCollection and conformance IKRig.JointCollection()
{
  result = lazy protocol witness table cache variable for type IKRig.JointCollection and conformance IKRig.JointCollection;
  if (!lazy protocol witness table cache variable for type IKRig.JointCollection and conformance IKRig.JointCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKRig.JointCollection and conformance IKRig.JointCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKRig.JointCollection.Iterator and conformance IKRig.JointCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type IKRig.JointCollection.Iterator and conformance IKRig.JointCollection.Iterator;
  if (!lazy protocol witness table cache variable for type IKRig.JointCollection.Iterator and conformance IKRig.JointCollection.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKRig.JointCollection.Iterator and conformance IKRig.JointCollection.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKRig.ConstraintsCollection and conformance IKRig.ConstraintsCollection()
{
  result = lazy protocol witness table cache variable for type IKRig.ConstraintsCollection and conformance IKRig.ConstraintsCollection;
  if (!lazy protocol witness table cache variable for type IKRig.ConstraintsCollection and conformance IKRig.ConstraintsCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKRig.ConstraintsCollection and conformance IKRig.ConstraintsCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKRig.ConstraintsCollection.Iterator and conformance IKRig.ConstraintsCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type IKRig.ConstraintsCollection.Iterator and conformance IKRig.ConstraintsCollection.Iterator;
  if (!lazy protocol witness table cache variable for type IKRig.ConstraintsCollection.Iterator and conformance IKRig.ConstraintsCollection.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKRig.ConstraintsCollection.Iterator and conformance IKRig.ConstraintsCollection.Iterator);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IKSolverDefinition(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t storeEnumTagSinglePayload for IKSolverDefinition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy176_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for IKRig.Joint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IKRig.Joint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IKRig.Joint.LimitsDefinition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 48))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IKRig.Joint.LimitsDefinition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy160_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for IKRig.Constraint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IKRig.Constraint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IKRig.Constraint.IKPositionDemand(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IKRig.Constraint.IKPositionDemand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IKRig.Constraint.IKOrientationDemand(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 48))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for IKRig.Constraint.IKOrientationDemand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for IKRig.Constraint.IKOrientationDemand.Mode(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t ImpulseAction.targetEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return outlined copy of ActionEntityResolution();
}

uint64_t ImpulseAction.targetEntity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 16);
  result = outlined consume of ActionEntityResolution();
  *v1 = v2;
  v1[1] = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t ImpulseAction.init(targetEntity:linearImpulse:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 16) = v3;
  *(a2 + 32) = a3;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ImpulseAction.CodingKeys()
{
  if (*v0)
  {
    result = 0x6D497261656E696CLL;
  }

  else
  {
    result = 0x6E45746567726174;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImpulseAction.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E45746567726174 && a2 == 0xEC00000079746974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D497261656E696CLL && a2 == 0xED000065736C7570)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImpulseAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImpulseAction.CodingKeys and conformance ImpulseAction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImpulseAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImpulseAction.CodingKeys and conformance ImpulseAction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImpulseAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation13ImpulseActionV10CodingKeys33_271178AE062564D0078D831A89EA4DECLLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation13ImpulseActionV10CodingKeys33_271178AE062564D0078D831A89EA4DECLLOGMR);
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v13 = *(v1 + 2);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of ActionEntityResolution();
  lazy protocol witness table accessor for type ImpulseAction.CodingKeys and conformance ImpulseAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v16 = v7;
  *(&v16 + 1) = v8;
  v17 = v9;
  v18 = 0;
  lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
  v11 = v14;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of ActionEntityResolution();
  if (!v11)
  {
    v16 = v13;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v15 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type ImpulseAction.CodingKeys and conformance ImpulseAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ImpulseAction.CodingKeys and conformance ImpulseAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImpulseAction.CodingKeys and conformance ImpulseAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImpulseAction.CodingKeys and conformance ImpulseAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImpulseAction.CodingKeys and conformance ImpulseAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImpulseAction.CodingKeys and conformance ImpulseAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImpulseAction.CodingKeys and conformance ImpulseAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImpulseAction.CodingKeys and conformance ImpulseAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImpulseAction.CodingKeys and conformance ImpulseAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImpulseAction.CodingKeys and conformance ImpulseAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImpulseAction.CodingKeys and conformance ImpulseAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImpulseAction.CodingKeys and conformance ImpulseAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImpulseAction.CodingKeys and conformance ImpulseAction.CodingKeys);
  }

  return result;
}

uint64_t ImpulseAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation13ImpulseActionV10CodingKeys33_271178AE062564D0078D831A89EA4DECLLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation13ImpulseActionV10CodingKeys33_271178AE062564D0078D831A89EA4DECLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImpulseAction.CodingKeys and conformance ImpulseAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v14;
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v17 = 1;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v12 = v14;
  *a2 = v11;
  *(a2 + 16) = v16;
  *(a2 + 32) = v12;
  outlined copy of ActionEntityResolution();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined consume of ActionEntityResolution();
}

uint64_t getEnumTagSinglePayload for ImpulseAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for ImpulseAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void specialized ImpulseActionHandler.applyImpulse(event:)(float32x4_t *a1)
{
  if ((*(a1->i64[0] + 40) & 1) != 0 || (v1 = a1[1].i64[0], v2 = a1[1].i64[1], v3 = a1[2].i8[0], v61 = a1[3], (Strong = swift_weakLoadStrong()) == 0))
  {
    *v79 = 0;
    *&v79[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v77[0] = &type metadata for ImpulseAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13ImpulseActionVmMd, &_s17RealityFoundation13ImpulseActionVmMR);
    v17 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v17);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    v18 = 0xE000000000000000;
    v6 = 0;
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

  v5 = Strong;
  *v79 = v1;
  *&v79[8] = v2;
  v79[16] = v3;
  outlined copy of ActionEntityResolution();
  v6 = ActionEntityResolution.resolve(from:)(v5);
  outlined consume of ActionEntityResolution();
  if (!v6)
  {
    *v79 = 0;
    *&v79[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v77[0] = &type metadata for ImpulseAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13ImpulseActionVmMd, &_s17RealityFoundation13ImpulseActionVmMR);
    v24 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v24);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    v25 = *(v5 + 16);
    REEntityGetName();
    v26 = String.init(cString:)();
    MEMORY[0x1C68F3410](v26);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v27 = *v79;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static AnimationLogger.logger);

    v20 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v79 = v31;
      *v30 = 136315138;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, *(&v27 + 1), v79);
      _os_log_impl(&dword_1C1358000, v20, v29, "%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1C6902A30](v31, -1, -1);
      MEMORY[0x1C6902A30](v30, -1, -1);
    }

    goto LABEL_14;
  }

  v7 = *(v6 + 16);

  if (!REEntityGetComponent())
  {

    *v79 = 0;
    *&v79[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(79);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v77[0] = &type metadata for ImpulseAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13ImpulseActionVmMd, &_s17RealityFoundation13ImpulseActionVmMR);
    v32 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v32);

    v33 = " from source entity named '";
    v34 = 0xD00000000000003DLL;
LABEL_23:
    MEMORY[0x1C68F3410](v34, v33 | 0x8000000000000000);
    v36 = *(v6 + 16);
    REEntityGetName();
    v37 = String.init(cString:)();
    MEMORY[0x1C68F3410](v37);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v38 = *v79;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static AnimationLogger.logger);

    v20 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v79 = v42;
      *v41 = 136315138;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, *(&v38 + 1), v79);
      _os_log_impl(&dword_1C1358000, v20, v40, "%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1C6902A30](v42, -1, -1);
      MEMORY[0x1C6902A30](v41, -1, -1);
    }

    goto LABEL_14;
  }

  CollisionComponent.init(_:)(v79);

  v8 = *(v6 + 16);

  if (!REEntityGetComponent())
  {

    *v79 = 0;
    *&v79[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *v66 = &type metadata for ImpulseAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13ImpulseActionVmMd, &_s17RealityFoundation13ImpulseActionVmMR);
    v35 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v35);

    v33 = "nt from target entity named '";
    v34 = 0xD000000000000040;
    goto LABEL_23;
  }

  PhysicsBodyComponent.init(_:)(v66);

  v9 = v66[0];
  v74 = *&v66[65];
  v75 = *&v66[81];
  v76[0] = *&v66[97];
  *(v76 + 15) = *&v66[112];
  v70 = *&v66[1];
  v71 = *&v66[17];
  v72 = *&v66[33];
  v73 = *&v66[49];
  *(v69 + 12) = *(v68 + 12);
  v69[0] = v68[0];
  v79[0] = v66[0];
  *&v79[65] = *&v66[65];
  *&v79[81] = *&v66[81];
  *&v79[112] = *&v66[112];
  v80 = v67;
  *&v79[97] = *&v66[97];
  *&v79[1] = *&v66[1];
  *&v79[17] = *&v66[17];
  *&v79[33] = *&v66[33];
  *&v79[49] = *&v66[49];
  v60 = v67;
  v81[0] = v68[0];
  *(v81 + 12) = *(v68 + 12);
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v79, v10);
  v77[8] = v80;
  v78[0] = v81[0];
  *(v78 + 12) = *(v81 + 12);
  v77[4] = *&v79[64];
  v77[5] = *&v79[80];
  v77[6] = *&v79[96];
  v77[7] = *&v79[112];
  v77[0] = *v79;
  v77[1] = *&v79[16];
  v77[2] = *&v79[32];
  v77[3] = *&v79[48];
  if (v9 == 2)
  {
    v11 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(v6);
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 16);

      SceneNullable = REEntityGetSceneNullable();
      if (!SceneNullable)
      {
        goto LABEL_36;
      }

      v15 = SceneNullable;
      v16 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v16)
      {
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        Scene.init(coreScene:)(v15);
      }

      v52 = Scene.physicsOrigin.getter();

      if (!v52)
      {
LABEL_36:
        v52 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(v12);
      }
    }

    else
    {
      v52 = 0;
    }

    *v53.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v12, v52);
    *v56.f32 = simd_float4x4.transform(force:)(v61, v53, v54, v55);
    v62 = v56;

    v57 = vaddq_f32(v60, v62);
    *&v63[65] = v74;
    *&v63[81] = v75;
    *&v63[97] = v76[0];
    *&v63[1] = v70;
    *&v63[17] = v71;
    *&v63[33] = v72;
    v57.i32[3] = 0;
    v63[0] = 2;
    *&v63[49] = v73;
    *&v63[112] = *(v76 + 15);
    v64 = v57;
    v65[0] = v69[0];
    *(v65 + 12) = *(v69 + 12);
    *v66 = *v63;
    *&v66[16] = *&v63[16];
    *&v66[96] = *&v63[96];
    *&v66[112] = *(v76 + 15);
    *&v66[64] = *&v63[64];
    *&v66[80] = *&v63[80];
    *&v66[32] = *&v63[32];
    *&v66[48] = *&v63[48];
    v67 = v57;
    v68[0] = v65[0];
    *(v68 + 12) = *(v69 + 12);
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v66, v58);
    v80 = v67;
    v81[0] = v68[0];
    *(v81 + 12) = *(v68 + 12);
    *&v79[64] = *&v66[64];
    *&v79[80] = *&v66[80];
    *&v79[96] = *&v66[96];
    *&v79[112] = *&v66[112];
    *v79 = *v66;
    *&v79[16] = *&v66[16];
    *&v79[32] = *&v66[32];
    *&v79[48] = *&v66[48];

    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA011PhysicsBodyD0V_TtB5(v79, 0, v6);

    outlined destroy of PhysicsBodyComponent(v63);
    v18 = *(v6 + 16);

    v59 = *(v6 + 16);

    if (v18 != v59)
    {
      __break(1u);
LABEL_40:
      swift_once();
LABEL_12:
      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static AnimationLogger.logger);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v79 = v23;
        *v22 = 136315138;
        *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v18, v79);
        _os_log_impl(&dword_1C1358000, v20, v21, "%s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x1C6902A30](v23, -1, -1);
        MEMORY[0x1C6902A30](v22, -1, -1);
      }

LABEL_14:
    }
  }

  else
  {
    *v79 = 0;
    *&v79[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(124);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *v66 = &type metadata for ImpulseAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13ImpulseActionVmMd, &_s17RealityFoundation13ImpulseActionVmMR);
    v43 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v43);

    MEMORY[0x1C68F3410](0xD000000000000038, 0x80000001C18E43C0);
    v44 = *(v6 + 16);
    REEntityGetName();
    v45 = String.init(cString:)();
    MEMORY[0x1C68F3410](v45);

    MEMORY[0x1C68F3410](0xD000000000000034, 0x80000001C18E4400);
    v46 = *v79;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static AnimationLogger.logger);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v79 = v51;
      *v50 = 136315138;
      *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, *(&v46 + 1), v79);
      _os_log_impl(&dword_1C1358000, v48, v49, "%s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x1C6902A30](v51, -1, -1);
      MEMORY[0x1C6902A30](v50, -1, -1);
    }

    outlined destroy of PhysicsBodyComponent?(v77);
  }
}

uint64_t outlined destroy of PhysicsBodyComponent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit20PhysicsBodyComponentVSgMd, &_s10RealityKit20PhysicsBodyComponentVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized static __RKVisibilityHideLaunchAnimation.createVisibilityHideLaunchAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, double a2, float a3, float32x4_t a4, uint64_t a5, _BYTE *a6, char a7)
{
  v59 = a1[1];
  if (*a6)
  {
    if (*a6 == 1)
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 108, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #1 of static __RKVisibilityHideLaunchAnimation.createVisibilityHideLaunchAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 67, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #2 of static __RKVisibilityHideLaunchAnimation.createVisibilityHideLaunchAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }
  }

  else
  {
    v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 52, 0, MEMORY[0x1E69E7CC0]);
    v9 = &outlined read-only object #0 of static __RKVisibilityHideLaunchAnimation.createVisibilityHideLaunchAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
  }

  __makeXfos(_:_:)(v9, &v61);
  rawValue = v61._rawValue;
  if (!*(v61._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v11 = rawValue[1].u64[0];
  if (v11)
  {
    v12 = &rawValue[3 * v11];
    v57 = *v12;
    v58 = *(v12 - 1);
    v56 = v12[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 + 1, 1, rawValue);
LABEL_9:
  a7 &= 1u;
  v11 = rawValue[1].u64[0];
  v14 = rawValue[1].u64[1];
  v15 = v11 + 1;
  if (v11 >= v14 >> 1)
  {
    v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v11 + 1, 1, rawValue);
    v15 = v11 + 1;
    rawValue = v55;
  }

  rawValue[1].i64[0] = v15;
  f32 = rawValue[3 * v11 + 2].f32;
  *f32 = v58;
  f32[1] = v57;
  f32[2] = v56;
  v61._rawValue = rawValue;
  v17 = 0.0;
  v18 = 4;
  v19 = v15;
  do
  {
    v20 = rawValue[v18];
    v21 = fabsf(v20.f32[0]);
    if ((LODWORD(v21) & 0x7FFFFF) != 0)
    {
      v22 = v17;
    }

    else
    {
      v22 = v21;
    }

    if ((~LODWORD(v21) & 0x7F800000) != 0)
    {
      v22 = v21;
    }

    if (v21 >= v17)
    {
      v17 = v22;
    }

    v23 = fabsf(v20.f32[1]);
    if (v23 >= v17)
    {
      if ((LODWORD(v23) & 0x7FFFFF) == 0)
      {
        v17 = v23;
      }

      if ((~LODWORD(v23) & 0x7F800000) != 0)
      {
        v17 = v23;
      }
    }

    v24 = fabsf(v20.f32[2]);
    if (v24 >= v17)
    {
      if ((~LODWORD(v24) & 0x7F800000) != 0)
      {
        v17 = v24;
      }

      else if ((LODWORD(v24) & 0x7FFFFF) == 0)
      {
        v17 = v24;
      }
    }

    v18 += 3;
    --v19;
  }

  while (v19);
  v25 = 0;
  v26 = a3 / v17;
  v27 = v17 <= 0.0;
  v28 = 1.0;
  if (!v27)
  {
    v28 = v26;
  }

  v29 = vmulq_f32(v59, v59);
  *v29.i8 = vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
  v29.i32[0] = vadd_f32(*v29.i8, vdup_lane_s32(*v29.i8, 1)).u32[0];
  v30 = vrecpe_f32(v29.u32[0]);
  v31 = vmul_f32(v30, vrecps_f32(v29.u32[0], v30));
  v32 = vmulq_n_f32(vmulq_f32(v59, xmmword_1C1899C90), vmul_f32(v31, vrecps_f32(v29.u32[0], v31)).f32[0]);
  v33 = vnegq_f32(a4);
  v34 = vtrn2q_s32(a4, vtrn1q_s32(a4, v33));
  v35 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a4, v33, 8uLL), *v32.f32, 1), vextq_s8(v34, v34, 8uLL), v32.f32[0]);
  v36 = vrev64q_s32(a4);
  v36.i32[0] = v33.i32[1];
  v36.i32[3] = v33.i32[2];
  v37 = vaddq_f32(v35, vmlaq_laneq_f32(vmulq_laneq_f32(a4, v32, 3), v36, v32, 2));
  v38 = vmulq_f32(v37, xmmword_1C1899C90);
  v39 = vnegq_f32(v38);
  v40 = vtrn2q_s32(v38, vtrn1q_s32(v38, v39));
  v41 = vextq_s8(v40, v40, 8uLL);
  v42 = vextq_s8(v38, v39, 8uLL);
  v43 = vrev64q_s32(v38);
  v43.i32[0] = v39.i32[1];
  v43.i32[3] = v39.i32[2];
  v44 = vdupq_lane_s32(*v37.f32, 0);
  v45 = vdupq_laneq_s32(v37, 2);
  v46 = 4;
  do
  {
    if (v25 > v11)
    {
      __break(1u);
      goto LABEL_40;
    }

    v47 = vsubq_f32(rawValue[v46], rawValue[4]);
    v48 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v42, vmuls_lane_f32(v28, *v47.f32, 1)), v41, v28 * v47.f32[0]), v43, vmuls_lane_f32(v28, v47, 2));
    v49 = vnegq_f32(v48);
    v50 = vtrn2q_s32(v48, vtrn1q_s32(v48, v49));
    v51 = vrev64q_s32(v48);
    v51.i32[0] = v49.i32[1];
    v51.i32[3] = v49.i32[2];
    v52 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v48, v37, 3), v51, v45), vmlaq_f32(vmulq_lane_f32(vextq_s8(v48, v49, 8uLL), *v37.f32, 1), vextq_s8(v50, v50, 8uLL), v44));
    v52.i32[3] = v13;
    ++v25;
    rawValue[v46] = v52;
    v46 += 3;
  }

  while (v11 + 1 != v25);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v54 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double static _SystemUpdateRate._defaultUpdateInterval.getter()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(swift_unownedRetainStrong() + 24);

  REEngineGetServiceLocator();
  if (!REServiceLocatorGetECSService())
  {
    return 0.0;
  }

  REECSManagerGetDefaultCustomSystemUpdateInterval();
  return v3;
}

uint64_t key path getter for static _SystemUpdateRate._defaultUpdateInterval : _SystemUpdateRate.Type@<X0>(double *a1@<X8>)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v3 = *(v2 + 24);
  v4 = *(swift_unownedRetainStrong() + 24);

  REEngineGetServiceLocator();
  result = REServiceLocatorGetECSService();
  if (result)
  {
    result = REECSManagerGetDefaultCustomSystemUpdateInterval();
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  *a1 = v7;
  return result;
}

uint64_t key path setter for static _SystemUpdateRate._defaultUpdateInterval : _SystemUpdateRate.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v3 = *(v2 + 24);
  v4 = *(swift_unownedRetainStrong() + 24);

  REEngineGetServiceLocator();
  result = REServiceLocatorGetECSService();
  if (result)
  {
    REECSManagerSetDefaultCustomSystemScheduleType();
    return REECSManagerSetDefaultCustomSystemUpdateInterval();
  }

  return result;
}

uint64_t static _SystemUpdateRate._defaultUpdateInterval.setter()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(swift_unownedRetainStrong() + 24);

  REEngineGetServiceLocator();
  result = REServiceLocatorGetECSService();
  if (result)
  {
    REECSManagerSetDefaultCustomSystemScheduleType();
    return REECSManagerSetDefaultCustomSystemUpdateInterval();
  }

  return result;
}

void (*static _SystemUpdateRate._defaultUpdateInterval.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x50uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(swift_unownedRetainStrong() + 24);

  REEngineGetServiceLocator();
  if (REServiceLocatorGetECSService())
  {
    REECSManagerGetDefaultCustomSystemUpdateInterval();
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  *(v3 + 72) = v8;
  return static _SystemUpdateRate._defaultUpdateInterval.modify;
}

void static _SystemUpdateRate._defaultUpdateInterval.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(swift_unownedRetainStrong() + 24);

  REEngineGetServiceLocator();
  if (REServiceLocatorGetECSService())
  {
    REECSManagerSetDefaultCustomSystemScheduleType();
    REECSManagerSetDefaultCustomSystemUpdateInterval();
  }

  free(v1);
}

void _SystemUpdateRate.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (!(v2 >> 6))
  {
    MEMORY[0x1C68F4C10](1);
    v4 = v1;
LABEL_11:
    MEMORY[0x1C68F4C10](v4);
    return;
  }

  if (v2 >> 6 != 1)
  {
    if (v1 | v2 ^ 0x80)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_11;
  }

  MEMORY[0x1C68F4C10](2);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1C68F4C50](v3);
  Hasher._combine(_:)(v2 & 1);
}

Swift::Int _SystemUpdateRate.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  _SystemUpdateRate.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _SystemUpdateRate()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  _SystemUpdateRate.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _SystemUpdateRate()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  _SystemUpdateRate.hash(into:)();
  return Hasher._finalize()();
}

void _SystemUpdateRateProtocol._preferredUpdateRate.getter(uint64_t a1@<X8>)
{
  _SystemUpdateRateProtocol._preferredUpdateRate.getter(a1);
}

{
  *a1 = 0;
  *(a1 + 8) = 0x80;
}

uint64_t _SystemUpdateRateProtocol.setUpdateRate(scene:updateRate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a4 + 8);
  result = static System.coreCustomSystem(scene:)(a1, a3);
  if (result)
  {
    v10 = *(a1 + 16);
    v11 = v6;
    v12 = v7;
    return specialized _SystemUpdateRateProtocol.setUpdateRate(coreCustomSystem:coreScene:updateRate:)(result, v10, &v11);
  }

  return result;
}

BOOL specialized static _SystemUpdateRate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!(v3 >> 6))
  {
    if (v5 <= 0x3F)
    {
      return *&v2 == *&v4;
    }

    return 0;
  }

  if (v3 >> 6 == 1)
  {
    if ((v5 & 0xC0) == 0x40)
    {
      v6 = *a1;
      v7 = *a2;
      if (v2 == v4)
      {
        return (v5 ^ v3 ^ 1) & 1;
      }
    }

    return 0;
  }

  v9 = v3 ^ 0x80;
  v10 = v5 & 0xC0;
  if (*&v2 | v9)
  {
    v12 = v10 == 128 && *&v4 == 1;
    if (!v12 || v5 != 128)
    {
      return 0;
    }
  }

  else
  {
    v11 = v10 == 128 && *&v4 == 0;
    if (!v11 || v5 != 128)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized _SystemUpdateRateProtocol._scheduleUpdate(scene:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  result = static System.coreCustomSystem(scene:)(a1, a2);
  if (result)
  {
    v6 = *(a1 + 16);

    return RECustomSystemEnqueueUpdateWithDeadlineForScene();
  }

  return result;
}

uint64_t specialized _SystemUpdateRateProtocol.setUpdateRate(coreCustomSystem:coreScene:updateRate:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a3 + 8);
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      v4 = *a3;
      RECustomSystemSetScheduleTypeForScene();

      return RECustomSystemSetUpdateIntervalForScene();
    }

    else if (*a3 | v3 ^ 0x80)
    {

      return RECustomSystemSetScheduleTypeForScene();
    }

    else
    {

      return MEMORY[0x1EEDFB548]();
    }
  }

  else
  {
    v6 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v7 = *(v6 + 24);
    v8 = *(swift_unownedRetainStrong() + 24);

    REEngineGetPreferredFramesPerSecond();
    RECustomSystemSetScheduleTypeForScene();
    return RECustomSystemSetUpdateIntervalForScene();
  }
}

unint64_t lazy protocol witness table accessor for type _SystemUpdateRate and conformance _SystemUpdateRate()
{
  result = lazy protocol witness table cache variable for type _SystemUpdateRate and conformance _SystemUpdateRate;
  if (!lazy protocol witness table cache variable for type _SystemUpdateRate and conformance _SystemUpdateRate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SystemUpdateRate and conformance _SystemUpdateRate);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _SystemUpdateRate(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for _SystemUpdateRate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t getEnumTag for _SystemUpdateRate(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for _SystemUpdateRate(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t __Engine.Configuration.__renderFlags.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(*v1 + 16);
  result = REEngineConfigurationGetRenderFlags();
  *a1 = result;
  return result;
}

uint64_t __Engine.__allocating_init(configuration:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  __Engine.init(configuration:)(a1);
  return v2;
}

uint64_t __Engine.Configuration.__updateServices.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(*v1 + 16);
  result = REEngineConfigurationGetServicesToUpdate();
  *a1 = result;
  return result;
}

uint64_t __Engine.Configuration.clockMode.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(*v1 + 16);
  result = REEngineConfigurationGetClockMode();
  *a1 = result;
  return result;
}

uint64_t (*__Engine.Configuration.clockMode.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v3 + 16);
  *(a1 + 16) = REEngineConfigurationGetClockMode();
  return __Engine.Configuration.clockMode.modify;
}

uint64_t (*__Engine.Configuration.useMetal.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v3 + 16);
  *(a1 + 16) = REEngineConfigurationGetUseMetal();
  return __Engine.Configuration.useMetal.modify;
}

uint64_t (*__Engine.Configuration.forExportOnly.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v3 + 16);
  *(a1 + 16) = REEngineConfigurationGetForExportOnly();
  return __Engine.Configuration.forExportOnly.modify;
}

uint64_t (*__Engine.Configuration.enableVideoSupport.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v3 + 16);
  *(a1 + 16) = REEngineConfigurationGetEnableVideoSupport();
  return __Engine.Configuration.enableVideoSupport.modify;
}

uint64_t (*__Engine.Configuration.enablePreloadMXIAssets.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v3 + 16);
  *(a1 + 16) = REEngineConfigurationGetEnablePreloadMXIAssets();
  return __Engine.Configuration.enablePreloadMXIAssets.modify;
}

uint64_t (*__Engine.Configuration.useRealityIO.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v3 + 16);
  *(a1 + 16) = REEngineConfigurationGetUseRealityIO();
  return __Engine.Configuration.useRealityIO.modify;
}

uint64_t (*__Engine.Configuration.usePhysicsSceneSystem.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v3 + 16);
  *(a1 + 16) = REEngineConfigurationGetUsePhysicsSceneSystem();
  return __Engine.Configuration.usePhysicsSceneSystem.modify;
}

uint64_t __Engine.Configuration.assetRuntimeSizeLimit.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (REGetRetainCount() <= 1)
  {
    v9 = *(v3 + 16);
  }

  else
  {
    v5 = *(*v1 + 16);

    v6 = REEngineConfigurationClone();
    type metadata accessor for EngineConfiguration();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;

    v8 = *v1;

    v9 = v6;
    *v1 = v7;
  }

  return MEMORY[0x1EEDFB998](v9, a1);
}

uint64_t (*__Engine.Configuration.assetRuntimeSizeLimit.modify(uint64_t *a1))(uint64_t *a1)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v3 + 16);
  *a1 = REEngineConfigurationGetAssetRuntimeSizeLimitForResourceShareClient();
  return __Engine.Configuration.assetRuntimeSizeLimit.modify;
}

uint64_t __Engine.Configuration.assetRuntimeSizeLimit.modify(uint64_t *a1)
{
  v2 = a1[2];
  v3 = *a1;
  v4 = *(v2 + 16);
  if (REGetRetainCount() <= 1)
  {
    v10 = *(v2 + 16);
  }

  else
  {
    v5 = a1[1];
    v6 = *(*v5 + 16);

    v7 = REEngineConfigurationClone();
    type metadata accessor for EngineConfiguration();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    v9 = *v5;

    v10 = v7;
    *v5 = v8;
  }

  return MEMORY[0x1EEDFB998](v10, v3);
}

id __Engine.Configuration.device.getter()
{
  v1 = *(*v0 + 16);
  Device = REEngineConfigurationGetDevice();

  return Device;
}

uint64_t __Engine.Configuration.device.setter(uint64_t a1)
{
  specialized __Engine.Configuration.device.setter(a1, MEMORY[0x1E6998910]);

  return swift_unknownObjectRelease();
}

uint64_t (*__Engine.Configuration.device.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v3 + 16);
  *a1 = REEngineConfigurationGetDevice();
  return __Engine.Configuration.device.modify;
}

uint64_t __Engine.Configuration.device.modify(uint64_t *a1, char a2)
{
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 16);
  if (a2)
  {
    v6 = *a1;
    swift_unknownObjectRetain();
    if (REGetRetainCount() <= 1)
    {
      v18 = *(v3 + 16);
    }

    else
    {
      v7 = a1[1];
      v8 = *(*v7 + 16);

      v9 = REEngineConfigurationClone();
      type metadata accessor for EngineConfiguration();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;

      v11 = *v7;

      *v7 = v10;
    }

    REEngineConfigurationSetDevice();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = *(v3 + 16);
    if (REGetRetainCount() <= 1)
    {
      v19 = *(v3 + 16);
    }

    else
    {
      v13 = a1[1];
      v14 = *(*v13 + 16);

      v15 = REEngineConfigurationClone();
      type metadata accessor for EngineConfiguration();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;

      v17 = *v13;

      *v13 = v16;
    }

    REEngineConfigurationSetDevice();
  }

  return swift_unknownObjectRelease();
}

uint64_t __Engine.Configuration.useMetal.setter(char a1, uint64_t (*a2)(uint64_t, void))
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (REGetRetainCount() <= 1)
  {
    v10 = *(v4 + 16);
  }

  else
  {
    v6 = *(*v2 + 16);

    v7 = REEngineConfigurationClone();
    type metadata accessor for EngineConfiguration();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    v9 = *v2;

    v10 = v7;
    *v2 = v8;
  }

  return a2(v10, a1 & 1);
}

uint64_t (*__Engine.Configuration.isHostingSharedAudioSimulation.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v3 + 16);
  *(a1 + 16) = REEngineConfigurationGetIsHostingSharedAudioSimulation();
  return __Engine.Configuration.isHostingSharedAudioSimulation.modify;
}

uint64_t __Engine.Configuration.useMetal.modify(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(v4 + 16);
  if (REGetRetainCount() <= 1)
  {
    v12 = *(v4 + 16);
  }

  else
  {
    v7 = *a1;
    v8 = *(**a1 + 16);

    v9 = REEngineConfigurationClone();
    type metadata accessor for EngineConfiguration();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;

    v11 = *v7;

    v12 = v9;
    *v7 = v10;
  }

  return a3(v12, v5);
}

id __Engine.Configuration.queue.getter()
{
  v1 = *(*v0 + 16);
  EngineQueue = REEngineConfigurationGetEngineQueue();

  return EngineQueue;
}

void __Engine.Configuration.queue.setter(void *a1)
{
  specialized __Engine.Configuration.device.setter(a1, MEMORY[0x1E6998928]);
}

void (*__Engine.Configuration.queue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v3 + 16);
  *a1 = REEngineConfigurationGetEngineQueue();
  return __Engine.Configuration.queue.modify;
}

void __Engine.Configuration.queue.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + 16);
  if (a2)
  {
    v18 = v4;
    if (REGetRetainCount() <= 1)
    {
      v16 = *(v3 + 16);
    }

    else
    {
      v6 = *(a1 + 8);
      v7 = *(*v6 + 16);

      v8 = REEngineConfigurationClone();
      type metadata accessor for EngineConfiguration();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;

      v10 = *v6;

      *v6 = v9;
    }

    REEngineConfigurationSetEngineQueue();
  }

  else
  {
    v18 = v4;
    if (REGetRetainCount() <= 1)
    {
      v17 = *(v3 + 16);
    }

    else
    {
      v11 = *(a1 + 8);
      v12 = *(*v11 + 16);

      v13 = REEngineConfigurationClone();
      type metadata accessor for EngineConfiguration();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;

      v15 = *v11;

      *v11 = v14;
    }

    REEngineConfigurationSetEngineQueue();
  }
}

uint64_t one-time initialization function for defaultServices()
{
  REEngineConfigurationCreateDefault();
  static __Engine.Configuration.defaultServices = REEngineConfigurationGetServicesToCreate() | 0x80;

  return RERelease();
}

uint64_t one-time initialization function for defaultRenderFlags()
{
  REEngineConfigurationCreateDefault();
  static __Engine.Configuration.defaultRenderFlags = REEngineConfigurationGetRenderFlags();

  return RERelease();
}

uint64_t __Engine.Configuration.__createServices.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(*v1 + 16);
  result = REEngineConfigurationGetServicesToCreate();
  *a1 = result;
  return result;
}

uint64_t (*__Engine.Configuration.__createServices.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v3 + 16);
  *(a1 + 16) = REEngineConfigurationGetServicesToCreate();
  return __Engine.Configuration.__createServices.modify;
}

uint64_t (*__Engine.Configuration.__updateServices.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v3 + 16);
  *(a1 + 16) = REEngineConfigurationGetServicesToUpdate();
  return __Engine.Configuration.__updateServices.modify;
}

uint64_t __Engine.Configuration.__startupOptions.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(*v1 + 16);
  result = REEngineConfigurationGetStartupOptions();
  *a1 = result;
  return result;
}

uint64_t __Engine.Configuration.__renderFlags.setter(unsigned int *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (REGetRetainCount() <= 1)
  {
    v10 = *(v4 + 16);
  }

  else
  {
    v6 = *(*v2 + 16);

    v7 = REEngineConfigurationClone();
    type metadata accessor for EngineConfiguration();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    v9 = *v2;

    v10 = v7;
    *v2 = v8;
  }

  return a2(v10, v3);
}

uint64_t (*__Engine.Configuration.__startupOptions.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v3 + 16);
  *(a1 + 16) = REEngineConfigurationGetStartupOptions();
  return __Engine.Configuration.__startupOptions.modify;
}

uint64_t (*__Engine.Configuration.__renderFlags.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v3 + 16);
  *(a1 + 16) = REEngineConfigurationGetRenderFlags();
  return __Engine.Configuration.__renderFlags.modify;
}

uint64_t (*__Engine.Configuration.renderThreadPriority.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v3 + 16);
  *(a1 + 16) = REEngineConfigurationGetRenderThreadPriority();
  return __Engine.Configuration.renderThreadPriority.modify;
}

uint64_t __Engine.Configuration.init()@<X0>(uint64_t *a1@<X8>)
{
  Default = REEngineConfigurationCreateDefault();
  type metadata accessor for EngineConfiguration();
  v3 = swift_allocObject();
  *(v3 + 16) = Default;
  *a1 = v3;
  v4 = REGetRetainCount();
  v5 = *(v3 + 16);
  if (v4 >= 2)
  {

    v6 = REEngineConfigurationClone();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;

    *a1 = v7;
    v3 = v7;
  }

  REEngineConfigurationSetClockMode();
  if (one-time initialization token for defaultServices != -1)
  {
    swift_once();
  }

  v8 = *(v3 + 16);
  v9 = REGetRetainCount();
  v10 = *(v3 + 16);
  if (v9 >= 2)
  {

    v11 = REEngineConfigurationClone();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;

    *a1 = v12;
    v3 = v12;
  }

  REEngineConfigurationSetServicesToCreate();
  v13 = *(v3 + 16);
  if (REGetRetainCount() >= 2)
  {
    v14 = *(v3 + 16);

    v15 = REEngineConfigurationClone();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;

    *a1 = v16;
    v3 = v16;
  }

  v17 = *(v3 + 16);
  REEngineConfigurationSetServicesToUpdate();
  v18 = *(v3 + 16);
  if (REGetRetainCount() >= 2)
  {
    v19 = *(v3 + 16);

    v20 = REEngineConfigurationClone();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;

    *a1 = v21;
    v3 = v21;
  }

  v22 = *(v3 + 16);
  REEngineConfigurationSetStartupOptions();
  if (one-time initialization token for defaultRenderFlags != -1)
  {
    swift_once();
  }

  v23 = *(v3 + 16);
  if (REGetRetainCount() >= 2)
  {
    v24 = *(v3 + 16);

    v25 = REEngineConfigurationClone();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;

    *a1 = v26;
    v3 = v26;
  }

  v27 = *(v3 + 16);

  return REEngineConfigurationSetRenderFlags();
}

uint64_t __Engine.Configuration.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = REEngineConfigurationClone();

  type metadata accessor for EngineConfiguration();
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result;
  return result;
}

uint64_t __Engine.Configuration.renderThreadPriority.setter(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (REGetRetainCount() <= 1)
  {
    v10 = *(v4 + 16);
  }

  else
  {
    v6 = *(*v2 + 16);

    v7 = REEngineConfigurationClone();
    type metadata accessor for EngineConfiguration();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    v9 = *v2;

    v10 = v7;
    *v2 = v8;
  }

  return a2(v10, a1);
}

uint64_t (*__Engine.Configuration.renderFrameOverLap.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v3 + 16);
  *(a1 + 16) = REEngineConfigurationGetRenderFrameOverlap();
  return __Engine.Configuration.renderFrameOverLap.modify;
}

uint64_t __Engine.Configuration.clockMode.modify(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = *(v5 + 16);
  if (REGetRetainCount() <= 1)
  {
    v12 = *(v5 + 16);
  }

  else
  {
    v7 = *a1;
    v8 = *(**a1 + 16);

    v9 = REEngineConfigurationClone();
    type metadata accessor for EngineConfiguration();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;

    v11 = *v7;

    v12 = v9;
    *v7 = v10;
  }

  return a3(v12, v4);
}

uint64_t one-time initialization function for customComponents()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation21RegisterableComponent_pXpGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation21RegisterableComponent_pXpGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C1897F90;
  *(v0 + 32) = &type metadata for __RKSceneUUIDComponent;
  *(v0 + 40) = &protocol witness table for __RKSceneUUIDComponent;
  *(v0 + 48) = &type metadata for __RKScenePhysics;
  *(v0 + 56) = &protocol witness table for __RKScenePhysics;
  result = type metadata accessor for __REAnchoring();
  *(v0 + 64) = result;
  *(v0 + 72) = &protocol witness table for __REAnchoring;
  *(v0 + 80) = &type metadata for __RKEntityUUIDComponent;
  *(v0 + 88) = &protocol witness table for __RKEntityUUIDComponent;
  *(v0 + 96) = &type metadata for __RKEntityTagsComponent;
  *(v0 + 104) = &protocol witness table for __RKEntityTagsComponent;
  static __Engine.customComponents = v0;
  return result;
}

uint64_t __Engine.asyncOnEngineQueue(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 32);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_14;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v13, v9, v14);
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

uint64_t __Engine.asyncAfterOnEngineQueue(deadline:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v11 = *(v18 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v3 + 32);
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_11_0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3C60](v19, v14, v10, v15);
  _Block_release(v15);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v18);
}

uint64_t key path setter for __Engine.services : __Engine(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __Engine.services.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t __Engine.hasRenderedThisFrame.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

void (*__Engine.acceptingInput.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = *(v1 + 24);
  *(a1 + 8) = REEngineGetAcceptingInput();
  return __Engine.acceptingInput.modify;
}

void __Engine.acceptingInput.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  JUMPOUT(0x1C68F93A0);
}

void *__Engine.init(configuration:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  *(v1 + 40) = 0;
  v4 = v1 + 40;
  *(v1 + 48) = 0;
  type metadata accessor for NamedFileAssetResolver();
  v5 = swift_allocObject();
  v5[2] = MEMORY[0x1E69E7CC8];
  v5[3] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v5[4] = @objc closure #1 in variable initialization expression of NamedFileAssetResolver.callback;
  *(v4 + 16) = v5;
  *(v4 - 24) = v3;
  v6 = *(v3 + 16);

  v7 = REEngineConfigurationGetEngineQueue();
  if (!v7)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v7 = static OS_dispatch_queue.main.getter();
  }

  v2[4] = v7;
  v8 = *(v3 + 16);
  if (REEngineConfigurationGetEnableInteractions() && one-time initialization token for interactionComponentInitializer != -1)
  {
    swift_once();
  }

  if (one-time initialization token for builtInComponentsInitializer != -1)
  {
    swift_once();
  }

  v2[3] = REEngineCreate();
  v9 = *(v3 + 16);
  REEngineConfigurationClone();
  v10 = v2[4];
  REEngineConfigurationSetEngineQueue();
  v11 = *(v3 + 16);
  if (REEngineConfigurationGetDevice())
  {
    swift_unknownObjectRelease();
    v12 = *(v3 + 16);
    v13 = REEngineConfigurationGetDevice();

    REEngineConfigurationSetDevice();
    swift_unknownObjectRelease();
  }

  else
  {
  }

  v14 = v2[3];
  REEngineInitWithConfiguration();
  v15 = v2[3];
  REEngineSetCallbacksEx();
  v16 = v2[3];
  REEngineSetSwiftObject();
  MEMORY[0x1C68F93A0](v2[3], 0);
  type metadata accessor for __ServiceLocator();
  swift_allocObject();

  v18 = specialized __ServiceLocator.init(engine:)(v17);

  swift_beginAccess();
  v19 = v2[5];
  v2[5] = v18;

  __Engine.commonPostInit()();
  RERelease();
  return v2;
}

uint64_t static __Engine.__ensureInteractionsComponentIsRegistered()()
{
  if (one-time initialization token for interactionComponentInitializer != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t static __Engine.__ensureBuiltInComponentsAreRegistered()()
{
  if (one-time initialization token for builtInComponentsInitializer != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t engineUpdateCallback(coreEngine:)()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = REEngineGetSwiftObject();
  if (result)
  {
    v6 = result;

    REEngineGetDeltaTime();
    v8 = v7;
    if (one-time initialization token for UpdateLoop != -1)
    {
      swift_once();
    }

    v9 = static __REOSLog.UpdateLoop;
    if (one-time initialization token for UpdateLoop != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v0, static __RESignpostID.UpdateLoop);
    v11 = v1[2];
    v11(v4, v10, v0);
    v12 = type metadata accessor for __REOSSignpostScope();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v11((v15 + OBJC_IVAR____TtC10RealityKit19__REOSSignpostScope_signpostID), v4, v0);
    v16 = v9;
    static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v17 = v1[1];
    v17(v4, v0);
    result = swift_beginAccess();
    v18 = *(v6 + 40);
    if (v18)
    {
      v19 = *(v18 + 32);
      v25 = 0;
      memset(v24, 0, sizeof(v24));

      specialized EventService.publish<A>(_:on:componentType:)(v24, 0, 0, v8);

      outlined destroy of BodyTrackingComponent?(v24, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
      swift_setDeallocating();
      static os_signpost_type_t.end.getter();
      v20 = OBJC_IVAR____TtC10RealityKit19__REOSSignpostScope_signpostID;
      v21 = v16;
      os_signpost(_:dso:log:name:signpostID:)();

      v17((v15 + v20), v0);
      v22 = *(*v15 + 48);
      v23 = *(*v15 + 52);
      swift_deallocClassInstance();
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t engineRenderCallback(coreEngine:)()
{
  result = REEngineGetSwiftObject();
  if (result)
  {
    v1 = result;

    swift_beginAccess();
    *(v1 + 48) = 0;
    result = swift_beginAccess();
    v2 = *(v1 + 40);
    if (v2)
    {
      v3 = *(v2 + 32);
      v5 = 0;
      memset(v4, 0, sizeof(v4));

      specialized EventService.publish<A>(_:on:componentType:)(v4, 0, 0);

      outlined destroy of BodyTrackingComponent?(v4, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id __Engine.init(coreEngine:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 40) = 0;
  v4 = v1 + 40;
  *(v1 + 48) = 0;
  type metadata accessor for NamedFileAssetResolver();
  v5 = swift_allocObject();
  v5[2] = MEMORY[0x1E69E7CC8];
  v5[3] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v5[4] = @objc closure #1 in variable initialization expression of NamedFileAssetResolver.callback;
  *(v4 + 16) = v5;
  RERetain();
  *(v4 - 16) = a1;
  REEngineConfigurationCreateFromEngine();
  RERetain();
  v6 = REEngineConfigurationClone();
  RERelease();
  type metadata accessor for EngineConfiguration();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v4 - 24) = v7;
  result = REEngineConfigurationGetEngineQueue();
  if (result)
  {
    *(v2 + 32) = result;
    v9 = *(*(v2 + 16) + 16);
    if (REEngineConfigurationGetEnableInteractions() && one-time initialization token for interactionComponentInitializer != -1)
    {
      swift_once();
    }

    if (one-time initialization token for builtInComponentsInitializer != -1)
    {
      swift_once();
    }

    type metadata accessor for __ServiceLocator();
    swift_allocObject();

    v11 = __ServiceLocator.init(engine:)(v10);
    swift_beginAccess();
    v12 = *(v2 + 40);
    *(v2 + 40) = v11;

    REEngineSetCallbacksEx();
    v13 = REEngineSetSwiftObject();
    if (static __ServiceLocator.sharedEngine)
    {
      v14 = *(v2 + 24);

      REEngineSetShared();
      static __ServiceLocator.sharedEngine = v2;
    }

    __Engine.commonPostInit()(v13);
    RERelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __Engine.commonPostInit()()
{
  v1 = v0;
  result = swift_beginAccess();
  v3 = v0[5];
  if (!v3)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, v23);
  if (one-time initialization token for instances != -1)
  {
    swift_once();
  }

  v4 = static __RealityFileURLResolver.instances;
  v5 = v24;
  v6 = v25;
  v7 = __swift_project_boxed_opaque_existential_1(v23, v24);

  v8 = specialized AssetServiceScopedRegistry.instance(for:)(v7, v4, v5, v6);

  result = __swift_destroy_boxed_opaque_existential_1(v23);
  if (!v1[5])
  {
    goto LABEL_14;
  }

  outlined init with copy of __REAssetService((v8 + 2), v23);
  v9 = v24;
  v10 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v10 + 32))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v23);
  outlined init with copy of __REAssetService((v8 + 2), v23);
  v11 = v24;
  v12 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v12 + 32))(v11, v12);
  String.utf8CString.getter();
  REAssetManagerRegisterAssetResolver();

  result = __swift_destroy_boxed_opaque_existential_1(v23);
  v13 = v1[5];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v14 = v1[7];
  swift_beginAccess();
  outlined init with copy of __REAssetService(v13 + 120, v23);
  v15 = v24;
  v16 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v16 + 32))(v15, v16);
  v17 = *(v14 + 32);
  String.utf8CString.getter();
  REAssetManagerRegisterAssetResolver();

  __swift_destroy_boxed_opaque_existential_1(v23);
  v18 = v1[3];
  ServiceLocator = REEngineGetServiceLocator();
  if (MEMORY[0x1C68FE200](ServiceLocator))
  {
    REAudioSceneServiceSetSTSControl();
    REAudioSceneServiceSetExternalSourceControl();
  }

  v20 = v1[2];
  v21 = *(v20 + 16);
  if ((REEngineConfigurationGetServicesToCreate() & 4) != 0)
  {
    __Engine.__registerREKitBuiltInActions()();
  }

  v22 = *(v20 + 16);
  result = REEngineConfigurationGetServicesToCreate();
  if ((result & 0x20) != 0)
  {
    _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA08ConstantcD0V_Tt1g5(v1, closure #1 in __Engine.__registerREKitBuiltInForceEffects(), 0);
    _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA014ConstantRadialcD0V_Tt1g5(v1, closure #2 in __Engine.__registerREKitBuiltInForceEffects(), 0);
    _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA06RadialcD0V_Tt1g5(v1, closure #3 in __Engine.__registerREKitBuiltInForceEffects(), 0);
    _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA06VortexcD0V_Tt1g5(v1, closure #4 in __Engine.__registerREKitBuiltInForceEffects(), 0);
    _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA04DragcD0V_Tt1g5(v1, closure #5 in __Engine.__registerREKitBuiltInForceEffects(), 0);
    return _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA010TurbulencecD0V_Tt1g5(v1, closure #6 in __Engine.__registerREKitBuiltInForceEffects(), 0);
  }

  return result;
}

uint64_t __Engine.deinit()
{
  result = swift_beginAccess();
  v2 = *(v0 + 40);
  if (!v2)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v22);
  if (one-time initialization token for instances != -1)
  {
    swift_once();
  }

  v3 = static __RealityFileURLResolver.instances;
  v4 = v23;
  v5 = v24;
  v6 = __swift_project_boxed_opaque_existential_1(v22, v23);

  v7 = specialized AssetServiceScopedRegistry.instance(for:)(v6, v3, v4, v5);

  __swift_destroy_boxed_opaque_existential_1(v22);
  v8 = v7[7];
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in __RealityFileURLResolver.unregisterRealityFileResolver();
  *(v9 + 24) = v7;
  v24 = _sIg_Ieg_TRTA_0;
  v25 = v9;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = thunk for @escaping @callee_guaranteed () -> ();
  v23 = &block_descriptor_15;
  v10 = _Block_copy(v22);
  v11 = v8;

  dispatch_sync(v11, v10);

  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = *(v0 + 24);
  REEngineUnsetCallbacksEx();
  v13 = *(v0 + 24);
  result = REEngineSetSwiftObject();
  v14 = *(v0 + 40);
  if (!v14)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (*(v14 + 216) == 1)
  {
    *(v14 + 216) = 0;
    swift_beginAccess();
    v15 = *(v14 + 16);

    REServiceLocatorSetSwiftObject();
    v16 = *(v14 + 224);
    if (v16)
    {
      dlclose(v16);
      *(v14 + 224) = 0;
    }
  }

  v17 = *(v0 + 40);
  *(v0 + 40) = 0;

  v18 = *(v0 + 24);
  RERelease();
  v19 = *(v0 + 16);

  v20 = *(v0 + 40);

  v21 = *(v0 + 56);

  return v0;
}

uint64_t __Engine.__deallocating_deinit()
{
  __Engine.deinit();

  return swift_deallocClassInstance();
}

uint64_t static __Engine.__fromCore(_:)(uint64_t *a1)
{
  v1 = *a1;
  SwiftObject = REEngineGetSwiftObject();
  if (SwiftObject)
  {
    v3 = SwiftObject;
  }

  else
  {
    type metadata accessor for __Engine();
    v3 = swift_allocObject();
    __Engine.init(coreEngine:)(v1);
  }

  return v3;
}

void closure #1 in variable initialization expression of static __Engine.builtInComponentsInitializer()
{
  if ((static __Engine.customComponentsRegistered & 1) == 0)
  {
    static __Engine.customComponentsRegistered = 1;
    specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
    if (one-time initialization token for customComponents != -1)
    {
LABEL_9:
      swift_once();
    }

    v0 = static __Engine.customComponents;
    v1 = static __Engine.customComponents + 40;
    v2 = -*(static __Engine.customComponents + 16);
    v3 = -1;
    while (v2 + v3 != -1)
    {
      if (++v3 >= *(v0 + 16))
      {
        __break(1u);
        goto LABEL_9;
      }

      v4 = v1 + 16;
      v5 = *(v1 - 8);
      (*(*v1 + 8))();
      v1 = v4;
    }
  }
}

uint64_t static __Engine.__registerREKitComponents()()
{
  if ((static __Engine.customComponentsRegistered & 1) == 0)
  {
    v1 = v0;
    static __Engine.customComponentsRegistered = 1;
    result = specialized static SceneManager.customComponentType(_:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent);
    if (one-time initialization token for customComponents != -1)
    {
LABEL_9:
      result = swift_once();
    }

    v3 = static __Engine.customComponents;
    v4 = static __Engine.customComponents + 40;
    v5 = -*(static __Engine.customComponents + 16);
    v6 = -1;
    v7 = v1;
    while (v5 + v6 != -1)
    {
      if (++v6 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_9;
      }

      v8 = v4 + 16;
      v1 = *(v4 - 8);
      result = (*(*v4 + 8))();
      v4 = v8;
      if (v7)
      {
        return result;
      }
    }
  }

  return result;
}

void closure #1 in variable initialization expression of static __Engine.interactionComponentInitializer()
{
  if ((static __Engine.interactionsComponentsRegistered & 1) == 0)
  {
    static __Engine.interactionsComponentsRegistered = 1;
    type metadata accessor for __RKEntityInteractionsComponent.Registration();
    swift_allocObject();
    v0 = __RKEntityInteractionsComponent.Registration.init()();
    swift_beginAccess();
    static __RKEntityInteractionsComponent.registration = v0;
  }
}

void static __Engine.__registerInteractionComponent()()
{
  if ((static __Engine.interactionsComponentsRegistered & 1) == 0)
  {
    static __Engine.interactionsComponentsRegistered = 1;
    type metadata accessor for __RKEntityInteractionsComponent.Registration();
    swift_allocObject();
    v1 = __RKEntityInteractionsComponent.Registration.init()();
    if (!v0)
    {
      v2 = v1;
      swift_beginAccess();
      static __RKEntityInteractionsComponent.registration = v2;
    }
  }
}

uint64_t static __Engine.__unregisterREKitComponents()()
{
  if (static __Engine.customComponentsRegistered == 1)
  {
    static __Engine.customComponentsRegistered = 0;
    result = specialized static SceneManager.unregisterCustomComponents()();
    if (one-time initialization token for customComponents != -1)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v1 = static __Engine.customComponents;
      v2 = *(static __Engine.customComponents + 16);
      if (!v2)
      {
        break;
      }

      v3 = static __Engine.customComponents + 16 * v2 + 24;
      while (v2 <= *(v1 + 16))
      {
        --v2;
        v4 = *(v3 - 8);
        result = (*(*v3 + 16))();
        v3 -= 16;
        if (!v2)
        {
          return result;
        }
      }

      __break(1u);
LABEL_9:
      result = swift_once();
    }
  }

  return result;
}

uint64_t static __Engine.__unregisterInteractionComponent()()
{
  if (static __Engine.interactionsComponentsRegistered == 1)
  {
    static __Engine.interactionsComponentsRegistered = 0;
    swift_beginAccess();
    static __RKEntityInteractionsComponent.registration = 0;
  }

  return result;
}

Swift::Void __swiftcall __Engine.__registerREKitBuiltInActions()()
{
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA013PlayAnimationD0V_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA013PlayAnimationD0V_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA013PlayAnimationcD0V_Tt1g5(v0, closure #1 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA012NotificationD0V_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA012NotificationD0V_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA012NotificationcD0V_Tt1g5(v0, closure #2 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc7EnabledD0V_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc7EnabledD0V_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA016SetEntityEnabledcD0V_Tt1g5(v0, closure #3 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA07ImpulseD0V_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA07ImpulseD0V_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA07ImpulsecD0V_Tt1g5(v0, closure #4 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA05OrbitcD0V_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA05OrbitcD0V_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA011OrbitEntitycD0V_Tt1g5(v0, closure #5 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA04SpinD0V_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA04SpinD0V_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA04SpincD0V_Tt1g5(v0, closure #6 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA09BillboardD0V_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA09BillboardD0V_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA09BillboardcD0V_Tt1g5(v0, closure #7 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0VySfG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0VySfG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0VySfG_Tt1g5(v0, closure #8 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0VySdG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0VySdG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0VySdG_Tt1g5(v0, closure #9 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0Vys5SIMD2VySfGG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0Vys5SIMD2VySfGG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1g5(v0, closure #10 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0Vys5SIMD3VySfGG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0Vys5SIMD3VySfGG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0Vys5SIMD3VySfGG_Tt1g5(v0, closure #11 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0Vys5SIMD4VySfGG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0Vys5SIMD4VySfGG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0Vys5SIMD4VySfGG_Tt1g5(v0, closure #12 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0VySo10simd_quatfaG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0VySo10simd_quatfaG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0VySo10simd_quatfaG_Tt1g5(v0, closure #13 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0Vy0A3Kit9TransformVG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0Vy0A3Kit9TransformVG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0VyAF9TransformVG_Tt1g5(v0, closure #14 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0VyAA15JointTransformsVG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0VyAA15JointTransformsVG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0VyAA15JointTransformsVG_Tt1g5(v0, closure #15 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0VyAA17BlendShapeWeightsVG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0VyAA17BlendShapeWeightsVG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1g5(v0, closure #16 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySfG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySfG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0VySfG_Tt1g5(v0, closure #17 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySdG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySdG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0VySdG_Tt1g5(v0, closure #18 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0Vys5SIMD2VySfGG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0Vys5SIMD2VySfGG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt1g5(v0, closure #19 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0Vys5SIMD3VySfGG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0Vys5SIMD3VySfGG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt1g5(v0, closure #20 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0Vys5SIMD4VySfGG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0Vys5SIMD4VySfGG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt1g5(v0, closure #21 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySo10simd_quatfaG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySo10simd_quatfaG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1g5(v0, closure #22 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySiG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySiG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0VySiG_Tt1g5(v0, closure #23 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySbG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySbG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0VySbG_Tt1g5(v0, closure #24 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySSG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySSG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0VySSG_Tt1g5(v0, closure #25 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0Vy0A3Kit9TransformVG_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0Vy0A3Kit9TransformVG_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0VyAF9TransformVG_Tt1g5(v0, closure #26 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA09PlayAudioD0V_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA09PlayAudioD0V_Ttg5();
  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA09PlayAudiocD0V_Tt1g5(v0, closure #27 in __Engine.__registerREKitBuiltInActions(), 0);
  _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA09EmphasizeD0V_Ttg5();
  _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA09EmphasizeD0V_Ttg5();

  _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA09EmphasizecD0V_Tt1g5(v0, closure #28 in __Engine.__registerREKitBuiltInActions(), 0);
}

void closure #1 in __Engine.__registerREKitBuiltInActions()(void *a1@<X8>)
{
  a1[3] = &type metadata for PlayAnimationActionHandler;
  a1[4] = &protocol witness table for PlayAnimationActionHandler;
  *a1 = 0;
}

double closure #5 in __Engine.__registerREKitBuiltInActions()@<D0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v5 = xmmword_1EBEB2BB0;
  v6 = static Transform.identity;
  v4 = xmmword_1EBEB2BC0;
  a1[3] = &type metadata for OrbitEntityActionHandler;
  a1[4] = &protocol witness table for OrbitEntityActionHandler;
  v2 = swift_allocObject();
  *a1 = v2;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = v6;
  *(v2 + 64) = v5;
  *(v2 + 80) = v4;
  *(v2 + 96) = v6;
  *(v2 + 112) = v5;
  *(v2 + 128) = v4;
  result = 0.0;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 1;
  *(v2 + 200) = 0;
  return result;
}

uint64_t closure #6 in __Engine.__registerREKitBuiltInActions()@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for SpinActionHandler;
  a1[4] = &protocol witness table for SpinActionHandler;
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 1;
  return result;
}

void closure #7 in __Engine.__registerREKitBuiltInActions()(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for BillboardActionHandler;
  *(a1 + 32) = &protocol witness table for BillboardActionHandler;
  *a1 = 0;
  *(a1 + 4) = 1;
}

uint64_t closure #8 in __Engine.__registerREKitBuiltInActions()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySfGMd, &_s17RealityFoundation21FromToByActionHandlerVySfGMR);
  result = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Float> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySfGMd, &_s17RealityFoundation21FromToByActionHandlerVySfGMR);
  *(a1 + 32) = result;
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  return result;
}

uint64_t closure #9 in __Engine.__registerREKitBuiltInActions()@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, unint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  result = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(a3, a1, a2);
  *(a4 + 32) = result;
  *a4 = 0;
  *(a4 + 8) = 1;
  *(a4 + 16) = 0;
  return result;
}

uint64_t closure #11 in __Engine.__registerREKitBuiltInActions()@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, unint64_t *a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  a4[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(a3, a1, a2);
  result = swift_allocObject();
  *a4 = result;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 1;
  *(result + 40) = 0;
  return result;
}

double closure #14 in __Engine.__registerREKitBuiltInActions()@<D0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR);
  a1[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Transform> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR);
  v2 = swift_allocObject();
  *a1 = v2;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 1;
  *(v2 + 72) = 0;
  return result;
}

uint64_t closure #15 in __Engine.__registerREKitBuiltInActions()@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, unint64_t *a3@<X3>, void *a4@<X8>)
{
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  result = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(a3, a1, a2);
  a4[4] = result;
  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t closure #18 in __Engine.__registerREKitBuiltInActions()@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, unint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  result = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(a3, a1, a2);
  *(a4 + 32) = result;
  return result;
}

uint64_t closure #25 in __Engine.__registerREKitBuiltInActions()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMR);
  result = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<String> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMR);
  *(a1 + 32) = result;
  return result;
}

uint64_t closure #26 in __Engine.__registerREKitBuiltInActions()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMR);
  result = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Transform> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMR);
  *(a1 + 32) = result;
  return result;
}

void closure #27 in __Engine.__registerREKitBuiltInActions()(void *a1@<X8>)
{
  a1[3] = &type metadata for PlayAudioActionHandler;
  a1[4] = &protocol witness table for PlayAudioActionHandler;
  *a1 = 0;
}

void closure #28 in __Engine.__registerREKitBuiltInActions()(void *a1@<X8>)
{
  a1[3] = &type metadata for EmphasizeActionHandler;
  a1[4] = &protocol witness table for EmphasizeActionHandler;
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v1;
}

Swift::Void __swiftcall __Engine.__registerREKitBuiltInForceEffects()()
{
  _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA08ConstantcD0V_Tt1g5(v0, closure #1 in __Engine.__registerREKitBuiltInForceEffects(), 0);
  _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA014ConstantRadialcD0V_Tt1g5(v0, closure #2 in __Engine.__registerREKitBuiltInForceEffects(), 0);
  _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA06RadialcD0V_Tt1g5(v0, closure #3 in __Engine.__registerREKitBuiltInForceEffects(), 0);
  _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA06VortexcD0V_Tt1g5(v0, closure #4 in __Engine.__registerREKitBuiltInForceEffects(), 0);
  _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA04DragcD0V_Tt1g5(v0, closure #5 in __Engine.__registerREKitBuiltInForceEffects(), 0);

  _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA010TurbulencecD0V_Tt1g5(v0, closure #6 in __Engine.__registerREKitBuiltInForceEffects(), 0);
}

void *closure #1 in __Engine.__registerREKitBuiltInForceEffects()(uint64_t a1, double a2, double a3, double a4)
{
  LODWORD(a2) = *a1;
  v5 = *(a1 + 32);
  return ConstantForceEffect.update(parameters:)((a1 + 40), a2, *(a1 + 16), a4);
}

uint64_t _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA08ConstantcD0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ConstantForceEffect and conformance ConstantForceEffect();
  v7 = lazy protocol witness table accessor for type ConstantForceEffect and conformance ConstantForceEffect();
  if (one-time initialization token for _registeredForceEffectsCodable != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static ForceEffectComponent._registeredForceEffectsCodable;
  os_unfair_lock_lock(static ForceEffectComponent._registeredForceEffectsCodable + 6);
  v9 = *(v8 + 2);

  os_unfair_lock_unlock(v8 + 6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[6] = v9;
  v11 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for ConstantForceEffect, &protocol witness table for ConstantForceEffect, v6, v7, &type metadata for ConstantForceEffect, isUniquelyReferenced_nonNull_native);
  MEMORY[0x1EEE9AC00](v11);
  os_unfair_lock_lock(v8 + 6);
  closure #1 in Atomic.store(_:)specialized partial apply(v8 + 2);
  os_unfair_lock_unlock(v8 + 6);

  result = swift_endAccess();
  if (a2)
  {
    if (a1)
    {
      v13 = *(a1 + 24);

      REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();

      v14 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v15 = *(v14 + 16);

      result = MEMORY[0x1C68FE250](v15);
      if (!result)
      {
        __break(1u);
        return result;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo032REEntityForceEffectComputeForcesD0V_Ttg5();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_118;
    v17 = _Block_copy(aBlock);

    REEventBusSubscribeWithMatch();
    _Block_release(v17);
    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
  }

  return result;
}

uint64_t _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA014ConstantRadialcD0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect();
  v7 = lazy protocol witness table accessor for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect();
  if (one-time initialization token for _registeredForceEffectsCodable != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static ForceEffectComponent._registeredForceEffectsCodable;
  os_unfair_lock_lock(static ForceEffectComponent._registeredForceEffectsCodable + 6);
  v9 = *(v8 + 2);

  os_unfair_lock_unlock(v8 + 6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[6] = v9;
  v11 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for ConstantRadialForceEffect, &protocol witness table for ConstantRadialForceEffect, v6, v7, &type metadata for ConstantRadialForceEffect, isUniquelyReferenced_nonNull_native);
  MEMORY[0x1EEE9AC00](v11);
  os_unfair_lock_lock(v8 + 6);
  closure #1 in Atomic.store(_:)specialized partial apply(v8 + 2);
  os_unfair_lock_unlock(v8 + 6);

  result = swift_endAccess();
  if (a2)
  {
    if (a1)
    {
      v13 = *(a1 + 24);

      REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();

      v14 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v15 = *(v14 + 16);

      result = MEMORY[0x1C68FE250](v15);
      if (!result)
      {
        __break(1u);
        return result;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo032REEntityForceEffectComputeForcesD0V_Ttg5();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_111;
    v17 = _Block_copy(aBlock);

    REEventBusSubscribeWithMatch();
    _Block_release(v17);
    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
  }

  return result;
}

uint64_t _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA06RadialcD0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type RadialForceEffect and conformance RadialForceEffect();
  v7 = lazy protocol witness table accessor for type RadialForceEffect and conformance RadialForceEffect();
  if (one-time initialization token for _registeredForceEffectsCodable != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static ForceEffectComponent._registeredForceEffectsCodable;
  os_unfair_lock_lock(static ForceEffectComponent._registeredForceEffectsCodable + 6);
  v9 = *(v8 + 2);

  os_unfair_lock_unlock(v8 + 6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[6] = v9;
  v11 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for RadialForceEffect, &protocol witness table for RadialForceEffect, v6, v7, &type metadata for RadialForceEffect, isUniquelyReferenced_nonNull_native);
  MEMORY[0x1EEE9AC00](v11);
  os_unfair_lock_lock(v8 + 6);
  closure #1 in Atomic.store(_:)specialized partial apply(v8 + 2);
  os_unfair_lock_unlock(v8 + 6);

  result = swift_endAccess();
  if (a2)
  {
    if (a1)
    {
      v13 = *(a1 + 24);

      REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();

      v14 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v15 = *(v14 + 16);

      result = MEMORY[0x1C68FE250](v15);
      if (!result)
      {
        __break(1u);
        return result;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo032REEntityForceEffectComputeForcesD0V_Ttg5();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_104;
    v17 = _Block_copy(aBlock);

    REEventBusSubscribeWithMatch();
    _Block_release(v17);
    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
  }

  return result;
}

uint64_t _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA06VortexcD0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type VortexForceEffect and conformance VortexForceEffect();
  v7 = lazy protocol witness table accessor for type VortexForceEffect and conformance VortexForceEffect();
  if (one-time initialization token for _registeredForceEffectsCodable != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static ForceEffectComponent._registeredForceEffectsCodable;
  os_unfair_lock_lock(static ForceEffectComponent._registeredForceEffectsCodable + 6);
  v9 = *(v8 + 2);

  os_unfair_lock_unlock(v8 + 6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[6] = v9;
  v11 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for VortexForceEffect, &protocol witness table for VortexForceEffect, v6, v7, &type metadata for VortexForceEffect, isUniquelyReferenced_nonNull_native);
  MEMORY[0x1EEE9AC00](v11);
  os_unfair_lock_lock(v8 + 6);
  closure #1 in Atomic.store(_:)specialized partial apply(v8 + 2);
  os_unfair_lock_unlock(v8 + 6);

  result = swift_endAccess();
  if (a2)
  {
    if (a1)
    {
      v13 = *(a1 + 24);

      REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();

      v14 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v15 = *(v14 + 16);

      result = MEMORY[0x1C68FE250](v15);
      if (!result)
      {
        __break(1u);
        return result;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo032REEntityForceEffectComputeForcesD0V_Ttg5();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_97;
    v17 = _Block_copy(aBlock);

    REEventBusSubscribeWithMatch();
    _Block_release(v17);
    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
  }

  return result;
}

uint64_t _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA04DragcD0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type DragForceEffect and conformance DragForceEffect();
  v7 = lazy protocol witness table accessor for type DragForceEffect and conformance DragForceEffect();
  if (one-time initialization token for _registeredForceEffectsCodable != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static ForceEffectComponent._registeredForceEffectsCodable;
  os_unfair_lock_lock(static ForceEffectComponent._registeredForceEffectsCodable + 6);
  v9 = *(v8 + 2);

  os_unfair_lock_unlock(v8 + 6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[6] = v9;
  v11 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for DragForceEffect, &protocol witness table for DragForceEffect, v6, v7, &type metadata for DragForceEffect, isUniquelyReferenced_nonNull_native);
  MEMORY[0x1EEE9AC00](v11);
  os_unfair_lock_lock(v8 + 6);
  closure #1 in Atomic.store(_:)specialized partial apply(v8 + 2);
  os_unfair_lock_unlock(v8 + 6);

  result = swift_endAccess();
  if (a2)
  {
    if (a1)
    {
      v13 = *(a1 + 24);

      REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();

      v14 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v15 = *(v14 + 16);

      result = MEMORY[0x1C68FE250](v15);
      if (!result)
      {
        __break(1u);
        return result;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo032REEntityForceEffectComputeForcesD0V_Ttg5();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_90;
    v17 = _Block_copy(aBlock);

    REEventBusSubscribeWithMatch();
    _Block_release(v17);
    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
  }

  return result;
}

uint64_t _s17RealityFoundation19ForceEffectProtocolPAASeRzSERzrlE10__register6engine_y0A3Kit8__EngineCSg_yAA0cD5EventVyxGzcSgtFZAA010TurbulencecD0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type TurbulenceForceEffect and conformance TurbulenceForceEffect();
  v7 = lazy protocol witness table accessor for type TurbulenceForceEffect and conformance TurbulenceForceEffect();
  if (one-time initialization token for _registeredForceEffectsCodable != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static ForceEffectComponent._registeredForceEffectsCodable;
  os_unfair_lock_lock(static ForceEffectComponent._registeredForceEffectsCodable + 6);
  v9 = *(v8 + 2);

  os_unfair_lock_unlock(v8 + 6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[6] = v9;
  v11 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for TurbulenceForceEffect, &protocol witness table for TurbulenceForceEffect, v6, v7, &type metadata for TurbulenceForceEffect, isUniquelyReferenced_nonNull_native);
  MEMORY[0x1EEE9AC00](v11);
  os_unfair_lock_lock(v8 + 6);
  partial apply for specialized closure #1 in Atomic.store(_:)(v8 + 2);
  os_unfair_lock_unlock(v8 + 6);

  result = swift_endAccess();
  if (a2)
  {
    if (a1)
    {
      v13 = *(a1 + 24);

      REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();

      v14 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v15 = *(v14 + 16);

      result = MEMORY[0x1C68FE250](v15);
      if (!result)
      {
        __break(1u);
        return result;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo032REEntityForceEffectComputeForcesD0V_Ttg5();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_83;
    v17 = _Block_copy(aBlock);

    REEventBusSubscribeWithMatch();
    _Block_release(v17);
    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
  }

  return result;
}

void closure #4 in __Engine.__registerREKitBuiltInForceEffects()(float32x4_t *a1, double a2, double a3, double a4)
{
  if ((a1[5].i8[8] & 1) == 0)
  {
    v16 = a1->f32[0];
    v5 = a1[4].i64[1];
    *v6.i64 = normalizeSafe(vec:)(a1[1], a3, a4);
    v7 = a1[3].i64[0];
    if (v7 < 0)
    {
      __break(1u);
    }

    else if (v7)
    {
      v8 = 0;
      v9 = a1[15].i64[0];
      v10 = a1[15].i64[1];
      v11 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
      v12 = vnegq_f32(v6);
      do
      {
        if (v8 < v10)
        {
          v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(v5 + 16 * v8), *(v5 + 16 * v8)), *(v5 + 16 * v8), 0xCuLL), v12), *(v5 + 16 * v8), v11);
          v14.i32[0] = vextq_s8(v13, v13, 8uLL).u32[0];
          v14.i32[1] = v13.i32[0];
          *&v15 = vmul_n_f32(v14, v16);
          *(&v15 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v16, *v13.i8, 1));
          *(v9 + 16 * v8) = v15;
        }

        ++v8;
      }

      while (v7 != v8);
    }
  }
}

uint64_t closure #2 in __Engine.__registerREKitBuiltInForceEffects()(int *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(a1 + 4);
  return a2((a1 + 2));
}

uint64_t closure #6 in __Engine.__registerREKitBuiltInForceEffects()(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 12);
  return TurbulenceForceEffect.update(parameters:)((a1 + 2));
}

uint64_t specialized EventService.publish<A>(_:on:componentType:)(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  outlined init with copy of [String : String](a1, v13, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  _s17RealityFoundation10REEventBusC16DispatcherHandle33_C907048D367572FD9E6EC4CB4F65EE59LLV5event12sourceObject13componentType8matchingAFxm_0A3Kit11EventSource_pSgAK9Component_pXpSgSSSgtclufCAK012EngineUpdateV0V_Ttt3g5Tm(v13, a2, a3, 0, 0, _s17RealityFoundation10getEventIDys6UInt64VxmlF0A3Kit012EngineUpdateD0V_Ttg5, v12);
  _s17RealityFoundation10REEventBusC21getOrCreateDispatcher33_C907048D367572FD9E6EC4CB4F65EE596handle2ofAA0cH0CyxGAC0H6HandleAELLV_xmts8SendableRzlF0A3Kit17EngineUpdateEventV_Tt0g5Tm(v12, &_s17RealityFoundation17REEventDispatcherCy0A3Kit17EngineUpdateEventVGMd, &_s17RealityFoundation17REEventDispatcherCy0A3Kit17EngineUpdateEventVGMR);
  outlined destroy of REEventBus.DispatcherHandle(v12);
  specialized REEventDispatcher.receive(_:)(a4);

  if (*(a1 + 24))
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    outlined init with copy of [String : String](v10, v9, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    _s17RealityFoundation10REEventBusC16DispatcherHandle33_C907048D367572FD9E6EC4CB4F65EE59LLV5event12sourceObject13componentType8matchingAFxm_0A3Kit11EventSource_pSgAK9Component_pXpSgSSSgtclufCAK012EngineUpdateV0V_Ttt3g5Tm(v9, 0, 0, 0, 0, _s17RealityFoundation10getEventIDys6UInt64VxmlF0A3Kit012EngineUpdateD0V_Ttg5, v13);
    _s17RealityFoundation10REEventBusC21getOrCreateDispatcher33_C907048D367572FD9E6EC4CB4F65EE596handle2ofAA0cH0CyxGAC0H6HandleAELLV_xmts8SendableRzlF0A3Kit17EngineUpdateEventV_Tt0g5Tm(v13, &_s17RealityFoundation17REEventDispatcherCy0A3Kit17EngineUpdateEventVGMd, &_s17RealityFoundation17REEventDispatcherCy0A3Kit17EngineUpdateEventVGMR);
    outlined destroy of BodyTrackingComponent?(v10, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    outlined destroy of REEventBus.DispatcherHandle(v13);
    specialized REEventDispatcher.receive(_:)(a4);
  }

  return result;
}

uint64_t specialized EventService.publish<A>(_:on:componentType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of [String : String](a1, v11, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  _s17RealityFoundation10REEventBusC16DispatcherHandle33_C907048D367572FD9E6EC4CB4F65EE59LLV5event12sourceObject13componentType8matchingAFxm_0A3Kit11EventSource_pSgAK9Component_pXpSgSSSgtclufCAK012EngineUpdateV0V_Ttt3g5Tm(v11, a2, a3, 0, 0, _s17RealityFoundation10getEventIDys6UInt64VxmlF0A3Kit012EngineRenderD0V_Ttg5, v10);
  _s17RealityFoundation10REEventBusC21getOrCreateDispatcher33_C907048D367572FD9E6EC4CB4F65EE596handle2ofAA0cH0CyxGAC0H6HandleAELLV_xmts8SendableRzlF0A3Kit17EngineUpdateEventV_Tt0g5Tm(v10, &_s17RealityFoundation17REEventDispatcherCy0A3Kit17EngineRenderEventVGMd, &_s17RealityFoundation17REEventDispatcherCy0A3Kit17EngineRenderEventVGMR);
  outlined destroy of REEventBus.DispatcherHandle(v10);
  specialized REEventDispatcher.receive(_:)();

  if (*(a1 + 24))
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    outlined init with copy of [String : String](v8, v7, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    _s17RealityFoundation10REEventBusC16DispatcherHandle33_C907048D367572FD9E6EC4CB4F65EE59LLV5event12sourceObject13componentType8matchingAFxm_0A3Kit11EventSource_pSgAK9Component_pXpSgSSSgtclufCAK012EngineUpdateV0V_Ttt3g5Tm(v7, 0, 0, 0, 0, _s17RealityFoundation10getEventIDys6UInt64VxmlF0A3Kit012EngineRenderD0V_Ttg5, v11);
    _s17RealityFoundation10REEventBusC21getOrCreateDispatcher33_C907048D367572FD9E6EC4CB4F65EE596handle2ofAA0cH0CyxGAC0H6HandleAELLV_xmts8SendableRzlF0A3Kit17EngineUpdateEventV_Tt0g5Tm(v11, &_s17RealityFoundation17REEventDispatcherCy0A3Kit17EngineRenderEventVGMd, &_s17RealityFoundation17REEventDispatcherCy0A3Kit17EngineRenderEventVGMR);
    outlined destroy of BodyTrackingComponent?(v8, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    outlined destroy of REEventBus.DispatcherHandle(v11);
    specialized REEventDispatcher.receive(_:)();
  }

  return result;
}

uint64_t __Engine.Configuration.createServices.setter(uint64_t result)
{
  v2 = 0;
  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  if (v6)
  {
    while (1)
    {
      v7 = v3;
LABEL_9:
      v8 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v9 = dword_1C18AD3EC[*(*(result + 48) + (v8 | (v7 << 6)))];
      if ((v9 & v2) != 0)
      {
        v9 = 0;
      }

      v2 |= v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v7 >= ((v4 + 63) >> 6))
    {
      break;
    }

    v6 = *(result + 56 + 8 * v7);
    ++v3;
    if (v6)
    {
      v3 = v7;
      goto LABEL_9;
    }
  }

  type metadata accessor for REEngineServiceMask(0);
  v19[3] = v10;
  LODWORD(v19[0]) = v2;
  outlined init with copy of Any(v19, v18);
  swift_dynamicCast();
  __swift_destroy_boxed_opaque_existential_1(v19);
  v11 = *v1;
  v12 = *(*v1 + 16);
  if (REGetRetainCount() <= 1)
  {
    v17 = *(v11 + 16);
  }

  else
  {
    v13 = *(*v1 + 16);

    v14 = REEngineConfigurationClone();
    type metadata accessor for EngineConfiguration();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;

    v16 = *v1;

    *v1 = v15;
  }

  return REEngineConfigurationSetServicesToCreate();
}

uint64_t (*__Engine.Configuration.createServices.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(*v1 + 16);
  v4 = REEngineConfigurationGetServicesToCreate();
  *a1 = __Engine.Configuration.toServiceSet(_:)(v4);
  return __Engine.Configuration.createServices.modify;
}

uint64_t (*__Engine.Configuration.updateServices.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(*v1 + 16);
  ServicesToUpdate = REEngineConfigurationGetServicesToUpdate();
  *a1 = __Engine.Configuration.toServiceSet(_:)(ServicesToUpdate);
  return __Engine.Configuration.updateServices.modify;
}

uint64_t __Engine.Configuration.createServices.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

uint64_t __Engine.Configuration.addRenderFlags(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  result = REEngineConfigurationGetRenderFlags();
  v6 = result;
  v7 = 0;
  v10 = *(a1 + 56);
  v9 = a1 + 56;
  v8 = v10;
  v11 = 1 << *(v9 - 24);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  while (v13)
  {
LABEL_4:
    v13 &= v13 - 1;
    v6 = result | 0x40000;
  }

  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= ((v11 + 63) >> 6))
    {
      break;
    }

    v13 = *(v9 + 8 * v14);
    ++v7;
    if (v13)
    {
      v7 = v14;
      goto LABEL_4;
    }
  }

  type metadata accessor for RERenderFlags(0);
  v23[3] = v15;
  LODWORD(v23[0]) = v6;
  outlined init with copy of Any(v23, v22);
  swift_dynamicCast();
  __swift_destroy_boxed_opaque_existential_1(v23);
  v16 = *(v3 + 16);
  if (REGetRetainCount() <= 1)
  {
    v21 = *(v3 + 16);
  }

  else
  {
    v17 = *(*v1 + 16);

    v18 = REEngineConfigurationClone();
    type metadata accessor for EngineConfiguration();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;

    v20 = *v1;

    *v1 = v19;
  }

  return REEngineConfigurationSetRenderFlags();
}

uint64_t __Engine.Configuration.removeRenderFlags(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  result = REEngineConfigurationGetRenderFlags();
  v6 = result;
  v7 = 0;
  v10 = *(a1 + 56);
  v9 = a1 + 56;
  v8 = v10;
  v11 = 1 << *(v9 - 24);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  while (v13)
  {
LABEL_4:
    v13 &= v13 - 1;
    v6 = result & 0xFFFBFFFF;
  }

  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= ((v11 + 63) >> 6))
    {
      break;
    }

    v13 = *(v9 + 8 * v14);
    ++v7;
    if (v13)
    {
      v7 = v14;
      goto LABEL_4;
    }
  }

  type metadata accessor for RERenderFlags(0);
  v23[3] = v15;
  LODWORD(v23[0]) = v6;
  outlined init with copy of Any(v23, v22);
  swift_dynamicCast();
  __swift_destroy_boxed_opaque_existential_1(v23);
  v16 = *(v3 + 16);
  if (REGetRetainCount() <= 1)
  {
    v21 = *(v3 + 16);
  }

  else
  {
    v17 = *(*v1 + 16);

    v18 = REEngineConfigurationClone();
    type metadata accessor for EngineConfiguration();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;

    v20 = *v1;

    *v1 = v19;
  }

  return REEngineConfigurationSetRenderFlags();
}

uint64_t specialized FromToByActionHandler.actionUpdated(event:)(uint64_t result, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, void *(*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, double))
{
  if ((*(result + 208) & 1) == 0)
  {
    v6 = *(result + 200);
    v7 = fmin(fabs(v6 + -1.0), v6);
    v8 = v7 <= 0.0001;
    v9 = *v4;
    if (v7 <= 0.0001 && v9)
    {
      v23 = *v4;
      v10 = a3;
      if (vabdd_f64(*(v4 + 8), v6) <= 0.0001)
      {
        v12 = v4;

        a2(v20, v17);
        v18 = v21;
        if (v21)
        {
          v19 = v22;
          __swift_project_boxed_opaque_existential_1(v20, v21);
          (*(v19 + 64))(&v23, v10, v18, v19);

          result = __swift_destroy_boxed_opaque_existential_1(v20);
        }

        else
        {

          result = outlined destroy of BodyTrackingComponent?(v20, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
        }

        goto LABEL_17;
      }

      v9 = *v4;
    }

    else
    {
      v10 = a3;
    }

    v11 = a4(v20, result, v9, *(v4 + 8));
    if (!v20[0])
    {
    }

    v12 = v4;
    v23 = v20[0];
    a2(v20, v11);
    v13 = v21;
    if (v21)
    {
      v14 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      (*(v14 + 64))(&v23, v10, v13, v14);
      __swift_destroy_boxed_opaque_existential_1(v20);
      if (v8)
      {
LABEL_10:
        v15 = *v4;

        *v4 = v23;
LABEL_17:
        *(v12 + 8) = v6;
        return result;
      }
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(v20, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
      if (v8)
      {
        goto LABEL_10;
      }
    }

    v16 = *v4;

    *v4 = 0;
    goto LABEL_17;
  }

  return result;
}

void specialized FromToByActionHandler.actionUpdated(event:)(uint64_t a1)
{
  if ((*(a1 + 368) & 1) == 0)
  {
    v2 = *(a1 + 360);
    v3 = fmin(fabs(v2 + -1.0), v2);
    v4 = v3 <= 0.0001;
    if (v3 <= 0.0001 && (v1[3] & 1) == 0)
    {
      v5 = v1[1];
      v6 = *(v1 + 4);
      v7 = *(v1 + 5);
      v20 = *v1;
      v21 = v5;
      *&v22 = v6;
      *(&v22 + 1) = v7;
      if (vabdd_f64(*(v1 + 7), v2) <= 0.0001)
      {
        specialized ActionEvent.animationState.getter(&v17);
        v12 = *(&v18 + 1);
        if (*(&v18 + 1))
        {
          v13 = v19;
          __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
          (*(v13 + 64))(&v20, &type metadata for Transform, v12, v13);
          __swift_destroy_boxed_opaque_existential_1(&v17);
        }

        else
        {
          outlined destroy of BodyTrackingComponent?(&v17, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
        }

        v8 = v1;
        goto LABEL_15;
      }
    }

    specialized FromToByActionHandler.evaluateResult(_:)(a1, &v20);
    if (v23)
    {
      return;
    }

    v8 = v1;
    v17 = v20;
    v18 = v21;
    v19 = v22;
    specialized ActionEvent.animationState.getter(v14);
    v9 = v15;
    if (v15)
    {
      v10 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v10 + 64))(&v17, &type metadata for Transform, v9, v10);
      __swift_destroy_boxed_opaque_existential_1(v14);
      if (v4)
      {
LABEL_8:
        v11 = v21;
        *v1 = v20;
        v1[1] = v11;
        v1[2] = v22;
        *(v1 + 48) = v23;
LABEL_15:
        v8[7] = v2;
        return;
      }
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(v14, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
      if (v4)
      {
        goto LABEL_8;
      }
    }

    v1[1] = 0u;
    v1[2] = 0u;
    *v1 = 0u;
    *(v1 + 48) = 1;
    goto LABEL_15;
  }
}

void specialized FromToByActionHandler.actionUpdated(event:)(uint64_t a1, __n128 a2)
{
  if ((*(a1 + 272) & 1) == 0)
  {
    v3 = *(a1 + 264);
    v4 = fmin(fabs(v3 + -1.0), v3);
    a2.n128_u64[0] = 0x3F1A36E2EB1C432DLL;
    v5 = v4 > 0.0001;
    if (v4 > 0.0001 || (v2[2] & 1) != 0 || (v6 = *(v2 + 1), v27 = *v2, v28 = v6, vabdd_f64(v2[3], v3) > 0.0001))
    {
      v9.n128_f64[0] = specialized FromToByActionHandler.evaluateResult(_:)(a1);
      if (v10)
      {
        return;
      }

      v11 = v7;
      v12 = v8;
      v13 = v2;
      v27 = v7;
      v28 = v8;
      specialized ActionEvent.animationState.getter(v24, v9);
      v14 = v25;
      if (v25)
      {
        v15 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        v16 = *(v15 + 64);
        type metadata accessor for simd_quatf(0);
        v16(&v27, v17, v14, v15);
        __swift_destroy_boxed_opaque_existential_1(v24);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(v24, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
      }

      if (v5)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v11;
      }

      if (v5)
      {
        v19 = 0;
      }

      else
      {
        v19 = v12;
      }

      *v2 = v18;
      *(v2 + 1) = v19;
      *(v2 + 16) = v5;
    }

    else
    {
      specialized ActionEvent.animationState.getter(v24, a2);
      v20 = v25;
      if (v25)
      {
        v21 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        v22 = *(v21 + 64);
        type metadata accessor for simd_quatf(0);
        v22(&v27, v23, v20, v21);
        __swift_destroy_boxed_opaque_existential_1(v24);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(v24, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
      }

      v13 = v2;
    }

    v13[3] = v3;
  }
}

uint64_t specialized FromToByActionHandler.actionUpdated(event:)(uint64_t result, void (*a2)(uint64_t *__return_ptr), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if ((*(result + 272) & 1) == 0)
  {
    v6 = *(result + 264);
    v7 = fmin(fabs(v6 + -1.0), v6);
    v8 = v7 > 0.0001;
    if (v7 > 0.0001 || (*(v5 + 16) & 1) != 0 || (v9 = *(v5 + 8), v33 = *v5, v34 = v9, vabdd_f64(*(v5 + 24), v6) > 0.0001))
    {
      result = a5();
      if (v14)
      {
        return result;
      }

      v15 = result;
      v16 = v13;
      v33 = result;
      v34 = v13;
      a2(v30);
      v17 = v31;
      if (v31)
      {
        v18 = v32;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        v19 = *(v18 + 64);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
        v19(&v33, v20, v17, v18);
        result = __swift_destroy_boxed_opaque_existential_1(v30);
      }

      else
      {
        result = outlined destroy of BodyTrackingComponent?(v30, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
      }

      if (v8)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v8)
      {
        v22 = 0;
      }

      else
      {
        v22 = v16;
      }

      v23 = v5;
      *v5 = v21;
      *(v5 + 8) = v22;
      *(v5 + 16) = v8;
    }

    else
    {
      a2(v30);
      v26 = v31;
      if (v31)
      {
        v27 = v32;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        v28 = *(v27 + 64);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
        v28(&v33, v29, v26, v27);
        result = __swift_destroy_boxed_opaque_existential_1(v30);
      }

      else
      {
        result = outlined destroy of BodyTrackingComponent?(v30, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
      }

      v23 = v5;
    }

    *(v23 + 24) = v6;
  }

  return result;
}

uint64_t specialized FromToByActionHandler.actionUpdated(event:)(uint64_t result)
{
  if ((*(result + 224) & 1) == 0)
  {
    v2 = *(result + 216);
    v3 = fmin(fabs(v2 + -1.0), v2);
    v4 = v3 > 0.0001;
    if (v3 > 0.0001 || (*(v1 + 8) & 1) != 0 || (v20 = *v1, vabdd_f64(*(v1 + 16), v2) > 0.0001))
    {
      result = specialized FromToByActionHandler.evaluateResult(_:)(result);
      if (v5)
      {
        return result;
      }

      v6 = result;
      v7 = v1;
      v20 = result;
      specialized ActionEvent.animationState.getter(v17);
      v8 = v18;
      if (v18)
      {
        v9 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        v10 = *(v9 + 64);
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
        v10(&v20, v11, v8, v9);
        result = __swift_destroy_boxed_opaque_existential_1(v17);
      }

      else
      {
        result = outlined destroy of BodyTrackingComponent?(v17, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
      }

      if (v4)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6;
      }

      *v1 = v12;
      *(v1 + 8) = v4;
    }

    else
    {
      specialized ActionEvent.animationState.getter(v17);
      v13 = v18;
      if (v18)
      {
        v14 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        v15 = *(v14 + 64);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
        v15(&v20, v16, v13, v14);
        result = __swift_destroy_boxed_opaque_existential_1(v17);
      }

      else
      {
        result = outlined destroy of BodyTrackingComponent?(v17, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
      }

      v7 = v1;
    }

    *(v7 + 16) = v2;
  }

  return result;
}

{
  if ((*(result + 224) & 1) == 0)
  {
    v2 = *(result + 216);
    v3 = fmin(fabs(v2 + -1.0), v2);
    v4 = v3 > 0.0001;
    if (v3 > 0.0001 || (*(v1 + 8) & 1) != 0 || (v16 = *v1, vabdd_f64(*(v1 + 16), v2) > 0.0001))
    {
      result = specialized FromToByActionHandler.evaluateResult(_:)(result);
      if (v5)
      {
        return result;
      }

      v6 = result;
      v7 = v1;
      v16 = result;
      specialized ActionEvent.animationState.getter(v13);
      v8 = v14;
      if (v14)
      {
        v9 = v15;
        __swift_project_boxed_opaque_existential_1(v13, v14);
        (*(v9 + 64))(&v16, MEMORY[0x1E69E63B0], v8, v9);
        result = __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
        result = outlined destroy of BodyTrackingComponent?(v13, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
      }

      if (v4)
      {
        v10 = 0;
      }

      else
      {
        v10 = v6;
      }

      *v1 = v10;
      *(v1 + 8) = v4;
    }

    else
    {
      specialized ActionEvent.animationState.getter(v13);
      v11 = v14;
      if (v14)
      {
        v12 = v15;
        __swift_project_boxed_opaque_existential_1(v13, v14);
        (*(v12 + 64))(&v16, MEMORY[0x1E69E63B0], v11, v12);
        result = __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
        result = outlined destroy of BodyTrackingComponent?(v13, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
      }

      v7 = v1;
    }

    *(v7 + 16) = v2;
  }

  return result;
}

{
  if ((*(result + 208) & 1) == 0)
  {
    v2 = *(result + 200);
    v3 = fmin(fabs(v2 + -1.0), v2);
    v4 = v3 > 0.0001;
    if (v3 > 0.0001 || (*(v1 + 4) & 1) != 0 || (v15 = *v1, vabdd_f64(v1[1], v2) > 0.0001))
    {
      result = specialized FromToByActionHandler.evaluateResult(_:)(result);
      if ((result & 0x100000000) != 0)
      {
        return result;
      }

      v5 = result;
      v6 = v1;
      v15 = result;
      specialized ActionEvent.animationState.getter(v12);
      v7 = v13;
      if (v13)
      {
        v8 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v8 + 64))(&v15, MEMORY[0x1E69E6448], v7, v8);
        result = __swift_destroy_boxed_opaque_existential_1(v12);
      }

      else
      {
        result = outlined destroy of BodyTrackingComponent?(v12, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
      }

      if (v4)
      {
        v9 = 0;
      }

      else
      {
        v9 = v5;
      }

      *v1 = v9;
      *(v1 + 4) = v4;
    }

    else
    {
      specialized ActionEvent.animationState.getter(v12);
      v10 = v13;
      if (v13)
      {
        v11 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v11 + 64))(&v15, MEMORY[0x1E69E6448], v10, v11);
        result = __swift_destroy_boxed_opaque_existential_1(v12);
      }

      else
      {
        result = outlined destroy of BodyTrackingComponent?(v12, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
      }

      v6 = v1;
    }

    v6[1] = v2;
  }

  return result;
}

uint64_t specialized FromToByActionHandler.evaluateResult(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(result + 208))
  {
    goto LABEL_17;
  }

  v4 = result;
  v28 = a2;
  v5 = *(result + 200);
  specialized ActionEvent.animationState.getter(v29);
  v6 = v30;
  if (v30)
  {
    v27 = a3;
    v7 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v8 = *(v7 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = type metadata accessor for Optional();
    v26[1] = v26;
    v11 = *(v10 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x1EEE9AC00](v10);
    v14 = v26 - v13;
    v8(v6, v7);
    v15 = *(AssociatedTypeWitness - 8);
    if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
    {
      (*(v11 + 8))(v14, v10);
      AssociatedConformanceWitness = 0;
      memset(v32, 0, sizeof(v32));
    }

    else
    {
      *(&v32[1] + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
      (*(v15 + 32))(boxed_opaque_existential_1, v14, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(v29);
    a3 = v27;
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v29, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    memset(v32, 0, sizeof(v32));
    AssociatedConformanceWitness = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
  if (!swift_dynamicCast())
  {
    v29[0] = 0;
    goto LABEL_16;
  }

  v17 = v29[0];
  if (!v29[0])
  {
LABEL_16:

LABEL_17:
    *a3 = 0;
    return result;
  }

  specialized FromToByActionHandler.getStartEnd(event:base:)(v4, v29[0], v32);
  v18 = *&v32[0];
  if (!*&v32[0])
  {

    result = outlined consume of (start: BlendShapeWeights, end: BlendShapeWeights)?(0);
    goto LABEL_17;
  }

  v19 = *(&v32[0] + 1);
  v20 = *(v4 + 89);
  v32[0] = *(v4 + 48);
  *(v32 + 13) = *(v4 + 61);
  v21 = v5;

  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v22 + 16))
  {
    v23 = *(v22 + 16);
    REEasingFunctionEvaluateEx();
    v21 = v24;
  }

  v25 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy17RealityFoundation17BlendShapeWeightsVAJG_Sfs5NeverOTB504_s17f12Foundation17hiJ62V27__rk_animationInterpolation7towards1tA2C_SdtFS2f_Sft_tXEfU_SfTf1cn_n(v18, v19, v21);

  if (v20)
  {
    specialized AnimatableData.__rk_invertAndCombineForAnimation(with:)(v25, v17, a3);

    outlined consume of (start: BlendShapeWeights, end: BlendShapeWeights)?(v18);
  }

  else
  {

    outlined consume of (start: BlendShapeWeights, end: BlendShapeWeights)?(v18);

    *a3 = v25;
  }

  return result;
}

{
  if (*(result + 208))
  {
    goto LABEL_17;
  }

  v4 = result;
  v28 = a2;
  v5 = *(result + 200);
  specialized ActionEvent.animationState.getter(v29);
  v6 = v30;
  if (v30)
  {
    v27 = a3;
    v7 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v8 = *(v7 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = type metadata accessor for Optional();
    v26[1] = v26;
    v11 = *(v10 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x1EEE9AC00](v10);
    v14 = v26 - v13;
    v8(v6, v7);
    v15 = *(AssociatedTypeWitness - 8);
    if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
    {
      (*(v11 + 8))(v14, v10);
      AssociatedConformanceWitness = 0;
      memset(v32, 0, sizeof(v32));
    }

    else
    {
      *(&v32[1] + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
      (*(v15 + 32))(boxed_opaque_existential_1, v14, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(v29);
    a3 = v27;
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v29, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    memset(v32, 0, sizeof(v32));
    AssociatedConformanceWitness = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
  if (!swift_dynamicCast())
  {
    v29[0] = 0;
    goto LABEL_16;
  }

  v17 = v29[0];
  if (!v29[0])
  {
LABEL_16:

LABEL_17:
    *a3 = 0;
    return result;
  }

  specialized FromToByActionHandler.getStartEnd(event:base:)(v4, v29[0], v32);
  v18 = *&v32[0];
  if (!*&v32[0])
  {

    result = outlined consume of (start: BlendShapeWeights, end: BlendShapeWeights)?(0);
    goto LABEL_17;
  }

  v19 = *(&v32[0] + 1);
  v20 = *(v4 + 89);
  v32[0] = *(v4 + 48);
  *(v32 + 13) = *(v4 + 61);

  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v21 + 16))
  {
    v22 = *(v21 + 16);
    REEasingFunctionEvaluateEx();
  }

  v23 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy17RealityFoundation15JointTransformsVAJG_0F3Kit9TransformVs5NeverOTB504_s17f12Foundation15hi55V27__rk_animationInterpolation7towards1tA2C_SdtF0A3Kit9K14VAI_AIt_tXEfU_SfTf1cn_n(v18, v19);

  _s17RealityFoundation15JointTransformsVyACxcSTRz0A3Kit9TransformV7ElementRtzlufCSayAFG_Tt1g5(v23, v32);
  if (v20)
  {
    v24 = *&v32[0];

    v25 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy17RealityFoundation15JointTransformsVAJG_So5RESRTas5NeverOTB504_s17f12Foundation15hI84V33__rk_invertAndCombineForAnimation4withA2C_tFSo5RESRTa0A3Kit9TransformV_AJt_tXEfU_Tf1cn_n(v17, v24);

    swift_bridgeObjectRelease_n();
    outlined consume of (start: BlendShapeWeights, end: BlendShapeWeights)?(v18);

    *a3 = v25;
  }

  else
  {

    outlined consume of (start: BlendShapeWeights, end: BlendShapeWeights)?(v18);

    *a3 = *&v32[0];
  }

  return result;
}

char *specialized FromToByActionHandler.getStartEnd(event:base:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  if (v6)
  {
    v9 = v6;
    if (v7)
    {
LABEL_3:

LABEL_23:
      a2 = v7;
      goto LABEL_24;
    }

LABEL_10:

    if (v8)
    {
      swift_bridgeObjectRetain_n();

      a2 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy17RealityFoundation17BlendShapeWeightsVAJG_Sfs5NeverOTB504_s17f12Foundation17hiJ52V24__rk_combineForAnimation4withA2C_tFS2f_Sft_tXEfU_Tf1cn_n(v11, v8);
      swift_bridgeObjectRelease_n();
    }

    else
    {
    }

LABEL_24:
    *a3 = v9;
    a3[1] = a2;
  }

  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {

    v9 = a2;
    if (v7)
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  v12 = *(v8 + 16);
  v13 = specialized BidirectionalCollection.distance(from:to:)(0, v12);
  if (!v13)
  {

    v17 = MEMORY[0x1E69E7CC0];
LABEL_22:

    v9 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy17RealityFoundation17BlendShapeWeightsVAJG_Sfs5NeverOTB504_s17f12Foundation17hiJ52V24__rk_combineForAnimation4withA2C_tFS2f_Sft_tXEfU_Tf1cn_n(v7, v17);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_23;
  }

  v14 = v13;
  v22 = MEMORY[0x1E69E7CC0];
  v15 = v13 & ~(v13 >> 63);

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v17 = v22;
    v18 = (v8 + 32);
    while (v12)
    {
      v19 = *v18;
      v21 = *(v22 + 16);
      v20 = *(v22 + 24);
      if (v21 >= v20 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      }

      *(v22 + 16) = v21 + 1;
      *(v22 + 4 * v21 + 32) = -v19;
      --v12;
      ++v18;
      if (!--v14)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized FromToByActionHandler.getStartEnd(event:base:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  if (v6)
  {
    v9 = v6;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v12 = *(v8 + 16);
      v13 = specialized BidirectionalCollection.distance(from:to:)(0, v12);
      if (v13)
      {
        v14 = v13;
        v43 = MEMORY[0x1E69E7CC0];
        v15 = v13 & ~(v13 >> 63);

        v16 = &v43;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
        if (v14 < 0)
        {
          goto LABEL_35;
        }

        v16 = v43;
        if (one-time initialization token for identity != -1)
        {
          goto LABEL_36;
        }

        while (1)
        {
          v17 = (v8 + 64);
          while (v12)
          {
            v18 = *(v17 - 1);
            v19 = *v17;
            v20 = *(v17 - 2);
            RESRTInverse();
            v24 = v21;
            v43 = v16;
            v26 = v16[2];
            v25 = v16[3];
            v27 = v26 + 1;
            if (v26 >= v25 >> 1)
            {
              v36 = v23;
              v37 = v21;
              v35 = v22;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
              v22 = v35;
              v23 = v36;
              v24 = v37;
              v16 = v43;
            }

            HIDWORD(v24) = v42;
            HIDWORD(v23) = v40;
            v16[2] = v27;
            v28 = &v16[6 * v26];
            --v12;
            v28[2] = v24;
            v28[3] = v22;
            v28[4] = v23;
            v17 += 3;
            if (!--v14)
            {
              goto LABEL_23;
            }
          }

          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          swift_once();
        }
      }

      v16 = MEMORY[0x1E69E7CC0];
      v27 = *(MEMORY[0x1E69E7CC0] + 16);

      v29 = v16;
      if (v27)
      {
LABEL_23:
        v30 = (v16 + 8);
        v29 = MEMORY[0x1E69E7CC0];
        do
        {
          v39 = *(v30 - 1);
          v41 = *(v30 - 2);
          v38 = *v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
          }

          v32 = *(v29 + 2);
          v31 = *(v29 + 3);
          if (v32 >= v31 >> 1)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v29);
          }

          *(v29 + 2) = v32 + 1;
          v33 = &v29[48 * v32];
          *(v33 + 2) = v41;
          *(v33 + 3) = v39;
          *(v33 + 4) = v38;
          v30 += 3;
          --v27;
        }

        while (v27);
      }

      v9 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy17RealityFoundation15JointTransformsVAJG_So5RESRTas5NeverOTB504_s17f12Foundation15hI75V24__rk_combineForAnimation4withA2C_tFSo5RESRTa0A3Kit9TransformV_AJt_tXEfU_Tf1cn_n(v7, v29);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      goto LABEL_30;
    }

    v9 = a2;
    if (v7)
    {
LABEL_3:

LABEL_30:
      a2 = v7;
      goto LABEL_31;
    }
  }

  if (v8)
  {
    swift_bridgeObjectRetain_n();

    a2 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy17RealityFoundation15JointTransformsVAJG_So5RESRTas5NeverOTB504_s17f12Foundation15hI75V24__rk_combineForAnimation4withA2C_tFSo5RESRTa0A3Kit9TransformV_AJt_tXEfU_Tf1cn_n(v11, v8);

    swift_bridgeObjectRelease_n();
  }

  else
  {
  }

LABEL_31:
  *a3 = v9;
  a3[1] = a2;
}

uint64_t _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(uint64_t *a1, uint64_t *a2)
{
  if (v2[1])
  {
    return 1;
  }

  v4 = *v2;
  if (v2[3])
  {
    v5 = v2[9];
    v23[0] = v2[8];
    v23[1] = v5;
    v7 = v2[6];
    v6 = v2[7];
    v8 = v2[4];
    v23[2] = v2[5];
    v9 = v2[2];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v11 = type metadata accessor for Optional();
    v23[3] = v23;
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x1EEE9AC00](v11);
    v15 = v23 - v14;
    static EntityAction<>.loadParameter<A>(_:parameterType:eventID:)(v9, v6, 0, v6, v23 - v14, v7, v23[0]);
    v16 = *(AssociatedTypeWitness - 8);
    if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
    {
      (*(v12 + 8))(v15, v11);
      v24 = 0u;
      v25 = 0u;
    }

    else
    {
      *(&v25 + 1) = AssociatedTypeWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
      (*(v16 + 32))(boxed_opaque_existential_1, v15, AssociatedTypeWitness);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    return swift_dynamicCast() ^ 1;
  }

  else
  {
    v19 = v2[2];
    v20 = *v2;
    if (!RETimelineEventGetSwiftParameter())
    {
      return 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    v21 = swift_dynamicCastClass() == 0;
    swift_unknownObjectRelease();
    return v21;
  }
}

uint64_t specialized ActionEventData.action<A>()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  if (!v3)
  {
    v14 = v1[2];
    result = RETimelineEventGetSwiftConstantData();
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA09EmphasizeD0VGMd, &_s17RealityFoundation19EntityActionWrapperCyAA09EmphasizeD0VGMR);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(v16 + 16);
        v18 = *(v16 + 18);
        result = swift_unknownObjectRelease();
        *a1 = v17;
        *(a1 + 2) = v18;
        return result;
      }

      result = swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[2];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  static EntityAction<>.load(_:)(v7, v3, &v20 - v11);
  v13 = *(v3 - 8);
  if ((*(v13 + 48))(v12, 1, v3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
  }

  else
  {
    *(&v21 + 1) = v3;
    *&v22 = v4;
    *(&v22 + 1) = v5;
    v23 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
    (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_11:
    *(a1 + 2) = 2;
    *a1 = 0;
  }

  return result;
}

{
  v3 = v1[3];
  if (!v3)
  {
    v14 = v1[2];
    result = RETimelineEventGetSwiftConstantData();
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA09PlayAudioD0VGMd, &_s17RealityFoundation19EntityActionWrapperCyAA09PlayAudioD0VGMR);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(v16 + 16);
        v18 = *(v16 + 24);
        v19 = *(v16 + 32);
        v21 = *(v16 + 40);
        v20 = *(v16 + 48);
        v22 = *(v16 + 56);
        v23 = *(v16 + 64);
        outlined copy of ActionEntityResolution();

        result = swift_unknownObjectRelease();
        *a1 = v17;
        *(a1 + 8) = v18;
        *(a1 + 16) = v19;
        *(a1 + 24) = v21;
        *(a1 + 32) = v20;
        *(a1 + 40) = v22;
        *(a1 + 48) = v23;
        return result;
      }

      result = swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[2];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  static EntityAction<>.load(_:)(v7, v3, &v25 - v11);
  v13 = *(v3 - 8);
  if ((*(v13 + 48))(v12, 1, v3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
  }

  else
  {
    *(&v26 + 1) = v3;
    *&v27 = v4;
    *(&v27 + 1) = v5;
    v28 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
    (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_11:
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

{
  v3 = v1[3];
  if (!v3)
  {
    v14 = v1[2];
    result = RETimelineEventGetSwiftConstantData();
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA04SpinD0VGMd, &_s17RealityFoundation19EntityActionWrapperCyAA04SpinD0VGMR);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(v16 + 16);
        v24 = *(v16 + 32);
        v18 = *(v16 + 48);
        v19 = *(v16 + 56);
        v20 = *(v16 + 64);
        v21 = *(v16 + 68);
        v22 = *(v16 + 69);
        result = swift_unknownObjectRelease();
        *a1 = v17;
        *(a1 + 16) = v24;
        *(a1 + 32) = v18;
        *(a1 + 40) = v19;
        *(a1 + 48) = v20;
        *(a1 + 52) = v21;
        *(a1 + 53) = v22;
        return result;
      }

      result = swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[2];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  static EntityAction<>.load(_:)(v7, v3, &v24 - v11);
  v13 = *(v3 - 8);
  if ((*(v13 + 48))(v12, 1, v3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
  }

  else
  {
    *(&v26 + 1) = v3;
    *&v27 = v4;
    *(&v27 + 1) = v5;
    v28 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
    (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_11:
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 48) = 0;
    *(a1 + 52) = 512;
  }

  return result;
}

{
  v3 = v1[3];
  if (!v3)
  {
    v14 = v1[2];
    result = RETimelineEventGetSwiftConstantData();
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA05OrbitcD0VGMd, &_s17RealityFoundation19EntityActionWrapperCyAA05OrbitcD0VGMR);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(v16 + 16);
        v18 = *(v16 + 24);
        v19 = *(v16 + 32);
        v20 = *(v16 + 36);
        v24 = *(v16 + 48);
        v21 = *(v16 + 64);
        v22 = *(v16 + 65);
        outlined copy of ActionEntityResolution();
        result = swift_unknownObjectRelease();
        *a1 = v17;
        *(a1 + 8) = v18;
        *(a1 + 16) = v19;
        *(a1 + 20) = v20;
        *(a1 + 32) = v24;
        *(a1 + 48) = v21;
        *(a1 + 49) = v22;
        return result;
      }

      result = swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[2];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  static EntityAction<>.load(_:)(v7, v3, &v24 - v11);
  v13 = *(v3 - 8);
  if ((*(v13 + 48))(v12, 1, v3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
  }

  else
  {
    *(&v26 + 1) = v3;
    *&v27 = v4;
    *(&v27 + 1) = v5;
    v28 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
    (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_11:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 255;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  return result;
}

{
  v3 = v1[3];
  if (!v3)
  {
    v14 = v1[2];
    result = RETimelineEventGetSwiftConstantData();
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA07ImpulseD0VGMd, &_s17RealityFoundation19EntityActionWrapperCyAA07ImpulseD0VGMR);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(v16 + 16);
        v18 = *(v16 + 24);
        v19 = *(v16 + 32);
        v21 = *(v16 + 48);
        outlined copy of ActionEntityResolution();
        result = swift_unknownObjectRelease();
        *a1 = v17;
        *(a1 + 8) = v18;
        *(a1 + 16) = v19;
        *(a1 + 32) = v21;
        return result;
      }

      result = swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[2];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  static EntityAction<>.load(_:)(v7, v3, &v21 - v11);
  v13 = *(v3 - 8);
  if ((*(v13 + 48))(v12, 1, v3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
  }

  else
  {
    *(&v23 + 1) = v3;
    *&v24 = v4;
    *(&v24 + 1) = v5;
    v25 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
    (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_11:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 255;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  return result;
}

{
  v3 = v1[3];
  if (!v3)
  {
    v14 = v1[2];
    result = RETimelineEventGetSwiftConstantData();
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA03Setc7EnabledD0VGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc7EnabledD0VGMR);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(v16 + 16);
        v18 = *(v16 + 24);
        v19 = *(v16 + 32);
        v20 = *(v16 + 33);
        outlined copy of ActionEntityResolution();
        result = swift_unknownObjectRelease();
        *a1 = v17;
        *(a1 + 8) = v18;
        *(a1 + 16) = v19;
        *(a1 + 17) = v20;
        return result;
      }

      result = swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[2];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  static EntityAction<>.load(_:)(v7, v3, &v22 - v11);
  v13 = *(v3 - 8);
  if ((*(v13 + 48))(v12, 1, v3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
  }

  else
  {
    *(&v23 + 1) = v3;
    *&v24 = v4;
    *(&v24 + 1) = v5;
    v25 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
    (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_11:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 255;
  }

  return result;
}

double specialized ActionEventData.action<A>()@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  if (!v3)
  {
    v14 = v1[2];
    if (RETimelineEventGetSwiftConstantData())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMR);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = *(v15 + 80);
        v27 = *(v15 + 64);
        v28 = v16;
        v29 = *(v15 + 96);
        v30 = *(v15 + 112);
        v17 = *(v15 + 32);
        v24 = *(v15 + 16);
        v25 = v17;
        v26 = *(v15 + 48);
        outlined init with copy of [String : String](&v24, v23, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
        swift_unknownObjectRelease();
        v18 = v29;
        *(a1 + 64) = v28;
        *(a1 + 80) = v18;
        *(a1 + 96) = v30;
        v19 = v25;
        *a1 = v24;
        *(a1 + 16) = v19;
        v20 = v27;
        *(a1 + 32) = v26;
        *(a1 + 48) = v20;
        return *&v20;
      }

      swift_unknownObjectRelease();
    }

LABEL_11:
    *(a1 + 96) = 0;
    *&v20 = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return *&v20;
  }

  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[2];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23[-v11];
  static EntityAction<>.load(_:)(v7, v3, &v23[-v11]);
  v13 = *(v3 - 8);
  if ((*(v13 + 48))(v12, 1, v3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    *&v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
  }

  else
  {
    *(&v25 + 1) = v3;
    *&v26 = v4;
    *(&v26 + 1) = v5;
    *&v27 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
    (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  return *&v20;
}

{
  v3 = v1[3];
  if (!v3)
  {
    v14 = v1[2];
    if (RETimelineEventGetSwiftConstantData())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySSGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySSGGMR);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = *(v15 + 16);
        v17 = *(v15 + 24);
        v18 = *(v15 + 32);
        v20 = *(v15 + 40);
        v19 = *(v15 + 48);
        v22 = *(v15 + 56);
        v21 = *(v15 + 64);
        outlined copy of ActionEntityResolution();

        swift_unknownObjectRelease();
        *a1 = v16;
        *(a1 + 8) = v17;
        *(a1 + 16) = v18;
        *(a1 + 24) = v20;
        *(a1 + 32) = v19;
        *(a1 + 40) = v22;
        *(a1 + 48) = v21;
        return result;
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[2];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  static EntityAction<>.load(_:)(v7, v3, &v25 - v11);
  v13 = *(v3 - 8);
  if ((*(v13 + 48))(v12, 1, v3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
  }

  else
  {
    *(&v26 + 1) = v3;
    *&v27 = v4;
    *(&v27 + 1) = v5;
    v28 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
    (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    *(a1 + 48) = 0;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

{
  v3 = v1[3];
  if (!v3)
  {
    v14 = v1[2];
    if (RETimelineEventGetSwiftConstantData())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySbGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySbGGMR);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = *(v15 + 16);
        v17 = *(v15 + 24);
        v18 = *(v15 + 32);
        v20 = *(v15 + 40);
        v19 = *(v15 + 48);
        v21 = *(v15 + 56);
        outlined copy of ActionEntityResolution();

        swift_unknownObjectRelease();
        *a1 = v16;
        *(a1 + 8) = v17;
        *(a1 + 16) = v18;
        *(a1 + 24) = v20;
        *(a1 + 32) = v19;
        *(a1 + 40) = v21;
        return result;
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[2];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  static EntityAction<>.load(_:)(v7, v3, &v24 - v11);
  v13 = *(v3 - 8);
  if ((*(v13 + 48))(v12, 1, v3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
  }

  else
  {
    *(&v25 + 1) = v3;
    *&v26 = v4;
    *(&v26 + 1) = v5;
    v27 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
    (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    result = 0.0;
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

{
  v3 = v1[3];
  if (!v3)
  {
    v14 = v1[2];
    if (RETimelineEventGetSwiftConstantData())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySfGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySfGGMR);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = *(v15 + 16);
        v17 = *(v15 + 24);
        v18 = *(v15 + 32);
        v20 = *(v15 + 40);
        v19 = *(v15 + 48);
        v21 = *(v15 + 56);
        v22 = *(v15 + 60);
        outlined copy of ActionEntityResolution();

        swift_unknownObjectRelease();
        *a1 = v16;
        *(a1 + 8) = v17;
        *(a1 + 16) = v18;
        *(a1 + 24) = v20;
        *(a1 + 32) = v19;
        *(a1 + 40) = v21;
        *(a1 + 44) = v22;
        return result;
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[2];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  static EntityAction<>.load(_:)(v7, v3, &v25 - v11);
  v13 = *(v3 - 8);
  if ((*(v13 + 48))(v12, 1, v3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
  }

  else
  {
    *(&v26 + 1) = v3;
    *&v27 = v4;
    *(&v27 + 1) = v5;
    v28 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
    (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    result = 0.0;
    *(a1 + 29) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

{
  v3 = v1[3];
  if (!v3)
  {
    v14 = v1[2];
    if (RETimelineEventGetSwiftConstantData())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA09BillboardD0VGMd, &_s17RealityFoundation19EntityActionWrapperCyAA09BillboardD0VGMR);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = *(v15 + 64);
        v24 = *(v15 + 48);
        v25 = v16;
        v26[0] = *(v15 + 80);
        *(v26 + 13) = *(v15 + 93);
        v17 = *(v15 + 32);
        v22 = *(v15 + 16);
        v23 = v17;
        swift_unknownObjectRelease();
        v18 = v25;
        *(a1 + 32) = v24;
        *(a1 + 48) = v18;
        *(a1 + 64) = v26[0];
        *(a1 + 77) = *(v26 + 13);
        result = *&v22;
        v20 = v23;
        *a1 = v22;
        *(a1 + 16) = v20;
        return result;
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[2];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  static EntityAction<>.load(_:)(v7, v3, &v22 - v11);
  v13 = *(v3 - 8);
  if ((*(v13 + 48))(v12, 1, v3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    *&v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
  }

  else
  {
    *(&v23 + 1) = v3;
    *&v24 = v4;
    *(&v24 + 1) = v5;
    *&v25 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
    (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0xFF00000000;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 69) = 0u;
  }

  return result;
}

double specialized ActionEventData.action<A>()@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v5[3];
  if (!v7)
  {
    v22 = v5[2];
    if (RETimelineEventGetSwiftConstantData())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = *(v23 + 48);
        v33 = *(v23 + 32);
        v34 = v24;
        v35 = *(v23 + 64);
        v36 = *(v23 + 80);
        v32 = *(v23 + 16);
        outlined init with copy of [String : String](&v32, v31, a3, a4);
        swift_unknownObjectRelease();
        v25 = v35;
        *(a5 + 32) = v34;
        *(a5 + 48) = v25;
        *(a5 + 64) = v36;
        v26 = v33;
        *a5 = v32;
        *(a5 + 16) = v26;
        return *&v26;
      }

      swift_unknownObjectRelease();
    }

LABEL_11:
    *(a5 + 64) = 0;
    *&v26 = 0;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return *&v26;
  }

  v29 = a3;
  v30 = a4;
  v8 = v5[4];
  v9 = v5[5];
  v10 = v5[6];
  v11 = v5[2];
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  static EntityAction<>.load(_:)(v11, v7, &v29 - v15);
  v17 = *(v7 - 8);
  if ((*(v17 + 48))(v16, 1, v7) == 1)
  {
    (*(v13 + 8))(v16, v12);
    *&v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
  }

  else
  {
    *(&v33 + 1) = v7;
    *&v34 = v8;
    *(&v34 + 1) = v9;
    *&v35 = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
    (*(v17 + 32))(boxed_opaque_existential_1, v16, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  return *&v26;
}

{
  v7 = v5[3];
  if (!v7)
  {
    v20 = v5[2];
    if (RETimelineEventGetSwiftConstantData())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v22 = *(v21 + 16);
        v23 = *(v21 + 24);
        v24 = *(v21 + 32);
        v26 = *(v21 + 40);
        v25 = *(v21 + 48);
        v27 = *(v21 + 56);
        v28 = *(v21 + 64);
        outlined copy of ActionEntityResolution();

        swift_unknownObjectRelease();
        *a5 = v22;
        *(a5 + 8) = v23;
        *(a5 + 16) = v24;
        *(a5 + 24) = v26;
        *(a5 + 32) = v25;
        *(a5 + 40) = v27;
        *(a5 + 48) = v28;
        return result;
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  v31 = a3;
  v32 = a4;
  v8 = v5[4];
  v9 = v5[5];
  v10 = v5[6];
  v11 = v5[2];
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  static EntityAction<>.load(_:)(v11, v7, &v31 - v15);
  v17 = *(v7 - 8);
  if ((*(v17 + 48))(v16, 1, v7) == 1)
  {
    (*(v13 + 8))(v16, v12);
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
  }

  else
  {
    *(&v34 + 1) = v7;
    *&v35 = v8;
    *(&v35 + 1) = v9;
    v36 = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
    (*(v17 + 32))(boxed_opaque_existential_1, v16, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    *(a5 + 48) = 0;
    result = 0.0;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
  }

  return result;
}

{
  v7 = v5[3];
  if (!v7)
  {
    v22 = v5[2];
    if (RETimelineEventGetSwiftConstantData())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = v23[4];
        v37 = v23[3];
        v38 = v24;
        v25 = v23[6];
        v39 = v23[5];
        v40 = v25;
        v26 = v23[2];
        v35 = v23[1];
        v36 = v26;
        outlined init with copy of [String : String](&v35, v34, a3, a4);
        swift_unknownObjectRelease();
        v27 = v38;
        *(a5 + 32) = v37;
        *(a5 + 48) = v27;
        v28 = v40;
        *(a5 + 64) = v39;
        *(a5 + 80) = v28;
        result = *&v35;
        v30 = v36;
        *a5 = v35;
        *(a5 + 16) = v30;
        return result;
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  v32 = a3;
  v33 = a4;
  v8 = v5[4];
  v9 = v5[5];
  v10 = v5[6];
  v11 = v5[2];
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  static EntityAction<>.load(_:)(v11, v7, &v32 - v15);
  v17 = *(v7 - 8);
  if ((*(v17 + 48))(v16, 1, v7) == 1)
  {
    (*(v13 + 8))(v16, v12);
    *&v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
  }

  else
  {
    *(&v36 + 1) = v7;
    *&v37 = v8;
    *(&v37 + 1) = v9;
    *&v38 = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(v17 + 32))(boxed_opaque_existential_1, v16, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    *a5 = 1;
    result = 0.0;
    *(a5 + 8) = 0u;
    *(a5 + 24) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 72) = 0u;
    *(a5 + 88) = 0;
  }

  return result;
}

double specialized ActionEventData.action<A>()@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[3];
  if (v3)
  {
    v4 = v1[4];
    v5 = v1[5];
    v6 = v1[6];
    v7 = v1[2];
    v8 = type metadata accessor for Optional();
    v43[1] = v43;
    v9 = *(v8 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x1EEE9AC00](v8);
    v12 = v43 - v11;
    static EntityAction<>.load(_:)(v7, v3, v43 - v11);
    v13 = *(v3 - 8);
    if ((*(v13 + 48))(v12, 1, v3) == 1)
    {
      (*(v9 + 8))(v12, v8);
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
    }

    else
    {
      *(&v45 + 1) = v3;
      *&v46 = v4;
      *(&v46 + 1) = v5;
      v47 = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
    if (swift_dynamicCast())
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = v1[2];
    if (RETimelineEventGetSwiftConstantData())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMR);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = v15[14];
        v60 = v15[13];
        v61 = v16;
        v17 = v15[16];
        v62 = v15[15];
        v63 = v17;
        v18 = v15[10];
        v56 = v15[9];
        v57 = v18;
        v19 = v15[12];
        v58 = v15[11];
        v59 = v19;
        v20 = v15[6];
        v52 = v15[5];
        v53 = v20;
        v21 = v15[8];
        v54 = v15[7];
        v55 = v21;
        v22 = v15[2];
        v48 = v15[1];
        v49 = v22;
        v23 = v15[4];
        v50 = v15[3];
        v51 = v23;
        outlined init with copy of [String : String](&v48, &v44, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
        swift_unknownObjectRelease();
        v25 = v61;
        a1[12] = v60;
        a1[13] = v25;
        v26 = v63;
        a1[14] = v62;
        a1[15] = v26;
        v27 = v57;
        a1[8] = v56;
        a1[9] = v27;
        v28 = v59;
        a1[10] = v58;
        a1[11] = v28;
        v29 = v53;
        a1[4] = v52;
        a1[5] = v29;
        v30 = v55;
        a1[6] = v54;
        a1[7] = v30;
        v31 = v49;
        *a1 = v48;
        a1[1] = v31;
        v32 = v51;
        a1[2] = v50;
        a1[3] = v32;
LABEL_9:
        destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(a1, v24);
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  _s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOi0_(&v48);
  v35 = v61;
  a1[12] = v60;
  a1[13] = v35;
  v36 = v63;
  a1[14] = v62;
  a1[15] = v36;
  v37 = v57;
  a1[8] = v56;
  a1[9] = v37;
  v38 = v59;
  a1[10] = v58;
  a1[11] = v38;
  v39 = v53;
  a1[4] = v52;
  a1[5] = v39;
  v40 = v55;
  a1[6] = v54;
  a1[7] = v40;
  v41 = v49;
  *a1 = v48;
  a1[1] = v41;
  result = *&v50;
  v42 = v51;
  a1[2] = v50;
  a1[3] = v42;
  return result;
}

{
  v3 = v1[3];
  if (v3)
  {
    v4 = v1[4];
    v5 = v1[5];
    v6 = v1[6];
    v7 = v1[2];
    v8 = type metadata accessor for Optional();
    v34[1] = v34;
    v9 = *(v8 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x1EEE9AC00](v8);
    v12 = v34 - v11;
    static EntityAction<>.load(_:)(v7, v3, v34 - v11);
    v13 = *(v3 - 8);
    if ((*(v13 + 48))(v12, 1, v3) == 1)
    {
      (*(v9 + 8))(v12, v8);
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
    }

    else
    {
      *(&v36 + 1) = v3;
      *&v37 = v4;
      *(&v37 + 1) = v5;
      v38 = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
      (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
    if (swift_dynamicCast())
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = v1[2];
    if (RETimelineEventGetSwiftConstantData())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VySo10simd_quatfaGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VySo10simd_quatfaGGMR);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = v15[8];
        v45 = v15[7];
        v46 = v16;
        v17 = v15[10];
        v47 = v15[9];
        v48 = v17;
        v18 = v15[4];
        v41 = v15[3];
        v42 = v18;
        v19 = v15[6];
        v43 = v15[5];
        v44 = v19;
        v20 = v15[2];
        v39 = v15[1];
        v40 = v20;
        outlined init with copy of [String : String](&v39, &v35, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
        swift_unknownObjectRelease();
        v22 = v46;
        a1[6] = v45;
        a1[7] = v22;
        v23 = v48;
        a1[8] = v47;
        a1[9] = v23;
        v24 = v42;
        a1[2] = v41;
        a1[3] = v24;
        v25 = v44;
        a1[4] = v43;
        a1[5] = v25;
        v26 = v40;
        *a1 = v39;
        a1[1] = v26;
LABEL_9:
        destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(a1, v21);
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  sub_1C1365300(&v39);
  v29 = v46;
  a1[6] = v45;
  a1[7] = v29;
  v30 = v48;
  a1[8] = v47;
  a1[9] = v30;
  v31 = v42;
  a1[2] = v41;
  a1[3] = v31;
  v32 = v44;
  a1[4] = v43;
  a1[5] = v32;
  result = *&v39;
  v33 = v40;
  *a1 = v39;
  a1[1] = v33;
  return result;
}

{
  v3 = v1[3];
  if (v3)
  {
    v4 = v1[4];
    v5 = v1[5];
    v6 = v1[6];
    v7 = v1[2];
    v8 = type metadata accessor for Optional();
    v34[1] = v34;
    v9 = *(v8 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x1EEE9AC00](v8);
    v12 = v34 - v11;
    static EntityAction<>.load(_:)(v7, v3, v34 - v11);
    v13 = *(v3 - 8);
    if ((*(v13 + 48))(v12, 1, v3) == 1)
    {
      (*(v9 + 8))(v12, v8);
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
    }

    else
    {
      *(&v36 + 1) = v3;
      *&v37 = v4;
      *(&v37 + 1) = v5;
      v38 = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
      (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
    if (swift_dynamicCast())
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = v1[2];
    if (RETimelineEventGetSwiftConstantData())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0Vys5SIMD4VySfGGGMR);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = v15[8];
        v45 = v15[7];
        v46 = v16;
        v17 = v15[10];
        v47 = v15[9];
        v48 = v17;
        v18 = v15[4];
        v41 = v15[3];
        v42 = v18;
        v19 = v15[6];
        v43 = v15[5];
        v44 = v19;
        v20 = v15[2];
        v39 = v15[1];
        v40 = v20;
        outlined init with copy of [String : String](&v39, &v35, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
        swift_unknownObjectRelease();
        v22 = v46;
        a1[6] = v45;
        a1[7] = v22;
        v23 = v48;
        a1[8] = v47;
        a1[9] = v23;
        v24 = v42;
        a1[2] = v41;
        a1[3] = v24;
        v25 = v44;
        a1[4] = v43;
        a1[5] = v25;
        v26 = v40;
        *a1 = v39;
        a1[1] = v26;
LABEL_9:
        destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(a1, v21);
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  sub_1C1365300(&v39);
  v29 = v46;
  a1[6] = v45;
  a1[7] = v29;
  v30 = v48;
  a1[8] = v47;
  a1[9] = v30;
  v31 = v42;
  a1[2] = v41;
  a1[3] = v31;
  v32 = v44;
  a1[4] = v43;
  a1[5] = v32;
  result = *&v39;
  v33 = v40;
  *a1 = v39;
  a1[1] = v33;
  return result;
}

{
  v3 = v1[3];
  if (v3)
  {
    v4 = v1[4];
    v5 = v1[5];
    v6 = v1[6];
    v7 = v1[2];
    v8 = type metadata accessor for Optional();
    v34[1] = v34;
    v9 = *(v8 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x1EEE9AC00](v8);
    v12 = v34 - v11;
    static EntityAction<>.load(_:)(v7, v3, v34 - v11);
    v13 = *(v3 - 8);
    if ((*(v13 + 48))(v12, 1, v3) == 1)
    {
      (*(v9 + 8))(v12, v8);
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
    }

    else
    {
      *(&v36 + 1) = v3;
      *&v37 = v4;
      *(&v37 + 1) = v5;
      v38 = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
      (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
    if (swift_dynamicCast())
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = v1[2];
    if (RETimelineEventGetSwiftConstantData())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0Vys5SIMD3VySfGGGMR);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = v15[8];
        v45 = v15[7];
        v46 = v16;
        v17 = v15[10];
        v47 = v15[9];
        v48 = v17;
        v18 = v15[4];
        v41 = v15[3];
        v42 = v18;
        v19 = v15[6];
        v43 = v15[5];
        v44 = v19;
        v20 = v15[2];
        v39 = v15[1];
        v40 = v20;
        outlined init with copy of [String : String](&v39, &v35, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
        swift_unknownObjectRelease();
        v22 = v46;
        a1[6] = v45;
        a1[7] = v22;
        v23 = v48;
        a1[8] = v47;
        a1[9] = v23;
        v24 = v42;
        a1[2] = v41;
        a1[3] = v24;
        v25 = v44;
        a1[4] = v43;
        a1[5] = v25;
        v26 = v40;
        *a1 = v39;
        a1[1] = v26;
LABEL_9:
        destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(a1, v21);
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  sub_1C1365300(&v39);
  v29 = v46;
  a1[6] = v45;
  a1[7] = v29;
  v30 = v48;
  a1[8] = v47;
  a1[9] = v30;
  v31 = v42;
  a1[2] = v41;
  a1[3] = v31;
  v32 = v44;
  a1[4] = v43;
  a1[5] = v32;
  result = *&v39;
  v33 = v40;
  *a1 = v39;
  a1[1] = v33;
  return result;
}

{
  v3 = v1[3];
  if (!v3)
  {
    v14 = v1[2];
    if (RETimelineEventGetSwiftConstantData())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VySfGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VySfGGMR);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = v15[4];
        v27 = v15[3];
        v28 = v16;
        v17 = v15[6];
        v29 = v15[5];
        v30 = v17;
        v18 = v15[2];
        v25 = v15[1];
        v26 = v18;
        outlined init with copy of [String : String](&v25, v24, &_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
        swift_unknownObjectRelease();
        v19 = v28;
        a1[2] = v27;
        a1[3] = v19;
        v20 = v30;
        a1[4] = v29;
        a1[5] = v20;
        result = *&v25;
        v22 = v26;
        *a1 = v25;
        a1[1] = v22;
        return result;
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[2];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24[-v11];
  static EntityAction<>.load(_:)(v7, v3, &v24[-v11]);
  v13 = *(v3 - 8);
  if ((*(v13 + 48))(v12, 1, v3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    *&v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
  }

  else
  {
    *(&v26 + 1) = v3;
    *&v27 = v4;
    *(&v27 + 1) = v5;
    *&v28 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
    (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    result = 0.0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    a1[4] = 0u;
    a1[5] = xmmword_1C1887610;
  }

  return result;
}

{
  v3 = v1[3];
  if (!v3)
  {
    v14 = v1[2];
    if (RETimelineEventGetSwiftConstantData())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA013PlayAnimationD0VGMd, &_s17RealityFoundation19EntityActionWrapperCyAA013PlayAnimationD0VGMR);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = v15[2];
        v21 = v15[1];
        v22 = v16;
        *v23 = v15[3];
        *&v23[10] = *(v15 + 58);
        outlined init with copy of PlayAnimationAction(&v21, v20);
        swift_unknownObjectRelease();
        v17 = v22;
        *a1 = v21;
        a1[1] = v17;
        a1[2] = *v23;
        result = *&v23[10];
        *(a1 + 42) = *&v23[10];
        return result;
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[2];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-v11];
  static EntityAction<>.load(_:)(v7, v3, &v20[-v11]);
  v13 = *(v3 - 8);
  if ((*(v13 + 48))(v12, 1, v3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v22 = 0u;
    memset(v23, 0, 24);
    v21 = 0u;
  }

  else
  {
    *(&v22 + 1) = v3;
    *v23 = v4;
    *&v23[8] = v5;
    *&v23[16] = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
    (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    result = 0.0;
    *(a1 + 42) = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

double specialized ActionEventData.action<A>()@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X8>)
{
  v7 = v5[3];
  if (!v7)
  {
    v22 = v5[2];
    if (RETimelineEventGetSwiftConstantData())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = v23[5];
        v38 = v23[4];
        v39 = v24;
        v25 = v23[7];
        v40 = v23[6];
        v41 = v25;
        v26 = v23[2];
        v35 = v23[1];
        v36 = v26;
        v37 = v23[3];
        outlined init with copy of [String : String](&v35, v34, a3, a4);
        swift_unknownObjectRelease();
        v27 = v40;
        a5[4] = v39;
        a5[5] = v27;
        a5[6] = v41;
        v28 = v36;
        *a5 = v35;
        a5[1] = v28;
        v29 = v38;
        a5[2] = v37;
        a5[3] = v29;
        return *&v29;
      }

      swift_unknownObjectRelease();
    }

LABEL_11:
    a5[4] = 0u;
    a5[5] = 0u;
    a5[2] = 0u;
    a5[3] = 0u;
    *a5 = 0u;
    a5[1] = 0u;
    *&v29 = 1;
    a5[6] = xmmword_1C1887610;
    return *&v29;
  }

  v32 = a3;
  v33 = a4;
  v8 = v5[4];
  v9 = v5[5];
  v10 = v5[6];
  v11 = v5[2];
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  static EntityAction<>.load(_:)(v11, v7, &v32 - v15);
  v17 = *(v7 - 8);
  if ((*(v17 + 48))(v16, 1, v7) == 1)
  {
    (*(v13 + 8))(v16, v12);
    *&v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
  }

  else
  {
    *(&v36 + 1) = v7;
    *&v37 = v8;
    *(&v37 + 1) = v9;
    *&v38 = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(v17 + 32))(boxed_opaque_existential_1, v16, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  return *&v29;
}

uint64_t specialized ActionEventData.action<A>()@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  if (!v3)
  {
    v14 = v1[2];
    result = RETimelineEventGetSwiftConstantData();
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19EntityActionWrapperCyAA012NotificationD0VGMd, &_s17RealityFoundation19EntityActionWrapperCyAA012NotificationD0VGMR);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v18 = v16[2];
        v17 = v16[3];
        v19 = v16[4];

        result = swift_unknownObjectRelease();
        *a1 = v18;
        a1[1] = v17;
        a1[2] = v19;
        return result;
      }

      result = swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[2];
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  static EntityAction<>.load(_:)(v7, v3, &v21 - v11);
  v13 = *(v3 - 8);
  if ((*(v13 + 48))(v12, 1, v3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
  }

  else
  {
    *(&v22 + 1) = v3;
    *&v23 = v4;
    *(&v23 + 1) = v5;
    v24 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
    (*(v13 + 32))(boxed_opaque_existential_1, v12, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_11:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static AnimationResource.actionSubscriptions;
  if (!*(static AnimationResource.actionSubscriptions + 16))
  {
    return swift_endAccess();
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
  if ((v9 & 1) == 0)
  {
    return swift_endAccess();
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  v22 = v10;
  swift_endAccess();
  if (!*(v10 + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v12 & 1) == 0))
  {

    if (!*(v10 + 16))
    {
LABEL_14:
      swift_beginAccess();
      specialized Dictionary._Variant.removeValue(forKey:)(v6);
      swift_endAccess();
    }

LABEL_11:
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v6, isUniquelyReferenced_nonNull_native);
    static AnimationResource.actionSubscriptions = v21;
    swift_endAccess();
  }

  v13 = (*(v10 + 56) + 16 * v11);
  v14 = *v13;
  v15 = v13[1];
  if (a2)
  {
    v16 = *(a2 + 24);

    result = REEngineGetEventBus();
    goto LABEL_13;
  }

  v20 = specialized static __ServiceLocator.shared.getter(v19);
  swift_beginAccess();
  result = MEMORY[0x1C68FE250](*(v20 + 16));
  if (result)
  {
LABEL_13:
    MEMORY[0x1C68F9800](result, v14, v15);
    specialized Dictionary._Variant.removeValue(forKey:)(a1);
    v10 = v22;
    if (!*(v22 + 16))
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static AnimationResource.actionSubscriptions;
  if (!*(static AnimationResource.actionSubscriptions + 16))
  {
    return swift_endAccess();
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  if ((v8 & 1) == 0)
  {
    return swift_endAccess();
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  v21 = v9;
  swift_endAccess();
  if (!*(v9 + 16) || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v11 & 1) == 0))
  {

    if (!*(v9 + 16))
    {
LABEL_14:
      swift_beginAccess();
      specialized Dictionary._Variant.removeValue(forKey:)(a3);
      swift_endAccess();
    }

LABEL_11:
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a3, isUniquelyReferenced_nonNull_native);
    static AnimationResource.actionSubscriptions = v20;
    swift_endAccess();
  }

  v12 = (*(v9 + 56) + 16 * v10);
  v13 = *v12;
  v14 = v12[1];
  if (a2)
  {
    v15 = *(a2 + 24);

    result = REEngineGetEventBus();
    goto LABEL_13;
  }

  v19 = specialized static __ServiceLocator.shared.getter(v18);
  swift_beginAccess();
  result = MEMORY[0x1C68FE250](*(v19 + 16));
  if (result)
  {
LABEL_13:
    MEMORY[0x1C68F9800](result, v13, v14);
    specialized Dictionary._Variant.removeValue(forKey:)(a1);
    v9 = v21;
    if (!*(v21 + 16))
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA09EmphasizecD0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09EmphasizeD0V_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA09EmphasizecD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09EmphasizeD0V_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA09EmphasizecD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09EmphasizeD0V_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA09EmphasizecD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09EmphasizeD0V_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA09EmphasizecD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09EmphasizeD0V_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA09EmphasizecD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09EmphasizeD0V_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA09EmphasizecD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09EmphasizeD0V_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA09EmphasizecD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09EmphasizeD0V_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA09EmphasizecD0V_Tt0G5, 0);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for EmphasizeAction), (v6 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v20, "Handler for ");
    BYTE5(v20[1]) = 0;
    HIWORD(v20[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15EmphasizeActionVmMd, &_s17RealityFoundation15EmphasizeActionVmMR);
    v7 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v7);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v9 = v20[0];
    v8 = v20[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static AnimationLogger.logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v20);
      _os_log_impl(&dword_1C1358000, v11, v12, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v16 + 24) = v15;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?), v16, &type metadata for EmphasizeAction, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v19;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA09PlayAudiocD0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09PlayAudioD0V_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA09PlayAudiocD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09PlayAudioD0V_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA09PlayAudiocD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09PlayAudioD0V_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA09PlayAudiocD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09PlayAudioD0V_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA09PlayAudiocD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09PlayAudioD0V_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA09PlayAudiocD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09PlayAudioD0V_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA09PlayAudiocD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09PlayAudioD0V_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA09PlayAudiocD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09PlayAudioD0V_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA09PlayAudiocD0V_Tt0G5, 0);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for PlayAudioAction), (v6 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v20, "Handler for ");
    BYTE5(v20[1]) = 0;
    HIWORD(v20[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15PlayAudioActionVmMd, &_s17RealityFoundation15PlayAudioActionVmMR);
    v7 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v7);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v9 = v20[0];
    v8 = v20[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static AnimationLogger.logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v20);
      _os_log_impl(&dword_1C1358000, v11, v12, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v16 + 24) = v15;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v16, &type metadata for PlayAudioAction, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v19;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0VyAF9TransformVG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VyAH9TransformVG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VyAE9TransformVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VyAH9TransformVG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VyAE9TransformVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VyAH9TransformVG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0VyAE9TransformVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VyAH9TransformVG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VyAE9TransformVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VyAH9TransformVG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0VyAE9TransformVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VyAH9TransformVG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0VyAE9TransformVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VyAH9TransformVG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VyAE9TransformVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VyAH9TransformVG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VyAE9TransformVG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGmMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0VySSG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySSG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySSG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySSG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySSG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySSG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0VySSG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySSG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySSG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySSG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0VySSG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySSG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0VySSG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySSG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VySSG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySSG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySSG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0VySbG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySbG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySbG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySbG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySbG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySbG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0VySbG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySbG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySbG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySbG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0VySbG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySbG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0VySbG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySbG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VySbG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySbG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySbG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0VySiG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySiG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySiG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySiG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySiG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySiG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0VySiG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySiG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySiG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySiG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0VySiG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySiG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0VySiG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySiG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VySiG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySiG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySiG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySo10simd_quatfaG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySo10simd_quatfaG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySo10simd_quatfaG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySo10simd_quatfaG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySo10simd_quatfaG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySo10simd_quatfaG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySo10simd_quatfaG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySo10simd_quatfaG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD4VySfGG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD4VySfGG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD4VySfGG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD4VySfGG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD4VySfGG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD4VySfGG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD4VySfGG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD4VySfGG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD3VySfGG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD3VySfGG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD3VySfGG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD3VySfGG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD3VySfGG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD3VySfGG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD3VySfGG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD3VySfGG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD2VySfGG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD2VySfGG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD2VySfGG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD2VySfGG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD2VySfGG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD2VySfGG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD2VySfGG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD2VySfGG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0VySdG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySdG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySdG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySdG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySdG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySdG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0VySdG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySdG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySdG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySdG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0VySdG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySdG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0VySdG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySdG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VySdG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySdG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySdG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA017SetEntityPropertycD0VySfG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySfG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySfG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySfG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySfG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySfG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0VySfG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySfG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySfG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySfG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0VySfG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySfG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0VySfG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySfG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VySfG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySfG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySfG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA17BlendShapeWeightsVG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA17BlendShapeWeightsVG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA17BlendShapeWeightsVG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA17BlendShapeWeightsVG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA17BlendShapeWeightsVG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA17BlendShapeWeightsVG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA17BlendShapeWeightsVG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA17BlendShapeWeightsVG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGmMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0VyAA15JointTransformsVG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA15JointTransformsVG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VyAA15JointTransformsVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA15JointTransformsVG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VyAA15JointTransformsVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA15JointTransformsVG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0VyAA15JointTransformsVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA15JointTransformsVG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0VyAA15JointTransformsVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA15JointTransformsVG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0VyAA15JointTransformsVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA15JointTransformsVG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0VyAA15JointTransformsVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA15JointTransformsVG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0VyAA15JointTransformsVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA15JointTransformsVG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VyAA15JointTransformsVG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGmMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0VyAF9TransformVG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAH9TransformVG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VyAE9TransformVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAH9TransformVG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VyAE9TransformVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAH9TransformVG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0VyAE9TransformVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAH9TransformVG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0VyAE9TransformVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAH9TransformVG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0VyAE9TransformVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAH9TransformVG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0VyAE9TransformVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAH9TransformVG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0VyAE9TransformVG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAH9TransformVG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VyAE9TransformVG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGmMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0VySo10simd_quatfaG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySo10simd_quatfaG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySo10simd_quatfaG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySo10simd_quatfaG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySo10simd_quatfaG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySo10simd_quatfaG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySo10simd_quatfaG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySo10simd_quatfaG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySo10simd_quatfaG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySo10simd_quatfaGmMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0Vys5SIMD4VySfGG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD4VySfGG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD4VySfGG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD4VySfGG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD4VySfGG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD4VySfGG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD4VySfGG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD4VySfGG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD4VySfGG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGmMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}