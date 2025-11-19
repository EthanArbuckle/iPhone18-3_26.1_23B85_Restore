uint64_t vec::fill<float>(uint64_t result, uint64_t a2, int *a3)
{
  if (a2 != result)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (result + 24 * v3);
      v6 = *v5;
      v7 = (v5[1] - *v5) >> 2;
      v8 = v7 - 1;
      if (v7 >= 1)
      {
        v9 = *a3;
        v10 = (v7 + 3) & 0x7FFFFFFFFFFFFFFCLL;
        v11 = vdupq_n_s64(v8);
        v12 = (v6 + 8);
        v13 = 1;
        do
        {
          v14 = vdupq_n_s64(v13 - 1);
          v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_1DE095160)));
          if (vuzp1_s16(v15, 2).u8[0])
          {
            *(v12 - 2) = v9;
          }

          if (vuzp1_s16(v15, 2).i8[2])
          {
            *(v12 - 1) = v9;
          }

          if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_1DE095150)))).i32[1])
          {
            *v12 = v9;
            v12[1] = v9;
          }

          v13 += 4;
          v12 += 4;
          v10 -= 4;
        }

        while (v10);
      }

      v3 = ++v4;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 3) > v4);
  }

  return result;
}

void vec::cleanup<float>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 != *a1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (v2 + 24 * v4);
      v7 = *v6;
      if (v6[1] != *v6)
      {
        v8 = 0;
        v9 = 1;
        do
        {
          bzero(*(v7 + 24 * v8), *(v7 + 24 * v8 + 8) - *(v7 + 24 * v8));
          v8 = v9;
          v7 = *v6;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3) > v9++);
        v2 = *a1;
        v1 = a1[1];
      }

      v4 = ++v5;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v1 - v2) >> 3) > v5);
  }
}

void PMWF_FAST_GS_vDSP::ProcessOneFrame(PMWF_FAST_GS_vDSP *this)
{
  v2 = *(this + 37);
  if (!v2)
  {
    vDSP_vfill(this + 21, *(this + 49), 1, *(this + 13));
    if (!*(this + 36))
    {
LABEL_10:
      ++*(this + 37);
      goto LABEL_11;
    }

LABEL_5:
    v3 = *(this + 12);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        if (((*(*(this + 22) + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) == 0)
        {
          v6 = *(this + 13);
          v7 = *(this + 56);
          v8 = (v7 + 4 * (*(this + 15) + v6 * i));
          __A.realp = (v7 + 4 * (v6 * i));
          __A.imagp = v8;
          vDSP_zvmags(&__A, 1, *(this + 133), 1, v6);
          vDSP_vmax(*(this + 133), 1, *(*(this + 25) + v4), 1, *(*(this + 25) + v4), 1, *(this + 13));
          vDSP_vmax(*(this + 133), 1, *(*(this + 28) + v4), 1, *(*(this + 28) + v4), 1, *(this + 13));
          v3 = *(this + 12);
        }

        v4 += 24;
      }
    }

    goto LABEL_10;
  }

  if (v2 < *(this + 36))
  {
    goto LABEL_5;
  }

LABEL_11:
  memcpy(*(this + 59), *(this + 56), 4 * *(this + 15));
  memcpy(*(this + 62), (*(this + 56) + 4 * *(this + 15)), 4 * *(this + 15));
  bzero((*(this + 59) + 4 * *(this + 15)), 4 * *(this + 15));
  bzero((*(this + 62) + 4 * *(this + 15)), 4 * *(this + 15));
  bzero(*(this + 71), 4 * *(this + 13));
  v9 = *(this + 12);
  if (v9)
  {
    v10 = 0;
    v11 = 1;
    v12 = 16;
    do
    {
      if ((*(*(this + 22) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10))
      {
        ++v10;
      }

      else
      {
        vDSP_zvmags((*(this + 65) + 16 * v10), 1, *(this + 68), 1, *(this + 13));
        vDSP_svdiv(this + 19, *(*(this + 25) + 24 * v10), 1, *(this + 77), 1, *(this + 13));
        MEMORY[0x1E12BE780](*(this + 68), 1, *(this + 77), 1, *(this + 71), 1, *(this + 71), 1, *(this + 13));
        v13 = *(this + 13);
        v14 = *(this + 124);
        v15 = *(this + 15);
        __A.realp = (v14 + 4 * (v13 * v10));
        __A.imagp = (v14 + 4 * (v15 + v13 * v10));
        vDSP_zrvmul((*(this + 65) + 16 * v10), 1, *(this + 77), 1, &__A, 1, v13);
        v9 = *(this + 12);
        v16 = v12;
        v17 = v11;
        if (v10 + 1 < 2 * v9)
        {
          do
          {
            if (((*(*(this + 22) + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              vDSP_zvma((*(*(this + 37) + 24 * v10) + v16), 1, (*(this + 65) + 16 * v10), 1, (*(this + 65) + v16), 1, (*(this + 65) + v16), 1, *(this + 13));
              v9 = *(this + 12);
            }

            ++v17;
            v16 += 16;
          }

          while (v17 < 2 * v9);
        }

        ++v10;
      }

      ++v11;
      v12 += 16;
    }

    while (v10 < v9);
  }

  MEMORY[0x1E12BE810](*(this + 59) + 4 * *(this + 15), 1, *(this + 121), 1);
  MEMORY[0x1E12BE810](*(this + 62) + 4 * *(this + 15), 1, *(this + 121) + 4 * *(this + 15), 1);
  v18 = *(this + 12);
  v19 = (v18 - 1);
  if (v18 - 1 >= 0)
  {
    v20 = v18 - 2;
    do
    {
      if (((*(*(this + 22) + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        v21 = *(this + 13) * v18 - 1;
        v22 = *(this + 124);
        v23 = (v22 + 4 * v21);
        v24 = (v22 + 4 * (*(this + 15) + v21));
        __A.realp = v23;
        __A.imagp = v24;
        if (v18 - 2 >= 0)
        {
          v25 = 24 * v20;
          v26 = v20;
          do
          {
            if (((*(*(this + 22) + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              __B.realp = 0;
              __B.imagp = 0;
              v27 = *(this + 13);
              __B.realp = (*(*(*(this + 31) + v25) + 24 * v19) + 4 * (v27 - 1));
              __B.imagp = (*(*(*(this + 34) + v25) + 24 * v19) + 4 * (v27 - 1));
              v28 = v27 - 1 + v27 * v26;
              v29 = *(this + 124);
              v30 = *(this + 15) + v28;
              __D.realp = (v29 + 4 * v28);
              __D.imagp = (v29 + 4 * v30);
              vDSP_zvcma(&__B, -1, &__A, -1, &__D, -1, &__D, -1, v27);
            }

            v31 = v26--;
            v25 -= 24;
          }

          while (v31 > 0);
        }
      }

      v18 = v19;
      --v20;
    }

    while (v19-- > 0);
  }

  MEMORY[0x1E12BE930](*(this + 49), 1, this + 8, *(this + 71), 1, this + 96, *(this + 80), 1, *(this + 13));
  MEMORY[0x1E12BE8A0](*(this + 80), 1, this + 88, *(this + 80), 1, *(this + 13));
  vDSP_vabs(*(this + 80), 1, *(this + 80), 1, *(this + 13));
  bzero(*(this + 133), 4 * *(this + 13));
  v33 = *(this + 12);
  if ((v33 & 0x7FFFFFFF) != 0)
  {
    v34 = 0;
    do
    {
      if (((*(*(this + 22) + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        MEMORY[0x1E12BE780](*(this + 121) + 4 * (*(this + 13) * v34), 1, *(this + 124) + 4 * (*(this + 13) * v34), 1, *(this + 133), 1, *(this + 133), 1, *(this + 13));
        v33 = *(this + 12);
      }

      ++v34;
    }

    while (v34 < (2 * v33));
  }

  MEMORY[0x1E12BE990](*(this + 71), 1, *(this + 74), 1, *(this + 13));
  MEMORY[0x1E12BE930](*(this + 133), 1, this + 8, *(this + 74), 1, this + 96, *(this + 83), 1, *(this + 13));
  MEMORY[0x1E12BE9A0](*(this + 71), 1, *(this + 83), 1, *(this + 83), 1, *(this + 13));
  vDSP_vabs(*(this + 83), 1, *(this + 83), 1, *(this + 13));
  MEMORY[0x1E12BE8A0](*(this + 80), 1, this + 76, *(this + 133), 1, *(this + 13));
  vDSP_svdiv(this + 19, *(this + 133), 1, *(this + 133), 1, *(this + 13));
  MEMORY[0x1E12BE7F0](*(this + 83), 1, *(this + 133), 1, *(this + 86), 1, *(this + 13));
  v190 = *(this + 13);
  vvexpf(*(this + 86), *(this + 86), &v190);
  MEMORY[0x1E12BE7F0](*(this + 133), 1, *(this + 86), 1, *(this + 86), 1, *(this + 13));
  if (*(this + 27) == 1 && *(this + 28))
  {
    MEMORY[0x1E12BE810](*(this + 166), 1, *(this + 133), 1, *(this + 13));
    MEMORY[0x1E12BE8A0](*(this + 133), 1, this + 76, *(this + 133), 1, *(this + 13));
    vDSP_vdiv(*(this + 166), 1, *(this + 133), 1, *(this + 133), 1, *(this + 13));
    MEMORY[0x1E12BE7F0](*(this + 133), 1, *(this + 86), 1, *(this + 86), 1, *(this + 13));
  }

  else
  {
    MEMORY[0x1E12BE940](*(this + 86), 1, this + 92, *(this + 86), 1, *(this + 13));
  }

  v35 = (this + 72);
  vDSP_vclip(*(this + 86), 1, this + 18, this + 9, *(this + 86), 1, *(this + 13));
  MEMORY[0x1E12BE8A0](*(this + 86), 1, this + 76, *(this + 89), 1, *(this + 13));
  vDSP_vdiv(*(this + 89), 1, *(this + 86), 1, *(this + 89), 1, *(this + 13));
  v36 = (this + 16);
  if (*(this + 4) == 0.0)
  {
    vDSP_vclip(*(this + 89), 1, this + 18, this + 8, *(this + 89), 1, *(this + 13));
  }

  else
  {
    MEMORY[0x1E12BE930](*(this + 52), 1, this + 16, *(this + 89), 1, this + 104, *(this + 52), 1, *(this + 13));
    v37 = *(this + 13);
    if (v37)
    {
      v38 = 0;
      v39 = *(this + 52);
      v40 = 4 * v37;
      do
      {
        v41 = *(this + 8);
        if (*(v39 + v38) > v41)
        {
          v42 = *(this + 89);
          if (*(v42 + v38) > v41)
          {
            *(v42 + v38) = v41;
          }
        }

        v38 += 4;
      }

      while (v40 != v38);
    }
  }

  if (*(this + 34))
  {
    v43 = (this + 32);
    v44 = 1;
    do
    {
      vDSP_vmin(*(this + 151), 1, *(this + 89), 1, *(this + 89), 1, *(this + 13));
      MEMORY[0x1E12BE910](*(this + 89), 1, this + 100, this + 12, *(this + 92), 1, *(this + 13));
      vDSP_svdiv(this + 19, *(this + 92), 1, *(this + 95), 1, *(this + 13));
      MEMORY[0x1E12BE810](*(this + 92), 1, *(this + 98), 1, *(this + 13));
      MEMORY[0x1E12BE8A0](*(this + 98), 1, this + 76, *(this + 98), 1, *(this + 13));
      vDSP_svdiv(this + 19, *(this + 98), 1, *(this + 101), 1, *(this + 13));
      MEMORY[0x1E12BE940](*(this + 101), 1, this + 96, *(this + 133), 1, *(this + 13));
      v45 = *(this + 12);
      if (v45)
      {
        for (j = 0; j < v45; ++j)
        {
          if (((*(*(this + 22) + ((j >> 3) & 0x1FFFFFFFFFFFFFF8)) >> j) & 1) == 0)
          {
            v47 = *(this + 13);
            v48 = *(this + 127);
            v49 = v47 * j + *(this + 15);
            __A.realp = (v48 + 4 * (v47 * j));
            __A.imagp = (v48 + 4 * v49);
            v50 = *(this + 56);
            __B.realp = (v50 + 4 * (v47 * j));
            __B.imagp = (v50 + 4 * v49);
            vDSP_zrvmul(&__B, 1, *(this + 133), 1, &__A, 1, v47);
            v45 = *(this + 12);
          }
        }
      }

      MEMORY[0x1E12BE940](*(this + 95), 1, this + 8, *(this + 104), 1, *(this + 13));
      v51 = *(this + 12);
      if (v51)
      {
        for (k = 0; k < v51; ++k)
        {
          if (((*(*(this + 22) + ((k >> 3) & 0x1FFFFFFFFFFFFFF8)) >> k) & 1) == 0)
          {
            v53 = *(this + 13);
            v54 = *(this + 130);
            v55 = v53 * k + *(this + 15);
            __A.realp = (v54 + 4 * (v53 * k));
            __A.imagp = (v54 + 4 * v55);
            v56 = *(this + 127);
            __B.realp = (v56 + 4 * (v53 * k));
            __B.imagp = (v56 + 4 * v55);
            v57 = *(this + 121);
            __D.realp = (v57 + 4 * (v53 * k));
            __D.imagp = (v57 + 4 * v55);
            vDSP_zrvmul(&__D, 1, *(this + 104), 1, &__A, 1, v53);
            vDSP_zvsub(&__B, 1, &__A, 1, &__A, 1, *(this + 13));
            v51 = *(this + 12);
          }
        }
      }

      MEMORY[0x1E12BE7F0](*(this + 95), 1, *(this + 71), 1, *(this + 110), 1, *(this + 13));
      bzero(*(this + 133), 4 * *(this + 13));
      v58 = *(this + 12);
      if ((v58 & 0x7FFFFFFF) != 0)
      {
        v59 = 0;
        do
        {
          if (((*(*(this + 22) + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
          {
            MEMORY[0x1E12BE780](*(this + 130) + 4 * (*(this + 13) * v59), 1, *(this + 124) + 4 * (*(this + 13) * v59), 1, *(this + 133), 1, *(this + 133), 1, *(this + 13));
            v58 = *(this + 12);
          }

          ++v59;
        }

        while (v59 < (2 * v58));
      }

      MEMORY[0x1E12BE5D0](*(this + 110), 1, *(this + 101), 1, *(this + 107), 1, *(this + 13));
      MEMORY[0x1E12BE7F0](*(this + 92), 1, *(this + 107), 1, *(this + 107), 1, *(this + 13));
      vDSP_svdiv(this + 19, *(this + 107), 1, *(this + 107), 1, *(this + 13));
      vDSP_vmma(*(this + 104), 1, *(this + 49), 1, *(this + 107), 1, *(this + 133), 1, *(this + 80), 1, *(this + 13));
      MEMORY[0x1E12BE8A0](*(this + 80), 1, this + 88, *(this + 80), 1, *(this + 13));
      vDSP_vabs(*(this + 80), 1, *(this + 80), 1, *(this + 13));
      MEMORY[0x1E12BE7F0](*(this + 71), 1, *(this + 107), 1, *(this + 136), 1, *(this + 13));
      MEMORY[0x1E12BE810](*(this + 136), 1, *(this + 136), 1, *(this + 13));
      MEMORY[0x1E12BE8A0](*(this + 136), 1, this + 76, *(this + 136), 1, *(this + 13));
      vDSP_vthr(*(this + 136), 1, this + 18, *(this + 136), 1, *(this + 13));
      v60 = *(this + 12);
      if (v60)
      {
        for (m = 0; m < v60; ++m)
        {
          if (((*(*(this + 22) + ((m >> 3) & 0x1FFFFFFFFFFFFFF8)) >> m) & 1) == 0)
          {
            v62 = *(this + 13);
            v63 = *(this + 139);
            v64 = v62 * m + *(this + 15);
            __A.realp = (v63 + 4 * (v62 * m));
            __A.imagp = (v63 + 4 * v64);
            v65 = *(this + 127);
            __B.realp = (v65 + 4 * (v62 * m));
            __B.imagp = (v65 + 4 * v64);
            v66 = *(this + 130);
            __D.realp = (v66 + 4 * (v62 * m));
            __D.imagp = (v66 + 4 * v64);
            vDSP_zrvmul(&__D, 1, *(this + 136), 1, &__A, 1, v62);
            vDSP_zvsub(&__B, 1, &__A, 1, &__A, 1, *(this + 13));
            v60 = *(this + 12);
          }
        }
      }

      bzero(*(this + 83), 4 * *(this + 13));
      v67 = *(this + 12);
      if (v67)
      {
        for (n = 0; n < v67; ++n)
        {
          if (((*(*(this + 22) + ((n >> 3) & 0x1FFFFFFFFFFFFFF8)) >> n) & 1) == 0)
          {
            v69 = *(this + 13);
            v70 = *(this + 139);
            v71 = v69 * n + *(this + 15);
            __A.realp = (v70 + 4 * (v69 * n));
            __A.imagp = (v70 + 4 * v71);
            v72 = *(this + 56);
            __B.realp = (v72 + 4 * (v69 * n));
            __B.imagp = (v72 + 4 * v71);
            v73 = *(this + 124);
            v74 = v73 + 4 * (v69 * n);
            v75 = v73 + 4 * v71;
            vDSP_zvsub(&__A, 1, &__B, 1, &__A, 1, v69);
            MEMORY[0x1E12BE780](__A.realp, 1, v74, 1, *(this + 83), 1, *(this + 83), 1, *(this + 13));
            MEMORY[0x1E12BE780](__A.imagp, 1, v75, 1, *(this + 83), 1, *(this + 83), 1, *(this + 13));
            v67 = *(this + 12);
          }
        }
      }

      MEMORY[0x1E12BE7F0](*(this + 136), 1, *(this + 83), 1, *(this + 83), 1, *(this + 13));
      MEMORY[0x1E12BE7F0](*(this + 95), 1, *(this + 83), 1, *(this + 83), 1, *(this + 13));
      vDSP_vabs(*(this + 83), 1, *(this + 83), 1, *(this + 13));
      MEMORY[0x1E12BE8A0](*(this + 80), 1, this + 76, *(this + 133), 1, *(this + 13));
      vDSP_svdiv(this + 19, *(this + 133), 1, *(this + 133), 1, *(this + 13));
      MEMORY[0x1E12BE7F0](*(this + 83), 1, *(this + 133), 1, *(this + 86), 1, *(this + 13));
      vvexpf(*(this + 86), *(this + 86), &v190);
      MEMORY[0x1E12BE7F0](*(this + 133), 1, *(this + 86), 1, *(this + 86), 1, *(this + 13));
      if (*(this + 27) == 1 && *(this + 28))
      {
        MEMORY[0x1E12BE810](*(this + 166), 1, *(this + 133), 1, *(this + 13));
        MEMORY[0x1E12BE8A0](*(this + 133), 1, this + 76, *(this + 133), 1, *(this + 13));
        vDSP_vdiv(*(this + 166), 1, *(this + 133), 1, *(this + 133), 1, *(this + 13));
        MEMORY[0x1E12BE7F0](*(this + 133), 1, *(this + 86), 1, *(this + 86), 1, *(this + 13));
      }

      else
      {
        MEMORY[0x1E12BE940](*(this + 86), 1, this + 92, *(this + 86), 1, *(this + 13));
      }

      vDSP_vclip(*(this + 86), 1, this + 18, this + 9, *(this + 86), 1, *(this + 13));
      MEMORY[0x1E12BE8A0](*(this + 86), 1, this + 76, *(this + 89), 1, *(this + 13));
      vDSP_vdiv(*(this + 89), 1, *(this + 86), 1, *(this + 89), 1, *(this + 13));
      if (v44 < *(this + 34))
      {
        if (*v36 == 0.0)
        {
          vDSP_vclip(*(this + 89), 1, this + 18, this + 8, *(this + 89), 1, *(this + 13));
        }

        else
        {
          MEMORY[0x1E12BE930](*(this + 52), 1, this + 16, *(this + 89), 1, this + 104, *(this + 52), 1, *v36, *(this + 13));
          v76 = *(this + 13);
          if (v76)
          {
            v77 = 0;
            v78 = *(this + 52);
            v79 = 4 * v76;
            do
            {
              v80 = *v43;
              if (*(v78 + v77) > *v43)
              {
                v81 = *(this + 89);
                if (*(v81 + v77) > v80)
                {
                  *(v81 + v77) = v80;
                }
              }

              v77 += 4;
            }

            while (v79 != v77);
          }
        }
      }

      ++v44;
    }

    while (v44 <= *(this + 34));
  }

  vDSP_vmin(*(this + 151), 1, *(this + 89), 1, *(this + 89), 1, *(this + 13));
  MEMORY[0x1E12BE810](*(this + 89), 1, *(this + 86), 1, *(this + 13));
  MEMORY[0x1E12BE8A0](*(this + 86), 1, this + 76, *(this + 86), 1, *(this + 13));
  vDSP_vthr(*(this + 86), 1, this + 10, *(this + 86), 1, *(this + 13));
  vDSP_vdiv(*(this + 86), 1, *(this + 89), 1, *(this + 86), 1, *(this + 13));
  vDSP_vclip(*(this + 86), 1, this + 18, this + 9, *(this + 86), 1, *(this + 13));
  MEMORY[0x1E12BE910](*(this + 89), 1, this + 100, this + 12, *(this + 92), 1, *(this + 13));
  vDSP_svdiv(this + 19, *(this + 92), 1, *(this + 95), 1, *(this + 13));
  MEMORY[0x1E12BE810](*(this + 92), 1, *(this + 98), 1, *(this + 13));
  MEMORY[0x1E12BE8A0](*(this + 98), 1, this + 76, *(this + 98), 1, *(this + 13));
  vDSP_svdiv(this + 19, *(this + 98), 1, *(this + 101), 1, *(this + 13));
  MEMORY[0x1E12BE940](*(this + 101), 1, this + 96, *(this + 133), 1, *(this + 13));
  v82 = *(this + 12);
  if (v82)
  {
    for (ii = 0; ii < v82; ++ii)
    {
      if (((*(*(this + 22) + ((ii >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ii) & 1) == 0)
      {
        v84 = *(this + 13);
        v85 = *(this + 127);
        v86 = *(this + 15) + v84 * ii;
        __A.realp = (v85 + 4 * (v84 * ii));
        __A.imagp = (v85 + 4 * v86);
        v87 = *(this + 56);
        __B.realp = (v87 + 4 * (v84 * ii));
        __B.imagp = (v87 + 4 * v86);
        vDSP_zrvmul(&__B, 1, *(this + 133), 1, &__A, 1, v84);
        v82 = *(this + 12);
      }
    }
  }

  MEMORY[0x1E12BE940](*(this + 95), 1, this + 8, *(this + 104), 1, *(this + 13));
  v88 = *(this + 12);
  if (v88)
  {
    for (jj = 0; jj < v88; ++jj)
    {
      if (((*(*(this + 22) + ((jj >> 3) & 0x1FFFFFFFFFFFFFF8)) >> jj) & 1) == 0)
      {
        v90 = *(this + 13);
        v91 = *(this + 130);
        v92 = *(this + 15) + v90 * jj;
        __A.realp = (v91 + 4 * (v90 * jj));
        __A.imagp = (v91 + 4 * v92);
        v93 = *(this + 127);
        __B.realp = (v93 + 4 * (v90 * jj));
        __B.imagp = (v93 + 4 * v92);
        v94 = *(this + 121);
        __D.realp = (v94 + 4 * (v90 * jj));
        __D.imagp = (v94 + 4 * v92);
        vDSP_zrvmul(&__D, 1, *(this + 104), 1, &__A, 1, v90);
        vDSP_zvsub(&__B, 1, &__A, 1, &__A, 1, *(this + 13));
        v88 = *(this + 12);
      }
    }
  }

  MEMORY[0x1E12BE7F0](*(this + 95), 1, *(this + 71), 1, *(this + 110), 1, *(this + 13));
  bzero(*(this + 133), 4 * *(this + 13));
  v95 = *(this + 12);
  if ((v95 & 0x7FFFFFFF) != 0)
  {
    v96 = 0;
    do
    {
      if (((*(*(this + 22) + ((v96 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
      {
        MEMORY[0x1E12BE780](*(this + 130) + 4 * (*(this + 13) * v96), 1, *(this + 124) + 4 * (*(this + 13) * v96), 1, *(this + 133), 1, *(this + 133), 1, *(this + 13));
        v95 = *(this + 12);
      }

      ++v96;
    }

    while (v96 < (2 * v95));
  }

  v186 = (this + 40);
  MEMORY[0x1E12BE5D0](*(this + 110), 1, *(this + 101), 1, *(this + 107), 1, *(this + 13));
  MEMORY[0x1E12BE7F0](*(this + 92), 1, *(this + 107), 1, *(this + 107), 1, *(this + 13));
  vDSP_svdiv(this + 19, *(this + 107), 1, *(this + 107), 1, *(this + 13));
  vDSP_vmma(*(this + 104), 1, *(this + 49), 1, *(this + 107), 1, *(this + 133), 1, *(this + 49), 1, *(this + 13));
  memcpy(*(this + 59), *(this + 56), 4 * *(this + 15));
  memcpy(*(this + 62), (*(this + 56) + 4 * *(this + 15)), 4 * *(this + 15));
  memcpy((*(this + 59) + 4 * *(this + 15)), *(this + 127), 4 * *(this + 15));
  memcpy((*(this + 62) + 4 * *(this + 15)), (*(this + 127) + 4 * *(this + 15)), 4 * *(this + 15));
  vDSP_vfill(this + 19, *(this + 136), 1, *(this + 13));
  bzero(*(this + 145), 4 * *(this + 13));
  v97 = *(this + 12);
  if (v97)
  {
    v98 = 0;
    v99 = 16;
    v100 = 1;
    do
    {
      if ((*(*(this + 22) + ((v98 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v98))
      {
        v101 = v98 + 1;
      }

      else
      {
        vDSP_zvmags((*(this + 65) + 16 * v98), 1, *(this + 68), 1, *(this + 13));
        MEMORY[0x1E12BE7F0](*(this + 136), 1, *(this + 98), 1, *(this + 107), 1, *(this + 13));
        __N = *(*(this + 25) + 24 * v98);
        vDSP_vmma(*(this + 92), 1, __N, 1, *(this + 107), 1, *(this + 68), 1, __N, 1, *(this + 13));
        v102 = *(*(this + 25) + 24 * v98);
        vDSP_vthr(v102, 1, this + 11, v102, 1, *(this + 13));
        MEMORY[0x1E12BE810](*(this + 107), 1, *(this + 107), 1, *(this + 13));
        vDSP_vdiv(*(*(this + 25) + 24 * v98), 1, *(this + 107), 1, *(this + 107), 1, *(this + 13));
        vDSP_zrvmul((*(this + 65) + 16 * v98), 1, *(this + 107), 1, (this + 952), 1, *(this + 13));
        vDSP_zvconj((this + 952), 1, (this + 952), 1, *(this + 13));
        MEMORY[0x1E12BE7F0](*(this + 107), 1, *(this + 68), 1, *(this + 107), 1, *(this + 13));
        MEMORY[0x1E12BE8A0](*(this + 107), 1, this + 76, *(this + 107), 1, *(this + 13));
        vDSP_vthr(*(this + 107), 1, v35, *(this + 107), 1, *(this + 13));
        MEMORY[0x1E12BE7F0](*(this + 136), 1, *(this + 107), 1, *(this + 136), 1, *(this + 13));
        vvlogf(*(this + 133), *(*(this + 25) + 24 * v98), &v190);
        MEMORY[0x1E12BE5D0](*(this + 133), 1, *(this + 145), 1, *(this + 145), 1, *(this + 13));
        v101 = v98 + 1;
        v97 = *(this + 12);
        if (v98 + 1 < 2 * v97)
        {
          v103 = v99;
          v104 = v100;
          do
          {
            if (((*(*(this + 22) + ((v104 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
            {
              if (v104 >= v97)
              {
                v105 = (*(*(this + 37) + 24 * v98) + v103);
                vDSP_zrvmul(v105, 1, *(this + 104), 1, v105, 1, *(this + 13));
              }

              __Na = (*(*(this + 37) + 24 * v98) + v103);
              aDSP_zvmama((*(this + 65) + 16 * v98), 1, __Na, 1, (*(this + 65) + v103), 1, this + 119, 1, __Na, 1, *(this + 13));
              v97 = *(this + 12);
            }

            ++v104;
            v103 += 16;
          }

          while (v104 < 2 * v97);
          v35 = (this + 72);
        }
      }

      ++v100;
      v99 += 16;
      v98 = v101;
    }

    while (v101 < v97);
  }

  memcpy(*(this + 130), (*(this + 59) + 4 * *(this + 15)), 4 * *(this + 15));
  memcpy((*(this + 130) + 4 * *(this + 15)), (*(this + 62) + 4 * *(this + 15)), 4 * *(this + 15));
  MEMORY[0x1E12BE810](*(this + 136), 1, *(this + 71), 1, *(this + 13));
  MEMORY[0x1E12BE8A0](*(this + 71), 1, this + 76, *(this + 71), 1, *(this + 13));
  MEMORY[0x1E12BE7F0](*(this + 101), 1, *(this + 71), 1, *(this + 71), 1, *(this + 13));
  MEMORY[0x1E12BE8A0](*(this + 49), 1, this + 88, *(this + 80), 1, *(this + 13));
  if (*(this + 140))
  {
    memcpy(*(this + 59), *(this + 56), 4 * *(this + 15));
    memcpy(*(this + 62), (*(this + 56) + 4 * *(this + 15)), 4 * *(this + 15));
    vDSP_vfill(this + 19, *(this + 136), 1, *(this + 13));
    bzero(*(this + 148), 4 * *(this + 13));
    v106 = *(this + 12);
    if (v106)
    {
      v107 = 0;
      v108 = 1;
      v109 = 16;
      do
      {
        if ((*(*(this + 22) + ((v107 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v107))
        {
          v110 = v107 + 1;
        }

        else
        {
          vDSP_zvmags((*(this + 65) + 16 * v107), 1, *(this + 68), 1, *(this + 13));
          MEMORY[0x1E12BE940](*(this + 136), 1, this + 96, *(this + 107), 1, *(this + 13));
          MEMORY[0x1E12BE940](*(*(this + 28) + 24 * v107), 1, this + 8, *(this + 133), 1, *(this + 13));
          MEMORY[0x1E12BE780](*(this + 107), 1, *(this + 68), 1, *(this + 133), 1, *(this + 133), 1, *(this + 13));
          vDSP_vthr(*(this + 133), 1, this + 11, *(this + 133), 1, *(this + 13));
          MEMORY[0x1E12BE810](*(this + 107), 1, *(this + 107), 1, *(this + 13));
          vDSP_vdiv(*(this + 133), 1, *(this + 107), 1, *(this + 107), 1, *(this + 13));
          vDSP_zrvmul((*(this + 65) + 16 * v107), 1, *(this + 107), 1, (this + 952), 1, *(this + 13));
          vDSP_zvconj((this + 952), 1, (this + 952), 1, *(this + 13));
          MEMORY[0x1E12BE7F0](*(this + 107), 1, *(this + 68), 1, *(this + 107), 1, *(this + 13));
          MEMORY[0x1E12BE8A0](*(this + 107), 1, this + 76, *(this + 107), 1, *(this + 13));
          vDSP_vthr(*(this + 107), 1, v35, *(this + 107), 1, *(this + 13));
          MEMORY[0x1E12BE7F0](*(this + 136), 1, *(this + 107), 1, *(this + 136), 1, *(this + 13));
          vvlogf(*(this + 133), *(this + 133), &v190);
          MEMORY[0x1E12BE5D0](*(this + 133), 1, *(this + 148), 1, *(this + 148), 1, *(this + 13));
          v110 = v107 + 1;
          v106 = *(this + 12);
          if (v107 + 1 < v106)
          {
            v111 = v109;
            v112 = v108;
            do
            {
              if (((*(*(this + 22) + ((v112 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v112) & 1) == 0)
              {
                vDSP_zvma((*(*(this + 46) + 24 * v107) + v111), 1, (*(this + 65) + 16 * v107), 1, (*(this + 65) + v111), 1, (*(this + 65) + v111), 1, *(this + 13));
                v106 = *(this + 12);
              }

              ++v112;
              v111 += 16;
            }

            while (v112 < v106);
          }
        }

        ++v108;
        v109 += 16;
        v107 = v110;
      }

      while (v110 < v106);
    }

    MEMORY[0x1E12BE810](*(this + 136), 1, *(this + 142), 1, *(this + 13));
    MEMORY[0x1E12BE8A0](*(this + 142), 1, this + 76, *(this + 142), 1, *(this + 13));
    MEMORY[0x1E12BE940](*(this + 142), 1, this + 156, *(this + 142), 1, *(this + 13));
    __C = 0.0;
    vDSP_vthr(*(this + 86), 1, v186, *(this + 86), 1, *(this + 13));
    vvlogf(*(this + 86), *(this + 86), &v190);
    vDSP_meanv(*(this + 86), 1, &__C, *(this + 13));
    __C = expf(__C);
    v189 = (*(this + 19) - (*(this + 19) - (__C / (__C + *(this + 19))))) / fmaxf(*(this + 19) - (__C / (__C + *(this + 19))), *(this + 10));
    MEMORY[0x1E12BE9A0](*(this + 145), 1, *(this + 148), 1, *(this + 133), 1, *(this + 13));
    vDSP_vthr(*(this + 133), 1, v35, *(this + 133), 1, *(this + 13));
    MEMORY[0x1E12BE810](*(this + 133), 1, *(this + 86), 1, *(this + 13));
    MEMORY[0x1E12BE9A0](*(this + 142), 1, *(this + 71), 1, *(this + 133), 1, *(this + 13));
    vDSP_vabs(*(this + 133), 1, *(this + 133), 1, *(this + 13));
    MEMORY[0x1E12BE5D0](*(this + 133), 1, *(this + 86), 1, *(this + 86), 1, *(this + 13));
    vvexpf(*(this + 86), *(this + 86), &v190);
    MEMORY[0x1E12BE940](*(this + 86), 1, &v189, *(this + 86), 1, *(this + 13));
    vDSP_vclip(*(this + 86), 1, v35, this + 9, *(this + 86), 1, *(this + 13));
    MEMORY[0x1E12BE8A0](*(this + 86), 1, this + 76, *(this + 89), 1, *(this + 13));
    vDSP_vdiv(*(this + 89), 1, *(this + 86), 1, *(this + 89), 1, *(this + 13));
    MEMORY[0x1E12BE910](*(this + 89), 1, this + 100, this + 12, *(this + 92), 1, *(this + 13));
    vDSP_svdiv(this + 19, *(this + 92), 1, *(this + 95), 1, *(this + 13));
    MEMORY[0x1E12BE810](*(this + 92), 1, *(this + 98), 1, *(this + 13));
    MEMORY[0x1E12BE8A0](*(this + 98), 1, this + 76, *(this + 98), 1, *(this + 13));
    vDSP_svdiv(this + 19, *(this + 98), 1, *(this + 101), 1, *(this + 13));
    MEMORY[0x1E12BE940](*(this + 92), 1, this + 152, *(this + 104), 1, *(this + 13));
    MEMORY[0x1E12BE940](*(this + 98), 1, this + 156, *(this + 133), 1, *(this + 13));
    v113 = *(this + 12);
    if (v113)
    {
      for (kk = 0; kk < v113; ++kk)
      {
        if (((*(*(this + 22) + ((kk >> 3) & 0x1FFFFFFFFFFFFFF8)) >> kk) & 1) == 0)
        {
          v115 = *(this + 13);
          v116 = *(this + 127);
          v117 = *(this + 15) + v115 * kk;
          __A.realp = (v116 + 4 * (v115 * kk));
          __A.imagp = (v116 + 4 * v117);
          v118 = *(this + 56);
          __B.realp = (v118 + 4 * (v115 * kk));
          __B.imagp = (v118 + 4 * v117);
          vDSP_zrvmul(&__B, 1, *(this + 133), 1, &__A, 1, v115);
          v113 = *(this + 12);
        }
      }
    }

    memcpy(*(this + 59), *(this + 56), 4 * *(this + 15));
    memcpy(*(this + 62), (*(this + 56) + 4 * *(this + 15)), 4 * *(this + 15));
    memcpy((*(this + 59) + 4 * *(this + 15)), *(this + 127), 4 * *(this + 15));
    memcpy((*(this + 62) + 4 * *(this + 15)), (*(this + 127) + 4 * *(this + 15)), 4 * *(this + 15));
    vDSP_vfill(this + 19, *(this + 136), 1, *(this + 13));
    v119 = *(this + 12);
    if (v119)
    {
      v120 = 0;
      v121 = 16;
      v122 = 1;
      do
      {
        if ((*(*(this + 22) + ((v120 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v120))
        {
          v123 = v120 + 1;
        }

        else
        {
          vDSP_zvmags((*(this + 65) + 16 * v120), 1, *(this + 68), 1, *(this + 13));
          MEMORY[0x1E12BE940](*(this + 136), 1, this + 96, *(this + 107), 1, *(this + 13));
          v124 = *(*(this + 28) + 24 * v120);
          MEMORY[0x1E12BE940](v124, 1, this + 8, v124, 1, *(this + 13));
          MEMORY[0x1E12BE780](*(this + 107), 1, *(this + 68), 1, *(*(this + 28) + 24 * v120), 1, *(*(this + 28) + 24 * v120), 1, *(this + 13));
          v125 = *(*(this + 28) + 24 * v120);
          vDSP_vthr(v125, 1, this + 11, v125, 1, *(this + 13));
          MEMORY[0x1E12BE810](*(this + 107), 1, *(this + 107), 1, *(this + 13));
          vDSP_vdiv(*(*(this + 28) + 24 * v120), 1, *(this + 107), 1, *(this + 107), 1, *(this + 13));
          vDSP_zrvmul((*(this + 65) + 16 * v120), 1, *(this + 107), 1, (this + 952), 1, *(this + 13));
          vDSP_zvconj((this + 952), 1, (this + 952), 1, *(this + 13));
          MEMORY[0x1E12BE7F0](*(this + 107), 1, *(this + 68), 1, *(this + 107), 1, *(this + 13));
          MEMORY[0x1E12BE8A0](*(this + 107), 1, this + 76, *(this + 107), 1, *(this + 13));
          vDSP_vthr(*(this + 107), 1, v35, *(this + 107), 1, *(this + 13));
          MEMORY[0x1E12BE7F0](*(this + 136), 1, *(this + 107), 1, *(this + 136), 1, *(this + 13));
          v123 = v120 + 1;
          v119 = *(this + 12);
          if (v120 + 1 < 2 * v119)
          {
            v126 = v121;
            v127 = v122;
            do
            {
              if (((*(*(this + 22) + ((v127 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v127) & 1) == 0)
              {
                if (v127 >= v119)
                {
                  v128 = (*(*(this + 46) + 24 * v120) + v126);
                  vDSP_zrvmul(v128, 1, *(this + 104), 1, v128, 1, *(this + 13));
                }

                __Nb = (*(*(this + 46) + 24 * v120) + v126);
                aDSP_zvmama((*(this + 65) + 16 * v120), 1, __Nb, 1, (*(this + 65) + v126), 1, this + 119, 1, __Nb, 1, *(this + 13));
                v119 = *(this + 12);
              }

              ++v127;
              v126 += 16;
            }

            while (v127 < 2 * v119);
            v35 = (this + 72);
          }
        }

        ++v122;
        v121 += 16;
        v120 = v123;
      }

      while (v123 < v119);
    }

    memcpy(*(this + 130), (*(this + 59) + 4 * *(this + 15)), 4 * *(this + 15));
    memcpy((*(this + 130) + 4 * *(this + 15)), (*(this + 62) + 4 * *(this + 15)), 4 * *(this + 15));
    v129 = *(this + 12);
    if (v129)
    {
      for (mm = 0; mm < v129; ++mm)
      {
        if (((*(*(this + 22) + ((mm >> 3) & 0x1FFFFFFFFFFFFFF8)) >> mm) & 1) == 0)
        {
          v131 = *(this + 13);
          v132 = *(this + 139);
          v133 = *(this + 15) + v131 * mm;
          __A.realp = (v132 + 4 * (v131 * mm));
          __A.imagp = (v132 + 4 * v133);
          v134 = *(this + 127);
          __B.realp = (v134 + 4 * (v131 * mm));
          __B.imagp = (v134 + 4 * v133);
          v135 = *(this + 130);
          __D.realp = (v135 + 4 * (v131 * mm));
          __D.imagp = (v135 + 4 * v133);
          vDSP_zrvmul(&__D, 1, *(this + 136), 1, &__A, 1, v131);
          vDSP_zvsub(&__B, 1, &__A, 1, &__A, 1, *(this + 13));
          v129 = *(this + 12);
        }
      }

      if (v129)
      {
        for (nn = 0; nn < v129; ++nn)
        {
          if (((*(*(this + 22) + ((nn >> 3) & 0x1FFFFFFFFFFFFFF8)) >> nn) & 1) == 0)
          {
            v137 = *(this + 13);
            v138 = *(this + 56);
            v139 = *(this + 15) + v137 * nn;
            __A.realp = (v138 + 4 * (v137 * nn));
            __A.imagp = (v138 + 4 * v139);
            v140 = *(this + 139);
            __B.realp = (v140 + 4 * (v137 * nn));
            __B.imagp = (v140 + 4 * v139);
            vDSP_zvsub(&__A, 1, &__B, 1, &__A, 1, v137);
            v129 = *(this + 12);
          }
        }
      }
    }
  }

  else
  {
    v141 = *(this + 12);
    if (v141)
    {
      for (i1 = 0; i1 < v141; ++i1)
      {
        if (((*(*(this + 22) + ((i1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i1) & 1) == 0)
        {
          v143 = *(this + 13);
          v144 = *(this + 139);
          v145 = *(this + 15) + v143 * i1;
          __A.realp = (v144 + 4 * (v143 * i1));
          __A.imagp = (v144 + 4 * v145);
          v146 = *(this + 127);
          __B.realp = (v146 + 4 * (v143 * i1));
          __B.imagp = (v146 + 4 * v145);
          v147 = *(this + 130);
          __D.realp = (v147 + 4 * (v143 * i1));
          __D.imagp = (v147 + 4 * v145);
          vDSP_zrvmul(&__D, 1, *(this + 136), 1, &__A, 1, v143);
          vDSP_zvsub(&__B, 1, &__A, 1, &__A, 1, *(this + 13));
          v141 = *(this + 12);
        }
      }
    }

    MEMORY[0x1E12BE8A0](*(this + 80), 1, this + 20, *(this + 133), 1, *(this + 13));
    MEMORY[0x1E12BE8A0](*(this + 133), 1, v186, *(this + 133), 1, *(this + 13));
    v148 = *(this + 13);
    v149 = *(this + 133);
    if (v148)
    {
      v150 = *(this + 133);
      v151 = *(this + 13);
      do
      {
        if (*v150 == *v35)
        {
          *v150 = *v186;
        }

        ++v150;
        --v151;
      }

      while (v151);
    }

    else
    {
      v148 = 0;
    }

    vDSP_svdiv(this + 19, v149, 1, v149, 1, v148);
    v152 = *(this + 12);
    if (v152)
    {
      for (i2 = 0; i2 < v152; ++i2)
      {
        if (((*(*(this + 22) + ((i2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i2) & 1) == 0)
        {
          v154 = *(this + 13);
          v155 = *(this + 56);
          v156 = v154 * i2 + *(this + 15);
          __A.realp = (v155 + 4 * (v154 * i2));
          __A.imagp = (v155 + 4 * v156);
          v157 = *(this + 139);
          __B.realp = (v157 + 4 * (v154 * i2));
          __B.imagp = (v157 + 4 * v156);
          vDSP_zvsub(&__B, 1, &__A, 1, &__A, 1, v154);
          vDSP_zrvmul(&__A, 1, *(this + 133), 1, &__A, 1, *(this + 13));
          v152 = *(this + 12);
        }
      }
    }
  }

  vDSP_meanv(*(this + 89), 1, this + 380, *(this + 13));
  v189 = 0.0;
  v188 = 0;
  v187 = 0.0;
  memcpy(*(this + 169), *(this + 71), 4 * *(this + 13));
  memcpy(*(this + 172), *(this + 49), 4 * *(this + 13));
  if (*(this + 27) == 1)
  {
    v158 = *(this + 28);
    if (v158)
    {
      v159 = (v158 - 1);
      if (v158 != 1)
      {
        v160 = v158 - 2;
        v161 = *(this + 160);
        v162 = *(this + 163);
        do
        {
          v163 = 4 * v159;
          *(v161 + v163) = *(v161 + 4 * v160);
          *(v162 + v163) = *(v162 + 4 * v160--);
          --v159;
        }

        while (v159);
      }

      vDSP_meanv(*(this + 169), 1, &v189, *(this + 13));
      vDSP_meanv(*(this + 172), 1, &v188 + 1, *(this + 13));
      **(this + 163) = *(this + 30) * *(&v188 + 1);
      v164 = *(this + 160);
      *v164 = *(this + 30) * v189;
      vDSP_minv(v164, 1, &v188, *(this + 28));
      vDSP_minv(*(this + 163), 1, &v187, *(this + 28));
      v166 = v187;
      v165 = *&v188;
      LODWORD(__A.realp) = 0;
      vDSP_meanv(*(this + 169), 1, &__A, *(this + 13));
      v167 = 0.0;
      if (*&__A.realp < v165)
      {
        v167 = 1.0;
      }

      *&__B.realp = v167;
      v168 = *(this + 13);
      if (v168)
      {
        v169 = 0;
        v170 = *(this + 172);
        v171 = *(this + 181);
        do
        {
          v171[v169] = (v166 - *(v170 + v169 * 4)) / (v166 - *(this + 21));
          ++v169;
        }

        while (v168 != v169);
      }

      else
      {
        v168 = 0;
        v171 = *(this + 181);
      }

      LODWORD(__D.realp) = 0;
      __C = 1.0;
      vDSP_vclip(v171, 1, &__D, &__C, v171, 1, v168);
      v173 = *(this + 13);
      if (v173)
      {
        v174 = 0;
        v175 = *(this + 172);
        v176 = *(this + 169);
        do
        {
          v177 = *&v175[v174];
          if (v177 >= v166 || v177 < *(this + 21))
          {
            v179 = *(this + 184);
            v172.n128_u64[0] = 0;
          }

          else
          {
            v179 = *(this + 184);
            v172.n128_u64[0] = 0;
            if (*(v176 + v174 * 4) < v165)
            {
              v172.n128_u32[0] = *(*(this + 181) + v174 * 4);
            }
          }

          v179[v174++] = v172.n128_u32[0];
        }

        while (v173 != v174);
        v180 = *(this + 169);
        v181 = v173;
        v182 = v179;
        do
        {
          v172.n128_u32[0] = *v175;
          if (*v175 < *(this + 21))
          {
            v172.n128_u32[0] = *v180;
            if (*v180 < v165)
            {
              *v182 = 1065353216;
            }
          }

          ++v182;
          ++v180;
          ++v175;
          --v181;
        }

        while (v181);
      }

      MEMORY[0x1E12BE940](v172);
      vDSP_vclip(*(this + 166), 1, this + 33, this + 32, *(this + 166), 1, *(this + 13));
    }
  }
}

void PMWF_FAST_GS_vDSP::ProcessBufferList(PMWF_FAST_GS_vDSP *this, const AudioBufferList *a2, const AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, int a6, int a7)
{
  v10 = *(this + 12);
  *(this + 43) = v10;
  if (v10)
  {
    v11 = 0;
    p_mData = &a2->mBuffers[0].mData;
    v13 = 0.0;
    do
    {
      v14 = cblas_sdot(2 * *(this + 13) - 2, *p_mData, 1, *p_mData, 1);
      v15 = *(this + 22);
      *(v15 + 8 * (v11 >> 6)) &= ~(1 << v11);
      v16 = *(this + 12);
      v17 = (v11 + v16) >> 6;
      v18 = 1 << (v11 + v16);
      *(v15 + 8 * v17) &= ~v18;
      if (v14 == 0.0)
      {
        --*(this + 43);
        *(v15 + 8 * (v11 >> 6)) |= 1 << v11;
        *(v15 + 8 * v17) |= v18;
      }

      else
      {
        v13 = v13 + v14;
      }

      ++v11;
      p_mData += 2;
    }

    while (v11 < v16);
    v19 = *(this + 43);
    if (v19)
    {
      v20 = v19;
      v21 = v13 / v19;
      goto LABEL_11;
    }
  }

  else
  {
    v19 = 0;
    v16 = 0;
  }

  v20 = 0.0;
  v21 = 0.0;
LABEL_11:
  v22 = (this + 40);
  v23 = *(this + 10);
  *(this + 21) = v20;
  *(this + 22) = -v20;
  if (v21 <= v23)
  {
LABEL_39:
    if (v16)
    {
      v33 = 0;
      v34 = &a2->mBuffers[0].mData;
      v35 = &a4->mBuffers[0].mData;
      do
      {
        v37 = *v35;
        v35 += 2;
        v36 = v37;
        v38 = *v34;
        v34 += 2;
        memcpy(v36, v38, 4 * (2 * *(this + 13) - 2));
        ++v33;
        v39 = *(this + 12);
      }

      while (v33 < v39);
      if (v39 && a6 != 0)
      {
        v41 = 0;
        v42 = &a3->mBuffers[0].mData;
        v43 = &a5->mBuffers[0].mData;
        do
        {
          v45 = *v43;
          v43 += 2;
          v44 = v45;
          v46 = *v42;
          v42 += 2;
          memcpy(v44, v46, 4 * (2 * *(this + 13) - 2));
          ++v41;
        }

        while (v41 < *(this + 12));
      }
    }

    return;
  }

  if (v19 < 2 || (LODWORD(v21) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    if (v19 == 1 && (LODWORD(v21) & 0x7FFFFFFFu) < 0x7F800000 && *(this + 160) == 1)
    {
      if (v16)
      {
        v28 = 0;
        v29 = &a5->mBuffers[0].mData;
        v30 = &a3->mBuffers[0].mData;
        v31 = &a4->mBuffers[0].mData;
        v32 = &a2->mBuffers[0].mData;
        do
        {
          if ((*(*(this + 22) + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v28))
          {
            memcpy(*v31, *v32, 4 * (2 * *(this + 13) - 2));
            if (a6)
            {
              memcpy(*v29, *v30, 4 * (2 * *(this + 13) - 2));
            }
          }

          else
          {
            MEMORY[0x1E12BE7F0](*(this + 154), 1, *v32, 1, *v31, 1, *(this + 13));
            MEMORY[0x1E12BE7F0](*(this + 154) + 4, 1, *v32 + 4 * *(this + 13), 1, *v31 + 4 * *(this + 13), 1, (*(this + 13) - 2));
            if (a6)
            {
              MEMORY[0x1E12BE7F0](*(this + 154), 1, *v30, 1, *v29, 1, *(this + 13));
              MEMORY[0x1E12BE7F0](*(this + 154) + 4, 1, *v30 + 4 * *(this + 13), 1, *v29 + 4 * *(this + 13), 1, (*(this + 13) - 2));
            }
          }

          ++v28;
          v29 += 2;
          v30 += 2;
          v31 += 2;
          v32 += 2;
        }

        while (v28 < *(this + 12));
      }

      return;
    }

    goto LABEL_39;
  }

  if (v16)
  {
    v24 = 0;
    v25 = &a2->mBuffers[0].mData;
    do
    {
      if (((*(*(this + 22) + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        MEMORY[0x1E12BE940](*v25, 1, this + 164, *(this + 56) + 4 * (*(this + 13) * v24), 1);
        MEMORY[0x1E12BE940](*v25 + 4 * *(this + 13), 1, this + 164, *(this + 56) + 4 * (*(this + 15) + *(this + 13) * v24 + 1), 1, (*(this + 13) - 2));
        v16 = *(this + 12);
      }

      ++v24;
      v25 += 2;
    }

    while (v24 < v16);
    if (v16 && a6)
    {
      v26 = 0;
      v27 = &a3->mBuffers[0].mData;
      do
      {
        if (((*(*(this + 22) + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          MEMORY[0x1E12BE940](*v27, 1, this + 164, *(this + 157) + 4 * (*(this + 13) * v26), 1);
          MEMORY[0x1E12BE940](*v27 + 4 * *(this + 13), 1, this + 164, *(this + 157) + 4 * (*(this + 15) + *(this + 13) * v26 + 1), 1, (*(this + 13) - 2));
          v16 = *(this + 12);
        }

        ++v26;
        v27 += 2;
      }

      while (v26 < v16);
    }
  }

  if (a7)
  {
    PMWF_FAST_GS_vDSP::ProcessOneFrame(this);
  }

  else
  {
    v47 = *(this + 140);
    memcpy(*(this + 59), *(this + 56), 4 * *(this + 15));
    memcpy(*(this + 62), (*(this + 56) + 4 * *(this + 15)), 4 * *(this + 15));
    bzero((*(this + 59) + 4 * *(this + 15)), 4 * *(this + 15));
    bzero((*(this + 62) + 4 * *(this + 15)), 4 * *(this + 15));
    v48 = *(this + 12);
    if (v47 == 1)
    {
      if (v48)
      {
        v49 = 0;
        v50 = 1;
        v51 = 16;
        do
        {
          v52 = v49 + 1;
          if (((*(*(this + 22) + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v49) & 1) == 0 && v52 < 2 * v48)
          {
            v53 = v51;
            v54 = v50;
            do
            {
              if (((*(*(this + 22) + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
              {
                vDSP_zvma((*(*(this + 46) + 24 * v49) + v53), 1, (*(this + 65) + 16 * v49), 1, (*(this + 65) + v53), 1, (*(this + 65) + v53), 1, *(this + 13));
                v48 = *(this + 12);
              }

              ++v54;
              v53 += 16;
            }

            while (v54 < 2 * v48);
          }

          ++v50;
          v51 += 16;
          ++v49;
        }

        while (v52 < v48);
      }

      MEMORY[0x1E12BE810](*(this + 59) + 4 * *(this + 15), 1, *(this + 139), 1);
      MEMORY[0x1E12BE810](*(this + 62) + 4 * *(this + 15), 1, *(this + 139) + 4 * *(this + 15), 1);
      v55 = *(this + 12);
      if (v55)
      {
        for (i = 0; i < v55; ++i)
        {
          if (((*(*(this + 22) + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) == 0)
          {
            v57 = *(this + 13);
            v58 = *(this + 56);
            v59 = *(this + 15) + v57 * i;
            __C.realp = (v58 + 4 * (v57 * i));
            __C.imagp = (v58 + 4 * v59);
            v60 = *(this + 139);
            __B.realp = (v60 + 4 * (v57 * i));
            __B.imagp = (v60 + 4 * v59);
            vDSP_zvsub(&__C, 1, &__B, 1, &__C, 1, v57);
            v55 = *(this + 12);
          }
        }
      }
    }

    else
    {
      if (v48)
      {
        v61 = 0;
        v62 = 1;
        v63 = 16;
        do
        {
          v64 = v61 + 1;
          if (((*(*(this + 22) + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v61) & 1) == 0 && v64 < 2 * v48)
          {
            v65 = v63;
            v66 = v62;
            do
            {
              if (((*(*(this + 22) + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
              {
                vDSP_zvma((*(*(this + 37) + 24 * v61) + v65), 1, (*(this + 65) + 16 * v61), 1, (*(this + 65) + v65), 1, (*(this + 65) + v65), 1, *(this + 13));
                v48 = *(this + 12);
              }

              ++v66;
              v65 += 16;
            }

            while (v66 < 2 * v48);
          }

          ++v62;
          v63 += 16;
          ++v61;
        }

        while (v64 < v48);
      }

      MEMORY[0x1E12BE810](*(this + 59) + 4 * *(this + 15), 1, *(this + 139), 1);
      MEMORY[0x1E12BE810](*(this + 62) + 4 * *(this + 15), 1, *(this + 139) + 4 * *(this + 15), 1);
      MEMORY[0x1E12BE8A0](*(this + 80), 1, this + 20, *(this + 133), 1, *(this + 13));
      MEMORY[0x1E12BE8A0](*(this + 133), 1, this + 40, *(this + 133), 1, *(this + 13));
      v67 = *(this + 13);
      v68 = *(this + 133);
      if (v67)
      {
        v69 = *(this + 133);
        v70 = *(this + 13);
        do
        {
          if (*v69 == *(this + 18))
          {
            *v69 = *v22;
          }

          ++v69;
          --v70;
        }

        while (v70);
      }

      else
      {
        v67 = 0;
      }

      vDSP_svdiv(this + 19, v68, 1, v68, 1, v67);
      v71 = *(this + 12);
      if (v71)
      {
        for (j = 0; j < v71; ++j)
        {
          if (((*(*(this + 22) + ((j >> 3) & 0x1FFFFFFFFFFFFFF8)) >> j) & 1) == 0)
          {
            v73 = *(this + 13);
            v74 = *(this + 56);
            v75 = *(this + 15) + v73 * j;
            __C.realp = (v74 + 4 * (v73 * j));
            __C.imagp = (v74 + 4 * v75);
            v76 = *(this + 139);
            __B.realp = (v76 + 4 * (v73 * j));
            __B.imagp = (v76 + 4 * v75);
            vDSP_zvsub(&__B, 1, &__C, 1, &__C, 1, v73);
            vDSP_zrvmul(&__C, 1, *(this + 133), 1, &__C, 1, *(this + 13));
            v71 = *(this + 12);
          }
        }
      }
    }
  }

  MEMORY[0x1E12BE940](*(this + 56), 1, this + 168, *(this + 56), 1, (2 * *(this + 15)));
  if (a6)
  {
    v77 = *(this + 140);
    memcpy(*(this + 59), *(this + 157), 4 * *(this + 15));
    memcpy(*(this + 62), (*(this + 157) + 4 * *(this + 15)), 4 * *(this + 15));
    bzero((*(this + 59) + 4 * *(this + 15)), 4 * *(this + 15));
    bzero((*(this + 62) + 4 * *(this + 15)), 4 * *(this + 15));
    v78 = *(this + 12);
    if (v77 == 1)
    {
      if (v78)
      {
        v79 = 0;
        v80 = 1;
        v81 = 16;
        do
        {
          v82 = v79 + 1;
          if (((*(*(this + 22) + ((v79 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v79) & 1) == 0 && v82 < 2 * v78)
          {
            v83 = v81;
            v84 = v80;
            do
            {
              if (((*(*(this + 22) + ((v84 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v84) & 1) == 0)
              {
                vDSP_zvma((*(*(this + 46) + 24 * v79) + v83), 1, (*(this + 65) + 16 * v79), 1, (*(this + 65) + v83), 1, (*(this + 65) + v83), 1, *(this + 13));
                v78 = *(this + 12);
              }

              ++v84;
              v83 += 16;
            }

            while (v84 < 2 * v78);
          }

          ++v80;
          v81 += 16;
          ++v79;
        }

        while (v82 < v78);
      }

      MEMORY[0x1E12BE810](*(this + 59) + 4 * *(this + 15), 1, *(this + 139), 1);
      MEMORY[0x1E12BE810](*(this + 62) + 4 * *(this + 15), 1, *(this + 139) + 4 * *(this + 15), 1);
      v85 = *(this + 12);
      if (v85)
      {
        for (k = 0; k < v85; ++k)
        {
          if (((*(*(this + 22) + ((k >> 3) & 0x1FFFFFFFFFFFFFF8)) >> k) & 1) == 0)
          {
            v87 = *(this + 13);
            v88 = *(this + 157);
            v89 = *(this + 15) + v87 * k;
            __C.realp = (v88 + 4 * (v87 * k));
            __C.imagp = (v88 + 4 * v89);
            v90 = *(this + 139);
            __B.realp = (v90 + 4 * (v87 * k));
            __B.imagp = (v90 + 4 * v89);
            vDSP_zvsub(&__C, 1, &__B, 1, &__C, 1, v87);
            v85 = *(this + 12);
          }
        }
      }
    }

    else
    {
      if (v78)
      {
        v91 = 0;
        v92 = 1;
        v93 = 16;
        do
        {
          v94 = v91 + 1;
          if (((*(*(this + 22) + ((v91 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v91) & 1) == 0 && v94 < 2 * v78)
          {
            v95 = v93;
            v96 = v92;
            do
            {
              if (((*(*(this + 22) + ((v96 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
              {
                vDSP_zvma((*(*(this + 37) + 24 * v91) + v95), 1, (*(this + 65) + 16 * v91), 1, (*(this + 65) + v95), 1, (*(this + 65) + v95), 1, *(this + 13));
                v78 = *(this + 12);
              }

              ++v96;
              v95 += 16;
            }

            while (v96 < 2 * v78);
          }

          ++v92;
          v93 += 16;
          ++v91;
        }

        while (v94 < v78);
      }

      MEMORY[0x1E12BE810](*(this + 59) + 4 * *(this + 15), 1, *(this + 139), 1);
      MEMORY[0x1E12BE810](*(this + 62) + 4 * *(this + 15), 1, *(this + 139) + 4 * *(this + 15), 1);
      MEMORY[0x1E12BE8A0](*(this + 80), 1, this + 20, *(this + 133), 1, *(this + 13));
      MEMORY[0x1E12BE8A0](*(this + 133), 1, this + 40, *(this + 133), 1, *(this + 13));
      v97 = *(this + 13);
      v98 = *(this + 133);
      if (v97)
      {
        v99 = *(this + 133);
        v100 = *(this + 13);
        do
        {
          if (*v99 == *(this + 18))
          {
            *v99 = *v22;
          }

          ++v99;
          --v100;
        }

        while (v100);
      }

      else
      {
        v97 = 0;
      }

      vDSP_svdiv(this + 19, v98, 1, v98, 1, v97);
      v101 = *(this + 12);
      if (v101)
      {
        for (m = 0; m < v101; ++m)
        {
          if (((*(*(this + 22) + ((m >> 3) & 0x1FFFFFFFFFFFFFF8)) >> m) & 1) == 0)
          {
            v103 = *(this + 13);
            v104 = *(this + 157);
            v105 = *(this + 15) + v103 * m;
            __C.realp = (v104 + 4 * (v103 * m));
            __C.imagp = (v104 + 4 * v105);
            v106 = *(this + 139);
            __B.realp = (v106 + 4 * (v103 * m));
            __B.imagp = (v106 + 4 * v105);
            vDSP_zvsub(&__B, 1, &__C, 1, &__C, 1, v103);
            vDSP_zrvmul(&__C, 1, *(this + 133), 1, &__C, 1, *(this + 13));
            v101 = *(this + 12);
          }
        }
      }
    }

    MEMORY[0x1E12BE940](*(this + 157), 1, this + 168, *(this + 157), 1, (2 * *(this + 15)));
  }

  if (*(this + 12))
  {
    v107 = 0;
    mBuffers = a5->mBuffers;
    v109 = a3->mBuffers;
    while (1)
    {
      v110 = &a2->mBuffers[v107];
      v111 = &a4->mBuffers[v107];
      if (((*(*(this + 22) + ((v107 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v107) & 1) == 0)
      {
        break;
      }

      memcpy(v111->mData, v110->mData, 4 * (2 * *(this + 13) - 2));
      if (a6)
      {
        memcpy(mBuffers[v107].mData, v109[v107].mData, 4 * (2 * *(this + 13) - 2));
      }

LABEL_151:
      if (++v107 >= *(this + 12))
      {
        return;
      }
    }

    mData = v111->mData;
    v113 = &v111->mData;
    v112 = mData;
    v115 = &mBuffers[v107];
    v118 = v115->mData;
    v117 = &v115->mData;
    v116 = v118;
    v119 = *(this + 13);
    if (!v119)
    {
      v119 = 0;
LABEL_149:
      MEMORY[0x1E12BE7F0](*(this + 154), 1, v112, 1, v112, 1, v119);
      MEMORY[0x1E12BE7F0](*(this + 154) + 4, 1, *v113 + 4 * *(this + 13), 1, *v113 + 4 * *(this + 13), 1, (*(this + 13) - 2));
      if (a6)
      {
        MEMORY[0x1E12BE7F0](*(this + 154), 1, *v117, 1, *v117, 1, *(this + 13));
        MEMORY[0x1E12BE7F0](*(this + 154) + 4, 1, *v117 + 4 * *(this + 13), 1, *v117 + 4 * *(this + 13), 1, (*(this + 13) - 2));
      }

      goto LABEL_151;
    }

    v120 = 0;
    v121 = v110->mData;
    v122 = v109[v107].mData;
    v123 = (v119 - 1);
    v124 = v119 * v107;
    while (1)
    {
      v125 = v124 + v120;
      if (!v120 || v123 == v120)
      {
        v132 = *(*(this + 56) + 4 * v125);
        v133 = v121[v120];
        if ((v132 * v132) <= (v133 * v133))
        {
          v112[v120] = (v133 * *(this + 31)) + ((1.0 - *(this + 31)) * v132);
          if (a6)
          {
            v131 = (*(this + 31) * v122[v120]) + ((1.0 - *(this + 31)) * *(*(this + 157) + 4 * v125));
LABEL_142:
            v126 = v120;
LABEL_145:
            v116[v126] = v131;
          }
        }

        else
        {
          v112[v120] = v133;
          if (a6)
          {
            v131 = v122[v120];
            goto LABEL_142;
          }
        }
      }

      else
      {
        v126 = (v123 + v120);
        v127 = *(this + 56);
        v128 = *(v127 + 4 * v125);
        v129 = (v124 + v120 + *(this + 15));
        v130 = v121[v120];
        if (((*(v127 + 4 * v129) * *(v127 + 4 * v129)) + (v128 * v128)) <= ((v121[v126] * v121[v126]) + (v130 * v130)))
        {
          v112[v120] = (v130 * *(this + 31)) + ((1.0 - *(this + 31)) * v128);
          v112[v126] = (*(this + 31) * v121[v126]) + ((1.0 - *(this + 31)) * *(v127 + 4 * v129));
          if (a6)
          {
            v134 = *(this + 157);
            v116[v120] = (*(this + 31) * v122[v120]) + ((1.0 - *(this + 31)) * *(v134 + 4 * v125));
            v131 = (*(this + 31) * v122[v126]) + ((1.0 - *(this + 31)) * *(v134 + 4 * v129));
            goto LABEL_145;
          }
        }

        else
        {
          v112[v120] = v130;
          v112[v126] = v121[v126];
          if (a6)
          {
            v116[v120] = v122[v120];
            v131 = v122[v126];
            goto LABEL_145;
          }
        }
      }

      if (v119 == ++v120)
      {
        goto LABEL_149;
      }
    }
  }
}

uint64_t AGCKernelV2::InitializeAWeightingFilter(AGCKernelV2 *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  Element = ausdk::AUScope::GetElement((v2 + 128), 0);
  if (!Element || (v4 = *(Element + 80), (v5 = ausdk::AUScope::GetElement((v2 + 80), 0)) == 0) || (v6 = v5, (v7 = ausdk::AUScope::GetElement((v2 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v8 = NewIIRFilter(v6 + 2, v7 + 2);
  v9 = *(this + 3);
  *(this + 3) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v8 = *(this + 3);
  }

  if (!v8)
  {
    return 4294956428;
  }

  v10 = 0;
  v11 = v4;
  do
  {
    v12 = (&v17 + v10);
    *v12 = 0;
    v12[1] = 0;
    v12[3] = 0;
    v12[4] = 0;
    v10 += 40;
    v12[2] = 0x3FF0000000000000;
  }

  while (v10 != 120);
  if (v11 <= 12000.0)
  {
    v17 = xmmword_1DE09E3F0;
    v18 = xmmword_1DE09E400;
    v19 = xmmword_1DE09E410;
    v20 = xmmword_1DE09E420;
    v21 = xmmword_1DE09CDD0;
    v22 = xmmword_1DE09CDC0;
    v23 = xmmword_1DE09E430;
    v15 = 80716449;
  }

  else
  {
    if (v11 <= 18000.0)
    {
      v17 = xmmword_1DE09E440;
      v18 = xmmword_1DE09E450;
      v19 = xmmword_1DE09E460;
      v20 = xmmword_1DE09E470;
      v21 = xmmword_1DE09CE30;
      v22 = xmmword_1DE09CE20;
      v23 = xmmword_1DE09E480;
      v13 = 0xFE1659EFC7EELL;
LABEL_19:
      v16 = v13 & 0xFFFFFFFFFFFFLL | 0x3FEF000000000000;
      goto LABEL_20;
    }

    if (v11 > 23000.0)
    {
      if (v11 <= 32000.0)
      {
        v17 = xmmword_1DE09E4E0;
        v18 = xmmword_1DE09E4F0;
        v19 = xmmword_1DE09E500;
        v20 = xmmword_1DE09E510;
        v21 = xmmword_1DE09CEF0;
        v22 = xmmword_1DE09CEE0;
        v23 = xmmword_1DE09E520;
        v13 = 0xFEAF852BEC7DLL;
      }

      else if (v11 <= 46000.0)
      {
        v17 = xmmword_1DE09E530;
        v18 = xmmword_1DE09E540;
        v19 = xmmword_1DE09E550;
        v20 = xmmword_1DE09E560;
        v21 = xmmword_1DE09CF50;
        v22 = xmmword_1DE09CF40;
        v23 = xmmword_1DE09E570;
        v13 = -115213797;
      }

      else
      {
        v17 = xmmword_1DE09E580;
        v18 = xmmword_1DE09E590;
        v19 = xmmword_1DE09E5A0;
        v20 = xmmword_1DE09E5B0;
        v21 = xmmword_1DE09CFB0;
        v22 = xmmword_1DE09CFA0;
        v23 = xmmword_1DE09E5C0;
        v13 = 0xFE93D59DB7AALL;
      }

      goto LABEL_19;
    }

    v17 = xmmword_1DE09E490;
    v18 = xmmword_1DE09E4A0;
    v19 = xmmword_1DE09E4B0;
    v20 = xmmword_1DE09E4C0;
    v21 = xmmword_1DE09CE90;
    v22 = xmmword_1DE09CE80;
    v23 = xmmword_1DE09E4D0;
    v15 = 214956234;
  }

  v16 = v15 & 0xFFFFFFFFFFFFLL | 0x3FF0000000000000;
LABEL_20:
  v24 = v16;
  (*(*v8 + 16))(v8, 3, &v17);
  return 0;
}

void AGCKernelV2::ClearDetectors(AGCKernelV2 *this)
{
  v2 = *(this + 1);
  *(this + 82) = 0;
  *(this + 708) = 0;
  *(this + 668) = 0u;
  *(this + 43) = 0u;
  v3 = (*(*v2 + 600))();
  *v4.i32 = __exp10f(v3 / 10.0);
  v5 = *(this + 79);
  v6 = (*(this + 80) - v5) >> 2;
  v7 = v6 - 1;
  if (v6 >= 1)
  {
    v8 = (v6 + 3) & 0x7FFFFFFFFFFFFFFCLL;
    v9 = vdupq_n_s64(v7);
    v10 = (v5 + 8);
    v11 = 1;
    do
    {
      v12 = vdupq_n_s64(v11 - 1);
      v13 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_1DE095160)));
      if (vuzp1_s16(v13, v4).u8[0])
      {
        *(v10 - 2) = v4.i32[0];
      }

      if (vuzp1_s16(v13, v4).i8[2])
      {
        *(v10 - 1) = v4.i32[0];
      }

      if (vuzp1_s16(v4, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_1DE095150)))).i32[1])
      {
        *v10 = v4.i32[0];
        v10[1] = v4.i32[0];
      }

      v11 += 4;
      v10 += 4;
      v8 -= 4;
    }

    while (v8);
  }

  *(this + 162) = 0;
}

void AGCKernelV2::InitializePastBuffer(AGCKernelV2 *this)
{
  v2 = *(this + 1);
  Element = ausdk::AUScope::GetElement((v2 + 32), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v4 = *(Element + 80);
  v5 = v2[84];
  v6 = vcvtps_u32_f32(v4 / v5);
  v7 = vcvtps_u32_f32((v4 * 6.0) / v5);
  if (v6 <= v7)
  {
    v6 = v7;
  }

  v8 = (1 << -__clz(v6 - 1));
  *(this + 163) = v8;
  std::valarray<float>::resize(this + 632, v8);
  v9 = *(this + 79);
  v10 = *(this + 80) - v9;
  if (v10 >= 1)
  {
    bzero(v9, v10);
  }

  *(this + 162) = 0;
  v11 = (*(*v2 + 600))(v2, 43);
  *v12.i32 = __exp10f(v11 / 10.0);
  v13 = *(this + 79);
  v14 = (*(this + 80) - v13) >> 2;
  v15 = v14 - 1;
  if (v14 >= 1)
  {
    v16 = (v14 + 3) & 0x7FFFFFFFFFFFFFFCLL;
    v17 = vdupq_n_s64(v15);
    v18 = (v13 + 8);
    v19 = 1;
    do
    {
      v20 = vdupq_n_s64(v19 - 1);
      v21 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v20, xmmword_1DE095160)));
      if (vuzp1_s16(v21, v12).u8[0])
      {
        *(v18 - 2) = v12.i32[0];
      }

      if (vuzp1_s16(v21, v12).i8[2])
      {
        *(v18 - 1) = v12.i32[0];
      }

      if (vuzp1_s16(v12, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v20, xmmword_1DE095150)))).i32[1])
      {
        *v18 = v12.i32[0];
        v18[1] = v12.i32[0];
      }

      v19 += 4;
      v18 += 4;
      v16 -= 4;
    }

    while (v16);
  }

  *(this + 162) = 0;
}

void AGCKernelV2::Process(AGCKernelV2 *this, const float *a2, float *a3, char *a4, BOOL *a5)
{
  v5 = a4;
  v6 = a3;
  v239 = *MEMORY[0x1E69E9840];
  v9 = *(this + 1);
  v10 = *(v9 + 148);
  if (v10 != *(this + 8))
  {
    if (*(v9 + 596) == 1)
    {
      (*(*this + 16))(this, a2, a3, a4, a5);
      *(v9 + 596) = 0;
    }

    AGCKernelV2::RefreshCoeffs(this);
    *(this + 8) = v10;
  }

  Element = ausdk::AUScope::GetElement((v9 + 16), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v12 = *(Element + 80);
  v13 = (*(*v9 + 600))(v9, 62);
  v228 = __exp10f(v13 / 20.0);
  v14 = v5;
  MEMORY[0x1E12BE940](a2, 1, &v228, *(this + 91), 1, v5);
  __C = 0.0;
  vDSP_svesq(*(this + 91), 1, &__C, v5);
  v225 = v5;
  v15 = __C / v5;
  __C = v15;
  v226 = 0.0;
  if (*(this + 57) == 1)
  {
    *buf = 1;
    *&buf[8] = 1;
    v237 = 4 * v5;
    v238 = *(this + 91);
    LODWORD(v232) = 1;
    v233 = 1;
    v234 = 4 * v5;
    v235 = *(this + 90);
    (*(**(this + 3) + 32))(*(this + 3), v5, buf, &v232);
    vDSP_svesq(*(this + 90), 1, &v226, v5);
    v15 = v226 / v225;
  }

  v226 = v15;
  if (v15 <= 1.0e-12)
  {
    v19 = *(this + 162);
    v17 = *(this + 79);
    v18 = *(this + 163) - 1;
  }

  else
  {
    v16 = *(this + 162);
    v17 = *(this + 79);
    *(v17 + 4 * v16) = v15;
    v18 = *(this + 163) - 1;
    v19 = v18 & (v16 + 1);
    *(this + 162) = v19;
  }

  v20 = *(this + 153);
  v21 = v18 & (v19 - 1);
  v22 = *(v17 + 4 * v21);
  if (v20 >= 2)
  {
    v23 = v20 - 1;
    do
    {
      v21 = (v21 - 1) & v18;
      if (*(v17 + 4 * v21) < v22)
      {
        v22 = *(v17 + 4 * v21);
      }

      --v23;
    }

    while (v23);
  }

  v24 = log10f(v22 + 1.0e-12);
  v25 = *(this + 152);
  if (v25)
  {
    v26 = 0.0;
    v27 = *(this + 152);
    do
    {
      v19 = (v19 - 1) & v18;
      v26 = v26 + *(*(this + 79) + 4 * v19);
      --v27;
    }

    while (v27);
  }

  else
  {
    v26 = 0.0;
  }

  v28 = log10f((v26 / v25) + 1.0e-12);
  v29 = (*(*v9 + 600))(v9, 32) == 0;
  v30 = (*(*v9 + 600))(v9, 34);
  v223 = v24 * 10.0;
  v224 = v28 * 10.0;
  if (v29)
  {
    v221 = 0;
    if ((v28 * 10.0) > v30)
    {
      v32 = (*(*v9 + 600))(v9, 35);
      if (v32 > (*(*v9 + 600))(v9, 36))
      {
        v221 = 1;
      }
    }

    v31 = (*(*v9 + 600))(v9, 44);
  }

  else
  {
    v221 = (v28 * 10.0) > v30 && v224 > (v223 + (*(*v9 + 600))(v9, 39));
    (*(*v9 + 600))(v9, 44);
  }

  if (v31 == 0.0)
  {
    v42 = 0;
  }

  else
  {
    if (v224 <= (v223 + (*(*v9 + 600))(v9, 39)))
    {
      v33 = 0.0;
    }

    else
    {
      v33 = 1.0;
    }

    v34 = *(this + 91);
    ++*(this + 20);
    v217 = v5;
    v219 = v9;
    v216 = v5;
    if (*(this + 128) == 1)
    {
      *buf = v34;
      v232 = *(this + 13);
      ExpectedNumberOfOutputFrames = CA::AudioSampleRateConverter::GetExpectedNumberOfOutputFrames(*(this + 15));
      if (ExpectedNumberOfOutputFrames <= *(this + 42))
      {
        RequiredNumberOfInputFrames = v5;
      }

      else
      {
        v36 = _os_log_pack_size();
        message = caulk::deferred_logger::create_message(*(this + 74), v36 + 88, 16);
        if (message)
        {
          v38 = message;
          v39 = _os_log_pack_fill();
          v40 = *(this + 42);
          *v39 = 67109632;
          *(v39 + 4) = ExpectedNumberOfOutputFrames;
          *(v39 + 8) = 1024;
          *(v39 + 10) = v5;
          *(v39 + 14) = 1024;
          *(v39 + 16) = v40;
          caulk::concurrent::messenger::enqueue(*(*(this + 74) + 16), v38);
        }

        ExpectedNumberOfOutputFrames = *(this + 42);
        RequiredNumberOfInputFrames = AudioSampleRateConverterGetRequiredNumberOfInputFrames();
      }

      v48 = CA::AudioSampleRateConverter::Process(*(this + 15), buf, RequiredNumberOfInputFrames, &v232, ExpectedNumberOfOutputFrames);
      if (v48)
      {
        v49 = v48;
        v50 = _os_log_pack_size();
        v51 = caulk::deferred_logger::create_message(*(this + 74), v50 + 88, 16);
        if (v51)
        {
          v52 = v51;
          v53 = _os_log_pack_fill();
          *v53 = 67109120;
          v53[1] = v49;
          caulk::concurrent::messenger::enqueue(*(*(this + 74) + 16), v52);
        }
      }

      v34 = *(this + 13);
    }

    else if (*(this + 42) >= v5)
    {
      LODWORD(ExpectedNumberOfOutputFrames) = v5;
    }

    else
    {
      v43 = _os_log_pack_size();
      v44 = caulk::deferred_logger::create_message(*(this + 74), v43 + 88, 16);
      if (v44)
      {
        v45 = v44;
        v46 = _os_log_pack_fill();
        v47 = *(this + 42);
        *v46 = 67109376;
        *(v46 + 4) = v5;
        *(v46 + 8) = 1024;
        *(v46 + 10) = v47;
        caulk::concurrent::messenger::enqueue(*(*(this + 74) + 16), v45);
      }

      LODWORD(ExpectedNumberOfOutputFrames) = *(this + 42);
    }

    memmove(*(this + 11), (*(this + 11) + 4 * ExpectedNumberOfOutputFrames), 4 * (*(this + 36) - ExpectedNumberOfOutputFrames));
    v54 = *(this + 11);
    v55 = *(this + 36);
    v56 = v54 + 4 * (v55 - *(this + 34));
    v57 = (v54 + 4 * (v55 - ExpectedNumberOfOutputFrames));
    memcpy(v57, v34, 4 * ExpectedNumberOfOutputFrames);
    MEMORY[0x1E12BE7F0](v56, 1, *(this + 14), 1, *(this + 13), 1, *(this + 34));
    v58 = *(this + 35);
    v59 = *(this + 13);
    v60 = *(this + 34);
    if (v58)
    {
      v61 = *(this + 34);
      v62 = *(this + 35);
      do
      {
        v59[v61++] = 0.0;
        --v62;
      }

      while (v62);
    }

    v63 = (this + 172);
    vDSP_conv(v59, 1, v59, 1, this + 43, 1, (v58 + 1), v60);
    v215 = ExpectedNumberOfOutputFrames;
    if (*(this + 43) >= 1.0e-15)
    {
      v64 = *v63;
    }

    else
    {
      v64 = 1.0e-15;
    }

    v65 = -*(this + 44) / v64;
    v5 = this + 256;
    *(this + 64) = 1065353216;
    *(this + 65) = v65;
    v66 = *(this + 35);
    v214 = (v66 + 1);
    if (v214 >= 3)
    {
      v67 = 0;
      v68 = (v66 - 1);
      v69 = 2;
      v70 = 1;
      do
      {
        v71 = v63[v69];
        v72 = (this + 176);
        v73 = v70;
        do
        {
          v74 = *v72++;
          v71 = v71 + (*&v5[4 * v73--] * v74);
        }

        while (v73);
        v64 = (1.0 - (v65 * v65)) * v64;
        v75 = (this + 344);
        v76 = v70;
        v65 = -v71 / v64;
        do
        {
          *v75 = *(v75 - 21) + (v65 * *&v5[4 * v76]);
          ++v75;
          --v76;
        }

        while (v76);
        memmove(this + 260, this + 344, 4 * v67 + 4);
        *&v5[4 * v69++] = v65;
        ++v67;
        ++v70;
      }

      while (v67 != v68);
    }

    *buf = v64;
    v14 = v217;
    v9 = v219;
    if (v214 >= 2)
    {
      v77 = v214 - 1;
      v78 = (this + 260);
      do
      {
        *v78 = v78[42] * *v78;
        ++v78;
        --v77;
      }

      while (v77);
    }

    memmove(*(this + 12), (*(this + 12) + 4 * v215), 4 * (*(this + 38) - v215));
    vDSP_conv(v57 - *(this + 35), 1, &v5[4 * *(this + 35)], -1, (*(this + 12) + 4 * (*(this + 38) - v215)), 1, v215, (*(this + 35) + 1));
    LODWORD(v5) = v216;
    v79 = *(this + 12);
    v80 = *(this + 38);
    if (*(this + 564) == 1)
    {
      v81 = (v79 + 4 * (v80 - v215));
      v82 = *(this + 146);
      v83 = *(this + 144);
      if (v83)
      {
        if (v215)
        {
          v84 = *(this + 142);
          v85 = *(this + 143);
          v86 = *(this + 145);
          v87 = v215;
          do
          {
            v86 = (v85 + v86 * v84) % v83;
            *v81 = *v81 + (v82 * (((2.0 / v83) * v86) + -1.0));
            ++v81;
            --v87;
          }

          while (v87);
          *(this + 145) = v86;
        }
      }

      else if (v215)
      {
        v88 = *(this + 142);
        v89 = *(this + 143);
        v90 = v215;
        v91 = *(this + 145);
        do
        {
          v91 = v89 + v91 * v88;
          *v81 = *v81 + (v82 * ((v91 * 4.6566e-10) + -1.0));
          ++v81;
          --v90;
        }

        while (v90);
        *(this + 145) = v91;
      }
    }

    v92 = (sqrtf(v33) * -1.5) + 1.0;
    if (v92 >= 0.02)
    {
      v93 = v92;
    }

    else
    {
      v93 = 0.02;
    }

    v231 = 0.0;
    LODWORD(v232) = 0;
    vDSP_svesq((v79 + 4 * (v80 - 1)), -1, buf, *(this + 127));
    vDSP_svesq((*(this + 12) + 4 * (*(this + 38) + ~*(this + 133))), -1, &v232, *(this + 127));
    v94 = *(this + 133);
    v95 = -1.0;
    if (*(this + 134) + 1 != v94)
    {
      v96 = 0;
      v97 = *(this + 12);
      v98 = *(this + 38);
      v99 = -1;
      v100 = *(this + 127);
      do
      {
        vDSP_dotpr((v97 + 4 * (v98 - 1)), -1, (v97 + 4 * (v99 + v98 - v94)), -1, &v231, v100);
        v101 = v231 / sqrtf((*buf * *&v232) + 1.0e-12);
        v231 = v101;
        if (v101 > v95)
        {
          v95 = v101;
        }

        v97 = *(this + 12);
        v98 = *(this + 38);
        v102 = *(v97 + 4 * (v99 + v98 - v94));
        *&v232 = *&v232 - (v102 * v102);
        v100 = *(this + 127);
        v103 = *(v97 + 4 * (v99 + v98 - v94 - v100));
        *&v232 = *&v232 + (v103 * v103);
        ++v96;
        v94 = *(this + 133);
        --v99;
      }

      while (v96 < *(this + 134) - v94 + 1);
    }

    v104 = (v95 * *(this + 128)) + ((1.0 - *(this + 128)) * *(this + 129));
    *(this + 129) = v104;
    v105 = (v95 * (v93 * *(this + 130))) + ((1.0 - (*(this + 130) * v93)) * *(this + 131));
    *(this + 131) = v105;
    *&v106 = 0.2;
    if (v105 < 0.2 || (*&v106 = 0.4, v105 > 0.4))
    {
      *(this + 131) = *&v106;
      v105 = *&v106;
    }

    v107 = *(this + 132);
    v229 = 0.0;
    v230 = 0.0;
    vDSP_svemg((*(this + 12) + 4 * (*(this + 38) - 1)), -1, &v230, *(this + 135));
    vDSP_svesq((*(this + 12) + 4 * (*(this + 38) - 1)), -1, &v229, *(this + 135));
    v108 = sqrtf(v229);
    v109 = *(this + 20) * v215;
    v110 = *(this + 135);
    v111 = sqrtf(v109);
    v112 = sqrtf(v110);
    if (v109 >= v110)
    {
      v111 = v112;
    }

    v113 = (v111 - (v230 / (v108 + 1.0e-12))) / (v111 + -1.0);
    v114 = (*(this + 136) * v113) + ((1.0 - *(this + 136)) * *(this + 137));
    *(this + 137) = v114;
    v115 = (v113 * (v93 * *(this + 138))) + ((1.0 - (*(this + 138) * v93)) * *(this + 139));
    *(this + 139) = v115;
    *&v116 = 0.2;
    if (v115 < 0.2 || (*&v116 = 0.3, v115 > 0.3))
    {
      *(this + 139) = *&v116;
      v115 = *&v116;
    }

    v117 = v115 + *(this + 140);
    if (v104 <= (v105 + v107))
    {
      v118 = 2;
    }

    else
    {
      v118 = 3;
    }

    if (v114 <= v117)
    {
      v42 = v104 > (v105 + v107);
    }

    else
    {
      v42 = v118;
    }
  }

  (*(*v9 + 152))(v9, 45, 0, 0, 0, v42);
  v119 = *(this + 129);
  v120 = *(this + 131);
  (*(*v9 + 152))(v9, 61, 0, 0, 0, *(this + 137) - *(this + 139));
  (*(*v9 + 152))(v9, 60, 0, 0, 0, v119 - v120);
  (*(*v9 + 600))(v9, 41);
  v121 = v12;
  v122 = *v9;
  v220 = v225 / v121;
  if (v123 == 0.0)
  {
    v135 = (*(v122 + 600))(v9, 44);
    if (v135 <= 1)
    {
      if (!v135)
      {
        if (!v221)
        {
          goto LABEL_132;
        }

LABEL_127:
        *(this + 156) = *(this + 155);
LABEL_131:
        v138 = 1;
        goto LABEL_133;
      }

      v136 = v221;
      if (v135 != 1)
      {
        goto LABEL_128;
      }

      v42 &= 1u;
      if (!v221)
      {
        goto LABEL_132;
      }
    }

    else
    {
      if (v135 == 2)
      {
        v42 &= 2u;
        v136 = v221;
LABEL_121:
        if (!v136)
        {
          goto LABEL_132;
        }

        goto LABEL_122;
      }

      v136 = v221;
      if (v135 != 3)
      {
        if (v135 != 4)
        {
LABEL_128:
          if (v136)
          {
LABEL_129:
            v137 = *(this + 156);
            if (v137)
            {
              *(this + 156) = v137 - 1;
              (*(*v9 + 152))(v9, 45, 0, 0, 0, 0.5);
              goto LABEL_131;
            }

            v138 = 0;
LABEL_133:
            v139 = (*(*v9 + 600))(v9, 17);
            v140 = *(*v9 + 600);
            if (v139 == 0.0)
            {
              v145 = v140(v9, 8);
            }

            else
            {
              v141 = v140(v9, 18);
              v142 = (*(*v9 + 600))(v9, 20);
              v143 = (*(*v9 + 600))(v9, 8);
              v144 = (*(*v9 + 600))(v9, 9);
              v145 = *(this + 13);
              if (v141 > v142 || v145 < v143)
              {
                v146 = *(this + 13);
                v147 = (*(*v9 + 600))(v9, 21);
                v148 = (*(*v9 + 600))(v9, 22);
                v149 = (*(*v9 + 600))(v9, 23);
                v150 = v143 - (v147 * (v141 - v142));
                v151 = v220 * v149;
                if (v146 <= v150)
                {
                  v145 = v146;
                  v153 = v150 + (-v147 * v148);
                  if (v146 < v153)
                  {
                    v154 = v151 + *(this + 13);
                    v145 = v153 <= v154 ? v153 : v154;
                    if (v145 > v143)
                    {
                      v145 = v143;
                    }
                  }
                }

                else
                {
                  v152 = *(this + 13) - v151;
                  if (v150 >= v152)
                  {
                    v145 = v143 - (v147 * (v141 - v142));
                  }

                  else
                  {
                    v145 = v152;
                  }

                  if (v145 < v144)
                  {
                    v145 = v144;
                  }
                }

                *(this + 13) = v145;
              }
            }

            v155 = *(this + 15);
            v218 = v145;
            if (v138)
            {
              v156 = *(this + 16);
              v157 = *(this + 11);
              if (v224 > (v157 + (*(*v9 + 600))(v9, 12)))
              {
                v158 = (*(*v9 + 600))(v9, 2);
                v159 = flt_1DE09B8F0[v158 == 2];
                if (v158 == 1)
                {
                  v159 = 0.5;
                }

                v155 = v155 * v159;
                v156 = v156 * 0.0001;
              }

              AGCRecursiveDetector::InsertElement((this + 656), v226, v155);
              v160 = *(this + 167);
              v161 = *(this + 9);
              v162 = *(this + 165);
              v163 = *(this + 1);
              if (*(this + 17) < v162)
              {
                v164 = (*(*v163 + 600))(*(this + 1), 43);
                v165 = v160 + v161;
                v166 = (*(*v163 + 600))(v163, 5) * 0.5;
                v167 = v164 + v166;
                if ((v160 + v161) <= (v164 + v166))
                {
                  v167 = v164 - v166;
                  if (v165 >= (v164 - v166))
                  {
                    v222 = v161;
                    goto LABEL_182;
                  }

                  v169 = 6;
                  v168 = v220;
                }

                else
                {
                  v168 = -v220;
                  v169 = 7;
                }

                v173 = v168 * (*(*v163 + 600))(v163, v169);
                v174 = *(this + 18);
                if (v174 > v162)
                {
                  v173 = v173 * ((v162 - *(this + 17)) / (v174 - *(this + 17)));
                }

                if (fabsf(v167 - v165) < fabsf(v173))
                {
                  v173 = v167 - v165;
                }

                v161 = v161 + v173;
              }

              v222 = v218;
              if (v161 <= v218)
              {
                v222 = v161;
                if (v161 < (*(*v163 + 600))(v163, 9))
                {
                  v222 = (*(*v163 + 600))(v163, 9);
                }
              }

LABEL_182:
              *(this + 11) = v160;
              if ((*(*v9 + 600))(v9, 13) == 0.0)
              {
                v170 = 0.0;
              }

              else
              {
                v175 = __exp10f(v222 / 10.0);
                AGCRecursiveDetector::InsertElement((this + 676), v175 * v226, v156);
                v176 = *(this + 172);
                v177 = *(this + 10);
                v178 = *(this + 1);
                v179 = (*(*v178 + 600))(v178, 43);
                v180 = v220 * (*(*v178 + 600))(v178, 16);
                v170 = v177 + v180;
                if ((v179 - v176) <= (v177 + v180))
                {
                  v181 = v177 - v180;
                  v170 = v179 - v176;
                  if ((v179 - v176) < v181)
                  {
                    v170 = v181;
                  }
                }

                v182 = (*(*v178 + 600))(v178, 5) * 0.4;
                if (v170 > v182 || (v182 = -v182, v170 < v182))
                {
                  v170 = v182;
                }

                v183 = (*(*v178 + 600))(v178, 8);
                v184 = *(*v178 + 600);
                if ((v222 + v170) > v183)
                {
                  v184(v178, 8);
LABEL_194:
                  v170 = v185 - v222;
                  goto LABEL_195;
                }

                if ((v222 + v170) < v184(v178, 9))
                {
                  v185 = (*(*v178 + 600))(v178, 9);
                  goto LABEL_194;
                }
              }

LABEL_195:
              *(this + 154) = 0;
              goto LABEL_208;
            }

            if (v155 > 0.0 && v155 <= 1.0)
            {
              *(this + 82) = vmul_n_f32(*(this + 656), 1.0 - v155);
            }

            v170 = *(this + 10);
            v222 = *(this + 9);
            if (v222 > v145)
            {
              v222 = v145;
LABEL_206:
              v187 = v220;
              goto LABEL_207;
            }

            if ((*(*v9 + 600))(v9, 24) == 0.0)
            {
              goto LABEL_206;
            }

            if ((*(*v9 + 600))(v9, 17) != 0.0)
            {
              v171 = (*(*v9 + 600))(v9, 18);
              if (v171 >= (*(*v9 + 600))(v9, 20))
              {
                goto LABEL_206;
              }
            }

            v172 = *(this + 154);
            if (v172 < (*(*v9 + 600))(v9, 25))
            {
              goto LABEL_206;
            }

            if (v222 <= 0.0)
            {
              if (v222 >= 0.0 || (v222 = v222 + ((*(*v9 + 600))(v9, 26, v222) * v220), v222 <= 0.0))
              {
LABEL_199:
                if ((*(*v9 + 600))(v9, 13) == 0.0)
                {
                  goto LABEL_206;
                }

                if (v170 <= 0.0)
                {
                  if (v170 >= 0.0)
                  {
                    goto LABEL_206;
                  }

                  v189 = (*(*v9 + 600))(v9, 26);
                  v187 = v220;
                  v170 = v170 + (v189 * v220);
                  if (v170 <= 0.0)
                  {
LABEL_207:
                    *(this + 154) = v187 + *(this + 154);
LABEL_208:
                    v190 = (*(*v9 + 600))(v9, 27);
                    v191 = 0.0;
                    v192 = v222 + v170;
                    if ((*(*v9 + 600))(v9, 63) != 0.0)
                    {
                      v193 = __exp10f((v192 + v190) / 10.0);
                      AGCRecursiveDetector::InsertElement((this + 696), v193 * __C, *(this + 19));
                      v194 = *(this + 177);
                      v195 = *(this + 12);
                      v196 = *(this + 1);
                      v197 = (*(*v196 + 600))(v196, 28);
                      v198 = (*(*v196 + 600))(v196, 30);
                      v199 = v220 * (*(*v196 + 600))(v196, 31);
                      if (v197 >= v194)
                      {
                        if (v195 < -v199)
                        {
                          v191 = v195 + v199;
                        }
                      }

                      else
                      {
                        v191 = v195 - (v220 * v198);
                        if ((v197 - v194) >= v191)
                        {
                          v200 = v195 + v199;
                          v191 = v197 - v194;
                          if ((v197 - v194) > v200)
                          {
                            v191 = v200;
                          }
                        }
                      }
                    }

                    v201 = *(this + 91);
                    v202 = ((v190 + *(this + 9)) + *(this + 10)) + *(this + 12);
                    v203.n128_f32[0] = __exp10f(((((v170 + (v222 + v190)) + v191) - v202) / v225) / 20.0);
                    if (v5)
                    {
                      v204 = v203.n128_f32[0];
                      v203.n128_f32[0] = __exp10f(v202 / 20.0);
                      v205 = v6;
                      v206 = v14;
                      do
                      {
                        v203.n128_f32[0] = v204 * v203.n128_f32[0];
                        v207 = *v201++;
                        *v205++ = v203.n128_f32[0] * v207;
                        --v206;
                      }

                      while (v206);
                    }

                    v209 = (*(*v9 + 600))(v9, 40, v203) == 0.0 || v5 == 0;
                    v208.n128_f32[0] = v224;
                    if (v209)
                    {
LABEL_222:
                      *(this + 9) = v222;
                      *(this + 10) = v170;
                      *(this + 12) = v191;
                      (*(*v9 + 152))(v9, 0, 0, 0, 0, v208);
                      (*(*v9 + 152))(v9, 37, 0, 0, 0, v223);
                      (*(*v9 + 152))(v9, 1, 0, 0, 0, v192 + v191);
                      (*(*v9 + 152))(v9, 14, 0, 0, 0, v170);
                      v210 = (*(*v9 + 600))(v9, 8);
                      (*(*v9 + 152))(v9, 19, 0, 0, 0, v218 - v210);
                      return;
                    }

                    while (1)
                    {
                      v211 = *v6;
                      if (fabsf(*v6) > 0.95)
                      {
                        if (v211 > 0.95 && v211 < 5.0)
                        {
                          v213 = ((v211 + -0.95) * 0.0123) + 0.95;
                        }

                        else if (v211 <= -5.0 || v211 >= -0.95)
                        {
                          v213 = 0.9999;
                          if (v211 < 5.0)
                          {
                            v213 = -0.9999;
                            if (v211 > -5.0)
                            {
                              goto LABEL_234;
                            }
                          }
                        }

                        else
                        {
                          v213 = ((v211 + 0.95) * 0.0123) + -0.95;
                        }

                        *v6 = v213;
                      }

LABEL_234:
                      ++v6;
                      if (!--v14)
                      {
                        goto LABEL_222;
                      }
                    }
                  }
                }

                else
                {
                  v186 = (*(*v9 + 600))(v9, 26);
                  v187 = v220;
                  v170 = v170 - (v186 * v220);
                  if (v170 >= 0.0)
                  {
                    goto LABEL_207;
                  }
                }

                v170 = 0.0;
                goto LABEL_207;
              }
            }

            else
            {
              v222 = v222 - ((*(*v9 + 600))(v9, 26, v222) * v220);
              if (v222 >= 0.0)
              {
                goto LABEL_199;
              }
            }

            v222 = 0.0;
            goto LABEL_199;
          }

LABEL_132:
          v138 = 0;
          *(this + 156) = 0;
          goto LABEL_133;
        }

        goto LABEL_121;
      }

      v42 = (v42 > 1) & v42;
      if (!v221)
      {
        goto LABEL_132;
      }
    }

LABEL_122:
    if (!v42)
    {
      goto LABEL_129;
    }

    goto LABEL_127;
  }

  (*(v122 + 152))(v9, 0, 0, 0, 0, v224);
  (*(*v9 + 152))(v9, 37, 0, 0, 0, v223);
  (*(*v9 + 152))(v9, 1, 0, 0, 0, 0.0);
  (*(*v9 + 152))(v9, 14, 0, 0, 0, 0.0);
  (*(*v9 + 152))(v9, 19, 0, 0, 0, 0.0);
  if (v221)
  {
    v124 = 1.0;
    if (v220 > 0.0)
    {
      v124 = 1.0 - powf(0.01, v220 / 20.0);
    }

    AGCRecursiveDetector::InsertElement((this + 676), v226, v124);
    v125 = *(this + 172);
    v126 = (*(*v9 + 600))(v9, 43);
    (*(*v9 + 152))(v9, 42, 0, 0, 0, v125 - v126);
    v127 = *(this + 184) + v5;
    *(this + 184) = v127;
    if ((v121 * 0.2) < v127)
    {
      *(this + 184) = 0;
      v128 = AUAGCV2Log();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
      {
        v188 = (*(*v9 + 600))(v9, 43);
        *buf = 134217984;
        *&buf[4] = (v125 - v188);
        _os_log_debug_impl(&dword_1DDB85000, v128, OS_LOG_TYPE_DEBUG, "AUAGCV2 calibration meter: %2.1f dB", buf, 0xCu);
      }
    }
  }

  v129 = (*(*v9 + 600))(v9, 27);
  v130 = *(this + 91);
  v131 = __exp10f(((v129 - v129) / v225) / 20.0);
  if (v5)
  {
    v132 = v131;
    v133 = __exp10f(v129 / 20.0);
    do
    {
      v133 = v132 * v133;
      v134 = *v130++;
      *v6++ = v133 * v134;
      --v14;
    }

    while (v14);
  }
}

void sub_1DDFA0F7C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AGCKernelV2::RefreshCoeffs(AGCKernelV2 *this)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  Element = ausdk::AUScope::GetElement((v2 + 32), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v4 = *(Element + 80);
  v5 = v2[84];
  v6 = (*(*v2 + 600))(v2, 3) != 0.0;
  if (*(this + 57) != v6)
  {
    (*(**(this + 3) + 24))(*(this + 3));
    *(this + 57) = v6;
  }

  v7 = (*(*v2 + 600))(v2, 41) != 0.0;
  if (*(this + 56) != v7)
  {
    *(this + 56) = v7;
    *(this + 676) = 0;
    *(this + 86) = 0;
  }

  if ((*(*v2 + 600))(v2, 13) == 0.0)
  {
    *(this + 10) = 0;
  }

  v8 = *(this + 13);
  if (v8 > (*(*v2 + 600))(v2, 8) || (*(*v2 + 600))(v2, 17) == 0.0)
  {
    *(this + 13) = (*(*v2 + 600))(v2, 8);
  }

  v9 = (*(*v2 + 600))(v2, 2);
  v10 = *(this + 166);
  if (v10 != v9)
  {
    if (v9 == 1)
    {
      *(this + 164) = log10f(*(this + 164) + 1.0e-12) * 10.0;
    }

    else
    {
      if (v10 == 1)
      {
        *(this + 164) = __exp10f(*(this + 164) / 10.0);
      }

      if (v9 == 2)
      {
        *(this + 168) = 0;
      }
    }
  }

  *(this + 166) = v9;
  if (*(this + 171) == 1)
  {
    *(this + 169) = __exp10f(*(this + 169) / 10.0);
  }

  v11 = v5;
  v12 = v4;
  *(this + 171) = 0;
  if (*(this + 176) == 1)
  {
    *(this + 174) = __exp10f(*(this + 174) / 10.0);
  }

  *(this + 176) = 0;
  (*(*v2 + 600))(v2, 4);
  v14 = v11 / v12;
  v15 = 1.0;
  v16 = 1.0;
  if ((v11 / v12) > 0.0 && v13 > 0.0)
  {
    v16 = 1.0 - powf(0.01, v14 / v13);
  }

  *(this + 15) = v16;
  (*(*v2 + 600))(v2, 15);
  if (v14 > 0.0 && v17 > 0.0)
  {
    v15 = 1.0 - powf(0.01, v14 / v17);
  }

  *(this + 16) = v15;
  (*(*v2 + 600))(v2, 29);
  v19 = 1.0;
  if (v14 > 0.0 && v18 > 0.0)
  {
    v19 = 1.0 - powf(0.01, v14 / v18);
  }

  *(this + 19) = v19;
  v20 = (*(*v2 + 600))(v2, 10);
  *(this + 17) = 1.0 - powf(1.0 - *(this + 15), v20 / v14);
  v21 = (*(*v2 + 600))(v2, 11);
  *(this + 18) = 1.0 - powf(1.0 - *(this + 15), v21 / v14);
  *(this + 152) = vcvtps_u32_f32(((*(*v2 + 600))(v2, 33) * v12) / v11);
  *(this + 153) = ceilf(((*(*v2 + 600))(v2, 38) * v12) / v11);
  *(this + 155) = vcvtps_u32_f32((((*(*v2 + 600))(v2, 46) / 1000.0) * v12) / v11);
  v22 = (*(*v2 + 600))(v2, 47);
  AGCVAD::SetLpcBlockSize((this + 80), v22);
  v23 = (*(*v2 + 600))(v2, 48);
  v24 = v23;
  if (v23 < 0x15)
  {
    v26 = v23;
    if (!v24)
    {
      v27 = AUAGCV2Log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *v47 = 0;
        _os_log_error_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_ERROR, "VAD LPC order is %d", buf, 8u);
      }

      v26 = 1;
    }
  }

  else
  {
    v25 = AUAGCV2Log();
    v26 = 20;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v47 = v24;
      *&v47[4] = 1024;
      *&v47[6] = 20;
      _os_log_error_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_ERROR, "VAD LPC order %d is larger than %d", buf, 0xEu);
    }
  }

  *(this + 35) = v26;
  (*(*v2 + 600))(v2, 49);
  v29 = 0;
  *(this + 106) = 1065353216;
  v30 = 1.0;
  do
  {
    v30 = v28 * v30;
    *(this + v29 + 428) = v30;
    v29 += 4;
  }

  while (v29 != 80);
  v31 = (*(*v2 + 600))(v2, 50);
  AGCVAD::SetAutoCorrBlockSize((this + 80), v31);
  v32 = (*(*v2 + 600))(v2, 51);
  v45 = *&v32;
  v33 = (*(*v2 + 600))(v2, 52);
  if (v45 < 50.0)
  {
    v34 = AUAGCV2Log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v47 = v45;
      *&v47[8] = 2048;
      v48 = 0x4049000000000000;
      _os_log_error_impl(&dword_1DDB85000, v34, OS_LOG_TYPE_ERROR, "VAD min periodicity tracking frequency %f Hz is less than %f", buf, 0x16u);
    }

    v45 = 50.0;
  }

  if (v33 > 500.0)
  {
    v35 = AUAGCV2Log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v47 = v33;
      *&v47[8] = 2048;
      v48 = 0x407F400000000000;
      _os_log_error_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_ERROR, "VAD max periodicity tracking frequency %f Hz is greater than %f", buf, 0x16u);
    }

    v33 = 500.0;
  }

  if (v33 >= v45)
  {
    v36.f32[0] = v33;
  }

  else
  {
    v36.f32[0] = v45;
  }

  v37 = (this + 164);
  v38 = vld1_dup_f32(v37);
  v36.f32[1] = v45;
  *(this + 532) = vcvt_u32_f32(vadd_f32(vdiv_f32(v38, v36), 0x3F0000003F000000));
  v39 = (*(*v2 + 600))(v2, 53);
  *(this + 128) = 1.0 - expf(-1.0 / ((v39 / 1000.0) / (*(this + 40) / *(this + 39))));
  v40 = (*(*v2 + 600))(v2, 54);
  *(this + 130) = 1.0 - expf(-1.0 / (v40 / (*(this + 40) / *(this + 39))));
  *(this + 132) = (*(*v2 + 600))(v2, 55);
  v41 = (*(*v2 + 600))(v2, 56);
  AGCVAD::SetSparsityBlockSize((this + 80), v41);
  v42 = (*(*v2 + 600))(v2, 57);
  *(this + 136) = 1.0 - expf(-1.0 / ((v42 / 1000.0) / (*(this + 40) / *(this + 39))));
  v43 = (*(*v2 + 600))(v2, 58);
  *(this + 138) = 1.0 - expf(-1.0 / (v43 / (*(this + 40) / *(this + 39))));
  *(this + 140) = (*(*v2 + 600))(v2, 59);
  *(this + 564) = (*(*v2 + 600))(v2, 64) > 0.0;
  v44 = (*(*v2 + 600))(v2, 34);
  *(this + 146) = __exp10f(((v44 + -20.0) + 4.8) / 20.0);
}

void AGCRecursiveDetector::InsertElement(AGCRecursiveDetector *this, float a2, float a3)
{
  if (a3 > 0.0 && a3 <= 1.0)
  {
    v5 = 1.0 - a3;
    v7 = *this;
    v6 = *(this + 1);
    v8 = a3 + ((1.0 - a3) * v6);
    *(this + 1) = v8;
    v9 = *(this + 2);
    if (v9 == 1)
    {
      v10 = ((a3 * 10.0) * log10f(a2 + 1.0e-12)) + (v5 * v7);
      *this = v10;
      v11 = v10 / v8;
    }

    else
    {
      v12 = (a2 * a3) + (v5 * v7);
      *this = v12;
      v13 = v12 / v8;
      if (v9 == 2)
      {
        v14 = *(this + 4);
        if (v14 > 1.0e-12)
        {
          v15 = v14 / (((v5 * v6) / v8) + 1.0e-12);
          if (v13 > v15)
          {
            v13 = v15;
          }
        }

        *(this + 4) = v13;
      }

      v11 = log10f(v13 + 1.0e-12) * 10.0;
    }

    *(this + 3) = v11;
  }
}

uint64_t AUAGCV2Log(void)
{
  v0 = &xmmword_1ECDA9000;
  {
    v0 = &xmmword_1ECDA9000;
    if (v2)
    {
      AUAGCV2Log(void)::sLog = os_log_create("com.apple.coreaudio", "AUAGCV2");
      v0 = &xmmword_1ECDA9000;
    }
  }

  return *(v0 + 466);
}

void AGCVAD::SetLpcBlockSize(AGCVAD *this, float a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = 30.0;
  if (a2 <= 30.0)
  {
    v4 = a2;
  }

  else
  {
    v5 = AUAGCV2Log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 0x403E000000000000;
      _os_log_error_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_ERROR, "VAD LPC block size %f ms is larger than %f", &v9, 0x16u);
    }
  }

  v6 = (((v4 / 1000.0) * *(this + 21)) + 0.5);
  if (v6 <= 0)
  {
    v7 = AUAGCV2Log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 67109120;
      LODWORD(v10) = v6;
      _os_log_error_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, "VAD LPC block size is %d", &v9, 8u);
    }

    v6 = 1;
  }

  if (v6 != *(this + 14))
  {
    *(this + 14) = v6;
    vDSP_hamm_window(*(this + 4), v6, 0);
    v8 = *(this + 14);
    if (v8 <= *(this + 22) + 20)
    {
      v8 = *(this + 22) + 20;
    }

    *(this + 16) = v8;
    AGCVAD::Clear(this);
  }
}

void AGCVAD::SetAutoCorrBlockSize(AGCVAD *this, float a2)
{
  v2 = a2;
  v11 = *MEMORY[0x1E69E9840];
  if (a2 > 50.0)
  {
    v4 = AUAGCV2Log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 134218240;
      v8 = v2;
      v9 = 2048;
      v10 = 0x4049000000000000;
      _os_log_error_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_ERROR, "VAD autocorrelation length %f ms is larger than %f", &v7, 0x16u);
    }

    v2 = 50.0;
  }

  v5 = (((v2 / 1000.0) * *(this + 21)) + 0.5);
  if (v5 <= 0)
  {
    v6 = AUAGCV2Log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 67109120;
      LODWORD(v8) = v5;
      _os_log_error_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, "VAD autocorrelation block size is %d", &v7, 8u);
    }

    v5 = 1;
  }

  *(this + 107) = v5;
}

void AGCVAD::SetSparsityBlockSize(AGCVAD *this, float a2)
{
  v2 = a2;
  v11 = *MEMORY[0x1E69E9840];
  if (a2 > 50.0)
  {
    v4 = AUAGCV2Log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 134218240;
      v8 = v2;
      v9 = 2048;
      v10 = 0x4049000000000000;
      _os_log_error_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_ERROR, "VAD sparsity length %f ms is larger than %f", &v7, 0x16u);
    }

    v2 = 50.0;
  }

  v5 = (((v2 / 1000.0) * *(this + 21)) + 0.5);
  if (v5 <= 0)
  {
    v6 = AUAGCV2Log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 67109120;
      LODWORD(v8) = v5;
      _os_log_error_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, "VAD sparsity block size is %d", &v7, 8u);
    }

    v5 = 1;
  }

  *(this + 115) = v5;
}

void AGCVAD::Clear(void **this)
{
  *this = 0;
  v2 = *(this + 17);
  if (v2)
  {
    bzero(this[1], 4 * v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    bzero(this[2], 4 * v3);
  }

  *(this + 109) = 0;
  *(this + 111) = 1045220557;
  *(this + 117) = 0;
  *(this + 119) = 1045220557;
}

void AGCKernelV2::Reset(AGCKernelV2 *this)
{
  v2 = *(this + 1);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 11) = (*(*v2 + 600))(v2, 43);
  *(this + 13) = (*(*v2 + 600))(v2, 8);
  *(this + 154) = 0;
  *(this + 56) = 0;
  *(this + 156) = 0;
  (*(*this + 40))(this);
  (*(**(this + 3) + 24))(*(this + 3));

  AGCKernelV2::RefreshCoeffs(this);
}

void AGCKernelV2::~AGCKernelV2(AGCKernelV2 *this)
{
  AGCKernelV2::~AGCKernelV2(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5931620;
  v2 = *(this + 90);
  if (v2)
  {
    MEMORY[0x1E12BD130](v2, 0x1000C8052888210);
  }

  *(this + 90) = 0;
  v3 = *(this + 91);
  if (v3)
  {
    MEMORY[0x1E12BD130](v3, 0x1000C8052888210);
  }

  *(this + 91) = 0;
  v4 = *(this + 79);
  if (v4)
  {
    v5 = *(this + 80);
    if (v5 != v4)
    {
      *(this + 80) = &v5[(v4 - v5 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v4);
    *(this + 79) = 0;
    *(this + 80) = 0;
  }

  AGCVAD::~AGCVAD((this + 80));
  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }
}

void AGCVAD::~AGCVAD(AGCVAD *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x1E12BD130](v2, 0x1000C8052888210);
  }

  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x1E12BD130](v3, 0x1000C8052888210);
  }

  v4 = *(this + 2);
  if (v4)
  {
    MEMORY[0x1E12BD130](v4, 0x1000C8052888210);
  }

  v5 = *(this + 4);
  if (v5)
  {
    MEMORY[0x1E12BD130](v5, 0x1000C8052888210);
  }

  v6 = *(this + 65);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(this + 48) == 1)
  {
    AudioSampleRateConverterDispose();
  }
}

float AUAGCV2::GetParameter(AUAGCV2 *this, unsigned int a2)
{
  if (a2 == 27 || a2 == 1) && (*(this + 552))
  {
    return 0.0;
  }

  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v5 & 1) == 0)
  {
    abort();
  }

  return ausdk::AUElement::GetParameter(v4, a2);
}

void sub_1DDFA2C5C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_destruct_base<CA::AudioSampleRateConverter,false>::reset[abi:ne200100](uint64_t result)
{
  if (*(result + 8) == 1)
  {
    v1 = result;
    result = AudioSampleRateConverterDispose();
    *(v1 + 8) = 0;
  }

  return result;
}

BOOL AUAGCV2::ValidFormat(AUAGCV2 *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  if (ausdk::ASBD::IsCommonFloat32(a4, a2))
  {
    v5 = (a4->mFormatFlags & 0x20) != 0 || a4->mChannelsPerFrame == 1;
  }

  else
  {
    v5 = 0;
  }

  return a4->mChannelsPerFrame == 1 && v5;
}

uint64_t AUAGCV2::SupportedNumChannels(AUAGCV2 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUAGCV2::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUAGCV2::GetParameterValueStrings(AUAGCV2 *this, int a2, int a3, const __CFArray **a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    return 4294956417;
  }

  if (!a4)
  {
    return 0;
  }

  switch(a3)
  {
    case 44:
      v8 = xmmword_1E866FB98;
      v9 = *off_1E866FBA8;
      v10 = @"Either";
      v6 = 5;
      break;
    case 32:
      v8 = xmmword_1E866FB88;
      v6 = 2;
      break;
    case 2:
      v8 = xmmword_1E866FB70;
      *&v9 = @"Modified RMS";
      v6 = 3;
      break;
    default:
      return 4294956417;
  }

  v7 = CFArrayCreate(0, &v8, v6, 0);
  result = 0;
  *a4 = v7;
  return result;
}

uint64_t AUAGCV2::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 148);
  }

  return result;
}

uint64_t AUAGCV2::GetParameterInfo(AUAGCV2 *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  switch(a3)
  {
    case 0:
      buffer->cfNameString = @"Input level";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Input level", buffer->name, 52, 0x8000100u);
      v6 = 1;
      goto LABEL_8;
    case 1:
      buffer->cfNameString = @"Total gain";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Total gain", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 1;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v30 = 524288.379;
      goto LABEL_74;
    case 2:
      buffer->cfNameString = @"Averaging method";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Averaging method", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 1;
      v26 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      *&buffer->minValue = 0x4000000000000000;
      v27 = 2.0;
      goto LABEL_85;
    case 3:
      buffer->cfNameString = @"A weighting";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"A weighting", buffer->name, 52, 0x8000100u);
      v28 = 1;
      goto LABEL_37;
    case 4:
      buffer->cfNameString = @"Exp. window length (99%)";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Exp. window length (99%)", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 1;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      *&buffer->minValue = 0x412000003C23D70ALL;
      v9 = 0.8;
      goto LABEL_82;
    case 5:
      buffer->cfNameString = @"Dead zone width";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Dead zone width", buffer->name, 52, 0x8000100u);
      v34 = 1;
      goto LABEL_67;
    case 6:
      buffer->cfNameString = @"Gain increase slew rate/sec";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Gain increase slew rate/sec", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 1;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v35 = 0x42C8000000000000;
      goto LABEL_68;
    case 7:
      buffer->cfNameString = @"Gain decrease slew rate/sec";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Gain decrease slew rate/sec", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 1;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x42C8000000000000;
      v9 = 40.0;
      goto LABEL_82;
    case 8:
      buffer->cfNameString = @"Max gain";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Max gain", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 1;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v21 = 0x41A00000C2200000;
      goto LABEL_59;
    case 9:
      buffer->cfNameString = @"Min gain";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Min gain", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 1;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x41A00000C2200000;
      v9 = -35.0;
      goto LABEL_82;
    case 10:
      buffer->cfNameString = @"Min data for gain change";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Min data for gain change", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 1;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      *&buffer->minValue = 0x40A0000000000000;
      v9 = 0.06;
      goto LABEL_82;
    case 11:
      buffer->cfNameString = @"Optimum data for gain change";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Optimum data for gain change", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 1;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      *&buffer->minValue = 0x40A0000000000000;
      v9 = 0.25;
      goto LABEL_82;
    case 12:
      buffer->cfNameString = @"Peak thd (relative)";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Peak thd (relative)", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 1;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v12 = 0x42C8000000000000;
      goto LABEL_29;
    case 13:
      buffer->cfNameString = @"Dead zone centering";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Dead zone centering", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 2;
      v26 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Boolean;
      *&buffer->minValue = 0x3F80000000000000;
      v27 = 1.0;
      goto LABEL_85;
    case 14:
      buffer->cfNameString = @"Centering gain";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Centering gain", buffer->name, 52, 0x8000100u);
      v22 = 2;
      goto LABEL_73;
    case 15:
      buffer->cfNameString = @"Centering exp. window length (99%)";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Centering exp. window length (99%)", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 2;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      *&buffer->minValue = 0x41A000003F800000;
      v9 = 12.0;
      goto LABEL_82;
    case 16:
      buffer->cfNameString = @"Centering slew rate/sec";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Centering slew rate/sec", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 2;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v20 = 0x4120000000000000;
      goto LABEL_63;
    case 17:
      buffer->cfNameString = @"Noise SPL based gain limiting";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Noise SPL based gain limiting", buffer->name, 52, 0x8000100u);
      v32 = 3;
      goto LABEL_43;
    case 18:
      buffer->cfNameString = @"Noise SPL estimate (from NS)";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Noise SPL estimate (from NS)", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v13 = 0x42F0000000000000;
      goto LABEL_56;
    case 19:
      buffer->cfNameString = @"Gain limit relative to max";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Gain limit relative to max", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&v30 = 3248488448;
      goto LABEL_74;
    case 20:
      buffer->cfNameString = @"Gain limiting thd SPL";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Gain limiting thd SPL", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v31 = 0x42C8000042200000;
      goto LABEL_45;
    case 21:
      buffer->cfNameString = @"Gain limiting slope";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Gain limiting slope", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      v9 = 0.5;
      goto LABEL_82;
    case 22:
      buffer->cfNameString = @"Gain limiting hysteresis";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Gain limiting hysteresis", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x41A0000000000000;
      v9 = 6.0;
      goto LABEL_82;
    case 23:
      buffer->cfNameString = @"Gain limiting slew rate/sec";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Gain limiting slew rate/sec", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 3;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x4120000000000000;
      v9 = 2.0;
      goto LABEL_82;
    case 24:
      buffer->cfNameString = @"Gain leak during silence";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Gain leak during silence", buffer->name, 52, 0x8000100u);
      v28 = 4;
      goto LABEL_37;
    case 25:
      buffer->cfNameString = @"Gain leak pre delay";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Gain leak pre delay", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 4;
      v26 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      *&buffer->minValue = 0x41A0000000000000;
      v27 = 4.0;
      goto LABEL_85;
    case 26:
      buffer->cfNameString = @"Gain leak slew rate/sec";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Gain leak slew rate/sec", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 4;
      v26 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      *&buffer->minValue = 0x4120000000000000;
      v27 = 0.5;
LABEL_85:
      buffer->defaultValue = v27;
      v37 = v26 | 0xC0100000;
      goto LABEL_95;
    case 27:
      buffer->cfNameString = @"Post gain (between AGC & limiter)";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Post gain (between AGC & limiter)", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 5;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      __asm { FMOV            V0.2S, #-20.0 }

      v19 = -_D0;
      goto LABEL_51;
    case 28:
      buffer->cfNameString = @"Limiter thd";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Limiter thd", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 6;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 3253731328;
      v9 = -12.0;
      goto LABEL_82;
    case 29:
      buffer->cfNameString = @"Limiter exp. window length (99%)";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Limiter exp. window length (99%)", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 6;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      *&buffer->minValue = 0x3F8000003C23D70ALL;
      v9 = 0.03;
      goto LABEL_82;
    case 30:
      buffer->cfNameString = @"Limiter attack slew rate/sec";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Limiter attack slew rate/sec", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 6;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x43C8000042480000;
      v9 = 300.0;
      goto LABEL_82;
    case 31:
      buffer->cfNameString = @"Limiter release slew rate/sec";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Limiter release slew rate/sec", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 6;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v31 = 0x43C8000042480000;
LABEL_45:
      *&buffer->minValue = v31;
      v9 = 60.0;
      goto LABEL_82;
    case 32:
      buffer->cfNameString = @"Level-based VAD";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Level-based VAD", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      v29 = kAudioUnitParameterUnit_Indexed;
      goto LABEL_62;
    case 33:
      buffer->cfNameString = @"VAD window length (rectangular)";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"VAD window length (rectangular)", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      *&buffer->minValue = 0x3F8000003C23D70ALL;
      v9 = 0.125;
      goto LABEL_82;
    case 34:
      buffer->cfNameString = @"Absolute silence thd";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Absolute silence thd", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 3267887104;
      v9 = -48.0;
      goto LABEL_82;
    case 35:
      buffer->cfNameString = @"Ext. speech prob estimate (from NS)";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Ext. speech prob estimate (from NS)", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v13 = 0x3F80000000000000;
LABEL_56:
      *&buffer->minValue = v13;
      buffer->defaultValue = 0.0;
      goto LABEL_76;
    case 36:
      buffer->cfNameString = @"Ext. speech prob thd";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Ext. speech prob thd", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      v9 = 0.4;
      goto LABEL_82;
    case 37:
      buffer->cfNameString = @"Minimum tracking level";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Minimum tracking level", buffer->name, 52, 0x8000100u);
      v6 = 7;
LABEL_8:
      buffer->clumpID = v6;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0x41A00000C2C80000;
      buffer->defaultValue = -100.0;
      goto LABEL_75;
    case 38:
      buffer->cfNameString = @"Minimum tracking length";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Minimum tracking length", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      *&buffer->minValue = 0x40C000003C23D70ALL;
      v9 = 4.0;
      goto LABEL_82;
    case 39:
      buffer->cfNameString = @"Minimum tracking VAD thd";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Minimum tracking VAD thd", buffer->name, 52, 0x8000100u);
      v34 = 7;
LABEL_67:
      buffer->clumpID = v34;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v35 = 0x41A0000000000000;
LABEL_68:
      *&buffer->minValue = v35;
      v9 = 10.0;
      goto LABEL_82;
    case 40:
      buffer->cfNameString = @"Soft clipping";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Soft clipping", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 5;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Boolean;
      *&buffer->minValue = 0x3F80000000000000;
      buffer->defaultValue = 0.0;
      goto LABEL_93;
    case 41:
      buffer->cfNameString = @"Calibration mode (turns AGC off)";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Calibration mode (turns AGC off)", buffer->name, 52, 0x8000100u);
      v32 = 8;
LABEL_43:
      buffer->clumpID = v32;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Boolean;
      v19 = 0.0078125;
      goto LABEL_51;
    case 42:
      buffer->cfNameString = @"Calibration";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Calibration", buffer->name, 52, 0x8000100u);
      v22 = 8;
LABEL_73:
      buffer->clumpID = v22;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      __asm { FMOV            V0.2S, #-10.0 }

      v30 = -_D0;
      goto LABEL_74;
    case 43:
      buffer->cfNameString = @"Calibration/AGC target level";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Calibration/AGC target level", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 5;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      *&buffer->minValue = 0xC1200000C2480000;
      v9 = -30.0;
      goto LABEL_82;
    case 44:
      buffer->cfNameString = @"Non-level-based VAD";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Non-level-based VAD", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      v21 = 0x4080000000000000;
LABEL_59:
      *&buffer->minValue = v21;
      v9 = 3.0;
      goto LABEL_82;
    case 45:
      buffer->cfNameString = @"VAD state: 1=periodicity; 2=sparsity; 3=both";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"VAD state: 1=periodicity; 2=sparsity; 3=both", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      flags = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v30 = 32.0;
LABEL_74:
      *&buffer->minValue = v30;
      buffer->defaultValue = 0.0;
LABEL_75:
      v7 = flags & 0x7FFFFFFF;
LABEL_76:
      v33 = 1074823168;
      break;
    case 46:
      buffer->cfNameString = @"Release time";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Release time", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      *&buffer->minValue = 0x43FA000000000000;
      v11 = 200.0;
      goto LABEL_92;
    case 47:
      buffer->cfNameString = @"LPC block size";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"LPC block size", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      v12 = 0x41F000003F800000;
LABEL_29:
      *&buffer->minValue = v12;
      v11 = 18.0;
      goto LABEL_92;
    case 48:
      buffer->cfNameString = @"LPC order";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"LPC order", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x41A000003F800000;
      v11 = 12.0;
      goto LABEL_92;
    case 49:
      buffer->cfNameString = @"LPC bandwidth expansion";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"LPC bandwidth expansion", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F8000003C23D70ALL;
      v11 = 0.9;
      goto LABEL_92;
    case 50:
      buffer->cfNameString = @"Autocorrelation length";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Autocorrelation length", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      v8 = 0x4248000041200000;
      goto LABEL_71;
    case 51:
      buffer->cfNameString = @"Min pitch frequency";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Min pitch frequency", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Hertz;
      *&buffer->minValue = 0x43FA000042480000;
      v11 = 70.0;
      goto LABEL_92;
    case 52:
      buffer->cfNameString = @"Max pitch frequency";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Max pitch frequency", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Hertz;
      *&buffer->minValue = 0x43FA000042480000;
      v11 = 350.0;
      goto LABEL_92;
    case 53:
      buffer->cfNameString = @"Periodicity smoothing TC";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Periodicity smoothing TC", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      *&buffer->minValue = 0x4348000000000000;
      v11 = 3.0;
      goto LABEL_92;
    case 54:
      v23 = @"Periodicity background smoothing TC";
      goto LABEL_87;
    case 55:
      buffer->cfNameString = @"Periodicity thd above background";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Periodicity thd above background", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F00000000000000;
      v11 = 0.08;
      goto LABEL_92;
    case 56:
      buffer->cfNameString = @"Sparsity blocksize";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Sparsity blocksize", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      *&buffer->minValue = 0x4248000041200000;
      v11 = 50.0;
      goto LABEL_92;
    case 57:
      buffer->cfNameString = @"Sparsity smoothing TC";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Sparsity smoothing TC", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      v8 = 0x4348000000000000;
LABEL_71:
      *&buffer->minValue = v8;
      v11 = 15.0;
      goto LABEL_92;
    case 58:
      v23 = @"Sparsity background smothing TC";
LABEL_87:
      buffer->cfNameString = v23;
      buffer->flags = 0x8000000;
      CFStringGetCString(v23, buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      *&buffer->minValue = 0x400000003C23D70ALL;
      v11 = 0.2;
      goto LABEL_92;
    case 59:
      buffer->cfNameString = @"Sparsity thd above background";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Sparsity thd above background", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F00000000000000;
      v11 = 0.02;
LABEL_92:
      buffer->defaultValue = v11;
LABEL_93:
      v33 = -1005584384;
      break;
    case 60:
      v24 = @"Current residual periodicity above smoothed background";
      goto LABEL_47;
    case 61:
      v24 = @"Current residual sparsity above smoothed background";
LABEL_47:
      buffer->cfNameString = v24;
      buffer->flags = 0x8000000;
      CFStringGetCString(v24, buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v25 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      buffer->defaultValue = 0.0;
      goto LABEL_48;
    case 62:
      buffer->cfNameString = @"Pre gain";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Pre gain", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 5;
      v7 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v19 = 3.43597632e10;
LABEL_51:
      *&buffer->minValue = v19;
      buffer->defaultValue = 0.0;
      goto LABEL_83;
    case 63:
      buffer->cfNameString = @"Limiter";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Limiter", buffer->name, 52, 0x8000100u);
      v28 = 6;
LABEL_37:
      buffer->clumpID = v28;
      v7 = buffer->flags;
      v29 = kAudioUnitParameterUnit_Boolean;
LABEL_62:
      buffer->unit = v29;
      v20 = 0x3F80000000000000;
LABEL_63:
      *&buffer->minValue = v20;
      v9 = 1.0;
LABEL_82:
      buffer->defaultValue = v9;
LABEL_83:
      v33 = -1072693248;
      break;
    case 64:
      buffer->cfNameString = @"Noise Dither Enabled";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Noise Dither Enabled", buffer->name, 52, 0x8000100u);
      buffer->clumpID = 7;
      v25 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      buffer->defaultValue = 1.0;
LABEL_48:
      v7 = v25 & 0x7FFFFFFF;
      v33 = 68190208;
      break;
    default:
      return 4294956418;
  }

  v37 = v7 | v33;
LABEL_95:
  result = 0;
  buffer->flags = v37;
  return result;
}

uint64_t AUAGCV2::SetParameter(AUAGCV2 *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  if (!result && (a2 - 14 > 0x32 || ((1 << (a2 - 14)) & 0x4C00086E02031) == 0) && a2 >= 2)
  {
    ++*(this + 148);
  }

  return result;
}

uint64_t AUAGCV2::GetProperty(AUAGCV2 *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a2 == 3700 && !a3)
  {
    result = 0;
    v7 = *(this + 376);
LABEL_4:
    *a5 = v7;
    return result;
  }

  if (!a3)
  {
    if (a2 == 29)
    {
      result = 0;
      v7 = *(this + 554);
      goto LABEL_4;
    }

    if (a2 == 21)
    {
      result = 0;
      v7 = *(this + 552);
      goto LABEL_4;
    }
  }

  return 4294956417;
}

uint64_t AUAGCV2::GetPropertyInfo(AUAGCV2 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 == 3700 && !a3)
  {
    v6 = 0;
LABEL_4:
    result = 0;
    *a6 = v6;
    *a5 = 4;
    return result;
  }

  if (!a3 && (a2 | 8) == 0x1D)
  {
    v6 = 1;
    goto LABEL_4;
  }

  return 4294956417;
}

void AUAGCV2::~AUAGCV2(AUAGCV2 *this)
{
  AUAGCV2::~AUAGCV2(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5931668;
  v2 = (this + 528);
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::clear[abi:ne200100](this + 66);
  *(this + 568) = 0u;
  *this = &unk_1F593A7A8;
  v3 = v2;
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::__destroy_vector::operator()[abi:ne200100](&v3);

  ausdk::AUBase::~AUBase(this);
}

void clsp::ConvoyDisplacementControllerV2::setLogs(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[123] = v5;
  v6 = a1[124];
  a1[124] = v4;
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

  a1[113] = v8;
  v9 = a1[114];
  a1[114] = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

double clsp::ConvoyDisplacementControllerV2::postProcess(clsp::ConvoyDisplacementControllerV2 *this)
{
  *&result = 1065353216;
  *(this + 72) = 1065353216;
  return result;
}

uint64_t clsp::ConvoyDisplacementControllerV2::zapBadValues(uint64_t this)
{
  v1 = vdupq_n_s64(0x3CD203AF9EE75616uLL);
  v2 = vdupq_n_s64(0x430C6BF526340000uLL);
  v3 = *(this + 940);
  v4 = vabsq_f32(v3);
  v5 = vcvt_hight_f64_f32(v4);
  v6 = vcvtq_f64_f32(*v4.f32);
  *(this + 940) = vandq_s8(v3, vuzp1q_s32(vandq_s8(vcgtq_f64(v6, v1), vcgtq_f64(v2, v6)), vandq_s8(vcgtq_f64(v5, v1), vcgtq_f64(v2, v5))));
  v8 = *(this + 160);
  v7 = *(this + 168);
  v9 = *(v8 + 40);
  v10 = vabsq_f64(v9);
  *(v8 + 40) = vandq_s8(v9, vandq_s8(vcgtq_f64(v10, v1), vcgtq_f64(v2, v10)));
  v11 = *(v8 + 56);
  v12 = vabsq_f64(v11);
  *(v8 + 56) = vandq_s8(v11, vandq_s8(vcgtq_f64(v12, v1), vcgtq_f64(v2, v12)));
  v11.f64[0] = *(this + 120);
  v13 = vcvtq_f64_f32(vabs_f32(*&v11.f64[0]));
  *(this + 120) = vand_s8(*&v11.f64[0], vmovn_s64(vandq_s8(vcgtq_f64(v13, v1), vcgtq_f64(v2, v13))));
  v14 = *(this + 648);
  v15 = fabsf(v14);
  if (v15 >= 1.0e15 || v15 <= 1.0e-15)
  {
    v14 = 0.0;
  }

  *(this + 648) = v14;
  v17 = *(this + 140);
  v18 = vcvtq_f64_f32(vabs_f32(v17));
  *(this + 140) = vand_s8(v17, vmovn_s64(vandq_s8(vcgtq_f64(v18, v1), vcgtq_f64(v2, v18))));
  v19 = *(this + 688);
  v20 = fabsf(v19);
  if (v20 >= 1.0e15 || v20 <= 1.0e-15)
  {
    v19 = 0.0;
  }

  *(this + 688) = v19;
  v22 = *(this + 708);
  v23 = fabsf(v22);
  if (v23 >= 1.0e15 || v23 <= 1.0e-15)
  {
    v22 = 0.0;
  }

  *(this + 708) = v22;
  v25 = *(this + 104);
  v26 = fabsf(v25);
  if (v26 >= 1.0e15 || v26 <= 1.0e-15)
  {
    v25 = 0.0;
  }

  if (v25 < *(this + 424))
  {
    v25 = *(this + 424);
  }

  *(this + 104) = v25;
  v28 = *(v7 + 40);
  v29 = vabsq_f64(v28);
  *(v7 + 40) = vandq_s8(v28, vandq_s8(vcgtq_f64(v29, v1), vcgtq_f64(v2, v29)));
  v30 = *(v7 + 56);
  v31 = vabsq_f64(v30);
  *(v7 + 56) = vandq_s8(v30, vandq_s8(vcgtq_f64(v31, v1), vcgtq_f64(v2, v31)));
  v32 = *(this + 176);
  v33 = *(v32 + 40);
  v34 = vabsq_f64(v33);
  *(v32 + 40) = vandq_s8(v33, vandq_s8(vcgtq_f64(v34, v1), vcgtq_f64(v2, v34)));
  v35 = *(v32 + 56);
  v36 = vabsq_f64(v35);
  *(v32 + 56) = vandq_s8(v35, vandq_s8(vcgtq_f64(v36, v1), vcgtq_f64(v2, v36)));
  v35.f64[0] = *(this + 196);
  v37 = vcvtq_f64_f32(vabs_f32(*&v35.f64[0]));
  *(this + 196) = vand_s8(*&v35.f64[0], vmovn_s64(vandq_s8(vcgtq_f64(v37, v1), vcgtq_f64(v2, v37))));
  v38 = *(this + 748);
  v39 = fabsf(v38);
  if (v39 >= 1.0e15 || v39 <= 1.0e-15)
  {
    v38 = 0.0;
  }

  *(this + 748) = v38;
  if (v38 == 0.0)
  {
    *(this + 748) = *(this + 744);
  }

  v41 = *(this + 788);
  v42 = fabsf(v41);
  if (v42 >= 1.0e15 || v42 <= 1.0e-15)
  {
    v41 = 0.0;
  }

  *(this + 788) = v41;
  if (v41 == 0.0)
  {
    *(this + 788) = *(this + 784);
  }

  v44 = *(this + 824);
  v45 = fabsf(v44);
  if (v45 >= 1.0e15 || v45 <= 1.0e-15)
  {
    v44 = 0.0;
  }

  *(this + 824) = v44;
  v47 = fabsf(*(this + 864));
  if (v47 >= 1.0e15 || v47 <= 1.0e-15)
  {
    v49 = 0.0;
  }

  else
  {
    v49 = *(this + 864);
  }

  *(this + 864) = v49;
  return this;
}

double clsp::ConvoyDisplacementControllerV2::reset(clsp::ConvoyDisplacementControllerV2 *this)
{
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 120) = 1065353216;
  *(this + 206) = 1065353216;
  v1 = *(this + 105);
  v2 = fabsf(*(this + 94));
  v3 = fabsf(*(this + 95));
  if (v3 < v2)
  {
    v2 = v3;
  }

  v4 = v1 * v2;
  *(this + 24) = v4;
  *(this + 25) = 1.0 / v4;
  *(this + 109) = v4;
  *(this + 216) = v4;
  *(this + 108) = v1;
  *(this + 187) = *(this + 186);
  *(this + 197) = *(this + 196);
  *(this + 940) = 0u;
  *(this + 15) = 0;
  *(this + 162) = 0;
  *(this + 140) = 0;
  *(this + 172) = 0;
  *(this + 177) = 0;
  *(this + 26) = v4;
  v5 = *(this + 20);
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  v6 = *(this + 21);
  *(v6 + 56) = 0u;
  *(v6 + 40) = 0u;
  v7 = *(this + 22);
  *(v7 + 56) = 0u;
  *(v7 + 40) = 0u;
  *(this + 196) = 0;
  *(this + 71) = 0;
  *(this + 130) = 0;
  *(this + 64) = 0;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 133) = *(this + 132);
  *(this + 137) = 0;
  *(this + 560) = 0;
  *&result = 1065353216;
  *(this + 72) = 1065353216;
  *(this + 139) = 0;
  *(this + 148) = 0;
  *(this + 75) = 0;
  *(this + 608) = 0;
  return result;
}

float32_t clsp::ConvoyDisplacementControllerV2::analyzeDisp(float32x2_t *this, float a2, float a3)
{
  v4 = this[60].f32[0];
  v5 = this[103].f32[0];
  v6 = 203;
  if (v5 < v4)
  {
    v6 = 202;
  }

  v7 = v5 + (this->f32[v6] * (v4 - v5));
  this[103].f32[0] = v7;
  v8 = this[54].f32[1];
  v9 = this[108].f32[0];
  v10 = 213;
  if (v9 < v8)
  {
    v10 = 212;
  }

  v11 = v9 + (this->f32[v10] * (v8 - v9));
  this[108].f32[0] = v11;
  v12 = 1.0 / v11;
  this[12].f32[0] = v11;
  this[12].f32[1] = 1.0 / v11;
  v13 = this[14].f32[0];
  v14 = this[15].f32[0];
  v15 = ((v7 * a2) * this[14].f32[1]) - (v14 * this[13].f32[1]);
  v16 = this[15].f32[1];
  v17 = this[16].f32[0];
  v18 = v15 - (v16 * v13);
  this[15].f32[0] = v18;
  this[15].f32[1] = v14;
  v19 = -(v15 + (-v16 * v13));
  if (v18 >= 0.0)
  {
    v19 = v18;
  }

  v20 = this[81].f32[0];
  v21 = 159;
  if (v20 < v19)
  {
    v21 = 158;
  }

  v22 = this->f32[v21];
  v23 = v19 - v20;
  v24 = v20 + (v22 * v23);
  this[81].f32[0] = v24;
  if (v11 >= v24)
  {
    v25 = v11;
  }

  else
  {
    v25 = v20 + (v22 * v23);
  }

  v26 = this[16].f32[1];
  v27 = this[17].f32[1];
  v28 = this[18].f32[0];
  v29 = ((v7 * a3) * this[17].f32[0]) - (v27 * v17);
  v30 = v29 - (v28 * v26);
  this[17].f32[1] = v30;
  this[18].f32[0] = v27;
  v31 = -(v29 + (-v28 * v26));
  if (v30 >= 0.0)
  {
    v31 = v30;
  }

  v32 = this[86].f32[0];
  v33 = 169;
  if (v32 < v31)
  {
    v33 = 168;
  }

  v34 = this->f32[v33];
  v35 = v32 + (v34 * (v31 - v32));
  this[86].f32[0] = v35;
  if (v11 < v35)
  {
    v11 = v32 + (v34 * (v31 - v32));
  }

  v36 = this[88].f32[1] + (this[88].f32[0] * ((v12 * v11) - this[88].f32[1]));
  this[88].f32[1] = v36;
  v37.f32[0] = v12 * (v25 * v36);
  v38 = v37.f32[0] * this[53].f32[0];
  v37.f32[1] = v31;
  this[72] = vbsl_s8(vcgt_f32(v37, this[72]), v37, this[72]);
  this[13].f32[0] = v38;
  v39 = this[123];
  v40 = *v39;
  if (*v39)
  {
    __src = a3;
    clsp::CLSP_Log::LogCLSPData(v40, &__src, 1);
    v39 = this[123];
  }

  v41 = v39[2];
  if (v41)
  {
    __src = v18;
    clsp::CLSP_Log::LogCLSPData(v41, &__src, 1);
    v39 = this[123];
    v42 = v39[2];
    if (v42)
    {
      __src = v24;
      clsp::CLSP_Log::LogCLSPData(v42, &__src, 1);
      v39 = this[123];
      v43 = v39[2];
      if (v43)
      {
        __src = v25;
        clsp::CLSP_Log::LogCLSPData(v43, &__src, 1);
        v39 = this[123];
        v44 = v39[2];
        if (v44)
        {
          __src = v36;
          clsp::CLSP_Log::LogCLSPData(v44, &__src, 1);
          v39 = this[123];
        }
      }
    }
  }

  v45 = *v39;
  if (*v39)
  {
    __src = v30;
    clsp::CLSP_Log::LogCLSPData(v45, &__src, 1);
    v46 = **&this[123];
    if (v46)
    {
      __src = v35;
      clsp::CLSP_Log::LogCLSPData(v46, &__src, 1);
      v47 = **&this[123];
      if (v47)
      {
        __src = this[13].f32[0];
        clsp::CLSP_Log::LogCLSPData(v47, &__src, 1);
        v48 = **&this[123];
        if (v48)
        {
          v49 = (*(*this + 128))(this);
          __src = log10f(v49[21] * ((((1.0 - v49[12]) + v49[13]) * ((v49[14] + v49[15]) + v49[16])) / ((v49[12] + 1.0) + v49[13]))) * 20.0;
          clsp::CLSP_Log::LogCLSPData(v48, &__src, 1);
        }
      }
    }
  }

  return this[13].f32[0];
}

float clsp::ConvoyDisplacementControllerV2::processSample(clsp::ConvoyDisplacementControllerV2 *this, float result, float a3)
{
  if (*(this + 72) == 1)
  {
    v21 = v8;
    v22 = v7;
    v23 = v6;
    v24 = v5;
    v25 = v3;
    v26 = v4;
    v11 = *(this + 26);
    if (v11 >= *(this + 224))
    {
      v11 = *(this + 224);
    }

    v12 = (*(this + 218) + (*(this + 219) * v11)) + (*(this + 220) * (v11 * v11));
    v13 = (*(this + 221) + (*(this + 222) * v11)) + (*(this + 223) * (v11 * v11));
    *(this + 230) = v12;
    *(this + 231) = v13;
    v14 = *(*(this + 113) + 16);
    if (v14)
    {
      __src = v12;
      clsp::CLSP_Log::LogCLSPData(v14, &__src, 1);
      v15 = *(*(this + 113) + 16);
      if (v15)
      {
        v20 = v13;
        clsp::CLSP_Log::LogCLSPData(v15, &v20, 1);
      }
    }

    v16 = *(this + 235);
    v17 = *(this + 237);
    v18 = ((((*(this + 233) * v16) + (a3 * *(this + 232))) + (*(this + 236) * *(this + 234))) - (v17 * *(this + 230))) - (*(this + 238) * *(this + 231));
    *(this + 235) = a3;
    *(this + 236) = v16;
    *(this + 237) = v18;
    *(this + 238) = v17;
    return v18 * (((1.0 - v12) + v13) * *(this + 239));
  }

  return result;
}

uint64_t clsp::ConvoyDisplacementControllerV2::calcCoeffsSyncDisp(clsp::ConvoyDisplacementControllerV2 *this, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = *(this + 19);
  if (!v7)
  {
    __assert_rtn("calcCoeffsSyncDisp", "ConvoyDispControllerV2.cpp", 298, "mr_dispModel");
  }

  v13 = 1.0 / a2;
  v14 = -(1.0 / a2 * a3);
  v15 = exp(v14 / (a4 + a4)) * -2.0;
  v16 = v15 * cos(v13 * a3 * sqrt(1.0 / (a4 * -4.0 * a4) + 1.0));
  v17 = exp(v14 / a4);
  v18 = (v17 + v16 + 1.0) * (a7 * 1000.0 * v7[1] / (*v7 * v7[4]));
  v19 = v16;
  *&v17 = v17;
  *(this + 27) = v19;
  *(this + 28) = LODWORD(v17);
  *(this + 29) = v18;
  LODWORD(v17) = *(this + 32);
  v20 = *(this + 33);
  v21 = *(this + 108);
  *(this + 232) = 1065353216;
  *(this + 233) = LODWORD(v17);
  *(this + 234) = v20;
  *(this + 115) = v21;
  *&v17 = 1.0 / (1.0 - *&v17 + v20);
  *(this + 239) = LODWORD(v17);

  return clsp::LFSNFeedbackCoeffCalc::calcCoeffs((this + 872), a2, a3, a4, a5, 1.0, a6);
}

void clsp::ConvoyDisplacementControllerV2::calcCoeffs(clsp::ConvoyDisplacementControllerV2 *this, double a2, double a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = *(this + 19);
  if (!v4)
  {
    __assert_rtn("calcCoeffs", "ConvoyDispControllerV2.cpp", 220, "mr_dispModel");
  }

  v6 = *(this + 105);
  v7 = *(this + 94);
  v8 = v6 * v7;
  v9 = v6 * *(this + 95);
  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  v10 = -(v6 * v7);
  if (v8 > 0.0)
  {
    v10 = -0.0;
  }

  if (v10 >= v9)
  {
    v10 = v9;
  }

  *(this + 109) = v10;
  *(this + 24) = v10;
  *(this + 25) = 1.0 / v10;
  *(this + 106) = v10;
  *(this + 107) = 1.0 / v10;
  clsp::DisplacementModelSealed::calcCoeffsFLV(v4, this + 32, a2, a3);
  v11 = clsp::DisplacementModelSealed::calcCoeffsFLV(*(this + 19), this + 46, a2, 1.0);
  v12 = *(this + 19);
  v13 = (*(*this + 72))(this, v11);
  v14 = (*(*this + 40))(this);
  v15 = v12[4];
  v16 = sqrt(v15 / v12[2]) / sqrt(v14);
  v17 = -(1.0 / a2 * v16);
  v18 = exp(v17 / (v13 + v13)) * -2.0;
  v19 = v18 * cos(1.0 / a2 * v16 * sqrt(1.0 / (v13 * -4.0 * v13) + 1.0));
  v20 = exp(v17 / v13);
  v21 = (v20 + v19 + 1.0) * (a3 * 1000.0 * v12[1] / (*v12 * v15));
  v22 = v19;
  *&v20 = v20;
  *(this + 27) = v22;
  *(this + 28) = LODWORD(v20);
  *(this + 29) = v21;
  v23 = *(this + 19);
  v24 = (*(*this + 72))(this);
  v25 = (*(*this + 40))(this);
  clsp::LFSN::calcCoeffs(this + 872, v23, a2, *(this + 108), *(this + 32), *(this + 33), v24, v25, *(this + 106), a3);
  clsp::AttackRelease<float,double>::calcCoeffs(this + 616, a2);
  clsp::AttackRelease<float,double>::calcCoeffs(this + 656, a2);
  v26 = *(this + 7);
  *(this + 87) = v26;
  v27 = v26 * a2;
  v28 = 0.0;
  if (v27 >= 0.00001)
  {
    v28 = exp(-4.60517019 / v27);
  }

  v29 = 1.0 - v28;
  *(this + 176) = v29;
  clsp::ConvoyDisplacementController::designBQCoeffs(9, *(this + 20), a2, 1.0);
  clsp::ConvoyDisplacementController::designBQCoeffs(9, *(this + 21), a2, 1.0);
  clsp::ConvoyDisplacementController::designBQCoeffs(8, *(this + 22), a2, 1.0);
  v30 = vcvtad_u64_f64(*(this + 8) * 0.001 * a2);
  *(this + 49) = v30;
  if (v30 >= (*(this + 43) - *(this + 41)) >> 2)
  {
    if (shouldTraceRender())
    {
      v31 = spp3SubsystemAsync();
      if (v31)
      {
        v32 = *v31;
        if (!*v31)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v32 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v36 = "ConvoyDispControllerV2.cpp";
        v37 = 1024;
        v38 = 263;
        _os_log_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Trying to set peakFinderWindowTime_ms past max capacity", buf, 0x12u);
      }
    }
  }

  else
  {
    std::vector<float>::resize(this + 38, v30);
    std::vector<float>::resize(this + 41, *(this + 49));
  }

LABEL_19:
  *(this + 50) = vmul_f32(*(this + 384), vrev64_s32(*(this + 376)));
  clsp::AttackReleaseTo<float,double>::calcCoeffs(this + 712, a2);
  clsp::AttackReleaseTo<float,double>::calcCoeffs(this + 752, a2);
  clsp::AttackRelease<float,double>::calcCoeffs(this + 792, a2);
  clsp::AttackRelease<float,double>::calcCoeffs(this + 832, a2);
  v33 = round(*(this + 135) * 0.001 * a2);
  *(this + 136) = v33;
  *(this + 125) = vcvtad_u64_f64(a2 * 0.1);
  *(this + 126) = vcvtad_u64_f64(a2);
  *(this + 127) = vcvtad_u64_f64(a2 * 30.0);
  *(this + 73) = llround(a2);
}

double *clsp::ConvoyDisplacementControllerV2::setPeakDecayTime(double *this, double a2)
{
  this[6] = a2;
  this[78] = a2;
  this[83] = a2;
  return this;
}

double *clsp::ConvoyDisplacementControllerV2::setPeakAttackTime(double *this, double a2)
{
  this[5] = a2;
  this[77] = a2;
  this[82] = a2;
  return this;
}

void clsp::ConvoyDisplacementControllerV2::logCoeffs(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 && (v5 = *(a1 + 16), __src = v5, clsp::CLSP_Log::LogCLSPData(v4, &__src, 1), (v6 = *a2) != 0) && (v7 = *(a1 + 24), __src = v7, clsp::CLSP_Log::LogCLSPData(v6, &__src, 1), (v8 = *a2) != 0) && (v9 = *(a1 + 32), __src = v9, clsp::CLSP_Log::LogCLSPData(v8, &__src, 1), (v10 = *a2) != 0) && (v11 = *(a1 + 40), __src = v11, clsp::CLSP_Log::LogCLSPData(v10, &__src, 1), (v12 = *a2) != 0) && (v13 = *(a1 + 48), __src = v13, clsp::CLSP_Log::LogCLSPData(v12, &__src, 1), (v14 = *a2) != 0) && (v15 = *(a1 + 56), __src = v15, clsp::CLSP_Log::LogCLSPData(v14, &__src, 1), (v16 = *a2) != 0) && (v17 = *(a1 + 64), __src = v17, clsp::CLSP_Log::LogCLSPData(v16, &__src, 1), (v18 = *a2) != 0) && (__src = *(a1 + 96), clsp::CLSP_Log::LogCLSPData(v18, &__src, 1), (v19 = *a2) != 0) && (__src = *(a1 + 100), clsp::CLSP_Log::LogCLSPData(v19, &__src, 1), (v20 = *a2) != 0) && (__src = *(a1 + 384), clsp::CLSP_Log::LogCLSPData(v20, &__src, 1), (v21 = *a2) != 0) && (__src = *(a1 + 388), clsp::CLSP_Log::LogCLSPData(v21, &__src, 1), (v22 = *a2) != 0) && (__src = *(a1 + 392), clsp::CLSP_Log::LogCLSPData(v22, &__src, 1), (v23 = *a2) != 0) && (__src = *(a1 + 400), clsp::CLSP_Log::LogCLSPData(v23, &__src, 1), (v24 = *a2) != 0) && (__src = *(a1 + 404), clsp::CLSP_Log::LogCLSPData(v24, &__src, 1), (v25 = *a2) != 0) && (__src = *(a1 + 408), clsp::CLSP_Log::LogCLSPData(v25, &__src, 1), (v26 = *a2) != 0) && (__src = *(a1 + 376), clsp::CLSP_Log::LogCLSPData(v26, &__src, 1), (v27 = *a2) != 0) && (__src = *(a1 + 380), clsp::CLSP_Log::LogCLSPData(v27, &__src, 1), (v28 = *a2) != 0) && (__src = *(a1 + 412), clsp::CLSP_Log::LogCLSPData(v28, &__src, 1), (v29 = *a2) != 0) && (__src = *(a1 + 416), clsp::CLSP_Log::LogCLSPData(v29, &__src, 1), (v30 = *a2) != 0) && (__src = *(a1 + 420), clsp::CLSP_Log::LogCLSPData(v30, &__src, 1), (v31 = *a2) != 0) && (__src = *(a1 + 424), clsp::CLSP_Log::LogCLSPData(v31, &__src, 1), (v32 = *a2) != 0) && (__src = *(a1 + 428), clsp::CLSP_Log::LogCLSPData(v32, &__src, 1), (v33 = *a2) != 0) && (__src = *(a1 + 484), clsp::CLSP_Log::LogCLSPData(v33, &__src, 1), (v34 = *a2) != 0) && (__src = *(a1 + 488), clsp::CLSP_Log::LogCLSPData(v34, &__src, 1), (v35 = *a2) != 0) && (__src = *(a1 + 492), clsp::CLSP_Log::LogCLSPData(v35, &__src, 1), (v36 = *a2) != 0) && (__src = *(a1 + 496), clsp::CLSP_Log::LogCLSPData(v36, &__src, 1), (v37 = *a2) != 0) && (__src = *(a1 + 528), clsp::CLSP_Log::LogCLSPData(v37, &__src, 1), (v38 = *a2) != 0) && (__src = *(a1 + 536), clsp::CLSP_Log::LogCLSPData(v38, &__src, 1), (v39 = *a2) != 0) && (__src = *(a1 + 540), clsp::CLSP_Log::LogCLSPData(v39, &__src, 1), (v40 = *a2) != 0))
  {
    __src = *(a1 + 544);
    clsp::CLSP_Log::LogCLSPData(v40, &__src, 1);
    v41 = *a2;
  }

  else
  {
    v41 = 0;
  }

  v42 = *(a2 + 8);
  v64[0] = v41;
  v64[1] = v42;
  if (v42)
  {
    atomic_fetch_add_explicit(v42 + 1, 1uLL, memory_order_relaxed);
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 108), v64);
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  else
  {
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 108), v64);
  }

  v43 = *(a2 + 8);
  v63[0] = *a2;
  v63[1] = v43;
  if (v43)
  {
    atomic_fetch_add_explicit(v43 + 1, 1uLL, memory_order_relaxed);
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 128), v63);
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  else
  {
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 128), v63);
  }

  v44 = *(a2 + 8);
  v62[0] = *a2;
  v62[1] = v44;
  if (v44)
  {
    atomic_fetch_add_explicit(v44 + 1, 1uLL, memory_order_relaxed);
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 184), v62);
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  else
  {
    clsp::IIRTwoPole<float>::logCoeffs((a1 + 184), v62);
  }

  v45 = *(a2 + 8);
  v61[0] = *a2;
  v61[1] = v45;
  if (v45)
  {
    atomic_fetch_add_explicit(v45 + 1, 1uLL, memory_order_relaxed);
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 616, v61);
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  else
  {
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 616, v61);
  }

  v46 = *(a2 + 8);
  v60[0] = *a2;
  v60[1] = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(v46 + 1, 1uLL, memory_order_relaxed);
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 656, v60);
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  else
  {
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 656, v60);
  }

  v47 = *(a2 + 8);
  v59[0] = *a2;
  v59[1] = v47;
  if (v47)
  {
    atomic_fetch_add_explicit(v47 + 1, 1uLL, memory_order_relaxed);
    clsp::ExponentialSmoother<float,double>::logCoeffs(a1 + 696, v59);
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  else
  {
    clsp::ExponentialSmoother<float,double>::logCoeffs(a1 + 696, v59);
  }

  v48 = *(a2 + 8);
  v58[0] = *a2;
  v58[1] = v48;
  if (v48)
  {
    atomic_fetch_add_explicit(v48 + 1, 1uLL, memory_order_relaxed);
    clsp::AttackReleaseTo<float,double>::logCoeffs(a1 + 712, v58);
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  else
  {
    clsp::AttackReleaseTo<float,double>::logCoeffs(a1 + 712, v58);
  }

  v49 = *(a2 + 8);
  v57[0] = *a2;
  v57[1] = v49;
  if (v49)
  {
    atomic_fetch_add_explicit(v49 + 1, 1uLL, memory_order_relaxed);
    clsp::AttackReleaseTo<float,double>::logCoeffs(a1 + 752, v57);
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  else
  {
    clsp::AttackReleaseTo<float,double>::logCoeffs(a1 + 752, v57);
  }

  v50 = *(a2 + 8);
  v56[0] = *a2;
  v56[1] = v50;
  if (v50)
  {
    atomic_fetch_add_explicit(v50 + 1, 1uLL, memory_order_relaxed);
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 792, v56);
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  else
  {
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 792, v56);
  }

  v51 = *(a2 + 8);
  v55[0] = *a2;
  v55[1] = v51;
  if (v51)
  {
    atomic_fetch_add_explicit(v51 + 1, 1uLL, memory_order_relaxed);
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 832, v55);
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  else
  {
    clsp::AttackRelease<float,double>::logCoeffs(a1 + 832, v55);
  }

  v52 = *a2;
  v53 = *(a2 + 8);
  v54[0] = v52;
  v54[1] = v53;
  if (v53)
  {
    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
    clsp::LFSN::logCoeffs((a1 + 872), v54);

    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  else
  {
    clsp::LFSN::logCoeffs((a1 + 872), v54);
  }
}

void *clsp::ConvoyDisplacementControllerV2::dump(uint64_t a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "g_bw = ", 7);
  v5 = MEMORY[0x1E12BCBF0](v4, *(a1 + 16));
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\nx_lim = ", 9);
  v7 = MEMORY[0x1E12BCBF0](v6, *(a1 + 24));
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\nQ_d = ", 7);
  v9 = MEMORY[0x1E12BCBF0](v8, *(a1 + 32));
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\npeakAttackTime = ", 18);
  v11 = MEMORY[0x1E12BCBF0](v10, *(a1 + 40));
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\npeakDecayTime = ", 17);
  v13 = MEMORY[0x1E12BCBF0](v12, *(a1 + 48));
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\nflvSmoothingTime = ", 20);
  v15 = MEMORY[0x1E12BCBF0](v14, *(a1 + 56));
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\npeakFinderWindowTime_ms = ", 27);
  v17 = MEMORY[0x1E12BCBF0](v16, *(a1 + 64));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\nms_x_lim = ", 12);
  v18 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\ninvxlim = ", 11);
  v19 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "\nptp_x_flv = ", 13);
  v20 = std::ostream::operator<<();
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n\nptp:\n", 7);
  clsp::IIRTwoPole<float>::dump(a1 + 108, v21);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "\nflv:\n", 6);
  clsp::IIRTwoPole<float>::dump(a1 + 128, v22);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "\nconvoyModel:\n", 14);
  clsp::IIRTwoPole<float>::dump(a1 + 184, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "\nrelative posPeakFinderThreshold = ", 35);
  v24 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "\nrelative negPeakFinderThreshold = ", 35);
  v25 = std::ostream::operator<<();
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "\npeakFinderWindowSize = ", 24);
  v27 = MEMORY[0x1E12BCC30](v26, *(a1 + 392));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\nposPeakFinderthreshold = ", 26);
  v28 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\nnegPeakFinderThreshold = ", 26);
  v29 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "\nxLimInc = ", 11);
  v30 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "\nxMin = ", 8);
  v31 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "\nxMax = ", 8);
  v32 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "\nxLimUpper = ", 13);
  v33 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "\nxLimUpperReal = ", 17);
  v34 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "\nxLimLower = ", 13);
  v35 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "\nxLimInit = ", 12);
  v36 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "\ninvxLimInit = ", 15);
  v37 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "\nMaxNormFactor = ", 17);
  v38 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "\nMinNormFactor = ", 17);
  v39 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "\nPeakRatioPosBlockThreshold = ", 30);
  v40 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "\nPeakRationNegBlockThreshold = ", 31);
  v41 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "\nPeakRatiosInWindowCountThreshold = ", 36);
  v42 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "\nnormFactorThreshold = ", 23);
  v43 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "\nmp_ConvoyBufferDirtyCountThreshold = ", 38);
  v44 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "\nmc_ConvoyBufferDirtyCountThreshold = ", 38);
  v45 = std::ostream::operator<<();
  v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "\nptpAtkRel:\n", 12);
  clsp::AttackRelease<float,double>::dump((a1 + 616), v46);
  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "\nflvTime:\n", 10);
  clsp::AttackRelease<float,double>::dump((a1 + 656), v47);
  v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "\nflvSmoother:\n", 14);
  clsp::ExponentialSmoother<float,double>::dump((a1 + 696), v48);
  v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "\nlfsn:\n", 7);
  clsp::LFSN::dump(a1 + 872, v49);
  v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "\nmodelNormFactor:\n", 18);
  clsp::AttackRelease<float,double>::dump((a1 + 792), v50);
  v52 = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, &v52, 1);
  return a2;
}

void clsp::ConvoyDisplacementControllerV2::~ConvoyDisplacementControllerV2(clsp::ConvoyDisplacementControllerV2 *this)
{
  clsp::ConvoyDisplacementControllerV2::~ConvoyDisplacementControllerV2(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59318D8;
  v2 = *(this + 124);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 114);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 44);
  if (v4)
  {
    *(this + 45) = v4;
    operator delete(v4);
  }

  v5 = *(this + 41);
  if (v5)
  {
    *(this + 42) = v5;
    operator delete(v5);
  }

  v6 = *(this + 38);
  if (v6)
  {
    *(this + 39) = v6;
    operator delete(v6);
  }

  v7 = *(this + 35);
  if (v7)
  {
    *(this + 36) = v7;
    operator delete(v7);
  }

  v8 = *(this + 32);
  if (v8)
  {
    *(this + 33) = v8;
    operator delete(v8);
  }

  v9 = *(this + 29);
  if (v9)
  {
    *(this + 30) = v9;
    operator delete(v9);
  }

  v10 = *(this + 26);
  if (v10)
  {
    *(this + 27) = v10;
    operator delete(v10);
  }

  v11 = *(this + 22);
  *(this + 22) = 0;
  if (v11)
  {
    MEMORY[0x1E12BD160](v11, 0x1000C40FF89C88ELL);
  }

  v12 = *(this + 21);
  *(this + 21) = 0;
  if (v12)
  {
    MEMORY[0x1E12BD160](v12, 0x1000C40FF89C88ELL);
  }

  v13 = *(this + 20);
  *(this + 20) = 0;
  if (v13)
  {
    MEMORY[0x1E12BD160](v13, 0x1000C40FF89C88ELL);
  }
}

void clsp::ConvoyDisplacementControllerV2::ConvoyDisplacementControllerV2(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  *(a1 + 8) = 4;
  *a1 = &unk_1F59318D8;
  *(a1 + 16) = a7;
  *(a1 + 24) = a8;
  *(a1 + 32) = a9;
  *(a1 + 40) = a10;
  *(a1 + 48) = a11;
  *(a1 + 56) = a12;
  *(a1 + 64) = *(a4 + 16);
  *(a1 + 72) = 1;
  *(a1 + 80) = a4;
  *(a1 + 88) = a5;
  v19 = a8;
  v20 = 1.0 / a8;
  *(a1 + 96) = v19;
  *(a1 + 100) = v20;
  *(a1 + 104) = v19;
  *(a1 + 140) = 0;
  *(a1 + 124) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 152) = a3;
  *(a1 + 160) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 176) = 0u;
  std::vector<float>::vector[abi:ne200100]((a1 + 208), a2);
  std::vector<float>::vector[abi:ne200100]((a1 + 232), a2);
  std::vector<float>::vector[abi:ne200100]((a1 + 256), a2);
  std::vector<float>::vector[abi:ne200100]((a1 + 280), a2);
  std::vector<float>::vector[abi:ne200100]((a1 + 304), vcvtad_u64_f64(*(a1 + 64) * 0.001 * a6));
  std::vector<float>::vector[abi:ne200100]((a1 + 328), vcvtad_u64_f64(*(a1 + 64) * 0.001 * a6));
  std::vector<float>::vector[abi:ne200100]((a1 + 352), a2);
  *&v21 = *(a4 + 4);
  v22 = *(a4 + 20);
  *(&v21 + 1) = v22;
  *(a1 + 376) = v21;
  *(a1 + 392) = vcvtad_u64_f64(*(a1 + 64) * 0.001 * a6);
  *(a1 + 400) = vzip1_s32(vmul_lane_f32(v22, *&v21, 1), vmul_lane_f32(*&v21, v22, 1));
  v23 = __exp10(*(a4 + 40) / -20.0);
  *(a1 + 408) = v23;
  v24 = *(a4 + 28);
  *(a1 + 412) = v24;
  *(a1 + 416) = v24;
  v25 = *(a4 + 36);
  *(a1 + 420) = v25;
  *(a1 + 424) = v19;
  *(a1 + 428) = v20;
  *(a1 + 432) = v25;
  *(a1 + 436) = *(a1 + 96);
  *(a1 + 472) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 480) = 1065353216;
  v26 = *(a4 + 52);
  *(a1 + 484) = v26;
  *v26.i64 = a6 * 0.1;
  *(a1 + 500) = vcvtad_u64_f64(a6 * 0.1);
  *(a1 + 504) = vcvtad_u64_f64(a6);
  *(a1 + 508) = vcvtad_u64_f64(a6 * 30.0);
  *(a1 + 512) = 0;
  *(a1 + 517) = 0;
  v27.i64[0] = *(a4 + 84);
  v28 = vzip1q_s32(v27, v26);
  v28.i32[1] = v28.i32[0];
  v28.i32[3] = *(a4 + 92);
  *(a1 + 528) = v28;
  *v28.i32 = round(*&v28.i32[3] * 0.001 * a6);
  *(a1 + 544) = v28.i32[0];
  *(a1 + 568) = 0;
  *(a1 + 553) = 0;
  *(a1 + 548) = 0;
  *(a1 + 576) = 1065353216;
  *(a1 + 584) = llround(a6);
  *(a1 + 592) = 0;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  *(a1 + 616) = a10;
  *(a1 + 624) = a11;
  *(a1 + 632) = 0;
  *(a1 + 648) = 0;
  *(a1 + 656) = a10;
  *(a1 + 664) = a11;
  *(a1 + 672) = 0;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0u;
  v29 = vcvtq_f64_f32(*(a4 + 76));
  *(a1 + 712) = v29;
  *(a1 + 736) = xmmword_1DE097CD0;
  *(a1 + 752) = v29;
  *(a1 + 776) = xmmword_1DE097CD0;
  *(a1 + 792) = vcvtq_f64_f32(*(a4 + 44));
  *(a1 + 808) = 0;
  *(a1 + 824) = 0;
  *(a1 + 832) = vcvtq_f64_f32(*(a4 + 68));
  *(a1 + 848) = 0;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0;
  *(a1 + 960) = 1065353216;
  *(a1 + 984) = 0u;
  *(a1 + 964) = 0;
  *(a1 + 969) = 0;
  if (a3)
  {
    if (*(a1 + 380) <= 0.0)
    {
      v31 = "mc_xMax > 0.";
      v32 = 108;
    }

    else if (*(a1 + 376) >= 0.0)
    {
      v31 = "mc_xMin < 0.";
      v32 = 109;
    }

    else if (*(a1 + 400) <= 0.0)
    {
      v31 = "mc_posPeakFinderThreshold > 0.";
      v32 = 110;
    }

    else
    {
      if (*(a1 + 404) < 0.0)
      {
        v30 = round(*v26.i64);
        std::vector<unsigned int>::reserve((a1 + 304), v30);
        std::vector<unsigned int>::reserve((a1 + 328), v30);
        operator new();
      }

      v31 = "mc_negPeakFinderThreshold < 0.";
      v32 = 111;
    }
  }

  else
  {
    v31 = "inDispModel";
    v32 = 106;
  }

  __assert_rtn("ConvoyDisplacementControllerV2", "ConvoyDispControllerV2.cpp", v32, v31);
}

void sub_1DDFA6398(_Unwind_Exception *exception_object)
{
  v5 = v2[124];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v2[114];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = v2[44];
  if (v7)
  {
    v2[45] = v7;
    operator delete(v7);
  }

  v8 = v2[41];
  if (v8)
  {
    v2[42] = v8;
    operator delete(v8);
  }

  v9 = v2[38];
  if (v9)
  {
    v2[39] = v9;
    operator delete(v9);
  }

  v10 = v2[35];
  if (v10)
  {
    v2[36] = v10;
    operator delete(v10);
  }

  v11 = v2[32];
  if (v11)
  {
    v2[33] = v11;
    operator delete(v11);
  }

  v12 = v2[29];
  if (v12)
  {
    v2[30] = v12;
    operator delete(v12);
  }

  v13 = v2[26];
  if (v13)
  {
    v2[27] = v13;
    operator delete(v13);
  }

  v14 = v2[22];
  v2[22] = 0;
  if (v14)
  {
    MEMORY[0x1E12BD160](v14, v1);
  }

  v15 = v2[21];
  v2[21] = 0;
  if (v15)
  {
    MEMORY[0x1E12BD160](v15, v1);
  }

  v16 = *v3;
  *v3 = 0;
  if (v16)
  {
    MEMORY[0x1E12BD160](v16, v1);
  }

  _Unwind_Resume(exception_object);
}

float clsp::ConvoyDisplacementControllerV2::resetToOpenLoop(clsp::ConvoyDisplacementControllerV2 *this)
{
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 120) = 1065353216;
  *(this + 206) = 1065353216;
  v1 = *(this + 105);
  v2 = fabsf(*(this + 94));
  v3 = fabsf(*(this + 95));
  if (v3 < v2)
  {
    v2 = v3;
  }

  v4 = v1 * v2;
  *(this + 24) = v4;
  *(this + 25) = 1.0 / v4;
  *(this + 109) = v4;
  *(this + 216) = v4;
  *(this + 108) = v1;
  *(this + 187) = *(this + 186);
  result = *(this + 196);
  *(this + 197) = result;
  return result;
}

uint64_t HOASpatializer::getLatencyFrames(HOASpatializer *this)
{
  v1 = *(this + 49);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t HOASpatializer::processAccumulating(HOASpatializer *this, const float *a2, float *const *a3, int a4, float *const *a5, int a6, vDSP_Length a7, float a8, IR::ComplexDataCircBuffer *a9)
{
  v136 = *MEMORY[0x1E69E9840];
  if (a6 == a4)
  {
    if (*(this + 16) == 1 && *(this + 40))
    {
      LODWORD(v12) = a6;
      v15 = atomic_load(this + 290);
      if (v15)
      {
        v17 = (this + 32);
        v16 = *(this + 4);
        if (v16)
        {
          if (*(this + 71) && applesauce::CF::details::has_key<__CFString const*&>(v16, kHOASourceExtentIRCustomURLParamName))
          {
            v18 = *(this + 71);
            v19 = *(this + 2);
            v20 = *(this + 3);
            v21 = applesauce::CF::DictionaryRef::operator->(this + 4);
            applesauce::CF::details::find_at_key_or_optional<applesauce::CF::URLRef,__CFString const*&>(__p, *v21, kHOASourceExtentIRCustomURLParamName);
            v127 = __p[0];
            __p[0] = 0;
            LOWORD(v18) = (**v18)(v18, v20, 512, 512, &v127, 0, 0, v19);
            applesauce::CF::URLRef::~URLRef(&v127);
            std::optional<applesauce::CF::URLRef>::~optional(__p);
            if (!v18)
            {
              HOASpatializer::initializeSEDelaysAndBuffers(this);
              *(this + 288) = 1;
            }

            atomic_store(0, this + 290);
          }

          if (*(this + 72))
          {
            if (!*v17)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              applesauce::CF::construct_error(exception);
            }

            if (applesauce::CF::details::has_key<__CFString const*&>(*v17, kHOANFCIRCustomURLParamName))
            {
              v22 = *(this + 72);
              v23 = *(this + 2);
              v24 = *(this + 3);
              v25 = applesauce::CF::DictionaryRef::operator->(this + 4);
              applesauce::CF::details::find_at_key_or_optional<applesauce::CF::URLRef,__CFString const*&>(__p, *v25, kHOANFCIRCustomURLParamName);
              v126 = __p[0];
              __p[0] = 0;
              v26 = (**v22)(v22, v24, 128, 512, &v126, 0, 1, v23);
              applesauce::CF::URLRef::~URLRef(&v126);
              std::optional<applesauce::CF::URLRef>::~optional(__p);
              if (!v26)
              {
                HOASpatializer::initializeNFCDelaysAndBuffers(this);
                *(this + 17) = 1;
                *(this + 288) = 1;
                atomic_store(0, this + 290);
              }
            }
          }
        }
      }

      v27 = *(this + 6);
      if (*(v27 + 82))
      {
        v28 = a8;
      }

      else
      {
        v28 = 0.0;
      }

      v29 = *(this + 71);
      if (v29 && *(v29 + 208) == 1 && (v30 = **(v29 + 160)) != 0)
      {
        v124 = *(*(v30 + 24) + 168);
      }

      else
      {
        v124 = 0;
      }

      v35 = *(v27 + 52);
      if (*(this + 288) & 1) != 0 || (v36 = atomic_load(this + 380), (v36) || *(this + 17) == 1)
      {
        v37 = *(this + 71);
        if (v37)
        {
          if (v37[208] == 1)
          {
            v38 = *(this + 6);
            v39 = fabsf(*(v38 + 12)) >= 0.00000011921 || (fabsf(*(v38 + 16)) >= 0.00000011921);
            (*(*v37 + 56))(v37, v39);
            v40 = fabsf(*(this + 19)) >= 0.00000011921 || (fabsf(*(this + 20)) >= 0.00000011921);
            SourceExtentProcessor::updateExtentParameters(*(this + 71), *(*(this + 6) + 12), *(*(this + 6) + 16));
            (*(**(this + 71) + 40))(*(this + 71), *(this + 17), v40);
          }

          else
          {
            (*(*v37 + 56))(v37, 0);
            LODWORD(v40) = 0;
          }

          if ((*(this + 17) & 1) == 0)
          {
            if (v40 || (*(*(this + 71) + 209) & 1) == 0)
            {
              if (v40 && (*(*(this + 71) + 209) & 1) == 0)
              {
                HOASpatializer::calculateEncoderGains(this, **(this + 6), *(*(this + 6) + 4));
                std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 41, *(this + 44), *(this + 45), (*(this + 45) - *(this + 44)) >> 2);
              }
            }

            else
            {
              HOA::RotationMatrix::setRotationMatrixYPR(*(this + 68), **(this + 6), *(*(this + 6) + 4), 0.0);
              *(this + 560) = 0;
            }
          }
        }

        v46 = *(this + 6);
        *(this + 76) = *(v46 + 12);
        if ((*(this + 17) & 1) != 0 || *(this + 16) != *v46 || *(this + 17) != *(v46 + 4) || *(this + 18) != *(v46 + 8))
        {
          v47 = fabsf(*(v46 + 8)) / 0.05;
          if (v47 <= 1.0)
          {
            v48 = v47;
          }

          else
          {
            v48 = 1.0;
          }

          memcpy(*(this + 56), *(this + 53), *(this + 54) - *(this + 53));
          v49 = 0;
          v50 = 0;
          v51 = *(*(this + 40) + 4);
          v52 = *(this + 53);
          if ((v51 + 1) > 1)
          {
            v53 = (v51 + 1);
          }

          else
          {
            v53 = 1;
          }

          do
          {
            *v54.i32 = powf(v48, v50);
            v55 = vdupq_n_s64(2 * (v50 & 0x7FFFFFFF));
            v56 = (((4 * (v50 * v50)) & 0x3FFFFFFFCLL) + v52 + 8);
            v57 = -4;
            do
            {
              v58 = vdupq_n_s64(v57 + 4);
              v59 = vmovn_s64(vcgeq_u64(v55, vorrq_s8(v58, xmmword_1DE095160)));
              if (vuzp1_s16(v59, v54).u8[0])
              {
                *(v56 - 2) = v54.i32[0];
              }

              if (vuzp1_s16(v59, v54).i8[2])
              {
                *(v56 - 1) = v54.i32[0];
              }

              if (vuzp1_s16(v54, vmovn_s64(vcgeq_u64(v55, vorrq_s8(v58, xmmword_1DE095150)))).i32[1])
              {
                *v56 = v54.i32[0];
                v56[1] = v54.i32[0];
              }

              v57 += 4;
              v56 += 4;
            }

            while (2 * (v49 & 0x7FFFFFFF) - 2 * (v49 & 1) != v57);
            ++v50;
            ++v49;
          }

          while (v50 != v53);
          v60 = *(this + 72);
          if (v60)
          {
            (*(*v60 + 72))(v60, 2, 0, *(*(this + 6) + 8));
            v61 = *(this + 72);
            if (v61[208] == 1)
            {
              if (*(this + 17))
              {
                v62 = 0;
              }

              else
              {
                v62 = v61[209];
              }

              (*(*v61 + 56))(v61, *(*(this + 6) + 8) < 1.0);
              (*(**(this + 72) + 40))(*(this + 72), *(this + 17), v62 & 1);
            }

            else
            {
              (*(*v61 + 56))(v61, 0);
            }
          }

          v63 = *(this + 71);
          if (!v63 || *(v63 + 209) != 1)
          {
            goto LABEL_119;
          }

          v64 = *(this + 68);
          v65 = *(this + 69);
          if (v65 != v64)
          {
            std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(*(this + 69), *v64, *(v64 + 8), (*(v64 + 8) - *v64) >> 2);
            v66 = *(v65 + 24);
            v67 = *(v64 + 24);
            v68 = *(v64 + 32);
            v69 = v68 - v67;
            v70 = *(v65 + 40);
            if (v70 - v66 < (v68 - v67))
            {
              v71 = v69 >> 4;
              if (v66)
              {
                *(v65 + 32) = v66;
                operator delete(v66);
                v71 = v69 >> 4;
                v70 = 0;
                *(v65 + 24) = 0;
                *(v65 + 32) = 0;
                *(v65 + 40) = 0;
              }

              if (!(v71 >> 60))
              {
                v72 = v70 >> 3;
                if (v70 >> 3 <= v71)
                {
                  v72 = v71;
                }

                if (v70 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v73 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v73 = v72;
                }

                std::vector<std::span<float,18446744073709551615ul>>::__vallocate[abi:ne200100](v65 + 24, v73);
              }

              std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
            }

            v80 = *(v65 + 32);
            v81 = v80 - v66;
            if (v80 - v66 >= v69)
            {
              if (v68 != v67)
              {
                memmove(v66, v67, v69);
              }

              v74 = &v66[v69];
            }

            else
            {
              if (v80 != v66)
              {
                v82 = *(v64 + 24);
                v83 = v81;
                v84 = *(v64 + 32);
                memmove(*(v65 + 24), v67, v81);
                v81 = v83;
                v68 = v84;
                v67 = v82;
                v80 = *(v65 + 32);
              }

              v85 = &v67[v81];
              v86 = v68 - v85;
              if (v68 != v85)
              {
                memmove(v80, v85, v68 - v85);
              }

              v74 = &v80[v86];
            }

            *(v65 + 32) = v74;
          }

          v87 = *(v64 + 48);
          *(v65 + 52) = *(v64 + 52);
          *(v65 + 48) = v87;
          HOA::RotationMatrix::setRotationMatrixYPR(*(this + 68), **(this + 6), *(*(this + 6) + 4), 0.0);
          *(this + 560) = *(this + 17) ^ 1;
          v88 = *(this + 71);
          if (!v88 || (*(v88 + 209) & 1) == 0 || *(this + 96) > v124)
          {
LABEL_119:
            result = HOASpatializer::calculateEncoderGains(this, **(this + 6), *(*(this + 6) + 4));
            if (result)
            {
              return result;
            }

            if (*(this + 17) == 1)
            {
              std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 41, *(this + 44), *(this + 45), (*(this + 45) - *(this + 44)) >> 2);
            }
          }

          v89 = *(this + 6);
          *(this + 8) = *v89;
          *(this + 18) = *(v89 + 8);
        }

        *(this + 288) = 0;
        *(this + 17) = 0;
        atomic_store(0, this + 380);
      }

      v90 = *(this + 71);
      if (v90)
      {
        v91 = a2;
        if (*(v90 + 208) == 1)
        {
          if (*(v90 + 212))
          {
            v92 = 1;
          }

          else
          {
            v92 = *(v90 + 209);
          }
        }

        else
        {
          v92 = 0;
        }
      }

      else
      {
        v92 = 0;
        v91 = a2;
      }

      v93 = *(this + 72);
      if (v93 && *(v93 + 208) == 1)
      {
        v94 = **(v93 + 160);
        if (v94)
        {
          LODWORD(v94) = *(*(v94 + 24) + 168);
        }

        if (v94 >= v12)
        {
          v95 = v12;
        }

        else
        {
          v95 = v94;
        }

        __src = v95;
        if (*(v93 + 212))
        {
          v96 = 1;
        }

        else
        {
          v96 = *(v93 + 209);
        }
      }

      else
      {
        __src = 0;
        v96 = 0;
      }

      v97 = v91;
      if (*(this + 49))
      {
        IR::FixedIntegerDelay<float>::process();
      }

      if (v92)
      {
        (*(**(this + 71) + 8))(*(this + 71), v28 * (1.0 - v35));
        HOASpatializer::rotateAccumulating(this, a5, a5, a7);
        if (v124)
        {
          for (i = 0; i != v124; ++i)
          {
            v99 = *(this + 71);
            if (*(v99 + 212) || *(v99 + 216))
            {
              HOASpatializer::gainBasedProcessing(this, v97, *(this + 76), i, a7, v28 * (1.0 - v35));
              (*(**(this + 71) + 24))(*(this + 71), *(this + 76), a5[i], 0, i, a7);
            }
          }
        }

        (*(**(this + 71) + 48))(*(this + 71), a7);
        v100 = v124;
      }

      else
      {
        v100 = 0;
      }

      if (v100 < *(this + 96))
      {
        v101 = v100;
        do
        {
          HOASpatializer::gainBasedProcessing(this, v97, a5[v101], v101, a7, v28 * (1.0 - v35));
          ++v101;
        }

        while (v101 < *(this + 96));
      }

      v102 = *(this + 72);
      if (v102 && v102[208] == 1)
      {
        if (v96)
        {
          (*(*v102 + 16))(v102, a5, *(this + 82), 0, __src, __src, a7, *(this + 73), 1.0);
          if (__src)
          {
            v103 = 0;
            v104 = 0;
            do
            {
              v105 = *(this + 50);
              if (v104 < (*(this + 51) - v105) >> 3 && *(v105 + 8 * v104))
              {
                IR::FixedIntegerDelay<float>::process();
              }

              v106 = *(this + 72);
              if (v106[53] || v106[54])
              {
                v107 = *(this + 50);
                if (v104 >= (*(this + 51) - v107) >> 3 || (v108 = *(v107 + 8 * v104), v109 = (this + 584), !v108))
                {
                  v109 = &a5[v103];
                }

                (*(*v106 + 24))(v106, *v109, *(*(this + 82) + 8 * v104), 0, v104, a7);
              }

              MEMORY[0x1E12BE5D0](*(*(this + 82) + 8 * v104), 1, a3[v104], 1, a3[v104], 1, a7);
              ++v104;
              ++v103;
            }

            while (__src != v104);
          }
        }

        else if (__src)
        {
          v112 = 0;
          v113 = 0;
          do
          {
            v114 = *(this + 50);
            if (v113 < (*(this + 51) - v114) >> 3 && *(v114 + v112 * 8))
            {
              IR::FixedIntegerDelay<float>::process();
            }

            MEMORY[0x1E12BE5D0](a5[v112], 1, a3[v112], 1, a3[v112], 1, a7);
            ++v113;
            ++v112;
          }

          while (__src != v112);
        }

        (*(**(this + 72) + 48))(*(this + 72), a7);
        v115 = v12 - __src;
        if (v12 > __src)
        {
          v116 = __src;
          v117 = __src;
          do
          {
            v118 = *(this + 50);
            if (v117 < (*(this + 51) - v118) >> 3 && *(v118 + v116 * 8))
            {
              IR::FixedIntegerDelay<float>::process();
            }

            MEMORY[0x1E12BE5D0](a5[v116], 1, a3[v116], 1, a3[v116], 1, a7);
            ++v117;
            ++v116;
            --v115;
          }

          while (v115);
        }
      }

      else if (v12)
      {
        v110 = a5;
        v111 = a3;
        v12 = v12;
        do
        {
          MEMORY[0x1E12BE5D0](*v110, 1, *v111, 1, *v111, 1, a7);
          ++v111;
          ++v110;
          --v12;
        }

        while (v12);
      }

      v119 = *(this + 88);
      if (v119)
      {
        if (*(*(this + 6) + 52) > 0.0)
        {
          v120 = *(this + 96);
          __p[0] = a2;
          IR::IRProcessor::processMultipleInputs(v119, __p, a5, 1u, v120, a7, v35 * v28, 0);
          if (*(this + 96))
          {
            v121 = 0;
            do
            {
              MEMORY[0x1E12BE5D0](a5[v121], 1, a3[v121], 1, a3[v121], 1, a7);
              ++v121;
            }

            while (v121 < *(this + 96));
          }
        }
      }

      result = 0;
      *(this + 146) = *(*(this + 6) + 82);
    }

    else
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v34 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        std::string::basic_string[abi:ne200100]<0>(&v128, "HOASpatializer");
        v75 = std::string::append(&v128, "::", 2uLL);
        v76 = *&v75->__r_.__value_.__l.__data_;
        v129.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
        *&v129.__r_.__value_.__l.__data_ = v76;
        v75->__r_.__value_.__l.__size_ = 0;
        v75->__r_.__value_.__r.__words[2] = 0;
        v75->__r_.__value_.__r.__words[0] = 0;
        v77 = std::string::append(&v129, "processAccumulating", 0x13uLL);
        v78 = *&v77->__r_.__value_.__l.__data_;
        v131 = v77->__r_.__value_.__r.__words[2];
        *__p = v78;
        v77->__r_.__value_.__l.__size_ = 0;
        v77->__r_.__value_.__r.__words[2] = 0;
        v77->__r_.__value_.__r.__words[0] = 0;
        v79 = __p;
        if (v131 < 0)
        {
          v79 = __p[0];
        }

        *buf = 136315138;
        v133 = v79;
        _os_log_debug_impl(&dword_1DDB85000, v34, OS_LOG_TYPE_DEBUG, "%s: ERROR: not initialized", buf, 0xCu);
        if (SHIBYTE(v131) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v129.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v128.__r_.__value_.__l.__data_);
        }
      }

      return 4294956429;
    }
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v32 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      std::string::basic_string[abi:ne200100]<0>(&v128, "HOASpatializer");
      v41 = std::string::append(&v128, "::", 2uLL);
      v42 = *&v41->__r_.__value_.__l.__data_;
      v129.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
      *&v129.__r_.__value_.__l.__data_ = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v129, "processAccumulating", 0x13uLL);
      v44 = *&v43->__r_.__value_.__l.__data_;
      v131 = v43->__r_.__value_.__r.__words[2];
      *__p = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = __p;
      if (v131 < 0)
      {
        v45 = __p[0];
      }

      *buf = 136315394;
      v133 = v45;
      v134 = 1024;
      v135 = a4;
      _os_log_debug_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_DEBUG, "%s: ERROR: cannot process with %d output channels", buf, 0x12u);
      if (SHIBYTE(v131) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v129.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v128.__r_.__value_.__l.__data_);
      }
    }

    return 4294956445;
  }

  return result;
}

void sub_1DDFA75E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  applesauce::CF::URLRef::~URLRef(&a16);
  std::optional<applesauce::CF::URLRef>::~optional(&a33);
  _Unwind_Resume(a1);
}

void *HOASpatializer::initializeSEDelaysAndBuffers(HOASpatializer *this)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(this + 71))
  {
    operator new();
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v2 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    std::string::basic_string[abi:ne200100]<0>(&v9, "HOASpatializer");
    v4 = std::string::append(&v9, "::", 2uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v10.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v10.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v10, "initializeSEDelaysAndBuffers", 0x1CuLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v12 = v6->__r_.__value_.__r.__words[2];
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = __p;
    if (v12 < 0)
    {
      v8 = __p[0];
    }

    *buf = 136315138;
    v14 = v8;
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%s: SourceExtentProcessor is not available, HOASpatializer will ignore source extent", buf, 0xCu);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  *(this + 5) = 0;
  std::unique_ptr<HOA::RotationMatrix>::reset[abi:ne200100](this + 68, 0);
  std::unique_ptr<HOA::RotationMatrix>::reset[abi:ne200100](this + 69, 0);
  *(this + 63) = *(this + 62);
  *(this + 66) = *(this + 65);
  return std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](this + 49, 0);
}

void sub_1DDFA7A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void HOASpatializer::initializeNFCDelaysAndBuffers(HOASpatializer *this)
{
  v2 = *(this + 72);
  if (v2)
  {
    if (*(v2 + 208) == 1 && (v3 = **(v2 + 160)) != 0 && (*(**(v3 + 24) + 88))(*(v3 + 24)))
    {
      v4 = *(this + 72);
      if (*(v4 + 208) == 1 && (v5 = **(v4 + 160)) != 0)
      {
        v6 = (*(**(v5 + 24) + 72))(*(v5 + 24));
        v4 = *(this + 72);
        v7 = v6 + 128;
      }

      else
      {
        v7 = 128;
      }

      if (v7 > *(v4 + 220))
      {
        *(v4 + 220) = v7;
      }

      std::vector<std::unique_ptr<IR::FixedIntegerDelay<float>>>::resize(this + 50, *(this + 96));
      if (*(this + 96))
      {
        operator new();
      }
    }

    else
    {
      v9 = *(this + 50);
      for (i = *(this + 51); i != v9; std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](i, 0))
      {
        --i;
      }

      *(this + 51) = v9;
    }

    v10 = *(this + 72);
    if (*(v10 + 208) == 1 && (v11 = **(v10 + 160)) != 0)
    {
      v12 = *(*(v11 + 24) + 168);
    }

    else
    {
      v12 = 0;
    }

    std::vector<float *>::resize(this + 82, v12);
    v13 = *(this + 72);
    if (*(v13 + 208) == 1)
    {
      v14 = **(v13 + 160);
      if (v14)
      {
        LODWORD(v14) = *(*(v14 + 24) + 168);
      }
    }

    else
    {
      LODWORD(v14) = 0;
    }

    std::vector<float>::resize(this + 85, (*(this + 3) * v14));
    vDSP_vclr(*(this + 85), 1, (*(this + 86) - *(this + 85)) >> 2);
    v17 = 0;
    v18 = *(this + 85);
    while (1)
    {
      v19 = *(this + 72);
      if (*(v19 + 208) == 1)
      {
        v20 = **(v19 + 160);
        if (v20)
        {
          v20 = *(*(v20 + 24) + 168);
        }
      }

      else
      {
        v20 = 0;
      }

      if (v17 >= v20)
      {
        break;
      }

      *(*(this + 82) + 8 * v17) = v18;
      v18 += 4 * *(this + 3);
      ++v17;
    }
  }

  else
  {
    v16 = *(this + 50);
    for (j = *(this + 51); j != v16; std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](j, 0))
    {
      --j;
    }

    *(this + 51) = v16;
  }
}

uint64_t HOASpatializer::calculateEncoderGains(HOASpatializer *this, float a2, float a3)
{
  v6 = a3;
  v7 = a2;
  v4 = *(this + 40);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  result = HOA::createEncoder(v4, &v7, &v6, 1uLL, *(this + 44), *(this + 96));
  if (!result)
  {
    MEMORY[0x1E12BE7F0](*(this + 44), 1, *(this + 53), 1, *(this + 44), 1, *(this + 96));
    return 0;
  }

  return result;
}

void HOASpatializer::rotateAccumulating(HOASpatializer *this, float *const *a2, float *const *a3, vDSP_Length __N)
{
  v60 = *MEMORY[0x1E69E9840];
  if (*(this + 16))
  {
    v4 = __N;
    v8 = *(this + 71);
    if (*(v8 + 208) == 1 && (v9 = **(v8 + 160)) != 0)
    {
      v10 = *(*(v9 + 24) + 168);
    }

    else
    {
      v10 = 0;
    }

    v18 = *(this + 6);
    if (fabsf(*v18) >= 0.00000011921 || fabsf(v18[1]) >= 0.00000011921)
    {
      bzero(*(this + 62), *(this + 63) - *(this + 62));
      MEMORY[0x1EEE9AC00](v31);
      v33 = &v51[-((v32 + 15) & 0xFFFFFFFF0)];
      if (v32 >= 0x200)
      {
        v34 = 512;
      }

      else
      {
        v34 = v32;
      }

      bzero(&v51[-((v32 + 15) & 0xFFFFFFFF0)], v34);
      v35 = *(this + 96);
      if (v35)
      {
        v36 = *(this + 62);
        v37 = *(this + 96);
        v38 = v33;
        do
        {
          *v38++ = v36;
          v36 += 4 * v4;
          --v37;
        }

        while (v37);
      }

      HOA::RotationMatrix::applyLeftAccumulating(*(this + 68), a2, v35, v33, v35, v4);
      if (*(this + 560) == 1)
      {
        bzero(*(this + 65), *(this + 66) - *(this + 65));
        MEMORY[0x1EEE9AC00](v39);
        v41 = &v51[-((v40 + 15) & 0xFFFFFFFF0)];
        if (v40 >= 0x200)
        {
          v42 = 512;
        }

        else
        {
          v42 = v40;
        }

        bzero(&v51[-((v40 + 15) & 0xFFFFFFFF0)], v42);
        v43 = *(this + 96);
        if (v43)
        {
          v44 = *(this + 65);
          v45 = *(this + 96);
          v46 = v41;
          do
          {
            *v46++ = v44;
            v44 += 4 * v4;
            --v45;
          }

          while (v45);
        }

        HOA::RotationMatrix::applyLeftAccumulating(*(this + 69), a2, v43, v41, v43, v4);
      }

      if (v10)
      {
        v47 = 0;
        v48 = 0;
        v49 = v4;
        do
        {
          v50 = *(*(this + 53) + 4 * v48) * *(*(this + 59) + 4 * v48);
          *&v56 = v50;
          if (*(this + 560) == 1)
          {
            LODWORD(v55.__r_.__value_.__l.__data_) = 0;
            *__Step = v50 / v49;
            vDSP_vrampmul((*(this + 62) + 4 * v47), 1, &v55, __Step, a3[v48], 1, v4);
            *buf = *(*(this + 56) + 4 * v48) * *(*(this + 59) + 4 * v48);
            v52 = -*buf / v49;
            vDSP_vrampmuladd((*(this + 65) + 4 * v47), 1, buf, &v52, a3[v48], 1, v4);
          }

          else
          {
            MEMORY[0x1E12BE940](*(this + 62) + 4 * v47, 1, &v56, a3[v48], 1, v4);
          }

          ++v48;
          v47 += v4;
        }

        while (v10 != v48);
      }
    }

    else
    {
      if (*(this + 560) == 1)
      {
        bzero(*(this + 65), *(this + 66) - *(this + 65));
        MEMORY[0x1EEE9AC00](v19);
        v21 = &v51[-((v20 + 15) & 0xFFFFFFFF0)];
        if (v20 >= 0x200)
        {
          v22 = 512;
        }

        else
        {
          v22 = v20;
        }

        bzero(&v51[-((v20 + 15) & 0xFFFFFFFF0)], v22);
        v23 = *(this + 96);
        if (v23)
        {
          v24 = *(this + 65);
          v25 = *(this + 96);
          v26 = v21;
          do
          {
            *v26++ = v24;
            v24 += 4 * v4;
            --v25;
          }

          while (v25);
        }

        HOA::RotationMatrix::applyLeftAccumulating(*(this + 69), a2, v23, v21, v23, v4);
      }

      if (v10)
      {
        v27 = 0;
        v28 = 0;
        v29 = v4;
        do
        {
          v30 = *(*(this + 53) + 4 * v28) * *(*(this + 59) + 4 * v28);
          *&v56 = v30;
          if (*(this + 560) == 1)
          {
            LODWORD(v55.__r_.__value_.__l.__data_) = 0;
            *__Step = v30 / v29;
            vDSP_vrampmul(a2[v28], 1, &v55, __Step, a3[v28], 1, v4);
            *buf = *(*(this + 56) + 4 * v28) * *(*(this + 59) + 4 * v28);
            v52 = -*buf / v29;
            vDSP_vrampmuladd((*(this + 65) + 4 * v27), 1, buf, &v52, a3[v28], 1, v4);
          }

          else
          {
            MEMORY[0x1E12BE940](a2[v28], 1, &v56, a3[v28], 1, v4);
          }

          ++v28;
          v27 += v4;
        }

        while (v10 != v28);
      }
    }

    *(this + 560) = 0;
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v11 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v12 = std::string::basic_string[abi:ne200100]<0>(__Step, "HOASpatializer");
      v13 = std::string::append(v12, "::", 2uLL);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v55.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v55.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      v15 = std::string::append(&v55, "rotateAccumulating", 0x12uLL);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v57 = v15->__r_.__value_.__r.__words[2];
      v56 = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v17 = &v56;
      if (v57 < 0)
      {
        v17 = v56;
      }

      *buf = 4.8149e-34;
      v59 = v17;
      _os_log_debug_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEBUG, "%s: ERROR: not initialized", buf, 0xCu);
      if (SHIBYTE(v57) < 0)
      {
        operator delete(v56);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (v54 < 0)
      {
        operator delete(__Step[0]);
      }
    }
  }
}

void sub_1DDFA83E4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  if (*(v1 - 193) < 0)
  {
    operator delete(*(v1 - 216));
  }

  _Unwind_Resume(exception_object);
}

void HOASpatializer::gainBasedProcessing(HOASpatializer *this, const float *__I, float *__O, unsigned int a4, vDSP_Length __N, float a6)
{
  v6 = *(this + 41);
  v7 = *(v6 + 4 * a4);
  __Start = v7;
  v8 = *(*(this + 44) + 4 * a4) * a6;
  v9 = v8;
  if (!*(this + 73))
  {
    v9 = v8 + (*(this + 94) * (v7 - v8));
  }

  *(v6 + 4 * a4) = v9;
  __Step = (v9 - v7) / __N;
  if (fabsf(__Step) <= 0.000001)
  {
    if (fabsf(v7) <= 0.000001)
    {

      bzero(__O, 4 * __N);
    }

    else
    {
      *(v6 + 4 * a4) = v8;
      MEMORY[0x1E12BE940](__I, 1, &__Start, __O, 1, __N);
    }
  }

  else
  {
    vDSP_vrampmul(__I, 1, &__Start, &__Step, __O, 1, __N);
  }
}

uint64_t HOASpatializer::reset(HOASpatializer *this)
{
  *(this + 17) = 1;
  *(this + 146) = *(*(this + 6) + 82);
  vDSP_vclr(*(this + 41), 1, (*(this + 42) - *(this + 41)) >> 2);
  vDSP_vclr(*(this + 85), 1, (*(this + 86) - *(this + 85)) >> 2);
  v2 = *(this + 71);
  if (v2)
  {
    (*(*v2 + 32))(v2, 1);
  }

  if (*(this + 49))
  {
    IR::FixedIntegerDelay<float>::reset();
  }

  result = *(this + 72);
  if (result)
  {
    result = (*(*result + 32))(result, 1);
  }

  v5 = *(this + 50);
  v4 = *(this + 51);
  if (v4 != v5)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      result = *(v5 + 8 * v6);
      if (result)
      {
        IR::FixedIntegerDelay<float>::reset();
      }

      v6 = v7++;
    }

    while (v6 < (v4 - v5) >> 3);
  }

  return result;
}

uint64_t HOASpatializer::initialize(HOASpatializer *this, float a2, unsigned int a3, unsigned int a4)
{
  v64 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v8 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v21 = std::string::basic_string[abi:ne200100]<0>(&v62, "HOASpatializer");
    v22 = std::string::append(v21, "::", 2uLL);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v40, "initialize", 0xAuLL);
    v25 = *&v24->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = p_p;
    _os_log_debug_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEBUG, "%s: Initializing.", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }
  }

  *(this + 16) = 0;
  v9 = *(this + 40);
  if (!v9 || *(v9 + 28) != 1 || (*(v9 + 4) + 1) * (*(v9 + 4) + 1) != *(this + 96))
  {
    return 4294956421;
  }

  *(this + 2) = a2;
  *(this + 3) = a4;
  v10 = a2 * 0.001953125 * 0.02;
  if (v10 < 2.22507386e-308)
  {
    v10 = 2.22507386e-308;
  }

  v11 = -6.90775528 / v10;
  v12 = exp(-6.90775528 / v10);
  if (v11 < -708.4)
  {
    v12 = 0.0;
  }

  v13 = v12;
  *(this + 94) = v13;
  if (a3 < ((*(this + 45) - *(this + 44)) >> 2))
  {
    return 4294900553;
  }

  if (*(this + 561) == 1 && (v15 = *(this + 5)) != 0)
  {
    v16 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const*&>(v15, kOptionalFeatureSourceExtent);
    v17 = (v16 > 0xFFu) & v16;
    if ((*(this + 561) & 1) != 0 && *(this + 5))
    {
      v18 = applesauce::CF::DictionaryRef::operator->(this + 5);
      v19 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const*&>(*v18, kOptionalFeatureNearFieldHOA);
      v20 = (v19 > 0xFFu) & v19;
      goto LABEL_29;
    }
  }

  else
  {
    v17 = 0;
  }

  v20 = 0;
LABEL_29:
  if ((v17 & 1) != 0 || v20)
  {
    std::vector<float>::resize(this + 73, a4);
  }

  if (v17)
  {
    std::vector<float>::resize(this + 76, a4);
    IR::getPresetDataAttributes();
    v27 = *(this + 4);
    if (v27)
    {
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::URLRef,__CFString const*&>(&v40, v27, kHOASourceExtentIRCustomURLParamName);
      if (v40.__r_.__value_.__s.__data_[8] == 1)
      {
        v28 = v40.__r_.__value_.__r.__words[0];
        applesauce::CF::ObjectRef<__CFURL const*>::operator=(&__p.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__data_);
        if (v28)
        {
          CFRelease(v28);
        }
      }
    }

    operator new();
  }

  std::unique_ptr<SourceExtentProcessor>::reset[abi:ne200100](this + 71, 0);
  HOASpatializer::initializeSEDelaysAndBuffers(this);
  if (v20)
  {
    IR::getPresetDataAttributes();
    v29 = *(this + 4);
    if (v29 && applesauce::CF::details::has_key<__CFString const*&>(v29, kHOANFCIRCustomURLParamName))
    {
      v30 = applesauce::CF::DictionaryRef::operator->(this + 4);
      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::URLRef,__CFString const*&>(&v62, *v30, kHOANFCIRCustomURLParamName);
      v31 = v62.__r_.__value_.__r.__words[0];
      v39 = v62.__r_.__value_.__r.__words[0];
      v62.__r_.__value_.__r.__words[0] = 0;
      IR::IRDataAttributes::IRDataAttributes(&v40, v31, 128, 1, 2, 0, 0.0);
      v32 = __p.__r_.__value_.__r.__words[0];
      __p = v40;
      v54 = v43;
      v33 = v44;
      v40.__r_.__value_.__r.__words[0] = v32;
      v44 = v55;
      v34 = v57;
      v55 = v33;
      v57 = v46;
      v35 = v48;
      v46 = v34;
      v48 = v59;
      v61 = v50;
      v52 = v41;
      v53 = v42;
      v56 = v45;
      *(v58 + 9) = *(v47 + 9);
      v58[0] = v47[0];
      v59 = v35;
      v60 = v49;
      IR::IRDataAttributes::~IRDataAttributes(&v40);
      applesauce::CF::URLRef::~URLRef(&v39);
      std::optional<applesauce::CF::URLRef>::~optional(&v62);
    }

    operator new();
  }

  std::unique_ptr<BypassableIRProcessor>::reset[abi:ne200100](this + 72, 0);
  HOASpatializer::initializeNFCDelaysAndBuffers(this);
  if (*(this + 561) == 1)
  {
    v37 = *(this + 5);
    if (v37)
    {
      v38 = applesauce::CF::details::find_at_key_or_optional<BOOL,__CFString const*&>(v37, kOptionalFeatureSourceDiffuse);
      if (a3 <= 0x10 && v38 >= 0x100u && (v38 & 1) != 0)
      {
        operator new();
      }
    }
  }

  Spatializer::initialize(this, v36, a3);
  return 0;
}

void sub_1DDFA9150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, int a39, __int16 a40, char a41, char a42)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **applesauce::CF::ObjectRef<__CFURL const*>::operator=(const void **a1, CFTypeRef cf)
{
  v3 = *a1;
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void HOASpatializer::~HOASpatializer(HOASpatializer *this)
{
  HOASpatializer::~HOASpatializer(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59319F0;
  std::unique_ptr<IR::IRProcessor>::reset[abi:ne200100](this + 88, 0);
  v2 = *(this + 85);
  if (v2)
  {
    *(this + 86) = v2;
    operator delete(v2);
  }

  v3 = *(this + 82);
  if (v3)
  {
    *(this + 83) = v3;
    operator delete(v3);
  }

  v4 = *(this + 79);
  if (v4)
  {
    *(this + 80) = v4;
    operator delete(v4);
  }

  v5 = *(this + 76);
  if (v5)
  {
    *(this + 77) = v5;
    operator delete(v5);
  }

  v6 = *(this + 73);
  if (v6)
  {
    *(this + 74) = v6;
    operator delete(v6);
  }

  std::unique_ptr<BypassableIRProcessor>::reset[abi:ne200100](this + 72, 0);
  std::unique_ptr<SourceExtentProcessor>::reset[abi:ne200100](this + 71, 0);
  std::unique_ptr<HOA::RotationMatrix>::reset[abi:ne200100](this + 69, 0);
  std::unique_ptr<HOA::RotationMatrix>::reset[abi:ne200100](this + 68, 0);
  v7 = *(this + 65);
  if (v7)
  {
    *(this + 66) = v7;
    operator delete(v7);
  }

  v8 = *(this + 62);
  if (v8)
  {
    *(this + 63) = v8;
    operator delete(v8);
  }

  v9 = *(this + 59);
  if (v9)
  {
    *(this + 60) = v9;
    operator delete(v9);
  }

  v10 = *(this + 56);
  if (v10)
  {
    *(this + 57) = v10;
    operator delete(v10);
  }

  v11 = *(this + 53);
  if (v11)
  {
    *(this + 54) = v11;
    operator delete(v11);
  }

  v14 = (this + 400);
  std::vector<std::unique_ptr<IR::FixedIntegerDelay<float>>>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](this + 49, 0);
  v12 = *(this + 44);
  if (v12)
  {
    *(this + 45) = v12;
    operator delete(v12);
  }

  v13 = *(this + 41);
  if (v13)
  {
    *(this + 42) = v13;
    operator delete(v13);
  }

  std::unique_ptr<HOA>::reset[abi:ne200100](this + 40, 0);

  Spatializer::~Spatializer(this);
}

void BoostClipKernel::ProcessStereoNonInterleaved(BoostClipKernel *this, const AudioBufferList *a2, AudioBufferList *a3, unsigned int a4, BOOL *a5, __n128 a6)
{
  v10 = *(this + 1);
  if (*(this + 41) != a4)
  {
    if ((a4 & 0x1F) != 0)
    {
      HIDWORD(v11) = -286331153 * a4;
      LODWORD(v11) = -286331153 * a4;
      if ((v11 >> 1) < 0x8888889)
      {
        v13 = 30;
      }

      else
      {
        HIDWORD(v12) = -1431655765 * a4;
        LODWORD(v12) = -1431655765 * a4;
        if ((v12 >> 3) > 0xAAAAAAA)
        {
          return;
        }

        v13 = 24;
      }
    }

    else
    {
      v13 = 32;
    }

    *(this + 40) = v13;
    *(this + 41) = a4;
  }

  v14 = v10[148];
  if (v14 != *(this + 42))
  {
    a6.n128_u64[0] = BoostClipKernel::CalculateCoeffs(this);
    *(this + 42) = v14;
  }

  if (((*(*v10 + 592))(v10, a6) & 1) == 0)
  {
    BoostClipKernel::UpdateTimeConstants(this);
    if (a4)
    {
      v15 = 0;
      v16 = *(this + 40);
      v60 = *&a2[1].mBuffers[0].mNumberChannels;
      mData = a2->mBuffers[0].mData;
      v58 = *&a3[1].mBuffers[0].mNumberChannels;
      v59 = a3->mBuffers[0].mData;
      do
      {
        v17 = (v58 + 4 * v15);
        v18 = &v59[4 * v15];
        v19 = (v60 + 4 * v15);
        __C = 0.0;
        v20 = &mData[4 * v15];
        vDSP_maxmgv(v20->f32, 1, &__C, v16);
        v21 = __C;
        __C = 0.0;
        vDSP_maxmgv(v19->f32, 1, &__C, v16);
        if (v21 >= __C)
        {
          v22 = v21;
        }

        else
        {
          v22 = __C;
        }

        if (*(this + 173) == 1)
        {
          v23 = *(this + 6);
          if (v22 >= v23)
          {
            v24 = v22;
          }

          else
          {
            v24 = *(this + 6);
          }

          if (v16)
          {
            v25 = (this + 176);
            v26 = &v59[4 * v15];
            v27 = v16;
            do
            {
              v28 = v20->f32[0];
              v20 = (v20 + 4);
              *v26 = *v25;
              v26 += 4;
              *v25++ = v28;
              --v27;
            }

            while (v27);
            v29 = (this + 4 * v16 + 176);
            v30 = (v58 + 4 * v15);
            v31 = v16;
            do
            {
              v32 = v19->f32[0];
              v19 = (v19 + 4);
              *v30++ = *v29;
              *v29++ = v32;
              --v31;
            }

            while (v31);
          }

          v20 = &v59[4 * v15];
          v19 = (v58 + 4 * v15);
        }

        else
        {
          v23 = v22;
          v24 = v22;
        }

        BoostClipKernel::CalcBoostGain(this, v24);
        v33 = *(this + 40);
        v34 = *(this + 5);
        v35 = *(this + 8);
        __C = v35;
        v36.f32[0] = v34 - v35;
        v37 = (v34 - v35) / v33;
        if (*(this + 172) == 1 && (v34 >= v35 ? (v38 = v34) : (v38 = v35), v39 = v38 * v23, v36.i32[0] = *(this + 34), v39 > v36.f32[0]))
        {
          if (v36.f32[0] >= 1.0)
          {
            if (v33)
            {
              do
              {
                v50 = v20->f32[0];
                v20 = (v20 + 4);
                v51 = v50 * v35;
                if ((v50 * v35) >= -1.0)
                {
                  v52 = v51;
                }

                else
                {
                  v52 = -1.0;
                }

                if (v51 <= 1.0)
                {
                  v53 = v52;
                }

                else
                {
                  v53 = 1.0;
                }

                v18->f32[0] = v53;
                v18 = (v18 + 4);
                v54 = v19->f32[0];
                v19 = (v19 + 4);
                v55 = v35 * v54;
                if ((v35 * v54) >= -1.0)
                {
                  v56 = v55;
                }

                else
                {
                  v56 = -1.0;
                }

                if (v55 <= 1.0)
                {
                  v57 = v56;
                }

                else
                {
                  v57 = 1.0;
                }

                v17->f32[0] = v57;
                v17 = (v17 + 4);
                v35 = v37 + v35;
                --v33;
              }

              while (v33);
            }
          }

          else if (v33)
          {
            v40 = *(this + 37) * 0.000000059605;
            v41 = *(this + 36) * 0.000000059605;
            v42 = *(this + 35) * 0.000000059605;
            v43 = -v42;
            v44 = -v41;
            do
            {
              v45 = v20->f32[0] * v35;
              if (v45 >= 0.0)
              {
                if (v45 <= v42)
                {
LABEL_43:
                  v46 = v20->f32[0] * v35;
                  goto LABEL_44;
                }

                v46 = 1.0;
                if (v45 < v41)
                {
                  v46 = (((v45 - v41) * (v45 - v41)) * v40) + 1.0;
                }
              }

              else
              {
                if (v45 >= v43)
                {
                  goto LABEL_43;
                }

                v46 = -1.0;
                if (v45 >= v44)
                {
                  v46 = (-((-v45 - v41) * (-v45 - v41)) * v40) + -1.0;
                }
              }

LABEL_44:
              v18->f32[0] = v46;
              v47 = v35 * v19->f32[0];
              if (v47 >= 0.0)
              {
                if (v47 > v42)
                {
                  v48 = 1.0;
                  if (v47 < v41)
                  {
                    v48 = (((v47 - v41) * (v47 - v41)) * v40) + 1.0;
                  }

                  goto LABEL_52;
                }
              }

              else if (v47 < v43)
              {
                v48 = -1.0;
                if (v47 >= v44)
                {
                  v48 = (-((-v47 - v41) * (-v47 - v41)) * v40) + -1.0;
                }

                goto LABEL_52;
              }

              v48 = v35 * v19->f32[0];
LABEL_52:
              v17->f32[0] = v48;
              v17 = (v17 + 4);
              v35 = v37 + v35;
              v19 = (v19 + 4);
              v18 = (v18 + 4);
              v20 = (v20 + 4);
              --v33;
            }

            while (v33);
          }
        }

        else if (v34 == v35)
        {
          MEMORY[0x1E12BE940](v20, 1, &__C, v18, 1, v33);
          MEMORY[0x1E12BE940](v19, 1, &__C, v17, 1, v33);
        }

        else
        {
          v62 = v35;
          v63 = v35;
          RampGainMono(v20, v18, v33, &v63, (v34 - v35) / v33, v36);
          RampGainMono(v19, v17, v33, &v62, v37, v49);
        }

        *(this + 8) = v34;
        *(this + 6) = v22;
        v15 += v16;
      }

      while (v15 < a4);
    }
  }
}

int32x2_t BoostClipKernel::CalculateCoeffs(BoostClipKernel *this)
{
  v2 = *(this + 1);
  Parameter = ausdk::AUEffectBase::GetParameter(v2, 0x7063676Eu);
  v4 = ausdk::AUEffectBase::GetParameter(v2, 0x5F737776u);
  v19 = ausdk::AUEffectBase::GetParameter(v2, 0x626F6F66u);
  v16 = ausdk::AUEffectBase::GetParameter(v2, 0x63757466u);
  v20 = ausdk::AUEffectBase::GetParameter(v2, 0x74687273u);
  v18 = ausdk::AUEffectBase::GetParameter(v2, 0x6E6F6973u);
  v17 = ausdk::AUEffectBase::GetParameter(v2, 0x6D617867u);
  v5 = ausdk::AUEffectBase::GetParameter(v2, 0x6365696Cu);
  v15 = ausdk::AUEffectBase::GetParameter(v2, 0x766F6C74u);
  v6 = ausdk::AUEffectBase::GetParameter(v2, 0x61746B74u);
  v7 = ausdk::AUEffectBase::GetParameter(v2, 0x72656C74u);
  v8 = ausdk::AUEffectBase::GetParameter(v2, 0x6E61746Bu);
  v9 = ausdk::AUEffectBase::GetParameter(v2, 0x6E72656Cu);
  v10 = ausdk::AUEffectBase::GetParameter(v2, 0x636C6970u);
  *(this + 173) = ausdk::AUEffectBase::GetParameter(v2, 0x6D6F6465u) != 0.0;
  *(this + 172) = ausdk::AUEffectBase::GetParameter(v2, 0x7363656Eu) != 0.0;
  if (v4 < v5)
  {
    v5 = v4;
  }

  *(this + 23) = v19;
  *(this + 24) = v16 * 10.0;
  *(this + 25) = Parameter;
  v11 = __exp10f(v4 * 0.05);
  *(this + 38) = v20;
  *(this + 39) = v18;
  *(this + 26) = fminf(v11, 100.0);
  *(this + 27) = v17;
  *(this + 28) = fmaxf(v15, 0.0001);
  *(this + 29) = fmaxf(v6, 0.0001);
  *(this + 30) = fmaxf(v7, 0.001);
  *(this + 31) = fmaxf(v8, 0.0001);
  *(this + 32) = fmaxf(v9, 0.001);
  *(this + 33) = fmaxf(__exp10f(v5 * 0.05), 0.001);
  v12 = __exp10f(v10 * 0.05);
  if (v12 < 0.25)
  {
    v12 = 0.25;
  }

  if (v12 >= 0.98)
  {
    v12 = 1.0;
  }

  *(this + 34) = v12;
  v13.f64[0] = v12;
  *(this + 37) = vcvtd_n_s64_f64(1.0 / ((v13.f64[0] + -1.0) * 4.0), 0x18uLL);
  v13.f64[1] = 2.0 - v13.f64[0];
  result = vmovn_s64(vcvtq_n_s64_f64(v13, 0x18uLL));
  *(this + 140) = result;
  return result;
}

void BoostClipKernel::UpdateTimeConstants(BoostClipKernel *this)
{
  Element = ausdk::AUScope::GetElement((*(this + 1) + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v4 = *(Element + 80);
  v5 = *(this + 116);
  __asm { FMOV            V9.2S, #1.0 }

  if (!_ZF || v5.f32[1] != *(this + 19))
  {
    v3.i32[0] = *(this + 40);
    v11 = vmulq_n_f64(vcvtq_f64_f32(v5), v4 / v3.u64[0]);
    v12 = vdupq_n_s64(0x10000000000000uLL);
    v24 = *(this + 116);
    __x = vdivq_f64(vdupq_n_s64(0xC01BA18A998FFFA0), vbslq_s8(vcgtq_f64(v12, v11), v12, v11));
    v22 = exp(__x.f64[1]);
    *v3.i64 = exp(__x.f64[0]);
    *&v3.i64[1] = v22;
    *(this + 52) = vsub_f32(_D9, vcvt_f32_f64(vbicq_s8(v3, vcgtq_f64(vdupq_n_s64(0xC086233333333333), __x))));
    v3.i32[1] = HIDWORD(v24);
    *(this + 9) = v24;
  }

  v13 = *(this + 124);
  if (v13.f32[0] != *(this + 20) || v13.f32[1] != *(this + 21))
  {
    v3.i32[0] = *(this + 40);
    v14 = vmulq_n_f64(vcvtq_f64_f32(v13), v4 / v3.u64[0]);
    v15 = vdupq_n_s64(0x10000000000000uLL);
    v25 = *(this + 124);
    __xa = vdivq_f64(vdupq_n_s64(0xC01BA18A998FFFA0), vbslq_s8(vcgtq_f64(v15, v14), v15, v14));
    v23 = exp(__xa.f64[1]);
    *v3.i64 = exp(__xa.f64[0]);
    *&v3.i64[1] = v23;
    *(this + 60) = vsub_f32(_D9, vcvt_f32_f64(vbicq_s8(v3, vcgtq_f64(vdupq_n_s64(0xC086233333333333), __xa))));
    v3.i32[1] = HIDWORD(v25);
    *(this + 10) = v25;
  }

  v16 = *(this + 28);
  if (v16 != *(this + 17))
  {
    v3.i32[0] = *(this + 40);
    *v3.i64 = v4 / v3.u64[0] * v16;
    if (*v3.i64 < 2.22507386e-308)
    {
      *v3.i64 = 2.22507386e-308;
    }

    v17 = -6.90775528 / *v3.i64;
    v18 = exp(-6.90775528 / *v3.i64);
    if (v17 < -708.4)
    {
      v18 = 0.0;
    }

    v19 = v18;
    *(this + 12) = 1.0 - v19;
    *(this + 17) = v16;
  }
}

void BoostClipKernel::CalcBoostGain(BoostClipKernel *this, float a2)
{
  if (a2 >= 0.00000001)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0.00000001;
  }

  v4 = log10f(v3) * 20.0;
  v5 = *(this + 38);
  v6 = v4;
  if (v4 < v5)
  {
    v6 = v4 + (*(this + 23) * (v5 - v4));
  }

  v7 = *(this + 39);
  if (v4 >= v7)
  {
    v9 = 1.0;
    v8 = 0.0;
  }

  else
  {
    v8 = (v4 - v7) * *(this + 24);
    v9 = __exp10f(v8 * 0.05);
  }

  v10 = (v6 + *(this + 25)) - v4;
  v11 = *(this + 27);
  if ((v8 + v10) > v11)
  {
    v10 = v11 - v8;
  }

  v12 = __exp10f(v10 * 0.05);
  v13 = *(this + 26);
  v14 = *(this + 88);
  if (v14 == 1)
  {
    v15 = v13 + (*(this + 12) * (v13 - v13));
    *(this + 10) = v9;
    *(this + 11) = v15;
    v16 = v12;
  }

  else
  {
    v16 = *(this + 9);
    v15 = *(this + 11) + (*(this + 12) * (v13 - *(this + 11)));
    *(this + 11) = v15;
    if (v12 < v16)
    {
      v17 = 52;
      goto LABEL_16;
    }
  }

  v17 = 56;
LABEL_16:
  v18 = v16 + (*(this + v17) * (v12 - v16));
  v19 = *(this + 10);
  v20 = 64;
  if (v9 < v19)
  {
    v20 = 60;
  }

  v21 = v19 + (*(this + v20) * (v9 - v19));
  *(this + 9) = v18;
  *(this + 10) = v21;
  v22 = (v3 * v15) * v21;
  v23 = *(this + 33);
  if ((v18 * v22) > v23)
  {
    v18 = v23 / v22;
    *(this + 9) = v23 / v22;
  }

  v24 = v21 * (v15 * v18);
  *(this + 5) = v24;
  if (v14)
  {
    *(this + 8) = v24;
    *(this + 7) = vcvts_n_s32_f32(v24, 0x18uLL);
    *(this + 88) = 0;
  }
}

void BoostClipKernel::Process(BoostClipKernel *this, const float *a2, float *a3, unsigned int a4, BOOL *a5, __n128 a6)
{
  v10 = *(this + 1);
  if (*(this + 41) != a4)
  {
    if ((a4 & 0x1F) != 0)
    {
      HIDWORD(v11) = -286331153 * a4;
      LODWORD(v11) = -286331153 * a4;
      if ((v11 >> 1) < 0x8888889)
      {
        v13 = 30;
      }

      else
      {
        HIDWORD(v12) = -1431655765 * a4;
        LODWORD(v12) = -1431655765 * a4;
        if ((v12 >> 3) > 0xAAAAAAA)
        {
          return;
        }

        v13 = 24;
      }
    }

    else
    {
      v13 = 32;
    }

    *(this + 40) = v13;
    *(this + 41) = a4;
  }

  v14 = v10[148];
  if (v14 != *(this + 42))
  {
    a6.n128_u64[0] = BoostClipKernel::CalculateCoeffs(this);
    *(this + 42) = v14;
  }

  if (((*(*v10 + 592))(v10, a6) & 1) == 0)
  {
    BoostClipKernel::UpdateTimeConstants(this);
    v15 = *(this + 40);
    if (!v15)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_1F593B0D8;
      exception[2] = -50;
    }

    if (a4)
    {
      v16 = 0;
      while (1)
      {
        v17 = &a3[v16];
        __C = 0.0;
        v18 = &a2[v16];
        vDSP_maxmgv(v18->f32, 1, &__C, v15);
        v19 = __C;
        v20 = __C;
        v21 = __C;
        if (*(this + 173) == 1)
        {
          v20 = *(this + 6);
          v22 = (this + 176);
          v23 = &a3[v16];
          v24 = v15;
          do
          {
            v25 = v18->f32[0];
            v18 = (v18 + 4);
            *v23++ = *v22;
            *v22++ = v25;
            --v24;
          }

          while (v24);
          if (v19 >= v20)
          {
            v21 = v19;
          }

          else
          {
            v21 = v20;
          }

          v18 = &a3[v16];
        }

        BoostClipKernel::CalcBoostGain(this, v21);
        v26 = *(this + 40);
        v27 = *(this + 5);
        v28.i32[0] = *(this + 8);
        v44 = v28.f32[0];
        v29.n128_f32[0] = (v27 - v28.f32[0]) / v26;
        if (*(this + 172) != 1 || (v27 >= v28.f32[0] ? (v30 = v27) : (v30 = v28.f32[0]), v31 = v30 * v20, v32 = *(this + 34), v31 < v32))
        {
          if (v27 == v28.f32[0])
          {
            MEMORY[0x1E12BE940](v18, 1, &v44, &a3[v16], 1, v29);
          }

          else
          {
            RampGainMono(v18, &a3[v16], v26, &v44, v29.n128_f32[0], v28);
          }

          goto LABEL_51;
        }

        if (v32 >= 1.0)
        {
          for (; v26; --v26)
          {
            v38 = v18->f32[0];
            v18 = (v18 + 4);
            v39 = v38 * v28.f32[0];
            if ((v38 * v28.f32[0]) >= -1.0)
            {
              v40 = v39;
            }

            else
            {
              v40 = -1.0;
            }

            if (v39 <= 1.0)
            {
              v41 = v40;
            }

            else
            {
              v41 = 1.0;
            }

            *v17++ = v41;
            v28.f32[0] = v29.n128_f32[0] + v28.f32[0];
          }

          goto LABEL_51;
        }

        if (v26)
        {
          break;
        }

LABEL_51:
        *(this + 8) = v27;
        *(this + 6) = v19;
        v16 += v15;
        if (v16 >= a4)
        {
          return;
        }
      }

      v33 = *(this + 37) * 0.000000059605;
      v34 = *(this + 36) * 0.000000059605;
      v35 = *(this + 35) * 0.000000059605;
      while (1)
      {
        v36 = v18->f32[0] * v28.f32[0];
        if (v36 >= 0.0)
        {
          if (v36 > v35)
          {
            v37 = 1.0;
            if (v36 < v34)
            {
              v37 = (((v36 - v34) * (v36 - v34)) * v33) + 1.0;
            }

            goto LABEL_41;
          }
        }

        else if (v36 < -v35)
        {
          v37 = -1.0;
          if (v36 >= -v34)
          {
            v37 = (-((-v36 - v34) * (-v36 - v34)) * v33) + -1.0;
          }

          goto LABEL_41;
        }

        v37 = v18->f32[0] * v28.f32[0];
LABEL_41:
        *v17++ = v37;
        v18 = (v18 + 4);
        v28.f32[0] = v29.n128_f32[0] + v28.f32[0];
        if (!--v26)
        {
          goto LABEL_51;
        }
      }
    }
  }
}

double BoostClipKernel::Reset(BoostClipKernel *this)
{
  *(this + 84) = 0;
  result = 0.0;
  *(this + 68) = 0u;
  *(this + 52) = 0u;
  *(this + 36) = 0u;
  *(this + 20) = 0u;
  *(this + 88) = 1;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  return result;
}

BOOL AUBoostClip::ValidFormat(AUBoostClip *this, unsigned int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  v10 = 0;
  v5 = *&a4->mBytesPerPacket;
  v8[0] = *&a4->mSampleRate;
  v8[1] = v5;
  v9 = *&a4->mBitsPerChannel;
  CAStreamBasicDescription::IdentifyCommonPCMFormat(v8, &v10, &v11);
  return v10 == 1 && a4->mChannelsPerFrame - 1 < 2;
}

uint64_t AUBoostClip::SupportedNumChannels(AUBoostClip *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUBoostClip::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 2;
}

double AUBoostClip::GetLatency(uint64_t **this)
{
  Parameter = ausdk::AUEffectBase::GetParameter(this, 0x6D6F6465u);
  result = 0.0;
  if (Parameter != 0.0 && *(this + 17) == 1)
  {
    v4 = this[66];
    if (this[67] != v4)
    {
      v5 = *v4;
      Element = ausdk::AUScope::GetElement((this + 16), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      LODWORD(v7) = *(v5 + 160);
      return v7 / *(Element + 80);
    }
  }

  return result;
}

uint64_t AUBoostClip::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  ++*(this + 148);
  return result;
}

uint64_t AUBoostClip::GetParameterInfo(AUBoostClip *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2)
  {
    return 4294956418;
  }

  v6 = 0.0078125;
  result = 4294956418;
  if (a3 > 1851880554)
  {
    if (a3 > 1919249523)
    {
      if (a3 <= 1953002098)
      {
        if (a3 != 1919249524)
        {
          if (a3 != 1935893870)
          {
            return result;
          }

          v10 = -1073741824;
          v7 = 1.0;
          v8 = kAudioUnitParameterUnit_Boolean;
          v9 = @"clip enable";
          goto LABEL_44;
        }

        v6 = 1.09951186e12;
        v7 = 0.5;
        v8 = kAudioUnitParameterUnit_Seconds;
        v9 = @"release time";
        goto LABEL_38;
      }

      if (a3 == 1953002099)
      {
        __asm { FMOV            V0.2S, #-12.0 }

        v6 = -_D0;
        v10 = -1073741824;
        v7 = 0.0;
        v8 = kAudioUnitParameterUnit_Decibels;
        v9 = @"boost threshold dB";
        goto LABEL_44;
      }

      if (a3 != 1987013748)
      {
        return result;
      }

      v6 = 1.09951186e12;
      v8 = kAudioUnitParameterUnit_Seconds;
      v9 = @"volume smooth time";
    }

    else if (a3 > 1852990827)
    {
      if (a3 != 1852990828)
      {
        if (a3 != 1885562734)
        {
          return result;
        }

        v6 = 1.71798816e10;
        v10 = -1073741824;
        v7 = 0.0;
        v8 = kAudioUnitParameterUnit_Decibels;
        v9 = @"preclip gain dB";
        goto LABEL_44;
      }

      v6 = 1.09951186e12;
      v8 = kAudioUnitParameterUnit_Seconds;
      v9 = @"noise release time";
    }

    else
    {
      if (a3 != 1851880555)
      {
        if (a3 != 1852795251)
        {
          return result;
        }

        v6 = -524288.381;
        v10 = -1073741824;
        v8 = kAudioUnitParameterUnit_Decibels;
        v9 = @"noise threshold dB";
        v7 = -100.0;
        goto LABEL_44;
      }

      v6 = 1.09951186e12;
      v8 = kAudioUnitParameterUnit_Seconds;
      v9 = @"noise attack time";
    }

    v10 = -1069547520;
    v7 = 0.05;
    goto LABEL_44;
  }

  if (a3 > 1668049263)
  {
    if (a3 > 1835104358)
    {
      if (a3 == 1835104359)
      {
        v6 = 1.37438953e11;
        v10 = -1073741824;
        v7 = 12.0;
        v8 = kAudioUnitParameterUnit_Decibels;
        v9 = @"max gain dB";
      }

      else
      {
        if (a3 != 1836016741)
        {
          return result;
        }

        v10 = -1073741824;
        v7 = 0.0;
        v8 = kAudioUnitParameterUnit_Boolean;
        v9 = @"look ahead";
      }
    }

    else if (a3 == 1668049264)
    {
      *&v6 = 3233808384;
      v10 = -1073741824;
      v7 = 0.0;
      v8 = kAudioUnitParameterUnit_Decibels;
      v9 = @"softclip level dB";
    }

    else
    {
      if (a3 != 1668641894)
      {
        return result;
      }

      v8 = kAudioUnitParameterUnit_Generic;
      v10 = -1073741824;
      v7 = 0.0;
      v9 = @"cut";
    }

    goto LABEL_44;
  }

  if (a3 > 1651470181)
  {
    if (a3 == 1651470182)
    {
      v8 = kAudioUnitParameterUnit_Generic;
      v10 = -1073741824;
      v9 = @"boost";
      v7 = 0.2;
    }

    else
    {
      if (a3 != 1667590508)
      {
        return result;
      }

      __asm { FMOV            V0.2S, #-12.0 }

      v6 = -_D0;
      v10 = -1073741824;
      v7 = 0.0;
      v8 = kAudioUnitParameterUnit_Decibels;
      v9 = @"ceiling dB";
    }

    goto LABEL_44;
  }

  if (a3 != 1601402742)
  {
    if (a3 != 1635019636)
    {
      return result;
    }

    v6 = 1.09951186e12;
    v7 = 0.5;
    v8 = kAudioUnitParameterUnit_Seconds;
    v9 = @"attack time";
LABEL_38:
    v10 = -1069547520;
    goto LABEL_44;
  }

  v6 = 2097153.52;
  v10 = -1073741824;
  v7 = 0.0;
  v8 = kAudioUnitParameterUnit_Decibels;
  v9 = @"user gain dB";
LABEL_44:
  buffer->cfNameString = v9;
  buffer->flags = 0x8000000;
  CFStringGetCString(v9, buffer->name, 52, 0x8000100u);
  result = 0;
  buffer->unit = v8;
  *&buffer->minValue = v6;
  buffer->defaultValue = v7;
  buffer->flags += v10;
  return result;
}

uint64_t AUBoostClip::ProcessBufferLists(AUBoostClip *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, uint64_t a5)
{
  if (*(this + 149) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F593B0D8;
    v12 = -4;
    goto LABEL_10;
  }

  if (a3->mNumberBuffers != 2)
  {
    ausdk::AUEffectBase::ProcessBufferLists(this, a2, a3, a4, a5);
    return 0;
  }

  v9 = *(this + 66);
  if (!*v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_1F593B0D8;
    v12 = -10868;
LABEL_10:
    exception[2] = v12;
  }

  IsInputSilent = ausdk::AUEffectBase::IsInputSilent(this, *a2, a5);
  (*(**v9 + 32))(*v9, a3, a4, a5, &IsInputSilent);
  if ((IsInputSilent & 1) == 0)
  {
    *a2 &= ~0x10u;
  }

  return 0;
}

uint64_t AUBoostClip::SetParameter(AUBoostClip *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  ++*(this + 148);
  return result;
}

uint64_t AUBoostClip::Reset(AUBoostClip *this, int a2)
{
  v4 = *(this + 66);
  v5 = *(this + 67);
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 16))(*v4);
    }

    ++v4;
  }

  if (!a2)
  {
    v7 = *(this + 66);
    if (*(this + 67) != v7)
    {
      if (*v7)
      {
        (*(**v7 + 16))(*v7);
      }
    }
  }

  return 0;
}

double AUBoostClip::Cleanup(AUBoostClip *this)
{
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::clear[abi:ne200100](this + 66);
  result = 0.0;
  *(this + 568) = 0u;
  return result;
}

uint64_t AUBoostClip::Initialize(AUBoostClip *this)
{
  v2 = ausdk::AUEffectBase::Initialize(this);
  if (!v2)
  {
    (*(*this + 72))(this, 0, 0);
    (*(*this + 392))(v4, this, 2, 0);
    CAStreamBasicDescription::IdentifyCommonPCMFormat(v4, this + 149, 0);
  }

  return v2;
}

void AUBoostClip::~AUBoostClip(AUBoostClip *this)
{
  AUBoostClip::~AUBoostClip(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5931D20;
  v2 = (this + 528);
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::clear[abi:ne200100](this + 66);
  *(this + 568) = 0u;
  *this = &unk_1F593A7A8;
  v3 = v2;
  std::vector<std::unique_ptr<ausdk::AUKernelBase>>::__destroy_vector::operator()[abi:ne200100](&v3);

  ausdk::AUBase::~AUBase(this);
}

void VADGenUtils::VectorSigmoid<float>(uint64_t a1, float *a2, float *a3, uint64_t a4, vDSP_Length a5, float a6, float a7)
{
  v11 = -(a7 * a6);
  v12 = a7;
  MEMORY[0x1E12BE910](a1, 1, &v12, &v11, a4, 1, a5);
  MEMORY[0x1E12BE810](a4, 1, a3, 1, a5);
  __A = a5;
  vvexpf(a3, a3, &__A);
  __A = 1065353216;
  MEMORY[0x1E12BE8A0](a3, 1, &__A, a2, 1, a5);
  vDSP_vfill(&__A, a3, 1, a5);
  vDSP_vdiv(a2, 1, a3, 1, a2, 1, a5);
}

uint64_t VADGenUtils::TwoPoleBandpass_Array<float>(const float *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float *__C, vDSP_Length __M, float a9, float a10, float a11)
{
  v20 = a10;
  v21 = a9;
  v19 = a11;
  vDSP_mmov(a1, __C, __M, 1uLL, __M, __M);
  MEMORY[0x1E12BE5D0](__C, 1, a2, 1, __C, 1, __M);
  MEMORY[0x1E12BE9A0](a3, 1, __C, 1, __C, 1, __M);
  MEMORY[0x1E12BE9A0](a4, 1, __C, 1, __C, 1, __M);
  MEMORY[0x1E12BE940](__C, 1, &v19, __C, 1, __M);
  MEMORY[0x1E12BE8F0](a5, 1, &v21, __C, 1, __C, 1, __M);
  return MEMORY[0x1E12BE8F0](a6, 1, &v20, __C, 1, __C, 1, __M);
}

uint64_t AUResidualEchoSuppressorV4::ChangeStreamFormat(AUResidualEchoSuppressorV4 *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  v6 = a3;
  v7 = a2;
  ausdk::AUBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  if (v7 != 2 || v6)
  {
    if (v7 == 1 && v6 <= 2)
    {
      v9 = this + 540;
      v9[v6] = a5->mFormatID == 1718773105;
    }
  }

  else
  {
    *(this + 545) = a5->mFormatID == 1718773105;
  }

  return 0;
}

uint64_t AUResidualEchoSuppressorV4::ValidFormat(AUResidualEchoSuppressorV4 *this, const AudioStreamBasicDescription *a2, unsigned int a3, AudioStreamBasicDescription *a4)
{
  if (a4->mChannelsPerFrame != 1)
  {
    return 0;
  }

  v14 = v4;
  v15 = v5;
  v8 = a2;
  result = ausdk::ASBD::IsCommonFloat32(a4, a2);
  if (v8 == 1)
  {
    if (a3 > 2 || result == 1)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (v8 != 2)
  {
    return result;
  }

  if (result)
  {
    return 1;
  }

  result = 0;
  if (!a3)
  {
LABEL_11:
    if (a4->mFormatID == 1718773105)
    {
      v10 = *&a4->mBytesPerPacket;
      v11[0] = *&a4->mSampleRate;
      v11[1] = v10;
      v12 = *&a4->mBitsPerChannel;
      DWORD2(v11[0]) = 1819304813;
      v13 = 0;
      LODWORD(result) = CAStreamBasicDescription::IdentifyCommonPCMFormat(v11, &v13, 0);
      if (v13 == 4)
      {
        return result;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AUResidualEchoSuppressorV4::SupportedNumChannels(AUResidualEchoSuppressorV4 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUResidualEchoSuppressorV4::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUResidualEchoSuppressorV4::GetParameterInfo(AUResidualEchoSuppressorV4 *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->unitName = 0;
  buffer->flags = 0x40000000;
  result = 4294956418;
  if (!a2 && a3 <= 0x24)
  {
    v6 = off_1E866FC40[a3];
    v7 = dword_1DE111B7C[a3];
    v8 = flt_1DE111C10[a3];
    v9 = flt_1DE111CA4[a3];
    v10 = flt_1DE111D38[a3];
    v11 = dword_1DE111DCC[a3];
    buffer->cfNameString = v6;
    buffer->flags = 1207959552;
    CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = v7;
    buffer->minValue = v8;
    buffer->maxValue = v9;
    buffer->defaultValue = v10;
    buffer->flags |= v11;
  }

  return result;
}

uint64_t AUResidualEchoSuppressorV4::Render(AUResidualEchoSuppressorV4 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v35[5] = *MEMORY[0x1E69E9840];
  if (*(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || !*(Element + 172))
  {
    return 4294956420;
  }

  v9 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v9)
  {
    goto LABEL_51;
  }

  v10 = v9;
  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  v12 = v11;
  if (v13)
  {
    v12 = ausdk::AUInputElement::PullInput(v11, a2, a3, 0, a4);
  }

  if (!v12)
  {
    v14 = ausdk::AUScope::GetElement((this + 80), 1u);
    if (v14 && *(v14 + 172))
    {
      v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 1u);
      if (v16)
      {
        v12 = ausdk::AUInputElement::PullInput(v15, a2, a3, 1, a4);
      }

      else
      {
        v12 = v15;
      }

      v17 = ausdk::AUScope::GetElement((this + 80), 1u);
      if (!v17)
      {
        goto LABEL_51;
      }

      if (!*(v17 + 144))
      {
        goto LABEL_55;
      }

      if (v12)
      {
        return v12;
      }
    }

    else
    {
      v17 = ausdk::AUScope::GetElement((this + 80), 0);
      if (!v17)
      {
        goto LABEL_51;
      }

      if (!*(v17 + 144))
      {
        goto LABEL_55;
      }
    }

    v19 = *(v17 + 152);
    v20 = ausdk::AUScope::GetElement((this + 80), 2u);
    if (v20 && *(v20 + 172))
    {
      v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 2u);
      if (v22)
      {
        v12 = ausdk::AUInputElement::PullInput(v21, a2, a3, 2, a4);
      }

      else
      {
        v12 = v21;
      }

      v23 = ausdk::AUScope::GetElement((this + 80), 2u);
      if (!v23)
      {
        goto LABEL_51;
      }

      if (!*(v23 + 144))
      {
        goto LABEL_55;
      }

      if (v12)
      {
        return v12;
      }
    }

    else
    {
      v23 = ausdk::AUScope::GetElement((this + 80), 0);
      if (!v23)
      {
        goto LABEL_51;
      }

      if (!*(v23 + 144))
      {
        goto LABEL_55;
      }
    }

    v24 = *(v23 + 152);
    v25 = ausdk::AUScope::GetElement((this + 80), 3u);
    if (v25 && *(v25 + 172))
    {
      v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 3u);
      if (v27)
      {
        v12 = ausdk::AUInputElement::PullInput(v26, a2, a3, 3, a4);
      }

      else
      {
        v12 = v26;
      }

      v28 = ausdk::AUScope::GetElement((this + 80), 3u);
      if (!v28)
      {
        goto LABEL_51;
      }

      if (!*(v28 + 144))
      {
        goto LABEL_55;
      }

      if (v12)
      {
        return v12;
      }
    }

    else
    {
      v28 = ausdk::AUScope::GetElement((this + 80), 0);
      if (!v28)
      {
        goto LABEL_51;
      }

      if (!*(v28 + 144))
      {
        goto LABEL_55;
      }
    }

    v29 = *(v28 + 152);
    v30 = ausdk::AUScope::GetElement((this + 80), 4u);
    if (!v30 || !*(v30 + 172))
    {
      v31 = ausdk::AUBase::Input(this, 0);
      if (!*(v31 + 144))
      {
        goto LABEL_55;
      }

LABEL_47:
      v32 = *(v31 + 152);
      v33 = ausdk::AUScope::GetElement((this + 80), 0);
      if (v33)
      {
        if (*(v33 + 144))
        {
          v35[0] = *(v33 + 152) + 48;
          v35[1] = v19 + 48;
          v35[2] = v24 + 48;
          v35[3] = v29 + 48;
          v35[4] = v32 + 48;
          if (*(v10 + 144))
          {
            v34 = *(v10 + 152) + 48;
            return (*(*this + 184))(this, a2, a4, 5, v35, 1, &v34);
          }
        }

LABEL_55:
        ausdk::Throw(0xFFFFFFFFLL);
      }

LABEL_51:
      ausdk::Throw(0xFFFFD583);
    }

    v12 = ausdk::AUBase::PullInput(this, 4, a2, a3, a4);
    v31 = ausdk::AUBase::Input(this, 4u);
    if (!*(v31 + 144))
    {
      goto LABEL_55;
    }

    if (!v12)
    {
      goto LABEL_47;
    }
  }

  return v12;
}

uint64_t AUResidualEchoSuppressorV4::ProcessMultipleBufferLists(AUResidualEchoSuppressorV4 *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v187[2] = *MEMORY[0x1E69E9840];
  if (*(this + 84) != a3)
  {
    return 4294956422;
  }

  if (!(*(*this + 576))(this, a2))
  {
    v13 = *(this + 133);
    if (v13 != *(this + 134))
    {
      v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v15 & 1) == 0)
      {
        goto LABEL_96;
      }

      Parameter = ausdk::AUElement::GetParameter(v14, 1u);
      v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v18 & 1) == 0)
      {
        goto LABEL_96;
      }

      v19 = ausdk::AUElement::GetParameter(v17, 2u);
      v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v21 & 1) == 0)
      {
        goto LABEL_96;
      }

      v22 = ausdk::AUElement::GetParameter(v20, 8u);
      v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v24 & 1) == 0)
      {
        goto LABEL_96;
      }

      v25 = ausdk::AUElement::GetParameter(v23, 9u);
      v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v27 & 1) == 0)
      {
        goto LABEL_96;
      }

      v28 = ausdk::AUElement::GetParameter(v26, 0xAu);
      v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v30 & 1) == 0)
      {
        goto LABEL_96;
      }

      v31 = ausdk::AUElement::GetParameter(v29, 0xBu);
      v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v33 & 1) == 0)
      {
        goto LABEL_96;
      }

      v34 = ausdk::AUElement::GetParameter(v32, 0xCu);
      v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v36 & 1) == 0)
      {
        goto LABEL_96;
      }

      v184 = v31;
      v183 = ausdk::AUElement::GetParameter(v35, 0xDu);
      v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v38 & 1) == 0)
      {
        goto LABEL_96;
      }

      v39 = ausdk::AUElement::GetParameter(v37, 0xEu);
      v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v41 & 1) == 0)
      {
        goto LABEL_96;
      }

      v42 = ausdk::AUElement::GetParameter(v40, 0xFu);
      v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v44 & 1) == 0)
      {
        goto LABEL_96;
      }

      v182 = ausdk::AUElement::GetParameter(v43, 0x10u);
      v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v46 & 1) == 0)
      {
        goto LABEL_96;
      }

      v181 = ausdk::AUElement::GetParameter(v45, 0x11u);
      v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v48 & 1) == 0)
      {
        goto LABEL_96;
      }

      v180 = ausdk::AUElement::GetParameter(v47, 0x12u);
      v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v50 & 1) == 0)
      {
        goto LABEL_96;
      }

      v179 = ausdk::AUElement::GetParameter(v49, 0x13u);
      v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v52 & 1) == 0)
      {
        goto LABEL_96;
      }

      v178 = v42;
      v177 = ausdk::AUElement::GetParameter(v51, 0x14u);
      v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v54 & 1) == 0)
      {
        goto LABEL_96;
      }

      v55 = ausdk::AUElement::GetParameter(v53, 0x15u);
      v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v57 & 1) == 0)
      {
        goto LABEL_96;
      }

      v176 = ausdk::AUElement::GetParameter(v56, 0x16u);
      v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v59 & 1) == 0)
      {
        goto LABEL_96;
      }

      v175 = v28;
      v174 = ausdk::AUElement::GetParameter(v58, 0x17u);
      v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v61 & 1) == 0)
      {
        goto LABEL_96;
      }

      v62 = v34;
      v173 = v39;
      v63 = ausdk::AUElement::GetParameter(v60, 0x18u);
      v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v65 & 1) == 0)
      {
        goto LABEL_96;
      }

      v66 = ausdk::AUElement::GetParameter(v64, 0x19u);
      v67 = *(this + 70);
      *(v67 + 36) = vneg_s32(vabs_s32(__PAIR64__(v19, Parameter)));
      *(v67 + 44) = v22;
      v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v69 & 1) == 0)
      {
        goto LABEL_96;
      }

      v70 = ausdk::AUElement::GetParameter(v68, 0x1Au);
      v71 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v72 & 1) == 0)
      {
        goto LABEL_96;
      }

      v73 = ausdk::AUElement::GetParameter(v71, 0x1Bu);
      v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v75 & 1) == 0)
      {
        goto LABEL_96;
      }

      v172 = v73;
      v171 = ausdk::AUElement::GetParameter(v74, 0x1Cu);
      v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v77 & 1) == 0)
      {
        goto LABEL_96;
      }

      v170 = v70;
      v78 = ausdk::AUElement::GetParameter(v76, 0x1Eu);
      v79 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v80 & 1) == 0)
      {
        goto LABEL_96;
      }

      v169 = v13;
      v81 = ausdk::AUElement::GetParameter(v79, 0x1Du);
      v82 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v83 & 1) == 0)
      {
        goto LABEL_96;
      }

      v84 = v25;
      v85 = v63;
      v86 = v66;
      v87 = v78;
      v88 = v81;
      v168 = ausdk::AUElement::GetParameter(v82, 0x1Fu);
      v89 = __exp10f(v175 / 10.0);
      v90 = __exp10f(v184 / 10.0);
      v91 = __exp10f(v62 / 10.0);
      v92 = __exp10f(v182 / 10.0);
      v93 = __exp10f(v181 / 10.0);
      v94 = __exp10f(v180 / 10.0);
      v95 = __exp10f(v179 / 10.0);
      v96 = __exp10f(v177 / 10.0);
      v97 = *(this + 70);
      *(v97 + 496) = v84;
      *(v97 + 500) = v89;
      *(v97 + 504) = v90;
      *(v97 + 508) = v91;
      *(v97 + 556) = v183;
      *(v97 + 512) = v173;
      *(v97 + 516) = v178;
      *(v97 + 520) = v92;
      *(v97 + 524) = v93;
      *(v97 + 528) = v94;
      *(v97 + 532) = v95;
      *(v97 + 536) = v96;
      *(v97 + 540) = v55;
      *(v97 + 548) = v176;
      *(v97 + 552) = v174;
      *(v97 + 572) = v85;
      *(v97 + 576) = v86;
      v98 = *(v97 + 8);
      v99 = *(v97 + 12) * 0.5;
      v100 = v99 / v98;
      v101 = fmaxf(v170, 300.0);
      if (v101 < v99)
      {
        v99 = v101;
      }

      v102 = vcvtms_u32_f32(v99 / v100);
      if (v102 < v98)
      {
        v98 = v102;
      }

      *(v97 + 664) = v98;
      *(v97 + 668) = v172;
      *(v97 + 672) = v171;
      *v97 = v88;
      v103 = v87 < 0 ? v87 : -v87;
      *(v97 + 32) = v103;
      v104 = __exp10f(v103 * 0.1);
      *(v97 + 56) = v104;
      *(v97 + 60) = sqrtf(v104);
      v105 = v168;
      *(v97 + 48) = v168;
      *(v97 + 52) = __exp10f(v105 * 0.1);
      v106 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v107 & 1) == 0)
      {
        goto LABEL_96;
      }

      *(*(this + 70) + 688) = ausdk::AUElement::GetParameter(v106, 0x21u);
      v108 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      v109 = v169;
      if ((v110 & 1) == 0)
      {
        goto LABEL_96;
      }

      v111 = ausdk::AUElement::GetParameter(v108, 0x22u);
      v112 = *(this + 70);
      *(v112 + 680) = 1.0 - expf(-1.0 / (v111 * (*(v112 + 12) / *(v112 + 8))));
      v113 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v114 & 1) == 0)
      {
        goto LABEL_96;
      }

      *(*(this + 71) + 8) = ausdk::AUElement::GetParameter(v113, 0x24u);
      v115 = *(this + 70);
      if (!*v115)
      {
        v115[169] = 0;
      }

      *(this + 134) = v109;
    }

    v116 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v117 & 1) == 0)
    {
      goto LABEL_96;
    }

    v118 = ausdk::AUElement::GetParameter(v116, 6u);
    v119 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v120 & 1) == 0)
    {
      goto LABEL_96;
    }

    v121 = ausdk::AUElement::GetParameter(v119, 7u);
    v122 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v123 & 1) == 0)
    {
      goto LABEL_96;
    }

    v124 = ausdk::AUElement::GetParameter(v122, 0xDu);
    v125 = *(this + 70);
    *(v125 + 488) = v118;
    *(v125 + 492) = v121;
    *(v125 + 556) = v124;
    v126 = *v125;
    v127 = *(this + 84);
    if (*v125 >= 2)
    {
      mData = 0;
      v129 = 0;
      v130 = 0;
      v131 = 0;
    }

    else
    {
      mData = a5[1]->mBuffers[0].mData;
      v129 = &mData[v127];
      v130 = a5[2]->mBuffers[0].mData;
      v131 = &v130[v127];
    }

    v132 = a5[3];
    if (v132)
    {
      v133 = v132->mBuffers[0].mData;
    }

    else
    {
      v133 = 0;
    }

    v134 = a5[4];
    if (v134)
    {
      v135 = v134->mBuffers[0].mData;
    }

    else
    {
      v135 = 0;
    }

    v136 = (*a5)->mBuffers[0].mData;
    v187[0] = mData;
    v187[1] = v129;
    v186[0] = v130;
    v186[1] = v131;
    if (mData)
    {
      v137 = v130 == 0;
    }

    else
    {
      v137 = 1;
    }

    v139 = !v137 && v126 < 2;
    if (v126 <= 1 && !v139 || *(this + 541) != 1)
    {
      v12 = 0xFFFFFFFFLL;
      goto LABEL_80;
    }

    v140 = *(this + 540);
    if (v140 == 1 && v136 && *(this + 542))
    {
      v185[0] = v136;
      v185[1] = &v136[v127];
      CResidualSuppressorV4::speex_preprocess_run_freq(v125, v185, v187, v186, v133, *(this + 71), v135);
      if (*(this + 545) == 1)
      {
        v141 = *(this + 70);
        v142 = *(v141 + 344);
        v143 = *(v141 + 352);
        v144 = (*a7)->mBuffers[0].mData;
        v145 = *(this + 84);
        v146 = &v144[4 * v145];
        memcpy(v144, v142, 4 * v145);
        memcpy(v146, v143, 4 * *(this + 84));
        memcpy(a7[1]->mBuffers[0].mData, *(*(this + 70) + 112), 4 * *(*(this + 70) + 8));
      }
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
      if ((v140 & 1) != 0 || !v136 || !*(this + 542))
      {
        goto LABEL_80;
      }

      MEMORY[0x1EEE9AC00](v125);
      v153 = &v167 - ((v152 + 15) & 0x7FFFFFFF0);
      memcpy(v153, v154, 4 * *(this + 84));
      CResidualSuppressorV4::speex_preprocess_run(*(this + 70), v153, v187, v186, v133, *(this + 71), v135);
      if (*(this + 545) == 1)
      {
        v155 = *(this + 70);
        v156 = *(v155 + 344);
        v157 = *(v155 + 352);
        v158 = (*a7)->mBuffers[0].mData;
        v159 = *(this + 84);
        v160 = &v158[4 * v159];
        memcpy(v158, v156, 4 * v159);
        memcpy(v160, v157, 4 * *(this + 84));
        v161 = a7[1]->mBuffers[0].mData;
        v162 = *(this + 70);
        v163 = *(v162 + 112);
        v164 = 4 * *(v162 + 8);
      }

      else
      {
        v161 = (*a7)->mBuffers[0].mData;
        v164 = 4 * *(this + 84);
        v163 = v153;
      }

      memcpy(v161, v163, v164);
    }

    if (*(this + 138) == 2)
    {
      v165 = a7[1];
      mDataByteSize = v165->mBuffers[0].mDataByteSize;
      if (mDataByteSize >= 4)
      {
        memset_pattern16(v165->mBuffers[0].mData, &unk_1DE095DF0, 4 * ((mDataByteSize >> 2) - 1) + 4);
      }
    }

    v12 = 0;
LABEL_80:
    v147 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v148)
    {
      ausdk::AUElement::SetParameter(v147, 0x20u, *(*(this + 70) + 220));
      if (**(this + 70) < 1)
      {
        return v12;
      }

      v149 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v150)
      {
        ausdk::AUElement::SetParameter(v149, 0x23u, *(*(this + 70) + 676));
        return v12;
      }
    }

LABEL_96:
    abort();
  }

  v10 = a7[1];
  v11 = v10->mBuffers[0].mDataByteSize;
  if (v11 >= 4)
  {
    memset_pattern16(v10->mBuffers[0].mData, &unk_1DE095DF0, 4 * ((v11 >> 2) - 1) + 4);
  }

  if (*(this + 540) == *(this + 545))
  {
    memcpy((*a7)->mBuffers[0].mData, (*a5)->mBuffers[0].mData, (*a7)->mBuffers[0].mDataByteSize);
  }

  else
  {
    bzero((*a7)->mBuffers[0].mData, (*a7)->mBuffers[0].mDataByteSize);
  }

  return 0;
}

uint64_t AUResidualEchoSuppressorV4::SetParameter(AUResidualEchoSuppressorV4 *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a2 <= 0x24 && ((1 << a2) & 0x16FFFFDF27) != 0)
  {
    v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v9 & 1) == 0)
    {
      abort();
    }

    ausdk::AUElement::SetParameter(v8, a2, a5);
    ++*(this + 133);
    return 0;
  }

  else
  {

    return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  }
}

uint64_t AUResidualEchoSuppressorV4::SetProperty(AUResidualEchoSuppressorV4 *this, int a2, int a3, unsigned int a4, int *a5, unsigned int a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if (a6 >= 4)
    {
      v8 = *a5;
      v9 = *a5 != 0;
      if (v9 != (*(*this + 576))(this))
      {
        (*(*this + 584))(this, v8 != 0);
      }

      return 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUResidualEchoSuppressorV4::GetProperty(AUResidualEchoSuppressorV4 *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 3700)
  {
    v7 = *(this + 376);
    goto LABEL_7;
  }

  if (a2 == 21)
  {
    v7 = (*(*this + 576))(this);
LABEL_7:
    result = 0;
    *a5 = v7;
    return result;
  }

  return 4294956417;
}

uint64_t AUResidualEchoSuppressorV4::GetPropertyInfo(AUResidualEchoSuppressorV4 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
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

void AUResidualEchoSuppressorV4::Cleanup(AUResidualEchoSuppressorV4 *this)
{
  v2 = *(this + 70);
  if (v2)
  {
    CResidualSuppressorV3::speex_preprocess_state_res_destroy(v2);
    *(this + 70) = 0;
  }

  v3 = *(this + 71);
  if (v3)
  {
    free(v3);
    *(this + 71) = 0;
  }
}

uint64_t AUResidualEchoSuppressorV4::Initialize(AUResidualEchoSuppressorV4 *this)
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v2;
    Element = ausdk::AUScope::GetElement((this + 80), v3 - 1);
    if (!Element)
    {
      goto LABEL_30;
    }

    v6 = Element;
    v7 = ausdk::AUScope::GetElement((this + 80), v3);
    if (!v7)
    {
      goto LABEL_30;
    }

    if (*(v6 + 80) != *(v7 + 80))
    {
      return 4294956428;
    }

    v3 = 2;
    v2 = 1;
  }

  while ((v4 & 1) == 0);
  v8 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v8)
  {
    goto LABEL_30;
  }

  v9 = *(v8 + 80);
  v10 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v10)
  {
    goto LABEL_30;
  }

  if (v9 != *(v10 + 80))
  {
    return 4294956428;
  }

  *(this + 137) = *(this + 84);
  v11 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v11 || (*(this + 540) = *(v11 + 88) == 1718773105, (v12 = ausdk::AUScope::GetElement((this + 80), 1u)) == 0) || (*(this + 541) = *(v12 + 88) == 1718773105, (v13 = ausdk::AUScope::GetElement((this + 80), 2u)) == 0) || (*(this + 542) = *(v13 + 88) == 1718773105, (v14 = ausdk::AUScope::GetElement((this + 80), 3u)) == 0) || (*(this + 543) = *(v14 + 88) == 1718773105, (v15 = ausdk::AUScope::GetElement((this + 80), 4u)) == 0) || (*(this + 544) = *(v15 + 88) == 1718773105, (v16 = ausdk::AUScope::GetElement((this + 128), 0)) == 0) || (*(this + 545) = *(v16 + 88) == 1718773105, (v17 = ausdk::AUScope::GetElement((this + 128), 1u)) == 0) || (*(this + 546) = *(v17 + 88) == 1718773105, (v18 = ausdk::AUScope::GetElement((this + 80), 0)) == 0) || (v19 = *(v18 + 80), v21 = *(v18 + 88), v20 = *(v18 + 92), v22 = *(v18 + 104), v23 = *(v18 + 108), (v24 = ausdk::AUScope::GetElement((this + 80), 1u)) == 0) || (v25 = *(v24 + 80), v27 = *(v24 + 88), v26 = *(v24 + 92), v28 = *(v24 + 104), v29 = *(v24 + 108), (v30 = ausdk::AUScope::GetElement((this + 80), 2u)) == 0))
  {
LABEL_30:
    ausdk::Throw(0xFFFFD583);
  }

  if (v19 == v25)
  {
    v35 = v30[22];
    v34 = v30[23];
    if ((v21 == 1819304813 || v21 == 1718773105) && (v20 & 2) == 0 && v23 == 1 && ((v20 & 1) != 0 || v22 == 2))
    {
      if ((v27 == 1819304813 || v27 == 1718773105) && (v26 & 2) == 0 && v29 == 1 && ((v26 & 1) != 0 || v28 == 2) && (v35 == 1819304813 || v35 == 1718773105) && (v34 & 2) == 0 && v30[27] == 1 && ((v34 & 1) != 0 || v30[26] == 2))
      {
        v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v38)
        {
          ausdk::AUElement::GetParameter(v37, 1u);
          v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v40)
          {
            ausdk::AUElement::GetParameter(v39, 2u);
            v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v42)
            {
              *(this + 138) = ausdk::AUElement::GetParameter(v41, 8u);
              v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v44)
              {
                ausdk::AUElement::GetParameter(v43, 9u);
                v45 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if (v46)
                {
                  ausdk::AUElement::GetParameter(v45, 0xAu);
                  v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                  if (v48)
                  {
                    ausdk::AUElement::GetParameter(v47, 0xBu);
                    v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                    if (v50)
                    {
                      ausdk::AUElement::GetParameter(v49, 0xCu);
                      v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                      if (v52)
                      {
                        ausdk::AUElement::GetParameter(v51, 0xDu);
                        v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                        if (v54)
                        {
                          ausdk::AUElement::GetParameter(v53, 0xEu);
                          v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                          if (v56)
                          {
                            ausdk::AUElement::GetParameter(v55, 0xFu);
                            v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                            if (v58)
                            {
                              ausdk::AUElement::GetParameter(v57, 0x10u);
                              v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                              if (v60)
                              {
                                ausdk::AUElement::GetParameter(v59, 0x11u);
                                v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                if (v62)
                                {
                                  ausdk::AUElement::GetParameter(v61, 0x12u);
                                  v63 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                  if (v64)
                                  {
                                    ausdk::AUElement::GetParameter(v63, 0x13u);
                                    v65 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                    if (v66)
                                    {
                                      ausdk::AUElement::GetParameter(v65, 0x14u);
                                      v67 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                      if (v68)
                                      {
                                        ausdk::AUElement::GetParameter(v67, 0x15u);
                                        v69 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                        if (v70)
                                        {
                                          ausdk::AUElement::GetParameter(v69, 0x16u);
                                          v71 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                          if (v72)
                                          {
                                            ausdk::AUElement::GetParameter(v71, 0x17u);
                                            v73 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                            if (v74)
                                            {
                                              ausdk::AUElement::GetParameter(v73, 0x18u);
                                              v75 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                              if (v76)
                                              {
                                                ausdk::AUElement::GetParameter(v75, 0x19u);
                                                v77 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                if (v78)
                                                {
                                                  ausdk::AUElement::GetParameter(v77, 0x1Au);
                                                  v79 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                  if (v80)
                                                  {
                                                    ausdk::AUElement::GetParameter(v79, 0x1Bu);
                                                    v81 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                    if (v82)
                                                    {
                                                      ausdk::AUElement::GetParameter(v81, 0x1Cu);
                                                      v83 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                      if (v84)
                                                      {
                                                        ausdk::AUElement::GetParameter(v83, 0x1Eu);
                                                        v85 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                        if (v86)
                                                        {
                                                          ausdk::AUElement::GetParameter(v85, 0x1Du);
                                                          v87 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                          if (v88)
                                                          {
                                                            ausdk::AUElement::GetParameter(v87, 0x1Fu);
                                                            (*(*this + 64))(this);
                                                            CResidualSuppressorV3::speex_preprocess_state_res_init(*(this + 84), v19);
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
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

      v31 = MEMORY[0x1E69E9848];
      v32 = *MEMORY[0x1E69E9848];
      v33 = "_vpio_res: check 3 failed!\n";
    }

    else
    {
      v31 = MEMORY[0x1E69E9848];
      v32 = *MEMORY[0x1E69E9848];
      v33 = "_vpio_res: check 2 failed!\n";
    }
  }

  else
  {
    v31 = MEMORY[0x1E69E9848];
    v32 = *MEMORY[0x1E69E9848];
    v33 = "_vpio_res: check 1 failed!\n";
  }

  fwrite(v33, 0x1BuLL, 1uLL, v32);
  fflush(*v31);
  return 4294956428;
}

void AUResidualEchoSuppressorV4::~AUResidualEchoSuppressorV4(AUResidualEchoSuppressorV4 *this)
{
  *this = &unk_1F5931FC0;
  AUResidualEchoSuppressorV4::Cleanup(this);
  ausdk::AUBase::~AUBase(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5931FC0;
  AUResidualEchoSuppressorV4::Cleanup(this);

  ausdk::AUBase::~AUBase(this);
}

void AUEcConvergenceOversight::FreeIntMatrixContUtil(AUEcConvergenceOversight *this, void **a2, int a3)
{
  if (*a2)
  {
    free(*a2);
    *a2 = 0;
  }

  if (a3 >= 1)
  {

    bzero(a2, 8 * a3);
  }
}

void AUEcConvergenceOversight::AllocIntMatrixContUtil(AUEcConvergenceOversight *this, int **a2, int a3, int a4)
{
  v7 = 4 * a4 * a3;
  v8 = malloc_type_malloc(v7, 0x53F2D03AuLL);
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = std::bad_alloc::bad_alloc(exception);
  }

  v10 = v8;
  bzero(v8, v7);
  *a2 = v10;
  if (a3 >= 2)
  {
    v11 = &v10[a4];
    v12 = a3 - 1;
    v13 = a2 + 1;
    do
    {
      *v13++ = v11;
      v11 += a4;
      --v12;
    }

    while (v12);
  }
}

void AUEcConvergenceOversight::FreeFloatMatrixContUtil(AUEcConvergenceOversight *this, float **a2, int a3)
{
  if (*a2)
  {
    free(*a2);
    *a2 = 0;
  }

  if (a3 >= 1)
  {

    bzero(a2, 8 * a3);
  }
}

void AUEcConvergenceOversight::AllocFloatMatrixContUtil(AUEcConvergenceOversight *this, float **a2, int a3, int a4)
{
  v7 = 4 * a4 * a3;
  v8 = malloc_type_malloc(v7, 0x220FBD95uLL);
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = std::bad_alloc::bad_alloc(exception);
  }

  v10 = v8;
  bzero(v8, v7);
  *a2 = v10;
  if (a3 >= 2)
  {
    v11 = &v10[a4];
    v12 = a3 - 1;
    v13 = a2 + 1;
    do
    {
      *v13++ = v11;
      v11 += a4;
      --v12;
    }

    while (v12);
  }
}