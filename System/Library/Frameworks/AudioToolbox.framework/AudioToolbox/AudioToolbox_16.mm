void AU::BSS1::Handset<float>::ScaleMDP(uint64_t a1, float ****a2, uint64_t *a3)
{
  AU::BSS1::Handset<float>::VectorizedDetInverseOf2x2(a1, a2, (a1 + 128));
  v6 = **a2;
  v7 = *v6;
  v8 = v6[3];
  v9 = (*a2)[9];
  v10 = *v9;
  v11 = v9[3];
  v12 = **a3;
  v13 = *v12;
  v14 = v12[3];
  v15 = *(a1 + 60);
  __A.realp = v7;
  __A.imagp = v8;
  __B.realp = v10;
  __B.imagp = v11;
  v68.realp = v13;
  v68.imagp = v14;
  vDSP_zvmul(&__A, 1, &__B, 1, &v68, 1, v15, 1);
  v16 = (*a2)[9];
  v17 = *v16;
  v18 = v16[3];
  v19 = (*a2)[3];
  v20 = *v19;
  v21 = v19[3];
  v22 = *(*a3 + 24);
  v23 = *v22;
  v24 = v22[3];
  v25 = *(a1 + 60);
  __A.realp = v17;
  __A.imagp = v18;
  __B.realp = v20;
  __B.imagp = v21;
  v68.realp = v23;
  v68.imagp = v24;
  vDSP_zvmul(&__A, 1, &__B, 1, &v68, 1, v25, 1);
  v26 = **a2;
  v27 = *v26;
  v28 = v26[3];
  v29 = (*a2)[6];
  v30 = *v29;
  v31 = v29[3];
  v32 = *(*a3 + 48);
  v33 = *v32;
  v34 = v32[3];
  v35 = *(a1 + 60);
  __A.realp = v27;
  __A.imagp = v28;
  __B.realp = v30;
  __B.imagp = v31;
  v68.realp = v33;
  v68.imagp = v34;
  vDSP_zvmul(&__A, 1, &__B, 1, &v68, 1, v35, 1);
  v36 = **a3;
  v37 = *v36;
  v38 = v36[3];
  v39 = *(*a3 + 72);
  v40 = *v39;
  v41 = v39[3];
  v42 = *(a1 + 60);
  __A.realp = v37;
  __A.imagp = v38;
  __B.realp = v40;
  __B.imagp = v41;
  vDSP_zvmov(&__A, 1, &__B, 1, v42);
  for (i = 0; i != 96; i += 24)
  {
    v44 = *(a1 + 128);
    v45 = *v44;
    v46 = v44[3];
    v47 = *(*a3 + i);
    v48 = *v47;
    v49 = v47[3];
    v50 = *(a1 + 60);
    __A.realp = v45;
    __A.imagp = v46;
    __B.realp = v48;
    __B.imagp = v49;
    v68.realp = v48;
    v68.imagp = v49;
    vDSP_zvmul(&__A, 1, &__B, 1, &v68, 1, v50, 1);
  }

  AU::BSS1::Handset<float>::ClearDCAndNyquist(*(a1 + 60), *a3);
  v51 = **a3;
  v52 = *v51;
  v53 = v51[3];
  v54 = **(a1 + 336);
  v55 = *(a1 + 60);
  __A.realp = v52;
  __A.imagp = v53;
  vDSP_zvabs(&__A, 1, v54, 1, v55);
  v56 = *(*a3 + 48);
  v57 = *v56;
  v58 = v56[3];
  v59 = *(*(a1 + 336) + 24);
  v60 = *(a1 + 60);
  __A.realp = v57;
  __A.imagp = v58;
  vDSP_zvabs(&__A, 1, v59, 1, v60);
  v61 = *(*a3 + 24);
  v62 = *v61;
  v63 = v61[3];
  v64 = *(*(a1 + 336) + 48);
  v65 = *(a1 + 60);
  __A.realp = v62;
  __A.imagp = v63;
  vDSP_zvabs(&__A, 1, v64, 1, v65);
  v66 = *(a1 + 336);
  v67 = *(v66 + 8);
  if (v67 != *v66)
  {
    memmove(*(v66 + 72), *v66, v67 - *v66);
  }
}

void AU::BSS1::Handset<float>::GenerateOutput(uint64_t a1, float ****a2, float ****a3, float ****a4)
{
  v8 = **a4;
  v9 = *v8;
  v10 = v8[3];
  v11 = **a2;
  v12 = *v11;
  v13 = v11[3];
  v14 = *(a1 + 128);
  v15 = *v14;
  v16 = v14[3];
  v17 = *(a1 + 60);
  __A.realp = v9;
  __A.imagp = v10;
  __B.realp = v12;
  __B.imagp = v13;
  v68.realp = v15;
  v68.imagp = v16;
  vDSP_zvmul(&__A, 1, &__B, 1, &v68, 1, v17, 1);
  v18 = (*a4)[3];
  v19 = *v18;
  v20 = v18[3];
  v21 = (*a2)[3];
  v22 = *v21;
  v23 = v21[3];
  v24 = *(a1 + 152);
  v25 = *v24;
  v26 = v24[3];
  v27 = *(a1 + 60);
  __A.realp = v19;
  __A.imagp = v20;
  __B.realp = v22;
  __B.imagp = v23;
  v68.realp = v25;
  v68.imagp = v26;
  vDSP_zvmul(&__A, 1, &__B, 1, &v68, 1, v27, 1);
  v28 = *(a1 + 128);
  v29 = *v28;
  v30 = v28[3];
  v31 = *(a1 + 152);
  v32 = *v31;
  v33 = v31[3];
  v34 = **a3;
  v35 = *v34;
  v36 = v34[3];
  v37 = *(a1 + 60);
  __A.realp = v29;
  __A.imagp = v30;
  __B.realp = v32;
  __B.imagp = v33;
  v68.realp = v35;
  v68.imagp = v36;
  vDSP_zvadd(&__A, 1, &__B, 1, &v68, 1, v37);
  v38 = **a2;
  v39 = *v38;
  v40 = v38[3];
  v41 = (*a4)[6];
  v42 = *v41;
  v43 = v41[3];
  v44 = *(a1 + 128);
  v45 = *v44;
  v46 = v44[3];
  v47 = *(a1 + 60);
  __A.realp = v39;
  __A.imagp = v40;
  __B.realp = v42;
  __B.imagp = v43;
  v68.realp = v45;
  v68.imagp = v46;
  vDSP_zvmul(&__A, 1, &__B, 1, &v68, 1, v47, 1);
  v48 = (*a2)[3];
  v49 = *v48;
  v50 = v48[3];
  v51 = (*a4)[9];
  v52 = *v51;
  v53 = v51[3];
  v54 = *(a1 + 152);
  v55 = *v54;
  v56 = v54[3];
  v57 = *(a1 + 60);
  __A.realp = v49;
  __A.imagp = v50;
  __B.realp = v52;
  __B.imagp = v53;
  v68.realp = v55;
  v68.imagp = v56;
  vDSP_zvmul(&__A, 1, &__B, 1, &v68, 1, v57, 1);
  v58 = *(a1 + 128);
  v59 = *v58;
  v60 = v58[3];
  v61 = *(a1 + 152);
  v62 = *v61;
  v63 = v61[3];
  v64 = (*a3)[3];
  v65 = *v64;
  v66 = v64[3];
  v67 = *(a1 + 60);
  __A.realp = v59;
  __A.imagp = v60;
  __B.realp = v62;
  __B.imagp = v63;
  v68.realp = v65;
  v68.imagp = v66;
  vDSP_zvadd(&__A, 1, &__B, 1, &v68, 1, v67);
}

void AU::BSS1::Handset<float>::VectorizedDetInverseOf2x2(uint64_t a1, float ****a2, float ***a3)
{
  v6 = **a2;
  v7 = *v6;
  v8 = v6[3];
  v9 = (*a2)[9];
  v10 = *v9;
  v11 = v9[3];
  v12 = *(a1 + 128);
  v13 = *v12;
  v14 = v12[3];
  v15 = *(a1 + 60);
  __A.realp = v7;
  __A.imagp = v8;
  __B.realp = v10;
  __B.imagp = v11;
  v39.realp = v13;
  v39.imagp = v14;
  vDSP_zvmul(&__A, 1, &__B, 1, &v39, 1, v15, 1);
  v16 = (*a2)[3];
  v17 = *v16;
  v18 = v16[3];
  v19 = (*a2)[6];
  v20 = *v19;
  v21 = v19[3];
  v22 = *(a1 + 152);
  v23 = *v22;
  v24 = v22[3];
  v25 = *(a1 + 60);
  __A.realp = v17;
  __A.imagp = v18;
  __B.realp = v20;
  __B.imagp = v21;
  v39.realp = v23;
  v39.imagp = v24;
  vDSP_zvmul(&__A, 1, &__B, 1, &v39, 1, v25, 1);
  v26 = *(a1 + 128);
  v27 = *v26;
  v28 = v26[3];
  v29 = *(a1 + 152);
  v30 = *v29;
  v31 = v29[3];
  v32 = *(a1 + 60);
  __A.realp = v27;
  __A.imagp = v28;
  __B.realp = v30;
  __B.imagp = v31;
  v39.realp = v30;
  v39.imagp = v31;
  vDSP_zvsub(&__A, 1, &__B, 1, &v39, 1, v32);
  MEMORY[0x1E12BE8A0](**(a1 + 152), 1, a1 + 56, **(a1 + 152), 1, *(a1 + 60));
  v33 = *(a1 + 152);
  v34 = *v33;
  v35 = v33[3];
  v36 = **a3;
  v37 = (*a3)[3];
  v38 = *(a1 + 60);
  __A.realp = (a1 + 48);
  __A.imagp = (a1 + 52);
  __B.realp = v34;
  __B.imagp = v35;
  v39.realp = v36;
  v39.imagp = v37;
  vDSP_zvdiv(&__B, 1, &__A, 0, &v39, 1, v38);
}

uint64_t AU::BSS1::Handset<float>::ClearDCAndNyquist(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  v3 = **a2;
  *v3 = 1065353216;
  v4 = *(a2 + 24);
  v5 = *v4;
  *v5 = 0;
  v6 = *(a2 + 48);
  v7 = *v6;
  *v7 = 0;
  v8 = *(a2 + 72);
  v9 = *v8;
  *v9 = 1065353216;
  v10 = v2[3];
  *v10 = 0;
  v11 = *(v4 + 24);
  *v11 = 0;
  v12 = *(v6 + 24);
  *v12 = 0;
  v13 = *(v8 + 24);
  *v13 = 0;
  v14 = result - 1;
  v3[v14] = 1065353216;
  v5[v14] = 0;
  v7[v14] = 0;
  v9[v14] = 1065353216;
  v10[v14] = 0;
  v11[v14] = 0;
  v12[v14] = 0;
  v13[v14] = 0;
  return result;
}

float AU::BSS1::Handset<float>::Reset(uint64_t a1, double a2)
{
  if (*(a1 + 8) != 1)
  {
    return *&a2;
  }

  v109[11] = v2;
  v109[12] = v3;
  LODWORD(v109[0]) = 0;
  std::vector<float>::resize((a1 + 528), 2uLL, v109, *&a2);
  LODWORD(v109[0]) = 0;
  std::vector<float>::resize((a1 + 768), 2uLL, v109, v5);
  LODWORD(v109[0]) = 0;
  std::vector<float>::resize((a1 + 792), 2uLL, v109, v6);
  LODWORD(v109[0]) = 0;
  std::vector<float>::resize((a1 + 624), 2uLL, v109, v7);
  v8 = *(a1 + 60);
  LODWORD(v109[0]) = 0;
  std::vector<float>::resize((a1 + 656), v8, v109, v9);
  v10 = *(a1 + 60);
  LODWORD(v109[0]) = 0;
  std::vector<float>::resize((a1 + 680), v10, v109, v11);
  v12 = *(a1 + 60);
  LODWORD(v109[0]) = 1065353216;
  std::vector<float>::resize((a1 + 576), v12, v109, v13);
  v14 = *(a1 + 60);
  LODWORD(v109[0]) = 1065353216;
  std::vector<float>::resize((a1 + 208), v14, v109, v15);
  v16 = *(a1 + 60);
  v17 = 0.01 / (2 * v16 - 2);
  *&v17 = v17;
  LODWORD(v109[0]) = LODWORD(v17);
  std::vector<float>::resize((a1 + 600), v16, v109, *&v17);
  std::vector<std::vector<std::vector<float>>>::resize((a1 + 80), 2uLL);
  v18 = 0;
  v19 = 1;
  do
  {
    v20 = v19;
    v21 = 3 * v18;
    std::vector<std::vector<float>>::resize((*(a1 + 80) + 24 * v18), 2uLL);
    v22 = *(*(a1 + 80) + 8 * v21);
    v23 = *(a1 + 60);
    LODWORD(v109[0]) = 0;
    std::vector<float>::resize(v22, v23, v109, v24);
    v25 = *(*(a1 + 80) + 8 * v21);
    v26 = *(a1 + 60);
    LODWORD(v109[0]) = 0;
    std::vector<float>::resize((v25 + 24), v26, v109, v27);
    v19 = 0;
    v18 = 1;
  }

  while ((v20 & 1) != 0);
  v29 = (a1 + 456);
  v30 = *(a1 + 456);
  v31 = *(a1 + 464);
  v32 = v31 - v30;
  v33 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3);
  if (v33 <= 1)
  {
    v34 = 2 - v33;
    v35 = *(a1 + 472);
    if (0xAAAAAAAAAAAAAAABLL * ((v35 - v31) >> 3) < v34)
    {
      v109[4] = (a1 + 456);
      v36 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v30) >> 3);
      v37 = 2 * v36;
      if (2 * v36 <= 2)
      {
        v37 = 2;
      }

      if (v36 >= 0x555555555555555)
      {
        v38 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v38 = v37;
      }

      std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](v38);
    }

    v40 = 24 * ((24 - v32) / 0x18uLL) + 24;
    bzero(*(a1 + 464), v40);
    v39 = (v31 + v40);
    goto LABEL_16;
  }

  if (v32 != 48)
  {
    v39 = (v30 + 48);
    while (v31 != v39)
    {
      v31 -= 3;
      v109[0] = v31;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v109);
    }

LABEL_16:
    *(a1 + 464) = v39;
    goto LABEL_17;
  }

  v39 = *(a1 + 464);
LABEL_17:
  v41 = *v29;
  if (v39 != *v29)
  {
    v42 = 0;
    do
    {
      std::vector<std::vector<std::vector<float>>>::resize(&v41[3 * v42], 4uLL);
      for (i = 0; i != 96; i += 24)
      {
        std::vector<std::vector<float>>::resize((*(*(a1 + 456) + 24 * v42) + i), 2uLL);
        v44 = *(*(*(a1 + 456) + 24 * v42) + i);
        v45 = *(a1 + 60);
        LODWORD(v109[0]) = 0;
        std::vector<float>::resize(v44, v45, v109, v46);
        v47 = *(*(*(a1 + 456) + 24 * v42) + i);
        v48 = *(a1 + 60);
        LODWORD(v109[0]) = 0;
        std::vector<float>::resize((v47 + 24), v48, v109, v49);
      }

      ++v42;
      v41 = *(a1 + 456);
    }

    while (v42 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 464) - v41) >> 3));
  }

  v50 = 0;
  v51 = 1;
  do
  {
    v52 = v51;
    v53 = 3 * v50;
    std::vector<float>::assign(**(*(a1 + 456) + 24 * v50), *(a1 + 60), (a1 + 292), v28);
    std::vector<float>::assign(*(*(*(a1 + 456) + 8 * v53) + 72), *(a1 + 60), (a1 + 292), v54);
    v51 = 0;
    v50 = 1;
  }

  while ((v52 & 1) != 0);
  LODWORD(v109[0]) = 0;
  std::vector<float>::resize((a1 + 360), 2uLL, v109, v28);
  std::vector<std::vector<float>>::resize((a1 + 336), 4uLL);
  v56 = *(a1 + 336);
  if (*(a1 + 344) != v56)
  {
    v57 = 0;
    v58 = 0;
    do
    {
      v59 = *(a1 + 60);
      LODWORD(v109[0]) = 0;
      std::vector<float>::resize((v56 + v57), v59, v109, v55);
      ++v58;
      v56 = *(a1 + 336);
      v57 += 24;
    }

    while (v58 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 344) - v56) >> 3));
  }

  v60 = *(a1 + 60);
  LODWORD(v109[0]) = 0;
  std::vector<float>::resize((a1 + 384), v60, v109, v55);
  v61 = *(a1 + 60);
  if (v61)
  {
    v62 = 0;
    v63 = *(a1 + 384);
    do
    {
      v64 = *(a1 + 280) / (vcvtd_n_f64_u64(v62, 1uLL) * v62 + 1.0);
      *(v63 + 4 * v62++) = v64;
    }

    while (v61 != v62);
  }

  std::vector<std::vector<std::vector<float>>>::resize((a1 + 408), 4uLL);
  for (j = 0; j != 4; ++j)
  {
    std::vector<std::vector<float>>::resize((*(a1 + 408) + 24 * j), 2uLL);
    v66 = *(*(a1 + 408) + 24 * j);
    v67 = *(a1 + 60);
    LODWORD(v109[0]) = 0;
    std::vector<float>::resize(v66, v67, v109, v68);
    v69 = *(*(a1 + 408) + 24 * j);
    v70 = *(a1 + 60);
    LODWORD(v109[0]) = 0;
    std::vector<float>::resize((v69 + 24), v70, v109, v71);
    v72 = *(a1 + 60);
    if (v72)
    {
      v73 = 0;
      v74 = 4 * v72;
      do
      {
        if (j == 3 || !j)
        {
          *(**(*(a1 + 408) + 24 * j) + v73) = 1065353216;
        }

        v73 += 4;
      }

      while (v74 != v73);
    }
  }

  std::vector<std::vector<std::vector<float>>>::__assign_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(a1 + 432, *(a1 + 408), *(a1 + 416), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 416) - *(a1 + 408)) >> 3));
  std::vector<std::vector<std::vector<float>>>::resize((a1 + 104), 4uLL);
  for (k = 0; k != 96; k += 24)
  {
    std::vector<std::vector<float>>::resize((*(a1 + 104) + k), 2uLL);
    v76 = *(*(a1 + 104) + k);
    v77 = *(a1 + 60);
    LODWORD(v109[0]) = 0;
    std::vector<float>::resize(v76, v77, v109, v78);
    v79 = *(*(a1 + 104) + k);
    v80 = *(a1 + 60);
    LODWORD(v109[0]) = 0;
    std::vector<float>::resize((v79 + 24), v80, v109, v81);
  }

  std::vector<std::vector<float>>::resize((a1 + 128), 2uLL);
  std::vector<std::vector<float>>::resize((a1 + 152), 2uLL);
  v83 = 0;
  v84 = 1;
  do
  {
    v85 = v84;
    v86 = 3 * v83;
    v87 = (*(a1 + 128) + 24 * v83);
    v88 = *(a1 + 60);
    LODWORD(v109[0]) = 0;
    std::vector<float>::resize(v87, v88, v109, v82);
    v89 = (*(a1 + 152) + 8 * v86);
    v90 = *(a1 + 60);
    LODWORD(v109[0]) = 0;
    std::vector<float>::resize(v89, v90, v109, v91);
    v84 = 0;
    v83 = 1;
  }

  while ((v85 & 1) != 0);
  std::vector<std::vector<float>>::resize((a1 + 232), 2uLL);
  std::vector<std::vector<float>>::resize((a1 + 256), 2uLL);
  v93 = 0;
  v94 = 1;
  do
  {
    v95 = v94;
    v96 = 3 * v93;
    v97 = (*(a1 + 232) + 24 * v93);
    v98 = *(a1 + 60);
    LODWORD(v109[0]) = 0;
    std::vector<float>::resize(v97, v98, v109, v92);
    v99 = (*(a1 + 232) + 8 * v96);
    v100 = *(a1 + 60);
    LODWORD(v109[0]) = 0;
    std::vector<float>::resize(v99, v100, v109, v101);
    v102 = (*(a1 + 256) + 8 * v96);
    v103 = *(a1 + 60);
    LODWORD(v109[0]) = 0;
    std::vector<float>::resize(v102, v103, v109, v104);
    v105 = (*(a1 + 256) + 8 * v96);
    v106 = *(a1 + 60);
    LODWORD(v109[0]) = 0;
    std::vector<float>::resize(v105, v106, v109, v107);
    v94 = 0;
    v93 = 1;
  }

  while ((v95 & 1) != 0);
  *&a2 = ((*(a1 + 740) * *(a1 + 64)) / *(a1 + 68)) + 1.0;
  *(a1 + 732) = LODWORD(a2);
  *(a1 + 320) = 0;
  *(a1 + 520) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  return *&a2;
}

uint64_t std::__split_buffer<std::vector<std::vector<std::vector<float>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t AU::BSS1::Handset<float>::Init(uint64_t a1, int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a5 < 0.0 || a2 != 2 || a3 < a4)
  {
    return 1;
  }

  *(a1 + 60) = a3;
  *(a1 + 64) = a5;
  *(a1 + 68) = a4;
  v9 = a5 / a4;
  *(a1 + 72) = v9;
  v10 = a5 / (a3 + -1.0 + a3 + -1.0);
  v11 = a3 - 1;
  v12 = vcvtas_u32_f32(fabsf(*(a1 + 196) / v10));
  if (v12 >= a3 - 1)
  {
    v12 = a3 - 1;
  }

  *(a1 + 200) = v12;
  v13 = vcvtas_u32_f32(fabsf(*(a1 + 304) / v10));
  if (v13 >= v11)
  {
    v13 = a3 - 1;
  }

  *(a1 + 308) = v13;
  v14 = vcvtas_u32_f32(fabsf(*(a1 + 496) / v10));
  if (v14 >= v11)
  {
    v14 = a3 - 1;
  }

  *(a1 + 500) = v14;
  v15 = vcvtas_u32_f32(fabsf(*(a1 + 504) / v10));
  if (v15 < v11)
  {
    v11 = v15;
  }

  *(a1 + 508) = v11;
  v16 = 0.0;
  v17 = 0.0;
  if (v9 > 0.0)
  {
    v18 = *(a1 + 312);
    if (v18 > 0.0)
    {
      v17 = exp(-1.0 / (v9 * v18));
    }
  }

  *(a1 + 316) = v17;
  if (v9 > 0.0)
  {
    v19 = *(a1 + 184);
    if (v19 > 0.0)
    {
      v16 = exp(-1.0 / (v9 * v19));
    }
  }

  *(a1 + 188) = v16;
  v20 = 0.0;
  v21 = 0.0;
  if (v9 > 0.0)
  {
    v22 = *(a1 + 552);
    if (v22 > 0.0)
    {
      v21 = exp(-1.0 / (v9 * v22));
    }
  }

  *(a1 + 556) = v21;
  if (v9 > 0.0)
  {
    v23 = *(a1 + 704);
    if (v23 > 0.0)
    {
      v20 = exp(-1.0 / (v9 * v23));
    }
  }

  *(a1 + 708) = v20;
  v24 = 0.0;
  v25 = 0.0;
  if (v9 > 0.0)
  {
    v26 = *(a1 + 712);
    if (v26 > 0.0)
    {
      v25 = exp(-1.0 / (v9 * v26));
    }
  }

  *(a1 + 716) = v25;
  if (v9 > 0.0)
  {
    v27 = *(a1 + 816);
    if (v27 > 0.0)
    {
      v24 = exp(-1.0 / (v9 * v27));
    }
  }

  *(a1 + 820) = v24;
  v28 = 0.0;
  if (v9 > 0.0)
  {
    v29 = *(a1 + 648);
    if (v29 > 0.0)
    {
      v28 = exp(-1.0 / (v9 * v29));
    }
  }

  *(a1 + 652) = v28;
  *(a1 + 8) = 1;
  (*(*a1 + 24))(a1);
  return 0;
}

void AU::BSS1::Handset<float>::~Handset(uint64_t a1)
{
  AU::BSS1::Handset<float>::~Handset(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t AU::BSS1::Handset<float>::~Handset(uint64_t a1)
{
  *a1 = &unk_1F591F060;
  v2 = *(a1 + 792);
  if (v2)
  {
    *(a1 + 800) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 768);
  if (v3)
  {
    *(a1 + 776) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 680);
  if (v4)
  {
    *(a1 + 688) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 656);
  if (v5)
  {
    *(a1 + 664) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 624);
  if (v6)
  {
    *(a1 + 632) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 600);
  if (v7)
  {
    *(a1 + 608) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 576);
  if (v8)
  {
    *(a1 + 584) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 528);
  if (v9)
  {
    *(a1 + 536) = v9;
    operator delete(v9);
  }

  v14 = (a1 + 456);
  std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = (a1 + 432);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = (a1 + 408);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v10 = *(a1 + 384);
  if (v10)
  {
    *(a1 + 392) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 360);
  if (v11)
  {
    *(a1 + 368) = v11;
    operator delete(v11);
  }

  v14 = (a1 + 336);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = (a1 + 256);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = (a1 + 232);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v12 = *(a1 + 208);
  if (v12)
  {
    *(a1 + 216) = v12;
    operator delete(v12);
  }

  v14 = (a1 + 152);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = (a1 + 128);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = (a1 + 104);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = (a1 + 80);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v14);
  return a1;
}

void AUBSS1::~AUBSS1(AUBSS1 *this)
{
  AUBSS1::~AUBSS1(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591EE10;
  AUBSS1::Cleanup(this);
  v3 = (this + 624);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 600);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::unique_ptr<BlockProcessor>::reset[abi:ne200100](this + 74, 0);
  v2 = *(this + 73);
  *(this + 73) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 560);
  std::vector<std::unique_ptr<VPTimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v3);

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUAcousticPasscodeEnc::ValidFormat(AUAcousticPasscodeEnc *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  v5 = a2;
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (result)
  {
    result = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  if (v5 == 1 || v5 == 2)
  {
    if (a4->mChannelsPerFrame == 1)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUAcousticPasscodeEnc::SupportedNumChannels(AUAcousticPasscodeEnc *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUAcousticPasscodeEnc::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUAcousticPasscodeEnc::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 187);
  }

  return result;
}

uint64_t AUAcousticPasscodeEnc::GetParameterInfo(AUAcousticPasscodeEnc *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  result = 4294956418;
  if (a3 <= 49)
  {
    switch(a3)
    {
      case 0:
        v6 = -1879048192;
        buffer->cfNameString = @"(Tuning) Encoder mode (0=Regular)";
        buffer->flags = 1207959552;
        CFStringGetCString(@"(Tuning) Encoder mode (0=Regular)", buffer->name, 52, 0x8000100u);
        *&buffer->unit = 0;
        *&buffer->maxValue = 0;
        goto LABEL_37;
      case 1:
        v6 = -1879048192;
        buffer->cfNameString = @"(Tuning) Number of bits to encode";
        buffer->flags = 1207959552;
        CFStringGetCString(@"(Tuning) Number of bits to encode", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x41A000003F800000;
        v9 = 20.0;
        goto LABEL_29;
      case 10:
        v6 = -1879048192;
        v11 = @"(Tuning) Number of initial interval using sync-pulses for alignment";
        goto LABEL_28;
      case 11:
        v6 = -1879048192;
        buffer->cfNameString = @"(Tuning) (BOOL) Enable AuxSync code";
        buffer->flags = 1207959552;
        CFStringGetCString(@"(Tuning) (BOOL) Enable AuxSync code", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Boolean;
        *&buffer->minValue = 0x3F80000000000000;
        v9 = 1.0;
        goto LABEL_29;
      case 12:
        v6 = -1879048192;
        v10 = @"(Tuning) Number of intervals to use for Aux pulse alignment";
        goto LABEL_21;
      case 13:
        v6 = -1879048192;
        v12 = @"(msec) Passcode symbol interval";
        goto LABEL_25;
      case 14:
        v6 = -1879048192;
        v12 = @"(msec) Codelength for each symbol";
LABEL_25:
        buffer->cfNameString = v12;
        buffer->flags = 1207959552;
        CFStringGetCString(v12, buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x43FA000041200000;
        v9 = 125.0;
        goto LABEL_29;
      case 15:
        v6 = -1879048192;
        v11 = @"(Tuning) Max number of frequences to use for each code";
LABEL_28:
        buffer->cfNameString = v11;
        buffer->flags = 1207959552;
        CFStringGetCString(v11, buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x404000003F800000;
        v9 = 3.0;
        goto LABEL_29;
      case 16:
        v6 = -1879048192;
        v10 = @"(Tuning) Number of unique Aux pulses to use";
LABEL_21:
        buffer->cfNameString = v10;
        buffer->flags = 1207959552;
        CFStringGetCString(v10, buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x4040000000000000;
        v9 = 2.0;
        goto LABEL_29;
      case 30:
        v6 = -1879048192;
        v7 = @"(Control) (BOOL) Send a non-zero to toggle encoder to reset";
        goto LABEL_35;
      case 31:
        v6 = -1879048192;
        buffer->cfNameString = @"(Tuning) (dB) dBfs level desired of passcode";
        buffer->flags = 1207959552;
        CFStringGetCString(@"(Tuning) (dB) dBfs level desired of passcode", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 3267887104;
        v9 = -38.0;
        goto LABEL_29;
      case 32:
        v6 = -1879048192;
        buffer->cfNameString = @"(Tuning) Threshold to use for normalized cross correlation";
        buffer->flags = 1207959552;
        CFStringGetCString(@"(Tuning) Threshold to use for normalized cross correlation", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x3F7D70A400000000;
        v9 = 0.94;
        goto LABEL_29;
      case 33:
        v6 = -1879048192;
        buffer->cfNameString = @"(Tuning) (dB) dBfs level desired of AUX codes";
        buffer->flags = 1207959552;
        CFStringGetCString(@"(Tuning) (dB) dBfs level desired of AUX codes", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 3267887104;
        v9 = -30.77;
        goto LABEL_29;
      case 34:
        v6 = -1879048192;
        v7 = @"(Real-Tunable/Optional) Bitstream is to come in via packed UInt32";
        goto LABEL_35;
      case 35:
        v6 = -1879048192;
        buffer->cfNameString = @"(Real-Tunable/Optional) Bitstream packed into UInt32";
        buffer->flags = 1207959552;
        CFStringGetCString(@"(Real-Tunable/Optional) Bitstream packed into UInt32", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v8 = 0x4F80000000000000;
        goto LABEL_36;
      case 36:
        v6 = -1879048192;
        buffer->cfNameString = @"(Real-Tunable/Optional) Total HI Asset length in seconds";
        buffer->flags = 1207959552;
        CFStringGetCString(@"(Real-Tunable/Optional) Total HI Asset length in seconds", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x42C800003CA3D70ALL;
        v9 = 3.02;
LABEL_29:
        buffer->defaultValue = v9;
        goto LABEL_37;
      default:
        return result;
    }
  }

  if (a3 <= 51)
  {
    if (a3 != 50)
    {
      v6 = 67141632;
      buffer->cfNameString = @"(Out) (Msec) Time we established sync";
      buffer->flags = 1207959552;
      CFStringGetCString(@"(Out) (Msec) Time we established sync", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v8 = 0x42C8000000000000;
      goto LABEL_36;
    }

    v6 = 67141632;
    v7 = @"(Out) (Bool) Flag to say we established sync";
  }

  else
  {
    switch(a3)
    {
      case '4':
        v6 = 67141632;
        v7 = @"(Out) (Bool) Flag to say we finished encoding bits";
        break;
      case '5':
        v6 = 67141632;
        v7 = @"(Out) (BOOL) Number of bits not suppported with intervals and tuning";
        break;
      case '6':
        v6 = 67141632;
        v7 = @"(Out) Last sample of HI Asset pushed out";
        break;
      default:
        return result;
    }
  }

LABEL_35:
  buffer->cfNameString = v7;
  buffer->flags = 1207959552;
  CFStringGetCString(v7, buffer->name, 52, 0x8000100u);
  buffer->unit = kAudioUnitParameterUnit_Boolean;
  v8 = 0x3F80000000000000;
LABEL_36:
  *&buffer->minValue = v8;
  buffer->defaultValue = 0.0;
LABEL_37:
  result = 0;
  buffer->flags |= v6;
  return result;
}

uint64_t AUAcousticPasscodeEnc::GetParameterList(AUAcousticPasscodeEnc *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE09C0D0;
    *(a3 + 1) = xmmword_1DE09C0E0;
    *(a3 + 2) = xmmword_1DE09C0F0;
    *(a3 + 3) = xmmword_1DE09BF30;
    *(a3 + 4) = xmmword_1DE09BF50;
    a3[20] = 54;
  }

  result = 0;
  *a4 = 21;
  return result;
}

uint64_t AUAcousticPasscodeEnc::SetBusCount(AUAcousticPasscodeEnc *this, int a2, unsigned int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    if (a3 - 1 <= 2)
    {
      v5 = (this + 128);
      v6 = a3;
      goto LABEL_7;
    }

    if (getAUAcousticPasscodeEncLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUAcousticPasscodeEncLog(void)::onceToken, &__block_literal_global_3213);
    }

    v8 = getAUAcousticPasscodeEncLog(void)::gLog;
    if (!os_log_type_enabled(getAUAcousticPasscodeEncLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      return 4294956445;
    }

    v10 = 134218240;
    v11 = this;
    v12 = 1024;
    v13 = a3;
    v9 = "[%p] Invalid number (%u) of output buses requested. We only support 1–2 buses.";
    goto LABEL_17;
  }

  if (a2 != 1)
  {
    return 4294956430;
  }

  if (a3 == 1)
  {
    v5 = (this + 80);
    v6 = 1;
LABEL_7:
    ausdk::AUScope::SetNumberOfElements(v5, v6);
    return 0;
  }

  if (getAUAcousticPasscodeEncLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUAcousticPasscodeEncLog(void)::onceToken, &__block_literal_global_3213);
  }

  v8 = getAUAcousticPasscodeEncLog(void)::gLog;
  if (os_log_type_enabled(getAUAcousticPasscodeEncLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218240;
    v11 = this;
    v12 = 1024;
    v13 = a3;
    v9 = "[%p] Invalid number (%u) of input buses requested. We only support 1 bus.";
LABEL_17:
    _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEFAULT, v9, &v10, 0x12u);
  }

  return 4294956445;
}

os_log_t ___ZL27getAUAcousticPasscodeEncLogv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AUAcousticPasscodeEnc");
  getAUAcousticPasscodeEncLog(void)::gLog = result;
  return result;
}

uint64_t AUAcousticPasscodeEnc::Render(AUAcousticPasscodeEnc *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (*(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    goto LABEL_29;
  }

  v9 = Element;
  v10 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v10 || !*(v10 + 172))
  {
    return 4294956420;
  }

  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v12)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    v13 = ausdk::AUScope::GetElement((this + 80), 0);
    if (v13)
    {
      if (!*(v13 + 144) || (v22[0] = *(v13 + 152) + 48, !*(v9 + 144)))
      {
LABEL_30:
        ausdk::Throw(0xFFFFFFFFLL);
      }

      v14 = *(*(v9 + 152) + 48);
      memset(v21, 0, sizeof(v21));
      if (v14 >= 3)
      {
        v15 = 3;
      }

      else
      {
        v15 = v14;
      }

      if (!v14)
      {
        goto LABEL_24;
      }

      v16 = 0;
      v17 = 64;
      do
      {
        v18 = ausdk::AUScope::GetElement((this + 128), v16);
        if (!v18)
        {
          goto LABEL_29;
        }

        if (!*(v18 + 144))
        {
          goto LABEL_30;
        }

        v19 = *(*(v18 + 152) + v17);
        if (v19)
        {
          v20 = ausdk::AUScope::GetElement((this + 80), v16);
          if (!v20)
          {
            goto LABEL_29;
          }

          if (!*(v20 + 144))
          {
            goto LABEL_30;
          }

          v19 = *(v20 + 152) + 48;
        }

        v21[v16++] = v19;
        v17 += 16;
      }

      while (v15 != v16);
      if (v14 <= 2)
      {
LABEL_24:
        bzero(&v21[v14], 8 * (2 - v15) + 8);
      }

      return (*(*this + 184))(this, a2, a4, 1, v22, v15, v21);
    }

LABEL_29:
    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUAcousticPasscodeEnc::ProcessMultipleBufferLists(AUAcousticPasscodeEnc *this, unsigned int *a2, vDSP_Length __N, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v85 = *MEMORY[0x1E69E9840];
  if (*(this + 84) != __N)
  {
    return 4294956422;
  }

  v12 = *(this + 187);
  if (*(this + 188) != v12)
  {
    AUAcousticPasscodeEnc::SetRealTimeTunableThresholds(this);
    *(this + 188) = v12;
  }

  if (*(this + 1488) == 1 && *(this + 1480) == 1)
  {
    v13 = *(this + 373);
    if (v13 >= 0x14)
    {
      v14 = 20;
    }

    else
    {
      v14 = v13;
    }

    if (v13)
    {
      v15 = *(this + 371);
      v16 = this + 1500;
      v17 = v14;
      do
      {
        if (v15)
        {
          v18 = 49;
        }

        else
        {
          v18 = 48;
        }

        *v16++ = v18;
        v15 >>= 1;
        --v17;
      }

      while (v17);
      if (v13 > 0x13)
      {
        goto LABEL_20;
      }
    }

    else
    {
      LODWORD(v14) = 0;
    }

    memset(this + v14 + 1500, 48, (20 - v14));
LABEL_20:
    *(this + 1488) = 0;
    *(this + 1600) = 0;
  }

  if ((*(this + 536) & 1) == 0)
  {
    v20 = *(this + 373);
    v21 = *(this + 350);
    if (v21)
    {
      v22 = 0;
      v23 = (this + 1316);
      do
      {
        v24 = *v23++;
        v22 += v24;
        --v21;
      }

      while (v21);
    }

    else
    {
      v22 = 0;
    }

    *(this + 536) = v22 >= v20;
    if (v22 < v20)
    {
      *(this + 537) = 1;
      return 4294956445;
    }

    *(this + 537) = 0;
  }

  if ((*(this + 1600) & 1) == 0 && (*(this + 796) & 1) == 0)
  {
    ConvertBitstreamToSymbolStream(this + 1520, this + 1500, this + 1316, this + 1356, *(this + 350), *(this + 373));
    *(this + 1600) = 1;
  }

  if ((*(this + 756) & 1) != 0 || *(this + 537) == 1)
  {
    for (i = 0; i != 3; ++i)
    {
      vDSP_vclr(a7[i]->mBuffers[0].mData, 1, __N);
    }

    return 0;
  }

  mData = (*a5)->mBuffers[0].mData;
  v27 = *(this + 85);
  v28 = *(this + 172);
  v29 = *(this + 168);
  v30 = v28 + __N;
  v31 = &v27[4 * v28];
  v32 = v28 + __N - v29;
  if (v28 + __N <= v29)
  {
    v33 = __N;
    memcpy(v31, mData, 4 * __N);
  }

  else
  {
    memcpy(v31, mData, 4 * (v29 - v28));
    memcpy(v27, &mData[4 * (__N - v32)], 4 * v32);
    v33 = __N;
    v30 = v32;
  }

  *(this + 172) = v30;
  v34 = *(this + 178) + __N;
  *(this + 178) = v34;
  *(this + 90) += v33;
  v35 = *(this + 732);
  v36 = *(this + 182);
  if (!v35)
  {
    v36 += __N;
    *(this + 182) = v36;
  }

  v79 = a6;
  v37 = *(this + 197);
  if (v36 >= v37)
  {
    *(this + 732) = 1;
  }

  else if ((v35 & 1) == 0)
  {
    v38 = *(this + 796);
LABEL_83:
    if (v38)
    {
      goto LABEL_84;
    }

LABEL_109:
    if (v79)
    {
      v76 = v79;
      do
      {
        v77 = *a7++;
        vDSP_vclr(*(v77 + 16), 1, v33);
        --v76;
      }

      while (v76);
    }

    goto LABEL_112;
  }

  if ((*(this + 796) & 1) == 0)
  {
    v39 = *(this + 184);
    v40 = *(this + 191);
    if (v39 >= v40)
    {
      v39 = *(this + 191);
    }

    v78 = v39;
    if (v34 < v37)
    {
      goto LABEL_109;
    }

    v38 = 0;
    v41 = 0;
    while (1)
    {
      if (v38)
      {
        goto LABEL_84;
      }

      v42 = *(this + 168);
      v43 = v42 - v41;
      v44 = v42 >= v41 ? (v42 & ((*(this + 172) - (v42 - v41)) >> 31)) + *(this + 172) - (v42 - v41) : 0;
      v82 = 0;
      v45 = 0.0;
      if (!*(this + 195))
      {
        break;
      }

      v80 = v44;
      v81 = v41;
      v46 = 0;
      v47 = 1;
      do
      {
        CopyInputCircBufferToBuffer(*(this + 71), *(this + 85), v44, *(this + 217), v42);
        v48 = *(this + 219);
        if (v48)
        {
          vDSP_vclr((*(this + 71) + 4 * *(this + 215)), 1, v48);
        }

        memcpy(*(this + 72), *(this + v46 + 130), 4 * *(this + 191));
        vDSP_vclr((*(this + 72) + 4 * *(this + 191)), 1, (*(this + 217) - *(this + 191)));
        ShiftedMatchedFilterSearch_TimeLim(&v82 + 1, &v82, 0, *(this + 71), *(this + 72), this + 37, this + 38, (this + 1072), this + 404);
        v49 = v82;
        v84[v46] = (*(this + 180) - v43 + v82) / *(this + 190);
        v83[v46] = v49;
        v47 &= *(&v82 + 1) >= *(this + 201);
        v42 = *(this + 168);
        v40 = *(this + 191);
        if (v40 + v44 >= v42)
        {
          v50 = *(this + 168);
        }

        else
        {
          v50 = 0;
        }

        if (v42 >= v40)
        {
          v44 = v40 + v44 - v50;
        }

        else
        {
          v44 = 0;
        }

        ++v46;
        v51 = *(this + 195);
      }

      while (v46 < v51);
      if (v47)
      {
        if (v51)
        {
          v52 = 0.0;
          v53 = v84;
          v54 = v83;
          v55 = *(this + 195);
          v45 = 0.0;
          v44 = v80;
          do
          {
            v56 = *v54++;
            v52 = v52 + v56;
            v57 = *v53++;
            v45 = v57 + v45;
            --v55;
          }

          while (v55);
          v58 = v51;
          v41 = v81;
        }

        else
        {
          v58 = 0.0;
          v52 = 0.0;
          v44 = v80;
          v41 = v81;
        }

LABEL_75:
        v60 = 1.0 / v58;
        v61 = vcvtas_u32_f32(v60 * v52);
        if (v44 + v61 >= v42)
        {
          v62 = v42;
        }

        else
        {
          v62 = 0;
        }

        if (v42 >= v61)
        {
          v63 = v44 + v61 - v62;
        }

        else
        {
          v63 = 0;
        }

        *(this + 198) = v63;
        *(this + 200) = v60 * v45;
        *(this + 227) = v40;
        v38 = 1;
        *(this + 796) = 1;
        v59 = *(this + 178);
        goto LABEL_82;
      }

      v38 = 0;
      *(this + 796) = 0;
      v59 = *(this + 178) - v78;
      *(this + 178) = v59;
      v41 = v81 + v78;
LABEL_82:
      if (v59 < *(this + 197))
      {
        goto LABEL_83;
      }
    }

    v58 = 0.0;
    v52 = 0.0;
    goto LABEL_75;
  }

LABEL_84:
  v64 = (*a7)->mBuffers[0].mData;
  CopyInputCircBufferToBuffer(v64, *(this + 85), *(this + 198), __N, *(this + 168));
  v65 = *(this + 168);
  v66 = *(this + 198) + __N;
  if (v66 >= v65)
  {
    v67 = *(this + 168);
  }

  else
  {
    v67 = 0;
  }

  v68 = v66 - v67;
  if (v65 < __N)
  {
    v68 = 0;
  }

  *(this + 198) = v68;
  if (v79 >= 2 && (v69 = a7[1]->mBuffers[0].mData) != 0)
  {
    AUAcousticPasscodeEnc::PushOutPasscode(this, v69, __N, 0, this + 1316, this + 101, 0);
  }

  else
  {
    AUAcousticPasscodeEnc::PushOutPasscode(this, *(this + 71), __N, 0, this + 1316, this + 101, 0);
    MEMORY[0x1E12BE5D0](*(this + 71), 1, v64, 1, v64, 1, v33);
  }

  v70 = *(this + 1612);
  if (v70 == 1)
  {
    v71 = *(this + 402);
    if (v71 > 0.0)
    {
      v71 = v71 - *(this + 193);
      *(this + 402) = v71;
      *(this + 1613) = 0;
    }

    if (v71 <= 0.0)
    {
      *(this + 1613) = 1;
    }
  }

  v72 = *(this + 210);
  if (v72 == *(this + 350) && (*(this + 1601) & 1) == 0)
  {
    *(this + 1601) = 1;
    if ((v70 & 1) == 0)
    {
      *(this + 402) = *(this + 401) - ((__N + ((v72 - 1) * *(this + 277))) / *(this + 190));
      *(this + 1612) = 1;
    }
  }

  if (*(this + 904))
  {
    v73 = this + 880;
  }

  else
  {
    v73 = 0;
    *(this + 232) = 0;
  }

  if (v79 >= 3 && (v74 = a7[2]->mBuffers[0].mData) != 0)
  {
    AUAcousticPasscodeEnc::PushOutPasscode(this, v74, __N, 1, this + 952, this + 114, v73);
  }

  else
  {
    v75 = (*a7)->mBuffers[0].mData;
    AUAcousticPasscodeEnc::PushOutPasscode(this, *(this + 71), __N, 1, this + 952, this + 114, v73);
    MEMORY[0x1E12BE5D0](*(this + 71), 1, v75, 1, v75, 1, v33);
  }

LABEL_112:
  AUAcousticPasscodeEnc::SetOutputParams(this);
  return 0;
}

void AUAcousticPasscodeEnc::SetRealTimeTunableThresholds(AUAcousticPasscodeEnc *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (ausdk::AUElement::GetParameter(v2, 0x1Eu) != 0.0)
  {
    AUAcousticPasscodeEnc::ResetState(this, 1);
    v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v5 & 1) == 0)
    {
      goto LABEL_34;
    }

    ausdk::AUElement::SetParameter(v4, 0x1Eu, 0.0);
  }

  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_34;
  }

  Parameter = ausdk::AUElement::GetParameter(v6, 0x1Fu);
  v9 = (this + 1460);
  *(this + 365) = Parameter;
  if (Parameter > 0.0)
  {
    v9 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  if (Parameter < -100.0)
  {
    v9 = &AUSpeechLevelEstimator::kEchoLevel_dB_Min;
  }

  v10 = *v9;
  *(this + 365) = *v9;
  *(this + 366) = __exp10f(v10 * 0.05);
  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v12 & 1) == 0)
  {
    goto LABEL_34;
  }

  v13 = ausdk::AUElement::GetParameter(v11, 0x21u);
  v14 = (this + 1472);
  *(this + 368) = v13;
  if (v13 > 0.0)
  {
    v14 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  if (v13 < -100.0)
  {
    v14 = &AUSpeechLevelEstimator::kEchoLevel_dB_Min;
  }

  v15 = *v14;
  *(this + 368) = *v14;
  *(this + 369) = __exp10f(v15 * 0.05);
  v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_34;
  }

  v18 = ausdk::AUElement::GetParameter(v16, 0x20u);
  v19 = (this + 804);
  *(this + 201) = v18;
  if (v18 > 0.99)
  {
    v19 = &kAUAcousticPasscodeDecMax_ThresholdOnSync;
  }

  if (v18 < 0.0)
  {
    v19 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  *(this + 201) = *v19;
  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_34;
  }

  ausdk::AUElement::GetParameter(v20, 0);
  *(this + 132) = 0;
  v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_34;
  }

  v24 = ausdk::AUElement::GetParameter(v22, 1u);
  v25 = this + 1492;
  *(this + 373) = v24;
  if (v24 > 0x14)
  {
    v25 = &kAUAcousticPasscodeMax_NumBits;
  }

  v26 = v24 ? v25 : &kAUAcousticPasscodeMin_NumBits;
  *(this + 373) = *v26;
  *(this + 536) = 0;
  v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v28 & 1) == 0)
  {
LABEL_34:
    abort();
  }

  v29 = ausdk::AUElement::GetParameter(v27, 0x24u);
  v30 = 1017370378;
  if (v29 >= 0.02)
  {
    v30 = 1120403456;
    if (v29 <= 100.0)
    {
      v30 = LODWORD(v29);
    }
  }

  *(this + 401) = v30;

  AUAcousticPasscodeEnc::SetBitStreamViaParamProcess(this);
}

void AUAcousticPasscodeEnc::PushOutPasscode(uint64_t a1, float *__dst, vDSP_Length __N, int a4, uint64_t a5, void *a6, uint64_t a7)
{
  LODWORD(v9) = __N;
  v10 = __dst;
  v12 = *(a6 + 3);
  __Na = *(a6 + 2);
  v13 = *(a1 + 1400);
  v14 = *(a6 + 4);
  if (!v14)
  {
    v18 = 0;
    if (!__N)
    {
      return;
    }

    goto LABEL_15;
  }

  v15 = *(a6 + 5);
  if (v14 >= __N)
  {
    v16 = __N;
  }

  else
  {
    v16 = *(a6 + 4);
  }

  v17 = v12 - v15;
  if (v16 < v15 + v16 - v12)
  {
    v17 = 0;
  }

  if (v15 + v16 <= v12)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    memcpy(__dst, (*a6 + 4 * v15), 4 * v18);
    v19 = *(a6 + 5) + v18;
    LODWORD(v9) = v9 - v18;
    v14 = *(a6 + 4) - v18;
    *(a6 + 4) = v14;
    *(a6 + 5) = v19;
  }

  if (v9)
  {
LABEL_15:
    v20 = *(a6 + 8);
    if (v20 >= v13)
    {
LABEL_57:
      if (v14)
      {
        if (v14 >= v9)
        {
          v31 = v9;
        }

        else
        {
          v31 = v14;
        }

        memcpy(&v10[v18], (*a6 + 4 * *(a6 + 5)), 4 * v31);
        v32 = *(a6 + 5) + v31;
        *(a6 + 4) -= v31;
        *(a6 + 5) = v32;
        LODWORD(v9) = v9 - v31;
        if (!v9)
        {
          return;
        }

        v18 += v31;
      }

      v9 = v9;
      vDSP_vclr(&v10[v18], 1, v9);
      do
      {
        v10[v18++] = 0.0;
        --v9;
      }

      while (v9);
      if (!a4 && *(a6 + 8) >= v13)
      {
        *(a1 + 1601) = 1;
      }

      return;
    }

    v21 = __Na - v12;
    v34 = v13;
    v33 = v10;
    while (1)
    {
      if (v20)
      {
        if (v21)
        {
          memcpy(*(a1 + 568), (*a6 + 4 * v12), 4 * (__Na - v12));
          v20 = *(a6 + 8);
        }

        v22 = v21;
        if (v20 > 9)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v22 = 0;
      }

      if (!*(a5 + 4 * v20))
      {
        goto LABEL_30;
      }

      if (a4)
      {
        if (a7)
        {
          if (*(a1 + 992 + 4 * v20) >= *(a6 + 6))
          {
            v23 = *(a6 + 6);
          }

          else
          {
            v23 = *(a1 + 992 + 4 * v20);
          }

          __C = 0.0;
          vDSP_svesq(*(a7 + 8 * v23), 1, &__C, __Na);
          __C = *(a1 + 1476) / sqrtf((__C / __Na) + *(a1 + 1652));
          v24 = *(a7 + 8 * v23);
          v13 = v34;
          v21 = __Na - v12;
          v10 = v33;
          MEMORY[0x1E12BE940](v24, 1, &__C, *a6, 1, __Na);
          ++*(a6 + 7);
          goto LABEL_31;
        }

LABEL_30:
        vDSP_vclr(*a6, 1, __Na);
        goto LABEL_31;
      }

      GenerateNextCode(*a6, *(a1 + 576), *(a1 + 1520 + 4 * v20), v20, a1 + 1096);
LABEL_31:
      v25 = *(a6 + 8);
      if (v22 && v25)
      {
        MEMORY[0x1E12BE5D0](*a6, 1, *(a1 + 568), 1, *a6, 1, v22);
        v25 = *(a6 + 8);
      }

      if (!a4)
      {
        v26 = *(a1 + 1496) + *(a1 + 1316 + 4 * v25);
        if (v26 >= *(a1 + 1492))
        {
          v26 = *(a1 + 1492);
        }

        *(a1 + 1496) = v26;
      }

      v20 = v25 + 1;
      if (v25 + 1 == v13)
      {
        v14 = __Na;
      }

      else
      {
        v14 = v22;
      }

      if (v20 < v13)
      {
        v14 = v12;
      }

      if (v14 >= v9)
      {
        v27 = v9;
      }

      else
      {
        v27 = v14;
      }

      v28 = v12;
      if (v27 < v27 - v12)
      {
        v28 = 0;
      }

      *(a6 + 8) = v20;
      *(a6 + 4) = v14;
      *(a6 + 5) = 0;
      if (v27 <= v12)
      {
        v29 = v27;
      }

      else
      {
        v29 = v28;
      }

      if (v29)
      {
        memcpy(&v10[v18], *a6, 4 * v29);
        v30 = *(a6 + 5) + v29;
        v14 = *(a6 + 4) - v29;
        *(a6 + 4) = v14;
        *(a6 + 5) = v30;
        LODWORD(v9) = v9 - v29;
        if (!v9)
        {
          return;
        }

        v18 += v29;
        v20 = *(a6 + 8);
      }

      if (v20 >= v13)
      {
        goto LABEL_57;
      }
    }
  }
}

void AUAcousticPasscodeEnc::SetOutputParams(AUAcousticPasscodeEnc *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v4 & 1) == 0 || (LOBYTE(v3) = *(this + 796), ausdk::AUElement::SetParameter(v2, 0x32u, v3), v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v6 & 1) == 0) || (ausdk::AUElement::SetParameter(v5, 0x33u, *(this + 200)), v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v9 & 1) == 0) || (LOBYTE(v8) = *(this + 1601), ausdk::AUElement::SetParameter(v7, 0x34u, v8), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v12 & 1) == 0) || (LOBYTE(v11) = *(this + 537), ausdk::AUElement::SetParameter(v10, 0x35u, v11), v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v15 & 1) == 0) || (LOBYTE(v14) = *(this + 537), ausdk::AUElement::SetParameter(v13, 0x35u, v14), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v18 & 1) == 0))
  {
    abort();
  }

  LOBYTE(v17) = *(this + 1613);
  v19 = v17;

  ausdk::AUElement::SetParameter(v16, 0x36u, v19);
}

void AUAcousticPasscodeEnc::ResetState(AUAcousticPasscodeEnc *this, int a2)
{
  LODWORD(v3) = 0;
  *(this + 796) = 0;
  *(this + 200) = 0;
  *(this + 732) = 0;
  if (!a2)
  {
    v3 = *(this + 177);
    *(this + 90) = v3;
  }

  *(this + 178) = v3;
  *(this + 182) = v3;
  if (a2 != 1 && (*(this + 532) & 1) != 0)
  {
    vDSP_vclr(*(this + 85), 1, *(this + 168));
  }

  *(this + 198) = 0;
  *(this + 796) = 0;
  *(this + 116) = 0;
  *(this + 940) = 0;
  *(this + 227) = 0;
  *(this + 367) = 0;
  *(this + 374) = 0;
  *(this + 806) = 0;
  *(this + 210) = 0;
  *(this + 824) = 0u;
  *(this + 402) = 1078020014;
  *(this + 800) = 0;
  *(this + 95) = 0u;
  *(this + 96) = 0u;
  *(this + 194) = 0;
  AUAcousticPasscodeEnc::SetRealTimeTunableThresholds(this);
  AUAcousticPasscodeEnc::SetOutputParams(this);
  *(this + 268) = 0;
}

void AUAcousticPasscodeEnc::SetBitStreamViaParamProcess(AUAcousticPasscodeEnc *this)
{
  v2 = *(this + 371);
  v3 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v4 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v3, 0x23u), *(this + 371) = Parameter, *(this + 1488) = v2 != LODWORD(Parameter), v6 = *(this + 1480), v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v8 & 1) == 0))
  {
    abort();
  }

  v9 = ausdk::AUElement::GetParameter(v7, 0x22u);
  *(this + 1480) = v9 != 0.0;
  if ((v6 & 1) == 0 && v9 != 0.0 || (*(this + 1488) & 1) != 0 && v9 != 0.0)
  {
    v10 = *(this + 373);
    if (v10 >= 0x14)
    {
      v11 = 20;
    }

    else
    {
      v11 = v10;
    }

    if (v10)
    {
      v12 = *(this + 371);
      v13 = this + 1500;
      v14 = v11;
      do
      {
        if (v12)
        {
          v15 = 49;
        }

        else
        {
          v15 = 48;
        }

        *v13++ = v15;
        v12 >>= 1;
        --v14;
      }

      while (v14);
      if (v10 > 0x13)
      {
        goto LABEL_20;
      }
    }

    else
    {
      LODWORD(v11) = 0;
    }

    memset(this + v11 + 1500, 48, (20 - v11));
LABEL_20:
    *(this + 1488) = 0;
    *(this + 1600) = 0;
  }
}

uint64_t AUAcousticPasscodeEnc::SetParameter(AUAcousticPasscodeEnc *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a3)
  {

    return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  }

  else
  {
    if (*(this + 17) == 1 && (a2 - 30 < 7 || a2 <= 1))
    {
      ++*(this + 187);
    }

    v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v10 & 1) == 0)
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v9, a2, a5);
    if ((a2 & 0xFFFFFFFE) == 0x22)
    {
      AUAcousticPasscodeEnc::SetBitStreamViaParamProcess(this);
    }

    return 0;
  }
}

uint64_t AUAcousticPasscodeEnc::SetProperty(AUAcousticPasscodeEnc *this, int a2, int a3, unsigned int a4, CFDictionaryRef *a5, unsigned int a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 5001)
  {
    if (a2 == 21)
    {
      if (a6 >= 4)
      {
        result = 0;
        *(this + 756) = *a5 != 0;
        return result;
      }

      return 4294956445;
    }

    if (a2 != 5001)
    {
      return result;
    }

    if (a6 > 0x14)
    {
      return 4294956445;
    }

    if (a6)
    {
      v8 = this + 1500;
      v9 = a6;
      do
      {
        v10 = *a5;
        a5 = (a5 + 1);
        *v8++ = v10;
        --v9;
      }

      while (v9);
      if (a6 == 20)
      {
LABEL_51:
        result = 0;
        *(this + 1600) = 0;
        return result;
      }
    }

    v11 = 20 - a6;
    v12 = this + a6 + 1500;
LABEL_50:
    memset(v12, 48, v11);
    goto LABEL_51;
  }

  if (a2 == 5002)
  {
    if (a6 > 0x50)
    {
      return 4294956445;
    }

    if (a6 >= 4)
    {
      v13 = a6 >> 2;
      v16 = this + 1500;
      v17 = a6 >> 2;
      do
      {
        v18 = *a5;
        a5 = (a5 + 4);
        if (v18 == 0.0)
        {
          v19 = 48;
        }

        else
        {
          v19 = 49;
        }

        *v16++ = v19;
        --v17;
      }

      while (v17);
      if (a6 == 80)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v13 = 0;
    }

    v11 = 20 - v13;
    v12 = this + v13 + 1500;
    goto LABEL_50;
  }

  if (a2 == 5020)
  {
    if (a5)
    {
      if (SetBits(this + 572, *a5))
      {
        return 26;
      }

      *(this + 534) = 1;
      AUAcousticPasscodeEnc::EncSetPlistBitValuesOnAU(this);
      return 0;
    }

    if (getAUAcousticPasscodeEncLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUAcousticPasscodeEncLog(void)::onceToken, &__block_literal_global_3213);
    }

    v14 = getAUAcousticPasscodeEncLog(void)::gLog;
    if (os_log_type_enabled(getAUAcousticPasscodeEncLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v21 = this;
      v22 = 1024;
      v23 = 5020;
      _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEFAULT, "[%p] Setting property Bitstream_CF (prop id: %d).", buf, 0x12u);
      if (getAUAcousticPasscodeEncLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUAcousticPasscodeEncLog(void)::onceToken, &__block_literal_global_3213);
      }
    }

    v15 = getAUAcousticPasscodeEncLog(void)::gLog;
    if (os_log_type_enabled(getAUAcousticPasscodeEncLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v21 = this;
LABEL_41:
      _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEFAULT, "[%p] The CFDictionaryRef passed to SetProperty is null.", buf, 0xCu);
    }

    return 4294956445;
  }

  if (a2 != 5555)
  {
    return result;
  }

  if (!a5)
  {
    if (getAUAcousticPasscodeEncLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUAcousticPasscodeEncLog(void)::onceToken, &__block_literal_global_3213);
    }

    v15 = getAUAcousticPasscodeEncLog(void)::gLog;
    if (!os_log_type_enabled(getAUAcousticPasscodeEncLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      return 4294956445;
    }

    *buf = 134217984;
    v21 = this;
    goto LABEL_41;
  }

  result = StoreMusicCodeTuningInPlist(this + 1656, *a5);
  if (!result)
  {
    *(this + 533) = 1;
    *(this + 535) = 0;
    if (*(this + 532) != 1)
    {
LABEL_13:
      result = 0;
      *(this + 536) = 0;
      return result;
    }

    result = SetPlistValuesToInternalVariables(this + 274, this + 130, this + 110, this + 238, this + 248, this + 1656, *(this + 191), *(this + 195), *(this + 190), *(this + 259));
    if (!result)
    {
      *(this + 535) = 1;
      goto LABEL_13;
    }
  }

  return result;
}

_DWORD *AUAcousticPasscodeEnc::EncSetPlistBitValuesOnAU(_DWORD *this)
{
  v1 = this;
  v2 = this[373];
  v3 = this[572];
  if (v2 >= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    this = memmove(this + 375, this + 573, v4);
  }

  if (v3 < v2)
  {
    this = memset((v1 + v3 + 1500), 48, v2 + ~v4 + 1);
  }

  if ((*(v1 + 796) & 1) == 0)
  {
    this = ConvertBitstreamToSymbolStream(v1 + 1520, v1 + 1500, v1 + 1316, v1 + 1356, *(v1 + 1400), v2);
    *(v1 + 1600) = 1;
  }

  return this;
}

uint64_t AUAcousticPasscodeEnc::GetProperty(AUAcousticPasscodeEnc *this, int a2, int a3, unsigned int a4, char *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 5029)
  {
    if (a2 > 105000)
    {
      if (a2 == 105001)
      {
        memset(&v21, 0, sizeof(v21));
        std::vector<float>::resize(&v21, 0x14uLL);
        v18 = 0;
        begin = v21.__begin_;
        do
        {
          if (*(this + v18 + 1500) == 48)
          {
            v20 = 0.0;
          }

          else
          {
            v20 = 1.0;
          }

          *&begin[v18++] = v20;
        }

        while (v18 != 20);
        CFArray = applesauce::CF::details::make_CFArrayRef<float>(&v21);
      }

      else
      {
        if (a2 != 105030)
        {
          return result;
        }

        memset(&v21, 0, sizeof(v21));
        std::vector<unsigned int>::resize(&v21, 0xAuLL);
        v12 = v21.__begin_;
        v13 = *(this + 95);
        v14 = *(this + 96);
        *(v21.__begin_ + 4) = *(this + 194);
        *v12 = v13;
        *(v12 + 1) = v14;
        CFArray = applesauce::CF::details::make_CFArrayRef<unsigned int>(&v21);
      }

      *a5 = CFArray;
      if (v21.__begin_)
      {
        v21.__end_ = v21.__begin_;
        operator delete(v21.__begin_);
      }
    }

    else if (a2 == 5030)
    {
      for (i = 0; i != 40; i += 4)
      {
        *&a5[i] = *(this + i + 1520);
      }
    }

    else
    {
      if (a2 != 5032)
      {
        return result;
      }

      for (j = 0; j != 40; j += 4)
      {
        *&a5[j] = *(this + j + 1520);
      }
    }

    return 0;
  }

  if (a2 > 5000)
  {
    if (a2 == 5001)
    {
      for (k = 0; k != 20; ++k)
      {
        a5[k] = *(this + k + 1500);
      }
    }

    else
    {
      if (a2 != 5002)
      {
        return result;
      }

      for (m = 0; m != 20; ++m)
      {
        if (*(this + m + 1500) == 48)
        {
          v11 = 0.0;
        }

        else
        {
          v11 = 1.0;
        }

        *&a5[4 * m] = v11;
      }
    }

    return 0;
  }

  if (a2 == 21)
  {
    result = 0;
    v8 = *(this + 756);
  }

  else
  {
    if (a2 != 3700)
    {
      return result;
    }

    result = 0;
    v8 = *(this + 376);
  }

  *a5 = v8;
  return result;
}

void sub_1DDC954E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUAcousticPasscodeEnc::GetPropertyInfo(AUAcousticPasscodeEnc *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  result = 4294956417;
  if (!a3)
  {
    if (a2 <= 5029)
    {
      if (a2 > 5000)
      {
        if (a2 == 5001)
        {
          v8 = 20;
        }

        else
        {
          if (a2 != 5002)
          {
            return result;
          }

          v8 = 80;
        }
      }

      else
      {
        if (a2 != 21)
        {
          if (a2 != 3700)
          {
            return result;
          }

          v7 = 0;
          v8 = 4;
LABEL_22:
          result = 0;
          *a6 = v7;
          *a5 = v8;
          return result;
        }

        v8 = 4;
      }

      v7 = 1;
      goto LABEL_22;
    }

    if (a2 > 105000)
    {
      if (a2 == 105001)
      {
        v7 = 0;
        v8 = 80;
        goto LABEL_22;
      }

      v9 = 105030;
    }

    else
    {
      if (a2 == 5030)
      {
LABEL_17:
        v7 = 0;
        v8 = 40;
        goto LABEL_22;
      }

      v9 = 5032;
    }

    if (a2 != v9)
    {
      return result;
    }

    goto LABEL_17;
  }

  return result;
}

uint64_t AUAcousticPasscodeEnc::Reset(AUAcousticPasscodeEnc *this)
{
  if (*(this + 532) == 1)
  {
    *(this + 172) = *(this + 177) + 1;
    vDSP_vclr(*(this + 85), 1, *(this + 168));
    vDSP_vclr(*(this + 101), 1, *(this + 204));
    vDSP_vclr(*(this + 114), 1, *(this + 230));
  }

  AUAcousticPasscodeEnc::ResetState(this, 0);
  return 0;
}

uint64_t AUAcousticPasscodeEnc::Initialize(AUAcousticPasscodeEnc *this)
{
  v127 = *MEMORY[0x1E69E9840];
  *(this + 376) = 1;
  v2 = *(this + 15);
  if (v2)
  {
    LODWORD(v3) = (*(*v2 + 24))(v2);
  }

  else
  {
    v3 = (*(this + 13) - *(this + 12)) >> 3;
  }

  v4 = *(this + 21);
  if (v4)
  {
    LODWORD(v5) = (*(*v4 + 24))(v4);
  }

  else
  {
    v5 = (*(this + 19) - *(this + 18)) >> 3;
  }

  if (v3 != 1 || v5 > 3)
  {
    return 4294956428;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_128;
  }

  v8 = *(Element + 92);
  v9 = *(Element + 108);
  *(this + 175) = 1;
  if ((v8 & 0x20) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  *(this + 176) = v10;
  if (v5 >= 2)
  {
    v11 = 1;
    while (1)
    {
      v12 = ausdk::AUScope::GetElement((this + 128), v11 - 1);
      if (!v12)
      {
        break;
      }

      v13 = *(v12 + 80);
      v14 = ausdk::AUScope::GetElement((this + 128), v11);
      if (!v14)
      {
        break;
      }

      if (v13 != *(v14 + 80))
      {
        return 4294956428;
      }

      if (v5 == ++v11)
      {
        goto LABEL_21;
      }
    }

LABEL_128:
    ausdk::Throw(0xFFFFD583);
  }

LABEL_21:
  v15 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v15)
  {
    goto LABEL_128;
  }

  v16 = *(v15 + 80);
  v17 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v17)
  {
    goto LABEL_128;
  }

  if (v16 != *(v17 + 80))
  {
    return 4294956428;
  }

  *(this + 184) = *(this + 84);
  *(this + 188) = *(this + 187);
  v19 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v19)
  {
    goto LABEL_128;
  }

  v20 = *(v19 + 80);
  *(this + 190) = v20;
  *(this + 193) = *(this + 184) / v20;
  v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v22 & 1) == 0)
  {
    goto LABEL_129;
  }

  Parameter = ausdk::AUElement::GetParameter(v21, 0xAu);
  v24 = (this + 780);
  *(this + 195) = Parameter;
  if (Parameter > 3)
  {
    v24 = &kAUAcousticPasscodeMax_NumFreqsPerCodeToUse;
  }

  if (Parameter)
  {
    v25 = v24;
  }

  else
  {
    v25 = &kAUAcousticPasscodeMin_NumBits;
  }

  v26 = *v25;
  *(this + 195) = v26;
  v27 = this + 776;
  *(this + 194) = v26;
  if (v26 > 3)
  {
    v27 = &kAUAcousticPasscodeMax_NumFreqsPerCodeToUse;
  }

  v28 = v26 ? v27 : &kAUAcousticPasscodeMin_NumBits;
  *(this + 194) = *v28;
  v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_129;
  }

  *(this + 904) = ausdk::AUElement::GetParameter(v29, 0xBu) != 0.0;
  v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_129;
  }

  v33 = ausdk::AUElement::GetParameter(v31, 0xCu);
  if (v33 >= 3)
  {
    v33 = 3;
  }

  *(this + 258) = v33;
  v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_129;
  }

  v36 = ausdk::AUElement::GetParameter(v34, 0x10u);
  if (v36 >= 3)
  {
    v37 = 3;
  }

  else
  {
    v37 = v36;
  }

  *(this + 259) = v37;
  if (!*(this + 258) || !v36)
  {
    *(this + 904) = 0;
  }

  *(this + 234) = v37 - 1;
  v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_129;
  }

  v40 = ausdk::AUElement::GetParameter(v38, 0xDu);
  v41 = (this + 740);
  *(this + 185) = v40;
  if (v40 > 500.0)
  {
    v41 = &AUFTSpatialAC::kFTSpatialMax_dim_cm;
  }

  if (v40 < 10.0)
  {
    v41 = &kParamValue_Mode1Distance_Max;
  }

  *(this + 185) = *v41;
  v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_129;
  }

  v44 = ausdk::AUElement::GetParameter(v42, 0xEu);
  v45 = (this + 744);
  *(this + 186) = v44;
  if (v44 > 500.0)
  {
    v45 = &AUFTSpatialAC::kFTSpatialMax_dim_cm;
  }

  if (v44 < 10.0)
  {
    v45 = &kParamValue_Mode1Distance_Max;
  }

  *(this + 186) = *v45;
  v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v47 & 1) == 0)
  {
LABEL_129:
    abort();
  }

  v48 = ausdk::AUElement::GetParameter(v46, 0xFu);
  v49 = this + 1088;
  *(this + 272) = v48;
  if (v48 > 3)
  {
    v49 = &kAUAcousticPasscodeMax_NumFreqsPerCodeToUse;
  }

  if (v48)
  {
    v50 = v49;
  }

  else
  {
    v50 = &kAUAcousticPasscodeMin_NumBits;
  }

  *(this + 272) = *v50;
  AUAcousticPasscodeEnc::SetRealTimeTunableThresholds(this);
  v51 = *(this + 190) * 0.001;
  v52 = vcvtas_u32_f32(v51 * *(this + 185));
  *(this + 191) = v52;
  v53 = vcvtas_u32_f32(v51 * *(this + 186));
  if (2 * v52 < v53)
  {
    v53 = 2 * v52;
  }

  *(this + 192) = v53;
  *(this + 177) = 240;
  v54 = *(this + 184) + 240;
  *(this + 214) = v54;
  *(this + 212) = v54 >> 1;
  *(this + 213) = v54 - (v54 >> 1);
  *(this + 216) = v52 + 240;
  v55 = v54 + v52;
  *(this + 215) = v55;
  v56 = &kPasscode_Supported_FFT_Size_Table;
  v57 = 17;
  do
  {
    v58 = v57 >> 1;
    v59 = &v56[v57 >> 1];
    v61 = *v59;
    v60 = v59 + 1;
    v57 += ~(v57 >> 1);
    if (v61 < v55)
    {
      v56 = v60;
    }

    else
    {
      v57 = v58;
    }
  }

  while (v57);
  if (v56 == dword_1DE0A068C)
  {
    v56 = &unk_1DE0A0688;
  }

  v62 = *v56;
  *(this + 217) = *v56;
  v63 = v62 >= v55;
  v64 = v62 - v55;
  if (!v63)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 219) = v64;
  *(this + 218) = v62 >> 1;
  result = MultiRadixRealFFT::Initialize((this + 1072), v62);
  if (!result)
  {
    *(this + 266) = 1.0 / *(this + 217);
    v65 = *(this + 192);
    v66 = *(this + 191);
    if (v65 <= v66)
    {
      v67 = *(this + 191);
    }

    else
    {
      v67 = *(this + 192);
    }

    *(this + 364) = v67;
    v68 = *(this + 272);
    if (v68 >= 3)
    {
      v68 = 3;
    }

    *(this + 351) = v68;
    InitializePasscode(this + 1096, v65, v66, *(this + 533), *(this + 190), *(this + 366));
    v69 = *(this + 217);
    *(this + 140) = v69;
    v70 = *(this + 364);
    if (v69 <= v70)
    {
      v71 = *(this + 364);
    }

    else
    {
      v71 = v69;
    }

    *(this + 139) = v71;
    v72 = *(this + 214);
    *(this + 174) = v72;
    v73 = *(this + 191);
    v74 = *(this + 195) * v73;
    *(this + 196) = v74;
    v75 = *(this + 194) * v73;
    if (v74 > v75)
    {
      v75 = v74;
    }

    *(this + 197) = v75 + v72;
    v76 = v74 + v72 + *(this + 184);
    *(this + 168) = v76;
    v77 = v73 + v70 + v76 + v74 + *(this + 259) * v73 + *(this + 349);
    *(this + 136) = v77;
    v78 = 2 * (v71 + v69);
    *(this + 138) = v78;
    *(this + 135) = v77 + v78;
    std::vector<float>::resize(this + 78, v77);
    vDSP_vclr(*(this + 78), 1, *(this + 136));
    std::vector<float>::resize(this + 81, *(this + 138));
    vDSP_vclr(*(this + 81), 1, *(this + 138));
    v83 = *(this + 78);
    *(this + 85) = v83;
    v84 = *(this + 168);
    v85 = v83 + 4 * v84;
    *(this + 169) = v84 - 1;
    *(this + 172) = 0;
    v86 = *(this + 195);
    v87 = *(this + 191);
    if (v86)
    {
      v88 = (this + 1040);
      do
      {
        *v88++ = v85;
        v85 += 4 * v87;
        --v86;
      }

      while (v86);
    }

    v89 = *(this + 259);
    if (v89)
    {
      v90 = (this + 880);
      do
      {
        *v90++ = v85;
        v85 += 4 * v87;
        --v89;
      }

      while (v89);
    }

    *(this + 114) = v85;
    *(this + 230) = v87;
    *(this + 231) = v87;
    v91 = v85 + 4 * v87;
    *(this + 101) = v91;
    v92 = *(this + 364);
    *(this + 204) = v92;
    *(this + 205) = v87;
    v93 = v91 + 4 * v92;
    *(this + 176) = v93;
    v94 = *(this + 276);
    *(this + 177) = v93 + 4 * v94;
    v95 = *(this + 351);
    if (v95)
    {
      v96 = (this + 1424);
      v97 = v85 + 8 * v94 + 4 * v87 + 4 * v92;
      do
      {
        *v96++ = v97;
        v97 += 4 * v94;
        --v95;
      }

      while (v95);
    }

    v98 = *(this + 81);
    *(this + 71) = v98;
    v99 = *(this + 139);
    v100 = v98 + 4 * v99;
    *(this + 72) = v100;
    v101 = v100 + 4 * v99;
    *(this + 73) = 0;
    *(this + 74) = v101;
    v102 = *(this + 218);
    *(this + 75) = v101 + 4 * v102;
    v103 = v101 + 4 * *(this + 140);
    *(this + 76) = v103;
    *(this + 77) = v103 + 4 * v102;
    InitializePasscodeShape(this + 1096, v79, v80, v81, v82);
    if (*(this + 533))
    {
      result = SetPlistValuesToInternalVariables(this + 274, this + 130, this + 110, this + 238, this + 248, this + 1656, *(this + 191), *(this + 195), *(this + 190), *(this + 259));
      if (result)
      {
        return result;
      }

      *(this + 535) = 1;
    }

    else
    {
      if (*(this + 259))
      {
        v104 = 0;
        do
        {
          vDSP_vclr(*(this + v104++ + 110), 1, *(this + 191));
        }

        while (v104 < *(this + 259));
      }

      *(this + 238) = 1;
      if (*(this + 195))
      {
        v105 = 0;
        v106 = this + 1040;
        do
        {
          vDSP_vclr(*&v106[8 * v105], 1, *(this + 191));
          __C = 0.0;
          v107 = *&v106[8 * v105];
          if (v105 <= 2)
          {
            v108 = dword_1DE0E8F5C[v105];
            v109 = dword_1DE0E8F68[v105];
            v110 = dword_1DE0E8F74[v105];
            v111 = dword_1DE0E8F80[v105];
            *v107 = dword_1DE0E8F50[v105];
            *(v107 + 4) = v108;
            *(v107 + 8) = v109;
            *(v107 + 12) = v110;
            *(v107 + 16) = v111;
          }

          vDSP_svesq(v107, 1, &__C, *(this + 191));
          __C = 1.0 / sqrtf(__C + *(this + 413));
          MEMORY[0x1E12BE940](*&v106[8 * v105], 1, &__C, *&v106[8 * v105], 1, *(this + 191));
          ++v105;
        }

        while (v105 < *(this + 195));
      }

      v112 = (this + 1356);
      memset_pattern16(this + 1156, &unk_1DE09E960, 0x28uLL);
      v113 = 10;
      do
      {
        *(v112 - 10) = 2;
        *v112++ = 4;
        --v113;
      }

      while (v113);
    }

    *(this + 404) = 1;
    *(this + 408) = 0;
    *(this + 407) = *(this + 218);
    v114 = *(this + 191);
    v115 = v114 / *(this + 215);
    *(this + 405) = v115;
    *(this + 406) = sqrtf(v115);
    *(this + 409) = *(this + 214);
    *(this + 411) = *(this + 217);
    *(this + 412) = v114;
    *(this + 532) = 1;
    AUAcousticPasscodeEnc::Reset(this);
    AUAcousticPasscodeEnc::SetOutputParams(this);
    if (*(this + 534) == 1)
    {
      AUAcousticPasscodeEnc::EncSetPlistBitValuesOnAU(this);
    }

    if (getAUAcousticPasscodeEncLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUAcousticPasscodeEncLog(void)::onceToken, &__block_literal_global_3213);
    }

    v116 = getAUAcousticPasscodeEncLog(void)::gLog;
    if (os_log_type_enabled(getAUAcousticPasscodeEncLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      __C = 3.852e-34;
      v124 = this;
      _os_log_impl(&dword_1DDB85000, v116, OS_LOG_TYPE_DEFAULT, "[%p] Initialize AU", &__C, 0xCu);
      if (getAUAcousticPasscodeEncLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUAcousticPasscodeEncLog(void)::onceToken, &__block_literal_global_3213);
      }
    }

    v117 = getAUAcousticPasscodeEncLog(void)::gLog;
    if (os_log_type_enabled(getAUAcousticPasscodeEncLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      v118 = *(this + 373);
      __C = 3.8521e-34;
      v124 = this;
      v125 = 1024;
      v126 = v118;
      _os_log_impl(&dword_1DDB85000, v117, OS_LOG_TYPE_DEFAULT, "[%p] Current bits assumed (%u total): ", &__C, 0x12u);
    }

    if (*(this + 373))
    {
      v119 = 0;
      v120 = getAUAcousticPasscodeEncLog(void)::onceToken;
      do
      {
        if (v120 != -1)
        {
          dispatch_once(&getAUAcousticPasscodeEncLog(void)::onceToken, &__block_literal_global_3213);
        }

        v121 = getAUAcousticPasscodeEncLog(void)::gLog;
        if (os_log_type_enabled(getAUAcousticPasscodeEncLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          v122 = *(this + v119 + 1500);
          __C = 3.8521e-34;
          v124 = this;
          v125 = 1024;
          v126 = v122;
          _os_log_impl(&dword_1DDB85000, v121, OS_LOG_TYPE_DEFAULT, "[%p]  %c", &__C, 0x12u);
          v120 = getAUAcousticPasscodeEncLog(void)::onceToken;
        }

        else
        {
          v120 = -1;
        }

        result = 0;
        ++v119;
      }

      while (v119 < *(this + 373));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void AUAcousticPasscodeEnc::~AUAcousticPasscodeEnc(AUAcousticPasscodeEnc *this)
{
  AUAcousticPasscodeEnc::~AUAcousticPasscodeEnc(this);

  JUMPOUT(0x1E12BD160);
}

{
  v2 = 0;
  *this = &unk_1F591F0C8;
  do
  {
    v3 = *(this + v2 + 2152);
    if (v3)
    {
      *(this + v2 + 2160) = v3;
      operator delete(v3);
    }

    v2 -= 24;
  }

  while (v2 != -240);
  for (i = 0; i != -72; i -= 24)
  {
    v5 = *(this + i + 1912);
    if (v5)
    {
      *(this + i + 1920) = v5;
      operator delete(v5);
    }
  }

  for (j = 0; j != -72; j -= 24)
  {
    v7 = *(this + j + 1840);
    if (v7)
    {
      *(this + j + 1848) = v7;
      operator delete(v7);
    }
  }

  v8 = *(this + 135);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 81);
  if (v9)
  {
    *(this + 82) = v9;
    operator delete(v9);
  }

  v10 = *(this + 78);
  if (v10)
  {
    *(this + 79) = v10;
    operator delete(v10);
  }

  ausdk::AUBase::~AUBase(this);
}

id getIntToNSStringScopeMap(void)
{
  v3[8] = *MEMORY[0x1E69E9840];
  {
    v2[0] = &unk_1F595D158;
    v2[1] = &unk_1F595D170;
    v3[0] = @"Global";
    v3[1] = @"Input";
    v2[2] = &unk_1F595D188;
    v2[3] = &unk_1F595D1A0;
    v3[2] = @"Output";
    v3[3] = @"Group";
    v2[4] = &unk_1F595D1B8;
    v2[5] = &unk_1F595D1D0;
    v3[4] = @"Part";
    v3[5] = @"Note";
    v2[6] = &unk_1F595D1E8;
    v2[7] = &unk_1F595D200;
    v3[6] = @"Layer";
    v3[7] = @"LayerItem";
    getIntToNSStringScopeMap(void)::intToNSStringMapScope = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  }

  v0 = getIntToNSStringScopeMap(void)::intToNSStringMapScope;

  return v0;
}

id createNSDescriptionFromDSPGraphBox(DSPGraph::Box *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v33 = [MEMORY[0x1E695DF90] dictionary];
  if ((*(*a1 + 216))(a1))
  {
    v2 = (*(*a1 + 216))(a1);
    v3 = createNSDescriptionFromAudioUnit(*(v2 + 848));
    [v33 setObject:v3 forKey:@"AUState"];
  }

  v34 = [MEMORY[0x1E695DF90] dictionary];
  v36 = getIntToNSStringScopeMap();
  v4 = [v36 count];
  v43 = 0;
  if (v4)
  {
    v5 = 0;
    v38 = v4;
    do
    {
      v41 = 4;
      v42 = 0;
      if (!(*(*a1 + 304))(a1, 11, v5, 0, &v42, &v41))
      {
        v6 = [MEMORY[0x1E695DF90] dictionary];
        v40 = 0;
        if (v42)
        {
          while (1)
          {
            v7 = [MEMORY[0x1E695DF90] dictionary];
            __p = [MEMORY[0x1E695DF90] dictionary];
            v47 = a1;
            v48 = &v43;
            v49 = &v40;
            p_p = &__p;
            addGenericBoxPropToDescription(NSMutableDictionary *,DSPGraph::Box &,unsigned int const&,unsigned int const&)::$_0::operator()(&v47, 2, @"SampleRate", &getABHelperSerializer<double>(void)::sSerializer);
            addGenericBoxPropToDescription(NSMutableDictionary *,DSPGraph::Box &,unsigned int const&,unsigned int const&)::$_0::operator()(&v47, 8, @"StreamFormat", &getABHelperSerializer<AudioStreamBasicDescription>(void)::sSerializer);
            addGenericBoxPropToDescription(NSMutableDictionary *,DSPGraph::Box &,unsigned int const&,unsigned int const&)::$_0::operator()(&v47, 11, @"ElementCount", &getABHelperSerializer<unsigned int>(void)::sSerializer);
            addGenericBoxPropToDescription(NSMutableDictionary *,DSPGraph::Box &,unsigned int const&,unsigned int const&)::$_0::operator()(&v47, 12, @"Latency", &getABHelperSerializer<double>(void)::sSerializer);
            addGenericBoxPropToDescription(NSMutableDictionary *,DSPGraph::Box &,unsigned int const&,unsigned int const&)::$_0::operator()(&v47, 20, @"TailTime", &getABHelperSerializer<double>(void)::sSerializer);
            addGenericBoxPropToDescription(NSMutableDictionary *,DSPGraph::Box &,unsigned int const&,unsigned int const&)::$_0::operator()(&v47, 21, @"BypassEffect", &getABHelperSerializer<unsigned int>(void)::sSerializer);
            addGenericBoxPropToDescription(NSMutableDictionary *,DSPGraph::Box &,unsigned int const&,unsigned int const&)::$_0::operator()(&v47, 29, @"InPlaceProcessing", &getABHelperSerializer<unsigned int>(void)::sSerializer);
            addGenericBoxPropToDescription(NSMutableDictionary *,DSPGraph::Box &,unsigned int const&,unsigned int const&)::$_0::operator()(&v47, 54, @"NickName", &getABHelperSerializer<__CFString const*>(void)::sSerializer);
            [v7 setObject:__p forKey:@"Generic"];

            v8 = v7;
            v44 = [MEMORY[0x1E695DF90] dictionary];
            (*(*a1 + 208))(&__p, a1);
            v47 = a1;
            v48 = &v43;
            v49 = &v40;
            p_p = &v44;
            if (SHIDWORD(__p) <= 1852206703)
            {
              break;
            }

            switch(HIDWORD(__p))
            {
              case 0x7663676E:
                addSpecificBoxPropToDescription(NSMutableDictionary *,DSPGraph::Box &,unsigned int const&,unsigned int const&)::$_0::operator()(&v47, 100, @"NumPropVectors", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                v12 = 0;
                do
                {
                  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PropVector%u", v12];
                  addSpecificBoxPropToDescription(NSMutableDictionary *,DSPGraph::Box &,unsigned int const&,unsigned int const&)::$_0::operator()(&v47, v12, v13, &getABHelperSerializer<float []>(void)::sSerializer);

                  v12 = (v12 + 1);
                }

                while (v12 != 100);
                break;
              case 0x73726363:
                addSpecificBoxPropToDescription(NSMutableDictionary *,DSPGraph::Box &,unsigned int const&,unsigned int const&)::$_0::operator()(&v47, 3014, @"SampleRateConverterComplexity", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                v9 = 26;
                v10 = @"RenderQuality";
LABEL_22:
                v11 = &getABHelperSerializer<unsigned int>(void)::sSerializer;
                goto LABEL_23;
              case 0x6E666E70:
                addSpecificBoxPropToDescription(NSMutableDictionary *,DSPGraph::Box &,unsigned int const&,unsigned int const&)::$_0::operator()(&v47, 0, @"EnableDetailedLogging", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                v9 = 1;
                v10 = @"LogSamplingThreshold";
                goto LABEL_22;
            }

LABEL_24:
            [v8 setObject:v44 forKey:@"SubTypeSpecific"];

            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Element: %u", v40];
            [v6 setObject:v8 forKey:v14];

            if (++v40 >= v42)
            {
              goto LABEL_25;
            }
          }

          v9 = 3098;
          if (HIDWORD(__p) == 1684170606)
          {
            v10 = @"ParameterChangeSmoothingTime";
            v11 = &getABHelperSerializer<double>(void)::sSerializer;
          }

          else
          {
            if (HIDWORD(__p) == 1684368505)
            {
              v9 = 64000;
              v10 = @"MaxDelayFrames";
              goto LABEL_22;
            }

            v10 = @"ParameterChangeSmoothingTime";
            v11 = &getABHelperSerializer<double>(void)::sSerializer;
            if (HIDWORD(__p) != 1734437230)
            {
              goto LABEL_24;
            }
          }

LABEL_23:
          addSpecificBoxPropToDescription(NSMutableDictionary *,DSPGraph::Box &,unsigned int const&,unsigned int const&)::$_0::operator()(&v47, v9, v10, v11);
          goto LABEL_24;
        }

LABEL_25:
        v15 = MEMORY[0x1E696AEC0];
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v43];
        v17 = [v36 objectForKey:v16];
        v18 = [v15 stringWithFormat:@"Scope : %@", v17];
        [v34 setObject:v6 forKey:v18];
      }

      v5 = ++v43;
    }

    while (v38 > v43);
  }

  [v33 setObject:v34 forKey:@"BoxProperties"];
  v37 = [MEMORY[0x1E695DF90] dictionary];
  v39 = getIntToNSStringScopeMap();
  v35 = [v39 count];
  if (v35)
  {
    for (i = 0; i < v35; i = (i + 1))
    {
      v20 = [MEMORY[0x1E695DF90] dictionary];
      (*(*a1 + 96))(&__p, a1, i);
      v21 = __p;
      if (v46 != __p)
      {
        v22 = 0;
        do
        {
          (*(*a1 + 104))(&v47, a1, i, v21[v22]);
          if (v52 == 1)
          {
            v23 = (*(*a1 + 88))(a1, *(__p + v22), i, 0);
            v24 = v51;
            v26 = @"inf";
            if (v23 == INFINITY || (v26 = @"-inf", v23 == -INFINITY))
            {
              [v20 setObject:v26 forKey:v24];
            }

            else
            {
              *&v25 = v23;
              v27 = [MEMORY[0x1E696AD98] numberWithFloat:{@"-inf", v25}];
              [v20 setObject:v27 forKey:v24];
            }
          }

          ++v22;
          v21 = __p;
        }

        while (v22 < (v46 - __p) >> 2);
      }

      v28 = MEMORY[0x1E696AEC0];
      v29 = [MEMORY[0x1E696AD98] numberWithInt:i];
      v30 = [v39 objectForKey:v29];
      v31 = [v28 stringWithFormat:@"Scope: %@", v30];
      [v37 setObject:v20 forKey:v31];

      if (__p)
      {
        v46 = __p;
        operator delete(__p);
      }
    }
  }

  [v33 setObject:v37 forKey:@"BoxParameters"];

  return v33;
}

void BlockProcessorLowDelay::BlockProcessorLowDelay(BlockProcessorLowDelay *this, int a2, const unsigned int *a3, int a4, const unsigned int *a5, int a6, unsigned int a7, int (*a8)(void *, unsigned int, const AudioBufferList **, AudioBufferList **), void *a9)
{
  *(this + 2) = a2;
  *(this + 3) = a7;
  BlockBuffer::Alloc(this, a3);
  *(this + 8) = a4;
  *(this + 9) = a7;
  BlockBuffer::Alloc((this + 24), a5);
  *(this + 14) = a4;
  *(this + 15) = a7;
  BlockBuffer::Alloc((this + 48), a5);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  *(this + 9) = a8;
  *(this + 10) = a9;
  *(this + 96) = 0;
  *(this + 22) = a6;
  *(this + 23) = 0;
  do
  {
    v17 = (v17 + a6) % a7;
    if (v17 > v15)
    {
      *(this + 23) = v17;
      v15 = v17;
    }

    if (v17)
    {
      v18 = v16 >= a7;
    }

    else
    {
      v18 = 1;
    }

    ++v16;
  }

  while (!v18);
}

void sub_1DDC96DF4(_Unwind_Exception *a1)
{
  BlockBuffer::~BlockBuffer((v1 + 24));
  BlockBuffer::~BlockBuffer(v1);
  _Unwind_Resume(a1);
}

uint64_t BlockProcessorLowDelay::Process(BlockProcessorLowDelay *this, unsigned int a2, const AudioBufferList **a3, AudioBufferList **a4)
{
  *(this + 96) = 0;
  if (*(this + 22) != a2)
  {
    return 4294956428;
  }

  v4 = a2;
  if (a2)
  {
    v7 = 0;
    v8 = *(this + 3);
    v32 = *(this + 3);
    do
    {
      v9 = *(this + 4);
      v10 = *(this + 2);
      if (*(this + 3) - v9 >= v4)
      {
        v11 = v4;
      }

      else
      {
        v11 = *(this + 3) - v9;
      }

      if (v10)
      {
        v30 = v7;
        v31 = v4;
        v12 = 0;
        v13 = (4 * v7);
        v14 = (4 * v9);
        v29 = v11;
        v15 = 4 * v11;
        do
        {
          v16 = *(*this + 8 * v12);
          if (*v16)
          {
            v17 = 0;
            v18 = a3[v12];
            v19 = 4;
            do
            {
              memcpy((*&v16[v19] + v14), (*(&v18->mNumberBuffers + v19 * 4) + v13), v15);
              ++v17;
              v19 += 4;
            }

            while (v17 < *v16);
            v10 = *(this + 2);
          }

          ++v12;
        }

        while (v12 < v10);
        v9 = *(this + 4);
        v7 = v30;
        v4 = v31;
        v8 = v32;
        v11 = v29;
      }

      *(this + 4) = v9 + v11;
      if (v9 + v11 == v8)
      {
        v20 = *this;
        v21 = *(this + 6);
        v22 = *(this + 3);
        *(this + 16) = 0;
        v23 = v11;
        v24 = (*(this + 9))(*(this + 10), v8, v20, v21);
        v25 = *(this + 23) - *(this + 10);
        v26 = v25 & ~(v25 >> 31);
        OutputBlockBuffer::Read(this + 6, v26, 0, a4);
        OutputBlockBuffer::Read(this + 12, v11 - v26, v26, a4);
        v8 = v32;
        OutputBlockBuffer::Read(this + 12, v32 - (v11 - v26), 0, v22);
        *(this + 4) = 0;
        *(this + 10) = 0;
        *(this + 96) = 1;
        if (v24)
        {
          return v24;
        }
      }

      else
      {
        OutputBlockBuffer::Read(this + 6, v11, v7, a4);
        v23 = v11;
      }

      v7 += v23;
      v4 -= v23;
    }

    while (v4);
  }

  return 0;
}

uint64_t AULando::ValidFormat(AULando *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  v5 = a2;
  if (ausdk::ASBD::IsCommonFloat32(a4, a2))
  {
    v6 = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  else
  {
    v6 = 0;
  }

  if (v5 == 2)
  {
    if (v6)
    {
      mChannelsPerFrame = a4->mChannelsPerFrame;
      v6 = mChannelsPerFrame == 6 || mChannelsPerFrame == 8;
    }
  }

  else if (v5 == 1 && a4->mChannelsPerFrame != 2)
  {
    v6 = 0;
  }

  v9 = a4->mSampleRate >= 44100.0;
  if (a4->mSampleRate > 48000.0)
  {
    v9 = 0;
  }

  return v9 & v6;
}

uint64_t AULando::SupportedNumChannels(AULando *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AULando::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 2;
}

uint64_t AULando::NewFactoryPresetSet(AULando *this, const AUPreset *a2)
{
  presetNumber = a2->presetNumber;
  if (presetNumber > 1)
  {
    return 4294956445;
  }

  (*(*this + 152))(this, 0, 0, 0, 0, 4.0);
  (*(*this + 152))(this, 1, 0, 0, 0, 0.0);
  (*(*this + 152))(this, 2, 0, 0, 0, kAULandoPresetDefinitions[12 * presetNumber + 2]);
  (*(*this + 152))(this, 3, 0, 0, 0, -0.36);
  (*(*this + 152))(this, 4, 0, 0, 0, 1.92);
  (*(*this + 152))(this, 5, 0, 0, 0, 1.0);
  (*(*this + 152))(this, 6, 0, 0, 0, 1.0);
  (*(*this + 152))(this, 7, 0, 0, 0, 0.755);
  (*(*this + 152))(this, 8, 0, 0, 0, 400.0);
  (*(*this + 152))(this, 9, 0, 0, 0, 10000.0);
  (*(*this + 152))(this, 10, 0, 0, 0, 1.0);
  (*(*this + 152))(this, 11, 0, 0, 0, 0.0);
  ausdk::AUBase::SetAFactoryPresetAsCurrent(this, &kAULandoPresets + presetNumber);
  return 0;
}

uint64_t AULando::GetPresets(AULando *this, const __CFArray **a2)
{
  if (a2)
  {
    Mutable = CFArrayCreateMutable(0, 2, 0);
    CFArrayAppendValue(Mutable, &kAULandoPresets);
    CFArrayAppendValue(Mutable, &unk_1ECDA6178);
    *a2 = Mutable;
  }

  return 0;
}

uint64_t AULando::GetParameterValueStrings(AULando *this, int a2, int a3, const __CFArray **a4)
{
  if (a3 | a2)
  {
    return 4294956418;
  }

  if (!a4)
  {
    return 0;
  }

  v6 = CFArrayCreate(0, kAULandoAlgoStrings, 5, 0);
  result = 0;
  *a4 = v6;
  return result;
}

uint64_t AULando::RestoreState(AULando *this, const void *a2)
{
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v5 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v4, 8u), v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v8 & 1) == 0) || (v9 = ausdk::AUElement::GetParameter(v7, 9u), v10 = ausdk::AUBase::RestoreState(this, a2), v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v12 & 1) == 0) || (v13 = ausdk::AUElement::GetParameter(v11, 8u), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v15 & 1) == 0))
  {
    abort();
  }

  v16 = ausdk::AUElement::GetParameter(v14, 9u);
  if (Parameter != v13 || v9 != v16)
  {
    AULando::Implementation::updateCrossover(*(this + 68), v13, v16);
  }

  return v10;
}

void AULando::Implementation::updateCrossover(Crossover2f **this, double a2, double a3)
{
  v4 = *this;
  if (v4)
  {
    Crossover2f::SetLowCrossover(v4, a2, 3);
    v6 = *this;

    Crossover2f::SetHighCrossover(v6, a3, 1);
  }
}

uint64_t AULando::GetParameterInfo(AULando *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  if (a2)
  {
    return 4294956418;
  }

  v6 = a3;
  buffer->flags = 0;
  buffer->unitName = 0;
  result = 4294956418;
  if (a3 > 5)
  {
    if (a3 > 8)
    {
      switch(a3)
      {
        case 9:
          v7 = 1.67171449e31;
          v6 = kAudioUnitParameterUnit_Hertz;
          v9 = @"High Crossover Frequency";
          v8 = 10000.0;
          break;
        case 10:
          v7 = 0.0078125;
          v8 = 1.0;
          v6 = kAudioUnitParameterUnit_Boolean;
          v9 = @"Inverted Rs Polarity";
          break;
        case 11:
          v7 = 0.0078125;
          v8 = 0.0;
          v6 = kAudioUnitParameterUnit_Boolean;
          v9 = @"Soft Bypass";
          break;
        default:
          return result;
      }
    }

    else if (a3 == 6)
    {
      v7 = 0.0078125;
      v8 = 1.0;
      v6 = kAudioUnitParameterUnit_Boolean;
      v9 = @"Smoothing";
    }

    else if (a3 == 7)
    {
      v6 = kAudioUnitParameterUnit_Generic;
      v7 = 0.0078125;
      v9 = @"Decay";
      v8 = 0.755;
    }

    else
    {
      v7 = 8.85443861e20;
      v9 = @"Low Crossover Frequency";
      v8 = 400.0;
    }
  }

  else
  {
    v7 = 512.0;
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v6 = kAudioUnitParameterUnit_Generic;
        __asm { FMOV            V0.2S, #-1.0 }

        v7 = -_D0;
        v9 = @"Front-Back Bias";
        v8 = -0.36;
      }

      else if (a3 == 4)
      {
        v6 = kAudioUnitParameterUnit_Generic;
        v9 = @"Steering";
        v8 = 1.92;
      }

      else
      {
        v7 = 0.0078125;
        v8 = 1.0;
        v6 = kAudioUnitParameterUnit_Boolean;
        v9 = @"Steering Moderator";
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        v7 = 0.0078125;
        v8 = 0.0;
        v6 = kAudioUnitParameterUnit_Boolean;
        v9 = @"Phase Shift";
      }

      else
      {
        if (a3 != 2)
        {
          return result;
        }

        v7 = 0.0078125;
        v8 = 1.0;
        v9 = @"Downmix C";
      }
    }

    else
    {
      v8 = 4.0;
      v6 = kAudioUnitParameterUnit_Indexed;
      v9 = @"Algorithm";
    }
  }

  buffer->cfNameString = v9;
  buffer->flags = 0x8000000;
  CFStringGetCString(v9, buffer->name, 52, 0x8000100u);
  result = 0;
  buffer->unit = v6;
  *&buffer->minValue = v7;
  buffer->defaultValue = v8;
  buffer->flags |= 0xC0000000;
  return result;
}

ausdk::AUInputElement *AULando::Render(AULando *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v9 = Element, (v10 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = v10;
  v14 = 0;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v13)
  {
    result = ausdk::AUInputElement::PullInput(result, &v14, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v9 + 144) || !*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    return (*(*this + 176))(this, a2, *(v9 + 152) + 48, *(v11 + 152) + 48, a4);
  }

  return result;
}

uint64_t AULando::ProcessMultipleBufferLists(AULando *this, unsigned int *a2, unsigned int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  if (a4 == 1 && a5 && (*a5 ? (v7 = a6 == 1) : (v7 = 0), v7 ? (v8 = a7 == 0) : (v8 = 1), !v8 && *a7))
  {
    return (*(*this + 176))(this, a2);
  }

  else
  {
    return 4294956418;
  }
}

uint64_t AULando::ProcessBufferLists(IR::IRProcessor ***this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, float *a5)
{
  if (a3->mNumberBuffers == 2 && (a4->mNumberBuffers == 8 || a4->mNumberBuffers == 6))
  {
    v8 = *(this + 528);
    mData = a3->mBuffers[0].mData;
    v10 = *&a3[1].mBuffers[0].mNumberChannels;
    v11 = a4->mBuffers[0].mData;
    v44 = *&a4[2].mNumberBuffers;
    v45 = *&a4[1].mBuffers[0].mNumberChannels;
    v12 = a4[2].mBuffers[0].mData;
    v43 = *&a4[3].mBuffers[0].mNumberChannels;
    v13 = *&a4[4].mNumberBuffers;
    v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
    if (v15)
    {
      Parameter = ausdk::AUElement::GetParameter(v14, 0);
      if (v8)
      {
        Parameter = 1;
      }

      v42 = Parameter;
      vDSP_vclr(v12, 1, a5);
      v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
      if (v18)
      {
        v19 = ausdk::AUElement::GetParameter(v17, 1u);
        v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
        if (v21)
        {
          v22 = ausdk::AUElement::GetParameter(v20, 2u);
          v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
          if (v24)
          {
            v25 = ausdk::AUElement::GetParameter(v23, 3u);
            v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
            if (v27)
            {
              v28 = ausdk::AUElement::GetParameter(v26, 4u);
              v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
              if (v30)
              {
                v31 = ausdk::AUElement::GetParameter(v29, 5u);
                v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
                if (v33)
                {
                  v34 = ausdk::AUElement::GetParameter(v32, 7u);
                  v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
                  if (v36)
                  {
                    v37 = ausdk::AUElement::GetParameter(v35, 6u);
                    v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
                    if (v39)
                    {
                      v40 = ausdk::AUElement::GetParameter(v38, 0xBu) == 1.0;
                      AULando::Implementation::algo(this[68], v42, a5, mData, v10, v11, v45, v44, v25, v28, v34, v43, v13, v19 != 0.0, v22 != 0.0, v31 != 0.0, v37 != 0.0, v40, a5);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    abort();
  }

  return 4294956428;
}

void AULando::Implementation::algo(IR::IRProcessor **this, int a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float a9, float a10, float a11, float *a12, float *a13, BOOL a14, BOOL a15, char a16, unsigned __int8 a17, unsigned __int8 a18, int a19)
{
  v50 = &v45;
  v56[2] = *MEMORY[0x1E69E9840];
  v48 = a13;
  v49 = a12;
  v56[0] = a4;
  v56[1] = a5;
  MEMORY[0x1EEE9AC00](this);
  v30 = v29;
  v55[0] = (&v45 - ((v28 + 15) & 0x7FFFFFFF0));
  v55[1] = &v55[0][v29];
  MEMORY[0x1EEE9AC00](v31);
  v54[0] = (&v45 - v33);
  v54[1] = (&v45 + 4 * v32 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v52 = (&v45 - v36);
  v53 = (&v45 + 4 * v35 - v36);
  v38 = Crossover2f::Process(*v37, v56, v55, v54, &v52, 2, a3, 1);
  v39 = v53;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        AULando::Implementation::algoBypassAlignedLatency(this, a3, v52, v53, a6, a7, a8, v49, v48);
      }

LABEL_16:
      v42 = MEMORY[0x1EEE9AC00](v38);
      MEMORY[0x1E12BE5D0](v55[0], 1, v54[0], 1, &v45 - ((4 * v30 + 15) & 0x7FFFFFFF0), 1, v30, v42);
      IR::FixedIntegerDelay<float>::process();
    }

    memcpy(a6, v52, 4 * v30);
    memcpy(a7, v39, 4 * v30);
    vDSP_vclr(a8, 1, v30);
    vDSP_vclr(v49, 1, v30);
    v41 = v48;
  }

  else if (a2 == 2)
  {
    AULando::LRLsRs::algoExtractLsRsPI(a3, v52, v53, a6, a7, v49, v48, a14, this + 1);
    v41 = a8;
  }

  else
  {
    v47 = a8;
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v40 = v47;
        AULando::LRCLsRs::algoUpmixPISteered((this + 52), a3, v52, v53, a6, a7, v47, v49, a9, a10, a11, v48, a14, a16, a17, a18, (this + 1));
        if (a15)
        {
          v51 = 1060439283;
          MEMORY[0x1E12BE8F0](v40, 1, &v51, a6, 1, a6, 1, v30);
          MEMORY[0x1E12BE8F0](v40, 1, &v51, a7, 1, a7, 1, v30);
          vDSP_vclr(v40, 1, v30);
        }
      }

      goto LABEL_16;
    }

    if (!a15)
    {
      LOBYTE(v43) = a14;
      v38 = AULando::LRCLsRs::algoUpmixPI(a3, v52, v53, a6, a7, v47, v49, v48, v43, this + 1, v45, v46);
      goto LABEL_16;
    }

    AULando::LRLsRs::algoUpmixPI(a3, v52, v53, a6, a7, v49, v48, a14, this + 1, *v44, v44[4]);
    v41 = v47;
  }

  vDSP_vclr(v41, 1, v30);
  goto LABEL_16;
}

void AULando::Implementation::algoBypassAlignedLatency(IR::IRProcessor **this, vDSP_Length a2, const float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v15 = a2;
  MEMORY[0x1EEE9AC00](this);
  v17 = (&v24[-1] - v16);
  v25[0] = v18;
  v25[1] = (&v24[-1] - v16);
  v20 = *(v19 + 8);
  v24[0] = v21;
  IR::IRProcessor::processMultipleInputs(v20, v24, v25, 1u, 2u, a2, 1.0, 0);
  v24[0] = a6;
  v24[1] = v17;
  v22 = this[2];
  v23 = a4;
  IR::IRProcessor::processMultipleInputs(v22, &v23, v24, 1u, 2u, a2, 1.0, 0);
  vDSP_vclr(a7, 1, v15);
  vDSP_vclr(a8, 1, v15);
  vDSP_vclr(a9, 1, v15);
}

uint64_t AULando::SetParameter(AULando *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  v5 = *(this + 68);
  v8[0] = this;
  v8[1] = v5;
  v9 = a2;
  v6 = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  AULando::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::OnExit::~OnExit(v8);
  return v6;
}

void sub_1DDC98310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AULando::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::OnExit::~OnExit(va);
  _Unwind_Resume(a1);
}

uint64_t AULando::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::OnExit::~OnExit(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFFFFFFFE) == 8)
  {
    v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(*a1 + 32, 0);
    if ((v3 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v2, 8u), v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(*a1 + 32, 0), (v6 & 1) == 0))
    {
      abort();
    }

    v7 = ausdk::AUElement::GetParameter(v5, 9u);
    AULando::Implementation::updateCrossover(*(a1 + 8), Parameter, v7);
  }

  return a1;
}

uint64_t AULando::SetProperty(AULando *this, int a2, int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if (a6 >= 4)
    {
      v8 = *a5 != 0;
      if (*(this + 528) == v8)
      {
        return 0;
      }

      else
      {
        if (*(this + 17) == 1)
        {
          (*(*this + 72))(this, 0, 0);
        }

        result = 0;
        *(this + 528) = v8;
      }
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AULando::GetProperty(AULando *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 528;
    goto LABEL_7;
  }

  if (a2 == 3700)
  {
    v6 = 376;
LABEL_7:
    v5 = 0;
    *a5 = *(this + v6);
    return v5;
  }

  return 4294956417;
}

uint64_t AULando::GetPropertyInfo(AULando *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v7 = 1;
  }

  else
  {
    if (a2 != 3700)
    {
      return 4294956417;
    }

    v7 = 0;
  }

  result = 0;
  *a6 = v7;
  *a5 = 4;
  return result;
}

void AULando::Reset(AULando *this)
{
  v1 = *(this + 68);
  if (*v1)
  {
    Crossover2f::Reset(*v1);
  }

  IR::IRProcessor::reset(*(v1 + 8));
  IR::IRProcessor::reset(*(v1 + 16));
  IR::FixedIntegerDelay<float>::reset();
}

pthread_t AULando::Cleanup(AULando *this)
{
  v1 = *(this + 68);
  std::unique_ptr<Crossover2f>::reset[abi:ne200100](v1, 0);
  IR::IRProcessor::uninitialize(*(v1 + 8));
  v2 = *(v1 + 16);

  return IR::IRProcessor::uninitialize(v2);
}

uint64_t *std::unique_ptr<Crossover2f>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 71) < 0)
    {
      operator delete(*(v2 + 48));
    }

    std::unique_ptr<ParametricFilters>::~unique_ptr[abi:ne200100]((v2 + 24));
    std::unique_ptr<ParametricFilters>::~unique_ptr[abi:ne200100]((v2 + 16));
    std::unique_ptr<ParametricFilters>::~unique_ptr[abi:ne200100]((v2 + 8));
    std::unique_ptr<ParametricFilters>::~unique_ptr[abi:ne200100](v2);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void ***std::unique_ptr<ParametricFilters>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ParametricFilters::~ParametricFilters(v2);
    MEMORY[0x1E12BD160]();
  }

  return a1;
}

void ParametricFilters::~ParametricFilters(void **this)
{
  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  v2 = this[18];
  this[18] = 0;
  if (v2)
  {
    (this[19])();
  }

  v3 = this[16];
  this[16] = 0;
  if (v3)
  {
    (this[17])();
  }

  v6 = this + 11;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = this + 8;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = this[5];
  if (v4)
  {
    this[6] = v4;
    operator delete(v4);
  }

  v5 = this[2];
  if (v5)
  {
    this[3] = v5;
    operator delete(v5);
  }
}

uint64_t AULando::Initialize(AULando *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    LODWORD(v3) = (*(*v2 + 24))(v2);
  }

  else
  {
    v3 = (*(this + 13) - *(this + 12)) >> 3;
  }

  if (v3 == 1)
  {
    v4 = *(this + 21);
    if (v4)
    {
      LODWORD(v5) = (*(*v4 + 24))(v4);
    }

    else
    {
      v5 = (*(this + 19) - *(this + 18)) >> 3;
    }

    if (v5 == 1)
    {
      Element = ausdk::AUScope::GetElement((this + 80), 0);
      if (!Element)
      {
        goto LABEL_20;
      }

      if (*(Element + 108) != 2)
      {
        return 4294956428;
      }

      v7 = ausdk::AUScope::GetElement((this + 128), 0);
      if (!v7)
      {
LABEL_20:
        ausdk::Throw(0xFFFFD583);
      }

      v8 = *(v7 + 108);
      if (v8 == 8 || v8 == 6)
      {
        SampleRate = AUDspLib::GetSampleRate(this);
        if (*(this + 67) != SampleRate)
        {
          *(this + 67) = SampleRate;
          (*(*this + 432))(this, 12, 0, 0);
        }

        (*(*this + 72))(this, 0, 0);
        AUDspLib::GetSampleRate(this);
        v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v12)
        {
          ausdk::AUElement::GetParameter(v11, 8u);
          v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v14)
          {
            ausdk::AUElement::GetParameter(v13, 9u);
            operator new();
          }
        }

        abort();
      }
    }
  }

  return 4294956428;
}

void sub_1DDC98A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E12BD160](v15, v16);
  _Unwind_Resume(a1);
}

uint64_t IR::HilbertFIR::initialize(IR::HilbertFIR *this, double a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  result = IR::IRProcessor::initialize(*this, v5, a3, 0);
  if (!result)
  {
    v8[0] = 0;
    if (a2 == 48000.0)
    {
      v7 = &off_1E866A410;
    }

    else
    {
      if (a2 != 44100.0)
      {
        return result;
      }

      v7 = &off_1E866A420;
    }

    return IR::IRProcessor::setIRCoeffs(*this, v7, v8);
  }

  return result;
}

void AULando::~AULando(AULando *this)
{
  AULando::~AULando(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591F338;
  v2 = *(this + 68);
  *(this + 68) = 0;
  if (v2)
  {
    std::default_delete<AULando::Implementation>::operator()[abi:ne200100](v2);
  }

  ausdk::AUBase::~AUBase(this);
}

void std::default_delete<AULando::Implementation>::operator()[abi:ne200100](uint64_t *a1)
{
  AULando::Tools::~Tools((a1 + 1));
  std::unique_ptr<Crossover2f>::reset[abi:ne200100](a1, 0);

  JUMPOUT(0x1E12BD160);
}

void AULando::Tools::~Tools(AULando::Tools *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    *(this + 18) = v5;
    operator delete(v5);
  }

  v6 = *(this + 13);
  if (v6)
  {
    *(this + 14) = v6;
    operator delete(v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    *(this + 11) = v7;
    operator delete(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }

  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](this + 1, 0);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](this, 0);
}

void sub_1DDC98D44(_Unwind_Exception *a1)
{
  MEMORY[0x1E12BD160](v2, 0x10A1C40AF302FDBLL);
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

void IR::IRProcessor::IRProcessor(IR::IRProcessor *this, unsigned int a2, float a3, unsigned int a4, int a5, char a6)
{
  v15 = CFURLCreateWithString(0, &stru_1F593E800, 0);
  if (v15)
  {
    IR::IRDataAttributes::IRDataAttributes(cf, &v15, a5, a6, 2, 0, 0.0);
    if (v15)
    {
      CFRelease(v15);
    }

    if (cf[0])
    {
      CFRetain(cf[0]);
    }

    if (v12)
    {
      CFRetain(v12);
    }

    if (v13)
    {
      CFRetain(v13);
    }

    if (v14)
    {
      CFRetain(v14);
      v9 = v14;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    *this = &unk_1F59355D0;
    *(this + 1) = 0;
    *(this + 4) = 0;
    caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((this + 20));
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
}

uint64_t IR::Source::getCoefficients(uint64_t a1)
{
  if (((*(*a1 + 24))(a1) & 1) == 0)
  {
    __assert_rtn("getCoefficients", "IRSource.h", 89, "providesCoefficients()");
  }

  return 4294956433;
}

uint64_t IR::Source::getLatency(IR::Source *this)
{
  if (*(this + 24))
  {
    return 0;
  }

  else
  {
    return *(this + 5);
  }
}

void IR::DynamicCoefficients::~DynamicCoefficients(IR::DynamicCoefficients *this)
{
  *this = &unk_1F5931C60;
  IR::IRDataAttributes::~IRDataAttributes((this + 8));

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5931C60;
  IR::IRDataAttributes::~IRDataAttributes((this + 8));
}

void std::__shared_ptr_emplace<IR::DynamicCoefficients>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5931CE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

void clsp::AdaptiveDisplacementController::setLogs(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[45];
  a1[44] = v5;
  a1[45] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a1[37];
  a1[36] = v8;
  a1[37] = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

uint64_t clsp::AdaptiveDisplacementController::zapBadValues(uint64_t this)
{
  v1 = *(this + 92);
  v2 = vcvtq_f64_f32(vabs_f32(v1));
  v3 = vdupq_n_s64(0x3CD203AF9EE75616uLL);
  v4 = vdupq_n_s64(0x430C6BF526340000uLL);
  *(this + 92) = vand_s8(v1, vmovn_s64(vandq_s8(vcgtq_f64(v2, v3), vcgtq_f64(v4, v2))));
  v5 = *(this + 192);
  v6 = fabsf(v5);
  if (v6 >= 1.0e15 || v6 <= 1.0e-15)
  {
    v5 = 0.0;
  }

  *(this + 192) = v5;
  v8 = *(this + 112);
  v9 = vcvtq_f64_f32(vabs_f32(v8));
  *(this + 112) = vand_s8(v8, vmovn_s64(vandq_s8(vcgtq_f64(v9, v3), vcgtq_f64(v4, v9))));
  v10 = *(this + 232);
  v11 = fabsf(v10);
  if (v11 >= 1.0e15 || v11 <= 1.0e-15)
  {
    v10 = 0.0;
  }

  *(this + 232) = v10;
  v13 = *(this + 252);
  v14 = fabsf(v13);
  if (v14 >= 1.0e15 || v14 <= 1.0e-15)
  {
    v13 = 0.0;
  }

  *(this + 252) = v13;
  v16 = *(this + 324);
  v17 = vabsq_f32(v16);
  v18 = vcvt_hight_f64_f32(v17);
  v19 = vcvtq_f64_f32(*v17.f32);
  *(this + 324) = vandq_s8(v16, vuzp1q_s32(vandq_s8(vcgtq_f64(v19, v3), vcgtq_f64(v4, v19)), vandq_s8(vcgtq_f64(v18, v3), vcgtq_f64(v4, v18))));
  v20 = *(this + 76);
  v21 = fabsf(v20);
  if (v21 >= 1.0e15 || v21 <= 1.0e-15)
  {
    v20 = 0.0;
  }

  if (v20 < *(this + 68))
  {
    v20 = *(this + 68);
  }

  *(this + 76) = v20;
  return this;
}

float clsp::AdaptiveDisplacementController::reset(clsp::AdaptiveDisplacementController *this)
{
  *(this + 332) = 0;
  *(this + 324) = 0;
  *(this + 92) = 0;
  *(this + 48) = 0;
  *(this + 14) = 0;
  *(this + 58) = 0;
  *(this + 63) = 0;
  result = (*(*this + 56))(this);
  *(this + 19) = result;
  return result;
}

float clsp::AdaptiveDisplacementController::analyzeDisp(clsp::AdaptiveDisplacementController *this, float a2, float a3)
{
  v5 = *(this + 18);
  v6 = *v5;
  v123 = v5[6];
  v7 = *(*v5 + 16) * v5[5] - **v5 * v123 - *(*v5 + 8) * v5[7];
  v8 = *(*v5 + 120);
  v9 = ((*(*v5 + 128) - v8) >> 3) - 1;
  v10 = *(v8 + 8 * v9);
  if (v9 >= 1)
  {
    v11 = v9 & 0x7FFFFFFF;
    v12 = v11 + 1;
    v13 = (v8 + 8 * v11 - 8);
    do
    {
      v14 = *v13--;
      v10 = v14 + v7 * v10;
      --v12;
    }

    while (v12 > 1);
  }

  v15 = *(v6 + 48);
  v16 = *(v6 + 56);
  v17 = (v16 - v15) >> 3;
  v18 = *(v15 + 8 * (v17 - 1));
  if (v17 - 1 >= 1)
  {
    v19 = (v17 - 1) & 0x7FFFFFFF;
    v20 = v19 + 1;
    v21 = (v15 + 8 * v19 - 8);
    do
    {
      v22 = *v21--;
      v18 = v22 + v7 * v18;
      --v20;
    }

    while (v20 > 1);
  }

  v23 = *(v5 + 4);
  v24 = v5[3];
  v121 = v5[4];
  v25 = *(v6 + 32);
  __p = 0;
  v126 = 0;
  v127 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v15, v16, v17);
  v26 = ((*(v6 + 56) - *(v6 + 48)) >> 3) - 1;
  v27 = *(__p + v26) * v26;
  if (v26 > 1)
  {
    v28 = (v26 & 0x7FFFFFFF) - 1;
    do
    {
      v27 = v7 * v27 + v28 * *(__p + v28);
      v29 = v28-- + 1;
    }

    while (v29 > 2);
  }

  v30 = v23 * a2;
  v126 = __p;
  operator delete(__p);
  v31 = *(v6 + 72);
  v32 = ((*(v6 + 80) - v31) >> 3) - 1;
  v33 = *(v31 + 8 * v32);
  if (v32 < 2)
  {
    v37 = v121;
  }

  else
  {
    v34 = v32 & 0x7FFFFFFF;
    v35 = v34 + 1;
    v36 = (v31 + 8 * v34 - 8);
    v37 = v121;
    do
    {
      v38 = *v36--;
      v33 = v38 + v7 * v33;
      --v35;
    }

    while (v35 > 2);
  }

  v39 = v24 * (v7 - v123);
  v40 = *(v6 + 96);
  v41 = ((*(v6 + 104) - v40) >> 3) - 1;
  v42 = *(v40 + 8 * v41);
  if (v41 > 1)
  {
    v43 = v41 & 0x7FFFFFFF;
    v44 = v43 + 1;
    v45 = (v40 + 8 * v43 - 8);
    do
    {
      v46 = *v45--;
      v42 = v46 + v39 * v42;
      --v44;
    }

    while (v44 > 2);
  }

  v47 = (v30 + v37 * v18 * v24 - v10 * v39) / (v25 + v18 * v24 + v27 * v39);
  v5[4] = v47;
  v5[5] = v7 * -(v7 * v33) + v10 * v47 + -(v39 * v42) * v39;
  v5[6] = v7;
  v5[7] = v123;
  v48 = v7;
  v49 = -v48;
  v119 = v48;
  if (v48 >= 0.0)
  {
    v49 = v7;
  }

  v50 = *(this + 48);
  v51 = 180;
  if (v50 < v49)
  {
    v51 = 176;
  }

  v52 = v50 + (*(this + v51) * (v49 - v50));
  *(this + 48) = v52;
  v118 = v52;
  if (*(this + 17) >= v52)
  {
    v53 = *(this + 17);
  }

  else
  {
    v53 = v52;
  }

  v54 = *(this + 19);
  v55 = *v54;
  v124 = v54[6];
  v56 = *(*v54 + 16) * v54[5] - **v54 * v124 - *(*v54 + 8) * v54[7];
  v57 = *(*v54 + 120);
  v58 = ((*(*v54 + 128) - v57) >> 3) - 1;
  v59 = *(v57 + 8 * v58);
  if (v58 >= 1)
  {
    v60 = v58 & 0x7FFFFFFF;
    v61 = v60 + 1;
    v62 = (v57 + 8 * v60 - 8);
    do
    {
      v63 = *v62--;
      v59 = v63 + v56 * v59;
      --v61;
    }

    while (v61 > 1);
  }

  v64 = *(v55 + 48);
  v65 = *(v55 + 56);
  v66 = (v65 - v64) >> 3;
  v67 = *(v64 + 8 * (v66 - 1));
  if (v66 - 1 >= 1)
  {
    v68 = (v66 - 1) & 0x7FFFFFFF;
    v69 = v68 + 1;
    v70 = (v64 + 8 * v68 - 8);
    do
    {
      v71 = *v70--;
      v67 = v71 + v56 * v67;
      --v69;
    }

    while (v69 > 1);
  }

  v72 = *(v54 + 4);
  v73 = v54[3];
  v120 = v54[4];
  v74 = *(v55 + 32);
  __p = 0;
  v126 = 0;
  v127 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v64, v65, v66);
  v75 = ((*(v55 + 56) - *(v55 + 48)) >> 3) - 1;
  v76 = *(__p + v75) * v75;
  if (v75 > 1)
  {
    v77 = (v75 & 0x7FFFFFFF) - 1;
    do
    {
      v76 = v56 * v76 + v77 * *(__p + v77);
      v78 = v77-- + 1;
    }

    while (v78 > 2);
  }

  v79 = v72 * a3;
  v126 = __p;
  operator delete(__p);
  v80 = *(v55 + 72);
  v81 = ((*(v55 + 80) - v80) >> 3) - 1;
  v82 = *(v80 + 8 * v81);
  if (v81 < 2)
  {
    v86 = v120;
  }

  else
  {
    v83 = v81 & 0x7FFFFFFF;
    v84 = v83 + 1;
    v85 = (v80 + 8 * v83 - 8);
    v86 = v120;
    do
    {
      v87 = *v85--;
      v82 = v87 + v56 * v82;
      --v84;
    }

    while (v84 > 2);
  }

  v88 = v79;
  v89 = v73 * (v56 - v124);
  v90 = *(v55 + 96);
  v91 = ((*(v55 + 104) - v90) >> 3) - 1;
  v92 = *(v90 + 8 * v91);
  if (v91 < 2)
  {
    v96 = v53;
  }

  else
  {
    v93 = v91 & 0x7FFFFFFF;
    v94 = v93 + 1;
    v95 = (v90 + 8 * v93 - 8);
    v96 = v53;
    do
    {
      v97 = *v95--;
      v92 = v97 + v89 * v92;
      --v94;
    }

    while (v94 > 2);
  }

  v98 = (v88 + v86 * v67 * v73 - v59 * v89) / (v74 + v67 * v73 + v76 * v89);
  v54[4] = v98;
  v54[5] = v56 * -(v56 * v82) + v59 * v98 + -(v89 * v92) * v89;
  v54[6] = v56;
  v54[7] = v124;
  v99 = v56;
  v100 = -v99;
  if (v99 >= 0.0)
  {
    v100 = v56;
  }

  v101 = *(this + 58);
  v102 = 220;
  if (v101 < v100)
  {
    v102 = 216;
  }

  v103 = v101 + (*(this + v102) * (v100 - v101));
  *(this + 58) = v103;
  v104 = *(this + 17);
  if (v104 < v103)
  {
    v104 = v103;
  }

  v105 = *(this + 63) + (*(this + 62) * ((*(this + 18) * v104) - *(this + 63)));
  *(this + 63) = v105;
  *(this + 19) = v96 * v105;
  v106 = *(this + 44);
  v107 = *v106;
  if (*v106)
  {
    *&__p = a3;
    clsp::CLSP_Log::LogCLSPData(v107, &__p, 1);
    v106 = *(this + 44);
  }

  v108 = v106[2];
  if (v108)
  {
    *&__p = v119;
    clsp::CLSP_Log::LogCLSPData(v108, &__p, 1);
    v106 = *(this + 44);
    v109 = v106[2];
    if (v109)
    {
      *&__p = v118;
      clsp::CLSP_Log::LogCLSPData(v109, &__p, 1);
      v106 = *(this + 44);
      v110 = v106[2];
      if (v110)
      {
        *&__p = v96;
        clsp::CLSP_Log::LogCLSPData(v110, &__p, 1);
        v106 = *(this + 44);
        v111 = v106[2];
        if (v111)
        {
          *&__p = v105;
          clsp::CLSP_Log::LogCLSPData(v111, &__p, 1);
          v106 = *(this + 44);
        }
      }
    }
  }

  v112 = *v106;
  if (*v106)
  {
    *&__p = v56;
    clsp::CLSP_Log::LogCLSPData(v112, &__p, 1);
    v113 = **(this + 44);
    if (v113)
    {
      *&__p = v103;
      clsp::CLSP_Log::LogCLSPData(v113, &__p, 1);
      v114 = **(this + 44);
      if (v114)
      {
        LODWORD(__p) = *(this + 19);
        clsp::CLSP_Log::LogCLSPData(v114, &__p, 1);
        v115 = **(this + 44);
        if (v115)
        {
          v116 = (*(*this + 128))(this);
          *&__p = log10f(v116[21] * ((((1.0 - v116[12]) + v116[13]) * ((v116[14] + v116[15]) + v116[16])) / ((v116[12] + 1.0) + v116[13]))) * 20.0;
          clsp::CLSP_Log::LogCLSPData(v115, &__p, 1);
        }
      }
    }
  }

  return *(this + 19);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDC99CC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float clsp::AdaptiveDisplacementController::processSample(clsp::AdaptiveDisplacementController *this, float result, float a3)
{
  if (*(this + 64) == 1)
  {
    v21 = v8;
    v22 = v7;
    v23 = v6;
    v24 = v5;
    v25 = v3;
    v26 = v4;
    v11 = *(this + 19) * *(this + 86);
    if (v11 >= *(this + 70))
    {
      v11 = *(this + 70);
    }

    v12 = (*(this + 64) + (*(this + 65) * v11)) + (*(this + 66) * (v11 * v11));
    v13 = (*(this + 67) + (*(this + 68) * v11)) + (*(this + 69) * (v11 * v11));
    *(this + 76) = v12;
    *(this + 77) = v13;
    v14 = *(*(this + 36) + 16);
    if (v14)
    {
      __src = v12;
      clsp::CLSP_Log::LogCLSPData(v14, &__src, 1);
      v15 = *(*(this + 36) + 16);
      if (v15)
      {
        v20 = v13;
        clsp::CLSP_Log::LogCLSPData(v15, &v20, 1);
      }
    }

    v16 = *(this + 81);
    v17 = *(this + 83);
    v18 = ((((*(this + 79) * v16) + (a3 * *(this + 78))) + (*(this + 82) * *(this + 80))) - (v17 * *(this + 76))) - (*(this + 84) * *(this + 77));
    *(this + 81) = a3;
    *(this + 82) = v16;
    *(this + 83) = v18;
    *(this + 84) = v17;
    return v18 * (((1.0 - v12) + v13) * *(this + 85));
  }

  return result;
}

uint64_t clsp::AdaptiveDisplacementController::calcCoeffsSyncDisp(clsp::AdaptiveDisplacementController *this, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = *(this + 15);
  if (!v7)
  {
    __assert_rtn("calcCoeffsSyncDisp", "CLSPBlocksAdaptive.cpp", 318, "mr_dispModel");
  }

  v13 = 1.0 / a2;
  v14 = -(1.0 / a2 * a3);
  v15 = exp(v14 / (a4 + a4)) * -2.0;
  v16 = v15 * cos(v13 * a3 * sqrt(1.0 / (a4 * -4.0 * a4) + 1.0));
  v17 = exp(v14 / a4);
  v18 = (v17 + v16 + 1.0) * (a7 * 1000.0 * v7[1] / (*v7 * v7[4]));
  v19 = v16;
  *&v17 = v17;
  *(this + 20) = v19;
  *(this + 21) = LODWORD(v17);
  *(this + 22) = v18;
  LODWORD(v17) = *(this + 25);
  v20 = *(this + 26);
  v21 = *(this + 10);
  *(this + 78) = 1065353216;
  *(this + 79) = LODWORD(v17);
  *(this + 80) = v20;
  *(this + 38) = v21;
  *&v17 = 1.0 / (1.0 - *&v17 + v20);
  *(this + 85) = LODWORD(v17);

  return clsp::LFSNFeedbackCoeffCalc::calcCoeffs((this + 256), a2, a3, a4, a5, 1.0, a6);
}

float clsp::AdaptiveDisplacementController::calcCoeffs(clsp::AdaptiveDisplacementController *this, double a2, double a3)
{
  v4 = *(this + 15);
  if (!v4)
  {
    __assert_rtn("calcCoeffs", "CLSPBlocksAdaptive.cpp", 287, "mr_dispModel");
  }

  v7 = clsp::DisplacementModelSealed::calcCoeffsFLV(v4, this + 25, a2, a3);
  v8 = *(this + 15);
  v9 = (*(*this + 72))(this, v7);
  v10 = (*(*this + 40))(this);
  v11 = v8[4];
  v12 = sqrt(v11 / v8[2]) / sqrt(v10);
  v13 = -(1.0 / a2 * v12);
  v14 = exp(v13 / (v9 + v9)) * -2.0;
  v15 = v14 * cos(1.0 / a2 * v12 * sqrt(1.0 / (v9 * -4.0 * v9) + 1.0));
  v16 = exp(v13 / v9);
  v17 = (v16 + v15 + 1.0) * (a3 * 1000.0 * v8[1] / (*v8 * v11));
  v18 = v15;
  *&v16 = v16;
  *(this + 20) = v18;
  *(this + 21) = LODWORD(v16);
  *(this + 22) = v17;
  v19 = *(this + 15);
  v20 = (*(*this + 72))(this);
  v21 = (*(*this + 40))(this);
  v22 = (*(*this + 56))(this);
  clsp::LFSN::calcCoeffs(this + 256, v19, a2, *(this + 10), *(this + 25), *(this + 26), v20, v21, v22, a3);
  clsp::AttackRelease<float,double>::calcCoeffs(this + 160, a2);
  clsp::AttackRelease<float,double>::calcCoeffs(this + 200, a2);
  v23 = *(this + 7);
  *(this + 30) = v23;
  v24 = v23 * a2;
  v25 = 0.0;
  if (v24 >= 0.00001)
  {
    v25 = exp(-4.60517019 / v24);
  }

  v26 = 1.0 - v25;
  *(this + 62) = v26;
  v27 = *(this + 3);
  v28 = v27;
  result = 1.0 / v27;
  *(this + 17) = v28;
  *(this + 18) = result;
  return result;
}

float clsp::DisplacementModelSealed::calcCoeffsFLV(double *a1, float *a2, double a3, double a4)
{
  v5 = a1[4];
  v7 = a1[1];
  v6 = a1[2];
  v8 = *a1;
  v9 = sqrt(v5 * v6) / (a1[3] + v7 * v7 / *a1);
  v10 = sqrt(v5 / v6);
  v11 = 1.0 / a3;
  v12 = -(1.0 / a3 * v10);
  v13 = exp(v12 / (v9 + v9)) * -2.0;
  v14 = v13 * cos(v11 * v10 * sqrt(1.0 / (v9 * -4.0 * v9) + 1.0));
  v15 = exp(v12 / v9);
  v16 = (v15 + v14 + 1.0) * (a4 * 1000.0 * v7 / (v8 * v5));
  v17 = v14;
  result = v15;
  *a2 = v17;
  a2[1] = result;
  a2[2] = v16;
  return result;
}

float clsp::LFSN::calcCoeffs(uint64_t a1, double *a2, double a3, double a4, float a5, float a6, double a7, double a8, double a9, double a10)
{
  *(a1 + 56) = 1065353216;
  *(a1 + 60) = a5;
  *(a1 + 64) = a6;
  *(a1 + 48) = a4;
  v12 = 1.0 / (1.0 - a5 + a6);
  *(a1 + 84) = v12;
  v13 = a2[4];
  v14 = a2[1];
  v15 = a2[2];
  v16 = sqrt(v13 / v15);
  v17 = sqrt(v13 * v15) / (a2[3] + v14 * v14 / *a2);
  v18 = a10 * 1000.0 * v14;
  if (v17 >= 1.0)
  {
    v19 = v18 * v17;
  }

  else
  {
    v19 = v18;
  }

  clsp::LFSNFeedbackCoeffCalc::calcCoeffs(a1, a3, v16, a7, a8, a9, v19 / (*a2 * v13));
  result = v16;
  *(a1 + 92) = result;
  *(a1 + 88) = 1065353216;
  return result;
}

float clsp::AttackRelease<float,double>::calcCoeffs(uint64_t a1, double a2)
{
  *(a1 + 24) = a2;
  v4 = *(a1 + 8) * a2;
  v5 = 0.0;
  v6 = 0.0;
  if (v4 >= 0.00001)
  {
    v6 = exp(-4.60517019 / v4);
  }

  v7 = 1.0 - v6;
  *(a1 + 20) = v7;
  v8 = *a1 * a2;
  if (v8 >= 0.00001)
  {
    v5 = exp(-4.60517019 / v8);
  }

  result = 1.0 - v5;
  *(a1 + 16) = result;
  return result;
}

double *clsp::AdaptiveDisplacementController::setPeakDecayTime(double *this, double a2)
{
  this[6] = a2;
  this[21] = a2;
  this[26] = a2;
  return this;
}

double *clsp::AdaptiveDisplacementController::setPeakAttackTime(double *this, double a2)
{
  this[5] = a2;
  this[20] = a2;
  this[25] = a2;
  return this;
}

void clsp::AdaptiveDisplacementController::logCoeffs(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 && (v5 = *(a1 + 16), __src = v5, clsp::CLSP_Log::LogCLSPData(v4, &__src, 1), (v6 = *a2) != 0) && (v7 = *(a1 + 24), __src = v7, clsp::CLSP_Log::LogCLSPData(v6, &__src, 1), (v8 = *a2) != 0) && (v9 = *(a1 + 32), __src = v9, clsp::CLSP_Log::LogCLSPData(v8, &__src, 1), (v10 = *a2) != 0) && (v11 = *(a1 + 40), __src = v11, clsp::CLSP_Log::LogCLSPData(v10, &__src, 1), (v12 = *a2) != 0) && (v13 = *(a1 + 48), __src = v13, clsp::CLSP_Log::LogCLSPData(v12, &__src, 1), (v14 = *a2) != 0) && (v15 = *(a1 + 56), __src = v15, clsp::CLSP_Log::LogCLSPData(v14, &__src, 1), (v16 = *a2) != 0) && (__src = *(a1 + 68), clsp::CLSP_Log::LogCLSPData(v16, &__src, 1), (v17 = *a2) != 0))
  {
    __src = *(a1 + 72);
    clsp::CLSP_Log::LogCLSPData(v17, &__src, 1);
    v18 = *a2;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a2 + 8);
  v31[0] = v18;
  v31[1] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 80), v31);
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  else
  {
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 80), v31);
  }

  v20 = *(a2 + 8);
  v30[0] = *a2;
  v30[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 100), v30);
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  else
  {
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 100), v30);
  }

  v21 = *(a2 + 8);
  v29[0] = *a2;
  v29[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 160, v29);
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  else
  {
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 160, v29);
  }

  v22 = *(a2 + 8);
  v28[0] = *a2;
  v28[1] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 200, v28);
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  else
  {
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 200, v28);
  }

  v23 = *(a2 + 8);
  v27[0] = *a2;
  v27[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
    clsp::ExponentialSmoother<float,double>::logCoeffs(a1 + 240, v27);
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  else
  {
    clsp::ExponentialSmoother<float,double>::logCoeffs(a1 + 240, v27);
  }

  v24 = *a2;
  v25 = *(a2 + 8);
  v26[0] = v24;
  v26[1] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    clsp::LFSN::logCoeffs((a1 + 256), v26);

    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  else
  {
    clsp::LFSN::logCoeffs((a1 + 256), v26);
  }
}

void clsp::IIRTwoPole<float>::logCoeffs(float *a1, clsp::CLSP_Log **a2)
{
  v3 = *a2;
  if (*a2)
  {
    __src = *a1;
    clsp::CLSP_Log::LogCLSPData(v3, &__src, 1);
    v5 = *a2;
    if (*a2)
    {
      v8 = a1[1];
      clsp::CLSP_Log::LogCLSPData(v5, &v8, 1);
      v6 = *a2;
      if (*a2)
      {
        v9 = a1[2];
        clsp::CLSP_Log::LogCLSPData(v6, &v9, 1);
      }
    }
  }
}

float clsp::AttackRelease<float,double>::logCoeffs(uint64_t a1, clsp::CLSP_Log **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *a1;
    __src = v5;
    clsp::CLSP_Log::LogCLSPData(v3, &__src, 1);
    v7 = *a2;
    if (*a2)
    {
      v8 = *(a1 + 8);
      __src = v8;
      clsp::CLSP_Log::LogCLSPData(v7, &__src, 1);
      v9 = *a2;
      if (*a2)
      {
        __src = *(a1 + 16);
        clsp::CLSP_Log::LogCLSPData(v9, &__src, 1);
        v10 = *a2;
        if (*a2)
        {
          __src = *(a1 + 20);
          clsp::CLSP_Log::LogCLSPData(v10, &__src, 1);
          v11 = *a2;
          if (*a2)
          {
            v12 = *(a1 + 24);
            __src = v12;
            clsp::CLSP_Log::LogCLSPData(v11, &__src, 1);
          }
        }
      }
    }
  }

  return result;
}

void clsp::ExponentialSmoother<float,double>::logCoeffs(uint64_t a1, clsp::CLSP_Log **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *a1;
    __src = v5;
    clsp::CLSP_Log::LogCLSPData(v3, &__src, 1);
    v6 = *a2;
    if (*a2)
    {
      v8 = *(a1 + 8);
      clsp::CLSP_Log::LogCLSPData(v6, &v8, 1);
    }
  }
}

void clsp::LFSN::logCoeffs(float *a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
    __src = *a1;
    clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
    __src = a1[1];
    clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
    __src = a1[2];
    clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
    __src = a1[3];
    clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
    __src = a1[4];
    clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
    __src = a1[5];
    clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
    __src = a1[6];
    clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v7 = *a2;
  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    __src = a1[12];
    clsp::CLSP_Log::LogCLSPData(v7, &__src, 1);
    __src = a1[13];
    clsp::CLSP_Log::LogCLSPData(v7, &__src, 1);
    __src = a1[14];
    clsp::CLSP_Log::LogCLSPData(v7, &__src, 1);
    __src = a1[15];
    clsp::CLSP_Log::LogCLSPData(v7, &__src, 1);
    __src = a1[16];
    clsp::CLSP_Log::LogCLSPData(v7, &__src, 1);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v8 = *a2;
  if (*a2)
  {
    __src = a1[21];
    clsp::CLSP_Log::LogCLSPData(v8, &__src, 1);
  }
}

void *clsp::AdaptiveDisplacementController::dump(double *a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "g_bw = ", 7);
  v5 = MEMORY[0x1E12BCBF0](v4, a1[2]);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\nx_lim = ", 9);
  v7 = MEMORY[0x1E12BCBF0](v6, a1[3]);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\nQ_d = ", 7);
  v9 = MEMORY[0x1E12BCBF0](v8, a1[4]);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\npeakAttackTime = ", 18);
  v11 = MEMORY[0x1E12BCBF0](v10, a1[5]);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\npeakDecayTime = ", 17);
  v13 = MEMORY[0x1E12BCBF0](v12, a1[6]);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\nflvSmoothingTime = ", 20);
  v15 = MEMORY[0x1E12BCBF0](v14, a1[7]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\nmc_x_lim = ", 12);
  v16 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\ninvxlim = ", 11);
  v17 = std::ostream::operator<<();
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n\nptp:\n", 7);
  clsp::IIRTwoPole<float>::dump((a1 + 10), v18);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\nflv:\n", 6);
  clsp::IIRTwoPole<float>::dump(a1 + 100, v19);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\nptpAtkRel:\n", 12);
  clsp::AttackRelease<float,double>::dump(a1 + 20, v20);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\nflvTime:\n", 10);
  clsp::AttackRelease<float,double>::dump(a1 + 25, v21);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "\nflvSmoother:\n", 14);
  clsp::ExponentialSmoother<float,double>::dump(a1 + 30, v22);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "\nlfsn:\n", 7);
  clsp::LFSN::dump((a1 + 32), v23);
  v25 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, &v25, 1);
  return a2;
}

void *clsp::IIRTwoPole<float>::dump(uint64_t a1, void *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "a1 = ", 5);
  v3 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "\na2 = ", 6);
  v4 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "\nb0 = ", 6);
  v5 = std::ostream::operator<<();
  v7 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v7, 1);
  return a2;
}

void *clsp::AttackRelease<float,double>::dump(double *a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "attackTime = ", 13);
  v5 = MEMORY[0x1E12BCBF0](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\nreleaseTime = ", 15);
  v7 = MEMORY[0x1E12BCBF0](v6, a1[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\na1_atk = ", 10);
  v8 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\na1_rel = ", 10);
  v9 = std::ostream::operator<<();
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\nsampleRate = ", 14);
  v11 = MEMORY[0x1E12BCBF0](v10, a1[3]);
  v13 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v13, 1);
  return a2;
}

void *clsp::ExponentialSmoother<float,double>::dump(double *a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "decayTime = ", 12);
  v5 = MEMORY[0x1E12BCBF0](v4, *a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\na1 = ", 6);
  std::ostream::operator<<();
  return a2;
}

void *clsp::LFSN::dump(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "fcc:\n", 5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ca10 = ", 7);
  v4 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "\nca11 = ", 8);
  v5 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\nca12 = ", 8);
  v6 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\nca20 = ", 8);
  v7 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\nca21 = ", 8);
  v8 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\nca22 = ", 8);
  v9 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\nxUpperLimit = ", 15);
  v10 = std::ostream::operator<<();
  v18 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, &v18, 1);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "\nlfsn:\n", 7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "a1 = ", 5);
  v12 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\na2 = ", 6);
  v13 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\nb0 = ", 6);
  v14 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "\nb1 = ", 6);
  v15 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\nb2 = ", 6);
  v16 = std::ostream::operator<<();
  v19 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, &v19, 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\ncsigma = ", 10);
  std::ostream::operator<<();
  return a2;
}

void clsp::AdaptiveDisplacementController::~AdaptiveDisplacementController(clsp::AdaptiveDisplacementController *this)
{
  clsp::AdaptiveDisplacementController::~AdaptiveDisplacementController(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F591F588;
  v2 = *(this + 45);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 37);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 19);
  *(this + 19) = 0;
  if (v4)
  {
    std::default_delete<clsp::SpeakerModelNonlinear>::operator()[abi:ne200100](v4);
  }

  v5 = *(this + 18);
  *(this + 18) = 0;
  if (v5)
  {
    std::default_delete<clsp::SpeakerModelNonlinear>::operator()[abi:ne200100](v5);
  }

  v6 = *(this + 17);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void std::default_delete<clsp::SpeakerModelNonlinear>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12BD160);
}

void *applesauce::CF::StringRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFStringGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_1DDC9B248(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void AUSM::SoundStage::~SoundStage(AUSM::SoundStage *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    *(this + 44) = v2;
    operator delete(v2);
  }

  v3 = *(this + 40);
  if (v3)
  {
    *(this + 41) = v3;
    operator delete(v3);
  }

  v4 = *(this + 37);
  if (v4)
  {
    *(this + 38) = v4;
    operator delete(v4);
  }

  v5 = *(this + 34);
  if (v5)
  {
    *(this + 35) = v5;
    operator delete(v5);
  }

  v6 = *(this + 31);
  if (v6)
  {
    *(this + 32) = v6;
    operator delete(v6);
  }

  v7 = *(this + 28);
  if (v7)
  {
    *(this + 29) = v7;
    operator delete(v7);
  }

  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  v11 = (this + 168);
  std::vector<AUSM::SoundStage::SoundStageParameters>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = (this + 136);
  std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v8 = *(this + 14);
  if (v8)
  {
    *(this + 15) = v8;
    operator delete(v8);
  }

  v9 = *(this + 11);
  if (v9)
  {
    *(this + 12) = v9;
    operator delete(v9);
  }

  v10 = *(this + 8);
  if (v10)
  {
    *(this + 9) = v10;
    operator delete(v10);
  }

  CDelaunayTriangles3D::~CDelaunayTriangles3D((this + 16));
}

void std::vector<AUSM::SoundStage::SoundStageParameters>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 6);
        if (v6)
        {
          *(v4 - 5) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 13);
        if (v7)
        {
          *(v4 - 12) = v7;
          operator delete(v7);
        }

        v8 = *(v4 - 16);
        if (v8)
        {
          *(v4 - 15) = v8;
          operator delete(v8);
        }

        v9 = *(v4 - 19);
        if (v9)
        {
          *(v4 - 18) = v9;
          operator delete(v9);
        }

        v10 = v4 - 23;
        if (*(v4 - 161) < 0)
        {
          operator delete(*v10);
        }

        v4 -= 23;
      }

      while (v10 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        std::__list_imp<int>::clear(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::__list_imp<int>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void AUSM::GlobalGeometry::update(float32x4_t *this, unsigned int a2, int a3)
{
  v6 = atomic_load(&this[66].u8[8]);
  if ((v6 & 1) != 0 || a3)
  {
    _X24 = 0;
    _X25 = 0;
    atomic_store(0, &this[66].u8[8]);
    __dmb(0xBu);
    __asm { CASPAL          X24, X25, X24, X25, [X8] }

    v14 = this[36].f32[0];
    if (v14 != *&_X24)
    {
      v15 = 0.0;
      if (*&_X24 >= 0.0)
      {
        v14 = *&_X24;
      }

      else
      {
        v14 = 0.0;
      }

      this[36].f32[0] = v14;
      if (v14 >= 0.001)
      {
        v16 = this[36].f32[1];
        if ((v16 - v14) >= 0.001)
        {
          v17 = log10f(this[36].f32[2]);
          v15 = v17 / log10f(v16 / v14);
        }
      }

      this[36].f32[3] = v15;
    }

    v18 = this[36].f32[1];
    if (v18 != *(&_X24 + 1))
    {
      v19 = 0.0;
      if (*(&_X24 + 1) >= 0.0)
      {
        v18 = *(&_X24 + 1);
      }

      else
      {
        v18 = 0.0;
      }

      this[36].f32[1] = v18;
      if (v14 >= 0.001 && (v18 - v14) >= 0.001)
      {
        v20 = log10f(this[36].f32[2]);
        v19 = v20 / log10f(v18 / v14);
      }

      this[36].f32[3] = v19;
    }

    v21 = __exp10f(0.0 * -0.05);
    if (this[36].f32[2] != v21)
    {
      if (v21 < 0.000001)
      {
        v21 = 0.000001;
      }

      this[36].f32[2] = v21;
      v22 = 0.0;
      if (v14 >= 0.001 && (v18 - v14) >= 0.001)
      {
        v23 = log10f(v21);
        v22 = v23 / log10f(v18 / v14);
      }

      this[36].f32[3] = v22;
    }

    v24 = atomic_load((this[28].i64[1] + 2544));
    this[35].i32[3] = v24;
    atomic_store(1u, &this[66].u8[4]);
  }

  v25 = atomic_load(&this[66].u8[10]);
  if (v25)
  {
    atomic_store(0, &this[66].u8[10]);
    __dmb(0xBu);
    this[26].i32[0] = 1065353216;
    if (AUSM::SoundStage::incrementSoundStageVerticesAndGains(this, 1u))
    {
      atomic_store(1u, &this[66].u8[4]);
      ++this[67].i32[2];
    }

    else
    {
      atomic_store(1u, &this[66].u8[10]);
    }
  }

  if ((*(this[28].i64[1] + 3112) & 1) == 0)
  {
    v26 = atomic_load(&this[25].u32[2]);
    if (v26 != this[25].i32[1])
    {
      if (this[26].f32[0] == 0.0)
      {
        v27 = atomic_load(&this[25].u32[2]);
        atomic_store(v27, &this[25]);
      }

      if (AUSM::SoundStage::incrementSoundStageVerticesAndGains(this, a2))
      {
        atomic_store(1u, &this[66].u8[4]);
        ++this[67].i32[2];
      }
    }
  }

  v28 = atomic_load(&this[66].u8[4]);
  if ((v28 & 1) != 0 || a3)
  {
    _X0 = 0;
    _X1 = 0;
    atomic_store(0, &this[66].u8[4]);
    __dmb(0xBu);
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v32 = *&_X0.i32[1];
    v33 = vdupq_lane_s32(_X0, 1);
    v33.i32[1] = _X0.i32[0];
    v33.i32[2] = vnegq_f32(*&_X0).i32[2];
    v87 = *_X0.i32;
    v88 = v33;
    v34 = atan2f(*_X0.i32, *&_X0.i32[1]) * 57.296;
    v35 = hypotf(v32, v87);
    v36 = atan2f(0.0, v35) * 57.296;
    v37 = __sincosf_stret((v34 * 0.017453) * 0.5);
    v38 = __sincosf_stret((v36 * 0.017453) * 0.5);
    v39.f32[0] = -((v37.__sinval * v38.__sinval) - ((v37.__cosval * v38.__cosval) * 0.0));
    v39.f32[1] = (v37.__sinval * (v38.__cosval * 0.0)) + (v38.__sinval * v37.__cosval);
    v39.f32[2] = (v37.__cosval * (v38.__sinval * -0.0)) + (v38.__cosval * v37.__sinval);
    v39.f32[3] = (v37.__cosval * v38.__cosval) + ((v37.__sinval * v38.__sinval) * 0.0);
    this[30] = v39;
    v40 = vmulq_f32(v88, v88);
    v41 = sqrtf(v40.f32[2] + vaddv_f32(*v40.f32));
    this[31].f32[0] = v41;
    if ((*(this[28].i64[1] + 3112) & 1) == 0)
    {
      v42 = atomic_load(&this[25]);
      if (v42 || this[25].i32[1])
      {
        v41 = (1.0 - this[26].f32[2]) + (this[26].f32[2] * this[31].f32[0]);
      }

      else
      {
        v41 = this[31].f32[0];
      }
    }

    this[31].f32[1] = v41;
    this[31].f32[2] = AUSM::DistanceGain::calculateDistanceGain(&this[35].i32[1], v41);
    ++this[66].i32[3];
  }

  v43 = atomic_load(&this[66].u8[6]);
  if ((v43 & 1) != 0 || a3)
  {
    _X0 = 0;
    _X1 = 0;
    atomic_store(0, &this[66].u8[6]);
    __dmb(0xBu);
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v47 = vdupq_lane_s32(_X0, 1);
    v47.i32[1] = _X0.i32[0];
    v47.i32[2] = vnegq_f32(*&_X0).i32[2];
    this[32] = v47;
    v48 = COERCE_FLOAT(atomic_load((this[28].i64[1] + 168)));
    if (v48 >= 0.0)
    {
      v49 = this[32];
      v50 = vmulq_f32(v49, v49);
      v51 = sqrtf(v50.f32[2] + vaddv_f32(*v50.f32));
      if (v51 > 0.0 && (v48 / v51) < 1.0)
      {
        this[32] = vmulq_n_f32(v49, v48 / v51);
      }
    }

    ++this[67].i32[0];
  }

  v52 = atomic_load(&this[66].u8[5]);
  if ((v52 & 1) != 0 || a3)
  {
    _X0 = 0;
    atomic_store(0, &this[66].u8[5]);
    __dmb(0xBu);
    _X3 = 0;
    __asm
    {
      CASPAL          X2, X3, X0, X1, [X8]
      CASPAL          X0, X1, X0, X1, [X8]
    }

    v57 = vnegq_f32(_X0);
    v58 = vtrn2q_s32(_X0, vtrn1q_s32(_X0, v57));
    v59 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(_X0, v57, 8uLL), _X2, 1), vextq_s8(v58, v58, 8uLL), _X2.f32[0]);
    v60 = vrev64q_s32(_X0);
    v60.i32[0] = v57.i32[1];
    v60.i32[3] = v57.i32[2];
    v61 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(_X0, _X2, 3), v60, _X2, 2), v59);
    v62 = vmulq_f32(v61, v61);
    v63 = vadd_f32(*v62.i8, *&vextq_s8(v62, v62, 8uLL));
    if (vaddv_f32(v63) == 0.0)
    {
      v64 = xmmword_1DE097CE0;
    }

    else
    {
      v65 = vadd_f32(v63, vdup_lane_s32(v63, 1)).u32[0];
      v66 = vrsqrte_f32(v65);
      v67 = vmul_f32(v66, vrsqrts_f32(v65, vmul_f32(v66, v66)));
      v64 = vmulq_n_f32(v61, vmul_f32(v67, vrsqrts_f32(v65, vmul_f32(v67, v67))).f32[0]);
    }

    v68 = vmulq_f32(v64, xmmword_1DE09BFF0);
    v69 = vmulq_f32(v64, v64);
    *v69.i8 = vadd_f32(*v69.i8, *&vextq_s8(v69, v69, 8uLL));
    v69.i32[0] = vadd_f32(*v69.i8, vdup_lane_s32(*v69.i8, 1)).u32[0];
    v70 = vrecpe_f32(v69.u32[0]);
    v71 = vmul_f32(v70, vrecps_f32(v69.u32[0], v70));
    this[33] = vmulq_n_f32(v68, vmul_f32(v71, vrecps_f32(v69.u32[0], v71)).f32[0]);
    ++this[67].i32[1];
  }

  v72 = atomic_load(&this[66].u8[7]);
  if ((v72 & 1) != 0 || a3)
  {
    atomic_store(0, &this[66].u8[7]);
    __dmb(0xBu);
    v73 = atomic_load((this[28].i64[1] + 96));
    if (v73 - 5 <= 0xFFFFFFFB && (v73 = this[34].u32[3], this[35].i8[0] == 1))
    {
      if (v73 == 3)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v73 == 4)
      {
        v73 = 3;
        goto LABEL_67;
      }

      if (v73 != 2)
      {
        v75 = 0;
        v74 = 0;
        goto LABEL_69;
      }
    }

    v73 = 1;
LABEL_67:
    v74 = atomic_load((this[28].i64[1] + 3076));
    v75 = 1;
LABEL_69:
    if (v73 != this[34].i32[3] || this[35].u8[0] != v75 || this[35].i8[1] != (v74 & 1))
    {
      this[35].i8[0] = v75;
      this[35].i8[1] = v74 & 1;
      this[34].i32[3] = v73;
      ++this[67].i32[3];
    }
  }

  v76 = atomic_load(&this[66].u8[9]);
  if ((v76 & 1) == 0 && (a3 & 1) == 0)
  {
    v77 = this[65].f32[3];
    goto LABEL_89;
  }

  atomic_store(0, &this[66].u8[9]);
  __dmb(0xBu);
  this[63].i32[0] = 1065353216;
  if (AUSM::SoundStage::incrementSoundStageVerticesAndGains(&this[37], 1u))
  {
    this[68].i8[0] = 1;
  }

  else
  {
    atomic_store(1u, &this[66].u8[9]);
  }

  v78 = COERCE_FLOAT(atomic_load((this[28].i64[1] + 1408)));
  this[34].f32[1] = __exp10f(v78 / 20.0);
  v79 = COERCE_FLOAT(atomic_load((this[28].i64[1] + 1412)));
  this[34].f32[2] = __exp10f(v79 / 20.0);
  if (this[66].f32[0] != 0.0)
  {
    v82 = atomic_load((this[28].i64[1] + 2560));
    v77 = 0.0;
    if (v82 == 1)
    {
      v77 = 1.0;
    }

    goto LABEL_86;
  }

  v80 = atomic_load((this[28].i64[1] + 2560));
  v81 = 0.0;
  v77 = 1.0;
  if (v80 != 1)
  {
    v77 = 0.0;
  }

  if (this[65].f32[2] == this[65].f32[3])
  {
LABEL_86:
    v83 = this[25].f32[3] * this[29].f32[1];
    this[65].f32[3] = v77;
    v81 = 0.0;
    if (v83 > 0.0)
    {
      v81 = (v77 - this[65].f32[2]) / v83;
    }

    goto LABEL_88;
  }

  this[65].f32[3] = v77;
LABEL_88:
  this[66].f32[0] = v81;
  ++this[67].i32[2];
LABEL_89:
  v84 = this[65].f32[2];
  if (v77 != v84)
  {
    v85 = this[66].f32[0];
    v86 = v84 + (a2 * v85);
    this[65].f32[2] = v86;
    if (v85 == 0.0 || v85 > 0.0 && v86 > v77 || v85 < 0.0 && v86 < v77)
    {
      this[65].f32[2] = v77;
    }

    ++this[67].i32[2];
  }
}

void AUSM::GlobalGeometry::getTuningParameters(AUSM::GlobalGeometry *this, uint64_t a2)
{
  AUSM::SoundStage::getWarpingParameterArray(&cf, a2 + 592, 3);
  v4 = cf;
  if (cf)
  {
    LODWORD(v5) = 1;
    std::pair<applesauce::CF::ArrayRef,AUSM::GlobalGeometry::DataType>::pair[abi:ne200100]<applesauce::CF::ArrayRef&,AUSM::GlobalGeometry::DataType,0>(this, cf, &v5);
  }

  else
  {
    AUSM::SoundStage::getWarpingParameterArray(&v5, a2 + 592, 5);
    v4 = v5;
    LODWORD(v5) = 0;
    std::pair<applesauce::CF::ArrayRef,AUSM::GlobalGeometry::DataType>::pair[abi:ne200100]<applesauce::CF::ArrayRef&,AUSM::GlobalGeometry::DataType,0>(this, v4, &v5);
    if (!v4)
    {
      return;
    }
  }

  CFRelease(v4);
}

void sub_1DDC9BDB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<applesauce::CF::ArrayRef,AUSM::GlobalGeometry::DataType>::pair[abi:ne200100]<applesauce::CF::ArrayRef&,AUSM::GlobalGeometry::DataType,0>(uint64_t a1, CFTypeRef cf, _DWORD *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  *(a1 + 8) = *a3;
  return a1;
}

void clsp::DisplacementController::setLogs(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[41];
  a1[40] = v5;
  a1[41] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a1[33];
  a1[32] = v8;
  a1[33] = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

uint64_t clsp::DisplacementController::zapBadValues(uint64_t this)
{
  v1 = *(this + 92);
  v2 = vcvtq_f64_f32(vabs_f32(v1));
  v3 = vdupq_n_s64(0x3CD203AF9EE75616uLL);
  v4 = vdupq_n_s64(0x430C6BF526340000uLL);
  *(this + 92) = vand_s8(v1, vmovn_s64(vandq_s8(vcgtq_f64(v2, v3), vcgtq_f64(v4, v2))));
  v5 = *(this + 160);
  v6 = fabsf(v5);
  if (v6 >= 1.0e15 || v6 <= 1.0e-15)
  {
    v5 = 0.0;
  }

  *(this + 160) = v5;
  v8 = *(this + 112);
  v9 = vcvtq_f64_f32(vabs_f32(v8));
  *(this + 112) = vand_s8(v8, vmovn_s64(vandq_s8(vcgtq_f64(v9, v3), vcgtq_f64(v4, v9))));
  v10 = *(this + 200);
  v11 = fabsf(v10);
  if (v11 >= 1.0e15 || v11 <= 1.0e-15)
  {
    v10 = 0.0;
  }

  *(this + 200) = v10;
  v13 = *(this + 220);
  v14 = fabsf(v13);
  if (v14 >= 1.0e15 || v14 <= 1.0e-15)
  {
    v13 = 0.0;
  }

  *(this + 220) = v13;
  v16 = *(this + 292);
  v17 = vabsq_f32(v16);
  v18 = vcvt_hight_f64_f32(v17);
  v19 = vcvtq_f64_f32(*v17.f32);
  *(this + 292) = vandq_s8(v16, vuzp1q_s32(vandq_s8(vcgtq_f64(v19, v3), vcgtq_f64(v4, v19)), vandq_s8(vcgtq_f64(v18, v3), vcgtq_f64(v4, v18))));
  v20 = *(this + 76);
  v21 = fabsf(v20);
  if (v21 >= 1.0e15 || v21 <= 1.0e-15)
  {
    v20 = 0.0;
  }

  if (v20 < *(this + 68))
  {
    v20 = *(this + 68);
  }

  *(this + 76) = v20;
  return this;
}

float clsp::DisplacementController::reset(clsp::DisplacementController *this)
{
  *(this + 300) = 0;
  *(this + 292) = 0;
  *(this + 92) = 0;
  *(this + 40) = 0;
  *(this + 14) = 0;
  *(this + 50) = 0;
  *(this + 55) = 0;
  result = (*(*this + 56))(this);
  *(this + 19) = result;
  return result;
}

float clsp::DisplacementController::analyzeDisp(clsp::DisplacementController *this, float a2, float a3)
{
  v4 = *(this + 21);
  v5 = *(this + 23);
  v6 = (a2 * *(this + 22)) - (v5 * *(this + 20));
  v7 = *(this + 24);
  v8 = *(this + 25);
  v9 = v6 - (v7 * v4);
  *(this + 23) = v9;
  *(this + 24) = v5;
  v10 = -(v6 + (-v7 * v4));
  if (v9 >= 0.0)
  {
    v10 = v9;
  }

  v11 = *(this + 40);
  v12 = 148;
  if (v11 < v10)
  {
    v12 = 144;
  }

  v13 = v11 + (*(this + v12) * (v10 - v11));
  *(this + 40) = v13;
  v14 = *(this + 17);
  v15 = *(this + 18);
  v16 = *(this + 26);
  v17 = *(this + 28);
  v18 = *(this + 29);
  v19 = (a3 * *(this + 27)) - (v17 * v8);
  v20 = v19 - (v18 * v16);
  *(this + 28) = v20;
  *(this + 29) = v17;
  if (v14 >= v13)
  {
    v21 = v14;
  }

  else
  {
    v21 = v13;
  }

  v22 = -(v19 + (-v18 * v16));
  if (v20 >= 0.0)
  {
    v22 = v20;
  }

  v23 = *(this + 50);
  v24 = 188;
  if (v23 < v22)
  {
    v24 = 184;
  }

  v25 = *(this + v24);
  v26 = v22 - v23;
  v27 = v23 + (v25 * v26);
  *(this + 50) = v27;
  if (v14 < v27)
  {
    v14 = v23 + (v25 * v26);
  }

  v28 = *(this + 55) + (*(this + 54) * ((v15 * v14) - *(this + 55)));
  *(this + 55) = v28;
  *(this + 19) = v21 * v28;
  v29 = *(this + 40);
  v30 = *v29;
  if (*v29)
  {
    __src = a3;
    clsp::CLSP_Log::LogCLSPData(v30, &__src, 1);
    v29 = *(this + 40);
  }

  v31 = v29[2];
  if (v31)
  {
    __src = v9;
    clsp::CLSP_Log::LogCLSPData(v31, &__src, 1);
    v29 = *(this + 40);
    v32 = v29[2];
    if (v32)
    {
      __src = v13;
      clsp::CLSP_Log::LogCLSPData(v32, &__src, 1);
      v29 = *(this + 40);
      v33 = v29[2];
      if (v33)
      {
        __src = v21;
        clsp::CLSP_Log::LogCLSPData(v33, &__src, 1);
        v29 = *(this + 40);
        v34 = v29[2];
        if (v34)
        {
          __src = v28;
          clsp::CLSP_Log::LogCLSPData(v34, &__src, 1);
          v29 = *(this + 40);
        }
      }
    }
  }

  v35 = *v29;
  if (*v29)
  {
    __src = v20;
    clsp::CLSP_Log::LogCLSPData(v35, &__src, 1);
    v36 = **(this + 40);
    if (v36)
    {
      __src = v27;
      clsp::CLSP_Log::LogCLSPData(v36, &__src, 1);
      v37 = **(this + 40);
      if (v37)
      {
        __src = *(this + 19);
        clsp::CLSP_Log::LogCLSPData(v37, &__src, 1);
        v38 = **(this + 40);
        if (v38)
        {
          v39 = (*(*this + 128))(this);
          __src = log10f(v39[21] * ((((1.0 - v39[12]) + v39[13]) * ((v39[14] + v39[15]) + v39[16])) / ((v39[12] + 1.0) + v39[13]))) * 20.0;
          clsp::CLSP_Log::LogCLSPData(v38, &__src, 1);
        }
      }
    }
  }

  return *(this + 19);
}

float clsp::DisplacementController::processSample(clsp::DisplacementController *this, float result, float a3)
{
  if (*(this + 64) == 1)
  {
    v25 = v8;
    v26 = v7;
    v27 = v6;
    v28 = v5;
    v29 = v3;
    v30 = v4;
    v11 = *(this + 19);
    if (v11 >= *(this + 62))
    {
      v11 = *(this + 62);
    }

    v12 = *(this + 56) + (*(this + 57) * v11);
    v13 = *(this + 58);
    v14 = *(this + 59) + (*(this + 60) * v11);
    v15 = v11 * v11;
    v16 = v12 + (v13 * v15);
    v17 = v14 + (*(this + 61) * v15);
    *(this + 68) = v16;
    *(this + 69) = v17;
    v18 = *(*(this + 32) + 16);
    if (v18)
    {
      __src = v12 + (v13 * v15);
      clsp::CLSP_Log::LogCLSPData(v18, &__src, 1);
      v19 = *(*(this + 32) + 16);
      if (v19)
      {
        v24 = v17;
        clsp::CLSP_Log::LogCLSPData(v19, &v24, 1);
      }
    }

    v20 = *(this + 73);
    v21 = *(this + 75);
    v22 = ((((*(this + 71) * v20) + (a3 * *(this + 70))) + (*(this + 74) * *(this + 72))) - (v21 * *(this + 68))) - (*(this + 76) * *(this + 69));
    *(this + 73) = a3;
    *(this + 74) = v20;
    *(this + 75) = v22;
    *(this + 76) = v21;
    return v22 * (((1.0 - v16) + v17) * *(this + 77));
  }

  return result;
}

uint64_t clsp::DisplacementController::calcCoeffsSyncDisp(clsp::DisplacementController *this, double a2, double a3, double a4, double a5, double a6, double a7)
{
  clsp::DisplacementModelSealed::calcCoeffs(*(this + 15), this + 20, a2, a4, a3, a7);
  v13 = *(this + 25);
  v14 = *(this + 26);
  v15 = *(this + 10);
  *(this + 70) = 1065353216;
  *(this + 71) = v13;
  *(this + 72) = v14;
  *(this + 34) = v15;
  v16 = 1.0 / (1.0 - v13 + v14);
  *(this + 77) = v16;

  return clsp::LFSNFeedbackCoeffCalc::calcCoeffs((this + 224), a2, a3, a4, a5, 1.0, a6);
}

float clsp::DisplacementModelSealed::calcCoeffs(double *a1, float *a2, double a3, double a4, double a5, double a6)
{
  v11 = 1.0 / a3;
  v12 = -(1.0 / a3 * a5);
  v13 = exp(v12 / (a4 + a4)) * -2.0;
  v14 = v13 * cos(v11 * a5 * sqrt(1.0 / (a4 * -4.0 * a4) + 1.0));
  v15 = exp(v12 / a4);
  v16 = (v15 + v14 + 1.0) * (a6 * 1000.0 * a1[1] / (*a1 * a1[4]));
  v17 = v14;
  result = v15;
  *a2 = v17;
  a2[1] = result;
  a2[2] = v16;
  return result;
}

float clsp::DisplacementController::calcCoeffs(clsp::DisplacementController *this, double a2, double a3)
{
  v6 = clsp::DisplacementModelSealed::calcCoeffsFLV(*(this + 15), this + 25, a2, a3);
  v7 = *(this + 15);
  v8 = (*(*this + 72))(this, v6);
  v9 = (*(*this + 40))(this);
  v10 = clsp::DisplacementModelSealed::calcCoeffs(v7, this + 20, a2, v8, sqrt(v7[4] / v7[2]) / sqrt(v9), a3);
  v11 = *(this + 15);
  v12 = (*(*this + 72))(this, v10);
  v13 = (*(*this + 40))(this);
  v14 = (*(*this + 56))(this);
  clsp::LFSN::calcCoeffs(this + 224, v11, a2, *(this + 10), *(this + 25), *(this + 26), v12, v13, v14, a3);
  clsp::AttackRelease<float,double>::calcCoeffs(this + 128, a2);
  clsp::AttackRelease<float,double>::calcCoeffs(this + 168, a2);
  v15 = *(this + 7);
  *(this + 26) = v15;
  v16 = v15 * a2;
  v17 = 0.0;
  if (v16 >= 0.00001)
  {
    v17 = exp(-4.60517019 / v16);
  }

  v18 = 1.0 - v17;
  *(this + 54) = v18;
  v19 = *(this + 3);
  v20 = v19;
  result = 1.0 / v19;
  *(this + 17) = v20;
  *(this + 18) = result;
  return result;
}

double *clsp::DisplacementController::setPeakDecayTime(double *this, double a2)
{
  this[6] = a2;
  this[17] = a2;
  this[22] = a2;
  return this;
}

double *clsp::DisplacementController::setPeakAttackTime(double *this, double a2)
{
  this[5] = a2;
  this[16] = a2;
  this[21] = a2;
  return this;
}

void clsp::DisplacementController::logCoeffs(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 && (v5 = *(a1 + 16), __src = v5, clsp::CLSP_Log::LogCLSPData(v4, &__src, 1), (v6 = *a2) != 0) && (v7 = *(a1 + 24), __src = v7, clsp::CLSP_Log::LogCLSPData(v6, &__src, 1), (v8 = *a2) != 0) && (v9 = *(a1 + 32), __src = v9, clsp::CLSP_Log::LogCLSPData(v8, &__src, 1), (v10 = *a2) != 0) && (v11 = *(a1 + 40), __src = v11, clsp::CLSP_Log::LogCLSPData(v10, &__src, 1), (v12 = *a2) != 0) && (v13 = *(a1 + 48), __src = v13, clsp::CLSP_Log::LogCLSPData(v12, &__src, 1), (v14 = *a2) != 0) && (v15 = *(a1 + 56), __src = v15, clsp::CLSP_Log::LogCLSPData(v14, &__src, 1), (v16 = *a2) != 0) && (__src = *(a1 + 68), clsp::CLSP_Log::LogCLSPData(v16, &__src, 1), (v17 = *a2) != 0))
  {
    __src = *(a1 + 72);
    clsp::CLSP_Log::LogCLSPData(v17, &__src, 1);
    v18 = *a2;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a2 + 8);
  v31[0] = v18;
  v31[1] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 80), v31);
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  else
  {
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 80), v31);
  }

  v20 = *(a2 + 8);
  v30[0] = *a2;
  v30[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 100), v30);
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  else
  {
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 100), v30);
  }

  v21 = *(a2 + 8);
  v29[0] = *a2;
  v29[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 128, v29);
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  else
  {
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 128, v29);
  }

  v22 = *(a2 + 8);
  v28[0] = *a2;
  v28[1] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 168, v28);
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  else
  {
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 168, v28);
  }

  v23 = *(a2 + 8);
  v27[0] = *a2;
  v27[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
    clsp::ExponentialSmoother<float,double>::logCoeffs(a1 + 208, v27);
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  else
  {
    clsp::ExponentialSmoother<float,double>::logCoeffs(a1 + 208, v27);
  }

  v24 = *a2;
  v25 = *(a2 + 8);
  v26[0] = v24;
  v26[1] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    clsp::LFSN::logCoeffs((a1 + 224), v26);

    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  else
  {
    clsp::LFSN::logCoeffs((a1 + 224), v26);
  }
}

void *clsp::DisplacementController::dump(double *a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "g_bw = ", 7);
  v5 = MEMORY[0x1E12BCBF0](v4, a1[2]);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\nx_lim = ", 9);
  v7 = MEMORY[0x1E12BCBF0](v6, a1[3]);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\nQ_d = ", 7);
  v9 = MEMORY[0x1E12BCBF0](v8, a1[4]);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\npeakAttackTime = ", 18);
  v11 = MEMORY[0x1E12BCBF0](v10, a1[5]);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\npeakDecayTime = ", 17);
  v13 = MEMORY[0x1E12BCBF0](v12, a1[6]);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\nflvSmoothingTime = ", 20);
  v15 = MEMORY[0x1E12BCBF0](v14, a1[7]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\nmc_x_lim = ", 12);
  v16 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\ninvxlim = ", 11);
  v17 = std::ostream::operator<<();
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n\nptp:\n", 7);
  clsp::IIRTwoPole<float>::dump((a1 + 10), v18);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\nflv:\n", 6);
  clsp::IIRTwoPole<float>::dump(a1 + 100, v19);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\nptpAtkRel:\n", 12);
  clsp::AttackRelease<float,double>::dump(a1 + 16, v20);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\nflvTime:\n", 10);
  clsp::AttackRelease<float,double>::dump(a1 + 21, v21);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "\nflvSmoother:\n", 14);
  clsp::ExponentialSmoother<float,double>::dump(a1 + 26, v22);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "\nlfsn:\n", 7);
  clsp::LFSN::dump((a1 + 28), v23);
  return a2;
}

void clsp::DisplacementController::~DisplacementController(clsp::DisplacementController *this)
{
  clsp::DisplacementController::~DisplacementController(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592D7D8;
  v2 = *(this + 41);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 33);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void clsp::ClosedLoopThermalModule::~ClosedLoopThermalModule(clsp::ClosedLoopThermalModule *this)
{
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t clsp::LFSNFeedbackCoeffCalc::calcCoeffs(clsp::LFSNFeedbackCoeffCalc *this, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v9 = 0;
  v37 = *MEMORY[0x1E69E9840];
  if (a7 <= a6)
  {
    a7 = a6;
  }

  v24 = a7 * 1.5;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = 0;
  v29 = 0;
  memset(v28, 0, 12);
  v26 = 1.0 / sqrt(a5) * a3;
  v27 = (a7 * 1.5 - a6) / 9.0;
  v10 = 1.0 / a2;
  v25 = -(1.0 / a2);
  v11 = a4 + a4;
  v13 = sqrt(1.0 / (a4 * -4.0 * a4) + 1.0);
  do
  {
    v14 = a6 + v9 * v27;
    *(v35 + v9) = v14;
    v15 = v26 * sqrt(v14 / a6);
    v16 = v15 * v25;
    v17 = exp(v15 * v25 / v11) * -2.0;
    v18 = cos(v13 * (v10 * v15)) * v17;
    v19 = exp(v16 / a4);
    v20 = v18;
    *(v33 + v9) = v20;
    *&v19 = v19;
    *(v31 + v9++) = LODWORD(v19);
  }

  while (v9 != 10);
  clsp::polyfit<10ul,2ul>(v35, v33, &v29);
  result = clsp::polyfit<10ul,2ul>(v35, v31, v28);
  *this = v30;
  v22.i64[0] = v29;
  v22.i64[1] = *(v28 + 4);
  *(this + 4) = vrev64q_s32(v22);
  v23 = v24;
  *(this + 5) = v28[0];
  *(this + 6) = v23;
  return result;
}

uint64_t clsp::polyfit<10ul,2ul>(uint64_t a1, const float *a2, float *a3)
{
  v6 = 0;
  v53 = *MEMORY[0x1E69E9840];
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  do
  {
    v7 = (&v45 + v6);
    *v7 = 1065353216;
    v7[10] = 1065353216;
    v7[20] = 1065353216;
    v6 += 4;
  }

  while (v6 != 40);
  for (i = 0; i != -80; i -= 40)
  {
    MEMORY[0x1E12BE7F0](a1, 1, &v50 + i, 1, &v47 + i + 8, 1, 10);
  }

  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v39 = v49;
  v40 = v50;
  v41 = v51;
  v42 = v52;
  __a = v45;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  __tau[2] = 0.0;
  *__tau = 0;
  __work[2] = 0.0;
  *__work = 0;
  v9 = 3;
  __lwork = 3;
  __info = 0;
  __n = 3;
  __lda = 10;
  p_a = &__a;
  sgeqrf_(&__lda, &__n, &__a, &__lda, __tau, __work, &__lwork, &__info);
  v11 = 0;
  v12 = v43;
  do
  {
    v13 = p_a;
    v14 = v12;
    v15 = v9;
    do
    {
      v16 = *v13;
      v13 += 10;
      *v14 = v16;
      v14 += 3;
      --v15;
    }

    while (v15);
    ++v11;
    --v9;
    ++v12;
    p_a = (p_a + 44);
  }

  while (v11 != 3);
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v32 = v42;
  *__A = __a;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  sorgqr_(&__lda, &__n, &__n, __A, &__lda, __tau, __work, &__lwork, &__info);
  cblas_sgemv(CblasColMajor, CblasTrans, __lda, __n, 1.0, __A, __lda, a2, 1, 0.0, a3, 1);
  v24 = 0;
  *__ipiv = 0;
  __nrhs = 1;
  return sgesv_(&__n, &__nrhs, v43, &__n, __ipiv, a3, &__n, &__info);
}

void *allocMatrix(int a1, int a2)
{
  v4 = 8 * a1;
  v5 = malloc_type_malloc(v4, 0x97E56397uLL);
  v6 = v5;
  if (a1 && !v5)
  {
    goto LABEL_9;
  }

  bzero(v5, v4);
  if (a1 >= 1)
  {
    v7 = 4 * a2;
    v8 = a1;
    for (i = v6; ; ++i)
    {
      v10 = malloc_type_malloc(v7, 0x670A9E19uLL);
      v11 = v10;
      if (v7)
      {
        if (!v10)
        {
          break;
        }
      }

      bzero(v10, v7);
      *i = v11;
      if (!--v8)
      {
        return v6;
      }
    }

LABEL_9:
    exception = __cxa_allocate_exception(8uLL);
    v14 = std::bad_alloc::bad_alloc(exception);
  }

  return v6;
}

void freeMatrix(int a1, float ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    if (a1 < 1)
    {
      goto LABEL_8;
    }

    v4 = a1;
    do
    {
      if (*v2)
      {
        free(*v2);
        *v2 = 0;
      }

      ++v2;
      --v4;
    }

    while (v4);
    v2 = *a2;
    if (*a2)
    {
LABEL_8:
      free(v2);
      *a2 = 0;
    }
  }
}

void ASAFrontEnd::createLifterResponse(ASAFrontEnd *this, float *a2, int32x2_t a3, double a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = vdupq_n_s64(a2 - 1);
    v6 = xmmword_1DE095150;
    v7 = xmmword_1DE095160;
    v8 = 3.14159265 / (a2 + -1.0);
    *&v8 = v8;
    v32 = *&v8;
    v33 = vdupq_n_s64(4uLL);
    *&a4 = 1.0 / a2;
    *&v8 = 1.0 - *&a4;
    v9 = (a2 + 3) & 0x1FFFFFFFCLL;
    v30 = vdupq_lane_s32(*&v8, 0);
    v31 = vdupq_lane_s32(a3, 0);
    v10 = (this + 8);
    __asm { FMOV            V0.4S, #-1.0 }

    v28 = _Q0;
    v29 = vdupq_lane_s32(*&a4, 0);
    __asm { FMOV            V0.4S, #1.0 }

    v27 = _Q0;
    v34 = v5;
    do
    {
      v36 = v7;
      v37 = v6;
      v17 = vorr_s8(vdup_n_s32(v4), 0x300000002);
      v18 = vmovn_s64(vcgeq_u64(v5, v7));
      v19.i32[0] = v4;
      v19.i32[1] = v4 + 1;
      v35 = vuzp1_s16(v18, v17).u8[0];
      v19.u64[1] = v17;
      v41 = vmulq_n_f32(vcvtq_f32_u32(v19), v32);
      v38 = sinf(v41.f32[1]);
      v20.f32[0] = sinf(v41.f32[0]);
      v20.f32[1] = v38;
      v39 = v20;
      v21 = sinf(v41.f32[2]);
      v22 = v39;
      v22.f32[2] = v21;
      v40 = v22;
      v23 = sinf(v41.f32[3]);
      v24 = v40;
      v24.f32[3] = v23;
      v25.i64[0] = 0x4000000040000000;
      v25.i64[1] = 0x4000000040000000;
      v26 = vmlaq_f32(v29, v30, vmlaq_f32(v27, vmlaq_f32(v28, v25, v24), v31));
      if (v35)
      {
        *(v10 - 2) = v26.i32[0];
      }

      if (vuzp1_s16(v18, *&v26).i8[2])
      {
        *(v10 - 1) = v26.i32[1];
      }

      v5 = v34;
      if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v34, *&v37))).i32[1])
      {
        *v10 = v26.i64[1];
      }

      v4 += 4;
      v6 = vaddq_s64(v37, v33);
      v7 = vaddq_s64(v36, v33);
      v10 += 2;
    }

    while (v9 != v4);
  }
}

void VADGenUtils::ComputeProjectionComponent<double>(const double *a1, double *a2, vDSP_Length a3, vDSP_Length a4)
{
  v4 = a3 * a3;
  if ((a3 * a3) >> 61 || (v9 = malloc_type_malloc(8 * v4, 0x3C4BE13FuLL), v10 = v9, a3) && !v9 || (bzero(v9, 8 * v4), v11 = a4 * a3, (a4 * a3) >> 61) || (v12 = malloc_type_malloc(8 * v11, 0xA8E757CEuLL), v13 = v12, v11) && !v12 || (bzero(v12, 8 * v11), vDSP_mtransD(a1, 1, v13, 1, a4, a3), vDSP_mmulD(a1, 1, v13, 1, v10, 1, a3, a3, a4), __lda = a3, __info = 0, (a3 & 0x80000000) != 0) || (v14 = malloc_type_malloc(4 * a3, 0x8AFD2704uLL), v15 = v14, a3) && !v14 || (bzero(v14, 4 * a3), __lwork = 2 * v4, ((v4 << 33) & 0x8000000000000000) != 0) || (v16 = malloc_type_malloc((16 * v4) & 0x7FFFFFFFFLL, 0x3A1AEC0CuLL), v17 = v16, v4 << 33) && !v16)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v16, (16 * v4) & 0x7FFFFFFFFLL);
  dgetrf_(&__lda, &__lda, v10, &__lda, v15, &__info);
  dgetri_(&__lda, v10, &__lda, v15, v17, &__lwork, &__info);
  free(v17);
  free(v15);
  vDSP_mmulD(v13, 1, v10, 1, a2, 1, a4, a3, a3);
  free(v13);

  free(v10);
}

void *ASAFrontEnd::genericComputeMagnitudeSpectrum(ASAFrontEnd *this, const float *a2, float *a3, float *a4, unsigned int a5, void **a6, void **a7, float *a8)
{
  v11 = a4;
  v13 = a4;
  MEMORY[0x1E12BE7F0](this, 1, a2, 1, a3, 1, a4, a8);
  v14 = v11;
  v15 = &a3[v14];
  bzero(&a3[v14], v14 * 4);
  v17.realp = a3;
  v17.imagp = v15;
  MultiRadixFFT_CplxInPlaceTransform(*a6, &v17.realp, 1);
  vDSP_zvabs(&v17, 1, a3, 1, v13);
  return memcpy(a7, a3, 4 * a5);
}

void **std::unique_ptr<ParametricFilters>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ParametricFilters::~ParametricFilters(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t Crossover2f::Crossover2f(uint64_t a1, int a2, __int128 *a3, double a4)
{
  v17 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0u;
  *a1 = 0u;
  *(a1 + 32) = a2;
  *(a1 + 40) = a4;
  v7 = (a1 + 48);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 64) = *(a3 + 2);
    *v7 = v8;
  }

  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v9 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v7;
    if (*(a1 + 71) < 0)
    {
      v10 = *v7;
    }

    __p = 136315394;
    __p_4 = v10;
    __p_12 = 2080;
    __p_14 = "Crossover2f";
    _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "[%s|%s] Constructing", &__p, 0x16u);
  }

  if (a2 && a4 > 0.0)
  {
    operator new();
  }

  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v11 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    __p = 136315394;
    __p_4 = v7;
    __p_12 = 2080;
    __p_14 = "Crossover2f";
    _os_log_error_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_ERROR, "[%s|%s] Invalid number of channels and/or sample rate", &__p, 0x16u);
  }

  return a1;
}

void sub_1DDC9DC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  MEMORY[0x1E12BD160](v17, 0x10B2C40FD8E7539);
  if (*(v14 + 71) < 0)
  {
    operator delete(*v15);
  }

  std::unique_ptr<ParametricFilters>::reset[abi:ne200100]((v14 + 24), 0);
  std::unique_ptr<ParametricFilters>::reset[abi:ne200100](v16, 0);
  std::unique_ptr<ParametricFilters>::reset[abi:ne200100]((v14 + 8), 0);
  std::unique_ptr<ParametricFilters>::reset[abi:ne200100](v14, 0);
  _Unwind_Resume(a1);
}

void Crossover2f::CalculateCrossoverCoeffs(int a1, void *a2, void *a3, double a4, double a5)
{
  v75 = *MEMORY[0x1E69E9840];
  if (a4 > 0.0)
  {
    a2[1] = *a2;
    a3[1] = *a3;
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v9 = 0x300000001;
        goto LABEL_22;
      }

      if (a1 != 4)
      {
LABEL_14:
        if (getScottyLog(void)::onceToken != -1)
        {
          dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
        }

        v12 = getScottyLog(void)::gLog;
        if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v71) = 136315138;
          *(&v71 + 4) = "CalculateCrossoverCoeffs";
          _os_log_error_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_ERROR, "%s: Invalid or unhandled filter order", &v71, 0xCu);
        }

        v68 = 0;
        goto LABEL_24;
      }

      v11 = 0x200000002;
    }

    else
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          v9 = 0x100000001;
LABEL_22:
          v68 = v9;
          _Q0 = xmmword_1DE095640;
          goto LABEL_23;
        }

        goto LABEL_14;
      }

      v11 = 1;
    }

    v68 = v11;
    __asm { FMOV            V0.2D, #1.0 }

LABEL_23:
    v67 = _Q0;
LABEL_24:
    v18 = a5 / (a4 * 0.5) * 3.14159265;
    v19 = v18 * 2.0 + 4.0 + v18 * v18;
    v20 = (v18 + v18) * v18 + -8.0;
    v21 = v18 * -2.0 + 4.0 + v18 * v18;
    v22 = sqrt((v21 + v19 + v20) * (v21 + v19 + v20) * 0.0625);
    v23 = v22 / v19;
    v51 = (v22 + v22) / v19;
    v62 = v21 / v19;
    v63 = v20 / v19;
    *&v50 = 1.0 / v18 * 2.0 + 1.0;
    v24 = 1.0 / v18 * 4.0;
    *&v25 = *&v50 + v24 * (1.0 / v18);
    v26 = 1.0 / v18 * -8.0 * (1.0 / v18) + 2.0;
    v27 = 1.0 / v18 * -2.0 + 1.0;
    v28 = v27 + v24 * (1.0 / v18);
    v54 = v25;
    v56 = sqrt((v28 + *&v25 - v26) * (v28 + *&v25 - v26) * 0.00390625);
    v60 = v28 / *&v25;
    v61 = v26 / *&v25;
    v29 = tan(v18 * 0.5);
    v30 = 1.0 / v29;
    v31 = 1.0 / (1.0 / v29 * 1.41421356 + 1.0 + v30 * v30);
    v59 = (1.0 - v30 * v30 + 1.0 - v30 * v30) * v31;
    v58 = (1.0 / v29 * -1.41421356 + 1.0 + v30 * v30) * v31;
    v32.f64[0] = 1.0 / (v29 * 1.41421356 + 1.0 + v29 * v29);
    v33 = (v29 * v29 + -1.0 + v29 * v29 + -1.0) * v32.f64[0];
    v34 = (v29 * -1.41421356 + 1.0 + v29 * v29) * v32.f64[0];
    v35 = v18 + 2.0;
    v36 = v18 + -2.0;
    v37 = sqrt((v18 + 2.0 + v18 + -2.0) * (v18 + 2.0 + v18 + -2.0) * 0.25) / (v18 + 2.0);
    v38 = v36 / v35;
    v55 = vdivq_f64(vmulq_n_f64(xmmword_1DE09C100, v56), vdupq_lane_s64(v54, 0));
    v57 = v32.f64[0];
    v32.f64[1] = v32.f64[0] * -2.0;
    v52 = v32;
    v53 = vdivq_f64(vmulq_n_f64(xmmword_1DE09C110, sqrt((*&v50 - v27) * (*&v50 - v27) * 0.0625)), vdupq_lane_s64(v50, 0));
    v39 = &v68;
    v40 = &v67;
    v41 = 1;
    v42 = v27 / *&v50;
    while (1)
    {
      v43 = v41;
      v71 = 0uLL;
      v72 = 0x3FF0000000000000;
      v73 = 0.0;
      v74 = 0.0;
      *&v64 = 0;
      v65.f64[0] = 1.0;
      v44 = *v39;
      if (v44 > 1)
      {
        break;
      }

      if (v44)
      {
        if (v44 != 1)
        {
          goto LABEL_32;
        }

        *&v71 = v38;
        v72 = *&v37;
        v73 = v37;
        v45 = 0.0;
        v46 = 0.0;
        v47 = v53;
        *&v64 = v42;
LABEL_37:
        *(&v64 + 1) = v45;
        v49 = *v40;
        v65 = vmulq_n_f64(v47, *v40);
        v66 = v49 * v46;
        std::vector<BiquadCoefficients>::push_back[abi:ne200100](a2, &v71);
        std::vector<BiquadCoefficients>::push_back[abi:ne200100](a3, &v64);
      }

LABEL_38:
      v41 = 0;
      v40 = &v67 + 1;
      v39 = &v68 + 1;
      if ((v43 & 1) == 0)
      {
        return;
      }
    }

    if (v44 == 2)
    {
      *&v71 = v59;
      *(&v71 + 1) = v58;
      v72 = *&v31;
      v73 = v31 + v31;
      v74 = v31;
      v45 = v34;
      v46 = v57;
      v47 = v52;
      *&v64 = v33;
    }

    else
    {
      if (v44 != 3)
      {
LABEL_32:
        if (getScottyLog(void)::onceToken != -1)
        {
          dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
        }

        v48 = getScottyLog(void)::gLog;
        if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v70 = "CalculateCrossoverCoeffs";
          _os_log_error_impl(&dword_1DDB85000, v48, OS_LOG_TYPE_ERROR, "%s: Invalid or unhandled filter type", buf, 0xCu);
        }

        goto LABEL_38;
      }

      *&v71 = v63;
      *(&v71 + 1) = v62;
      v72 = *&v23;
      v73 = v51;
      v74 = v23;
      v45 = v60;
      v47 = v55;
      v46 = v55.f64[0];
      *&v64 = v61;
    }

    goto LABEL_37;
  }

  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v10 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v71) = 136315138;
    *(&v71 + 4) = "CalculateCrossoverCoeffs";
    _os_log_error_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_ERROR, "%s: Invalid sample rate and/or order", &v71, 0xCu);
  }
}

void std::vector<BiquadCoefficients>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::allocator<BiquadCoefficients>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = 40 * v8;
    v13 = *a2;
    v14 = a2[1];
    *(v12 + 32) = *(a2 + 4);
    *v12 = v13;
    *(v12 + 16) = v14;
    v7 = 40 * v8 + 40;
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
  }

  *(a1 + 8) = v7;
}

void std::allocator<BiquadCoefficients>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

BOOL Crossover2f::IsLowCrossoverEnabled(Crossover2f *this)
{
  v2 = *(this + 1);
  result = 0;
  if (v2)
  {
    v3 = *this;
    if (*this)
    {
      if (ParametricFilters::isEnabled(v2) && ParametricFilters::isEnabled(v3))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL Crossover2f::IsHighCrossoverEnabled(Crossover2f *this)
{
  v2 = *(this + 3);
  result = 0;
  if (v2)
  {
    v3 = *(this + 2);
    if (v3)
    {
      if (ParametricFilters::isEnabled(v2) && ParametricFilters::isEnabled(v3))
      {
        return 1;
      }
    }
  }

  return result;
}

void Crossover2f::SetLowCrossover(Crossover2f *this, double a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v6 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (this + 48);
    if (*(this + 71) < 0)
    {
      v7 = *v7;
    }

    *buf = 136315906;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = "SetLowCrossover";
    *&buf[22] = 2048;
    v16 = a2;
    v17 = 1024;
    v18 = a3;
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEFAULT, "[%s|%s] Setting low crossover, inFC = %f, inOrder = %u", buf, 0x26u);
  }

  memset(buf, 0, sizeof(buf));
  memset(__p, 0, sizeof(__p));
  if (a2 > 0.0 && a3)
  {
    Crossover2f::CalculateCrossoverCoeffs(a3, buf, __p, *(this + 5), a2);
    v8 = *(this + 1);
    if (v8)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      ParametricFilters::setParametricFilters(v8, __p, &v11);
    }

    v9 = *this;
    if (*this)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      ParametricFilters::setParametricFilters(*&v9, buf, &v11);
    }
  }

  else
  {
    v10 = *(this + 1);
    if (v10)
    {
      ParametricFilters::clear(v10);
    }

    if (*this)
    {
      ParametricFilters::clear(*this);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*buf)
  {
    operator delete(*buf);
  }
}

void sub_1DDC9E628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void Crossover2f::SetHighCrossover(Crossover2f *this, double a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v6 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (this + 48);
    if (*(this + 71) < 0)
    {
      v7 = *v7;
    }

    *buf = 136315906;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = "SetHighCrossover";
    *&buf[22] = 2048;
    v17 = a2;
    v18 = 1024;
    v19 = a3;
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEFAULT, "[%s|%s] Setting high crossover, inFC = %f, inOrder = %u", buf, 0x26u);
  }

  memset(buf, 0, sizeof(buf));
  memset(__p, 0, sizeof(__p));
  if (a2 > 0.0 && a3)
  {
    Crossover2f::CalculateCrossoverCoeffs(a3, buf, __p, *(this + 5), a2);
    v8 = *(this + 3);
    if (v8)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      ParametricFilters::setParametricFilters(v8, __p, &v12);
    }

    v9 = *(this + 2);
    if (v9)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      ParametricFilters::setParametricFilters(v9, buf, &v12);
    }
  }

  else
  {
    v10 = *(this + 2);
    if (v10)
    {
      ParametricFilters::clear(v10);
    }

    v11 = *(this + 3);
    if (v11)
    {
      ParametricFilters::clear(v11);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*buf)
  {
    operator delete(*buf);
  }
}

void sub_1DDC9E810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Crossover2f::Process(uint64_t this, float *const *a2, float **a3, float **a4, float **a5, int a6, unsigned int a7, int a8)
{
  if (*(this + 32) != a6)
  {
    return this;
  }

  v14 = this;
  if (Crossover2f::IsLowCrossoverEnabled(this))
  {
    v15 = *(v14 + 1);
    if (v15)
    {
      ParametricFilters::process(v15, a2, a5, a7, 0);
    }

    if (!a8)
    {
      this = Crossover2f::IsHighCrossoverEnabled(v14);
      v16 = a5;
      if ((this & 1) == 0)
      {
        return this;
      }

      goto LABEL_14;
    }

    v16 = a5;
    if (*v14)
    {
      ParametricFilters::process(*v14, a2, a3, a7, 0);
      v16 = a5;
    }
  }

  else
  {
    v16 = a2;
  }

  this = Crossover2f::IsHighCrossoverEnabled(v14);
  if ((this & 1) == 0)
  {
    return this;
  }

  if (a8)
  {
    v17 = *(v14 + 3);
    if (v17)
    {
      ParametricFilters::process(v17, v16, a4, a7, 0);
    }
  }

LABEL_14:
  this = *(v14 + 2);
  if (this)
  {

    return ParametricFilters::process(this, v16, a5, a7, 0);
  }

  return this;
}

ParametricFilters *Crossover2f::Reset(ParametricFilters **this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v2 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = this + 6;
    if (*(this + 71) < 0)
    {
      v3 = *v3;
    }

    v7 = 136315394;
    v8 = v3;
    v9 = 2080;
    v10 = "Reset";
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Resetting Crossover2f", &v7, 0x16u);
  }

  if (*this)
  {
    ParametricFilters::reset(*this);
  }

  v4 = this[1];
  if (v4)
  {
    ParametricFilters::reset(v4);
  }

  v5 = this[2];
  if (v5)
  {
    ParametricFilters::reset(v5);
  }

  result = this[3];
  if (result)
  {
    return ParametricFilters::reset(result);
  }

  return result;
}

uint64_t AUSoundIsolation_v2::ValidFormat(AUSoundIsolation_v2 *this, int a2, int a3, const AudioStreamBasicDescription *a4)
{
  v4 = (a2 - 1) <= 1 && a3 == 0;
  if (!v4)
  {
    return 0;
  }

  mBytesPerPacket = a4->mBytesPerPacket;
  mBytesPerFrame = a4->mBytesPerFrame;
  mChannelsPerFrame = a4->mChannelsPerFrame;
  mBitsPerChannel = a4->mBitsPerChannel;
  v13 = a4->mFormatID != 1819304813 || a4->mFramesPerPacket != 1 || mBytesPerFrame != mBytesPerPacket || mBitsPerChannel >> 3 > mBytesPerFrame || mChannelsPerFrame == 0;
  if (!v13 && ((mFormatFlags = a4->mFormatFlags, (mFormatFlags & 0x20) != 0) || (v4 = mBytesPerPacket == mBytesPerPacket / mChannelsPerFrame * mChannelsPerFrame, mBytesPerPacket /= mChannelsPerFrame, v4)))
  {
    v15 = 1;
    v14 = 0;
    if ((mFormatFlags & 2) == 0 && 8 * mBytesPerPacket == mBitsPerChannel)
    {
      v17 = a4->mFormatFlags & 1;
      v18 = mBytesPerPacket == 4 && (a4->mFormatFlags & 0x1F84) == 0;
      if (v17)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }

      if (v17)
      {
        v15 = (a4->mFormatFlags & 0x1F84) == 0;
      }

      else
      {
        v15 = 1;
      }
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  return v14 & v15;
}

uint64_t AUSoundIsolation_v2::SupportedNumChannels(AUSoundIsolation_v2 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUSoundIsolation_v2::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

double AUSoundIsolation_v2::GetTailTime(AUSoundIsolation_v2 *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
  }

  v2 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "AUSoundIsolation_v2.mm";
    v6 = 1024;
    v7 = 426;
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%s:%i Use processing graph latency as an estimate of the tail time", &v4, 0x12u);
  }

  return AUSoundIsolation_v2::GetProcessingLatency(this);
}

double AUSoundIsolation_v2::GetProcessingLatency(AUSoundIsolation_v2 *this)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(this + 75))
  {
    CA::DSP::Graph::GetLatency(v4);
    if (v4[8])
    {
      v1 = *v4;
    }

    else
    {
      v1 = 0.0;
    }

    if ((v4[8] & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v4);
    }
  }

  else
  {
    v1 = 0.0;
  }

  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
  }

  v2 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_INFO))
  {
    *v4 = 136315650;
    *&v4[4] = "AUSoundIsolation_v2.mm";
    v5 = 1024;
    v6 = 405;
    v7 = 2048;
    v8 = v1;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_INFO, "%s:%i total latency is %f seconds", v4, 0x1Cu);
  }

  return v1;
}

const void **CA::DSP::Graph::GetLatency(CA::DSP::Graph *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v9 = 0;
  v2 = 0;
  if (CADSPGraphGetLatency())
  {
    v3 = 0;
  }

  else
  {
    v3 = v9 == 0;
  }

  if (v3)
  {
    v2 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v9 = v2;
  }

  v8 = v2;
  if (v2)
  {
    v8 = 0;
    v7 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
    v6 = 0;
    v10 = 0;
    *this = v2;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v10);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v6);
  }

  else
  {
    v4 = v11;
    v7 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
    *this = v4;
    *(this + 8) = 1;
  }

  return result;
}

void sub_1DDC9EE88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const void **CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t ___Z22getAUSoundIsolationLogv_block_invoke()
{
  getAUSoundIsolationLog(void)::gLog = os_log_create("com.apple.coreaudio", "AUSoundIsolation");

  return MEMORY[0x1EEE66BB8]();
}

double AUSoundIsolation_v2::GetLatency(AUSoundIsolation_v2 *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
  }

  v2 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "AUSoundIsolation_v2.mm";
    v6 = 1024;
    v7 = 417;
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%s:%i AU latency is equal to the processing graph latency", &v4, 0x12u);
  }

  return AUSoundIsolation_v2::GetProcessingLatency(this);
}

uint64_t AUSoundIsolation_v2::GetParameterValueStrings(AUSoundIsolation_v2 *this, int a2, int a3, const __CFArray **a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  if (a3 == 95783)
  {
    v7 = &xmmword_1E866A440;
    goto LABEL_11;
  }

  if (a3 != 1)
  {
    return 0;
  }

  if (!_os_feature_enabled_impl() || *(this + 560) != 1)
  {
    *&v10 = @"Voice";
    v8 = 1;
    goto LABEL_13;
  }

  v7 = &xmmword_1E866A430;
LABEL_11:
  v10 = *v7;
  v8 = 2;
LABEL_13:
  v9 = CFArrayCreate(0, &v10, v8, 0);
  result = 0;
  *a4 = v9;
  return result;
}

uint64_t AUSoundIsolation_v2::RestoreState(OpaqueAudioComponentInstance **this, CFTypeRef cf)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return 4294956445;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 4294956445;
  }

  v5 = ausdk::AUBase::RestoreState(this, cf);
  if (v5)
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v6 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "AUSoundIsolation_v2.mm";
      v10 = 1024;
      v11 = 853;
      v12 = 1024;
      v13 = v5;
      _os_log_error_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, "%s:%i error %i while restoring state", &v8, 0x18u);
    }
  }

  this[73] = (this[73] + 1);
  return v5;
}

uint64_t AUSoundIsolation_v2::GetParameterInfo(AUSoundIsolation_v2 *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956430;
  }

  result = 4294956418;
  if (a3 > 95781)
  {
    if (a3 == 95782)
    {
      buffer->cfNameString = @"Use Tuning Mode";
      buffer->flags = 0x8000000;
      CString = CFStringGetCString(@"Use Tuning Mode", buffer->name, 52, 0x8000100u);
      v13 = kAudioUnitParameterUnit_Boolean;
    }

    else
    {
      if (a3 != 95783)
      {
        return result;
      }

      buffer->cfNameString = @"Tuning Mode";
      buffer->flags = 0x8000000;
      CString = CFStringGetCString(@"Tuning Mode", buffer->name, 52, 0x8000100u);
      v13 = kAudioUnitParameterUnit_Indexed;
    }

    buffer->unit = v13;
    *&buffer->minValue = 0x3F80000000000000;
    v15 = buffer->flags | 0xC1000000;
    buffer->defaultValue = 0.0;
    buffer->flags = v15;
    {
      return 0;
    }

    v14 = 0x2000;
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      buffer->cfNameString = @"Sound to Isolate";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Sound to Isolate", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      __asm { FMOV            V0.2S, #1.0 }

      *&buffer->maxValue = _D0;
      if (!_os_feature_enabled_impl() || *(this + 560) != 1)
      {
        v14 = -1056964608;
        buffer->minValue = 1.0;
        goto LABEL_19;
      }

      buffer->minValue = 0.0;
    }

    else
    {
      buffer->cfNameString = @"Wet/Dry Mix";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Wet/Dry Mix", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Percent;
      *&buffer->minValue = 0x42C80000C2C80000;
      buffer->defaultValue = 100.0;
    }

    v14 = -1073741824;
  }

LABEL_19:
  result = 0;
  buffer->flags |= v14;
  return result;
}

uint64_t anonymous namespace::IsInternalBuild(_anonymous_namespace_ *this)
{
  {
  }
}

uint64_t AUSoundIsolation_v2::GetParameterList(AUSoundIsolation_v2 *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = 0x100000000;
  }

  v8 = 2;
  {
    if (*(this + 720))
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (a3)
    {
      if (*(this + 720))
      {
        *(a3 + 1) = 0x1762700017626;
        v8 = 4;
      }
    }
  }

  result = 0;
  *a4 = v8;
  return result;
}

ausdk::AUInputElement *AUSoundIsolation_v2::Render(AUSoundIsolation_v2 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v9)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    Element = ausdk::AUScope::GetElement((this + 128), 0);
    if (Element)
    {
      if (!*(Element + 144))
      {
        goto LABEL_11;
      }

      v13 = *(Element + 152) + 48;
      v11 = ausdk::AUScope::GetElement((this + 80), 0);
      if (v11)
      {
        if (*(v11 + 144))
        {
          v12 = *(v11 + 152) + 48;
          return (*(*this + 184))(this, a2, a4, 1, &v12, 1, &v13);
        }

LABEL_11:
        ausdk::Throw(0xFFFFFFFFLL);
      }
    }

    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUSoundIsolation_v2::ProcessMultipleBufferLists(AUSoundIsolation_v2 *this, unsigned int *a2, unsigned int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  v104 = *MEMORY[0x1E69E9840];
  if (a4 != 1 || a6 != 1)
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v22 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "AUSoundIsolation_v2.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1147;
      *&buf[18] = 1024;
      *&buf[20] = a4;
      *&buf[24] = 1024;
      *&buf[26] = a6;
      _os_log_error_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_ERROR, "%s:%i a single input ABL and a single output ABL is expected, receiver (%u, %u)!", buf, 0x1Eu);
    }

    return 4294956428;
  }

  Code = *(this + 73);
  if (*(this + 74) != Code)
  {
    AUSoundIsolation_v2::UpdateLocalParamState(this);
    *(this + 74) = Code;
  }

  v14 = *(this + 136);
  v15 = *(this + 142);
  if (v14 == v15)
  {
    v16 = this + 528;
    if (*(this + 528) == 1)
    {
      Code = *a5;
      mNumberBuffers = (*a5)->mNumberBuffers;
      if (mNumberBuffers == (*a7)->mNumberBuffers && (*a5)->mNumberBuffers)
      {
        v18 = 0;
        p_mData = &(*a7)->mBuffers[0].mData;
        v20 = (Code + 16);
        do
        {
          v21 = *(v20 - 1);
          if (v21 == *(p_mData - 1) && *v20 != *p_mData)
          {
            memcpy(*p_mData, *v20, v21);
            mNumberBuffers = *Code;
          }

          ++v18;
          p_mData += 2;
          v20 += 2;
        }

        while (v18 < mNumberBuffers);
      }

      goto LABEL_69;
    }
  }

  else
  {
    if (!*(this + 138))
    {
      Element = ausdk::AUScope::GetElement((this + 80), 0);
      if (!Element)
      {
        goto LABEL_157;
      }

      v24 = *(Element + 80);
      v25 = expf(-1.0 / ((*(this + 135) * v24) / a3));
      v26 = *(this + 142);
      v27 = (v26 * (1.0 - v25)) + (v25 * *(this + 136));
      if (vabds_f32(v27, v26) < 0.1)
      {
        v27 = *(this + 142);
      }

      *(this + 136) = v27;
      if (*(this + 76))
      {
        AUSoundIsolation_v2::UpdateBleningGraphWeights(v26);
      }
    }

    v16 = this + 528;
  }

  if ((*(this + 529) & 1) == 0 && !*(this + 138))
  {
    goto LABEL_69;
  }

  if (!*(this + 77))
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v33 = getAUSoundIsolationLog(void)::gLog;
    if (!os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956429;
    }

    *buf = 136315394;
    *&buf[4] = "AUSoundIsolation_v2.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1181;
    v34 = "%s:%i bypass graph not initialized";
    goto LABEL_94;
  }

  v28 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v28)
  {
LABEL_157:
    ausdk::Throw(0xFFFFD583);
  }

  v29 = vcvtad_u64_f64(*(v28 + 80));
  LODWORD(v91[0]) = a3;
  *v98 = *a5;
  *&v98[8] = this + 272;
  *&v98[16] = a3;
  LODWORD(v87) = 0;
  v30 = *a7;
  *&v75 = 0;
  v74 = v30;
  LODWORD(v90.mSampleRate) = a3;
  HIDWORD(v90.mSampleRate) = v29;
  v90.mFormatID = 1;
  CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(buf, MEMORY[0x1E698D488], *(this + 77), v91, 1, &v87, 1, &v90, 0);
  v31 = buf[8];
  if (buf[8])
  {
    LOBYTE(v80) = buf[8];
    goto LABEL_33;
  }

  v35 = *buf;
  *buf = 0;
  *v93 = 0;
  v79 = v35;
  CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v93);
  LOBYTE(v80) = v31;
  if ((buf[8] & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf);
    if (v80)
    {
LABEL_33:
      if (v87 == a3)
      {
        LODWORD(v75) = a3;
        CA::DSP::Graph::Process(buf);
        Code = buf[8];
        if (v80 == 1)
        {
          if ((buf[8] & 1) == 0)
          {
            v32 = *buf;
            *buf = 0;
            v79 = v32;
            LOBYTE(v80) = 0;
          }
        }

        else
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v79);
          if (Code)
          {
            LOBYTE(v80) = 1;
          }

          else
          {
            v39 = *buf;
            *buf = 0;
            v79 = v39;
          }
        }

        if ((buf[8] & 1) == 0)
        {
          CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(buf);
        }

        if (v80)
        {
          v37 = 1;
        }

        else
        {
          if (getAUSoundIsolationLog(void)::onceToken != -1)
          {
            dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
          }

          v40 = getAUSoundIsolationLog(void)::gLog;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v69 = AU::SoundIsolation::CopyError<void>(v79, v80);
            *buf = 136315650;
            *&buf[4] = "AUSoundIsolation_v2.mm";
            *&buf[12] = 1024;
            *&buf[14] = 1223;
            *&buf[18] = 2112;
            *&buf[20] = v69;
            _os_log_error_impl(&dword_1DDB85000, v40, OS_LOG_TYPE_ERROR, "%s:%i failed to run bypass graph - %@", buf, 0x1Cu);
          }

          v37 = 0;
          Code = CADSPRealTimeErrorGetCode();
        }
      }

      else
      {
        if (getAUSoundIsolationLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
        }

        v38 = getAUSoundIsolationLog(void)::gLog;
        if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AUSoundIsolation_v2.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1216;
          _os_log_error_impl(&dword_1DDB85000, v38, OS_LOG_TYPE_ERROR, "%s:%i bypass preflight gave invalid number of frames to process!", buf, 0x12u);
        }

        v37 = 0;
        Code = 4294956422;
      }

      goto LABEL_66;
    }
  }

  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
  }

  v36 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v62 = AU::SoundIsolation::CopyError<void>(v79, v80);
    *buf = 136315650;
    *&buf[4] = "AUSoundIsolation_v2.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1213;
    *&buf[18] = 2112;
    *&buf[20] = v62;
    _os_log_error_impl(&dword_1DDB85000, v36, OS_LOG_TYPE_ERROR, "%s:%i failed to calculate expected bypass graph output frame count - %@", buf, 0x1Cu);
  }

  Code = CADSPRealTimeErrorGetCode();
  v37 = 0;
LABEL_66:
  if ((v80 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v79);
  }

  if ((v37 & 1) == 0)
  {
    return Code;
  }

LABEL_69:
  if (*v16)
  {
    if (v14 != v15)
    {
      goto LABEL_75;
    }
  }

  else if (v14 != v15 || (*(this + 529) & 1) == 0)
  {
    goto LABEL_75;
  }

  if (!*(this + 138))
  {
    return 0;
  }

LABEL_75:
  if (!*(this + 75))
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v33 = getAUSoundIsolationLog(void)::gLog;
    if (!os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956429;
    }

    *buf = 136315394;
    *&buf[4] = "AUSoundIsolation_v2.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1231;
    v34 = "%s:%i processing graph not initialized";
    goto LABEL_94;
  }

  if (!*(this + 76))
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v33 = getAUSoundIsolationLog(void)::gLog;
    if (!os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      return 4294956429;
    }

    *buf = 136315394;
    *&buf[4] = "AUSoundIsolation_v2.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1236;
    v34 = "%s:%i blending graph not initialized";
LABEL_94:
    _os_log_error_impl(&dword_1DDB85000, v33, OS_LOG_TYPE_ERROR, v34, buf, 0x12u);
    return 4294956429;
  }

  v92 = a3;
  v91[0] = *a5;
  v91[1] = this + 272;
  v91[2] = a3;
  v41 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v41)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v42 = *(v41 + 96);
  *&v90.mSampleRate = *(v41 + 80);
  *&v90.mBytesPerPacket = v42;
  *&v90.mBitsPerChannel = *(v41 + 112);
  v43 = (this + 624);
  v44 = ausdk::AUBufferList::PrepareBufferOrError((this + 624), &v90, a3);
  if ((v45 & 1) == 0)
  {
    ausdk::Throw(v44);
  }

  v89 = 0;
  v102 = 0u;
  v103 = 0u;
  memset(buf, 0, sizeof(buf));
  v87 = 0uLL;
  v88 = 0;
  v46 = *v43;
  if (!v46)
  {
    ausdk::Throw(0xFFFFFFFFLL);
  }

  LODWORD(v46) = vcvtad_u64_f64(v90.mSampleRate);
  *&v87 = *(this + 79) + 48;
  *(&v87 + 1) = buf;
  LODWORD(v88) = 0;
  v47 = a3 | (v46 << 32);
  *&v74 = v47;
  DWORD2(v74) = 1;
  CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(v98, MEMORY[0x1E698D488], *(this + 75), &v92, 1, &v89, 1, &v74, 0);
  v48 = v98[8];
  if (v98[8])
  {
    v86 = v98[8];
  }

  else
  {
    v51 = *v98;
    *v98 = 0;
    v79 = 0;
    v85 = v51;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v79);
    v86 = v48;
    if ((v98[8] & 1) != 0 || (CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v98), (v86 & 1) == 0))
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
      }

      v52 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v68 = AU::SoundIsolation::CopyError<void>(v85, v86);
        *v98 = 136315650;
        *&v98[4] = "AUSoundIsolation_v2.mm";
        *&v98[12] = 1024;
        *&v98[14] = 1269;
        *&v98[18] = 2112;
        *&v98[20] = v68;
        _os_log_error_impl(&dword_1DDB85000, v52, OS_LOG_TYPE_ERROR, "%s:%i failed to calculate expected processing graph output frame count - %@", v98, 0x1Cu);
      }

      v53 = CADSPRealTimeErrorGetCode();
      goto LABEL_137;
    }
  }

  if (v89 != a3)
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v54 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *v98 = 136315394;
      *&v98[4] = "AUSoundIsolation_v2.mm";
      *&v98[12] = 1024;
      *&v98[14] = 1272;
      _os_log_error_impl(&dword_1DDB85000, v54, OS_LOG_TYPE_ERROR, "%s:%i processing preflight gave invalid number of frames to process!", v98, 0x12u);
    }

    goto LABEL_107;
  }

  LODWORD(v88) = a3;
  CA::DSP::Graph::Process(v98);
  v49 = v98[8];
  if (v86 == 1)
  {
    if ((v98[8] & 1) == 0)
    {
      v50 = *v98;
      *v98 = 0;
      v85 = v50;
      v86 = 0;
    }
  }

  else
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v85);
    if (v49)
    {
      v86 = 1;
    }

    else
    {
      v56 = *v98;
      *v98 = 0;
      v85 = v56;
    }
  }

  if ((v98[8] & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v98);
  }

  if ((v86 & 1) == 0)
  {
    v59 = getAUSoundIsolationLog();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v71 = AU::SoundIsolation::CopyError<void>(v85, v86);
      *v98 = 136315650;
      *&v98[4] = "AUSoundIsolation_v2.mm";
      *&v98[12] = 1024;
      *&v98[14] = 1280;
      *&v98[18] = 2112;
      *&v98[20] = v71;
      _os_log_error_impl(&dword_1DDB85000, v59, OS_LOG_TYPE_ERROR, "%s:%i failed to run processing graph - %@", v98, 0x1Cu);
    }

    goto LABEL_136;
  }

  v84[0] = a3;
  v84[1] = a3;
  v57 = *(this + 18);
  *v98 = *(this + 17);
  *&v98[16] = v57;
  v58 = *(this + 20);
  v99 = *(this + 19);
  v100 = v58;
  v79 = *a5;
  v80 = v98;
  v81 = a3;
  v82 = v87;
  v83 = v88;
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  if (*(this + 138) && (*(this + 529) & 1) == 0 && !*v43)
  {
    ausdk::Throw(0xFFFFFFFFLL);
  }

  CA::DSP::Graph::CalculateExpectedNumberOfOutputPCMFrames(v93, *(this + 76), v84, 2, &v78, 1, v47, 1);
  v60 = v93[8];
  if (v86 == 1)
  {
    if ((v93[8] & 1) == 0)
    {
      v61 = *v93;
      *v93 = 0;
      v85 = v61;
      v86 = 0;
    }
  }

  else
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v85);
    if (v60)
    {
      v86 = 1;
    }

    else
    {
      v63 = *v93;
      *v93 = 0;
      v85 = v63;
    }
  }

  if ((v93[8] & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v93);
  }

  if ((v86 & 1) == 0)
  {
    v59 = getAUSoundIsolationLog();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v72 = AU::SoundIsolation::CopyError<void>(v85, v86);
      *v93 = 136315650;
      *&v93[4] = "AUSoundIsolation_v2.mm";
      v94 = 1024;
      v95 = 1311;
      v96 = 2112;
      v97 = v72;
      _os_log_error_impl(&dword_1DDB85000, v59, OS_LOG_TYPE_ERROR, "%s:%i failed to calculate expected blending graph output frame count - %@", v93, 0x1Cu);
    }

    goto LABEL_136;
  }

  if (v78 != a3)
  {
    v54 = getAUSoundIsolationLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *v93 = 136315394;
      *&v93[4] = "AUSoundIsolation_v2.mm";
      v94 = 1024;
      v95 = 1314;
      _os_log_error_impl(&dword_1DDB85000, v54, OS_LOG_TYPE_ERROR, "%s:%i blending preflight gave invalid number of frames to process!", v93, 0x12u);
    }

LABEL_107:

    v55 = 0;
    Code = 4294956422;
    goto LABEL_138;
  }

  CA::DSP::Graph::Process(v93);
  v64 = v93[8];
  if (v86 == 1)
  {
    if (v93[8])
    {
      goto LABEL_152;
    }

    v65 = *v93;
    *v93 = 0;
    v85 = v65;
    v86 = 0;
  }

  else
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v85);
    if (v64)
    {
      v86 = 1;
      goto LABEL_152;
    }

    v70 = *v93;
    *v93 = 0;
    v85 = v70;
  }

  CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(v93);
LABEL_152:
  if ((v86 & 1) == 0)
  {
    v59 = getAUSoundIsolationLog();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v73 = AU::SoundIsolation::CopyError<void>(v85, v86);
      *v93 = 136315650;
      *&v93[4] = "AUSoundIsolation_v2.mm";
      v94 = 1024;
      v95 = 1322;
      v96 = 2112;
      v97 = v73;
      _os_log_error_impl(&dword_1DDB85000, v59, OS_LOG_TYPE_ERROR, "%s:%i failed to run blending graph - %@", v93, 0x1Cu);
    }

LABEL_136:

    v53 = CA::DSP::RealTimeError::GetCode(v85);
LABEL_137:
    v55 = 0;
    Code = v53;
    goto LABEL_138;
  }

  v55 = 1;
LABEL_138:
  if ((v86 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v85);
  }

  if (v55)
  {
    v66 = *(this + 138);
    if (v66)
    {
      Code = 0;
      *(this + 138) = v66 - 1;
      return Code;
    }

    return 0;
  }

  return Code;
}

void sub_1DDCA0588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, const void *a29, char a30)
{
  if ((a30 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&a29);
  }

  _Unwind_Resume(a1);
}

void AUSoundIsolation_v2::UpdateLocalParamState(AUSoundIsolation_v2 *this)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0 || (*(this + 142) = ausdk::AUElement::GetParameter(v2, 0), v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v5 & 1) == 0) || (*(this + 143) = ausdk::AUElement::GetParameter(v4, 1u), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v7 & 1) == 0) || (*(this + 576) = ausdk::AUElement::GetParameter(v6, 0x17626u) != 0.0, v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v9 & 1) == 0))
  {
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v8, 0x17627u);
  if (*(this + 134))
  {
    if (*(this + 576))
    {
      v11 = Parameter;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v12 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v23 = "AUSoundIsolation_v2.mm";
      v24 = 1024;
      v25 = 1074;
      _os_log_debug_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "%s:%i Denoise is Disabled - tuning mode reverts to Single Channel", buf, 0x12u);
    }

    v11 = 0;
  }

  if (*(this + 75))
  {
    if (v11 != *(this + 145) || *(this + 143) != *(this + 141))
    {
      if (getAUSoundIsolationLog(void)::onceToken != -1)
      {
        dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
      }

      v13 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        v14 = *(this + 145);
        v15 = *(this + 141);
        v16 = *(this + 143);
        *buf = 136316418;
        v23 = "AUSoundIsolation_v2.mm";
        v24 = 1024;
        v25 = 1087;
        v26 = 1024;
        v27 = v14;
        v28 = 1024;
        v29 = v11;
        v30 = 1024;
        v31 = v15;
        v32 = 1024;
        v33 = v16;
        _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_INFO, "%s:%i processing graphs already created and tuning mode/Sound to Isolate mode changed from %u/%u to %u/%u ", buf, 0x2Au);
        if (getAUSoundIsolationLog(void)::onceToken != -1)
        {
          dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
        }
      }

      v17 = getAUSoundIsolationLog(void)::gLog;
      if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v23 = "AUSoundIsolation_v2.mm";
        v24 = 1024;
        v25 = 1088;
        _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_INFO, "%s:%i processing graphs need to be re-created", buf, 0x12u);
      }

      *(this + 145) = v11;
      *(this + 141) = *(this + 143);
      AUSoundIsolation_v2::CreateProcessingGraphs(this);
    }
  }

  else
  {
    *(this + 145) = v11;
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v18 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(this + 145);
      *buf = 136315650;
      v23 = "AUSoundIsolation_v2.mm";
      v24 = 1024;
      v25 = 1083;
      v26 = 1024;
      v27 = v20;
      _os_log_debug_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_DEBUG, "%s:%i tuning mode set to %u", buf, 0x18u);
    }
  }

  buf[0] = 0;
  LOBYTE(v23) = 0;
  BYTE4(v23) = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = *(this + 142);
  v40 = 1;
  v41 = *(this + 143);
  v42 = 1;
  v43 = *(this + 576) | 0x100;
  v44 = Parameter;
  v45 = 1;
  v46 = v11;
  v47 = 1;
  v19 = *(this + 88);
  v21 = 4;
  AU::SoundIsolation::MetricsReporter::reportAsync(v19, buf, &v21);
}

const void **AUSoundIsolation_v2::UpdateBleningGraphWeights(float a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1 / 100.0;
  CA::DSP::Graph::SetParameter(&v6, a1 / 100.0);
  if ((v7 & 1) == 0)
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v2 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "AUSoundIsolation_v2.mm";
      v10 = 1024;
      v11 = 1847;
      v12 = 2112;
      v13 = v6;
      _os_log_error_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_ERROR, "%s:%i failed to set blending graph wet signal weight - %@", buf, 0x1Cu);
    }

    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v6);
  }

  v3 = 1.0;
  if (v1 > 0.0)
  {
    v3 = 1.0 - v1;
  }

  result = CA::DSP::Graph::SetParameter(&v6, v3);
  if ((v7 & 1) == 0)
  {
    if (getAUSoundIsolationLog(void)::onceToken != -1)
    {
      dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
    }

    v5 = getAUSoundIsolationLog(void)::gLog;
    if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "AUSoundIsolation_v2.mm";
      v10 = 1024;
      v11 = 1852;
      v12 = 2112;
      v13 = v6;
      _os_log_error_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_ERROR, "%s:%i failed to set blending graph dry signal weight - %@", buf, 0x1Cu);
    }

    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v6);
  }

  return result;
}

const void **CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, const void **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v16 = 0;
  v10 = a2(a3, a4, a5, a6, a7, a8, a9, &v16);
  v11 = v16;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v16 == 0;
  }

  if (v12)
  {
    v11 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v16 = v11;
  }

  v15 = v11;
  if (v11)
  {
    v13 = 0;
    v15 = 0;
    *a1 = v11;
  }

  else
  {
    v13 = 1;
  }

  *(a1 + 8) = v13;
  return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v15);
}

id AU::SoundIsolation::CopyError<void>(void *a1, char a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = [objc_alloc(MEMORY[0x1E698D490]) initWithCode:1970170734];
  }

  else
  {
    v2 = a1;
    v3 = objc_alloc(MEMORY[0x1E696ABC0]);
    v4 = [v2 errorCode];
    v9 = *MEMORY[0x1E698D480];
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v2, "errorStatus")}];
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v3 initWithDomain:*MEMORY[0x1E698D478] code:v4 userInfo:v6];
  }

  return v7;
}

const void **CA::DSP::Graph::Process(uint64_t a1)
{
  v7 = 0;
  v2 = 0;
  if (!CADSPGraphProcessPCMData())
  {
    v2 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v7 = v2;
  }

  v6 = v2;
  if (v2)
  {
    v6 = 0;
    v5 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v6);
    v4 = 0;
    v7 = 0;
    *a1 = v2;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
    *(a1 + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v4);
  }

  else
  {
    v5 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v6);
    *(a1 + 8) = 1;
  }

  return result;
}

id getAUSoundIsolationLog(void)
{
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_3653);
  }

  v1 = getAUSoundIsolationLog(void)::gLog;

  return v1;
}

const void **CA::DSP::Graph::CalculateExpectedNumberOfOutputPCMFrames(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = a7;
  v16 = a8;
  if (a8)
  {
    v9 = &v15;
  }

  else
  {
    v9 = 0;
  }

  result = CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(&v13, MEMORY[0x1E698D488], a2, a3, a4, a5, a6, v9, 0);
  v11 = v14;
  if (v14)
  {
    *(a1 + 8) = v14;
  }

  else
  {
    v12 = v13;
    v13 = 0;
    v17 = 0;
    *a1 = v12;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v17);
    *(a1 + 8) = v11;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v13);
  }

  return result;
}

const void **CA::DSP::Graph::SetParameter(CA::DSP::Graph *this, float a2)
{
  v8 = 0;
  v3 = 0;
  if (!CADSPGraphSetParameter())
  {
    v3 = CADSPRealTimeErrorCreateWithRealTimeSafeAllocator();
    v8 = v3;
  }

  v7 = v3;
  if (v3)
  {
    v7 = 0;
    v6 = 0;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
    v5 = 0;
    v8 = 0;
    *this = v3;
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v8);
    *(this + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v5);
  }

  else
  {
    v6 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v7);
    *(this + 8) = 1;
  }

  return result;
}