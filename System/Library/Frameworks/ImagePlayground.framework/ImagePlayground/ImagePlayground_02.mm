uint64_t ImagePlaygroundStyle.supportsImportedImage.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_1EE089438 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    swift_once();
    v2 = v7;
    v1 = v6;
  }

  if (xmmword_1EE089440 == v1 && *(&xmmword_1EE089440 + 1) == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1D2AC7354() ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D2A4E4AC()
{
  v1 = v0[3];
  v79 = v0[2];
  v80 = v1;
  v2 = v0[5];
  v81 = v0[4];
  v82 = v2;
  v3 = v0[1];
  v77 = *v0;
  v78 = v3;
  if (qword_1EE089358 != -1)
  {
    swift_once();
  }

  v83[2] = xmmword_1EE089380;
  v83[3] = unk_1EE089390;
  v83[4] = xmmword_1EE0893A0;
  v83[5] = unk_1EE0893B0;
  v83[0] = xmmword_1EE089360;
  v83[1] = xmmword_1EE089370;
  v73 = xmmword_1EE089380;
  v74 = unk_1EE089390;
  v75 = xmmword_1EE0893A0;
  v76 = unk_1EE0893B0;
  v71 = xmmword_1EE089360;
  v72 = xmmword_1EE089370;
  v4 = v0[3];
  v67 = v0[2];
  v68 = v4;
  v5 = v0[5];
  v69 = v0[4];
  v70 = v5;
  v6 = v0[1];
  v65 = *v0;
  v66 = v6;
  sub_1D2A2D244(v83, v84);
  v7 = _s15ImagePlayground0aB5StyleV2eeoiySbAC_ACtFZ_0(&v71, &v65);
  v84[2] = v73;
  v84[3] = v74;
  v84[4] = v75;
  v84[5] = v76;
  v84[0] = v71;
  v84[1] = v72;
  sub_1D2A2DDA8(v84);
  if (v7)
  {
    return 0;
  }

  if (qword_1EE0895E0 != -1)
  {
    swift_once();
  }

  v67 = xmmword_1EE089608;
  v68 = unk_1EE089618;
  v69 = xmmword_1EE089628;
  v70 = unk_1EE089638;
  v65 = xmmword_1EE0895E8;
  v66 = xmmword_1EE0895F8;
  v61 = xmmword_1EE089608;
  v62 = unk_1EE089618;
  v63 = xmmword_1EE089628;
  v64 = unk_1EE089638;
  v59 = xmmword_1EE0895E8;
  v60 = xmmword_1EE0895F8;
  v9 = v0[3];
  v55 = v0[2];
  v56 = v9;
  v10 = v0[5];
  v57 = v0[4];
  v58 = v10;
  v11 = v0[1];
  v53 = *v0;
  v54 = v11;
  sub_1D2A2D244(&v65, &v47);
  v12 = _s15ImagePlayground0aB5StyleV2eeoiySbAC_ACtFZ_0(&v59, &v53);
  v73 = v61;
  v74 = v62;
  v75 = v63;
  v76 = v64;
  v71 = v59;
  v72 = v60;
  sub_1D2A2DDA8(&v71);
  if (v12)
  {
    return 1;
  }

  if (qword_1EE0893C8 != -1)
  {
    swift_once();
  }

  v55 = xmmword_1EE0893F0;
  v56 = unk_1EE089400;
  v57 = xmmword_1EE089410;
  v58 = unk_1EE089420;
  v53 = xmmword_1EE0893D0;
  v54 = xmmword_1EE0893E0;
  v49 = xmmword_1EE0893F0;
  v50 = unk_1EE089400;
  v51 = xmmword_1EE089410;
  v52 = unk_1EE089420;
  v47 = xmmword_1EE0893D0;
  v48 = xmmword_1EE0893E0;
  v13 = v0[3];
  v43 = v0[2];
  v44 = v13;
  v14 = v0[5];
  v45 = v0[4];
  v46 = v14;
  v15 = v0[1];
  v41 = *v0;
  v42 = v15;
  sub_1D2A2D244(&v53, &v35);
  v16 = _s15ImagePlayground0aB5StyleV2eeoiySbAC_ACtFZ_0(&v47, &v41);
  v61 = v49;
  v62 = v50;
  v63 = v51;
  v64 = v52;
  v59 = v47;
  v60 = v48;
  sub_1D2A2DDA8(&v59);
  if (v16)
  {
    return 2;
  }

  if (qword_1EE089438 != -1)
  {
    swift_once();
  }

  v43 = xmmword_1EE089460;
  v44 = unk_1EE089470;
  v45 = xmmword_1EE089480;
  v46 = unk_1EE089490;
  v41 = xmmword_1EE089440;
  v42 = xmmword_1EE089450;
  v37 = xmmword_1EE089460;
  v38 = unk_1EE089470;
  v39 = xmmword_1EE089480;
  v40 = unk_1EE089490;
  v35 = xmmword_1EE089440;
  v36 = xmmword_1EE089450;
  v17 = v0[3];
  v31 = v0[2];
  v32 = v17;
  v18 = v0[5];
  v33 = v0[4];
  v34 = v18;
  v19 = v0[1];
  v29 = *v0;
  v30 = v19;
  sub_1D2A2D244(&v41, &v23);
  v20 = _s15ImagePlayground0aB5StyleV2eeoiySbAC_ACtFZ_0(&v35, &v29);
  v49 = v37;
  v50 = v38;
  v51 = v39;
  v52 = v40;
  v47 = v35;
  v48 = v36;
  sub_1D2A2DDA8(&v47);
  if (v20)
  {
    return 3;
  }

  if (qword_1EE089570 != -1)
  {
    swift_once();
  }

  v31 = xmmword_1EE089598;
  v32 = unk_1EE0895A8;
  v33 = xmmword_1EE0895B8;
  v34 = unk_1EE0895C8;
  v29 = xmmword_1EE089578;
  v30 = xmmword_1EE089588;
  v25 = xmmword_1EE089598;
  v26 = unk_1EE0895A8;
  v27 = xmmword_1EE0895B8;
  v28 = unk_1EE0895C8;
  v23 = xmmword_1EE089578;
  v24 = xmmword_1EE089588;
  v22[2] = v79;
  v22[3] = v80;
  v22[4] = v81;
  v22[5] = v82;
  v22[0] = v77;
  v22[1] = v78;
  sub_1D2A2D244(&v29, &v35);
  v21 = _s15ImagePlayground0aB5StyleV2eeoiySbAC_ACtFZ_0(&v23, v22);
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v35 = v23;
  v36 = v24;
  sub_1D2A2DDA8(&v35);
  if (v21)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D2A4E8B4()
{
  qword_1EE088748 = &type metadata for ImagePlaygroundStyle.StyleSorter;
  result = sub_1D2A50CAC();
  qword_1EE088750 = result;
  byte_1EE088730 = 0;
  return result;
}

uint64_t static ImagePlaygroundStyle.sorter.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EE088728 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1D2A502C4(&byte_1EE088730, v2);
}

__n128 sub_1D2A4E960@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1EE0894A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE0894A8);
  v7 = *&algn_1EE0894AC[36];
  v8 = *&algn_1EE0894AC[52];
  v9 = *&algn_1EE0894AC[68];
  v5 = *&algn_1EE0894AC[4];
  v6 = *&algn_1EE0894AC[20];
  sub_1D2A50254(&v5, &v4);
  os_unfair_lock_unlock(&dword_1EE0894A8);
  v2 = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v2;
  *(a1 + 64) = v9;
  result = v6;
  *a1 = v5;
  *(a1 + 16) = result;
  return result;
}

void sub_1D2A4EA14(__int128 *a1)
{
  v1 = a1[3];
  v5 = a1[2];
  v6 = v1;
  v7 = a1[4];
  v2 = a1[1];
  v3 = *a1;
  v4 = v2;
  sub_1D2A50254(&v3, v8);
  if (qword_1EE0894A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE0894A8);
  v8[2] = *&algn_1EE0894AC[36];
  v8[3] = *&algn_1EE0894AC[52];
  v8[4] = *&algn_1EE0894AC[68];
  v8[0] = *&algn_1EE0894AC[4];
  v8[1] = *&algn_1EE0894AC[20];
  sub_1D2A2E61C(v8, &qword_1EC704270, &qword_1D2ACABD0);
  *&algn_1EE0894AC[20] = v4;
  *&algn_1EE0894AC[36] = v5;
  *&algn_1EE0894AC[52] = v6;
  *&algn_1EE0894AC[68] = v7;
  *&algn_1EE0894AC[4] = v3;
  os_unfair_lock_unlock(&dword_1EE0894A8);
}

void static ImagePlaygroundStyle.externalProviderRepresentationInfo.setter(__int128 *a1)
{
  if (qword_1EE0894A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE0894A8);
  v4[2] = *&algn_1EE0894AC[36];
  v4[3] = *&algn_1EE0894AC[52];
  v4[4] = *&algn_1EE0894AC[68];
  v4[0] = *&algn_1EE0894AC[4];
  v4[1] = *&algn_1EE0894AC[20];
  sub_1D2A2E61C(v4, &qword_1EC704270, &qword_1D2ACABD0);
  v2 = *a1;
  *&algn_1EE0894AC[20] = a1[1];
  v3 = a1[3];
  *&algn_1EE0894AC[36] = a1[2];
  *&algn_1EE0894AC[52] = v3;
  *&algn_1EE0894AC[68] = a1[4];
  *&algn_1EE0894AC[4] = v2;
  os_unfair_lock_unlock(&dword_1EE0894A8);
}

void (*static ImagePlaygroundStyle.externalProviderRepresentationInfo.modify(uint64_t *a1))(_OWORD **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x1E0uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EE0894A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE0894A8);
  *v3 = *&algn_1EE0894AC[4];
  v4 = *&algn_1EE0894AC[20];
  v5 = *&algn_1EE0894AC[36];
  v6 = *&algn_1EE0894AC[68];
  v3[3] = *&algn_1EE0894AC[52];
  v3[4] = v6;
  v3[1] = v4;
  v3[2] = v5;
  v7 = *&algn_1EE0894AC[20];
  v8 = *&algn_1EE0894AC[52];
  v3[7] = *&algn_1EE0894AC[36];
  v3[8] = v8;
  v3[9] = *&algn_1EE0894AC[68];
  v3[5] = *&algn_1EE0894AC[4];
  v3[6] = v7;
  sub_1D2A50254(v3, (v3 + 10));
  os_unfair_lock_unlock(&dword_1EE0894A8);
  return sub_1D2A4ECC4;
}

void sub_1D2A4ECC4(_OWORD **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[8];
    v2[22] = v2[7];
    v2[23] = v3;
    v2[24] = v2[9];
    v4 = v2[6];
    v2[20] = v2[5];
    v2[21] = v4;
    sub_1D2A50254((v2 + 20), (v2 + 25));
    os_unfair_lock_lock(&dword_1EE0894A8);
    v5 = *&algn_1EE0894AC[20];
    v6 = *&algn_1EE0894AC[52];
    v2[17] = *&algn_1EE0894AC[36];
    v2[18] = v6;
    v2[19] = *&algn_1EE0894AC[68];
    v2[15] = *&algn_1EE0894AC[4];
    v2[16] = v5;
    sub_1D2A2E61C((v2 + 15), &qword_1EC704270, &qword_1D2ACABD0);
    v7 = v2[20];
    *&algn_1EE0894AC[20] = v2[21];
    v8 = v2[23];
    *&algn_1EE0894AC[36] = v2[22];
    *&algn_1EE0894AC[52] = v8;
    *&algn_1EE0894AC[68] = v2[24];
    *&algn_1EE0894AC[4] = v7;
    os_unfair_lock_unlock(&dword_1EE0894A8);
    v9 = v2[8];
    v2[12] = v2[7];
    v2[13] = v9;
    v2[14] = v2[9];
    v10 = v2[6];
    v2[10] = v2[5];
    v2[11] = v10;
    sub_1D2A2E61C((v2 + 10), &qword_1EC704270, &qword_1D2ACABD0);
  }

  else
  {
    v15 = v2[7];
    v16 = v2[8];
    v17 = v2[9];
    v13 = v2[5];
    v14 = v2[6];
    os_unfair_lock_lock(&dword_1EE0894A8);
    v11 = *&algn_1EE0894AC[20];
    v12 = *&algn_1EE0894AC[52];
    v2[12] = *&algn_1EE0894AC[36];
    v2[13] = v12;
    v2[14] = *&algn_1EE0894AC[68];
    v2[10] = *&algn_1EE0894AC[4];
    v2[11] = v11;
    sub_1D2A2E61C((v2 + 10), &qword_1EC704270, &qword_1D2ACABD0);
    *&algn_1EE0894AC[20] = v14;
    *&algn_1EE0894AC[36] = v15;
    *&algn_1EE0894AC[52] = v16;
    *&algn_1EE0894AC[68] = v17;
    *&algn_1EE0894AC[4] = v13;
    os_unfair_lock_unlock(&dword_1EE0894A8);
  }

  free(v2);
}

double sub_1D2A4EE5C()
{
  dword_1EE0894A8 = 0;
  result = 0.0;
  *&algn_1EE0894AC[4] = 0u;
  *&algn_1EE0894AC[20] = 0u;
  *&algn_1EE0894AC[36] = 0u;
  *&algn_1EE0894AC[52] = 0u;
  *&algn_1EE0894AC[68] = 0u;
  return result;
}

uint64_t ImagePlaygroundStyle.requiresExternalProvider.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = qword_1EE089570;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = v2 == xmmword_1EE089578 && v1 == *(&xmmword_1EE089578 + 1);
  if (v4 || (sub_1D2AC7354() & 1) != 0)
  {

    v5 = 1;
  }

  else
  {
    sub_1D2A4B050();
    v5 = sub_1D2AC6FD4();
  }

  return v5 & 1;
}

Swift::Bool __swiftcall ImagePlaygroundStyle.isSubStyle(of:)(ImagePlayground::ImagePlaygroundStyle *of)
{
  v5 = *v1;
  v6 = v1[1];
  countAndFlagsBits = of->id._countAndFlagsBits;
  object = of->id._object;
  sub_1D2A4B050();
  return sub_1D2AC6FD4() & 1;
}

uint64_t sub_1D2A4F008()
{
  v1 = *v0;
  sub_1D2AC7444();
  sub_1D2AC6054();
  return sub_1D2AC7484();
}

uint64_t sub_1D2A4F058()
{
  v1 = *v0;
  sub_1D2AC7444();
  sub_1D2AC6054();
  return sub_1D2AC7484();
}

unint64_t sub_1D2A4F0AC()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1D2A4F0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D2AC7354() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D2ADEB50 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2AC7354();

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

uint64_t sub_1D2A4F1BC(uint64_t a1)
{
  v2 = sub_1D2A505A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A4F1F8(uint64_t a1)
{
  v2 = sub_1D2A505A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImagePlaygroundStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704278, &qword_1D2ACABD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 4);
  v28 = *(v1 + 3);
  v29 = v10;
  v30 = *(v1 + 5);
  v11 = *(v1 + 2);
  v26 = *(v1 + 1);
  v27 = v11;
  v13 = a1[3];
  v12 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1D2A505A8();
  sub_1D2AC74A4();
  LOBYTE(v21) = 0;
  v17 = v19[1];
  sub_1D2AC72D4();
  if (!v17)
  {
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v21 = v26;
    v22 = v27;
    v31 = 1;
    sub_1D2A50254(&v26, v20);
    sub_1D2A505FC();
    sub_1D2AC72C4();
    v20[2] = v23;
    v20[3] = v24;
    v20[4] = v25;
    v20[0] = v21;
    v20[1] = v22;
    sub_1D2A2E61C(v20, &qword_1EC704270, &qword_1D2ACABD0);
  }

  return (*(v4 + 8))(v7, v16);
}

uint64_t ImagePlaygroundStyle.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v7 = *(v0 + 3);
  v8 = v3;
  v9 = *(v0 + 5);
  v4 = *(v0 + 2);
  v6[0] = *(v0 + 1);
  v6[1] = v4;
  sub_1D2AC6C74();
  if (!*(&v6[0] + 1))
  {
    return sub_1D2AC7464();
  }

  sub_1D2AC7464();

  sub_1D2AC6C74();
  sub_1D2AC6C74();
  sub_1D2AC7464();
  if (*(&v7 + 1))
  {
    sub_1D2AC6C74();
  }

  sub_1D2AC6C74();
  sub_1D2AC7464();
  if (*(&v9 + 1))
  {
    sub_1D2AC6C74();
  }

  return sub_1D2A2E61C(v6, &qword_1EC704270, &qword_1D2ACABD0);
}

uint64_t ImagePlaygroundStyle.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v7 = *(v0 + 3);
  v8 = v3;
  v9 = *(v0 + 5);
  v4 = *(v0 + 2);
  v6[0] = *(v0 + 1);
  v6[1] = v4;
  sub_1D2AC7444();
  sub_1D2AC6C74();
  if (*(&v6[0] + 1))
  {
    sub_1D2AC7464();

    sub_1D2AC6C74();
    sub_1D2AC6C74();
    sub_1D2AC7464();
    if (*(&v7 + 1))
    {
      sub_1D2AC6C74();
    }

    sub_1D2AC6C74();
    sub_1D2AC7464();
    if (*(&v9 + 1))
    {
      sub_1D2AC6C74();
    }

    sub_1D2A2E61C(v6, &qword_1EC704270, &qword_1D2ACABD0);
  }

  else
  {
    sub_1D2AC7464();
  }

  return sub_1D2AC7484();
}

uint64_t ImagePlaygroundStyle.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704290, &qword_1D2ACABE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A505A8();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    return sub_1D2A2E61C(&v44, &qword_1EC704270, &qword_1D2ACABD0);
  }

  else
  {
    v10 = v5;
    v11 = v36;
    LOBYTE(v44) = 0;
    v12 = sub_1D2AC7234();
    v14 = v13;
    v35 = v12;
    v60 = 1;
    sub_1D2A50650();
    sub_1D2AC7224();
    (*(v10 + 8))(v8, v4);
    v15 = v51;
    v32 = v51;
    v16 = v52;
    v33 = v55;
    v34 = v54;
    v17 = v57;
    v30 = v57;
    v31 = v52;
    v28 = v58;
    v29 = v53;
    v26 = v59;
    v27 = v56;
    memset(v37, 0, sizeof(v37));
    sub_1D2A2E61C(v37, &qword_1EC704270, &qword_1D2ACABD0);
    *&v38 = v35;
    *(&v38 + 1) = v14;
    v39 = v15;
    v19 = v28;
    v18 = v29;
    *&v40 = v16;
    *(&v40 + 1) = v29;
    *&v41 = v34;
    *(&v41 + 1) = v33;
    v20 = v27;
    *&v42 = v27;
    *(&v42 + 1) = v17;
    v21 = v26;
    *&v43 = v28;
    *(&v43 + 1) = v26;
    v22 = v41;
    v11[2] = v40;
    v11[3] = v22;
    v23 = v43;
    v11[4] = v42;
    v11[5] = v23;
    v24 = v39;
    *v11 = v38;
    v11[1] = v24;
    sub_1D2A2D244(&v38, &v44);
    __swift_destroy_boxed_opaque_existential_0(a1);
    *&v44 = v35;
    *(&v44 + 1) = v14;
    v45 = v32;
    *&v46 = v31;
    *(&v46 + 1) = v18;
    *&v47 = v34;
    *(&v47 + 1) = v33;
    *&v48 = v20;
    *(&v48 + 1) = v30;
    v49 = v19;
    v50 = v21;
    return sub_1D2A2DDA8(&v44);
  }
}

uint64_t sub_1D2A4FA70()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D2AC6C74();
  if (!v4)
  {
    return sub_1D2AC7464();
  }

  v9 = *(v0 + 2);
  v10 = *(v0 + 3);
  v11 = *(v0 + 4);
  v12 = *(v0 + 5);
  *&v8 = v3;
  *(&v8 + 1) = v4;
  sub_1D2AC7464();
  v13[0] = v3;
  v13[1] = v4;
  v5 = *(v0 + 3);
  v14 = *(v0 + 2);
  v15 = v5;
  v6 = *(v0 + 5);
  v16 = *(v0 + 4);
  v17 = v6;
  sub_1D2A501EC(v13, v18);
  ImagePlaygroundStyle.RepresentationInfo.hash(into:)();
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = v12;
  v18[0] = v8;
  v18[1] = v9;
  return sub_1D2A50224(v18);
}

uint64_t sub_1D2A4FB38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D2AC7444();
  sub_1D2AC6C74();
  if (v4)
  {
    v9 = *(v0 + 2);
    v10 = *(v0 + 3);
    v11 = *(v0 + 4);
    v12 = *(v0 + 5);
    *&v8 = v3;
    *(&v8 + 1) = v4;
    sub_1D2AC7464();
    v13[0] = v3;
    v13[1] = v4;
    v5 = *(v0 + 3);
    v14 = *(v0 + 2);
    v15 = v5;
    v6 = *(v0 + 5);
    v16 = *(v0 + 4);
    v17 = v6;
    sub_1D2A501EC(v13, v18);
    ImagePlaygroundStyle.RepresentationInfo.hash(into:)();
    v18[2] = v10;
    v18[3] = v11;
    v18[4] = v12;
    v18[0] = v8;
    v18[1] = v9;
    sub_1D2A50224(v18);
  }

  else
  {
    sub_1D2AC7464();
  }

  return sub_1D2AC7484();
}

uint64_t sub_1D2A4FC18@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1D2A4FC24(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D2A4474C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

_OWORD *_s15ImagePlayground0aB5StyleV3allSayACGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B58, &qword_1D2AC9D98);
  v0 = swift_allocObject();
  v0[1] = xmmword_1D2AC9060;
  if (qword_1EE089358 != -1)
  {
    swift_once();
  }

  v1 = unk_1EE089390;
  v22[2] = xmmword_1EE089380;
  v22[3] = unk_1EE089390;
  v2 = xmmword_1EE0893A0;
  v3 = unk_1EE0893B0;
  v22[4] = xmmword_1EE0893A0;
  v22[5] = unk_1EE0893B0;
  v4 = xmmword_1EE089360;
  v5 = xmmword_1EE089370;
  v22[0] = xmmword_1EE089360;
  v22[1] = xmmword_1EE089370;
  v0[4] = xmmword_1EE089380;
  v0[5] = v1;
  v0[6] = v2;
  v0[7] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1D2A2D244(v22, v24);
  if (qword_1EE0895E0 != -1)
  {
    swift_once();
  }

  v6 = unk_1EE089618;
  v23[2] = xmmword_1EE089608;
  v23[3] = unk_1EE089618;
  v7 = xmmword_1EE089628;
  v8 = unk_1EE089638;
  v23[4] = xmmword_1EE089628;
  v23[5] = unk_1EE089638;
  v9 = xmmword_1EE0895E8;
  v10 = xmmword_1EE0895F8;
  v23[0] = xmmword_1EE0895E8;
  v23[1] = xmmword_1EE0895F8;
  v0[10] = xmmword_1EE089608;
  v0[11] = v6;
  v0[12] = v7;
  v0[13] = v8;
  v0[8] = v9;
  v0[9] = v10;
  sub_1D2A2D244(v23, v24);
  if (qword_1EE0893C8 != -1)
  {
    swift_once();
  }

  v11 = unk_1EE089400;
  v24[2] = xmmword_1EE0893F0;
  v24[3] = unk_1EE089400;
  v12 = xmmword_1EE089410;
  v13 = unk_1EE089420;
  v24[4] = xmmword_1EE089410;
  v24[5] = unk_1EE089420;
  v14 = xmmword_1EE0893D0;
  v15 = xmmword_1EE0893E0;
  v24[0] = xmmword_1EE0893D0;
  v24[1] = xmmword_1EE0893E0;
  v0[16] = xmmword_1EE0893F0;
  v0[17] = v11;
  v0[18] = v12;
  v0[19] = v13;
  v0[14] = v14;
  v0[15] = v15;
  v19[3] = &type metadata for ImagePlaygroundFeatures;
  v19[4] = sub_1D2A4FF8C();
  LOBYTE(v19[0]) = 0;
  sub_1D2A2D244(v24, v21);
  v16 = sub_1D2AC60E4();
  __swift_destroy_boxed_opaque_existential_0(v19);
  if (v16)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2AC95B0;
    if (qword_1EE089570 != -1)
    {
      swift_once();
    }

    v21[2] = xmmword_1EE089598;
    v21[3] = unk_1EE0895A8;
    v21[4] = xmmword_1EE0895B8;
    v21[5] = unk_1EE0895C8;
    v21[0] = xmmword_1EE089578;
    v21[1] = xmmword_1EE089588;
    memmove((inited + 32), &xmmword_1EE089578, 0x60uLL);
    v20 = v0;
    sub_1D2A2D244(v21, v19);
    sub_1D2A4FC24(inited);
    return v20;
  }

  return v0;
}

unint64_t sub_1D2A4FF8C()
{
  result = qword_1EE089340;
  if (!qword_1EE089340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE089340);
  }

  return result;
}

uint64_t _s15ImagePlayground0aB5StyleV18RepresentationInfoV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v17 = a1[6];
  v18 = a1[7];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v13 = a2[8];
  v14 = a1[8];
  v15 = a2[9];
  v16 = a1[9];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D2AC7354() & 1) == 0 || (v2 != v7 || v3 != v6) && (sub_1D2AC7354() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v8 || (v4 != v9 || v5 != v8) && (sub_1D2AC7354() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v17 == v10 && v18 == v11 || (sub_1D2AC7354() & 1) != 0)
  {
    if (v16)
    {
      if (v15 && (v14 == v13 && v16 == v15 || (sub_1D2AC7354() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v15)
    {
      return 1;
    }
  }

  return 0;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D2A50198()
{
  result = qword_1EC704260;
  if (!qword_1EC704260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704260);
  }

  return result;
}

uint64_t sub_1D2A50254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704270, &qword_1D2ACABD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A502C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t _s15ImagePlayground0aB5StyleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  v53[2] = *(a1 + 3);
  v53[3] = v6;
  v7 = *(a1 + 5);
  v8 = *(a1 + 2);
  v53[0] = *(a1 + 1);
  v53[1] = v8;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 1);
  v12 = *(a2 + 2);
  v13 = *(a2 + 5);
  v54[3] = *(a2 + 4);
  v54[4] = v13;
  v14 = *(a2 + 3);
  v54[1] = v12;
  v54[2] = v14;
  v53[4] = v7;
  v54[0] = v11;
  if (v4 == v9 && v5 == v10 || (v15 = 0, (sub_1D2AC7354() & 1) != 0))
  {
    v16 = v53[0];
    v17 = v54[0];
    if (*(&v53[0] + 1))
    {
      v43 = v53[0];
      v18 = *(a1 + 3);
      v44 = *(a1 + 2);
      v45 = v18;
      v19 = *(a1 + 5);
      v46 = *(a1 + 4);
      v47 = v19;
      v40 = v18;
      v41 = v46;
      v42 = v19;
      v38 = v53[0];
      v39 = v44;
      if (*(&v54[0] + 1))
      {
        v20 = *(a2 + 3);
        v34 = *(a2 + 2);
        v35 = v20;
        v21 = *(a2 + 5);
        v36 = *(a2 + 4);
        v37 = v21;
        v33 = v54[0];
        v15 = _s15ImagePlayground0aB5StyleV18RepresentationInfoV2eeoiySbAE_AEtFZ_0(&v38, &v33);
        v31[2] = v35;
        v31[3] = v36;
        v31[4] = v37;
        v31[0] = v33;
        v31[1] = v34;
        sub_1D2A50254(v53, v32);
        sub_1D2A50254(v54, v32);
        sub_1D2A50254(&v43, v32);
        sub_1D2A50224(v31);
        v32[2] = v40;
        v32[3] = v41;
        v32[4] = v42;
        v32[0] = v38;
        v32[1] = v39;
        sub_1D2A50224(v32);
        v33 = v16;
        v22 = *(a1 + 3);
        v34 = *(a1 + 2);
        v35 = v22;
        v23 = *(a1 + 5);
        v36 = *(a1 + 4);
        v37 = v23;
        sub_1D2A2E61C(&v33, &qword_1EC704270, &qword_1D2ACABD0);
        return v15 & 1;
      }

      v35 = v45;
      v36 = v46;
      v37 = v47;
      v33 = v43;
      v34 = v44;
      sub_1D2A50254(v53, v32);
      sub_1D2A50254(v54, v32);
      sub_1D2A50254(&v43, v32);
      sub_1D2A50224(&v33);
    }

    else
    {
      if (!*(&v54[0] + 1))
      {
        v43 = *&v53[0];
        v28 = *(a1 + 3);
        v44 = *(a1 + 2);
        v45 = v28;
        v29 = *(a1 + 5);
        v46 = *(a1 + 4);
        v47 = v29;
        sub_1D2A50254(v53, &v38);
        sub_1D2A50254(v54, &v38);
        sub_1D2A2E61C(&v43, &qword_1EC704270, &qword_1D2ACABD0);
        v15 = 1;
        return v15 & 1;
      }

      sub_1D2A50254(v53, &v43);
      sub_1D2A50254(v54, &v43);
    }

    v43 = v16;
    v24 = *(a1 + 3);
    v44 = *(a1 + 2);
    v45 = v24;
    v25 = *(a1 + 5);
    v46 = *(a1 + 4);
    v47 = v25;
    v48 = v17;
    v26 = *(a2 + 3);
    v49 = *(a2 + 2);
    v50 = v26;
    v27 = *(a2 + 5);
    v51 = *(a2 + 4);
    v52 = v27;
    sub_1D2A2E61C(&v43, &qword_1EC7042D8, &unk_1D2ACB0E0);
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t sub_1D2A505A8()
{
  result = qword_1EC704280;
  if (!qword_1EC704280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704280);
  }

  return result;
}

unint64_t sub_1D2A505FC()
{
  result = qword_1EC704288;
  if (!qword_1EC704288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704288);
  }

  return result;
}

unint64_t sub_1D2A50650()
{
  result = qword_1EC704298;
  if (!qword_1EC704298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704298);
  }

  return result;
}

unint64_t sub_1D2A506A8()
{
  result = qword_1EC7042A0;
  if (!qword_1EC7042A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7042A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ImagePlayground0aB5StyleV18RepresentationInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D2A50734(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D2A5077C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D2A50800(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D2A50848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D2A508D0()
{
  result = qword_1EC7042A8;
  if (!qword_1EC7042A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7042A8);
  }

  return result;
}

unint64_t sub_1D2A50928()
{
  result = qword_1EC7042B0;
  if (!qword_1EC7042B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7042B0);
  }

  return result;
}

unint64_t sub_1D2A50980()
{
  result = qword_1EC7042B8;
  if (!qword_1EC7042B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7042B8);
  }

  return result;
}

unint64_t sub_1D2A509D8()
{
  result = qword_1EC7042C0;
  if (!qword_1EC7042C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7042C0);
  }

  return result;
}

unint64_t sub_1D2A50A30()
{
  result = qword_1EC7042C8;
  if (!qword_1EC7042C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7042C8);
  }

  return result;
}

unint64_t sub_1D2A50A88()
{
  result = qword_1EC7042D0;
  if (!qword_1EC7042D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7042D0);
  }

  return result;
}

uint64_t sub_1D2A50ADC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1D2AC7354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL || (sub_1D2AC7354() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50676E696B636162 && a2 == 0xED000074706D6F72 || (sub_1D2AC7354() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C69466E6F6369 && a2 == 0xEC000000656D616ELL || (sub_1D2AC7354() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D2ADEB30 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D2AC7354();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1D2A50CAC()
{
  result = qword_1EE088768;
  if (!qword_1EE088768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE088768);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceSupport.UseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D2A50DA4()
{
  result = qword_1EE088758;
  if (!qword_1EE088758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE088758);
  }

  return result;
}

unint64_t sub_1D2A50DFC()
{
  result = qword_1EE088760;
  if (!qword_1EE088760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE088760);
  }

  return result;
}

uint64_t sub_1D2A50E50(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v24 = *(a1 + 3);
  v28 = *(a1 + 4);
  v32 = *(a1 + 5);
  v16 = *(a1 + 1);
  v20 = *(a1 + 2);
  v8 = sub_1D2A4E4AC();
  if (v9 & 1) != 0 || (v10 = v8, v25 = *(a2 + 3), v29 = *(a2 + 4), v33 = *(a2 + 5), v17 = *(a2 + 1), v21 = *(a2 + 2), v11 = sub_1D2A4E4AC(), (v12))
  {
    v26 = *(a1 + 3);
    v30 = *(a1 + 4);
    v34 = *(a1 + 5);
    v18 = *(a1 + 1);
    v22 = *(a1 + 2);
    sub_1D2A4E4AC();
    if ((v13 & 1) != 0 && ((v27 = *(a2 + 3), v31 = *(a2 + 4), v35 = *(a2 + 5), v19 = *(a2 + 1), v23 = *(a2 + 2), sub_1D2A4E4AC(), (v14 & 1) == 0) || v4 == v6 && v5 == v7 || (sub_1D2AC7354() & 1) == 0))
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else if (v10 < v11)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t CGImagePropertyOrientation.init(uiOrientation:)(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 1;
  }

  else
  {
    return dword_1D2ACB1D0[a1 - 1];
  }
}

uint64_t sub_1D2A50FE8(uint64_t a1)
{
  *(v1 + 40) = a1;
  v2 = *(*(sub_1D2AC6274() - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2A51078, 0, 0);
}

uint64_t sub_1D2A51078()
{
  v1 = *(v0 + 48);
  *(v0 + 96) = dyld_get_active_platform();
  sub_1D2AC6234();
  sub_1D2AC6264();
  v2 = *(MEMORY[0x1E6966BB8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1D2A513AC;
  v4 = *(v0 + 48);

  return MEMORY[0x1EEDC07D0](v4);
}

uint64_t sub_1D2A513AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_1D2A51760;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_1D2A514D4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D2A514D4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 96);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E8, &qword_1D2ACB8C0);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E87D8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1D2A515E0;
  v7 = *(v0 + 40);

  return MEMORY[0x1EEE6DBF8](v7, v3, v3, 0, 0, &unk_1D2ACB208, v4, v3);
}

uint64_t sub_1D2A515E0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D2A516F8, 0, 0);
}

uint64_t sub_1D2A516F8()
{
  v1 = v0[9];

  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D2A51760()
{
  v15 = v0;
  v1 = v0[8];
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1D2AC7084();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1D38A7100](0xD000000000000013, 0x80000001D2ADEBE0);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E0, &qword_1D2ACB1F8);
  sub_1D2AC7164();
  MEMORY[0x1D38A7100](0x676E697275642029, 0xEF70756B6F6F6C20);
  v2 = v0[2];
  v3 = v0[3];
  if (qword_1EC7035A0 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2AC63B4();
  __swift_project_value_buffer(v4, qword_1EC7040C0);

  v5 = sub_1D2AC6394();
  v6 = sub_1D2AC6EA4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1D2ABAFCC(v2, v3, v14);
    _os_log_impl(&dword_1D2A17000, v5, v6, "GP extension could not be loaded: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1D38A8460](v8, -1, -1);
    MEMORY[0x1D38A8460](v7, -1, -1);
  }

  v9 = v0[5];
  v10 = sub_1D2AC62D4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D2A519E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 + 84) = a4;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042F0, &qword_1D2ACB210) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040) - 8) + 64) + 15;
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2A51AC0, 0, 0);
}

uint64_t sub_1D2A51AC0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 84);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = sub_1D2AC6DD4();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v2;

  sub_1D2A529B4(v1, &unk_1D2ACB220, v7);
  sub_1D2A2E61C(v1, &qword_1EC7044B0, &qword_1D2ACA040);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = 0x4024000000000000;
  sub_1D2A529B4(v1, &unk_1D2ACB230, v8);
  sub_1D2A2E61C(v1, &qword_1EC7044B0, &qword_1D2ACA040);
  v9 = *(MEMORY[0x1E69E8580] + 4);
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042F8, &qword_1D2ACB238);
  *v10 = v0;
  v10[1] = sub_1D2A51CBC;
  v12 = *(v0 + 56);
  v13 = *(v0 + 40);

  return MEMORY[0x1EEE6D8A0](v12, 0, 0, v11);
}

uint64_t sub_1D2A51CBC()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D2A51DB8, 0, 0);
}

uint64_t sub_1D2A51DB8()
{
  v24 = v0;
  v1 = *(v0 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E8, &qword_1D2ACB8C0);
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  v5 = *(v0 + 32);
  if (v4 == 1)
  {
    v6 = sub_1D2AC62D4();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    if (v3(v1, 1, v2) != 1)
    {
      sub_1D2A2E61C(*(v0 + 56), &qword_1EC7042F0, &qword_1D2ACB210);
    }
  }

  else
  {
    sub_1D2A5369C(v1, *(v0 + 32));
  }

  v7 = *(v0 + 32);
  v8 = sub_1D2AC62D4();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    v9 = *(v0 + 84);
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    sub_1D2AC7084();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x1D38A7100](0xD000000000000015, 0x80000001D2ADEC00);
    *(v0 + 80) = v9;
    v10 = sub_1D2AC7324();
    MEMORY[0x1D38A7100](v10);

    MEMORY[0x1D38A7100](0xD000000000000026, 0x80000001D2ADEC20);
    sub_1D2AC6DF4();
    MEMORY[0x1D38A7100](0x73646E6F63657320, 0xE800000000000000);
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D2AC63B4();
    __swift_project_value_buffer(v13, qword_1EC7040C0);

    v14 = sub_1D2AC6394();
    v15 = sub_1D2AC6EA4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1D2ABAFCC(v12, v11, v23);
      _os_log_impl(&dword_1D2A17000, v14, v15, "GP extension could not be loaded: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1D38A8460](v17, -1, -1);
      MEMORY[0x1D38A8460](v16, -1, -1);
    }
  }

  v19 = *(v0 + 56);
  v18 = *(v0 + 64);
  v20 = **(v0 + 40);
  sub_1D2AC6D84();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D2A5215C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 48) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D2A52180, 0, 0);
}

uint64_t sub_1D2A52180()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E8, &qword_1D2ACB8C0);
  *v5 = v0;
  v5[1] = sub_1D2A52290;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v7, 0, 0, 0xD000000000000015, 0x80000001D2ADEC50, sub_1D2A5387C, v3, v6);
}

uint64_t sub_1D2A52290()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D2A523A0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E8, &qword_1D2ACB8C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v34 - v8;
  v10 = sub_1D2AC62D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v34 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  v21 = sub_1D2AC6254();
  if (*(v21 + 16))
  {
    v22 = *(v11 + 16);
    v22(v15, v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

    v34 = a2;
    v23 = *(v11 + 32);
    v23(v18, v15, v10);
    v23(v20, v18, v10);
    v22(v9, v20, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704310, &qword_1D2ACB258);
    sub_1D2AC6D64();
    return (*(v11 + 8))(v20, v10);
  }

  else
  {

    if (sub_1D2AC6DE4())
    {
      (*(v11 + 56))(v9, 1, 1, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704310, &qword_1D2ACB258);
      return sub_1D2AC6D64();
    }

    else
    {
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1D2AC7084();
      MEMORY[0x1D38A7100](0xD000000000000015, 0x80000001D2ADEC00);
      v35 = a3;
      v25 = sub_1D2AC7324();
      MEMORY[0x1D38A7100](v25);

      MEMORY[0x1D38A7100](0xD00000000000002FLL, 0x80000001D2ADEC70);
      v27 = v36;
      v26 = v37;
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v28 = sub_1D2AC63B4();
      __swift_project_value_buffer(v28, qword_1EC7040C0);

      v29 = sub_1D2AC6394();
      v30 = sub_1D2AC6EA4();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v36 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_1D2ABAFCC(v27, v26, &v36);
        _os_log_impl(&dword_1D2A17000, v29, v30, "GP extension could not be loaded: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x1D38A8460](v32, -1, -1);
        MEMORY[0x1D38A8460](v31, -1, -1);
      }

      MEMORY[0x1EEE9AC00](v33);
      *(&v34 - 4) = a1;
      *(&v34 - 3) = a2;
      *(&v34 - 4) = a3;
      return sub_1D2AC6074();
    }
  }
}

uint64_t (*sub_1D2A52858(uint64_t a1, uint64_t a2, int a3))()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704310, &qword_1D2ACB258);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a2, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  (*(v7 + 32))(v12 + v11, v10, v6);
  *(v12 + ((v8 + v11 + 3) & 0xFFFFFFFFFFFFFFFCLL)) = a3;

  return sub_1D2A538C0;
}

uint64_t sub_1D2A529B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v22 - v10;
  sub_1D2A53754(a1, v22 - v10);
  v12 = sub_1D2AC6DD4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D2A2E61C(v11, &qword_1EC7044B0, &qword_1D2ACA040);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_1D2AC6D44();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D2AC6DC4();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E8, &qword_1D2ACB8C0);
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_1D2A52BCC(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  v3 = sub_1D2AC7144();
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2A52C90, 0, 0);
}

uint64_t sub_1D2A52C90()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = sub_1D2AC74B4();
  v5 = v4;
  sub_1D2AC73C4();
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1D2A52D6C;
  v7 = v0[6];

  return sub_1D2A52FAC(v3, v5, 0, 0, 1);
}

uint64_t sub_1D2A52D6C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = v2[6];
  v6 = v2[5];
  v7 = v2[4];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_1D2A5395C;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1D2A52F04;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D2A52F04()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = sub_1D2AC62D4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2A52FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D2AC7134();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D2A530AC, 0, 0);
}

uint64_t sub_1D2A530AC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1D2AC7144();
  v7 = sub_1D2A5370C(&qword_1EC704300, MEMORY[0x1E69E8820]);
  sub_1D2AC73A4();
  sub_1D2A5370C(&qword_1EC704308, MEMORY[0x1E69E87E8]);
  sub_1D2AC7154();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1D2A5323C;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1D2A5323C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2A533F8, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1D2A533F8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1D2A53464(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D2A47C5C;

  return sub_1D2A519E4(a1, a2, v6, v7);
}

uint64_t sub_1D2A5351C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2A47C5C;

  return sub_1D2A5215C(a1, v4, v5, v6, v7);
}

uint64_t sub_1D2A535E0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2A2E260;

  return sub_1D2A52BCC(a1, v6);
}

uint64_t sub_1D2A5369C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E8, &qword_1D2ACB8C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A5370C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2A53754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A537C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D2A2E260;

  return sub_1D2A4455C(a1, v5);
}

uint64_t sub_1D2A5388C()
{
  sub_1D2AC6254();
}

uint64_t sub_1D2A538C0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704310, &qword_1D2ACB258) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 3) & 0xFFFFFFFFFFFFFFFCLL));

  return sub_1D2A523A0(v3, v0 + v2, v4);
}

uint64_t sub_1D2A53960@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7036F0, &qword_1D2ACB8A0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - v6;
  *v7 = sub_1D2AC66E4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704560, &qword_1D2ACB8A8);
  sub_1D2A53E10(v1, &v7[*(v8 + 44)]);
  v9 = sub_1D2AC68B4();
  v10 = sub_1D2AC65E4();
  v11 = &v7[*(v4 + 44)];
  *v11 = v10;
  v11[8] = v9;
  v12 = type metadata accessor for GenerativePlaygroundRemoteView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1D2A60E30(v1, &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativePlaygroundRemoteView);
  sub_1D2AC6DA4();
  v15 = sub_1D2AC6D94();
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_1D2A60E98(&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for GenerativePlaygroundRemoteView);
  v19 = sub_1D2AC6DD4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v34 - v22;
  sub_1D2AC6DB4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v37 = sub_1D2AC65B4();
    v38 = &v34;
    v36 = *(v37 - 8);
    v24 = *(v36 + 64);
    MEMORY[0x1EEE9AC00](v37);
    v34 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = a1;
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1D2AC7084();

    v40 = 0xD000000000000031;
    v41 = 0x80000001D2ADF030;
    v39 = 54;
    v26 = sub_1D2AC7324();
    MEMORY[0x1D38A7100](v26);

    MEMORY[0x1EEE9AC00](v27);
    (*(v20 + 16))(&v34 - v22, &v34 - v22, v19);
    v28 = v34;
    sub_1D2AC65A4();
    (*(v20 + 8))(v23, v19);
    v29 = v35;
    sub_1D2A60FDC(v7, v35);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7036F8, &qword_1D2AC9080);
    return (*(v36 + 32))(v29 + *(v30 + 36), v28, v37);
  }

  else
  {
    v32 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC703700, &qword_1D2AC9088) + 36));
    v33 = sub_1D2AC6574();
    (*(v20 + 32))(&v32[*(v33 + 20)], &v34 - v22, v19);
    *v32 = &unk_1D2ACB8B8;
    *(v32 + 1) = v17;
    return sub_1D2A60FDC(v7, a1);
  }
}

uint64_t sub_1D2A53E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704570, &qword_1D2ACB8C8);
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v6 = v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704578, &qword_1D2ACB8D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v50 = v45 - v9;
  v10 = type metadata accessor for GenerativePlaygroundRemoteView(0);
  v48 = *(v10 - 1);
  v11 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v49 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704580, &qword_1D2ACB8D8);
  v12 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v14 = (v45 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043C0, &qword_1D2ACA0B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v45 - v17;
  if (*(a1 + v10[9]) != 1 || (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260), sub_1D2AC6A24(), v19 = type metadata accessor for _AppExtensionHostView.Configuration(0), v20 = v7, v21 = (*(*(v19 - 8) + 48))(v18, 1, v19), sub_1D2A2E61C(v18, &unk_1EC7043C0, &qword_1D2ACA0B0), v21 == 1))
  {
    sub_1D2AC64F4();
    v22 = v53;
    (*(v3 + 16))(v50, v6, v53);
    swift_storeEnumTagMultiPayload();
    sub_1D2A6104C();
    sub_1D2A2DB64(&qword_1EC704590, &qword_1EC704570, &qword_1D2ACB8C8);
    sub_1D2AC6714();
    return (*(v3 + 8))(v6, v22);
  }

  else
  {
    v23 = type metadata accessor for _AppExtensionHostView(0);
    v47 = v20;
    v24 = v23;
    v25 = v14 + *(v23 + 20);
    v26 = a1;
    sub_1D2AC6A44();
    v27 = *(a1 + v10[5]);
    v28 = v10[8];
    v29 = (a1 + v10[7]);
    v30 = *v29;
    v31 = v29[1];
    v32 = a1 + v28;
    v34 = *(a1 + v28);
    v33 = *(a1 + v28 + 8);
    v46 = v33;
    v35 = *(v32 + 16);
    v45[3] = v35;
    type metadata accessor for _AppExtensionHostView.MutableState();
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    *v14 = v36;
    *(v14 + v24[6]) = v27;
    v37 = (v14 + v24[7]);
    *v37 = v30;
    v37[1] = v31;
    v38 = v14 + v24[8];
    *v38 = v34;
    *(v38 + 1) = v33;
    v38[16] = v35;
    v39 = v49;
    sub_1D2A60E30(v26, v49, type metadata accessor for GenerativePlaygroundRemoteView);
    v40 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v41 = swift_allocObject();
    sub_1D2A60E98(v39, v41 + v40, type metadata accessor for GenerativePlaygroundRemoteView);
    v42 = v50;
    v43 = (v14 + *(v51 + 36));
    *v43 = 0;
    v43[1] = 0;
    v43[2] = sub_1D2A61108;
    v43[3] = v41;
    sub_1D2A2E5B4(v14, v42, &qword_1EC704580, &qword_1D2ACB8D8);
    swift_storeEnumTagMultiPayload();

    sub_1D2A2E6B8(v30);
    sub_1D2A46754(v34, v46);
    sub_1D2A6104C();
    sub_1D2A2DB64(&qword_1EC704590, &qword_1EC704570, &qword_1D2ACB8C8);
    sub_1D2AC6714();
    return sub_1D2A2E61C(v14, &qword_1EC704580, &qword_1D2ACB8D8);
  }
}

uint64_t sub_1D2A5436C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043C0, &qword_1D2ACA0B0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *(a1 + *(type metadata accessor for GenerativePlaygroundRemoteView(0) + 20));
  sub_1D2A5822C();
  v10 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_1D2A2E5B4(v8, v6, &unk_1EC7043C0, &qword_1D2ACA0B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260);
  sub_1D2AC6A34();
  return sub_1D2A2E61C(v8, &unk_1EC7043C0, &qword_1D2ACA0B0);
}

uint64_t sub_1D2A544B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043C0, &qword_1D2ACA0B0) - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7042E8, &qword_1D2ACB8C0) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v3[6] = v6;
  v7 = sub_1D2AC62D4();
  v3[7] = v7;
  v8 = *(v7 - 8);
  v3[8] = v8;
  v9 = *(v8 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = sub_1D2AC6DA4();
  v3[12] = sub_1D2AC6D94();
  v10 = swift_task_alloc();
  v3[13] = v10;
  *v10 = v3;
  v10[1] = sub_1D2A54658;

  return sub_1D2A50FE8(v6);
}

uint64_t sub_1D2A54658()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v7 = *v0;

  v5 = sub_1D2AC6D44();

  return MEMORY[0x1EEE6DFA0](sub_1D2A54794, v5, v4);
}

uint64_t sub_1D2A54794()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[5];
    v6 = v0[4];
    v7 = v0[2];
    sub_1D2A2E61C(v0[6], &qword_1EC7042E8, &qword_1D2ACB8C0);
    v8 = type metadata accessor for _AppExtensionHostView.Configuration(0);
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    sub_1D2A2E5B4(v5, v6, &unk_1EC7043C0, &qword_1D2ACA0B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260);
    sub_1D2AC6A34();
    sub_1D2A2E61C(v5, &unk_1EC7043C0, &qword_1D2ACA0B0);
    goto LABEL_15;
  }

  v9 = 0xD000000000000014;
  v10 = v0[9];
  v11 = v0[10];
  v12 = v0[7];
  v13 = v0[8];
  v14 = v0[2];
  v15 = *(v13 + 32);
  v15(v11, v0[6], v12);
  (*(v13 + 16))(v10, v11, v12);
  v16 = *(v14 + *(type metadata accessor for GenerativePlaygroundRemoteView(0) + 24));
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v19 = "editorWithMultiSelectionPicker";
      v9 = 0xD00000000000001FLL;
    }

    else
    {
      if (v16 == 3)
      {
        v17 = "multiSelectionPicker";
LABEL_12:
        v19 = v17 - 32;
        goto LABEL_13;
      }

      v19 = "multiSelectionPicker";
      v9 = 0xD000000000000015;
    }

LABEL_13:
    v18 = v19 | 0x8000000000000000;
    goto LABEL_14;
  }

  if (v16)
  {
    v9 = 0xD00000000000001ELL;
    v17 = "editorWithMultiSelectionPicker";
    goto LABEL_12;
  }

  v18 = 0xE600000000000000;
  v9 = 0x726F74696465;
LABEL_14:
  v34 = v0[10];
  v20 = v0[7];
  v21 = v0[8];
  v22 = v0[5];
  v23 = v0[3];
  v15(v23, v0[9], v20);
  v24 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  v25 = (v23 + *(v24 + 20));
  *v25 = v9;
  v25[1] = v18;
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  sub_1D2A2E5B4(v23, v22, &unk_1EC7043C0, &qword_1D2ACA0B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260);
  sub_1D2AC6A34();
  sub_1D2A2E61C(v23, &unk_1EC7043C0, &qword_1D2ACA0B0);
  (*(v21 + 8))(v34, v20);
LABEL_15:
  v27 = v0[9];
  v26 = v0[10];
  v29 = v0[5];
  v28 = v0[6];
  v31 = v0[3];
  v30 = v0[4];

  v32 = v0[1];

  return v32();
}

void *sub_1D2A54AF0()
{
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_1D2A54B98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1D2A54C50(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
    sub_1D2AC6084();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D2A20764(0, &qword_1EC704508, 0x1E6966D50);
  v5 = v4;
  v6 = a1;
  v7 = sub_1D2AC6F94();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

uint64_t sub_1D2A54DE0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704488, &qword_1D2ACB720);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_configuration;
  swift_beginAccess();
  sub_1D2A60974(a1, v1 + v8);
  swift_endAccess();
  swift_getKeyPath();
  v13 = v1;
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  v9 = *(v1 + 16);
  if (v9)
  {
    sub_1D2A2E5B4(v2 + v8, v7, &qword_1EC704488, &qword_1D2ACB720);
    v10 = v9;
    sub_1D2AC6F54();
  }

  return sub_1D2A2E61C(a1, &qword_1EC704488, &qword_1D2ACB720);
}

uint64_t sub_1D2A54F54()
{
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  if (*(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection))
  {
    if (*(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D2AC6084();
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose) = 0;
    }
  }

  return result;
}

void *sub_1D2A550A8()
{
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  v1 = *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  v2 = v1;
  return v1;
}

void sub_1D2A55158(void *a1)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection;
  v4 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
    sub_1D2AC6084();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D2A20764(0, &qword_1EC704500, 0x1E696B0B8);
  v5 = v4;
  v6 = a1;
  v7 = sub_1D2AC6F94();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v10 = v6;

  sub_1D2A54F54();
}

uint64_t sub_1D2A5531C()
{
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  return *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose);
}

uint64_t sub_1D2A553C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  *a2 = *(v3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose);
  return result;
}

uint64_t sub_1D2A55474(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A5558C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D2A555C8()
{
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  result = *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state);
  v2 = *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state + 8);
  return result;
}

uint64_t sub_1D2A55678@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  v5 = *(v3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D2A55734(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state;
  v4 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state);
  if (*(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state + 8) != 1)
  {
    if ((a2 & 1) != 0 || v4 != result)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!v4)
  {
    if ((a2 & 1) == 0 || result)
    {
      goto LABEL_12;
    }

LABEL_11:
    *v3 = result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if ((a2 & 1) != 0 && result)
  {
    goto LABEL_11;
  }

LABEL_12:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6084();
}

uint64_t sub_1D2A5588C(void (*a1)(void), uint64_t a2)
{
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  v5 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v5)
  {
    v14 = a1;
    v15 = a2;
    *&v11 = MEMORY[0x1E69E9820];
    *(&v11 + 1) = 1107296256;
    v12 = sub_1D2A44320;
    v13 = &block_descriptor_402;
    v6 = _Block_copy(&v11);
    v7 = v5;

    v8 = [v7 remoteObjectProxyWithErrorHandler_];
    _Block_release(v6);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v16, v17);
    sub_1D2A206F8(v17, &v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    return v16;
  }

  else
  {
    sub_1D2A2DF64();
    v10 = swift_allocError();
    a1(v10);

    return 0;
  }
}

uint64_t sub_1D2A55A84(void *a1)
{
  v2 = v1;
  v92 = *MEMORY[0x1E69E9840];
  v4 = sub_1D2AC6B04();
  v82 = *(v4 - 8);
  v5 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v80 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1D2AC6B24();
  v79 = *(v81 - 8);
  v7 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D2AC6B44();
  v9 = *(v77 - 8);
  v10 = *(v9 + 8);
  v11 = MEMORY[0x1EEE9AC00](v77);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v71 - v14;
  if (v1[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose])
  {
    KeyPath = swift_getKeyPath();
    v74 = v9;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v71 - 2) = v1;
    *(&v71 - 8) = 0;
    aBlock = v1;
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
    sub_1D2AC6084();
    v83 = 0;

    p_ivars = (&ImagePlaygroundViewController + 48);
    v9 = v74;
  }

  else
  {
    v83 = 0;
    v1[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose] = 0;
    p_ivars = &ImagePlaygroundViewController.ivars;
  }

  v17 = a1;
  sub_1D2A54C50(a1);
  aBlock = 0;
  v18 = [v17 makeXPCConnectionWithError_];
  v19 = aBlock;
  v76 = v4;
  if (v18)
  {
    v74 = v13;
    isa = GPServiceProtocolInterface()().super.isa;
    [v18 setRemoteObjectInterface_];

    [v18 setExportedObject_];
    v21 = GPHostProtocolInterface()().super.isa;
    [v18 setExportedInterface_];

    v90 = sub_1D2A567E0;
    v91 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_1D2A61284;
    v89 = &block_descriptor_378;
    v22 = _Block_copy(&aBlock);
    [v18 setInterruptionHandler_];
    _Block_release(v22);
    v90 = sub_1D2A567EC;
    v91 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_1D2A61284;
    v89 = &block_descriptor_381;
    v23 = _Block_copy(&aBlock);
    [v18 setInvalidationHandler_];
    _Block_release(v23);
    [v18 resume];
    v90 = sub_1D2A568E8;
    v91 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_1D2A44320;
    v89 = &block_descriptor_384;
    v24 = _Block_copy(&aBlock);
    v25 = [v18 remoteObjectProxyWithErrorHandler_];
    _Block_release(v24);
    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044F8, &qword_1D2ACB818);
    swift_dynamicCast();
    v26 = v85;
    v73 = v18;
    sub_1D2A55158(v18);
    [v26 willBeginServiceConfiguration];
    v27 = &v2[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_responsibleAuditToken];
    if ((v2[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_responsibleAuditToken + 32] & 1) == 0)
    {
      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      v30 = *&v2[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_responsibleAuditToken + 8];
      aBlock = *v27;
      v87 = v30;
      v88 = v29;
      v89 = v28;
      v31 = sub_1D2A569D0(&aBlock, &v90);
      v33 = v32;
      v34 = sub_1D2AC5F14();
      [v26 setResponsibleAuditToken_];

      sub_1D2A47944(v31, v33);
    }

    swift_getKeyPath();
    v35 = p_ivars[475];
    aBlock = v2;
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
    sub_1D2AC6094();

    v36 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v37 = *&v2[v36];
    v38 = *(v37 + 16);
    if (v38)
    {
      v72 = v26;
      v39 = v9;

      v40 = (v37 + 40);
      do
      {
        v42 = *(v40 - 1);
        v41 = *v40;

        v42(v43);

        v40 += 2;
        --v38;
      }

      while (v38);

      v9 = v39;
      v26 = v72;
    }

    v44 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v44);
    *(&v71 - 2) = v2;
    *(&v71 - 1) = MEMORY[0x1E69E7CC0];
    aBlock = v2;
    sub_1D2AC6084();

    [v26 didFinishServiceConfiguration];

    swift_unknownObjectRelease();
    v13 = v74;
    p_ivars = (&ImagePlaygroundViewController + 48);
  }

  else
  {
    v45 = v19;
    v46 = sub_1D2AC5E64();

    swift_willThrow();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v47 = sub_1D2AC63B4();
    __swift_project_value_buffer(v47, qword_1EC7040C0);
    v48 = v46;
    v49 = sub_1D2AC6394();
    v50 = sub_1D2AC6E94();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      v53 = v46;
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v54;
      *v52 = v54;
      _os_log_impl(&dword_1D2A17000, v49, v50, "Could not make XPC connection: %@", v51, 0xCu);
      sub_1D2A2E61C(v52, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v52, -1, -1);
      MEMORY[0x1D38A8460](v51, -1, -1);
    }

    if (*&v2[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection])
    {
      v55 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v55);
      *(&v71 - 2) = v2;
      *(&v71 - 1) = 0;
      v56 = p_ivars[475];
      aBlock = v2;
      sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
      sub_1D2AC6084();
    }

    else
    {
      sub_1D2A54F54();
    }
  }

  swift_getKeyPath();
  v57 = p_ivars[475];
  aBlock = v2;
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  v59 = &v2[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state];
  v60 = *&v2[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state];
  if (v2[OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state + 8])
  {
    if (v60)
    {
      *v59 = 1;
      v59[8] = 1;
    }

    else
    {
      v69 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v69);
      *(&v71 - 4) = v2;
      *(&v71 - 3) = 1;
      *(&v71 - 16) = 1;
      aBlock = v2;
      sub_1D2AC6084();
    }
  }

  else
  {
    sub_1D2A20764(0, &qword_1EC7044B8, 0x1E69E9610);
    v61 = sub_1D2AC6ED4();
    sub_1D2AC6B34();
    v62 = v75;
    sub_1D2AC6B54();
    v83 = *(v9 + 1);
    v63 = v77;
    v83(v13, v77);
    v64 = swift_allocObject();
    *(v64 + 16) = v2;
    *(v64 + 24) = v60;
    v90 = sub_1D2A60764;
    v91 = v64;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_1D2A61284;
    v89 = &block_descriptor_374;
    v65 = _Block_copy(&aBlock);

    v66 = v78;
    sub_1D2AC6B14();
    v84 = MEMORY[0x1E69E7CC0];
    sub_1D2A5FD78(&qword_1EC7044C0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044C8, &qword_1D2ACB770);
    sub_1D2A2DB64(&unk_1EC7044D0, &qword_1EC7044C8, &qword_1D2ACB770);
    v67 = v80;
    v68 = v76;
    sub_1D2AC7004();
    MEMORY[0x1D38A7300](v62, v66, v67, v65);
    _Block_release(v65);

    (*(v82 + 8))(v67, v68);
    (*(v79 + 8))(v66, v81);
    v83(v62, v63);
  }

  v70 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D2A567F8(const char *a1)
{
  if (qword_1EC7035A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2AC63B4();
  __swift_project_value_buffer(v2, qword_1EC7040C0);
  oslog = sub_1D2AC6394();
  v3 = sub_1D2AC6E94();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2A17000, oslog, v3, a1, v4, 2u);
    MEMORY[0x1D38A8460](v4, -1, -1);
  }
}

void sub_1D2A568E8()
{
  if (qword_1EC7035A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D2AC63B4();
  __swift_project_value_buffer(v0, qword_1EC7040C0);
  oslog = sub_1D2AC6394();
  v1 = sub_1D2AC6E94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1D2A17000, oslog, v1, "Error during connection to remote ", v2, 2u);
    MEMORY[0x1D38A8460](v2, -1, -1);
  }
}

uint64_t sub_1D2A569D0(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1D2A6076C(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1D2A608A8(v3, v4);
    }

    else
    {
      v6 = sub_1D2A60824(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t sub_1D2A56A8C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  if ((*(a1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state + 8) & 1) == 0 && *(a1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state) == a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A56BE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1D2A56C24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = v1;
    v4 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_allowedGenerationStyles);
    *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_allowedGenerationStyles) = a1;

    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = sub_1D2A571CC;
    v7[4] = 0;
    v7[5] = sub_1D2A2DFD4;
    v7[6] = v5;
    swift_getKeyPath();
    *&aBlock = v2;
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
    swift_bridgeObjectRetain_n();

    sub_1D2AC6094();

    v8 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v8)
    {
      v32 = sub_1D2A571CC;
      v33 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v30 = sub_1D2A44320;
      v31 = &block_descriptor_363;
      v9 = _Block_copy(&aBlock);
      v10 = v8;

      v11 = [v10 remoteObjectProxyWithErrorHandler_];
      _Block_release(v9);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(&v34, v35);
      sub_1D2A206F8(v35, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v12 = v34;
      if (v34)
      {
        sub_1D2A571EC(v34, a1);

        return;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v13 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v14 = sub_1D2AC63B4();
      __swift_project_value_buffer(v14, qword_1EC7040C0);
      v15 = v13;
      v16 = sub_1D2AC6394();
      v17 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        v20 = v13;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v21;
        *v19 = v21;
        _os_log_impl(&dword_1D2A17000, v16, v17, "Could not send allowed generation styles to remote view: %@. May not be an error if the connection is not established yet, will retry.", v18, 0xCu);
        sub_1D2A2E61C(v19, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v19, -1, -1);
        MEMORY[0x1D38A8460](v18, -1, -1);
      }
    }

    v22 = swift_allocObject();
    *(v22 + 16) = sub_1D2A2E6B4;
    *(v22 + 24) = v7;
    swift_getKeyPath();
    *&aBlock = v2;

    sub_1D2AC6094();

    *&aBlock = v2;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v23 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v24 = *(v2 + v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v23) = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1D2A4486C(0, v24[2] + 1, 1, v24);
      *(v2 + v23) = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_1D2A4486C((v26 > 1), v27 + 1, 1, v24);
    }

    v24[2] = v27 + 1;
    v28 = &v24[2 * v27];
    v28[4] = sub_1D2A2E724;
    v28[5] = v22;
    *(v2 + v23) = v24;
    swift_endAccess();
    *&aBlock = v2;
    swift_getKeyPath();
    sub_1D2AC60A4();
  }
}

void sub_1D2A571EC(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a2 + 16);
  if (v3)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1D2AC7104();
    v5 = (a2 + 64);
    do
    {
      v6 = *(v5 - 3);
      v19 = *(v5 - 4);
      v20 = v3;
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = v5[1];
      v12 = v5[2];
      v11 = v5[3];
      v17 = v5[5];
      v18 = v5[4];
      v13 = v5[6];
      v14 = v5[7];

      sub_1D2A5FAF0(v7, v8);
      sub_1D2AC6BF4();

      sub_1D2A2D7CC(v7, v8);
      sub_1D2AC70E4();
      v15 = *(v22 + 16);
      sub_1D2AC7114();
      sub_1D2AC7124();
      sub_1D2AC70F4();
      v5 += 12;
      v3 = v20 - 1;
    }

    while (v20 != 1);
    v2 = a1;
  }

  sub_1D2A20764(0, &qword_1EC704410, 0x1E696AEC0);
  v21 = sub_1D2AC6D24();

  [v2 setAllowedGenerationStyles_];
}

void sub_1D2A573B8(void *a1, uint64_t (*a2)(void), const char *a3)
{
  if (qword_1EC7035A0 != -1)
  {
    swift_once();
  }

  v6 = sub_1D2AC63B4();
  __swift_project_value_buffer(v6, qword_1EC7040C0);
  v7 = a1;
  oslog = sub_1D2AC6394();
  v8 = a2();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1D2A17000, oslog, v8, a3, v9, 0xCu);
    sub_1D2A2E61C(v10, &unk_1EC704400, &unk_1D2ADA9A0);
    MEMORY[0x1D38A8460](v10, -1, -1);
    MEMORY[0x1D38A8460](v9, -1, -1);
  }
}

void sub_1D2A57524(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = sub_1D2AC6BF4();
  [a1 setSelectedGenerationStyle_];
}

void sub_1D2A5766C(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = a1;
    v3 = sub_1D2AC5F14();
    a1 = v4;
  }

  v5 = v3;
  [a1 setRecipeData_];
}

void sub_1D2A57700(void *a1)
{
  sub_1D2A20764(0, &qword_1EC7037F8, 0x1E696AD98);
  v2 = sub_1D2AC6F84();
  [a1 setPreviewAspectRatio_];
}

void sub_1D2A577E0(void *a1, unsigned __int8 a2, SEL *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [a1 *a3];
}

void sub_1D2A578F8(void *a1, uint64_t a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  sub_1D2A20764(0, a3, a4);
  v7 = sub_1D2AC6D24();
  [a1 *a5];
}

void sub_1D2A579A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704488, &qword_1D2ACB720);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v21 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_1D2AC6BF4();
  v8 = [v6 integerForKey_];

  if (v8 <= 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  if (*(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v21 - 2) = v1;
    *(&v21 - 1) = 0;
    v22 = v1;
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
    sub_1D2AC6084();
  }

  else
  {
    sub_1D2A54F54();
  }

  swift_getKeyPath();
  v22 = v1;
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  if (*(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose))
  {
    if (*(v1 + 16))
    {
      v11 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v11);
      *(&v21 - 2) = v1;
      *(&v21 - 1) = 0;
      v22 = v1;
      sub_1D2AC6084();
    }

    return;
  }

  swift_getKeyPath();
  v22 = v1;
  sub_1D2AC6094();

  v12 = (v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state);
  if (*(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state + 8))
  {
    v13 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v13);
    *(&v21 - 4) = v1;
    *(&v21 - 3) = 0;
    *(&v21 - 16) = 0;
    v22 = v1;
    goto LABEL_12;
  }

  v14 = *v12;
  if (v9 >= *v12)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return;
    }

    if (v14 == v19)
    {
      *(v12 + 8) = 0;
      goto LABEL_13;
    }

    v20 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v20);
    *(&v21 - 4) = v1;
    *(&v21 - 3) = v19;
    *(&v21 - 16) = 0;
    v22 = v1;
LABEL_12:
    sub_1D2AC6084();

LABEL_13:
    sub_1D2A58460(0);
    return;
  }

  v15 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v15);
  *(&v21 - 4) = v1;
  *(&v21 - 3) = 0;
  *(&v21 - 16) = 1;
  v22 = v1;
  sub_1D2AC6084();

  swift_getKeyPath();
  v22 = v1;
  sub_1D2AC6094();

  v16 = *(v1 + 16);
  if (v16)
  {
    v17 = sub_1D2AC6F34();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    v18 = v16;
    sub_1D2AC6F54();
  }
}

void sub_1D2A57EF0()
{
  swift_getKeyPath();
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  v1 = *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v1)
  {
    v18 = sub_1D2A5820C;
    v19 = 0;
    *&v15 = MEMORY[0x1E69E9820];
    *(&v15 + 1) = 1107296256;
    v16 = sub_1D2A44320;
    v17 = &block_descriptor_348;
    v2 = _Block_copy(&v15);
    v3 = v1;

    v4 = [v3 remoteObjectProxyWithErrorHandler_];
    _Block_release(v2);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v20, v21);
    sub_1D2A206F8(v21, &v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v5 = v20;
    if (v20)
    {
      [v20 startUpscaling];
    }
  }

  else
  {
    sub_1D2A2DF64();
    v6 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v7 = sub_1D2AC63B4();
    __swift_project_value_buffer(v7, qword_1EC7040C0);
    v8 = v6;
    v9 = sub_1D2AC6394();
    v10 = sub_1D2AC6E94();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v6;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_1D2A17000, v9, v10, "Could not send message to remote view: %@", v11, 0xCu);
      sub_1D2A2E61C(v12, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v12, -1, -1);
      MEMORY[0x1D38A8460](v11, -1, -1);
    }
  }
}

void sub_1D2A5822C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704488, &qword_1D2ACB720);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  if (*(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose) == 1)
  {
    *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v9 - 2) = v0;
    *(&v9 - 8) = 1;
    v10 = v0;
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
    sub_1D2AC6084();
  }

  swift_getKeyPath();
  v10 = v0;
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  v6 = *(v0 + 16);
  if (v6)
  {
    v7 = sub_1D2AC6F34();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = v6;
    sub_1D2AC6F54();
  }
}

uint64_t sub_1D2A58460(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704488, &qword_1D2ACB720);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v289 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v289 - v9;
  v11 = sub_1D2AC6F34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v295 = &v289 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state;
    if (*(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state + 8) == 1 && *v15)
    {
      *v15 = 1;
      *(v15 + 8) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v289 - 4) = v2;
      *(&v289 - 3) = 1;
      *(&v289 - 16) = 1;
      *&v324[0] = v2;
      sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
      sub_1D2AC6084();
    }
  }

  v17 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_configuration;
  swift_beginAccess();
  sub_1D2A2E5B4(v2 + v17, v10, &qword_1EC704488, &qword_1D2ACB720);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1D2A2E61C(v10, &qword_1EC704488, &qword_1D2ACB720);
  }

  v19 = v295;
  (*(v12 + 32))(v295, v10, v11);
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager___observationRegistrar;
  *&v324[0] = v2;
  v297 = sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  v298 = v20;
  sub_1D2AC6094();

  v21 = *(v2 + 16);
  if (v21)
  {
    (*(v12 + 16))(v8, v19, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
    v22 = v21;
    sub_1D2AC6F54();
  }

  if (*(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_allowedGenerationStyles))
  {
    v23 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_allowedGenerationStyles);

    sub_1D2A56C24(v24);
  }

  v25 = (v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
  v26 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 48);
  v320 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 32);
  v321 = v26;
  v27 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 80);
  v322 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 64);
  v323 = v27;
  v28 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 16);
  v319[0] = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
  v319[1] = v28;
  v324[0] = v319[0];
  v324[1] = v28;
  v324[2] = v320;
  v324[3] = v26;
  v324[4] = v322;
  v324[5] = v27;
  v296 = v12;
  v294 = v11;
  if (*(&v319[0] + 1))
  {
    v29 = v25[3];
    v308 = v25[2];
    v309 = v29;
    v30 = v25[5];
    v310 = v25[4];
    v311 = v30;
    v31 = v25[1];
    v307[0] = *v25;
    v307[1] = v31;
    v312[2] = v308;
    v312[3] = v29;
    v312[4] = v310;
    v312[5] = v30;
    v312[0] = v307[0];
    v312[1] = v31;
    sub_1D2A2D244(v307, &v302);
    sub_1D2A2D244(v324, &v302);
    sub_1D2A2E61C(v312, &qword_1EC7044F0, &unk_1D2AC9D50);
    v32 = v25[3];
    v315 = v25[2];
    v316 = v32;
    v33 = v25[5];
    v317 = v25[4];
    v318 = v33;
    v34 = v25[1];
    v313 = *v25;
    v314 = v34;
    v35 = *(&v313 + 1);
    if (!*(&v313 + 1))
    {
      v48 = v319;
LABEL_29:
      sub_1D2A2E61C(v48, &qword_1EC7044F0, &unk_1D2AC9D50);
      goto LABEL_30;
    }

    v36 = v313;
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = v35;
    v38 = v25[4];
    *(v37 + 64) = v25[3];
    *(v37 + 80) = v38;
    *(v37 + 96) = v25[5];
    v39 = v25[2];
    *(v37 + 32) = v25[1];
    *(v37 + 48) = v39;
    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    v41[2] = v40;
    v41[3] = sub_1D2A57398;
    v41[4] = 0;
    v41[5] = sub_1D2A60680;
    v41[6] = v37;
    swift_getKeyPath();
    v299 = v2;
    sub_1D2A2E5B4(&v313, &v302, &qword_1EC7044F0, &unk_1D2AC9D50);
    sub_1D2A2E5B4(&v313, &v302, &qword_1EC7044F0, &unk_1D2AC9D50);

    sub_1D2AC6094();

    v42 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v42)
    {
      v305 = sub_1D2A57398;
      v306 = 0;
      *&v302 = MEMORY[0x1E69E9820];
      *(&v302 + 1) = 1107296256;
      v303 = sub_1D2A44320;
      v304 = &block_descriptor_337;
      v43 = _Block_copy(&v302);
      v44 = v42;

      v45 = [v44 remoteObjectProxyWithErrorHandler_];
      _Block_release(v43);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(&v300, v301);
      sub_1D2A206F8(v301, &v302);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v46 = v300;
      v12 = v296;
      if (v300)
      {
        v47 = sub_1D2AC6BF4();
        [v46 setSelectedGenerationStyle_];

LABEL_28:
        sub_1D2A2E61C(v319, &qword_1EC7044F0, &unk_1D2AC9D50);

        v48 = &v313;
        goto LABEL_29;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v49 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v50 = sub_1D2AC63B4();
      __swift_project_value_buffer(v50, qword_1EC7040C0);
      v51 = v49;
      v52 = sub_1D2AC6394();
      v53 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        v56 = v49;
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 4) = v57;
        *v55 = v57;
        _os_log_impl(&dword_1D2A17000, v52, v53, "Could not send selected generation style to remote view: %@. May not be an error if the connection is not established yet, will retry.", v54, 0xCu);
        sub_1D2A2E61C(v55, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v55, -1, -1);
        MEMORY[0x1D38A8460](v54, -1, -1);
      }
    }

    v58 = swift_allocObject();
    *(v58 + 16) = sub_1D2A2E6B4;
    *(v58 + 24) = v41;
    swift_getKeyPath();
    *&v302 = v2;

    sub_1D2AC6094();

    *&v302 = v2;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v59 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v60 = *(v2 + v59);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v59) = v60;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v60 = sub_1D2A4486C(0, v60[2] + 1, 1, v60);
      *(v2 + v59) = v60;
    }

    v63 = v60[2];
    v62 = v60[3];
    v12 = v296;
    if (v63 >= v62 >> 1)
    {
      v60 = sub_1D2A4486C((v62 > 1), v63 + 1, 1, v60);
    }

    v60[2] = v63 + 1;
    v64 = &v60[2 * v63];
    v64[4] = sub_1D2A2E724;
    v64[5] = v58;
    *(v2 + v59) = v60;
    swift_endAccess();
    *&v302 = v2;
    swift_getKeyPath();
    sub_1D2AC60A4();

    goto LABEL_28;
  }

LABEL_30:
  v65 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_personalizationPolicy);
  if (v65 == 3)
  {
    goto LABEL_44;
  }

  v66 = swift_allocObject();
  *(v66 + 16) = v65;
  v67 = swift_allocObject();
  swift_weakInit();
  v68 = swift_allocObject();
  v68[2] = v67;
  v68[3] = sub_1D2A57580;
  v68[4] = 0;
  v68[5] = sub_1D2A6065C;
  v68[6] = v66;
  swift_getKeyPath();
  *&v313 = v2;

  sub_1D2AC6094();

  v69 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v69)
  {
    *&v315 = sub_1D2A57580;
    *(&v315 + 1) = 0;
    *&v313 = MEMORY[0x1E69E9820];
    *(&v313 + 1) = 1107296256;
    *&v314 = sub_1D2A44320;
    *(&v314 + 1) = &block_descriptor_322;
    v70 = _Block_copy(&v313);
    v71 = v69;

    v72 = [v71 remoteObjectProxyWithErrorHandler_];
    _Block_release(v70);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(v307, v312);
    sub_1D2A206F8(v312, &v313);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v73 = *&v307[0];
    if (*&v307[0])
    {
      v74 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      [v73 setPersonalizationPolicy_];

      goto LABEL_44;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v75 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v76 = sub_1D2AC63B4();
    __swift_project_value_buffer(v76, qword_1EC7040C0);
    v77 = v75;
    v78 = sub_1D2AC6394();
    v79 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v80 = 138412290;
      v82 = v75;
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v80 + 4) = v83;
      *v81 = v83;
      _os_log_impl(&dword_1D2A17000, v78, v79, "Could not send personalization policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v80, 0xCu);
      sub_1D2A2E61C(v81, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v81, -1, -1);
      MEMORY[0x1D38A8460](v80, -1, -1);
    }
  }

  v84 = swift_allocObject();
  *(v84 + 16) = sub_1D2A2E6B4;
  *(v84 + 24) = v68;
  swift_getKeyPath();
  *&v313 = v2;

  sub_1D2AC6094();

  *&v313 = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v85 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v86 = *(v2 + v85);
  v87 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v85) = v86;
  if ((v87 & 1) == 0)
  {
    v86 = sub_1D2A4486C(0, v86[2] + 1, 1, v86);
    *(v2 + v85) = v86;
  }

  v89 = v86[2];
  v88 = v86[3];
  v12 = v296;
  if (v89 >= v88 >> 1)
  {
    v86 = sub_1D2A4486C((v88 > 1), v89 + 1, 1, v86);
  }

  v86[2] = v89 + 1;
  v90 = &v86[2 * v89];
  v90[4] = sub_1D2A2E724;
  v90[5] = v84;
  *(v2 + v85) = v86;
  swift_endAccess();
  *&v313 = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();

LABEL_44:
  v91 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements;
  v92 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements);
  if (v92 >> 62)
  {
    if (v92 < 0)
    {
      v288 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements);
    }

    if (!sub_1D2AC7024())
    {
      goto LABEL_59;
    }
  }

  else if (!*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_59;
  }

  v93 = *(v2 + v91);
  v94 = swift_allocObject();
  *(v94 + 16) = v93;
  v95 = swift_allocObject();
  swift_weakInit();
  v96 = swift_allocObject();
  v96[2] = v95;
  v96[3] = sub_1D2A575AC;
  v96[4] = 0;
  v96[5] = sub_1D2A605D4;
  v96[6] = v94;
  swift_getKeyPath();
  *&v313 = v2;
  swift_bridgeObjectRetain_n();

  sub_1D2AC6094();

  v97 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v97)
  {
    *&v315 = sub_1D2A575AC;
    *(&v315 + 1) = 0;
    *&v313 = MEMORY[0x1E69E9820];
    *(&v313 + 1) = 1107296256;
    *&v314 = sub_1D2A44320;
    *(&v314 + 1) = &block_descriptor_218;
    v98 = _Block_copy(&v313);
    v99 = v97;

    v100 = [v99 remoteObjectProxyWithErrorHandler_];
    _Block_release(v98);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(v307, v312);
    sub_1D2A206F8(v312, &v313);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v101 = *&v307[0];
    if (*&v307[0])
    {
      sub_1D2A20764(0, &qword_1EC703B30, &off_1E84033C0);
      v102 = sub_1D2AC6D24();
      [v101 setPromptElements_];

      goto LABEL_59;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v103 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v104 = sub_1D2AC63B4();
    __swift_project_value_buffer(v104, qword_1EC7040C0);
    v105 = v103;
    v106 = sub_1D2AC6394();
    v107 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *v108 = 138412290;
      v110 = v103;
      v111 = _swift_stdlib_bridgeErrorToNSError();
      *(v108 + 4) = v111;
      *v109 = v111;
      _os_log_impl(&dword_1D2A17000, v106, v107, "Could not send prompt elements to remote view: %@. May not be an error if the connection is not established yet, will retry.", v108, 0xCu);
      sub_1D2A2E61C(v109, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v109, -1, -1);
      MEMORY[0x1D38A8460](v108, -1, -1);
    }
  }

  v293 = v93;
  v112 = swift_allocObject();
  *(v112 + 16) = sub_1D2A2DF48;
  *(v112 + 24) = v96;
  swift_getKeyPath();
  *&v313 = v2;

  sub_1D2AC6094();

  *&v313 = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v113 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v114 = *(v2 + v113);
  v115 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v113) = v114;
  if ((v115 & 1) == 0)
  {
    v114 = sub_1D2A4486C(0, v114[2] + 1, 1, v114);
    *(v2 + v113) = v114;
  }

  v117 = v114[2];
  v116 = v114[3];
  if (v117 >= v116 >> 1)
  {
    v114 = sub_1D2A4486C((v116 > 1), v117 + 1, 1, v114);
  }

  v114[2] = v117 + 1;
  v118 = &v114[2 * v117];
  v118[4] = sub_1D2A2D5EC;
  v118[5] = v112;
  *(v2 + v113) = v114;
  swift_endAccess();
  *&v313 = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();

  v12 = v296;
LABEL_59:
  v119 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage);
  if (!v119)
  {
    goto LABEL_73;
  }

  v120 = swift_allocObject();
  *(v120 + 16) = v119;
  v121 = swift_allocObject();
  swift_weakInit();
  v122 = swift_allocObject();
  v122[2] = v121;
  v122[3] = sub_1D2A575E8;
  v122[4] = 0;
  v122[5] = sub_1D2A6064C;
  v122[6] = v120;
  swift_getKeyPath();
  *&v313 = v2;
  v123 = v119;

  sub_1D2AC6094();

  v124 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v124)
  {
    *&v315 = sub_1D2A575E8;
    *(&v315 + 1) = 0;
    *&v313 = MEMORY[0x1E69E9820];
    *(&v313 + 1) = 1107296256;
    *&v314 = sub_1D2A44320;
    *(&v314 + 1) = &block_descriptor_307;
    v125 = _Block_copy(&v313);
    v126 = v124;

    v127 = [v126 remoteObjectProxyWithErrorHandler_];
    _Block_release(v125);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(v307, v312);
    sub_1D2A206F8(v312, &v313);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v128 = *&v307[0];
    if (*&v307[0])
    {
      [*&v307[0] setSourceImage_];

      goto LABEL_73;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v129 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v130 = sub_1D2AC63B4();
    __swift_project_value_buffer(v130, qword_1EC7040C0);
    v131 = v129;
    v132 = sub_1D2AC6394();
    v133 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      *v134 = 138412290;
      v136 = v129;
      v137 = _swift_stdlib_bridgeErrorToNSError();
      *(v134 + 4) = v137;
      *v135 = v137;
      _os_log_impl(&dword_1D2A17000, v132, v133, "Could not send source image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v134, 0xCu);
      sub_1D2A2E61C(v135, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v135, -1, -1);
      MEMORY[0x1D38A8460](v134, -1, -1);
    }
  }

  v293 = v120;
  v138 = swift_allocObject();
  *(v138 + 16) = sub_1D2A2E6B4;
  *(v138 + 24) = v122;
  swift_getKeyPath();
  *&v313 = v2;

  sub_1D2AC6094();

  *&v313 = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v139 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v140 = *(v2 + v139);
  v141 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v139) = v140;
  if ((v141 & 1) == 0)
  {
    v140 = sub_1D2A4486C(0, v140[2] + 1, 1, v140);
    *(v2 + v139) = v140;
  }

  v143 = v140[2];
  v142 = v140[3];
  if (v143 >= v142 >> 1)
  {
    v140 = sub_1D2A4486C((v142 > 1), v143 + 1, 1, v140);
  }

  v140[2] = v143 + 1;
  v144 = &v140[2 * v143];
  v144[4] = sub_1D2A2E724;
  v144[5] = v138;
  *(v2 + v139) = v140;
  swift_endAccess();
  *&v313 = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();

  v12 = v296;
LABEL_73:
  if (*(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_isLoadingRecipe) != 1)
  {
    goto LABEL_87;
  }

  *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_isLoadingRecipe) = 1;
  v145 = swift_allocObject();
  *(v145 + 16) = 1;
  v146 = swift_allocObject();
  swift_weakInit();
  v147 = swift_allocObject();
  v147[2] = v146;
  v147[3] = sub_1D2A57618;
  v147[4] = 0;
  v147[5] = sub_1D2A6063C;
  v147[6] = v145;
  swift_getKeyPath();
  *&v313 = v2;

  sub_1D2AC6094();

  v148 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v148)
  {
    *&v315 = sub_1D2A57618;
    *(&v315 + 1) = 0;
    *&v313 = MEMORY[0x1E69E9820];
    *(&v313 + 1) = 1107296256;
    *&v314 = sub_1D2A44320;
    *(&v314 + 1) = &block_descriptor_292;
    v149 = _Block_copy(&v313);
    v150 = v148;

    v151 = [v150 remoteObjectProxyWithErrorHandler_];
    _Block_release(v149);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(v307, v312);
    sub_1D2A206F8(v312, &v313);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v152 = *&v307[0];
    if (*&v307[0])
    {
      [*&v307[0] setIsLoadingRecipe_];

      goto LABEL_87;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v153 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v154 = sub_1D2AC63B4();
    __swift_project_value_buffer(v154, qword_1EC7040C0);
    v155 = v153;
    v156 = sub_1D2AC6394();
    v157 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *v158 = 138412290;
      v160 = v153;
      v161 = _swift_stdlib_bridgeErrorToNSError();
      *(v158 + 4) = v161;
      *v159 = v161;
      _os_log_impl(&dword_1D2A17000, v156, v157, "Could not send isLoadingRecipe to remote view: %@. May not be an error if the connection is not established yet, will retry.", v158, 0xCu);
      sub_1D2A2E61C(v159, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v159, -1, -1);
      MEMORY[0x1D38A8460](v158, -1, -1);
    }
  }

  v162 = swift_allocObject();
  *(v162 + 16) = sub_1D2A2E6B4;
  *(v162 + 24) = v147;
  swift_getKeyPath();
  *&v313 = v2;

  sub_1D2AC6094();

  *&v313 = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v163 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v164 = *(v2 + v163);
  v165 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v163) = v164;
  if ((v165 & 1) == 0)
  {
    v164 = sub_1D2A4486C(0, v164[2] + 1, 1, v164);
    *(v2 + v163) = v164;
  }

  v167 = v164[2];
  v166 = v164[3];
  v12 = v296;
  if (v167 >= v166 >> 1)
  {
    v164 = sub_1D2A4486C((v166 > 1), v167 + 1, 1, v164);
  }

  v164[2] = v167 + 1;
  v168 = &v164[2 * v167];
  v168[4] = sub_1D2A2E724;
  v168[5] = v162;
  *(v2 + v163) = v164;
  swift_endAccess();
  *&v313 = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();

LABEL_87:
  v169 = (v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData);
  v170 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData + 8);
  if (v170 >> 60 == 15)
  {
    goto LABEL_105;
  }

  v171 = *v169;
  sub_1D2A479B4(*v169, *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData + 8));
  sub_1D2A479B4(v171, v170);
  sub_1D2A479B4(v171, v170);
  sub_1D2A47930(v171, v170);
  v173 = *v169;
  v172 = v169[1];
  v174 = swift_allocObject();
  *(v174 + 16) = v173;
  *(v174 + 24) = v172;
  v175 = swift_allocObject();
  swift_weakInit();
  v176 = swift_allocObject();
  v176[2] = v175;
  v176[3] = sub_1D2A5764C;
  v176[4] = 0;
  v176[5] = sub_1D2A47998;
  v176[6] = v174;
  swift_getKeyPath();
  *&v313 = v2;
  sub_1D2A479A0(v173, v172);
  sub_1D2A479A0(v173, v172);
  v293 = v172;
  sub_1D2A479A0(v173, v172);
  v292 = v174;

  sub_1D2AC6094();

  v177 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (!v177)
  {
    sub_1D2A2DF64();
    v184 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v185 = sub_1D2AC63B4();
    __swift_project_value_buffer(v185, qword_1EC7040C0);
    v186 = v184;
    v187 = sub_1D2AC6394();
    v188 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v187, v188))
    {
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v291 = v187;
      v191 = v190;
      *v189 = 138412290;
      v192 = v184;
      v193 = _swift_stdlib_bridgeErrorToNSError();
      *(v189 + 4) = v193;
      *v191 = v193;
      _os_log_impl(&dword_1D2A17000, v291, v188, "Could not send recipe data to remote view: %@. May not be an error if the connection is not established yet, will retry.", v189, 0xCu);
      sub_1D2A2E61C(v191, &unk_1EC704400, &unk_1D2ADA9A0);
      v194 = v191;
      v187 = v291;
      MEMORY[0x1D38A8460](v194, -1, -1);
      MEMORY[0x1D38A8460](v189, -1, -1);
    }

    goto LABEL_97;
  }

  *&v315 = sub_1D2A5764C;
  *(&v315 + 1) = 0;
  *&v313 = MEMORY[0x1E69E9820];
  *(&v313 + 1) = 1107296256;
  *&v314 = sub_1D2A44320;
  *(&v314 + 1) = &block_descriptor_277;
  v178 = _Block_copy(&v313);
  v179 = v177;

  v180 = [v179 remoteObjectProxyWithErrorHandler_];
  _Block_release(v178);

  sub_1D2AC6FF4();
  swift_unknownObjectRelease();
  sub_1D2A206F8(v307, v312);
  sub_1D2A206F8(v312, &v313);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
  swift_dynamicCast();
  v181 = *&v307[0];
  if (!*&v307[0])
  {
LABEL_97:
    v290 = v173;
    v291 = v171;
    v195 = swift_allocObject();
    *(v195 + 16) = sub_1D2A2E6B4;
    *(v195 + 24) = v176;
    swift_getKeyPath();
    *&v313 = v2;

    sub_1D2AC6094();

    *&v313 = v2;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v196 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v197 = *(v2 + v196);
    v198 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v196) = v197;
    if ((v198 & 1) == 0)
    {
      v197 = sub_1D2A4486C(0, v197[2] + 1, 1, v197);
      *(v2 + v196) = v197;
    }

    v200 = v197[2];
    v199 = v197[3];
    v201 = v290;
    if (v200 >= v199 >> 1)
    {
      v197 = sub_1D2A4486C((v199 > 1), v200 + 1, 1, v197);
    }

    v197[2] = v200 + 1;
    v202 = &v197[2 * v200];
    v202[4] = sub_1D2A2E724;
    v202[5] = v195;
    *(v2 + v196) = v197;
    swift_endAccess();
    *&v313 = v2;
    swift_getKeyPath();
    sub_1D2AC60A4();

    v203 = v293;
    sub_1D2A47930(v201, v293);
    sub_1D2A47930(v201, v203);
    v204 = v291;
    sub_1D2A47930(v291, v170);
    v205 = v204;
    goto LABEL_104;
  }

  v182 = v293;
  if (v293 >> 60 == 15)
  {
    v183 = 0;
  }

  else
  {
    v183 = sub_1D2AC5F14();
  }

  [v181 setRecipeData_];

  sub_1D2A47930(v173, v182);
  sub_1D2A47930(v173, v182);
  sub_1D2A47930(v171, v170);
  v205 = v171;
LABEL_104:
  sub_1D2A47930(v205, v170);
  v12 = v296;
LABEL_105:
  v206 = (v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_previewAspectRatio);
  if (*(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_previewAspectRatio + 24))
  {
    goto LABEL_119;
  }

  v207 = *v206;
  v209 = v206[1];
  v208 = v206[2];
  v210 = swift_allocObject();
  v210[2] = v207;
  v210[3] = v209;
  v210[4] = v208;
  v211 = swift_allocObject();
  swift_weakInit();
  v212 = swift_allocObject();
  v212[2] = v211;
  v212[3] = sub_1D2A576E0;
  v212[4] = 0;
  v212[5] = sub_1D2A2DFB8;
  v212[6] = v210;
  swift_getKeyPath();
  *&v313 = v2;

  sub_1D2AC6094();

  v213 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v213)
  {
    *&v315 = sub_1D2A576E0;
    *(&v315 + 1) = 0;
    *&v313 = MEMORY[0x1E69E9820];
    *(&v313 + 1) = 1107296256;
    *&v314 = sub_1D2A44320;
    *(&v314 + 1) = &block_descriptor_262;
    v214 = _Block_copy(&v313);
    v215 = v213;

    v216 = [v215 remoteObjectProxyWithErrorHandler_];
    _Block_release(v214);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(v307, v312);
    sub_1D2A206F8(v312, &v313);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v217 = *&v307[0];
    if (*&v307[0])
    {
      sub_1D2A20764(0, &qword_1EC7037F8, 0x1E696AD98);
      v218 = sub_1D2AC6F84();
      [v217 setPreviewAspectRatio_];

      goto LABEL_119;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v219 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v220 = sub_1D2AC63B4();
    __swift_project_value_buffer(v220, qword_1EC7040C0);
    v221 = v219;
    v222 = sub_1D2AC6394();
    v223 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v222, v223))
    {
      v224 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      *v224 = 138412290;
      v226 = v219;
      v227 = _swift_stdlib_bridgeErrorToNSError();
      *(v224 + 4) = v227;
      *v225 = v227;
      _os_log_impl(&dword_1D2A17000, v222, v223, "Could not send display aspect ratio to remote view: %@. May not be an error if the connection is not established yet, will retry.", v224, 0xCu);
      sub_1D2A2E61C(v225, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v225, -1, -1);
      MEMORY[0x1D38A8460](v224, -1, -1);
    }
  }

  v228 = swift_allocObject();
  *(v228 + 16) = sub_1D2A2E6B4;
  *(v228 + 24) = v212;
  swift_getKeyPath();
  *&v313 = v2;

  sub_1D2AC6094();

  *&v313 = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v229 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v230 = *(v2 + v229);
  v231 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v229) = v230;
  if ((v231 & 1) == 0)
  {
    v230 = sub_1D2A4486C(0, v230[2] + 1, 1, v230);
    *(v2 + v229) = v230;
  }

  v233 = v230[2];
  v232 = v230[3];
  v12 = v296;
  if (v233 >= v232 >> 1)
  {
    v230 = sub_1D2A4486C((v232 > 1), v233 + 1, 1, v230);
  }

  v230[2] = v233 + 1;
  v234 = &v230[2 * v233];
  v234[4] = sub_1D2A2E724;
  v234[5] = v228;
  *(v2 + v229) = v230;
  swift_endAccess();
  *&v313 = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();

LABEL_119:
  v235 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage);
  if (!v235)
  {
    goto LABEL_133;
  }

  v236 = swift_allocObject();
  *(v236 + 16) = v235;
  v237 = swift_allocObject();
  swift_weakInit();
  v238 = swift_allocObject();
  v238[2] = v237;
  v238[3] = sub_1D2A57784;
  v238[4] = 0;
  v238[5] = sub_1D2A6062C;
  v238[6] = v236;
  swift_getKeyPath();
  *&v313 = v2;
  v239 = v235;

  sub_1D2AC6094();

  v240 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v240)
  {
    *&v315 = sub_1D2A57784;
    *(&v315 + 1) = 0;
    *&v313 = MEMORY[0x1E69E9820];
    *(&v313 + 1) = 1107296256;
    *&v314 = sub_1D2A44320;
    *(&v314 + 1) = &block_descriptor_247;
    v241 = _Block_copy(&v313);
    v242 = v240;

    v243 = [v242 remoteObjectProxyWithErrorHandler_];
    _Block_release(v241);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(v307, v312);
    sub_1D2A206F8(v312, &v313);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v244 = *&v307[0];
    if (*&v307[0])
    {
      [*&v307[0] setPreGeneratedImage_];

      goto LABEL_133;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v245 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v246 = sub_1D2AC63B4();
    __swift_project_value_buffer(v246, qword_1EC7040C0);
    v247 = v245;
    v248 = sub_1D2AC6394();
    v249 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v248, v249))
    {
      v250 = swift_slowAlloc();
      v251 = swift_slowAlloc();
      *v250 = 138412290;
      v252 = v245;
      v253 = _swift_stdlib_bridgeErrorToNSError();
      *(v250 + 4) = v253;
      *v251 = v253;
      _os_log_impl(&dword_1D2A17000, v248, v249, "Could not send pregenerated image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v250, 0xCu);
      sub_1D2A2E61C(v251, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v251, -1, -1);
      MEMORY[0x1D38A8460](v250, -1, -1);
    }
  }

  v293 = v239;
  v254 = swift_allocObject();
  *(v254 + 16) = sub_1D2A2E6B4;
  *(v254 + 24) = v238;
  swift_getKeyPath();
  *&v313 = v2;

  sub_1D2AC6094();

  *&v313 = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v255 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v256 = *(v2 + v255);
  v257 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v255) = v256;
  if ((v257 & 1) == 0)
  {
    v256 = sub_1D2A4486C(0, v256[2] + 1, 1, v256);
    *(v2 + v255) = v256;
  }

  v259 = v256[2];
  v258 = v256[3];
  v260 = v293;
  if (v259 >= v258 >> 1)
  {
    v256 = sub_1D2A4486C((v258 > 1), v259 + 1, 1, v256);
  }

  v256[2] = v259 + 1;
  v261 = &v256[2 * v259];
  v261[4] = sub_1D2A2E724;
  v261[5] = v254;
  *(v2 + v255) = v256;
  swift_endAccess();
  *&v313 = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();

  v12 = v296;
LABEL_133:
  v262 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_imageImportPolicy);
  if (v262 != 3)
  {
    v263 = swift_allocObject();
    *(v263 + 16) = v262;
    v264 = swift_allocObject();
    swift_weakInit();
    v265 = swift_allocObject();
    v265[2] = v264;
    v265[3] = sub_1D2A577B4;
    v265[4] = 0;
    v265[5] = sub_1D2A60608;
    v265[6] = v263;
    swift_getKeyPath();
    *&v313 = v2;

    sub_1D2AC6094();

    v266 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v266)
    {
      *&v315 = sub_1D2A577B4;
      *(&v315 + 1) = 0;
      *&v313 = MEMORY[0x1E69E9820];
      *(&v313 + 1) = 1107296256;
      *&v314 = sub_1D2A44320;
      *(&v314 + 1) = &block_descriptor_232;
      v267 = _Block_copy(&v313);
      v268 = v266;

      v269 = [v268 remoteObjectProxyWithErrorHandler_];
      _Block_release(v267);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(v307, v312);
      sub_1D2A206F8(v312, &v313);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v270 = *&v307[0];
      if (*&v307[0])
      {
        v271 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        [v270 setImageImportPolicy_];

        return (*(v12 + 8))(v295, v294);
      }
    }

    else
    {
      sub_1D2A2DF64();
      v272 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v273 = sub_1D2AC63B4();
      __swift_project_value_buffer(v273, qword_1EC7040C0);
      v274 = v272;
      v275 = sub_1D2AC6394();
      v276 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v275, v276))
      {
        v277 = swift_slowAlloc();
        v278 = swift_slowAlloc();
        *v277 = 138412290;
        v279 = v272;
        v280 = _swift_stdlib_bridgeErrorToNSError();
        *(v277 + 4) = v280;
        *v278 = v280;
        _os_log_impl(&dword_1D2A17000, v275, v276, "Could not send image import policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v277, 0xCu);
        sub_1D2A2E61C(v278, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v278, -1, -1);
        MEMORY[0x1D38A8460](v277, -1, -1);
      }
    }

    v281 = swift_allocObject();
    *(v281 + 16) = sub_1D2A2E6B4;
    *(v281 + 24) = v265;
    swift_getKeyPath();
    *&v313 = v2;

    sub_1D2AC6094();

    *&v313 = v2;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v282 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v283 = *(v2 + v282);
    v284 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v282) = v283;
    if ((v284 & 1) == 0)
    {
      v283 = sub_1D2A4486C(0, v283[2] + 1, 1, v283);
      *(v2 + v282) = v283;
    }

    v286 = v283[2];
    v285 = v283[3];
    v12 = v296;
    if (v286 >= v285 >> 1)
    {
      v283 = sub_1D2A4486C((v285 > 1), v286 + 1, 1, v283);
    }

    v283[2] = v286 + 1;
    v287 = &v283[2 * v286];
    v287[4] = sub_1D2A2E724;
    v287[5] = v281;
    *(v2 + v282) = v283;
    swift_endAccess();
    *&v313 = v2;
    swift_getKeyPath();
    sub_1D2AC60A4();
  }

  return (*(v12 + 8))(v295, v294);
}

uint64_t sub_1D2A5B80C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  v1 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_1D2A5B8CC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void sub_1D2A5B93C(void (*a1)(void), uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;

  v12 = sub_1D2A5588C(a1, a2);
  if (v12)
  {
    v20 = v12;
    a3();
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1D2A2E6B4;
    *(v13 + 24) = v11;
    swift_getKeyPath();
    sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

    sub_1D2AC6094();

    swift_getKeyPath();
    sub_1D2AC60B4();

    v14 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v15 = *(v5 + v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v14) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1D2A4486C(0, v15[2] + 1, 1, v15);
      *(v5 + v14) = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_1D2A4486C((v17 > 1), v18 + 1, 1, v15);
    }

    v15[2] = v18 + 1;
    v19 = &v15[2 * v18];
    v19[4] = sub_1D2A2E724;
    v19[5] = v13;
    *(v5 + v14) = v15;
    swift_endAccess();
    swift_getKeyPath();
    sub_1D2AC60A4();
  }
}

void sub_1D2A5BC04(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = sub_1D2A5588C(a2, a3);
    if (v7)
    {
      v8 = v7;
      a4();
    }

    else
    {
    }
  }
}

uint64_t sub_1D2A5BCAC()
{
  sub_1D2A2E61C(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_configuration, &qword_1EC704488, &qword_1D2ACB720);

  v1 = *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_exportedObject);

  v2 = *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_allowedGenerationStyles);

  v3 = *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 32);
  v4 = *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 40);
  v5 = *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 48);
  v6 = *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 56);
  v13 = *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 80);
  v14 = *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 88);
  v12 = *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 64);
  sub_1D2A609E4(*(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle), *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 8), *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 16), *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle + 24));
  v7 = *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements);

  sub_1D2A47930(*(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData), *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData + 8));
  v8 = *(v0 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers);

  v9 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager___observationRegistrar;
  v10 = sub_1D2AC60D4();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t sub_1D2A5BDF0()
{
  sub_1D2A5BCAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1D2A5BE70()
{
  sub_1D2A5BFB4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1D2AC60D4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D2A5BFB4()
{
  if (!qword_1EE088858)
  {
    sub_1D2AC6F34();
    v0 = sub_1D2AC6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE088858);
    }
  }
}

uint64_t sub_1D2A5C00C(uint64_t a1)
{
  v3 = sub_1D2AC6B04();
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D2AC6B24();
  v7 = *(v18 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2A20764(0, &qword_1EC7044B8, 0x1E69E9610);
  v17 = sub_1D2AC6ED4();
  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = *(v1 + 24);
  v13 = swift_allocObject();
  v13[2] = Strong;
  v13[3] = v12;
  v13[4] = a1;
  aBlock[4] = sub_1D2A60560;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2A61284;
  aBlock[3] = &block_descriptor_191;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1D2AC6B14();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D2A5FD78(&qword_1EC7044C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2A2DB64(&unk_1EC7044D0, &qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2AC7004();
  v15 = v17;
  MEMORY[0x1D38A7320](0, v10, v6, v14);
  _Block_release(v14);
  swift_unknownObjectRelease();

  (*(v19 + 8))(v6, v3);
  (*(v7 + 8))(v10, v18);
}

uint64_t sub_1D2A5C380(char a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D2AC6B04();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D2AC6B24();
  v11 = *(v22 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2A20764(0, &qword_1EC7044B8, 0x1E69E9610);
  v21 = sub_1D2AC6ED4();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = *(v3 + 24);
  v17 = swift_allocObject();
  *(v17 + 16) = Strong;
  *(v17 + 24) = v16;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  aBlock[4] = sub_1D2A60448;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2A61284;
  aBlock[3] = &block_descriptor_179;
  v18 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1D2AC6B14();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D2A5FD78(&qword_1EC7044C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2A2DB64(&unk_1EC7044D0, &qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2AC7004();
  v19 = v21;
  MEMORY[0x1D38A7320](0, v14, v10, v18);
  _Block_release(v18);
  swift_unknownObjectRelease();

  (*(v23 + 8))(v10, v7);
  (*(v11 + 8))(v14, v22);
}

uint64_t sub_1D2A5C768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2AC6B04();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D2AC6B24();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2A20764(0, &qword_1EC7044B8, 0x1E69E9610);
  v20 = sub_1D2AC6ED4();
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = *(v3 + 24);
  v16 = swift_allocObject();
  *(v16 + 16) = Strong;
  *(v16 + 24) = v15;
  aBlock[4] = a2;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2A61284;
  aBlock[3] = a3;
  v17 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_1D2AC6B14();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D2A5FD78(&qword_1EC7044C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2A2DB64(&unk_1EC7044D0, &qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2AC7004();
  v18 = v20;
  MEMORY[0x1D38A7320](0, v13, v9, v17);
  _Block_release(v17);
  swift_unknownObjectRelease();

  (*(v22 + 8))(v9, v6);
  (*(v10 + 8))(v13, v21);
}

uint64_t sub_1D2A5CA7C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_1D2A5CAC0(uint64_t a1)
{
  v3 = sub_1D2AC6B04();
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D2AC6B24();
  v7 = *(v18 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2A20764(0, &qword_1EC7044B8, 0x1E69E9610);
  v17 = sub_1D2AC6ED4();
  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = *(v1 + 40);
  v13 = swift_allocObject();
  v13[2] = Strong;
  v13[3] = v12;
  v13[4] = a1;
  aBlock[4] = sub_1D2A60398;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2A61284;
  aBlock[3] = &block_descriptor_167;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1D2AC6B14();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D2A5FD78(&qword_1EC7044C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2A2DB64(&unk_1EC7044D0, &qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2AC7004();
  v15 = v17;
  MEMORY[0x1D38A7320](0, v10, v6, v14);
  _Block_release(v14);
  swift_unknownObjectRelease();

  (*(v19 + 8))(v6, v3);
  (*(v7 + 8))(v10, v18);
}

uint64_t sub_1D2A5CDF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  type metadata accessor for GPExportablePhotoAsset(0);
  v5 = sub_1D2AC6D34();

  a4(v5);
}

uint64_t sub_1D2A5CED8(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    ObjectType = swift_getObjectType();
    result = (*(a2 + 40))(a3 & 1, ObjectType, a2);
  }

  if (a4)
  {
    v10 = swift_getObjectType();
    return (*(a5 + 24))(a3 & 1, v10, a5);
  }

  return result;
}

uint64_t sub_1D2A5CF88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a3);
}

uint64_t sub_1D2A5D008(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v5 = v4;
  v7 = sub_1D2AC6B04();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2AC6B24();
  v27 = *(v11 - 8);
  v28 = v11;
  v12 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2A20764(0, &qword_1EC7044B8, 0x1E69E9610);
  v26 = sub_1D2AC6ED4();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = *(v4 + 24);
  v17 = swift_unknownObjectWeakLoadStrong();
  v18 = *(v5 + 40);
  v19 = swift_allocObject();
  *(v19 + 16) = Strong;
  *(v19 + 24) = v16;
  *(v19 + 32) = a1;
  *(v19 + 40) = v17;
  *(v19 + 48) = v18;
  aBlock[4] = v24;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2A61284;
  aBlock[3] = v25;
  v20 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1D2AC6B14();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1D2A5FD78(&qword_1EC7044C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2A2DB64(&unk_1EC7044D0, &qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2AC7004();
  v21 = v26;
  MEMORY[0x1D38A7320](0, v14, v10, v20);
  _Block_release(v20);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v29 + 8))(v10, v7);
  (*(v27 + 8))(v14, v28);
}

uint64_t sub_1D2A5D330(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    ObjectType = swift_getObjectType();
    result = (*(a2 + 48))(a3 & 1, ObjectType, a2);
  }

  if (a4)
  {
    v10 = swift_getObjectType();
    return (*(a5 + 32))(a3 & 1, v10, a5);
  }

  return result;
}

uint64_t sub_1D2A5D408(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v7 = sub_1D2AC6B04();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D2AC6B24();
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2A20764(0, &qword_1EC7044B8, 0x1E69E9610);
  v22 = sub_1D2AC6ED4();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = *(v4 + 40);
  v17 = swift_allocObject();
  *(v17 + 16) = Strong;
  *(v17 + 24) = v16;
  *(v17 + 32) = a1;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2A61284;
  aBlock[3] = v23;
  v18 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_1D2AC6B14();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1D2A5FD78(&qword_1EC7044C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2A2DB64(&unk_1EC7044D0, &qword_1EC7044C8, &qword_1D2ACB770);
  sub_1D2AC7004();
  v19 = v22;
  MEMORY[0x1D38A7320](0, v14, v10, v18);
  _Block_release(v18);
  swift_unknownObjectRelease();

  (*(v25 + 8))(v10, v7);
  (*(v11 + 8))(v14, v24);
}

uint64_t sub_1D2A5D728()
{
  sub_1D2A1D53C(v0 + 16);
  sub_1D2A1D53C(v0 + 32);
  sub_1D2A1D53C(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2A5D794()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704478, &qword_1D2ACB718);
  sub_1D2A2DB64(&qword_1EC704480, &qword_1EC704478, &qword_1D2ACB718);
  return sub_1D2AC67B4();
}

uint64_t sub_1D2A5D884@<X0>(uint64_t a1@<X8>)
{
  sub_1D2AC66D4();
  if (qword_1EC703630 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC728B78;
  v3 = sub_1D2AC68E4();
  v5 = v4;
  v7 = v6;
  sub_1D2AC68C4();
  v8 = sub_1D2AC68D4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1D2A470D4(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_1D2A5D9CC@<X0>(uint64_t a1@<X8>)
{
  sub_1D2AC66D4();
  if (qword_1EC703630 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC728B78;
  result = sub_1D2AC68E4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1D2A5DAAC(uint64_t a1)
{
  v2 = sub_1D2AC66D4();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  return MEMORY[0x1EEDDC860](v2, v4, v6 & 1, v8, sub_1D2A5FF68, a1);
}

uint64_t sub_1D2A5DB48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704420, &qword_1D2ACB6C8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704428, &qword_1D2ACB6D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  swift_getKeyPath();
  v17[1] = a1;
  sub_1D2A5FD78(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  if (*(a1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state + 8) == 1 && !*(a1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704468, &qword_1D2ACB710);
    sub_1D2A2DB64(&qword_1EC704470, &qword_1EC704468, &qword_1D2ACB710);
    sub_1D2AC65D4();
    v15 = sub_1D2AC6894();
    v16 = &v9[*(v6 + 36)];
    *v16 = v15;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    v16[40] = 1;
    sub_1D2A2E5B4(v9, v5, &qword_1EC704428, &qword_1D2ACB6D0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704438, &qword_1D2ACB700);
    sub_1D2A5FDC0();
    sub_1D2A5FE78();
    sub_1D2AC6714();
    return sub_1D2A2E61C(v9, &qword_1EC704428, &qword_1D2ACB6D0);
  }

  else
  {
    sub_1D2AC66D4();
    if (qword_1EC703630 != -1)
    {
      swift_once();
    }

    v10 = qword_1EC728B78;
    *v5 = sub_1D2AC68E4();
    *(v5 + 1) = v11;
    v5[16] = v12 & 1;
    *(v5 + 3) = v13;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704438, &qword_1D2ACB700);
    sub_1D2A5FDC0();
    sub_1D2A5FE78();
    return sub_1D2AC6714();
  }
}

uint64_t sub_1D2A5DEE8@<X0>(uint64_t a1@<X8>)
{
  sub_1D2A5DB48(*v1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704418, &qword_1D2ACB6C0);
  *(a1 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_1D2A5DF30()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2A5DF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1D2AC6DA4();
  *(v4 + 48) = sub_1D2AC6D94();
  v6 = sub_1D2AC6D44();

  return MEMORY[0x1EEE6DFA0](sub_1D2A5E02C, v6, v5);
}

uint64_t sub_1D2A5E02C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  v3 = v2 + OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_parent;
  v4 = type metadata accessor for _AppExtensionHostView(0);
  v5 = v3 + *(v4 + 28);
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 8);

    v6(v8);
    sub_1D2A2E6BC(v6);
  }

  v9 = v3 + *(v4 + 32);
  v10 = *(v9 + 8);
  if (v10)
  {
    v11 = *(v9 + 16);
    *(v0 + 16) = *v9;
    *(v0 + 24) = v10;
    *(v0 + 32) = v11 & 1;
    *(v0 + 33) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043E0, &qword_1D2AC9CC0);
    sub_1D2AC6A94();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D2A5E16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for _AppExtensionHostView(0);
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  sub_1D2AC6DA4();
  v5[6] = sub_1D2AC6D94();
  v9 = sub_1D2AC6D44();

  return MEMORY[0x1EEE6DFA0](sub_1D2A5E234, v9, v8);
}

uint64_t sub_1D2A5E234()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];

  *(v4 + OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_willDeactivate) = 0;
  v5 = OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_parent;
  v6 = *(v4 + OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_parent);
  v7 = *(v6 + 16);
  *(v6 + 16) = v3;
  v8 = v3;

  sub_1D2A60E30(v4 + v5, v2, type metadata accessor for _AppExtensionHostView);
  v9 = *(*v2 + 16);
  v10 = *(v0[5] + *(v0[4] + 24));
  if (v9)
  {
    v11 = v9;
    sub_1D2A55A84(v11);
  }

  else
  {
    sub_1D2A579A4();
  }

  sub_1D2A5FF70(v0[5], type metadata accessor for _AppExtensionHostView);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D2A5E4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for _AppExtensionHostView(0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  sub_1D2AC6DA4();
  v4[8] = sub_1D2AC6D94();
  v8 = sub_1D2AC6D44();

  return MEMORY[0x1EEE6DFA0](sub_1D2A5E568, v8, v7);
}

uint64_t sub_1D2A5E568()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  if ((*(v2 + OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_willDeactivate) & 1) == 0)
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 40);
    *(v2 + OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_willDeactivate) = 1;
    v5 = v4 + OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_parent;
    v6 = *(v4 + OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_parent);
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;

    sub_1D2A60E30(v5, v3, type metadata accessor for _AppExtensionHostView);
    v8 = *(*v3 + 16);
    v9 = *(*(v0 + 56) + *(*(v0 + 48) + 24));
    if (v8)
    {
      v10 = v8;
      sub_1D2A55A84(v10);
    }

    else
    {
      sub_1D2A579A4();
    }

    v11 = *(v0 + 48);
    sub_1D2A5FF70(*(v0 + 56), type metadata accessor for _AppExtensionHostView);
    v12 = v5 + *(v11 + 32);
    v13 = *(v12 + 8);
    if (v13)
    {
      v14 = *(v12 + 16);
      *(v0 + 16) = *v12;
      *(v0 + 24) = v13;
      *(v0 + 32) = v14 & 1;
      *(v0 + 33) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043E0, &qword_1D2AC9CC0);
      sub_1D2AC6A94();
    }
  }

  v15 = *(v0 + 56);

  v16 = *(v0 + 8);

  return v16();
}

void sub_1D2A5E718(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
  v12 = sub_1D2AC6DD4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1D2AC6DA4();
  v13 = a1;
  v14 = sub_1D2AC6D94();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  sub_1D2A2F088(0, 0, v11, a6, v15);
}

id sub_1D2A5E874()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D2A5E90C()
{
  result = type metadata accessor for _AppExtensionHostView(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1D2A5E9C4()
{
  type metadata accessor for GPEXHostViewController();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704498, &qword_1D2ACB728);
  sub_1D2AC6874();
  [v1 setDelegate_];

  v9 = *(v0 + *(type metadata accessor for _AppExtensionHostView(0) + 24));
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044A0, &unk_1D2ACB730));
  swift_retain_n();
  v3 = sub_1D2AC6704();
  v4 = *(*v0 + 24);
  *(*v0 + 24) = v3;
  v5 = v3;

  result = [v5 view];
  if (result)
  {
    v7 = result;
    [v1 setPlaceholderView_];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D2A5EAFC(void *a1)
{
  v2 = v1;
  v61 = sub_1D2AC62D4();
  v59 = *(v61 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704488, &qword_1D2ACB720);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v54 - v11;
  v13 = sub_1D2AC6F34();
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = *(v64 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v58 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v54 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043C0, &qword_1D2ACA0B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v54 - v20;
  v22 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v63 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    sub_1D2AC7174();
    __break(1u);
    return;
  }

  v26 = type metadata accessor for _AppExtensionHostView(0);
  v27 = *(v26 + 20);
  v28 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704398, &unk_1D2ACB430);
  MEMORY[0x1D38A6EC0](v29);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1D2A2E61C(v21, &unk_1EC7043C0, &qword_1D2ACA0B0);
    v30 = *(v2 + *(v26 + 24));
    (*(v64 + 56))(v10, 1, 1, v65);
    sub_1D2A54DE0(v10);

    return;
  }

  v54 = v26;
  v55 = v10;
  v56 = v28;
  v31 = v63;
  sub_1D2A60E98(v21, v63, type metadata accessor for _AppExtensionHostView.Configuration);
  sub_1D2AC6F44();
  v33 = v64;
  v32 = v65;
  if ((*(v64 + 48))(v12, 1, v65) == 1)
  {
    sub_1D2A2E61C(v12, &qword_1EC704488, &qword_1D2ACB720);
    v35 = v60;
    v34 = v61;
    v36 = v59;
  }

  else
  {
    v37 = v57;
    (*(v33 + 32))(v57, v12, v32);
    v35 = v60;
    v38 = v32;
    sub_1D2AC6F04();
    sub_1D2A5FD78(&qword_1EC704490, MEMORY[0x1E6966C00]);
    v34 = v61;
    v39 = sub_1D2AC6BC4();
    v36 = v59;
    (*(v59 + 8))(v35, v34);
    if (v39)
    {
      v40 = sub_1D2AC6F24();
      v42 = (v31 + *(v22 + 20));
      if (v40 == *v42 && v41 == v42[1])
      {

        (*(v64 + 8))(v37, v65);
      }

      else
      {
        v53 = sub_1D2AC7354();

        v33 = v64;
        v32 = v65;
        (*(v64 + 8))(v37, v65);
        if ((v53 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      sub_1D2A5FF70(v63, type metadata accessor for _AppExtensionHostView.Configuration);

      return;
    }

    (*(v33 + 8))(v37, v38);
    v32 = v38;
  }

LABEL_11:
  v43 = v63;
  (*(v36 + 16))(v35, v63, v34);
  v44 = (v43 + *(v22 + 20));
  v45 = v32;
  v46 = *v44;
  v47 = v44[1];

  v48 = v58;
  sub_1D2AC6F14();
  v49 = *(v2 + *(v54 + 24));
  v50 = *(v33 + 16);
  v51 = v55;
  v50(v55, v48, v45);
  v52 = *(v33 + 56);
  v52(v51, 0, 1, v45);
  sub_1D2A54DE0(v51);
  v50(v51, v48, v45);
  v52(v51, 0, 1, v45);
  sub_1D2AC6F54();

  (*(v33 + 8))(v48, v45);
  sub_1D2A5FF70(v43, type metadata accessor for _AppExtensionHostView.Configuration);
}

uint64_t sub_1D2A5F1E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2A60E30(v2, v6, type metadata accessor for _AppExtensionHostView);
  v7 = type metadata accessor for _AppExtensionHostView.HostCoordinator(0);
  v8 = objc_allocWithZone(v7);
  v8[OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_willDeactivate] = 0;
  sub_1D2A60E30(v6, &v8[OBJC_IVAR____TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator_parent], type metadata accessor for _AppExtensionHostView);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  result = sub_1D2A5FF70(v6, type metadata accessor for _AppExtensionHostView);
  *a2 = v9;
  return result;
}

uint64_t sub_1D2A5F328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2A5FD78(&qword_1EC7044A8, type metadata accessor for _AppExtensionHostView);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1D2A5F3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2A5FD78(&qword_1EC7044A8, type metadata accessor for _AppExtensionHostView);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1D2A5F450()
{
  sub_1D2A5FD78(&qword_1EC7044A8, type metadata accessor for _AppExtensionHostView);
  sub_1D2AC6854();
  __break(1u);
}

id sub_1D2A5F6CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GPEXHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GPHostSideConnectionManager.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GPHostSideConnectionManager.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D2A5F798(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2A5F7B4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_1D2A5F80C()
{
  type metadata accessor for _AppExtensionHostView.MutableState();
  if (v0 <= 0x3F)
  {
    sub_1D2A60C14(319, &qword_1EC7043B8, &unk_1EC7043C0, &qword_1D2ACA0B0, MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for GPHostSideConnectionManager(319);
      if (v2 <= 0x3F)
      {
        sub_1D2A60C14(319, &unk_1EE088848, &unk_1EC7043D0, &unk_1D2ACB460, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1D2A60C14(319, &qword_1EE088898, &unk_1EC7043E0, &qword_1D2AC9CC0, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D2A5F9A4()
{
  result = sub_1D2AC62D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D2A5FA2C()
{
  result = qword_1EC7043F0;
  if (!qword_1EC7043F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7043F0);
  }

  return result;
}

uint64_t sub_1D2A5FAF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D2A5FB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  v7 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_configuration;
  v8 = sub_1D2AC6F34();
  (*(*(v8 - 8) + 56))(v4 + v7, 1, 1, v8);
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection) = 0;
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__isDisconnectingOnPurpose) = 0;
  v9 = v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state;
  *v9 = 1;
  *(v9 + 8) = 1;
  v10 = v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_responsibleAuditToken;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 1;
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_allowedGenerationStyles) = 0;
  v11 = (v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_selectedGenerationStyle);
  *v11 = 0u;
  v11[1] = 0u;
  v11[2] = 0u;
  v11[3] = 0u;
  v11[4] = 0u;
  v11[5] = 0u;
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_personalizationPolicy) = 3;
  v12 = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements) = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_sourceImage) = 0;
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_isLoadingRecipe) = 0;
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData) = xmmword_1D2AC9FC0;
  v13 = v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_previewAspectRatio;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 1;
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage) = 0;
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_imageImportPolicy) = 3;
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers) = v12;
  sub_1D2AC60C4();
  type metadata accessor for GPHostSideExportedObject();
  v14 = swift_allocObject();
  v14[3] = 0;
  swift_unknownObjectWeakInit();
  v14[5] = 0;
  swift_unknownObjectWeakInit();
  v14[7] = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_exportedObject) = v14;
  v14[3] = a2;
  swift_unknownObjectWeakAssign();
  *(*(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_exportedObject) + 40) = a4;
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t sub_1D2A5FD78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2A5FDC0()
{
  result = qword_1EC704440;
  if (!qword_1EC704440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC704428, &qword_1D2ACB6D0);
    sub_1D2A2DB64(&qword_1EC704448, &qword_1EC704450, &qword_1D2ACB708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704440);
  }

  return result;
}

unint64_t sub_1D2A5FE78()
{
  result = qword_1EC704458;
  if (!qword_1EC704458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC704438, &qword_1D2ACB700);
    sub_1D2A5FF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704458);
  }

  return result;
}

unint64_t sub_1D2A5FF04()
{
  result = qword_1EC704460;
  if (!qword_1EC704460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704460);
  }

  return result;
}

uint64_t sub_1D2A5FF70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2A5FFD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2A47C5C;

  return sub_1D2A5E4A0(a1, v4, v5, v6);
}

uint64_t sub_1D2A60084(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2A47C5C;

  return sub_1D2A5E16C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D2A60184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2A47C5C;

  return sub_1D2A5DF94(a1, v4, v5, v6);
}

void sub_1D2A60238()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 24);
    v3 = *(v0 + 16);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(v1, ObjectType, v2);
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_145Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1D2A60338()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 24);
    v3 = *(v0 + 16);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v1, ObjectType, v2);
  }
}

void sub_1D2A60398()
{
  if (v0[2])
  {
    v2 = v0[3];
    v1 = v0[4];
    v3 = v0[2];
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v1, ObjectType, v2);
  }
}

void sub_1D2A603F4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 16);
    ObjectType = swift_getObjectType();
    (*(v1 + 24))(ObjectType, v1);
  }
}

uint64_t sub_1D2A60448()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  if (*(v0 + 16))
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 24);
    v5 = *(v0 + 16);
    ObjectType = swift_getObjectType();
    v7 = (*(v4 + 16))(v3, ObjectType, v4);
  }

  else
  {
    v7 = 1;
  }

  return v2(v7 & 1);
}

void sub_1D2A604CC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 16);
    ObjectType = swift_getObjectType();
    (*(v1 + 32))(ObjectType, v1);
  }
}

uint64_t objectdestroy_163Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1D2A60560()
{
  if (v0[2])
  {
    v2 = v0[3];
    v1 = v0[4];
    v3 = v0[2];
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v1, ObjectType, v2);
  }
}

void sub_1D2A60680(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_1D2AC6BF4();
  [a1 setSelectedGenerationStyle_];
}

void sub_1D2A606DC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__state;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

void sub_1D2A60714()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_1D2A6076C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
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
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D2A60824(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1D2AC5D64();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D2AC5D24();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D2A608A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1D2AC5D64();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D2AC5D24();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D2AC5F04();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D2A60924()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection) = v1;
  v4 = v1;

  return sub_1D2A54F54();
}

uint64_t sub_1D2A60974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704488, &qword_1D2ACB720);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1D2A609E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    sub_1D2A2D7CC(a3, a4);
  }
}

void sub_1D2A60ACC()
{
  sub_1D2A60C14(319, &unk_1EE0888A0, &unk_1EC7043C0, &qword_1D2ACA0B0, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GPHostSideConnectionManager(319);
    if (v1 <= 0x3F)
    {
      sub_1D2A60C14(319, &unk_1EE088848, &unk_1EC7043D0, &unk_1D2ACB460, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D2A60C14(319, &qword_1EE088898, &unk_1EC7043E0, &qword_1D2AC9CC0, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D2A60C14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D2A60C78()
{
  result = qword_1EC704530;
  if (!qword_1EC704530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC704418, &qword_1D2ACB6C0);
    sub_1D2A60D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704530);
  }

  return result;
}

unint64_t sub_1D2A60D04()
{
  result = qword_1EC704538;
  if (!qword_1EC704538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC704540, &qword_1D2ACB840);
    sub_1D2A60D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704538);
  }

  return result;
}

unint64_t sub_1D2A60D88()
{
  result = qword_1EC704548;
  if (!qword_1EC704548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC704550, &qword_1D2ACB848);
    sub_1D2A5FDC0();
    sub_1D2A5FE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704548);
  }

  return result;
}

uint64_t sub_1D2A60E30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2A60E98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2A60F00()
{
  v2 = *(type metadata accessor for GenerativePlaygroundRemoteView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D2A2E260;

  return sub_1D2A544B4(v4, v5, v0 + v3);
}

uint64_t sub_1D2A60FDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7036F0, &qword_1D2ACB8A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2A6104C()
{
  result = qword_1EC704588;
  if (!qword_1EC704588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC704580, &qword_1D2ACB8D8);
    sub_1D2A5FD78(&qword_1EC7043F8, type metadata accessor for _AppExtensionHostView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704588);
  }

  return result;
}

uint64_t sub_1D2A61108()
{
  v1 = *(type metadata accessor for GenerativePlaygroundRemoteView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1D2A5436C(v2);
}

unint64_t sub_1D2A61168()
{
  result = qword_1EC704598;
  if (!qword_1EC704598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7036F0, &qword_1D2ACB8A0);
    sub_1D2A2DB64(&qword_1EC7045A0, &qword_1EC7045A8, &qword_1D2ACB8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704598);
  }

  return result;
}

uint64_t sub_1D2A613A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7045B8, &qword_1D2ACB8E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A61410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7045B8, &qword_1D2ACB8E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2A61490(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7045B8, &qword_1D2ACB8E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A615B8(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  sub_1D2A613A0(v1 + v2, &v5);
  if (v6)
  {
    sub_1D2A206F8(&v5, &v7);
    type metadata accessor for CVBuffer(0);
    swift_dynamicCast();
    return v4;
  }

  else
  {
    sub_1D2A61410(&v5);
    return 0;
  }
}

void sub_1D2A6165C(void *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = 0;
  if (a3)
  {
    type metadata accessor for CVBuffer(0);
  }

  else
  {
    v11[1] = 0;
    v11[2] = 0;
  }

  v11[0] = a3;
  v11[3] = v7;
  v8 = *a4;
  swift_beginAccess();
  v9 = a1;
  v10 = a3;
  sub_1D2A61490(v11, a1 + v8);
  swift_endAccess();
}

uint64_t sub_1D2A616F8(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    type metadata accessor for CVBuffer(0);
  }

  else
  {
    v7[1] = 0;
    v7[2] = 0;
  }

  v7[0] = a1;
  v7[3] = a1;
  v5 = *a2;
  swift_beginAccess();
  sub_1D2A61490(v7, v2 + v5);
  return swift_endAccess();
}

double GPDrawOnImageRecipe.baseImageRatio.getter()
{
  v1 = OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GPDrawOnImageRecipe.baseImageRatio.setter(double a1)
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double GPDrawOnImageRecipe.sketchComplexityMeasure.getter()
{
  v1 = OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GPDrawOnImageRecipe.sketchComplexityMeasure.setter(double a1)
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t GPDrawOnImageRecipe.generateCaptionFromImage.getter()
{
  v1 = OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GPDrawOnImageRecipe.generateCaptionFromImage.setter(char a1)
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t GPDrawOnImageRecipe.sanitizationCategory.getter()
{
  v1 = OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GPDrawOnImageRecipe.sanitizationCategory.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t GPDrawOnImageRecipe.drawOnImageAssignmentOptions.getter()
{
  v1 = OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GPDrawOnImageRecipe.drawOnImageAssignmentOptions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:generateCaptionFromImage:sanitizationCategory:drawOnImageAssignmentOptions:)(void *a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBaseImage:a1 sketchImage:a2 sketchMask:a3 baseImageRatio:a4 & 1 sketchComplexityMeasure:a5 generateCaptionFromImage:a6 sanitizationCategory:a7 drawOnImageAssignmentOptions:a8];

  return v11;
}

char *GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:generateCaptionFromImage:sanitizationCategory:drawOnImageAssignmentOptions:)(void *a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v15 = (v8 + OBJC_IVAR___GPDrawOnImageRecipe__baseImage);
  *v15 = 0u;
  v15[1] = 0u;
  v16 = (v8 + OBJC_IVAR___GPDrawOnImageRecipe__sketchImage);
  *v16 = 0u;
  v16[1] = 0u;
  v17 = (v8 + OBJC_IVAR___GPDrawOnImageRecipe__sketchMask);
  *v17 = 0u;
  v17[1] = 0u;
  *(v8 + OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio) = 0x3FF0000000000000;
  *(v8 + OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure) = 0;
  *(v8 + OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage) = 1;
  *(v8 + OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory) = 0;
  *(v8 + OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions) = 1;
  v27.super_class = GPDrawOnImageRecipe;
  v18 = objc_msgSendSuper2(&v27, sel_init);
  [v18 setBaseImage_];
  [v18 setSketchImage_];
  [v18 setSketchMask_];

  v19 = OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio;
  swift_beginAccess();
  *&v18[v19] = a7;
  v20 = OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure;
  swift_beginAccess();
  *&v18[v20] = a8;
  v21 = OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage;
  swift_beginAccess();
  v18[v21] = a4;
  v22 = OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory;
  swift_beginAccess();
  *&v18[v22] = a5;
  v23 = OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions;
  swift_beginAccess();
  *&v18[v23] = a6;

  return v18;
}

Swift::Bool __swiftcall GPDrawOnImageRecipe.canBeUsedToGenerate(hasAPrompt:)(Swift::Bool hasAPrompt)
{
  v3 = [v1 baseImage];
  v4 = v3;
  if (v3)
  {
  }

  v5 = [v1 sketchImage];
  if (v5)
  {

    if (v4)
    {
      v6 = [v1 sanitizationCategory] != 3;
    }

    else
    {
      v6 = 0;
    }

    v7 = [v1 baseImage];
    v8 = v7;
    if (v7)
    {
    }

    v9 = [v1 sketchImage];
    if (v9)
    {

      goto LABEL_14;
    }

    if (v8 && [v1 sanitizationCategory] == 3)
    {
LABEL_14:
      if (!v6)
      {
        return hasAPrompt;
      }
    }

    return 1;
  }

  return v4 && [v1 sanitizationCategory] != 3;
}

Swift::Bool __swiftcall GPDrawOnImageRecipe.needsPromptForSketch(hasAPrompt:)(Swift::Bool hasAPrompt)
{
  v3 = [v1 baseImage];
  v4 = v3;
  if (v3)
  {
  }

  v5 = [v1 sketchImage];
  if (v5)
  {
  }

  else if (!v4 || [v1 sanitizationCategory] != 3)
  {
    return 0;
  }

  return !hasAPrompt;
}

id GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:generateCaptionFromImage:drawOnImageAssignmentOptions:)(void *a1, void *a2, void *a3, char a4, uint64_t a5, double a6, double a7)
{
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBaseImage:a1 sketchImage:a2 sketchMask:a3 baseImageRatio:a4 & 1 sketchComplexityMeasure:a5 generateCaptionFromImage:a6 drawOnImageAssignmentOptions:a7];

  return v10;
}

char *GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:generateCaptionFromImage:drawOnImageAssignmentOptions:)(void *a1, void *a2, void *a3, char a4, uint64_t a5, double a6, double a7)
{
  v14 = (v7 + OBJC_IVAR___GPDrawOnImageRecipe__baseImage);
  *v14 = 0u;
  v14[1] = 0u;
  v15 = (v7 + OBJC_IVAR___GPDrawOnImageRecipe__sketchImage);
  *v15 = 0u;
  v15[1] = 0u;
  v16 = (v7 + OBJC_IVAR___GPDrawOnImageRecipe__sketchMask);
  *v16 = 0u;
  v16[1] = 0u;
  *(v7 + OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio) = 0x3FF0000000000000;
  *(v7 + OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure) = 0;
  *(v7 + OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage) = 1;
  *(v7 + OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory) = 0;
  *(v7 + OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions) = 1;
  v25.super_class = GPDrawOnImageRecipe;
  v17 = objc_msgSendSuper2(&v25, sel_init);
  [v17 setBaseImage_];
  [v17 setSketchImage_];
  [v17 setSketchMask_];

  v18 = OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio;
  swift_beginAccess();
  *&v17[v18] = a6;
  v19 = OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure;
  swift_beginAccess();
  *&v17[v19] = a7;
  v20 = OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage;
  swift_beginAccess();
  v17[v20] = a4;
  v21 = OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory;
  swift_beginAccess();
  *&v17[v21] = 0;
  v22 = OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions;
  swift_beginAccess();
  *&v17[v22] = a5;

  return v17;
}

id GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:drawOnImageAssignmentOptions:)(void *a1, void *a2, void *a3, uint64_t a4, double a5, double a6)
{
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBaseImage:a1 sketchImage:a2 sketchMask:a3 baseImageRatio:a4 sketchComplexityMeasure:a5 drawOnImageAssignmentOptions:a6];

  return v9;
}

char *GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:drawOnImageAssignmentOptions:)(void *a1, void *a2, void *a3, uint64_t a4, double a5, double a6)
{
  v12 = (v6 + OBJC_IVAR___GPDrawOnImageRecipe__baseImage);
  *v12 = 0u;
  v12[1] = 0u;
  v13 = (v6 + OBJC_IVAR___GPDrawOnImageRecipe__sketchImage);
  *v13 = 0u;
  v13[1] = 0u;
  v14 = (v6 + OBJC_IVAR___GPDrawOnImageRecipe__sketchMask);
  *v14 = 0u;
  v14[1] = 0u;
  *(v6 + OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio) = 0x3FF0000000000000;
  *(v6 + OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure) = 0;
  *(v6 + OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage) = 1;
  *(v6 + OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory) = 0;
  *(v6 + OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions) = 1;
  v22.super_class = GPDrawOnImageRecipe;
  v15 = objc_msgSendSuper2(&v22, sel_init);
  [v15 setBaseImage_];
  [v15 setSketchImage_];
  [v15 setSketchMask_];

  v16 = OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio;
  swift_beginAccess();
  *&v15[v16] = a5;
  v17 = OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure;
  swift_beginAccess();
  *&v15[v17] = a6;
  v18 = OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage;
  swift_beginAccess();
  v15[v18] = 1;
  v19 = OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions;
  swift_beginAccess();
  *&v15[v19] = a4;

  return v15;
}

id GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:sketchComplexityMeasure:drawOnImageAssignmentOptions:)(void *a1, void *a2, void *a3, uint64_t a4, double a5)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBaseImage:a1 sketchImage:a2 sketchMask:a3 sketchComplexityMeasure:a4 drawOnImageAssignmentOptions:a5];

  return v8;
}

char *GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:sketchComplexityMeasure:drawOnImageAssignmentOptions:)(void *a1, void *a2, void *a3, uint64_t a4, double a5)
{
  v10 = (v5 + OBJC_IVAR___GPDrawOnImageRecipe__baseImage);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = (v5 + OBJC_IVAR___GPDrawOnImageRecipe__sketchImage);
  *v11 = 0u;
  v11[1] = 0u;
  v12 = (v5 + OBJC_IVAR___GPDrawOnImageRecipe__sketchMask);
  *v12 = 0u;
  v12[1] = 0u;
  *(v5 + OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio) = 0x3FF0000000000000;
  *(v5 + OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure) = 0;
  *(v5 + OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage) = 1;
  *(v5 + OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory) = 0;
  *(v5 + OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions) = 1;
  v21.super_class = GPDrawOnImageRecipe;
  v13 = objc_msgSendSuper2(&v21, sel_init);
  [v13 setBaseImage_];
  [v13 setSketchImage_];
  [v13 setSketchMask_];

  v14 = OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio;
  swift_beginAccess();
  *&v13[v14] = 0x3FF0000000000000;
  v15 = OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure;
  swift_beginAccess();
  *&v13[v15] = a5;
  v16 = OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage;
  swift_beginAccess();
  v13[v16] = 1;
  v17 = OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory;
  swift_beginAccess();
  *&v13[v17] = 0;
  v18 = OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions;
  swift_beginAccess();
  *&v13[v18] = a4;

  return v13;
}

void __swiftcall GPDrawOnImageRecipe.init()(GPDrawOnImageRecipe *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for GPDrawOnImageRecipe()
{
  result = qword_1EE088860;
  if (!qword_1EE088860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE088860);
  }

  return result;
}

void CGImageRef.toPixelBuffer(orientation:maximumDimension:)(unsigned int a1@<W0>, double a2@<X1>, __CVBuffer *a3@<X2>, CGFloat *a4@<X8>)
{
  v6 = v4;
  v45 = *MEMORY[0x1E69E9840];
  Width = CGImageGetWidth(v6);
  Height = CGImageGetHeight(v6);
  v13 = Height;
  v14 = 1.0;
  if (a3)
  {
    v15 = Height;
    v16 = Width;
  }

  else
  {
    v17 = a2;
    if (Width > v13)
    {
      v18 = Width;
    }

    else
    {
      v18 = Height;
    }

    v15 = Height;
    v16 = Width;
    if (v18 > a2)
    {
      v19 = CGImageGetWidth(v6);
      if (CGImageGetHeight(v6) >= v19)
      {
        v14 = v17 / v13;
        v16 = v17 / v13 * Width;
        v15 = v17;
      }

      else
      {
        v14 = v17 / Width;
        v15 = v17 / Width * v13;
        v16 = v17;
      }
    }
  }

  if (a1 - 5 >= 4)
  {
    v20 = v15;
  }

  else
  {
    v20 = v16;
  }

  if (a1 - 5 >= 4)
  {
    v15 = v16;
  }

  if (v15 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_48;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
    goto LABEL_38;
  }

  v21 = v15;
  v22 = v20;
  v23 = CGImageGetColorSpace(v6);
  v5 = sub_1D2A63754(v21, v22, v23);
  a3 = v24;

  if (a1 > 8)
  {
    goto LABEL_28;
  }

  if (((1 << a1) & 0x18) != 0)
  {
    v25 = 0;
    v26 = 3.14159265;
    goto LABEL_30;
  }

  if (((1 << a1) & 0xC0) != 0)
  {
    v25 = 1;
    v26 = -1.57079633;
    goto LABEL_30;
  }

  if (((1 << a1) & 0x120) != 0)
  {
    v25 = 1;
    v26 = 1.57079633;
  }

  else
  {
LABEL_28:
    if (a1 - 1 >= 2)
    {
      type metadata accessor for CGImagePropertyOrientation(0);
      sub_1D2AC7384();
      __break(1u);
      return;
    }

    v25 = 0;
    v26 = 0.0;
  }

LABEL_30:
  CGAffineTransformMakeScale(&transform, v14, v14);
  if (v25)
  {
    v27 = v13 * 0.5;
    v28 = Width * 0.5;
  }

  else
  {
    v27 = Width * 0.5;
    v28 = v13 * 0.5;
  }

  CGAffineTransformTranslate(&v43, &transform, v27, v28);
  transform = v43;
  CGAffineTransformRotate(&v43, &transform, v26);
  transform = v43;
  CGAffineTransformTranslate(&v43, &transform, Width * -0.5, v13 * -0.5);
  v29 = *&v43.a;
  v30 = *&v43.c;
  v31 = *&v43.tx;
  if (a1 <= 7 && ((1 << a1) & 0xB4) != 0)
  {
    transform = v43;
    CGAffineTransformTranslate(&v43, &transform, Width, 0.0);
    transform = v43;
    CGAffineTransformScale(&v43, &transform, -1.0, 1.0);
    v29 = *&v43.a;
    v30 = *&v43.c;
    v31 = *&v43.tx;
  }

  *&transform.a = v29;
  *&transform.c = v30;
  *&transform.tx = v31;
  CGContextConcatCTM(v5, &transform);
  v32 = CGImageGetWidth(v6);
  v33 = CGImageGetHeight(v6);
  CGContextSetGrayFillColor(v5, 1.0, 1.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7045F8, &qword_1D2ACB910);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D2AC95B0;
  *(v34 + 32) = 0;
  *(v34 + 40) = 0;
  *(v34 + 48) = v32;
  *(v34 + 56) = v33;
  sub_1D2AC6E64();

  sub_1D2AC6E54();
  if (!CVPixelBufferUnlockBaseAddress(a3, 0))
  {
    goto LABEL_41;
  }

  if (qword_1EC703598 != -1)
  {
    goto LABEL_51;
  }

LABEL_38:
  v35 = sub_1D2AC63B4();
  __swift_project_value_buffer(v35, qword_1EC7040A8);
  v36 = sub_1D2AC6394();
  v37 = sub_1D2AC6E94();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1D2A17000, v36, v37, "Can't unlock base address", v38, 2u);
    MEMORY[0x1D38A8460](v38, -1, -1);
  }

LABEL_41:
  transform.a = 0.0;
  v39 = VTCreateCGImageFromCVPixelBuffer(a3, 0, &transform);
  v40 = sub_1D2AC63E4();

  if (v39 == v40 && (a = transform.a, *&transform.a))
  {
    *a4 = a3;
    a4[1] = a;
  }

  else
  {

    *a4 = 0.0;
    a4[1] = 0.0;
  }

  v42 = *MEMORY[0x1E69E9840];
}

uint64_t CGImageRef.ImageError.hashValue.getter()
{
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](0);
  return sub_1D2AC7484();
}

uint64_t static CGAffineTransform.transform(width:height:orientation:scale:)@<X0>(unsigned int a1@<W0>, _OWORD *a2@<X8>, CGFloat a3@<D0>, double a4@<D1>, CGFloat a5@<D2>)
{
  if (a1 <= 8)
  {
    if (((1 << a1) & 0x18) != 0)
    {
      v9 = 0;
      v10 = 3.14159265;
      goto LABEL_10;
    }

    if (((1 << a1) & 0xC0) != 0)
    {
      v9 = 1;
      v10 = -1.57079633;
      goto LABEL_10;
    }

    if (((1 << a1) & 0x120) != 0)
    {
      v9 = 1;
      v10 = 1.57079633;
      goto LABEL_10;
    }
  }

  if (a1 - 1 >= 2)
  {
    type metadata accessor for CGImagePropertyOrientation(0);
    result = sub_1D2AC7384();
    __break(1u);
    return result;
  }

  v9 = 0;
  v10 = 0.0;
LABEL_10:
  CGAffineTransformMakeScale(&v18, a5, a5);
  if (v9)
  {
    v11 = a4 * 0.5;
    v12 = a3 * 0.5;
  }

  else
  {
    v11 = a3 * 0.5;
    v12 = a4 * 0.5;
  }

  CGAffineTransformTranslate(&v17, &v18, v11, v12);
  v18 = v17;
  CGAffineTransformRotate(&v17, &v18, v10);
  v18 = v17;
  result = CGAffineTransformTranslate(&v17, &v18, a3 * -0.5, a4 * -0.5);
  v14 = *&v17.a;
  v15 = *&v17.c;
  v16 = *&v17.tx;
  if (a1 <= 7 && ((1 << a1) & 0xB4) != 0)
  {
    v18 = v17;
    CGAffineTransformTranslate(&v17, &v18, a3, 0.0);
    v18 = v17;
    result = CGAffineTransformScale(&v17, &v18, -1.0, 1.0);
    v14 = *&v17.a;
    v15 = *&v17.c;
    v16 = *&v17.tx;
  }

  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  return result;
}

uint64_t CGImageRef.resizedForVGF(orientation:)(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D2A634D0, 0, 0);
}

uint64_t sub_1D2A634D0()
{
  v12 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Width = CGImageGetWidth(v1);
  Height = CGImageGetHeight(v1);
  if (Height <= Width)
  {
    v5 = Width;
  }

  else
  {
    v5 = Height;
  }

  v6 = *(v0 + 16);
  if (v5 <= 2048 && v2 == 1)
  {
    v8 = v6;
  }

  else
  {
    CGImageRef.toPixelBuffer(orientation:maximumDimension:)(*(v0 + 24), 2048.0, 0, v11);
    if (v11[0])
    {
      v6 = v11[1];
    }

    else
    {
      v6 = 0;
    }
  }

  v9 = *(v0 + 8);

  return v9(v6);
}

uint64_t static CGImageRef.resized(from:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D2A635BC, 0, 0);
}

uint64_t sub_1D2A635BC()
{
  v13 = v0;
  v1 = [*(v0 + 24) CGImage];
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 24) imageOrientation];
    if ((v3 - 1) > 6)
    {
      v4 = 1;
    }

    else
    {
      v4 = dword_1D2ACBA30[(v3 - 1)];
    }

    CGImageRef.toPixelBuffer(orientation:maximumDimension:)(v4, 2048.0, 0, v12);

    v9 = v12[0];
    if (*&v12[0])
    {
    }
  }

  else
  {
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v5 = sub_1D2AC63B4();
    __swift_project_value_buffer(v5, qword_1EC7040C0);
    v6 = sub_1D2AC6394();
    v7 = sub_1D2AC6E94();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D2A17000, v6, v7, "Cannot convert native image into CGImage", v8, 2u);
      MEMORY[0x1D38A8460](v8, -1, -1);
    }

    v9 = 0.0;
  }

  **(v0 + 16) = v9;
  v10 = *(v0 + 8);

  return v10();
}

CGColorSpaceRef sub_1D2A63754(size_t a1, size_t a2, void *a3)
{
  if (a3)
  {
    v7 = a3;
    if (CGColorSpaceSupportsOutput(v7) && CGColorSpaceGetNumberOfComponents(v7) == 3 && !CGColorSpaceUsesExtendedRange(v7))
    {
LABEL_7:
      v9 = sub_1D2A48714(a1, a2);
      if (v3)
      {
      }

      else
      {
        v10 = v9;
        BytesPerRow = CVPixelBufferGetBytesPerRow(v9);
        v12 = CVPixelBufferLockBaseAddress(v10, 0);
        if (v12)
        {
          v4 = v12;
          if (qword_1EC703598 != -1)
          {
            swift_once();
          }

          v13 = sub_1D2AC63B4();
          __swift_project_value_buffer(v13, qword_1EC7040A8);
          v14 = sub_1D2AC6394();
          v15 = sub_1D2AC6E94();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&dword_1D2A17000, v14, v15, "Can't lock pixel buffer", v16, 2u);
            MEMORY[0x1D38A8460](v16, -1, -1);
          }

          sub_1D2A490FC();
          swift_allocError();
          *v17 = v4;
          *(v17 + 4) = 1;
        }

        else
        {
          BaseAddress = CVPixelBufferGetBaseAddress(v10);
          v19 = __CGBitmapContextCreate(BaseAddress, a1, a2, BytesPerRow, v7);
          if (v19)
          {
            v4 = v19;

            return v4;
          }

          if (qword_1EE088960 != -1)
          {
            swift_once();
          }

          v20 = sub_1D2AC63B4();
          __swift_project_value_buffer(v20, qword_1EE088968);
          v7 = v7;
          v21 = sub_1D2AC6394();
          v4 = sub_1D2AC6E94();

          if (os_log_type_enabled(v21, v4))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v28 = v23;
            *v22 = 134219266;
            *(v22 + 4) = a1;
            *(v22 + 12) = 2048;
            *(v22 + 14) = a2;
            *(v22 + 22) = 2048;
            *(v22 + 24) = 8;
            *(v22 + 32) = 2048;
            *(v22 + 34) = BytesPerRow;
            *(v22 + 42) = 1024;
            *(v22 + 44) = 8194;
            *(v22 + 48) = 2080;
            type metadata accessor for CGColorSpace(0);
            v24 = v7;
            v25 = sub_1D2AC6C44();
            v27 = sub_1D2ABAFCC(v25, v26, &v28);

            *(v22 + 50) = v27;
            _os_log_impl(&dword_1D2A17000, v21, v4, "Failed to create CGContext: %ld %ld %ld %ld %u %s", v22, 0x3Au);
            __swift_destroy_boxed_opaque_existential_0(v23);
            MEMORY[0x1D38A8460](v23, -1, -1);
            MEMORY[0x1D38A8460](v22, -1, -1);
          }

          CVPixelBufferUnlockBaseAddress(v10, 0);
          sub_1D2A63C14();
          swift_allocError();
        }

        swift_willThrow();
      }

      return v4;
    }
  }

  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  v7 = result;
  if (result)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D2A63AFC()
{
  result = qword_1EC704600;
  if (!qword_1EC704600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704600);
  }

  return result;
}

uint64_t sub_1D2A63B5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1D2A63BA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D2A63C14()
{
  result = qword_1EC704608;
  if (!qword_1EC704608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704608);
  }

  return result;
}

uint64_t sub_1D2A63C68()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1D2AC6C24();
    v4 = v3;

    if (v2 == 0xD000000000000029 && 0x80000001D2ADF480 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1D2AC7354();
    }
  }

  return v1 & 1;
}

uint64_t sub_1D2A63D38()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1D2AC6C24();
    v4 = v3;

    if (v2 == 0xD000000000000035 && 0x80000001D2ADF440 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1D2AC7354();
    }
  }

  return v1 & 1;
}

uint64_t sub_1D2A63E08()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1D2AC6C24();
    v4 = v3;

    if (v2 == 0xD00000000000001CLL && 0x80000001D2ADF420 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1D2AC7354();
    }
  }

  return v1 & 1;
}

id sub_1D2A63ED8()
{
  result = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  qword_1EC704610 = result;
  return result;
}

void GPDrawOnImageRecipe.codableDrawingRecipe.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D2AC5F94();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 baseImage];
  if (v7)
  {
    v8 = v7;
    if (qword_1EC703628 != -1)
    {
      swift_once();
    }

    v9 = qword_1EC704610;
    v10 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
    Width = CVPixelBufferGetWidth(v8);
    v12 = [v9 createCGImage:v10 fromRect:{0.0, 0.0, Width, CVPixelBufferGetHeight(v8)}];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v2 sketchImage];
  if (v13)
  {
    v14 = v13;
    if (qword_1EC703628 != -1)
    {
      swift_once();
    }

    v15 = qword_1EC704610;
    v16 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
    v17 = CVPixelBufferGetWidth(v14);
    v18 = [v15 createCGImage:v16 fromRect:{0.0, 0.0, v17, CVPixelBufferGetHeight(v14)}];
  }

  else
  {
    v18 = 0;
  }

  v19 = [v2 sketchMask];
  if (v19)
  {
    v20 = v19;
    if (qword_1EC703628 != -1)
    {
      swift_once();
    }

    v21 = qword_1EC704610;
    v22 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
    v23 = CVPixelBufferGetWidth(v20);
    v24 = [v21 createCGImage:v22 fromRect:{0.0, 0.0, v23, CVPixelBufferGetHeight(v20)}];

    if (v12)
    {
LABEL_15:
      v25 = v12;
      v26 = CGImageRef.gp_PNGRepresentationData.getter();
      v28 = v27;

      if (v18)
      {
        goto LABEL_16;
      }

LABEL_25:
      v80 = 0;
      v31 = 0xF000000000000000;
      if (v24)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v24 = 0;
    if (v12)
    {
      goto LABEL_15;
    }
  }

  if (!(v18 | v24))
  {
    if (qword_1EC703570 != -1)
    {
      swift_once();
    }

    v34 = sub_1D2AC63B4();
    __swift_project_value_buffer(v34, qword_1EC704030);
    v35 = sub_1D2AC6394();
    v36 = sub_1D2AC6E94();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1D2A17000, v35, v36, "Not able to read any CGimage from GPDrawOnImageRecipe.", v37, 2u);
      MEMORY[0x1D38A8460](v37, -1, -1);
    }

    goto LABEL_44;
  }

  v26 = 0;
  v28 = 0xF000000000000000;
  if (!v18)
  {
    goto LABEL_25;
  }

LABEL_16:
  v29 = v18;
  v80 = CGImageRef.gp_PNGRepresentationData.getter();
  v31 = v30;

  if (v24)
  {
LABEL_17:
    v32 = v24;
    v78 = CGImageRef.gp_PNGRepresentationData.getter();
    v79 = v33;

    goto LABEL_27;
  }

LABEL_26:
  v78 = 0;
  v79 = 0xF000000000000000;
LABEL_27:
  v38 = [v2 drawOnImageAssignmentOptions];
  if (!v38)
  {
    v74 = v24;
    v39 = 0;
    goto LABEL_31;
  }

  if (v38 == 1)
  {
    v74 = v24;
    v39 = 1;
LABEL_31:
    v40 = [v2 sanitizationCategory];
    if (v40 < 4)
    {
      v41 = v40;
      [v2 baseImageRatio];
      v43 = v42;
      [v2 sketchComplexityMeasure];
      v45 = v44;
      v72 = [v2 generateCaptionFromImage];
      v73 = v39;
      v46 = v75;
      sub_1D2AC5F84();
      v47 = sub_1D2AC5F64();
      v70 = v48;
      v71 = v47;
      v49 = v12;
      v50 = *(v76 + 8);
      v69 = v26;
      v76 = v28;
      v51 = v18;
      v52 = v77;
      v50(v46, v77);
      sub_1D2AC5F84();
      sub_1D2AC5F64();

      v50(v46, v52);

      v53 = v76;
      *a1 = v69;
      *(a1 + 8) = v53;
      *(a1 + 16) = v80;
      *(a1 + 24) = v31;
      v54 = v79;
      *(a1 + 32) = v78;
      *(a1 + 40) = v54;
      *(a1 + 48) = v43;
      *(a1 + 56) = v45;
      LOBYTE(v54) = v73;
      *(a1 + 64) = v72;
      *(a1 + 65) = v41;
      *(a1 + 66) = v54;
      v55 = v70;
      *(a1 + 72) = v71;
      *(a1 + 80) = v55;
      return;
    }

    v56 = v31;
    if (qword_1EC703570 != -1)
    {
      swift_once();
    }

    v57 = sub_1D2AC63B4();
    __swift_project_value_buffer(v57, qword_1EC704030);
    v35 = sub_1D2AC6394();
    v58 = sub_1D2AC6EA4();
    v59 = os_log_type_enabled(v35, v58);
    v60 = v74;
    if (v59)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1D2A17000, v35, v58, "A new drawOnImageSanitizationCategory case is not handled yet", v61, 2u);
      MEMORY[0x1D38A8460](v61, -1, -1);
    }

    sub_1D2A47930(v78, v79);
    v62 = v80;
    v63 = v56;
    goto LABEL_43;
  }

  v64 = v31;
  if (qword_1EC703570 != -1)
  {
    swift_once();
  }

  v65 = sub_1D2AC63B4();
  __swift_project_value_buffer(v65, qword_1EC704030);
  v35 = sub_1D2AC6394();
  v66 = sub_1D2AC6EA4();
  if (os_log_type_enabled(v35, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_1D2A17000, v35, v66, "A new drawOnImageAssignmentOptions case is not handled yet", v67, 2u);
    MEMORY[0x1D38A8460](v67, -1, -1);
  }

  sub_1D2A47930(v78, v79);
  v62 = v80;
  v63 = v64;
LABEL_43:
  sub_1D2A47930(v62, v63);
  sub_1D2A47930(v26, v28);
LABEL_44:

  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
}

uint64_t GenerationRecipe_V7.DrawOnImageRecipe.init(baseImageData:sketchImageData:sketchMaskData:baseImageRatio:sketchComplexityMeasure:generateCaptionFromImage:sanitizationCategory:drawOnImageAssignmentOptions:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char *a12, uint64_t a13, uint64_t a14)
{
  v37 = a7;
  v32 = a4;
  v35 = a14;
  v36 = a6;
  v33 = a13;
  v34 = a5;
  v21 = sub_1D2AC5F94();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a8;
  v27 = *a12;
  sub_1D2AC5F84();
  sub_1D2AC5F64();
  (*(v22 + 8))(v25, v21);

  *a9 = a1;
  *(a9 + 8) = a2;
  v29 = v32;
  *(a9 + 16) = a3;
  *(a9 + 24) = v29;
  v30 = v36;
  *(a9 + 32) = v34;
  *(a9 + 40) = v30;
  *(a9 + 48) = a10;
  *(a9 + 56) = a11;
  *(a9 + 64) = v37;
  *(a9 + 65) = v26;
  *(a9 + 66) = v27;
  v31 = v35;
  *(a9 + 72) = v33;
  *(a9 + 80) = v31;
  return result;
}

uint64_t GenerationRecipe_V7.Prompt.Entity.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GenerationRecipe_V7.Prompt.Entity.range.getter()
{
  v1 = (v0 + *(type metadata accessor for GenerationRecipe_V7.Prompt.Entity(0) + 24));
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t sub_1D2A650C4()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0 != 1)
  {
    v1 = 0x64656D616ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636972656E6567;
  }
}

uint64_t sub_1D2A6511C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2A7512C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2A65144(uint64_t a1)
{
  v2 = sub_1D2A71B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A65180(uint64_t a1)
{
  v2 = sub_1D2A71B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A651C8(uint64_t a1)
{
  v2 = sub_1D2A71C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A65204(uint64_t a1)
{
  v2 = sub_1D2A71C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A6524C(uint64_t a1)
{
  v2 = sub_1D2A71BA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A65288(uint64_t a1)
{
  v2 = sub_1D2A71BA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A652C4(uint64_t a1)
{
  v2 = sub_1D2A71BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A65300(uint64_t a1)
{
  v2 = sub_1D2A71BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V7.Prompt.Entity.Kind.encode(to:)(void *a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704618, &qword_1D2ACBA50);
  v36 = *(v38 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - v3;
  v4 = sub_1D2AC5F94();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704620, &qword_1D2ACBA58);
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704628, &qword_1D2ACBA60);
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v15 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704630, &qword_1D2ACBA68);
  v19 = *(v42 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v22 = &v32 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A71B54();
  v24 = v40;
  sub_1D2AC74A4();
  sub_1D2A71E10(v41, v18, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
  v25 = (*(v24 + 48))(v18, 2, v4);
  if (v25)
  {
    if (v25 == 1)
    {
      v43 = 0;
      sub_1D2A71C50();
      v26 = v42;
      sub_1D2AC7294();
      (*(v32 + 8))(v14, v33);
    }

    else
    {
      v44 = 1;
      sub_1D2A71BFC();
      v26 = v42;
      sub_1D2AC7294();
      (*(v34 + 8))(v10, v35);
    }

    return (*(v19 + 8))(v22, v26);
  }

  else
  {
    v27 = v36;
    (*(v24 + 32))(v39, v18, v4);
    v45 = 2;
    sub_1D2A71BA8();
    v28 = v37;
    v29 = v42;
    sub_1D2AC7294();
    sub_1D2A71CA4(&qword_1EC704648, MEMORY[0x1E69695A8]);
    v30 = v38;
    sub_1D2AC7304();
    (*(v27 + 8))(v28, v30);
    (*(v24 + 8))(v39, v4);
    return (*(v19 + 8))(v22, v29);
  }
}

uint64_t GenerationRecipe_V7.Prompt.Entity.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704660, &qword_1D2ACBA70);
  v4 = *(v3 - 8);
  v60 = v3;
  v61 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v55 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704668, &qword_1D2ACBA78);
  v59 = *(v65 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704670, &qword_1D2ACBA80);
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704678, &qword_1D2ACBA88);
  v66 = *(v13 - 8);
  v14 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - v15;
  v17 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v55 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D2A71B54();
  v26 = v67;
  sub_1D2AC7494();
  if (!v26)
  {
    v27 = v17;
    v55 = v21;
    v56 = v23;
    v28 = v64;
    v29 = v65;
    v67 = 0;
    v30 = v16;
    v31 = sub_1D2AC7284();
    v32 = *(v31 + 16);
    if (!v32 || ((v33 = *(v31 + 32), v32 == 1) ? (v34 = v33 == 3) : (v34 = 1), v34))
    {
      v35 = sub_1D2AC70B4();
      swift_allocError();
      v37 = v36;
      v38 = v13;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90) + 48);
      *v37 = v27;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
      (*(v66 + 8))(v30, v38);
    }

    else
    {
      if (*(v31 + 32))
      {
        v40 = v16;
        if (v33 == 1)
        {
          v70 = 1;
          sub_1D2A71BFC();
          v41 = v67;
          sub_1D2AC71E4();
          v42 = v66;
          if (!v41)
          {
            (*(v59 + 8))(v28, v29);
            (*(v42 + 8))(v16, v13);
            swift_unknownObjectRelease();
            v43 = sub_1D2AC5F94();
            v44 = v56;
            (*(*(v43 - 8) + 56))(v56, 2, 2, v43);
LABEL_20:
            sub_1D2A71CEC(v44, v62);
            return __swift_destroy_boxed_opaque_existential_0(v68);
          }
        }

        else
        {
          v71 = 2;
          sub_1D2A71BA8();
          v46 = v63;
          v47 = v67;
          sub_1D2AC71E4();
          v42 = v66;
          if (!v47)
          {
            v50 = v16;
            v51 = v46;
            v52 = sub_1D2AC5F94();
            sub_1D2A71CA4(&qword_1EC704688, MEMORY[0x1E69695A8]);
            v53 = v55;
            v54 = v60;
            sub_1D2AC7264();
            (*(v61 + 8))(v51, v54);
            (*(v42 + 8))(v50, v13);
            swift_unknownObjectRelease();
            (*(*(v52 - 8) + 56))(v53, 0, 2, v52);
            v44 = v56;
            sub_1D2A71CEC(v53, v56);
            goto LABEL_20;
          }
        }
      }

      else
      {
        v69 = 0;
        sub_1D2A71C50();
        v40 = v16;
        v45 = v67;
        sub_1D2AC71E4();
        if (!v45)
        {
          (*(v57 + 8))(v12, v58);
          (*(v66 + 8))(v16, v13);
          swift_unknownObjectRelease();
          v49 = sub_1D2AC5F94();
          v44 = v56;
          (*(*(v49 - 8) + 56))(v56, 1, 2, v49);
          goto LABEL_20;
        }

        v42 = v66;
      }

      (*(v42 + 8))(v40, v13);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v68);
}

uint64_t sub_1D2A65F9C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D2A65FD0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D2A66004()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D2A66038()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GenerationRecipe_V7.Prompt.Entity.init(text:kind:range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity(0);
  result = sub_1D2A71CEC(a3, a6 + *(v10 + 20));
  v12 = (a6 + *(v10 + 24));
  *v12 = a4;
  v12[1] = a5;
  return result;
}

BOOL static GenerationRecipe_V7.Prompt.Entity.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704690, &qword_1D2ACBA98);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  if (*a1 == *a2 && a1[1] == a2[1] || (v17 = sub_1D2AC7354(), result = 0, (v17 & 1) != 0))
  {
    v33 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity(0);
    v19 = *(v33 + 20);
    v20 = *(v13 + 48);
    sub_1D2A71E10(a1 + v19, v16, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
    sub_1D2A71E10(a2 + v19, &v16[v20], type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
    v21 = *(v5 + 48);
    v22 = v21(v16, 2, v4);
    if (v22)
    {
      if (v22 == 1)
      {
        if (v21(&v16[v20], 2, v4) == 1)
        {
          goto LABEL_13;
        }
      }

      else if (v21(&v16[v20], 2, v4) == 2)
      {
LABEL_13:
        sub_1D2A71E78(v16, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
        v25 = *(v33 + 24);
        v27 = *(a1 + v25);
        v26 = *(a1 + v25 + 8);
        v28 = (a2 + v25);
        v30 = *v28;
        v29 = v28[1];
        return v27 == v30 && v26 == v29;
      }
    }

    else
    {
      sub_1D2A71E10(v16, v12, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
      if (!v21(&v16[v20], 2, v4))
      {
        (*(v5 + 32))(v8, &v16[v20], v4);
        v23 = sub_1D2AC5F74();
        v24 = *(v5 + 8);
        v24(v8, v4);
        v24(v12, v4);
        if ((v23 & 1) == 0)
        {
          sub_1D2A71E78(v16, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
          return 0;
        }

        goto LABEL_13;
      }

      (*(v5 + 8))(v12, v4);
    }

    sub_1D2A2E61C(v16, &qword_1EC704690, &qword_1D2ACBA98);
    return 0;
  }

  return result;
}

uint64_t sub_1D2A66484()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 0x65676E6172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1D2A664CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2A75240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2A664F4(uint64_t a1)
{
  v2 = sub_1D2A71D50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A66530(uint64_t a1)
{
  v2 = sub_1D2A71D50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V7.Prompt.Entity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704698, &unk_1D2ACBAA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A71D50();
  sub_1D2AC74A4();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    v13 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity(0);
    v14 = *(v13 + 20);
    LOBYTE(v17) = 1;
    type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
    sub_1D2A71CA4(&qword_1EC7046A8, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
    sub_1D2AC7304();
    v17 = *(v3 + *(v13 + 24));
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
    sub_1D2A71DA4(&qword_1EC7046B8);
    sub_1D2AC7304();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t GenerationRecipe_V7.Prompt.Entity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046C0, &qword_1D2ACBAB0);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A71D50();
  v28 = v10;
  v16 = v29;
  sub_1D2AC7494();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = v6;
  v18 = v26;
  v19 = v27;
  LOBYTE(v30) = 0;
  *v14 = sub_1D2AC7234();
  v14[1] = v20;
  v24 = v20;
  v29 = v14;
  LOBYTE(v30) = 1;
  sub_1D2A71CA4(&qword_1EC7046C8, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
  sub_1D2AC7264();
  sub_1D2A71CEC(v17, v29 + *(v11 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
  v31 = 2;
  sub_1D2A71DA4(&qword_1EC7046D0);
  sub_1D2AC7264();
  (*(v18 + 8))(v28, v19);
  v21 = *(v11 + 24);
  v22 = v29;
  *(v29 + v21) = v30;
  sub_1D2A71E10(v22, v25, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1D2A71E78(v22, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
}

BOOL sub_1D2A66B98(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1D2AC7354() & 1) == 0 || (_s15ImagePlayground19GenerationRecipe_V7V6PromptV6EntityV4KindO2eeoiySbAI_AItFZ_0(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v9 = *(a1 + v7);
  v8 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v12 = *v10;
  v11 = v10[1];
  return v9 == v12 && v8 == v11;
}

uint64_t GenerationRecipe_V7.Prompt.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

ImagePlayground::GenerationRecipe_V7::Prompt __swiftcall GenerationRecipe_V7.Prompt.init(value:entities:)(Swift::String value, Swift::OpaquePointer entities)
{
  *v2 = value;
  *(v2 + 16) = entities;
  result.value = value;
  result.entities = entities;
  return result;
}

BOOL static GenerationRecipe_V7.Prompt.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2AC7354() & 1) == 0)
  {
    return 0;
  }

  return sub_1D2A66CD8(v2, v3);
}

BOOL sub_1D2A66CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704690, &qword_1D2ACBA98);
  v12 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v44 - v13;
  v53 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity(0);
  v15 = *(*(v53 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v53);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v21 = (&v44 - v20);
  v22 = *(a1 + 16);
  if (v22 == *(a2 + 16))
  {
    if (!v22 || a1 == a2)
    {
      return 1;
    }

    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v52 = (v5 + 48);
    v44 = (v5 + 32);
    v45 = v14;
    v46 = (v5 + 8);
    v49 = *(v19 + 72);
    v50 = v4;
    while (1)
    {
      sub_1D2A71E10(v24, v21, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
      sub_1D2A71E10(v25, v18, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
      v26 = *v21 == *v18 && v21[1] == v18[1];
      if (!v26 && (sub_1D2AC7354() & 1) == 0)
      {
        break;
      }

      v27 = *(v53 + 20);
      v28 = *(v51 + 48);
      sub_1D2A71E10(v21 + v27, v14, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
      sub_1D2A71E10(v18 + v27, &v14[v28], type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
      v29 = *v52;
      v30 = v50;
      v31 = (*v52)(v14, 2, v50);
      if (v31)
      {
        if (v31 == 1)
        {
          if (v29(&v14[v28], 2, v30) != 1)
          {
            goto LABEL_24;
          }
        }

        else if (v29(&v14[v28], 2, v30) != 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1D2A71E10(v14, v11, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
        if (v29(&v14[v28], 2, v30))
        {
          (*v46)(v11, v30);
LABEL_24:
          sub_1D2A2E61C(v14, &qword_1EC704690, &qword_1D2ACBA98);
          break;
        }

        v32 = v11;
        v33 = v48;
        (*v44)(v48, &v14[v28], v30);
        v47 = sub_1D2AC5F74();
        v34 = v30;
        v35 = *v46;
        v36 = v33;
        v11 = v32;
        (*v46)(v36, v34);
        v35(v32, v34);
        v14 = v45;
        if ((v47 & 1) == 0)
        {
          sub_1D2A71E78(v45, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
          break;
        }
      }

      sub_1D2A71E78(v14, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
      v37 = *(v53 + 24);
      v38 = v21 + v37;
      v39 = *(v21 + v37);
      v40 = (v18 + v37);
      if (v39 != *v40)
      {
        break;
      }

      v41 = v40[1];
      v42 = *(v38 + 1);
      sub_1D2A71E78(v18, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
      sub_1D2A71E78(v21, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
      result = v42 == v41;
      if (v42 == v41)
      {
        v25 += v49;
        v24 += v49;
        if (--v22)
        {
          continue;
        }
      }

      return result;
    }

    sub_1D2A71E78(v18, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
    sub_1D2A71E78(v21, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
  }

  return 0;
}

BOOL sub_1D2A67270(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704C08, &qword_1D2ACE610);
  v12 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v44 - v13;
  v53 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity(0);
  v15 = *(*(v53 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v53);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v21 = (&v44 - v20);
  v22 = *(a1 + 16);
  if (v22 == *(a2 + 16))
  {
    if (!v22 || a1 == a2)
    {
      return 1;
    }

    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v52 = (v5 + 48);
    v44 = (v5 + 32);
    v45 = v14;
    v46 = (v5 + 8);
    v49 = *(v19 + 72);
    v50 = v4;
    while (1)
    {
      sub_1D2A71E10(v24, v21, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
      sub_1D2A71E10(v25, v18, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
      v26 = *v21 == *v18 && v21[1] == v18[1];
      if (!v26 && (sub_1D2AC7354() & 1) == 0)
      {
        break;
      }

      v27 = *(v53 + 20);
      v28 = *(v51 + 48);
      sub_1D2A71E10(v21 + v27, v14, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
      sub_1D2A71E10(v18 + v27, &v14[v28], type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
      v29 = *v52;
      v30 = v50;
      v31 = (*v52)(v14, 2, v50);
      if (v31)
      {
        if (v31 == 1)
        {
          if (v29(&v14[v28], 2, v30) != 1)
          {
            goto LABEL_24;
          }
        }

        else if (v29(&v14[v28], 2, v30) != 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1D2A71E10(v14, v11, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
        if (v29(&v14[v28], 2, v30))
        {
          (*v46)(v11, v30);
LABEL_24:
          sub_1D2A2E61C(v14, &qword_1EC704C08, &qword_1D2ACE610);
          break;
        }

        v32 = v11;
        v33 = v48;
        (*v44)(v48, &v14[v28], v30);
        v47 = sub_1D2AC5F74();
        v34 = v30;
        v35 = *v46;
        v36 = v33;
        v11 = v32;
        (*v46)(v36, v34);
        v35(v32, v34);
        v14 = v45;
        if ((v47 & 1) == 0)
        {
          sub_1D2A71E78(v45, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
          break;
        }
      }

      sub_1D2A71E78(v14, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
      v37 = *(v53 + 24);
      v38 = v21 + v37;
      v39 = *(v21 + v37);
      v40 = (v18 + v37);
      if (v39 != *v40)
      {
        break;
      }

      v41 = v40[1];
      v42 = *(v38 + 1);
      sub_1D2A71E78(v18, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
      sub_1D2A71E78(v21, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
      result = v42 == v41;
      if (v42 == v41)
      {
        v25 += v49;
        v24 += v49;
        if (--v22)
        {
          continue;
        }
      }

      return result;
    }

    sub_1D2A71E78(v18, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
    sub_1D2A71E78(v21, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
  }

  return 0;
}

uint64_t sub_1D2A67808(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, _BYTE *), uint64_t (*a4)(__int128 *, __int128 *), void (*a5)(_OWORD *))
{
  v7 = *(a1 + 16);
  if (v7 != *(a2 + 16))
  {
    return 0;
  }

  if (!v7 || a1 == a2)
  {
    return 1;
  }

  v47 = v5;
  v48 = v6;
  v11 = a1 + 32;
  v12 = a2 + 32;
  for (i = v7 - 1; ; --i)
  {
    v14 = *(v11 + 48);
    v34 = *(v11 + 32);
    v35 = v14;
    v36 = *(v11 + 64);
    v37 = *(v11 + 80);
    v15 = *(v11 + 16);
    v33[0] = *v11;
    v33[1] = v15;
    v32 = v37;
    v29 = v34;
    v30 = v14;
    v31 = v36;
    v27 = v33[0];
    v28 = v15;
    v16 = *(v12 + 48);
    v39 = *(v12 + 32);
    v40 = v16;
    v41 = *(v12 + 64);
    v42 = *(v12 + 80);
    v17 = *(v12 + 16);
    v38[0] = *v12;
    v38[1] = v17;
    v26 = v42;
    v22 = v17;
    v23 = v39;
    v24 = v16;
    v25 = v41;
    v21 = v38[0];
    a3(v33, v20);
    a3(v38, v20);
    v18 = a4(&v27, &v21);
    v43[2] = v23;
    v43[3] = v24;
    v43[4] = v25;
    v44 = v26;
    v43[0] = v21;
    v43[1] = v22;
    a5(v43);
    v45[2] = v29;
    v45[3] = v30;
    v45[4] = v31;
    v46 = v32;
    v45[0] = v27;
    v45[1] = v28;
    a5(v45);
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v12 += 88;
    v11 += 88;
  }

  return 1;
}

BOOL sub_1D2A679A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704C00, &qword_1D2ACE608);
  v12 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v44 - v13;
  v53 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity(0);
  v15 = *(*(v53 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v53);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v21 = (&v44 - v20);
  v22 = *(a1 + 16);
  if (v22 == *(a2 + 16))
  {
    if (!v22 || a1 == a2)
    {
      return 1;
    }

    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v52 = (v5 + 48);
    v44 = (v5 + 32);
    v45 = v14;
    v46 = (v5 + 8);
    v49 = *(v19 + 72);
    v50 = v4;
    while (1)
    {
      sub_1D2A71E10(v24, v21, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
      sub_1D2A71E10(v25, v18, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
      v26 = *v21 == *v18 && v21[1] == v18[1];
      if (!v26 && (sub_1D2AC7354() & 1) == 0)
      {
        break;
      }

      v27 = *(v53 + 20);
      v28 = *(v51 + 48);
      sub_1D2A71E10(v21 + v27, v14, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
      sub_1D2A71E10(v18 + v27, &v14[v28], type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
      v29 = *v52;
      v30 = v50;
      v31 = (*v52)(v14, 2, v50);
      if (v31)
      {
        if (v31 == 1)
        {
          if (v29(&v14[v28], 2, v30) != 1)
          {
            goto LABEL_24;
          }
        }

        else if (v29(&v14[v28], 2, v30) != 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1D2A71E10(v14, v11, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
        if (v29(&v14[v28], 2, v30))
        {
          (*v46)(v11, v30);
LABEL_24:
          sub_1D2A2E61C(v14, &qword_1EC704C00, &qword_1D2ACE608);
          break;
        }

        v32 = v11;
        v33 = v48;
        (*v44)(v48, &v14[v28], v30);
        v47 = sub_1D2AC5F74();
        v34 = v30;
        v35 = *v46;
        v36 = v33;
        v11 = v32;
        (*v46)(v36, v34);
        v35(v32, v34);
        v14 = v45;
        if ((v47 & 1) == 0)
        {
          sub_1D2A71E78(v45, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
          break;
        }
      }

      sub_1D2A71E78(v14, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
      v37 = *(v53 + 24);
      v38 = v21 + v37;
      v39 = *(v21 + v37);
      v40 = (v18 + v37);
      if (v39 != *v40)
      {
        break;
      }

      v41 = v40[1];
      v42 = *(v38 + 1);
      sub_1D2A71E78(v18, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
      sub_1D2A71E78(v21, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
      result = v42 == v41;
      if (v42 == v41)
      {
        v25 += v49;
        v24 += v49;
        if (--v22)
        {
          continue;
        }
      }

      return result;
    }

    sub_1D2A71E78(v18, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
    sub_1D2A71E78(v21, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
  }

  return 0;
}

uint64_t sub_1D2A67F00(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v45 = v2;
  v46 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v31 = v5[2];
    v32 = v8;
    *v33 = v5[4];
    *&v33[16] = *(v5 + 10);
    v9 = v5[1];
    v29 = *v5;
    v30 = v9;
    v10 = v6[3];
    v36 = v6[2];
    v37 = v10;
    *v38 = v6[4];
    *&v38[16] = *(v6 + 10);
    v11 = v6[1];
    v34 = *v6;
    v35 = v11;
    v12 = *v33 >> 61;
    v13 = v30;
    if ((*v33 >> 61) > 2)
    {
      if (v12 == 3)
      {
        if (*v38 >> 61 != 3)
        {
          return 0;
        }
      }

      else
      {
        if (v12 == 4)
        {
          if (*v38 >> 61 != 4)
          {
            return 0;
          }

          v16 = v35;
          v25 = v34;
          v26 = i;
          v17 = *(&v34 + 1);
          if (*(&v30 + 1))
          {
            v18 = *(&v30 + 1);
          }

          else
          {
            v13 = 0;
            v18 = 0xE000000000000000;
          }

          v28 = v29;
          sub_1D2A75F30(&v34, v27);
          sub_1D2A75F30(&v29, v27);

          MEMORY[0x1D38A7100](v13, v18);

          v19 = v28;
          if (*(&v16 + 1))
          {
            v20 = v16;
          }

          else
          {
            v20 = 0;
          }

          if (*(&v16 + 1))
          {
            v21 = *(&v16 + 1);
          }

          else
          {
            v21 = 0xE000000000000000;
          }

          *&v27[0] = v25;
          *(&v27[0] + 1) = v17;

          MEMORY[0x1D38A7100](v20, v21);

          if (v19 == v27[0])
          {

            sub_1D2A75F8C(&v34);
            sub_1D2A75F8C(&v29);
            i = v26;
          }

          else
          {
            v23 = sub_1D2AC7354();

            sub_1D2A75F8C(&v34);
            sub_1D2A75F8C(&v29);
            i = v26;
            if ((v23 & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_39;
        }

        if (*v38 >> 61 != 5)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v12)
      {
        if (v12 == 1)
        {
          if (*v38 >> 61 != 1)
          {
            return 0;
          }

          v14 = v35;
          if (v29 != v34 && (sub_1D2AC7354() & 1) == 0)
          {
            return 0;
          }

          sub_1D2A75F30(&v34, v27);
          sub_1D2A75F30(&v29, v27);
          v15 = sub_1D2A682B4(v13, v14);
        }

        else
        {
          v39[0] = v29;
          v39[1] = v30;
          v39[2] = v31;
          v39[3] = v32;
          v40 = *v33 & 0x1FFFFFFFFFFFFFFFLL;
          v41 = *&v33[8];
          if (*v38 >> 61 != 2)
          {
            return 0;
          }

          v42[0] = v34;
          v42[1] = v35;
          v42[2] = v36;
          v42[3] = v37;
          v43 = *v38 & 0x1FFFFFFFFFFFFFFFLL;
          v44 = *&v38[8];
          sub_1D2A75F30(&v34, v27);
          sub_1D2A75F30(&v29, v27);
          v15 = sub_1D2A8DD08(v39, v42);
        }

        v22 = v15;
        sub_1D2A75F8C(&v34);
        sub_1D2A75F8C(&v29);
        if ((v22 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_39;
      }

      if (*v38 >> 61)
      {
        return 0;
      }
    }

    if (v29 != v34 && (sub_1D2AC7354() & 1) == 0)
    {
      return 0;
    }

LABEL_39:
    if (!i)
    {
      break;
    }

    v6 = (v6 + 88);
    v5 = (v5 + 88);
  }

  return 1;
}