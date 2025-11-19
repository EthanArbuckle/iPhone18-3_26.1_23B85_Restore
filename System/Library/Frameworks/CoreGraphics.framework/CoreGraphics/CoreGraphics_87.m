uint64_t CGPDFNodeMakeLayoutAreasConsistent(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, __n128 a8, __n128 a9, double a10, double a11, double a12)
{
  v15 = a9.n128_u64[0];
  v16 = a8.n128_u64[0];
  if (a1)
  {
    v18 = a1;
    do
    {
      if (*v18 == 517)
      {
        break;
      }

      v18 = *(v18 + 8);
    }

    while (v18);
  }

  else
  {
    v18 = 0;
  }

  for (i = *a4; i; i = *(i + 8))
  {
    if (*i == 516)
    {
      break;
    }
  }

  for (j = *a5; j; j = *(j + 8))
  {
    if (*j == 516)
    {
      break;
    }
  }

  for (k = *a6; k; k = *(k + 8))
  {
    if (*k == 516)
    {
      break;
    }
  }

  for (m = *a7; m; m = *(m + 8))
  {
    if (*m == 516)
    {
      break;
    }
  }

  IsHitByPoint = CGPDFNodeIsHitByPoint(i, a8, a9, a12);
  v24.n128_u64[0] = v16;
  v25.n128_u64[0] = v15;
  v26 = CGPDFNodeIsHitByPoint(j, v24, v25, a12);
  v27.n128_f64[0] = a10;
  v28.n128_f64[0] = a11;
  v29 = CGPDFNodeIsHitByPoint(k, v27, v28, a12);
  v30.n128_f64[0] = a10;
  v31.n128_f64[0] = a11;
  v32 = CGPDFNodeIsHitByPoint(m, v30, v31, a12);
  result = *a5;
  v36 = *a7;
  if (*a5)
  {
    if (v36)
    {
      result = CGPDFNodeCompareReadingOrder(result, v36);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = -1;
    }

    v37 = result == -1;
    if ((v26 & v29) == 1 && result == -1)
    {
      return result;
    }
  }

  else
  {
    if (!v36)
    {
      return result;
    }

    v37 = 0;
    result = 1;
  }

  if (result == 1)
  {
    v38 = IsHitByPoint;
  }

  else
  {
    v38 = 0;
  }

  if (v32 & v38)
  {
    return result;
  }

  v39 = v26 ^ 1;
  v40 = v32 ^ 1;
  v77 = 1;
  if (!v37)
  {
    if ((IsHitByPoint | v40))
    {
      if (((v32 | IsHitByPoint ^ 1) & 1) == 0)
      {
        v33.n128_f64[0] = a10;
        v34.n128_f64[0] = a11;
        result = CGPDFNodeIsHitByPoint(i, v33, v34, a12);
        v39 = v26 ^ 1;
        if (result)
        {
          v44 = i != 0;
          if (i != a1 && i)
          {
            v45 = i;
            do
            {
              v45 = *(v45 + 8);
              v44 = v45 != 0;
            }

            while (v45 != a1 && v45 != 0);
          }

          if (v44)
          {
            goto LABEL_81;
          }
        }
      }
    }

    else
    {
      v33.n128_u64[0] = v16;
      v34.n128_u64[0] = v15;
      result = CGPDFNodeIsHitByPoint(m, v33, v34, a12);
      v39 = v26 ^ 1;
      if (result)
      {
        v54 = m != 0;
        if (m != a1 && m)
        {
          v55 = m;
          do
          {
            v55 = *(v55 + 8);
            v54 = v55 != 0;
          }

          while (v55 != a1 && v55 != 0);
        }

        if (v54)
        {
          goto LABEL_115;
        }
      }
    }

    if ((v29 | v39))
    {
      if (((v26 | v29 ^ 1) & 1) == 0)
      {
        v33.n128_u64[0] = v16;
        v34.n128_u64[0] = v15;
        result = CGPDFNodeIsHitByPoint(k, v33, v34, a12);
        if (result)
        {
          v57 = k != 0;
          if (k != a1 && k)
          {
            v58 = k;
            do
            {
              v58 = *(v58 + 8);
              v57 = v58 != 0;
            }

            while (v58 != a1 && v58 != 0);
          }

          if (v57)
          {
            goto LABEL_104;
          }
        }
      }

      return result;
    }

    v33.n128_f64[0] = a10;
    v34.n128_f64[0] = a11;
    result = CGPDFNodeIsHitByPoint(j, v33, v34, a12);
    if (!result)
    {
      return result;
    }

    v66 = j != 0;
    if (j != a1 && j)
    {
      v67 = j;
      do
      {
        v67 = *(v67 + 8);
        v66 = v67 != 0;
      }

      while (v67 != a1 && v67 != 0);
    }

    if (!v66)
    {
      return result;
    }

    goto LABEL_128;
  }

  if (((v29 | v39) & 1) == 0)
  {
    v33.n128_f64[0] = a10;
    v34.n128_f64[0] = a11;
    result = CGPDFNodeIsHitByPoint(j, v33, v34, a12);
    v40 = v32 ^ 1;
    if (!result)
    {
      goto LABEL_69;
    }

    v47 = j != 0;
    if (j != a1 && j)
    {
      v48 = j;
      do
      {
        v48 = *(v48 + 8);
        v47 = v48 != 0;
      }

      while (v48 != a1 && v48 != 0);
    }

    if (!v47)
    {
      goto LABEL_69;
    }

LABEL_128:
    v53 = j;
    goto LABEL_129;
  }

  if (((v26 | v29 ^ 1) & 1) == 0)
  {
    v33.n128_u64[0] = v16;
    v34.n128_u64[0] = v15;
    result = CGPDFNodeIsHitByPoint(k, v33, v34, a12);
    v40 = v32 ^ 1;
    if (result)
    {
      v41 = k != 0;
      if (k != a1 && k)
      {
        v42 = k;
        do
        {
          v42 = *(v42 + 8);
          v41 = v42 != 0;
        }

        while (v42 != a1 && v42 != 0);
      }

      if (v41)
      {
LABEL_104:
        v60 = k;
LABEL_116:
        ClosestAreaDescendantToPoint = CGPDFNodeGetClosestAreaDescendantToPoint(v60, a2, a3, &v77, *&v16, *&v15, a12);
        v65 = ClosestAreaDescendantToPoint;
        if (v77 == 1)
        {
          result = CGPDFNodeGetNodeBefore(v18, ClosestAreaDescendantToPoint, a2, a3);
          *a4 = result;
        }

        else
        {
          *a4 = ClosestAreaDescendantToPoint;
          result = CGPDFNodeGetNodeAfter(v18, ClosestAreaDescendantToPoint, a2, a3);
          v65 = result;
        }

        v70 = a5;
LABEL_135:
        *v70 = v65;
        return result;
      }
    }
  }

LABEL_69:
  if (((IsHitByPoint | v40) & 1) == 0)
  {
    v33.n128_u64[0] = v16;
    v34.n128_u64[0] = v15;
    result = CGPDFNodeIsHitByPoint(m, v33, v34, a12);
    if (!result)
    {
      return result;
    }

    v61 = m != 0;
    if (m != a1 && m)
    {
      v62 = m;
      do
      {
        v62 = *(v62 + 8);
        v61 = v62 != 0;
      }

      while (v62 != a1 && v62 != 0);
    }

    if (!v61)
    {
      return result;
    }

LABEL_115:
    v60 = m;
    goto LABEL_116;
  }

  if (((v32 | IsHitByPoint ^ 1) & 1) == 0)
  {
    v33.n128_f64[0] = a10;
    v34.n128_f64[0] = a11;
    result = CGPDFNodeIsHitByPoint(i, v33, v34, a12);
    if (result)
    {
      v50 = i != 0;
      if (i != a1 && i)
      {
        v51 = i;
        do
        {
          v51 = *(v51 + 8);
          v50 = v51 != 0;
        }

        while (v51 != a1 && v51 != 0);
      }

      if (v50)
      {
LABEL_81:
        v53 = i;
LABEL_129:
        v69 = CGPDFNodeGetClosestAreaDescendantToPoint(v53, a2, a3, &v77, a10, a11, a12);
        v65 = v69;
        if (v77 == 1)
        {
          result = CGPDFNodeGetNodeBefore(v18, v69, a2, a3);
          *a6 = result;
        }

        else
        {
          *a6 = v69;
          result = CGPDFNodeGetNodeAfter(v18, v69, a2, a3);
          v65 = result;
        }

        v70 = a7;
        goto LABEL_135;
      }
    }
  }

  return result;
}

void CGPDFNodeGetNodeRangeFromIndexToPoint(__n64 *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __n64 **a6, __n64 **a7, uint64_t *a8, double a9, double a10, double a11)
{
  if (a1)
  {
    v21 = a1;
    while (v21->n64_u32[0] != 517)
    {
      v21 = v21[1].n64_u64[0];
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    v22 = v21[13].n64_i64[0];
  }

  else
  {
LABEL_5:
    v22 = 0;
  }

  v23.n64_u64[0] = CGPDFLayoutGetRectForTextRange(v22, a3, 1).n64_u64[0];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if (a4)
  {
    NodeFollowingTextIndex = CGPDFNodeGetNodeFollowingTextIndex(a1, a3);
  }

  else
  {
    NodeFollowingTextIndex = CGPDFNodeGetNodePrecedingTextIndex(a1, a3);
  }

  v31 = NodeFollowingTextIndex;
  v72 = a7;
  v70 = v22;
  if (NodeFollowingTextIndex)
  {
    v32 = NodeFollowingTextIndex;
    do
    {
      if (v32->n64_u32[0] == a2)
      {
        v35 = a3;
        goto LABEL_27;
      }

      v32 = v32[1].n64_u64[0];
    }

    while (v32);
    if (!a5)
    {
      goto LABEL_25;
    }

    if (NodeFollowingTextIndex->n64_u32[0] != 513 && (NodeFollowingTextIndex->n64_u32[0] & 0x100) == 0)
    {
      goto LABEL_25;
    }

    v34 = NodeFollowingTextIndex;
    do
    {
      if (v34->n64_u32[0] == 513)
      {
        break;
      }

      v34 = v34[1].n64_u64[0];
    }

    while (v34);
    v35 = a3;
    if (v34)
    {
      v32 = v34;
    }

    else
    {
      v32 = NodeFollowingTextIndex;
    }

LABEL_27:
    v36 = v32;
    do
    {
      if (v36->n64_u32[0] == 1538)
      {
        v37 = v36[13].n64_u64[0];
        if (v37)
        {
          if (*v37 == 2)
          {
            break;
          }
        }
      }

      v36 = v36[1].n64_u64[0];
    }

    while (v36);
  }

  else
  {
LABEL_25:
    v35 = a3;
    v32 = 0;
    v36 = 0;
  }

  v75 = 0;
  ClosestNodeToPoint = CGPDFNodeGetClosestNodeToPoint(a1, a2, a5, &v75, a9, a10, a11);
  if (v75)
  {
    NodeBefore = CGPDFNodeGetNodeBefore(a1, ClosestNodeToPoint, a2, a5);
    NodeAfter = ClosestNodeToPoint;
  }

  else
  {
    NodeAfter = CGPDFNodeGetNodeAfter(a1, ClosestNodeToPoint, a2, a5);
    NodeBefore = ClosestNodeToPoint;
  }

  v76 = NodeAfter;
  for (i = NodeBefore; ClosestNodeToPoint; ClosestNodeToPoint = ClosestNodeToPoint[1].n64_u64[0])
  {
    if (ClosestNodeToPoint->n64_u32[0] == 1538)
    {
      v43 = ClosestNodeToPoint[13].n64_u64[0];
      if (v43)
      {
        if (*v43 == 2)
        {
          break;
        }
      }
    }
  }

  if (v31 && v36 == ClosestNodeToPoint)
  {
    if (!v32)
    {
      goto LABEL_58;
    }

    v44 = v32;
    while (*v44 != 516)
    {
      v44 = *(v44 + 8);
      if (!v44)
      {
        goto LABEL_53;
      }
    }

    if (v70)
    {
      if (v23.n64_f64[0] != INFINITY && v25 != INFINITY)
      {
        v40.n128_f64[0] = v23.n64_f64[0] + v27 * 0.5;
        v41.n128_f64[0] = v25 + v29 * 0.5;
        v73 = v32;
        v74 = v32;
        CGPDFNodeMakeLayoutAreasConsistent(v44, a2, a5, &v73, &v74, &i, &v76, v40, v41, a9, a10, a11);
      }
    }
  }

LABEL_53:
  if (v32)
  {
    if (a4)
    {
      v46 = v76;
      v47 = v72;
      if (!v76)
      {
LABEL_62:
        *a6 = v32;
        goto LABEL_66;
      }

LABEL_64:
      v48 = CGPDFNodeCompareReadingOrder(v32, v46);
      *a6 = v32;
      if (v48 != 1)
      {
        if (v48 == -1)
        {
LABEL_66:
          if (a4)
          {
            v49 = v76;
            v40.n128_f64[0] = a9;
            v41.n128_f64[0] = a10;
            if (!CGPDFNodeIsHitByPoint(v76, v40, v41, a11))
            {
              v50 = 0;
              v51 = i;
              goto LABEL_97;
            }

            goto LABEL_75;
          }

LABEL_71:
          *v47 = v32;
          goto LABEL_72;
        }

        goto LABEL_78;
      }

LABEL_70:
      if (!a4)
      {
        v49 = i;
        v40.n128_f64[0] = a9;
        v41.n128_f64[0] = a10;
        if (!CGPDFNodeIsHitByPoint(i, v40, v41, a11))
        {
          v50 = 0;
          v51 = v76;
LABEL_97:
          *v47 = v51;
          if (!a8)
          {
            return;
          }

          goto LABEL_119;
        }

LABEL_75:
        v50 = 0;
        *v47 = v49;
        if (!a8)
        {
          return;
        }

        goto LABEL_119;
      }

      goto LABEL_71;
    }

    v46 = i;
    v47 = v72;
    if (i)
    {
      goto LABEL_64;
    }

LABEL_69:
    *a6 = v32;
    goto LABEL_70;
  }

  NodeAfter = v76;
LABEL_58:
  v47 = v72;
  if (a4 && NodeAfter)
  {
    goto LABEL_69;
  }

  if ((a4 & 1) == 0 && i)
  {
    goto LABEL_62;
  }

  *a6 = 0;
LABEL_78:
  *v47 = v32;
  if (a4)
  {
    v40.n128_f64[0] = a9;
    v41.n128_f64[0] = a10;
    if (!CGPDFNodeIsHitByPoint(i, v40, v41, a11))
    {
      goto LABEL_84;
    }

    v52.n128_f64[0] = a9;
    v53.n128_f64[0] = a10;
    if (CGPDFNodeIsHitByPoint(v76, v52, v53, a11))
    {
      goto LABEL_84;
    }

LABEL_72:
    v50 = 1;
    if (!a8)
    {
      return;
    }

    goto LABEL_119;
  }

  v40.n128_f64[0] = a9;
  v41.n128_f64[0] = a10;
  if (CGPDFNodeIsHitByPoint(v76, v40, v41, a11))
  {
    v54.n128_f64[0] = a9;
    v55.n128_f64[0] = a10;
    if (!CGPDFNodeIsHitByPoint(i, v54, v55, a11))
    {
      goto LABEL_72;
    }
  }

LABEL_84:
  if (v32)
  {
    v56 = v32->n64_u32[0];
    if (v32->n64_u32[0] == 514 || v56 == 1)
    {
      CGPDFNodeGetBounds(v32);
      v25 = v57;
      v29 = v58;
    }

    if (a4)
    {
      v59 = v23.n64_f64[0];
    }

    else
    {
      v59 = v23.n64_f64[0] + v27;
    }

    if (a4)
    {
      v60 = v25 + v29;
    }

    else
    {
      v60 = v25;
    }

    Rotation = CGPDFNodeGetRotation(v32);
    if (Rotation == 0.0)
    {
      v64 = a9;
      v65 = a10;
    }

    else
    {
      v62 = __sincos_stret(Rotation);
      v63 = v60 * v62.__cosval - v62.__sinval * v59;
      v59 = v60 * v62.__sinval + v62.__cosval * v59 + 0.0;
      v60 = v63 + 0.0;
      v64 = a10 * v62.__sinval + v62.__cosval * a9 + 0.0;
      v65 = a10 * v62.__cosval - v62.__sinval * a9 + 0.0;
    }

    if (v56 == 1 || v56 == 516 || v56 == 514)
    {
      v66 = v59 == v64;
      if (v60 < v65)
      {
        v66 = 0;
      }

      if (v59 < v64)
      {
        v66 = 1;
      }

      goto LABEL_118;
    }
  }

  else
  {
    if (a4)
    {
      v59 = v23.n64_f64[0];
    }

    else
    {
      v59 = v23.n64_f64[0] + v27;
    }

    if (a4)
    {
      v60 = v25 + v29;
    }

    else
    {
      v60 = v25;
    }

    v65 = a10;
    v64 = a9;
  }

  v66 = v60 == v65;
  if (v59 > v64)
  {
    v66 = 0;
  }

  if (v60 > v65)
  {
    v66 = 1;
  }

LABEL_118:
  v50 = v66 ^ a4;
  if (!a8)
  {
    return;
  }

LABEL_119:
  v67 = v35 - 1;
  if (!a4)
  {
    v67 = v35 + 1;
  }

  *a8 = v67;
  if ((v50 & 1) == 0)
  {
    v68 = *v47 ? *v47 : v32;
    if (v68)
    {
      if (a4)
      {
        TextIndexBeforePoint = CGPDFNodeGetTextIndexBeforePoint(v68, a9, a10, a11);
        if (TextIndexBeforePoint < v35)
        {
          return;
        }
      }

      else
      {
        TextIndexBeforePoint = CGPDFNodeGetTextIndexAfterPoint(v68, a9, a10, a11);
        if (TextIndexBeforePoint > v35)
        {
          return;
        }
      }

      *a8 = TextIndexBeforePoint;
    }
  }
}

__n64 *CGPDFNodeGetTopmostContentNodeAtPoint(uint64_t a1, _BYTE *a2, __n128 a3, __n128 a4)
{
  v5 = a1;
  Rotation = CGPDFNodeGetRotation(a1);
  *&v7.f64[0] = a3.n128_u64[0];
  *&v7.f64[1] = a4.n128_u64[0];
  if (Rotation != 0.0)
  {
    pointa = v7;
    v9 = __sincos_stret(Rotation);
    v8.f64[0] = v9.__cosval;
    v8.f64[1] = -v9.__sinval;
    v7 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v9, pointa, 1), v8, a3.n128_f64[0]), 0);
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  point = v7;
  v32.origin.x = CGPDFNodeGetBounds(v5).n64_f64[0];
  v10 = CGRectContainsPoint(v32, point);
  if (!v10)
  {
    v5 = 0;
    goto LABEL_14;
  }

  v11 = v5->n64_u32[0];
  if (v5->n64_i32[0] <= 512)
  {
    v12 = a3;
    if (v11 == 257)
    {
LABEL_9:
      LOBYTE(v10) = 1;
      goto LABEL_14;
    }

    if (v11 != 258)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v12 = a3;
  if (v11 != 515)
  {
    if (v11 != 513)
    {
LABEL_8:
      if ((v11 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      *a2 = 0;
      v21 = v5[5].n64_u32[1];
      if (!v21)
      {
        return 0;
      }

      v22 = 0;
      v13 = 0;
      while (1)
      {
        v31 = 0;
        if ((v5->n64_u8[1] & 2) != 0 && v22 < v5[5].n64_u32[1])
        {
          v23 = *(v5[7].n64_u64[0] + 8 * v22);
        }

        else
        {
          v23 = 0;
        }

        TopmostContentNodeAtPoint = CGPDFNodeGetTopmostContentNodeAtPoint(v23, &v31, v12, a4);
        if (TopmostContentNodeAtPoint)
        {
          v12 = a3;
          if (!v13)
          {
            goto LABEL_50;
          }

          if (v31)
          {
            if (*a2)
            {
LABEL_39:
              v25 = TopmostContentNodeAtPoint;
              while ((*(v25 + 1) & 3) == 0)
              {
                v25 = *(v25 + 8);
                if (!v25)
                {
                  goto LABEL_44;
                }
              }

              v25 = *(v25 + 96);
LABEL_44:
              v26 = v13;
              while ((v26->n64_u8[1] & 3) == 0)
              {
                v26 = v26[1].n64_u64[0];
                if (!v26)
                {
                  goto LABEL_49;
                }
              }

              v26 = v26[12].n64_u64[0];
LABEL_49:
              if (v25 < v26)
              {
                goto LABEL_51;
              }
            }

LABEL_50:
            *a2 = v31;
            v13 = TopmostContentNodeAtPoint;
            goto LABEL_51;
          }

          if ((*a2 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v12 = a3;
        }

LABEL_51:
        if (++v22 == v21)
        {
          return v13;
        }
      }
    }

LABEL_13:
    LOBYTE(v10) = 0;
    goto LABEL_14;
  }

  *a2 = 0;
  v15 = v5[5].n64_u32[1];
  if (!v15)
  {
    return v5;
  }

  v16 = 0;
  while (1)
  {
    v13 = (v5->n64_u8[1] & 2) != 0 && v16 < v5[5].n64_u32[1] ? *(v5[7].n64_u64[0] + 8 * v16) : 0;
    v17.n64_u64[0] = CGPDFNodeGetBounds(v13).n64_u64[0];
    if (v18.n64_f64[0] <= point.y)
    {
      break;
    }

    if (v15 == ++v16)
    {
      return v13;
    }
  }

  LOBYTE(v10) = CGRectContainsPoint(*v17.n64_u64, point);
  v5 = v13;
LABEL_14:
  *a2 = v10;
  return v5;
}

double CGPDFNodeGetContentRect(__n64 *a1)
{
  v1 = a1;
  v3.n64_u64[0] = CGPDFNodeGetBounds(a1).n64_u64[0];
  if (v1 && (v1->n64_u32[0] == 1537 || v1->n64_u32[0] == 514) && v3.n64_f64[0] != INFINITY && v2.n64_f64[0] != INFINITY)
  {
    while (v1->n64_u32[0] != 515)
    {
      v1 = v1[1].n64_u64[0];
      if (!v1)
      {
        return v3.n64_f64[0];
      }
    }

    v5.n64_u64[0] = CGPDFNodeGetBounds(v1).n64_u64[0];
    v6 = v5.n64_f64[0] == INFINITY;
    if (v7 == INFINITY)
    {
      v6 = 1;
    }

    if (!v6)
    {
      v3.n64_u64[0] = v5.n64_u64[0];
    }
  }

  return v3.n64_f64[0];
}

char *RIPLayerCreateWithLayer(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a3)
  {
    v5 = *a3;
    if (*a3)
    {
      if (a3[4])
      {
        v6 = a2 ? a2 : a3 + 12;
        if ((*(v6 + 8) & 0x80000000) == 0 && (*(v6 + 12) & 0x80000000) == 0)
        {
          v102 = 0;
          v103 = 0;
          v9 = (*(v5 + 32))(a3, 16, &v102);
          if (v9)
          {
            v17 = *v9;
            if (*v9)
            {
              if (v17 == RIPGetDepthForLayerFormat(0, v10, v11, v12, v13, v14, v15, v16))
              {
                v23 = (*(a1 + 8))(a1);
                v24 = malloc_type_calloc(1uLL, v23, 0x24B1A8CEuLL);
                v21 = v24;
                if (!v24)
                {
                  goto LABEL_85;
                }

                *v24 = a1;
                *(v24 + 2) = 1;
                *(v24 + 12) = *v6;
                *(v24 + 7) = 0;
                *(v24 + 4) = v17;
                pthread_mutex_init((v24 + 80), 0);
              }

              else
              {
                v21 = RIPLayerCreate(a1, v6, a3[9] != 0, v17, a4, v18, v19, v20);
                if (!v21)
                {
                  goto LABEL_85;
                }
              }

              if ((CGSBoundsIntersection(v21 + 3, a3 + 3, &v102) & 1) == 0)
              {
                if (v17 == RIPGetDepthForLayerFormat(0, v25, v26, v27, v28, v29, v30, v31) && (*(v21 + 5) || *(v21 + 6)))
                {
                  *(v21 + 9) = &the_empty_shape;
                  *(v21 + 16) = 12;
                }

                goto LABEL_85;
              }

              if ((*(*v21 + 32))(v21, 32, v21 + 12))
              {
                v39 = v102;
                v40 = HIDWORD(v102);
                v100 = HIDWORD(v102);
                v101 = v102;
                v42 = v103;
                v41 = HIDWORD(v103);
                v98 = HIDWORD(v103);
                v99 = v103;
                v43 = RIPGetDepthForLayerFormat(0, v32, v33, v34, v35, v36, v37, v38);
                if (v17 != v43)
                {
                  v44 = *(v21 + 7);
                  if (!v44)
                  {
                    goto LABEL_84;
                  }

                  v45 = v102 - *(v21 + 3);
                  v46 = *(v21 + 6) + *(v21 + 4) - (HIDWORD(v103) + HIDWORD(v102));
                  v47 = v102 - *(a3 + 3);
                  v48 = *(a3 + 4) - (HIDWORD(v103) + HIDWORD(v102)) + *(a3 + 6);
                  CGBlt_copyBytes(v42 * (*v17 >> 25), v41, (a3[7] + (*(a3 + 12) * v48) + (*v17 >> 25) * v47), (v44 + (*(v21 + 12) * v46) + (*v17 >> 25) * v45), *(a3 + 12), *(v21 + 12));
                  v49 = *(v21 + 9);
                  if (!v49 || v49 == *(v21 + 7))
                  {
                    goto LABEL_84;
                  }

                  v50 = *(v21 + 16);
                  v51 = (v50 * v46);
                  v52 = v49 + v45;
                  v53 = a3[9];
                  if (!v53 || v53 == a3[7])
                  {
                    CGBlt_fillBytes(v42, v41, -1, (v52 + v51), *(v21 + 16));
                    goto LABEL_84;
                  }

                  v54 = *(a3 + 16);
                  v55 = (v53 + v47 + (v54 * v48));
                  v56 = (v52 + v51);
                  v57 = v42;
                  v58 = v41;
                  goto LABEL_28;
                }

                v59 = a3[9];
                if (v59)
                {
                  v60 = *(a3 + 4);
                  v61 = *(a3 + 3) - *(v21 + 3);
                  v62 = *(v21 + 5);
                  v63 = *(v21 + 6);
                  v64 = v63 + *(v21 + 4);
                  v65 = *(a3 + 5);
                  v100 = v64 - (v60 + *(a3 + 6));
                  v101 = v61;
                  shape_combine(0, 0, 0, v62, v63, 0, v61, v100, v65 + v61, v64 - v60, v59);
                  if (v66)
                  {
                    v67 = v66;
                    v68 = shape_bounds(v66, &v101, &v100, &v99, &v98);
                    if (v68)
                    {
                      v70 = v68 == 9 && v101 == 0 && v100 == 0;
                      if (v70 && v99 == *(v21 + 5) && v98 == *(v21 + 6))
                      {
                        if (v67 != &the_empty_shape)
                        {
                          free(v67);
                        }

                        goto LABEL_84;
                      }

                      *(v21 + 9) = v67;
                      v81 = 4 * v68;
                      goto LABEL_83;
                    }
                  }

                  goto LABEL_82;
                }

                v71 = *(a3 + 16);
                if (v71)
                {
                  v43 = ripl_Containment(&v102, a3 + 3, v71);
                  v72 = v43;
                  v73 = *(v21 + 6);
                  v74 = *(v21 + 5);
                  if (v42 == v74 && v41 == v73)
                  {
                    *(v21 + 16) = v43;
                    goto LABEL_84;
                  }

                  v76 = v102 - *(v21 + 3);
                  v40 = v73 + *(v21 + 4) - (HIDWORD(v102) + HIDWORD(v103));
                  v100 = v40;
                  v101 = v76;
                  if (v43)
                  {
                    v77 = (v74 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                    v78 = v73 * v77 + 4;
                    v79 = (v73 * v77 + 19) & 0xFFFFFFF0;
                    if (v78 >> 31)
                    {
                      v43 = 0xFFFFFFFFLL;
                    }

                    else
                    {
                      v43 = v79;
                    }

                    if (v43 >= 1)
                    {
                      v43 = malloc_type_malloc(v43, 0x941F2EFCuLL);
                      *(v21 + 7) = v43;
                      if (v43)
                      {
                        v80 = v43 + v40 * v77;
                        *(v21 + 7) &= ~2u;
                        *(v21 + 12) = v77;
                        CGBlt_fillBytes(v42, v41, -1, (v80 + v76), v77);
                        CGSCombineMask(0, 0, (v80 + v76), v77, v42, v41, v72);
                        goto LABEL_84;
                      }
                    }

                    v91 = v42 + v76;
                  }

                  else
                  {
                    v91 = v76 + v42;
                  }

                  v92 = v41 + v40;
                  v93 = v76;
                }

                else
                {
                  v82 = *(v21 + 5);
                  if (!a3[7])
                  {
                    v94 = *(v21 + 6);
                    if (v42 == v82 && v41 == v94)
                    {
                      goto LABEL_84;
                    }

                    v93 = v102 - *(v21 + 3);
                    v96 = v94 + *(v21 + 4) - (HIDWORD(v102) + HIDWORD(v103));
                    v100 = v96;
                    v101 = v93;
                    v91 = v93 + v42;
                    v92 = v41 + v96;
LABEL_80:
                    shape_alloc_bounds(v43, v93, v96, v91, v92);
                    *(v21 + 9) = v97;
                    if (v97)
                    {
                      v81 = 36;
LABEL_83:
                      *(v21 + 16) = v81;
                      goto LABEL_84;
                    }

LABEL_82:
                    *(v21 + 9) = &the_empty_shape;
                    v81 = 12;
                    goto LABEL_83;
                  }

                  v83 = (v82 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                  if ((v83 * *(v21 + 6) + 4) >> 31)
                  {
                    v43 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v43 = (v83 * *(v21 + 6) + 19) & 0xFFFFFFF0;
                  }

                  if (v43 >= 1)
                  {
                    v43 = malloc_type_malloc(v43, 0xFE4352D7uLL);
                    if (v43)
                    {
                      v84 = *(v21 + 6);
                      *(v21 + 7) &= ~2u;
                      *(v21 + 7) = v43;
                      v85 = v102 - *(v21 + 3);
                      v86 = v103;
                      v58 = HIDWORD(v103);
                      v87 = HIDWORD(v103) + HIDWORD(v102);
                      v88 = v43 + (v84 + *(v21 + 4) - (HIDWORD(v103) + HIDWORD(v102))) * v83;
                      v89 = *(a3 + 4);
                      v90 = v102 - *(a3 + 3);
                      *(v21 + 12) = v83;
                      v100 = v89 - v87 + *(a3 + 6);
                      v101 = v90;
                      v54 = *(a3 + 12);
                      v55 = (a3[7] + v90 + (v54 * v100));
                      v56 = (v88 + v85);
                      v57 = v86;
                      v50 = v83;
LABEL_28:
                      CGBlt_copyBytes(v57, v58, v55, v56, v54, v50);
LABEL_84:
                      (*(*v21 + 48))(v21, v21 + 12);
                      goto LABEL_85;
                    }
                  }

                  v91 = v42 + v39;
                  v92 = v41 + v40;
                  v93 = v39;
                }

                v96 = v40;
                goto LABEL_80;
              }
            }

            else
            {
              v21 = 0;
            }

LABEL_85:
            (*(*a3 + 48))(a3, 0);
            return v21;
          }
        }
      }
    }
  }

  return 0;
}

char *RIPLayerConvertLayer(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v41 = xmmword_184562D40;
  v42 = xmmword_184562D50;
  v37 = unk_184562D00;
  v38 = xmmword_184562D10;
  v39 = unk_184562D20;
  v40 = xmmword_184562D30;
  v33 = unk_184562CC0;
  v34 = xmmword_184562CD0;
  v43 = 0;
  v35 = unk_184562CE0;
  v36 = xmmword_184562CF0;
  memset(v29, 0, sizeof(v29));
  v30 = xmmword_184562C90;
  v31 = unk_184562CA0;
  v32 = xmmword_184562CB0;
  v28 = 0;
  v27 = 0u;
  v26 = 0u;
  if (!a3)
  {
    return 0;
  }

  if (!*a3)
  {
    return 0;
  }

  if (!*(a3 + 32))
  {
    return 0;
  }

  if ((*(a3 + 20) & 0x80000000) != 0)
  {
    return 0;
  }

  if ((*(a3 + 24) & 0x80000000) != 0)
  {
    return 0;
  }

  v8 = (*(*a3 + 32))(a3, 16, a3 + 12);
  if (!v8)
  {
    return 0;
  }

  *&v30 = *v8;
  if (!v30 || (*&v31 = 0, v23 = 0, v15 = *(a3 + 24), DWORD2(v31) = *(a3 + 20), HIDWORD(v31) = v15, v24 = DWORD2(v31), v25 = v15, *(&v30 + 1) = __PAIR64__(v15, DWORD2(v31)), !*(a3 + 56)) && (ripl_CreateMask(a3, 0, v9, v10, v11, v12, v13, v14) & 1) == 0)
  {
    (*(*a3 + 48))(a3, 0);
    return 0;
  }

  v16 = RIPLayerCreate(a1, &v23, (*(a3 + 72) != 0) | a2, 0, a4, v12, v13, v14);
  v20 = v16;
  if (v16)
  {
    *(&v32 + 1) = *(a3 + 56);
    LODWORD(v32) = *(a3 + 48);
    LODWORD(v33) = *(a3 + 64);
    v21 = *(a3 + 72);
    v34 = 0uLL;
    *(&v33 + 1) = v21;
    v28 = 0;
    *&v27 = 0;
    v26 = v29;
    DWORD2(v27) = 0;
    RIPLayerBltImage(v16, 0, 0, &v23, &unk_1845629E8, v17, v18, v19);
    *(v20 + 12) = *(a3 + 12);
    (*(*a3 + 48))(a3, v20 + 12);
  }

  else
  {
    (*(*a3 + 48))(a3, 0);
  }

  return v20;
}

uint64_t ripl_BltOpSourceLayer(uint64_t a1, _DWORD *a2, _DWORD *a3, int32x2_t *a4, uint64_t a5)
{
  v5 = *(a5 + 12);
  v6 = *(a5 + 20);
  v7 = *(a5 + 24);
  if (a4)
  {
    v5 = vadd_s32(*a4, v5);
  }

  if (v6 <= 1 && v7 <= 1)
  {
    v6 = 0;
    v7 = 0;
    v9 = 4;
    *(a1 + 1) = 4;
    *(a1 + 56) = 0;
  }

  else if (a5 != a3 && (*(a5 + 28) & 8) != 0)
  {
    v9 = 2;
    *(a1 + 1) = 2;
    v10 = v5.i32[1] + v7 - (a3[4] + a3[6]) + *(a1 + 16);
    *(a1 + 56) = a3[3] - v5.i32[0] + *(a1 + 12);
    *(a1 + 60) = v10;
  }

  else
  {
    v9 = 1;
    *(a1 + 1) = 1;
    *(a1 + 56) = *a2 - v5.i32[0];
    *(a1 + 60) = v5.i32[1] + v7 - (a2[1] + a2[3]);
  }

  *(a1 + 64) = v6;
  *(a1 + 68) = v7;
  v11 = *(a5 + 48);
  *(a1 + 72) = 0;
  *(a1 + 76) = v11;
  v12 = *(a5 + 56);
  *(a1 + 80) = *(a5 + 64);
  v13 = *(a5 + 72);
  *(a1 + 88) = v12;
  *(a1 + 96) = v13;
  return v9;
}

void RIPLayerResample(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = !*a1 || a2 == 0;
    if (!v10 && (*a2 != 0.0 || a2[1] != 1.0))
    {
      v11 = *(a1 + 32);
      if (v11 && v11 == RIPGetDepthForLayerFormat(0, a2, a3, a4, a5, a6, a7, a8) && (*(a1 + 56) || ripl_CreateMask(a1, 1, v12, v13, v14, v15, v16, v17)))
      {
        v19 = decode_create(*v11 >> 12, *v11 >> 22, *v11 >> 22, a2, 1, v18);
        if (v19)
        {
          v22 = v19;
          decode_data(v19, *(a1 + 20), *(a1 + 24), *(a1 + 56), *(a1 + 48), *(a1 + 56), *(a1 + 48), 0, v20, v21, 0);

          free(v22);
        }
      }
    }
  }
}

uint64_t RIPLayerTransfer(uint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    if (a3)
    {
      v9 = result;
      if (*result)
      {
        v23 = 0uLL;
        v10 = *(result + 32);
        if ((!v10 || (*v10 & 0x3F0000) == 0x80000) && (*(result + 20) & 0x80000000) == 0)
        {
          v11 = *(result + 24);
          if ((v11 & 0x80000000) == 0)
          {
            if (a2)
            {
              result = CGSBoundsIntersection((result + 12), a2, &v23);
              if (!result)
              {
                return result;
              }

              v12 = v23 - *(v9 + 12);
              v13 = v11 + *(v9 + 16) - (DWORD1(v23) + HIDWORD(v23));
            }

            else
            {
              v12 = 0;
              v13 = 0;
              v23 = *(result + 12);
            }

            if (*(v9 + 56) || (result = ripl_CreateMask(v9, 1, a3, a4, a5, a6, a7, a8), result))
            {
              v14 = HIDWORD(v23);
              if (SHIDWORD(v23) >= 1)
              {
                v15 = *v10 >> 25;
                v16 = DWORD2(v23) * v15;
                v17 = *(v9 + 48);
                v18 = (*(v9 + 56) + (v17 * v13) + v15 * v12);
                v19 = v17 - v16;
                do
                {
                  v20 = v16;
                  if (v16 >= 4)
                  {
                    do
                    {
                      *v18 = *(a3 + *v18) | (*(a3 + BYTE1(*v18)) << 8) | (*(a3 + BYTE2(*v18)) << 16) | (*(a3 + (*v18 >> 24)) << 24);
                      ++v18;
                      v21 = v20 > 7;
                      v20 -= 4;
                    }

                    while (v21);
                  }

                  if (v20 >= 1)
                  {
                    v22 = v20 + 1;
                    do
                    {
                      *v18 = *(a3 + *v18);
                      v18 = (v18 + 1);
                      --v22;
                    }

                    while (v22 > 1);
                  }

                  v18 = (v18 + v19);
                  v21 = v14-- <= 1;
                }

                while (!v21);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

char *RIPLayerClip(uint64_t a1, signed int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (!a2)
  {
    return v8;
  }

  v9 = a4;
  LODWORD(v10) = a3;
  v11 = *a2;
  v12 = a2[1];
  v13 = *a2 + a2[2];
  v14 = v12 + a2[3];
  v15 = (a1 + 12);
  v16 = *(a1 + 12);
  v18 = *(a1 + 20);
  v17 = *(a1 + 24);
  v19 = *(a1 + 16);
  v20 = v16 + v18;
  v21 = v19 + v17;
  v22 = *(a1 + 72);
  if (v22 || (v30 = *(a1 + 64)) == 0)
  {
    v23 = v10 & 0xFFFFFF;
    if (v16 > v11)
    {
      v11 = v16;
    }

    else
    {
      v23 = v10;
    }

    a4 = v23 & 0xFFFFFF00;
    if (v19 > v12)
    {
      v23 &= 0xFFFFFF00;
      v12 = v19;
    }

    v19 = v23 & 0xFFFF00FF;
    if (v20 < v13)
    {
      v23 &= 0xFFFF00FF;
      v13 = v16 + v18;
    }

    if (v21 >= v14)
    {
      v10 = v23;
    }

    else
    {
      v10 = v23 & 0xFF00FFFF;
    }

    if (v21 < v14)
    {
      v14 = v21;
    }
  }

  else if (v10)
  {
    if (v16 <= v11)
    {
      if (v16 == v11)
      {
        v36 = (~v30 >> 24) * (~v10 >> 24);
        a5 = 4294836224;
        a4 = (-131072 - ((v36 + (v36 >> 8)) << 16)) & 0xFF000000 | v10 & 0xFFFFFF;
        LODWORD(v10) = a4;
      }
    }

    else
    {
      LODWORD(v10) = v30 & 0xFF000000 | v10 & 0xFFFFFF;
      v11 = *(v8 + 3);
    }

    if (v19 <= v12)
    {
      if (v19 == v12)
      {
        v37 = ~v10 * ~v30;
        a4 = v10 & 0xFFFFFF00;
        v19 = a4 - ((v37 + (v37 >> 8) + 1) >> 8);
        LODWORD(v10) = v19 + 255;
      }
    }

    else
    {
      LODWORD(v10) = v10 & 0xFFFFFF00 | v30;
      v12 = *(v8 + 4);
    }

    if (v20 >= v13)
    {
      if (v20 == v13)
      {
        v38 = ~(v10 >> 8) * ~(v30 >> 8);
        v19 = 65280;
        LODWORD(v10) = (v10 & 0xFFFF00FF) - ((v38 + (v38 >> 8) + 1) & 0x3FF00) + 65280;
      }
    }

    else
    {
      LODWORD(v10) = v10 & 0xFFFF00FF | (BYTE1(v30) << 8);
      v13 = v16 + v18;
    }

    if (v21 >= v14)
    {
      v19 = ~WORD1(v10);
      v39 = (v10 & 0xFF00FFFF) - ((((257 * ~HIWORD(v30) * v19) & 0xFFFF00) + 256) & 0x1FF0000) + 16711680;
      if (v21 == v14)
      {
        v10 = v39;
      }

      else
      {
        v10 = v10;
      }
    }

    else
    {
      v10 = v10 & 0xFF00FFFF | (BYTE2(v30) << 16);
      v14 = v21;
    }
  }

  else
  {
    v33 = v30 & 0xFF000000;
    if (v16 > v11)
    {
      v11 = v16;
    }

    else
    {
      v33 = 0;
    }

    if (v19 <= v12)
    {
      a5 = 0;
    }

    else
    {
      a5 = v30;
    }

    a4 = v33 | a5;
    if (v19 > v12)
    {
      v12 = v19;
    }

    v34 = v30 & 0xFF00;
    if (v20 >= v13)
    {
      v34 = 0;
    }

    v19 = a4 | v34;
    if (v20 < v13)
    {
      v13 = v16 + v18;
    }

    v35 = v19 | v30 & 0xFF0000;
    if (v21 < v14)
    {
      v10 = v35;
    }

    else
    {
      v10 = v19;
    }

    if (v21 < v14)
    {
      v14 = v21;
    }
  }

  v24 = __OFSUB__(v13, v11);
  v25 = v13 - v11;
  if ((v25 < 0) ^ v24 | (v25 == 0))
  {
    v26 = 1;
  }

  else
  {
    v26 = v14 <= v12;
  }

  if (!v26)
  {
    *&v40 = __PAIR64__(v12, v11);
    v28 = v14 - v12;
    *(&v40 + 1) = __PAIR64__(v28, v25);
    if (v25 != v18 || v28 != v17)
    {
      if (*(v8 + 2) == 1 && v16 == v11 && v21 == v14)
      {
        *v15 = v40;
        if (!v22 && *(v8 + 16))
        {
          *(v8 + 16) = 0;
        }
      }

      else
      {
        v8 = RIPLayerCreateWithLayer(RIPLayer_ripl_class, &v40, v8, v9);
      }
    }

    if (v10)
    {
      if (v8)
      {
        v31 = *(v8 + 7);
        if (!v31 && !*(v8 + 9))
        {
          if (*(v8 + 2) != 1)
          {
            v8 = RIPLayerCreateWithLayer(RIPLayer_ripl_class, &v40, v8, v9);
          }

          *(v8 + 16) = v10;
          return v8;
        }

        if (*(v8 + 2) != 1)
        {
          v8 = RIPLayerCreateWithLayer(RIPLayer_ripl_class, &v40, v8, v9);
          v31 = *(v8 + 7);
        }

        if (!v31)
        {
          if (!ripl_CreateMask(v8, 1, v19, a4, a5, a6, a7, a8))
          {
            return 0;
          }

          v31 = *(v8 + 7);
        }

        CGSCombineMask(v31, *(v8 + 12), v31, *(v8 + 12), SDWORD2(v40), SHIDWORD(v40), v10);
        return v8;
      }

      v32 = v10;
    }

    else
    {
      if (v8)
      {
        return v8;
      }

      v32 = 0;
    }

    return RIPLayerCreateWithData(&v40, 0, 0, 0, 0, v32, 0, v9);
  }

  return RIPLayerCreate(RIPLayer_ripl_class, 0, 0, 0, v9, a6, a7, a8);
}

__n128 RIPLayerDefine(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {
      if (!*(a1 + 56))
      {
        v10 = a2->n128_i32[2];
        if (v10 >= 1)
        {
          v11 = a2->n128_i32[3];
          if (v11 >= 1)
          {
            v12 = RIPGetDepthForLayerFormat(0, a2, a3, a4, a5, a6, a7, a8);
            if (v10 <= 0x7FFFFE)
            {
              v14 = v12;
              v15 = ((((*v12 >> 22) * v10) >> 3) + 3) & 0x3FFFFFFC;
              v16 = (*v12 >> 2) & 3;
              v17 = (v10 + 3) & 0xFFFFFC;
              if (v16 != 1)
              {
                v17 = 0;
              }

              if (v16 == 2)
              {
                v18 = ((((*v12 >> 22) * v10) >> 3) + 3) & 0x3FFFFFFC;
              }

              else
              {
                v18 = v17;
              }

              v19 = v11 * (v18 + v15);
              if (v19 > 0x7FFFFFFB)
              {
                v20 = 0xFFFFFFFFLL;
              }

              else
              {
                v20 = (v19 + 19) & 0xFFFFFFF0;
              }

              if ((v20 & 0x80000000) == 0)
              {
                v21 = malloc_type_calloc(1uLL, v20, 0xFE37F4F0uLL);
                if (v21)
                {
                  v22 = v21;
                  if (v18)
                  {
                    v23 = (*v14 >> 2) & 3;
                    v24 = v21;
                    if (v23 != 2)
                    {
                      if (v23 == 1)
                      {
                        v24 = &v21[v15 * v11];
                      }

                      else
                      {
                        v24 = 0;
                      }
                    }
                  }

                  else
                  {
                    v24 = 0;
                  }

                  v25 = *(a1 + 28) | initialize_deep_mask(v14);
                  *(a1 + 28) = v25;
                  if (v14[4])
                  {
                    *(a1 + 28) = v25 | 0x200;
                  }

                  *(a1 + 32) = v14;
                  result = *a2;
                  *(a1 + 12) = *a2;
                  *(a1 + 64) = v18;
                  *(a1 + 72) = v24;
                  *(a1 + 48) = v15;
                  *(a1 + 56) = v22;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

_BYTE *RIPLayerCreateImage(uint64_t a1, CGColorSpaceRef space, char a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v44 = xmmword_184562A30;
  if (a1)
  {
    if (*a1 == RIPLayer_ripl_class && *(a1 + 20) >= 1)
    {
      v6 = *(a1 + 24);
      if (v6 >= 1)
      {
        v7 = *(a1 + 56);
        if (v7)
        {
          v8 = *(a1 + 32);
          if (v8)
          {
            v4 = 0;
            v11 = (*v8 >> 8) & 0xF;
            if (v11 <= 2)
            {
              if (v11)
              {
                if (v11 == 1)
                {
                  if ((*v8 & 0xCC) == 4)
                  {
                    if (space && CGColorSpaceGetModel(space) == kCGColorSpaceModelMonochrome)
                    {
                      DeviceGray = 0;
                    }

                    else
                    {
                      DeviceGray = CGColorSpaceCreateDeviceGray();
                    }

                    v18 = *(a1 + 48);
                    v15 = HIWORD(*v8) & 0x3F;
                    v19 = *v8 >> 22;
                    switch(v15)
                    {
                      case 8u:
                        v29 = *v8 >> 6;
                        if (v29 == 2)
                        {
                          v17 = 5;
                          if ((*v8 & 0xC) == 8)
                          {
                            if (*(a1 + 72) == *(a1 + 56))
                            {
                              v17 = 1;
                            }

                            else
                            {
                              v17 = 5;
                            }
                          }
                        }

                        else
                        {
                          if (v29 != 1)
                          {
                            goto LABEL_93;
                          }

                          v17 = 6;
                          if ((*v8 & 0xC) == 8)
                          {
                            if (*(a1 + 72) == *(a1 + 56))
                            {
                              v17 = 2;
                            }

                            else
                            {
                              v17 = 6;
                            }
                          }
                        }

                        break;
                      case 0x10u:
                        if ((*v8 & 0x30) == 0x20)
                        {
                          v17 = ((*v8 & 1) << 8) | 0x1000;
                        }

                        else
                        {
                          v17 = (*v8 & 1) << 8;
                        }

                        break;
                      case 0x20u:
                        if ((*v8 & 0x30) == 0x20)
                        {
                          v17 = 8448;
                        }

                        else
                        {
                          v17 = 256;
                        }

                        break;
                      default:
LABEL_93:
                        v17 = 0;
                        break;
                    }

                    if ((*v8 & 0xC) == 4)
                    {
                      v25 = *(a1 + 72);
                      if (v25)
                      {
                        v27 = *(a1 + 64);
LABEL_99:
                        v24 = HIWORD(*v8) & 0x3F;
                        v28 = *v8 >> 22;
LABEL_100:
                        v30 = *(a1 + 24);
                        if (is_mul_ok(v30, v18))
                        {
                          bitsPerPixel = v28;
                          bitsPerPixel_4 = v24;
                          v31 = v18;
                          spacea = DeviceGray;
                          provider_18746 = create_provider_18746(*(a1 + 56), v30 * v18, a3);
                          if (provider_18746)
                          {
                            v33 = provider_18746;
                            if (spacea)
                            {
                              v34 = spacea;
                            }

                            else
                            {
                              v34 = space;
                            }

                            v35 = CGImageCreate(*(a1 + 20), *(a1 + 24), v15, v19, v31, v34, v17, provider_18746, 0, 0, kCGRenderingIntentDefault);
                            CGDataProviderRelease(v33);
                            if (v25 && (v36 = *(a1 + 24), is_mul_ok(v36, v27)))
                            {
                              v37 = create_provider_18746(v25, v36 * v27, a3);
                              v38 = CGColorSpaceCreateDeviceGray();
                              if (bitsPerPixel_4 <= 8)
                              {
                                v39 = 0;
                              }

                              else
                              {
                                v39 = v17 & 0x3100;
                              }

                              v40 = CGImageCreate(*(a1 + 20), *(a1 + 24), bitsPerPixel_4, bitsPerPixel, v27, v38, v39, v37, 0, 0, kCGRenderingIntentDefault);
                              CGColorSpaceRelease(v38);
                              CGDataProviderRelease(v37);
                              v4 = CGImageCreateWithMaskAndMatte(v35, v40, RIPLayerCreateImage_matte);
                              if (v40)
                              {
                                CFRelease(v40);
                              }

                              if (v35)
                              {
                                CFRelease(v35);
                              }
                            }

                            else
                            {
                              v4 = v35;
                            }
                          }

                          else
                          {
                            v4 = 0;
                          }

                          DeviceGray = spacea;
                        }

                        else
                        {
                          v4 = 0;
                        }

                        if (DeviceGray)
                        {
                          CGColorSpaceRelease(DeviceGray);
                        }

                        goto LABEL_120;
                      }
                    }

                    else
                    {
                      v25 = 0;
                    }

                    v27 = 0;
                    goto LABEL_99;
                  }

                  goto LABEL_24;
                }

LABEL_120:
                (*(*a1 + 48))(a1, 0);
                CGImageSetCachingFlags(v4, 1);
                return v4;
              }

              v13 = create_provider_18746(v7, *(a1 + 48) * v6, a3);
              if (v13)
              {
                v14 = v13;
                v4 = mask_create(*(a1 + 20), *(a1 + 24), 8uLL, 8uLL, *(a1 + 48), v13, &v44, 1, 4);
                CGDataProviderRelease(v14);
                goto LABEL_120;
              }

LABEL_24:
              v4 = 0;
              goto LABEL_120;
            }

            if (v11 != 3)
            {
              if (v11 != 4)
              {
                goto LABEL_120;
              }

              if ((*v8 & 0xCC) == 4)
              {
                if (space && CGColorSpaceGetModel(space) == kCGColorSpaceModelCMYK)
                {
                  DeviceGray = 0;
                }

                else
                {
                  DeviceGray = CGColorSpaceCreateDeviceCMYK();
                }

                v18 = *(a1 + 48);
                v15 = HIWORD(*v8) & 0x3F;
                v19 = *v8 >> 22;
                if (v15 == 16)
                {
                  if ((*v8 & 0x30) == 0x20)
                  {
                    v17 = ((*v8 & 1) << 8) | 0x1000;
                  }

                  else
                  {
                    v17 = (*v8 & 1) << 8;
                  }
                }

                else if (v15 == 32)
                {
                  if ((*v8 & 0x30) == 0x20)
                  {
                    v17 = 8448;
                  }

                  else
                  {
                    v17 = 256;
                  }
                }

                else
                {
                  v17 = 0;
                }

                v25 = *(a1 + 72);
                if (v25)
                {
                  v27 = *(a1 + 64);
                }

                else
                {
                  v27 = 0;
                }

                v24 = HIWORD(*v8) & 0x3F;
                v28 = v24;
                goto LABEL_100;
              }

              goto LABEL_24;
            }

            if (space && CGColorSpaceGetModel(space) == kCGColorSpaceModelRGB)
            {
              DeviceGray = 0;
            }

            else
            {
              DeviceGray = CGColorSpaceCreateDeviceRGB();
            }

            v15 = HIWORD(*v8) & 0x3F;
            v16 = *v8 >> 6;
            if (v16 == 2)
            {
              v17 = 5;
              if ((*v8 & 0xC) == 8)
              {
                if (*(a1 + 72) == *(a1 + 56))
                {
                  v17 = 1;
                }

                else
                {
                  v17 = 5;
                }
              }
            }

            else if (v16 == 1)
            {
              v17 = 6;
              if ((*v8 & 0xC) == 8)
              {
                if (*(a1 + 72) == *(a1 + 56))
                {
                  v17 = 2;
                }

                else
                {
                  v17 = 6;
                }
              }
            }

            else
            {
              v17 = 0;
            }

            v18 = *(a1 + 48);
            v19 = *v8 >> 22;
            if ((HIWORD(*v8) & 0x3Fu) > 0xF)
            {
              if (v15 != 16)
              {
                if (v15 == 32)
                {
                  if ((*v8 & 0x30) == 0x20)
                  {
                    v22 = 8448;
                  }

                  else
                  {
                    v22 = 256;
                  }

                  v17 |= v22;
                }

                goto LABEL_63;
              }

              v17 = v17 & 0xFFFFFEFF | ((*v8 & 1) << 8);
              v21 = v17 | 0x1000;
              v23 = (*v8 & 0x30) == 32;
              goto LABEL_61;
            }

            if (v15 == 5)
            {
              if (v19 == 16)
              {
                v20 = *v8 & 0x30;
                v21 = v17 | 0x1000;
                goto LABEL_59;
              }
            }

            else if (v15 == 8 && v19 == 32)
            {
              v20 = *v8 & 0x30;
              v21 = v17 | 0x2000;
LABEL_59:
              v23 = v20 == 16;
LABEL_61:
              if (v23)
              {
                v17 = v21;
              }
            }

LABEL_63:
            if ((*v8 & 0xC) == 4)
            {
              v24 = 0;
              v25 = 0;
              v26 = *(a1 + 72);
              if (!v26 || v26 == *(a1 + 56))
              {
                v28 = 0;
                v27 = 0;
              }

              else
              {
                v27 = *(a1 + 64);
                v24 = (v15 + 7) & 0x78;
                v25 = *(a1 + 72);
                v28 = v24;
              }
            }

            else
            {
              v25 = 0;
              v24 = 0;
              v28 = 0;
              v27 = 0;
            }

            goto LABEL_100;
          }
        }
      }
    }
  }

  return 0;
}

const __CFData *create_provider_18746(UInt8 *bytes, unint64_t length, char a3)
{
  if (a3)
  {

    return CGDataProviderCreateWithCopyOfData(bytes, length);
  }

  else
  {
    v5 = CFDataCreateWithBytesNoCopy(0, bytes, length, *MEMORY[0x1E695E498]);
    v6 = CGDataProviderCreateWithCFData(v5);
    if (v5)
    {
      CFRelease(v5);
    }

    return v6;
  }
}

void RIPLayerSaveTGA(uint64_t a1, const char *a2)
{
  if (a1)
  {
    if (*a1 == RIPLayer_ripl_class && *(a1 + 20) >= 1 && *(a1 + 24) >= 1)
    {
      if (*(a1 + 56))
      {
        if (**(a1 + 32))
        {
          __filename = 0;
          asprintf(&__filename, "%s-%d.tga", a2, RIPLayerSaveTGA_count);
          ++RIPLayerSaveTGA_count;
          __ptr = 196608;
          v9 = 0;
          v10 = 0;
          v3 = *(a1 + 24);
          WORD2(v9) = *(a1 + 20);
          HIWORD(v9) = v3;
          LOBYTE(v10) = 8;
          if (__filename)
          {
            v4 = fopen(__filename, "wb");
            if (v4)
            {
              v5 = v4;
              fprintf(*MEMORY[0x1E69E9848], "Writing layer contents to '%s'\n", __filename);
              fwrite(&__ptr, 0x12uLL, 1uLL, v5);
              if (*(a1 + 24) >= 1)
              {
                v6 = 0;
                v7 = *(a1 + 56);
                do
                {
                  fwrite(v7, *(a1 + 20), 1uLL, v5);
                  ++v6;
                  v7 += *(a1 + 48);
                }

                while (v6 < *(a1 + 24));
              }

              fclose(v5);
            }

            free(__filename);
          }
        }
      }
    }
  }
}

uint64_t CGDisplayListEntryGetType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGetType", 34, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  return *(a1 + 8);
}

double CGDisplayListEntryGetBoundingBox(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGetBoundingBox", 40, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  return *(a1 + 16);
}

uint64_t _CGDisplayListEntryIsHidden(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("_CGDisplayListEntryIsHidden", 48, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entryRef != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  return (*(a1 + 10) >> 6) & 1;
}

uint64_t _CGDisplayListEntrySetHidden(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!result)
  {
    _CGHandleAssert("_CGDisplayListEntrySetHidden", 57, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entryRef != nullptr", "entry argument is NULL", a6, a7, a8, v8);
  }

  if (a2)
  {
    v9 = 0x400000;
  }

  else
  {
    v9 = 0;
  }

  *(result + 8) = *(result + 8) & 0xFFBFFFFF | v9;
  return result;
}

uint64_t CGDisplayListEntryImageGetImage(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v11 = "entry != nullptr";
    v12 = "entry argument is NULL";
    goto LABEL_8;
  }

  if (!v8)
  {
    v11 = "imageEntry != nullptr";
    v12 = "entry is not of typeDisplayListEntryImage";
LABEL_8:
    _CGHandleAssert("CGDisplayListEntryImageGetImage", 70, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v11, v12, a6, a7, a8, vars0);
  }

  v9 = v8[10];
  if (v9)
  {
    return *(v9 + 16);
  }

  else
  {
    return 0;
  }
}

__n128 CGDisplayListEntryImageGetCTM@<Q0>(const void *a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  if (!a1)
  {
    v9 = "entry != nullptr";
    v10 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v6)
  {
    v9 = "imageEntry != nullptr";
    v10 = "entry is not of typeDisplayListEntryImage";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryImageGetCTM", 79, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v9, v10, a2, a3, a4, v11);
  }

  v7 = *(v6 + 104);
  *a5 = *(v6 + 88);
  *(a5 + 16) = v7;
  result = *(v6 + 120);
  *(a5 + 32) = result;
  return result;
}

uint64_t CGDisplayListEntryImageGetInterpolationQuality(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v8)
  {
    v10 = "imageEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryImage";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryImageGetInterpolationQuality", 86, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  return v8[34];
}

uint64_t CGDisplayListEntryImageGetRenderingIntent(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v8)
  {
    v10 = "imageEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryImage";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryImageGetRenderingIntent", 93, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  return v8[37];
}

uint64_t CGDisplayListEntryGlyphsGetFont(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v11 = "entry != nullptr";
    v12 = "entry argument is NULL";
    goto LABEL_8;
  }

  if (!v8)
  {
    v11 = "glyphsEntry != nullptr";
    v12 = "entry is not of typeDisplayListEntryGlyphs";
LABEL_8:
    _CGHandleAssert("CGDisplayListEntryGlyphsGetFont", 102, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v11, v12, a6, a7, a8, vars0);
  }

  v9 = v8[10];
  if (v9)
  {
    return *(v9 + 16);
  }

  else
  {
    return 0;
  }
}

__n128 CGDisplayListEntryGlyphsGetCTM@<Q0>(const void *a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  if (!a1)
  {
    v9 = "entry != nullptr";
    v10 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v6)
  {
    v9 = "glyphsEntry != nullptr";
    v10 = "entry is not of typeDisplayListEntryGlyphs";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryGlyphsGetCTM", 111, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v9, v10, a2, a3, a4, v11);
  }

  v7 = *(v6 + 104);
  *a5 = *(v6 + 88);
  *(a5 + 16) = v7;
  result = *(v6 + 120);
  *(a5 + 32) = result;
  return result;
}

__n128 CGDisplayListEntryGlyphsGetFTM@<Q0>(const void *a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  if (!a1)
  {
    v9 = "entry != nullptr";
    v10 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v6)
  {
    v9 = "glyphsEntry != nullptr";
    v10 = "entry is not of typeDisplayListEntryGlyphs";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryGlyphsGetFTM", 118, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v9, v10, a2, a3, a4, v11);
  }

  v7 = *(v6 + 152);
  *a5 = *(v6 + 136);
  *(a5 + 16) = v7;
  result = *(v6 + 168);
  *(a5 + 32) = result;
  return result;
}

double CGDisplayListEntryGlyphsGetScale(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v8)
  {
    v10 = "glyphsEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryGlyphs";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryGlyphsGetScale", 125, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  return v8[23];
}

double CGDisplayListEntryGlyphsGetDilation(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v8)
  {
    v10 = "glyphsEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryGlyphs";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryGlyphsGetDilation", 132, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  return v8[24];
}

uint64_t CGDisplayListEntryGlyphsGetSmoothingBGColor(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v11 = "entry != nullptr";
    v12 = "entry argument is NULL";
    goto LABEL_8;
  }

  if (!v8)
  {
    v11 = "glyphsEntry != nullptr";
    v12 = "entry is not of typeDisplayListEntryGlyphs";
LABEL_8:
    _CGHandleAssert("CGDisplayListEntryGlyphsGetSmoothingBGColor", 139, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v11, v12, a6, a7, a8, vars0);
  }

  v9 = v8[26];
  if (v9)
  {
    return *(v9 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryGlyphsGetTextDrawingMode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v8)
  {
    v10 = "glyphsEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryGlyphs";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryGlyphsGetTextDrawingMode", 147, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  return v8[54];
}

uint64_t CGDisplayListEntryGlyphsGetFontRenderingStyle(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v8)
  {
    v10 = "glyphsEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryGlyphs";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryGlyphsGetFontRenderingStyle", 154, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  return v8[55];
}

uint64_t CGDisplayListEntryGlyphsGetShouldDrawBitmapRuns(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v8)
  {
    v10 = "glyphsEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryGlyphs";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryGlyphsGetShouldDrawBitmapRuns", 161, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  return v8[224];
}

uint64_t CGDisplayListEntryGlyphsGetCount(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v8)
  {
    v10 = "glyphsEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryGlyphs";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryGlyphsGetCount", 168, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  return v8[31];
}

CFDataRef CGDisplayListEntryGlyphsCopyGlyphs(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v13 = "entry != nullptr";
    v14 = "entry argument is NULL";
    goto LABEL_9;
  }

  if (!v8)
  {
    v13 = "glyphsEntry != nullptr";
    v14 = "entry is not of typeDisplayListEntryGlyphs";
LABEL_9:
    _CGHandleAssert("CGDisplayListEntryGlyphsCopyGlyphs", 175, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v13, v14, a6, a7, a8, vars0);
  }

  v9 = *(v8 + 29);
  if (!v9)
  {
    return 0;
  }

  v10 = 2 * *(v8 + 31);
  v11 = *MEMORY[0x1E695E480];

  return CFDataCreate(v11, v9, v10);
}

CFDataRef CGDisplayListEntryGlyphsCopyPositions(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v13 = "entry != nullptr";
    v14 = "entry argument is NULL";
    goto LABEL_9;
  }

  if (!v8)
  {
    v13 = "glyphsEntry != nullptr";
    v14 = "entry is not of typeDisplayListEntryGlyphs";
LABEL_9:
    _CGHandleAssert("CGDisplayListEntryGlyphsCopyPositions", 186, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v13, v14, a6, a7, a8, vars0);
  }

  v9 = *(v8 + 30);
  if (!v9)
  {
    return 0;
  }

  v10 = 16 * *(v8 + 31);
  v11 = *MEMORY[0x1E695E480];

  return CFDataCreate(v11, v9, v10);
}

__CFString *CGDisplayListEntryGlyphsCopyCharacters(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v31 = "entry != nullptr";
    v32 = "entry argument is NULL";
    goto LABEL_42;
  }

  if (!v8)
  {
    goto LABEL_45;
  }

  v9 = v8;
  if (!v8[31])
  {
    return 0;
  }

  if (!v8[29])
  {
    return 0;
  }

  v10 = v8[10];
  if (!v10)
  {
    return 0;
  }

  v11 = *(v10 + 16);
  if (v11)
  {
    explicit = atomic_load_explicit(&v11[2].length, memory_order_acquire);
    if (explicit)
    {
      Property = CGPropertiesGetProperty(explicit, @"com.apple.CoreGraphics.CGPDFFontToUnicodeCMap");
    }

    else
    {
      Property = 0;
    }

    get_unimap(v11);
    std::vector<unsigned short>::vector[abi:fe200100](&__src, 256);
    v15 = v9[31];
    if (v15 < 1)
    {
      goto LABEL_37;
    }

    v16 = 0;
    v17 = v9[29];
    v18 = &v17[v15];
    while (Property)
    {
      v34 = 0;
      if (CGFontGetCIDsForGlyphs(v11, v17, 1, &v34))
      {
        if (v36 == __src)
        {
          goto LABEL_44;
        }

        v21 = &v34;
      }

      else
      {
        v21 = v17;
        if (v36 == __src)
        {
LABEL_44:
          __break(1u);
LABEL_45:
          v31 = "glyphsEntry != nullptr";
          v32 = "entry is not of typeDisplayListEntryGlyphs";
LABEL_42:
          _CGHandleAssert("CGDisplayListEntryGlyphsCopyCharacters", 197, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v31, v32, a6, a7, a8, v33);
        }
      }

      v23 = *(Property[2] + 48);
      if (v23)
      {
        unichars = cmap_bf_set_get_unichars(*(v23 + 16), *v21, __src, v19, v20, a6, a7, a8);
LABEL_23:
        if (unichars > 0)
        {
          v24 = __src;
          v25 = 2 * unichars;
          if (unichars <= -v16 >> 1)
          {
            memmove(v16, __src, 2 * unichars);
            v16 += v25;
          }

          else
          {
            v26 = v18;
            v27 = v16;
            v28 = unichars + (v16 >> 1);
            if (v28 < 0)
            {
              std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
            }

            if (v28)
            {
              std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned short>>(v28);
            }

            v29 = (2 * (v16 >> 1));
            v16 = &v29[unichars];
            do
            {
              v30 = *v24++;
              *v29++ = v30;
              v25 -= 2;
            }

            while (v25);
            memcpy(0, 0, v27);
            v18 = v26;
          }
        }
      }

      if (++v17 >= v18)
      {
        if (v16)
        {
          v11 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], 0, v16 >> 1);
LABEL_38:
          if (__src)
          {
            v36 = __src;
            operator delete(__src);
          }

          return v11;
        }

LABEL_37:
        v11 = 0;
        goto LABEL_38;
      }
    }

    if (v36 == __src)
    {
      goto LABEL_44;
    }

    unichars = CGFontGetUnicharsForGlyph(v11, *v17, __src);
    goto LABEL_23;
  }

  return v11;
}

void sub_1842B4F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v13)
  {
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CGDisplayListEntryPathGetPath(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v8)
  {
    v10 = "pathEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryPath";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryPathGetPath", 241, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  return v8[11];
}

__n128 CGDisplayListEntryPathGetCTM@<Q0>(const void *a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, __n128 *a5@<X8>)
{
  if (!a1)
  {
    v9 = "entry != nullptr";
    v10 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v6)
  {
    v9 = "pathEntry != nullptr";
    v10 = "entry is not of typeDisplayListEntryPath";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryPathGetCTM", 247, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v9, v10, a2, a3, a4, v11);
  }

  v7 = v6[7];
  *a5 = v6[6];
  a5[1] = v7;
  result = v6[8];
  a5[2] = result;
  return result;
}

uint64_t CGDisplayListEntryPathGetDrawingMode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v8)
  {
    v10 = "pathEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryPath";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryPathGetDrawingMode", 253, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  return v8[20];
}

__n128 CGDisplayListEntryRectsGetCTM@<Q0>(const void *a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  if (!a1)
  {
    v9 = "entry != nullptr";
    v10 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v6)
  {
    v9 = "rectsEntry != nullptr";
    v10 = "entry is not of typeDisplayListEntryRects";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryRectsGetCTM", 262, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v9, v10, a2, a3, a4, v11);
  }

  v7 = *(v6 + 104);
  *a5 = *(v6 + 88);
  *(a5 + 16) = v7;
  result = *(v6 + 120);
  *(a5 + 32) = result;
  return result;
}

uint64_t CGDisplayListEntryRectsGetDrawingMode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v8)
  {
    v10 = "rectsEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryRects";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryRectsGetDrawingMode", 269, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  return v8[20];
}

CFDataRef CGDisplayListEntryRectsCopyRects(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v13 = "entry != nullptr";
    v14 = "entry argument is NULL";
    goto LABEL_9;
  }

  if (!v8)
  {
    v13 = "rectsEntry != nullptr";
    v14 = "entry is not of typeDisplayListEntryRects";
LABEL_9:
    _CGHandleAssert("CGDisplayListEntryRectsCopyRects", 276, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v13, v14, a6, a7, a8, vars0);
  }

  v9 = *(v8 + 17);
  if (!v9)
  {
    return 0;
  }

  v10 = 32 * *(v8 + 18);
  v11 = *MEMORY[0x1E695E480];

  return CFDataCreate(v11, v9, v10);
}

CFDataRef CGDisplayListEntryLinesCopyPoints(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v13 = "entry != nullptr";
    v14 = "entry argument is NULL";
    goto LABEL_9;
  }

  if (!v8)
  {
    v13 = "linesEntry != nullptr";
    v14 = "entry is not of typeDisplayListEntryLines";
LABEL_9:
    _CGHandleAssert("CGDisplayListEntryLinesCopyPoints", 289, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v13, v14, a6, a7, a8, vars0);
  }

  v9 = *(v8 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = 16 * *(v8 + 17);
  v11 = *MEMORY[0x1E695E480];

  return CFDataCreate(v11, v9, v10);
}

__n128 CGDisplayListEntryLinesGetCTM@<Q0>(const void *a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, __n128 *a5@<X8>)
{
  if (!a1)
  {
    v9 = "entry != nullptr";
    v10 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v6)
  {
    v9 = "linesEntry != nullptr";
    v10 = "entry is not of typeDisplayListEntryLines";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryLinesGetCTM", 300, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v9, v10, a2, a3, a4, v11);
  }

  v7 = v6[6];
  *a5 = v6[5];
  a5[1] = v7;
  result = v6[7];
  a5[2] = result;
  return result;
}

uint64_t CGDisplayListEntryShadingGetShading(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v11 = "entry != nullptr";
    v12 = "entry argument is NULL";
    goto LABEL_8;
  }

  if (!v8)
  {
    v11 = "shadingEntry != nullptr";
    v12 = "entry is not of typeDisplayListEntryShading";
LABEL_8:
    _CGHandleAssert("CGDisplayListEntryShadingGetShading", 309, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v11, v12, a6, a7, a8, vars0);
  }

  v9 = v8[10];
  if (v9)
  {
    return *(v9 + 16);
  }

  else
  {
    return 0;
  }
}

__n128 CGDisplayListEntryShadingGetCTM@<Q0>(const void *a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  if (!a1)
  {
    v9 = "entry != nullptr";
    v10 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v6)
  {
    v9 = "shadingEntry != nullptr";
    v10 = "entry is not of typeDisplayListEntryShading";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryShadingGetCTM", 318, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v9, v10, a2, a3, a4, v11);
  }

  v7 = *(v6 + 104);
  *a5 = *(v6 + 88);
  *(a5 + 16) = v7;
  result = *(v6 + 120);
  *(a5 + 32) = result;
  return result;
}

uint64_t CGDisplayListEntryShadingGetInterpolationQuality(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v8)
  {
    v10 = "shadingEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryShading";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryShadingGetInterpolationQuality", 325, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  return v8[34];
}

uint64_t CGDisplayListEntryShadingGetRenderingIntent(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v8)
  {
    v10 = "shadingEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryShading";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryShadingGetRenderingIntent", 332, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  return v8[35];
}

uint64_t CGDisplayListEntryGradientGetGradient(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v11 = "entry != nullptr";
    v12 = "entry argument is NULL";
    goto LABEL_8;
  }

  if (!v8)
  {
    v11 = "gradientEntry != nullptr";
    v12 = "entry is not of typeDisplayListEntryGradient";
LABEL_8:
    _CGHandleAssert("CGDisplayListEntryGradientGetGradient", 341, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v11, v12, a6, a7, a8, vars0);
  }

  v9 = v8[10];
  if (v9)
  {
    return *(v9 + 16);
  }

  else
  {
    return 0;
  }
}

__n128 CGDisplayListEntryGradientGetCTM@<Q0>(const void *a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  if (!a1)
  {
    v9 = "entry != nullptr";
    v10 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v6)
  {
    v9 = "gradientEntry != nullptr";
    v10 = "entry is not of typeDisplayListEntryGradient";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryGradientGetCTM", 350, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v9, v10, a2, a3, a4, v11);
  }

  v7 = *(v6 + 104);
  *a5 = *(v6 + 88);
  *(a5 + 16) = v7;
  result = *(v6 + 120);
  *(a5 + 32) = result;
  return result;
}

uint64_t CGDisplayListEntryGradientGetGradientType(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v11 = "entry != nullptr";
    v12 = "entry argument is NULL";
    goto LABEL_8;
  }

  if (!v8)
  {
    v11 = "gradientEntry != nullptr";
    v12 = "entry is not of typeDisplayListEntryGradient";
LABEL_8:
    _CGHandleAssert("CGDisplayListEntryGradientGetGradientType", 357, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v11, v12, a6, a7, a8, vars0);
  }

  v9 = v8[34];
  if (v9 - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t CGDisplayListEntryGradientGetDrawingOptions(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v8)
  {
    v10 = "gradientEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryGradient";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryGradientGetDrawingOptions", 379, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  return v8[35];
}

double CGDisplayListEntryGradientGetStartPoint(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_6;
  }

  if (!v8)
  {
    v10 = "gradientEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryGradient";
LABEL_6:
    _CGHandleAssert("CGDisplayListEntryGradientGetStartPoint", 387, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  if (*(v8 + 34) != 1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetStartPoint", 388, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry->getGradientType() == CG::DisplayListEntryGradient::DLGradientTypeLinear", "gradient entry is not of type CGDisplayListEntryGradientLinear", a6, a7, a8, vars0);
  }

  return v8[18];
}

double CGDisplayListEntryGradientGetEndPoint(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_6;
  }

  if (!v8)
  {
    v10 = "gradientEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryGradient";
LABEL_6:
    _CGHandleAssert("CGDisplayListEntryGradientGetEndPoint", 395, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  if (*(v8 + 34) != 1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetEndPoint", 396, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry->getGradientType() == CG::DisplayListEntryGradient::DLGradientTypeLinear", "gradient entry is not of type CGDisplayListEntryGradientLinear", a6, a7, a8, vars0);
  }

  return v8[20];
}

double CGDisplayListEntryGradientGetStartCenter(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_6;
  }

  if (!v8)
  {
    v10 = "gradientEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryGradient";
LABEL_6:
    _CGHandleAssert("CGDisplayListEntryGradientGetStartCenter", 404, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  if (*(v8 + 34) != 2)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetStartCenter", 405, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry->getGradientType() == CG::DisplayListEntryGradient::DLGradientTypeRadial", "gradient entry is not of type CGDisplayListEntryGradientRadial", a6, a7, a8, vars0);
  }

  return v8[22];
}

double CGDisplayListEntryGradientGetEndCenter(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_6;
  }

  if (!v8)
  {
    v10 = "gradientEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryGradient";
LABEL_6:
    _CGHandleAssert("CGDisplayListEntryGradientGetEndCenter", 412, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  if (*(v8 + 34) != 2)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetEndCenter", 413, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry->getGradientType() == CG::DisplayListEntryGradient::DLGradientTypeRadial", "gradient entry is not of type CGDisplayListEntryGradientRadial", a6, a7, a8, vars0);
  }

  return v8[24];
}

double CGDisplayListEntryGradientGetStartRadius(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_6;
  }

  if (!v8)
  {
    v10 = "gradientEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryGradient";
LABEL_6:
    _CGHandleAssert("CGDisplayListEntryGradientGetStartRadius", 420, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  if (*(v8 + 34) != 2)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetStartRadius", 421, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry->getGradientType() == CG::DisplayListEntryGradient::DLGradientTypeRadial", "gradient entry is not of type CGDisplayListEntryGradientRadial", a6, a7, a8, vars0);
  }

  return v8[26];
}

double CGDisplayListEntryGradientGetEndRadius(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_6;
  }

  if (!v8)
  {
    v10 = "gradientEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryGradient";
LABEL_6:
    _CGHandleAssert("CGDisplayListEntryGradientGetEndRadius", 428, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  if (*(v8 + 34) != 2)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetEndRadius", 429, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry->getGradientType() == CG::DisplayListEntryGradient::DLGradientTypeRadial", "gradient entry is not of type CGDisplayListEntryGradientRadial", a6, a7, a8, vars0);
  }

  return v8[27];
}

double CGDisplayListEntryGradientGetCenter(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_6;
  }

  if (!v8)
  {
    v10 = "gradientEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryGradient";
LABEL_6:
    _CGHandleAssert("CGDisplayListEntryGradientGetCenter", 437, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  if (*(v8 + 34) != 3)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetCenter", 438, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry->getGradientType() == CG::DisplayListEntryGradient::DLGradientTypeConic", "gradient entry is not of type CGDisplayListEntryGradientConic", a6, a7, a8, vars0);
  }

  return v8[28];
}

double CGDisplayListEntryGradientGetAngle(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_6;
  }

  if (!v8)
  {
    v10 = "gradientEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryGradient";
LABEL_6:
    _CGHandleAssert("CGDisplayListEntryGradientGetAngle", 445, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  if (*(v8 + 34) != 3)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetAngle", 446, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry->getGradientType() == CG::DisplayListEntryGradient::DLGradientTypeConic", "gradient entry is not of type CGDisplayListEntryGradientConic", a6, a7, a8, vars0);
  }

  return v8[30];
}

uint64_t CGDisplayListEntryDisplayListGetDisplayList(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v11 = "entry != nullptr";
    v12 = "entry argument is NULL";
    goto LABEL_8;
  }

  if (!v8)
  {
    v11 = "displayListEntry != nullptr";
    v12 = "entry is not of typeDisplayListEntryDisplayList";
LABEL_8:
    _CGHandleAssert("CGDisplayListEntryDisplayListGetDisplayList", 455, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v11, v12, a6, a7, a8, vars0);
  }

  v9 = v8[10];
  if (v9)
  {
    return *(v9 + 16);
  }

  else
  {
    return 0;
  }
}

__n128 CGDisplayListEntryDisplayListGetCTM@<Q0>(const void *a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  if (!a1)
  {
    v9 = "entry != nullptr";
    v10 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v6)
  {
    v9 = "displayListEntry != nullptr";
    v10 = "entry is not of typeDisplayListEntryDisplayList";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryDisplayListGetCTM", 464, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v9, v10, a2, a3, a4, v11);
  }

  v7 = *(v6 + 104);
  *a5 = *(v6 + 88);
  *(a5 + 16) = v7;
  result = *(v6 + 120);
  *(a5 + 32) = result;
  return result;
}

uint64_t CGDisplayListEntryDisplayListGetInterpolationQuality(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v8)
  {
    v10 = "displayListEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryDisplayList";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryDisplayListGetInterpolationQuality", 471, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  return v8[34];
}

uint64_t CGDisplayListEntryDisplayListGetImageRenderingIntent(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = "entry != nullptr";
    v11 = "entry argument is NULL";
    goto LABEL_5;
  }

  if (!v8)
  {
    v10 = "displayListEntry != nullptr";
    v11 = "entry is not of typeDisplayListEntryDisplayList";
LABEL_5:
    _CGHandleAssert("CGDisplayListEntryDisplayListGetImageRenderingIntent", 478, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v10, v11, a6, a7, a8, vars0);
  }

  return v8[35];
}

uint64_t CGDisplayListEntryActionGetParameters(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v11 = "entry != nullptr";
    v12 = "entry argument is NULL";
    goto LABEL_8;
  }

  if (!v8)
  {
    v11 = "actionEntry != nullptr";
    v12 = "entry is not of typeDisplayListEntryAction";
LABEL_8:
    _CGHandleAssert("CGDisplayListEntryActionGetParameters", 487, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", v11, v12, a6, a7, a8, vars0);
  }

  v9 = v8[11];
  if (v9)
  {
    return *(v9 + 16);
  }

  else
  {
    return 0;
  }
}

void CGPDFContentStreamRelease(CGPDFContentStreamRef cs)
{
  if (cs)
  {
    CFRelease(cs);
  }
}

CGPDFContentStreamRef CGPDFContentStreamRetain(CGPDFContentStreamRef cs)
{
  if (cs)
  {
    CFRetain(cs);
  }

  return cs;
}

CFArrayRef CGPDFContentStreamGetStreams(CFArrayRef cs)
{
  if (cs)
  {
    return *(cs + 3);
  }

  return cs;
}

CGPDFObjectRef CGPDFContentStreamGetResource(CGPDFContentStreamRef cs, const char *category, const char *name)
{
  if (!name)
  {
    return 0;
  }

  v4 = cs;
  if (!*name || cs == 0)
  {
    return 0;
  }

  do
  {
    v9 = *(v4 + 4);
    os_unfair_lock_lock(v9 + 20);
    resource = get_resource(v9, category, name);
    os_unfair_lock_unlock(v9 + 20);
    if (resource)
    {
      break;
    }

    if (!*name)
    {
      break;
    }

    v4 = *(v4 + 5);
  }

  while (v4);
  return resource;
}

CGColorSpace *CGPDFContentStreamGetColorSpace(CGColorSpace *result, const char *a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      result = CGPDFResourcesGetColorSpace(*(v3 + 4), a2);
      if (result)
      {
        break;
      }

      v3 = *(v3 + 5);
      if (!v3)
      {
        return 0;
      }
    }
  }

  return result;
}

const void *CGPDFContentStreamGetFont(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = *MEMORY[0x1E695E480];
  v5 = *MEMORY[0x1E695E498];
  while (1)
  {
    v6 = *(v3 + 32);
    if (v6 && a2 != 0)
    {
      os_unfair_lock_lock((v6 + 80));
      v8 = CFStringCreateWithCStringNoCopy(v4, a2, 0x600u, v5);
      v9 = *(v6 + 32);
      if (!v8 || !v9 || (Value = CFDictionaryGetValue(v9, v8)) == 0)
      {
        resource = get_resource(v6, "Font", a2);
        if (resource && *(resource + 2) == 8 && (v12 = CGPDFFontCreate(*(resource + 4))) != 0)
        {
          v13 = table_set_value((v6 + 32), v8, v12);
          Value = v13;
          if (v13)
          {
            CFRelease(v13);
          }
        }

        else
        {
          Value = 0;
        }
      }

      CFRelease(v8);
      os_unfair_lock_unlock((v6 + 80));
      if (Value)
      {
        break;
      }
    }

    v3 = *(v3 + 40);
    if (!v3)
    {
      return 0;
    }
  }

  return Value;
}

void *CGPDFContentStreamGetXObject(void *result, const char *a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      result = CGPDFResourcesCopyXObject(v3[4], a2);
      if (result)
      {
        break;
      }

      v3 = v3[5];
      if (!v3)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CGPDFContentStreamGetXObjectStream(uint64_t result, const char *a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      v4 = CGPDFResourcesCopyXObject(*(v3 + 32), a2);
      if (v4)
      {
        break;
      }

      v3 = *(v3 + 40);
      if (!v3)
      {
        return 0;
      }
    }

    return v4[3];
  }

  return result;
}

void *CGPDFContentStreamGetPattern(void *result, const char *a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      result = CGPDFResourcesGetPattern(v3[4], a2);
      if (result)
      {
        break;
      }

      v3 = v3[5];
      if (!v3)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CGPDFContentStreamGetPatternStream(uint64_t result, const char *a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      Pattern = CGPDFResourcesGetPattern(*(v3 + 32), a2);
      if (Pattern)
      {
        break;
      }

      v3 = *(v3 + 40);
      if (!v3)
      {
        return 0;
      }
    }

    if (*(Pattern + 4) == 1)
    {
      return Pattern[3];
    }

    return 0;
  }

  return result;
}

void *CGPDFContentStreamGetShading(void *result, const char *a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      result = CGPDFResourcesGetShading(v3[4], a2);
      if (result)
      {
        break;
      }

      v3 = v3[5];
      if (!v3)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CGPDFContentStreamGetShadingDictionary(uint64_t result, const char *a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      Shading = CGPDFResourcesGetShading(*(v3 + 32), a2);
      if (Shading)
      {
        break;
      }

      v3 = *(v3 + 40);
      if (!v3)
      {
        return 0;
      }
    }

    return Shading[3];
  }

  return result;
}

void *CGPDFContentStreamGetPropertyList(uint64_t a1, const char *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = *MEMORY[0x1E695E480];
    v5 = *MEMORY[0x1E695E498];
    do
    {
      v6 = *(v3 + 32);
      if (v6)
      {
        v7 = a2 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        os_unfair_lock_lock((v6 + 80));
        v8 = CFStringCreateWithCStringNoCopy(v4, a2, 0x600u, v5);
        v9 = *(v6 + 72);
        if (v8)
        {
          if (v9)
          {
            Value = CFDictionaryGetValue(v9, v8);
            if (Value)
            {
              goto LABEL_13;
            }
          }
        }

        resource = get_resource(v6, "Properties", a2);
        if (resource && *(resource + 2) == 8)
        {
          Value = table_set_value((v6 + 72), v8, *(resource + 4));
LABEL_13:
          CFRelease(v8);
          os_unfair_lock_unlock((v6 + 80));
          if (Value)
          {
            return Value;
          }

          goto LABEL_16;
        }

        CFRelease(v8);
        os_unfair_lock_unlock((v6 + 80));
      }

LABEL_16:
      v3 = *(v3 + 40);
    }

    while (v3);
  }

  return 0;
}

CGColorRef CGPDFContentStreamCreateResolvedColor(uint64_t a1, uint64_t cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = cf;
  if (a1)
  {
    if (cf)
    {
      if (cf < 0)
      {
        ColorSpace = CGTaggedColorGetColorSpace(cf, cf, a3, a4, a5, a6, a7, a8);
      }

      else
      {
        ColorSpace = *(cf + 24);
      }
    }

    else
    {
      ColorSpace = 0;
    }

    v11 = *(a1 + 64);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = __CGColorSpaceCreateResolved_block_invoke;
    v15[3] = &__block_descriptor_tmp_39_23493;
    v16 = *(a1 + 48);
    v17 = v11;
    ResolvedColorSpace = CGColorSpaceCreateResolvedColorSpace(ColorSpace, v15);
    if (ColorSpace == ResolvedColorSpace)
    {
      if (v8)
      {
        CFRetain(v8);
      }
    }

    else
    {
      Components = CGColorGetComponents(v8);
      v8 = CGColorCreate(ResolvedColorSpace, Components);
    }

    CGColorSpaceRelease(ResolvedColorSpace);
  }

  else if (cf)
  {
    CFRetain(cf);
  }

  return v8;
}

uint64_t PBPageLayoutPkg::PBPageLayout::formatText(PBPageLayoutPkg::PBPageLayout *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "baselineOffsets", v7);
  }

  v8 = *(this + 22);
  v9 = *(this + 23);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, "charStyleFontData");
  }

  v11 = *(this + 4);
  v12 = *(this + 5);
  while (v11 != v12)
  {
    v11 += 4;
    PB::TextFormatter::format(a2, "characterStyleIndexes");
  }

  v13 = *(this + 25);
  v14 = *(this + 26);
  while (v13 != v14)
  {
    v15 = *v13++;
    (*(*v15 + 32))(v15, a2, "characterStyles");
  }

  if (*(this + 308))
  {
    PB::TextFormatter::format(a2, "hasRTL");
  }

  v16 = *(this + 7);
  v17 = *(this + 8);
  while (v16 != v17)
  {
    v16 += 8;
    PB::TextFormatter::format(a2, "logicalMap");
  }

  v18 = *(this + 10);
  v19 = *(this + 11);
  while (v18 != v19)
  {
    v18 += 8;
    PB::TextFormatter::format(a2, "mcids");
  }

  if (*(this + 28))
  {
    PB::TextFormatter::format();
  }

  v20 = *(this + 29);
  v21 = *(this + 30);
  while (v20 != v21)
  {
    v22 = *v20++;
    (*(*v22 + 32))(v22, a2, "preciseBBoxes");
  }

  v23 = *(this + 32);
  v24 = *(this + 33);
  while (v23 != v24)
  {
    v25 = *v23++;
    (*(*v25 + 32))(v25, a2, "selectionBBoxes");
  }

  v26 = *(this + 35);
  v27 = *(this + 36);
  while (v26 != v27)
  {
    v28 = *v26++;
    (*(*v28 + 32))(v28, a2, "textLines");
  }

  v29 = *(this + 13);
  v30 = *(this + 14);
  while (v29 != v30)
  {
    v29 += 4;
    PB::TextFormatter::format(a2, "textRangeMap");
  }

  v31 = *(this + 16);
  v32 = *(this + 17);
  while (v31 != v32)
  {
    v31 += 4;
    PB::TextFormatter::format(a2, "uniCharCounts");
  }

  v33 = *(this + 19);
  v34 = *(this + 20);
  while (v33 != v34)
  {
    v33 += 4;
    PB::TextFormatter::format(a2, "uniChars");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t PBPageLayoutPkg::PBPageLayout::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 308))
  {
    this = PB::Writer::write(a2);
  }

  if (v3[28])
  {
    this = PB::Writer::write();
  }

  v4 = v3[35];
  v5 = v3[36];
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = v3[19];
  v8 = v3[20];
  while (v7 != v8)
  {
    v7 += 4;
    this = PB::Writer::writeVarInt(a2);
  }

  v9 = v3[16];
  v10 = v3[17];
  while (v9 != v10)
  {
    v9 += 4;
    this = PB::Writer::writeVarInt(a2);
  }

  v11 = v3[32];
  v12 = v3[33];
  while (v11 != v12)
  {
    v13 = *v11++;
    this = PB::Writer::writeSubmessage(a2, v13);
  }

  v14 = v3[29];
  v15 = v3[30];
  while (v14 != v15)
  {
    v16 = *v14++;
    this = PB::Writer::writeSubmessage(a2, v16);
  }

  v17 = v3[13];
  v18 = v3[14];
  while (v17 != v18)
  {
    v17 += 4;
    this = PB::Writer::writeVarInt(a2);
  }

  v19 = v3[25];
  v20 = v3[26];
  while (v19 != v20)
  {
    v21 = *v19++;
    this = PB::Writer::writeSubmessage(a2, v21);
  }

  v22 = v3[4];
  v23 = v3[5];
  while (v22 != v23)
  {
    v22 += 4;
    this = PB::Writer::writeVarInt(a2);
  }

  v24 = v3[1];
  v25 = v3[2];
  while (v24 != v25)
  {
    v26 = *v24++;
    this = PB::Writer::write(a2, v26);
  }

  v27 = v3[22];
  v28 = v3[23];
  while (v27 != v28)
  {
    v29 = *v27++;
    this = PB::Writer::writeSubmessage(a2, v29);
  }

  v30 = v3[10];
  v31 = v3[11];
  while (v30 != v31)
  {
    v30 += 8;
    this = PB::Writer::writeVarInt(a2);
  }

  v33 = v3[7];
  v32 = v3[8];
  while (v33 != v32)
  {
    v33 += 8;
    this = PB::Writer::writeVarInt(a2);
  }

  return this;
}

void PBPageLayoutPkg::PBPageLayout::readFrom(PBPageLayoutPkg::PBPageLayout *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
    return;
  }

  while (1)
  {
    v6 = *a2;
    if (v2 <= 0xFFFFFFFFFFFFFFF5 && v2 + 10 <= v3)
    {
      break;
    }

    v13 = 0;
    v14 = 0;
    v9 = 0;
    v15 = (v6 + v2);
    v16 = v3 >= v2;
    v17 = v3 - v2;
    if (!v16)
    {
      v17 = 0;
    }

    v18 = v2 + 1;
    do
    {
      if (!v17)
      {
        *(a2 + 24) = 1;
        return;
      }

      v19 = *v15;
      *(a2 + 1) = v18;
      v9 |= (v19 & 0x7F) << v13;
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v13 += 7;
      ++v15;
      --v17;
      ++v18;
      v40 = v14++ > 8;
    }

    while (!v40);
LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      return;
    }

LABEL_365:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
    {
      return;
    }
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = (v6 + v2);
  v11 = v2 + 1;
  while (1)
  {
    *(a2 + 1) = v11;
    v12 = *v10++;
    v9 |= (v12 & 0x7F) << v7;
    if ((v12 & 0x80) == 0)
    {
      break;
    }

    v7 += 7;
    ++v11;
    v40 = v8++ > 8;
    if (v40)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  v20 = v9 & 7;
  if (v20 == 4)
  {
    return;
  }

  switch((v9 >> 3))
  {
    case 1u:
      *(this + 308) |= 1u;
      v21 = *(a2 + 1);
      if (v21 >= *(a2 + 2))
      {
        v24 = 0;
        *(a2 + 24) = 1;
      }

      else
      {
        v22 = v21 + 1;
        v23 = *(*a2 + v21);
        *(a2 + 1) = v22;
        v24 = v23 != 0;
      }

      *(this + 304) = v24;
      goto LABEL_365;
    case 2u:
      operator new();
    case 3u:
      operator new();
    case 4u:
      if (v20 == 2)
      {
        if ((PB::Reader::placeMark() & 1) == 0)
        {
          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v25 = *(this + 20);
            do
            {
              v90 = *(this + 21);
              if (v25 >= v90)
              {
                v91 = *(this + 19);
                v92 = v25 - v91;
                v93 = (v25 - v91) >> 2;
                v94 = v93 + 1;
                if ((v93 + 1) >> 62)
                {
                  goto LABEL_496;
                }

                v95 = v90 - v91;
                if (v95 >> 1 > v94)
                {
                  v94 = v95 >> 1;
                }

                if (v95 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v96 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v96 = v94;
                }

                if (v96)
                {
                  std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v96);
                }

                *(4 * v93) = 0;
                v25 = (4 * v93 + 4);
                memcpy(0, v91, v92);
                v97 = *(this + 19);
                *(this + 19) = 0;
                *(this + 20) = v25;
                *(this + 21) = 0;
                if (v97)
                {
                  operator delete(v97);
                }
              }

              else
              {
                *v25 = 0;
                v25 += 4;
              }

              *(this + 20) = v25;
              if (*(this + 19) == v25)
              {
                goto LABEL_499;
              }

              v99 = *(a2 + 1);
              v98 = *(a2 + 2);
              v100 = *a2;
              v101 = 0;
              v102 = 0;
              v103 = 0;
              if (v99 > 0xFFFFFFFFFFFFFFF5 || v99 + 10 > v98)
              {
                if (v98 <= v99)
                {
                  v105 = *(a2 + 1);
                }

                else
                {
                  v105 = *(a2 + 2);
                }

                while (1)
                {
                  if (v105 == v99)
                  {
                    goto LABEL_290;
                  }

                  v106 = v99 + 1;
                  v107 = *(v100 + v99);
                  *(a2 + 1) = v106;
                  v103 |= (v107 & 0x7F) << v101;
                  if ((v107 & 0x80) == 0)
                  {
                    break;
                  }

                  v101 += 7;
                  v99 = v106;
                  v40 = v102++ > 8;
                  if (v40)
                  {
LABEL_179:
                    LODWORD(v103) = 0;
                    goto LABEL_182;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v103) = 0;
                }
              }

              else
              {
                v108 = (v100 + v99);
                v109 = v99 + 1;
                while (1)
                {
                  v106 = v109;
                  *(a2 + 1) = v109;
                  v110 = *v108++;
                  v103 |= (v110 & 0x7F) << v101;
                  if ((v110 & 0x80) == 0)
                  {
                    break;
                  }

                  v101 += 7;
                  ++v109;
                  v40 = v102++ > 8;
                  if (v40)
                  {
                    goto LABEL_179;
                  }
                }
              }

LABEL_182:
              *(v25 - 1) = v103;
            }

            while (v106 < v98 && (*(a2 + 24) & 1) == 0);
          }

LABEL_364:
          PB::Reader::recallMark();
          goto LABEL_365;
        }

        return;
      }

      v175 = *(this + 20);
      v174 = *(this + 21);
      if (v175 < v174)
      {
        *v175 = 0;
        v168 = (v175 + 4);
        goto LABEL_425;
      }

      v201 = *(this + 19);
      v202 = v175 - v201;
      v203 = (v175 - v201) >> 2;
      v204 = v203 + 1;
      if (!((v203 + 1) >> 62))
      {
        v205 = v174 - v201;
        if (v205 >> 1 > v204)
        {
          v204 = v205 >> 1;
        }

        if (v205 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v206 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v206 = v204;
        }

        if (v206)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v206);
        }

        *(4 * v203) = 0;
        v168 = 4 * v203 + 4;
        memcpy(0, v201, v202);
        v272 = *(this + 19);
        *(this + 19) = 0;
        *(this + 20) = v168;
        *(this + 21) = 0;
        if (v272)
        {
          operator delete(v272);
        }

LABEL_425:
        *(this + 20) = v168;
        if (*(this + 19) != v168)
        {
          v274 = *(a2 + 1);
          v273 = *(a2 + 2);
          v275 = *a2;
          if (v274 <= 0xFFFFFFFFFFFFFFF5 && v274 + 10 <= v273)
          {
            v276 = 0;
            v277 = 0;
            v231 = 0;
            v278 = (v275 + v274);
            v279 = v274 + 1;
            while (1)
            {
              *(a2 + 1) = v279;
              v280 = *v278++;
              v231 |= (v280 & 0x7F) << v276;
              if ((v280 & 0x80) == 0)
              {
                goto LABEL_462;
              }

              v276 += 7;
              ++v279;
              v40 = v277++ > 8;
              if (v40)
              {
                goto LABEL_458;
              }
            }
          }

          v281 = 0;
          v282 = 0;
          v231 = 0;
          v283 = (v275 + v274);
          v16 = v273 >= v274;
          v284 = v273 - v274;
          if (!v16)
          {
            v284 = 0;
          }

          v285 = v274 + 1;
          while (v284)
          {
            v286 = *v283;
            *(a2 + 1) = v285;
            v231 |= (v286 & 0x7F) << v281;
            if ((v286 & 0x80) == 0)
            {
              goto LABEL_460;
            }

            v281 += 7;
            ++v283;
            --v284;
            ++v285;
            v40 = v282++ > 8;
            if (v40)
            {
              goto LABEL_458;
            }
          }

LABEL_459:
          LODWORD(v231) = 0;
          *(a2 + 24) = 1;
LABEL_462:
          *(v168 - 4) = v231;
          goto LABEL_365;
        }

        goto LABEL_499;
      }

      goto LABEL_496;
    case 5u:
      if (v20 != 2)
      {
        v167 = *(this + 17);
        v166 = *(this + 18);
        if (v167 < v166)
        {
          *v167 = 0;
          v168 = (v167 + 4);
          goto LABEL_371;
        }

        v183 = *(this + 16);
        v184 = v167 - v183;
        v185 = (v167 - v183) >> 2;
        v186 = v185 + 1;
        if (!((v185 + 1) >> 62))
        {
          v187 = v166 - v183;
          if (v187 >> 1 > v186)
          {
            v186 = v187 >> 1;
          }

          if (v187 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v188 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v188 = v186;
          }

          if (v188)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v188);
          }

          *(4 * v185) = 0;
          v168 = 4 * v185 + 4;
          memcpy(0, v183, v184);
          v225 = *(this + 16);
          *(this + 16) = 0;
          *(this + 17) = v168;
          *(this + 18) = 0;
          if (v225)
          {
            operator delete(v225);
          }

LABEL_371:
          *(this + 17) = v168;
          if (*(this + 16) != v168)
          {
            v227 = *(a2 + 1);
            v226 = *(a2 + 2);
            v228 = *a2;
            if (v227 <= 0xFFFFFFFFFFFFFFF5 && v227 + 10 <= v226)
            {
              v229 = 0;
              v230 = 0;
              v231 = 0;
              v232 = (v228 + v227);
              v233 = v227 + 1;
              while (1)
              {
                *(a2 + 1) = v233;
                v234 = *v232++;
                v231 |= (v234 & 0x7F) << v229;
                if ((v234 & 0x80) == 0)
                {
                  goto LABEL_462;
                }

                v229 += 7;
                ++v233;
                v40 = v230++ > 8;
                if (v40)
                {
                  goto LABEL_458;
                }
              }
            }

            v235 = 0;
            v236 = 0;
            v231 = 0;
            v237 = (v228 + v227);
            v16 = v226 >= v227;
            v238 = v226 - v227;
            if (!v16)
            {
              v238 = 0;
            }

            v239 = v227 + 1;
            while (v238)
            {
              v240 = *v237;
              *(a2 + 1) = v239;
              v231 |= (v240 & 0x7F) << v235;
              if ((v240 & 0x80) == 0)
              {
                goto LABEL_460;
              }

              v235 += 7;
              ++v237;
              --v238;
              ++v239;
              v40 = v236++ > 8;
              if (v40)
              {
                goto LABEL_458;
              }
            }

            goto LABEL_459;
          }

          goto LABEL_499;
        }

LABEL_496:
        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      if ((PB::Reader::placeMark() & 1) == 0)
      {
        if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
        {
          v25 = *(this + 17);
          while (1)
          {
            v26 = *(this + 18);
            if (v25 >= v26)
            {
              v27 = *(this + 16);
              v28 = v25 - v27;
              v29 = (v25 - v27) >> 2;
              v30 = v29 + 1;
              if ((v29 + 1) >> 62)
              {
                goto LABEL_496;
              }

              v31 = v26 - v27;
              if (v31 >> 1 > v30)
              {
                v30 = v31 >> 1;
              }

              if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v32 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v32 = v30;
              }

              if (v32)
              {
                std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v32);
              }

              *(4 * v29) = 0;
              v25 = (4 * v29 + 4);
              memcpy(0, v27, v28);
              v33 = *(this + 16);
              *(this + 16) = 0;
              *(this + 17) = v25;
              *(this + 18) = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *v25 = 0;
              v25 += 4;
            }

            *(this + 17) = v25;
            if (*(this + 16) == v25)
            {
              goto LABEL_499;
            }

            v35 = *(a2 + 1);
            v34 = *(a2 + 2);
            v36 = *a2;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = v35 > 0xFFFFFFFFFFFFFFF5 || v35 + 10 > v34;
            if (v40)
            {
              if (v34 <= v35)
              {
                v41 = *(a2 + 1);
              }

              else
              {
                v41 = *(a2 + 2);
              }

              while (1)
              {
                if (v41 == v35)
                {
                  goto LABEL_290;
                }

                v42 = v35 + 1;
                v43 = *(v36 + v35);
                *(a2 + 1) = v42;
                v39 |= (v43 & 0x7F) << v37;
                if ((v43 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v35 = v42;
                v40 = v38++ > 8;
                if (v40)
                {
LABEL_58:
                  LODWORD(v39) = 0;
                  goto LABEL_61;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v39) = 0;
              }
            }

            else
            {
              v44 = (v36 + v35);
              v45 = v35 + 1;
              while (1)
              {
                v42 = v45;
                *(a2 + 1) = v45;
                v46 = *v44++;
                v39 |= (v46 & 0x7F) << v37;
                if ((v46 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                ++v45;
                v40 = v38++ > 8;
                if (v40)
                {
                  goto LABEL_58;
                }
              }
            }

LABEL_61:
            *(v25 - 1) = v39;
            if (v42 >= v34 || (*(a2 + 24) & 1) != 0)
            {
              goto LABEL_364;
            }
          }
        }

        goto LABEL_364;
      }

      return;
    case 6u:
      PB::PtrVector<PBPageLayoutPkg::PBRect>::emplace_back<>();
    case 7u:
      PB::PtrVector<PBPageLayoutPkg::PBRect>::emplace_back<>();
    case 8u:
      if (v20 == 2)
      {
        if ((PB::Reader::placeMark() & 1) == 0)
        {
          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v25 = *(this + 14);
            while (1)
            {
              v111 = *(this + 15);
              if (v25 >= v111)
              {
                v112 = *(this + 13);
                v113 = v25 - v112;
                v114 = (v25 - v112) >> 2;
                v115 = v114 + 1;
                if ((v114 + 1) >> 62)
                {
                  goto LABEL_496;
                }

                v116 = v111 - v112;
                if (v116 >> 1 > v115)
                {
                  v115 = v116 >> 1;
                }

                if (v116 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v117 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v117 = v115;
                }

                if (v117)
                {
                  std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v117);
                }

                *(4 * v114) = 0;
                v25 = (4 * v114 + 4);
                memcpy(0, v112, v113);
                v118 = *(this + 13);
                *(this + 13) = 0;
                *(this + 14) = v25;
                *(this + 15) = 0;
                if (v118)
                {
                  operator delete(v118);
                }
              }

              else
              {
                *v25 = 0;
                v25 += 4;
              }

              *(this + 14) = v25;
              if (*(this + 13) == v25)
              {
                goto LABEL_499;
              }

              v120 = *(a2 + 1);
              v119 = *(a2 + 2);
              v121 = *a2;
              v122 = 0;
              v123 = 0;
              v124 = 0;
              if (v120 > 0xFFFFFFFFFFFFFFF5 || v120 + 10 > v119)
              {
                if (v119 <= v120)
                {
                  v126 = *(a2 + 1);
                }

                else
                {
                  v126 = *(a2 + 2);
                }

                while (1)
                {
                  if (v126 == v120)
                  {
                    goto LABEL_290;
                  }

                  v127 = v120 + 1;
                  v128 = *(v121 + v120);
                  *(a2 + 1) = v127;
                  v124 |= (v128 & 0x7F) << v122;
                  if ((v128 & 0x80) == 0)
                  {
                    break;
                  }

                  v122 += 7;
                  v120 = v127;
                  v40 = v123++ > 8;
                  if (v40)
                  {
LABEL_219:
                    LODWORD(v124) = 0;
                    goto LABEL_222;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v124) = 0;
                }
              }

              else
              {
                v129 = (v121 + v120);
                v130 = v120 + 1;
                while (1)
                {
                  v127 = v130;
                  *(a2 + 1) = v130;
                  v131 = *v129++;
                  v124 |= (v131 & 0x7F) << v122;
                  if ((v131 & 0x80) == 0)
                  {
                    break;
                  }

                  v122 += 7;
                  ++v130;
                  v40 = v123++ > 8;
                  if (v40)
                  {
                    goto LABEL_219;
                  }
                }
              }

LABEL_222:
              *(v25 - 1) = v124;
              if (v127 >= v119 || (*(a2 + 24) & 1) != 0)
              {
                goto LABEL_364;
              }
            }
          }

          goto LABEL_364;
        }

        return;
      }

      v177 = *(this + 14);
      v176 = *(this + 15);
      if (v177 >= v176)
      {
        v207 = *(this + 13);
        v208 = v177 - v207;
        v209 = (v177 - v207) >> 2;
        v210 = v209 + 1;
        if ((v209 + 1) >> 62)
        {
          goto LABEL_496;
        }

        v211 = v176 - v207;
        if (v211 >> 1 > v210)
        {
          v210 = v211 >> 1;
        }

        if (v211 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v212 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v212 = v210;
        }

        if (v212)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v212);
        }

        *(4 * v209) = 0;
        v168 = 4 * v209 + 4;
        memcpy(0, v207, v208);
        v287 = *(this + 13);
        *(this + 13) = 0;
        *(this + 14) = v168;
        *(this + 15) = 0;
        if (v287)
        {
          operator delete(v287);
        }
      }

      else
      {
        *v177 = 0;
        v168 = (v177 + 4);
      }

      *(this + 14) = v168;
      if (*(this + 13) != v168)
      {
        v289 = *(a2 + 1);
        v288 = *(a2 + 2);
        v290 = *a2;
        if (v289 <= 0xFFFFFFFFFFFFFFF5 && v289 + 10 <= v288)
        {
          v291 = 0;
          v292 = 0;
          v231 = 0;
          v293 = (v290 + v289);
          v294 = v289 + 1;
          while (1)
          {
            *(a2 + 1) = v294;
            v295 = *v293++;
            v231 |= (v295 & 0x7F) << v291;
            if ((v295 & 0x80) == 0)
            {
              goto LABEL_462;
            }

            v291 += 7;
            ++v294;
            v40 = v292++ > 8;
            if (v40)
            {
              goto LABEL_458;
            }
          }
        }

        v296 = 0;
        v297 = 0;
        v231 = 0;
        v298 = (v290 + v289);
        v16 = v288 >= v289;
        v299 = v288 - v289;
        if (!v16)
        {
          v299 = 0;
        }

        v300 = v289 + 1;
        while (v299)
        {
          v301 = *v298;
          *(a2 + 1) = v300;
          v231 |= (v301 & 0x7F) << v296;
          if ((v301 & 0x80) == 0)
          {
            goto LABEL_460;
          }

          v296 += 7;
          ++v298;
          --v299;
          ++v300;
          v40 = v297++ > 8;
          if (v40)
          {
            goto LABEL_458;
          }
        }

        goto LABEL_459;
      }

      goto LABEL_499;
    case 9u:
      operator new();
    case 0xAu:
      if (v20 == 2)
      {
        if ((PB::Reader::placeMark() & 1) == 0)
        {
          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v25 = *(this + 5);
            while (1)
            {
              v69 = *(this + 6);
              if (v25 >= v69)
              {
                v70 = *(this + 4);
                v71 = v25 - v70;
                v72 = (v25 - v70) >> 2;
                v73 = v72 + 1;
                if ((v72 + 1) >> 62)
                {
                  goto LABEL_496;
                }

                v74 = v69 - v70;
                if (v74 >> 1 > v73)
                {
                  v73 = v74 >> 1;
                }

                if (v74 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v75 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v75 = v73;
                }

                if (v75)
                {
                  std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v75);
                }

                *(4 * v72) = 0;
                v25 = (4 * v72 + 4);
                memcpy(0, v70, v71);
                v76 = *(this + 4);
                *(this + 4) = 0;
                *(this + 5) = v25;
                *(this + 6) = 0;
                if (v76)
                {
                  operator delete(v76);
                }
              }

              else
              {
                *v25 = 0;
                v25 += 4;
              }

              *(this + 5) = v25;
              if (*(this + 4) == v25)
              {
                goto LABEL_499;
              }

              v78 = *(a2 + 1);
              v77 = *(a2 + 2);
              v79 = *a2;
              v80 = 0;
              v81 = 0;
              v82 = 0;
              if (v78 > 0xFFFFFFFFFFFFFFF5 || v78 + 10 > v77)
              {
                break;
              }

              v87 = (v79 + v78);
              v88 = v78 + 1;
              while (1)
              {
                v85 = v88;
                *(a2 + 1) = v88;
                v89 = *v87++;
                v82 |= (v89 & 0x7F) << v80;
                if ((v89 & 0x80) == 0)
                {
                  break;
                }

                v80 += 7;
                ++v88;
                v40 = v81++ > 8;
                if (v40)
                {
                  goto LABEL_138;
                }
              }

LABEL_141:
              *(v25 - 1) = v82;
              if (v85 >= v77 || (*(a2 + 24) & 1) != 0)
              {
                goto LABEL_364;
              }
            }

            if (v77 <= v78)
            {
              v84 = *(a2 + 1);
            }

            else
            {
              v84 = *(a2 + 2);
            }

            while (v84 != v78)
            {
              v85 = v78 + 1;
              v86 = *(v79 + v78);
              *(a2 + 1) = v85;
              v82 |= (v86 & 0x7F) << v80;
              if ((v86 & 0x80) == 0)
              {
                if (*(a2 + 24))
                {
                  LODWORD(v82) = 0;
                }

                goto LABEL_141;
              }

              v80 += 7;
              v78 = v85;
              v40 = v81++ > 8;
              if (v40)
              {
LABEL_138:
                LODWORD(v82) = 0;
                goto LABEL_141;
              }
            }

LABEL_290:
            *(a2 + 24) = 1;
            *(v25 - 1) = 0;
          }

          goto LABEL_364;
        }

        return;
      }

      v173 = *(this + 5);
      v172 = *(this + 6);
      if (v173 >= v172)
      {
        v195 = *(this + 4);
        v196 = v173 - v195;
        v197 = (v173 - v195) >> 2;
        v198 = v197 + 1;
        if ((v197 + 1) >> 62)
        {
          goto LABEL_496;
        }

        v199 = v172 - v195;
        if (v199 >> 1 > v198)
        {
          v198 = v199 >> 1;
        }

        if (v199 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v200 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v200 = v198;
        }

        if (v200)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v200);
        }

        *(4 * v197) = 0;
        v168 = 4 * v197 + 4;
        memcpy(0, v195, v196);
        v257 = *(this + 4);
        *(this + 4) = 0;
        *(this + 5) = v168;
        *(this + 6) = 0;
        if (v257)
        {
          operator delete(v257);
        }
      }

      else
      {
        *v173 = 0;
        v168 = (v173 + 4);
      }

      *(this + 5) = v168;
      if (*(this + 4) != v168)
      {
        v259 = *(a2 + 1);
        v258 = *(a2 + 2);
        v260 = *a2;
        if (v259 <= 0xFFFFFFFFFFFFFFF5 && v259 + 10 <= v258)
        {
          v261 = 0;
          v262 = 0;
          v231 = 0;
          v263 = (v260 + v259);
          v264 = v259 + 1;
          while (1)
          {
            *(a2 + 1) = v264;
            v265 = *v263++;
            v231 |= (v265 & 0x7F) << v261;
            if ((v265 & 0x80) == 0)
            {
              goto LABEL_462;
            }

            v261 += 7;
            ++v264;
            v40 = v262++ > 8;
            if (v40)
            {
              goto LABEL_458;
            }
          }
        }

        v266 = 0;
        v267 = 0;
        v231 = 0;
        v268 = (v260 + v259);
        v16 = v258 >= v259;
        v269 = v258 - v259;
        if (!v16)
        {
          v269 = 0;
        }

        v270 = v259 + 1;
        while (v269)
        {
          v271 = *v268;
          *(a2 + 1) = v270;
          v231 |= (v271 & 0x7F) << v266;
          if ((v271 & 0x80) == 0)
          {
LABEL_460:
            if (*(a2 + 24))
            {
              LODWORD(v231) = 0;
            }

            goto LABEL_462;
          }

          v266 += 7;
          ++v268;
          --v269;
          ++v270;
          v40 = v267++ > 8;
          if (v40)
          {
LABEL_458:
            LODWORD(v231) = 0;
            goto LABEL_462;
          }
        }

        goto LABEL_459;
      }

LABEL_499:
      __break(1u);
      return;
    case 0xBu:
      if (v20 == 2)
      {
        if ((PB::Reader::placeMark() & 1) == 0)
        {
          v153 = *(a2 + 1);
          v154 = *(a2 + 2);
          while (v153 < v154 && (*(a2 + 24) & 1) == 0)
          {
            v156 = *(this + 2);
            v155 = *(this + 3);
            if (v156 >= v155)
            {
              v158 = *(this + 1);
              v159 = v156 - v158;
              v160 = (v156 - v158) >> 2;
              v161 = v160 + 1;
              if ((v160 + 1) >> 62)
              {
                goto LABEL_498;
              }

              v162 = v155 - v158;
              if (v162 >> 1 > v161)
              {
                v161 = v162 >> 1;
              }

              if (v162 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v163 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v163 = v161;
              }

              if (v163)
              {
                std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v163);
              }

              *(4 * v160) = 0;
              v157 = 4 * v160 + 4;
              memcpy(0, v158, v159);
              v164 = *(this + 1);
              *(this + 1) = 0;
              *(this + 2) = v157;
              *(this + 3) = 0;
              if (v164)
              {
                operator delete(v164);
              }
            }

            else
            {
              *v156 = 0;
              v157 = (v156 + 4);
            }

            *(this + 2) = v157;
            if (*(this + 1) == v157)
            {
              goto LABEL_499;
            }

            v165 = *(a2 + 1);
            if (v165 > 0xFFFFFFFFFFFFFFFBLL || v165 + 4 > *(a2 + 2))
            {
              *(a2 + 24) = 1;
              goto LABEL_364;
            }

            *(v157 - 4) = *(*a2 + v165);
            v154 = *(a2 + 2);
            v153 = *(a2 + 1) + 4;
            *(a2 + 1) = v153;
          }

          goto LABEL_364;
        }

        return;
      }

      v181 = *(this + 2);
      v180 = *(this + 3);
      if (v181 >= v180)
      {
        v219 = *(this + 1);
        v220 = v181 - v219;
        v221 = (v181 - v219) >> 2;
        v222 = v221 + 1;
        if ((v221 + 1) >> 62)
        {
LABEL_498:
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        v223 = v180 - v219;
        if (v223 >> 1 > v222)
        {
          v222 = v223 >> 1;
        }

        if (v223 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v224 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v224 = v222;
        }

        if (v224)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v224);
        }

        *(4 * v221) = 0;
        v182 = 4 * v221 + 4;
        memcpy(0, v219, v220);
        v317 = *(this + 1);
        *(this + 1) = 0;
        *(this + 2) = v182;
        *(this + 3) = 0;
        if (v317)
        {
          operator delete(v317);
        }
      }

      else
      {
        *v181 = 0;
        v182 = (v181 + 4);
      }

      *(this + 2) = v182;
      if (*(this + 1) != v182)
      {
        v318 = *(a2 + 1);
        if (v318 <= 0xFFFFFFFFFFFFFFFBLL && v318 + 4 <= *(a2 + 2))
        {
          *(v182 - 4) = *(*a2 + v318);
          *(a2 + 1) += 4;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_365;
      }

      goto LABEL_499;
    case 0xCu:
      operator new();
    case 0xDu:
      if (v20 == 2)
      {
        if ((PB::Reader::placeMark() & 1) == 0)
        {
          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v47 = *(this + 11);
            while (1)
            {
              v48 = *(this + 12);
              if (v47 >= v48)
              {
                v49 = *(this + 10);
                v50 = v47 - v49;
                v51 = (v47 - v49) >> 3;
                v52 = v51 + 1;
                if ((v51 + 1) >> 61)
                {
                  goto LABEL_497;
                }

                v53 = v48 - v49;
                if (v53 >> 2 > v52)
                {
                  v52 = v53 >> 2;
                }

                if (v53 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v54 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v54 = v52;
                }

                if (v54)
                {
                  std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v54);
                }

                *(8 * v51) = 0;
                v47 = (8 * v51 + 8);
                memcpy(0, v49, v50);
                v55 = *(this + 10);
                *(this + 10) = 0;
                *(this + 11) = v47;
                *(this + 12) = 0;
                if (v55)
                {
                  operator delete(v55);
                }
              }

              else
              {
                *v47 = 0;
                v47 += 8;
              }

              *(this + 11) = v47;
              if (*(this + 10) == v47)
              {
                goto LABEL_499;
              }

              v57 = *(a2 + 1);
              v56 = *(a2 + 2);
              v58 = *a2;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v56)
              {
                if (v56 <= v57)
                {
                  v63 = *(a2 + 1);
                }

                else
                {
                  v63 = *(a2 + 2);
                }

                while (1)
                {
                  if (v63 == v57)
                  {
                    goto LABEL_307;
                  }

                  v64 = v57 + 1;
                  v65 = *(v58 + v57);
                  *(a2 + 1) = v64;
                  v61 |= (v65 & 0x7F) << v59;
                  if ((v65 & 0x80) == 0)
                  {
                    break;
                  }

                  v59 += 7;
                  v57 = v64;
                  v40 = v60++ > 8;
                  if (v40)
                  {
LABEL_98:
                    v61 = 0;
                    goto LABEL_101;
                  }
                }

                if (*(a2 + 24))
                {
                  v61 = 0;
                }
              }

              else
              {
                v66 = (v58 + v57);
                v67 = v57 + 1;
                while (1)
                {
                  v64 = v67;
                  *(a2 + 1) = v67;
                  v68 = *v66++;
                  v61 |= (v68 & 0x7F) << v59;
                  if ((v68 & 0x80) == 0)
                  {
                    break;
                  }

                  v59 += 7;
                  ++v67;
                  v40 = v60++ > 8;
                  if (v40)
                  {
                    goto LABEL_98;
                  }
                }
              }

LABEL_101:
              *(v47 - 1) = v61;
              if (v64 >= v56 || (*(a2 + 24) & 1) != 0)
              {
                goto LABEL_364;
              }
            }
          }

          goto LABEL_364;
        }

        return;
      }

      v170 = *(this + 11);
      v169 = *(this + 12);
      if (v170 < v169)
      {
        *v170 = 0;
        v171 = (v170 + 8);
LABEL_389:
        *(this + 11) = v171;
        if (*(this + 10) == v171)
        {
          goto LABEL_499;
        }

        v243 = *(a2 + 1);
        v242 = *(a2 + 2);
        v244 = *a2;
        if (v243 <= 0xFFFFFFFFFFFFFFF5 && v243 + 10 <= v242)
        {
          v245 = 0;
          v246 = 0;
          v247 = 0;
          v248 = (v244 + v243);
          v249 = v243 + 1;
          while (1)
          {
            *(a2 + 1) = v249;
            v250 = *v248++;
            v247 |= (v250 & 0x7F) << v245;
            if ((v250 & 0x80) == 0)
            {
              goto LABEL_484;
            }

            v245 += 7;
            ++v249;
            v40 = v246++ > 8;
            if (v40)
            {
              goto LABEL_480;
            }
          }
        }

        v251 = 0;
        v252 = 0;
        v247 = 0;
        v253 = (v244 + v243);
        v16 = v242 >= v243;
        v254 = v242 - v243;
        if (!v16)
        {
          v254 = 0;
        }

        v255 = v243 + 1;
        while (v254)
        {
          v256 = *v253;
          *(a2 + 1) = v255;
          v247 |= (v256 & 0x7F) << v251;
          if ((v256 & 0x80) == 0)
          {
            goto LABEL_482;
          }

          v251 += 7;
          ++v253;
          --v254;
          ++v255;
          v40 = v252++ > 8;
          if (v40)
          {
            goto LABEL_480;
          }
        }

LABEL_481:
        v247 = 0;
        *(a2 + 24) = 1;
LABEL_484:
        *(v171 - 8) = v247;
        goto LABEL_365;
      }

      v189 = *(this + 10);
      v190 = v170 - v189;
      v191 = (v170 - v189) >> 3;
      v192 = v191 + 1;
      if (!((v191 + 1) >> 61))
      {
        v193 = v169 - v189;
        if (v193 >> 2 > v192)
        {
          v192 = v193 >> 2;
        }

        if (v193 >= 0x7FFFFFFFFFFFFFF8)
        {
          v194 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v194 = v192;
        }

        if (v194)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v194);
        }

        *(8 * v191) = 0;
        v171 = 8 * v191 + 8;
        memcpy(0, v189, v190);
        v241 = *(this + 10);
        *(this + 10) = 0;
        *(this + 11) = v171;
        *(this + 12) = 0;
        if (v241)
        {
          operator delete(v241);
        }

        goto LABEL_389;
      }

      goto LABEL_497;
    case 0xEu:
      if (v20 == 2)
      {
        if ((PB::Reader::placeMark() & 1) == 0)
        {
          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v47 = *(this + 8);
            while (1)
            {
              v132 = *(this + 9);
              if (v47 >= v132)
              {
                v133 = *(this + 7);
                v134 = v47 - v133;
                v135 = (v47 - v133) >> 3;
                v136 = v135 + 1;
                if ((v135 + 1) >> 61)
                {
                  goto LABEL_497;
                }

                v137 = v132 - v133;
                if (v137 >> 2 > v136)
                {
                  v136 = v137 >> 2;
                }

                if (v137 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v138 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v138 = v136;
                }

                if (v138)
                {
                  std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v138);
                }

                *(8 * v135) = 0;
                v47 = (8 * v135 + 8);
                memcpy(0, v133, v134);
                v139 = *(this + 7);
                *(this + 7) = 0;
                *(this + 8) = v47;
                *(this + 9) = 0;
                if (v139)
                {
                  operator delete(v139);
                }
              }

              else
              {
                *v47 = 0;
                v47 += 8;
              }

              *(this + 8) = v47;
              if (*(this + 7) == v47)
              {
                goto LABEL_499;
              }

              v141 = *(a2 + 1);
              v140 = *(a2 + 2);
              v142 = *a2;
              v143 = 0;
              v144 = 0;
              v145 = 0;
              if (v141 > 0xFFFFFFFFFFFFFFF5 || v141 + 10 > v140)
              {
                break;
              }

              v150 = (v142 + v141);
              v151 = v141 + 1;
              while (1)
              {
                v148 = v151;
                *(a2 + 1) = v151;
                v152 = *v150++;
                v145 |= (v152 & 0x7F) << v143;
                if ((v152 & 0x80) == 0)
                {
                  break;
                }

                v143 += 7;
                ++v151;
                v40 = v144++ > 8;
                if (v40)
                {
                  goto LABEL_261;
                }
              }

LABEL_264:
              *(v47 - 1) = v145;
              if (v148 >= v140 || (*(a2 + 24) & 1) != 0)
              {
                goto LABEL_364;
              }
            }

            if (v140 <= v141)
            {
              v147 = *(a2 + 1);
            }

            else
            {
              v147 = *(a2 + 2);
            }

            while (v147 != v141)
            {
              v148 = v141 + 1;
              v149 = *(v142 + v141);
              *(a2 + 1) = v148;
              v145 |= (v149 & 0x7F) << v143;
              if ((v149 & 0x80) == 0)
              {
                if (*(a2 + 24))
                {
                  v145 = 0;
                }

                goto LABEL_264;
              }

              v143 += 7;
              v141 = v148;
              v40 = v144++ > 8;
              if (v40)
              {
LABEL_261:
                v145 = 0;
                goto LABEL_264;
              }
            }

LABEL_307:
            *(a2 + 24) = 1;
            *(v47 - 1) = 0;
          }

          goto LABEL_364;
        }

        return;
      }

      v179 = *(this + 8);
      v178 = *(this + 9);
      if (v179 >= v178)
      {
        v213 = *(this + 7);
        v214 = v179 - v213;
        v215 = (v179 - v213) >> 3;
        v216 = v215 + 1;
        if ((v215 + 1) >> 61)
        {
LABEL_497:
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        v217 = v178 - v213;
        if (v217 >> 2 > v216)
        {
          v216 = v217 >> 2;
        }

        if (v217 >= 0x7FFFFFFFFFFFFFF8)
        {
          v218 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v218 = v216;
        }

        if (v218)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v218);
        }

        *(8 * v215) = 0;
        v171 = 8 * v215 + 8;
        memcpy(0, v213, v214);
        v302 = *(this + 7);
        *(this + 7) = 0;
        *(this + 8) = v171;
        *(this + 9) = 0;
        if (v302)
        {
          operator delete(v302);
        }
      }

      else
      {
        *v179 = 0;
        v171 = (v179 + 8);
      }

      *(this + 8) = v171;
      if (*(this + 7) == v171)
      {
        goto LABEL_499;
      }

      v304 = *(a2 + 1);
      v303 = *(a2 + 2);
      v305 = *a2;
      if (v304 <= 0xFFFFFFFFFFFFFFF5 && v304 + 10 <= v303)
      {
        v306 = 0;
        v307 = 0;
        v247 = 0;
        v308 = (v305 + v304);
        v309 = v304 + 1;
        while (1)
        {
          *(a2 + 1) = v309;
          v310 = *v308++;
          v247 |= (v310 & 0x7F) << v306;
          if ((v310 & 0x80) == 0)
          {
            goto LABEL_484;
          }

          v306 += 7;
          ++v309;
          v40 = v307++ > 8;
          if (v40)
          {
            goto LABEL_480;
          }
        }
      }

      v311 = 0;
      v312 = 0;
      v247 = 0;
      v313 = (v305 + v304);
      v16 = v303 >= v304;
      v314 = v303 - v304;
      if (!v16)
      {
        v314 = 0;
      }

      v315 = v304 + 1;
      while (v314)
      {
        v316 = *v313;
        *(a2 + 1) = v315;
        v247 |= (v316 & 0x7F) << v311;
        if ((v316 & 0x80) == 0)
        {
LABEL_482:
          if (*(a2 + 24))
          {
            v247 = 0;
          }

          goto LABEL_484;
        }

        v311 += 7;
        ++v313;
        --v314;
        ++v315;
        v40 = v312++ > 8;
        if (v40)
        {
LABEL_480:
          v247 = 0;
          goto LABEL_484;
        }
      }

      goto LABEL_481;
    default:
      goto LABEL_17;
  }
}

void PBPageLayoutPkg::PBPageLayout::~PBPageLayout(PBPageLayoutPkg::PBPageLayout *this)
{
  PBPageLayoutPkg::PBPageLayout::~PBPageLayout(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF2413A8;
  v2 = *(this + 35);
  if (v2)
  {
    v3 = *(this + 36);
    v4 = *(this + 35);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 35);
    }

    *(this + 36) = v2;
    operator delete(v4);
  }

  v25 = (this + 256);
  std::vector<std::unique_ptr<PBPageLayoutPkg::PBRect>>::__destroy_vector::operator()[abi:fe200100](&v25);
  v25 = (this + 232);
  std::vector<std::unique_ptr<PBPageLayoutPkg::PBRect>>::__destroy_vector::operator()[abi:fe200100](&v25);
  v7 = *(this + 28);
  *(this + 28) = 0;
  if (v7)
  {
    std::default_delete<std::string>::operator()[abi:fe200100](v7);
  }

  v8 = *(this + 25);
  if (v8)
  {
    v9 = *(this + 26);
    v10 = *(this + 25);
    if (v9 != v8)
    {
      do
      {
        v12 = *--v9;
        v11 = v12;
        *v9 = 0;
        if (v12)
        {
          (*(*v11 + 8))(v11);
        }
      }

      while (v9 != v8);
      v10 = *(this + 25);
    }

    *(this + 26) = v8;
    operator delete(v10);
  }

  v13 = *(this + 22);
  if (v13)
  {
    v14 = *(this + 23);
    v15 = *(this + 22);
    if (v14 != v13)
    {
      do
      {
        v17 = *--v14;
        v16 = v17;
        *v14 = 0;
        if (v17)
        {
          (*(*v16 + 8))(v16);
        }
      }

      while (v14 != v13);
      v15 = *(this + 22);
    }

    *(this + 23) = v13;
    operator delete(v15);
  }

  v18 = *(this + 19);
  if (v18)
  {
    *(this + 20) = v18;
    operator delete(v18);
  }

  v19 = *(this + 16);
  if (v19)
  {
    *(this + 17) = v19;
    operator delete(v19);
  }

  v20 = *(this + 13);
  if (v20)
  {
    *(this + 14) = v20;
    operator delete(v20);
  }

  v21 = *(this + 10);
  if (v21)
  {
    *(this + 11) = v21;
    operator delete(v21);
  }

  v22 = *(this + 7);
  if (v22)
  {
    *(this + 8) = v22;
    operator delete(v22);
  }

  v23 = *(this + 4);
  if (v23)
  {
    *(this + 5) = v23;
    operator delete(v23);
  }

  v24 = *(this + 1);
  if (v24)
  {
    *(this + 2) = v24;
    operator delete(v24);
  }

  PB::Base::~Base(this);
}

void std::vector<std::unique_ptr<PBPageLayoutPkg::PBRect>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t pdf_document_unlock_with_password(uint64_t a1, char *__s)
{
  if (!a1)
  {
    return 1;
  }

  v4 = strlen(__s);

  return CGPDFSecurityManagerUnlock(a1, __s, v4);
}

CGPDFDictionaryRef pdf_document_get_catalog(uint64_t a1)
{
  value = 0;
  trailer = pdf_xref_get_trailer(a1);
  if (CGPDFDictionaryGetDictionary(trailer, "Root", &value))
  {
    return value;
  }

  else
  {
    return 0;
  }
}

_BYTE *PDFResourceSetEmit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  PDFDocumentBeginObject(*(a1 + 8), *(a1 + 16), a3, a4, a5, a6, a7, a8);
  PDFDocumentPrintf(*(a1 + 8), "<<", v9, v10, v11, v12, v13, v14, v97);
  if (*(a1 + 24))
  {
    PDFDocumentPrintf(*(a1 + 8), "/ProcSet [", v15, v16, v17, v18, v19, v20, v98);
    v27 = *(a1 + 24);
    if (v27)
    {
      PDFDocumentPrintf(*(a1 + 8), "/PDF", v21, v22, v23, v24, v25, v26, v99);
      v27 = *(a1 + 24);
      if ((v27 & 2) == 0)
      {
LABEL_4:
        if ((v27 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_33;
      }
    }

    else if ((v27 & 2) == 0)
    {
      goto LABEL_4;
    }

    PDFDocumentPrintf(*(a1 + 8), "/Text", v21, v22, v23, v24, v25, v26, v99);
    v27 = *(a1 + 24);
    if ((v27 & 4) == 0)
    {
LABEL_5:
      if ((v27 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_34;
    }

LABEL_33:
    PDFDocumentPrintf(*(a1 + 8), "/ImageB", v21, v22, v23, v24, v25, v26, v99);
    v27 = *(a1 + 24);
    if ((v27 & 8) == 0)
    {
LABEL_6:
      if ((v27 & 0x10) == 0)
      {
LABEL_8:
        PDFDocumentPrintf(*(a1 + 8), "]", v21, v22, v23, v24, v25, v26, v99);
        goto LABEL_9;
      }

LABEL_7:
      PDFDocumentPrintf(*(a1 + 8), "/ImageI", v21, v22, v23, v24, v25, v26, v99);
      goto LABEL_8;
    }

LABEL_34:
    PDFDocumentPrintf(*(a1 + 8), "/ImageC", v21, v22, v23, v24, v25, v26, v99);
    if ((*(a1 + 24) & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  if (*(a1 + 32))
  {
    PDFDocumentPrintf(*(a1 + 8), "/ColorSpace <<", v15, v16, v17, v18, v19, v20, v98);
    v28 = *(a1 + 8);
    v29 = *(*(a1 + 32) + 8);
    v108.length = CFArrayGetCount(v29);
    v108.location = 0;
    CFArrayApplyFunction(v29, v108, emitColorSpace_19035, v28);
    PDFDocumentPrintf(*(a1 + 8), ">>", v30, v31, v32, v33, v34, v35, v100);
  }

  if (*(a1 + 40))
  {
    PDFDocumentPrintf(*(a1 + 8), "/ExtGState <<", v15, v16, v17, v18, v19, v20, v98);
    v36 = *(a1 + 8);
    v37 = *(*(a1 + 40) + 8);
    v109.length = CFArrayGetCount(v37);
    v109.location = 0;
    CFArrayApplyFunction(v37, v109, emitEState, v36);
    PDFDocumentPrintf(*(a1 + 8), ">>", v38, v39, v40, v41, v42, v43, v101);
  }

  if (*(a1 + 48))
  {
    PDFDocumentPrintf(*(a1 + 8), "/Font <<", v15, v16, v17, v18, v19, v20, v98);
    v44 = *(a1 + 8);
    v45 = *(*(a1 + 48) + 8);
    v110.length = CFArrayGetCount(v45);
    v110.location = 0;
    CFArrayApplyFunction(v45, v110, emitFont, v44);
    PDFDocumentPrintf(*(a1 + 8), ">>", v46, v47, v48, v49, v50, v51, v102);
  }

  if (*(a1 + 56) || *(a1 + 64))
  {
    PDFDocumentPrintf(*(a1 + 8), "/XObject <<", v15, v16, v17, v18, v19, v20, v98);
    v58 = *(a1 + 64);
    if (v58)
    {
      v59 = *(a1 + 8);
      v60 = *(v58 + 8);
      v111.length = CFArrayGetCount(v60);
      v111.location = 0;
      CFArrayApplyFunction(v60, v111, emitImage, v59);
    }

    v61 = *(a1 + 56);
    if (v61)
    {
      v62 = *(a1 + 8);
      v63 = *(v61 + 8);
      v112.length = CFArrayGetCount(v63);
      v112.location = 0;
      CFArrayApplyFunction(v63, v112, emitForm, v62);
    }

    PDFDocumentPrintf(*(a1 + 8), ">>", v52, v53, v54, v55, v56, v57, v103);
  }

  if (*(a1 + 72))
  {
    PDFDocumentPrintf(*(a1 + 8), "/Pattern <<", v15, v16, v17, v18, v19, v20, v98);
    v64 = *(a1 + 8);
    v65 = *(*(a1 + 72) + 8);
    v113.length = CFArrayGetCount(v65);
    v113.location = 0;
    CFArrayApplyFunction(v65, v113, emitPattern_19034, v64);
    PDFDocumentPrintf(*(a1 + 8), ">>", v66, v67, v68, v69, v70, v71, v104);
  }

  if (*(a1 + 80))
  {
    PDFDocumentPrintf(*(a1 + 8), "/Properties <<", v15, v16, v17, v18, v19, v20, v98);
    v72 = *(a1 + 8);
    v73 = *(*(a1 + 80) + 8);
    v114.length = CFArrayGetCount(v73);
    v114.location = 0;
    CFArrayApplyFunction(v73, v114, emitProperties, v72);
    PDFDocumentPrintf(*(a1 + 8), ">>", v74, v75, v76, v77, v78, v79, v105);
  }

  if (*(a1 + 88))
  {
    PDFDocumentPrintf(*(a1 + 8), "/Shading <<", v15, v16, v17, v18, v19, v20, v98);
    v80 = *(a1 + 8);
    v81 = *(*(a1 + 88) + 8);
    v115.length = CFArrayGetCount(v81);
    v115.location = 0;
    CFArrayApplyFunction(v81, v115, emitShading, v80);
    PDFDocumentPrintf(*(a1 + 8), ">>", v82, v83, v84, v85, v86, v87, v106);
  }

  PDFDocumentPrintf(*(a1 + 8), ">>", v15, v16, v17, v18, v19, v20, v98);
  v95 = *(a1 + 8);

  return PDFDocumentEndObject(v95, v88, v89, v90, v91, v92, v93, v94);
}

void emitProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16);
  if (!v10)
  {
    v10 = PDFXRefTableAddObject(*(*(a1 + 8) + 504));
    *(a1 + 16) = v10;
  }

  PDFDocumentPrintNameReferencePair(a2, "/%N %R", a1 + 24, v10, a5, a6, a7, a8);
}

void emitPattern_19034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  PDFDocumentPrintNameReferencePair(a2, "/%N %R", a1 + 80, v9, a5, a6, a7, a8);
}

void emitForm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  PDFDocumentPrintNameReferencePair(a2, "/%N %R", a1 + 40, v9, a5, a6, a7, a8);
}

void emitImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  PDFDocumentPrintNameReferencePair(a2, "/%N %R", a1 + 24, v9, a5, a6, a7, a8);
}

void emitEState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16);
  if (!v10)
  {
    v10 = PDFXRefTableAddObject(*(*(a1 + 8) + 504));
    *(a1 + 16) = v10;
  }

  PDFDocumentPrintNameReferencePair(a2, "/%N %R", a1 + 24, v10, a5, a6, a7, a8);
}

void emitColorSpace_19035(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a1 + 5);
  if (!a1)
  {
    v9 = 0;
  }

  PDFDocumentPrintf(a2, "/%N", a3, a4, a5, a6, a7, a8, v9);

  PDFColorSpaceEmitReference(a1, v10, v11, v12, v13, v14, v15, v16);
}

void PDFResourceSetAddEState(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    v4 = CGOrderedSetCreate();
    *(a1 + 40) = v4;
  }

  CGOrderedSetAddValue(v4, a2);
}

BOOL shape_data_valid(_DWORD *a1, unint64_t a2)
{
  v2 = 0;
  if (a1 && a2 >= 0xC)
  {
    v3 = a2 >> 2;
    v4 = (a2 >> 2) - 1;
    if ((v4 & 1) != 0 || *a1 != 0x80000000 || a1[v4] != 0x7FFFFFFF)
    {
      return 0;
    }

    v5 = a1[1];
    if (v4 == v5)
    {
      return ((v3 - 3) & 0xFFFFFFFFFFFFFFFDLL) == 0;
    }

    if (v5 != 2)
    {
      return 0;
    }

    if (a2 < 0x10)
    {
      return 1;
    }

    else
    {
      v6 = 2;
      v7 = 2;
      do
      {
        v2 = 0;
        v8 = &a1[v6];
        v9 = v8[1];
        if ((v9 & 1) != 0 || (v9 - 1024) < 0xFFFFFC02)
        {
          break;
        }

        v10 = v7 + v9;
        if (__OFADD__(v7, v9) || v3 <= v10)
        {
          return 0;
        }

        v6 = v10;
        if (v9 != 2 && v4 == v10)
        {
          return 0;
        }

        if (v4 > v10)
        {
          v12 = a1[v10];
          if (v12 == 0x7FFFFFFF || v12 <= *v8)
          {
            return 0;
          }
        }

        v13 = v7 + 2;
        if (v7 + 2 < v10)
        {
          v14 = a1[v13];
          v15 = &a1[v13 + 2];
          for (i = v13 + 2; ; i += 2)
          {
            v17 = *(v15 - 1);
            if (v17 <= v14)
            {
              break;
            }

            if (i >= v10)
            {
              goto LABEL_28;
            }

            v2 = 0;
            v18 = *v15;
            v15 += 2;
            v14 = v18;
            if (v18 <= v17)
            {
              return v2;
            }
          }

          return 0;
        }

LABEL_28:
        v2 = 1;
        v7 = v10;
      }

      while (v4 > v10);
    }
  }

  return v2;
}

double shape_alloc_bounds(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if (a5 >= 2147483646)
  {
    v5 = 2147483646;
  }

  else
  {
    v5 = a5;
  }

  if (a3 == 0x80000000 || a3 == -2147483647)
  {
    v6 = -2147483647;
  }

  else
  {
    v6 = a3;
  }

  if (a2 < a4 && v6 < v5)
  {
    v9 = malloc_type_malloc(0x200uLL, 0x4C113E60uLL);
    *v9 = 0x280000000;
    *(v9 + 2) = v6;
    *(v9 + 3) = 4;
    *(v9 + 4) = a2;
    *(v9 + 5) = a4;
    *(v9 + 6) = v5;
    result = NAN;
    *(v9 + 28) = 0x7FFFFFFF00000002;
  }

  return result;
}

uint64_t rect_to_bounds_19063(signed int *a1, signed int *a2, signed int *a3, signed int *a4, double a5, double a6, double a7, double a8)
{
  if (a7 < 0.0)
  {
    a5 = a5 + a7;
    a7 = -a7;
  }

  v8 = vcvtmd_s64_f64(a5 + 0.00390625);
  v9 = vcvtpd_s64_f64(a5 + a7 + -0.00390625);
  if (v8 >= v9)
  {
    return 0xFFFFFFFFLL;
  }

  *a1 = v8;
  *a3 = v9;
  v10 = a6 + a8;
  if (a8 < 0.0)
  {
    v11 = -a8;
  }

  else
  {
    v10 = a6;
    v11 = a8;
  }

  v12 = vcvtmd_s64_f64(v10 + 0.00390625);
  v13 = vcvtpd_s64_f64(v10 + v11 + -0.00390625);
  if (v12 >= v13)
  {
    return 0xFFFFFFFFLL;
  }

  *a2 = v12;
  *a4 = v13;
  return 1;
}

int *shape_union_with_bounds(int *a1, int a2, int a3, int a4, int a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a5 >= 2147483646)
  {
    v5 = 2147483646;
  }

  else
  {
    v5 = a5;
  }

  if (a3 == 0x80000000 || a3 == -2147483647)
  {
    v6 = -2147483647;
  }

  else
  {
    v6 = a3;
  }

  if (a2 >= a4 || v6 >= v5)
  {

    return shape_copy(a1);
  }

  else
  {
    v8 = 0x280000000;
    v9 = v6;
    v10 = 4;
    v11 = a2;
    v12 = a4;
    v13 = v5;
    v14 = 0x7FFFFFFF00000002;
    return shape_union(a1, a1, &v8);
  }
}

_DWORD *shape_copy(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    if (*result == 0x80000000 && (v2 = result[1], v2 >= 1))
    {
      result = &the_empty_shape;
      if (v1 != &the_empty_shape && v1[v2] != 0x7FFFFFFF)
      {
        v3 = shape_length(v1);
        if (v3 >= 4)
        {
          v4 = v3;
          result = malloc_type_malloc((4 * v3 + 511) & 0xFFFFFFFFFFFFFE00, 0x4C113E60uLL);
          v5 = 0;
          do
          {
            result[v5] = v1[v5];
            ++v5;
          }

          while (v4 != v5);
        }

        else
        {
          return &the_empty_shape;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t shape_length(uint64_t a1)
{
  if (*a1 == 0x80000000 && *(a1 + 4) == 4 && *(a1 + 16) == 0x7FFFFFFF)
  {
    return 5;
  }

  if (a1 == &the_empty_shape)
  {
    return 3;
  }

  v2 = (a1 + 4 * *(a1 + 4));
  if (*v2 == 0x7FFFFFFF)
  {
    return 3;
  }

  do
  {
    v3 = v2;
    v2 += v2[1];
  }

  while (*v2 != 0x7FFFFFFF);
  return ((v3 - a1) >> 2) + 3;
}

_DWORD *shape_alloc_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 != 0x80000000)
  {
    return 0;
  }

  v4 = *(a2 + 4);
  if (v4 < 1)
  {
    return 0;
  }

  result = &the_empty_shape;
  if (a2 != &the_empty_shape && *(a2 + 4 * v4) != 0x7FFFFFFF && a3 >= 0x10)
  {
    v6 = a3 >> 2;
    if (*(a2 + 4 * (a3 >> 2) - 4) == 0x7FFFFFFF)
    {
      result = malloc_type_malloc(((a3 & 0xFFFFFFFFFFFFFFFCLL) + 511) & 0xFFFFFFFFFFFFFE00, 0x4C113E60uLL);
      v7 = 0;
      do
      {
        result[v7] = *(a2 + 4 * v7);
        ++v7;
      }

      while (v6 != v7);
    }
  }

  return result;
}

void shape_free(int a1, void *a2)
{
  if (a2)
  {
    if (a2 != &the_empty_shape)
    {
      free(a2);
    }
  }
}

uint64_t shape_count(uint64_t a1)
{
  v1 = (a1 + 4 * *(a1 + 4));
  if (*v1 == 0x7FFFFFFF)
  {
    return 0;
  }

  v2 = v1[1];
  v3 = &v1[v2];
  if (*v3 == 0x7FFFFFFF)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    result = (result + v2 / 2 - 1);
    v2 = v3[1];
    v3 += v2;
  }

  while (*v3 != 0x7FFFFFFF);
  return result;
}

BOOL shape_is_rectangular(uint64_t a1)
{
  if (a1 == &the_empty_shape || *(a1 + 4 * *(a1 + 4)) == 0x7FFFFFFF)
  {
    return 1;
  }

  if (*(a1 + 12) == 4 && *(a1 + 28) == 2)
  {
    return *(a1 + 32) == 0x7FFFFFFF;
  }

  return 0;
}

uint64_t shape_contains_point(uint64_t result, int a2, int a3)
{
  if (result)
  {
    v3 = result;
    if (*result != 0x80000000)
    {
      return 0;
    }

    result = 0;
    if (v3 != &the_empty_shape)
    {
      v4 = *(v3 + 4);
      if (v4 >= 1)
      {
        v5 = (v3 + 4 * v4);
        v6 = *v5;
        if (*v5 == 0x7FFFFFFF)
        {
          return 0;
        }

        do
        {
          result = 0;
          if (v6 > a3)
          {
            break;
          }

          v7 = v5[1];
          if (v5[v7] == 0x7FFFFFFF)
          {
            break;
          }

          v8 = &v5[v7];
          v6 = *v8;
          if (*v8 > a3 && v7 != 2)
          {
            v10 = 4 * v7 - 8;
            v11 = v5 + 3;
            while (*(v11 - 1) > a2 || *v11 <= a2)
            {
              v11 += 2;
              v10 -= 8;
              if (!v10)
              {
                goto LABEL_18;
              }
            }

            return 1;
          }

LABEL_18:
          result = 0;
          v5 = v8;
        }

        while (v6 != 0x7FFFFFFF);
      }
    }
  }

  return result;
}

uint64_t shape_contains_bounds(unint64_t a1, int a2, signed int a3, int a4, signed int a5)
{
  if (a2 >= a4)
  {
    return 0;
  }

  v5 = 0;
  if (a1 && a1 != &the_empty_shape && a3 < a5)
  {
    if (*a1 == 0x80000000)
    {
      v6 = *(a1 + 4);
      if (v6 >= 1 && *(a1 + 4 * v6) != 0x7FFFFFFF)
      {
        v8 = 0x80000000;
        while (a3 >= v8)
        {
          v9 = a1;
          v10 = *(a1 + 4);
          a1 += 4 * v10;
          v8 = *a1;
          if (a3 < *a1 && v10 >= 3)
          {
            v12 = (v9 + 8);
            while (*v12 > a2 || v12[1] < a4)
            {
              v12 += 2;
              if (v12 >= a1)
              {
                goto LABEL_22;
              }
            }

            a3 = *a1;
            if (v8 >= a5)
            {
              return 1;
            }
          }

LABEL_22:
          v5 = 0;
          if (v8 == 0x7FFFFFFF)
          {
            return v5;
          }
        }
      }
    }

    return 0;
  }

  return v5;
}

int *shape_enclose_with_bounds(uint64_t a1, int a2, signed int a3, signed int a4, int a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = &the_empty_shape;
  if (a1 != &the_empty_shape && a1 != 0 && *a1 == 0x80000000)
  {
    v7 = *(a1 + 4);
    if (v7 >= 1 && *(a1 + 4 * v7) != 0x7FFFFFFF && a2 < a4 && a3 < a5)
    {
      *v15 = 0x280000000;
      *&v15[8] = a3;
      v16[0] = 4;
      v16[1] = a2;
      v16[2] = a4;
      v16[3] = a5;
      v17 = 0x7FFFFFFF00000002;
      v13 = shape_intersect(a1, a1, v15);
      if (v13 != &the_empty_shape)
      {
        v14 = v13;
        if (shape_bounds(v13, v15, &v15[4], &v15[8], v16) == 9 && *v15 == a2 && *&v15[4] == __PAIR64__(a4, a3) && v16[0] == a5)
        {
          if (v14)
          {
            free(v14);
          }

          return 0;
        }

        else
        {
          return v14;
        }
      }
    }
  }

  return v5;
}

int *shape_intersect(uint64_t a1, int *a2, int *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  if (*a2 != 0x80000000)
  {
    return 0;
  }

  v4 = a3;
  result = 0;
  if (!a3)
  {
    return result;
  }

  v6 = a2[1];
  if (v6 < 1)
  {
    return result;
  }

  if (*a3 != 0x80000000)
  {
    return 0;
  }

  v7 = a3[1];
  if (v7 < 1)
  {
    return 0;
  }

  if (a2[v6] == 0x7FFFFFFF || a3[v7] == 0x7FFFFFFF)
  {
    return &the_empty_shape;
  }

  result = malloc_type_malloc(0x800uLL, 0x4C113E60uLL);
  if (result)
  {
    v8 = result;
    if (*v3 == 0x7FFFFFFF)
    {
      v9 = 512;
      v10 = result;
LABEL_13:
      *v8 = 0x7FFFFFFF;

      return final_check(v10, v9, v8 - v10 + 1);
    }

    v38 = 0;
    v11 = 0;
    v12 = 0;
    v9 = 512;
    v10 = result;
    while (1)
    {
      if (*v4 == 0x7FFFFFFF)
      {
        goto LABEL_13;
      }

      v13 = v4;
      if (v8 - v10 + 4 > v9)
      {
        v14 = 2 * v9;
        v15 = malloc_type_realloc(v10, (8 * v9 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
        v16 = (v12 + v15 - v10);
        if (!v12)
        {
          v16 = 0;
        }

        if (v15 != v10)
        {
          v8 = (v8 + v15 - v10);
          v12 = v16;
          v10 = v15;
        }

        v9 = v14;
      }

      if (!v10)
      {
        return 0;
      }

      v17 = *v3;
      v18 = *v13;
      if (*v13 < *v3)
      {
        break;
      }

      if (v17 == 0x7FFFFFFF)
      {
        v19 = v3;
        v3 = v11;
      }

      else
      {
        *v8 = v17;
        v19 = &v3[v3[1]];
      }

      if (v17 >= v18)
      {
        v18 = *v13;
        if (*v13 != 0x7FFFFFFF)
        {
          goto LABEL_27;
        }
      }

      v20 = v3;
      v3 = v19;
      v4 = v13;
      v13 = v38;
LABEL_34:
      v38 = v13;
      v39 = v20;
      v21 = v20 + 2;
      v22 = v8 + 1;
      v8 += 2;
      if (v20 + 2 != v3)
      {
        v23 = v13 + 2;
        if (v13 + 2 != v4)
        {
          v24 = 0;
          do
          {
            if (v8 - v10 + 4 > v9)
            {
              v25 = 2 * v9;
              result = malloc_type_realloc(v10, (8 * v9 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
              v26 = result - v10;
              if (result == v10)
              {
                v9 = v25;
              }

              else
              {
                if (v12)
                {
                  v12 = (v12 + v26);
                }

                else
                {
                  v12 = 0;
                }

                if (!result)
                {
                  return result;
                }

                v8 = (v8 + v26);
                v22 = (v22 + v26);
                v9 = v25;
                v10 = result;
              }
            }

            v27 = *v21;
            v28 = *v23;
            if (*v21 <= *v23)
            {
              v29 = v24 ^ 1;
              ++v21;
              *v8 = v27;
              v28 = *v23;
            }

            else
            {
              v29 = v24;
            }

            if (v28 <= v27)
            {
              v29 = v29 ^ 2;
              ++v23;
              *v8 = v28;
            }

            v31 = v24 == 3 || v29 == 3;
            v8 += v31;
            if (v21 == v3)
            {
              break;
            }

            v24 = v29;
          }

          while (v23 != v4);
        }
      }

      v32 = ((v8 - v22) >> 2) + 1;
      *v22 = v32;
      if (v12)
      {
        v11 = v39;
        if (v32 == *v12)
        {
          if (((v8 - v22) >> 2) != 1)
          {
            v33 = v12 + 1;
            v34 = v22 + 1;
            while (v34 != v8)
            {
              v36 = *v33++;
              v35 = v36;
              v37 = *v34++;
              if (v35 != v37)
              {
                goto LABEL_66;
              }
            }
          }

          v8 = v22 - 1;
        }

        else
        {
LABEL_66:
          v12 = v22;
        }
      }

      else
      {
        v12 = v22;
        v11 = v39;
      }

      if (*v3 == 0x7FFFFFFF)
      {
        goto LABEL_13;
      }
    }

    v19 = v3;
    v3 = v11;
LABEL_27:
    *v8 = v18;
    v4 = &v13[v13[1]];
    v20 = v3;
    v3 = v19;
    goto LABEL_34;
  }

  return result;
}

uint64_t shape_intersects_shape(signed int *a1, signed int *a2)
{
  if (!a1 || *a1 != 0x80000000)
  {
    return 0;
  }

  v2 = 0;
  if (a2)
  {
    v3 = a1[1];
    if (v3 >= 1)
    {
      if (*a2 != 0x80000000)
      {
        return 0;
      }

      v4 = a2[1];
      if (v4 < 1 || a1[v3] == 0x7FFFFFFF || a2[v4] == 0x7FFFFFFF)
      {
        return 0;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0x80000000;
      do
      {
        v9 = *a2;
        if (*a2 == 0x7FFFFFFF)
        {
          return 0;
        }

        if (v9 >= v8)
        {
          v10 = &a1[a1[1]];
          v7 = a1;
          if (v8 < v9)
          {
            v7 = a1;
            goto LABEL_18;
          }
        }

        else
        {
          v10 = a1;
        }

        v6 = a2;
        a2 += a2[1];
LABEL_18:
        a1 = v10;
        v11 = 0;
        v12 = v7 + 2;
        v13 = v6 + 2;
        while (v12 != a1 && v13 != a2)
        {
          v14 = *v13 <= *v12;
          v11 ^= *v12 <= *v13;
          v12 += *v12 <= *v13;
          if (v14)
          {
            v11 ^= 2u;
          }

          v13 += v14;
          v2 = 1;
          if (v11 == 3)
          {
            return v2;
          }
        }

        v2 = 0;
        v8 = *a1;
      }

      while (*a1 != 0x7FFFFFFF);
    }
  }

  return v2;
}

int32x2_t *shape_offset(uint64_t a1, int32x2_t *a2, unsigned int a3, __int32 a4)
{
  v7 = shape_length(a2);
  if (v7 <= 3)
  {
    goto LABEL_4;
  }

  if (v7 == 5)
  {
    a3 += a2[1].u32[0];
    a4 += a2[1].i32[1];
LABEL_4:
    if (a4 | a3)
    {
      result = malloc_type_malloc(0x200uLL, 0x4C113E60uLL);
      *result = 0x480000000;
      result[1].i32[0] = a3;
      result[1].i32[1] = a4;
      v9 = result + 2;
LABEL_6:
      v9->i32[0] = 0x7FFFFFFF;
      return result;
    }

    return &the_empty_shape;
  }

  result = malloc_type_malloc((4 * v7 + 511) & 0x3FFFFFE00, 0x4C113E60uLL);
  if (result)
  {
    result->i32[0] = a2->i32[0];
    result->i32[1] = a2->i32[1];
    v12 = a2[1].i32[0];
    v11 = a2 + 1;
    v10 = v12;
    v9 = result + 1;
    if (v12 != 0x7FFFFFFF)
    {
      v13 = vdup_n_s32(a3);
      do
      {
        v14 = v11->i32[1];
        v9->i32[0] = v10 + a4;
        v9->i32[1] = v14;
        v15 = (v11 + 4 * v14);
        if (v14 >= 3)
        {
          v16 = v11 + 1;
          v17 = v9 + 1;
          do
          {
            v18 = *v16++;
            *v17++ = vadd_s32(v18, v13);
          }

          while (v16 < v15);
        }

        v9 = (v9 + 4 * v14);
        v10 = v15->i32[0];
        v11 = (v11 + 4 * v14);
      }

      while (v15->i32[0] != 0x7FFFFFFF);
    }

    goto LABEL_6;
  }

  return result;
}

int *shape_intersect_with_bounds(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a6 >= 2147483646)
  {
    v6 = 2147483646;
  }

  else
  {
    v6 = a6;
  }

  if (a4 == 0x80000000 || a4 == -2147483647)
  {
    v7 = -2147483647;
  }

  else
  {
    v7 = a4;
  }

  result = &the_empty_shape;
  if (a3 < a5 && v7 < v6)
  {
    v9 = 0x280000000;
    v10 = v7;
    v11 = 4;
    v12 = a3;
    v13 = a5;
    v14 = v6;
    v15 = 0x7FFFFFFF00000002;
    return shape_intersect(&the_empty_shape, a2, &v9);
  }

  return result;
}

int *shape_difference(uint64_t a1, int *a2, int *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  if (*a2 != 0x80000000)
  {
    return 0;
  }

  v4 = a3;
  result = 0;
  if (!a3)
  {
    return result;
  }

  v6 = a2[1];
  if (v6 < 1)
  {
    return result;
  }

  if (*a3 != 0x80000000)
  {
    return 0;
  }

  v7 = a3[1];
  if (v7 < 1)
  {
    return 0;
  }

  if (a2[v6] == 0x7FFFFFFF)
  {
    return &the_empty_shape;
  }

  if (a3[v7] == 0x7FFFFFFF)
  {

    return shape_copy(a2);
  }

  result = malloc_type_malloc(0x800uLL, 0x4C113E60uLL);
  if (!result)
  {
    return result;
  }

  v8 = result;
  if (*v3 != 0x7FFFFFFF)
  {
    v40 = 0;
    v11 = 0;
    v12 = 0;
    v9 = 512;
    v10 = result;
    while (1)
    {
      v13 = v4;
      if (v10 - v8 + 4 > v9)
      {
        v14 = 2 * v9;
        v15 = malloc_type_realloc(v8, (8 * v9 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
        v16 = (v12 + v15 - v8);
        if (!v12)
        {
          v16 = 0;
        }

        if (v15 != v8)
        {
          v10 = (v10 + v15 - v8);
          v12 = v16;
          v8 = v15;
        }

        v9 = v14;
      }

      if (!v8)
      {
        return 0;
      }

      v17 = *v3;
      v18 = *v13;
      if (*v13 >= *v3)
      {
        if (v17 == 0x7FFFFFFF)
        {
          v19 = v3;
          v3 = v11;
        }

        else
        {
          *v10 = v17;
          v19 = &v3[v3[1]];
        }

        if (v17 < v18 || (v18 = *v13, *v13 == 0x7FFFFFFF))
        {
          v20 = v3;
          v3 = v19;
          v4 = v13;
          goto LABEL_36;
        }
      }

      else
      {
        v19 = v3;
        v3 = v11;
      }

      *v10 = v18;
      v4 = &v13[v13[1]];
      v20 = v3;
      v3 = v19;
      v40 = v13;
LABEL_36:
      v41 = v20;
      v21 = v20 + 2;
      v22 = v10 + 1;
      v10 += 2;
      if (v20 + 2 != v3)
      {
        v23 = 0;
        v24 = v40 + 2;
        do
        {
          if (v10 - v8 + 4 > v9)
          {
            v25 = 2 * v9;
            result = malloc_type_realloc(v8, (8 * v9 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
            v26 = result - v8;
            if (result == v8)
            {
              v9 = v25;
            }

            else
            {
              if (v12)
              {
                v12 = (v12 + v26);
              }

              else
              {
                v12 = 0;
              }

              if (!result)
              {
                return result;
              }

              v10 = (v10 + v26);
              v22 = (v22 + v26);
              v9 = v25;
              v8 = result;
            }
          }

          v27 = *v21;
          v28 = *v24;
          if (*v21 <= *v24 || v24 == v4)
          {
            v30 = v23 ^ 1;
            ++v21;
            *v10 = v27;
            v28 = *v24;
          }

          else
          {
            v30 = v23;
          }

          if (v28 <= v27 && v24 != v4)
          {
            v30 = v30 ^ 2;
            ++v24;
            *v10 = v28;
          }

          v33 = v23 == 1 || v30 == 1;
          v10 += v33;
          v23 = v30;
        }

        while (v21 != v3);
      }

      v34 = ((v10 - v22) >> 2) + 1;
      *v22 = v34;
      if (v12)
      {
        v11 = v41;
        if (v34 == *v12)
        {
          if (((v10 - v22) >> 2) != 1)
          {
            v35 = v12 + 1;
            v36 = v22 + 1;
            while (v36 != v10)
            {
              v38 = *v35++;
              v37 = v38;
              v39 = *v36++;
              if (v37 != v39)
              {
                goto LABEL_72;
              }
            }
          }

          v10 = v22 - 1;
          v34 = (((v22 - 1) - v12) >> 2) + 1;
        }

        else
        {
LABEL_72:
          v12 = v22;
        }
      }

      else
      {
        v12 = v22;
        v11 = v41;
      }

      *v12 = v34;
      if (*v3 == 0x7FFFFFFF)
      {
        goto LABEL_16;
      }
    }
  }

  v9 = 512;
  v10 = result;
LABEL_16:
  *v10 = 0x7FFFFFFF;

  return final_check(v8, v9, v10 - v8 + 1);
}

int *shape_xor(uint64_t a1, int *a2, int *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  if (*a2 != 0x80000000)
  {
    return 0;
  }

  v4 = a3;
  if (!a3)
  {
    return 0;
  }

  v5 = a2[1];
  if (v5 < 1)
  {
    return 0;
  }

  if (*a3 != 0x80000000)
  {
    return 0;
  }

  v6 = a3[1];
  if (v6 < 1)
  {
    return 0;
  }

  if (a2[v5] == 0x7FFFFFFF)
  {
    v7 = a3;
LABEL_11:

    return shape_copy(v7);
  }

  if (a3[v6] == 0x7FFFFFFF)
  {
    v7 = a2;
    goto LABEL_11;
  }

  v9 = malloc_type_malloc(0x800uLL, 0x4C113E60uLL);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = 0;
  v45 = 0;
  v46 = 0;
  v12 = 512;
  v13 = v9;
  while (1)
  {
    v14 = v4;
    if (*v3 == 0x7FFFFFFF && *v4 == 0x7FFFFFFF)
    {
      break;
    }

    if (v10 - v13 + 4 <= v12)
    {
      v48 = v11;
    }

    else
    {
      v15 = 2 * v12;
      v16 = malloc_type_realloc(v13, (8 * v12 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
      v17 = (v11 + v16 - v13);
      if (!v11)
      {
        v17 = 0;
      }

      if (v16 != v13)
      {
        v10 = (v10 + v16 - v13);
        v11 = v17;
      }

      v48 = v11;
      if (v16 != v13)
      {
        v13 = v16;
      }

      v12 = v15;
    }

    if (!v13)
    {
      return 0;
    }

    v18 = *v3;
    v19 = *v14;
    if (*v14 >= *v3)
    {
      if (v18 == 0x7FFFFFFF)
      {
        v20 = v3;
        v3 = v46;
      }

      else
      {
        *v10 = v18;
        v20 = &v3[v3[1]];
      }

      if (v18 < v19 || (v19 = *v14, *v14 == 0x7FFFFFFF))
      {
        v21 = v3;
        v3 = v20;
        v4 = v14;
        v14 = v45;
        goto LABEL_37;
      }
    }

    else
    {
      v20 = v3;
      v3 = v46;
    }

    *v10 = v19;
    v4 = &v14[v14[1]];
    v21 = v3;
    v3 = v20;
LABEL_37:
    v45 = v14;
    v46 = v21;
    v22 = v21 + 2;
    v23 = v14 + 2;
    v47 = v10 + 1;
    v10 += 2;
    v24 = v14 + 2 != v4;
    v25 = v21 + 2 != v3;
    if (v21 + 2 != v3 || v23 != v4)
    {
      v26 = 0;
      while (1)
      {
        if (v10 - v13 + 4 > v12)
        {
          v27 = 2 * v12;
          v28 = malloc_type_realloc(v13, (8 * v12 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
          v29 = v28 - v13;
          if (v28 == v13)
          {
            v12 = v27;
          }

          else
          {
            v30 = (v48 + v29);
            if (!v48)
            {
              v30 = 0;
            }

            v48 = v30;
            if (!v28)
            {
              return 0;
            }

            v10 = (v10 + v29);
            v47 = (v47 + v29);
            v12 = v27;
            v13 = v28;
          }
        }

        v31 = *v22;
        v32 = *v23;
        v34 = *v22 <= *v23 || v23 == v4;
        if (v25 && v34)
        {
          v35 = v26 ^ 1;
          *v10 = v31;
          v36 = v22 + 1;
          v31 = *v22;
          v32 = *v23;
        }

        else
        {
          v35 = v26;
          v36 = v22;
        }

        v38 = v22 == v3 || v32 <= v31;
        if (v38 && v24)
        {
          v35 = v35 ^ 2;
          ++v23;
          *v10 = v32;
        }

        v10 += ((v26 - 1) < 2) ^ ((v35 - 1) < 2);
        v24 = v23 != v4;
        v22 = v36;
        v26 = v35;
        v25 = v36 != v3;
        if (v36 == v3)
        {
          v22 = v36;
          v26 = v35;
          if (v23 == v4)
          {
            break;
          }
        }
      }
    }

    v11 = v48;
    v39 = ((v10 - v47) >> 2) + 1;
    *v47 = v39;
    if (v48 && v39 == *v48)
    {
      if (((v10 - v47) >> 2) != 1)
      {
        v40 = v48 + 1;
        v41 = v47 + 1;
        while (v41 != v10)
        {
          v43 = *v40++;
          v42 = v43;
          v44 = *v41++;
          if (v42 != v44)
          {
            goto LABEL_73;
          }
        }
      }

      v10 = v47 - 1;
      v39 = (((v47 - 1) - v48) >> 2) + 1;
    }

    else
    {
LABEL_73:
      v11 = v47;
    }

    *v11 = v39;
  }

  *v10 = 0x7FFFFFFF;

  return final_check(v13, v12, v10 - v13 + 1);
}

void shape_inset(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = a2;
  if (!(a4 | a3) || (v44 = 0, v45 = 0, v7 = shape_bounds(a2, &v45 + 1, &v45, &v44 + 1, &v44), v7 <= 3))
  {

    shape_copy(v4);
    return;
  }

  v9 = v45;
  v8 = HIDWORD(v45);
  v10 = HIDWORD(v45) + a3;
  v11 = v45 + a4;
  LODWORD(v45) = v45 + a4;
  HIDWORD(v45) = v10;
  v13 = v44;
  v12 = HIDWORD(v44);
  v14 = HIDWORD(v44) - a3;
  v15 = v44 - a4;
  LODWORD(v44) = v44 - a4;
  HIDWORD(v44) = v14;
  if (v10 >= v14 || v11 >= v15)
  {
    v17 = v12 + v8 + ((v12 + v8) >> 31);
    v18 = v13 + v9;
LABEL_11:
    v19 = v18 / 2;
    if ((v18 / 2) | (v17 >> 1))
    {
      v20 = v17 >> 1;
      v21 = malloc_type_malloc(0x200uLL, 0x4C113E60uLL);
      *v21 = 0x480000000;
      v21[2] = v20;
      v21[3] = v19;
      v21[4] = 0x7FFFFFFF;
    }

    return;
  }

  v22 = v7;
  if (v7 != 9)
  {
    if (!a3)
    {
      v43 = shape_vinset(v4, a4);
LABEL_53:
      if (v43 != &the_empty_shape)
      {
        return;
      }

      v17 = HIDWORD(v44) + HIDWORD(v45) + ((HIDWORD(v44) + HIDWORD(v45)) >> 31);
      v18 = v44 + v45;
      goto LABEL_11;
    }

    v23 = malloc_type_malloc((4 * v7 + 511) & 0x3FFFFFE00, 0x4C113E60uLL);
    if (v23)
    {
      v24 = *v4;
      v25 = v23;
      if (*v4 != 0x7FFFFFFF)
      {
        v26 = 0;
        v27 = v23;
        do
        {
          v28 = v27 + 2;
          v29 = v4[1];
          v30 = v4 + 2;
          v4 += v29;
          if (a3 <= 0)
          {
            if (v29 >= 3)
            {
              v33 = -2147483647;
              v25 = v27 + 2;
              do
              {
                v34 = v30[1];
                v35 = *v30 + a3;
                if (v35 <= v33)
                {
                  v36 = v25 - 1;
                }

                else
                {
                  *v25 = v35;
                  v36 = v25 + 1;
                }

                v33 = v34 - a3;
                *v36 = v34 - a3;
                v25 = v36 + 1;
                v30 += 2;
              }

              while (v30 < v4);
              goto LABEL_36;
            }
          }

          else if (v29 >= 3)
          {
            v25 = v27 + 2;
            do
            {
              v31 = *v30 + a3;
              v32 = v30[1] - a3;
              if (v31 < v32)
              {
                *v25 = v31;
                v25[1] = v32;
                v25 += 2;
              }

              v30 += 2;
            }

            while (v30 < v4);
            goto LABEL_36;
          }

          v25 = v27 + 2;
LABEL_36:
          v37 = (v25 - v27) >> 2;
          *v27 = v24;
          v27[1] = v37;
          v38 = v27 + 1;
          if (v26 && *v26 == v37)
          {
            if (v37 != 2)
            {
              v39 = 0;
              while (&v28[v39] != v25)
              {
                v40 = v26[v39 + 1];
                v41 = v28[v39++];
                if (v40 != v41)
                {
                  goto LABEL_43;
                }
              }
            }

            v38 = v26;
            v25 = v27;
          }

LABEL_43:
          v24 = *v4;
          v26 = v38;
          v27 = v25;
        }

        while (*v4 != 0x7FFFFFFF);
      }

      *v25 = 0x7FFFFFFF;
      v42 = final_check(v23, v22, v25 - v23 + 1);
      if (!a4)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v42 = 0;
      if (!a4)
      {
LABEL_52:
        v43 = v42;
        goto LABEL_53;
      }
    }

    if (v42 != &the_empty_shape)
    {
      v43 = shape_vinset(v42, a4);
      if (v42)
      {
        free(v42);
      }

      goto LABEL_53;
    }

    goto LABEL_52;
  }

  shape_alloc_bounds(v7, v10, v11, v14, v15);
}

int *shape_vinset(int *a1, int a2)
{
  v2 = a1;
  if (!a2)
  {
    return a1;
  }

  if (a1 == &the_empty_shape || a1 == 0)
  {
    return a1;
  }

  v4 = a2;
  v5 = 0;
  v6 = 0;
  v7 = a1;
  while (1)
  {
    if (v4 >= 0)
    {
      v8 = v4;
    }

    else
    {
      v8 = -v4;
    }

    v9 = 0x7FFFFFFF;
    v10 = v7;
    while (1)
    {
      v11 = *v10;
      if (*v10 == 0x7FFFFFFF)
      {
        break;
      }

      v12 = *(v10 + 1);
      v10 += 4 * v12;
      if (v12 >= 3)
      {
        v13 = *v10 - v11;
        if (v13 < v9)
        {
          v9 = v13;
        }

        if (v13 < v8)
        {
          v8 = v13;
        }
      }
    }

    v14 = (v10 - v7) >> 2;
    v15 = v14 + 1;
    v16 = v9 >> 1;
    v18 = v9 < 1 || v8 <= v16;
    if (v4 <= -v8)
    {
      v19 = -v8;
    }

    else
    {
      v19 = v4;
    }

    if (v8 < v16)
    {
      v16 = v8;
    }

    if (v9 > 1)
    {
      v8 = v16;
    }

    if (v8 >= v4)
    {
      v8 = v4;
    }

    v20 = v4 >= 1 ? v8 : v19;
    v21 = v4 >= 1 || v18;
    if (!v6)
    {
      break;
    }

    if (v5 >= v15)
    {
      goto LABEL_45;
    }

    v5 = (v14 & 0xFFFFFE00) + 512;
    a1 = malloc_type_realloc(v6, 8 * v5, 0x9C99BB6EuLL);
    if (!a1)
    {
      goto LABEL_65;
    }

LABEL_44:
    v6 = a1;
LABEL_45:
    v22 = &v6[v15];
    v23 = *v7;
    *v22 = *v7;
    *v6 = v23;
    v24 = v7[1];
    v22[1] = v24;
    v6[1] = v24;
    v25 = v7 + 2;
    v26 = v7[2];
    v27 = v6 + 2;
    v28 = v22 + 2;
    while (v26 != 0x7FFFFFFF)
    {
      v29 = v25[1];
      *v27 = v26 + v20;
      v27[1] = v29;
      v27 += 2;
      *v28 = v26 - v20;
      v28[1] = v29;
      v28 += 2;
      v30 = &v25[v29];
      if (v29 >= 3)
      {
        v31 = v25 + 2;
        do
        {
          v32 = *v31;
          v33 = v31[1];
          v31 += 2;
          *v27 = v32;
          *v28 = v32;
          v27[1] = v33;
          v28[1] = v33;
          v28 += 2;
          v27 += 2;
        }

        while (v31 < v30);
      }

      v26 = *v30;
      v25 = v30;
    }

    *v28 = 0x7FFFFFFF;
    *v27 = 0x7FFFFFFF;
    if (v20 < 1)
    {
      a1 = shape_union(a1, v6, v22);
      v35 = a1;
      if (v21)
      {
        v34 = a1;
      }

      else
      {
        a1 = shape_union(a1, a1, v7);
        v34 = a1;
        if (v35 && v35 != &the_empty_shape)
        {
          free(v35);
        }
      }
    }

    else
    {
      a1 = shape_intersect(a1, v6, v22);
      v34 = a1;
    }

    if (v7 != v2)
    {
      free(v7);
    }

    v4 -= v20;
    if (v4)
    {
      if (v34 != &the_empty_shape)
      {
        v7 = v34;
        if (v34)
        {
          continue;
        }
      }
    }

    free(v6);
    return v34;
  }

  v5 = (v14 & 0xFFFFFE00) + 512;
  a1 = malloc_type_malloc(8 * v5, 0x4C113E60uLL);
  if (a1)
  {
    goto LABEL_44;
  }

LABEL_65:
  if (v7 != v2)
  {
    free(v7);
  }

  return 0;
}

double shape_combine(int32x2_t *a1, int a2, int a3, int a4, int a5, int *a6, int a7, int a8, int a9, int a10, int32x2_t *a11)
{
  v12 = a1;
  v13 = a9;
  v14 = a10;
  v48 = *MEMORY[0x1E69E9840];
  v15 = a7 < a2;
  if (a7 <= a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = a7;
  }

  if (a8 <= a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = a8;
  }

  if (a8 < a3)
  {
    v15 = 1;
  }

  if (a9 >= a4)
  {
    v13 = a4;
  }

  if (a9 > a4)
  {
    v15 = 1;
  }

  v18 = a10 > a5 || v15;
  v19 = v13 - v16;
  if (v19 < 0)
  {
    return result;
  }

  if (a10 >= a5)
  {
    v14 = a5;
  }

  v21 = v14 - v17;
  if (v21 < 0)
  {
    return result;
  }

  v22 = a6;
  if (!a11)
  {
    v26 = v16 - a2;
    v27 = v17 - a3;
    if (a6)
    {
      goto LABEL_28;
    }

    if (a1)
    {
      if (a1 <= 0)
      {
        v36 = xmmword_18439CEB0;
        v37 = 0;
        v38 = a4 - a2;
        v39 = a5 - a3;
        v40 = 0x7FFFFFFF00000002;
        v41 = 0x280000000;
        v42 = v27;
        v43 = 4;
        v44 = v26;
        v45 = v19 + v26;
        v46 = v21 + v27;
        v47 = 0x7FFFFFFF00000002;
        shape_difference(a1, &v36, &v41);
        return result;
      }

      if (a1 == 1)
      {
LABEL_28:
        v18 = 0;
        v41 = 0x280000000;
        v42 = v27;
        v43 = 4;
        v44 = v26;
        v45 = v19 + v26;
        v46 = v21 + v27;
        v47 = 0x7FFFFFFF00000002;
        v25 = &v41;
        if (a6)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v34 = a4 - a2;
      v35 = a5 - a3;
      v26 = 0;
      v27 = 0;
    }

    else
    {
      v34 = v19 + v26;
      v35 = v21 + v27;
    }

    return shape_alloc_bounds(a1, v26, v27, v34, v35);
  }

  if (a7 == a2 && a8 == a3)
  {
    v25 = a11;
    if (a6)
    {
      goto LABEL_32;
    }
  }

  else
  {
    a1 = shape_offset(a1, a11, a7 - a2, a8 - a3);
    v25 = a1;
    if (v22)
    {
      goto LABEL_32;
    }
  }

LABEL_31:
  v36 = xmmword_18439CEB0;
  v37 = 0;
  v38 = a4 - a2;
  v39 = a5 - a3;
  v40 = 0x7FFFFFFF00000002;
  v22 = &v36;
LABEL_32:
  v29 = v25 != a11 && v25 != &v41;
  if (v12)
  {
    if ((v12 & 0x80000000) == 0)
    {
      v30 = shape_union(a1, v22, v25);
      v32 = v30;
      if (v29 && v25 && v25 != &the_empty_shape)
      {
        free(v25);
      }

      if (v18)
      {
        v36 = xmmword_18439CEB0;
        v37 = 0;
        v38 = a4 - a2;
        v39 = a5 - a3;
        v40 = 0x7FFFFFFF00000002;
        shape_intersect(v30, &v36, v32);
        if (v32)
        {
          if (v32 != &the_empty_shape)
          {
            v33 = v32;
LABEL_54:
            free(v33);
            return result;
          }
        }
      }

      return result;
    }

    shape_difference(a1, v22, v25);
  }

  else
  {
    shape_intersect(a1, v22, v25);
  }

  if (v29 && v25 && v25 != &the_empty_shape)
  {
    v33 = v25;
    goto LABEL_54;
  }

  return result;
}

_DWORD *shape_reverse_y(uint64_t a1, int a2, int a3, int a4, int a5)
{
  result = &the_empty_shape;
  if (a1 != &the_empty_shape)
  {
    v11 = shape_length(a1);
    if (v11 == 5)
    {
      v12 = a4 + *(a1 + 8) * a2;
      v13 = a5 + *(a1 + 12) * a3;
      if (v13 | v12)
      {
        result = malloc_type_malloc(0x200uLL, 0x4C113E60uLL);
        *result = 0x480000000;
        result[2] = v12;
        result[3] = v13;
        result[4] = 0x7FFFFFFF;
      }

      else
      {
        return &the_empty_shape;
      }
    }

    else
    {
      v14 = v11;
      result = malloc_type_malloc((4 * v11 + 511) & 0xFFFFFFFFFFFFFE00, 0x4C113E60uLL);
      if (result)
      {
        v15 = &result[v14];
        *(v15 - 1) = 0x7FFFFFFF;
        v16 = *(a1 + 4);
        v17 = (a1 + 4 * v16);
        v18 = *v17;
        if (*v17 != 0x7FFFFFFF)
        {
          v19 = v15 - 8;
          do
          {
            if (v16 >= 3)
            {
              v20 = v16 - 1;
              v21 = v17 - 1;
              do
              {
                v22 = *v21--;
                *v19 = a4 + v22 * a2;
                v19 -= 4;
                --v20;
              }

              while (v20 > 1);
            }

            *(v19 - 1) = a5 + v18 * a3;
            *v19 = v16;
            v15 = v19;
            v19 -= 8;
            v16 = v17[1];
            v17 += v16;
            v18 = *v17;
          }

          while (*v17 != 0x7FFFFFFF);
        }

        *(v15 - 3) = 0x80000000;
        *(v15 - 2) = v16;
      }
    }
  }

  return result;
}

void CGContextSelectFont(CGContextRef c, const char *name, CGFloat size, CGTextEncoding textEncoding)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!c)
  {
    v18 = 0;
LABEL_12:

    handle_invalid_context("CGContextSelectFont", v18, *&textEncoding, v4, v5, v6, v7, v8);
    return;
  }

  if (*(c + 4) != 1129601108)
  {
    v18 = c;
    goto LABEL_12;
  }

  if (name)
  {
    v11 = *&textEncoding;
    if (*(c + 10) || (Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(c + 10) = Mutable) != 0))
    {
      v14 = CFStringCreateWithFormat(0, 0, @"%s/%d", name, v11);
      if (v14)
      {
        v15 = v14;
        Value = CFDictionaryGetValue(*(c + 10), v14);
        if (Value)
        {
          v17 = Value;
LABEL_9:
          CFRelease(v15);
          CGContextSetFont(c, v17);
          CGContextSetFontSize(c, size);
          return;
        }

        v19 = CGFontCreateWithName(name);
        if (v19)
        {
          v17 = v19;
          if (v11 == 1)
          {
            (*(*(v19 + 2) + 288))(*(v19 + 14), CGPDFEncodingVectorMacRoman, v30, 256);
LABEL_24:
            CGFontSetEncodingVector(v17, v30);
            CFDictionarySetValue(*(c + 10), v15, v17);
            CFRelease(v17);
            goto LABEL_9;
          }

          if (!v11)
          {
            v27 = 0;
            v28 = xmmword_18439C5D0;
            v29.i64[0] = 0x8000800080008;
            v29.i64[1] = 0x8000800080008;
            do
            {
              *&v30[v27] = v28;
              v28 = vaddq_s16(v28, v29);
              v27 += 16;
            }

            while (v27 != 512);
            goto LABEL_24;
          }

          CGPostError("%s: invalid encoding %d.", v20, v21, v22, v23, v24, v25, v26, "get_selected_font");
          CFRelease(v17);
        }

        CFRelease(v15);
      }
    }
  }

  else
  {
    CGPostError("%s: font name is NULL.", 0, *&textEncoding, v4, v5, v6, v7, v8, "CGContextSelectFont");
  }
}

CGAffineTransform *__cdecl CGContextGetTextMatrix(CGAffineTransform *__return_ptr retstr, CGAffineTransform *c)
{
  if (c && LODWORD(c->c) == 1129601108)
  {
    v9 = *&c[2].ty;
    *&retstr->a = *&c[2].d;
    *&retstr->c = v9;
    v10 = *&c[3].b;
  }

  else
  {
    handle_invalid_context("CGContextGetTextMatrix", c, v2, v3, v4, v5, v6, v7);
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = *&CGAffineTransformIdentity.c;
    v10 = *&CGAffineTransformIdentity.tx;
  }

  *&retstr->tx = v10;
  return c;
}

CGPoint CGContextGetTextPosition(CGContextRef c)
{
  if (c && *(c + 4) == 1129601108)
  {
    v7 = (c + 152);
    p_y = (c + 160);
  }

  else
  {
    handle_invalid_context("CGContextGetTextPosition", c, v1, v2, v3, v4, v5, v6);
    v7 = &CGPointZero;
    p_y = &CGPointZero.y;
  }

  v9 = *p_y;
  x = v7->x;
  result.y = v9;
  result.x = x;
  return result;
}

void CGContextShowText(CGContextRef c, const char *string, size_t length)
{
  v35 = *MEMORY[0x1E69E9840];
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (string && length)
      {
        v11 = (MEMORY[0x1EEE9AC00])(2 * length);
        v15 = (v34 - v13);
        if (v12 <= 0x7FFFFFFFFFFFFFFELL)
        {
          v16 = (v34 - v13);
        }

        else
        {
          v16 = 0;
        }

        if (v12 - 0x7FFFFFFFFFFFFFFFLL >= 0x8000000000000066)
        {
          v16 = malloc_type_malloc(v11, 0x5CD9DE6EuLL);
        }

        if (v16)
        {
          v17 = MEMORY[0x1EEE9AC00](16 * length, v14);
          v20 = (v34 - v18 - 15);
          if (v19 <= 0xFFFFFFFFFFFFFFELL)
          {
            v21 = (v34 - v18 - 15);
          }

          else
          {
            v21 = 0;
          }

          if (v19 - 0xFFFFFFFFFFFFFFFLL >= 0xF000000000000066)
          {
            v21 = malloc_type_malloc(v17, 0xD61DDB81uLL);
          }

          if (v21)
          {
            v22 = *(*(c + 12) + 136);
            v23 = *(v22 + 8);
            if (v23)
            {
              v24 = *(v22 + 16);
              if (v24 != 0.0)
              {
                explicit = atomic_load_explicit(v23 + 4, memory_order_acquire);
                if (explicit)
                {
                  v26 = 0;
                  do
                  {
                    v16[v26] = *(explicit + 2 * string[v26]);
                    ++v26;
                  }

                  while (length != v26);
                  v27 = vmulq_n_f64(*(c + 120), v24);
                  v28 = vmulq_n_f64(*(c + 136), v24);
                  v34[0] = v27;
                  v34[1] = v28;
                  v34[2] = *(c + 152);
                  CGFontGetGlyphAdvancesForStyle(v23, v34, 13, v16, length, v21);
                  v29 = *(*(*(c + 12) + 136) + 24);
                  if (v29 != 0.0)
                  {
                    v30 = vmlaq_n_f64(vmulq_f64(*(c + 136), 0), *(c + 120), v29);
                    v31 = v21;
                    v32 = length;
                    do
                    {
                      *v31 = vaddq_f64(v30, *v31);
                      ++v31;
                      --v32;
                    }

                    while (v32);
                  }

                  CGContextShowGlyphsWithAdvances(c, v16, v21, length);
                }
              }
            }

            if (v21 != v20)
            {
              free(v21);
            }
          }

          if (v16 != v15)
          {
            free(v16);
          }
        }
      }

      return;
    }

    v33 = c;
  }

  else
  {
    v33 = 0;
  }

  handle_invalid_context("CGContextShowText", v33, length, v3, v4, v5, v6, v7);
}

void draw_glyphs_19159(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  v4 = a4;
  v8 = *(a1 + 96);
  v9 = *(v8 + 136);
  v10 = *(v9 + 32);
  if (v10 <= 0.0)
  {
    goto LABEL_18;
  }

  if ((*(v9 + 1) | 4) == 7)
  {
    return;
  }

  v11 = *(v9 + 16);
  v12 = vmulq_n_f64(*(a1 + 136), v11);
  v13 = vmulq_n_f64(*(a1 + 120), v11);
  v14 = *(v8 + 24);
  v15 = *(v8 + 40);
  v16 = vmlaq_n_f64(vmulq_laneq_f64(v15, v13, 1), v14, v13.f64[0]);
  v17 = vmlaq_n_f64(vmulq_laneq_f64(v15, v12, 1), v14, v12.f64[0]);
  v18 = COERCE_DOUBLE(*&vmulq_f64(v16, v16).f64[1]) + v16.f64[0] * v16.f64[0];
  v19 = COERCE_DOUBLE(*&vmulq_f64(v17, v17).f64[1]) + v17.f64[0] * v17.f64[0];
  v20 = v10 * v10;
  if (v18 > v20 && v19 > v20)
  {
    goto LABEL_18;
  }

  v43 = v13;
  v44 = *(v9 + 16);
  v42 = v12;
  v23 = *(a1 + 152);
  v22 = *(a1 + 160);
  v24 = malloc_type_malloc(32 * a4, 0x3EF24866uLL);
  v25 = *(*(*(a1 + 96) + 136) + 8);
  font_info = get_font_info(v25);
  if (font_info)
  {
    v27 = font_info[2];
  }

  else
  {
    v27 = 0.0;
  }

  if ((CGFontGetGlyphBBoxesForStyle(v25, 0, 13, a2, v4, v24) & 1) == 0)
  {
    free(v24);
LABEL_18:
    v32 = *(a1 + 40);
    if (v32)
    {
      v33 = *(v32 + 88);
      if (v33)
      {

        v33();
      }
    }

    return;
  }

  v28 = 0;
  v45 = vdupq_lane_s64(v44, 0);
  p_size = &v24->size;
  v30 = 1.0 / v27;
  do
  {
    v48 = *&p_size[-1].width;
    transform.b = 0.0;
    transform.c = 0.0;
    transform.a = v30;
    transform.d = v30;
    transform.tx = 0.0;
    transform.ty = 0.0;
    v49 = CGRectApplyAffineTransform(v48, &transform);
    *&p_size[-1].width = v49;
    y = v49.origin.y;
    p_size[-1] = vaddq_f64(v49.origin, vdivq_f64(*(a3 + 16 * v28++), v45));
    p_size += 2;
  }

  while (v4 != v28);
  CGContextSaveGState(a1);
  *&transform.a = v43;
  *&transform.c = v42;
  transform.tx = v23;
  transform.ty = v22;
  CGContextConcatCTM(a1, &transform);
  if (v18 < 6.25 || v19 < 6.25)
  {
    p_width = &v24->size.width;
    width = 0.0;
    x = INFINITY;
    v37 = INFINITY;
    v38 = 0.0;
    height = 0.0;
    do
    {
      v53.origin.x = *(p_width - 2);
      v53.origin.y = *(p_width - 1);
      v40 = *p_width;
      v41 = p_width[1];
      p_width += 4;
      v50.origin.x = x;
      v50.origin.y = v37;
      v50.size.width = width;
      v50.size.height = height;
      v53.size.width = v40;
      v53.size.height = v41;
      v51 = CGRectUnion(v50, v53);
      x = v51.origin.x;
      v37 = v51.origin.y;
      width = v51.size.width;
      height = v51.size.height;
      v38 = v38 + v40 * v41;
      --v4;
    }

    while (v4);
    if (v38 <= 0.0)
    {
      goto LABEL_29;
    }

    CGContextSetAlpha(a1, v38 / (v51.size.height * v51.size.width) * 0.33);
    CGContextBeginPath(a1);
    v52.origin.x = x;
    v52.origin.y = v37;
    v52.size.width = width;
    v52.size.height = height;
    CGContextAddRect(a1, v52);
  }

  else
  {
    CGContextSetAlpha(a1, 0.33);
    CGContextBeginPath(a1);
    CGContextAddRects(a1, v24, v4);
  }

  CGContextDrawPath(a1, kCGPathFill);
LABEL_29:
  CGContextRestoreGState(a1);

  free(v24);
}

void clip_to_glyphs(uint64_t a1, __int16 *a2, __int128 *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x18uLL, 0x1020040F89CB87BuLL);
  *v8 = 1;
  v8[1] = 0;
  v8[2] = 0;
  v9 = *(*(a1 + 96) + 136);
  v10 = *(v9 + 16);
  v11 = vmulq_n_f64(*(a1 + 120), v10);
  v12 = vmulq_n_f64(*(a1 + 136), v10);
  *&v13.a = v11;
  *&v13.c = v12;
  *&v13.tx = *(a1 + 152);
  CGTextClippingAppendGlyphs(v8, *(v9 + 8), &v13, a2, a3, a4);
  CGGStateClipToTextClipping(*(a1 + 96), v8);
  CGTextClippingRelease(v8);
}

void CGContextShowTextAtPoint(CGContextRef c, CGFloat x, CGFloat y, const char *string, size_t length)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      *(c + 19) = x;
      *(c + 20) = y;
      CGContextShowText(c, string, length);
      return;
    }

    v10 = c;
  }

  else
  {
    v10 = 0;
  }

  handle_invalid_context("CGContextShowTextAtPoint", v10, length, v5, v6, v7, v8, v9);
}

void CGContextShowGlyphs(CGContextRef c, const CGGlyph *g, size_t count)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!c)
  {
    v28 = 0;
LABEL_21:

    handle_invalid_context("CGContextShowGlyphs", v28, count, v3, v4, v5, v6, v7);
    return;
  }

  if (*(c + 4) != 1129601108)
  {
    v28 = c;
    goto LABEL_21;
  }

  if (g)
  {
    if (count)
    {
      v11 = *(*(c + 12) + 136);
      v12 = *(v11 + 8);
      if (v12)
      {
        v13 = *(v11 + 16);
        if (v13 != 0.0)
        {
          v14 = (MEMORY[0x1EEE9AC00])(16 * count);
          v17 = (&v29 - v15 - 15);
          if (v16 <= 0xFFFFFFFFFFFFFFELL)
          {
            v18 = (&v29 - v15 - 15);
          }

          else
          {
            v18 = 0;
          }

          if (v16 - 0xFFFFFFFFFFFFFFFLL >= 0xF00000000000003ELL)
          {
            v18 = malloc_type_malloc(v14, 0xD5344E91uLL);
          }

          advances = 0;
          font_info = get_font_info(v12);
          *&v20 = 0;
          v21 = 0.0;
          if (font_info)
          {
            v21 = font_info[2];
          }

          v22 = 0;
          v23 = *(*(*(c + 12) + 136) + 24);
          v24 = count;
          do
          {
            v29 = v20;
            v25 = &v18[v22];
            *v25 = v20;
            *(v25 + 1) = 0;
            CGFontGetGlyphAdvances(v12, &g[v22], 1uLL, &advances);
            *(&v26 + 1) = *(&v29 + 1);
            *&v26 = *&v29 + v23 + v13 * advances / v21;
            v29 = v26;
            v20 = v26;
            ++v22;
            --v24;
          }

          while (v24);
          v27 = *(*(*(c + 12) + 136) + 1);
          if (v27 < 4)
          {
            draw_glyphs_19159(c, g, v18, count);
            goto LABEL_27;
          }

          if (v27 - 4 >= 3)
          {
            if (v27 != 7)
            {
              goto LABEL_27;
            }
          }

          else
          {
            draw_glyphs_19159(c, g, v18, count);
          }

          clip_to_glyphs(c, g, v18, count);
LABEL_27:
          *(c + 152) = vaddq_f64(*(c + 152), vmlaq_n_f64(vmulq_f64(*(c + 136), 0), *(c + 120), *&v29));
          if (v18 != v17)
          {
            free(v18);
          }
        }
      }
    }
  }
}