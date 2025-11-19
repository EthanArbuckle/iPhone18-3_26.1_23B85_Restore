BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(float *a1, float *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 > v26)
        {
          v27 = *(a1 + 1);
        }

        else
        {
          v27 = *(a2 - 1);
        }

        if (v25 > v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        *(a1 + 1) = v27;
        v28 = *(a2 - 1);
        if (v28 > *a1)
        {
          v29 = *(a2 - 1);
        }

        else
        {
          v29 = *a1;
        }

        if (v28 > *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 > v47)
        {
          v49 = *a1;
        }

        else
        {
          v49 = a1[2];
        }

        if (*a1 <= v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 > v50)
        {
          v51 = v48;
        }

        else
        {
          v51 = *(a2 - 1);
        }

        if (v48 <= v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 > v51)
        {
          v53 = *a1;
        }

        else
        {
          v53 = v51;
        }

        if (*a1 > v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 > v55)
        {
          v56 = a1[2];
        }

        else
        {
          v56 = *(a2 - 1);
        }

        if (v54 > v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 > v56)
        {
          v58 = a1[1];
        }

        else
        {
          v58 = v56;
        }

        if (v57 > v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 > v6)
        {
          v7 = *a1;
        }

        else
        {
          v7 = a1[1];
        }

        if (*a1 > v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 > v9)
        {
          v10 = *(a1 + 3);
        }

        else
        {
          v10 = *(a2 - 1);
        }

        if (v8 > v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        *(a1 + 3) = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 > v12)
        {
          v13 = *(a2 - 1);
        }

        else
        {
          v13 = a1[2];
        }

        if (v11 > v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = *(a1 + 2);
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = *(a1 + 3);
          v14 = v13;
        }

        *(a1 + 2) = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 > v17)
        {
          v18 = v16;
        }

        else
        {
          v18 = *(a2 - 1);
        }

        if (v16 <= v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 > *a1)
        {
          v22 = a1[3];
        }

        else
        {
          v22 = *a1;
        }

        if (v20 > *a1)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
          v21 = v22;
        }

        if (v20 > v18)
        {
          v23 = v20;
        }

        else
        {
          v23 = v18;
        }

        if (v20 > v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 > v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v32 = a1 + 2;
  v33 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 > v33)
  {
    v36 = a1[1];
  }

  else
  {
    v36 = a1[2];
  }

  if (v34 <= v33)
  {
    v33 = a1[1];
  }

  if (v33 > v35)
  {
    v37 = v33;
  }

  else
  {
    v37 = *a1;
  }

  if (v33 > v35)
  {
    v33 = *a1;
  }

  *v32 = v33;
  if (v37 > v36)
  {
    v38 = v35;
  }

  else
  {
    v38 = v36;
  }

  if (v37 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v32;
    if (*v39 > *v32)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_85;
        }
      }

      v46 = a1;
LABEL_85:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v32 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

float *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *,float *>(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 > *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = v16;
          v18 = &v16[v14];
          v16 = v18 + 1;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[2];
            v21 = v18 + 2;
            if (*(v21 - 1) > v22)
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v16 != --v6)
        {
          *v16 = *v6;
          *v6 = v15;
          v23 = (v16 - a1 + 4) >> 2;
          v24 = v23 < 2;
          v25 = v23 - 2;
          if (v24)
          {
            goto LABEL_22;
          }

          v26 = v25 >> 1;
          v27 = &a1[v26];
          v28 = *v27;
          v15 = *v16;
          if (*v27 <= *v16)
          {
            goto LABEL_22;
          }

          do
          {
            *v16 = v28;
            v16 = v27;
            if (!v26)
            {
              break;
            }

            v26 = (v26 - 1) >> 1;
            v27 = &a1[v26];
            v28 = *v27;
          }

          while (*v27 > v15);
        }

        *v16 = v15;
LABEL_22:
        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 > v8[1])
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      if (*v8 <= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 4 * v7);
          v13 = v12 + 2;
          if (v13 < a3 && *v8 > v8[1])
          {
            ++v8;
            v7 = v13;
          }

          v10 = *v8;
        }

        while (*v8 <= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

float *std::__introsort<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,false>(float *result, float *a2, uint64_t a3, uint64_t a4, char a5)
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
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v80 = *v9;
        v81 = v9[1];
        if (sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2))) > sqrtf((v81 * v81) + (v80 * v80)))
        {
          *v9 = *(a2 - 1);
          *(a2 - 2) = v80;
          *(a2 - 1) = v81;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,0>(v9, v9 + 2, v9 + 4, (a2 - 2));
    }

    if (v12 == 5)
    {
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,0>(v9, v9 + 2, v9 + 4, (v9 + 6));
      v70 = v9[6];
      v71 = v9[7];
      if (sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2))) > sqrtf((v71 * v71) + (v70 * v70)))
      {
        *(v9 + 3) = *(a2 - 1);
        *(a2 - 2) = v70;
        *(a2 - 1) = v71;
        v72 = v9[4];
        v73 = v9[5];
        if (sqrtf((v9[7] * v9[7]) + (v9[6] * v9[6])) > sqrtf((v73 * v73) + (v72 * v72)))
        {
          v74 = *(v9 + 3);
          *(v9 + 2) = v74;
          v9[6] = v72;
          v9[7] = v73;
          v75 = sqrtf((*(&v74 + 1) * *(&v74 + 1)) + (*&v74 * *&v74));
          v76 = v9[2];
          v77 = v9[3];
          if (v75 > sqrtf((v77 * v77) + (v76 * v76)))
          {
            *(v9 + 1) = v74;
            v9[4] = v76;
            v9[5] = v77;
            v78 = *v9;
            v79 = v9[1];
            if (v75 > sqrtf((v79 * v79) + (v78 * v78)))
            {
              *v9 = v74;
              v9[2] = v78;
              v9[3] = v79;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(v9, a2);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,MTPoint *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[2 * (v12 >> 1)];
    v14 = sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2)));
    if (v12 >= 0x81)
    {
      v15 = *v13;
      v16 = v13[1];
      v17 = sqrtf((v16 * v16) + (v15 * v15));
      v19 = *v9;
      v18 = v9[1];
      v20 = sqrtf((v18 * v18) + (v19 * v19));
      if (v17 <= v20)
      {
        if (v14 > v17)
        {
          *v13 = *(a2 - 1);
          *(a2 - 2) = v15;
          *(a2 - 1) = v16;
          v27 = *v9;
          v28 = v9[1];
          if (sqrtf((v13[1] * v13[1]) + (*v13 * *v13)) > sqrtf((v28 * v28) + (v27 * v27)))
          {
            *v9 = *v13;
            *v13 = v27;
            v13[1] = v28;
          }
        }
      }

      else
      {
        if (v14 > v17)
        {
          *v9 = *(a2 - 1);
          goto LABEL_29;
        }

        *v9 = *v13;
        *v13 = v19;
        v13[1] = v18;
        if (sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2))) > v20)
        {
          *v13 = *(a2 - 1);
LABEL_29:
          *(a2 - 2) = v19;
          *(a2 - 1) = v18;
        }
      }

      v32 = *(v13 - 2);
      v33 = *(v13 - 1);
      v31 = v13 - 2;
      v34 = sqrtf((v33 * v33) + (v32 * v32));
      v36 = v9[2];
      v35 = v9[3];
      v37 = sqrtf((v35 * v35) + (v36 * v36));
      v38 = sqrtf((*(a2 - 3) * *(a2 - 3)) + (*(a2 - 4) * *(a2 - 4)));
      if (v34 <= v37)
      {
        if (v38 > v34)
        {
          *v31 = *(a2 - 2);
          *(a2 - 4) = v32;
          *(a2 - 3) = v33;
          v39 = v9[2];
          v40 = v9[3];
          if (sqrtf((*(v13 - 1) * *(v13 - 1)) + (*(v13 - 2) * *(v13 - 2))) > sqrtf((v40 * v40) + (v39 * v39)))
          {
            *(v9 + 1) = *v31;
            *v31 = v39;
            *(v13 - 1) = v40;
          }
        }
      }

      else
      {
        if (v38 > v34)
        {
          *(v9 + 1) = *(a2 - 2);
          goto LABEL_43;
        }

        *(v9 + 1) = *v31;
        *v31 = v36;
        *(v13 - 1) = v35;
        if (sqrtf((*(a2 - 3) * *(a2 - 3)) + (*(a2 - 4) * *(a2 - 4))) > v37)
        {
          *v31 = *(a2 - 2);
LABEL_43:
          *(a2 - 4) = v36;
          *(a2 - 3) = v35;
        }
      }

      v42 = v13[2];
      v43 = v13[3];
      v41 = v13 + 2;
      v44 = sqrtf((v43 * v43) + (v42 * v42));
      v46 = v9[4];
      v45 = v9[5];
      v47 = sqrtf((v45 * v45) + (v46 * v46));
      v48 = sqrtf((*(a2 - 5) * *(a2 - 5)) + (*(a2 - 6) * *(a2 - 6)));
      if (v44 <= v47)
      {
        if (v48 > v44)
        {
          *v41 = *(a2 - 3);
          *(a2 - 6) = v42;
          *(a2 - 5) = v43;
          v49 = v9[4];
          v50 = v9[5];
          if (sqrtf((v13[3] * v13[3]) + (v13[2] * v13[2])) > sqrtf((v50 * v50) + (v49 * v49)))
          {
            *(v9 + 2) = *v41;
            *v41 = v49;
            v13[3] = v50;
          }
        }
      }

      else
      {
        if (v48 > v44)
        {
          *(v9 + 2) = *(a2 - 3);
          goto LABEL_52;
        }

        *(v9 + 2) = *v41;
        *v41 = v46;
        v13[3] = v45;
        if (sqrtf((*(a2 - 5) * *(a2 - 5)) + (*(a2 - 6) * *(a2 - 6))) > v47)
        {
          *v41 = *(a2 - 3);
LABEL_52:
          *(a2 - 6) = v46;
          *(a2 - 5) = v45;
        }
      }

      v51 = *v13;
      v52 = v13[1];
      v53 = sqrtf((v52 * v52) + (v51 * v51));
      v54 = *v31;
      v55 = *(v13 - 1);
      v56 = sqrtf((v55 * v55) + (v54 * v54));
      v57 = sqrtf((v13[3] * v13[3]) + (*v41 * *v41));
      if (v53 <= v56)
      {
        if (v57 > v53)
        {
          v58 = *v41;
          *v13 = *v41;
          *v41 = v51;
          v13[3] = v52;
          if (sqrtf((*(&v58 + 1) * *(&v58 + 1)) + (*&v58 * *&v58)) > v56)
          {
            *v31 = v58;
            v41 = v13;
            goto LABEL_61;
          }
        }
      }

      else
      {
        if (v57 > v53)
        {
          *v31 = *v41;
          goto LABEL_61;
        }

        *v31 = *v13;
        *v13 = v54;
        v13[1] = v55;
        if (v57 > v56)
        {
          *v13 = *v41;
LABEL_61:
          *v41 = v54;
          v41[1] = v55;
        }
      }

      v59 = *v9;
      *v9 = *v13;
      *v13 = v59;
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v21 = *v9;
    v22 = v9[1];
    v23 = sqrtf((v22 * v22) + (v21 * v21));
    v25 = *v13;
    v24 = v13[1];
    v26 = sqrtf((v24 * v24) + (v25 * v25));
    if (v23 > v26)
    {
      if (v14 > v23)
      {
        *v13 = *(a2 - 1);
        goto LABEL_38;
      }

      *v13 = *v9;
      *v9 = v25;
      v9[1] = v24;
      if (sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2))) > v26)
      {
        *v9 = *(a2 - 1);
LABEL_38:
        *(a2 - 2) = v25;
        *(a2 - 1) = v24;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (v14 <= v23)
    {
      goto LABEL_39;
    }

    *v9 = *(a2 - 1);
    *(a2 - 2) = v21;
    *(a2 - 1) = v22;
    v29 = *v13;
    v30 = v13[1];
    if (sqrtf((v9[1] * v9[1]) + (*v9 * *v9)) <= sqrtf((v30 * v30) + (v29 * v29)))
    {
      goto LABEL_39;
    }

    *v13 = *v9;
    *v9 = v29;
    v9[1] = v30;
    if (a5)
    {
      goto LABEL_64;
    }

LABEL_63:
    if (sqrtf((*(v9 - 1) * *(v9 - 1)) + (*(v9 - 2) * *(v9 - 2))) <= sqrtf((v9[1] * v9[1]) + (*v9 * *v9)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,MTPoint *,MTPointVelocityGreaterThan &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_64:
    v60 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,MTPoint *,MTPointVelocityGreaterThan &>(v9, a2);
    if ((v61 & 1) == 0)
    {
      goto LABEL_67;
    }

    v62 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(v9, v60);
    v9 = v60 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(v60 + 2, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v60;
      if (v62)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v62)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,false>(v8, v60, a3, -v11, a5 & 1);
      v9 = v60 + 2;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v63 = v9[2];
  v64 = v9[3];
  v65 = sqrtf((v64 * v64) + (v63 * v63));
  v67 = *v9;
  v66 = v9[1];
  v68 = sqrtf((v66 * v66) + (v67 * v67));
  v69 = sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2)));
  if (v65 <= v68)
  {
    if (v69 > v65)
    {
      *(v9 + 1) = *(a2 - 1);
      *(a2 - 2) = v63;
      *(a2 - 1) = v64;
      v82 = *v9;
      v83 = v9[1];
      if (sqrtf((v9[3] * v9[3]) + (v9[2] * v9[2])) > sqrtf((v83 * v83) + (v82 * v82)))
      {
        *v9 = *(v9 + 1);
        v9[2] = v82;
        v9[3] = v83;
      }
    }
  }

  else
  {
    if (v69 <= v65)
    {
      *v9 = *(v9 + 1);
      v9[2] = v67;
      v9[3] = v66;
      if (sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2))) <= v68)
      {
        return result;
      }

      *(v9 + 1) = *(a2 - 1);
    }

    else
    {
      *v9 = *(a2 - 1);
    }

    *(a2 - 2) = v67;
    *(a2 - 1) = v66;
  }

  return result;
}

float *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,0>(float *result, float *a2, float *a3, uint64_t a4)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = sqrtf((v4 * v4) + (v5 * v5));
  v8 = *result;
  v7 = result[1];
  v9 = sqrtf((v7 * v7) + (v8 * v8));
  v10 = a3[1];
  v11 = v10 * v10;
  v12 = sqrtf((v10 * v10) + (*a3 * *a3));
  if (v6 <= v9)
  {
    if (v12 > v6)
    {
      *a2 = *a3;
      *a3 = v5;
      a3[1] = v4;
      v13 = *result;
      v14 = result[1];
      v11 = v4 * v4;
      v10 = v4;
      if (sqrtf((a2[1] * a2[1]) + (*a2 * *a2)) > sqrtf((v14 * v14) + (v13 * v13)))
      {
        *result = *a2;
        *a2 = v13;
        a2[1] = v14;
        v10 = a3[1];
        v11 = v10 * v10;
      }
    }
  }

  else
  {
    if (v12 > v6)
    {
      *result = *a3;
LABEL_9:
      *a3 = v8;
      a3[1] = v7;
      v11 = v7 * v7;
      v10 = v7;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v8;
    a2[1] = v7;
    v10 = a3[1];
    v11 = v10 * v10;
    if (sqrtf((v10 * v10) + (*a3 * *a3)) > v9)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  v15 = *a3;
  if (sqrtf((*(a4 + 4) * *(a4 + 4)) + (*a4 * *a4)) > sqrtf(v11 + (v15 * v15)))
  {
    *a3 = *a4;
    *a4 = v15;
    *(a4 + 4) = v10;
    v16 = *a2;
    v17 = a2[1];
    if (sqrtf((a3[1] * a3[1]) + (*a3 * *a3)) > sqrtf((v17 * v17) + (v16 * v16)))
    {
      *a2 = *a3;
      *a3 = v16;
      a3[1] = v17;
      v18 = *result;
      v19 = result[1];
      if (sqrtf((a2[1] * a2[1]) + (*a2 * *a2)) > sqrtf((v19 * v19) + (v18 * v18)))
      {
        *result = *a2;
        *a2 = v18;
        a2[1] = v19;
      }
    }
  }

  return result;
}

float *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(float *result, float *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4[2];
        v6 = v4[3];
        v7 = *v4;
        v8 = v4[1];
        v4 = v2;
        v9 = sqrtf((v6 * v6) + (v5 * v5));
        if (v9 > sqrtf((v8 * v8) + (v7 * v7)))
        {
          v10 = v3;
          while (1)
          {
            *(result + v10 + 8) = *(result + v10);
            if (!v10)
            {
              break;
            }

            v11 = sqrtf((*(result + v10 - 4) * *(result + v10 - 4)) + (*(result + v10 - 8) * *(result + v10 - 8)));
            v10 -= 8;
            if (v9 <= v11)
            {
              v12 = (result + v10 + 8);
              goto LABEL_10;
            }
          }

          v12 = result;
LABEL_10:
          *v12 = v5;
          v12[1] = v6;
        }

        v2 = v4 + 2;
        v3 += 8;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

float *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(float *result, float *a2)
{
  if (result != a2)
  {
    while (result + 2 != a2)
    {
      v2 = result[2];
      v3 = result[3];
      v4 = *result;
      v5 = result[1];
      v9 = result + 2;
      result += 2;
      v6 = sqrtf((v3 * v3) + (v2 * v2));
      if (v6 > sqrtf((v5 * v5) + (v4 * v4)))
      {
        do
        {
          v7 = v9;
          v8 = *(v9 - 1);
          v9 -= 2;
          *v7 = v8;
        }

        while (v6 > sqrtf((*(v7 - 3) * *(v7 - 3)) + (*(v7 - 4) * *(v7 - 4))));
        *v9 = v2;
        v9[1] = v3;
      }
    }
  }

  return result;
}

float *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,MTPoint *,MTPointVelocityGreaterThan &>(float *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = sqrtf((v3 * v3) + (*a1 * *a1));
  if (v4 <= sqrtf((*(a2 - 4) * *(a2 - 4)) + (*(a2 - 8) * *(a2 - 8))))
  {
    v8 = a1 + 2;
    do
    {
      v5 = v8;
      if (v8 >= a2)
      {
        break;
      }

      v9 = sqrtf((v8[1] * v8[1]) + (*v8 * *v8));
      v8 += 2;
    }

    while (v4 <= v9);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = v5[2];
      v7 = v5[3];
      v5 += 2;
    }

    while (v4 <= sqrtf((v7 * v7) + (v6 * v6)));
  }

  if (v5 < a2)
  {
    do
    {
      v10 = *(a2 - 8);
      v11 = *(a2 - 4);
      a2 -= 8;
    }

    while (v4 > sqrtf((v11 * v11) + (v10 * v10)));
  }

  if (v5 < a2)
  {
    v12 = *v5;
    do
    {
      v13 = *(v5 + 1);
      *v5 = *a2;
      *a2 = v12;
      *(a2 + 4) = v13;
      do
      {
        v12 = v5[2];
        v14 = v5[3];
        v5 += 2;
      }

      while (v4 <= sqrtf((v14 * v14) + (v12 * v12)));
      do
      {
        v15 = *(a2 - 8);
        v16 = *(a2 - 4);
        a2 -= 8;
      }

      while (v4 > sqrtf((v16 * v16) + (v15 * v15)));
    }

    while (v5 < a2);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 2) = v2;
  *(v5 - 1) = v3;
  return v5;
}

float *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,MTPoint *,MTPointVelocityGreaterThan &>(float *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = sqrtf((v4 * v4) + (*a1 * *a1));
  do
  {
    v6 = a1[v2 + 2];
    v7 = sqrtf((a1[v2 + 3] * a1[v2 + 3]) + (v6 * v6));
    v2 += 2;
  }

  while (v7 > v5);
  v8 = &a1[v2];
  if (v2 == 2)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v11 = *(a2 - 8);
      v12 = *(a2 - 4);
      a2 -= 8;
    }

    while (sqrtf((v12 * v12) + (v11 * v11)) <= v5);
  }

  else
  {
    do
    {
      v9 = *(a2 - 8);
      v10 = *(a2 - 4);
      a2 -= 8;
    }

    while (sqrtf((v10 * v10) + (v9 * v9)) <= v5);
  }

  v13 = &a1[v2];
  if (v8 < a2)
  {
    v14 = a2;
    do
    {
      v15 = *(v13 + 1);
      *v13 = *v14;
      *v14 = v6;
      *(v14 + 4) = v15;
      do
      {
        v6 = v13[2];
        v16 = v13[3];
        v13 += 2;
      }

      while (sqrtf((v16 * v16) + (v6 * v6)) > v5);
      do
      {
        v17 = *(v14 - 8);
        v18 = *(v14 - 4);
        v14 -= 8;
      }

      while (sqrtf((v18 * v18) + (v17 * v17)) <= v5);
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(float *a1, float *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v18 = a1[2];
      v19 = a1[3];
      v20 = sqrtf((v19 * v19) + (v18 * v18));
      v22 = *a1;
      v21 = a1[1];
      v23 = sqrtf((v21 * v21) + (v22 * v22));
      v24 = sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2)));
      if (v20 <= v23)
      {
        if (v24 > v20)
        {
          *(a1 + 1) = *(a2 - 1);
          *(a2 - 2) = v18;
          *(a2 - 1) = v19;
          v35 = *a1;
          v36 = a1[1];
          if (sqrtf((a1[3] * a1[3]) + (a1[2] * a1[2])) > sqrtf((v36 * v36) + (v35 * v35)))
          {
            *a1 = *(a1 + 1);
            a1[2] = v35;
            a1[3] = v36;
          }
        }

        return 1;
      }

      if (v24 <= v20)
      {
        *a1 = *(a1 + 1);
        a1[2] = v22;
        a1[3] = v21;
        if (sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2))) <= v23)
        {
          return 1;
        }

        *(a1 + 1) = *(a2 - 1);
      }

      else
      {
        *a1 = *(a2 - 1);
      }

      *(a2 - 2) = v22;
      *(a2 - 1) = v21;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,0>(a1, a1 + 2, a1 + 4, (a1 + 6));
        v7 = a1[6];
        v8 = a1[7];
        if (sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2))) > sqrtf((v8 * v8) + (v7 * v7)))
        {
          *(a1 + 3) = *(a2 - 1);
          *(a2 - 2) = v7;
          *(a2 - 1) = v8;
          v9 = a1[4];
          v10 = a1[5];
          if (sqrtf((a1[7] * a1[7]) + (a1[6] * a1[6])) > sqrtf((v10 * v10) + (v9 * v9)))
          {
            v11 = *(a1 + 3);
            *(a1 + 2) = v11;
            a1[6] = v9;
            a1[7] = v10;
            v12 = sqrtf((*(&v11 + 1) * *(&v11 + 1)) + (*&v11 * *&v11));
            v13 = a1[2];
            v14 = a1[3];
            if (v12 > sqrtf((v14 * v14) + (v13 * v13)))
            {
              *(a1 + 1) = v11;
              a1[4] = v13;
              a1[5] = v14;
              v15 = *a1;
              v16 = a1[1];
              if (v12 > sqrtf((v16 * v16) + (v15 * v15)))
              {
                *a1 = v11;
                result = 1;
                a1[2] = v15;
                a1[3] = v16;
                return result;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,0>(a1, a1 + 2, a1 + 4, (a2 - 2));
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *a1;
    v6 = a1[1];
    if (sqrtf((*(a2 - 1) * *(a2 - 1)) + (*(a2 - 2) * *(a2 - 2))) > sqrtf((v6 * v6) + (v5 * v5)))
    {
      *a1 = *(a2 - 1);
      *(a2 - 2) = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_17:
  v25 = a1 + 4;
  v26 = a1 + 2;
  v27 = a1[2];
  v28 = a1[3];
  v29 = sqrtf((v28 * v28) + (v27 * v27));
  v30 = *a1;
  v31 = a1[1];
  v32 = sqrtf((v31 * v31) + (v30 * v30));
  v33 = a1 + 5;
  v34 = sqrtf((a1[5] * a1[5]) + (a1[4] * a1[4]));
  if (v29 > v32)
  {
    if (v34 <= v29)
    {
      *a1 = *(a1 + 1);
      a1[2] = v30;
      a1[3] = v31;
      if (v34 <= v32)
      {
        goto LABEL_34;
      }

      *v26 = *v25;
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    v26 = a1 + 4;
    goto LABEL_33;
  }

  if (v34 > v29)
  {
    v37 = *v25;
    *v26 = *v25;
    *v25 = v27;
    *v33 = v28;
    if (sqrtf((*(&v37 + 1) * *(&v37 + 1)) + (*&v37 * *&v37)) > v32)
    {
      *a1 = v37;
      v33 = a1 + 3;
LABEL_33:
      *v26 = v30;
      *v33 = v31;
    }
  }

LABEL_34:
  v38 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    v41 = *v38;
    v42 = v38[1];
    v43 = sqrtf((v42 * v42) + (v41 * v41));
    if (v43 > sqrtf((v25[1] * v25[1]) + (*v25 * *v25)))
    {
      v44 = v39;
      while (1)
      {
        *(a1 + v44 + 24) = *(a1 + v44 + 16);
        if (v44 == -16)
        {
          break;
        }

        v45 = sqrtf((*(a1 + v44 + 12) * *(a1 + v44 + 12)) + (*(a1 + v44 + 8) * *(a1 + v44 + 8)));
        v44 -= 8;
        if (v43 <= v45)
        {
          v46 = (a1 + v44 + 24);
          goto LABEL_42;
        }
      }

      v46 = a1;
LABEL_42:
      *v46 = v41;
      v46[1] = v42;
      if (++v40 == 8)
      {
        return v38 + 2 == a2;
      }
    }

    v25 = v38;
    v39 += 8;
    v38 += 2;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

float *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *,MTPoint *>(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(a1, a4, v8, v11);
        v11 -= 2;
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
        v13 = *v12;
        v14 = v12[1];
        if (sqrtf((v14 * v14) + (v13 * v13)) > sqrtf((a1[1] * a1[1]) + (*a1 * *a1)))
        {
          *v12 = *a1;
          *a1 = v13;
          a1[1] = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 2;
      do
      {
        v17 = *a1;
        v16 = *(a1 + 1);
        v18 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(a1, a4, v8);
        if (v15 == v18)
        {
          *v18 = v17;
          *(v18 + 1) = v16;
        }

        else
        {
          *v18 = *v15;
          *v15 = v17;
          *(v15 + 1) = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(a1, (v18 + 2), a4, ((v18 + 2) - a1) >> 3);
        }

        v15 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
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
      if (v9 < a3 && sqrtf((v8[1] * v8[1]) + (*v8 * *v8)) > sqrtf((v8[3] * v8[3]) + (v8[2] * v8[2])))
      {
        v8 += 2;
        v7 = v9;
      }

      v10 = *a4;
      v11 = a4[1];
      v12 = sqrtf((v11 * v11) + (v10 * v10));
      if (sqrtf((v8[1] * v8[1]) + (*v8 * *v8)) <= v12)
      {
        do
        {
          v13 = v8;
          *a4 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v15 = v14 + 2;
          if (v15 < a3 && sqrtf((v8[1] * v8[1]) + (*v8 * *v8)) > sqrtf((v8[3] * v8[3]) + (v8[2] * v8[2])))
          {
            v8 += 2;
            v7 = v15;
          }

          a4 = v13;
        }

        while (sqrtf((v8[1] * v8[1]) + (*v8 * *v8)) <= v12);
        *v13 = v10;
        v13[1] = v11;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[v3];
    result = v5 + 1;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v9 = *(v5 + 4);
      v8 = v5 + 2;
      if (sqrtf((*(v8 - 1) * *(v8 - 1)) + (*(v8 - 2) * *(v8 - 2))) > sqrtf((*(v8 + 1) * *(v8 + 1)) + (v9 * v9)))
      {
        result = v8;
        v3 = v7;
      }
    }

    *v4 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTPointVelocityGreaterThan &,MTPoint *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v7 = *(a2 - 8);
    v8 = *(a2 - 4);
    v6 = (a2 - 8);
    v9 = sqrtf((v8 * v8) + (v7 * v7));
    if (sqrtf((v5[1] * v5[1]) + (*v5 * *v5)) > v9)
    {
      do
      {
        v10 = v5;
        *v6 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = v10;
      }

      while (sqrtf((v5[1] * v5[1]) + (*v5 * *v5)) > v9);
      *v10 = v7;
      v10[1] = v8;
    }
  }

  return result;
}

uint64_t std::vector<MTPoint>::__init_with_size[abi:ne200100]<MTPoint*,MTPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29D391644(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MTPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTPoint>>(a1, a2);
  }

  std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
}

void *std::__split_buffer<MTPoint>::emplace_back<MTPoint const&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MTPoint>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29D391804(_Unwind_Exception *exception_object)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
}

uint64_t MTParserPath::MTParserPath(uint64_t a1, int a2, int a3, uint64_t a4)
{
  *a1 = &unk_2A2411768;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a4;
  MTForceFilter::MTForceFilter((a1 + 296));
  *(a1 + 24) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  MTForceFilter::clear((a1 + 296));
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 588) = 0;
  *(a1 + 592) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 574) = 0;
  *(a1 + 583) = 0;
  *(a1 + 480) = vneg_f32(0x3F0000003FLL);
  return a1;
}

float32x2_t MTParserPath::clear(MTParserPath *this)
{
  *(this + 24) = 0u;
  v1 = this + 24;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 40) = 0u;
  MTForceFilter::clear((this + 296));
  *(v1 + 32) = 0;
  *(v1 + 66) = 0;
  *(v1 + 141) = 0;
  *(v1 + 71) = 0;
  *(v1 + 328) = 0u;
  *(v1 + 344) = 0u;
  *(v1 + 360) = 0u;
  *(v1 + 376) = 0u;
  *(v1 + 392) = 0u;
  *(v1 + 408) = 0u;
  *(v1 + 424) = 0u;
  *(v1 + 440) = 0u;
  *(v1 + 488) = 0u;
  *(v1 + 504) = 0u;
  *(v1 + 520) = 0u;
  *(v1 + 536) = 0u;
  *(v1 + 550) = 0;
  *(v1 + 559) = 0;
  result = vneg_f32(0x3F0000003FLL);
  *(v1 + 57) = result;
  return result;
}

void MTParserPath::~MTParserPath(MTParserPath *this)
{
  *this = &unk_2A2411768;
  MTForceFilter::~MTForceFilter((this + 296));
}

{
  *this = &unk_2A2411768;
  MTForceFilter::~MTForceFilter((this + 296));
}

{
  *this = &unk_2A2411768;
  MTForceFilter::~MTForceFilter((this + 296));

  JUMPOUT(0x29ED547D0);
}

double MTParserPath::clearTimestamps(uint64_t a1, uint64_t a2)
{
  *(a2 + 48) = 0;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t MTParserPath::updateCurPrevContactsWith(MTParserPath *this, __int128 *a2, float *a3, float *a4, double a5)
{
  *(this + 152) = *(this + 56);
  *(this + 168) = *(this + 72);
  *(this + 184) = *(this + 88);
  *(this + 200) = *(this + 104);
  *(this + 120) = *(this + 24);
  *(this + 136) = *(this + 40);
  v9 = *a2;
  *(this + 40) = a2[1];
  *(this + 24) = v9;
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[3];
  *(this + 56) = a2[2];
  *(this + 104) = v11;
  *(this + 88) = v10;
  *(this + 72) = v12;
  if ((*(this + 2) - 1000) <= 0xBB7)
  {
    if (!*(this + 35))
    {
      v13 = *(this + 92);
      *(this + 388) = v13;
      *(this + 47) = v13;
    }

    v14 = *(this + 12);
    if ((v14 - 2) > 3)
    {
      if (v14 != 13 && (*(this + 586) & 1) != 0)
      {
        *(this + 12) = 14;
      }
    }

    else
    {
      *(this + 586) = 0;
    }
  }

  if ((*(this + 11) - 1) <= 2)
  {
    *(this + 356) = *(this + 92);
  }

  MTParserPath::updatePathStageTimestamps(this, a5);
  MTParserPath::updateTotalDiscountedDistance(this, v15);

  return MTParserPath::updateZonesAndEdges(this, a3, a4, a5);
}

uint64_t MTParserPath::rejectRestingThumbFromRestingHand(uint64_t this)
{
  v1 = *(this + 48);
  if ((v1 - 2) > 3)
  {
    if (v1 != 13 && (*(this + 586) & 1) != 0)
    {
      *(this + 48) = 14;
    }
  }

  else
  {
    *(this + 586) = 0;
  }

  return this;
}

uint64_t MTParserPath::updatePathStageTimestamps(uint64_t this, double a2)
{
  v2 = *(this + 44);
  if (v2 == 1)
  {
    *(this + 216) = a2;
LABEL_14:
    *(this + 224) = a2;
    goto LABEL_15;
  }

  v3 = *(this + 140);
  if (v3 == 7 || v3 == 0)
  {
    *(this + 216) = a2;
  }

  if (v3)
  {
    v5 = v2 < v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_14;
  }

LABEL_15:
  v6 = *(this + 140);
  if (v2 == 2)
  {
    if (v6 == 2)
    {
      return this;
    }

    v7 = 240;
    goto LABEL_30;
  }

  if (v6 == 2)
  {
    *(this + 248) = a2;
  }

  v8 = v6 - 6;
  if ((v2 - 3) <= 2 && v8 <= 0xFFFFFFFC)
  {
    *(this + 232) = a2;
  }

  if (v2 >= 5)
  {
    if (*(this + 232) >= *(this + 256))
    {
      *(this + 256) = a2;
    }

    if (v2 == 7)
    {
      v7 = 264;
LABEL_30:
      *(this + v7) = a2;
    }
  }

  return this;
}

uint64_t MTParserPath::updateTotalDiscountedDistance(uint64_t this, double a2)
{
  if ((*(this + 8) - 1000) <= 0xBB7)
  {
    if ((*(this + 140) - 3) > 1 || (*(this + 44) - 3) > 1)
    {
      *(this + 396) = 0;
    }

    else
    {
      v2 = vsub_f32(*(this + 92), *(this + 188));
      v3 = sqrtf(vaddv_f32(vmul_f32(v2, v2)));
      if (v3 > 0.14)
      {
        *(this + 396) = (v3 + -0.14) + *(this + 396);
      }
    }
  }

  return this;
}

uint64_t MTParserPath::updateZonesAndEdges(uint64_t a1, float *a2, float *a3, double a4)
{
  v8 = MTSurfaceDimensions::convertSurfaceFractionToMillimeters(a2, 0, 1.0, 1.0);
  v10 = v9;
  v11 = MTSurfaceDimensions::convertSurfaceFractionToMillimeters(a2, 0, *(a1 + 56), *(a1 + 60));
  v13 = v12;
  result = MTParserPath::computeZonesAndEdgesMask(v11, v12, v8, v10, v14, a3);
  *(a1 + 280) = result;
  if (*(a1 + 256) == a4)
  {
    *(a1 + 288) = result;
  }

  v16 = *(a1 + 44);
  if ((v16 - 1) <= 2)
  {
    if (v16 == 1 || (*(a1 + 140) - 1) >= 6)
    {
      *(a1 + 284) = result;
    }

    else
    {
      *(a1 + 284) |= result;
      v17 = v11 + (v11 - MTSurfaceDimensions::convertPixelsToMillimeters(a2, *(a1 + 152), *(a1 + 156))) * -2.5;
      v19 = v13 + (v13 - v18) * -2.5;
      result = MTParserPath::computeZonesAndEdgesMask(v17, v19, v8, v10, v20, a3);
      *(a1 + 284) |= result;
    }
  }

  return result;
}

uint64_t MTParserPath::computeZonesAndEdgesMask(float a1, float a2, float a3, float a4, uint64_t a5, float *a6)
{
  v8 = a6[1];
  v35 = a6[2];
  v36 = a6[3];
  v38 = a6[4];
  v39 = a6[7];
  v37 = a6[5];
  v40 = a6[6];
  v34 = a4 - a2;
  v9 = (a4 - a2);
  v10 = a2;
  v11 = a3 - a1;
  v12 = (a3 - a1);
  v33 = hypot(a2, a1);
  v13 = hypot(v10, v12);
  v14 = hypot(v9, a1);
  v15 = hypot(v9, v12);
  v16 = v33 > v8;
  v17 = v13 > v8;
  if (a2 > v35)
  {
    v16 = 1;
    v17 = 1;
  }

  v18 = v14 > v8;
  v19 = v15 > v8;
  if (v34 > v35)
  {
    v18 = 1;
    v19 = 1;
  }

  if (v11 > v36)
  {
    v17 = 1;
    v19 = 1;
  }

  if (a1 > v36)
  {
    v16 = 1;
  }

  v20 = !v16;
  if (a1 > v36)
  {
    v18 = 1;
  }

  if (!v17)
  {
    v20 |= 2u;
  }

  if (!v18)
  {
    v20 |= 4u;
  }

  if (!v19)
  {
    v20 |= 8u;
  }

  if (a1 < v37)
  {
    v20 |= 0x10u;
  }

  if (v11 < v37)
  {
    v20 |= 0x20u;
  }

  if (a2 < v38)
  {
    v20 |= 0x40u;
  }

  if (v34 < v38)
  {
    v20 |= 0x80u;
  }

  if (a1 < v39)
  {
    v20 |= 0x1000u;
  }

  if (v11 < v39)
  {
    v20 |= 0x2000u;
  }

  if (a2 < v40)
  {
    v20 |= 0x4000u;
  }

  if (v34 < v40)
  {
    v20 |= 0x8000u;
  }

  if (v33 < v8 && (v20 & 0x50) != 0)
  {
    v20 |= 0x100u;
  }

  if (v13 < v8 && (v20 & 0x60) != 0)
  {
    v20 |= 0x200u;
  }

  if (v14 < v8 && (v20 & 0x90) != 0)
  {
    v20 |= 0x400u;
  }

  if (v15 < v8 && (v20 & 0xA0) != 0)
  {
    v20 |= 0x800u;
  }

  v25 = a4 / 3.0;
  v26 = v11 <= (a3 / 3.0) || a1 <= (a3 / 3.0);
  v27 = v20 | 0x20000;
  if (v26)
  {
    v27 = v20;
  }

  if (v34 > v25 && a2 > v25)
  {
    v20 = v27;
  }

  v29 = a4 * 0.25;
  v30 = v11 <= (a3 * 0.25) || a1 <= (a3 * 0.25);
  v31 = v20 | 0x40000;
  if (v30)
  {
    v31 = v20;
  }

  if (a2 <= v29)
  {
    v31 = v20;
  }

  if (v34 > v29)
  {
    return v31;
  }

  else
  {
    return v20;
  }
}

float32x2_t MTParserPath::getAverageVelocity_mm_s(MTParserPath *this)
{
  v1 = *(this + 29) * *(this + 29);
  v2 = v1 * 0.5;
  if (v1 > 1.0)
  {
    v2 = 0.5;
  }

  v3 = *(this + 53) * *(this + 53);
  if (v3 <= 1.0)
  {
    v4 = v3 * 0.5;
  }

  else
  {
    v4 = 0.5;
  }

  return vmla_n_f32(vmul_n_f32(*(this + 196), v4), *(this + 100), v2);
}

float MTParserPath::updateHysteresisDragCenter_mm(float *a1, uint64_t a2)
{
  v2 = a1[89];
  v3 = a1[90];
  v4 = a1[23];
  v5 = *(a2 + 56);
  if ((v4 - v2) <= v5)
  {
    if ((v4 - v2) >= -v5)
    {
      v10 = a1[89];
      goto LABEL_9;
    }

    v6 = v4 + v5;
    v7 = -1.0;
  }

  else
  {
    v6 = v4 - v5;
    v7 = 1.0;
  }

  v8 = v6;
  v9 = -0.0;
  if (a1[47] == v8)
  {
    v9 = v7;
  }

  v10 = v9 + v8;
  a1[89] = v10;
  v5 = *(a2 + 56);
LABEL_9:
  v11 = a1[24];
  if ((v11 - v3) <= v5)
  {
    v14 = v3;
    if ((v11 - v3) >= -v5)
    {
      return sqrtf(((v3 - v14) * (v3 - v14)) + ((v2 - v10) * (v2 - v10)));
    }

    v12 = v11 + v5;
    v13 = -1.0;
  }

  else
  {
    v12 = v11 - v5;
    v13 = 1.0;
  }

  v15 = v12;
  if (a1[48] != v15)
  {
    v13 = -0.0;
  }

  v14 = v13 + v15;
  a1[90] = v13 + v15;
  return sqrtf(((v3 - v14) * (v3 - v14)) + ((v2 - v10) * (v2 - v10)));
}

uint64_t MTParserPath::applyMinimumIncrementHysteresis(MTParserPath *this, float a2, float *a3, float a4, float a5)
{
  v5 = a2 - *a3;
  if (v5 <= a5)
  {
    if (v5 >= -a5)
    {
      return 0;
    }

    v6 = a2 + a5;
    v7 = -1.0;
  }

  else
  {
    v6 = a2 - a5;
    v7 = 1.0;
  }

  v8 = v6;
  if (v8 != a4)
  {
    v7 = -0.0;
  }

  *a3 = v7 + v8;
  return 1;
}

float MTParserPath::getQuantizedMinorRadius_mm(MTParserPath *this)
{
  v1 = 548;
  if (*(this + 141) == 0.0)
  {
    v1 = 88;
  }

  return *(this + v1);
}

float MTParserPath::getQuantizedMajorRadius_mm(MTParserPath *this)
{
  v1 = 552;
  if (*(this + 141) == 0.0)
  {
    v1 = 84;
  }

  return *(this + v1);
}

BOOL MTParserPath::isFingerOrRestingContact(MTParserPath *this)
{
  v1 = 48;
  if (*(this + 11) == 7)
  {
    v1 = 144;
  }

  return (*(this + v1) - 1) < 5;
}

BOOL MTParserPath::isThumbAlongEdgeContact(MTParserPath *this)
{
  v1 = 48;
  if (*(this + 11) == 7)
  {
    v1 = 144;
  }

  return *(this + v1) == 14;
}

BOOL MTParserPath::isThumbContact(MTParserPath *this)
{
  v1 = 48;
  if (*(this + 11) == 7)
  {
    v1 = 144;
  }

  return *(this + v1) == 1;
}

BOOL MTParserPath::isFingerContact(MTParserPath *this)
{
  if (*(this + 2) - 1000) <= 0xBB7 && (*(this + 581))
  {
    return 0;
  }

  v2 = 48;
  if (*(this + 11) == 7)
  {
    v2 = 144;
  }

  return (*(this + v2) - 1) < 5;
}

BOOL MTParserPath::isPalmContact(MTParserPath *this)
{
  v1 = 48;
  if (*(this + 11) == 7)
  {
    v1 = 144;
  }

  return (*(this + v1) - 6) < 6;
}

BOOL MTParserPath::isPalmHeelContact(MTParserPath *this)
{
  v1 = 48;
  if (*(this + 11) == 7)
  {
    v1 = 144;
  }

  return (*(this + v1) & 0xFFFFFFFE) == 6;
}

BOOL MTParserPath::isEdgeContact(MTParserPath *this)
{
  v1 = 48;
  if (*(this + 11) == 7)
  {
    v1 = 144;
  }

  return (*(this + v1) - 12) < 3;
}

BOOL MTParserPath::isEdgeContactTyping(MTParserPath *this)
{
  v1 = 48;
  if (*(this + 11) == 7)
  {
    v1 = 144;
  }

  return *(this + v1) == 13;
}

BOOL MTParserPath::isUnidentifiedContact(MTParserPath *this)
{
  v1 = 48;
  if (*(this + 11) == 7)
  {
    v1 = 144;
  }

  return *(this + v1) == 0;
}

uint64_t MTParserPath::isValidEdgeStraddleClick(MTParserPath *this)
{
  v1 = *(this + 70);
  v2 = (v1 & 0x3000) == 0;
  if ((v1 & 0xC000) != 0)
  {
    v2 = 1;
  }

  v3 = 48;
  if (*(this + 11) == 7)
  {
    v3 = 144;
  }

  v4 = *(this + v3);
  if (v4 == 13)
  {
    v5 = (v1 >> 14) & 1;
    return v2 & v5;
  }

  if ((v4 - 12) <= 2)
  {
    v5 = 1;
    return v2 & v5;
  }

  return 0;
}

uint64_t MTParserPath::isValidClickSource(MTParserPath *this)
{
  v1 = *(this + 11);
  v2 = 48;
  if (v1 == 7)
  {
    v2 = 144;
  }

  v3 = *(this + v2);
  if ((v3 - 1) < 5 || v3 == 14)
  {
    return (v1 - 3) < 2;
  }

  result = MTParserPath::isValidEdgeStraddleClick(this);
  if (result)
  {
    return (v1 - 3) < 2;
  }

  return result;
}

BOOL MTParserPath::fingerLiftoffNearEdge(float32x2_t *this, const MTSurfaceDimensions *a2, double a3)
{
  if ((this[5].i32[1] - 3) < 2 || (this[17].i32[1] - 3) > 1 || (this[1].i32[0] - 1000) <= 0xBB7 && (this[72].i8[6] & 1) != 0 || (this[18].i32[0] - 1) > 4)
  {
    return 0;
  }

  v3 = (this[67].f32[0] * 3.0) * a3 + 1.2;
  v4 = vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(this[19]), vcvtq_f64_f32(this[20]), a3));
  return MTSurfaceDimensions::minDistanceToEdge_mm(a2, 1, 1, v4.f32[0], v4.f32[1]) < v3;
}

uint64_t MTParserPath::flushLiftoffAt(MTParserPath *this, double a2)
{
  *(this + 152) = *(this + 56);
  *(this + 168) = *(this + 72);
  *(this + 184) = *(this + 88);
  *(this + 200) = *(this + 104);
  *(this + 120) = *(this + 24);
  *(this + 136) = *(this + 40);
  *(this + 4) = a2;
  *(this + 11) = 7;
  *(this + 14) = 0;
  *(this + 54) = 0;
  *(this + 9) = 0;
  MTParserPath::updatePathStageTimestamps(this, a2);
  MTParserPath::updateTotalDiscountedDistance(this, v3);

  return MTParserPath::constructPathChangeEventMask(this);
}

uint64_t MTParserPath::constructPathChangeEventMask(MTParserPath *this)
{
  v2 = *(this + 18);
  if (v2 > 0.0)
  {
    v3 = *(this + 11);
    if (v3 == 1)
    {
      goto LABEL_13;
    }

    if (*(this + 42) == 0.0)
    {
      goto LABEL_7;
    }
  }

  if (v2 == 0.0 && (*(this + 11) == 7 || *(this + 42) > 0.0))
  {
LABEL_7:
    v3 = 1;
  }

  else
  {
    v3 = *(this + 12);
    if (v3)
    {
      if (v3 == *(this + 36) && *(this + 13) == *(this + 37))
      {
        v3 = 0;
      }

      else
      {
        v3 = 32;
      }
    }
  }

LABEL_13:
  v4 = *(this + 54);
  v5 = v3 & 0xFFFFD7FF | ((*(this + 54) & 1) << 11) & 0xDFFF | (((v4 >> 1) & 1) << 13);
  if ((v4 & 0x100) != 0)
  {
    v6 = 134479872;
  }

  else
  {
    v6 = 0x40000;
  }

  v7 = v6 & 0xF8FFFFFF | ((((v4 & 0x400) >> 10) & 1) << 25) & 0xFAFFFFFF | ((((v4 & 0x200) >> 9) & 1) << 26) | ((((v4 & 0x800) >> 11) & 1) << 24) | v5;
  if ((v4 & 4) != 0)
  {
    v5 = v7;
  }

  v8 = v5 | (v4 << 8) & 0xC000;
  v9 = *(this + 11);
  if (v9 < 3)
  {
    if (v9 == 2 && *(this + 35) == 4)
    {
      v8 |= 2u;
    }
  }

  else
  {
    v10 = *(this + 35);
    if (v10 < 3)
    {
      v8 |= 2u;
      if ((v9 - 3) > 1)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if (v9 < 5)
    {
LABEL_30:
      if (v10 > 4)
      {
        v8 |= 2u;
      }

      goto LABEL_32;
    }

    if (v10 < 5)
    {
      v8 |= 2u;
    }
  }

LABEL_32:
  if (((*(this + 368) & 1) != 0 || *(this + 369) == 1) && (*(this + 102) != *(this + 100) || *(this + 103) != *(this + 101)))
  {
    v8 |= 4u;
    *(this + 34) = *(this + 4);
  }

  if (*(this + 371) == 1 && *(this + 19) != *(this + 43))
  {
    v8 |= 0x40u;
  }

  if ((*(this + 2) - 1000) <= 0xBB7 && *(this + 581))
  {
    v8 |= 0x200u;
  }

  FlagsEventMaskBits = MTParserPath::generateFlagsEventMaskBits(this, this + 24);
  v12 = FlagsEventMaskBits;
  if (FlagsEventMaskBits == MTParserPath::generateFlagsEventMaskBits(FlagsEventMaskBits, this + 120))
  {
    result = v12 | v8;
  }

  else
  {
    result = v12 | v8 | 0x40u;
  }

  *(this + 91) = result;
  return result;
}

void MTParserPath::detectSustainedHoverAtEdge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MTSurfaceDimensions::convertMillimetersToSurfaceFraction(a3, 4.0, 4.0);
  v6 = 248;
  if (*(a1 + 44) == 2)
  {
    v6 = 32;
  }

  v7 = *(a1 + v6);
  v8 = *(a1 + 56);
  v9 = *(a1 + 84);
  v10 = *(a2 + 40);
  v11 = v9 > v10 && ((v9 - v10) / (*(a2 + 44) - v10)) > 0.5;
  v12 = v7 - *(a1 + 240);
  v13 = v8;
  v14 = fabs(v8);
  v15 = fabs(v13 + -1.0);
  if (v14 < v15)
  {
    v15 = v14;
  }

  v16 = v15;
  v18 = v12 > 2.0 && v5 > v16;
  *(a1 + 580) |= v18 && v11;
}

void MTParserPath::computeDebounceTimeInstability(uint64_t a1, uint64_t a2, double a3)
{
  v5 = a3;
  if (v5 <= 0.0)
  {
    v8 = 1.0;
    v7 = 0.2;
  }

  else
  {
    v6 = *(a2 + 84);
    v7 = 0.0;
    v8 = 0.0;
    if (v6 > v5)
    {
      v8 = (v6 - v5) / v6;
    }

    v9 = *(a2 + 88);
    if (v9 > v5)
    {
      v7 = ((v9 - v5) / v9) * 0.2;
    }
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    if (MTSLGLogger::isSLGEnabled(v10))
    {
      v11 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::computeDebounceTimeInstability] time_in_range = %.2f early_strong_debounce = %.2f late_weak_debounce = %.2f", *&a3, v8, v7);
      MTSLGLogger::logString(*(a1 + 16), v11);
      CFRelease(v11);
    }
  }
}

float MTParserPath::computeZSignalInstability(uint64_t a1, uint64_t a2, float *a3, int a4, double a5)
{
  v10 = *(a1 + 72);
  v11 = *(a1 + 168);
  if (v10 <= v11)
  {
    v12 = *(a1 + 168);
  }

  else
  {
    v12 = *(a1 + 72);
  }

  v13 = *(a1 + 16);
  if (v13 && MTSLGLogger::isSLGEnabled(v13))
  {
    v14 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::computeZSignalInstability] cur_proximityZsignal_total = %.2f prev_proximityZsignal_total = %.2f max_denom_zarea = %.2f", v10, v11, v12);
    MTSLGLogger::logString(*(a1 + 16), v14);
    CFRelease(v14);
  }

  v15 = 1.0;
  if (v12 > 0.0)
  {
    v16 = v10 - v11;
    v17 = fabsf((v16 * 100.0) / v12);
    if (a4)
    {
      v18 = a3[4];
    }

    else
    {
      v18 = 1.0;
    }

    v19 = v18 * a3[2];
    v20 = 0.0;
    if (v17 > v19)
    {
      v21 = v18 * a3[3];
      v20 = 1.0;
      if (v17 < v21)
      {
        v20 = ((v17 - v19) / (v21 - v19));
      }
    }

    v22 = pow(v20, 1.5);
    v23 = *(a1 + 16);
    if (v23 && MTSLGLogger::isSLGEnabled(v23))
    {
      v24 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::computeZSignalInstability] delta_zarea = %.2f percent_delta_zarea = %.2f slid_stabilization_factor = %.2f linear_zinstability = %.2f squared_zinstability = %.2f", v16, v17, v18, *&v20, v22);
      MTSLGLogger::logString(*(a1 + 16), v24);
      CFRelease(v24);
    }

    if (a4)
    {
      if (v10 < *(a1 + 572))
      {
        v25 = *(a1 + 16);
        v22 = 0.0;
        if (v25)
        {
          if (MTSLGLogger::isSLGEnabled(v25))
          {
            v26 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::computeZSignalInstability] already sliding but current ZArea %.2f is below long term average %.2f SET squared_zinstability = 0", v10, *(a1 + 572));
            MTSLGLogger::logString(*(a1 + 16), v26);
            CFRelease(v26);
          }
        }
      }
    }

    v27 = a5;
    v28 = 0.0;
    if (v27 < 0.5)
    {
      v28 = (0.5 - v27) + (0.5 - v27);
    }

    if (v27 > 0.0)
    {
      v29 = v28;
    }

    else
    {
      v29 = 1.0;
    }

    v30 = ((a3[7] + -1.0) * v29) + 1.0;
    v31 = vabd_f32(*(a1 + 84), *(a1 + 180));
    v32 = v31.f32[1];
    v66 = v31.f32[0];
    if (v31.f32[0] <= v31.f32[1])
    {
      v31.f32[0] = v31.f32[1];
    }

    v33 = v30 * a3[5];
    v34 = 0.0;
    if (v31.f32[0] > v33)
    {
      v34 = ((v31.f32[0] - v33) / ((v30 * a3[6]) - v33));
    }

    v35 = pow(v34, 1.5);
    v36 = *(a1 + 568);
    v37 = 0.25;
    if (v36 >= v35)
    {
      if (v10 < *(a1 + 572))
      {
        v37 = 0.5;
      }

      else
      {
        v37 = 0.75;
      }
    }

    v38 = pow(v37, (*(a2 + 8) - *(a2 + 16)) / 0.00800000038);
    *(a1 + 568) = ((1.0 - v38) * v35) + (v38 * v36);
    v39 = *(a1 + 16);
    if (v39 && MTSLGLogger::isSLGEnabled(v39))
    {
      v40 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::computeZSignalInstability] time_stabilization_factor = %.2f delta_major_radius_mm = %.2f delta_minor_radius_mm = %.2f radius_instability = %.2f squared_radius_instability = %.2f radius_instability_alpha = %.2f", v30, v66, v32, *&v34, v35, *&v37);
      MTSLGLogger::logString(*(a1 + 16), v40);
      CFRelease(v40);
    }

    v41 = *(a1 + 84);
    v42 = a3[10];
    v43 = 0.0;
    v44 = 0.0;
    if (v41 > v42)
    {
      v44 = (v41 - v42) / (a3[11] - v42);
    }

    v45 = *(a1 + 88);
    v46 = a3[8];
    if (v45 > v46)
    {
      v43 = (v45 - v46) / (a3[9] - v46);
    }

    v47 = *(a1 + 568);
    MTContact_getEllipseEccentricity();
    v49 = a3[12];
    v50 = 0.0;
    if (v48 > v49)
    {
      v50 = (v48 - v49) / (a3[13] - v49);
    }

    v51 = *(a1 + 16);
    if (v51 && MTSLGLogger::isSLGEnabled(v51))
    {
      v52 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::computeZSignalInstability] major_radius_too_big = %.2f minor_radius_too_big = %.2f eccentricity_too_big = %.2f", v44, v43, v50);
      MTSLGLogger::logString(*(a1 + 16), v52);
      CFRelease(v52);
    }

    v53 = *(a1 + 576);
    v54 = a3[9];
    v55 = 0.0;
    if (v53 > v54)
    {
      v55 = (v53 - v54) / ((a3[11] + 0.5) - v54);
    }

    if (v47 <= v50)
    {
      v56 = v50;
    }

    else
    {
      v56 = v47;
    }

    if (v43 <= v44)
    {
      v57 = v44;
    }

    else
    {
      v57 = v43;
    }

    if (v56 <= v57)
    {
      v58 = v57;
    }

    else
    {
      v58 = v56;
    }

    v59 = *(a1 + 16);
    if (v59)
    {
      if (MTSLGLogger::isSLGEnabled(v59))
      {
        v60 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::computeZSignalInstability] ellipse_instability = %.2f", v58);
        MTSLGLogger::logString(*(a1 + 16), v60);
        CFRelease(v60);
      }

      v61 = *(a1 + 16);
      if (v58 <= v55)
      {
        v58 = v55;
      }

      if (v61)
      {
        if (MTSLGLogger::isSLGEnabled(v61))
        {
          v62 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::computeZSignalInstability K39] ellipse_instability = %.2f", v58);
          MTSLGLogger::logString(*(a1 + 16), v62);
          CFRelease(v62);
        }

        v63 = *(a1 + 16);
        if (v22 <= v58)
        {
          v15 = v58;
        }

        else
        {
          v15 = v22;
        }

        if (v63 && MTSLGLogger::isSLGEnabled(v63))
        {
          v64 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::computeZSignalInstability] shape_instability = %.2f", v15);
          MTSLGLogger::logString(*(a1 + 16), v64);
          CFRelease(v64);
        }

        return v15;
      }
    }

    else if (v58 <= v55)
    {
      v58 = v55;
    }

    if (v22 <= v58)
    {
      return v58;
    }

    else
    {
      return v22;
    }
  }

  return v15;
}

void MTParserPath::bypassUpToHysteresisOfMotion(MTParserPath *this, float a2, float *a3, float a4)
{
  v4 = *a3;
  v5 = a2 - *a3;
  if (v5 <= a4)
  {
    if (v5 < -a4)
    {
      a2 = v4 - a4;
    }
  }

  else
  {
    a2 = v4 + a4;
  }

  *a3 = a2;
}

void MTParserPath::pullHysteresisCenterHidingUnstablePixelDeltasXY(float a1, float a2, float a3, float a4, uint64_t a5, float *a6, float *a7)
{
  v7 = a6[1];
  v8 = (v7 * a3) * *a6;
  v9 = (v7 * a4) * *a6;
  v10 = a7[1];
  v11 = a1 - *a7;
  if (v11 < -v8)
  {
    a1 = *a7 - v8;
  }

  if (v11 > v8)
  {
    a1 = *a7 + v8;
  }

  *a7 = a1;
  if ((a2 - v10) <= v9)
  {
    if ((a2 - v10) < -v9)
    {
      a2 = v10 - v9;
    }
  }

  else
  {
    a2 = v9 + v10;
  }

  a7[1] = a2;
}

void MTParserPath::pullHysteresisCenterCancelingEllipseTipMotion(float *a1, uint64_t a2, float *a3, MTSurfaceDimensions *this, float a5, int8x16_t a6, int8x16_t a7, float a8, int8x16_t a9, float a10)
{
  v15 = *a3;
  *a7.i32 = *a7.i32 - *a9.i32;
  *v10.i32 = a8 - a10;
  if (*(a2 + 43) == 1)
  {
    *a7.i32 = *a7.i32 + a1[118];
    *v10.i32 = *v10.i32 + a1[119];
  }

  v16 = a3[1];
  *a9.i32 = a5 - v15;
  v17 = *(a2 + 40);
  v18 = fabsf(*a7.i32);
  if (v17 != 1 || (*a9.i32 * *a7.i32) < 0.0)
  {
    if (*a9.i32 <= v18)
    {
      if (*a9.i32 >= -v18)
      {
        *a3 = a5;
        *a9.i32 = v18 - fabsf(*a9.i32);
        v20.i64[0] = 0x8000000080000000;
        v20.i64[1] = 0x8000000080000000;
        a9.i32[0] = vbslq_s8(v20, a9, a7).u32[0];
        goto LABEL_11;
      }

      v19 = v15 - v18;
    }

    else
    {
      v19 = v15 + v18;
    }

    *a3 = v19;
    a9.i32[0] = 0;
LABEL_11:
    a1[118] = *a9.i32;
  }

  v21 = *a6.i32 - v16;
  v22 = *(a2 + 41);
  v23 = fabsf(*v10.i32);
  if (v22 == 1 && (v21 * *v10.i32) >= 0.0)
  {
    if (v21 != 0.0)
    {
      v24 = *(a2 + 36);
      if (v24 >= (*v10.i32 / v21))
      {
        v24 = *v10.i32 / v21;
      }

      a3[1] = v16 - (v21 * v24);
    }
  }

  else
  {
    if (v21 <= v23)
    {
      if (v21 >= -v23)
      {
        a3[1] = *a6.i32;
        *a6.i32 = v23 - fabsf(v21);
        v26.i64[0] = 0x8000000080000000;
        v26.i64[1] = 0x8000000080000000;
        *(a1 + 119) = vbslq_s8(v26, a6, v10).u32[0];
        goto LABEL_24;
      }

      v25 = v16 - v23;
    }

    else
    {
      v25 = v16 + v23;
    }

    a3[1] = v25;
    a1[119] = 0.0;
  }

LABEL_24:
  v27 = a1[24];
  v28 = a1[98];
  if (!v17 || (*a7.i32 * (a1[23] - a1[97])) < 0.0)
  {
    v38 = v10.i32[0];
    v29 = MTSurfaceDimensions::convertPixelDeltaToMillimeters(this, v18, 0);
    v10.i32[0] = v38;
    v30 = a1[23];
    v31 = a1[97];
    v32 = v30 - v31;
    if ((v30 - v31) < -v29)
    {
      v30 = v31 - v29;
    }

    v33 = v29 + v31;
    if (v32 > v29)
    {
      v34 = v33;
    }

    else
    {
      v34 = v30;
    }

    a1[97] = v34;
    LOBYTE(v22) = *(a2 + 41);
  }

  if ((v22 & 1) == 0 || (*v10.i32 * (v27 - v28)) < 0.0)
  {
    v35 = MTSurfaceDimensions::convertPixelDeltaToMillimeters(this, v23, 1);
    v36 = a1[24];
    v37 = a1[98];
    if ((v36 - v37) <= v35)
    {
      if ((v36 - v37) < -v35)
      {
        v36 = v37 - v35;
      }
    }

    else
    {
      v36 = v35 + v37;
    }

    a1[98] = v36;
  }
}

float MTParserPath::pullHysteresisCenterCancelingEllipseTipMotionFromPressure(uint64_t a1, double a2, float a3, double a4, float a5, double a6, float a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a9 + 4);
  v10 = a3 - v9;
  v11 = vabds_f32(a5, a7);
  if ((a5 - a7) < 0.0 && v10 > 0.0 || (a5 - a7) > 0.0 && v10 < 0.0)
  {
    if (v11 <= *(a1 + 524))
    {
      v11 = *(a1 + 524);
    }

    if (v10 <= v11)
    {
      if (v10 >= -v11)
      {
        *(a9 + 4) = a3;
        goto LABEL_13;
      }

      v12 = -2.0;
    }

    else
    {
      v12 = 2.0;
    }

    *(a9 + 4) = v9 + (v11 * v12);
    MTParserPath::pullHysteresisCenterCancelingEllipseTipMotionFromPressure(MTHMFingerTipOffsetParameters const&,MTPoint,MTPoint&,MTPoint,MTPoint,MTSurfaceDimensions)::alpha = 1065353216;
  }

LABEL_13:
  result = (v11 * *&MTParserPath::pullHysteresisCenterCancelingEllipseTipMotionFromPressure(MTHMFingerTipOffsetParameters const&,MTPoint,MTPoint&,MTPoint,MTPoint,MTSurfaceDimensions)::alpha) + (1.0 - *&MTParserPath::pullHysteresisCenterCancelingEllipseTipMotionFromPressure(MTHMFingerTipOffsetParameters const&,MTPoint,MTPoint&,MTPoint,MTPoint,MTSurfaceDimensions)::alpha) * *(a1 + 524);
  *(a1 + 524) = result;
  return result;
}

uint64_t MTParserPath::applyAbsolutePixelHysteresis(float a1, float a2, float a3, float a4, float a5, uint64_t a6, float *a7)
{
  v7 = a1 - *a7;
  v8 = -a5;
  if (v7 <= a5)
  {
    if (v7 >= v8)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v9 = a1 + a5;
    v10 = -1.0;
  }

  else
  {
    v9 = a1 - a5;
    v10 = 1.0;
  }

  v11 = v9;
  if (a3 != v11)
  {
    v10 = -0.0;
  }

  *a7 = v10 + v11;
  v12 = 1;
LABEL_9:
  v13 = a2 - a7[1];
  if (v13 <= a5)
  {
    if (v13 >= v8)
    {
      v17 = 0;
      return v12 | v17;
    }

    v14 = a2 + a5;
    v15 = -1.0;
  }

  else
  {
    v14 = a2 - a5;
    v15 = 1.0;
  }

  v16 = v14;
  if (a4 != v16)
  {
    v15 = -0.0;
  }

  a7[1] = v15 + v16;
  v17 = 1;
  return v12 | v17;
}

uint64_t MTParserPath::applyAbsoluteForceHysteresis(float a1, float a2, uint64_t a3, float *a4, float *a5)
{
  v5 = a5[30];
  v6 = 0.0;
  if (v5 < a1)
  {
    v7 = a5[31];
    v6 = 1.0;
    if (v7 > a1)
    {
      v6 = (a1 - v5) / (v7 - v5);
    }
  }

  v8 = a5[28] + ((a5[29] - a5[28]) * v6);
  v9 = a1 - *a4;
  if (v9 <= v8)
  {
    if (v9 >= -v8)
    {
      return 0;
    }

    v10 = v8 + a1;
    v11 = -1.0;
  }

  else
  {
    v10 = a1 - v8;
    v11 = 1.0;
  }

  v12 = v10;
  if (v12 != a2)
  {
    v11 = -0.0;
  }

  *a4 = v11 + v12;
  return 1;
}

void MTParserPath::updateAngularHysteresisCenter(MTParserPath *this, float *a2, float a3, float a4)
{
  if (a4 >= 0.0)
  {
    v6 = a4;
    v7 = a3;
    v8 = fmod(a3 - *this + 3.14159265, 6.28318531);
    if (v8 < 0.0)
    {
      v8 = v8 + 6.28318531;
    }

    v9 = v8 + -3.14159265;
    if (v9 <= a4)
    {
      if (v9 >= -a4)
      {
        return;
      }

      v10 = v7 + v6;
    }

    else
    {
      v10 = v7 - v6;
    }

    v11 = fmod(v10 + 3.14159265, 6.28318531);
    if (v11 < 0.0)
    {
      v11 = v11 + 6.28318531;
    }

    a3 = v11 + -3.14159265;
  }

  *this = a3;
}

float32_t MTParserPath::weakenDampedVelocity(float32x2_t *this, float a2)
{
  this[66] = vmul_n_f32(this[66], a2);
  result = this[67].f32[0] * a2;
  this[67].f32[0] = result;
  return result;
}

void MTParserPath::updateDampedVelocity(uint64_t a1, uint64_t a2, uint64_t a3, float a4, double a5, double a6, double a7, double a8, int32x2_t a9)
{
  v10 = *(a1 + 508);
  v11 = *(a3 + 72);
  v12 = *(a2 + 8) - *(a2 + 16);
  v13.i32[1] = 1067030937;
  if (v12 > 0.025 || *(a3 + 101) == 1 && (*(a1 + 44) - 1) <= 2)
  {
    v14 = vmul_f32(*(a1 + 528), 0);
  }

  else
  {
    v13.i32[0] = 0;
    a9.i32[0] = *(a2 + 320);
    v14 = vbsl_s8(vdup_lane_s32(vceq_s32(a9, v13), 0), *(a1 + 528), vmul_f32(*(a1 + 528), 0x3F0000003F000000));
  }

  v15 = v10 * a4;
  v16 = v15 - v11;
  v17 = v15 < v11;
  v18 = 0.0;
  if (v17)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v16;
  }

  v20 = v19 / v10;
  if (v10 > 0.0)
  {
    v18 = v20;
  }

  v23 = v18;
  v21 = exp2(v12 / -0.00800000038);
  v22 = vmla_n_f32(vmul_n_f32(vmul_n_f32(*(a1 + 100), v23), 1.0 - v21), v14, v21);
  *(a1 + 528) = v22;
  *(a1 + 536) = hypotf(v22.f32[0], v22.f32[1]);
}

float MTParserPath::computeDivingButtonChangeInstability(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8) - *(a2 + 400);
  result = 1.0;
  if (v3 > 0.0)
  {
    v5 = *(a3 + 88);
    result = 0.0;
    if (v5 > v3)
    {
      result = (v5 - v3) / v5;
    }
  }

  v6 = *(a1 + 40);
  if (*(a3 + 99) == 1)
  {
    v7 = *(a2 + 408);
    v8 = v6 != v7;
    v9 = *(a2 + 372);
    v10 = *(a2 + 352);
    if (*(a2 + 384) != 1)
    {
      v8 = 1;
    }

    v11 = 0.25;
    v12 = 0.5;
    if (*(a2 + 372))
    {
      v11 = 0.5;
      v12 = 1.0;
    }

    v13 = 0.07;
    if (*(a2 + 372))
    {
      v13 = 0.15;
    }

    v14 = v8 | ~(v10 != 0);
    v15 = v11 * result;
    if (v10)
    {
      v8 = 1;
    }

    if ((v14 & 1) == 0)
    {
      result = v15;
    }

    if (!v8)
    {
      v16 = v12 * result;
      result = v16;
    }

    if (v6 != v7)
    {
      return v13 * result;
    }
  }

  else if (v6 != *(a2 + 388))
  {
    return result * 0.15;
  }

  return result;
}

void MTParserPath::isStuckOnDivingRegion(MTParserPath *this, const MTPathStates *a2)
{
  if (*(this + 10) == *(a2 + 97) && *(a2 + 94) == 1 && !(*(a2 + 96) - 1 + *(a2 + 95)))
  {
    if (((v4 = *(this + 12), !*(a2 + 104)) || *(a2 + 105) <= 2) && (*(a2 + 28) & 0x80) == 0 || v4 == 1)
    {
      v5 = *(this + 23) - *(this + 97);
      v6 = (*(this + 24) - *(this + 98)) * (*(this + 24) - *(this + 98));
      MTSurfaceDimensions::convertSurfaceFractionToMillimeters(*(a2 + 5), 1, *(this + 14), 1.0 - *(this + 15));
      v8 = v7;
      ThumbRestingOrPolarZoneHeight = MTPathStates::getThumbRestingOrPolarZoneHeight(a2);
      v10 = 1.0;
      if (v8 > 0.0)
      {
        v10 = 0.0;
        if (v8 < ThumbRestingOrPolarZoneHeight)
        {
          v10 = (ThumbRestingOrPolarZoneHeight - v8) / ThumbRestingOrPolarZoneHeight;
        }
      }

      v11 = 0.0;
      if (v4 == 1)
      {
        v11 = 1.0;
      }

      v12 = v10 * v11;
      v13 = *(this + 21);
      if (v13 <= 8.0)
      {
        if (v12 <= 0.0)
        {
          v12 = 0.0;
        }
      }

      else if (v13 >= 13.0)
      {
        if (v12 <= 1.0)
        {
          v12 = 1.0;
        }
      }

      else
      {
        v14 = (v13 + -8.0) / 5.0;
        if (v12 <= v14)
        {
          v12 = v14;
        }
      }

      v15 = (v10 * 6.0) * v12;
      v16 = v15 + 0.2;
      if (!*(a2 + 372))
      {
        v16 = v15;
      }

      if (v16 > 0.0 && (v6 + (v5 * v5)) < (v16 * v16))
      {
        pow((v16 * 0.5), 1.5);
      }
    }
  }
}

float *MTParserPath::setPathSpeedSymmetries(float *this, float a2, float a3)
{
  this[147] = a2;
  this[148] = a3;
  v3 = fabsf(a2);
  if (v3 < a3)
  {
    v3 = a3;
  }

  if (v3 < this[149])
  {
    v3 = this[149];
  }

  this[149] = v3;
  return this;
}

double MTParserPath::clearPathSpeedSymmetries(MTParserPath *this)
{
  *(this + 147) = 0;
  result = 0.0;
  *(this + 74) = 0;
  return result;
}

float MTParserPath::measureInstability(uint64_t a1, uint64_t a2, uint64_t a3, float *a4)
{
  v55 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 32) - *(a1 + 224);
  if ((*(a1 + 8) - 1000) >= 0xBB8)
  {
    v14 = (*(a2 + 8) - *(a2 + 16)) / 0.00800000038;
    v16 = 0.0;
  }

  else
  {
    v46 = *(a1 + 92);
    v9 = hypotf(v46.f32[0] - *(a1 + 376), v46.f32[1] - *(a1 + 380));
    if (v9 > *(a1 + 384))
    {
      *(a1 + 384) = v9;
    }

    v10 = *(a1 + 84);
    v11 = 1.0;
    if (v10 < 16.0)
    {
      v11 = ((v10 + -8.0) * 0.125);
    }

    if (v10 > 8.0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0.0;
    }

    v13 = v12 * -0.1 + 0.9;
    v14 = (*(a2 + 8) - *(a2 + 16)) / 0.00800000038;
    v15 = pow(v13, v14);
    *(a1 + 388) = vmla_n_f32(vmul_n_f32(v46, 1.0 - v15), *(a1 + 388), v15);
    v16 = 0.0;
    if ((*(a2 + 28) & 2) != 0)
    {
      v16 = MTParserPath::computeDivingButtonChangeInstability(a1, a2, a3);
    }
  }

  v17 = dbl_29D3D68B0[v8 > *(a3 + 92)];
  v18 = v17;
  v19 = pow(v17, v14);
  *(a1 + 572) = (*(a1 + 72) * (1.0 - v19)) + (v19 * *(a1 + 572));
  v20 = *(a1 + 16);
  if (v20 && MTSLGLogger::isSLGEnabled(v20))
  {
    v21 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::measureInstability] zarea_alpha = %.2f _longTermZarea = %.2f", *&v18, *(a1 + 572));
    MTSLGLogger::logString(*(a1 + 16), v21);
    CFRelease(v21);
  }

  v22 = pow(0.949999988, (*(a2 + 8) - *(a2 + 16)) / 0.00800000038);
  *(a1 + 576) = (*(a1 + 84) * (1.0 - v22)) + (v22 * *(a1 + 576));
  v23 = *(a1 + 16);
  if (v23 && MTSLGLogger::isSLGEnabled(v23))
  {
    v24 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::measureInstability K39 filtering] _longTermMajorEllipseRadius = %.2f", *(a1 + 576));
    MTSLGLogger::logString(*(a1 + 16), v24);
    CFRelease(v24);
  }

  v25 = MTParserPath::computeZSignalInstability(a1, a2, a3, *(a1 + 368), v8);
  v26 = 0.0;
  v27 = 0.0;
  if ((*(a1 + 368) & 1) == 0)
  {
    MTParserPath::computeDebounceTimeInstability(a1, a3, v8);
    v27 = v28;
    v29 = MTLoggingPlugin();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v45 = *(a1 + 40);
      *buf = 67109888;
      v48 = v45;
      v49 = 2048;
      v50 = v25;
      v51 = 2048;
      v52 = v27;
      v53 = 2048;
      v54 = v8;
      _os_log_debug_impl(&dword_29D381000, v29, OS_LOG_TYPE_DEBUG, "\tDHML:  P%d Wating for slide, ZInstability=%f, TimeInstability=%f (from dtstart=%lfs)", buf, 0x26u);
    }
  }

  v30 = 0.0;
  if ((*(a1 + 8) - 1000) <= 0xBB7)
  {
    if ((*(a2 + 28) & 2) != 0 && (*(a1 + 370) & 1) == 0)
    {
      MTParserPath::isStuckOnDivingRegion(a1, a2);
      v26 = v31;
    }

    if ((*(a2 + 24) - 1000) <= 0x3E7)
    {
      v32 = 48;
      if (*(a1 + 44) == 7)
      {
        v32 = 144;
      }

      if ((*(a1 + v32) | 4) == 5 && *(a2 + 384) >= 5 && (*(a1 + 368) & 1) == 0)
      {
        v33 = MTPathStatesBasic::numFingerSlidWhileEngaged(a2);
        v30 = v33 >= 3 ? 0.0 : 0.3;
        if (v33 < 3)
        {
          v16 = v16 + v16;
        }
      }
    }

    if (*(a3 + 100) == 1 && (*(a1 + 368) & 1) == 0 && *(a2 + 384) >= 5 && MTPathStatesBasic::numFingerSlidWhileEngaged(a2) >= 3)
    {
      v25 = v25 * 0.5;
      v27 = v27 * 0.5;
    }
  }

  if (a4)
  {
    if (v25 <= v30)
    {
      v34 = v30;
    }

    else
    {
      v34 = v25;
    }

    if (v27 <= v16)
    {
      v35 = v16;
    }

    else
    {
      v35 = v27;
    }

    if (v34 <= v35)
    {
      v34 = v35;
    }

    *a4 = v34;
  }

  v36 = *(a1 + 16);
  if (v36 && MTSLGLogger::isSLGEnabled(v36))
  {
    v37 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::measureInstability INSTABILITY] instability_ contactZShape = %.2f divingButtonZone = %.2f restingHand = %.2f touchTimeDebounce = %.2f buttonTimeDebounce = %.2f ", v25, v26, v30, v27, v16);
    MTSLGLogger::logString(*(a1 + 16), v37);
    CFRelease(v37);
  }

  if (v25 <= v26)
  {
    v38 = v26;
  }

  else
  {
    v38 = v25;
  }

  if (v38 < v30)
  {
    v38 = v30;
  }

  if (v27 <= v16)
  {
    v39 = v16;
  }

  else
  {
    v39 = v27;
  }

  if (v38 <= v39)
  {
    v40 = v39;
  }

  else
  {
    v40 = v38;
  }

  v41 = *(a1 + 16);
  if (v41 && MTSLGLogger::isSLGEnabled(v41))
  {
    v42 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::measureInstability] total instability = %.2f", v40);
    MTSLGLogger::logString(*(a1 + 16), v42);
    CFRelease(v42);
  }

  v43 = *MEMORY[0x29EDCA608];
  return v40;
}

void MTParserPath::filterContactForScreenUI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int8x16_t a6, double a7, int8x16_t a8, int8x16_t a9)
{
  v14.f32[0] = mthm_ComputeFingerEllipseTipOffset_mm(a5, a3, (a1 + 24), (a1 + 120), a6, a7, a8, a9);
  *v16.i8 = MTSurfaceDimensions::convertMillimetersToPixels(a3, v14, v15);
  v84 = v16;
  v85 = v17;
  v18 = 0.0;
  v19 = 0;
  if (*(a5 + 52) == 1)
  {
    v20.f32[0] = mthm_ComputeFingerEllipseTipOffsetFromPressure_mm(a5, a3, a1 + 24);
    v19 = MTSurfaceDimensions::convertMillimetersToPixels(a3, v20, v21).u32[0];
    v18 = v22;
  }

  *&v23 = MTSurfaceDimensions::convertSurfaceFractionToPixels(a3, *(a1 + 56), *(a1 + 60));
  v86 = v24;
  v87 = v23;
  v94[0] = 0.0;
  v27 = *(a1 + 44);
  v83 = (a1 + 44);
  if (v27 >= 3 && *(a1 + 140) && (v27 < 5 || (*(a1 + 368) & 1) == 0))
  {
    v28 = (v27 == 3) & *(a4 + 101);
  }

  else
  {
    v28 = 1;
  }

  if (*(a4 + 98) == 1)
  {
    MTParserPath::detectSustainedHoverAtEdge(a1, a4, a3);
    v28 |= *(a1 + 580);
  }

  *(a1 + 556) = *(a1 + 548);
  MTParserPath::correctAndQuantizeRadius(a1, a4, v23, *v24.i64, v25, v26);
  v32 = *(a4 + 80) == 1 && *(a1 + 64) == 0.0 && *(a1 + 68) == 0.0;
  v33 = *(a4 + 76);
  if (v33 <= 0.0 || v28 & 1 | ((*(a1 + 368) & 1) == 0) | v32)
  {
    v34 = 0;
  }

  else
  {
    v30 = *(a1 + 272);
    v34 = *(a1 + 32) - v30 > v33;
  }

  if (!(v28 | v32) && !v34)
  {
    if (*(a4 + 97) == 1)
    {
      v31.i32[0] = *(a1 + 464);
      v35 = *(a1 + 468);
      v91 = &unk_2A2411ED0;
      v36 = *(a3 + 24);
      v92 = *(a3 + 8);
      v93 = v36;
      MTParserPath::pullHysteresisCenterCancelingEllipseTipMotion(a1, a5, (a1 + 416), &v91, *&v87, v86, v84, v85, v31, v35);
      MTSurfaceDimensions::~MTSurfaceDimensions(&v91);
    }

    if (*(a5 + 52) == 1)
    {
      v31.i32[0] = *(a1 + 512);
      v37 = *(a1 + 516);
      v88 = &unk_2A2411ED0;
      v89 = *(a3 + 8);
      v90 = *(a3 + 24);
      LODWORD(v30) = v19;
      MTParserPath::pullHysteresisCenterCancelingEllipseTipMotionFromPressure(a1, v87, *v86.i32, v30, v18, *v31.i64, v37, v29, a1 + 416);
      MTSurfaceDimensions::~MTSurfaceDimensions(&v88);
    }

    v38 = MTParserPath::measureInstability(a1, a2, a4, v94);
    v39 = *(a1 + 16);
    if (v39)
    {
      v41 = *a4;
      v40 = *(a4 + 4);
      v39 = MTSLGLogger::isSLGEnabled(v39);
      if (v39)
      {
        v42 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::filterContactForScreenUI INSTABILITY] pixel_instability (equivalent) = %.2f pixel_deltas2hide = %.2f cur_position = (%.2f, %.2f)  _hysteresisCenter = (%.2f, %.2f)", v38, ((v38 * v40) * v41), *&v87, *v86.i32, *(a1 + 416), *(a1 + 420));
        MTSLGLogger::logString(*(a1 + 16), v42);
        CFRelease(v42);
      }
    }

    if (*a5 != 1 || *(a4 + 128) != 1)
    {
      goto LABEL_49;
    }

    v43 = MTSurfaceDimensions::distanceToTopEdge_mm(a3, v87, *v86.i32);
    v39 = *(a1 + 16);
    if (v39)
    {
      v39 = MTSLGLogger::isSLGEnabled(v39);
      if (v39)
      {
        v44 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::filterContactForScreenUI] distance to bottom edge = %.2f\n", v43);
        MTSLGLogger::logString(*(a1 + 16), v44);
        CFRelease(v44);
      }
    }

    if (v43 < 5.0)
    {
      v45 = (a1 + 416);
      MTParserPath::pullHysteresisCenterHidingUnstablePixelDeltasXY(*&v87, *v86.i32, v38, v38 / 5.0, v39, a4, (a1 + 416));
      v46 = *(a1 + 16);
      if (!v46)
      {
        v52 = *(a1 + 416);
LABEL_53:
        v54 = MTParserPath::applyAbsolutePixelHysteresis(*&v87, *v86.i32, *(a1 + 152), *(a1 + 156), *(a4 + 56), v46, v45);
        v55 = *(a1 + 16);
        if (v55)
        {
          v55 = MTSLGLogger::isSLGEnabled(v55);
          if (v55)
          {
            v56 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::filterContactForScreenUI] after applying absolute pixel hysteresis:  cur_position = (%.2f, %.2f) _previousContact = (%.2f, %.2f) _hysteresisCenter = (%.2f, %.2f)", *&v87, *v86.i32, *(a1 + 152), *(a1 + 156), *(a1 + 416), *(a1 + 420));
            MTSLGLogger::logString(*(a1 + 16), v56);
            CFRelease(v56);
          }
        }

        v57 = *(a1 + 368) | v54;
        *(a1 + 368) = v57;
        if (*(a1 + 581))
        {
          v58 = 0;
        }

        else
        {
          v58 = *(a1 + 370) | v54;
        }

        *(a1 + 370) = v58;
        *(a1 + 369) = v57;
        MTParserPath::pullHysteresisCenterHidingUnstablePixelDeltasXY(*&v87, *v86.i32, v94[0], v94[0], v55, a4, (a1 + 424));
        v60 = MTParserPath::applyAbsolutePixelHysteresis(*&v87, *v86.i32, *(a1 + 152), *(a1 + 156), *(a4 + 56), v59, (a1 + 424));
        *(a1 + 369) |= v60;
        if (*(a5 + 42) == 1)
        {
          v61 = *(a1 + 432);
          *(a1 + 440) = v61;
          v62 = *&v61;
          v63 = *(&v61 + 1);
          MTParserPath::pullHysteresisCenterHidingUnstablePixelDeltasXY(*v84.i32, v85, v38, v38, v60, a4, (a1 + 432));
          v60 = MTParserPath::applyAbsolutePixelHysteresis(*v84.i32, v85, v62, v63, *(a4 + 56), v64, (a1 + 432));
        }

        v65 = *(a1 + 416);
        v66 = vsub_f32(v65, v52);
        v67 = vadd_f32(v66, *(a1 + 456));
        *(a1 + 448) = v66;
        *(a1 + 456) = v67;
        if ((*(a1 + 368) & 1) != 0 || *(a1 + 369) == 1)
        {
          *(a1 + 408) = *(a1 + 400);
          *(a1 + 400) = vcvt_f32_s32(vcvt_s32_f32(v65));
        }

        goto LABEL_82;
      }

      if (MTSLGLogger::isSLGEnabled(v46))
      {
        v47 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::pullHysteresisCenterHidingUnstablePixelDeltas] reduce pixel hysteresis instability to %.2f %.2f for unstable within %.2fmm of bottom edge\n", v38, (v38 / 5.0), 0x4014000000000000);
        MTSLGLogger::logString(*(a1 + 16), v47);
        CFRelease(v47);
      }
    }

    else
    {
LABEL_49:
      MTParserPath::pullHysteresisCenterHidingUnstablePixelDeltasXY(*&v87, *v86.i32, v38, v38, v39, a4, (a1 + 416));
    }

    v46 = *(a1 + 16);
    v45 = (a1 + 416);
    v52 = *(a1 + 416);
    if (v46)
    {
      v46 = MTSLGLogger::isSLGEnabled(v46);
      if (v46)
      {
        v53 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"[Hysteresis debugging MTParserPath::filterContactForScreenUI] pulled_hysteresis_center = (%.2f, %.2f)", *(a1 + 416), *(a1 + 420));
        MTSLGLogger::logString(*(a1 + 16), v53);
        CFRelease(v53);
      }
    }

    goto LABEL_53;
  }

  v48 = *(a1 + 16);
  if (v48 && MTSLGLogger::isSLGEnabled(v48))
  {
    v49 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"Hysteresis debugging [MTParserPath::filterContactForScreenUI] reset_from_stage = %1d reset_from_zero_velocity = %1d, reset_from_pause = %1d\n", v28 & 1, v32, v34);
    MTSLGLogger::logString(*(a1 + 16), v49);
    CFRelease(v49);
  }

  *(a1 + 416) = vdupq_lane_s64(__SPAIR64__(v86.u32[0], LODWORD(v87)), 0);
  *(a1 + 408) = *(a1 + 400);
  *(a1 + 400) = vcvt_f32_s32(vcvt_s32_f32(__PAIR64__(v86.u32[0], LODWORD(v87))));
  if (*(a5 + 42) == 1)
  {
    *(a1 + 440) = *(a1 + 432);
    *(a1 + 432) = v84.i32[0];
    *(a1 + 436) = v85;
  }

  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 572) = *(a1 + 72);
  *(a1 + 576) = *(a1 + 84);
  v50 = *(a1 + 8) - 1000;
  if (v50 <= 0xBB7)
  {
    v51 = *(a1 + 92);
    *(a1 + 388) = v51;
    *(a1 + 376) = v51;
  }

  if (*(a5 + 43) != 1)
  {
LABEL_46:
    if (v28)
    {
      goto LABEL_47;
    }

    goto LABEL_66;
  }

  if (v32 | v28)
  {
    *(a1 + 472) = 0;
    *(a1 + 520) = 0;
    goto LABEL_46;
  }

  *(a1 + 472) = vadd_f32(*(a1 + 472), vsub_f32(__PAIR64__(LODWORD(v85), v84.u32[0]), *(a1 + 464)));
  if (v28)
  {
LABEL_47:
    *(a1 + 368) = 0;
    *(a1 + 370) = 0;
    if (v50 <= 0xBB7)
    {
      *(a1 + 384) = 0;
      *(a1 + 584) = 0;
    }

LABEL_75:
    *(a1 + 581) = 0;
    goto LABEL_76;
  }

LABEL_66:
  if (v34)
  {
    if (v50 > 0xBB7)
    {
      *(a1 + 368) = 0;
      *(a1 + 370) = 0;
    }

    else
    {
      v68 = 48;
      if (*(a1 + 44) == 7)
      {
        v68 = 144;
      }

      if (*(a1 + v68) == 1 && *(a2 + 420) >= 2 && *(a2 + 384) > 1)
      {
        goto LABEL_76;
      }

      *(a1 + 368) = 0;
      *(a1 + 370) = 0;
      *(a1 + 384) = 0;
    }

    goto LABEL_75;
  }

LABEL_76:
  if (*(a1 + 48) <= 5 && *(a1 + 144) < 6)
  {
    v70 = MTLoggingPlugin();
    v60 = os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG);
    v38 = 0.0;
    if (v60)
    {
      MTParserPath::filterContactForScreenUI(a1, v83, v70);
    }
  }

  else
  {
    v69 = MTLoggingPlugin();
    v60 = os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG);
    v38 = 0.0;
    if (v60)
    {
      MTParserPath::filterContactForScreenUI(a1, (a1 + 48), v69);
    }
  }

LABEL_82:
  *(a1 + 371) = MTParserPath::applyAbsoluteForceHysteresis(*(a1 + 76), *(a1 + 172), v60, (a1 + 372), a4);
  *(a1 + 76) = *(a1 + 372);
  *(a1 + 464) = v84.i32[0];
  *(a1 + 468) = v85;
  if (*(a5 + 52) == 1)
  {
    *(a1 + 512) = v19;
    *(a1 + 516) = v18;
  }

  *(a1 + 56) = vcvt_f32_s32(vcvt_s32_f32(*(a1 + 416)));
  *(a1 + 64) = MTSurfaceDimensions::convertSurfaceFractionVelocityToPixelsPerSecond(a3, *(a1 + 64), *(a1 + 68));
  *(a1 + 68) = v71;
  *(a1 + 500) = *(a1 + 64);
  *(a1 + 508) = hypotf(*(a1 + 100), *(a1 + 104));
  if (*(a4 + 101) == 1 && *v83 - 1 <= 2)
  {
    *(a1 + 500) = 0;
    *(a1 + 508) = 0;
  }

  v76 = 1.0 - v38;
  if ((1.0 - v38) < 0.0)
  {
    v76 = 0.0;
  }

  MTParserPath::updateDampedVelocity(a1, a2, a4, v76, 0.0, v72, v73, v74, v75);
  *(a1 + 488) = 0;
  v78 = *(a1 + 112);
  *(a1 + 492) = v78;
  *(a1 + 496) = *(a1 + 80);
  v79 = *(a4 + 64);
  if (v79 >= 0.0)
  {
    v80 = v79 * 0.0174532925;
    MTParserPath::updateAngularHysteresisCenter((a1 + 480), v77, v78, v80);
    *(a1 + 112) = *(a1 + 480);
    *(a1 + 488) = 1;
  }

  v81 = *(a4 + 68);
  if (v81 >= 0.0)
  {
    v82 = v81 * 0.0174532925;
    MTParserPath::updateAngularHysteresisCenter((a1 + 484), v77, *(a1 + 80), v82);
    *(a1 + 80) = *(a1 + 484);
    *(a1 + 488) = 1;
  }
}

void MTParserPath::correctAndQuantizeRadius(uint64_t a1, uint64_t a2, double a3, double a4, float64x2_t _Q2, int8x16_t a6)
{
  v7 = 0.0;
  if (*(a2 + 102) == 1)
  {
    v8 = *(a1 + 44) - 1;
    if (v8 <= 5 && (*(a1 + 140) - 1) >= 6)
    {
      _D1 = vrev64_s32(*(a1 + 84));
    }

    else
    {
      __asm { FMOV            V2.2D, #0.5 }

      v13 = vmulq_f64(vcvtq_f64_f32(*(a1 + 84)), _Q2);
      _D1 = vcvt_f32_f64(vmlaq_f64(vextq_s8(v13, v13, 8uLL), _Q2, vcvtq_f64_f32(*(a1 + 540))));
    }

    *(a1 + 540) = _D1;
    v15 = 0.0;
    v16 = 0.0;
    if (v8 <= 3)
    {
      _S0 = *(a2 + 104);
      *a6.i32 = *(a2 + 108) + (_S0 * _D1.f32[0]);
      __asm { FMLA            S2, S0, V1.S[1]; float }

      v18 = fmaxf(*_Q2.f64, 2.0);
      v15 = _QuantizedRadius(fmaxf(*a6.i32, 2.0), *(a1 + 556), _Q2, a6);
      v16 = _QuantizedRadius(v18, *(a1 + 560), v19, v20);
    }

    *(a1 + 548) = v15;
    *(a1 + 552) = v16;
    v7 = 1.0;
  }

  *(a1 + 564) = v7;
}

float _QuantizedRadius(float a1, float a2, int8x16_t a3, int8x16_t a4)
{
  if (a1 == 0.0)
  {
    return 0.0;
  }

  if (a1 < 2.0)
  {
    a1 = 2.0;
  }

  *a4.i32 = a1 + -2.0;
  v5 = (a1 + -2.0) * 0.5;
  v6 = v5;
  *a3.i32 = (a1 + -2.0) + (truncf(v5) * -2.0);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  *a3.i64 = *vbslq_s8(v7, a3, a4).i32;
  if (a1 <= a2 || *a3.i64 <= 1.334)
  {
    v10 = *a3.i64 > 0.666 && a1 < a2;
    v8 = v10 + v6;
  }

  else
  {
    v8 = v6 + 1;
  }

  return (v8 * 2.0) + 2.0;
}

BOOL MTParserPath::stableAndMoved(MTParserPath *this)
{
  if ((*(this + 368) & 1) == 0 && *(this + 369) != 1)
  {
    return 0;
  }

  if (*(this + 102) == *(this + 100))
  {
    return *(this + 103) != *(this + 101);
  }

  return 1;
}

uint64_t MTParserPath::generateFlagsEventMaskBits(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 84);
  v3 = v2 & 0xFE7;
  if ((v2 & 0x100) != 0)
  {
    v4 = 134479872;
  }

  else
  {
    v4 = 0x40000;
  }

  if (v3 >= 0x800)
  {
    v5 = (v3 << 15) & 0x2000000 | ((((v2 & 0xFE7) >> 9) & 1) << 26) | v4 | (v2 << 12) & 0x2000 | ((v2 & 1) << 11) | 0x1000000;
  }

  else
  {
    v5 = (v3 << 15) & 0x2000000 | ((((v2 & 0xFE7) >> 9) & 1) << 26) | v4 | (v2 << 12) & 0x2000 | ((v2 & 1) << 11);
  }

  if ((v2 & 4) == 0)
  {
    v5 = (v2 << 12) & 0x2000 | ((v2 & 1) << 11);
  }

  return v5 | (v2 << 8) & 0xC000u;
}

uint64_t MTInputDeviceManagement::MTInputDeviceManagement(uint64_t result, uint64_t a2)
{
  *result = &unk_2A2411798;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

{
  *result = &unk_2A2411798;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void MTInputDeviceManagement::scheduleOnDispatchQueue(MTInputDeviceManagement *this, NSObject *a2)
{
  v35[2] = *MEMORY[0x29EDCA608];
  v4 = *(this + 1);
  Service = MTDeviceGetService();
  if (!Service)
  {
    v15 = MTLoggingPlugin();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v22 = 136315650;
    v23 = "[Error] ";
    v24 = 2080;
    v25 = "";
    v26 = 2080;
    v27 = "scheduleOnDispatchQueue";
    v16 = "[HID] [MT] %s%s%s Could not get service";
LABEL_13:
    _os_log_impl(&dword_29D381000, v15, OS_LOG_TYPE_ERROR, v16, &v22, 0x20u);
    goto LABEL_14;
  }

  CFProperty = IORegistryEntryCreateCFProperty(Service, @"SerialNumber", *MEMORY[0x29EDB8ED8], 0);
  if (!CFProperty)
  {
    goto LABEL_11;
  }

  v7 = CFProperty;
  v8 = CFGetTypeID(CFProperty);
  if (v8 != CFStringGetTypeID())
  {
    CFRelease(v7);
    goto LABEL_11;
  }

  v9 = v7;
  if (!v9)
  {
LABEL_11:
    v15 = MTLoggingPlugin();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v22 = 136315650;
    v23 = "[Error] ";
    v24 = 2080;
    v25 = "";
    v26 = 2080;
    v27 = "scheduleOnDispatchQueue";
    v16 = "[HID] [MT] %s%s%s Could not get serial number key (cannot match AMD and DM)";
    goto LABEL_13;
  }

  v33 = v9;
  v34[0] = @"IOPropertyMatch";
  v32 = @"SerialNumber";
  v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v34[1] = @"IONameMatch";
  v35[0] = v10;
  v35[1] = @"AppleDeviceManagementHIDEventService";
  v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  v12 = IONotificationPortCreate(0);
  *(this + 2) = v12;
  if (!v12)
  {
    v15 = MTLoggingPlugin();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v22 = 136315650;
    v23 = "[Error] ";
    v24 = 2080;
    v25 = "";
    v26 = 2080;
    v27 = "scheduleOnDispatchQueue";
    v16 = "[HID] [MT] %s%s%s Could not create notification port";
    goto LABEL_13;
  }

  v13 = v12;
  if (v11)
  {
    v14 = CFRetain(v11);
  }

  else
  {
    v14 = 0;
  }

  v18 = IOServiceAddMatchingNotification(v13, "IOServiceFirstMatch", v14, MTInputDeviceManagement::DeviceManagerMatchedCallback, this, this + 6);
  if (v18 || (v21 = *(this + 6), !v21))
  {
    v19 = MTLoggingPlugin();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(this + 6);
      v22 = 136316162;
      v23 = "[Error] ";
      v24 = 2080;
      v25 = "";
      v26 = 2080;
      v27 = "scheduleOnDispatchQueue";
      v28 = 1024;
      v29 = v18;
      v30 = 2048;
      v31 = v20;
      _os_log_impl(&dword_29D381000, v19, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Could not create notification port: 0x%08x (deviceIterator: 0x%08jx)", &v22, 0x30u);
    }

    IONotificationPortDestroy(*(this + 2));
    *(this + 2) = 0;
  }

  else
  {
    MTInputDeviceManagement::DeviceManagerMatchedCallback(this, v21);
    IONotificationPortSetDispatchQueue(*(this + 2), a2);
  }

LABEL_14:
  v17 = *MEMORY[0x29EDCA608];
}

void MTInputDeviceManagement::DeviceManagerMatchedCallback(MTInputDeviceManagement *this, void *a2)
{
  v2 = a2;
  v17 = *MEMORY[0x29EDCA608];
  v4 = objc_autoreleasePoolPush();
  if (IOIteratorIsValid(v2))
  {
    v5 = *MEMORY[0x29EDB8ED8];
    do
    {
      v6 = IOIteratorNext(v2);
      if (!v6)
      {
        break;
      }

      v7 = v6;
      properties = 0;
      if (IORegistryEntryCreateCFProperties(v6, &properties, v5, 0) || !properties)
      {
        v8 = MTLoggingPlugin();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v12 = "[Error] ";
          v13 = 2080;
          v14 = "";
          v15 = 2080;
          v16 = "DeviceManagerMatchedCallback";
          _os_log_impl(&dword_29D381000, v8, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Could not retrieve the service properties", buf, 0x20u);
        }
      }

      else
      {
        MTInputDeviceManagement::publishService(this, properties);
        CFRelease(properties);
      }

      IOObjectRelease(v7);
    }

    while (IOIteratorIsValid(v2));
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x29EDCA608];
}

void MTInputDeviceManagement::unscheduleFromDispatchQueue(MTInputDeviceManagement *this, dispatch_queue_t queue)
{
  dispatch_assert_queue_not_V2(queue);
  if (*(this + 5))
  {
    MTInputDeviceManagement::unpublishService(this);
  }

  v3 = *(this + 6);
  if (v3)
  {
    IOObjectRelease(v3);
    *(this + 6) = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    IONotificationPortDestroy(v4);
    *(this + 2) = 0;
  }
}

void MTInputDeviceManagement::unpublishService(MTInputDeviceManagement *this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = MTLoggingPlugin();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 5);
    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "unpublishService";
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_29D381000, v2, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Unpublishing device with connection UUID %{public}@", &v5, 0x2Au);
  }

  [objc_msgSend(MEMORY[0x29EDC0D38] "sharedClient")];
  CFRelease(*(this + 5));
  *(this + 5) = 0;
  v4 = *MEMORY[0x29EDCA608];
}

void MTInputDeviceManagement::publishService(MTInputDeviceManagement *this, __CFDictionary *a2)
{
  v58 = *MEMORY[0x29EDCA608];
  if (*(this + 5))
  {
    MTInputDeviceManagement::unpublishService(this);
  }

  v4 = [(__CFDictionary *)a2 objectForKeyedSubscript:@"MTFW Version"];
  if (!v4 || ![v4 intValue])
  {
    *buf = 0;
    v5 = *(this + 1);
    MTDeviceGetVersion();
    -[__CFDictionary setObject:forKeyedSubscript:](a2, "setObject:forKeyedSubscript:", [MEMORY[0x29EDBA070] numberWithInt:0], @"MTFW Version");
  }

  v6 = [(__CFDictionary *)a2 objectForKeyedSubscript:@"SerialNumber"];
  if (!v6)
  {
    v11 = MTLoggingPlugin();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 136315650;
    v47 = "[Error] ";
    v48 = 2080;
    v49 = "";
    v50 = 2080;
    v51 = "publishService";
    v12 = "[HID] [MT] %s%s%s Could not get a service identifier";
LABEL_27:
    _os_log_impl(&dword_29D381000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x20u);
    goto LABEL_52;
  }

  v7 = v6;
  v8 = [(__CFDictionary *)a2 objectForKeyedSubscript:@"Transport"];
  if ([v8 isEqualToString:@"AID"])
  {
    v9 = 7;
    v10 = 3;
  }

  else if ([v8 isEqualToString:@"USB"])
  {
    v9 = 0;
    v10 = 6;
  }

  else
  {
    v13 = [v8 isEqualToString:@"Bluetooth"];
    if (v13)
    {
      v10 = 2;
    }

    else
    {
      v10 = 11;
    }

    if (v13)
    {
      v9 = 2;
    }

    else
    {
      v9 = 18;
    }
  }

  v14 = [objc_msgSend(MEMORY[0x29EDC0D38] "sharedClient")];
  if (!v14)
  {
    v11 = MTLoggingPlugin();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 136315650;
    v47 = "[Error] ";
    v48 = 2080;
    v49 = "";
    v50 = 2080;
    v51 = "publishService";
    v12 = "[HID] [MT] %s%s%s Could not create CoreAccessories connection";
    goto LABEL_27;
  }

  v15 = v14;
  v16 = [objc_msgSend(MEMORY[0x29EDC0D38] "sharedClient")];
  if (!v16)
  {
    v11 = MTLoggingPlugin();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 136315650;
    v47 = "[Error] ";
    v48 = 2080;
    v49 = "";
    v50 = 2080;
    v51 = "publishService";
    v12 = "[HID] [MT] %s%s%s Could not create CoreAccessories endpoint";
    goto LABEL_27;
  }

  v38 = v16;
  if ([(__CFDictionary *)a2 objectForKeyedSubscript:@"SerialNumber"])
  {
    v37 = [(__CFDictionary *)a2 objectForKeyedSubscript:@"SerialNumber"];
  }

  else
  {
    v37 = &stru_2A2414198;
  }

  if ([(__CFDictionary *)a2 objectForKeyedSubscript:@"Product"])
  {
    v36 = [(__CFDictionary *)a2 objectForKeyedSubscript:@"Product"];
  }

  else
  {
    v36 = &stru_2A2414198;
  }

  if ([(__CFDictionary *)a2 objectForKeyedSubscript:@"Manufacturer"])
  {
    v35 = [(__CFDictionary *)a2 objectForKeyedSubscript:@"Manufacturer"];
  }

  else
  {
    v35 = @"Apple Inc.";
  }

  v39 = this;
  v17 = [(__CFDictionary *)a2 objectForKeyedSubscript:@"HardwareID"];
  v33 = v7;
  if (v17)
  {
    v34 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%04X", objc_msgSend(v17, "unsignedIntegerValue")];
  }

  else
  {
    v34 = &stru_2A2414198;
  }

  v18 = [MEMORY[0x29EDBA050] stringWithCapacity:20];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = [&unk_2A2419B98 countByEnumeratingWithState:&v40 objects:buf count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v41;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(&unk_2A2419B98);
        }

        v23 = [(__CFDictionary *)a2 objectForKeyedSubscript:*(*(&v40 + 1) + 8 * i)];
        if (v23)
        {
          v24 = v23;
          if ([v18 length])
          {
            [v18 appendString:@"."];
          }

          [v18 appendString:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithFormat:", @"%04X", objc_msgSend(v24, "unsignedIntegerValue"))}];
        }
      }

      v20 = [&unk_2A2419B98 countByEnumeratingWithState:&v40 objects:buf count:16];
    }

    while (v20);
  }

  v25 = *MEMORY[0x29EDC0D60];
  v26 = *MEMORY[0x29EDC0D50];
  v44[0] = *MEMORY[0x29EDC0D60];
  v44[1] = v26;
  v45[0] = v36;
  v45[1] = v35;
  v27 = *MEMORY[0x29EDC0D40];
  v44[2] = *MEMORY[0x29EDC0D68];
  v44[3] = v27;
  v45[2] = v37;
  v45[3] = v18;
  v28 = *MEMORY[0x29EDC0D58];
  v44[4] = *MEMORY[0x29EDC0D48];
  v44[5] = v28;
  v45[4] = v34;
  v45[5] = &stru_2A2414198;
  v29 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v45 forKeys:v44 count:6];
  [objc_msgSend(MEMORY[0x29EDC0D38] "sharedClient")];
  v30 = MTLoggingPlugin();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v29 objectForKeyedSubscript:v25];
    *buf = 136316418;
    v47 = "";
    v48 = 2080;
    v49 = "";
    v50 = 2080;
    v51 = "publishService";
    v52 = 2114;
    v53 = v33;
    v54 = 2114;
    v55 = v31;
    v56 = 2114;
    v57 = v15;
    _os_log_impl(&dword_29D381000, v30, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Publishing device %{public}@ (%{public}@) with connection UUID %{public}@", buf, 0x3Eu);
  }

  [objc_msgSend(MEMORY[0x29EDC0D38] "sharedClient")];
  *(v39 + 5) = CFRetain(v15);
LABEL_52:
  v32 = *MEMORY[0x29EDCA608];
}

uint64_t MTChordTable::MTChordTable(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = &unk_2A24117C8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 8654537;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 252) = 0u;
  *(a1 + 364) = 0;
  *(a1 + 28) = 0u;
  *(a1 + 268) = 0u;
  *(a1 + 284) = 0u;
  *(a1 + 300) = 0u;
  *(a1 + 316) = 0u;
  *(a1 + 332) = 0u;
  *(a1 + 348) = 0u;
  MTChordTable::clearAllChordsInTable(a1);
  return a1;
}

void sub_29D395918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = (v10 + 344);
  v13 = -336;
  do
  {
    a10 = v12;
    std::vector<MTChordGestureSet>::__destroy_vector::operator()[abi:ne200100](&a10);
    v12 -= 3;
    v13 += 24;
  }

  while (v13);
  _Unwind_Resume(a1);
}

void MTChordTable::clearAllChordsInTable(MTChordTable *this)
{
  v1 = (this + 32);
  (*(*this + 16))(this);
  v2 = 14;
  v3 = v1;
  do
  {
    v4 = *v3;
    v3 += 3;
    std::vector<MTChordGestureSet>::__base_destruct_at_end[abi:ne200100](v1, v4);
    v1 = v3;
    --v2;
  }

  while (v2);
}

void MTChordTable::~MTChordTable(MTChordTable *this)
{
  *this = &unk_2A24117C8;
  for (i = 344; i != 8; i -= 24)
  {
    v3 = (this + i);
    std::vector<MTChordGestureSet>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

{
  *this = &unk_2A24117C8;
  for (i = 344; i != 8; i -= 24)
  {
    v3 = (this + i);
    std::vector<MTChordGestureSet>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

{
  *this = &unk_2A24117C8;
  for (i = 344; i != 8; i -= 24)
  {
    v3 = (this + i);
    std::vector<MTChordGestureSet>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  MEMORY[0x29ED547D0](this, 0x10B1C40610187EELL);
}

uint64_t MTChordTable::getFingerMaskForLookup(MTChordTable *this, MTHandStatistics *a2)
{
  v2 = *(this + 7);
  v3 = 296;
  if (v2 == 1)
  {
    v3 = 300;
  }

  v4 = v2 == 2;
  v5 = 220;
  if (!v4)
  {
    v5 = v3;
  }

  return *(a2 + v5);
}

uint64_t MTChordTable::fingerComboToChordSpecifier(MTChordTable *this, char a2)
{
  if ((a2 & 0x1F) == 0)
  {
    return 0;
  }

  v2.i64[0] = 0x100000001;
  v2.i64[1] = 0x100000001;
  v3 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(a2), xmmword_29D3D6900), v2));
  if (a2)
  {
    return v3 + 5;
  }

  else
  {
    return v3;
  }
}

char *MTChordTable::getChordVectForCombo(MTChordTable *this, char a2)
{
  if ((a2 & 0x1F) == 0)
  {
    return this + 32;
  }

  v2.i64[0] = 0x100000001;
  v2.i64[1] = 0x100000001;
  v3 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(a2), xmmword_29D3D6900), v2));
  v4 = v3 + 5;
  if ((a2 & 1) == 0)
  {
    v4 = v3;
  }

  if (!v4)
  {
    return this + 32;
  }

  v5 = this + 24 * v4 + 32;
  v6 = *(v5 + 1) - *v5;
  if (!v6)
  {
LABEL_10:
    if (v4 - 5 <= 4)
    {
      v5 = this + 24 * v4 - 64;
      v12 = *(v5 + 1) - *v5;
      if (v12)
      {
        v13 = 0;
        v14 = 0xEEEEEEEEEEEEEEEFLL * (v12 >> 4);
        v15 = 1;
        while (1)
        {
          v16 = *(*v5 + 240 * v13 + 232);
          if (!v16 || (*(this + 6) & v16) != 0)
          {
            break;
          }

          v13 = v15;
          v11 = v14 > v15++;
          if (!v11)
          {
            return this + 32;
          }
        }

        return v5;
      }
    }

    return this + 32;
  }

  v7 = 0;
  v8 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 4);
  v9 = 1;
  while (1)
  {
    v10 = *(*v5 + 240 * v7 + 232);
    if (!v10 || (*(this + 6) & v10) != 0)
    {
      return v5;
    }

    v7 = v9;
    v11 = v8 > v9++;
    if (!v11)
    {
      goto LABEL_10;
    }
  }
}

uint64_t MTChordTable::hasTwoFingerOrientationEvents(MTChordTable *this)
{
  v2 = *(this + 10);
  v1 = *(this + 11);
  if (v1 == v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = (v2 + 240 * v4);
    v7 = *(v6 + 58);
    if (v7 && (*(this + 6) & v7) == 0)
    {
      goto LABEL_7;
    }

    if (MTChordGestureSet::hasEnabledOrientationEvents(v6, this))
    {
      return 1;
    }

    v2 = *(this + 10);
    v1 = *(this + 11);
LABEL_7:
    v4 = v5;
    if (0xEEEEEEEEEEEEEEEFLL * ((v1 - v2) >> 4) <= v5++)
    {
      return 0;
    }
  }
}

uint64_t MTChordTable::getMinThumbSpecificFingerCount(MTChordTable *this)
{
  v2 = this + 32;
  v3 = 6;
  while (1)
  {
    v4 = &v2[24 * v3];
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5 != *v4)
    {
      break;
    }

LABEL_9:
    if (++v3 == 10)
    {
      return 0;
    }
  }

  v7 = 0;
  v8 = 1;
  while (1)
  {
    v9 = (v6 + 240 * v7);
    v10 = *(v9 + 58);
    if (v10 && (*(this + 6) & v10) == 0)
    {
      goto LABEL_8;
    }

    if (!MTChordGestureSet::isEmpty(v9))
    {
      return (v3 - 4);
    }

    v6 = *v4;
    v5 = *(v4 + 1);
LABEL_8:
    v7 = v8;
    if (0xEEEEEEEEEEEEEEEFLL * ((v5 - v6) >> 4) <= v8++)
    {
      goto LABEL_9;
    }
  }
}

uint64_t MTChordTable::findMatchingChord(MTChordTable *this, char a2, int a3)
{
  ChordVectForCombo = MTChordTable::getChordVectForCombo(this, a2);
  v6 = *ChordVectForCombo;
  v7 = *(ChordVectForCombo + 1);
  result = 0;
  v9 = v7 - v6;
  if (v9)
  {
    v10 = 0xEEEEEEEEEEEEEEEFLL * (v9 >> 4);
    v11 = 1;
    v12 = 3.4028e38;
    do
    {
      if (*(v6 + 160) == *(v6 + 168))
      {
        v13 = (*(v6 + 120) >> 6) & 1;
      }

      else
      {
        v13 = 0;
      }

      v14 = *(v6 + 232);
      if (v14)
      {
        v15 = (*(this + 6) & v14) != 0;
      }

      else
      {
        v15 = 1;
      }

      v16 = v13 == a3 && v15;
      if (v16 && v12 > 0.0)
      {
        v12 = 0.0;
        result = v6;
      }

      v6 += 240;
    }

    while (v10 > v11++);
  }

  return result;
}

MTChordGestureSet *MTChordTable::copyChordIntoTable(MTChordTable *this, MTChordGestureSet *a2)
{
  v2 = *(a2 + 56);
  v3 = *(this + 2);
  *(a2 + 51) = *(this + 2);
  *(a2 + 26) = v3;
  if (v2 <= 0xD)
  {
    v4 = this + 24 * v2;
    v5 = *(v4 + 5);
    if (v5 >= *(v4 + 6))
    {
      v6 = std::vector<MTChordGestureSet>::__emplace_back_slow_path<MTChordGestureSet const&>((v4 + 32), a2);
    }

    else
    {
      MTChordGestureSet::MTChordGestureSet(*(v4 + 5), a2);
      v6 = v5 + 240;
      *(v4 + 5) = v5 + 240;
    }

    *(v4 + 5) = v6;
    return (v6 - 240);
  }

  return a2;
}

void std::vector<MTChordGestureSet>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MTChordGestureSet>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<MTChordGestureSet>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<MTChordGestureSet>>::destroy[abi:ne200100]<MTChordGestureSet,0>(a1, i))
  {
    i -= 240;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<MTChordGestureSet>>::destroy[abi:ne200100]<MTChordGestureSet,0>(uint64_t a1, uint64_t a2)
{
  v8 = (a2 + 160);
  std::vector<MTSlideGesture>::__destroy_vector::operator()[abi:ne200100](&v8);
  v3 = *(a2 + 128);
  if (v3)
  {
    *(a2 + 136) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 96);
  if (v4)
  {
    *(a2 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 64);
  if (v5)
  {
    *(a2 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    *(a2 + 40) = v6;
    operator delete(v6);
  }

  v7 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v7;
    operator delete(v7);
  }
}

void std::vector<MTSlideGesture>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MTSlideGesture>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<MTSlideGesture>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 160);
      v4 -= 160;
      v5 = v6;
      if (v6)
      {
        *(v2 - 152) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t std::vector<MTChordGestureSet>::__emplace_back_slow_path<MTChordGestureSet const&>(uint64_t a1, const MTChordGestureSet *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) >= 0x88888888888888)
  {
    v6 = 0x111111111111111;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTChordGestureSet>>(a1, v6);
  }

  v13 = 0;
  v14 = 240 * v2;
  MTChordGestureSet::MTChordGestureSet((240 * v2), a2);
  v15 = 240 * v2 + 240;
  v7 = *(a1 + 8);
  v8 = (240 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTChordGestureSet>,MTChordGestureSet*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<MTChordGestureSet>::~__split_buffer(&v13);
  return v12;
}

void sub_29D396210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<MTChordGestureSet>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTChordGestureSet>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x111111111111112)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTChordGestureSet>,MTChordGestureSet*>(uint64_t a1, MTChordGestureSet *a2, MTChordGestureSet *a3, MTChordGestureSet *this)
{
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0xAAAAAAAAAAAAAA00;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      MTChordGestureSet::MTChordGestureSet(this, v7);
      v7 = (v7 + 240);
      this = (v12 + 240);
      v12 = (v12 + 240);
    }

    while (v7 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<MTChordGestureSet>>::destroy[abi:ne200100]<MTChordGestureSet,0>(a1, v5);
      v5 = (v5 + 240);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTChordGestureSet>,MTChordGestureSet*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTChordGestureSet>,MTChordGestureSet*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MTChordGestureSet>,MTChordGestureSet*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MTChordGestureSet>,MTChordGestureSet*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 240;
      std::allocator_traits<std::allocator<MTChordGestureSet>>::destroy[abi:ne200100]<MTChordGestureSet,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<MTChordGestureSet>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MTChordGestureSet>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MTChordGestureSet>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 240;
    std::allocator_traits<std::allocator<MTChordGestureSet>>::destroy[abi:ne200100]<MTChordGestureSet,0>(v5, v4 - 240);
  }
}

uint64_t MTChordCycling::slideGestureOngoing(MTChordCycling *this, double a2)
{
  v2 = *(this + 158);
  if (v2)
  {
    if (*(this + 672) == 1)
    {
      LOBYTE(v2) = *(this + 675) ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

BOOL MTGestureConfig::slideOrDragOngoing(MTGestureConfig *this, double a2, int a3)
{
  v6 = *(this + 7);
  if (v6 && ((*(*v6 + 40))(v6, a2) & 1) != 0)
  {
    return 1;
  }

  v8 = *(this + 9);

  return MTTapDragManager::shouldSustainDrag(v8, a2, a3);
}

MTChordGestureSet *MTGestureConfig::copyChordIntoHandTable(uint64_t a1, int a2, MTChordGestureSet *a3)
{
  if (a2 == 1 && (v3 = *(a1 + 56)) != 0)
  {
    return MTChordTable::copyChordIntoTable(v3, a3);
  }

  else
  {
    return a3;
  }
}

uint64_t MTGestureConfig::getChordTableForHand(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0;
  }
}

void MTGestureConfig::~MTGestureConfig(MTGestureConfig *this)
{
  *this = &unk_2A2411808;
  v2 = *(this + 7);
  if (v2)
  {
    MTChordTable::clearAllChordsInTable(v2);
    v3 = *(this + 7);
    if (v3)
    {
      (*(*v3 + 8))(v3);
      *(this + 7) = 0;
    }
  }

  v4 = *(this + 8);
  if (v4)
  {
    (*(*v4 + 8))(v4);
    *(this + 8) = 0;
  }

  std::__tree<std::__value_type<std::string,std::vector<MTActionEvent>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MTActionEvent>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MTActionEvent>>>>::destroy(this + 32, *(this + 5));
  std::__tree<std::__value_type<std::string,MTGestureMotionParams>,std::__map_value_compare<std::string,std::__value_type<std::string,MTGestureMotionParams>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTGestureMotionParams>>>::destroy(this + 8, *(this + 2));
}

{
  MTGestureConfig::~MTGestureConfig(this);

  JUMPOUT(0x29ED547D0);
}

void MTGestureConfig::clearAllChords(MTGestureConfig *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    MTChordTable::clearAllChordsInTable(v1);
  }
}

void MTGestureConfig::MTGestureConfig(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1[2] = 0;
  a1[1] = a1 + 2;
  *a1 = &unk_2A2411808;
  a1[3] = 0;
  a1[5] = 0;
  a1[4] = a1 + 5;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = a5;
  mtgp_InitUSBKeyNames();
  if ((a2 - 1000) <= 0x3E7)
  {
    operator new();
  }

  if ((a2 - 2000) <= 0x3E7)
  {
    operator new();
  }

  operator new();
}

void sub_29D3967C0(_Unwind_Exception *a1)
{
  MEMORY[0x29ED547D0](v3, 0x10B1C406AFB875BLL);
  std::__tree<std::__value_type<std::string,std::vector<MTActionEvent>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MTActionEvent>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MTActionEvent>>>>::destroy(v2, *v5);
  std::__tree<std::__value_type<std::string,MTGestureMotionParams>,std::__map_value_compare<std::string,std::__value_type<std::string,MTGestureMotionParams>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTGestureMotionParams>>>::destroy(v1, *v4);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,MTGestureMotionParams>,std::__map_value_compare<std::string,std::__value_type<std::string,MTGestureMotionParams>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTGestureMotionParams>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,MTGestureMotionParams>,std::__map_value_compare<std::string,std::__value_type<std::string,MTGestureMotionParams>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTGestureMotionParams>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,MTGestureMotionParams>,std::__map_value_compare<std::string,std::__value_type<std::string,MTGestureMotionParams>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTGestureMotionParams>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<MTActionEvent>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MTActionEvent>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MTActionEvent>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<MTActionEvent>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MTActionEvent>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MTActionEvent>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<MTActionEvent>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MTActionEvent>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MTActionEvent>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<MTActionEvent>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<MTActionEvent>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

double mtgp_InitUSBKeyNames()
{
  gUSBKeyNames = @"NULL";
  *algn_2A17A1ED8 = @"ErrorRollOver";
  qword_2A17A1EE0 = @"POSTFail";
  unk_2A17A1EE8 = @"ErrorUndefined";
  qword_2A17A1EF0 = @"A";
  unk_2A17A1EF8 = @"B";
  qword_2A17A1F00 = @"C";
  unk_2A17A1F08 = @"D";
  qword_2A17A1F10 = @"E";
  unk_2A17A1F18 = @"F";
  qword_2A17A1F20 = @"G";
  unk_2A17A1F28 = @"H";
  qword_2A17A1F30 = @"I";
  unk_2A17A1F38 = @"J";
  qword_2A17A1F40 = @"K";
  unk_2A17A1F48 = @"L";
  qword_2A17A1F50 = @"M";
  unk_2A17A1F58 = @"N";
  qword_2A17A1F60 = @"O";
  unk_2A17A1F68 = @"P";
  qword_2A17A1F70 = @"Q";
  unk_2A17A1F78 = @"R";
  qword_2A17A1F80 = @"S";
  unk_2A17A1F88 = @"T";
  qword_2A17A1F90 = @"U";
  unk_2A17A1F98 = @"V";
  qword_2A17A1FA0 = @"W";
  unk_2A17A1FA8 = @"X";
  qword_2A17A1FB0 = @"Y";
  unk_2A17A1FB8 = @"Z";
  qword_2A17A1FC0 = @"1";
  unk_2A17A1FC8 = @"2";
  qword_2A17A1FD0 = @"3";
  unk_2A17A1FD8 = @"4";
  qword_2A17A1FE0 = @"5";
  unk_2A17A1FE8 = @"6";
  qword_2A17A1FF0 = @"7";
  unk_2A17A1FF8 = @"8";
  qword_2A17A2000 = @"9";
  unk_2A17A2008 = @"0";
  qword_2A17A2010 = @"Enter";
  unk_2A17A2018 = @"Escape";
  qword_2A17A2020 = @"BackSpace";
  unk_2A17A2028 = @"Tab";
  qword_2A17A2030 = @"Space";
  unk_2A17A2038 = @"-";
  qword_2A17A2040 = @"=";
  unk_2A17A2048 = @"[";
  qword_2A17A2050 = @"]";
  unk_2A17A2058 = @"\";
  qword_2A17A2060 = @"#";
  unk_2A17A2068 = @";";
  qword_2A17A2070 = @"'";
  qword_2A17A2080 = @",";
  unk_2A17A2088 = @".";
  qword_2A17A2090 = @"/";
  unk_2A17A2098 = @"CapsLock";
  qword_2A17A20A0 = @"F1";
  unk_2A17A20A8 = @"F2";
  qword_2A17A20B0 = @"F3";
  unk_2A17A20B8 = @"F4";
  qword_2A17A20C0 = @"F5";
  unk_2A17A20C8 = @"F6";
  qword_2A17A20D0 = @"F7";
  qword_2A17A20D8 = @"F8";
  qword_2A17A20E0 = @"F9";
  qword_2A17A20E8 = @"F10";
  qword_2A17A20F0 = @"F11";
  qword_2A17A20F8 = @"F12";
  qword_2A17A2100 = @"PrintScreen";
  qword_2A17A2108 = @"ScrollLock";
  qword_2A17A2110 = @"Pause";
  qword_2A17A2118 = @"Insert";
  qword_2A17A2120 = @"Home";
  qword_2A17A2128 = @"PageUp";
  qword_2A17A2130 = @"Delete";
  qword_2A17A2138 = @"End";
  qword_2A17A2140 = @"PageDown";
  qword_2A17A2148 = @"Right";
  qword_2A17A2150 = @"Left";
  qword_2A17A2158 = @"Down";
  qword_2A17A2160 = @"Up";
  qword_2A17A2168 = @"NumLock";
  qword_2A17A2170 = @"Numpad/";
  qword_2A17A2178 = @"Numpad*";
  qword_2A17A2180 = @"Numpad-";
  qword_2A17A2188 = @"Numpad+";
  qword_2A17A2190 = @"NumpadEnter";
  qword_2A17A2198 = @"Numpad1";
  qword_2A17A21A0 = @"Numpad2";
  qword_2A17A21A8 = @"Numpad3";
  qword_2A17A21B0 = @"Numpad4";
  qword_2A17A21B8 = @"Numpad5";
  qword_2A17A21C0 = @"Numpad6";
  qword_2A17A21C8 = @"Numpad7";
  qword_2A17A21D0 = @"Numpad8";
  qword_2A17A21D8 = @"Numpad9";
  qword_2A17A21E0 = @"Numpad0";
  qword_2A17A21E8 = @"Numpad.";
  qword_2A17A21F0 = @"NonUS\\|";
  qword_2A17A21F8 = @"Application";
  qword_2A17A2200 = @"Power";
  qword_2A17A2208 = @"Keypad=";
  qword_2A17A2210 = @"F13";
  qword_2A17A2218 = @"F14";
  qword_2A17A2220 = @"F15";
  qword_2A17A2228 = @"F16";
  qword_2A17A2230 = @"F17";
  qword_2A17A2238 = @"F18";
  qword_2A17A2240 = @"F19";
  qword_2A17A2248 = @"F20";
  qword_2A17A2250 = @"F21";
  qword_2A17A2258 = @"F22";
  qword_2A17A2260 = @"F23";
  qword_2A17A2268 = @"F24";
  qword_2A17A2270 = @"Execute";
  qword_2A17A2278 = @"Help";
  qword_2A17A2280 = @"Menu";
  qword_2A17A2288 = @"Select";
  qword_2A17A2290 = @"Stop";
  qword_2A17A2298 = @"Again";
  qword_2A17A22A0 = @"Undo";
  qword_2A17A22A8 = @"Cut";
  qword_2A17A22B0 = @"Copy";
  qword_2A17A22B8 = @"Paste";
  qword_2A17A22C0 = @"Find";
  qword_2A17A22C8 = @"Mute";
  qword_2A17A22D0 = @"VolumeUp";
  qword_2A17A22D8 = @"VolumeDown";
  qword_2A17A22E0 = @"LockingCapsLock";
  qword_2A17A22E8 = @"LockingNumLock";
  qword_2A17A22F0 = @"LockingScrollLock";
  qword_2A17A22F8 = @"Keypad,";
  qword_2A17A2300 = @"Keypad=";
  qword_2A17A2308 = @"International1";
  qword_2A17A2310 = @"International2";
  qword_2A17A2318 = @"International3";
  qword_2A17A2320 = @"International4";
  qword_2A17A2328 = @"International5";
  qword_2A17A2330 = @"International6";
  qword_2A17A2338 = @"International7";
  qword_2A17A2340 = @"International8";
  qword_2A17A2348 = @"International9";
  qword_2A17A2350 = @"LANG1";
  qword_2A17A2358 = @"LANG2";
  qword_2A17A2360 = @"LANG3";
  qword_2A17A2368 = @"LANG4";
  qword_2A17A2370 = @"LANG5";
  qword_2A17A2378 = @"LANG6";
  qword_2A17A2380 = @"LANG7";
  qword_2A17A2388 = @"LANG8";
  qword_2A17A2390 = @"LANG9";
  qword_2A17A2398 = @"AlternateErase";
  qword_2A17A23A0 = @"SysReq_Attention";
  qword_2A17A23A8 = @"Cancel";
  qword_2A17A23B0 = @"Clear";
  qword_2A17A23B8 = @"Prior";
  qword_2A17A23C0 = @"Return";
  qword_2A17A23C8 = @"Separator";
  qword_2A17A23D0 = @"Out";
  qword_2A17A23D8 = @"Oper";
  qword_2A17A23E0 = @"Clear_Again";
  qword_2A17A23E8 = @"CrSel_Props";
  qword_2A17A23F0 = @"ExSel";
  qword_2A17A25C8 = 0;
  result = 0.0;
  xmmword_2A17A25A8 = 0u;
  unk_2A17A25B8 = 0u;
  xmmword_2A17A2588 = 0u;
  unk_2A17A2598 = 0u;
  xmmword_2A17A2568 = 0u;
  unk_2A17A2578 = 0u;
  xmmword_2A17A2548 = 0u;
  unk_2A17A2558 = 0u;
  xmmword_2A17A2528 = 0u;
  unk_2A17A2538 = 0u;
  xmmword_2A17A2508 = 0u;
  unk_2A17A2518 = 0u;
  xmmword_2A17A24E8 = 0u;
  unk_2A17A24F8 = 0u;
  xmmword_2A17A24C8 = 0u;
  unk_2A17A24D8 = 0u;
  xmmword_2A17A24A8 = 0u;
  unk_2A17A24B8 = 0u;
  xmmword_2A17A2488 = 0u;
  unk_2A17A2498 = 0u;
  xmmword_2A17A2468 = 0u;
  unk_2A17A2478 = 0u;
  xmmword_2A17A2448 = 0u;
  unk_2A17A2458 = 0u;
  xmmword_2A17A2428 = 0u;
  unk_2A17A2438 = 0u;
  xmmword_2A17A2408 = 0u;
  unk_2A17A2418 = 0u;
  xmmword_2A17A23F8 = 0u;
  qword_2A17A25D0 = @"LeftCtrl";
  qword_2A17A25D8 = @"LeftShift";
  qword_2A17A25E0 = @"LeftAlt";
  qword_2A17A25E8 = @"LeftGUI";
  qword_2A17A25F0 = @"RightCtrl";
  qword_2A17A25F8 = @"RightShift";
  qword_2A17A2600 = @"RightAlt";
  qword_2A17A2608 = @"RightGUI";
  xmmword_2A17A2610 = 0u;
  xmmword_2A17A2620 = 0u;
  xmmword_2A17A2630 = 0u;
  xmmword_2A17A2640 = 0u;
  xmmword_2A17A2650 = 0u;
  xmmword_2A17A2660 = 0u;
  xmmword_2A17A2670 = 0u;
  xmmword_2A17A2680 = 0u;
  xmmword_2A17A2690 = 0u;
  xmmword_2A17A26A0 = 0u;
  xmmword_2A17A26B0 = 0u;
  xmmword_2A17A26C0 = 0u;
  return result;
}

uint64_t MTAppendGestureStartedToCollectionEvent()
{
  IOHIDEventGetIntegerValue();
  IOHIDEventSetIntegerValue();
  return 0;
}

uint64_t MTAppendGestureEndedToCollectionEvent()
{
  IOHIDEventGetIntegerValue();
  IOHIDEventSetIntegerValue();
  return 0;
}

uint64_t MTAppendRelativeMouseEvent()
{
  v0 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();
  MouseEvent = IOHIDEventCreateMouseEvent();
  if (MouseEvent)
  {
    v2 = MouseEvent;
    IOHIDEventAppendEvent();
    CFRelease(v2);
  }

  return 0;
}

uint64_t MTAppendMouseButtonEvent()
{
  v0 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();
  ButtonEvent = IOHIDEventCreateButtonEvent();
  if (ButtonEvent)
  {
    v2 = ButtonEvent;
    IOHIDEventAppendEvent();
    CFRelease(v2);
  }

  return 0;
}

uint64_t MTAppendVelocityEvent()
{
  v0 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();
  VelocityEvent = IOHIDEventCreateVelocityEvent();
  if (VelocityEvent)
  {
    v2 = VelocityEvent;
    IOHIDEventAppendEvent();
    CFRelease(v2);
  }

  return 0;
}

uint64_t MTAppendTranslationEvent(uint64_t a1, int a2)
{
  v3 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();
  TranslationEvent = IOHIDEventCreateTranslationEvent();
  v5 = TranslationEvent;
  if (a2 <= 15)
  {
    if (a2 != 2)
    {
      if (a2 == 8)
      {
        if (!TranslationEvent)
        {
          return 0;
        }

        goto LABEL_15;
      }

LABEL_10:
      if (!TranslationEvent)
      {
        return 0;
      }

      goto LABEL_15;
    }

    if (!TranslationEvent)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (a2 != 16)
  {
    if (a2 == 32)
    {
      if (!TranslationEvent)
      {
        return 0;
      }

      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (TranslationEvent)
  {
LABEL_15:
    IOHIDEventSetPhase();
    IOHIDEventAppendEvent();
    CFRelease(v5);
  }

  return 0;
}

uint64_t MTAppendFluidSwipeEvent(double a1, float a2, uint64_t a3, int a4)
{
  switch(a4)
  {
    case 27:
      v8 = *MEMORY[0x29EDB8ED8];
      mach_absolute_time();
      FluidTouchGestureEvent = IOHIDEventCreateFluidTouchGestureEvent();
      break;
    case 23:
      v7 = *MEMORY[0x29EDB8ED8];
      mach_absolute_time();
      FluidTouchGestureEvent = IOHIDEventCreateDockSwipeEvent();
      break;
    case 16:
      v5 = *MEMORY[0x29EDB8ED8];
      mach_absolute_time();
      FluidTouchGestureEvent = IOHIDEventCreateNavigationSwipeEvent();
      break;
    default:
      return 0;
  }

  v9 = FluidTouchGestureEvent;
  if (FluidTouchGestureEvent)
  {
    IOHIDEventSetPhase();
    if (a2 != 0.0)
    {
      MTAppendVelocityEvent();
    }

    IOHIDEventAppendEvent();
    CFRelease(v9);
  }

  return 0;
}

uint64_t MTAppendSwipeEvent(uint64_t a1, int a2)
{
  if ((a2 - 1) <= 7)
  {
    v2 = *&asc_29D3D693C[4 * (a2 - 1)];
  }

  v3 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();
  SwipeEvent = IOHIDEventCreateSwipeEvent();
  if (SwipeEvent)
  {
    v5 = SwipeEvent;
    IOHIDEventAppendEvent();
    CFRelease(v5);
  }

  return 0;
}

uint64_t MTAppendForceGestureEvent()
{
  if (!IOHIDEventGetIntegerValue())
  {
    return 3758097090;
  }

  v1 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();
  result = IOHIDEventCreateForceEvent();
  if (result)
  {
    v2 = result;
    IOHIDEventSetPhase();
    IOHIDEventAppendEvent();
    CFRelease(v2);
    return 0;
  }

  return result;
}

uint64_t MTAppendKeyboardEvent()
{
  v0 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  if (KeyboardEvent)
  {
    v2 = KeyboardEvent;
    IOHIDEventAppendEvent();
    CFRelease(v2);
  }

  return 0;
}

uint64_t MTAppendKeystrokeEvent()
{
  MTAppendKeyboardEvent();
  MTAppendKeyboardEvent();
  return 0;
}

uint64_t MTAppendModifierKeyEvent(uint64_t a1, char a2)
{
  if ((a2 & 2) != 0)
  {
    MTAppendKeyboardEvent();
    if ((a2 & 1) == 0)
    {
LABEL_3:
      if ((a2 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      MTAppendKeyboardEvent();
      if ((a2 & 8) == 0)
      {
        return 0;
      }

      goto LABEL_5;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_3;
  }

  MTAppendKeyboardEvent();
  if ((a2 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((a2 & 8) != 0)
  {
LABEL_5:
    MTAppendKeyboardEvent();
  }

  return 0;
}

uint64_t MTAppendZoomToggleEvent()
{
  v0 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();
  ZoomToggleEvent = IOHIDEventCreateZoomToggleEvent();
  if (ZoomToggleEvent)
  {
    v2 = ZoomToggleEvent;
    IOHIDEventAppendEvent();
    CFRelease(v2);
  }

  return 0;
}

uint64_t MTAppendShowDefinitionEvent()
{
  v0 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();
  SymbolicHotKeyEvent = IOHIDEventCreateSymbolicHotKeyEvent();
  if (SymbolicHotKeyEvent)
  {
    v2 = SymbolicHotKeyEvent;
    IOHIDEventSetPhase();
    IOHIDEventAppendEvent();
    CFRelease(v2);
  }

  return 0;
}

uint64_t MTAppendBoundaryScrollEvent()
{
  v0 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();
  BoundaryScrollEvent = IOHIDEventCreateBoundaryScrollEvent();
  if (BoundaryScrollEvent)
  {
    v2 = BoundaryScrollEvent;
    IOHIDEventAppendEvent();
    CFRelease(v2);
  }

  return 0;
}

uint64_t MTAppendScrollEvent()
{
  v0 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();
  ScrollEvent = IOHIDEventCreateScrollEvent();
  if (ScrollEvent)
  {
    v2 = ScrollEvent;
    IOHIDEventSetPhase();
    IOHIDEventAppendEvent();
    CFRelease(v2);
  }

  return 0;
}

uint64_t MTAppendMomentumEnableEvent()
{
  v0 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v2 = VendorDefinedEvent;
    IOHIDEventAppendEvent();
    CFRelease(v2);
  }

  return 0;
}

uint64_t MTAppendOrientationEvent()
{
  v0 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();
  PolarOrientationEvent = IOHIDEventCreatePolarOrientationEvent();
  if (PolarOrientationEvent)
  {
    v2 = PolarOrientationEvent;
    IOHIDEventAppendEvent();
    CFRelease(v2);
  }

  mach_absolute_time();
  v3 = IOHIDEventCreatePolarOrientationEvent();
  if (v3)
  {
    v4 = v3;
    IOHIDEventSetPhase();
    IOHIDEventAppendEvent();
    CFRelease(v4);
  }

  return 0;
}

uint64_t MTAppendOrientationEventWithTranslation(uint64_t a1, int a2)
{
  v3 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();
  PolarOrientationEvent = IOHIDEventCreatePolarOrientationEvent();
  if (PolarOrientationEvent)
  {
    v5 = PolarOrientationEvent;
    IOHIDEventAppendEvent();
    CFRelease(v5);
  }

  mach_absolute_time();
  v6 = IOHIDEventCreatePolarOrientationEvent();
  if (v6)
  {
    v7 = v6;
    IOHIDEventSetPhase();
    MTAppendTranslationEvent(v7, a2);
    IOHIDEventAppendEvent();
    CFRelease(v7);
  }

  return 0;
}

uint64_t MTAppendZoomRotateTranslateEvent(double a1, double a2, float a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  if (a3 <= 0.0)
  {
    v9 = a5 == 16 || a5 == 32;
    goto LABEL_11;
  }

  v9 = a5 == 16 || a5 == 32;
  if ((a7 / a3) == 0.0)
  {
LABEL_11:
    v10 = v9 & MTAppendZoomRotateTranslateEvent_rotate_in_progress;
    if (!a6)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v10 = 1;
  if (!a6)
  {
LABEL_7:
    v11 = v9 & MTAppendZoomRotateTranslateEvent_zoom_in_progress;
    goto LABEL_13;
  }

LABEL_12:
  v11 = 1;
LABEL_13:
  if (a9 | a8)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9 & MTAppendZoomRotateTranslateEvent_translate_in_progress;
  }

  v13 = MEMORY[0x29EDB8ED8];
  if (v10)
  {
    v14 = *MEMORY[0x29EDB8ED8];
    mach_absolute_time();
    RotationEvent = IOHIDEventCreateRotationEvent();
    if (RotationEvent)
    {
      v16 = RotationEvent;
      IOHIDEventSetPhase();
      IOHIDEventAppendEvent();
      CFRelease(v16);
      MTAppendZoomRotateTranslateEvent_rotate_in_progress = !v9;
    }
  }

  if (v11)
  {
    v17 = *v13;
    mach_absolute_time();
    ScaleEvent = IOHIDEventCreateScaleEvent();
    if (ScaleEvent)
    {
      v19 = ScaleEvent;
      IOHIDEventSetPhase();
      IOHIDEventAppendEvent();
      CFRelease(v19);
      MTAppendZoomRotateTranslateEvent_zoom_in_progress = !v9;
    }
  }

  if (v12)
  {
    v20 = *v13;
    mach_absolute_time();
    TranslationEvent = IOHIDEventCreateTranslationEvent();
    if (TranslationEvent)
    {
      v22 = TranslationEvent;
      IOHIDEventSetPhase();
      IOHIDEventAppendEvent();
      CFRelease(v22);
      MTAppendZoomRotateTranslateEvent_translate_in_progress = !v9;
    }
  }

  return 0;
}

void MTSimpleEmbeddedHIDManagerV2::setDeviceDefaultProperties(MTSimpleEmbeddedHIDManagerV2 *this)
{
  (*(*this + 80))(this);
  Service = MTDeviceGetService();
  if (Service)
  {
    CFProperty = IORegistryEntryCreateCFProperty(Service, @"PhysicalDeviceUniqueID", *MEMORY[0x29EDB8ED8], 0);
    if (CFProperty)
    {
      v4 = CFProperty;
      v5 = CFGetTypeID(CFProperty);
      if (v5 == CFStringGetTypeID())
      {
        (*(*this + 568))(this, @"PhysicalDeviceUniqueID", v4);
      }

      CFRelease(v4);
    }
  }

  MTSimpleHIDManager::setDeviceDefaultProperties(this);
}

void MTSimpleEmbeddedHIDManagerV2::~MTSimpleEmbeddedHIDManagerV2(MTSimpleEmbeddedHIDManagerV2 *this)
{
  MTSimpleHIDManager::~MTSimpleHIDManager(this);

  JUMPOUT(0x29ED547D0);
}

void MTActionEvent::MTActionEvent(MTActionEvent *this)
{
  *this = 0;
}

{
  *this = 0;
}

void MTActionEvent::MTActionEvent(MTActionEvent *this, __int16 a2, int a3, __int16 a4)
{
  *this = a2;
  *(this + 1) = a4;
  *(this + 1) = a3;
}

{
  *this = a2;
  *(this + 1) = a4;
  *(this + 1) = a3;
}

void MTActionEvent::MTActionEvent(MTActionEvent *this, const MTActionEvent *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
}

{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
}

_DWORD *MTActionEvent::operator=(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    *result = *a2;
    result[1] = a2[1];
  }

  return result;
}

uint64_t MTActionEvent::getModifierMaskFromKeyCode(MTActionEvent *this)
{
  if ((*(this + 1) & 0xFFF8) == 0xE0)
  {
    return (1 << *(this + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t MTActionEvent::deriveGestureStartedType(MTActionEvent *this)
{
  if ((*this & 0xFFFE) == 0x46)
  {
    return 33;
  }

  else
  {
    return 0;
  }
}

uint64_t MTActionEvent::deriveFluidIOHIDEventType(MTActionEvent *this)
{
  v1 = *this;
  if ((v1 - 36) < 3)
  {
    return dword_29D3D69AC[(v1 - 36)];
  }

  if (v1 == 39)
  {
    return 27;
  }

  return 0;
}

uint64_t MTActionEvent::deriveFlavorForFluidIOHIDEventType(MTActionEvent *this)
{
  v1 = *this;
  v2 = v1 - 37;
  if (v1 == 36)
  {
    v3 = 5;
  }

  else
  {
    v3 = 0;
  }

  if (v2 < 3)
  {
    v3 = 0x200010003uLL >> (16 * v2);
  }

  return v3 & 7;
}

void MTDragManagerEventQueue::MTDragManagerEventQueue(MTDragManagerEventQueue *this)
{
  MTTapDragManager::MTTapDragManager(this);
  *v1 = &unk_2A2411AE0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
}

{
  MTTapDragManager::MTTapDragManager(this);
  *v1 = &unk_2A2411AE0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
}

uint64_t MTDragManagerEventQueue::dispatchModifierUpdates(uint64_t result, uint64_t a2, int a3, int a4, unsigned int a5, int a6)
{
  if (a5 <= 0xF)
  {
    v7 = a5;
    v11 = result;
    do
    {
      v12 = 1 << v7;
      if (((1 << v7) & a3) != 0)
      {
        if (a4)
        {
          v13 = *(v11 + 108) & ~v12;
        }

        else
        {
          v13 = *(v11 + 108) | v12;
        }

        *(v11 + 108) = v13;
        if (v7 > 7)
        {
          result = MTAppendMouseButtonEvent();
        }

        else
        {
          result = MTAppendModifierKeyEvent(a2, v12);
        }
      }

      v7 += a6;
    }

    while (v7 < 0x10);
  }

  return result;
}

uint64_t MTDragManagerEventQueue::autoInsertModifierEvents(uint64_t result, uint64_t a2, unsigned __int16 *a3, int a4)
{
  v5 = result;
  if (!a3)
  {
    v10 = (result + 104);
    v8 = *(result + 112);
    if (!(v8 | *(result + 104)))
    {
      return result;
    }

    v11 = 0;
    v12 = (v8 | *(result + 104)) & ~a4;
    goto LABEL_15;
  }

  v6 = *(a3 + 1);
  v7 = *a3;
  if ((v7 - 129) <= 1)
  {
    v8 = 0;
    v9 = 1 << a3[1];
    if ((a3[1] & 0xFFF8) != 0xE0)
    {
      v9 = 0;
    }

    if (v7 != 130)
    {
      goto LABEL_12;
    }

LABEL_10:
    v13 = 0;
    v14 = *(result + 112);
    v15 = *(result + 108) & ~v9;
    *(result + 108) = v15;
    v8 = v14 & ~v9;
    v16 = ~v15;
    v12 = v6;
    goto LABEL_13;
  }

  v9 = 0;
  if (v7 == 66)
  {
    goto LABEL_10;
  }

  v8 = *(a3 + 1);
LABEL_12:
  v17 = *(result + 112);
  v18 = *(result + 108) | v9;
  *(result + 108) = v18;
  v16 = ~v18;
  v13 = v6 & ~v18;
  v12 = v17 & ~(v9 | v6);
LABEL_13:
  v11 = v16 & a4 | v13;
  if (!v9)
  {
    v10 = (result + 104);
    v12 |= *(result + 104) & ~(v6 | a4);
LABEL_15:
    *v10 = a4;
  }

  *(result + 112) = v8 & ~v12;
  if (v12)
  {
    result = MTDragManagerEventQueue::dispatchModifierUpdates(result, a2, v12, 1, 0xFu, -1);
  }

  if (v11)
  {

    return MTDragManagerEventQueue::dispatchModifierUpdates(v5, a2, v11, 0, 0, 1);
  }

  return result;
}

uint64_t MTDragManagerEventQueue::dispatchFluid(uint64_t a1, unsigned __int16 *a2, uint64_t a3, float a4, float a5, uint64_t a6, uint64_t a7, int *a8)
{
  v14 = *(a1 + 16);
  if (!v14 || !MTForceManagement::whichForceButtonActivated(v14))
  {
    MTDragManagerEventQueue::autoInsertModifierEvents(a1, a3, a2, 0);
  }

  v16 = *a2;
  if (v16 > 0x25)
  {
    if (v16 != 38 && v16 != 39)
    {
LABEL_10:
      v17 = 0;
      goto LABEL_13;
    }

    v17 = 27;
  }

  else
  {
    if (v16 != 36)
    {
      if (v16 == 37)
      {
        v17 = 23;
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v17 = 16;
  }

LABEL_13:
  v18 = *a8;
  v19 = a8[1];
  *&v15 = a4;

  return MTAppendFluidSwipeEvent(v15, a5, a3, v17);
}

uint64_t MTDragManagerEventQueue::dispatch(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4, int *a5, float *a6, int a7)
{
  v14 = MTTapDragManager::dragHandModifiers(a1);
  MTAppendChordMotionCodeToCollectionEvent();
  result = MTDragManagerEventQueue::autoInsertModifierEvents(a1, a3, a2, v14);
  v18 = *a2;
  if (v18 == 32)
  {

    return MTAppendGestureEndedToCollectionEvent();
  }

  if (v18 == 33)
  {

    return MTAppendGestureStartedToCollectionEvent();
  }

  if ((v18 - 35) <= 4)
  {
    if (*a2 > 0x25u)
    {
      if (v18 == 38 || v18 == 39)
      {
        v19 = 27;
        goto LABEL_37;
      }
    }

    else
    {
      if (v18 == 36)
      {
        v19 = 16;
        goto LABEL_37;
      }

      if (v18 == 37)
      {
        v19 = 23;
LABEL_37:

        return MTAppendFluidSwipeEvent(0.0, 0.0, a3, v19);
      }
    }

    v19 = 0;
    goto LABEL_37;
  }

  if ((v18 & 0x80) != 0)
  {
    if (*a2 > 0x85u)
    {
      if (v18 == 134)
      {
        return result;
      }

      if (v18 == 140)
      {

        return MTAppendShowDefinitionEvent();
      }
    }

    else
    {
      if ((v18 - 129) < 2)
      {
        v20 = a2[1];

        return MTAppendKeyboardEvent();
      }

      if (v18 == 133)
      {

        return MTAppendSwipeEvent(a3, a7);
      }
    }

    v21 = a2[1];

    return MTAppendKeystrokeEvent();
  }

  if ((v18 & 0x40) == 0 || (v18 - 65) < 2)
  {
    return result;
  }

  switch(v18)
  {
    case 'I':

      return MTAppendZoomToggleEvent();
    case 'H':
      v39 = a2[1];
      v40 = *(a1 + 108);
      v38 = 66;
      MTDragManagerEventQueue::autoInsertModifierEvents(a1, a3, &v38, v14);
      v38 = 65;
      MTDragManagerEventQueue::autoInsertModifierEvents(a1, a3, &v38, v14);
      v38 = 66;
      return MTDragManagerEventQueue::autoInsertModifierEvents(a1, a3, &v38, v14);
    case 'C':
      v39 = a2[1];
      v40 = *(a1 + 108);
      v38 = 66;
      return MTDragManagerEventQueue::autoInsertModifierEvents(a1, a3, &v38, v14);
  }

  if ((~v18 & 0x44) != 0)
  {
    return result;
  }

  if (!a5)
  {
    if (!a4)
    {
      return result;
    }

    if (v18 == 71)
    {
      *&v16 = *a6;
      *&v17 = a6[1];
      v26 = a6[2];
      v37 = *(a6 + 3);
      v28 = a3;
      v29 = a4;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      goto LABEL_74;
    }

    if (v18 != 70)
    {
      return result;
    }

    goto LABEL_67;
  }

  switch(v18)
  {
    case 'F':
      v32 = -*a5;
      v33 = -a5[1];
LABEL_67:

      return MTAppendScrollEvent();
    case 'N':
      v30 = -*a5;
      v31 = -a5[1];

      return MTAppendBoundaryScrollEvent();
    case 'G':
      v22 = a5[2];
      v23 = a5[3];
      v24 = *a5;
      v25 = a5[1];
      *&v16 = *a6;
      *&v17 = a6[1];
      v26 = a6[2];
      v27 = *(a6 + 3);
      v28 = a3;
      v29 = a4;
LABEL_74:

      return MTAppendZoomRotateTranslateEvent(v16, v17, v26, v28, v29, v22, v23, v24, v25);
    default:
      v34 = *a5;
      v35 = a5[1];
      v36 = *(a1 + 109);

      return MTAppendRelativeMouseEvent();
  }
}

uint64_t MTGesture::dispatchEvents(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v9 = *a1;
  if (a1[1] == *a1)
  {
    return 0;
  }

  result = 0;
  v20 = 0;
  do
  {
    (*(*a2 + 24))(a2, v9 + 8 * result, a3, a4, a5, a6, a7, a8, a9);
    v9 = *a1;
    result = ++v20;
  }

  while (v20 < ((a1[1] - *a1) >> 3));
  return result;
}

uint64_t MTDragManagerEventQueue::enableAutoReleaseOfMultiFingerDrag(uint64_t this)
{
  if (*(this + 109))
  {
    *(this + 104) |= 0x100u;
  }

  return this;
}

uint64_t MTDragManagerEventQueue::forceButtonChange(uint64_t a1, uint64_t a2)
{
  v4 = MTTapDragManager::dragHandModifiers(a1);
  v6 = 0;
  MTDragManagerEventQueue::autoInsertModifierEvents(a1, a2, &v6, v4);
  result = (**a1)(a1);
  if (result)
  {
    if (*(a1 + 24) >= 2)
    {
      *(a1 + 9) = 1;
    }
  }

  return result;
}

uint64_t MTDragManagerEventQueue::ready2autoReleaseModifiers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 112) | *(a1 + 104))
  {
    return (*(*a2 + 16))(a2, a3) ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t MTDragManagerEventQueue::serviceEventQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (*(a1 + 24) == 1)
  {
    return MTTapDragManager::sendWaitingClickAtHalfTimeout(a1, a2, a4, a5) ^ 1;
  }

  if (*(a1 + 108) && *(a1 + 112) | *(a1 + 104) && ((*(*a3 + 16))(a3, a4) & 1) == 0)
  {
    MTDragManagerEventQueue::autoInsertModifierEvents(a1, a2, 0, 0);
    if (((**a1)(a1) & 1) == 0)
    {
      MTTapDragManager::clearCycle(a1);
    }
  }

  return *(a1 + 108) != 0;
}

uint64_t MTDragManagerEventQueue::startMomentum(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 1268) = a3;
  *(a1 + 1264) = 1;
  return MTAppendMomentumEnableEvent();
}

uint64_t MTDragManagerEventQueue::stopMomentum(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 1268) = a3;
  *(a1 + 1264) = 0;
  return MTAppendMomentumEnableEvent();
}

uint64_t MTTrackpadEmbeddedHIDManager::initialize(MTModeSwitcher *a1, uint64_t a2, CFTypeRef cf, int a4, int a5)
{
  *(a1 + 354) = 0;
  *(a1 + 176) = 0;
  *(a1 + 89) = 0;
  return MTTrackpadHIDManager::initialize(a1, a2, cf, a4, a5);
}

void MTTrackpadEmbeddedHIDManager::finalize(MTTrackpadEmbeddedHIDManager *this)
{
  v2 = *(this + 45);
  if (v2)
  {
    MTPowerLogger::release(v2);
    *(this + 45) = 0;
  }

  MTTrackpadHIDManager::finalize(this);
}

const void *MTTrackpadEmbeddedHIDManager::setDeviceAccelerationData(MTTrackpadEmbeddedHIDManager *this, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"HIDPointerAccelerationMultiplier");
  if (Value)
  {
    (*(*this + 568))(this, @"HIDPointerAccelerationMultiplier", Value);
  }

  return MTTrackpadHIDManager::setDeviceAccelerationData(this, theDict);
}

void MTTrackpadEmbeddedHIDManager::setPluginDefaultProperties(MTTrackpadEmbeddedHIDManager *this)
{
  MTTrackpadHIDManager::setPluginDefaultProperties(this);
  if ((*(*this + 80))(this))
  {
    Service = MTDeviceGetService();
    if (Service)
    {
      CFProperty = IORegistryEntryCreateCFProperty(Service, @"NeedsHostState", *MEMORY[0x29EDB8ED8], 0);
      if (CFProperty)
      {
        v4 = CFProperty;
        v5 = CFGetTypeID(CFProperty);
        if (v5 == CFBooleanGetTypeID())
        {
          (*(*this + 568))(this, @"NeedsHostState", v4);
          if (v4 == *MEMORY[0x29EDB8F00])
          {
            operator new();
          }
        }

        CFRelease(v4);
      }
    }
  }
}

uint64_t MTTrackpadEmbeddedHIDManager::setDeviceDefaultProperties(MTTrackpadEmbeddedHIDManager *this)
{
  if ((*(this + 160) & 0x20) != 0)
  {
    (*(*this + 352))(this);
  }

  *(this + 126) = 1;
  v2 = *(*this + 744);

  return v2(this);
}

CFDictionaryRef MTTrackpadEmbeddedHIDManager::copyProperty(CFDictionaryRef *this, const __CFString *a2)
{
  v3 = MTTrackpadEmbeddedHIDManager::renameUserFacingKeys(this, a2);
  v10 = 0;
  v4 = (*(*this + 105))(this, &v10);
  if (!v4)
  {
    return MTTrackpadHIDManager::copyProperty(this, v3);
  }

  v5 = v4;
  for (i = 0; ; i += 16)
  {
    if (CFStringCompare(v3, *(v10 + i), 0) == kCFCompareEqualTo)
    {
      Value = CFDictionaryGetValue(this[43], v3);
      if (Value)
      {
        break;
      }
    }

    if (!--v5)
    {
      return MTTrackpadHIDManager::copyProperty(this, v3);
    }
  }

  v8 = Value;
  CFRetain(Value);
  return v8;
}

__CFString *MTTrackpadEmbeddedHIDManager::renameUserFacingKeys(MTTrackpadEmbeddedHIDManager *this, CFStringRef theString1)
{
  if (CFStringCompare(theString1, @"TapToClickEnabled", 0) == kCFCompareEqualTo)
  {
    return @"Clicking";
  }

  if (CFStringCompare(theString1, @"TwoFingersSecondaryClickEnabled", 0) == kCFCompareEqualTo)
  {
    return @"TrackpadRightClick";
  }

  if (CFStringCompare(theString1, @"DoubleTapToDragEnabled", 0) == kCFCompareEqualTo)
  {
    return @"Dragging";
  }

  if (CFStringCompare(theString1, @"DragLockEnabled", 0) == kCFCompareEqualTo)
  {
    return @"DragLock";
  }

  if (CFStringCompare(theString1, @"PrimaryTrackpadCanBeDisabled", 0))
  {
    return theString1;
  }

  return @"USBMouseStopsTrackpad";
}

uint64_t MTTrackpadEmbeddedHIDManager::setProperty(MTTrackpadEmbeddedHIDManager *this, const __CFString *a2, const void *a3)
{
  v5 = MTTrackpadEmbeddedHIDManager::renameUserFacingKeys(this, a2);

  return MTTrackpadHIDManager::setProperty(this, v5, a3);
}

uint64_t MTTrackpadEmbeddedHIDManager::setPropertyInternal(uint64_t a1, int a2, CFTypeRef cf, int a4)
{
  v37 = *MEMORY[0x29EDCA608];
  if (a2 <= 78)
  {
    switch(a2)
    {
      case 9:
        v8 = MTLoggingPlugin();
        result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        if (result)
        {
          goto LABEL_27;
        }

        break;
      case 18:
        v8 = MTLoggingPlugin();
        result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          break;
        }

        goto LABEL_27;
      case 43:
        v8 = MTLoggingPlugin();
        result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        if (result)
        {
LABEL_27:
          v31 = 136315650;
          v32 = "[Error] ";
          v33 = 2080;
          v34 = "MTTrackpadEmbeddedHIDManager::";
          v35 = 2080;
          v36 = "setPropertyInternal";
          _os_log_impl(&dword_29D381000, v8, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unsupported", &v31, 0x20u);
          goto LABEL_28;
        }

        break;
      default:
        goto LABEL_32;
    }

LABEL_29:
    v18 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (a2 <= 80)
  {
    if (a2 != 79)
    {
      if (!cf)
      {
        goto LABEL_28;
      }

      goto LABEL_19;
    }

    if (!cf)
    {
      goto LABEL_28;
    }

    v10 = CFGetTypeID(cf);
    if (v10 != CFBooleanGetTypeID())
    {
LABEL_19:
      v11 = CFGetTypeID(cf);
      if (v11 == CFDictionaryGetTypeID())
      {
        v12 = *(a1 + 353);
        Value = CFDictionaryGetValue(cf, @"DigitizerSurfaceCovered");
        v16 = Value && (v14 = Value, v15 = CFGetTypeID(Value), v15 == CFBooleanGetTypeID()) && v14 == *MEMORY[0x29EDB8F00];
        *(a1 + 353) = v16;
        v22 = *(a1 + 354);
        v23 = CFDictionaryGetValue(cf, @"ScreenOn");
        v26 = !v23 || (v24 = v23, v25 = CFGetTypeID(v23), v25 != CFBooleanGetTypeID()) || v24 != *MEMORY[0x29EDB8F00];
        *(a1 + 354) = v26;
        v27 = *(a1 + 356);
        LOWORD(v31) = 0;
        v28 = CFDictionaryGetValue(cf, @"DeviceOrientation");
        if (v28)
        {
          v29 = v28;
          v30 = CFGetTypeID(v28);
          if (v30 == CFNumberGetTypeID())
          {
            if (CFNumberGetValue(v29, kCFNumberSInt16Type, &v31))
            {
              *(a1 + 356) = v31;
            }
          }
        }

        if (v12 != *(a1 + 353) || v22 != *(a1 + 354) || v27 != *(a1 + 356) || (a4 & 1) != 0 || (*(a1 + 352) & 1) == 0)
        {
          if (MTTrackpadEmbeddedHIDManager::setHostState(a1))
          {
            result = 0;
            *(a1 + 353) = v12;
            *(a1 + 354) = v22;
            *(a1 + 356) = v27;
          }

          else
          {
            result = 1;
            *(a1 + 352) = 1;
          }

          goto LABEL_29;
        }

        goto LABEL_25;
      }

LABEL_28:
      result = 0;
      goto LABEL_29;
    }

LABEL_25:
    result = 1;
    goto LABEL_29;
  }

  if (a2 != 81)
  {
    if (a2 != 82 || !cf)
    {
      goto LABEL_32;
    }

LABEL_30:
    v19 = CFGetTypeID(cf);
    if (v19 == CFBooleanGetTypeID())
    {
      (*(*a1 + 80))(a1);
      Service = MTDeviceGetService();
      IORegistryEntrySetCFProperty(Service, @"DeviceOpenedByEventSystem", cf);
    }

    goto LABEL_32;
  }

  if (cf)
  {
    v17 = CFGetTypeID(cf);
    if (v17 == CFNumberGetTypeID())
    {
      goto LABEL_25;
    }

    goto LABEL_30;
  }

LABEL_32:
  v21 = *MEMORY[0x29EDCA608];

  return MTTrackpadHIDManager::setPropertyInternal(a1, a2, cf, a4);
}

uint64_t MTTrackpadEmbeddedHIDManager::setHostState(MTTrackpadEmbeddedHIDManager *this)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = *(this + 353);
  v3 = *(this + 354);
  v4 = *(this + 89);
  v5 = MTLoggingPlugin();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    v13 = "";
    v14 = 2080;
    v15 = "MTTrackpadEmbeddedHIDManager::";
    v16 = 2080;
    v17 = "setHostState";
    v18 = 1024;
    v19 = 0;
    v20 = 1024;
    v21 = v2;
    v22 = 1024;
    v23 = v3;
    v24 = 1024;
    v25 = v4;
    _os_log_impl(&dword_29D381000, v5, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Host state - graphics orientation: %u, cover closed: %u, display off: %u, device orientation: %u", buf, 0x38u);
  }

  (*(*this + 80))(this);
  v6 = MTDeviceSetReport();
  if (v6)
  {
    v7 = MTLoggingPlugin();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v13 = "[Error] ";
      v14 = 2080;
      v15 = "MTTrackpadEmbeddedHIDManager::";
      v16 = 2080;
      v17 = "setHostState";
      v18 = 1024;
      v19 = v6;
      _os_log_impl(&dword_29D381000, v7, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Error 0x%08X setting host state", buf, 0x26u);
    }
  }

  else
  {
    v8 = *(this + 45);
    if (v8)
    {
      if (*(this + 353) == 1)
      {
        v9 = 3;
      }

      else if (*(this + 354) == 1)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      MTPowerLogger::transitionTo(v8, v9);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t MTTrackpadEmbeddedHIDManager::setOrientation(MTTrackpadEmbeddedHIDManager *this)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = MTLoggingPlugin();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315650;
    v5 = "[Error] ";
    v6 = 2080;
    v7 = "MTTrackpadEmbeddedHIDManager::";
    v8 = 2080;
    v9 = "setOrientation";
    _os_log_impl(&dword_29D381000, v1, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unsupported", &v4, 0x20u);
  }

  v2 = *MEMORY[0x29EDCA608];
  return 3758097095;
}

uint64_t MTTrackpadEmbeddedHIDManager::setPowerState()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = MTLoggingPlugin();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315650;
    v4 = "[Error] ";
    v5 = 2080;
    v6 = "MTTrackpadEmbeddedHIDManager::";
    v7 = 2080;
    v8 = "setPowerState";
    _os_log_impl(&dword_29D381000, v0, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unsupported", &v3, 0x20u);
  }

  v1 = *MEMORY[0x29EDCA608];
  return 3758097095;
}

uint64_t MTTrackpadEmbeddedHIDManager::setPowerStateWithReset()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = MTLoggingPlugin();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315650;
    v4 = "[Error] ";
    v5 = 2080;
    v6 = "MTTrackpadEmbeddedHIDManager::";
    v7 = 2080;
    v8 = "setPowerStateWithReset";
    _os_log_impl(&dword_29D381000, v0, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unsupported", &v3, 0x20u);
  }

  v1 = *MEMORY[0x29EDCA608];
  return 3758097095;
}

void MTTrackpadEmbeddedHIDManager::wasScheduledOnDispatchQueue(MTTrackpadEmbeddedHIDManager *this, NSObject *a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    MTPowerLogger::scheduleOnDispatchQueue(v4, a2);
  }

  MTTrackpadHIDManager::wasScheduledOnDispatchQueue(this, a2);
}

void MTTrackpadEmbeddedHIDManager::wasUnscheduledFromDispatchQueue(io_object_t *this, dispatch_queue_s *a2)
{
  MTTrackpadHIDManager::wasUnscheduledFromDispatchQueue(this, a2);
  v4 = *(this + 45);
  if (v4)
  {

    MTPowerLogger::unscheduleFromDispatchQueue(v4, a2);
  }
}

uint64_t MTTrackpadEmbeddedHIDManager::handleContactFrame(MTTrackpadHIDManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = *(this + 45);
  if (v12 && (*(this + 354) & 1) == 0)
  {
    if (a4)
    {
      MTPowerLogger::transitionTo(v12, 0);
    }

    else
    {
      MTPowerLogger::transitionToDelayed(v12, 1, 0x77359400uLL);
    }
  }

  return MTTrackpadHIDManager::handleContactFrame(this, a6, a2, a3, a4, a5);
}

void MTTrackpadEmbeddedHIDManager::~MTTrackpadEmbeddedHIDManager(MTTrackpadEmbeddedHIDManager *this)
{
  MTSimpleHIDManager::~MTSimpleHIDManager(this);

  JUMPOUT(0x29ED547D0);
}

void MTSlideGesture::MTSlideGesture(MTSlideGesture *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 10) = 1065353216;
  *(this + 44) = 0;
  *(this + 60) = 0;
  *(this + 52) = 0;
  *(this + 68) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
}

{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 10) = 1065353216;
  *(this + 44) = 0;
  *(this + 60) = 0;
  *(this + 52) = 0;
  *(this + 68) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
}

double MTSlideGesture::clearIntegrationState(MTSlideGesture *this)
{
  *(this + 68) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  return result;
}

uint64_t MTSlideGesture::MTSlideGesture(uint64_t a1, int a2, int a3, __int128 *a4, uint64_t *a5, float a6, float a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<MTActionEvent>::__init_with_size[abi:ne200100]<MTActionEvent*,MTActionEvent*>(a1, *a5, a5[1], (a5[1] - *a5) >> 3);
  *(a1 + 24) = 16;
  *(a1 + 28) = a3;
  *(a1 + 32) = a2;
  v13 = *a4;
  *(a1 + 52) = a4[1];
  *(a1 + 36) = v13;
  *(a1 + 152) = a6;
  *(a1 + 156) = a7;
  *(a1 + 68) = 0;
  *(a1 + 144) = 0;
  if ((a2 & 0x1000000) != 0)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  if ((a2 & 3) != 0 || a7 > 0.0)
  {
    *(a1 + 124) = v14;
  }

  if ((a2 & 0xC) != 0 || a7 > 0.0)
  {
    *(a1 + 128) = v14;
  }

  if ((a2 & 0x30) != 0)
  {
    *(a1 + 132) = v14;
  }

  if ((a2 & 0xC0) != 0)
  {
    *(a1 + 136) = v14;
  }

  return a1;
}

{
  return MTSlideGesture::MTSlideGesture(a1, a2, a3, a4, a5, a6, a7);
}

void MTSlideGesture::MTSlideGesture(MTSlideGesture *this, const MTSlideGesture *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<MTActionEvent>::__init_with_size[abi:ne200100]<MTActionEvent*,MTActionEvent*>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = *(a2 + 7);
  *(this + 8) = *(a2 + 8);
  v4 = *(a2 + 36);
  *(this + 52) = *(a2 + 52);
  *(this + 36) = v4;
  *(this + 19) = *(a2 + 19);
  if (this != a2)
  {
    std::vector<MTActionEvent>::__assign_with_size[abi:ne200100]<MTActionEvent*,MTActionEvent*>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
  }

  *(this + 68) = 0;
  *(this + 18) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  for (i = 124; i != 140; i += 4)
  {
    *(this + i) = *(a2 + i);
  }
}

void sub_29D39A594(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTSlideGesture::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    MTGesture::operator=(a1, a2);
    v4 = 0;
    *(a1 + 32) = *(a2 + 32);
    v5 = *(a2 + 36);
    *(a1 + 52) = *(a2 + 52);
    *(a1 + 36) = v5;
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 68) = 0;
    *(a1 + 144) = 0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0;
    do
    {
      *(a1 + 124 + v4) = *(a2 + 124 + v4);
      v4 += 4;
    }

    while (v4 != 16);
  }

  return a1;
}

uint64_t MTGesture::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::vector<MTActionEvent>::__assign_with_size[abi:ne200100]<MTActionEvent*,MTActionEvent*>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 28) = *(a2 + 28);
  }

  return a1;
}

uint64_t MTSlideGesture::getDegreesOfFreedomMask(MTSlideGesture *this)
{
  v1 = 0;
  LODWORD(v2) = 0;
  do
  {
    v3 = *(this + v1 + 31);
    if (v3 == 0.0)
    {
      if (*this == *(this + 1) || **this != 71 || v1 > 1 || (v3 = 1.0, *(this + 18) <= 0.0))
      {
        v3 = 0.0;
      }
    }

    v4 = 1 << v1;
    if (v3 == 0.0)
    {
      v4 = 0;
    }

    v2 = v4 | v2;
    ++v1;
  }

  while (v1 != 4);
  return v2;
}

double MTSlideGesture::relativeSensitivity(MTSlideGesture *this, unsigned int a2)
{
  LODWORD(result) = *(this + a2 + 31);
  if (*&result == 0.0)
  {
    if (*this == *(this + 1))
    {
      return 0.0;
    }

    if (**this != 71)
    {
      return 0.0;
    }

    if (a2 > 1)
    {
      return 0.0;
    }

    LODWORD(result) = 1.0;
    if (*(this + 18) <= 0.0)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t MTSlideGesture::sendSlideKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, double a8)
{
  v14 = *(a6 + 264);
  v21 = *(a3 + 168);
  MTChordIntegrating::sendSlidePreamble(a6, a2, a3, a4, a5, a1, 8u, a8);
  v15 = *(a2 + 8);
  *(a1 + 144) = v15;
  v16 = *(a1 + 32);
  if ((v16 & 0x23000) != 0)
  {
    if ((v16 & 0x20000) != 0)
    {
      v17 = *(a6 + 280);
      if (v17 < 0)
      {
        v18 = *a1;
        if (*a1 != *(a1 + 8) && *v18 == 129)
        {
          v20 = 0xAAAAAAAAAAAAAAAALL;
          MTActionEvent::MTActionEvent(&v20, v18);
          LOWORD(v20) = 130;
          *(a6 + 280) = -*(a6 + 280);
          (*(*a4 + 24))(a4, &v20, a5, 0, 0, &v21, *(a1 + 32), *(a6 + 224), *(a2 + 8));
          return 1;
        }

        *(a6 + 267) = 1;
      }

      *(a6 + 280) = -v17;
      goto LABEL_18;
    }

    if ((v16 & 0x2000) != 0)
    {
      if (*(a6 + 284) != v16)
      {
        goto LABEL_18;
      }

      return 0;
    }
  }

  else if ((v16 & 0x4000) == 0 || (v14 & 1) != 0 || v15 - *(a6 + 240) >= *&qword_2A17A1E20)
  {
    *(a6 + 284) = *(a1 + 32);
    if (a7 >= 1)
    {
      goto LABEL_19;
    }

    return 0;
  }

  *(a6 + 267) = 1;
LABEL_18:
  *(a6 + 284) = v16;
  a7 = 1;
  do
  {
LABEL_19:
    result = MTGesture::dispatchEvents(a1, a4, a5, 0, 0, &v21, *(a1 + 32), *(a6 + 224), *(a2 + 8));
    --a7;
  }

  while (a7);
  return result;
}

uint64_t MTSlideGesture::sendSlideMickeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int32x4_t *a7, double a8)
{
  if (MTChordIntegrating::sendSlidePreamble(a6, a2, a3, a4, a5, a1, 8u, a8))
  {
    v15 = 2;
  }

  else
  {
    v15 = 8;
  }

  v18 = *(a3 + 168);
  MTChordIntegrating::updateMomentumMickeys(a6, a7, a2);
  v16 = *(a2 + 8);
  *(a1 + 144) = v16;
  return MTGesture::dispatchEvents(a1, a4, a5, v15, a7, &v18, *(a1 + 32), *(a6 + 224), v16);
}

float MTSlideGesture::cumulativeMotionMagnitude(MTSlideGesture *this)
{
  if (*this != *(this + 1) && ((**this & 0x80) != 0 || (v1 = **this, (v1 - 35) < 5) || v1 == 67))
  {
    return fabsf(*(this + 22));
  }

  else
  {
    return (hypotf(*(this + 24), *(this + 25)) + fabsf(*(this + 26))) + fabsf(*(this + 27));
  }
}

uint64_t MTSlideGesture::decayAxisIntegrator(uint64_t result, uint64_t a2, float *a3, double a4, float a5)
{
  v5 = *(result + 52);
  if (!*(a2 + 264))
  {
    v5 = v5 * 1.7;
  }

  v6 = a5 * 0.00282;
  v7 = a4 * 0.3;
  if (v6 >= v7)
  {
    v7 = v6;
  }

  v8 = (v7 + 1.0) * v5;
  if (v8 > 0.0)
  {
    v9 = *a3;
    if (*a3 <= v8)
    {
      v10 = 0.0;
      if (v9 < -v8)
      {
        v10 = v8 + v9;
      }
    }

    else
    {
      v10 = v9 - v8;
    }

    *a3 = v10;
  }

  return result;
}

float MTSlideGesture::inactivityExtraCommitMultiplier(MTSlideGesture *this, double a2, double *a3)
{
  v3 = fmin(sqrt(a2), 5.0);
  *a3 = v3;
  return 7.50000048 / (v3 + 7.50000048);
}

uint64_t MTSlideGesture::squelchCommitMultiplierForDirectionReversals(uint64_t this, int a2, float *a3, float *a4)
{
  v4 = *a3;
  v5 = *(this + 96 + 4 * a2);
  if ((*a3 * v5) < 0.0)
  {
    if (fabsf(v4) <= fabsf(v5))
    {
      *a4 = 1.0;
    }

    else
    {
      *a3 = v4 + v5;
      *(this + 96 + 4 * a2) = 0;
    }
  }

  return this;
}

uint64_t MTSlideGesture::integrateAxisMotion(uint64_t result, uint64_t a2, MTHandMotion *this, uint64_t a4, uint64_t a5, int a6, double a7, float a8)
{
  v8 = a7;
  v10 = result;
  v11 = *(this + 32);
  if ((*(a5 + 264) & 1) == 0)
  {
    if (v11 < 2000 || v11 > 0xBB7)
    {
      v13 = *(result + 40);
    }

    else
    {
      if (*(a2 + 8) - *(a2 + 56) > a7)
      {
        goto LABEL_22;
      }

      v8 = fmin(sqrt(a7), 5.0);
      v12 = 7.50000048 / (v8 + 7.50000048);
      v13 = *(result + 40) * v12;
      v14 = *(result + 96 + 4 * a6);
      if ((v14 * a8) < 0.0)
      {
        if (fabsf(a8) <= fabsf(v14))
        {
          v13 = 1.0;
        }

        else
        {
          a8 = v14 + a8;
          *(result + 96 + 4 * a6) = 0;
        }
      }
    }

    if (*(a4 + 28) == 1 && *(a4 + 24) >= 3 && *(a5 + 216) == 1)
    {
      v17 = *(a5 + 160);
      if (*(a5 + 168) - v17 == 160 && *v17 != v17[1] && **v17 == 68)
      {
        v13 = v13 * 0.06;
      }
    }

    a8 = a8 * (v13 * (((*(this + 63) * -1.4) + 1.0) * ((*(this + 63) * -1.4) + 1.0)));
  }

LABEL_22:
  v18 = a8 * *(this + 93);
  if (!*(a2 + 211))
  {
    v18 = a8;
  }

  v19 = result + 4 * a6;
  v21 = *(v19 + 96);
  v20 = (v19 + 96);
  *v20 = v21 + v18;
  if ((v11 - 2000) <= 0x3E7)
  {
    MouseMotionFeedback = MTHandMotion::getMouseMotionFeedback(this, a6);

    return MTSlideGesture::decayAxisIntegrator(v10, a5, v20, v8, MouseMotionFeedback);
  }

  return result;
}

float MTSlideGesture::decayRecentDisplacement(MTSlideGesture *this, const MTHandStatistics *a2)
{
  v3 = pow(0.939999998, (*(a2 + 1) - *(a2 + 2)) / 0.00800000038);
  result = *(this + 28) * v3;
  *(this + 28) = result;
  return result;
}

float MTSlideGesture::recordCommittedDisplacement(MTSlideGesture *this, float a2)
{
  result = fabsf(a2) + *(this + 28);
  *(this + 28) = result;
  return result;
}

uint64_t MTSlideGesture::thresholdAxisMotion(MTSlideGesture *this, const MTHandStatistics *a2, const MTHandMotion *a3, int a4)
{
  v4 = *(this + 9);
  v5 = (this + 4 * a4);
  v6 = v5[24];
  v7 = (v6 / v4);
  v8 = v4 * v7;
  v5[24] = v6 - v8;
  *(this + 28) = *(this + 28) + fabsf(v8);
  return v7;
}

float MTSlideGesture::accelerateAxisMotion(MTSlideGesture *this, int a2, const MTHandStatistics *a3, const MTHandMotion *a4, float a5, int a6)
{
  v11 = 0.0;
  if (a2 <= 3)
  {
    v11 = *(a4 + (4 * a2) + 316);
  }

  v12 = *(this + a2 + 31);
  if (v12 == 0.0)
  {
    if (*this == *(this + 1) || **this != 71 || a2 > 1 || (v12 = 1.0, *(this + 18) <= 0.0))
    {
      v12 = 0.0;
    }
  }

  v13 = (v11 * v12) * a5;
  if ((*(a4 + 32) - 2000) <= 0x3E7)
  {
    MTSlideGesture::suppressVelocityFromMouseFeeback(this, a2, a4, v13);
  }

  v14 = 0.0;
  if (v13 != 0.0)
  {
    v14 = (*(a3 + 1) - *(a3 + 2)) * v13;
    if (a6)
    {
      if (a2 > 1)
      {
        v15 = fabsf(v13);
      }

      else
      {
        v15 = sqrtf((*(a4 + 84) * *(a4 + 84)) + (*(a4 + 83) * *(a4 + 83)));
      }

      v16 = *(this + 11);
      v17 = 1.0;
      if (v16 < v15 && v16 > 0.0)
      {
        v18 = *(this + 12);
        if (v18 > 0.0)
        {
          v17 = powf(v15 / v16, v18);
        }
      }

      return v17 * v14;
    }
  }

  return v14;
}

float32x2_t MTSlideGesture::increasingSigmoidFromTdiff(MTSlideGesture *this, float64_t a2, float64x2_t a3, int a4)
{
  result = 0;
  if (a2 != 0.0)
  {
    result.i32[0] = 1.0;
    if (a3.f64[0] != 0.0)
    {
      a3.f64[1] = a2;
      result = vcvt_f32_f64(a3);
      if (a4 >= 2)
      {
        v6 = a4 - 1;
        do
        {
          result = vcvt_f32_f64(vmulq_f64(a3, vcvtq_f64_f32(result)));
          --v6;
        }

        while (v6);
      }

      v7 = result.f32[1] / vaddv_f32(result);
      result.i32[0] = 1.0;
      if (v7 <= 1.0)
      {
        result.f32[0] = v7;
        if (v7 < 0.0)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL MTSlideGesture::canOverrideLockOn(MTSlideGesture *this, const MTSlideGesture *a2)
{
  v3 = (*(a2 + 8) >> 9) & 7;
  v4 = *(a2 + 28);
  if ((v4 + MTSlideGesture::cumulativeMotionMagnitude(a2)) >= 3.0 || v3 == 0)
  {
    return 0;
  }

  if (*this == *(this + 1) || **this != 133)
  {
    return v3 < ((*(this + 8) >> 9) & 7u);
  }

  return 1;
}

BOOL MTSlideGesture::canPunishSomeMoving(MTSlideGesture *this, uint64_t a2, uint64_t a3)
{
  if ((*(this + 8) & 0x8000E00) == 0)
  {
    return 0;
  }

  if (*(a3 + 264) != 1)
  {
    return 1;
  }

  v4 = *(a3 + 272);
  if (!v4)
  {
    return 1;
  }

  if (*(a2 + 8) - *(a3 + 256) < *&qword_2A17A1DA0)
  {
    return 1;
  }

  if (v4 == this)
  {
    v7 = *(this + 28);
    if ((v7 + MTSlideGesture::cumulativeMotionMagnitude(this)) < 3.0 && (*(a3 + 216) < 4u || *v4 == *(v4 + 1) || **v4 != 70))
    {
      return 1;
    }
  }

  return MTSlideGesture::canOverrideLockOn(this, v4);
}

float MTSlideGesture::someMovingMultiplier(MTSlideGesture *this, uint64_t a2, MTHandMotion *a3, uint64_t a4)
{
  v8 = *(this + 8);
  if ((v8 & 0x100) == 0 || (SpeedSymmetry = 0.0, *(a3 + 376) == 1))
  {
    v10 = *this;
    v11 = *(this + 1);
    if (*this == v11 || (*v10 & 0xFFFE) != 0x46 || *(a2 + 305) != 1 || (SpeedSymmetry = 0.0, *(a2 + 211) + *(a2 + 186) < 4))
    {
      canPunishSomeMoving = MTSlideGesture::canPunishSomeMoving(this, a2, a4);
      SpeedSymmetry = 1.0;
      if (canPunishSomeMoving)
      {
        if ((v8 & 0x8000000) != 0)
        {
          v14 = 0.8;
          if (v10 != v11 && *(a4 + 216) == 2)
          {
            v14 = flt_29D3D6A18[(*v10 - 35) < 5u];
          }

          SpeedSymmetry = MTHandMotion::getSpeedSymmetry(a3, v14, 0);
          v8 = *(this + 8);
        }

        if ((v8 & 0xE00) != 0)
        {
          v15 = 0.9;
          if (*(a4 + 216) == 3)
          {
            v15 = 2.0;
          }

          v16 = MTHandMotion::getSpeedSymmetry(a3, v15, (v8 >> 9) & 7);
          if (SpeedSymmetry < v16 || SpeedSymmetry == 1.0)
          {
            SpeedSymmetry = v16;
          }

          v8 = *(this + 8);
        }

        if ((v8 & 0xE00) == 0x800 && *(a2 + 186) == 5)
        {
          *&v13.f64[0] = qword_2A17A1D90;
          return SpeedSymmetry * MTSlideGesture::increasingSigmoidFromTdiff(canPunishSomeMoving, *(a2 + 8) - *(a2 + 80) - (*(a2 + 8) - *(a2 + 56)), v13, 2).f32[0];
        }
      }
    }
  }

  return SpeedSymmetry;
}

float MTSlideGesture::integrateManipulativeGesture(uint64_t a1, unsigned __int8 *a2, MTHandMotion *a3, uint64_t a4, uint64_t a5, double a6, float a7)
{
  v14 = MTSlideGesture::someMovingMultiplier(a1, a2, a3, a5);
  for (i = 0; i != 4; ++i)
  {
    if (*(a1 + 4 * i + 124) != 0.0 || *a1 != *(a1 + 8) && **a1 == 71 && i <= 1 && *(a1 + 144) > 0.0)
    {
      if (*(a5 + 264) == 1)
      {
        v16 = (*(a1 + 34) & 0x80) == 0 || a2[302] <= (a2[186] >> 1);
      }

      else
      {
        v16 = 0;
      }

      v17 = MTSlideGesture::accelerateAxisMotion(a1, i, a2, a3, a7, v16);
      MTSlideGesture::integrateAxisMotion(a1, a2, a3, a4, a5, i, a6, v14 * v17);
    }
  }

  v18 = *(a1 + 112);
  return v18 + MTSlideGesture::cumulativeMotionMagnitude(a1);
}

uint64_t MTSlideGesture::fireManipulativeGesture(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = result;
  v9 = 0;
  v10 = 0;
  v17.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v17.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v11 = *(result + 36);
  do
  {
    v12 = *(result + v9 * 4 + 96);
    v13 = (v12 / v11);
    v14 = v11 * v13;
    *(result + v9 * 4 + 96) = v12 - v14;
    *(result + 112) = *(result + 112) + fabsf(v14);
    v17.i32[v9] = v13;
    if (v13 >= 0)
    {
      v15 = (v12 / v11);
    }

    else
    {
      v15 = -v13;
    }

    v10 += v15;
    ++v9;
  }

  while (v9 != 4);
  if ((*(result + 35) & 2) == 0 || (*(a6 + 264) & 1) != 0 || (*(a3 + 128) - 2000) <= 0x3E7 && a2[298] < a2[186] || (v16 = vabs_s32(*v17.i8), (vcgt_u32(v16, vdup_lane_s32(v16, 1)).u8[0] & 1) == 0))
  {
    if (*result == *(result + 8) || **result != 68 || (a2[222] & 1) == 0)
    {
      if (v10)
      {
        result = MTSlideGesture::sendSlideMickeys(result, a2, a3, a4, a5, a6, &v17, a7);
        if (result >= 1)
        {
          result = MTChordIntegrating::resetMostIntegrators(a6, v8);
          *(a6 + 288) += v10;
        }
      }
    }
  }

  return result;
}

float MTSlideGesture::integrateFluidGesture(MTSlideGesture *this, const MTHandStatistics *a2, const MTHandMotion *a3, MTChordIntegrating *a4, float a5)
{
  v10 = MTSlideGesture::someMovingMultiplier(this, a2, a3, a4);
  *(this + 20) = 0;
  if (*(this + 39) <= 0.0)
  {
    v13 = 0.0;
    for (i = 33; i != 35; ++i)
    {
      if (*(this + i) != 0.0)
      {
        v16 = MTSlideGesture::accelerateAxisMotion(this, i - 31, a2, a3, a5, 0);
        v17 = MTSlideGesture::accelerateAxisMotion(this, i - 31, a2, a3, a5, 1);
        v13 = *(this + 20) + (v16 * v10);
        *(this + 20) = v13;
        *(this + 22) = *(this + 22) + (v17 * v10);
      }
    }
  }

  else
  {
    MTSlideGesture::integrateMotionWithinArc(this, a2, a3, a5, 0);
    v12 = v11;
    MTSlideGesture::integrateMotionWithinArc(this, a2, a3, a5, 1);
    v13 = *(this + 20) + (v12 * v10);
    *(this + 20) = v13;
    *(this + 22) = *(this + 22) + (v14 * v10);
  }

  *(this + 23) = v13 + *(this + 23);
  if ((*(a4 + 264) & 1) == 0)
  {
    MouseMotionFeedback = MTHandMotion::getMouseMotionFeedback(a3, 0);
    v19 = *(this + 13);
    if (!*(a4 + 264))
    {
      v19 = v19 * 1.7;
    }

    v20 = MouseMotionFeedback * 0.00282;
    if (v20 < 0.0)
    {
      v20 = 0.0;
    }

    v21 = (v20 + 1.0) * v19;
    if (v21 > 0.0)
    {
      v22 = *(this + 23);
      if (v22 <= v21)
      {
        v23 = 0.0;
        if (v22 < -v21)
        {
          v23 = v21 + v22;
        }
      }

      else
      {
        v23 = v22 - v21;
      }

      *(this + 23) = v23;
    }

    v24 = MTHandMotion::getMouseMotionFeedback(a3, 0);
    v25 = *(this + 13);
    if (!*(a4 + 264))
    {
      v25 = v25 * 1.7;
    }

    v26 = v24 * 0.00282;
    if (v26 < 0.0)
    {
      v26 = 0.0;
    }

    v27 = (v26 + 1.0) * v25;
    if (v27 > 0.0)
    {
      v28 = *(this + 22);
      if (v28 <= v27)
      {
        v29 = 0.0;
        if (v28 < -v27)
        {
          v29 = v27 + v28;
        }
      }

      else
      {
        v29 = v28 - v27;
      }

      *(this + 22) = v29;
    }
  }

  for (j = 0; j != 4; ++j)
  {
    v31 = (this + 4 * j);
    if (v31[31] != 0.0 || *this != *(this + 1) && **this == 71 && j <= 1 && *(this + 18) > 0.0)
    {
      v31[24] = v10 * MTSlideGesture::accelerateAxisMotion(this, j, a2, a3, a5, 0);
    }
  }

  v32 = *(this + 21);
  v33 = *(this + 23);
  v34 = (v32 * v33) < 0.0;
  v35 = fabsf(v33);
  v36 = fabsf(v32);
  if (v34 || v35 > v36)
  {
    *(this + 21) = v33;
  }

  v38 = (*(this + 20) / *(this + 15)) / (*(a2 + 1) - *(a2 + 2));
  MTChordIntegrating::momentumFilterAlpha(a4, a2, fabsf(*(this + 30)) < fabsf(v38));
  *(this + 30) = ((1.0 - v39) * v38) + (v39 * *(this + 30));
  v40 = *(this + 28);
  return v40 + MTSlideGesture::cumulativeMotionMagnitude(this);
}

void MTSlideGesture::integrateMotionWithinArc(MTSlideGesture *this, const MTHandStatistics *a2, const MTHandMotion *a3, float a4, int a5)
{
  v10 = *(this + 31);
  if (v10 == 0.0)
  {
    if (*this == *(this + 1) || **this != 71 || (v10 = 1.0, *(this + 18) <= 0.0))
    {
      v10 = 0.0;
    }
  }

  v11 = *(a3 + 79) * v10;
  v12 = *(this + 32);
  if (v12 == 0.0)
  {
    if (*this == *(this + 1) || **this != 71 || (v12 = 1.0, *(this + 18) <= 0.0))
    {
      v12 = 0.0;
    }
  }

  v13 = (*(a3 + 80) * v12) * a4;
  v14 = sqrtf((*(a3 + 84) * *(a3 + 84)) + (*(a3 + 83) * *(a3 + 83)));
  if ((*(a3 + 32) - 2000) <= 0x3E7)
  {
    MTSlideGesture::suppressVelocityFromMouseFeeback(this, 0, a3, v11 * a4);
    MTSlideGesture::suppressVelocityFromMouseFeeback(v15, 0, a3, v13);
  }

  if (v14 != 0.0)
  {
    v16 = atan2f(-*(a3 + 84), *(a3 + 83)) + (a4 + -1.0) * 1.57079633;
    v17 = 1.0;
    if (a5)
    {
      v18 = *(this + 11);
      if (v18 < v14 && v18 > 0.0)
      {
        v19 = *(this + 12);
        if (v19 > 0.0)
        {
          v17 = powf(v14 / v18, v19);
        }
      }
    }

    v20 = *(this + 38);
    v21 = *(this + 39);
    v22 = cosf(v16 - v20);
    v23 = cosf(v21 * 0.5);
    if (v22 > v23 || v22 < -v23)
    {
      v25 = v17 * (*(a2 + 1) - *(a2 + 2));
      __sincosf_stret(v20);
    }
  }
}

uint64_t MTSlideGesture::updateFluidPeak(uint64_t this)
{
  v1 = *(this + 84);
  v2 = *(this + 92);
  v3 = (v1 * v2) < 0.0;
  v4 = fabsf(v2);
  v5 = fabsf(v1);
  if (v3 || v4 > v5)
  {
    *(this + 84) = v2;
  }

  return this;
}

float MTSlideGesture::updateFluidMomentum(MTSlideGesture *this, const MTHandStatistics *a2, MTChordIntegrating *a3, float a4)
{
  MTChordIntegrating::momentumFilterAlpha(a3, a2, fabsf(*(this + 30)) < fabsf(a4));
  result = ((1.0 - v6) * a4) + (v6 * *(this + 30));
  *(this + 30) = result;
  return result;
}

uint64_t MTSlideGesture::cumulativeSwipeToDiscreteDelta(MTSlideGesture *this)
{
  v1 = *(this + 18);
  if (!v1)
  {
    *(this + 19) = 0;
    v7 = *(this + 22);
    v8 = *(this + 9);
    if (v7 <= v8)
    {
      if (v7 >= -v8)
      {
        return 0;
      }

      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = 1;
    }

    *(this + 18) = v5;
    return v5;
  }

  v2 = *(this + 19);
  v3 = *(this + 22);
  v4 = *(this + 9);
  if (v1 < 1)
  {
    if (v2 >= (v3 + v4))
    {
      v2 = v3 + v4;
    }

    *(this + 19) = v2;
    if (v3 > v2)
    {
      v5 = 1;
      *(this + 18) = 1;
      v6 = v3 - v4;
      goto LABEL_13;
    }

    return 0;
  }

  if (v2 <= (v3 - v4))
  {
    v2 = v3 - v4;
  }

  *(this + 19) = v2;
  if (v3 >= v2)
  {
    return 0;
  }

  v5 = 0xFFFFFFFFLL;
  *(this + 18) = -1;
  v6 = v3 + v4;
LABEL_13:
  *(this + 19) = v6;
  return v5;
}

float MTSlideGesture::fluidMomentumPercentage_s(MTSlideGesture *this, int a2)
{
  result = 0.0;
  if (a2)
  {
    return *(this + 30);
  }

  return result;
}

BOOL MTSlideGesture::hasSufficientFluidMomentum(MTSlideGesture *this, const MTHandStatistics *a2, int a3)
{
  v3 = *(this + 15);
  v4 = *this;
  v5 = *(this + 1);
  v6 = 1.0;
  v7 = 0.8;
  v8 = *(this + 23) / v3;
  if (*this != v5 && (*v4 & 0xFFFE) == 0x26)
  {
    v9 = 0.0;
    if (a3)
    {
      v9 = *(this + 30);
    }

    v6 = 0.25;
    if ((v8 * v9) >= 0.0)
    {
      v6 = 1.0;
    }

    v7 = 0.6;
  }

  v10 = 0.0;
  if (a3)
  {
    v10 = *(this + 30);
  }

  v11 = v4 != v5 && (*v4 & 0xFFFE) == 38;
  v12 = v8 + ((v6 * *(this + 16)) * v10);
  v13 = fabsf(v12);
  v14 = v13 >= (v7 * fabsf(*(this + 21) / v3));
  if (*(this + 32) - 1 >= 2)
  {
    v11 = 0;
  }

  if (v12 >= 0.0)
  {
    v11 = 0;
  }

  v16 = (v8 * v12) > 0.0 && v13 > 0.5;
  return v16 && v14 && !v11;
}

double MTSlideGesture::fluidDOFPercentageDeltas(float32x4_t *this)
{
  v1 = &this[3].f32[3];
  v2 = vld1q_dup_f32(v1);
  *&result = vdivq_f32(this[6], v2).u64[0];
  return result;
}

float32x4_t *MTSlideGesture::fireFluidGesture(float32x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, MTChordIntegrating *this, double a7)
{
  v13 = result;
  v14 = *(this + 264);
  if (v14 != 1 || (result[4].i8[4] & 1) == 0)
  {
    v15 = fabsf(result[5].f32[3]);
    if (v15 <= result[3].f32[2])
    {
      return result;
    }

    result[7].f32[0] = v15 + result[7].f32[0];
    result[5].i32[3] = result[5].i32[0];
    if ((v14 & 1) == 0)
    {
      MTChordIntegrating::resetMostIntegrators(this, result);
    }
  }

  result = MTChordIntegrating::sendSlidePreamble(this, a2, a3, a4, a5, v13, 8u, a7);
  if (v13[5].f32[0] != 0.0)
  {
    v16 = v13[5].f32[3];
    v17 = v13[3].f32[3];
    MTSlideGesture::cumulativeSwipeToDiscreteDelta(v13);
    *(this + 71) = v13[2].u8[0];
    v13[9].i64[0] = *(a2 + 8);
    if (v13->i64[1] == v13->i64[0])
    {
      std::vector<MTActionEvent>::__throw_out_of_range[abi:ne200100]();
    }

    v13[4].i8[4];
    v18 = &v13[3].f32[3];
    v19 = vld1q_dup_f32(v18);
    v21 = vdivq_f32(v13[6], v19);
    v20 = v13[2].u8[0];
    result = (*(*a4 + 32))(a4, v16 / v17, 0.0);
    v13[4].i8[4] = 1;
  }

  return result;
}

float MTSlideGesture::integrateCommandGesture(uint64_t a1, const MTHandStatistics *a2, MTHandMotion *a3, uint64_t a4, float a5)
{
  v10 = MTSlideGesture::someMovingMultiplier(a1, a2, a3, a4);
  if (*(a1 + 156) <= 0.0)
  {
    for (i = 0; i != 4; ++i)
    {
      if (*(a1 + 4 * i + 124) != 0.0 || *a1 != *(a1 + 8) && **a1 == 71 && i <= 1 && *(a1 + 144) > 0.0)
      {
        *(a1 + 88) = *(a1 + 88) + (MTSlideGesture::accelerateAxisMotion(a1, i, a2, a3, a5, 1) * v10);
      }
    }
  }

  else
  {
    MTSlideGesture::integrateMotionWithinArc(a1, a2, a3, a5, 1);
    *(a1 + 88) = *(a1 + 88) + (v11 * v10);
  }

  if ((*(a3 + 32) - 2000) <= 0x3E7)
  {
    MouseMotionFeedback = MTHandMotion::getMouseMotionFeedback(a3, 0);
    v13 = *(a1 + 52);
    if (!*(a4 + 264))
    {
      v13 = v13 * 1.7;
    }

    v14 = MouseMotionFeedback * 0.00282;
    if (v14 < 0.0)
    {
      v14 = 0.0;
    }

    v15 = (v14 + 1.0) * v13;
    if (v15 > 0.0)
    {
      v16 = *(a1 + 88);
      if (v16 <= v15)
      {
        v17 = 0.0;
        if (v16 < -v15)
        {
          v17 = v15 + v16;
        }
      }

      else
      {
        v17 = v16 - v15;
      }

      *(a1 + 88) = v17;
    }
  }

  if (*(a1 + 88) < 0.0)
  {
    *(a1 + 88) = 0;
  }

  v19 = *(a1 + 112);
  return v19 + MTSlideGesture::cumulativeMotionMagnitude(a1);
}

uint64_t MTSlideGesture::fireCommandGesture(uint64_t result, MTHandStatistics *a2, MTHandMotion *a3, uint64_t a4, uint64_t a5, MTChordIntegrating *this, double a7)
{
  v8 = *(result + 36);
  v9 = *(result + 88);
  v10 = (v9 / v8);
  if (v10 >= 1)
  {
    v16 = result;
    if (*(this + 264) == 1)
    {
      if ((*(result + 33) & 0x40) != 0)
      {
        result = MTChordIntegrating::waitForFastShotVerification(this, a2, a3);
        v9 = v16[22];
        if (result)
        {
          if (v9 > 30.0)
          {
            v16[22] = 30.0;
          }

          return result;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    v16[22] = v9 - (v10 * v8);
    v16[28] = fabsf(v8 * v10) + v16[28];
    result = MTSlideGesture::sendSlideKeys(v16, a2, a3, a4, a5, this, v10, a7);
    if (result >= 1)
    {

      return MTChordIntegrating::resetMostIntegrators(this, v16);
    }
  }

  return result;
}

BOOL MTSlideGesture::isLockedOutByTriggeredSlide(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a3 + 272);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8);
  if ((v6 & 0x1000) != 0)
  {
    return 1;
  }

  if (v5 == a1)
  {
    return 0;
  }

  if ((v6 & 0x2000) != 0 && (*(a1 + 33) & 0x20) == 0)
  {
    return 1;
  }

  if ((v6 & 0x8000) == 0 && ((v6 & 0x40000) == 0 || *(a3 + 265) == 1) && ((v6 & 0x20000) == 0 || (*(a3 + 280) & 0x80000000) == 0))
  {
    return (v6 & 0x10000) != 0 && *(a1 + 32) >> ((*(a1 + 32) & 0x55) == 0) != *(v5 + 8) >> ((*(v5 + 8) & 0x55) == 0);
  }

  if (a4)
  {
    return 1;
  }

  if (MTSlideGesture::canOverrideLockOn(a1, v5))
  {
    return 0;
  }

  result = 1;
  if ((v6 & 0x8000000) == 0 && ((v6 >> 9) & 7) - 1 <= 2)
  {
    return *(a2 + 8) - *(a3 + 256) >= *&qword_2A17A1DA0;
  }

  return result;
}

uint64_t MTSlideGesture::isActiveEdgeSlide(unsigned __int16 **a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if ((v3 & 0x200000) == 0)
  {
    return 0;
  }

  v4 = (a1[4] & 3) == 0;
  v5 = *(a2 + 228);
  if ((v3 & 3) == 0)
  {
    v5 = *(a2 + 224);
  }

  v6 = *(a2 + 8) - *(a3 + 248);
  if (v6 <= *&qword_2A17A1DA8)
  {
    v4 = 0;
  }

  if (*a1 == a1[1])
  {
    return 1;
  }

  v7 = v3 & (v5 >> 4) & 0xF;
  v8 = **a1;
  v9 = v6 > *&qword_2A17A1D88 || v7 == 0;
  v10 = v9;
  if ((v8 != 78 || !v10) && (!(v3 & (*(a2 + 224) >> 12) & 2 | v7) ? (v11 = 1) : (v11 = v4), (v8 & 0xFFFE) == 0x26 ? (v12 = *(a3 + 272) == a1) : (v12 = 1), v12 || (v11 & 1) == 0))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t MTSlideGesture::isBlocked(unsigned __int16 **a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = *(a1 + 8);
  if (*(a2 + 316))
  {
    v9 = *(a2 + 186);
    if (v9 >= 2 && (*(a2 + 317) & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    v9 = *(a2 + 186);
  }

  if (*a1 == a1[1])
  {
    return 1;
  }

  v10 = **a1;
  if (!**a1 || *(a1 + 9) == 0.0 || (v8 & 0x100000) != 0 && *(a4 + 264) != 1)
  {
    return 1;
  }

  if ((v8 & 0x4000000) != 0 && *(a2 + 8) - *(a4 + 248) >= *&qword_2A17A1D98)
  {
    return 1;
  }

  if ((v8 & 0x200000) != 0)
  {
    if (MTSlideGesture::isActiveEdgeSlide(a1, a2, a4))
    {
      goto LABEL_23;
    }

    return 1;
  }

  if (v10 == 68)
  {
    if ((*(a4 + 264) & 1) == 0 && *(a4 + 216) == 1 && *(a2 + 8) - *(a4 + 248) < *&qword_2A17A1D80)
    {
      v15 = *(a3 + 136);
      if ((a5 & 1) != 0 || (v8 & 3) == 0)
      {
        if (*(a3 + 136) && (*(a2 + 224) & 0x20) != 0 || *(a3 + 137) == 1 && (*(a2 + 224) & 0x10) != 0)
        {
          return 1;
        }
      }

      else if (*(a3 + 136) && (*(a2 + 229) & 0x20) != 0 || *(a3 + 137) == 1 && (*(a2 + 229) & 0x10) != 0)
      {
        return 1;
      }
    }
  }

  else if (v10 == 70 && (*(a4 + 264) & 1) == 0 && *(a4 + 216) == 2 && ((*(a2 + 224) & 0xC0) != 0 || *(a3 + 136) == 1 && (*(a2 + 228) & 0x20) != 0 || *(a3 + 137) == 1 && (*(a2 + 228) & 0x10) != 0) && *(a2 + 8) - *(a4 + 248) < *&qword_2A17A1D88)
  {
    return 1;
  }

LABEL_23:
  if ((*(a4 + 267) & 1) != 0 || (*(a4 + 228) & 0x1000) != 0 && *(a2 + 8) - *(a2 + 128) < *&qword_2A17A1D90 || MTSlideGesture::isLockedOutByTriggeredSlide(a1, a2, a4, 0))
  {
    return 1;
  }

  v14 = *(a4 + 272) != a1 && v8 < 0;
  v12 = v9 * 25.0;
  return *(a2 + 160) < v12 && v14;
}

float MTSlideGesture::integrateGesture(MTSlideGesture *this, const MTHandStatistics *a2, const MTHandMotion *a3, const MTDragManagerEventQueue *a4, MTChordIntegrating *a5, double a6)
{
  v12 = pow(0.939999998, (*(a2 + 1) - *(a2 + 2)) / 0.00800000038);
  *(this + 28) = *(this + 28) * v12;
  if (*this == *(this + 1))
  {
    goto LABEL_13;
  }

  v13 = **this;
  if (v13 == 67 || (v13 & 0x80) != 0)
  {
    v15 = *(a5 + 70);

    return MTSlideGesture::integrateCommandGesture(this, a2, a3, a5, v15);
  }

  if ((v13 - 35) > 4)
  {
LABEL_13:
    v18 = *(a5 + 70);

    return MTSlideGesture::integrateManipulativeGesture(this, a2, a3, a4, a5, a6, v18);
  }

  else
  {
    v17 = *(a5 + 70);

    return MTSlideGesture::integrateFluidGesture(this, a2, a3, a5, v17);
  }
}

float32x4_t *MTSlideGesture::fireGesture(uint64_t result, MTHandStatistics *a2, MTHandMotion *a3, uint64_t a4, uint64_t a5, MTChordIntegrating *this, double a7)
{
  if (*result == *(result + 8))
  {
    return MTSlideGesture::fireManipulativeGesture(result, a2, a3, a4, a5, this, a7);
  }

  v7 = **result;
  if (v7 == 67 || (v7 & 0x80) != 0)
  {
    return MTSlideGesture::fireCommandGesture(result, a2, a3, a4, a5, this, a7);
  }

  if ((v7 - 35) > 4)
  {
    return MTSlideGesture::fireManipulativeGesture(result, a2, a3, a4, a5, this, a7);
  }

  else
  {
    return MTSlideGesture::fireFluidGesture(result, a2, a3, a4, a5, this, a7);
  }
}

uint64_t std::vector<MTActionEvent>::__init_with_size[abi:ne200100]<MTActionEvent*,MTActionEvent*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29D39C780(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29F34C4B0, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

void *std::vector<MTActionEvent>::__assign_with_size[abi:ne200100]<MTActionEvent*,MTActionEvent*>(void *result, const MTActionEvent *a2, const MTActionEvent *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 3)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v10 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<MTPoint>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 3)
  {
    while (v6 != a3)
    {
      result = MTActionEvent::operator=(v9, v6);
      v6 = (v6 + 8);
      v9 += 2;
    }

    v7[1] = v9;
  }

  else
  {
    v14 = (a2 + v13);
    if (v12 != v9)
    {
      do
      {
        result = MTActionEvent::operator=(v9, v6);
        v6 = (v6 + 8);
        v9 += 2;
        v13 -= 8;
      }

      while (v13);
      v12 = v7[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      result = v12;
      do
      {
        MTActionEvent::MTActionEvent(result, v14);
        v14 = (v14 + 8);
        result = (v16 + 8);
        v15 += 8;
      }

      while (v14 != a3);
    }

    v7[1] = v15;
  }

  return result;
}

float MTSurfaceDimensions::MTSurfaceDimensions(uint64_t a1, float result, float a3, float a4, float a5, float a6, float a7)
{
  *a1 = &unk_2A2411ED0;
  *(a1 + 8) = result;
  *(a1 + 12) = a3;
  *(a1 + 16) = a4;
  *(a1 + 20) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = a7;
  if (a6 > 0.0 && a7 > 0.0)
  {
    result = a4 / a6;
    *(a1 + 24) = a4 / a6;
    *(a1 + 28) = a5 / a7;
  }

  return result;
}

{
  *a1 = &unk_2A2411ED0;
  *(a1 + 8) = result;
  *(a1 + 12) = a3;
  *(a1 + 16) = a4;
  *(a1 + 20) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = a7;
  if (a6 > 0.0 && a7 > 0.0)
  {
    result = a4 / a6;
    *(a1 + 24) = a4 / a6;
    *(a1 + 28) = a5 / a7;
  }

  return result;
}

float32x2_t MTSurfaceDimensions::deriveScreenPixelsFromResolution(float32x2_t *a1, float32x2_t result, float32_t a3)
{
  if (result.f32[0] > 0.0 && a3 > 0.0)
  {
    result.f32[1] = a3;
    result = vdiv_f32(a1[2], result);
    a1[3] = result;
  }

  return result;
}

float32x2_t MTSurfaceDimensions::updatePixelResolution_mm(float32x2_t *a1, float32x2_t result, float32_t a3)
{
  a1[4].i32[0] = result.i32[0];
  a1[4].f32[1] = a3;
  if (result.f32[0] > 0.0 && a3 > 0.0)
  {
    result.f32[1] = a3;
    result = vdiv_f32(a1[2], result);
    a1[3] = result;
  }

  return result;
}

float MTSurfaceDimensions::updateScreenBounds_mm(float *a1, float a2, float a3, float a4, float a5)
{
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  a1[5] = a5;
  result = a1[8];
  if (result > 0.0)
  {
    v6 = a1[9];
    if (v6 > 0.0)
    {
      result = a4 / result;
      a1[6] = result;
      a1[7] = a5 / v6;
    }
  }

  return result;
}

float MTSurfaceDimensions::minDistanceToEdge_mm(float *a1, int a2, int a3, float a4, float a5)
{
  v7 = a1[4];
  v6 = a1[5];
  if (v7 <= v6)
  {
    result = a1[5];
  }

  else
  {
    result = a1[4];
  }

  if (!a2)
  {
    if (!a3)
    {
      return result;
    }

    goto LABEL_12;
  }

  v9 = a4 / a1[6];
  v10 = (1.0 - v9) * v7;
  if (result > v10)
  {
    result = (1.0 - v9) * v7;
  }

  v11 = v7 * v9;
  if (v11 < result)
  {
    result = v11;
  }

  if (a3)
  {
LABEL_12:
    v12 = a5 / a1[7];
    if ((v6 * v12) < result)
    {
      result = v6 * v12;
    }

    v13 = (1.0 - v12) * v6;
    if (result > v13)
    {
      return v13;
    }
  }

  return result;
}

float MTSurfaceDimensions::convertPixelsToSurfaceFraction(uint64_t a1, float a2, float a3)
{
  result = a2 / *(a1 + 24);
  v4 = a3 / *(a1 + 28);
  return result;
}

float MTSurfaceDimensions::convertPixelDeltaToMillimeters(MTSurfaceDimensions *this, float a2, int a3)
{
  v3 = 32;
  if (a3)
  {
    v3 = 36;
  }

  return *(this + v3) * a2;
}

float MTSurfaceDimensions::convertPixelDeltaToMillimetersPerSecond(MTSurfaceDimensions *this, float a2, double a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a3 == 0.0)
  {
    v5 = MTLoggingPlugin();
    v4 = 0.0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = "[Error] ";
      v10 = 2080;
      v11 = "";
      v12 = 2080;
      v13 = "convertPixelDeltaToMillimetersPerSecond";
      v14 = 2048;
      v15 = a3;
      _os_log_impl(&dword_29D381000, v5, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected frame interval %g, setting velocity to 0.0", &v8, 0x2Au);
    }
  }

  else
  {
    v4 = ((*(this + 8) + *(this + 9)) * a2) / (a3 + a3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

void MTSurfaceDimensions::convertPixelDeltasToMillimetersPerSecond(float32x2_t *a1, float32x2_t a2, float32_t a3, double a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a4 == 0.0)
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v9 = "[Error] ";
      v10 = 2080;
      v11 = "";
      v12 = 2080;
      v13 = "convertPixelDeltasToMillimetersPerSecond";
      v14 = 2048;
      v15 = a4;
      _os_log_impl(&dword_29D381000, v5, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected frame interval %g, setting velocity to 0.0", buf, 0x2Au);
    }
  }

  else
  {
    a2.f32[1] = a3;
    v4 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vmul_f32(a2, a1[4])), vdupq_lane_s64(*&a4, 0)));
  }

  v6 = *MEMORY[0x29EDCA608];
}

float MTSurfaceDimensions::convertPixelsToMillimeters(float *a1, float a2, float a3)
{
  result = a2 * a1[8];
  v4 = (a1[7] - a3) * a1[9];
  return result;
}

float MTSurfaceDimensions::convertMillimetersToSurfaceFraction(uint64_t a1, float a2, float a3)
{
  result = a2 / *(a1 + 16);
  v4 = a3 / *(a1 + 20);
  return result;
}

float MTSurfaceDimensions::convertSurfaceFractionToPixels(uint64_t a1, float a2, float a3)
{
  result = a2 * *(a1 + 24);
  v4 = *(a1 + 28) - (a3 * *(a1 + 28));
  return result;
}

float MTSurfaceDimensions::convertSurfaceFractionToMillimeters(uint64_t a1, int a2, float a3, float a4)
{
  if (a2)
  {
    a4 = 1.0 - a4;
  }

  v4 = a4 * *(a1 + 20);
  return a3 * *(a1 + 16);
}

float MTSurfaceDimensions::convertSurfaceFractionVelocityToPixelsPerSecond(uint64_t a1, float a2, float a3)
{
  result = a2 * *(a1 + 24);
  v4 = -(a3 * *(a1 + 28));
  return result;
}

uint64_t MTMouseEmbeddedHIDManager::setDeviceDefaultProperties(MTMouseEmbeddedHIDManager *this)
{
  if ((*(this + 160) & 0x20) != 0)
  {
    (*(*this + 352))(this);
  }

  *(this + 126) = 1;
  v2 = *(*this + 744);

  return v2(this);
}

const void *MTMouseEmbeddedHIDManager::setDeviceAccelerationData(MTMouseEmbeddedHIDManager *this, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"HIDPointerAccelerationMultiplier");
  if (Value)
  {
    (*(*this + 568))(this, @"HIDPointerAccelerationMultiplier", Value);
  }

  return MTTrackpadHIDManager::setDeviceAccelerationData(this, theDict);
}

uint64_t MTMouseEmbeddedHIDManager::setPropertyInternal(MTSimpleHIDManager *a1, int a2, const __CFString *cf, int a4)
{
  v26 = *MEMORY[0x29EDCA608];
  if (a2 == 83)
  {
    if (!cf)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (a2 != 81 || !cf)
    {
      goto LABEL_15;
    }

    v8 = CFGetTypeID(cf);
    if (v8 == CFNumberGetTypeID())
    {
      goto LABEL_18;
    }
  }

  v9 = CFGetTypeID(cf);
  if (v9 == CFStringGetTypeID() && (CFStringCompare(cf, @"TwoButton", 0) == kCFCompareEqualTo || CFStringCompare(cf, @"TwoButtonSwapped", 0) == kCFCompareEqualTo || CFStringCompare(cf, @"OneButton", 0) == kCFCompareEqualTo))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v11 = Mutable;
      CFDictionarySetValue(Mutable, @"MouseButtonMode", cf);
      (*(*a1 + 80))(a1);
      Service = MTDeviceGetService();
      v13 = IORegistryEntrySetCFProperty(Service, @"MouseUserPreferences", v11);
      CFRelease(v11);
      if (v13)
      {
        v14 = MTLoggingPlugin();
        result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v18 = 136315906;
          v19 = "[Error] ";
          v20 = 2080;
          v21 = "";
          v22 = 2080;
          v23 = "setPropertyInternal";
          v24 = 1024;
          v25 = v13;
          _os_log_impl(&dword_29D381000, v14, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Could not set mouse user preferences on the driver 0x%08X", &v18, 0x26u);
          result = 0;
        }

        goto LABEL_19;
      }

LABEL_18:
      result = 1;
LABEL_19:
      v17 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

LABEL_15:
  v16 = *MEMORY[0x29EDCA608];

  return MTTrackpadHIDManager::setPropertyInternal(a1, a2, cf, a4);
}

void MTMouseEmbeddedHIDManager::~MTMouseEmbeddedHIDManager(MTMouseEmbeddedHIDManager *this)
{
  MTSimpleHIDManager::~MTSimpleHIDManager(this);

  JUMPOUT(0x29ED547D0);
}

void MTSLGLogger::MTSLGLogger(MTSLGLogger *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
}

void MTSLGLogger::~MTSLGLogger(MTSLGLogger *this)
{
  MTSLGLogger::unregisterControlInterface(this);
  if (*this)
  {
    dlclose(*this);
  }
}

void MTSLGLogger::unregisterControlInterface(MTSLGLogger *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 6) = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {
    IONotificationPortDestroy(v3);
    *(this + 2) = 0;
  }

  MTSLGLogger::removeControlService(this);
  *(this + 1) = 0;
}

uint64_t MTSLGLogger::createLogger(MTSLGLogger *this)
{
  if (MGGetBoolAnswer())
  {
    operator new();
  }

  return 0;
}

void MTSLGLogger::registerControlInterface(MTSLGLogger *this, NSObject *a2)
{
  v4 = MTLoggingPlugin();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_29D381000, v4, OS_LOG_TYPE_DEFAULT, "StudyLog logger: register for control interface", v12, 2u);
  }

  MTSLGLogger::unregisterControlInterface(this);
  *(this + 1) = a2;
  v5 = IONotificationPortCreate(0);
  *(this + 2) = v5;
  if (v5)
  {
    IONotificationPortSetDispatchQueue(v5, a2);
    v6 = *(this + 2);
    v7 = IOServiceNameMatching("AppleMultitouchDevice");
    v8 = IOServiceAddMatchingNotification(v6, "IOServiceFirstMatch", v7, MTSLGLoggerControlServiceMatchedCallback, this, this + 6);
    if (v8 || (v11 = *(this + 6)) == 0)
    {
      v9 = MTLoggingPlugin();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        MTSLGLogger::registerControlInterface(this + 6, v8, v9);
      }

      IONotificationPortDestroy(*(this + 2));
      *(this + 2) = 0;
    }

    else
    {
      MTSLGLoggerControlServiceMatchedCallback(this, v11);
    }
  }

  else
  {
    v10 = MTLoggingPlugin();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      MTSLGLogger::registerControlInterface(v10);
    }
  }
}

uint64_t MTSLGLoggerControlServiceMatchedCallback(MTSLGLogger *a1, io_iterator_t iterator)
{
  result = IOIteratorIsValid(iterator);
  if (result)
  {
    v4 = *MEMORY[0x29EDB8ED8];
    do
    {
      result = IOIteratorNext(iterator);
      if (!result)
      {
        break;
      }

      v5 = result;
      CFProperty = IORegistryEntryCreateCFProperty(result, @"DeviceUsagePairs", v4, 0);
      if (CFProperty)
      {
        v7 = CFProperty;
        if (CFArrayGetCount(CFProperty) < 1)
        {
LABEL_12:
          CFRelease(v7);
        }

        else
        {
          v8 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
            Value = CFDictionaryGetValue(ValueAtIndex, @"DeviceUsagePage");
            v11 = CFDictionaryGetValue(ValueAtIndex, @"DeviceUsage");
            valuePtr = 0;
            CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr + 4);
            CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
            if (HIDWORD(valuePtr) == 13 && valuePtr == 0)
            {
              break;
            }

            if (++v8 >= CFArrayGetCount(v7))
            {
              goto LABEL_12;
            }
          }

          CFRelease(v7);
          MTSLGLogger::addControlService(a1);
        }
      }

      IOObjectRelease(v5);
      result = IOIteratorIsValid(iterator);
    }

    while (result);
  }

  return result;
}