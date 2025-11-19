unint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,shazam::$_3 &,shazam::spectral_peak_t *,0>(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *(a2 + 3);
  v5 = *(result + 3);
  v6 = *(a2 + 2);
  v7 = v4 == v5;
  v8 = v4 > v5;
  if (v7)
  {
    v9 = v6 > *(result + 2);
  }

  else
  {
    v9 = v8;
  }

  LODWORD(v10) = *(a3 + 3);
  v11 = *(a3 + 2);
  v12 = v11 > v6;
  v7 = v10 == v4;
  v13 = v10 > v4;
  if (!v7)
  {
    v12 = v13;
  }

  if (v9)
  {
    v14 = *result;
    if (v12)
    {
      *result = *a3;
      *a3 = v14;
      v10 = HIWORD(v14);
      v11 = WORD2(v14);
    }

    else
    {
      *result = *a2;
      *a2 = v14;
      v19 = *(a3 + 3);
      v10 = HIWORD(v14);
      v11 = *(a3 + 2);
      v20 = v11 > WORD2(v14);
      if (v19 != HIWORD(v14))
      {
        v20 = v19 > HIWORD(v14);
      }

      if (v20)
      {
        *a2 = *a3;
        *a3 = v14;
        v11 = WORD2(v14);
      }

      else
      {
        LODWORD(v10) = *(a3 + 3);
      }
    }
  }

  else if (v12)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    v16 = *(a2 + 3);
    v17 = *(result + 3);
    v7 = v16 == v17;
    v18 = v16 > v17;
    if (v7)
    {
      v18 = *(a2 + 2) > *(result + 2);
    }

    if (v18)
    {
      v10 = *result;
      *result = *a2;
      *a2 = v10;
      LODWORD(v10) = *(a3 + 3);
      v11 = *(a3 + 2);
    }

    else
    {
      v11 = WORD2(v15);
      v10 = HIWORD(v15);
    }
  }

  v21 = *(a4 + 3);
  v22 = *(a4 + 2) > v11;
  v7 = v21 == v10;
  v23 = v21 > v10;
  if (v7)
  {
    v23 = v22;
  }

  if (v23)
  {
    v24 = *a3;
    *a3 = *a4;
    *a4 = v24;
    LODWORD(v24) = *(a3 + 3);
    v25 = *(a2 + 3);
    v7 = v24 == v25;
    v26 = v24 > v25;
    if (v7)
    {
      v26 = *(a3 + 2) > *(a2 + 2);
    }

    if (v26)
    {
      v27 = *a2;
      *a2 = *a3;
      *a3 = v27;
      LODWORD(v27) = *(a2 + 3);
      v28 = *(result + 3);
      v7 = v27 == v28;
      v29 = v27 > v28;
      if (v7)
      {
        v29 = *(a2 + 2) > *(result + 2);
      }

      if (v29)
      {
        v30 = *result;
        *result = *a2;
        *a2 = v30;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,shazam::$_3 &,shazam::spectral_peak_t *>(int8x16_t *a1, int8x16_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v24 = a1->u16[7];
        v25 = a1->u16[3];
        v26 = a1->u16[6];
        v27 = v26 > a1->u16[2];
        v7 = v24 == v25;
        v28 = v24 > v25;
        if (!v7)
        {
          v27 = v28;
        }

        v29 = a2[-1].u16[7];
        v30 = a2[-1].u16[6] > v26;
        v7 = v29 == v24;
        v31 = v29 > v24;
        if (v7)
        {
          v32 = v30;
        }

        else
        {
          v32 = v31;
        }

        if (!v27)
        {
          if (v32)
          {
            v43 = a1->i64[1];
            a1->i64[1] = a2[-1].i64[1];
            a2[-1].i64[1] = v43;
            LODWORD(v43) = a1->u16[7];
            v44 = a1->u16[3];
            v7 = v43 == v44;
            v45 = v43 > v44;
            if (v7)
            {
              v45 = a1->u16[6] > a1->u16[2];
            }

            if (v45)
            {
              *a1 = vextq_s8(*a1, *a1, 8uLL);
            }
          }

          return 1;
        }

        v9 = a1->i64[0];
        if (!v32)
        {
          a1->i64[0] = a1->i64[1];
          a1->i64[1] = v9;
          v51 = a2[-1].u16[7];
          v7 = v51 == HIWORD(v9);
          v52 = v51 > HIWORD(v9);
          if (v7)
          {
            v52 = a2[-1].u16[6] > WORD2(v9);
          }

          if (!v52)
          {
            return 1;
          }

          a1->i64[1] = a2[-1].i64[1];
          goto LABEL_32;
        }

LABEL_31:
        a1->i64[0] = a2[-1].i64[1];
LABEL_32:
        a2[-1].i64[1] = v9;
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,shazam::$_3 &,shazam::spectral_peak_t *,0>(a1, &a1->u64[1], &a1[1], &a2[-1].u64[1]);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,shazam::$_3 &,shazam::spectral_peak_t *,0>(a1, &a1->u64[1], &a1[1], &a1[1].u64[1]);
        v10 = a2[-1].u16[7];
        v11 = a1[1].u16[7];
        v7 = v10 == v11;
        v12 = v10 > v11;
        if (v7)
        {
          v12 = a2[-1].u16[6] > a1[1].u16[6];
        }

        if (v12)
        {
          v13 = a1[1].i64[1];
          a1[1].i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v13;
          LODWORD(v13) = a1[1].u16[7];
          v14 = a1[1].u16[3];
          v7 = v13 == v14;
          v15 = v13 > v14;
          if (v7)
          {
            v15 = a1[1].u16[6] > a1[1].u16[2];
          }

          if (v15)
          {
            v17 = a1[1].i64[0];
            v16 = a1[1].u64[1];
            a1[1].i64[0] = v16;
            a1[1].i64[1] = v17;
            v18 = HIWORD(v16);
            v19 = a1->u16[7];
            v7 = v19 == HIWORD(v16);
            v20 = v19 < HIWORD(v16);
            if (v7)
            {
              v20 = a1->u16[6] < WORD2(v16);
            }

            if (v20)
            {
              v21 = a1->i64[1];
              a1->i64[1] = v16;
              a1[1].i64[0] = v21;
              LODWORD(v21) = a1->u16[3];
              v7 = v21 == v18;
              v22 = v21 < v18;
              if (v7)
              {
                v22 = a1->u16[2] < WORD2(v16);
              }

              if (v22)
              {
                v23 = a1->i64[0];
                a1->i64[0] = v16;
                a1->i64[1] = v23;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2[-1].u16[7];
      v6 = a1->u16[3];
      v7 = v5 == v6;
      v8 = v5 > v6;
      if (v7)
      {
        v8 = a2[-1].u16[6] > a1->u16[2];
      }

      if (!v8)
      {
        return 1;
      }

      v9 = a1->i64[0];
      goto LABEL_31;
    }
  }

  v33 = a1->u16[7];
  v34 = a1->u16[3];
  v35 = a1->u16[6];
  v36 = a1->u16[2];
  if (v33 == v34)
  {
    v37 = v35 > v36;
  }

  else
  {
    v37 = v33 > v34;
  }

  v38 = a1[1].u16[3];
  v39 = a1[1].u16[2];
  v40 = v39 > v35;
  v7 = v38 == v33;
  v41 = v38 > v33;
  if (v7)
  {
    v41 = v40;
  }

  if (v37)
  {
    v42 = a1->i64[0];
    if (v41)
    {
      a1->i64[0] = a1[1].i64[0];
LABEL_60:
      a1[1].i64[0] = v42;
      goto LABEL_61;
    }

    a1->i64[0] = a1->i64[1];
    a1->i64[1] = v42;
    v53 = v39 > WORD2(v42);
    v54 = v38 > HIWORD(v42);
    if (v38 == HIWORD(v42))
    {
      v54 = v53;
    }

    if (v54)
    {
      a1->i64[1] = a1[1].i64[0];
      goto LABEL_60;
    }
  }

  else if (v41)
  {
    v47 = a1->i64[1];
    v46 = a1[1].u64[0];
    a1->i64[1] = v46;
    a1[1].i64[0] = v47;
    v48 = v36 < WORD2(v46);
    v7 = v34 == HIWORD(v46);
    v49 = v34 < HIWORD(v46);
    if (v7)
    {
      v49 = v48;
    }

    if (v49)
    {
      v50 = a1->i64[0];
      a1->i64[0] = v46;
      a1->i64[1] = v50;
    }
  }

LABEL_61:
  v55 = (a1 + 24);
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v56 = 0;
  v57 = 0;
  v58 = a1 + 1;
  while (1)
  {
    v59 = v55->u16[3];
    v60 = v58->u16[3];
    v61 = v55->u16[2] > v58->u16[2];
    v7 = v59 == v60;
    v62 = v59 > v60;
    if (!v7)
    {
      v61 = v62;
    }

    if (v61)
    {
      v63 = v55->i64[0];
      v64 = HIWORD(v55->i64[0]);
      v65 = HIDWORD(v55->i64[0]);
      v66 = v56;
      while (1)
      {
        v67 = &a1->i8[v66];
        *(&a1[1].i64[1] + v66) = *(a1[1].i64 + v66);
        if (v66 == -16)
        {
          break;
        }

        v68 = *(v67 + 7);
        v69 = *(v67 + 6) < v65;
        v7 = v68 == v64;
        v70 = v68 < v64;
        if (!v7)
        {
          v69 = v70;
        }

        v66 -= 8;
        if (!v69)
        {
          v71 = (&a1[1].i64[1] + v66);
          goto LABEL_73;
        }
      }

      v71 = a1;
LABEL_73:
      *v71 = v63;
      if (++v57 == 8)
      {
        return &v55->u64[1] == a2;
      }
    }

    v58 = v55;
    v56 += 8;
    v55 = (v55 + 8);
    if (v55 == a2)
    {
      return 1;
    }
  }
}

void std::vector<shazam::spectral_peak_t>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_t>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

int8x16_t *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *,false>(int8x16_t *result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      v116 = a2[-1].u32[2];
      v117 = v116 == v9->i32[0];
      v118 = v116 < v9->i32[0];
      if (v117)
      {
        v118 = a2[-1].u16[6] < v9->u16[2];
      }

      if (v118)
      {
        v101 = v9->i64[0];
LABEL_147:
        v9->i64[0] = a2[-1].i64[1];
LABEL_148:
        a2[-1].i64[1] = v101;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *>(v9, a2->i32);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *,shazam::spectral_peak_t *>(v9, a2->i64, a2->i64, a3);
      }

      return result;
    }

    v13 = &v9->i8[8 * (v12 >> 1)];
    v14 = a2[-1].u32[2];
    v15 = a2[-1].u16[6];
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *(v13 + 2);
      v18 = *v13 < v9->i32[0];
      if (*v13 == v9->i32[0])
      {
        v18 = v17 < v9->u16[2];
      }

      v19 = v15 < v17;
      v117 = v14 == v16;
      v20 = v14 < v16;
      if (v117)
      {
        v21 = v19;
      }

      else
      {
        v21 = v20;
      }

      if (v18)
      {
        v22 = v9->i64[0];
        if (v21)
        {
          v9->i64[0] = a2[-1].i64[1];
          goto LABEL_45;
        }

        v9->i64[0] = *v13;
        *v13 = v22;
        v36 = a2[-1].u32[2];
        v117 = v36 == v22;
        v37 = v36 < v22;
        if (v117)
        {
          v37 = a2[-1].u16[6] < WORD2(v22);
        }

        if (v37)
        {
          *v13 = a2[-1].i64[1];
LABEL_45:
          a2[-1].i64[1] = v22;
        }
      }

      else if (v21)
      {
        v30 = *v13;
        *v13 = a2[-1].i64[1];
        a2[-1].i64[1] = v30;
        v31 = *v13 < v9->i32[0];
        if (*v13 == v9->i32[0])
        {
          v31 = *(v13 + 2) < v9->u16[2];
        }

        if (v31)
        {
          v32 = v9->i64[0];
          v9->i64[0] = *v13;
          *v13 = v32;
        }
      }

      v38 = (v13 - 8);
      v39 = *(v13 - 2);
      v40 = v9->u32[2];
      v41 = *(v13 - 2);
      v42 = v41 < v9->u16[6];
      v117 = v39 == v40;
      v43 = v39 < v40;
      if (!v117)
      {
        v42 = v43;
      }

      v44 = a2[-1].u32[0];
      v45 = a2[-1].u16[2] < v41;
      v117 = v44 == v39;
      v46 = v44 < v39;
      if (v117)
      {
        v47 = v45;
      }

      else
      {
        v47 = v46;
      }

      if (v42)
      {
        v48 = v9->i64[1];
        if (v47)
        {
          v9->i64[1] = a2[-1].i64[0];
          goto LABEL_70;
        }

        v9->i64[1] = *v38;
        *v38 = v48;
        v55 = a2[-1].u32[0];
        v117 = v55 == v48;
        v56 = v55 < v48;
        if (v117)
        {
          v56 = a2[-1].u16[2] < WORD2(v48);
        }

        if (v56)
        {
          *v38 = a2[-1].i64[0];
LABEL_70:
          a2[-1].i64[0] = v48;
        }
      }

      else if (v47)
      {
        v49 = *v38;
        *v38 = a2[-1].i64[0];
        a2[-1].i64[0] = v49;
        v50 = v9->u32[2];
        v51 = *v38 < v50;
        if (*v38 == v50)
        {
          v51 = *(v13 - 2) < v9->u16[6];
        }

        if (v51)
        {
          v52 = v9->i64[1];
          v9->i64[1] = *v38;
          *v38 = v52;
        }
      }

      v57 = (v13 + 8);
      v58 = *(v13 + 2);
      v59 = v9[1].u32[0];
      v60 = *(v13 + 6);
      v61 = v60 < v9[1].u16[2];
      v117 = v58 == v59;
      v62 = v58 < v59;
      if (!v117)
      {
        v61 = v62;
      }

      v63 = a2[-2].u32[2];
      v64 = a2[-2].u16[6] < v60;
      v117 = v63 == v58;
      v65 = v63 < v58;
      if (v117)
      {
        v66 = v64;
      }

      else
      {
        v66 = v65;
      }

      if (v61)
      {
        v67 = v9[1].i64[0];
        if (v66)
        {
          v9[1].i64[0] = a2[-2].i64[1];
          goto LABEL_88;
        }

        v9[1].i64[0] = *v57;
        *v57 = v67;
        v72 = a2[-2].u32[2];
        v117 = v72 == v67;
        v73 = v72 < v67;
        if (v117)
        {
          v73 = a2[-2].u16[6] < WORD2(v67);
        }

        if (v73)
        {
          *v57 = a2[-2].i64[1];
LABEL_88:
          a2[-2].i64[1] = v67;
        }
      }

      else if (v66)
      {
        v68 = *v57;
        *v57 = a2[-2].i64[1];
        a2[-2].i64[1] = v68;
        v69 = v9[1].u32[0];
        v70 = *v57 < v69;
        if (*v57 == v69)
        {
          v70 = *(v13 + 6) < v9[1].u16[2];
        }

        if (v70)
        {
          v71 = v9[1].i64[0];
          v9[1].i64[0] = *v57;
          *v57 = v71;
        }
      }

      v74 = *v13;
      v75 = *v38;
      v76 = *(v13 + 2);
      v77 = *(v13 - 2);
      if (*v13 == *v38)
      {
        v78 = v76 < v77;
      }

      else
      {
        v78 = *v13 < *v38;
      }

      v79 = *v57;
      v80 = *(v13 + 6);
      v81 = v80 < v76;
      v117 = *v57 == v74;
      v82 = *v57 < v74;
      if (!v117)
      {
        v81 = v82;
      }

      if (v78)
      {
        v83 = *v38;
        if (v81)
        {
          *v38 = *v57;
          *v57 = v83;
          v83 = *v13;
        }

        else
        {
          *v38 = *v13;
          *v13 = v83;
          v86 = v80 < WORD2(v83);
          if (v79 != v83)
          {
            v86 = v79 < v83;
          }

          if (v86)
          {
            v87 = *v57;
            *v13 = *v57;
            *v57 = v83;
            v83 = v87;
          }
        }
      }

      else
      {
        v83 = *v13;
        if (v81)
        {
          v84 = *v57;
          *v13 = *v57;
          *v57 = v83;
          v85 = v77 > WORD2(v84);
          if (v75 != v84)
          {
            v85 = v75 > v84;
          }

          if (v85)
          {
            v83 = *v38;
            *v38 = v84;
            *v13 = v83;
          }

          else
          {
            v83 = v84;
          }
        }
      }

      v88 = v9->i64[0];
      v9->i64[0] = v83;
      *v13 = v88;
      if (a5)
      {
        goto LABEL_111;
      }

      goto LABEL_108;
    }

    v23 = v9->i32[0];
    v24 = v9->u16[2];
    v25 = v9->i32[0] < *v13;
    if (v9->i32[0] == *v13)
    {
      v25 = v24 < *(v13 + 2);
    }

    v26 = v15 < v24;
    v117 = v14 == v23;
    v27 = v14 < v23;
    if (v117)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    if (v25)
    {
      v29 = *v13;
      if (v28)
      {
        *v13 = a2[-1].i64[1];
        goto LABEL_63;
      }

      *v13 = v9->i64[0];
      v9->i64[0] = v29;
      v53 = a2[-1].u32[2];
      v117 = v53 == v29;
      v54 = v53 < v29;
      if (v117)
      {
        v54 = a2[-1].u16[6] < WORD2(v29);
      }

      if (v54)
      {
        v9->i64[0] = a2[-1].i64[1];
LABEL_63:
        a2[-1].i64[1] = v29;
      }

LABEL_64:
      if (a5)
      {
        goto LABEL_111;
      }

      goto LABEL_108;
    }

    if (!v28)
    {
      goto LABEL_64;
    }

    v33 = v9->i64[0];
    v9->i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v33;
    v34 = v9->i32[0] < *v13;
    if (v9->i32[0] == *v13)
    {
      v34 = v9->u16[2] < *(v13 + 2);
    }

    if (!v34)
    {
      goto LABEL_64;
    }

    v35 = *v13;
    *v13 = v9->i64[0];
    v9->i64[0] = v35;
    if (a5)
    {
      goto LABEL_111;
    }

LABEL_108:
    v89 = v9[-1].u32[2];
    v117 = v89 == v9->i32[0];
    v90 = v89 < v9->i32[0];
    if (v117)
    {
      v90 = v9[-1].u16[6] < v9->u16[2];
    }

    if (!v90)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,shazam::spectral_peak_t *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_116;
    }

LABEL_111:
    v91 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,shazam::spectral_peak_t *,std::__less<void,void> &>(v9->i64, a2);
    if ((v92 & 1) == 0)
    {
      goto LABEL_114;
    }

    v93 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *>(v9, v91);
    v9 = (v91 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *>((v91 + 1), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v91;
      if (v93)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v93)
    {
LABEL_114:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *,false>(v8, v91, a3, -v11, a5 & 1);
      v9 = (v91 + 1);
LABEL_116:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *,0>(v9->i64, &v9->u32[2], v9[1].i64, &a2[-1].i64[1]);
    }

    if (v12 == 5)
    {
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *,0>(v9->i64, &v9->u32[2], v9[1].i64, &v9[1].i64[1]);
      v104 = a2[-1].u32[2];
      v105 = v9[1].u32[2];
      v117 = v104 == v105;
      v106 = v104 < v105;
      if (v117)
      {
        v106 = a2[-1].u16[6] < v9[1].u16[6];
      }

      if (v106)
      {
        v107 = v9[1].i64[1];
        v9[1].i64[1] = a2[-1].i64[1];
        a2[-1].i64[1] = v107;
        LODWORD(v107) = v9[1].i32[2];
        v108 = v9[1].u32[0];
        v117 = v107 == v108;
        v109 = v107 < v108;
        if (v117)
        {
          v109 = v9[1].u16[6] < v9[1].u16[2];
        }

        if (v109)
        {
          v111 = v9[1].i64[0];
          v110 = v9[1].i64[1];
          v9[1].i64[0] = v110;
          v9[1].i64[1] = v111;
          LODWORD(v111) = v9->i32[2];
          v117 = v111 == v110;
          v112 = v111 > v110;
          if (v117)
          {
            v112 = v9->u16[6] > WORD2(v110);
          }

          if (v112)
          {
            v113 = v9->i64[1];
            v9->i64[1] = v110;
            v9[1].i64[0] = v113;
            v114 = v9->u16[2] > WORD2(v110);
            if (v9->i32[0] != v110)
            {
              v114 = v9->i32[0] > v110;
            }

            if (v114)
            {
              v115 = v9->i64[0];
              v9->i64[0] = v110;
              v9->i64[1] = v115;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_11;
  }

  v94 = v9->u32[2];
  v95 = v9->u16[6];
  v96 = v95 < v9->u16[2];
  if (v94 != v9->i32[0])
  {
    v96 = v94 < v9->i32[0];
  }

  v97 = a2[-1].u32[2];
  v98 = a2[-1].u16[6] < v95;
  v117 = v97 == v94;
  v99 = v97 < v94;
  if (v117)
  {
    v100 = v98;
  }

  else
  {
    v100 = v99;
  }

  if (v96)
  {
    v101 = v9->i64[0];
    if (v100)
    {
      goto LABEL_147;
    }

    v9->i64[0] = v9->i64[1];
    v9->i64[1] = v101;
    v102 = a2[-1].u32[2];
    v117 = v102 == v101;
    v103 = v102 < v101;
    if (v117)
    {
      v103 = a2[-1].u16[6] < WORD2(v101);
    }

    if (v103)
    {
      v9->i64[1] = a2[-1].i64[1];
      goto LABEL_148;
    }
  }

  else if (v100)
  {
    v119 = v9->i64[1];
    v9->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v119;
    LODWORD(v119) = v9->i32[2];
    v117 = v119 == v9->i32[0];
    v120 = v119 < v9->i32[0];
    if (v117)
    {
      v120 = v9->u16[6] < v9->u16[2];
    }

    if (v120)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }
  }

  return result;
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *,0>(uint64_t *result, unsigned int *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = v5 < *(result + 2);
  if (*a2 != *result)
  {
    v6 = *a2 < *result;
  }

  v7 = *(a3 + 2);
  v8 = v7 < v5;
  v9 = *a3 == v4;
  v10 = *a3 < v4;
  if (!v9)
  {
    v8 = v10;
  }

  if (v6)
  {
    v11 = *result;
    if (v8)
    {
      *result = *a3;
      *a3 = v11;
      v7 = WORD2(v11);
    }

    else
    {
      *result = *a2;
      *a2 = v11;
      v7 = *(a3 + 2);
      v15 = *a3 < v11;
      if (*a3 == v11)
      {
        v15 = v7 < WORD2(v11);
      }

      if (v15)
      {
        *a2 = *a3;
        *a3 = v11;
        v7 = WORD2(v11);
      }
    }
  }

  else if (v8)
  {
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    v13 = *a2 < *result;
    if (*a2 == *result)
    {
      v13 = *(a2 + 2) < *(result + 2);
    }

    if (v13)
    {
      v14 = *result;
      *result = *a2;
      *a2 = v14;
      v7 = *(a3 + 2);
    }

    else
    {
      v7 = WORD2(v12);
    }
  }

  v16 = *(a4 + 2) < v7;
  if (*a4 != *a3)
  {
    v16 = *a4 < *a3;
  }

  if (v16)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    v18 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v18 = *(a3 + 2) < *(a2 + 2);
    }

    if (v18)
    {
      v19 = *a2;
      *a2 = *a3;
      *a3 = v19;
      v20 = *a2 < *result;
      if (*a2 == *result)
      {
        v20 = *(a2 + 2) < *(result + 2);
      }

      if (v20)
      {
        v21 = *result;
        *result = *a2;
        *a2 = v21;
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = *(v4 + 2);
        v6 = *v4;
        v7 = *(v4 + 6);
        v8 = *(v4 + 2);
        v4 = v2;
        v9 = v7 < v8;
        v10 = v5 == v6;
        v11 = v5 < v6;
        if (!v10)
        {
          v9 = v11;
        }

        if (v9)
        {
          v12 = *v4;
          v13 = HIDWORD(*v4);
          v14 = v3;
          while (1)
          {
            v15 = result + v14;
            *(result + v14 + 8) = *(result + v14);
            if (!v14)
            {
              break;
            }

            v16 = *(v15 - 2);
            v17 = *(v15 - 2) > v13;
            v10 = v16 == v12;
            v18 = v16 > v12;
            if (!v10)
            {
              v17 = v18;
            }

            v14 -= 8;
            if (!v17)
            {
              v19 = (result + v14 + 8);
              goto LABEL_14;
            }
          }

          v19 = result;
LABEL_14:
          *v19 = v12;
        }

        v2 = v4 + 1;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

unsigned int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *>(unsigned int *result, int *a2)
{
  if (result != a2)
  {
    while (result + 2 != a2)
    {
      v2 = result[2];
      v3 = *result;
      v4 = *(result + 6);
      v5 = *(result + 2);
      result += 2;
      v6 = v4 < v5;
      v7 = v2 == v3;
      v8 = v2 < v3;
      if (!v7)
      {
        v6 = v8;
      }

      if (v6)
      {
        v9 = *result;
        v10 = HIDWORD(*result);
        v11 = result;
        do
        {
          v12 = v11;
          v13 = *(v11 - 1);
          v11 -= 2;
          *v12 = v13;
          v14 = *(v12 - 4);
          v15 = *(v12 - 6) > v10;
          v7 = v14 == v9;
          v16 = v14 > v9;
          if (!v7)
          {
            v15 = v16;
          }
        }

        while (v15);
        *v11 = v9;
      }
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,shazam::spectral_peak_t *,std::__less<void,void> &>(unsigned int *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = WORD2(*a1);
  v4 = *(a2 - 8);
  v5 = *(a2 - 4) > v3;
  v6 = v4 == *a1;
  v7 = v4 > *a1;
  if (!v6)
  {
    v5 = v7;
  }

  if (v5)
  {
    v8 = a1;
    do
    {
      v9 = v8[2];
      v8 += 2;
      v10 = v9 > v2;
      if (v9 == v2)
      {
        v10 = *(v8 + 2) > v3;
      }
    }

    while (!v10);
  }

  else
  {
    v11 = a1 + 2;
    do
    {
      v8 = v11;
      if (v11 >= a2)
      {
        break;
      }

      v12 = *v11;
      v13 = *(v8 + 2) > v3;
      v6 = v12 == v2;
      v14 = v12 > v2;
      if (!v6)
      {
        v13 = v14;
      }

      v11 = v8 + 2;
    }

    while (!v13);
  }

  if (v8 < a2)
  {
    do
    {
      v15 = *(a2 - 8);
      a2 -= 8;
      v16 = v15 > v2;
      if (v15 == v2)
      {
        v16 = *(a2 + 4) > v3;
      }
    }

    while (v16);
  }

  while (v8 < a2)
  {
    v17 = *v8;
    *v8 = *a2;
    *a2 = v17;
    do
    {
      v18 = v8[2];
      v8 += 2;
      v19 = v18 > v2;
      if (v18 == v2)
      {
        v19 = *(v8 + 2) > v3;
      }
    }

    while (!v19);
    do
    {
      v20 = *(a2 - 8);
      a2 -= 8;
      v21 = v20 > v2;
      if (v20 == v2)
      {
        v21 = *(a2 + 4) > v3;
      }
    }

    while (v21);
  }

  if (v8 - 2 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 1) = v2;
  return v8;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,shazam::spectral_peak_t *,std::__less<void,void> &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = WORD2(*a1);
  do
  {
    v5 = a1[v2 + 1];
    v6 = WORD2(a1[v2 + 1]) < v4;
    v7 = v5 == v3;
    v8 = v5 < v3;
    if (!v7)
    {
      v6 = v8;
    }

    ++v2;
  }

  while (v6);
  v9 = &a1[v2];
  v10 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v13 = *(a2 - 8);
      a2 -= 8;
      v14 = v13 < v3;
      if (v13 == v3)
      {
        v14 = *(a2 + 4) < v4;
      }
    }

    while (!v14);
  }

  else
  {
    do
    {
      v11 = *(a2 - 8);
      a2 -= 8;
      v12 = v11 < v3;
      if (v11 == v3)
      {
        v12 = *(a2 + 4) < v4;
      }
    }

    while (!v12);
  }

  if (v9 < a2)
  {
    v15 = v9;
    v16 = a2;
    do
    {
      v17 = *v15;
      *v15 = *v16;
      *v16 = v17;
      do
      {
        v18 = *(v15++ + 2);
        v19 = v18 < v3;
        if (v18 == v3)
        {
          v19 = *(v15 + 2) < v4;
        }
      }

      while (v19);
      do
      {
        v20 = *(v16 - 8);
        v16 -= 8;
        v21 = v20 < v3;
        if (v20 == v3)
        {
          v21 = *(v16 + 4) < v4;
        }
      }

      while (!v21);
    }

    while (v15 < v16);
    v10 = v15 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v3;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *>(int8x16_t *a1, int8x16_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v21 = a1->u32[2];
        v22 = a1->u16[6];
        v23 = v22 < a1->u16[2];
        if (v21 != a1->i32[0])
        {
          v23 = v21 < a1->i32[0];
        }

        v24 = a2[-1].u32[2];
        v25 = a2[-1].u16[6] < v22;
        v6 = v24 == v21;
        v26 = v24 < v21;
        if (v6)
        {
          v27 = v25;
        }

        else
        {
          v27 = v26;
        }

        if (!v23)
        {
          if (v27)
          {
            v39 = a1->i64[1];
            a1->i64[1] = a2[-1].i64[1];
            a2[-1].i64[1] = v39;
            LODWORD(v39) = a1->i32[2];
            v6 = v39 == a1->i32[0];
            v40 = v39 < a1->i32[0];
            if (v6)
            {
              v40 = a1->u16[6] < a1->u16[2];
            }

            if (v40)
            {
              *a1 = vextq_s8(*a1, *a1, 8uLL);
            }
          }

          return 1;
        }

        v8 = a1->i64[0];
        if (!v27)
        {
          a1->i64[0] = a1->i64[1];
          a1->i64[1] = v8;
          v46 = a2[-1].u32[2];
          v6 = v46 == v8;
          v47 = v46 < v8;
          if (v6)
          {
            v47 = a2[-1].u16[6] < WORD2(v8);
          }

          if (!v47)
          {
            return 1;
          }

          a1->i64[1] = a2[-1].i64[1];
          goto LABEL_32;
        }

LABEL_31:
        a1->i64[0] = a2[-1].i64[1];
LABEL_32:
        a2[-1].i64[1] = v8;
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *,0>(a1->i64, &a1->u32[2], a1[1].i64, &a2[-1].i64[1]);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *,0>(a1->i64, &a1->u32[2], a1[1].i64, &a1[1].i64[1]);
        v9 = a2[-1].u32[2];
        v10 = a1[1].u32[2];
        v6 = v9 == v10;
        v11 = v9 < v10;
        if (v6)
        {
          v11 = a2[-1].u16[6] < a1[1].u16[6];
        }

        if (v11)
        {
          v12 = a1[1].i64[1];
          a1[1].i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v12;
          LODWORD(v12) = a1[1].i32[2];
          v13 = a1[1].u32[0];
          v6 = v12 == v13;
          v14 = v12 < v13;
          if (v6)
          {
            v14 = a1[1].u16[6] < a1[1].u16[2];
          }

          if (v14)
          {
            v16 = a1[1].i64[0];
            v15 = a1[1].i64[1];
            a1[1].i64[0] = v15;
            a1[1].i64[1] = v16;
            LODWORD(v16) = a1->i32[2];
            v6 = v16 == v15;
            v17 = v16 > v15;
            if (v6)
            {
              v17 = a1->u16[6] > WORD2(v15);
            }

            if (v17)
            {
              v18 = a1->i64[1];
              a1->i64[1] = v15;
              a1[1].i64[0] = v18;
              v19 = a1->u16[2] > WORD2(v15);
              if (a1->i32[0] != v15)
              {
                v19 = a1->i32[0] > v15;
              }

              if (v19)
              {
                v20 = a1->i64[0];
                a1->i64[0] = v15;
                a1->i64[1] = v20;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2[-1].u32[2];
      v6 = v5 == a1->i32[0];
      v7 = v5 < a1->i32[0];
      if (v6)
      {
        v7 = a2[-1].u16[6] < a1->u16[2];
      }

      if (!v7)
      {
        return 1;
      }

      v8 = a1->i64[0];
      goto LABEL_31;
    }
  }

  v28 = a1 + 1;
  v29 = a1[1].u32[0];
  v30 = a1->u32[2];
  v31 = a1->i32[0];
  v32 = a1->u16[6];
  v33 = a1->u16[2];
  v34 = v30 < a1->i32[0];
  if (v30 == a1->i32[0])
  {
    v34 = v32 < v33;
  }

  v35 = a1[1].u16[2];
  v36 = v35 < v32;
  v6 = v29 == v30;
  v37 = v29 < v30;
  if (v6)
  {
    v37 = v36;
  }

  if (v34)
  {
    v38 = a1->i64[0];
    if (v37)
    {
      a1->i64[0] = a1[1].i64[0];
LABEL_59:
      a1[1].i64[0] = v38;
      goto LABEL_60;
    }

    a1->i64[0] = a1->i64[1];
    a1->i64[1] = v38;
    v6 = v29 == v38;
    v48 = v29 < v38;
    if (v6)
    {
      v48 = v35 < WORD2(v38);
    }

    if (v48)
    {
      a1->i64[1] = a1[1].i64[0];
      goto LABEL_59;
    }
  }

  else if (v37)
  {
    v42 = a1->i64[1];
    v41 = a1[1].i64[0];
    a1->i64[1] = v41;
    a1[1].i64[0] = v42;
    v43 = v33 > WORD2(v41);
    v6 = v31 == v41;
    v44 = v31 > v41;
    if (v6)
    {
      v44 = v43;
    }

    if (v44)
    {
      v45 = a1->i64[0];
      a1->i64[0] = v41;
      a1->i64[1] = v45;
    }
  }

LABEL_60:
  v49 = (a1 + 24);
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = v28->i32[0];
    v53 = v49->u16[2] < v28->u16[2];
    if (v49->i32[0] != v52)
    {
      v53 = v49->i32[0] < v52;
    }

    if (v53)
    {
      v54 = v49->i64[0];
      v55 = HIDWORD(v49->i64[0]);
      v56 = v50;
      while (1)
      {
        v57 = &a1->i8[v56];
        *(&a1[1].i64[1] + v56) = *(a1[1].i64 + v56);
        if (v56 == -16)
        {
          break;
        }

        v58 = *(v57 + 2);
        v59 = *(v57 + 6) > v55;
        v6 = v58 == v54;
        v60 = v58 > v54;
        if (!v6)
        {
          v59 = v60;
        }

        v56 -= 8;
        if (!v59)
        {
          v61 = (&a1[1].i64[1] + v56);
          goto LABEL_72;
        }
      }

      v61 = a1;
LABEL_72:
      *v61 = v54;
      if (++v51 == 8)
      {
        return &v49->u64[1] == a2;
      }
    }

    v28 = v49;
    v50 += 8;
    v49 = (v49 + 8);
    if (v49 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *,shazam::spectral_peak_t *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 8 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12 < *a1;
        if (*v12 == *a1)
        {
          v13 = *(v12 + 2) < *(a1 + 4);
        }

        if (v13)
        {
          v14 = *v12;
          *v12 = *a1;
          *a1 = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 1;
      do
      {
        v16 = *a1;
        v17 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *>(a1, a4, v8);
        if (v15 == v17)
        {
          *v17 = v16;
        }

        else
        {
          *v17 = *v15;
          *v15 = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *>(a1, (v17 + 1), a4, (v17 - a1 + 8) >> 3);
        }

        --v15;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v6 + 2 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *(v8 + 2);
        v11 = *(v8 + 2) < *(v8 + 6);
        if (*v8 != v10)
        {
          v11 = *v8 < v10;
        }

        if (v11)
        {
          ++v8;
          v7 = v9;
        }

        else
        {
          v10 = *v8;
        }
      }

      v12 = v10 == *a4;
      v13 = v10 < *a4;
      if (v12)
      {
        v13 = *(v8 + 2) < *(a4 + 2);
      }

      if (!v13)
      {
        v14 = *a4;
        v15 = WORD2(*a4);
        do
        {
          v16 = a4;
          a4 = v8;
          *v16 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v17 = (2 * v7) | 1;
          v8 = (result + 8 * v17);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v18 = *v8;
            v7 = v17;
          }

          else
          {
            v18 = *(v8 + 2);
            v19 = *(v8 + 2) < *(v8 + 6);
            if (*v8 != v18)
            {
              v19 = *v8 < v18;
            }

            if (v19)
            {
              ++v8;
            }

            else
            {
              v18 = *v8;
              v7 = v17;
            }
          }

          v20 = *(v8 + 2) < v15;
          v12 = v18 == v14;
          v21 = v18 < v14;
          if (!v12)
          {
            v20 = v21;
          }
        }

        while (!v20);
        *a4 = v14;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[v3];
    v5 = v4 + 1;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v8 = *(v4 + 4);
      v7 = v4 + 2;
      v9 = *(v7 - 2);
      v10 = v9 < v8;
      if (v9 == v8)
      {
        v10 = *(v7 - 2) < *(v7 + 2);
      }

      if (v10)
      {
        v5 = v7;
      }

      else
      {
        v3 = v6;
      }
    }

    *a1 = *v5;
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::spectral_peak_t *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v7 = *(a2 - 8);
    v6 = (a2 - 8);
    v8 = *v5 < v7;
    if (*v5 == v7)
    {
      v8 = *(v5 + 2) < *(v6 + 2);
    }

    if (v8)
    {
      v9 = *v6;
      v10 = WORD2(*v6);
      do
      {
        v11 = v6;
        v6 = v5;
        *v11 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v12 = *v5 < v9;
        if (*v5 == v9)
        {
          v12 = *(v5 + 2) < v10;
        }
      }

      while (v12);
      *v6 = v9;
    }
  }

  return result;
}

void *std::vector<shazam::spectral_peak_t>::__assign_with_size[abi:ne200100]<shazam::spectral_peak_t const*,shazam::spectral_peak_t const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<shazam::spectral_peak_t>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void std::vector<shazam::spectral_peak_t>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_t>>(a1, a2);
  }

  std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
}

void std::vector<shazam::signature_header_type>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::signature_header_type>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t shazam::reinterpret_safer<shazam::ancient_dead_sig_point_t const*,0>(void *a1)
{
  result = a1[1];
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x64);
    MEMORY[0x231921D00](exception, error_code, v5);
    goto LABEL_6;
  }

  if (*a1 <= 0xFuLL)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, v6, v7);
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

void *std::vector<shazam::ancient_dead_sig_point_t>::__assign_with_size[abi:ne200100]<shazam::ancient_dead_sig_point_t const*,shazam::ancient_dead_sig_point_t const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<shazam::ancient_dead_sig_point_t>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 16;
        *v15 = v16;
        v15 += 16;
        v14 += 16;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void std::vector<shazam::ancient_dead_sig_point_t>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::ancient_dead_sig_point_t>>(a1, a2);
  }

  std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::ancient_dead_sig_point_t>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<shazam::density_filter<shazam::spectral_peak_t>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::density_filter<shazam::spectral_peak_t>>>(result, a2);
    }

    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<std::vector<shazam::spectral_peak_t>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<shazam::spectral_peak_t>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<shazam::spectral_peak_t>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<shazam::spectral_peak_t>>>(a1, a2);
  }

  std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::density_filter<shazam::spectral_peak_t>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

int8x16_t *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<shazam::density_filter<shazam::spectral_peak_t>>,shazam::density_filter<shazam::spectral_peak_t>*>(uint64_t a1, int8x16_t *a2, int8x16_t *a3, int8x16_t *a4)
{
  v12 = a4;
  v11 = a4;
  v8.i64[0] = a1;
  v8.i64[1] = &v11;
  v9 = &v12;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      v6 = v4[1];
      v4 += 2;
      *a4 = v5;
      a4[1] = v6;
      a4 += 2;
    }

    while (v4 != a3);
    v12 = a4;
  }

  v10 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<shazam::density_filter<shazam::spectral_peak_t>>,shazam::density_filter<shazam::spectral_peak_t>*,shazam::density_filter<shazam::spectral_peak_t>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<shazam::density_filter<shazam::spectral_peak_t>>,shazam::density_filter<shazam::spectral_peak_t>*>>::~__exception_guard_exceptions[abi:ne200100](&v8);
}

int8x16_t *std::__allocator_destroy[abi:ne200100]<std::allocator<shazam::density_filter<shazam::spectral_peak_t>>,shazam::density_filter<shazam::spectral_peak_t>*,shazam::density_filter<shazam::spectral_peak_t>*>(uint64_t a1, int8x16_t *a2, int8x16_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      result = shazam::density_filter<shazam::spectral_peak_t>::flush(v4);
      v4 += 2;
    }

    while (v4 != a3);
  }

  return result;
}

int8x16_t *std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<shazam::density_filter<shazam::spectral_peak_t>>,shazam::density_filter<shazam::spectral_peak_t>*>>::~__exception_guard_exceptions[abi:ne200100](int8x16_t *a1)
{
  if ((a1[1].i8[8] & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<shazam::density_filter<shazam::spectral_peak_t>>,shazam::density_filter<shazam::spectral_peak_t>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

int8x16_t *std::_AllocatorDestroyRangeReverse<std::allocator<shazam::density_filter<shazam::spectral_peak_t>>,shazam::density_filter<shazam::spectral_peak_t>*>::operator()[abi:ne200100](int8x16_t *result)
{
  v1 = *result[1].i64[0];
  v2 = *result->i64[1];
  while (v1 != v2)
  {
    v1 -= 2;
    result = shazam::density_filter<shazam::spectral_peak_t>::flush(v1);
  }

  return result;
}

int8x16_t *std::__split_buffer<shazam::density_filter<shazam::spectral_peak_t>>::~__split_buffer(int8x16_t *a1)
{
  std::__split_buffer<shazam::density_filter<shazam::spectral_peak_t>>::__destruct_at_end[abi:ne200100](a1, a1->i64[1]);
  if (a1->i64[0])
  {
    operator delete(a1->i64[0]);
  }

  return a1;
}

int8x16_t *std::__split_buffer<shazam::density_filter<shazam::spectral_peak_t>>::__destruct_at_end[abi:ne200100](int8x16_t *result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = v3[1].i64[0];
    if (v4 == a2)
    {
      break;
    }

    v3[1].i64[0] = v4 - 32;
    result = shazam::density_filter<shazam::spectral_peak_t>::flush((v4 - 32));
  }

  return result;
}

uint64_t std::vector<shazam::density_filter<shazam::spectral_peak_t>>::__emplace_back_slow_path<std::vector<shazam::spectral_peak_t> &,shazam::signature_density const&,std::chrono::duration<unsigned char,std::ratio<1l,125l>> const&>(uint64_t a1, uint64_t a2, int *a3, unsigned __int8 *a4)
{
  v4 = (*(a1 + 8) - *a1) >> 5;
  v5 = v4 + 1;
  if ((v4 + 1) >> 59)
  {
    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v5)
  {
    v5 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v5;
  }

  v23 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::density_filter<shazam::spectral_peak_t>>>(a1, v9);
  }

  v10 = (32 * v4);
  v21.i64[0] = 0;
  v21.i64[1] = v10;
  *(&v22 + 1) = 0;
  v11 = *a3;
  v12 = *a4;
  *v10 = 0;
  v10[1] = a2;
  if (v11 == 0x7FFFFFFF)
  {
    v11 = -1;
  }

  v13 = v12 == 15;
  v14 = 256;
  if (v13)
  {
    v14 = 211;
  }

  *(32 * v4 + 0x10) = v11;
  *(32 * v4 + 0x18) = v14;
  *&v22 = v10 + 4;
  v15 = *(a1 + 8);
  v16 = (v10 + *a1 - v15);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<shazam::density_filter<shazam::spectral_peak_t>>,shazam::density_filter<shazam::spectral_peak_t>*>(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = *(a1 + 16);
  v20 = v22;
  *(a1 + 8) = v22;
  *&v22 = v17;
  *(&v22 + 1) = v18;
  v21.i64[0] = v17;
  v21.i64[1] = v17;
  std::__split_buffer<shazam::density_filter<shazam::spectral_peak_t>>::~__split_buffer(&v21);
  return v20;
}

void std::vector<shazam::density_filter<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<shazam::density_filter<shazam::spectral_peak_t>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

int8x16_t *std::vector<shazam::density_filter<shazam::spectral_peak_t>>::__base_destruct_at_end[abi:ne200100](int8x16_t *result, int8x16_t *a2)
{
  v3 = result;
  for (i = result->i64[1]; i != a2; result = shazam::density_filter<shazam::spectral_peak_t>::flush(i))
  {
    i -= 2;
  }

  v3->i64[1] = a2;
  return result;
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::vector<std::vector<shazam::spectral_peak_t>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<shazam::spectral_peak_t>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

__n128 std::__function::__func<shazam::basic_signature<(shazam::signature_density)24> anonymous namespace::parse<(shazam::signature_density)24>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1},std::allocator<shazam::basic_signature<(shazam::signature_density)24> anonymous namespace::parse<(shazam::signature_density)24>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1}>,void ()(shazam::signature_header)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2845C5918;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<shazam::basic_signature<(shazam::signature_density)24> anonymous namespace::parse<(shazam::signature_density)24>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1},std::allocator<shazam::basic_signature<(shazam::signature_density)24> anonymous namespace::parse<(shazam::signature_density)24>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1}>,void ()(shazam::signature_header)>::operator()(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*a2 <= 1610809407)
  {
    if (v4 > 1610809344)
    {
      if ((v4 - 1610809345) < 3)
      {
        if ((**(a1 + 16) & 1) == 0)
        {
          v5 = (v4 - 1610809345);
          goto LABEL_28;
        }
      }

      else if ((v4 - 1610809348) < 3)
      {
        **(a1 + 16) = 1;
        v5 = (v4 - 1610809348);
LABEL_28:
        v25 = *(a1 + 24);
        if (v5 + 1 > *v25)
        {
          v26 = v5 + 1;
        }

        else
        {
          v26 = *v25;
        }

        *v25 = v26;
        std::vector<std::vector<shazam::spectral_peak_t>>::resize(*(a1 + 32), v26);
        std::vector<shazam::signature_header_type>::resize(*(a1 + 40), **(a1 + 24));
        *(**(a1 + 40) + 4 * v5) = *a2;
        v27 = **(a1 + 32);
        v28 = *(a2 + 8);
        v29 = shazam::reinterpret_safer<shazam::ancient_dead_sig_point_t const*,0>((a2 + 8));
        v30 = *MEMORY[0x277D85DE8];

        std::vector<shazam::ancient_dead_sig_point_t>::__assign_with_size[abi:ne200100]<shazam::ancient_dead_sig_point_t const*,shazam::ancient_dead_sig_point_t const*>((v27 + 24 * v5), v29, &v29[v28 & 0xFFFFFFFFFFFFFFF0], v28 >> 4);
        return;
      }

      goto LABEL_41;
    }

    switch(v4)
    {
      case 1342177281:
        v32 = shazam::reinterpret_safer<shazam::legacy_sig_info const*,0>((a2 + 8));
        shazam::signature_info::convert(v32, v43);
        if (v44 != 1)
        {
          exception = __cxa_allocate_exception(0x20uLL);
          error_code = shazam::make_error_code(*v43);
          MEMORY[0x231921D00](exception, error_code, v38);
          __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
        }

        break;
      case 1342177282:
        v33 = shazam::reinterpret_safer<shazam::LegacyFatSigInfo const*,0>((a2 + 8));
        shazam::signature_info::convert(v33, v43);
        if (v44 != 1)
        {
          v39 = __cxa_allocate_exception(0x20uLL);
          v40 = shazam::make_error_code(*v43);
          MEMORY[0x231921D00](v39, v40, v41);
          __cxa_throw(v39, MEMORY[0x277D82718], MEMORY[0x277D82650]);
        }

        break;
      case 1342177283:
        v21 = shazam::reinterpret_safer<shazam::SumoSigInfo const*,0>((a2 + 8));
        shazam::signature_info::signature_info(v43, v21);
        v22 = *(a1 + 8);
        v23 = *v43;
        v24 = *&v43[12];
LABEL_40:
        *(v22 + 12) = v24;
        *v22 = v23;
        goto LABEL_41;
      default:
        goto LABEL_41;
    }

    v34 = tl::expected<shazam::signature_info,shazam::sig_error>::value<shazam::signature_info,(void *)0>(v43);
    v22 = *(a1 + 8);
    v23 = *v34;
    v24 = *(v34 + 3);
    goto LABEL_40;
  }

  if ((v4 - 1610809408) < 4)
  {
    v14 = (v4 - 1610809408);
    v15 = *(a1 + 24);
    if (v14 + 1 > *v15)
    {
      v16 = v14 + 1;
    }

    else
    {
      v16 = *v15;
    }

    *v15 = v16;
    if (*(a2 + 8) >= 5uLL)
    {
      v17 = *(a2 + 8);
      v18 = shazam::reinterpret_safer<shazam::spectral_peak_compact_t const*,0>((a2 + 8));
      v19 = *(*(a1 + 8) + 32) + 24 * v14;
      v20 = *v19;
      if (*v19)
      {
        *(v19 + 8) = v20;
        operator delete(v20);
        *v19 = 0;
        *(v19 + 8) = 0;
        *(v19 + 16) = 0;
      }

      *v19 = *v43;
      *(v19 + 16) = *&v43[16];
    }

    goto LABEL_41;
  }

  v6 = (v4 - 1610809600);
  if (v6 >= 4)
  {
    if (v4 == 1610874935)
    {
      v31 = *(a1 + 8);
      std::vector<std::vector<shazam::spectral_peak_t>>::__vdeallocate((v31 + 32));
      *(v31 + 32) = *v43;
      *(v31 + 48) = *&v43[16];
      v42 = v43;
      memset(v43, 0, 24);
      std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v42);
      **(a1 + 24) = 4;
    }

    goto LABEL_41;
  }

  v7 = *(a1 + 24);
  if (v6 + 1 > *v7)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = *v7;
  }

  *v7 = v8;
  v9 = *(a2 + 8);
  if (v9 < 8)
  {
LABEL_41:
    v35 = *MEMORY[0x277D85DE8];
    return;
  }

  v10 = shazam::reinterpret_safer<shazam::spectral_peak_t const*,0>((a2 + 8));
  v11 = *MEMORY[0x277D85DE8];
  v12 = v10;
  v13 = (*(*(a1 + 8) + 32) + 24 * v6);

  std::vector<shazam::spectral_peak_t>::__assign_with_size[abi:ne200100]<shazam::spectral_peak_t const*,shazam::spectral_peak_t const*>(v13, v12, &v12[v9 & 0xFFFFFFFFFFFFFFF8], v9 >> 3);
}

uint64_t std::__function::__func<shazam::basic_signature<(shazam::signature_density)24> anonymous namespace::parse<(shazam::signature_density)24>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1},std::allocator<shazam::basic_signature<(shazam::signature_density)24> anonymous namespace::parse<(shazam::signature_density)24>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1}>,void ()(shazam::signature_header)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<shazam::basic_signature<(shazam::signature_density)2147483647> anonymous namespace::parse<(shazam::signature_density)2147483647>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1},std::allocator<shazam::basic_signature<(shazam::signature_density)2147483647> anonymous namespace::parse<(shazam::signature_density)2147483647>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1}>,void ()(shazam::signature_header)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2845C5998;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<shazam::basic_signature<(shazam::signature_density)2147483647> anonymous namespace::parse<(shazam::signature_density)2147483647>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1},std::allocator<shazam::basic_signature<(shazam::signature_density)2147483647> anonymous namespace::parse<(shazam::signature_density)2147483647>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1}>,void ()(shazam::signature_header)>::operator()(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*a2 <= 1610809407)
  {
    if (v4 > 1610809344)
    {
      if ((v4 - 1610809345) < 3)
      {
        if ((**(a1 + 16) & 1) == 0)
        {
          v5 = (v4 - 1610809345);
          goto LABEL_28;
        }
      }

      else if ((v4 - 1610809348) < 3)
      {
        **(a1 + 16) = 1;
        v5 = (v4 - 1610809348);
LABEL_28:
        v25 = *(a1 + 24);
        if (v5 + 1 > *v25)
        {
          v26 = v5 + 1;
        }

        else
        {
          v26 = *v25;
        }

        *v25 = v26;
        std::vector<std::vector<shazam::spectral_peak_t>>::resize(*(a1 + 32), v26);
        std::vector<shazam::signature_header_type>::resize(*(a1 + 40), **(a1 + 24));
        *(**(a1 + 40) + 4 * v5) = *a2;
        v27 = **(a1 + 32);
        v28 = *(a2 + 8);
        v29 = shazam::reinterpret_safer<shazam::ancient_dead_sig_point_t const*,0>((a2 + 8));
        v30 = *MEMORY[0x277D85DE8];

        std::vector<shazam::ancient_dead_sig_point_t>::__assign_with_size[abi:ne200100]<shazam::ancient_dead_sig_point_t const*,shazam::ancient_dead_sig_point_t const*>((v27 + 24 * v5), v29, &v29[v28 & 0xFFFFFFFFFFFFFFF0], v28 >> 4);
        return;
      }

      goto LABEL_41;
    }

    switch(v4)
    {
      case 1342177281:
        v32 = shazam::reinterpret_safer<shazam::legacy_sig_info const*,0>((a2 + 8));
        shazam::signature_info::convert(v32, v43);
        if (v44 != 1)
        {
          exception = __cxa_allocate_exception(0x20uLL);
          error_code = shazam::make_error_code(*v43);
          MEMORY[0x231921D00](exception, error_code, v38);
          __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
        }

        break;
      case 1342177282:
        v33 = shazam::reinterpret_safer<shazam::LegacyFatSigInfo const*,0>((a2 + 8));
        shazam::signature_info::convert(v33, v43);
        if (v44 != 1)
        {
          v39 = __cxa_allocate_exception(0x20uLL);
          v40 = shazam::make_error_code(*v43);
          MEMORY[0x231921D00](v39, v40, v41);
          __cxa_throw(v39, MEMORY[0x277D82718], MEMORY[0x277D82650]);
        }

        break;
      case 1342177283:
        v21 = shazam::reinterpret_safer<shazam::SumoSigInfo const*,0>((a2 + 8));
        shazam::signature_info::signature_info(v43, v21);
        v22 = *(a1 + 8);
        v23 = *v43;
        v24 = *&v43[12];
LABEL_40:
        *(v22 + 12) = v24;
        *v22 = v23;
        goto LABEL_41;
      default:
        goto LABEL_41;
    }

    v34 = tl::expected<shazam::signature_info,shazam::sig_error>::value<shazam::signature_info,(void *)0>(v43);
    v22 = *(a1 + 8);
    v23 = *v34;
    v24 = *(v34 + 3);
    goto LABEL_40;
  }

  if ((v4 - 1610809408) < 4)
  {
    v14 = (v4 - 1610809408);
    v15 = *(a1 + 24);
    if (v14 + 1 > *v15)
    {
      v16 = v14 + 1;
    }

    else
    {
      v16 = *v15;
    }

    *v15 = v16;
    if (*(a2 + 8) >= 5uLL)
    {
      v17 = *(a2 + 8);
      v18 = shazam::reinterpret_safer<shazam::spectral_peak_compact_t const*,0>((a2 + 8));
      v19 = *(*(a1 + 8) + 32) + 24 * v14;
      v20 = *v19;
      if (*v19)
      {
        *(v19 + 8) = v20;
        operator delete(v20);
        *v19 = 0;
        *(v19 + 8) = 0;
        *(v19 + 16) = 0;
      }

      *v19 = *v43;
      *(v19 + 16) = *&v43[16];
    }

    goto LABEL_41;
  }

  v6 = (v4 - 1610809600);
  if (v6 >= 4)
  {
    if (v4 == 1610874935)
    {
      v31 = *(a1 + 8);
      std::vector<std::vector<shazam::spectral_peak_t>>::__vdeallocate((v31 + 32));
      *(v31 + 32) = *v43;
      *(v31 + 48) = *&v43[16];
      v42 = v43;
      memset(v43, 0, 24);
      std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v42);
      **(a1 + 24) = 4;
    }

    goto LABEL_41;
  }

  v7 = *(a1 + 24);
  if (v6 + 1 > *v7)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = *v7;
  }

  *v7 = v8;
  v9 = *(a2 + 8);
  if (v9 < 8)
  {
LABEL_41:
    v35 = *MEMORY[0x277D85DE8];
    return;
  }

  v10 = shazam::reinterpret_safer<shazam::spectral_peak_t const*,0>((a2 + 8));
  v11 = *MEMORY[0x277D85DE8];
  v12 = v10;
  v13 = (*(*(a1 + 8) + 32) + 24 * v6);

  std::vector<shazam::spectral_peak_t>::__assign_with_size[abi:ne200100]<shazam::spectral_peak_t const*,shazam::spectral_peak_t const*>(v13, v12, &v12[v9 & 0xFFFFFFFFFFFFFFF8], v9 >> 3);
}

uint64_t std::__function::__func<shazam::basic_signature<(shazam::signature_density)2147483647> anonymous namespace::parse<(shazam::signature_density)2147483647>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1},std::allocator<shazam::basic_signature<(shazam::signature_density)2147483647> anonymous namespace::parse<(shazam::signature_density)2147483647>(shazam::packed_signature_view const&)::{lambda(shazam::signature_header const&)#1}>,void ()(shazam::signature_header)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(shazam::signature_header)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<shazam::freebird_signature shazam::unpack_signature<shazam::freebird_signature>(shazam::packed_signature_view const&)::$_0,std::allocator<shazam::freebird_signature shazam::unpack_signature<shazam::freebird_signature>(shazam::packed_signature_view const&)::$_0>,void ()(shazam::signature_header)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2845C5A18;
  a2[1] = v2;
  return result;
}

void std::__function::__func<shazam::freebird_signature shazam::unpack_signature<shazam::freebird_signature>(shazam::packed_signature_view const&)::$_0,std::allocator<shazam::freebird_signature shazam::unpack_signature<shazam::freebird_signature>(shazam::packed_signature_view const&)::$_0>,void ()(shazam::signature_header)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1610940416)
  {
    v7 = *(a2 + 8);
    v5 = (a2 + 8);
    v6 = v7;
    if ((v7 & 3) != 0 || v6 <= 7 || (v8 = *(v5 + 1), v9 = (v6 - 8) >> 2, v9 != v8[1]))
    {
LABEL_12:
      exception = __cxa_allocate_exception(0x20uLL);
      error_code = shazam::make_error_code(0x86);
      MEMORY[0x231921D00](exception, error_code, v16);
      goto LABEL_15;
    }

    if (*v8 >> 28)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v17 = shazam::make_error_code(0x85);
      MEMORY[0x231921D00](exception, v17, v18);
LABEL_15:
      __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }

    subspan = gsl::span<char const,18446744073709551615ul>::make_subspan(v5, 8uLL, 0xFFFFFFFFFFFFFFFFLL);
    v12 = v11;
    *&v20[4] = 0;
    v21 = 0;
    v22 = 0;
    v13 = *v8;
    v19[0] = *v8 & 0x3FFF;
    v19[1] = (v13 >> 14) & 0x3FFF;
    *v20 = (v13 >> 28);
    std::vector<shazam::signature_header_type>::resize(&v20[4], v9);
    memcpy(*&v20[4], v12, subspan);
    std::vector<shazam::freebird_tensor>::push_back[abi:ne200100](*(a1 + 8), v19);
    if (*&v20[4])
    {
      v21 = *&v20[4];
      operator delete(*&v20[4]);
    }
  }

  else if (*a2 == 1342177285)
  {
    if (*(a2 + 8) > 0x1BuLL)
    {
      v3 = *(a2 + 16);
      v4 = *(a1 + 8);
      *(v4 + 24) = *(v3 + 12);
      *(v4 + 28) = *(v3 + 16);
      *(*(a1 + 8) + 32) = shazam::freebird_header::get_raw_sample_rate(v3);
      *(*(a1 + 8) + 40) = shazam::freebird_header::get_sample_length_samples(v3);
      return;
    }

    goto LABEL_12;
  }
}

uint64_t std::__function::__func<shazam::freebird_signature shazam::unpack_signature<shazam::freebird_signature>(shazam::packed_signature_view const&)::$_0,std::allocator<shazam::freebird_signature shazam::unpack_signature<shazam::freebird_signature>(shazam::packed_signature_view const&)::$_0>,void ()(shazam::signature_header)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<shazam::freebird_tensor>::push_back[abi:ne200100](uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<shazam::freebird_tensor>::__emplace_back_slow_path<shazam::freebird_tensor const&>(a1, a2);
  }

  else
  {
    std::vector<shazam::freebird_tensor>::__construct_one_at_end[abi:ne200100]<shazam::freebird_tensor const&>(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

gsl::details *gsl::span<char const,18446744073709551615ul>::make_subspan(gsl::details *a1, unint64_t a2, gsl::details *this)
{
  v3 = *a1 - a2;
  if (*a1 < a2)
  {
    goto LABEL_6;
  }

  if (this == -1)
  {
    this = (*a1 - a2);
    if (v3 != -1)
    {
      goto LABEL_4;
    }

LABEL_6:
    gsl::details::terminate(a1);
  }

  if (v3 < this)
  {
    goto LABEL_6;
  }

LABEL_4:
  v4 = *(a1 + 1) + a2;
  return this;
}

uint64_t std::vector<shazam::freebird_tensor>::__construct_one_at_end[abi:ne200100]<shazam::freebird_tensor const&>(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  v3[2] = 0;
  v3[3] = 0;
  v3[1] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((v3 + 1), a2[1], a2[2], (a2[2] - a2[1]) >> 2);
  *(a1 + 8) = v3 + 4;
  return result;
}

uint64_t std::vector<shazam::freebird_tensor>::__emplace_back_slow_path<shazam::freebird_tensor const&>(uint64_t *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::freebird_tensor>>(a1, v7);
  }

  v8 = (32 * v2);
  v15 = 0;
  v16 = v8;
  v17 = (32 * v2);
  *v8 = *a2;
  v8[2] = 0;
  v8[3] = 0;
  v8[1] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(32 * v2 + 8, a2[1], a2[2], (a2[2] - a2[1]) >> 2);
  *&v17 = v17 + 32;
  v9 = a1[1];
  v10 = (v16 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<shazam::freebird_tensor>,shazam::freebird_tensor*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<shazam::freebird_tensor>::~__split_buffer(&v15);
  return v14;
}

void sub_230FA9134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<shazam::freebird_tensor>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_230FA91A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::signature_header_type>>(a1, a2);
  }

  std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::freebird_tensor>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<shazam::freebird_tensor>,shazam::freebird_tensor*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      *(a4 + 1) = *(v6 + 8);
      a4[3] = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 4;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<shazam::freebird_tensor>,shazam::freebird_tensor*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<shazam::freebird_tensor>,shazam::freebird_tensor*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<shazam::freebird_tensor>,shazam::freebird_tensor*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<shazam::freebird_tensor>,shazam::freebird_tensor*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 32;
  }
}

uint64_t std::__split_buffer<shazam::freebird_tensor>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<shazam::freebird_tensor>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<shazam::freebird_tensor>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

__n128 std::__function::__func<std::tuple<shazam::basic_signature<(shazam::signature_density)2147483647>,shazam::freebird_signature> shazam::unpack_signature<std::tuple<shazam::basic_signature<(shazam::signature_density)2147483647>,shazam::freebird_signature>>(shazam::packed_signature_view const&)::$_0,std::allocator<std::tuple<shazam::basic_signature<(shazam::signature_density)2147483647>,shazam::freebird_signature> shazam::unpack_signature<std::tuple<shazam::basic_signature<(shazam::signature_density)2147483647>,shazam::freebird_signature>>(shazam::packed_signature_view const&)::$_0>,void ()(shazam::signature_header)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2845C5A98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<std::tuple<shazam::basic_signature<(shazam::signature_density)2147483647>,shazam::freebird_signature> shazam::unpack_signature<std::tuple<shazam::basic_signature<(shazam::signature_density)2147483647>,shazam::freebird_signature>>(shazam::packed_signature_view const&)::$_0,std::allocator<std::tuple<shazam::basic_signature<(shazam::signature_density)2147483647>,shazam::freebird_signature> shazam::unpack_signature<std::tuple<shazam::basic_signature<(shazam::signature_density)2147483647>,shazam::freebird_signature>>(shazam::packed_signature_view const&)::$_0>,void ()(shazam::signature_header)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1610940417)
  {
    v9 = shazam::packed_signature_view::packed_signature_view(v19, *(a2 + 8), *(a2 + 16));
    if (shazam::packed_signature_view::is_shazamkit(v9))
    {
      if (v20 == 1342177282)
      {
        shazam::unpack_signature<shazam::basic_signature<(shazam::signature_density)2147483647>>(&v15);
      }

      if (v20 == 1342177285)
      {
        shazam::unpack_signature<shazam::freebird_signature>(v19, &v15);
        v10 = *(a1 + 8);
        std::vector<shazam::freebird_tensor>::__vdeallocate((v10 + 56));
        *(v10 + 56) = v15;
        *(v10 + 72) = v16;
        v16 = 0;
        v15 = 0uLL;
        *(v10 + 80) = v17;
        *(v10 + 96) = v18;
        v21 = &v15;
        std::vector<shazam::freebird_tensor>::__destroy_vector::operator()[abi:ne200100](&v21);
        return;
      }
    }

    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x66);
    MEMORY[0x231921D00](exception, error_code, v14);
LABEL_14:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  if (*a2 != 1342177286)
  {
    return;
  }

  if (*(a2 + 8) <= 0x13uLL)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v11 = shazam::make_error_code(0x86);
    MEMORY[0x231921D00](exception, v11, v12);
    goto LABEL_14;
  }

  v3 = *(a2 + 16);
  v4 = *(a1 + 16);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 4);
  *v4 = v5;
  if (*(*(a1 + 16) + 16) != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, v7, v8);
    goto LABEL_14;
  }
}

uint64_t std::__function::__func<std::tuple<shazam::basic_signature<(shazam::signature_density)2147483647>,shazam::freebird_signature> shazam::unpack_signature<std::tuple<shazam::basic_signature<(shazam::signature_density)2147483647>,shazam::freebird_signature>>(shazam::packed_signature_view const&)::$_0,std::allocator<std::tuple<shazam::basic_signature<(shazam::signature_density)2147483647>,shazam::freebird_signature> shazam::unpack_signature<std::tuple<shazam::basic_signature<(shazam::signature_density)2147483647>,shazam::freebird_signature>>(shazam::packed_signature_view const&)::$_0>,void ()(shazam::signature_header)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<shazam::freebird_tensor>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<shazam::freebird_tensor>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

BOOL shazam::fit_points(uint64_t *a1, int **a2, float *a3, uint64_t a4, float *a5, double *a6, gsl::details *a7, unsigned int a8, float a9)
{
  *(a7 + 1) = *a7;
  v16 = (a1[3] + 4 * a4);
  v18 = *v16;
  v17 = v16[1];
  v19 = v17;
  v20 = llround(*a6);
  v21 = *a1;
  if (v17 - v18 >= 2)
  {
    do
    {
      if (*(v21 + 4 * ((v19 + v18) >> 1)) >> 14 < (v20 - a8))
      {
        v18 = (v19 + v18) >> 1;
      }

      else
      {
        v19 = (v19 + v18) >> 1;
      }
    }

    while (v19 - v18 > 1);
  }

  gsl::span<shazam::peak_tf const,18446744073709551615ul>::span<18446744073709551615ul,0>(&v28, v21 + 4 * v19, v21 + 4 * v17);
  shazam::match_peaks(*&v28, v29, a2, v20, a7, a8, a9, *a5);
  if (*(a7 + 1) - *a7 >= 0x60uLL && (v31[0] = gsl::make_span<std::vector<shazam::tfmatch>>(a7), v31[1] = v22, shazam::regress<shazam::tfmatch const,shazam::extractX<shazam::tfmatch const>,shazam::extractY<shazam::tfmatch const>>(v31, &v28), v30 == 1))
  {
    v23 = v28;
    *a6 = *&v29 + *a6;
    v24 = (*a5 + 1.0) * v23 + -1.0;
    *a5 = v24;
    return a3[1] >= v24 && *a3 <= v24;
  }

  else
  {
    return 0;
  }
}

gsl::details *gsl::span<shazam::peak_tf const,18446744073709551615ul>::storage_type<gsl::details::extent_type<18446744073709551615ul>>::storage_type<unsigned long>(gsl::details *result, uint64_t a2, uint64_t a3)
{
  *result = a3;
  if (a3 == -1 || (*(result + 1) = a2) == 0 && a3)
  {
    gsl::details::terminate(result);
  }

  return result;
}

gsl::details *shazam::regress<shazam::tfmatch const,shazam::extractX<shazam::tfmatch const>,shazam::extractY<shazam::tfmatch const>>@<X0>(gsl::details *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = *(result + 1);
  v5 = v4 + 16 * *result;
  v16 = v4;
  v17 = v5;
  v18 = v4;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  while (v18 != v5)
  {
    v10 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v16);
    v11 = v10[2];
    v9 = v9 + (v11 * v11);
    v8 = v8 + (v11 * *v10);
    v6 = v6 + v11;
    v7 = v7 + *v10;
    result = gsl::details::span_iterator<shazam::tfmatch const>::operator++(&v16);
    if (v16 != v4 || v17 != v5)
    {
      gsl::details::terminate(result);
    }
  }

  v13 = *v2;
  v14 = v13 * v9 - v6 * v6;
  if (v14 == 0.0)
  {
    v15 = 0;
    *a2 = 0;
  }

  else
  {
    *a2 = (v13 * v8 - v7 * v6) / v14;
    *(a2 + 8) = (v9 * v7 - v8 * v6) / v14;
    v15 = 1;
  }

  *(a2 + 16) = v15;
  return result;
}

uint64_t gsl::make_span<std::vector<shazam::tfmatch>>(gsl::details *a1)
{
  v1 = *(a1 + 1);
  v2 = v1 - *a1;
  if (v2 == -16 || (!*a1 ? (v3 = v1 == 0) : (v3 = 1), !v3))
  {
    gsl::details::terminate(a1);
  }

  return v2 >> 4;
}

gsl::details *gsl::details::span_iterator<shazam::tfmatch const>::operator++(gsl::details *result)
{
  if (!*result || (v1 = *(result + 2)) == 0 || (v2 = *(result + 1)) == 0 || v1 >= v2)
  {
    gsl::details::terminate(result);
  }

  *(result + 2) = v1 + 16;
  return result;
}

uint64_t shazam::FatHeaderIterator(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = a2;
  if (a1 <= 0x2F)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, error_code, v15);
    goto LABEL_16;
  }

  v4 = shazam::reinterpret_safer<shazam::LegacyFatSigInfo const*,0>(&v24);
  subspan = gsl::span<char const,18446744073709551615ul>::make_subspan(&v24, 0x30uLL, 0xFFFFFFFFFFFFFFFFLL);
  if (subspan != *(v4 + 8))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v16 = shazam::make_error_code(0x6A);
    MEMORY[0x231921D00](exception, v16, v17);
LABEL_16:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v7 = subspan;
  v8 = v6;
  v9 = *(v4 + 4);
  v10 = shazam::crc32(0, (v25 + 8), (v24 - 8));
  if (v9 != -87368039 && v10 != v9)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v19 = shazam::make_error_code(0x84);
    MEMORY[0x231921D00](exception, v19, v20);
    goto LABEL_16;
  }

  v21 = 1342177282;
  v22 = v24;
  if (v24 == -1 || (v23 = v25) == 0 && v24)
  {
    gsl::details::terminate(v10);
  }

  v12 = *(a3 + 24);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v12 + 48))(v12, &v21);
  return shazam::iterate_headers<shazam::fp_data_header_extern_new>(v7, v8, a3);
}

uint64_t shazam::iterate_headers<shazam::fp_data_header_extern_new>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v4 = shazam::reinterpret_safer<shazam::fp_data_header_extern_new const*,0>(&v35);
  if (*v4 != 0x40000000)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x6F);
    MEMORY[0x231921D00](exception, error_code, v24);
    goto LABEL_21;
  }

  v5 = v4;
  v6 = v4[1];
  if (v35 < v6)
  {
LABEL_9:
    exception = __cxa_allocate_exception(0x20uLL);
    v30 = shazam::make_error_code(0x70);
    MEMORY[0x231921D00](exception, v30, v31);
    goto LABEL_21;
  }

  if (v6 <= 8)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v25 = shazam::make_error_code(0x71);
    MEMORY[0x231921D00](exception, v25, v26);
    goto LABEL_21;
  }

  v7 = v35 - v6;
  if (v7)
  {
    if (v7 > 7 || (v35 & 7) != 0)
    {
      goto LABEL_9;
    }
  }

  v32 = 0x40000000;
  subspan = gsl::span<char const,18446744073709551615ul>::make_subspan(&v35, 8uLL, 0xFFFFFFFFFFFFFFFFLL);
  v34 = v9;
  v10 = *(a3 + 24);
  if (!v10)
  {
LABEL_18:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v10 + 48))(v10, &v32);
  v12 = v5[1];
  v13 = 8;
  if (v12 >= 9)
  {
    while (v12 - v13 > 7)
    {
      v14 = (v36 + v13);
      v15 = v13 + 8;
      v16 = *(v36 + v13 + 4);
      if (v12 - (v13 + 8) < v16)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        v19 = shazam::make_error_code(0x70);
        MEMORY[0x231921D00](exception, v19, v20);
        goto LABEL_21;
      }

      v32 = *v14;
      subspan = gsl::span<char const,18446744073709551615ul>::make_subspan(&v35, v13 + 8, v16);
      v34 = v17;
      v18 = *(a3 + 24);
      if (!v18)
      {
        goto LABEL_18;
      }

      result = (*(*v18 + 48))(v18, &v32);
      v13 = v15 + ((v14[1] + 3) & 0xFFFFFFFC);
      v12 = v5[1];
      if (v13 >= v12)
      {
        goto LABEL_16;
      }
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v21 = shazam::make_error_code(0x71);
    MEMORY[0x231921D00](exception, v21, v22);
LABEL_21:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

LABEL_16:
  if (v13 != v12)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v27 = shazam::make_error_code(0x72);
    MEMORY[0x231921D00](exception, v27, v28);
    goto LABEL_21;
  }

  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t shazam::reinterpret_safer<shazam::fp_data_header_extern_new const*,0>(void *a1)
{
  result = a1[1];
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x64);
    MEMORY[0x231921D00](exception, error_code, v5);
    goto LABEL_6;
  }

  if (*a1 <= 7uLL)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = shazam::make_error_code(0x69);
    MEMORY[0x231921D00](exception, v6, v7);
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

void sub_230FAA3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t **__p, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  __p = &a12;
  std::vector<shazam::freebird_tensor>::__destroy_vector::operator()[abi:ne200100](&__p);
  a12 = &a22;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a12);
  if (a2 == 2)
  {
    v28 = __cxa_begin_catch(a1);
    [v25 convertException:v28 toError:v24 code:v28[4]];
    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {

      _Unwind_Resume(a1);
    }

    [v25 convertException:__cxa_begin_catch(a1) toError:v24 code:4294967196];
    __cxa_end_catch();
  }

  JUMPOUT(0x230FAA398);
}

void sub_230FAA604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::tuple<shazam::basic_signature<(shazam::signature_density)2147483647>,shazam::freebird_signature>::~tuple(&a16);
  if (a2 == 2)
  {
    v21 = __cxa_begin_catch(a1);
    [v18 convertException:v21 toError:v17 code:v21[4]];
    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {

      _Unwind_Resume(a1);
    }

    [v18 convertException:__cxa_begin_catch(a1) toError:v17 code:4294967196];
    __cxa_end_catch();
  }

  JUMPOUT(0x230FAA5E0);
}

float shazam::get_spect_peak_log_scale(shazam *this)
{
  if ((atomic_load_explicit(&qword_27DD3B1F8, memory_order_acquire) & 1) == 0)
  {
    shazam::get_spect_peak_log_scale();
  }

  return *&_MergedGlobals;
}

float shazam::get_spect_peak_log_offset(shazam *this)
{
  if ((atomic_load_explicit(&qword_27DD3B200, memory_order_acquire) & 1) == 0)
  {
    shazam::get_spect_peak_log_offset();
  }

  return *&dword_27DD3B1F4;
}

void shazam::Interpolate(shazam *a1, unsigned int a2, uint64_t a3, __int16 a4)
{
  v5 = a2;
  v7 = fmaxf(*(a3 + 4 * (a2 - 1)), 0.015625);
  v8 = fmaxf(*(a3 + 4 * a2), 0.015625);
  v9 = fmaxf(*(a3 + 4 * (a2 + 1)), 0.015625);
  spect_peak_log_scale = shazam::get_spect_peak_log_scale(a1);
  v11 = logf(v7);
  v13 = spect_peak_log_scale * (v11 - shazam::get_spect_peak_log_offset(v12));
  v15 = shazam::get_spect_peak_log_scale(v14);
  v16 = logf(v8);
  v18 = v15 * (v16 - shazam::get_spect_peak_log_offset(v17));
  v20 = shazam::get_spect_peak_log_scale(v19);
  v21 = logf(v9);
  v23 = v20 * (v21 - shazam::get_spect_peak_log_offset(v22));
  v24 = -((v13 + v23) - (v18 * 2.0));
  if (v24 <= 0.0)
  {
    LOWORD(v25) = 0;
  }

  else
  {
    v25 = (((v23 - v13) * 32.0) / v24);
  }

  *(a1 + 2) = v25 + ((a4 + v5) << 6);
  *(a1 + 3) = llroundf(v18);
}

shazam *shazam::spectral_peak_t::spectral_peak_t(shazam *a1, int a2, unsigned int a3, uint64_t a4, __int16 a5)
{
  *a1 = a2;
  *(a1 + 1) = 0;
  shazam::Interpolate(a1, a3, a4, a5);
  return a1;
}

void shazam::get_spect_peak_log_scale()
{
  if (__cxa_guard_acquire(&qword_27DD3B1F8))
  {
    _MergedGlobals = 1152952891;

    __cxa_guard_release(&qword_27DD3B1F8);
  }
}

void shazam::get_spect_peak_log_offset()
{
  if (__cxa_guard_acquire(&qword_27DD3B200))
  {
    dword_27DD3B1F4 = -1065020014;

    __cxa_guard_release(&qword_27DD3B200);
  }
}

uint64_t shazam::get_version_as_string(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 30 == 2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
    v16 = MEMORY[0x231921DB0](&v33, (a1 >> 25) & 0x1F);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ".", 1);
    v18 = MEMORY[0x231921DB0](v17, (a1 >> 20) & 0x1F);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ".", 1);
    MEMORY[0x231921DB0](v19, (a1 >> 15) & 0x1F);
    std::stringbuf::str();
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v29;
    *(a2 + 16) = v30[0];
    std::ostringstream::basic_ostringstream[abi:ne200100](&v29);
    v20 = MEMORY[0x231921DB0](&v29, (a1 >> 10) & 0x1F);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ".", 1);
    v22 = MEMORY[0x231921DB0](v21, (a1 >> 5) & 0x1F);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ".", 1);
    MEMORY[0x231921DB0](v23, a1 & 0x1F);
    std::stringbuf::str();
  }

  else
  {
    if (a1 >> 30 != 1)
    {
      MEMORY[0x231921CC0](a2, "0.0.0");
      MEMORY[0x231921CC0](a3, "0.0.0");
      return 0;
    }

    v6 = (a1 >> 20) & 0x3FF;
    v7 = (5462 * v6) >> 16;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
    v8 = MEMORY[0x231921DB0](&v33, v7 + 22);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ".", 1);
    v10 = MEMORY[0x231921DB0](v9, (v6 - 12 * v7 + 1));
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ".", 1);
    MEMORY[0x231921DB0](v11, (a1 >> 12));
    std::stringbuf::str();
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v29;
    *(a2 + 16) = v30[0];
    std::ostringstream::basic_ostringstream[abi:ne200100](&v29);
    v12 = MEMORY[0x231921DB0](&v29, ((a1 >> 8) & 0xF) + 7);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ".", 1);
    v14 = MEMORY[0x231921DB0](v13, a1 >> 4);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ".", 1);
    MEMORY[0x231921DB0](v15, a1 & 0xF);
    std::stringbuf::str();
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v27;
  *(a3 + 16) = v28;
  *&v29 = *MEMORY[0x277D82828];
  v24 = v29;
  v25 = *(MEMORY[0x277D82828] + 24);
  *(&v30[-2].__locale_ + *(v29 - 24)) = v25;
  *(&v29 + 1) = MEMORY[0x277D82878] + 16;
  if (v31 < 0)
  {
    operator delete(v30[7].__locale_);
  }

  *(&v29 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v30);
  std::ostream::~ostream();
  MEMORY[0x231921E90](&v32);
  v33 = v24;
  *(&v33 + *(v24 - 24)) = v25;
  v34 = MEMORY[0x277D82878] + 16;
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  v34 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v35);
  std::ostream::~ostream();
  MEMORY[0x231921E90](&v37);
  return 1;
}

void sub_230FAAD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  std::ostringstream::~ostringstream(&a13);
  std::ostringstream::~ostringstream(&a46);
  _Unwind_Resume(a1);
}

uint64_t shazam::get_legacy_version_as_string(unsigned int a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "ra-", 3);
  v5 = MEMORY[0x231921DB0](v4, HIWORD(a1));
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ".", 1);
  MEMORY[0x231921DB0](v6, a1);
  std::stringbuf::str();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v8;
  *(a2 + 16) = v9;
  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x231921E90](&v14);
}

void sub_230FAAF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_230FAB098(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x231921E90](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x231921E90](a1 + 112);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x231921E40](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_230FAB274(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x231921D60](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x231921D70](v13);
  return a1;
}

void sub_230FAB4E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x231921D70](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x230FAB4C4);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_230FAB718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      bzero(this->__end_, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = (end - this->__begin_);
    v8 = &v7[__n];
    if (&v7[__n] < 0)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = end - this->__begin_;
    bzero(v7, __n);
    memcpy(&v7[begin - end], begin, v11);
    this->__begin_ = &v7[begin - end];
    this->__end_ = &v7[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void shazam::dsp::vDSP_matmul(void *a1)
{
  if (!(*a1 >> 62))
  {
    v1 = 4 * *a1;
  }

  operator new[]();
}

void shazam::dsp::matmul(void *a1, void *a2, unint64_t a3, void *a4)
{
  v4 = *a1 / a3;
  if (*a1 % a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Received wrongly shaped A matrix");
  }

  else
  {
    v5 = *a2 / a3;
    if (!(*a2 % a3))
    {
      if (v5 * v4 > (a4[1] - *a4) >> 3)
      {
        std::vector<std::complex<float>>::resize(a4, v5 * v4);
      }

      shazam::dsp::vDSP_matmul(a1);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Received wrongly shaped B matrix");
  }

  __cxa_throw(exception, off_2788F7BA0, MEMORY[0x277D82610]);
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

void std::vector<std::complex<float>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<std::complex<float>>::__append(a1, a2 - v2);
  }
}

void std::vector<std::complex<float>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_t>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

shazam::dsp::cascade_buf *shazam::dsp::cascade_buf::cascade_buf(shazam::dsp::cascade_buf *this, uint64_t a2, unsigned int a3, unint64_t a4)
{
  *(this + 3) = 0u;
  v19 = (this + 48);
  *(this + 12) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  v5 = (this + 24);
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 26) = 1065353216;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "cannot downsample less than once");
    goto LABEL_19;
  }

  if (a2 != 1)
  {
    operator new();
  }

  std::vector<shazam::static_aligned_dual_buffer<float>>::__base_destruct_at_end[abi:ne200100](v5, 0);
  v6 = 1;
  do
  {
    v7 = malloc_type_aligned_alloc(0x10uLL, 0x4010uLL, 0xB425FBCFuLL);
    v8 = v7;
    if (v7)
    {
      bzero(v7, 0x4010uLL);
      v20 = v8;
      v21 = shazam::aligned_free;
      v22 = 4096;
      v9 = 1;
    }

    else
    {
      v9 = 0;
      LODWORD(v20) = 512;
    }

    v23 = v9;
    v10 = shazam::unwrap_or_throw<shazam::static_aligned_dual_buffer<float>,shazam::sigx_error,void>(&v20);
    v11 = v10;
    v12 = *(this + 4);
    if (v12 >= *(this + 5))
    {
      v14 = std::vector<shazam::static_aligned_dual_buffer<float>>::__emplace_back_slow_path<shazam::static_aligned_dual_buffer<float>>(v5, v10);
    }

    else
    {
      v13 = *v10;
      *v10 = 0;
      *v12 = v13;
      v12[1] = v10[1];
      v12[2] = v10[2];
      v14 = (v12 + 3);
    }

    *(this + 4) = v14;
    if (v23 == 1)
    {
      v15 = v20;
      v20 = 0;
      if (v15)
      {
        (v21)(v15, v11);
      }
    }

    --v6;
  }

  while (v6);
  std::vector<std::complex<float>>::resize(v19, 1uLL);
  *(this + 14) = 0;
  *(this + 15) = a4;
  if (a4 >= 0x400)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "zero padding more or equal to the frame size isn't supported");
LABEL_19:
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2788F7BA0, MEMORY[0x277D82610]);
  }

  shazam::dsp::cascade_buf::zero_pad(this);
  return this;
}

void sub_230FAC0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  __cxa_free_exception(v29);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v28 + 72);
  v31 = *a11;
  if (*a11)
  {
    *(v28 + 56) = v31;
    operator delete(v31);
  }

  std::vector<shazam::static_aligned_dual_buffer<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  a12 = v28;
  std::vector<std::unique_ptr<shazam::resample_stream>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

unsigned int *shazam::unwrap_or_throw<shazam::resample_stream,shazam::sigx_error,void>(unsigned int *result)
{
  if (*(result + 128) != 1)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(*v1);
    MEMORY[0x231921D00](exception, error_code, v4);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

unsigned int *shazam::unwrap_or_throw<shazam::static_aligned_dual_buffer<float>,shazam::sigx_error,void>(unsigned int *result)
{
  if (*(result + 24) != 1)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(*v1);
    MEMORY[0x231921D00](exception, error_code, v4);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  return result;
}

void *shazam::dsp::cascade_buf::zero_pad(void *this)
{
  if (this[15])
  {
    v1 = this[3];
    v2 = this[4];
    v3 = v2 - v1;
    if (v2 != v1)
    {
      v4 = 0;
      v5 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
      if (v5 <= 1)
      {
        v5 = 1;
      }

      v6 = 1;
      do
      {
        if (v6)
        {
          v7 = 0;
          v8 = (v1 + 24 * v4);
          v9 = this[6];
          v10 = *v8;
          v11 = *(v9 + 8 * v4);
          do
          {
            v12 = v8[2] >> 1;
            v13 = (v10 + 4 * ((v12 - 1) & v11));
            v13[v12] = 0;
            *v13 = 0;
            *(v9 + 8 * v4) = ++v11;
            ++v7;
            v6 = this[15];
          }

          while (v7 < v6);
        }

        ++v4;
      }

      while (v4 != v5);
    }
  }

  return this;
}

void *shazam::dsp::cascade_buf::reset(shazam::resample_stream ***this)
{
  v2 = *this;
  v3 = this[1];
  while (v2 != v3)
  {
    v4 = *v2++;
    shazam::resample_stream::reset(v4);
  }

  this[14] = 0;
  v5 = this[6];
  v6 = this[7];
  if (v5 != v6)
  {
    bzero(v5, v6 - v5);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::clear(this + 9);

  return shazam::dsp::cascade_buf::zero_pad(this);
}

uint64_t shazam::dsp::cascade_buf::flow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = **(a1 + 48);
  v7 = a3 + 4 * a2;
  v18 = a3;
  v19 = v7;
  v20 = a3;
  while (v20 != v7)
  {
    v8 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v18);
    v9 = *(a1 + 24);
    v10 = *(a1 + 48);
    v11 = *v10;
    v12 = *v8;
    v13 = v9[2] >> 1;
    v14 = (*v9 + 4 * ((v13 - 1) & *v10));
    v14[v13] = *v8;
    *v14 = v12;
    *v10 = v11 + 1;
    v15 = *(a1 + 112) + 1;
    *(a1 + 112) = v15;
    if (v15 == 1024)
    {
      shazam::dsp::cascade_buf::cascade(a1);
      *(a1 + 112) -= 1024;
      return **(a1 + 48) - v6;
    }

    v16 = gsl::details::span_iterator<float>::operator++(&v18);
    if (v18 != a3 || v19 != v7)
    {
      gsl::details::terminate(v16);
    }
  }

  return v4;
}

void shazam::dsp::cascade_buf::cascade(shazam::dsp::cascade_buf *this)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  std::vector<float>::reserve(&v16, 0x200uLL);
  v2 = *this;
  if (*(this + 1) == *this)
  {
    v6 = v16;
    if (!v16)
    {
      return;
    }

    goto LABEL_8;
  }

  v3 = 0;
  v4 = 1024;
  do
  {
    v5 = *(*(this + 3) + 24 * v3) + 4 * (((*(*(this + 3) + 24 * v3 + 16) >> 1) - 1) & (*(*(this + 6) + 8 * v3) - v4));
    shazam::resample_stream::stream_flow(*(v2 + 8 * v3++));
    v6 = v16;
    v7 = v17;
    if (v16 != v17)
    {
      v8 = (*(this + 3) + 24 * v3);
      v9 = *(this + 6);
      v10 = *v8;
      v11 = *(v9 + 8 * v3);
      v12 = v16;
      do
      {
        v13 = *v12 * 1.4142;
        *v12++ = v13;
        v14 = v8[2] >> 1;
        v15 = (v10 + 4 * ((v14 - 1) & v11));
        v15[v14] = v13;
        *v15 = v13;
        *(v9 + 8 * v3) = ++v11;
      }

      while (v12 != v7);
    }

    v4 /= 2;
    v17 = v6;
    v2 = *this;
  }

  while (v3 < (*(this + 1) - *this) >> 3);
  if (v6)
  {
LABEL_8:
    v17 = v6;
    operator delete(v6);
  }
}

void sub_230FAC60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

gsl::details *gsl::details::span_iterator<float>::operator++(gsl::details *result)
{
  if (!*result || (v1 = *(result + 2)) == 0 || (v2 = *(result + 1)) == 0 || v1 >= v2)
  {
    gsl::details::terminate(result);
  }

  *(result + 2) = v1 + 4;
  return result;
}

void *std::vector<float>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::signature_header_type>>(result, a2);
    }

    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *shazam::dsp::cascade_buf::set_read_point(shazam::dsp::cascade_buf *this, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6[0] = a3 | (a2 << 32);
  v6[2] = v6;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 9, v6);
  result[3] = a4;
  return result;
}

uint64_t shazam::dsp::cascade_buf::getSamplesWritten(shazam::dsp::cascade_buf *this, unint64_t a2)
{
  v2 = *(this + 6);
  if (a2 >= (*(this + 7) - v2) >> 3)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v2 + 8 * a2);
}

void shazam::resample_stream::~resample_stream(shazam::resample_stream *this)
{
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    (*(this + 14))();
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(this + 11))();
  }
}

void std::vector<std::unique_ptr<shazam::resample_stream>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<shazam::resample_stream>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

shazam::resample_stream *std::vector<std::unique_ptr<shazam::resample_stream>>::__base_destruct_at_end[abi:ne200100](shazam::resample_stream *result, shazam::resample_stream **a2)
{
  v3 = result;
  for (i = *(result + 1); i != a2; result = std::allocator_traits<std::allocator<std::unique_ptr<shazam::resample_stream>>>::destroy[abi:ne200100]<std::unique_ptr<shazam::resample_stream>,0>(v3, i))
  {
    --i;
  }

  *(v3 + 8) = a2;
  return result;
}

shazam::resample_stream *std::allocator_traits<std::allocator<std::unique_ptr<shazam::resample_stream>>>::destroy[abi:ne200100]<std::unique_ptr<shazam::resample_stream>,0>(uint64_t a1, shazam::resample_stream **a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    shazam::resample_stream::~resample_stream(result);

    JUMPOUT(0x231921F20);
  }

  return result;
}

void std::vector<shazam::static_aligned_dual_buffer<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<shazam::static_aligned_dual_buffer<float>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<shazam::resample_stream>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__split_buffer<std::unique_ptr<shazam::resample_stream>>::~__split_buffer(uint64_t *a1)
{
  std::__split_buffer<std::unique_ptr<shazam::resample_stream>>::__destruct_at_end[abi:ne200100](a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

shazam::resample_stream *std::__split_buffer<std::unique_ptr<shazam::resample_stream>>::__destruct_at_end[abi:ne200100](shazam::resample_stream *result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 2);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 4);
    *(v3 + 2) = v4 - 8;
    result = std::allocator_traits<std::allocator<std::unique_ptr<shazam::resample_stream>>>::destroy[abi:ne200100]<std::unique_ptr<shazam::resample_stream>,0>(v5, (v4 - 8));
  }

  return result;
}

uint64_t std::vector<shazam::static_aligned_dual_buffer<float>>::__base_destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = *(result + 8);
    do
    {
      v6 = *(v5 - 3);
      v5 -= 3;
      result = v6;
      *v5 = 0;
      if (v6)
      {
        result = (*(v4 - 2))();
      }

      v4 = v5;
    }

    while (v5 != a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t std::vector<shazam::static_aligned_dual_buffer<float>>::__emplace_back_slow_path<shazam::static_aligned_dual_buffer<float>>(uint64_t *a1, uint64_t *a2)
{
  v3 = 0xAAAAAAAAAAAAAAALL;
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 - *a1;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
  if (v7 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - v4) >> 3) > v7)
  {
    v7 = 0x5555555555555556 * ((a1[2] - v4) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v4) >> 3) < 0x555555555555555)
  {
    v3 = v7;
  }

  v20 = a1;
  if (v3)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::static_aligned_dual_buffer<float>>>(a1, v3);
  }

  v9 = (8 * (v6 >> 3));
  v17 = 0;
  v18 = v9;
  v10 = *a2;
  *a2 = 0;
  *v9 = v10;
  v11 = a2[2];
  v9[1] = a2[1];
  v9[2] = v11;
  v19 = (v9 + 3);
  v12 = v9 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<shazam::static_aligned_dual_buffer<float>>,shazam::static_aligned_dual_buffer<float>*>(a1, v4, v5, (v9 - v6));
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<shazam::static_aligned_dual_buffer<float>>::~__split_buffer(&v17);
  return v16;
}

void sub_230FACBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<shazam::static_aligned_dual_buffer<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::static_aligned_dual_buffer<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<shazam::static_aligned_dual_buffer<float>>,shazam::static_aligned_dual_buffer<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      *a4 = v5;
      v6 = v4[2];
      a4[1] = v4[1];
      a4[2] = v6;
      v4 += 3;
      a4 += 3;
    }

    while (v4 != a3);
    v11 = a4;
  }

  v9 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<shazam::static_aligned_dual_buffer<float>>,shazam::static_aligned_dual_buffer<float>*,shazam::static_aligned_dual_buffer<float>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<shazam::static_aligned_dual_buffer<float>>,shazam::static_aligned_dual_buffer<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

uint64_t std::__allocator_destroy[abi:ne200100]<std::allocator<shazam::static_aligned_dual_buffer<float>>,shazam::static_aligned_dual_buffer<float>*,shazam::static_aligned_dual_buffer<float>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      result = *v4;
      *v4 = 0;
      if (result)
      {
        result = (*(v4 + 8))();
      }

      v4 += 24;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<shazam::static_aligned_dual_buffer<float>>,shazam::static_aligned_dual_buffer<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<shazam::static_aligned_dual_buffer<float>>,std::reverse_iterator<shazam::static_aligned_dual_buffer<float>*>,std::reverse_iterator<shazam::static_aligned_dual_buffer<float>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

uint64_t std::__allocator_destroy[abi:ne200100]<std::allocator<shazam::static_aligned_dual_buffer<float>>,std::reverse_iterator<shazam::static_aligned_dual_buffer<float>*>,std::reverse_iterator<shazam::static_aligned_dual_buffer<float>*>>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v8 = *(v6 - 3);
      v6 -= 3;
      result = v8;
      *v6 = 0;
      if (v8)
      {
        result = (*(a3 - 2))();
      }

      a3 = v6;
    }

    while (v6 != a5);
  }

  return result;
}

uint64_t std::__split_buffer<shazam::static_aligned_dual_buffer<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<shazam::static_aligned_dual_buffer<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<shazam::static_aligned_dual_buffer<float>>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      result = *(v2 - 24);
      *(v4 + 16) = v2 - 24;
      *(v2 - 24) = 0;
      if (result)
      {
        result = (*(v2 - 16))();
        v2 = *(v4 + 16);
      }

      else
      {
        v2 -= 24;
      }
    }

    while (v2 != a2);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2788F7B98, MEMORY[0x277D825F8]);
}

double shazam::score_match(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v2 == *a1)
  {
    return 0.0;
  }

  v4 = 0;
  v5 = v3 >> 4;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  result = 0.0;
  v7 = 0.0;
  do
  {
    v8 = (v1 + 16 * v4);
    v9 = -2;
    v10 = (v1 + 4);
    v11 = v5;
    do
    {
      v12 = vabds_f32(*(v10 - 1), *v8);
      if (v12 < 3.0)
      {
        ++v9;
      }

      if (v12 < 2500.0 && vabds_f32(*v10, v8[1]) < 2.0)
      {
        ++v9;
      }

      v10 += 4;
      --v11;
    }

    while (v11);
    if (v9 >= 19)
    {
      v9 = 19;
    }

    v13 = shazam::_chanw[(v8[1] - v8[3]) + 15];
    *&result = *&result + v13;
    v7 = v7 + (v13 * shazam::_penalty_weightings[v9 & ~(v9 >> 31)]);
    ++v4;
  }

  while (v4 != v5);
  return result;
}

uint64_t (***shazam::get_os_timer(shazam *this))(shazam::OSTimer *__hidden this)
{
  {
    shazam::get_os_timer();
  }

  return &shazam::get_os_timer(void)::_os_timer;
}

void shazam::get_os_timer()
{
  {
    __cxa_atexit(shazam::OSTimer::~OSTimer, &shazam::get_os_timer(void)::_os_timer, &dword_230F52000);
  }
}

void shazam::spectral_peak_compact_t::convert_array(uint64_t a1@<X0>, unint64_t a2@<X1>, size_t *a3@<X8>)
{
  v3 = a2;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<shazam::spectral_peak_compact_t>::reserve(a3, 2 * a2);
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v25 = v3;
    do
    {
      v7 = v5;
      v8 = (a1 + 8 * v6);
      v5 = *v8;
      v9 = *v8 - v7;
      if (*v8 - v7 >= 0xFF)
      {
        v11 = v5 >> 8;
        v12 = HIWORD(v5);
        v9 = -1;
        v10 = *v8;
        v13 = HIBYTE(v5);
      }

      else
      {
        v10 = *(v8 + 3);
        v11 = v10 >> 8;
        v12 = *(v8 + 2);
        v13 = v12 >> 8;
        ++v6;
      }

      v14 = a3[1];
      v15 = a3[2];
      if (v14 >= v15)
      {
        v17 = 0xCCCCCCCCCCCCCCCDLL * &v14[-*a3];
        v18 = v17 + 1;
        if (v17 + 1 >= 0x3333333333333334)
        {
          std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
        }

        v19 = 0xCCCCCCCCCCCCCCCDLL * (v15 - *a3);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0x1999999999999999)
        {
          v20 = 0x3333333333333333;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_compact_t>>(a3, v20);
        }

        v21 = 5 * v17;
        *v21 = v9;
        *(v21 + 1) = v10;
        *(v21 + 2) = v11;
        *(v21 + 3) = v12;
        *(v21 + 4) = v13;
        v16 = 5 * v17 + 5;
        v22 = a3[1] - *a3;
        v23 = v21 - v22;
        memcpy((v21 - v22), *a3, v22);
        v24 = *a3;
        *a3 = v23;
        a3[1] = v16;
        a3[2] = 0;
        if (v24)
        {
          operator delete(v24);
        }

        v3 = v25;
      }

      else
      {
        *v14 = v9;
        v14[1] = v10;
        v14[2] = v11;
        v14[3] = v12;
        v16 = (v14 + 5);
        v14[4] = v13;
      }

      a3[1] = v16;
    }

    while (v6 < v3);
  }
}

void sub_230FAD718(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<shazam::spectral_peak_compact_t>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * (result[2] - *result) < a2)
  {
    if (a2 < 0x3333333333333334)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_compact_t>>(result, a2);
    }

    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_compact_t>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x3333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

shazam::LegacyFatSigInfo *shazam::signature_info::convert@<X0>(shazam::LegacyFatSigInfo *this@<X0>, uint64_t a2@<X8>)
{
  if (*this == -889313920)
  {
    v4 = this;
    *(a2 + 23) = 0;
    *(a2 + 21) = 0;
    v5 = *(this + 11) >> 19;
    sample_length_samples = shazam::LegacyFatSigInfo::get_sample_length_samples(this);
    raw_sample_rate = shazam::LegacyFatSigInfo::get_raw_sample_rate(v4);
    this = shazam::LegacyFatSigInfo::get_stream_pos(v4);
    *a2 = this;
    *(a2 + 8) = sample_length_samples;
    *(a2 + 16) = raw_sample_rate;
    *(a2 + 20) = v5;
    v8 = 1;
    *(a2 + 24) = 0;
  }

  else
  {
    v8 = 0;
    *a2 = 103;
  }

  *(a2 + 32) = v8;
  return this;
}

uint64_t shazam::signature_info::convert@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*result == -559038737)
  {
    *(a2 + 23) = 0;
    *(a2 + 21) = 0;
    if (*(result + 16) == 15)
    {
      v2 = 15;
    }

    else
    {
      v2 = 0;
    }

    v3 = *(result + 4);
    *a2 = (*(result + 8) * 125.0);
    *(a2 + 8) = v3;
    *(a2 + 16) = 8000;
    *(a2 + 20) = v2;
    *(a2 + 24) = 0;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 103;
  }

  *(a2 + 32) = v4;
  return result;
}

shazam::freebird_header *shazam::signature_info::convert@<X0>(shazam::freebird_header *this@<X0>, uint64_t a2@<X8>)
{
  if (*this == 718889720)
  {
    v4 = this;
    *(a2 + 23) = 0;
    *(a2 + 21) = 0;
    sample_length_samples = shazam::freebird_header::get_sample_length_samples(this);
    this = shazam::freebird_header::get_raw_sample_rate(v4);
    *a2 = 0;
    *(a2 + 8) = sample_length_samples;
    *(a2 + 16) = this;
    *(a2 + 20) = 0;
    v6 = 1;
    *(a2 + 24) = 0;
  }

  else
  {
    v6 = 0;
    *a2 = 103;
  }

  *(a2 + 32) = v6;
  return this;
}

shazam::signature_info *shazam::signature_info::signature_info(shazam::signature_info *this, const shazam::SumoSigInfo *a2)
{
  *(this + 6) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 13) = 0;
  *(this + 20) = *(a2 + 27);
  *(this + 1) = shazam::SumoSigInfo::get_sample_length_samples(a2);
  *(this + 4) = shazam::SumoSigInfo::get_raw_sample_rate(a2);
  *this = shazam::SumoSigInfo::get_stream_position(a2);
  return this;
}

__n128 shazam::resample_stream::create@<Q0>(shazam::resample_stream *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = this;
  v6 = std::__gcd<unsigned int>(this, a2);
  v8 = (a2 / v6) | ((v4 / v6) << 32);
  if (v8 > 0x300000000)
  {
    if (v8 == 0x300000001)
    {
      goto LABEL_7;
    }

    v9 = 0x1B9000000A0;
  }

  else
  {
    if (v8 == 0x100000001)
    {
      goto LABEL_7;
    }

    v9 = 0x200000001;
  }

  if (v8 != v9)
  {
    v15 = 518;
    goto LABEL_15;
  }

LABEL_7:
  v10 = malloc_type_aligned_alloc(0x10uLL, 0x210uLL, 0xB425FBCFuLL);
  if (!v10)
  {
    v15 = 512;
LABEL_15:
    *a3 = v15;
    *(a3 + 128) = 0;
    return result;
  }

  v11 = v10;
  bzero(v10, 0x210uLL);
  v12 = malloc_type_aligned_alloc(0x10uLL, 0x810uLL, 0xB425FBCFuLL);
  v13 = v12;
  if (v12)
  {
    bzero(v12, 0x810uLL);
    *v19 = v4;
    *&v19[4] = a2;
    memset(&v19[8], 0, 56);
    v21 = shazam::aligned_free;
    v22 = 128;
    v24 = shazam::aligned_free;
    v25 = 512;
    v14 = shazam::resample_stream::push_3_1_tight;
    if (v8 > 0x300000000)
    {
      if (v8 == 0x300000001)
      {
        goto LABEL_23;
      }

      if (v8 == 0x1B9000000A0)
      {
        v14 = shazam::resample_stream::push_44100_to_16000;
        goto LABEL_23;
      }
    }

    else
    {
      if (v8 == 0x100000001)
      {
        v14 = shazam::resample_stream::push_1_1_tight;
        goto LABEL_23;
      }

      if (v8 == 0x200000001)
      {
        v14 = shazam::resample_stream::push_2_1_tight;
LABEL_23:
        v18 = v14;
      }
    }

    v16 = *&v19[32];
    *(a3 + 32) = *&v19[16];
    *(a3 + 48) = v16;
    *(a3 + 64) = *&v19[48];
    v17 = *v19;
    *a3 = v18;
    *(a3 + 16) = v17;
    v20 = 0;
    *(a3 + 80) = v11;
    *(a3 + 88) = shazam::aligned_free;
    *(a3 + 96) = 128;
    *(a3 + 104) = v13;
    v23 = 0;
    *(a3 + 112) = shazam::aligned_free;
    *(a3 + 120) = 512;
    *(a3 + 128) = 1;
    shazam::resample_stream::~resample_stream(&v18);
    return result;
  }

  *a3 = 512;
  *(a3 + 128) = 0;

  free(v11);
  return result;
}

void shazam::resample_stream::create_unique(shazam::resample_stream *this, unsigned int a2)
{
  shazam::resample_stream::create(this, a2, v2);
  shazam::unwrap_or_throw<shazam::resample_stream,shazam::sigx_error,void>(v2);
  operator new();
}

void sub_230FADD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a25 == 1)
  {
    shazam::resample_stream::~resample_stream(&a9);
  }

  _Unwind_Resume(exception_object);
}

shazam::resample_stream **std::unique_ptr<shazam::resample_stream>::~unique_ptr[abi:ne200100](shazam::resample_stream **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    shazam::resample_stream::~resample_stream(v2);
    MEMORY[0x231921F20]();
  }

  return a1;
}

void shazam::resample_stream::push_3_1_tight(void *a1, int *a2, int a3, const void **a4)
{
  if (a3 >= 1)
  {
    v20 = v4;
    v21 = v5;
    v9 = a3;
    v11 = a1[8];
    v10 = a1[9];
    do
    {
      v12 = *a2;
      v13 = a1[15] >> 1;
      v14 = v13 - 1;
      v15 = a1[13];
      v16 = (v15 + 4 * ((v13 - 1) & v10));
      v16[v13] = *a2;
      *v16 = v12;
      v17 = v11 + 1;
      a1[8] = v11 + 1;
      if (!v11)
      {
        __C = 0.0;
        vDSP_dotpr((v15 + 4 * (v14 & (v10 - 127))), 1, shazam::decimation_3_1_tight_table, 1, &__C, 0x80uLL);
        v18 = __C;
        std::vector<float>::push_back[abi:ne200100](a4, &v18);
        v17 = a1[8];
      }

      if (v17 >= 3)
      {
        v17 = 0;
        a1[8] = 0;
      }

      v10 = a1[9] + 1;
      a1[9] = v10;
      ++a2;
      v11 = v17;
      --v9;
    }

    while (v9);
  }
}

void shazam::resample_stream::push_44100_to_16000(void *a1, int *a2, int a3, const void **a4)
{
  if (a3 >= 1)
  {
    v16 = v4;
    v17 = v5;
    v9 = a3;
    v10 = a1[3];
    do
    {
      v11 = *a2;
      v12 = a1[12] >> 1;
      v13 = a1[10];
      v14 = (v13 + 4 * ((v12 - 1) & v10));
      v14[v12] = *a2;
      *v14 = v11;
      if ((v10 & 1) == 0)
      {
        __C = 0.0;
        vDSP_dotpr((v13 + 4 * ((v12 - 1) & (v10 - 23))), 1, shazam::decimation_2_1_loose_table, 1, &__C, 0x18uLL);
        shazam::resample_stream::push_441_to_320_tight(a1, a4, __C);
        v10 = a1[3];
      }

      a1[3] = ++v10;
      ++a2;
      --v9;
    }

    while (v9);
  }
}

void shazam::resample_stream::push_2_1_tight(void *a1, int *a2, int a3, const void **a4)
{
  if (a3 >= 1)
  {
    v17 = v4;
    v18 = v5;
    v9 = a3;
    v10 = a1[7];
    do
    {
      v11 = *a2;
      v12 = a1[15] >> 1;
      v13 = a1[13];
      v14 = (v13 + 4 * ((v12 - 1) & v10));
      v14[v12] = *a2;
      *v14 = v11;
      if ((v10 & 1) == 0)
      {
        __C = 0.0;
        vDSP_dotpr((v13 + 4 * ((v12 - 1) & (v10 - 95))), 1, shazam::decimation_2_1_tight_table, 1, &__C, 0x60uLL);
        v15 = __C;
        std::vector<float>::push_back[abi:ne200100](a4, &v15);
        v10 = a1[7];
      }

      a1[7] = ++v10;
      ++a2;
      --v9;
    }

    while (v9);
  }
}

shazam::resample_stream *shazam::resample_stream::resample_stream(shazam::resample_stream *this, const shazam::resample_stream *a2)
{
  *this = *a2;
  *(this + 2) = *(a2 + 2);
  *(this + 24) = *(a2 + 24);
  *(this + 40) = *(a2 + 40);
  *(this + 56) = *(a2 + 56);
  *(this + 9) = *(a2 + 9);
  v4 = malloc_type_aligned_alloc(0x10uLL, 0x210uLL, 0xB425FBCFuLL);
  if (v4)
  {
    v5 = v4;
    bzero(v4, 0x210uLL);
    v17 = v5;
    v18 = shazam::aligned_free;
    v19 = 128;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    LODWORD(v17) = 512;
  }

  v20 = v6;
  v7 = shazam::unwrap_or_throw<shazam::static_aligned_dual_buffer<float>,shazam::sigx_error,void>(&v17);
  v8 = *v7;
  *v7 = 0;
  *(this + 10) = v8;
  *(this + 11) = *(v7 + 1);
  *(this + 12) = *(v7 + 2);
  if (v20 == 1)
  {
    v9 = v17;
    v17 = 0;
    if (v9)
    {
      (v18)(v9);
    }
  }

  v10 = malloc_type_aligned_alloc(0x10uLL, 0x810uLL, 0xB425FBCFuLL);
  v11 = v10;
  if (v10)
  {
    bzero(v10, 0x810uLL);
    v17 = v11;
    v18 = shazam::aligned_free;
    v19 = 512;
    v12 = 1;
  }

  else
  {
    v12 = 0;
    LODWORD(v17) = 512;
  }

  v20 = v12;
  v13 = shazam::unwrap_or_throw<shazam::static_aligned_dual_buffer<float>,shazam::sigx_error,void>(&v17);
  v14 = *v13;
  *v13 = 0;
  *(this + 13) = v14;
  *(this + 14) = *(v13 + 1);
  *(this + 15) = *(v13 + 2);
  if (v20 == 1)
  {
    v15 = v17;
    v17 = 0;
    if (v15)
    {
      (v18)(v15);
    }
  }

  memcpy(*(this + 10), *(a2 + 10), 0x200uLL);
  memcpy(*(this + 13), *(a2 + 13), 0x800uLL);
  return this;
}

void sub_230FAE23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void (*a10)(void), uint64_t a11, char a12)
{
  if (a12 == 1 && a9)
  {
    a10();
  }

  v14 = *(v12 + 80);
  *(v12 + 80) = 0;
  if (v14)
  {
    (*(v12 + 88))();
  }

  _Unwind_Resume(exception_object);
}

void shazam::resample_stream::reset(shazam::resample_stream *this)
{
  *(this + 9) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  bzero(*(this + 10), ((4 * *(this + 12)) & 0xFFFFFFFFFFFFFFF0) + 16);
  v2 = *(this + 13);
  v3 = ((4 * *(this + 15)) & 0xFFFFFFFFFFFFFFF0) + 16;

  bzero(v2, v3);
}

uint64_t shazam::resample_stream::stream_flow(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = (a1 + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t shazam::resample_stream::sample_rate_check(shazam::resample_stream *this, int a2)
{
  result = 1;
  if (a2 > 44099)
  {
    if (a2 == 44100)
    {
      return result;
    }

    v3 = 48000;
  }

  else
  {
    if (a2 == 16000)
    {
      return result;
    }

    v3 = 32000;
  }

  if (a2 != v3)
  {
    return 0;
  }

  return result;
}

void shazam::resample_stream::push_441_to_320_tight(void *a1, const void **a2, float a3)
{
  v4 = a1[15] >> 1;
  v6 = a1[4];
  v5 = a1[5];
  v7 = (a1[13] + 4 * ((v4 - 1) & v6));
  v7[v4] = a3;
  *v7 = a3;
  v8 = a1[6];
  if (v8 - v5 <= 319)
  {
    do
    {
      v10 = (a1[13] + 4 * (((a1[15] >> 1) - 1) & (a1[4] - 95)));
      __C = 0.0;
      vDSP_dotpr(v10, 1, &shazam::polyphase_coeffs_441_320[96 * (v5 - v8) + 30624], 1, &__C, 0x60uLL);
      v11 = __C;
      std::vector<float>::push_back[abi:ne200100](a2, &v11);
      v5 = a1[5];
      v8 = a1[6] + 441;
      a1[6] = v8;
    }

    while (v8 - v5 < 320);
    v6 = a1[4];
  }

  a1[4] = v6 + 1;
  a1[5] = v5 + 320;
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::signature_header_type>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t shazam::resample_stream::get_samples_for_sigx_fft_step(shazam::resample_stream *this)
{
  v1 = *(this + 4);
  if (v1 > 44099)
  {
    if (v1 == 44100)
    {
      return 353;
    }

    else
    {
      if (v1 != 48000)
      {
        goto LABEL_10;
      }

      return 384;
    }
  }

  else
  {
    if (v1 != 16000)
    {
      if (v1 == 32000)
      {
        return 256;
      }

LABEL_10:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "invalid sample rate!");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    return 128;
  }
}

uint64_t std::__gcd<unsigned int>(uint64_t result, unsigned int a2)
{
  LODWORD(v2) = result;
  v3 = result > a2;
  if (result >= a2)
  {
    result = a2;
  }

  else
  {
    result = result;
  }

  if (v3)
  {
    v2 = v2;
  }

  else
  {
    v2 = a2;
  }

  if (!result)
  {
    return v2;
  }

  v4 = v2 % result;
  if (v2 % result)
  {
    v5 = v4 | result;
    v6 = v4 >> __clz(__rbit32(v4));
    do
    {
      v7 = result >> __clz(__rbit32(result));
      if (v6 <= v7)
      {
        LODWORD(result) = v7 - v6;
      }

      else
      {
        LODWORD(result) = v6 - v7;
      }

      if (v6 >= v7)
      {
        v6 = v7;
      }
    }

    while (result);
    return v6 << __clz(__rbit32(v5));
  }

  return result;
}

char *std::vector<float>::__insert_with_size[abi:ne200100]<float const*,float const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::signature_header_type>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

uint64_t shazam::CPUSearcher::CPUSearcher(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, char a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a5;
  shazam::virtual_array<char>::virtual_array(a1 + 24, a4);
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  return a1;
}

void shazam::CPUSearcher::search(uint64_t *a1, void **a2, uint64_t *a3, unint64_t a4, unint64_t a5, uint64_t (***a6)(void, unint64_t), uint64_t a7)
{
  for (i = a4; i < a5; ++i)
  {
    v21 = (***a1)();
    v11 = i;
    v12 = *a3;
    v13 = (**a6)(a6, i);
    v14 = a2[4];
    v16 = *v14;
    v15 = v14[1];
    if (*v14 != v15)
    {
      v17 = v13;
      v18 = (v12 + 56 * v11);
      do
      {
        shazam::visit<shazam::CPUSearcher &,shazam::SongDataBase &,shazam::CPUOnePtDatabase &,shazam::CPULMFPDataBase &,shazam::basic_signature<(shazam::signature_density)24> const&,shazam::QueryConfig const&,unsigned long &,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>> const&,std::function<void ()(shazam::SearchResponse const&)> const&>(*(v16 + 28), a1, *a2, a2[2], v16, v18, v17, &i, &v21, a7);
        v16 += 104;
      }

      while (v16 != v15);
    }
  }
}

void shazam::visit<shazam::CPUSearcher &,shazam::SongDataBase &,shazam::CPUOnePtDatabase &,shazam::CPULMFPDataBase &,shazam::basic_signature<(shazam::signature_density)24> const&,shazam::QueryConfig const&,unsigned long &,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>> const&,std::function<void ()(shazam::SearchResponse const&)> const&>(int a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5, shazam::signature_info *this, unsigned int *a7, uint64_t *a8, uint64_t *a9, uint64_t a10)
{
  if (a1 == 12)
  {
    v12 = *a8;
    v13 = *a9;

    shazam::CPUSearcher::operator()<(AlgoType)12>(a2, a3, a4, a5, this, a7, v12, v13, a10);
  }

  else
  {
    if (a1 != 1)
    {
      std::terminate();
    }

    v10 = *a8;
    v11 = *a9;

    shazam::CPUSearcher::operator()<(AlgoType)1>(a2, a3, a4, a5, this, a7, v10, v11, a10);
  }
}

void shazam::CPUSearcher::operator()<(AlgoType)1>(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4, shazam::signature_info *this, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16[0] = *(a4 + 8);
  shazam::make_query<(AlgoType)1>(this, v16, a6, 0x36B0uLL, v17);
  shazam::CPUSearcher::search<(AlgoType)1,shazam::xpair_group<shazam::xpair_fields>>(a1, a2, a3, a4, v17, a6, a7, a8, a9);
  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_230FAEBAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::runtime_error a11, __int128 a12, std::runtime_error a13, __int128 a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, uint64_t a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43)
{
  shazam::Query<(AlgoType)1,std::vector<shazam::lmfp<(shazam::fp_type)0>>>::~Query((v46 - 168));
  if (a2 == 1)
  {
    v49 = __cxa_begin_catch(a1);
    std::runtime_error::runtime_error(&a11, v49);
    a11.__vftable = (MEMORY[0x277D82840] + 16);
    a12 = v49[1];
    std::runtime_error::runtime_error(&a13, &a11);
    a13.__vftable = (MEMORY[0x277D82840] + 16);
    a14 = a12;
    a15 = 0;
    v51 = v45;
    v50 = *v45;
    a17 = v51[1];
    v52 = (**v50)(v50);
    a18 = (*(*v50 + 24))(v50, v44, v52);
    a19 = 1;
    a20 = 1;
    a22 = 0;
    a27 = 0;
    LOBYTE(a28) = 0;
    *(&a36 + 4) = 0u;
    *(&a37 + 4) = 0u;
    *(&a38 + 4) = 0u;
    *(&a39 + 4) = 0u;
    *(&a40 + 4) = 0u;
    *(&a41 + 4) = 0u;
    *(&a42 + 4) = 0u;
    *(&a43 + 4) = 0u;
    *(&a28 + 4) = 0u;
    *(&a29 + 4) = 0u;
    *(&a30 + 4) = 0u;
    *(&a31 + 4) = 0u;
    *(&a32 + 4) = 0u;
    *(&a33 + 4) = 0u;
    *(&a34 + 4) = 0u;
    *(&a35 + 4) = 0u;
    a23 = 0;
    a24 = 0;
    a26 = 0;
    a25 = 0;
    std::function<void ()(shazam::SearchResponse const&)>::operator()(v43);
    tl::detail::expected_storage_base<std::vector<shazam::Result>,std::system_error,false,false>::~expected_storage_base(&a13);
    std::runtime_error::~runtime_error(&a11);
    __cxa_end_catch();
    JUMPOUT(0x230FAEB8CLL);
  }

  _Unwind_Resume(a1);
}

void shazam::CPUSearcher::operator()<(AlgoType)12>(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4, shazam::signature_info *this, unsigned int *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16[0] = *(a4 + 8);
  shazam::make_query<(AlgoType)12>(this, v16, a6, 0x36B0uLL, v17);
  shazam::CPUSearcher::search<(AlgoType)12,shazam::xpair_group<shazam::xpair_fields>>(a1, a2, a3, a4, v17, a6, a7, a8, a9);
  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_230FAEE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::runtime_error a11, __int128 a12, std::runtime_error a13, __int128 a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, uint64_t a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43)
{
  shazam::Query<(AlgoType)1,std::vector<shazam::lmfp<(shazam::fp_type)0>>>::~Query((v46 - 168));
  if (a2 == 1)
  {
    v49 = __cxa_begin_catch(a1);
    std::runtime_error::runtime_error(&a11, v49);
    a11.__vftable = (MEMORY[0x277D82840] + 16);
    a12 = v49[1];
    std::runtime_error::runtime_error(&a13, &a11);
    a13.__vftable = (MEMORY[0x277D82840] + 16);
    a14 = a12;
    a15 = 0;
    v51 = v45;
    v50 = *v45;
    a17 = v51[1];
    v52 = (**v50)(v50);
    a18 = (*(*v50 + 24))(v50, v44, v52);
    a19 = 1;
    a20 = 12;
    a22 = 0;
    a27 = 0;
    LOBYTE(a28) = 0;
    *(&a36 + 4) = 0u;
    *(&a37 + 4) = 0u;
    *(&a38 + 4) = 0u;
    *(&a39 + 4) = 0u;
    *(&a40 + 4) = 0u;
    *(&a41 + 4) = 0u;
    *(&a42 + 4) = 0u;
    *(&a43 + 4) = 0u;
    *(&a28 + 4) = 0u;
    *(&a29 + 4) = 0u;
    *(&a30 + 4) = 0u;
    *(&a31 + 4) = 0u;
    *(&a32 + 4) = 0u;
    *(&a33 + 4) = 0u;
    *(&a34 + 4) = 0u;
    *(&a35 + 4) = 0u;
    a23 = 0;
    a24 = 0;
    a26 = 0;
    a25 = 0;
    std::function<void ()(shazam::SearchResponse const&)>::operator()(v43);
    tl::detail::expected_storage_base<std::vector<shazam::Result>,std::system_error,false,false>::~expected_storage_base(&a13);
    std::runtime_error::~runtime_error(&a11);
    __cxa_end_catch();
    JUMPOUT(0x230FAEE18);
  }

  _Unwind_Resume(a1);
}

void shazam::make_query<(AlgoType)1>(shazam::signature_info *this@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, unint64_t a4@<X3>, float32x2_t *a5@<X8>)
{
  v7 = this;
  v83 = *MEMORY[0x277D85DE8];
  if ((shazam::signature_info::getSampleLength(this) * 125.0) > 1792.0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "was ", 4);
    shazam::signature_info::getSampleLength(v7);
    v51 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "sec", 3);
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x130);
    v55 = v54;
    std::stringbuf::str();
    MEMORY[0x231921D10](exception, error_code, v55, v72);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  SampleLength = shazam::signature_info::getSampleLength(v7);
  shazam::matrix_for<(AlgoType)1>(a3, v72, LODWORD(SampleLength));
  v69 = 0;
  v70 = 0;
  v71 = 0;
  std::vector<shazam::lmfp<(shazam::fp_type)0>>::reserve(&v69, a4);
  shazam::algo<(AlgoType)1>::tzones_for (v67);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v7 + 5) - *(v7 + 4)) >> 3) >= 3)
  {
    v56 = a5;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    std::vector<shazam::lmfp<(shazam::fp_type)0>>::reserve(&v74, 0x64uLL);
    v12 = *(v7 + 4);
    v11 = *(v7 + 5);
    if (v11 != v12)
    {
      v13 = 0;
      v57 = a2;
      v60 = v7;
      do
      {
        v14 = v72[v13 + 2];
        v59 = v13;
        if (v14)
        {
          v15 = *(a2 + 8);
          if (v15)
          {
            v15(&__p, v12 + 24 * v13);
            shazam::chooseAnchors(&__p, v72[v13 + 2], v72, &v74);
            if (__p)
            {
              v82 = __p;
              operator delete(__p);
            }
          }

          else
          {
            shazam::chooseAnchors((v12 + 24 * v13), v14, v72, &v74);
          }

          v12 = *(v7 + 4);
          v11 = *(v7 + 5);
          if (v11 != v12)
          {
            v58 = 4 * v13;
            v62 = &v72[v13 + 6];
            v16 = 0;
            do
            {
              v17 = *(v62 + v16);
              if (*(v62 + v16))
              {
                if (v68 == 1)
                {
                  LODWORD(__p) = v58 + v16;
                  if (std::__hash_table<std::__hash_value_type<int,shazam::target_zone_2d>,std::__unordered_map_hasher<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,shazam::target_zone_2d>>>::find<int>(v67, &__p))
                  {
                    v18 = std::__hash_table<std::__hash_value_type<int,shazam::target_zone_2d>,std::__unordered_map_hasher<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,shazam::target_zone_2d>>>::find<int>(v67, &__p);
                    if (!v18)
                    {
                      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                    }

                    v66 = *(v18 + 20);
                  }

                  else
                  {
                    v66 = 0;
                  }

                  v12 = *(v7 + 4);
                  v17 = *(v62 + v16);
                }

                else
                {
                  v66 = 0;
                }

                v61 = v16;
                v65 = (v12 + 24 * v16);
                v19 = *v65;
                bzero(&__p, 0x780uLL);
                v20 = v74;
                v64 = v75;
                if (v74 != v75)
                {
                  if (HIDWORD(v66))
                  {
                    v21 = v66 == 0;
                  }

                  else
                  {
                    v21 = 1;
                  }

                  v22 = v21;
                  v63 = v22;
                  do
                  {
                    v23 = *v20 + 8;
                    if (v63)
                    {
                      v24 = *v20 + 197;
                    }

                    else
                    {
                      v23 = *v20 + v66;
                      v24 = v23 + HIDWORD(v66);
                    }

                    v25 = v65[1];
                    if (v25 == v19)
                    {
                      v19 = v65[1];
                      v32 = v19;
                    }

                    else
                    {
                      v26 = (v25 - v19) >> 3;
                      do
                      {
                        v27 = v26 >> 1;
                        v28 = &v19[8 * (v26 >> 1)];
                        v30 = *v28;
                        v29 = (v28 + 2);
                        v26 += ~(v26 >> 1);
                        if (v30 < v23)
                        {
                          v19 = v29;
                        }

                        else
                        {
                          v26 = v27;
                        }
                      }

                      while (v26);
                      if (v25 == v19)
                      {
                        v32 = v65[1];
                      }

                      else
                      {
                        v31 = (v25 - v19) >> 3;
                        v32 = v19;
                        do
                        {
                          v33 = v31 >> 1;
                          v34 = (v32 + 8 * (v31 >> 1));
                          v36 = *v34;
                          v35 = v34 + 2;
                          v31 += ~(v31 >> 1);
                          if (v36 < v24)
                          {
                            v32 = v35;
                          }

                          else
                          {
                            v31 = v33;
                          }
                        }

                        while (v31);
                      }

                      v25 = v19;
                    }

                    v37 = (v32 - v25) >> 3;
                    gsl::span<shazam::spectral_peak_t const,18446744073709551615ul>::span<18446744073709551615ul,0>(&v78, v19, v32);
                    if (v37 <= v17)
                    {
                      v37 = v78;
                      p_p = v79;
                    }

                    else
                    {
                      if (v32 != v25)
                      {
                        memmove(&__p, v19, v32 - v25);
                      }

                      p_p = &__p;
                      v39 = 126 - 2 * __clz(v37);
                      if (v32 == v25)
                      {
                        v40 = 0;
                      }

                      else
                      {
                        v40 = v39;
                      }

                      v41 = std::__introsort<std::_ClassicAlgPolicy,shazam::$_3 &,shazam::spectral_peak_t *,false>(&__p, (&__p + v37), v40, 1);
                      if (v32 - v25 == -8)
                      {
LABEL_79:
                        gsl::details::terminate(v41);
                      }
                    }

                    v42 = *v20;
                    v43 = *(v20 + 2);
                    v44 = 0;
                    v45 = shazam::FreqLogTable::at(*(v20 + 2));
                    v46 = &p_p[v37];
                    v78 = p_p;
                    v79 = v46;
                    v80 = p_p;
                    v47 = 2 * (((v45 + -3.46573591) * 3103.75977) & 0x3FFF);
                    while (v80 != v46)
                    {
                      v48 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v78);
                      v47 = v47 & 0x7FFF | ((((v45 - shazam::FreqLogTable::at(*(v48 + 2))) * 151.569275) & 0x3FF) << 15) | (((sqrtf(((v43 * 7.8125) * 0.015625) * (*v48 - v42)) / 830.36) * 120.0) << 25);
                      v49 = v43 - *(v48 + 2);
                      if (v49 < 0)
                      {
                        v49 = *(v48 + 2) - v43;
                      }

                      if (v49 >= 0x101)
                      {
                        v77 = __PAIR64__(v42, v47);
                        std::vector<shazam::lmfp<(shazam::fp_type)0>>::push_back[abi:ne200100](&v69, &v77);
                        if (v17 == ++v44)
                        {
                          break;
                        }
                      }

                      v41 = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v78);
                      if (v78 != p_p || v79 != v46)
                      {
                        goto LABEL_79;
                      }
                    }

                    v20 += 2;
                  }

                  while (v20 != v64);
                  v12 = *(v60 + 4);
                }

                v7 = v60;
                v16 = v61;
                v11 = *(v60 + 5);
              }

              ++v16;
            }

            while (v16 < 0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3));
          }
        }

        v13 = v59 + 1;
        a2 = v57;
      }

      while (v59 + 1 < 0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3));
    }

    a5 = v56;
    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }
  }

  std::vector<shazam::lmfp<(shazam::fp_type)0>>::vector[abi:ne200100](&__p, (v70 - v69) >> 3);
  shazam::kvsort<std::vector<shazam::lmfp<(shazam::fp_type)0>>>(&v69);
  shazam::Query<(AlgoType)1,std::vector<shazam::lmfp<(shazam::fp_type)0>>>::Query(a5, v7, &v73, &v69);
  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  if (v68 == 1)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v67);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  v50 = *MEMORY[0x277D85DE8];
}

void sub_230FAF690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51)
{
  if (a39 < 0)
  {
    operator delete(__p);
    if ((v52 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a50);
      _Unwind_Resume(a1);
    }
  }

  else if (!v52)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v51);
  goto LABEL_6;
}

std::runtime_error *shazam::CPUSearcher::search<(AlgoType)1,shazam::xpair_group<shazam::xpair_fields>>(uint64_t *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v132 = *MEMORY[0x277D85DE8];
  *(v131 + 4) = 0u;
  *(&v131[1] + 4) = 0u;
  *(&v131[2] + 4) = 0u;
  v131[3] = 0u;
  memset(&v130[4], 0, 56);
  v126[0] = 0;
  *(v126 + 3) = 0;
  v99 = *(a5 + 24);
  SampleLength = shazam::signature_info::getSampleLength(*a5);
  memset(&__src[3], 0, 256);
  v100 = a6;
  v96 = *(a6 + 28);
  v91 = *(a5 + 48);
  v92 = *(a5 + 40);
  v16 = shazam::signature_info::getSampleLength(*a5);
  std::vector<shazam::Result>::clear[abi:ne200100](a1 + 10);
  v18 = a4[4];
  v95 = a4;
  v19 = a4[5] - v18;
  if (!v18 && v19 >= 2)
  {
    goto LABEL_80;
  }

  v20 = (v19 >> 1);
  v21 = gsl::make_span<std::vector<shazam::lmfp<(shazam::fp_type)0>>>((a5 + 40));
  v22 = *(a5 + 28);
  v23 = *(a5 + 32);
  v120 = a1[3];
  v121 = vshrq_n_u64(*(a1 + 2), 3uLL);
  v122 = 0;
  v123 = shazam::search_fingerprints<(AlgoType)1,shazam::xpair_group<shazam::xpair_fields>>(v20, v18, a4 + 7, v21, v24, a4 + 10, &v120, v22, v23);
  v124 = v25;
  begin = shazam::virtual_array<shazam::xpair_group<shazam::xpair_fields>>::~virtual_array(&v120);
  v26 = v123;
  if (v123 >= 0x1FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_80;
  }

  v27 = *(a5 + 8);
  v28 = a1[7];
  v29 = a1[8] - v28;
  if (8 * v123 > v29)
  {
    std::vector<char>::__append((a1 + 7), 8 * v123 - v29);
    v28 = a1[7];
  }

  if (v26 && !v28)
  {
LABEL_80:
    gsl::details::terminate(begin);
  }

  v89 = v26;
  v118 = v26;
  v119 = v28;
  shazam::xpairsort<shazam::xpair_group<shazam::xpair_fields>>(&v123);
  a1[17] = a1[16];
  v117[0] = gsl::make_span<std::vector<unsigned int>>((a2 + 9));
  v117[1] = v30;
  shazam::bin_tracks<shazam::xpair_group<shazam::xpair_fields>>(v117, &v123, a1 + 16);
  v90 = v27;
  v31 = a1[16];
  if (a1[17] - v31 != 16)
  {
    v94 = (a1 + 7);
    v32 = 0;
    v98 = 0;
    v97 = 0;
    while (1)
    {
      *&v103[4] = v131[0];
      *v104 = v131[1];
      *&v104[16] = v131[2];
      *&v104[32] = v131[3];
      *&v106[4] = *v130;
      v107[0] = *&v130[16];
      v107[1] = *&v130[32];
      *&v102.__vftable = SampleLength;
      v102.__imp_.__imp_ = 0;
      *v103 = v99;
      v105 = 0;
      *v106 = 0;
      *(&v107[1] + 12) = *&v130[44];
      *(&v107[2] + 12) = 0;
      *(&v107[3] + 4) = 0;
      HIDWORD(v107[3]) = v126[0];
      *(&v107[3] + 15) = *(v126 + 3);
      BYTE3(v107[4]) = 0;
      v33 = (v31 + 16 * v32);
      v34 = v33[1];
      ++v32;
      v35 = *(v31 + 16 * v32 + 8) - v34;
      v102.__imp_.__imp_ = v35;
      if (v35 >= 3)
      {
        *(v107 + 12) = *v33;
        *(&v107[1] + 4) = *(*a2 + 8 * *(v107 + 12));
        *(&v107[1] + 12) = (*(a2[3] + 4 * *(v107 + 12)) * 1000.0);
        begin = a1[7];
        v36 = a1[8] - begin;
        if (8 * v35 > v36)
        {
          std::vector<char>::__append(v94, 8 * v35 - v36);
          begin = v94->__begin_;
        }

        if (8 * v35 && !begin)
        {
          goto LABEL_80;
        }

        v118 = (v35 & 0x1FFFFFFFFFFFFFFFLL);
        v119 = begin;
        if (v123 <= v34)
        {
          goto LABEL_80;
        }

        memcpy(begin, (v124 + 8 * v34), 8 * v35);
        v115 = 0;
        v114 = 0;
        v116 = 0;
        v37 = v118;
        if (v118 >= 2)
        {
          v38 = v119;
          v39 = (v119 + 4);
          v40 = 1;
          do
          {
            v41 = *(v38 + 8 * v40);
            v42 = v39;
            v43 = v40;
            v44 = v39;
            do
            {
              v45 = *v44;
              v44 -= 2;
              if (v45 <= SHIDWORD(v41))
              {
                break;
              }

              *(v42 + 1) = *(v42 - 1);
              v42 = v44;
              --v43;
            }

            while (v43);
            *(v38 + 8 * v43) = v41;
            ++v40;
            v39 += 2;
          }

          while (v40 != v37);
        }

        if (*(v100 + 25) == 1)
        {
          *&v109 = a1;
          *(&v109 + 1) = &v114;
          *v110 = &v102;
          _ZN6shazam14focus_multipleILl2ENS_11xpair_groupIJNS_12xpair_fieldsEEEEPDoFfRKS3_EZNS_11CPUSearcher6searchIL8AlgoType1ES3_EEvRKNS_12SongDataBaseERKNS_16CPUOnePtDatabaseERKNS_15CPULMFPDataBaseERKNS_5QueryIXT_ENSt3__16vectorINS_4lmfpIXsr4algoIXT_EEE6fpTypeEEENSL_9allocatorISO_EEEEEERKNS_11QueryConfigEmNSL_6chrono10time_pointINSY_12steady_clockENSY_8durationIxNSL_5ratioILl1ELl1000000000EEEEEEERKNSL_8functionIFvRKNS_14SearchResponseEEEEEUlRKT_E_EEvN3gsl4spanIT0_Lm18446744073709551615EEExT1_T2_(v118, v119, *v103, shazam::lm_diff<shazam::xpair_group<shazam::xpair_fields>>, &v109);
        }

        else
        {
          *&v109 = a1;
          *(&v109 + 1) = &v114;
          *v110 = &v102;
          _ZN6shazam5focusILl2ENS_11xpair_groupIJNS_12xpair_fieldsEEEEPDoFfRKS3_EZNS_11CPUSearcher6searchIL8AlgoType1ES3_EEvRKNS_12SongDataBaseERKNS_16CPUOnePtDatabaseERKNS_15CPULMFPDataBaseERKNS_5QueryIXT_ENSt3__16vectorINS_4lmfpIXsr4algoIXT_EEE6fpTypeEEENSL_9allocatorISO_EEEEEERKNS_11QueryConfigEmNSL_6chrono10time_pointINSY_12steady_clockENSY_8durationIxNSL_5ratioILl1ELl1000000000EEEEEEERKNSL_8functionIFvRKNS_14SearchResponseEEEEEUlRKT_E_EEvN3gsl4spanIT0_Lm18446744073709551615EEExT1_T2_(v118, v119, *v103, shazam::lm_diff<shazam::xpair_group<shazam::xpair_fields>>, &v109);
        }

        if (v114 == v115)
        {
          if (*(v100 + 20) == 0.0)
          {
            std::vector<shazam::Result>::push_back[abi:ne200100](a1 + 10, &v102);
          }
        }

        else
        {
          v46 = *(&v107[1] + 4) != v96 || v96 == 0;
          v47 = v98;
          if (!v46)
          {
            v47 = 1;
          }

          v98 = v47;
          v48 = *a5;
          if (*(v95 + 24) >= (-85 * ((*(*a5 + 40) - *(*a5 + 32)) >> 3)))
          {
            v49 = (-85 * ((*(*a5 + 40) - *(*a5 + 32)) >> 3));
          }

          else
          {
            v49 = *(v95 + 24);
          }

          v113[0] = v49;
          v113[1] = 3;
          v50 = shazam::signature_info::getSampleLength(v48);
          v51 = shazam::thresholdScore<(AlgoType)1>(v49, *(a2[6] + *(v107 + 12)), 1.0, v50);
          LODWORD(v109) = 0;
          *(&v109 + 1) = 0;
          *v110 = 0;
          *&v110[72] = 0;
          *v111 = 0;
          memset(&v110[8], 0, 60);
          memset(&v111[8], 0, 64);
          v112 = 0u;
          v52 = v115;
          if (v114 == v115)
          {
            v74 = 0.0;
          }

          else
          {
            v53 = (v114 + 80);
            do
            {
              v54 = *(a2[12] + 8 * *(v107 + 12));
              v56 = *(v53 - 6);
              v55 = *(v53 - 5);
              v108 = v55;
              v129 = *(v53 - 2);
              if (*(a5 + 8) <= v55 && *(a5 + 12) >= v55)
              {
                if (*(a5 + 64) == *(a5 + 72))
                {
                  shazam::peaksToTFPeaks<std::vector<std::vector<shazam::spectral_peak_t>>>((*a5 + 32), v113, &v127);
                  v58 = *(a5 + 64);
                  if (v58)
                  {
                    *(a5 + 72) = v58;
                    operator delete(v58);
                  }

                  *(a5 + 64) = v127;
                  *(a5 + 80) = v128;
                }

                if (shazam::fit_points(a3, (a5 + 64), (a5 + 8), *(v53 + 6), &v108, &v129, (a1 + 13), 3u, v56))
                {
                  *(v53 + 1) = (a1[14] - a1[13]) >> 4;
                  *(v53 - 1) = v108;
                  v59 = v129 * 8.0 + v54;
                  *v53 = v59;
                  if (*(a5 + 64) == *(a5 + 72))
                  {
                    shazam::peaksToTFPeaks<std::vector<std::vector<shazam::spectral_peak_t>>>((*a5 + 32), v113, &v127);
                    v60 = *(a5 + 64);
                    if (v60)
                    {
                      *(a5 + 72) = v60;
                      operator delete(v60);
                    }

                    *(a5 + 64) = v127;
                    *(a5 + 80) = v128;
                  }

                  if (shazam::fit_points(a3, (a5 + 64), (a5 + 8), *(v107 + 12), &v108, &v129, (a1 + 13), 3u, v56))
                  {
                    v61 = shazam::score_match(a1 + 13);
                    *(v53 + 10) = LODWORD(v61);
                    *(v53 + 11) = v62;
                    *(v53 + 4) = (a1[14] - a1[13]) >> 4;
                    *(v53 + 4) = v108;
                    v63 = v129;
                    *(v53 - 2) = v129;
                    v64 = v63 * 8.0 + v54;
                    *(v53 + 3) = v64;
                    *(v53 + 3) = v64 + (*(*a5 + 20) - *(a2[15] + *(v53 + 6))) * 8.0;
                    v65 = *(a2[6] + *(v107 + 12)) >= v49 ? v49 : *(a2[6] + *(v107 + 12));
                    *(v53 + 9) = v65;
                    if (v62 > *&v111[28])
                    {
                      v66 = *(v53 - 4);
                      v109 = *(v53 - 5);
                      *v110 = v66;
                      v67 = *(v53 - 3);
                      v68 = *(v53 - 2);
                      v69 = *v53;
                      *&v110[48] = *(v53 - 1);
                      *&v110[64] = v69;
                      *&v110[16] = v67;
                      *&v110[32] = v68;
                      v70 = v53[1];
                      v71 = v53[2];
                      v72 = v53[4];
                      *&v111[32] = v53[3];
                      *&v111[48] = v72;
                      *v111 = v70;
                      *&v111[16] = v71;
                      std::string::operator=(&v111[64], (v53 + 5));
                    }
                  }
                }
              }

              v73 = v53 + 104;
              v53 = (v53 + 184);
            }

            while (v73 != v52);
            v74 = *&v111[28] * 128.0;
          }

          *&v111[28] = v74;
          if (v74 >= (v51 * *(v100 + 20)))
          {
            if (*&v111[56] == 3)
            {
              *&v111[28] = v74 * 1.25;
            }

            std::vector<shazam::Result>::push_back[abi:ne200100](a1 + 10, &v109);
          }

          if (SHIBYTE(v112) < 0)
          {
            operator delete(*&v111[64]);
          }

          ++v97;
        }

        *&v109 = &v114;
        std::vector<shazam::Result>::__destroy_vector::operator()[abi:ne200100](&v109);
        if (SBYTE3(v107[4]) < 0)
        {
          operator delete(*(&v107[2] + 12));
        }
      }

      v31 = a1[16];
      if (v32 >= ((a1[17] - v31) >> 4) - 1)
      {
        goto LABEL_71;
      }
    }
  }

  v97 = 0;
  LOBYTE(v98) = 0;
LABEL_71:
  v75 = a1[10];
  v76 = a1[11];
  v77 = 126 - 2 * __clz(0xD37A6F4DE9BD37A7 * ((v76 - v75) >> 3));
  if (v76 == v75)
  {
    v78 = 0;
  }

  else
  {
    v78 = v77;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,false>(v75, v76, &v102, v78, 1);
  v79 = *(v100 + 36);
  v80 = a1[10];
  v81 = a1[11];
  if (v79)
  {
    v82 = v96;
    if (0xD37A6F4DE9BD37A7 * ((v81 - v80) >> 3) > v79)
    {
      std::vector<shazam::Result>::resize(a1 + 10, *(v100 + 36));
      v80 = a1[10];
      v81 = a1[11];
    }
  }

  else
  {
    v82 = v96;
  }

  v102.__vftable = 0;
  v102.__imp_.__imp_ = 0;
  *v103 = 0;
  std::vector<shazam::Result>::__init_with_size[abi:ne200100]<shazam::Result*,shazam::Result*>(&v102, v80, v81, 0xD37A6F4DE9BD37A7 * ((v81 - v80) >> 3));
  v103[16] = 1;
  v84 = *a1;
  v83 = a1[1];
  *&v104[4] = a7;
  *&v104[12] = v83;
  v85 = (**v84)(v84);
  *&v104[20] = (*(*v84 + 24))(v84, a8, v85);
  *&v104[28] = 1;
  *&v104[36] = 1;
  *&v104[44] = v16;
  v105 = (v91 - v92) >> 3;
  *v106 = v90;
  *&v106[8] = v89;
  *&v106[16] = v82;
  *(v107 + 4) = v97;
  BYTE12(v107[0]) = v98;
  memcpy(v107 + 13, __src, 0x103uLL);
  v86 = *(a9 + 24);
  if (!v86)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v86 + 48))(v86, &v102);
  result = tl::detail::expected_storage_base<std::vector<shazam::Result>,std::system_error,false,false>::~expected_storage_base(&v102);
  v88 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::function<void ()(shazam::SearchResponse const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

float shazam::signature_info::getSampleLength(shazam::signature_info *this)
{
  if (!*(this + 20))
  {
    return *(this + 1) / *(this + 4);
  }

  v1 = *(this + 4);
  if (v1 > 44099)
  {
    if (v1 == 44100)
    {
      v2 = (*(this + 1) - 10584);
      v3 = 44100.0;
      return v2 / v3;
    }

    if (v1 == 48000)
    {
      v2 = (*(this + 1) - 11520);
      v3 = 48000.0;
      return v2 / v3;
    }

    return (*(this + 1) / v1) + ((2 * *(this + 20)) / -125.0);
  }

  if (v1 == 8000)
  {
    v2 = (*(this + 1) - 1920);
    v3 = 8000.0;
    return v2 / v3;
  }

  if (v1 != 16000)
  {
    return (*(this + 1) / v1) + ((2 * *(this + 20)) / -125.0);
  }

  v2 = (*(this + 1) - 3840);
  v3 = 16000.0;
  return v2 / v3;
}

void shazam::matrix_for<(AlgoType)1>(uint64_t a1@<X0>, uint64_t a2@<X8>, unsigned int a3@<S0>)
{
  shazam::algo<(AlgoType)1>::matrix_for (*a1, a2);
  if (*(a1 + 24) == 1)
  {
    v6 = *(a2 + 16);
    v10[0] = *a2;
    v10[1] = v6;
    v11 = *(a2 + 32);
    shazam::intensify_matrix(v10, v12, COERCE_DOUBLE(__PAIR64__(DWORD1(v10[0]), a3)), *&v6);
    v7 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v7;
    *(a2 + 32) = v13;
  }

  v8 = *(a1 + 4);
  if ((v8 & 0x100000000) != 0)
  {
    *(a2 + 40) = v8;
  }

  v9 = *(a1 + 12);
  if ((v9 & 0x100000000) != 0)
  {
    *(a2 + 44) = v9;
  }

  if (*(a1 + 32) == 1)
  {
    *(a2 + 4) >>= 1;
  }
}

void *std::vector<shazam::lmfp<(shazam::fp_type)0>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_t>>(result, a2);
    }

    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void shazam::kvsort<std::vector<shazam::lmfp<(shazam::fp_type)0>>>(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v27 = *MEMORY[0x277D85DE8];
  v4 = *v1;
  v3 = v1[1];
  v5 = (v3 - *v1) >> 3;
  if (v5 >= 2)
  {
    v6 = v2;
    v7 = v1;
    bzero(v26, 0x1000uLL);
    while (v4 != v3)
    {
      v8 = 0;
      v9 = v26;
      do
      {
        ++*&v9[4 * *(v4 + v8++)];
        v9 += 1024;
      }

      while (v8 != 4);
      v4 += 8;
    }

    v10 = 0;
    v11 = v26;
    do
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = *&v11[v12];
        *&v11[v12] = v13;
        v13 += v14;
        v12 += 4;
      }

      while (v12 != 1024);
      ++v10;
      v11 += 1024;
    }

    while (v10 != 4);
    for (i = 0; i != 4; ++i)
    {
      v16 = 0;
      v17 = &v26[1024 * i];
      v18 = v5;
      do
      {
        v19 = (*v7 + v16);
        v20 = *(v19 + i);
        v21 = *&v17[4 * v20];
        *&v17[4 * v20] = v21 + 1;
        *(*v6 + 8 * v21) = *v19;
        v16 += 8;
        --v18;
      }

      while (v18);
      v22 = *v7;
      *v7 = *v6;
      *v6 = v22;
      v23 = v7[1];
      v7[1] = v6[1];
      v6[1] = v23;
      v24 = v7[2];
      v7[2] = v6[2];
      v6[2] = v24;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t *std::__hash_table<std::__hash_value_type<int,shazam::target_zone_2d>,std::__unordered_map_hasher<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,shazam::target_zone_2d>>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

gsl::details *gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(gsl::details *result)
{
  if (!*result || (v1 = *(result + 2)) == 0 || (v2 = *(result + 1)) == 0 || v1 >= v2)
  {
    gsl::details::terminate(result);
  }

  *(result + 2) = v1 + 8;
  return result;
}

void std::vector<shazam::lmfp<(shazam::fp_type)0>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_t>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *std::vector<shazam::lmfp<(shazam::fp_type)0>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<shazam::spectral_peak_t>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_230FB0864(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float32x2_t *shazam::Query<(AlgoType)1,std::vector<shazam::lmfp<(shazam::fp_type)0>>>::Query(float32x2_t *a1, shazam::signature_info *this, float32x2_t *a3, uint64_t a4)
{
  *a1 = this;
  a1[1] = *a3;
  __asm { FMOV            V1.2S, #1.0 }

  a1[2] = vrev64_s32(vdiv_f32(_D1, vadd_f32(*a3, _D1)));
  v11 = (shazam::signature_info::getSampleLength(this) * 125.0);
  v13 = a1[2].f32[0];
  v12 = a1[2].f32[1];
  v14 = 1.0 - v13;
  if (v14 < v12 + -1.0)
  {
    v14 = v12 + -1.0;
  }

  a1[3].i32[0] = vcvtpd_u64_f64(v14 * v11);
  a1[3].f32[1] = (logf(v12) * 3103.8) + 0.99;
  a1[4].f32[0] = logf(v13) * 3103.8;
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  *a1[5].f32 = *a4;
  a1[7] = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void std::vector<shazam::Result>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 184)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

gsl::details *shazam::search_fingerprints<(AlgoType)1,shazam::xpair_group<shazam::xpair_fields>>(gsl::details *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, float a8, float a9)
{
  v36[0] = a8;
  v36[1] = a9;
  if (*a6 == a6[1])
  {
    return 0;
  }

  v14 = a5 + 8 * a4;
  v33 = a5;
  v34 = v14;
  v35 = a5;
  v29 = v14;
  while (v35 != v14)
  {
    v15 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v33);
    v16 = shazam::QueryRange<(shazam::fp_type)0>::ConstructFingerprintRange(v36, v15);
    v18 = v17;
    v19 = (*a6 + 4 * (v16 >> 14));
    v20 = a1;
    if (v16 >> 14 != 0x3FFFF)
    {
      v20 = v19[1];
    }

    v21 = *v19;
    v22 = a1;
    if (v17 >> 14 != 0x3FFFF)
    {
      v22 = *(*a6 + 4 * (v17 >> 14) + 4);
    }

    v32 = v16;
    result = shazam::binary_fingerprint_search<(AlgoType)1>(a1, a2, v21, v20, a1, &v32);
    if (result < v22)
    {
      v24 = result;
      if (a1 <= result)
      {
        v25 = result;
      }

      else
      {
        v25 = a1;
      }

      while (v25 != v24)
      {
        if (*(a2 + 2 * v24) <= v18)
        {
          v26 = *(*a3 + 4 * v24);
          LOWORD(v31) = ((*v15 >> 1) & 0x3FFF) - ((*(a2 + 2 * v24) >> 1) & 0x3FFF);
          WORD1(v31) = *(v15 + 1);
          HIDWORD(v31) = v26;
          result = shazam::virtual_array<shazam::xpair_group<shazam::xpair_fields>>::push_back(a7, &v31);
          v24 = (v24 + 1);
          if (v22 != v24)
          {
            continue;
          }
        }

        goto LABEL_15;
      }

LABEL_19:
      gsl::details::terminate(result);
    }

LABEL_15:
    result = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v33);
    v27 = v33 == a5 && v34 == v29;
    v14 = v29;
    if (!v27)
    {
      goto LABEL_19;
    }
  }

  result = a7[2];
  if (result == -1)
  {
    goto LABEL_19;
  }

  if (result && *a7 == 0)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t gsl::make_span<std::vector<shazam::lmfp<(shazam::fp_type)0>>>(gsl::details *a1)
{
  v1 = *(a1 + 1);
  v2 = v1 - *a1;
  if (v2 == -8 || (!*a1 ? (v3 = v1 == 0) : (v3 = 1), !v3))
  {
    gsl::details::terminate(a1);
  }

  return v2 >> 3;
}

void shazam::xpairsort<shazam::xpair_group<shazam::xpair_fields>>(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v38 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  if (*v1 >= 2uLL)
  {
    v4 = v2;
    v5 = v1;
    bzero(v37, 0x2000uLL);
    v7 = 0;
    v8 = v5[1] + 4;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        v11 = *v10++;
        ++*&v37[8 * v11 + v9];
        v9 += 2048;
      }

      while (v9 != 0x2000);
      ++v7;
      v8 += 8;
    }

    while (v7 != v3);
    v12 = 0;
    v13 = v37;
    do
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = *&v13[v14];
        *&v13[v14] = v15;
        v15 += v16;
        v14 += 8;
      }

      while (v14 != 2048);
      ++v12;
      v13 += 2048;
    }

    while (v12 != 4);
    v17 = 0;
    v18 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      if (!*v5)
      {
        gsl::details::terminate(v6);
      }

      v19 = v5[1];
      v20 = &v37[2048 * v17];
      if (*&v20[8 * *(v19 + v17 + 4)] != v3)
      {
        v21 = *(v4 + 8);
        v22 = 0;
        if (v18)
        {
          v23 = v5[1];
          do
          {
            v24 = *(v23 + v17 + 4);
            v6 = *&v20[8 * v24];
            v25 = *(v23 + v17 + 12);
            *&v20[8 * v24] = v6 + 1;
            v26 = *&v20[8 * v25];
            v27 = *(v23 + v17 + 20);
            *&v20[8 * v25] = v26 + 1;
            v28 = *&v20[8 * v27];
            v29 = *(v23 + v17 + 28);
            *&v20[8 * v27] = v28 + 1;
            v30 = *&v20[8 * v29];
            *&v20[8 * v29] = v30 + 1;
            *(v21 + 8 * v6) = *v23;
            *(v21 + 8 * v26) = v23[1];
            *(v21 + 8 * v28) = v23[2];
            *(v21 + 8 * v30) = v23[3];
            v22 += 4;
            v23 += 4;
          }

          while (v22 < v18);
        }

        v31 = v3 - v22;
        if (v3 > v22)
        {
          v32 = v19 + 8 * v22 + 4;
          do
          {
            v33 = *(v32 + v17);
            v34 = *&v20[8 * v33];
            *&v20[8 * v33] = v34 + 1;
            *(v21 + 8 * v34) = *(v32 - 4);
            v32 += 8;
            --v31;
          }

          while (v31);
        }

        v35 = *v5;
        *v5 = *v4;
        *v4 = v35;
      }

      ++v17;
    }

    while (v17 != 4);
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t gsl::make_span<std::vector<unsigned int>>(gsl::details *a1)
{
  v1 = *(a1 + 1);
  v2 = v1 - *a1;
  if (v2 == -4 || (!*a1 ? (v3 = v1 == 0) : (v3 = 1), !v3))
  {
    gsl::details::terminate(a1);
  }

  return v2 >> 2;
}

void shazam::bin_tracks<shazam::xpair_group<shazam::xpair_fields>>(unint64_t *a1, unint64_t *a2, unint64_t **a3)
{
  v4 = a1;
  v5 = *a2;
  if (*a2)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v8 >= *v4)
      {
        goto LABEL_20;
      }

      while (*(v4[1] + 4 * v8) < *(a2[1] + 8 * v7 + 4))
      {
        if (*v4 == ++v8)
        {
          v8 = *v4;
          goto LABEL_20;
        }
      }

      v9 = v8 - 1;
      v11 = a3[1];
      v10 = a3[2];
      if (v11 >= v10)
      {
        v13 = *a3;
        v14 = v11 - *a3;
        v15 = v14 >> 4;
        v16 = (v14 >> 4) + 1;
        if (v16 >> 60)
        {
          goto LABEL_41;
        }

        v17 = v10 - v13;
        if (v17 >> 3 > v16)
        {
          v16 = v17 >> 3;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v18 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::ancient_dead_sig_point_t>>(a3, v18);
        }

        v19 = (16 * v15);
        *v19 = v9;
        v19[1] = v7;
        v12 = 16 * v15 + 16;
        v20 = &v19[-2 * (v14 >> 4)];
        memcpy(v20, v13, v14);
        a1 = *a3;
        *a3 = v20;
        a3[1] = v12;
        a3[2] = 0;
        if (a1)
        {
          operator delete(a1);
        }
      }

      else
      {
        *v11 = v9;
        v11[1] = v7;
        v12 = (v11 + 2);
      }

      a3[1] = v12;
      v5 = *a2;
LABEL_20:
      if (v7 < v5)
      {
        v21 = *v4;
        if (*v4 <= v8)
        {
LABEL_40:
          gsl::details::terminate(a1);
        }

        v22 = v4[1];
        v23 = v8 - 1;
        v24 = (a2[1] + 8 * v7 + 4);
        while (*(v22 + 4 * v8) >= *v24)
        {
          if (v21 <= v23)
          {
            goto LABEL_40;
          }

          *v24 = *v24 - *(v24 - 1) - *(v22 + 4 * v23) - 1750;
          v24 += 2;
          if (v5 == ++v7)
          {
            goto LABEL_28;
          }
        }
      }
    }

    while (v7 < v5);
  }

LABEL_28:
  v25 = *v4;
  v27 = a3[1];
  v26 = a3[2];
  if (v27 >= v26)
  {
    v29 = *a3;
    v30 = v27 - *a3;
    v31 = v30 >> 4;
    v32 = (v30 >> 4) + 1;
    if (v32 >> 60)
    {
LABEL_41:
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v33 = v26 - v29;
    if (v33 >> 3 > v32)
    {
      v32 = v33 >> 3;
    }

    v34 = v33 >= 0x7FFFFFFFFFFFFFF0;
    v35 = 0xFFFFFFFFFFFFFFFLL;
    if (!v34)
    {
      v35 = v32;
    }

    if (v35)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::ancient_dead_sig_point_t>>(a3, v35);
    }

    v36 = (16 * v31);
    *v36 = v25;
    v36[1] = v5;
    v28 = 16 * v31 + 16;
    v37 = &v36[-2 * (v30 >> 4)];
    memcpy(v37, v29, v30);
    v38 = *a3;
    *a3 = v37;
    a3[1] = v28;
    a3[2] = 0;
    if (v38)
    {
      operator delete(v38);
    }
  }

  else
  {
    *v27 = v25;
    v27[1] = v5;
    v28 = (v27 + 2);
  }

  a3[1] = v28;
}

void _ZN6shazam14focus_multipleILl2ENS_11xpair_groupIJNS_12xpair_fieldsEEEEPDoFfRKS3_EZNS_11CPUSearcher6searchIL8AlgoType1ES3_EEvRKNS_12SongDataBaseERKNS_16CPUOnePtDatabaseERKNS_15CPULMFPDataBaseERKNS_5QueryIXT_ENSt3__16vectorINS_4lmfpIXsr4algoIXT_EEE6fpTypeEEENSL_9allocatorISO_EEEEEERKNS_11QueryConfigEmNSL_6chrono10time_pointINSY_12steady_clockENSY_8durationIxNSL_5ratioILl1ELl1000000000EEEEEEERKNSL_8functionIFvRKNS_14SearchResponseEEEEEUlRKT_E_EEvN3gsl4spanIT0_Lm18446744073709551615EEExT1_T2_(gsl::details *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v29 = a1;
  v30 = a2;
  if (a1)
  {
    v7 = a1;
    v8 = 0;
    v9 = 0;
    v10 = a3;
    do
    {
      v11 = 8 * v9;
      do
      {
        if (v29 <= v9)
        {
          goto LABEL_23;
        }

        a1 = a4(v30 + v11);
        if (v29 <= v8)
        {
          goto LABEL_23;
        }

        v13 = v12 - (a4)(v30 + 8 * v8);
        if (v13 > v10)
        {
          break;
        }

        ++v9;
        v11 += 8;
      }

      while (v9 < v7);
      if (v9 - v8 >= 3)
      {
        v28[0] = gsl::span<shazam::regresspair,18446744073709551615ul>::make_subspan(&v29, v8, (v9 - v8));
        v28[1] = v14;
        v16 = *a5;
        v15 = a5[1];
        v17 = a5[2];
        v18 = *(v17 + 16);
        v31[0] = *v17;
        v31[1] = v18;
        v19 = *(v17 + 80);
        v21 = *(v17 + 32);
        v20 = *(v17 + 48);
        v31[4] = *(v17 + 64);
        v31[5] = v19;
        v31[2] = v21;
        v31[3] = v20;
        v22 = *(v17 + 144);
        v24 = *(v17 + 96);
        v23 = *(v17 + 112);
        v31[8] = *(v17 + 128);
        v31[9] = v22;
        v31[6] = v24;
        v31[7] = v23;
        if (*(v17 + 183) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v17 + 160), *(v17 + 168));
        }

        else
        {
          v25 = *(v17 + 160);
          __p.__r_.__value_.__r.__words[2] = *(v17 + 176);
          *&__p.__r_.__value_.__l.__data_ = v25;
        }

        shazam::cull_phase<(AlgoType)1,shazam::xpair_group<shazam::xpair_fields>,2ul,(void *)0>(v15, v31, (v16 + 152), v28);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (v13 > v10)
      {
        if (v29 > v9)
        {
          v26 = 8 * v8;
          do
          {
            a1 = a4(v30 + 8 * v9);
            if (v29 <= v8)
            {
              break;
            }

            if ((v27 - (a4)(v30 + v26)) <= v10)
            {
              goto LABEL_21;
            }

            ++v8;
            v26 += 8;
          }

          while (v29 > v9);
        }

LABEL_23:
        gsl::details::terminate(a1);
      }

LABEL_21:
      ;
    }

    while (v9 < v7);
  }
}

void sub_230FB1250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _ZN6shazam5focusILl2ENS_11xpair_groupIJNS_12xpair_fieldsEEEEPDoFfRKS3_EZNS_11CPUSearcher6searchIL8AlgoType1ES3_EEvRKNS_12SongDataBaseERKNS_16CPUOnePtDatabaseERKNS_15CPULMFPDataBaseERKNS_5QueryIXT_ENSt3__16vectorINS_4lmfpIXsr4algoIXT_EEE6fpTypeEEENSL_9allocatorISO_EEEEEERKNS_11QueryConfigEmNSL_6chrono10time_pointINSY_12steady_clockENSY_8durationIxNSL_5ratioILl1ELl1000000000EEEEEEERKNSL_8functionIFvRKNS_14SearchResponseEEEEEUlRKT_E_EEvN3gsl4spanIT0_Lm18446744073709551615EEExT1_T2_(gsl::details *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t), uint64_t *a5)
{
  v31[0] = a1;
  v31[1] = a2;
  if (a1)
  {
    v8 = a1;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a3;
    do
    {
      if (v11 == v8)
      {
LABEL_19:
        gsl::details::terminate(a1);
      }

      v13 = v11;
      a1 = a4(a2 + 8 * v11);
      if (v10 >= v8)
      {
LABEL_10:
        v17 = v10;
      }

      else
      {
        v15 = v14 + v12;
        v16 = a2 + 8 * v10;
        do
        {
          if (v8 == v10)
          {
            goto LABEL_19;
          }

          if ((a4)(v16) >= v15)
          {
            goto LABEL_10;
          }

          ++v10;
          v16 += 8;
          v9 = v13;
        }

        while (v8 != v10);
        v17 = v8;
        v9 = v13;
      }

      v11 = v13 + 1;
      v10 = v17 + 1;
    }

    while (v17 + 1 < v8);
    if (v17 - v13 >= 3)
    {
      v30[0] = gsl::span<shazam::regresspair,18446744073709551615ul>::make_subspan(v31, v9, (v17 - v13));
      v30[1] = v18;
      v20 = *a5;
      v19 = a5[1];
      v21 = a5[2];
      v22 = *(v21 + 16);
      v32[0] = *v21;
      v32[1] = v22;
      v23 = *(v21 + 80);
      v25 = *(v21 + 32);
      v24 = *(v21 + 48);
      v32[4] = *(v21 + 64);
      v32[5] = v23;
      v32[2] = v25;
      v32[3] = v24;
      v26 = *(v21 + 144);
      v28 = *(v21 + 96);
      v27 = *(v21 + 112);
      v32[8] = *(v21 + 128);
      v32[9] = v26;
      v32[6] = v28;
      v32[7] = v27;
      if (*(v21 + 183) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v21 + 160), *(v21 + 168));
      }

      else
      {
        v29 = *(v21 + 160);
        __p.__r_.__value_.__r.__words[2] = *(v21 + 176);
        *&__p.__r_.__value_.__l.__data_ = v29;
      }

      shazam::cull_phase<(AlgoType)1,shazam::xpair_group<shazam::xpair_fields>,2ul,(void *)0>(v19, v32, (v20 + 152), v30);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_230FB13FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<shazam::Result>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<shazam::Result>::__emplace_back_slow_path<shazam::Result const&>(a1, a2);
  }

  else
  {
    std::vector<shazam::Result>::__construct_one_at_end[abi:ne200100]<shazam::Result const&>(a1, a2);
    result = v3 + 184;
  }

  a1[1] = result;
  return result;
}

void std::vector<shazam::Result>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xD37A6F4DE9BD37A7 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<shazam::Result>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 184 * a2;
    while (v3 != v7)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 184;
    }

    a1[1] = v7;
  }
}

unint64_t shazam::QueryRange<(shazam::fp_type)0>::ConstructFingerprintRange(float *a1, void *a2)
{
  v2 = ((*a2 >> 1) & 0x3FFF);
  v3 = *a1 + v2;
  v4 = a1[1] + v2;
  if ((v3 & 0x3FFF) < (v4 & 0x3FFF))
  {
    v5 = *a2 | 0x7FFELL;
  }

  return *a2 & 0xFFFFFFFF00000000 | *a2 & 0xFFFF8001 | (2 * (v4 & 0x3FFF));
}

unint64_t shazam::binary_fingerprint_search<(AlgoType)1>(gsl::details *a1, uint64_t a2, unint64_t a3, uint64_t this, uint64_t a5, unsigned __int16 *a6)
{
  if (this == a3)
  {
    return a3;
  }

  if (!a5)
  {
    goto LABEL_5;
  }

  if (a1 <= a3)
  {
    goto LABEL_14;
  }

  if (*(a2 + 2 * a3) >= *a6)
  {
    return a3;
  }

LABEL_5:
  if ((this - a3) >= 2)
  {
    while (a1 > (a3 + this) >> 1)
    {
      if (*(a2 + 2 * ((a3 + this) >> 1)) < *a6)
      {
        a3 = (a3 + this) >> 1;
      }

      else
      {
        this = (a3 + this) >> 1;
      }

      if ((this - a3) <= 1)
      {
        return this;
      }
    }

LABEL_14:
    gsl::details::terminate(a1);
  }

  return this;
}

void *shazam::virtual_array<shazam::xpair_group<shazam::xpair_fields>>::push_back(void *result, void *a2)
{
  v2 = result[2];
  if (v2 >= result[1])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "trying to write to unallocated memory!");
    shazam::virtual_array<shazam::xpair_group<shazam::xpair_fields>>::push_back(exception);
  }

  *(*result + 8 * v2) = *a2;
  ++result[2];
  return result;
}

uint64_t shazam::virtual_array<shazam::xpair_group<shazam::xpair_fields>>::~virtual_array(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      munmap(v2, 8 * *(a1 + 8));
    }
  }

  return a1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void shazam::cull_phase<(AlgoType)1,shazam::xpair_group<shazam::xpair_fields>,2ul,(void *)0>(float **a1, uint64_t a2, float **a3, gsl::details **a4)
{
  v8 = *a4;
  *(a2 + 24) = *a4;
  v9 = a4[1];
  v12 = shazam::fdelta_compare<shazam::xpair_group<shazam::xpair_fields>>;
  v13[0] = v9;
  v14 = v9;
  v15 = &v9[v8];
  v16 = v9;
  v13[1] = v15;
  v13[2] = v15;
  _ZNSt3__115__sort_dispatchB8ne200100INS_17_ClassicAlgPolicyEN3gsl7details13span_iteratorIN6shazam11xpair_groupIJNS5_12xpair_fieldsEEEEEEPDoFbRKS8_SB_EEEvT0_SE_RT1_(&v14, v13, &v12);
  v10 = *a4;
  v11 = a4[1];
  v14 = a2;
  v15 = a3;
  v16 = a1;
  _ZN6shazam5focusILl2ENS_11xpair_groupIJNS_12xpair_fieldsEEEEPDoFiRKS3_EZNS_10cull_phaseIL8AlgoType1ES3_Lm2ELPv0EEEvRNSt3__16vectorINS_6ResultENSB_9allocatorISD_EEEESD_RNSC_INS_11regresspairENSE_ISI_EEEERKN3gsl4spanIT0_Lm18446744073709551615EEEEUlT_E_EEvSP_xT1_T2_(v10, v11, 21, shazam::f1_diff<shazam::xpair_group<shazam::xpair_fields>>, &v14);
}

void _ZN6shazam5focusILl2ENS_11xpair_groupIJNS_12xpair_fieldsEEEEPDoFiRKS3_EZNS_10cull_phaseIL8AlgoType1ES3_Lm2ELPv0EEEvRNSt3__16vectorINS_6ResultENSB_9allocatorISD_EEEESD_RNSC_INS_11regresspairENSE_ISI_EEEERKN3gsl4spanIT0_Lm18446744073709551615EEEEUlT_E_EEvSP_xT1_T2_(gsl::details *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t), float ***a5)
{
  v19[0] = a1;
  v19[1] = a2;
  if (a1)
  {
    v9 = a1;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      if (v12 == v9)
      {
LABEL_15:
        gsl::details::terminate(a1);
      }

      v13 = v12;
      a1 = a4(a2 + 8 * v12);
      if (v11 >= v9)
      {
LABEL_10:
        v16 = v11;
      }

      else
      {
        v14 = a3 + a1;
        v15 = a2 + 8 * v11;
        do
        {
          if (v9 == v11)
          {
            goto LABEL_15;
          }

          a1 = a4(v15);
          if (v14 <= a1)
          {
            goto LABEL_10;
          }

          ++v11;
          v15 += 8;
          v10 = v13;
        }

        while (v9 != v11);
        v16 = v9;
        v10 = v13;
      }

      v12 = v13 + 1;
      v11 = v16 + 1;
    }

    while (v16 + 1 < v9);
    if (v16 - v13 >= 3)
    {
      subspan = gsl::span<shazam::regresspair,18446744073709551615ul>::make_subspan(v19, v10, (v16 - v13));
      shazam::cull_phase<(AlgoType)1,shazam::xpair_group<shazam::xpair_fields>,2ul,(void *)0>(std::vector<shazam::Result> &,shazam::Result,std::vector<shazam::regresspair> &,gsl::span<shazam::xpair_group<shazam::xpair_fields>,18446744073709551615ul> const&)::{lambda((AlgoType)1)#1}::operator()<gsl::span<shazam::xpair_group<shazam::xpair_fields>,18446744073709551615ul>>(a5, subspan, v18);
    }
  }
}

void _ZNSt3__115__sort_dispatchB8ne200100INS_17_ClassicAlgPolicyEN3gsl7details13span_iteratorIN6shazam11xpair_groupIJNS5_12xpair_fieldsEEEEEEPDoFbRKS8_SB_EEEvT0_SE_RT1_(void *a1, gsl::details *a2, uint64_t (**a3)(gsl::details *, gsl::details *))
{
  v6 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-<shazam::xpair_group<shazam::xpair_fields>,0>(a2, a1);
  v7 = 126 - 2 * __clz(v6);
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v11 = *a1;
  v12 = a1[2];
  v9 = *a2;
  v10 = *(a2 + 2);
  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELb0EEEvT1_SF_T0_NS_15iterator_traitsISF_E15difference_typeEb(&v11, &v9, a3, v8, 1);
}

uint64_t gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-<shazam::xpair_group<shazam::xpair_fields>,0>(gsl::details *a1, void *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != a2[1])
  {
    gsl::details::terminate(a1);
  }

  return (*(a1 + 2) - a2[2]) >> 3;
}

void _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELb0EEEvT1_SF_T0_NS_15iterator_traitsISF_E15difference_typeEb(gsl::details *a1, gsl::details *a2, uint64_t (**a3)(gsl::details *, gsl::details *), uint64_t a4, char a5)
{
  for (i = a4 - 1; ; --i)
  {
    v10 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-<shazam::xpair_group<shazam::xpair_fields>,0>(a2, a1);
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v34 = *a1;
          v35 = *(a1 + 2);
          v43 = *a1;
          v44 = *(a1 + 2);
          gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v43, 1);
          v32 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(a2);
          v33 = v32[1].n128_u64[0];
          v41 = *v32;
          v42 = v33;
          _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELi0EEEbT1_SF_SF_T0_(&v34, &v43, &v41, a3);
          return;
        case 4:
          v34 = *a1;
          v35 = *(a1 + 2);
          v43 = *a1;
          v44 = *(a1 + 2);
          gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v43, 1);
          v41 = *a1;
          v42 = *(a1 + 2);
          gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v41, 2);
          v21 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(a2);
          v22 = *(v21 + 2);
          v39 = *v21;
          v40 = v22;
          _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELi0EEEvT1_SF_SF_SF_T0_(&v34, &v43, &v41, &v39, a3);
          return;
        case 5:
          v34 = *a1;
          v35 = *(a1 + 2);
          v43 = *a1;
          v44 = *(a1 + 2);
          gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v43, 1);
          v41 = *a1;
          v42 = *(a1 + 2);
          gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v41, 2);
          v39 = *a1;
          v40 = *(a1 + 2);
          gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v39, 3);
          v30 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(a2);
          v31 = *(v30 + 2);
          v37 = *v30;
          v38 = v31;
          _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELi0EEEvT1_SF_SF_SF_SF_T0_(&v34, &v43, &v41, &v39, &v37, a3);
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v23 = *a3;
        v24 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(a2);
        v25 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(v24);
        v26 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a1);
        if (v23(v25, v26))
        {
          v34 = *a1;
          v35 = *(a1 + 2);
          v43 = *a2;
          v44 = *(a2 + 2);
          v27 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v34);
          v28 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v43);
          v29 = *v27;
          *v27 = *v28;
          *v28 = v29;
        }

        return;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (i == -1)
    {
      v34 = *a1;
      v35 = *(a1 + 2);
      v43 = *a2;
      v44 = *(a2 + 2);
      v41 = *a2;
      v42 = *(a2 + 2);
      _ZNSt3__114__partial_sortB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EESE_EET1_SF_SF_T2_RT0_(&v34, &v43, &v41, a3, &v39);
      return;
    }

    v11 = v10 >> 1;
    if (v10 < 0x81)
    {
      v34 = *a1;
      v35 = *(a1 + 2);
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v34, v11);
      v43 = *a1;
      v44 = *(a1 + 2);
      v41 = *a2;
      v42 = *(a2 + 2);
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-=(&v41, 1);
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELi0EEEbT1_SF_SF_T0_(&v34, &v43, &v41, a3);
      if (a5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v34 = *a1;
      v35 = *(a1 + 2);
      v43 = *a1;
      v44 = *(a1 + 2);
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v43, v11);
      v41 = *a2;
      v42 = *(a2 + 2);
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-=(&v41, 1);
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELi0EEEbT1_SF_SF_T0_(&v34, &v43, &v41, a3);
      v34 = *a1;
      v35 = *(a1 + 2);
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v34, 1);
      v43 = *a1;
      v44 = *(a1 + 2);
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v43, v11 - 1);
      v41 = *a2;
      v42 = *(a2 + 2);
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-=(&v41, 2);
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELi0EEEbT1_SF_SF_T0_(&v34, &v43, &v41, a3);
      v34 = *a1;
      v35 = *(a1 + 2);
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v34, 2);
      v43 = *a1;
      v44 = *(a1 + 2);
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v43, v11 + 1);
      v41 = *a2;
      v42 = *(a2 + 2);
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-=(&v41, 3);
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELi0EEEbT1_SF_SF_T0_(&v34, &v43, &v41, a3);
      v34 = *a1;
      v35 = *(a1 + 2);
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v34, v11 - 1);
      v43 = *a1;
      v44 = *(a1 + 2);
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v43, v11);
      v41 = *a1;
      v42 = *(a1 + 2);
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v41, v11 + 1);
      _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELi0EEEbT1_SF_SF_T0_(&v34, &v43, &v41, a3);
      v41 = *a1;
      v42 = *(a1 + 2);
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v41, v11);
      v34 = *a1;
      v35 = *(a1 + 2);
      v43 = v41;
      v44 = v42;
      v12 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v34);
      v13 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v43);
      v14 = *v12;
      *v12 = *v13;
      *v13 = v14;
      if (a5)
      {
        goto LABEL_16;
      }
    }

    v15 = *a3;
    v34 = *a1;
    v35 = *(a1 + 2);
    gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-=(&v34, 1);
    v16 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v34);
    v17 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a1);
    if ((v15(v16, v17) & 1) == 0)
    {
      v43 = *a1;
      v44 = *(a1 + 2);
      v41 = *a2;
      v42 = *(a2 + 2);
      _ZNSt3__131__partition_with_equals_on_leftB8ne200100INS_17_ClassicAlgPolicyEN3gsl7details13span_iteratorIN6shazam11xpair_groupIJNS5_12xpair_fieldsEEEEEERPDoFbRKS8_SB_EEET0_SF_SF_T1_(&v43, &v41, a3, &v34);
      a5 = 0;
      *a1 = v34;
      v19 = v35;
      goto LABEL_25;
    }

LABEL_16:
    v43 = *a1;
    v44 = *(a1 + 2);
    v41 = *a2;
    v42 = *(a2 + 2);
    _ZNSt3__132__partition_with_equals_on_rightB8ne200100INS_17_ClassicAlgPolicyEN3gsl7details13span_iteratorIN6shazam11xpair_groupIJNS5_12xpair_fieldsEEEEEERPDoFbRKS8_SB_EEENS_4pairIT0_bEESG_SG_T1_(&v43, &v41, a3, &v34);
    v43 = v34;
    v44 = v35;
    if (v36 != 1)
    {
      goto LABEL_23;
    }

    v41 = *a1;
    v42 = *(a1 + 2);
    v39 = v34;
    v40 = v35;
    v18 = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EEEEbT1_SF_T0_(&v41, &v39, a3);
    v41 = v43;
    v42 = v44;
    gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v41, 1);
    v39 = *a2;
    v40 = *(a2 + 2);
    if (!_ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EEEEbT1_SF_T0_(&v41, &v39, a3))
    {
      if (v18)
      {
        v20 = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v43);
      }

      else
      {
LABEL_23:
        v41 = *a1;
        v42 = *(a1 + 2);
        v39 = v43;
        v40 = v44;
        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELb0EEEvT1_SF_T0_NS_15iterator_traitsISF_E15difference_typeEb(&v41, &v39, a3, i, a5 & 1);
        v20 = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v43);
        a5 = 0;
      }

      v19 = *(v20 + 2);
      *a1 = *v20;
LABEL_25:
      *(a1 + 2) = v19;
      continue;
    }

    if (v18)
    {
      return;
    }

    *a2 = v43;
    *(a2 + 2) = v44;
  }

  v34 = *a1;
  v35 = *(a1 + 2);
  v43 = *a2;
  v44 = *(a2 + 2);
  if (a5)
  {
    _ZNSt3__116__insertion_sortB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EEEEvT1_SF_T0_(&v34, &v43, a3);
  }

  else
  {
    _ZNSt3__126__insertion_sort_unguardedB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EEEEvT1_SF_T0_(&v34, &v43, a3);
  }
}

gsl::details *gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(gsl::details *result)
{
  if (!*result || !*(result + 1) || (v1 = *(result + 2), *result >= v1))
  {
    gsl::details::terminate(result);
  }

  *(result + 2) = v1 - 8;
  return result;
}

uint64_t _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELi0EEEbT1_SF_SF_T0_(gsl::details *a1, gsl::details *a2, gsl::details *a3, uint64_t (**a4)(gsl::details *, gsl::details *))
{
  v8 = *a4;
  v9 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2);
  v10 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a1);
  LOBYTE(v9) = v8(v9, v10);
  v11 = *a4;
  v12 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a3);
  v13 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2);
  result = v11(v12, v13);
  if (v9)
  {
    if (result)
    {
      v34 = *a1;
      v15 = *(a1 + 2);
LABEL_9:
      v35 = v15;
      v32 = *a3;
      v22 = *(a3 + 2);
      goto LABEL_10;
    }

    v34 = *a1;
    v35 = *(a1 + 2);
    v32 = *a2;
    v33 = *(a2 + 2);
    v23 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v34);
    v24 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v32);
    v25 = *v23;
    *v23 = *v24;
    *v24 = v25;
    v26 = *a4;
    v27 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a3);
    v28 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2);
    if (v26(v27, v28))
    {
      v34 = *a2;
      v15 = *(a2 + 2);
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v34 = *a2;
    v35 = *(a2 + 2);
    v32 = *a3;
    v33 = *(a3 + 2);
    v16 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v34);
    v17 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v32);
    v18 = *v16;
    *v16 = *v17;
    *v17 = v18;
    v19 = *a4;
    v20 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2);
    v21 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a1);
    if (v19(v20, v21))
    {
      v34 = *a1;
      v35 = *(a1 + 2);
      v32 = *a2;
      v22 = *(a2 + 2);
LABEL_10:
      v33 = v22;
      v29 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v34);
      v30 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v32);
      v31 = *v29;
      *v29 = *v30;
      *v30 = v31;
    }
  }

  return 1;
}

gsl::details *_ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELi0EEEvT1_SF_SF_SF_T0_(gsl::details *a1, gsl::details *a2, gsl::details *a3, gsl::details *a4, uint64_t (**a5)(gsl::details *, gsl::details *))
{
  v32 = *a1;
  v33 = *(a1 + 2);
  v30 = *a2;
  v31 = *(a2 + 2);
  v28 = *a3;
  v29 = *(a3 + 2);
  _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELi0EEEbT1_SF_SF_T0_(&v32, &v30, &v28, a5);
  v10 = *a5;
  v11 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a4);
  v12 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a3);
  result = v10(v11, v12);
  if (result)
  {
    v32 = *a3;
    v33 = *(a3 + 2);
    v30 = *a4;
    v31 = *(a4 + 2);
    v14 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v32);
    v15 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v30);
    v16 = *v14;
    *v14 = *v15;
    *v15 = v16;
    v17 = *a5;
    v18 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a3);
    v19 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2);
    result = v17(v18, v19);
    if (result)
    {
      v32 = *a2;
      v33 = *(a2 + 2);
      v30 = *a3;
      v31 = *(a3 + 2);
      v20 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v32);
      v21 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v30);
      v22 = *v20;
      *v20 = *v21;
      *v21 = v22;
      v23 = *a5;
      v24 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2);
      v25 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a1);
      result = v23(v24, v25);
      if (result)
      {
        v32 = *a1;
        v33 = *(a1 + 2);
        v30 = *a2;
        v31 = *(a2 + 2);
        v26 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v32);
        result = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v30);
        v27 = *v26;
        *v26 = *result;
        *result = v27;
      }
    }
  }

  return result;
}

gsl::details *_ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELi0EEEvT1_SF_SF_SF_SF_T0_(gsl::details *a1, gsl::details *a2, gsl::details *a3, gsl::details *a4, gsl::details *a5, uint64_t (**a6)(gsl::details *, gsl::details *))
{
  v42 = *a1;
  v43 = *(a1 + 2);
  v40 = *a2;
  v41 = *(a2 + 2);
  v38 = *a3;
  v39 = *(a3 + 2);
  v36 = *a4;
  v37 = *(a4 + 2);
  _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELi0EEEvT1_SF_SF_SF_T0_(&v42, &v40, &v38, &v36, a6);
  v12 = *a6;
  v13 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a5);
  v14 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a4);
  result = v12(v13, v14);
  if (result)
  {
    v42 = *a4;
    v43 = *(a4 + 2);
    v40 = *a5;
    v41 = *(a5 + 2);
    v16 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v42);
    v17 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v40);
    v18 = *v16;
    *v16 = *v17;
    *v17 = v18;
    v19 = *a6;
    v20 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a4);
    v21 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a3);
    result = v19(v20, v21);
    if (result)
    {
      v42 = *a3;
      v43 = *(a3 + 2);
      v40 = *a4;
      v41 = *(a4 + 2);
      v22 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v42);
      v23 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v40);
      v24 = *v22;
      *v22 = *v23;
      *v23 = v24;
      v25 = *a6;
      v26 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a3);
      v27 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2);
      result = v25(v26, v27);
      if (result)
      {
        v42 = *a2;
        v43 = *(a2 + 2);
        v40 = *a3;
        v41 = *(a3 + 2);
        v28 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v42);
        v29 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v40);
        v30 = *v28;
        *v28 = *v29;
        *v29 = v30;
        v31 = *a6;
        v32 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2);
        v33 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a1);
        result = v31(v32, v33);
        if (result)
        {
          v42 = *a1;
          v43 = *(a1 + 2);
          v40 = *a2;
          v41 = *(a2 + 2);
          v34 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v42);
          result = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v40);
          v35 = *v34;
          *v34 = *result;
          *result = v35;
        }
      }
    }
  }

  return result;
}

gsl::details *_ZNSt3__116__insertion_sortB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EEEEvT1_SF_T0_(gsl::details *result, void *a2, unsigned int (**a3)(gsl::details *, gsl::details *))
{
  if (*result != *a2)
  {
    goto LABEL_14;
  }

  v4 = result;
  if (*(result + 1) != a2[1])
  {
    goto LABEL_14;
  }

  if (*(result + 2) != a2[2])
  {
    v20 = *result;
    v21 = *(result + 2);
    while (1)
    {
      result = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v20);
      if (v20 != *a2)
      {
        break;
      }

      if (v21 == a2[2])
      {
        return result;
      }

      v18 = v20;
      v19 = v21;
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(&v18);
      v6 = *a3;
      v7 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v20);
      v8 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v18);
      if (v6(v7, v8))
      {
        v9 = *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v20);
        v15 = v18;
        v16 = v19;
        v17 = v9;
        v19 = v21;
        v18 = v20;
        do
        {
          v10 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v15);
          result = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v18);
          *result = *v10;
          v18 = v15;
          v19 = v16;
          if (v15 != *v4)
          {
            goto LABEL_14;
          }

          if (v19 == *(v4 + 2))
          {
            break;
          }

          v11 = *a3;
          v12 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(&v15);
          v13 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(v12);
        }

        while (((v11)(&v17, v13) & 1) != 0);
        v14 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v18);
        *v14 = v17;
      }
    }

LABEL_14:
    gsl::details::terminate(result);
  }

  return result;
}

gsl::details *_ZNSt3__126__insertion_sort_unguardedB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EEEEvT1_SF_T0_(gsl::details *result, void *a2, unsigned int (**a3)(gsl::details *, gsl::details *))
{
  if (*result != *a2)
  {
    goto LABEL_13;
  }

  v4 = result;
  if (*(result + 1) != a2[1])
  {
    goto LABEL_13;
  }

  if (*(result + 2) != a2[2])
  {
    v22 = *result;
    v23 = *(result + 2);
    gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-=(&v22, 1);
    v20 = *v4;
    v21 = *(v4 + 2);
    result = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v20, 1);
    while (v20 == *a2)
    {
      if (v21 == a2[2])
      {
        return result;
      }

      v18 = v20;
      v19 = v21;
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-=(&v18, 1);
      v6 = *a3;
      v7 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v20);
      v8 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v18);
      if (v6(v7, v8))
      {
        v9 = *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v20);
        v15 = v18;
        v16 = v19;
        v17 = v9;
        v19 = v21;
        v18 = v20;
        do
        {
          v10 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v15);
          *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v18) = *v10;
          v18 = v15;
          v19 = v16;
          v11 = *a3;
          v12 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(&v15);
          v13 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(v12);
        }

        while (((v11)(&v17, v13) & 1) != 0);
        v14 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v18);
        *v14 = v17;
      }

      result = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v20);
    }

LABEL_13:
    gsl::details::terminate(result);
  }

  return result;
}

__n128 _ZNSt3__114__partial_sortB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EESE_EET1_SF_SF_T2_RT0_@<Q0>(gsl::details *a1@<X0>, void *a2@<X1>, __n128 *a3@<X2>, unsigned int (**a4)(gsl::details *, gsl::details *)@<X3>, gsl::details *a5@<X8>)
{
  if (*a1 != *a2 || *(a1 + 1) != a2[1])
  {
    gsl::details::terminate(a1);
  }

  if (*(a1 + 2) == a2[2])
  {
    result = *a3;
    *a5 = *a3;
    *(a5 + 2) = a3[1].n128_u64[0];
  }

  else
  {
    v10 = *a1;
    v11 = *(a1 + 2);
    v8 = *a2;
    v9 = a2[2];
    v6 = *a3;
    v7 = a3[1].n128_u64[0];
    result.n128_u64[0] = _ZNSt3__119__partial_sort_implB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EESE_EET1_SF_SF_T2_OT0_(&v10, &v8, &v6, a4, a5).n128_u64[0];
  }

  return result;
}

__n128 _ZNSt3__131__partition_with_equals_on_leftB8ne200100INS_17_ClassicAlgPolicyEN3gsl7details13span_iteratorIN6shazam11xpair_groupIJNS5_12xpair_fieldsEEEEEERPDoFbRKS8_SB_EEET0_SF_SF_T1_@<Q0>(gsl::details *a1@<X0>, gsl::details *a2@<X1>, uint64_t (**a3)(uint64_t *, gsl::details *)@<X2>, uint64_t a4@<X8>)
{
  v28 = *a1;
  v29 = *(a1 + 2);
  v27 = *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a1);
  v8 = *a3;
  v32 = *a2;
  v33 = *(a2 + 2);
  gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-=(&v32, 1);
  v9 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v32);
  if (!v8(&v27, v9))
  {
    while (1)
    {
      v12 = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(a1);
      if (*v12 != *a2 || *(v12 + 8) != *(a2 + 1))
      {
        break;
      }

      if (*(v12 + 16) < *(a2 + 2))
      {
        v13 = *a3;
        v14 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a1);
        v12 = v13(&v27, v14);
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_8;
    }

LABEL_23:
    gsl::details::terminate(v12);
  }

  do
  {
    gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(a1);
    v10 = *a3;
    v11 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a1);
    v12 = v10(&v27, v11);
  }

  while ((v12 & 1) == 0);
LABEL_8:
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    goto LABEL_23;
  }

  if (*(a1 + 2) >= *(a2 + 2))
  {
    goto LABEL_13;
  }

  do
  {
    gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(a2);
    v15 = *a3;
    v16 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2);
    v12 = v15(&v27, v16);
  }

  while ((v12 & 1) != 0);
  while (1)
  {
    if (*a1 != *a2)
    {
      goto LABEL_23;
    }

LABEL_13:
    if (*(a1 + 1) != *(a2 + 1))
    {
      goto LABEL_23;
    }

    if (*(a1 + 2) >= *(a2 + 2))
    {
      break;
    }

    v32 = *a1;
    v33 = *(a1 + 2);
    v30 = *a2;
    v31 = *(a2 + 2);
    v17 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v32);
    v18 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v30);
    v19 = *v17;
    *v17 = *v18;
    *v18 = v19;
    do
    {
      gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(a1);
      v20 = *a3;
      v21 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a1);
    }

    while (!v20(&v27, v21));
    do
    {
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(a2);
      v22 = *a3;
      v23 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2);
      v12 = v22(&v27, v23);
    }

    while ((v12 & 1) != 0);
  }

  v32 = *a1;
  v33 = *(a1 + 2);
  v12 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-=(&v32, 1);
  if (*&v28 != v32)
  {
    goto LABEL_23;
  }

  if (v29 != v33)
  {
    v24 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v32);
    *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v28) = *v24;
  }

  v25 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v32);
  *v25 = v27;
  result = *a1;
  *a4 = *a1;
  *(a4 + 16) = *(a1 + 2);
  return result;
}