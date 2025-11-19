uint64_t ARC3DShapeTriangulationTriangleCrossesSegment(double **a1, double a2, double a3, double a4, double a5)
{
  v10 = ARC3DSegmentIntersectsSegment(a2, a3, a4, a5, **a1, (*a1)[1], *a1[1], a1[1][1]);
  v11 = ARC3DSegmentIntersectsSegment(a2, a3, a4, a5, *a1[1], a1[1][1], *a1[2], a1[2][1]);
  return (v10 | v11 | ARC3DSegmentIntersectsSegment(a2, a3, a4, a5, *a1[2], a1[2][1], **a1, (*a1)[1])) & 1;
}

uint64_t ARC3DShapeTriangulationCheckConsistency(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = 0;
    v3 = *(result + 16);
    do
    {
      v4 = 0;
      v5 = v3 + 56 * v2;
      v6 = v5 + 48;
      do
      {
        v7 = v4 + 1;
        if (v4 == 2)
        {
          v8 = 0;
        }

        else
        {
          v8 = (v4 + 1);
        }

        result = *(v5 + 24 + 8 * v4);
        if (result == v5)
        {
          ARC3DShapeTriangulationCheckConsistency_cold_8();
        }

        if (result == 1)
        {
          ARC3DShapeTriangulationCheckConsistency_cold_7();
        }

        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = *(v5 + 8 * v8);
        v13 = v3;
        v14 = 0xFFFFFFFFLL;
        do
        {
          for (i = 0; i != 3; ++i)
          {
            if (i == 2)
            {
              v16 = 0;
            }

            else
            {
              v16 = i + 1;
            }

            if (*(v5 + 8 * v4) == *(v3 + 56 * v9 + 8 * v16) && v12 == *(v13 + 8 * i))
            {
              ++v11;
              v10 = v3 + 56 * v9;
              v14 = i;
            }
          }

          ++v9;
          v13 += 56;
        }

        while (v9 != v1);
        if (v10 != result)
        {
          ARC3DShapeTriangulationCheckConsistency_cold_1();
        }

        if (result)
        {
          if (v11 != 1)
          {
            ARC3DShapeTriangulationCheckConsistency_cold_2();
          }

          result = *(v10 + 8 * v14 + 24);
          if (result != v5)
          {
            ARC3DShapeTriangulationCheckConsistency_cold_3();
          }

          if (*(v10 + v14 + 48) != *(v6 + v4))
          {
            ARC3DShapeTriangulationCheckConsistency_cold_4();
          }
        }

        else
        {
          if (v11)
          {
            ARC3DShapeTriangulationCheckConsistency_cold_5();
          }

          if (*(v6 + v4))
          {
            ARC3DShapeTriangulationCheckConsistency_cold_6();
          }
        }

        ++v4;
      }

      while (v7 != 3);
      ++v2;
    }

    while (v2 != v1);
  }

  return result;
}

uint64_t ARC3DShapeTriangulationGetNewTriangle(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  *(a1 + 32) = v2 + 1;
  result = v1 + 56 * v2;
  *(result + 51) = 0;
  return result;
}

uint64_t ARC3DShapeTriangulationTriangleContainingVertex(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = (v2 - 1);
  if (v2 - 1 < 0)
  {
    return 2;
  }

  v4 = *(a2 + 16);
  v5 = v3 + 1;
  for (i = (v4 + 56 * v3); ; i -= 7)
  {
    if (v4)
    {
      v7 = v4 + 56 * v3;
      if (*i == a1 || i[1] == a1)
      {
        return v7;
      }

      if (i[2] == a1)
      {
        break;
      }
    }

    --v3;
    if (v5-- <= 1)
    {
      return 2;
    }
  }

  return i;
}

uint64_t ARC3DShapeTriangulationTriangleContainingPoint(float64x2_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v4 = *(a3 + 32);
  while (v4)
  {
    v5 = 0;
    v6 = 0;
    --v4;
    v7 = *a1;
    do
    {
      if (v5 == 2)
      {
        v8 = 0;
      }

      else
      {
        v8 = v5 + 1;
      }

      v9 = vsubq_f64(**(a2 + 8 * v5), v7);
      v10 = vmulq_f64(vsubq_f64(**(a2 + 8 * v8), v7), vextq_s8(v9, v9, 8uLL));
      if (vmovn_s64(vcgtq_f64(v10, vdupq_laneq_s64(v10, 1))).u8[0])
      {
        a2 = *(a2 + 8 * v5 + 24);
        if (a2 < 3)
        {
          return 2;
        }

        v6 = 1;
      }

      ++v5;
    }

    while (v5 != 3);
    if ((v6 & 1) == 0)
    {
      return a2;
    }
  }

  if (!v3)
  {
    return 2;
  }

  v11 = *(a3 + 16);
  a2 = 2;
  while (1)
  {
    v15 = v11[1];
    v16 = v11[2];
    v17 = **v11;
    v18 = (*v11)[1];
    v19 = v15[1];
    v20 = v16[1];
    v12 = a1->f64[0];
    v13 = a1->f64[1];
    v14 = -a1->f64[0];
    if (vabdd_f64(fabs(*v15 * v20 + v17 * v19 + *v16 * v18 - v17 * v20 - *v16 * v19 - *v15 * v18) * 0.5 - fabs(v18 * *v16 + v12 * v20 + v17 * v13 + v14 * v18 - v17 * v20 - *v16 * v13) * 0.5 - fabs(*v15 * v20 + v12 * v19 + *v16 * v13 + v14 * v20 - *v16 * v19 - *v15 * v13) * 0.5, fabs(v17 * v19 + v12 * v18 + *v15 * v13 + v14 * v19 - *v15 * v18 - v17 * v13) * 0.5) < 0.001)
    {
      break;
    }

    v11 += 7;
    if (!--v3)
    {
      return a2;
    }
  }

  return v11;
}

uint64_t ARC3DEdgeCrossingSegment(uint64_t a1, double *a2, double *a3, double ***a4)
{
  v8 = *a1;
  if (*a1 == a3 || (v9 = *(a1 + 8), v9 == a3) || *(a1 + 16) == a3)
  {
    v12 = *(a1 + 24);
    if (v12 && (*v12 == a2 || v12[1] == a2 || v12[2] == a2) && (*v12 == a3 || v12[1] == a3 || v12[2] == a3))
    {
      goto LABEL_41;
    }

    v12 = *(a1 + 32);
    if (v12 && (*v12 == a2 || v12[1] == a2 || v12[2] == a2) && (*v12 == a3 || v12[1] == a3 || v12[2] == a3))
    {
      goto LABEL_41;
    }

    v12 = *(a1 + 40);
    if (v12 && (*v12 == a2 || v12[1] == a2 || v12[2] == a2) && (*v12 == a3 || v12[1] == a3 || v12[2] == a3))
    {
      goto LABEL_41;
    }
  }

  else
  {
    v10 = v8 == a2 || v9 == a2;
    if (!v10 && (ARC3DSegmentIntersectsSegment(*a2, a2[1], *a3, a3[1], *v8, v8[1], *v9, v9[1]) & 1) != 0)
    {
      v11 = 24;
LABEL_40:
      v12 = *(a1 + v11);
LABEL_41:
      *a4 = v12;
      return 1;
    }

    v13 = *(a1 + 8);
    if (v13 != a2)
    {
      v14 = *(a1 + 16);
      if (v14 != a2 && (ARC3DSegmentIntersectsSegment(*a2, a2[1], *a3, a3[1], *v13, v13[1], *v14, v14[1]) & 1) != 0)
      {
        v11 = 32;
        goto LABEL_40;
      }
    }

    v15 = *(a1 + 16);
    if (v15 != a2 && *a1 != a2)
    {
      result = ARC3DSegmentIntersectsSegment(*a2, a2[1], *a3, a3[1], *v15, v15[1], **a1, *(*a1 + 8));
      if (!result)
      {
        return result;
      }

      v11 = 40;
      goto LABEL_40;
    }
  }

  return 0;
}

uint64_t ARC3DLinkFromTriangleToTriangle(uint64_t a1, uint64_t a2)
{
  result = a1 + 24;
  v3 = 3;
  while (*result != a2)
  {
    result += 8;
    if (!--v3)
    {
      return 3;
    }
  }

  return result;
}

uint64_t ARC3DLinkIndexFromTriangleToTriangle(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = a1 + 24;
  while (*(v4 + 8 * result) != a2)
  {
    if (++result == 3)
    {
      ARC3DLinkIndexFromTriangleToTriangle_cold_1();
    }
  }

  return result;
}

uint64_t ARC3DLinkIndicesFromTriangleToTriangle(uint64_t result, uint64_t a2, _DWORD *a3, _DWORD *a4, int *a5)
{
  v5 = 0;
  while (*(result + 24 + 8 * v5) != a2)
  {
    if (++v5 == 3)
    {
      *a5 = -1;
      *a4 = -1;
      *a3 = -1;
      return result;
    }
  }

  *a3 = v5;
  if (v5 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 + 1;
  }

  *a4 = v6;
  if (v5)
  {
    v7 = v5 - 1;
  }

  else
  {
    v7 = 2;
  }

  *a5 = v7;
  return result;
}

uint64_t ARC3DLinkFromTriangleWithEdge(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a1[1];
  if (*a1 == a2 && v3 == a3)
  {
    return 0;
  }

  v5 = a1[2];
  if (v5 == a2 && *a1 == a3)
  {
    v7 = 2;
  }

  else
  {
    v7 = -1;
  }

  if (v3 == a2 && v5 == a3)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

BOOL ARC3DCircumcircleContainsPoint_BROKEN(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 - a5;
  v9 = a2 - a6;
  v10 = a3 - a5;
  v11 = a4 - a6;
  v12 = a1 - a7;
  v13 = a2 - a8;
  v14 = a3 - a7;
  v15 = a4 - a8;
  v16 = v9 * v11 + v8 * v10;
  v17 = v15 * v13 + v14 * v12;
  if (v16 >= 0.0 && v17 >= 0.0)
  {
    return 0;
  }

  if (v16 >= 0.0 || v17 >= 0.0)
  {
    return v16 * (v14 * v13 - v12 * v15) + (v8 * v11 - v10 * v9) * v17 < 0.0;
  }

  return 1;
}

BOOL ARC3DCircumcircleContainsPoint(double *a1, double *a2, double *a3, double *a4)
{
  v4 = a1[1];
  v5 = a2[1];
  v6 = a3[1];
  v7 = v4 * v4 + *a1 * *a1;
  v8 = v5 * v5 + *a2 * *a2;
  v9 = v6 * v6 + *a3 * *a3;
  v10 = v5 - v6;
  v11 = *a2 * (v6 - v4) + *a1 * (v5 - v6);
  v12 = v4 - v5;
  v13 = v11 + *a3 * v12 + v11 + *a3 * v12;
  v14 = (v8 * (v6 - v4) + v7 * v10 + v9 * v12) / v13;
  v15 = *a2 - *a3;
  v16 = *a1 - *a2;
  v17 = -(v8 * (*a3 - *a1) + v7 * v15 + v9 * v16) / v13;
  v18 = sqrt(((v4 - v6) * (v4 - v6) + (*a1 - *a3) * (*a1 - *a3)) * ((v12 * v12 + v16 * v16) * (v10 * v10 + v15 * v15)));
  v19 = fabs(v13);
  return (v17 - a4[1]) * (v17 - a4[1]) + (v14 - *a4) * (v14 - *a4) < v18 / v19 * (v18 / v19);
}

BOOL ARC3DPointFallsOnTriangleEdge(void *a1, double *a2)
{
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *v3;
  v7 = v3[1];
  v8 = **a1 - *a2;
  v9 = *(*a1 + 8) - v5;
  v10 = v9 * v9 + v8 * v8;
  if (v10 <= 0.0)
  {
    v11 = -v10;
    v12 = hypot(v8, v9);
    if (v12 * v12 == v11)
    {
      return 1;
    }
  }

  v13 = a1[2];
  v14 = *v13;
  v15 = v13[1];
  v16 = v6 - v4;
  v17 = v7 - v5;
  v18 = v17 * v17 + v16 * v16;
  if (v18 <= 0.0)
  {
    v19 = -v18;
    v20 = hypot(v16, v17);
    if (v20 * v20 == v19)
    {
      return 1;
    }
  }

  v22 = v14 - v4;
  v23 = v15 - v5;
  v24 = v23 * v23 + v22 * v22;
  if (v24 > 0.0)
  {
    return 0;
  }

  v25 = -v24;
  v26 = hypot(v22, v23);
  return v26 * v26 == v25;
}

uint64_t ARC3DPointFallsOnTriangleEdgeAndLinks(uint64_t a1, double *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(a1 + 8);
  v5 = **a1;
  v6 = *(*a1 + 8);
  v7 = v4[1];
  v8 = *a2;
  v9 = a2[1];
  if ((*v4 - v5) * (v9 - v6) - (v7 - v6) * (*a2 - v5) == 0.0)
  {
    v10 = 0;
    *a3 = 0;
    while (*(*(a1 + 24) + 24 + 8 * v10) != a1)
    {
      if (++v10 == 3)
      {
        ARC3DLinkIndexFromTriangleToTriangle_cold_1();
      }
    }
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = v11[1];
    if ((*v11 - *v4) * (v9 - v7) - (v12 - v7) * (v8 - *v4) == 0.0)
    {
      v10 = 0;
      *a3 = 1;
      while (*(*(a1 + 32) + 24 + 8 * v10) != a1)
      {
        if (++v10 == 3)
        {
          ARC3DLinkIndexFromTriangleToTriangle_cold_1();
        }
      }
    }

    else
    {
      if ((v5 - *v11) * (v9 - v12) - (v6 - v12) * (v8 - *v11) != 0.0)
      {
        return 0;
      }

      v10 = 0;
      *a3 = 2;
      while (*(*(a1 + 40) + 24 + 8 * v10) != a1)
      {
        if (++v10 == 3)
        {
          ARC3DLinkIndexFromTriangleToTriangle_cold_1();
        }
      }
    }
  }

  *a4 = v10;
  return 1;
}

uint64_t ARC3DVertexNotSharedByTriangles(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ARC3DVertexNotSharedByTriangles_cold_2();
  }

  if (!a2)
  {
    ARC3DVertexNotSharedByTriangles_cold_1();
  }

  v2 = (a1 + 24);
  v3 = 1;
  while (*v2 != a2)
  {
    --v3;
    ++v2;
    if (v3 == -2)
    {
      return 0;
    }
  }

  if (v3 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = -v3;
  }

  return *(a1 + 8 * v5);
}

uint64_t ARC3DShapeConnectedComponentTriangulatePseudopolygon(int *a1, double *a2, double *a3, unsigned int *a4, int a5)
{
  v5 = *a1;
  v6 = (*a1 - 1);
  if (*a1 <= 1)
  {
    ARC3DShapeConnectedComponentTriangulatePseudopolygon_cold_1();
  }

  v7 = a4;
  v11 = *(a1 + 1);
  v12 = *v11;
  if (v6 <= 1)
  {
    v13 = 0;
    v17 = *(a1 + 2);
    v18 = *v17;
    v19 = *a4;
  }

  else
  {
    v121 = *a1;
    v123 = a5;
    v13 = 0;
    v14 = 1;
    v15 = *v11;
    do
    {
      v16 = v11[v14];
      if (ARC3DCircumcircleContainsPoint(a2, a3, v15, v16))
      {
        v15 = v16;
        v13 = v14;
      }

      ++v14;
    }

    while (v6 != v14);
    v17 = *(a1 + 2);
    v18 = *v17;
    v7 = a4;
    v19 = *a4;
    if (v13 >= 1)
    {
      v20 = 1;
      a5 = v123;
      while (1)
      {
        v21 = *(*(a4 + 1) + 8 * --v19);
        if (v123)
        {
          v22 = v11[v20];
          *v21 = v22;
          v23 = 1;
        }

        else
        {
          *v21 = v12;
          v22 = v12;
          v12 = *(*(a1 + 1) + v20 * 8);
          v23 = v18;
          v18 = 1;
        }

        *(v21 + 8) = v12;
        *(v21 + 16) = a2;
        v24 = *(*(a1 + 2) + v20 * 8);
        *(v21 + 24) = v24;
        *(v21 + 32) = v18;
        *(v21 + 40) = v23;
        if (v123)
        {
          if (v18)
          {
            v26 = *v18;
            v25 = *(v18 + 8);
            if (*v18 == a2 && v25 == v12)
            {
              v27 = 0;
            }

            else
            {
              v30 = *(v18 + 16);
              if (v25 == a2 && v30 == v12)
              {
                v27 = 1;
              }

              else if (v30 == a2 && v26 == v12)
              {
                v27 = 2;
              }

              else
              {
                v27 = -1;
              }
            }
          }

          else
          {
            v27 = -1;
          }

          if (!v24)
          {
            goto LABEL_193;
          }

          v33 = v24[1];
          if (*v24 == v12 && v33 == v22)
          {
            v39 = 0;
          }

          else
          {
            v35 = v24[2];
            v36 = v35 == v12 && *v24 == v22;
            v37 = v36 ? 2 : -1;
            v38 = v33 == v12 && v35 == v22;
            v39 = v38 ? 1 : v37;
          }

          if (v27 == -1 || v39 == -1)
          {
            goto LABEL_193;
          }

          v24[v39 + 3] = v21;
          *(*(v21 + 32) + 8 * v27 + 24) = v21;
          v40 = *(v21 + 24);
          *(v21 + 49) = *(*(v21 + 32) + v27 + 48);
          *(v21 + 48) = *(v40 + v39 + 48);
          *(v21 + 50) = 0;
        }

        else
        {
          if (v23)
          {
            v28 = *(v23 + 8);
            if (*v23 == v22 && v28 == a2)
            {
              v29 = 0;
            }

            else
            {
              v31 = *(v23 + 16);
              if (v28 == v22 && v31 == a2)
              {
                v29 = 1;
              }

              else if (v31 == v22 && *v23 == a2)
              {
                v29 = 2;
              }

              else
              {
                v29 = -1;
              }
            }
          }

          else
          {
            v29 = -1;
          }

          if (!v24 || ((v42 = v24[1], *v24 == v12) ? (v43 = v42 == v22) : (v43 = 0), v43 ? (v48 = 0) : ((v44 = v24[2], v44 == v12) ? (v45 = *v24 == v22) : (v45 = 0), !v45 ? (v46 = -1) : (v46 = 2), v42 == v12 ? (v47 = v44 == v22) : (v47 = 0), !v47 ? (v48 = v46) : (v48 = 1)), v29 == -1 || v48 == -1))
          {
LABEL_193:
            *v7 = v19;
            return 2;
          }

          if (v23 >= 2)
          {
            *(v23 + 8 * v29 + 24) = v21;
            *(v21 + 50) = *(*(v21 + 40) + v29 + 48);
            v24 = *(v21 + 24);
          }

          if (v24 >= 2)
          {
            v24[v48 + 3] = v21;
            *(v21 + 48) = *(*(v21 + 24) + v48 + 48);
          }

          *(v21 + 49) = 0;
        }

        v11 = *(a1 + 1);
        v12 = v11[v20++];
        v18 = v21;
        if (v13 + 1 == v20)
        {
          *a4 = v19;
          v17 = *(a1 + 2);
          v12 = v15;
          v18 = v21;
          goto LABEL_91;
        }
      }
    }

    v12 = v15;
    a5 = v123;
LABEL_91:
    v5 = v121;
  }

  v49 = v17[v6];
  v50 = v5 - 3;
  if ((v5 - 3) >= v13)
  {
    v52 = 0;
    v53 = 8 * v50;
    v54 = v50 + 1;
    v55 = v19 - 1;
    v56 = v53;
    v57 = &v11[v5 - 2];
    while (1)
    {
      v58 = *v57;
      --v19;
      v51 = *(*(v7 + 1) + 8 * (v55 + v52));
      *v51 = a3;
      if (a5)
      {
        *(v51 + 8) = v58;
        v59 = *(*(a1 + 1) + v53 + 8 * v52);
        *(v51 + 16) = v59;
        *(v51 + 24) = v49;
        v60 = *(*(a1 + 2) + v53 + 8 * v52 + 8);
        *(v51 + 32) = v60;
        *(v51 + 40) = 1;
        if (v49)
        {
          v61 = *v49;
          v62 = v49[1];
          if (*v49 == v58 && v62 == a3)
          {
            v63 = 0;
          }

          else
          {
            v68 = v49[2];
            if (v62 == v58 && v68 == a3)
            {
              v63 = 1;
            }

            else if (v68 == v58 && v61 == a3)
            {
              v63 = 2;
            }

            else
            {
              v63 = -1;
            }
          }
        }

        else
        {
          v63 = -1;
        }

        if (!v60)
        {
          goto LABEL_193;
        }

        v71 = v60[1];
        if (*v60 == v59 && v71 == v58)
        {
          v77 = 0;
        }

        else
        {
          v73 = v60[2];
          v74 = v73 == v59 && *v60 == v58;
          v75 = v74 ? 2 : -1;
          v76 = v71 == v59 && v73 == v58;
          v77 = v76 ? 1 : v75;
        }

        if (v63 == -1 || v77 == -1)
        {
          goto LABEL_193;
        }

        v60[v77 + 3] = v51;
        *(*(v51 + 24) + 8 * v63 + 24) = v51;
        v78 = *(v51 + 32);
        *(v51 + 48) = *(*(v51 + 24) + v63 + 48);
        *(v51 + 49) = *(v78 + v77 + 48);
      }

      else
      {
        v64 = *(*(a1 + 1) + v53 + 8 * v52);
        *(v51 + 8) = v64;
        *(v51 + 16) = v58;
        *(v51 + 24) = 1;
        v65 = *(*(a1 + 2) + v53 + 8 * v52 + 8);
        *(v51 + 32) = v65;
        *(v51 + 40) = v49;
        if (v49)
        {
          v66 = v49[1];
          if (*v49 == a3 && v66 == v58)
          {
            v67 = 0;
          }

          else
          {
            v69 = v49[2];
            if (v66 == a3 && v69 == v58)
            {
              v67 = 1;
            }

            else if (v69 == a3 && *v49 == v58)
            {
              v67 = 2;
            }

            else
            {
              v67 = -1;
            }
          }
        }

        else
        {
          v67 = -1;
        }

        if (!v65)
        {
          goto LABEL_193;
        }

        v80 = v65[1];
        if (*v65 == v58 && v80 == v64)
        {
          v86 = 0;
        }

        else
        {
          v82 = v65[2];
          v83 = v82 == v58 && *v65 == v64;
          v84 = v83 ? 2 : -1;
          v85 = v80 == v58 && v82 == v64;
          v86 = v85 ? 1 : v84;
        }

        if (v67 == -1 || v86 == -1)
        {
          goto LABEL_193;
        }

        if (v49 < 2)
        {
          v87 = 0;
        }

        else
        {
          v49[v67 + 3] = v51;
          v65 = *(v51 + 32);
          v87 = *(*(v51 + 40) + v67 + 48);
        }

        *(v51 + 50) = v87;
        if (v65 < 2)
        {
          v88 = 0;
        }

        else
        {
          v65[v86 + 3] = v51;
          v88 = *(*(v51 + 32) + v86 + 48);
        }

        *(v51 + 49) = v88;
        *(v51 + 48) = 0;
      }

      v57 = (*(a1 + 1) + v56);
      v56 -= 8;
      --v52;
      v49 = v51;
      if (v54 + v52 <= v13)
      {
        goto LABEL_173;
      }
    }
  }

  v51 = v49;
LABEL_173:
  v89 = *(v7 + 1);
  v90 = v19 - 1;
  *v7 = v90;
  v91 = *(v89 + 8 * v90);
  *v91 = a2;
  if (a5)
  {
    *(v91 + 8) = a3;
    *(v91 + 16) = v12;
    if (v18)
    {
      v92 = *(v18 + 8);
      if (*v18 != a2 || v92 != v12)
      {
        v94 = *(v18 + 16);
        if (v94 == a2 && *v18 == v12)
        {
          v96 = 2;
        }

        else
        {
          v96 = -1;
        }

        if (v92 == a2 && v94 == v12)
        {
          v98 = 1;
        }

        else
        {
          v98 = v96;
        }

        if (!v51)
        {
          return 2;
        }

LABEL_232:
        v113 = *(v51 + 8);
        if (*v51 == v12 && v113 == a3)
        {
          v118 = 0;
        }

        else
        {
          v115 = *(v51 + 16);
          if (v113 == v12 && v115 == a3)
          {
            v118 = 1;
          }

          else if (v115 == v12 && *v51 == a3)
          {
            v118 = 2;
          }

          else
          {
            v118 = -1;
          }
        }

        result = 2;
        if (v98 != -1 && v118 != -1)
        {
          *(v91 + 24) = 1;
          *(v91 + 32) = v51;
          *(v91 + 40) = v18;
          if (v18 < 2)
          {
            v119 = 0;
          }

          else
          {
            *(v18 + 8 * v98 + 24) = v91;
            v119 = *(v18 + v98 + 48);
          }

          *(v91 + 50) = v119;
          if (v51 < 2)
          {
            v120 = 0;
          }

          else
          {
            *(v51 + 8 * v118 + 24) = v91;
            v120 = *(v51 + v118 + 48);
          }

          *(v91 + 49) = v120;
          *(v91 + 48) = 1;
          return v91;
        }

        return result;
      }

      v98 = 0;
      if (v51)
      {
        goto LABEL_232;
      }
    }

    else
    {
      v98 = -1;
      if (v51)
      {
        goto LABEL_232;
      }
    }

    return 2;
  }

  *(v91 + 8) = v12;
  *(v91 + 16) = a3;
  if (!v18)
  {
    v106 = -1;
    if (v51)
    {
      goto LABEL_217;
    }

LABEL_213:
    v107 = -1;
    goto LABEL_251;
  }

  v100 = *(v18 + 8);
  if (*v18 == v12 && v100 == a2)
  {
    v106 = 0;
    if (v51)
    {
      goto LABEL_217;
    }

    goto LABEL_213;
  }

  v102 = *(v18 + 16);
  if (v102 == v12 && *v18 == a2)
  {
    v104 = 2;
  }

  else
  {
    v104 = -1;
  }

  if (v100 == v12 && v102 == a2)
  {
    v106 = 1;
  }

  else
  {
    v106 = v104;
  }

  if (!v51)
  {
    goto LABEL_213;
  }

LABEL_217:
  v108 = *(v51 + 8);
  if (*v51 == a3 && v108 == v12)
  {
    v107 = 0;
  }

  else
  {
    v110 = *(v51 + 16);
    if (v108 == a3 && v110 == v12)
    {
      v107 = 1;
    }

    else if (v110 == a3 && *v51 == v12)
    {
      v107 = 2;
    }

    else
    {
      v107 = -1;
    }
  }

LABEL_251:
  result = 2;
  if (v106 != -1 && v107 != -1 && v18 && v51)
  {
    *(v18 + 8 * v106 + 24) = v91;
    *(v51 + 8 * v107 + 24) = v91;
    *(v91 + 24) = v18;
    *(v91 + 32) = v51;
    *(v91 + 40) = 1;
    *(v91 + 48) = *(v18 + v106 + 48);
    *(v91 + 49) = *(v51 + v107 + 48);
    *(v91 + 50) = 1;
    return v91;
  }

  return result;
}

void ARC3DShapeTriangulationAddEdge(uint64_t a1, double *a2, double *a3)
{
  v3 = a3;
  v4 = a1;
  if (*a2 > *a3 || *a2 == *a3 && a2[1] < a3[1])
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
    v3 = a2;
  }

  v6 = ARC3DShapeTriangulationTriangleContainingVertex(v3, a1);
  if (v6 == 2)
  {
    v16 = 6;
    goto LABEL_44;
  }

  v7 = v6;
  v8 = *(v4 + 32);
  v72 = 0;
  if ((ARC3DEdgeCrossingSegment(v6, v3, v5, &v72) & 1) == 0)
  {
    while (1)
    {
      if (!--v8)
      {
        v16 = 2;
        goto LABEL_44;
      }

      if (*v7 == v3)
      {
        break;
      }

      if (*(v7 + 8) == v3)
      {
        v9 = 32;
        goto LABEL_15;
      }

      if (*(v7 + 16) == v3)
      {
        v9 = 40;
LABEL_15:
        v7 = *(v7 + v9);
      }

      if (ARC3DEdgeCrossingSegment(v7, v3, v5, &v72))
      {
        goto LABEL_17;
      }
    }

    v9 = 24;
    goto LABEL_15;
  }

LABEL_17:
  if (!v7 || *v7 != v5 && *(v7 + 8) != v5 && *(v7 + 16) != v5)
  {
    v70 = 0x1000000000;
    ptr = malloc_type_malloc(0x80uLL, 0x2004093837F09uLL);
    v67 = 0x400000000;
    v68 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    v69 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    v64 = 0x400000000;
    v65 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    v10 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v66 = v10;
    do
    {
      v14 = *(v7 + v11);
      if (v14 != v3)
      {
        if ((*v5 - *v3) * (v14[1] - v3[1]) - (v5[1] - v3[1]) * (*v14 - *v3) <= 0.0)
        {
          v12 = *(v7 + v11);
        }

        else
        {
          v13 = *(v7 + v11);
        }
      }

      v11 += 8;
    }

    while (v11 != 24);
    if (*v7 == v12)
    {
      v19 = 32;
    }

    else if (*(v7 + 8) == v12)
    {
      v19 = 40;
    }

    else
    {
      if (*(v7 + 16) != v12)
      {
        v15 = 0;
        goto LABEL_49;
      }

      v19 = 24;
    }

    v15 = *(v7 + v19);
LABEL_49:
    ARC3DShapeTriangulationListInsert(&v67, v13, v15);
    if (*v7 == v13)
    {
      v21 = 32;
    }

    else if (*(v7 + 8) == v13)
    {
      v21 = 40;
    }

    else
    {
      if (*(v7 + 16) != v13)
      {
        v20 = 0;
LABEL_57:
        ARC3DShapeTriangulationListInsert(&v64, v12, v20);
        v22 = 0;
        v63 = v70;
        if (v13 != v5 && v12 != v5)
        {
          v58 = 0;
          v59 = 0;
          v23 = ptr;
          v57 = v4;
          v60 = HIDWORD(v70);
          v24 = *(v4 + 32) - 1;
          v25 = v3;
          while (1)
          {
            if (!v24)
            {
              v47 = 3;
              goto LABEL_112;
            }

            v26 = (v7 + 16);
            v27 = *(v7 + 8);
            if (*v7 == v25)
            {
              v29 = 32;
            }

            else
            {
              v28 = *v26;
              if (v27 == v25)
              {
                v27 = v28;
                v26 = v7;
                v29 = 40;
              }

              else
              {
                if (v28 != v25)
                {
                  goto LABEL_108;
                }

                v27 = *v7;
                v26 = (v7 + 8);
                v29 = 24;
              }
            }

            v30 = *(v7 + v29);
            if (v30)
            {
              v31 = v27 == 0;
            }

            else
            {
              v31 = 1;
            }

            if (v31)
            {
LABEL_108:
              v47 = 4;
              goto LABEL_112;
            }

            v62 = v24;
            v32 = v23;
            v33 = *v26;
            v34 = ARC3DVertexNotSharedByTriangles(v30, v7);
            if (!v34)
            {
              v47 = 1;
LABEL_112:
              v4 = v57;
LABEL_129:
              *(v4 + 40) = v47;
              goto LABEL_130;
            }

            v35 = v34;
            v36 = (*v5 - *v3) * (v34[1] - v3[1]) - (v5[1] - v3[1]) * (*v34 - *v3);
            v37 = *v30;
            v61 = v33;
            if (v36 <= 0.0)
            {
              if (v37 == v13)
              {
                v41 = 4;
              }

              else if (v30[1] == v13)
              {
                v41 = 5;
              }

              else
              {
                if (v30[2] != v13)
                {
                  v39 = 0;
LABEL_90:
                  ARC3DShapeTriangulationListInsert(&v64, v34, v39);
                  v42 = v13;
                  v58 = v12;
                  goto LABEL_91;
                }

                v41 = 3;
              }

              v39 = v30[v41];
              goto LABEL_90;
            }

            if (v37 == v12)
            {
              break;
            }

            if (v30[1] == v12)
            {
              v40 = 5;
              goto LABEL_86;
            }

            if (v30[2] == v12)
            {
              v40 = 3;
              goto LABEL_86;
            }

            v38 = 0;
LABEL_87:
            ARC3DShapeTriangulationListInsert(&v67, v34, v38);
            v42 = v35;
            v59 = v13;
            v35 = v12;
LABEL_91:
            v23 = v32;
            if (v63 == v60)
            {
              v60 *= 2;
              v23 = malloc_type_realloc(v32, 8 * v60, 0x2004093837F09uLL);
              ptr = v23;
            }

            v43 = v63 + 1;
            *(v23 + v63) = v7;
            v25 = v61;
            if (v36 > 0.0 == (*v5 - *v3) * (v27[1] - v3[1]) - (v5[1] - v3[1]) * (*v27 - *v3) > 0.0)
            {
              v25 = v27;
            }

            if (v42 != v5)
            {
              v24 = v62 - 1;
              v7 = v30;
              v12 = v35;
              v13 = v42;
              ++v63;
              if (v35 != v5)
              {
                continue;
              }
            }

            v22 = v59;
            HIDWORD(v70) = v60;
            v4 = v57;
            v44 = v58;
            goto LABEL_99;
          }

          v40 = 4;
LABEL_86:
          v38 = v30[v40];
          goto LABEL_87;
        }

        v43 = v70;
        v42 = v13;
        v44 = 0;
        v30 = v7;
LABEL_99:
        v45 = *v30;
        if (v42 != v5)
        {
          if (v45 == v44)
          {
            v48 = 4;
          }

          else if (v30[1] == v44)
          {
            v48 = 5;
          }

          else
          {
            if (v30[2] != v44)
            {
              v46 = 0;
LABEL_117:
              v50 = &v67;
              goto LABEL_122;
            }

            v48 = 3;
          }

          v46 = v30[v48];
          goto LABEL_117;
        }

        if (v45 == v22)
        {
          v49 = 4;
        }

        else if (v30[1] == v22)
        {
          v49 = 5;
        }

        else
        {
          if (v30[2] != v22)
          {
            v46 = 0;
LABEL_121:
            v50 = &v64;
LABEL_122:
            ARC3DShapeTriangulationListInsert(v50, v5, v46);
            if (HIDWORD(v70) == v43)
            {
              HIDWORD(v70) = 2 * v43;
              v51 = malloc_type_realloc(ptr, 16 * v43, 0x2004093837F09uLL);
              ptr = v51;
            }

            else
            {
              v51 = ptr;
            }

            LODWORD(v70) = v43 + 1;
            *(v51 + v43) = v30;
            v47 = 1;
            v52 = ARC3DShapeConnectedComponentTriangulatePseudopolygon(&v67, v3, v5, &v70, 1);
            if (v52 == 2)
            {
              goto LABEL_129;
            }

            v53 = v52;
            v54 = ARC3DShapeConnectedComponentTriangulatePseudopolygon(&v64, v3, v5, &v70, 0);
            if (v54 == 2)
            {
              goto LABEL_129;
            }

            *(v53 + 24) = v54;
            *(v54 + 40) = v53;
            if (v70)
            {
              ARC3DShapeTriangulationAddEdge_cold_1();
            }

LABEL_130:
            free(ptr);
            v55 = v69;
            free(v68);
            free(v55);
            v56 = v66;
            free(v65);
            free(v56);
            return;
          }

          v49 = 3;
        }

        v46 = v30[v49];
        goto LABEL_121;
      }

      v21 = 24;
    }

    v20 = *(v7 + v21);
    goto LABEL_57;
  }

  v17 = 0;
  while (*(v7 + 8 * v17 + 24) != v72)
  {
    if (++v17 == 3)
    {
      LODWORD(v17) = -1;
      break;
    }
  }

  v18 = 0;
  while (v72[v18 + 3] != v7)
  {
    if (++v18 == 3)
    {
      goto LABEL_43;
    }
  }

  if (v17 != -1)
  {
    *(v72 + v18 + 48) = 1;
    *(v7 + v17 + 48) = 1;
    return;
  }

LABEL_43:
  v16 = 5;
LABEL_44:
  *(v4 + 40) = v16;
}

int *ARC3DShapeTriangulationResolveSwaps(int *result, double *a2)
{
  v2 = *result;
  if (*result)
  {
    v4 = result;
    v5 = 1000;
    while (2)
    {
      if (v5 >= 2)
      {
        if (v2 > v4[8])
        {
          v28 = 9;
        }

        else
        {
          v6 = *(v4 + 1);
          v7 = v2 - 1;
          *v4 = v7;
          v8 = *(v6 + 8 * v7);
          v9 = *(v8 + 32);
          if (v9)
          {
            v10 = 0;
            --v5;
            v11 = v9 + 24;
            v12 = 24;
            while (*(v9 + v12) != v8)
            {
              --v10;
              v12 += 8;
              if (v10 == -3)
              {
                goto LABEL_37;
              }
            }

            if (v10)
            {
              v13 = ~v10;
            }

            else
            {
              v13 = 2;
            }

            if (v13 != -1)
            {
              if (*(v8 + 49))
              {
                goto LABEL_35;
              }

              v14 = v9 + v12;
              v15 = *(v14 - 24);
              v16 = *(v9 + 8 * v13);
              v17 = v10 == -2 ? 0 : 1 - v10;
              result = ARC3DCircumcircleContainsPoint(*(v14 - 24), *(v9 + 8 * v17), *(v9 + 8 * v13), a2);
              if (!result)
              {
                goto LABEL_35;
              }

              v18 = *(v11 + 8 * v17);
              v19 = *(v11 + 8 * v13);
              v20 = *(v9 + 48 + v17);
              v21 = *(v8 + 40);
              v22 = *(v9 + 48 + v13);
              v23 = *(v8 + 50);
              *(v8 + 49) = v20;
              *(v9 + 48) = 0;
              *(v9 + 49) = v22;
              *(v9 + 50) = v23;
              *(v8 + 16) = v16;
              *(v8 + 32) = v18;
              *(v8 + 40) = v9;
              *v9 = a2;
              *(v9 + 8) = v16;
              *(v9 + 16) = v15;
              *(v9 + 24) = v8;
              *(v9 + 32) = v19;
              *(v9 + 40) = v21;
              if (v18)
              {
                v24 = (v18 + 24);
                v25 = 3;
                while (*v24 != v9)
                {
                  ++v24;
                  if (!--v25)
                  {
                    goto LABEL_37;
                  }
                }

                if (v24 == 3)
                {
                  goto LABEL_37;
                }

                *v24 = v8;
                result = ARC3DShapeTriangulationStackPush(v4, v8);
              }

              if (v19)
              {
                result = ARC3DShapeTriangulationStackPush(v4, v9);
              }

              if (!v21)
              {
LABEL_35:
                v2 = *v4;
                if (*v4)
                {
                  continue;
                }

                return result;
              }

              v26 = (v21 + 24);
              v27 = 3;
              while (*v26 != v8)
              {
                ++v26;
                if (!--v27)
                {
                  goto LABEL_37;
                }
              }

              if (v26 != 3)
              {
                *v26 = v9;
                goto LABEL_35;
              }
            }

LABEL_37:
            v28 = 5;
            goto LABEL_38;
          }

          v28 = 10;
        }

LABEL_38:
        v4[10] = v28;
      }

      break;
    }
  }

  return result;
}

int *ARC3DShapeTriangulationTriangleSplitInside(int *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  *a2 = a3;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  v11 = *(result + 2);
  v12 = result[8];
  v13 = v11 + 56 * v12;
  *(v13 + 51) = 0;
  result[8] = v12 + 2;
  v14 = v11 + 56 * (v12 + 1);
  *(v14 + 51) = 0;
  *(a2 + 24) = v13;
  *(a2 + 32) = v9;
  *(a2 + 40) = v14;
  *v13 = a3;
  *(v13 + 8) = v10;
  *(v13 + 16) = v7;
  *(v13 + 24) = v14;
  *(v13 + 32) = v5;
  *(v13 + 40) = a2;
  *v14 = a3;
  *(v14 + 8) = v8;
  *(v14 + 16) = v10;
  *(v14 + 24) = a2;
  *(v14 + 32) = v6;
  *(v14 + 40) = v13;
  *(v13 + 48) = 0;
  *(v13 + 49) = *(a2 + 50);
  *(v13 + 50) = 0;
  *(v14 + 48) = 0;
  *(v14 + 49) = *(a2 + 49);
  *(v14 + 50) = 0;
  *(a2 + 49) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 50) = 0;
  if (v9)
  {
    result = ARC3DShapeTriangulationStackPush(result, a2);
  }

  if (v6)
  {
    v15 = (v6 + 24);
    v16 = 3;
    while (*v15 != a2)
    {
      ++v15;
      if (!--v16)
      {
        goto LABEL_19;
      }
    }

    if (v15 == 3)
    {
LABEL_19:
      v4[10] = 5;
      return result;
    }

    *v15 = v14;
    result = ARC3DShapeTriangulationStackPush(v4, v14);
  }

  if (!v5)
  {
    return result;
  }

  v17 = (v5 + 24);
  v18 = 3;
  while (*v17 != a2)
  {
    ++v17;
    if (!--v18)
    {
      goto LABEL_19;
    }
  }

  if (v17 == 3)
  {
    goto LABEL_19;
  }

  *v17 = v13;

  return ARC3DShapeTriangulationStackPush(v4, v13);
}

void *ARC3DShapeTriangulationTriangleSplitOnEdge(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v7 = *(a2 + 24 + 8 * a4);
  v8 = (a5 + 1) % 3;
  v9 = *(v7 + 24 + 8 * v8);
  v10 = (a5 + 2) % 3;
  v11 = *(v7 + 24 + 8 * v10);
  v12 = (a4 + 1) % 3;
  v13 = *(a2 + 24 + 8 * v12);
  v14 = (a4 + 2) % 3;
  v15 = *(a2 + 24 + 8 * v14);
  v16 = *(v7 + 48 + v8);
  LOBYTE(v8) = *(v7 + 48 + v10);
  LOBYTE(v12) = *(a2 + 48 + v12);
  v17 = *(a2 + 48 + v14);
  v18 = *(v7 + 48 + a5);
  v19 = *(a2 + 8 * a4);
  v20 = *(v7 + 8 * a5);
  v21 = *(a2 + 8 * v14);
  v22 = *(v7 + 8 * v10);
  result = *(a1 + 16);
  v24 = *(a1 + 32);
  v25 = &result[7 * v24];
  *(v25 + 51) = 0;
  *(a1 + 32) = v24 + 2;
  v26 = &result[7 * v24 + 7];
  *(v26 + 51) = 0;
  *a2 = a3;
  *(a2 + 8) = v20;
  *(a2 + 16) = v21;
  *(a2 + 24) = v7;
  *(a2 + 32) = v13;
  *(a2 + 40) = v25;
  *(a2 + 48) = v18;
  *(a2 + 49) = v12;
  *v7 = a3;
  *(v7 + 8) = v22;
  *(v7 + 16) = v20;
  *(v7 + 24) = v26;
  *(v7 + 32) = v11;
  *(v7 + 40) = a2;
  *(v7 + 48) = 0;
  *(v7 + 49) = v8;
  *(v7 + 50) = v18;
  *v25 = a3;
  *(v25 + 8) = v21;
  *(v25 + 16) = v19;
  *(v25 + 24) = a2;
  *(v25 + 32) = v15;
  *(v25 + 40) = v26;
  *(v25 + 48) = 0;
  *(v25 + 49) = v17;
  *(v25 + 50) = v18;
  *v26 = a3;
  *(v26 + 8) = v19;
  *(v26 + 16) = v22;
  *(v26 + 24) = v25;
  *(v26 + 32) = v9;
  *(v26 + 40) = v7;
  *(v26 + 48) = v18;
  *(v26 + 49) = v16;
  if (v11)
  {
    result = ARC3DShapeTriangulationStackPush(a1, v7);
  }

  if (v13)
  {
    result = ARC3DShapeTriangulationStackPush(a1, a2);
  }

  if (v15)
  {
    v27 = (v15 + 24);
    v28 = 3;
    while (*v27 != a2)
    {
      ++v27;
      if (!--v28)
      {
        goto LABEL_21;
      }
    }

    if (v27 == 3)
    {
LABEL_21:
      *(a1 + 40) = 5;
      return result;
    }

    *v27 = v25;
    result = ARC3DShapeTriangulationStackPush(a1, v25);
  }

  if (!v9)
  {
    return result;
  }

  v29 = (v9 + 24);
  v30 = 3;
  while (*v29 != v7)
  {
    ++v29;
    if (!--v30)
    {
      goto LABEL_21;
    }
  }

  if (v29 == 3)
  {
    goto LABEL_21;
  }

  *v29 = v26;

  return ARC3DShapeTriangulationStackPush(a1, v26);
}

int *ARC3DShapeTriangulationAddPoint(uint64_t a1, float64x2_t *a2)
{
  result = ARC3DShapeTriangulationTriangleContainingPoint(a2, *(a1 + 16) + 56 * (*(a1 + 32) - 1), a1);
  if (result == 2)
  {
    *(a1 + 40) = 8;
  }

  else
  {
    v5 = result;
    v6 = 0;
    if (ARC3DPointFallsOnTriangleEdgeAndLinks(result, a2->f64, &v6 + 1, &v6))
    {
      ARC3DShapeTriangulationTriangleSplitOnEdge(a1, v5, a2, HIDWORD(v6), v6);
    }

    else
    {
      ARC3DShapeTriangulationTriangleSplitInside(a1, v5, a2);
    }

    return ARC3DShapeTriangulationResolveSwaps(a1, a2->f64);
  }

  return result;
}

__n128 ARC3DShapeTriangulationInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  *(a1 + 32) = v6 + 1;
  v7 = v5 + 56 * v6;
  *(v7 + 51) = 0;
  *(a1 + 24) = v7;
  v8 = *(*a2 + 16);
  v9 = *(*a2 + 24);
  v10 = *(*a2 + 32);
  v11 = *(*a2 + 40);
  v12 = v9 - v8;
  v13 = v11 - v10;
  if (vabdd_f64(v9, v8) < 0.00001 || vabdd_f64(v11, v10) < 0.00001)
  {
    *(a1 + 40) = 7;
  }

  v14 = v10 + v13 * -100.0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 47) = 0;
  *(v7 + 40) = 0;
  *a3 = v8 + v12 * -100.0;
  *(a3 + 8) = v14;
  *(a3 + 48) = *a3;
  *a4 = v8 + v12 * 100.0;
  *(a4 + 8) = v14;
  *(a4 + 48) = *a4;
  *a5 = v8 + v12 * 0.0;
  *(a5 + 8) = v10 + v13 * 100.0;
  result = *a5;
  *(a5 + 48) = *a5;
  *v7 = a3;
  *(v7 + 8) = a4;
  *(v7 + 16) = a5;
  return result;
}

uint64_t ARC3DShapeTriangulationTriangleMark(uint64_t a1, int a2, BOOL *a3)
{
  *(a1 + 51) = 1;
  *(a1 + 52) = a2;
  v6 = *(a1 + 24);
  if (v6 && (*(v6 + 51) & 1) == 0)
  {
    ARC3DShapeTriangulationTriangleMark();
  }

  v7 = *(a1 + 32);
  if (v7 && (*(v7 + 51) & 1) == 0)
  {
    ARC3DShapeTriangulationTriangleMark();
  }

  result = *(a1 + 40);
  if (result)
  {
    if ((*(result + 51) & 1) == 0)
    {
      result = ARC3DShapeTriangulationTriangleMark();
    }
  }

  if (*(a1 + 24))
  {
    if (*(a1 + 32))
    {
      if (*(a1 + 40))
      {
        return result;
      }

      v9 = 50;
    }

    else
    {
      v9 = 49;
    }
  }

  else
  {
    v9 = 48;
  }

  *a3 = *(a1 + v9) != a2;
  return result;
}

void *ARC3DShapeTriangulationClean(uint64_t a1)
{
  v10 = 0;
  ARC3DShapeTriangulationTriangleMark(*(a1 + 16), 1, &v10);
  LODWORD(v2) = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = 0;
  v4 = v10;
  do
  {
    if (*(*(a1 + 16) + 56 * v3 + 52) == v4)
    {
      LODWORD(v2) = v2 - 1;
      *(a1 + 32) = v2;
      if (v3 < v2)
      {
        v5 = v3;
        v6 = 56 * v3;
        do
        {
          v7 = *(a1 + 16) + v6;
          ++v5;
          v8 = *(v7 + 72);
          *v7 = *(v7 + 56);
          *(v7 + 16) = v8;
          *(v7 + 32) = *(v7 + 88);
          *(v7 + 48) = *(v7 + 104);
          v2 = *(a1 + 32);
          v6 += 56;
        }

        while (v5 < v2);
      }
    }

    else
    {
      ++v3;
    }
  }

  while (v3 < v2);
  if (v2)
  {
    result = malloc_type_realloc(*(a1 + 16), 56 * v2, 0x1020040F7381AC9uLL);
  }

  else
  {
LABEL_12:
    free(*(a1 + 16));
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

void *ARC3DShapeConnectedComponentTriangulate(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 0;
    v8 = (*a1 + 8);
    do
    {
      v9 = *v8;
      v8 += 14;
      v7 += v9;
      --v6;
    }

    while (v6);
    v10 = 2 * v7 + 2;
  }

  else
  {
    v10 = 2;
  }

  v31 = 0;
  v28 = 0x1000000000;
  v29 = malloc_type_malloc(0x80uLL, 0x2004093837F09uLL);
  v30 = malloc_type_malloc(56 * v10, 0x1020040F7381AC9uLL);
  v32 = 0;
  v33 = v10;
  v34 = 0;
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  v11 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v11;
  memset(v25, 0, sizeof(v25));
  ARC3DShapeTriangulationInit(&v28, v24, v27, v26, v25);
  v12 = v34;
  if (v34)
  {
LABEL_20:
    free(v29);
    *a2 = 0;
    *a3 = v12;
    free(v30);
    return 0;
  }

  else
  {
    v22 = a3;
    v13 = *(a1 + 8);
    v23 = vdupq_n_s64(0x3EE4F8B588E368F1uLL);
    while ((--v13 & 0x80000000) == 0)
    {
      v14 = *a1 + 56 * (v13 & 0x7FFFFFFF);
      v15 = *v14;
      v16 = *(v14 + 8);
      ARC3DShapeTriangulationAddPoint(&v28, *v14);
      v12 = v34;
      if (v34)
      {
        goto LABEL_19;
      }

      if (v16 >= 2)
      {
        v17 = 1;
        while (1)
        {
          v18 = v17;
          v19 = v15;
          while (1)
          {
            v20 = vmovn_s64(vcgeq_f64(v23, vabdq_f64(v15[5 * v17], *v19)));
            if (v20.i32[0] & v20.i32[1])
            {
              break;
            }

            v19 += 5;
            if (!--v18)
            {
              ARC3DShapeTriangulationAddPoint(&v28, &v15[5 * v17]);
              v12 = v34;
              if (v34)
              {
                goto LABEL_19;
              }

              break;
            }
          }

          ARC3DShapeTriangulationAddEdge(&v28, v15[5 * v17 - 5].f64, v15[5 * v17].f64);
          v12 = v34;
          if (v34)
          {
            break;
          }

          if (++v17 == v16)
          {
            goto LABEL_18;
          }
        }

LABEL_19:
        a3 = v22;
        goto LABEL_20;
      }

LABEL_18:
      ARC3DShapeTriangulationAddEdge(&v28, v15[5 * (v16 - 1)].f64, v15->f64);
      v12 = v34;
      if (v34)
      {
        goto LABEL_19;
      }
    }

    ARC3DShapeTriangulationClean(&v28);
    free(v29);
    *a2 = v32;
    *v22 = 0;
    return v30;
  }
}

uint64_t ARC3DSegmentIntersectsSegment(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if ((a3 - a1) * (a6 - a2) - (a4 - a2) * (a5 - a1) > 0.0 != (a3 - a1) * (a8 - a2) - (a4 - a2) * (a7 - a1) <= 0.0)
  {
    return 0;
  }

  else
  {
    return ((a7 - a5) * (a2 - a6) - (a8 - a6) * (a1 - a5) > 0.0) ^ ((a7 - a5) * (a4 - a6) - (a8 - a6) * (a3 - a5) > 0.0);
  }
}

double ARC3DComputeLinesIntersection(double *a1, double *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v10 = a3 - a5;
  v11 = (a3 - a5) * (a8 - a10) - (a4 - a6) * (a7 - a9);
  if (v11 == 0.0)
  {
    ARC3DComputeLinesIntersection_cold_1();
  }

  v12 = -(a4 - a6);
  v13 = a3 * a6 - a4 * a5;
  v14 = a7 * a10 - a8 * a9;
  *a1 = (v13 * (a7 - a9) - v10 * v14) / v11;
  result = (v14 * v12 + v13 * (a8 - a10)) / v11;
  *a2 = result;
  return result;
}

double ARC3DComputeLinesIntersectionForPoints(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = a2 - a4;
  v10 = (a2 - a4) * (a7 - a9) - (a3 - a5) * (a6 - a8);
  if (v10 == 0.0)
  {
    ARC3DComputeLinesIntersectionForPoints_cold_1();
  }

  v11 = -(a3 - a5);
  v12 = a2 * a5 - a3 * a4;
  v13 = a6 * a9 - a7 * a8;
  v14 = (v12 * (a6 - a8) - v9 * v13) / v10;
  result = (v13 * v11 + v12 * (a7 - a9)) / v10;
  *a1 = v14;
  a1[1] = result;
  return result;
}

__n128 ARCVAMatrixFromMatrix@<Q0>(simd_float3x3 a1@<0:Q0, 16:Q1, 32:Q2>, uint64_t a2@<X8>)
{
  a1.columns[0].i32[3] = a1.columns[1].i32[0];
  *a2 = a1.columns[0];
  *(a2 + 16) = vextq_s8(vextq_s8(a1.columns[1], a1.columns[1], 0xCuLL), a1.columns[2], 8uLL);
  *(a2 + 32) = a1.columns[2].i32[2];
  return a1.columns[0];
}

uint64_t ARUltrawideToWideExtrinsics()
{
  ARCameraToJasperExtrinsics(*MEMORY[0x1E6986948]);
  ARMatrix4x4FromMatrix4x3();
  v10 = v1;
  v11 = v0;
  v12 = v3;
  v13 = v2;
  ARCameraToJasperExtrinsics(*MEMORY[0x1E6986950]);
  ARMatrix4x4FromMatrix4x3();
  v18 = __invert_f4(v17);
  v4 = 0;
  v14[0] = v11;
  v14[1] = v10;
  v14[2] = v13;
  v14[3] = v12;
  do
  {
    v15[v4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18.columns[0], COERCE_FLOAT(v14[v4])), v18.columns[1], *&v14[v4], 1), v18.columns[2], v14[v4], 2), v18.columns[3], v14[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  v5 = v15[2];
  v6 = v15[3];
  v7 = v15[0];
  v8 = v15[1];

  return ARMatrix4x3FromMatrix4x4(v7, v8, v5, v6);
}

__n128 ARCameraToJasperExtrinsics(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E6986950]])
  {
    v2 = &unk_1F4259388;
  }

  else
  {
    if (![v1 isEqualToString:*MEMORY[0x1E6986948]])
    {
      v4 = xmmword_1C25C8910;
      goto LABEL_7;
    }

    v2 = &unk_1F42593A0;
  }

  v4 = ARMatrix4x3FromRowMajorFlatArray(v2);
LABEL_7:

  return v4;
}

__n128 ARST2CameraToJasperExtrinsics(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E6986950]])
  {
    v2 = &unk_1F42593B8;
  }

  else
  {
    if (![v1 isEqualToString:*MEMORY[0x1E6986948]])
    {
      v4 = xmmword_1C25C8910;
      goto LABEL_7;
    }

    v2 = &unk_1F42593A0;
  }

  v4 = ARMatrix4x3FromRowMajorFlatArray(v2);
LABEL_7:

  return v4;
}

id ARJasperWideCameraCalibration()
{
  if (ARJasperWideCameraCalibration::onceToken != -1)
  {
    ARJasperWideCameraCalibration_cold_1();
  }

  v1 = ARJasperWideCameraCalibration::cameraCalibration;

  return v1;
}

void __ARJasperWideCameraCalibration_block_invoke()
{
  v0 = ARCameraToJasperExtrinsics(*MEMORY[0x1E6986950]).n128_u64[0];
  v16 = v1;
  v17 = *&v0;
  v14 = v3;
  v15 = v2;
  v4 = MEMORY[0x1E695DEF0];
  v5 = ARKitCoreBundle();
  v6 = [v5 ar_pathForPrivateResource:@"Wide_distortion_lookup_table" ofType:@"hardcoded"];
  v18 = [v4 dataWithContentsOfFile:v6];

  v7 = MEMORY[0x1E695DEF0];
  v8 = ARKitCoreBundle();
  v9 = [v8 ar_pathForPrivateResource:@"Wide_inverse_distortion_lookup_table" ofType:@"hardcoded"];
  v10 = [v7 dataWithContentsOfFile:v9];

  if (v18 && v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E698C178]) initWithDistortionCenter:v18 lensDistortionLookupTable:v10 inverseLensDistortionLookupTable:{959.341819, 718.244185}];
    v12 = [objc_alloc(MEMORY[0x1E698C160]) initWithIntrinsics:v11 cameraToPlatformTransform:*&_PromotedConst_88 pixelSize:unk_1C25F0A00 forReferenceDimensions:0.0 withDistortionModel:{v17, v16, v15, v14, 0.00197999994, 0x409E000000000000, 0x4096800000000000}];
    v13 = ARJasperWideCameraCalibration::cameraCalibration;
    ARJasperWideCameraCalibration::cameraCalibration = v12;
  }
}

id ARST2JasperWideCameraCalibration()
{
  if (ARST2JasperWideCameraCalibration::onceToken != -1)
  {
    ARST2JasperWideCameraCalibration_cold_1();
  }

  v1 = ARST2JasperWideCameraCalibration::cameraCalibration;

  return v1;
}

void __ARST2JasperWideCameraCalibration_block_invoke()
{
  v0 = ARST2CameraToJasperExtrinsics(*MEMORY[0x1E6986950]).n128_u64[0];
  v16 = v1;
  v17 = *&v0;
  v14 = v3;
  v15 = v2;
  v4 = MEMORY[0x1E695DEF0];
  v5 = ARKitCoreBundle();
  v6 = [v5 ar_pathForPrivateResource:@"Wide_distortion_lookup_table" ofType:@"hardcoded"];
  v18 = [v4 dataWithContentsOfFile:v6];

  v7 = MEMORY[0x1E695DEF0];
  v8 = ARKitCoreBundle();
  v9 = [v8 ar_pathForPrivateResource:@"Wide_inverse_distortion_lookup_table" ofType:@"hardcoded"];
  v10 = [v7 dataWithContentsOfFile:v9];

  if (v18 && v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E698C178]) initWithDistortionCenter:v18 lensDistortionLookupTable:v10 inverseLensDistortionLookupTable:{959.341819, 718.244185}];
    v12 = [objc_alloc(MEMORY[0x1E698C160]) initWithIntrinsics:v11 cameraToPlatformTransform:*&_PromotedConst_88 pixelSize:unk_1C25F0A00 forReferenceDimensions:0.0 withDistortionModel:{v17, v16, v15, v14, 0.00197999994, 0x409E000000000000, 0x4096800000000000}];
    v13 = ARST2JasperWideCameraCalibration::cameraCalibration;
    ARST2JasperWideCameraCalibration::cameraCalibration = v12;
  }
}

id _ARLogGeneral_39()
{
  if (_ARLogGeneral_onceToken_41 != -1)
  {
    _ARLogGeneral_cold_1_39();
  }

  v1 = _ARLogGeneral_logObj_41;

  return v1;
}

uint64_t aggregationSizeForPointCloud(void *a1)
{
  v1 = [a1 pointCloud];
  v2 = [v1 length];

  if (v2 == 168)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

uint64_t __ARShouldUseLogTypeError_block_invoke_46()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_45 = result;
  return result;
}

void sub_1C256DE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C256E4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ARInstrumentsValueFromFrameVendReason()
{
  if (ARInstrumentsValueFromFrameVendReason_onceToken != -1)
  {
    ARInstrumentsValueFromFrameVendReason_cold_1();
  }
}

uint64_t __ARInstrumentsValueFromFrameVendReason_block_invoke()
{
  v10 = 0;
  v0 = [@"TimerTick" getBytes:&v10 maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"TimerTick", "length"), 0}];
  v1 = v10;
  if (!v0)
  {
    v1 = 0;
  }

  ARInstrumentsValueFromFrameVendReason_timerTick = v1;
  v10 = 0;
  v2 = [@"NoFrameOnLastTick" getBytes:&v10 maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"NoFrameOnLastTick", "length"), 0}];
  v3 = v10;
  if (!v2)
  {
    v3 = 0;
  }

  ARInstrumentsValueFromFrameVendReason_noFrameOnLastTick = v3;
  v10 = 0;
  v4 = [@"LatencyTooHigh" getBytes:&v10 maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"LatencyTooHigh", "length"), 0}];
  v5 = v10;
  if (!v4)
  {
    v5 = 0;
  }

  ARInstrumentsValueFromFrameVendReason_latencyTooHigh = v5;
  v10 = 0;
  v6 = [@"TimerDisabled" getBytes:&v10 maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"TimerDisabled", "length"), 0}];
  v7 = v10;
  if (!v6)
  {
    v7 = 0;
  }

  ARInstrumentsValueFromFrameVendReason_timerDisabled = v7;
  v10 = 0;
  result = [@"QueueFull" getBytes:&v10 maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(@"QueueFull", "length"), 0}];
  v9 = v10;
  if (!result)
  {
    v9 = 0;
  }

  ARInstrumentsValueFromFrameVendReason_queueFull = v9;
  return result;
}

id _ARLogGeneral_40()
{
  if (_ARLogGeneral_onceToken_42 != -1)
  {
    _ARLogGeneral_cold_1_40();
  }

  v1 = _ARLogGeneral_logObj_42;

  return v1;
}

void sub_1C2570974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ARLLAToECEF@<X0>(_OWORD *a1@<X8>)
{
  result = cnnavigation::LLAToECEF();
  v3 = 0uLL;
  v4 = 0uLL;
  if (!result)
  {
    *&v4 = 0;
    v3 = 0uLL;
  }

  *a1 = v3;
  a1[1] = v4;
  return result;
}

int8x16_t ARECEFToLLA@<Q0>(int8x16_t *a1@<X8>)
{
  v2 = cnnavigation::ECEFToLLA();
  v3.i32[0] = 0;
  v4.i32[0] = v2;
  v5 = vdupq_lane_s32(*&vceqq_s32(v4, v3), 0);
  v6 = vdupq_n_s64(0x404CA5DC1A63C1F8uLL);
  v7 = vandq_s8(vmulq_f64(0, v6), v5);
  v6.f64[0] = 0.0;
  result = vbslq_s8(v5, v6, 0);
  *a1 = v7;
  a1[1] = result;
  return result;
}

uint64_t ARECEFToENU@<X0>(_OWORD *a1@<X8>)
{
  result = cnnavigation::ECEFToENU();
  v3 = 0uLL;
  v4 = 0uLL;
  if (!result)
  {
    v3 = v5;
    *&v4 = v6;
  }

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t ARENUToECEF@<X0>(_OWORD *a1@<X8>)
{
  result = cnnavigation::ENUToECEF();
  v3 = 0uLL;
  v4 = 0uLL;
  if (!result)
  {
    v3 = v5;
    *&v4 = v6;
  }

  *a1 = v3;
  a1[1] = v4;
  return result;
}

void ARENUToECEFTransform(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = MEMORY[0x1E69E9B08];
  v5 = *(MEMORY[0x1E69E9B08] + 80);
  a2[4] = *(MEMORY[0x1E69E9B08] + 64);
  a2[5] = v5;
  v6 = v4[7];
  a2[6] = v4[6];
  a2[7] = v6;
  v7 = v4[1];
  *a2 = *v4;
  a2[1] = v7;
  v8 = v4[3];
  a2[2] = v4[2];
  a2[3] = v8;
  v9 = *(a1 + 16);
  v16 = vmulq_f64(v3, vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v22 = v16;
  v23 = v9;
  memset(v18, 0, sizeof(v18));
  v10 = cnnavigation::LLAToECEF();
  v11 = 0uLL;
  v17 = 0;
  if (!v10)
  {
    v11 = *v18;
    v17 = *&v18[16];
  }

  v15 = v11;
  v29 = xmmword_1C25F0A60;
  v30 = 0x3FF0000000000000;
  *&v27[104] = v16;
  v28 = v9;
  LOBYTE(v22.f64[1]) = 0;
  v25 = 0x300000003;
  v23 = &unk_1F4207908;
  v24 = xmmword_1C25F0A50;
  v26 = v27;
  *&v22.f64[0] = MEMORY[0x1E6998280] + 16;
  if (!cnnavigation::ENUToECEF())
  {
    v19 = 0x300000003;
    *v18 = &unk_1F4207908;
    *&v18[8] = xmmword_1C25F0A50;
    v20 = &v21;
    if (LOBYTE(v22.f64[1]) == 1)
    {
      cnmatrix::CNMatrixBase<double>::operator=(v18, &v23);
    }

    for (i = 0; i != 3; ++i)
    {
      for (j = 0; j != 3; ++j)
      {
        *(&a2[2 * i] + (j & 3)) = *cnmatrix::CNMatrixBase<double>::operator()(v18, j, i);
      }
    }
  }

  *&v14 = v17;
  *(&v14 + 1) = 1.0;
  a2[6] = v15;
  a2[7] = v14;
  cnnavigation::ENUToECEFJacobian::~ENUToECEFJacobian(&v22);
}

void ARAnchorToECEFTransform(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v3[0] = *a1;
  v3[1] = v2;
  ARENUToECEFTransform(v3, a2);
}

uint64_t find_index(const __int16 *a1, __int16 a2, __int16 a3, unint64_t a4, unint64_t a5, unint64_t *a6)
{
  while (1)
  {
    v6 = (a5 + a4) >> 1;
    v7 = &a1[3 * v6];
    v8 = *v7;
    if (v8 == a2)
    {
      break;
    }

    if (v8 <= a2)
    {
      goto LABEL_6;
    }

LABEL_7:
    a5 = v6;
    if (v6 <= a4)
    {
      return 0;
    }
  }

  v9 = *(v7 + 1);
  if (v9 != a3)
  {
    if (v9 > a3)
    {
      goto LABEL_7;
    }

LABEL_6:
    a4 = v6 + 1;
    v6 = a5;
    goto LABEL_7;
  }

  *a6 = v6;
  return 1;
}

double ARGetFallbackUndulationValue(double a1, double a2)
{
  v2 = 0;
  v3 = ((a1 + 90.0) * 10.0);
  v4 = ((a2 + 180.0) * 10.0);
  v5 = 2173;
  while (1)
  {
    v6 = (v5 + v2) >> 1;
    v7 = &undulation_constants[3 * v6];
    v8 = *v7;
    if (v8 == v3)
    {
      break;
    }

    if (v8 <= v3)
    {
      goto LABEL_7;
    }

LABEL_8:
    v5 = v6;
    if (v6 <= v2)
    {
      return NAN;
    }
  }

  v9 = v7[1];
  if (v9 != v4)
  {
    if (v9 > v4)
    {
      goto LABEL_8;
    }

LABEL_7:
    v2 = v6 + 1;
    v6 = v5;
    goto LABEL_8;
  }

  return undulation_constants[3 * v6 + 2] * 0.01;
}

double ARLInfinityDistance(double a1, double a2, double a3, double a4)
{
  v8 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:a1 longitude:a2];
  v9 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:a3 longitude:a4];
  v10 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:a1 longitude:a4];
  v11 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:a3 longitude:a2];
  [v8 distanceFromLocation:v10];
  v13 = v12;
  [v9 distanceFromLocation:v10];
  v15 = v14;
  [v8 distanceFromLocation:v11];
  v17 = v16;
  [v9 distanceFromLocation:v11];
  if (v13 >= v15)
  {
    v19 = v13;
  }

  else
  {
    v19 = v15;
  }

  if (v17 >= v18)
  {
    v18 = v17;
  }

  if (v19 >= v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  return v20;
}

double ARLInfinityAngularDistance(double a1, double a2, double a3, double a4)
{
  v4 = vabdd_f64(a4, a2);
  if (v4 > 180.0)
  {
    v4 = 360.0 - v4;
  }

  result = vabdd_f64(a3, a1);
  if (v4 >= result)
  {
    return v4;
  }

  return result;
}

__n128 cnmatrix::CNMatrixBase<double>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a2 + 8);
    if (*(a1 + 24) < v2)
    {
      cnmatrix::CNMatrixBase<double>::operator=();
    }

    v3 = *(a2 + 12);
    if (*(a1 + 28) < v3)
    {
      cnmatrix::CNMatrixBase<double>::operator=();
    }

    *(a1 + 8) = v2;
    *(a1 + 12) = v3;
    v4 = v3 * v2;
    *(a1 + 16) = v4;
    *(a1 + 20) = v2;
    v5 = *(a2 + 16);
    if (v5 > 3)
    {
      v10 = *(a1 + 32);
      v11 = *(a2 + 32);
      v12 = (v10 + 8 * (v5 - 2));
      v13 = (v11 + 8 * (v5 - 2));
      v14 = (v5 - 1) >> 1;
      do
      {
        v15 = *v11++;
        *v10++ = v15;
        --v14;
      }

      while (v14);
      result = *v13;
      *v12 = *v13;
    }

    else if (v4 >= 1)
    {
      v6 = *(a2 + 32);
      v7 = *(a1 + 32);
      do
      {
        v8 = *v6++;
        result.n128_u64[0] = v8;
        *v7++ = v8;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

void cnmatrix::CNMatrix<3u,3u,double>::TransposeDataFootprint(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      if (!a2)
      {
        cnmatrix::CNMatrix<3u,3u,double>::TransposeDataFootprint();
      }

      v6 = v4 + v2 - *(a1 + 20);
      if (v6 <= 0)
      {
        cnmatrix::CNMatrix<3u,3u,double>::TransposeDataFootprint();
      }

      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = (v7 - 1);
        v9 = *(a1 + 32);
        v10 = 1;
        do
        {
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = *(v9 + 8 * v10);
            v13 = v10;
            do
            {
              v13 = v13 * v6 % v8;
              v14 = *(v9 + 8 * v13);
              *(v9 + 8 * v13) = v12;
              *v11 = 1;
              v11 = &a2[v13];
              v12 = v14;
            }

            while (!*v11);
          }

          ++v10;
        }

        while (v10 != v8);
      }
    }
  }
}

uint64_t cnmatrix::CNMatrixBase<double>::operator()(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  if (v4 >= *(a1 + 16))
  {
    cnmatrix::CNMatrixBase<double>::operator()();
  }

  return v3 + 8 * v4;
}

double ARConsensusAndAverageFilterImpl::Update(ARConsensusAndAverageFilterImpl *this, const simd_double4x4 *a2, const simd_double4x4 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, uint64_t a13, __n128 a14, uint64_t a15, uint64_t a16, char a17, __int128 __src, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, simd_double4x4 a48)
{
  v52 = *(this + 34);
  v51 = *(this + 35);
  if (0x8E38E38E38E38E39 * ((v51 - v52) >> 5) == *(this + 76))
  {
    v53 = v51 - (v52 + 288);
    if (v51 != v52 + 288)
    {
      memmove(*(this + 34), (v52 + 288), v51 - (v52 + 288));
    }

    *(this + 35) = v52 + v53;
  }

  *&STACK[0x5C0] = 0u;
  *&STACK[0x5D0] = 0u;
  *&STACK[0x5A0] = 0u;
  *&STACK[0x5B0] = 0u;
  *&STACK[0x580] = 0u;
  *&STACK[0x590] = 0u;
  *&STACK[0x560] = 0u;
  *&STACK[0x570] = 0u;
  v54 = *&a2->columns[2].f64[2];
  a22 = *a2->columns[2].f64;
  a23 = v54;
  v55 = *&a2->columns[3].f64[2];
  a24 = *a2->columns[3].f64;
  a25 = v55;
  v56 = *&a2->columns[0].f64[2];
  __src = *a2->columns[0].f64;
  a19 = v56;
  v57 = *&a2->columns[1].f64[2];
  a20 = *a2->columns[1].f64;
  a21 = v57;
  __invert_d4();
  *&STACK[0x540] = 0u;
  *&STACK[0x550] = 0u;
  memset(&a48, 0, 96);
  ConvertIMU(&STACK[0x560], &a48);
  ARConsensusAndAverageFilterImpl::ConvertToENU(this, &a48, a3, &__src);
  v59 = *(this + 35);
  v58 = *(this + 36);
  if (v59 >= v58)
  {
    v61 = *(this + 34);
    v62 = 0x8E38E38E38E38E39 * ((v59 - v61) >> 5);
    v63 = v62 + 1;
    if (v62 + 1 > 0xE38E38E38E38E3)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v64 = 0x8E38E38E38E38E39 * ((v58 - v61) >> 5);
    if (2 * v64 > v63)
    {
      v63 = 2 * v64;
    }

    if (v64 >= 0x71C71C71C71C71)
    {
      v65 = 0xE38E38E38E38E3;
    }

    else
    {
      v65 = v63;
    }

    if (v65)
    {
      std::allocator<AlignedPose>::allocate_at_least[abi:ne200100](this + 272, v65);
    }

    v66 = 288 * v62;
    memcpy(v66, &__src, 0x120uLL);
    v60 = v66 + 288;
    v67 = *(this + 34);
    v68 = *(this + 35) - v67;
    v69 = (v66 - v68);
    memcpy(v69, v67, v68);
    v70 = *(this + 34);
    *(this + 34) = v69;
    *(this + 35) = v60;
    *(this + 36) = 0;
    if (v70)
    {
      operator delete(v70);
    }
  }

  else
  {
    memcpy(*(this + 35), &__src, 0x120uLL);
    v60 = v59 + 288;
  }

  *(this + 35) = v60;
  ARConsensusAndAverageFilterImpl::GetAlignmentAtFrameConsensusAndAverage(this, this + 34, 954437177 * ((v60 - *(this + 34)) >> 5) - 1, this + 296, &a14);
  if (a17 == 1)
  {
    MatrixFromTransform4Dof(&a14, v74);
    *(this + 4) = a9;
    *(this + 5) = a10;
    *(this + 6) = a11;
    *(this + 7) = a12;
    v72 = v74[1];
    *this = v74[0];
    *(this + 1) = v72;
    result = *&v75;
    v73 = vars0;
    *(this + 2) = v75;
    *(this + 3) = v73;
    *(this + 128) = 1;
  }

  return result;
}

void ARConsensusAndAverageFilterImpl::ConvertToENU(float64x2_t *this@<X0>, const simd_double4x4 *a2@<X1>, const simd_double4x4 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = 0;
  *(a4 + 128) = 0x7FF8000000000000;
  *(a4 + 136) = 0;
  v8 = vdupq_n_s64(0x7FF8000000000000uLL);
  do
  {
    v9 = (a4 + v7);
    *v9 = v8;
    v9[1] = v8;
    v7 += 32;
  }

  while (v7 != 128);
  *(a4 + 272) = 0x7FF8000000000000;
  *(a4 + 280) = 0;
  v10 = 144;
  v11 = vdupq_n_s64(0x7FF8000000000000uLL);
  do
  {
    v12 = (a4 + v10);
    *v12 = v11;
    v12[1] = v11;
    v10 += 32;
  }

  while (v10 != 272);
  v13 = *&a2->columns[2].f64[2];
  *(a4 + 64) = *a2->columns[2].f64;
  *(a4 + 80) = v13;
  v14 = *&a2->columns[3].f64[2];
  *(a4 + 96) = *a2->columns[3].f64;
  *(a4 + 112) = v14;
  v15 = *&a2->columns[0].f64[2];
  *a4 = *a2->columns[0].f64;
  *(a4 + 16) = v15;
  v16 = *&a2->columns[1].f64[2];
  *(a4 + 32) = *a2->columns[1].f64;
  *(a4 + 48) = v16;
  *(a4 + 128) = 0;
  *(a4 + 136) = 1;
  *(a4 + 128) = HeadingFromRot(a4);
  v17 = 0;
  v18 = *&a3->columns[3].f64[2];
  *(a4 + 240) = *a3->columns[3].f64;
  *(a4 + 256) = v18;
  v19 = *&a3->columns[2].f64[2];
  *(a4 + 208) = *a3->columns[2].f64;
  *(a4 + 224) = v19;
  v20 = *&a3->columns[1].f64[2];
  *(a4 + 176) = *a3->columns[1].f64;
  *(a4 + 192) = v20;
  v21 = *&a3->columns[0].f64[2];
  *(a4 + 144) = *a3->columns[0].f64;
  *(a4 + 160) = v21;
  *(a4 + 272) = 0;
  v22 = vnegq_f64(*(a4 + 208));
  v23 = vnegq_f64(*(a4 + 224));
  v24 = vnegq_f64(*(a4 + 176));
  v25 = vnegq_f64(*(a4 + 192));
  v26 = vnegq_f64(*(a4 + 144));
  v27 = vnegq_f64(*(a4 + 160));
  v28 = *(a4 + 240);
  v29 = *(a4 + 256);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v31 = this[9];
  v30 = this[10];
  v33 = this[11];
  v32 = this[12];
  v35 = this[13];
  v34 = this[14];
  v37 = this[15];
  v36 = this[16];
  v45[0] = v22;
  v45[1] = v23;
  v45[2] = v24;
  v45[3] = v25;
  v45[4] = v26;
  v45[5] = v27;
  v45[6] = v28;
  v45[7] = v29;
  do
  {
    v39 = v45[v17];
    v38 = v45[v17 + 1];
    v40 = (&v46 + v17 * 16);
    *v40 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v31, v39.f64[0]), v33, v39, 1), v35, v38.f64[0]), v37, v38, 1);
    v40[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v30, v39.f64[0]), v32, v39, 1), v34, v38.f64[0]), v36, v38, 1);
    v17 += 2;
  }

  while (v17 != 8);
  v41 = v51;
  *(a4 + 208) = v50;
  *(a4 + 224) = v41;
  v42 = v53;
  *(a4 + 240) = v52;
  *(a4 + 256) = v42;
  v43 = v47;
  *(a4 + 144) = v46;
  *(a4 + 160) = v43;
  v44 = v49;
  *(a4 + 176) = v48;
  *(a4 + 192) = v44;
  *(a4 + 280) = 1;
  *(a4 + 272) = HeadingFromRot(a4 + 144);
}

void ARConsensusAndAverageFilterImpl::GetAlignmentAtFrameConsensusAndAverage(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 + 8);
  ARConsensusAndAverageFilterImpl::GetAlignmentAtFrameConsensus(a1, a2, a3, a4, &v56);
  if ((v58 & 1) == 0)
  {
    v36 = v57;
    *a5 = v56;
    *(a5 + 16) = v36;
    *(a5 + 32) = v58;
    return;
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  ARConsensusAndAverageFilterImpl::GetInliers(a1, a2, a3, &v56, v9, &v53);
  v10 = v53;
  if (v54 == v53)
  {
    v37 = v57;
    *a5 = v56;
    *(a5 + 16) = v37;
    *(a5 + 32) = v58;
    if (v10)
    {
LABEL_19:
      v54 = v10;
      operator delete(v10);
    }
  }

  else
  {
    ARConsensusAndAverageFilterImpl::RetrieveInliers(a2, &v53, &v51);
    v11 = v51;
    v12 = v52;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    if (v51 != v52)
    {
      v17 = v51;
      do
      {
        v18 = v17[8].f64[0] - v17[17].f64[0];
        v19 = v18 + ceil(v18 / -360.0) * 360.0;
        if (v19 > 180.0)
        {
          v19 = v19 + -360.0;
        }

        v20 = __sincos_stret(v19 * 3.14159265 / 180.0);
        v15 = v15 + v20.__sinval;
        v14 = v14 + v20.__cosval;
        v16 = v16 + 1.0;
        v17 += 18;
      }

      while (v17 != v12);
    }

    v22 = atan2(v15 / v16, v14 / v16) * 0.318309886 * 180.0;
    v23 = 0uLL;
    v50 = 1;
    v47 = 0u;
    v48 = 0;
    v49 = v22;
    if (v11 == v12)
    {
      *&v21 = 0;
    }

    else
    {
      *&v21 = 0;
      v13 = 0.0;
      do
      {
        v38 = v21;
        v39 = v23;
        v43[0] = *v11;
        v24 = v11[1];
        v25 = v11[2];
        v26 = v11[4];
        v43[3] = v11[3];
        v43[4] = v26;
        v43[1] = v24;
        v43[2] = v25;
        v27 = v11[5];
        v28 = v11[6];
        v29 = v11[8];
        v43[7] = v11[7];
        v43[8] = v29;
        v43[5] = v27;
        v43[6] = v28;
        v43[9] = v11[9];
        v30 = v11[10];
        v31 = v11[11];
        v32 = v11[13];
        v43[12] = v11[12];
        v43[13] = v32;
        v43[10] = v30;
        v43[11] = v31;
        v33 = v11[14];
        v34 = v11[15];
        v35 = v11[17];
        v45 = v11[16];
        v46 = v35;
        v43[14] = v33;
        v44 = v34;
        ARConsensusAndAverageFilterImpl::ApplyTransform(v43, &v47, v40);
        v23 = vaddq_f64(v39, vsubq_f64(v44, v41));
        v13 = v13 + v45.f64[0] - v42;
        *(&v21 + 1) = *(&v38 + 1);
        *&v21 = *&v38 + 1.0;
        v11 += 18;
      }

      while (v11 != v12);
      v11 = v51;
    }

    *a5 = vdivq_f64(v23, vdupq_lane_s64(v21, 0));
    *(a5 + 16) = v13 / *&v21;
    *(a5 + 24) = v22;
    *(a5 + 32) = 1;
    if (v11)
    {
      v52 = v11;
      operator delete(v11);
    }

    v10 = v53;
    if (v53)
    {
      goto LABEL_19;
    }
  }
}

void sub_1C25724C8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 192);
  if (v3)
  {
    *(v1 - 184) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<AlignedPose>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E4)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ARConsensusAndAverageFilterImpl::GetAlignmentAtFrameConsensus(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a4 + 8);
  v8 = *a4;
  LOBYTE(v29) = 0;
  v27 = 0u;
  v28 = 0u;
  if ((a3 & 0x80000000) != 0)
  {
    v14 = 0.0;
  }

  else
  {
    v11 = 0;
    v12 = a3;
    v13 = 288 * a3 + 280;
    v14 = 0.0;
    do
    {
      v15 = *a2;
      if (*(*a2 + v13 - 144) == 1 && *(v15 + v13) == 1)
      {
        v16 = v15 + v13;
        v17 = *(v15 + v13 - 152) - *(v15 + v13 - 8);
        *(&v25 + 1) = v17 + ceil(v17 / -360.0) * 360.0;
        v19 = __sincos_stret(*(&v25 + 1) * 3.14159265 / 180.0);
        v18.f64[0] = v19.__cosval;
        v20.f64[0] = -v19.__sinval;
        v20.f64[1] = v19.__cosval;
        v18.f64[1] = v19.__sinval;
        v24 = vsubq_f64(*(v16 - 40), vmlaq_n_f64(vmulq_laneq_f64(v20, *(v16 - 184), 1), v18, *(v16 - 184)));
        *&v25 = *(v16 - 24) - *(v16 - 168);
        v26 = 1;
        Inliers = ARConsensusAndAverageFilterImpl::GetInliers(a1, a2, a3, &v24, v7, 0);
        if (Inliers > v14)
        {
          v27 = v24;
          v28 = v25;
          LOBYTE(v29) = v26;
          v14 = Inliers;
        }

        ++v11;
      }

      if (v11 > v7)
      {
        break;
      }

      v13 -= 288;
    }

    while (v12-- > 0);
  }

  *(a1 + 312) = v14;
  if (v14 >= v8)
  {
    v23 = v28;
    *a5 = v27;
    *(a5 + 16) = v23;
    *(a5 + 32) = v29;
  }

  else
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }
}

double ARConsensusAndAverageFilterImpl::GetInliers(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4, int a5, const void **a6)
{
  if (0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 5) <= a3)
  {
    ARConsensusAndAverageFilterImpl::GetInliers();
  }

  if ((a3 & 0x80000000) == 0)
  {
    v7 = a5;
    v10 = 0;
    v11 = a3;
    v12 = 288 * a3;
    v13 = 0.0;
    while (1)
    {
      v14 = *a2;
      v15 = *a2 + v12;
      if (*(v15 + 136) == 1 && *(v15 + 280) == 1)
      {
        ARConsensusAndAverageFilterImpl::ApplyTransform(v15, a4, v35);
        v16 = *(v14 + v12 + 240);
        v17 = v16.f64[0] - v36.f64[0];
        v18 = vsubq_f64(v16, v36);
        *v18.f64 = vmuld_lane_f64(v18.f64[1], v18, 1) + v17 * v17;
        v19 = sqrtf(*v18.f64);
        v20 = *(v14 + v12 + 272) - v37 + ceil((*(v14 + v12 + 272) - v37) / -360.0) * 360.0;
        if (v20 > 180.0)
        {
          v20 = v20 + -360.0;
        }

        v21 = fabs(v20) <= 10.0 && v19 <= 10.0;
        if (v21)
        {
          if (a6)
          {
            v23 = a6[1];
            v22 = a6[2];
            if (v23 >= v22)
            {
              v25 = *a6;
              v26 = v23 - *a6;
              v27 = v26 >> 2;
              v28 = (v26 >> 2) + 1;
              if (v28 >> 62)
              {
                _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
              }

              v29 = v22 - v25;
              if (v29 >> 1 > v28)
              {
                v28 = v29 >> 1;
              }

              v30 = v29 >= 0x7FFFFFFFFFFFFFFCLL;
              v31 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v30)
              {
                v31 = v28;
              }

              if (v31)
              {
                std::allocator<unsigned int>::allocate_at_least[abi:ne200100](a6, v31);
              }

              *(4 * v27) = v11;
              v24 = 4 * v27 + 4;
              memcpy(0, v25, v26);
              v32 = *a6;
              *a6 = 0;
              a6[1] = v24;
              a6[2] = 0;
              if (v32)
              {
                operator delete(v32);
              }

              v7 = a5;
            }

            else
            {
              *v23 = v11;
              v24 = (v23 + 4);
            }

            a6[1] = v24;
          }

          v13 = v13 + 1.0;
          if (v10 >= v7)
          {
            return v13;
          }
        }

        ++v10;
      }

      v12 -= 288;
      v21 = v11-- <= 0;
      if (v21)
      {
        return v13;
      }
    }
  }

  return 0.0;
}

__n128 ARConsensusAndAverageFilterImpl::RetrieveInliers@<Q0>(void *a1@<X1>, unsigned int **a2@<X2>, void *a3@<X8>)
{
  v5 = std::vector<std::pair<Pos4Dof,Pos4Dof>>::vector[abi:ne200100](a3, a2[1] - *a2);
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    v9 = 0;
    v10 = *v5;
    do
    {
      v11 = *v7++;
      v12 = (*a1 + 288 * v11);
      v13 = v10 + 288 * v9;
      v14 = v12[4];
      v16 = v12[1];
      v15 = v12[2];
      *(v13 + 48) = v12[3];
      *(v13 + 64) = v14;
      *(v13 + 16) = v16;
      *(v13 + 32) = v15;
      v18 = v12[6];
      v17 = v12[7];
      v19 = v12[5];
      *(v13 + 121) = *(v12 + 121);
      *(v13 + 96) = v18;
      *(v13 + 112) = v17;
      *(v13 + 80) = v19;
      *v13 = *v12;
      v20 = *a1 + 288 * v11;
      *(v13 + 144) = *(v20 + 144);
      v21 = *(v20 + 160);
      v22 = *(v20 + 176);
      v23 = *(v20 + 208);
      *(v13 + 192) = *(v20 + 192);
      *(v13 + 208) = v23;
      *(v13 + 160) = v21;
      *(v13 + 176) = v22;
      result = *(v20 + 224);
      v24 = *(v20 + 240);
      v25 = *(v20 + 256);
      *(v13 + 265) = *(v20 + 265);
      *(v13 + 240) = v24;
      *(v13 + 256) = v25;
      *(v13 + 224) = result;
      ++v9;
    }

    while (v7 != v8);
  }

  return result;
}

void ARConsensusAndAverageFilterImpl::ApplyTransform(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = 0;
  *(a3 + 128) = 0x7FF8000000000000;
  *(a3 + 136) = 0;
  v7 = vdupq_n_s64(0x7FF8000000000000uLL);
  do
  {
    v8 = (a3 + v6);
    *v8 = v7;
    v8[1] = v7;
    v6 += 32;
  }

  while (v6 != 128);
  if (*(a2 + 32) == 1)
  {
    v9 = *(a2 + 24);
    v30 = *(MEMORY[0x1E69E9B08] + 80);
    v31 = *(MEMORY[0x1E69E9B08] + 16);
    v28 = *(MEMORY[0x1E69E9B08] + 64);
    v29 = *(MEMORY[0x1E69E9B08] + 48);
    v27 = *(MEMORY[0x1E69E9B08] + 112);
    v10 = __sincos_stret(v9 * 3.14159265 / 180.0);
    v13.f64[0] = v10.__cosval;
    v15.f64[1] = *(&v27 + 1);
    v11 = 0;
    v12.f64[0] = -v10.__sinval;
    v12.f64[1] = v10.__cosval;
    v13.f64[1] = v10.__sinval;
    v14 = *a2;
    v15.f64[0] = *(a2 + 16);
    v16 = *(a1 + 80);
    v32[4] = *(a1 + 64);
    v32[5] = v16;
    v17 = *(a1 + 112);
    v32[6] = *(a1 + 96);
    v32[7] = v17;
    v18 = *(a1 + 16);
    v32[0] = *a1;
    v32[1] = v18;
    v19 = *(a1 + 48);
    v32[2] = *(a1 + 32);
    v32[3] = v19;
    do
    {
      v21 = v32[v11];
      v20 = v32[v11 + 1];
      v22 = &v33[v11];
      *v22 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v13, v21.f64[0]), v12, v21, 1), v28, v20.f64[0]), v14, v20, 1);
      v22[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v31, v21.f64[0]), v29, v21, 1), v30, v20.f64[0]), v15, v20, 1);
      v11 += 2;
    }

    while (v11 != 8);
    v23 = v33[5];
    *(a3 + 64) = v33[4];
    *(a3 + 80) = v23;
    v24 = v33[7];
    *(a3 + 96) = v33[6];
    *(a3 + 112) = v24;
    v25 = v33[1];
    *a3 = v33[0];
    *(a3 + 16) = v25;
    v26 = v33[3];
    *(a3 + 32) = v33[2];
    *(a3 + 48) = v26;
    *(a3 + 128) = *(a1 + 128) - v9;
    *(a3 + 136) = 1;
  }
}

void *std::vector<std::pair<Pos4Dof,Pos4Dof>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::pair<Pos4Dof,Pos4Dof>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C2572C20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<Pos4Dof,Pos4Dof>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E4)
  {
    std::allocator<AlignedPose>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

uint64_t std::vector<std::pair<Pos4Dof,Pos4Dof>>::__construct_at_end(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (a2)
  {
    v3 = v2 + 288 * a2;
    v4 = vdupq_n_s64(0x7FF8000000000000uLL);
    do
    {
      v5 = 0;
      *(v2 + 128) = 0x7FF8000000000000;
      *(v2 + 136) = 0;
      do
      {
        v6 = (v2 + v5);
        *v6 = v4;
        v6[1] = v4;
        v5 += 32;
      }

      while (v5 != 128);
      *(v2 + 272) = 0x7FF8000000000000;
      *(v2 + 280) = 0;
      for (i = 144; i != 272; i += 32)
      {
        v8 = (v2 + i);
        *v8 = v4;
        v8[1] = v4;
      }

      v2 += 288;
    }

    while (v2 != v3);
    v2 = v3;
  }

  *(result + 8) = v2;
  return result;
}

double HeadingFromRot(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 72);
  if (v2 * v2 + *&v1 * *&v1 < 0.01)
  {
    return NAN;
  }

  result = atan2(-*&v1, -v2) * 0.318309886 * 180.0;
  if (fabs(result) < 0.001)
  {
    result = 0.0;
  }

  if (result < 0.0)
  {
    result = result + 360.0;
  }

  if (result >= 360.0)
  {
    HeadingFromRot();
  }

  return result;
}

__n128 MatrixFromTransform4Dof@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __sincos_stret(a1[1].n128_f64[1] * 3.14159265 / 180.0);
  *&v4 = v5.__cosval;
  __asm { FMOV            V2.2D, #1.0 }

  *&_Q2 = a1[1].n128_u64[0];
  *&v11 = -v5.__sinval;
  *(&v11 + 1) = *&v5.__cosval;
  *(&v4 + 1) = *&v5.__sinval;
  result = *a1;
  *a2 = v4;
  *(a2 + 16) = 0u;
  *(a2 + 32) = v11;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = xmmword_1C25C8900;
  *(a2 + 96) = result;
  *(a2 + 112) = _Q2;
  return result;
}

void Transform4DofFromMatrix(const simd_double4x4 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = atan2(a1->columns[0].f64[0], a1->columns[1].f64[0]) * 0.318309886 * 180.0 + -90.0;
  if (v4 < 0.0)
  {
    v4 = v4 + 360.0;
  }

  *a2 = *a1->columns[3].f64;
  *(a2 + 16) = a1->columns[3].f64[2];
  *(a2 + 24) = v4;
  *(a2 + 32) = 0;
}

float64x2_t *ConvertIMU@<X0>(float64x2_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v4 = *result;
  v3 = result[1];
  v6 = result[2];
  v5 = result[3];
  v8 = result[4];
  v7 = result[5];
  v10 = result[6];
  v9 = result[7];
  v14[2] = xmmword_1C25F3DC0;
  memset(&v14[3], 0, 32);
  v14[5] = xmmword_1C25F3DC0;
  v14[6] = 0u;
  v14[7] = xmmword_1C25C88F0;
  do
  {
    v12 = v14[v2];
    v11 = v14[v2 + 1];
    v13 = (a2 + v2 * 16);
    *v13 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v4, v12.f64[0]), v6, v12, 1), v8, v11.f64[0]), v10, v11, 1);
    v13[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v3, v12.f64[0]), v5, v12, 1), v7, v11.f64[0]), v9, v11, 1);
    v2 += 2;
  }

  while (v2 != 8);
  return result;
}

uint64_t GetRelativeMotionAndYaw(const simd_double4x4 *a1, const simd_double4x4 *a2, double *a3, double *a4)
{
  Transform4DofFromMatrix(a1, &v16);
  v7 = v18;
  Transform4DofFromMatrix(a2, &v13);
  v8 = v15;
  *a4 = 0.0;
  result = 1;
  v10 = v8 - v7 + ceil((v8 - v7) / -360.0) * 360.0;
  if (v10 > 180.0)
  {
    v10 = v10 + -360.0;
  }

  *a4 = v10;
  v11.f64[1] = v16.f64[1];
  v12 = vsubq_f64(v13, v16);
  v11.f64[0] = v14 - v17;
  *a3 = sqrt(vmulq_f64(v11, v11).f64[0] + vaddvq_f64(vmulq_f64(v12, v12)));
  return result;
}

float angleDiff(float a1, float a2)
{
    ;
  }

    ;
  }

  return result;
}

uint64_t SanityCheck(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  Transform4DofFromMatrix(a1, v24);
  Transform4DofFromMatrix(a2, v22);
  Transform4DofFromMatrix(a3, v20);
  v8 = v23;
  v9 = v21;
    ;
  }

    ;
  }

  v11 = v25;
    ;
  }

    ;
  }

  if (fabsf(j) + 0.001 < k)
  {
    return 0;
  }

  v16 = a4[6];
  v15 = a4[7];
  v17 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*a3, v16.f64[0]), *(a3 + 32), v16, 1), *(a3 + 64), v15.f64[0]), *(a3 + 96), v15, 1);
  *&v18 = *&vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*(a3 + 16), v16.f64[0]), *(a3 + 48), v16, 1), *(a3 + 80), v15.f64[0]), *(a3 + 112), v15, 1);
  v19 = vmovn_s64(vcgeq_f64(vaddq_f64(vabdq_f64(v17, vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*a1, v16.f64[0]), *(a1 + 32), v16, 1), *(a1 + 64), v15.f64[0]), *(a1 + 96), v15, 1)), vdupq_n_s64(0x3F50624DD2F1A9FCuLL)), vabdq_f64(v17, vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*a2, v16.f64[0]), *(a2 + 32), v16, 1), *(a2 + 64), v15.f64[0]), *(a2 + 96), v15, 1))));
  return (v19.i8[0] & (vabdd_f64(v18, vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*(a2 + 16), v16.f64[0]), *(a2 + 48), v16, 1), *(a2 + 80), v15.f64[0]), *(a2 + 112), v15, 1).f64[0]) <= vabdd_f64(v18, vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*(a1 + 16), v16.f64[0]), *(a1 + 48), v16, 1), *(a1 + 80), v15.f64[0]), *(a1 + 112), v15, 1).f64[0]) + 0.001)) & v19.i8[4];
}

void ___ZL13_ARLogGeneralv_block_invoke_26()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

id _ARLogGeneral_41()
{
  if (_ARLogGeneral_onceToken_43 != -1)
  {
    _ARLogGeneral_cold_1_41();
  }

  v1 = _ARLogGeneral_logObj_43;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_47()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_46 = result;
  return result;
}

void sub_1C2575460(_Unwind_Exception *a1)
{
  v8 = *(v6 - 216);
  if (v8)
  {
    *(v6 - 208) = v8;
    operator delete(v8);
  }

  v9 = *(v6 - 192);
  if (v9)
  {
    *(v6 - 184) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void std::vector<CV3DHitTestPoint3D>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<CV3DHitTestPoint3D>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void std::vector<CV3DHitTestCovariance3D>::resize(void *a1, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<CV3DHitTestCovariance3D>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 36 * a2;
  }
}

void *std::vector<CV3DHitTestPoint3D>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<cva::Matrix<float,3u,1u,false>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C257560C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<CV3DHitTestCovariance3D>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<CV3DHitTestCovariance3D>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C25756B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CV3DHitTestCovariance3D>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    std::allocator<CV3DHitTestCovariance3D>::allocate_at_least[abi:ne200100](a1, a2);
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
}

void std::allocator<CV3DHitTestCovariance3D>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x71C71C71C71C71DLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<CV3DHitTestPoint3D>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::allocator<cva::Matrix<float,3u,1u,false>>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v11 = 12 * v6;
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::vector<CV3DHitTestCovariance3D>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 36 * ((36 * a2 - 36) / 0x24) + 36;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 2);
    if (v6 + a2 > 0x71C71C71C71C71CLL)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v7 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 2);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x38E38E38E38E38ELL)
    {
      v9 = 0x71C71C71C71C71CLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::allocator<CV3DHitTestCovariance3D>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v11 = 36 * v6;
    v12 = 36 * ((36 * a2 - 36) / 0x24) + 36;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t ARSaveIOSurfaceRAW(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 planeCount])
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARSaveIOSurfaceRAW_cold_1();
    }

    v5 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v6 = _ARLogGeneral();
    v7 = v6;
    if (v5 == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_ERROR, "ARSaveIOSurfaceRAW: Only planar surface are supported.", &v26, 2u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "Error: ARSaveIOSurfaceRAW: Only planar surface are supported.", &v26, 2u);
    }

LABEL_37:

LABEL_45:
    v24 = 4294960636;
    goto LABEL_46;
  }

  if ([v3 elementWidth] != 1)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARSaveIOSurfaceRAW_cold_1();
    }

    v16 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v17 = _ARLogGeneral();
    v7 = v17;
    if (v16 == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_ERROR, "ARSaveIOSurfaceRAW: Only surface with elementWidth == 1 supported.", &v26, 2u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "Error: ARSaveIOSurfaceRAW: Only surface with elementWidth == 1 supported.", &v26, 2u);
    }

    goto LABEL_37;
  }

  v8 = [v3 elementWidth];
  if (v8 != [v3 elementHeight])
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARSaveIOSurfaceRAW_cold_1();
    }

    v18 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v19 = _ARLogGeneral();
    v7 = v19;
    if (v18 == 1)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_ERROR, "ARSaveIOSurfaceRAW: Only surface with elementWidth == elementHeight supported.", &v26, 2u);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "Error: ARSaveIOSurfaceRAW: Only surface with elementWidth == elementHeight supported.", &v26, 2u);
    }

    goto LABEL_37;
  }

  v9 = [v3 width];
  v10 = [v3 bytesPerElement];
  v11 = [v3 bytesPerRow];
  v12 = v10 * v9;
  if (v12 < v11)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARSaveIOSurfaceRAW_cold_1();
    }

    v13 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v14 = _ARLogGeneral();
    v15 = v14;
    if (v13 == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v26 = 134218240;
        v27 = v12;
        v28 = 2048;
        v29 = v11;
        _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_ERROR, "ARSaveIOSurfaceRAW: validBytesPerRow (%zu) must be <  paddedBytesPerRow (%zu).", &v26, 0x16u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v26 = 134218240;
      v27 = v12;
      v28 = 2048;
      v29 = v11;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "Error: ARSaveIOSurfaceRAW: validBytesPerRow (%zu) must be <  paddedBytesPerRow (%zu).", &v26, 0x16u);
    }

    goto LABEL_45;
  }

  v20 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(v3, "height") * v12}];
  [v3 lockWithOptions:1 seed:0];
  v21 = [v3 baseAddress];
  v22 = [v20 mutableBytes];
  for (i = 0; i < [v3 height]; ++i)
  {
    memcpy(v22, v21, v12);
    v21 += v11;
    v22 += v12;
  }

  [v3 unlockWithOptions:1 seed:0];
  v24 = [v20 writeToFile:v4 atomically:1];

LABEL_46:
  return v24;
}

uint64_t ARSavePixelBufferPNG(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  pixelBufferOut = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  if (PixelFormatType > 1111970368)
  {
    switch(PixelFormatType)
    {
      case 1111970369:
        goto LABEL_22;
      case 1278226488:
        cva::imageViewFromPixelBuffer<unsigned char>();
      case 1380401729:
        cva::imageViewFromPixelBuffer<cva::Matrix<unsigned char,4u,1u,false>>();
    }

LABEL_15:
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARSaveIOSurfaceRAW_cold_1();
    }

    v14 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v15 = _ARLogGeneral();
    v10 = v15;
    if (v14 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v16 = "Supported formats are:  - kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange - kCVPixelFormatType_420YpCbCr8BiPlanarFullRange - kCVPixelFormatType_OneComponent8 - kCVPixelFormatType_32RGBA - kCVPixelFormatType_32ARGB - kCVPixelFormatType_32BGRA";
        v17 = v10;
        v18 = OS_LOG_TYPE_ERROR;
LABEL_30:
        _os_log_impl(&dword_1C241C000, v17, v18, v16, buf, 2u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v16 = "Error: Supported formats are:  - kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange - kCVPixelFormatType_420YpCbCr8BiPlanarFullRange - kCVPixelFormatType_OneComponent8 - kCVPixelFormatType_32RGBA - kCVPixelFormatType_32ARGB - kCVPixelFormatType_32BGRA";
      v17 = v10;
      v18 = OS_LOG_TYPE_INFO;
      goto LABEL_30;
    }

    v7 = 4294960616;
    goto LABEL_32;
  }

  if (PixelFormatType == 32)
  {
    goto LABEL_22;
  }

  if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
  {
    goto LABEL_15;
  }

  v7 = CVPixelBufferCreate(*MEMORY[0x1E695E480], WidthOfPlane, HeightOfPlane, 0x20u, 0, &pixelBufferOut);
  if (!v7)
  {
    ARPixelBufferConvertYCbCrToARGB(a1, &pixelBufferOut);
LABEL_22:
    if (pixelBufferOut)
    {
      cva::imageViewFromPixelBuffer<cva::Matrix<unsigned char,4u,1u,false>>();
    }

    cva::imageViewFromPixelBuffer<cva::Matrix<unsigned char,4u,1u,false>>();
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    ARSavePixelBufferPNG_cold_1();
  }

  v8 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v9 = _ARLogGeneral();
  v10 = v9;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Could not create image buffer of type kCVPixelFormatType_32ARGB";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_27:
      _os_log_impl(&dword_1C241C000, v12, v13, v11, buf, 2u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v11 = "Error: Could not create image buffer of type kCVPixelFormatType_32ARGB";
    v12 = v10;
    v13 = OS_LOG_TYPE_INFO;
    goto LABEL_27;
  }

LABEL_32:

  return v7;
}

uint64_t ARSaveFloatingPixelBufferAsPng16(void *a1, __CVBuffer *a2, float a3)
{
  v5 = a1;
  if (!a2)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARSaveIOSurfaceRAW_cold_1();
    }

    v14 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v15 = _ARLogGeneral();
    v16 = v15;
    if (v14 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v17 = "Input buffer cannot be null";
LABEL_31:
        v24 = v16;
        v25 = OS_LOG_TYPE_ERROR;
LABEL_35:
        _os_log_impl(&dword_1C241C000, v24, v25, v17, buf, 2u);
      }

LABEL_36:

      v21 = 0;
      goto LABEL_37;
    }

    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v17 = "Error: Input buffer cannot be null";
LABEL_34:
    v24 = v16;
    v25 = OS_LOG_TYPE_INFO;
    goto LABEL_35;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType != 1278226534 && PixelFormatType != 1717855600 && PixelFormatType != 1717856627)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARSaveIOSurfaceRAW_cold_1();
    }

    v22 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v23 = _ARLogGeneral();
    v16 = v23;
    if (v22 == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v17 = "Supported formats are kCVPixelFormatType_OneComponent32Float, kCVPixelFormatType_DepthFloat32 or kCVPixelFormatType_DisparityFloat32";
        goto LABEL_31;
      }

      goto LABEL_36;
    }

    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v17 = "Error: Supported formats are kCVPixelFormatType_OneComponent32Float, kCVPixelFormatType_DepthFloat32 or kCVPixelFormatType_DisparityFloat32";
    goto LABEL_34;
  }

  CVPixelBufferLockBaseAddress(a2, 1uLL);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
  BaseAddress = CVPixelBufferGetBaseAddress(a2);
  v11 = Width | (Height << 32);
  v34 = 0;
  v35 = v11;
  v36 = ((Width << 33) + 0xF00000000) & 0xFFFFFFF000000000 | 2;
  *buf = v11;
  v27[0] = v36;
  v12 = cva::Array<unsigned short,2u,16u>::allocate(buf, v27);
  v37 = v12;
  *buf = 0;
  v30 = v11;
  v32 = 0;
  v33 = 0;
  v31 = (BytesPerRow << 32) | 4;
  if (BaseAddress)
  {
    v33 = BaseAddress;
    v13 = (BaseAddress + BytesPerRow * Height);
  }

  else
  {
    v13 = 0;
  }

  v27[0] = 0;
  v27[1] = v11;
  v27[3] = 0;
  v28 = 0;
  v27[2] = ((Width << 33) + 0xF00000000) & 0xFFFFFFF000000000 | 2;
  if (v12)
  {
    v28 = v12;
  }

  if (BaseAddress != v13)
  {
    do
    {
      v18 = *BaseAddress * a3;
      v19 = v18 > 65535.0 || v18 < 0.0;
      v20 = v18;
      if (v19)
      {
        LOWORD(v20) = 0;
      }

      *v28 = v20;
      cva::ArrayIterator<float,2u>::increment(buf);
      cva::ArrayIterator<float,2u>::increment(v27);
      BaseAddress = v33;
    }

    while (v33 != v13);
  }

  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  [v5 UTF8String];
  v21 = cva::imwrite<unsigned short>();
  if (v37)
  {
    free(v37);
  }

LABEL_37:

  return v21;
}

uint64_t ARSavePixelBufferPGM(__CVBuffer *a1, void *a2)
{
  v27[19] = *MEMORY[0x1E69E9840];
  v3 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType == 875704422 || PixelFormatType == 875704438 || PixelFormatType == 1278226488)
  {
    CVPixelBufferLockBaseAddress(a1, 0);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
    [v3 UTF8String];
    std::ofstream::basic_ofstream(buf);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "P5", 2);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(&v24, MEMORY[0x1E69E5318]);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v24);
    std::ostream::put();
    std::ostream::flush();
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "# ARKit image dump", 18);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v24, MEMORY[0x1E69E5318]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v24);
    std::ostream::put();
    std::ostream::flush();
    v13 = MEMORY[0x1C691A6C0](buf, WidthOfPlane);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " ", 1);
    v15 = MEMORY[0x1C691A6C0](v14, HeightOfPlane);
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(&v24, MEMORY[0x1E69E5318]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&v24);
    std::ostream::put();
    std::ostream::flush();
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "255", 3);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v24, MEMORY[0x1E69E5318]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v24);
    std::ostream::put();
    std::ostream::flush();
    for (; HeightOfPlane; --HeightOfPlane)
    {
      std::ostream::write();
      BaseAddressOfPlane += BytesPerRowOfPlane;
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear(&buf[*(*buf - 24)], *&v26[*(*buf - 24) + 24] | 4);
    }

    CVPixelBufferUnlockBaseAddress(a1, 0);
    *buf = *MEMORY[0x1E69E54D0];
    *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D0] + 24);
    MEMORY[0x1C691A5C0](v26);
    std::ostream::~ostream();
    MEMORY[0x1C691A740](v27);
    v19 = 0;
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARSaveIOSurfaceRAW_cold_1();
    }

    v20 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v21 = _ARLogGeneral();
    v22 = v21;
    if (v20 == 1)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_ERROR, "Supported formats are kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange, kCVPixelFormatType_420YpCbCr8BiPlanarFullRange or kCVPixelFormatType_OneComponent8", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_INFO, "Error: Supported formats are kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange, kCVPixelFormatType_420YpCbCr8BiPlanarFullRange or kCVPixelFormatType_OneComponent8", buf, 2u);
    }

    v19 = 4294960616;
  }

  return v19;
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x1E69E5530] + 64;
  a1[52] = MEMORY[0x1E69E5530] + 64;
  v3 = *(MEMORY[0x1E69E54D0] + 16);
  v4 = *(MEMORY[0x1E69E54D0] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5530] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x1C691A5B0](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1C2576EB8(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1C691A740](v1);
  _Unwind_Resume(a1);
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x1E69E54D0];
  v3 = *MEMORY[0x1E69E54D0];
  *a1 = *MEMORY[0x1E69E54D0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1C691A5C0](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x1C691A740](a1 + 52);
  return a1;
}

uint64_t ARSavePixelBufferPPM(__CVBuffer *a1, void *a2)
{
  v50[19] = *MEMORY[0x1E69E9840];
  v3 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType <= 875704437)
  {
    if (PixelFormatType == 32)
    {
      goto LABEL_8;
    }

    v5 = 875704422;
  }

  else
  {
    if (PixelFormatType == 875704438 || PixelFormatType == 1111970369)
    {
LABEL_8:
      pixelBuffer = 0;
      if ((PixelFormatType & 0x7E77726F) == 0x34323066)
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
        v8 = CVPixelBufferCreate(*MEMORY[0x1E695E480], WidthOfPlane, HeightOfPlane, 0x20u, 0, &pixelBuffer);
        if (v8)
        {
          if (ARShouldUseLogTypeError(void)::onceToken != -1)
          {
            ARSavePixelBufferPNG_cold_1();
          }

          v9 = ARShouldUseLogTypeError(void)::internalOSVersion;
          v10 = _ARLogGeneral();
          v11 = v10;
          if (v9 == 1)
          {
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_ERROR, "Could not create image buffer of type kCVPixelFormatType_32ARGB", buf, 2u);
            }
          }

          else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "Error: Could not create image buffer of type kCVPixelFormatType_32ARGB", buf, 2u);
          }

LABEL_63:

          goto LABEL_64;
        }

        v8 = ARPixelBufferConvertYCbCrToARGB(a1, &pixelBuffer);
        if (v8)
        {
          if (ARShouldUseLogTypeError(void)::onceToken != -1)
          {
            ARSavePixelBufferPNG_cold_1();
          }

          v35 = ARShouldUseLogTypeError(void)::internalOSVersion;
          v36 = _ARLogGeneral();
          v11 = v36;
          if (v35 == 1)
          {
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_ERROR, "Could not convert pixel formats", buf, 2u);
            }
          }

          else if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "Error: Could not convert pixel formats", buf, 2u);
          }

          goto LABEL_63;
        }
      }

      else
      {
        pixelBuffer = a1;
        CVPixelBufferRetain(a1);
      }

      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      v12 = CVPixelBufferGetPixelFormatType(pixelBuffer);
      v13 = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
      v14 = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
      v17 = v3;
      [v3 UTF8String];
      std::ofstream::basic_ofstream(buf);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "P6", 2);
      std::ios_base::getloc((v18 + *(*v18 - 24)));
      v19 = std::locale::use_facet(&v47, MEMORY[0x1E69E5318]);
      (v19->__vftable[2].~facet_0)(v19, 10);
      std::locale::~locale(&v47);
      std::ostream::put();
      std::ostream::flush();
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "# ARKit image dump", 18);
      std::ios_base::getloc((v20 + *(*v20 - 24)));
      v21 = std::locale::use_facet(&v47, MEMORY[0x1E69E5318]);
      (v21->__vftable[2].~facet_0)(v21, 10);
      std::locale::~locale(&v47);
      std::ostream::put();
      std::ostream::flush();
      v22 = MEMORY[0x1C691A6C0](buf, v13);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " ", 1);
      v24 = MEMORY[0x1C691A6C0](v23, v14);
      std::ios_base::getloc((v24 + *(*v24 - 24)));
      v25 = std::locale::use_facet(&v47, MEMORY[0x1E69E5318]);
      (v25->__vftable[2].~facet_0)(v25, 10);
      std::locale::~locale(&v47);
      std::ostream::put();
      std::ostream::flush();
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "255", 3);
      std::ios_base::getloc((v26 + *(*v26 - 24)));
      v27 = std::locale::use_facet(&v47, MEMORY[0x1E69E5318]);
      (v27->__vftable[2].~facet_0)(v27, 10);
      std::locale::~locale(&v47);
      std::ostream::put();
      std::ostream::flush();
      switch(v12)
      {
        case 0x20u:
          if (v14)
          {
            v41 = 0;
            v42 = BaseAddressOfPlane + 3;
            do
            {
              v43 = v13;
              for (i = v42; v43; --v43)
              {
                ARSavePixelBufferPPM::color = *(i - 2);
                byte_1EBF43499 = *(i - 1);
                byte_1EBF4349A = *i;
                std::ostream::write();
                i += 4;
              }

              ++v41;
              v42 += BytesPerRowOfPlane;
            }

            while (v41 != v14);
          }

          break;
        case 0x42475241u:
          if (v14)
          {
            v37 = 0;
            v38 = BaseAddressOfPlane + 2;
            do
            {
              v39 = v13;
              for (j = v38; v39; --v39)
              {
                ARSavePixelBufferPPM::color = *j;
                byte_1EBF4349C = *(j - 1);
                byte_1EBF4349D = *(j - 2);
                std::ostream::write();
                j += 4;
              }

              ++v37;
              v38 += BytesPerRowOfPlane;
            }

            while (v37 != v14);
          }

          break;
        case 0x4C303038u:
          if (v14)
          {
            for (k = 0; k != v14; ++k)
            {
              v29 = v13;
              for (m = BaseAddressOfPlane; v29; --v29)
              {
                ARSavePixelBufferPPM::color = *m;
                byte_1EBF4349F = ARSavePixelBufferPPM::color;
                v31 = *m++;
                byte_1EBF434A0 = v31;
                std::ostream::write();
              }

              BaseAddressOfPlane += BytesPerRowOfPlane;
            }
          }

          break;
        default:
          v8 = 4294960616;
          goto LABEL_55;
      }

      v8 = 0;
LABEL_55:
      if (!std::filebuf::close())
      {
        std::ios_base::clear(&buf[*(*buf - 24)], *&v49[*(*buf - 24) + 24] | 4);
      }

      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      CVPixelBufferRelease(pixelBuffer);
      *buf = *MEMORY[0x1E69E54D0];
      *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D0] + 24);
      MEMORY[0x1C691A5C0](v49);
      std::ostream::~ostream();
      MEMORY[0x1C691A740](v50);
      goto LABEL_64;
    }

    v5 = 1278226488;
  }

  if (PixelFormatType == v5)
  {
    goto LABEL_8;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    ARSaveIOSurfaceRAW_cold_1();
  }

  v32 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v33 = _ARLogGeneral();
  v34 = v33;
  if (v32 == 1)
  {
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C241C000, v34, OS_LOG_TYPE_ERROR, "Supported formats are kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange, kCVPixelFormatType_420YpCbCr8BiPlanarFullRange, kCVPixelFormatType_OneComponent8 or kCVPixelFormatType_32ARGB", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C241C000, v34, OS_LOG_TYPE_INFO, "Error: Supported formats are kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange, kCVPixelFormatType_420YpCbCr8BiPlanarFullRange, kCVPixelFormatType_OneComponent8 or kCVPixelFormatType_32ARGB", buf, 2u);
  }

  v8 = 4294960616;
LABEL_64:

  return v8;
}

uint64_t ARSavePixelBufferEXR(__CVBuffer *a1, void *a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = PixelFormatType;
  if (PixelFormatType == 843264104 || PixelFormatType == 1380411457)
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
    pixelBufferOut = 0;
    if (v5 != 1380411457)
    {
      if (v5 == 843264104)
      {
        v8 = CVPixelBufferCreate(*MEMORY[0x1E695E480], WidthOfPlane, HeightOfPlane, 0x52476841u, 0, &pixelBufferOut);
        if (v8)
        {
          if (ARShouldUseLogTypeError(void)::onceToken != -1)
          {
            ARSavePixelBufferPNG_cold_1();
          }

          v9 = ARShouldUseLogTypeError(void)::internalOSVersion;
          v10 = _ARLogGeneral();
          v11 = v10;
          if (v9 == 1)
          {
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              LODWORD(keys[0]) = 67109120;
              HIDWORD(keys[0]) = v8;
              v12 = "CVPixelBufferCreate failed to create pixel buffer of type kCVPixelFormatType_128RGBAFloat with error %i";
LABEL_28:
              v29 = v11;
              v30 = OS_LOG_TYPE_ERROR;
LABEL_44:
              _os_log_impl(&dword_1C241C000, v29, v30, v12, keys, 8u);
              goto LABEL_49;
            }

            goto LABEL_49;
          }

          if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            goto LABEL_49;
          }

          LODWORD(keys[0]) = 67109120;
          HIDWORD(keys[0]) = v8;
          v12 = "Error: CVPixelBufferCreate failed to create pixel buffer of type kCVPixelFormatType_128RGBAFloat with error %i";
          goto LABEL_43;
        }

        v8 = ARPixelBufferConvertTwoComponent16HalfToRGBAHalf(a1, &pixelBufferOut);
        if (!v8)
        {
LABEL_18:
          CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 0);
          DataSize = CVPixelBufferGetDataSize(pixelBufferOut);
          v18 = CGDataProviderCreateWithData(0, BaseAddressOfPlane, DataSize, 0);
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
          BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
          v21 = CGImageCreate(WidthOfPlane, HeightOfPlane, 0x10uLL, 0x40uLL, BytesPerRow, DeviceRGB, 0x1103u, v18, 0, 0, kCGRenderingIntentDefault);
          v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:0];
          v22 = *MEMORY[0x1E695E480];
          v23 = CFStringCreateWithCString(*MEMORY[0x1E695E480], "com.ilm.openexr-image", 0x8000100u);
          v24 = CGImageDestinationCreateWithURL(v11, v23, 1uLL, 0);
          keys[0] = *MEMORY[0x1E696D2C8];
          values = *MEMORY[0x1E695E4D0];
          v25 = CFDictionaryCreate(v22, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CGImageDestinationAddImage(v24, v21, v25);
          v26 = CGImageDestinationFinalize(v24);
          if (v24)
          {
            CFRelease(v24);
          }

          CFRelease(v25);
          CFRelease(v23);
          CGImageRelease(v21);
          CGColorSpaceRelease(DeviceRGB);
          CGDataProviderRelease(v18);
          CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
          CVPixelBufferRelease(pixelBufferOut);
          if (v26)
          {
            v8 = 0;
            goto LABEL_49;
          }

          if (ARShouldUseLogTypeError(void)::onceToken != -1)
          {
            ARSavePixelBufferPNG_cold_1();
          }

          v31 = ARShouldUseLogTypeError(void)::internalOSVersion;
          v32 = _ARLogGeneral();
          v33 = v32;
          if (v31 == 1)
          {
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v34 = "Could not save image to file";
              v35 = v33;
              v36 = OS_LOG_TYPE_ERROR;
LABEL_47:
              _os_log_impl(&dword_1C241C000, v35, v36, v34, buf, 2u);
            }
          }

          else if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v34 = "Error: Could not save image to file";
            v35 = v33;
            v36 = OS_LOG_TYPE_INFO;
            goto LABEL_47;
          }

          v8 = 4294960636;
          goto LABEL_49;
        }
      }

      else
      {
        v8 = 4294960636;
      }

      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        ARSavePixelBufferPNG_cold_1();
      }

      v27 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v28 = _ARLogGeneral();
      v11 = v28;
      if (v27 == 1)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          LODWORD(keys[0]) = 67109120;
          HIDWORD(keys[0]) = v8;
          v12 = "Could not convert pixel formats with error: %i";
          goto LABEL_28;
        }

LABEL_49:

        goto LABEL_50;
      }

      if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_49;
      }

      LODWORD(keys[0]) = 67109120;
      HIDWORD(keys[0]) = v8;
      v12 = "Error: Could not convert pixel formats with error: %i";
LABEL_43:
      v29 = v11;
      v30 = OS_LOG_TYPE_INFO;
      goto LABEL_44;
    }

    pixelBufferOut = a1;
    CVPixelBufferRetain(a1);
    goto LABEL_18;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    ARSaveIOSurfaceRAW_cold_1();
  }

  v13 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v14 = _ARLogGeneral();
  v15 = v14;
  if (v13 == 1)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(pixelBufferOut) = 0;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_ERROR, "Supported pixel formats are kCVPixelFormatType_64RGBAHalf, kCVPixelFormatType_TwoComponent16Half", &pixelBufferOut, 2u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    LOWORD(pixelBufferOut) = 0;
    _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "Error: Supported pixel formats are kCVPixelFormatType_64RGBAHalf, kCVPixelFormatType_TwoComponent16Half", &pixelBufferOut, 2u);
  }

  v8 = 4294960616;
LABEL_50:

  return v8;
}

uint64_t ARResizeBufferWithNearestNeighbors(__CVBuffer *a1, __CVBuffer *a2, size_t a3)
{
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  v23 = CVPixelBufferGetHeight(a2);
  v8 = CVPixelBufferGetWidth(a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a2))
  {
    return 4294960616;
  }

  result = 4294960615;
  if (Height && Width && v23 && v8)
  {
    v11 = Height / v23;
    v12 = Width / v8;
    CVPixelBufferLockBaseAddress(a1, 0);
    CVPixelBufferLockBaseAddress(a2, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    pixelBuffer = a1;
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    v15 = CVPixelBufferGetBaseAddress(a2);
    v22 = a2;
    v16 = CVPixelBufferGetBytesPerRow(a2);
    for (i = 0; i != v23; ++i)
    {
      v18 = 0;
      v19 = &BaseAddress[BytesPerRow * vcvtms_u32_f32(v11 * i)];
      v20 = v15;
      do
      {
        memcpy(v20, &v19[vcvtas_u32_f32(v12 * v18++) * a3], a3);
        v20 += a3;
      }

      while (v8 != v18);
      v15 += v16;
    }

    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    CVPixelBufferUnlockBaseAddress(v22, 0);
    return 0;
  }

  return result;
}

BOOL ARDrawNormalizedCGRectIntoYUVPixelBuffer(__CVBuffer *a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = CVPixelBufferGetPixelFormatType(a1) & 0xFFFFFFEF;
  if (v12 == 875704422)
  {
    v55.origin.x = 0.0;
    v55.origin.y = 0.0;
    v55.size.width = 1.0;
    v55.size.height = 1.0;
    v53.origin.x = a3;
    v53.origin.y = a4;
    v53.size.width = a5;
    v53.size.height = a6;
    v54 = CGRectIntersection(v53, v55);
    x = v54.origin.x;
    y = v54.origin.y;
    width = v54.size.width;
    height = v54.size.height;
    CVPixelBufferLockBaseAddress(a1, 0);
    v51 = 0u;
    v52 = 0u;
    ARWrapCVPixelBufferPlaneVImage(a1, 0, &v51);
    v49 = 0u;
    v50 = 0u;
    ARWrapCVPixelBufferPlaneVImage(a1, 1uLL, &v49);
    v16 = (x * v52);
    v17 = *(&v51 + 1);
    v18 = (y * *(&v51 + 1));
    v19 = (width * v52);
    v20 = v50;
    v21 = *(&v49 + 1);
    v22 = a2;
    v23 = BYTE1(a2);
    v24 = BYTE2(a2);
    v25 = v23 * 0.504 + v22 * 0.257 + v24 * 0.098 + 16.0;
    v26 = v25;
    v27 = v19 + v16;
    if (v19 + v16 <= v52 - 1)
    {
      v28 = v50;
      if (v18 + 5 <= *(&v51 + 1) - 1)
      {
        dest.data = (v51 + *(&v52 + 1) * v18 + v16);
        dest.height = 5;
        dest.width = (width * v52);
        dest.rowBytes = *(&v52 + 1);
        vImageOverwriteChannelsWithScalar_Planar8(v25, &dest, 0x10u);
        v28 = v50;
      }
    }

    else
    {
      v28 = v50;
    }

    v29 = v20;
    v30 = (x * v20);
    v31 = v21;
    v32 = (y * v21);
    v33 = (width * v29);
    v45 = (v23 * -0.291 + v22 * -0.148 + v24 * 0.439 + 128.0);
    v44 = (v23 * -0.368 + v22 * 0.439 + v24 * -0.071 + 128.0);
    v34 = v33 + v30;
    if (v33 + v30 <= v28 - 1 && v32 + 5 <= *(&v49 + 1) - 1)
    {
      v47.data = (v49 + *(&v50 + 1) * v32 + 2 * v30);
      v47.height = 5;
      v47.width = (width * v29);
      v47.rowBytes = *(&v50 + 1);
      vImageOverwriteChannelsWithScalar_Planar16U(v45 | (v44 << 8), &v47, 0x10u);
      v32 = (y * v21);
    }

    v43 = v18;
    v35 = v18 + (height * v17);
    if (v27 <= v52 - 1)
    {
      v36 = v35 + -5.0;
      if (v36 + 5 <= *(&v51 + 1) - 1)
      {
        dest.data = (v51 + *(&v52 + 1) * v36 + v16);
        dest.height = 5;
        dest.width = v19;
        dest.rowBytes = *(&v52 + 1);
        vImageOverwriteChannelsWithScalar_Planar8(v26, &dest, 0x10u);
        v32 = (y * v21);
      }
    }

    scalar = v26;
    v37 = v32 + (height * v31);
    if (v34 <= v50 - 1)
    {
      v38 = v37 + -5.0;
      if (v38 + 5 <= *(&v49 + 1) - 1)
      {
        v47.data = (v49 + *(&v50 + 1) * v38 + 2 * v30);
        v47.height = 5;
        v47.width = v33;
        v47.rowBytes = *(&v50 + 1);
        vImageOverwriteChannelsWithScalar_Planar16U(v45 | (v44 << 8), &v47, 0x10u);
        v32 = (y * v21);
      }
    }

    if (v16 + 5 <= v52 - 1 && v35 <= *(&v51 + 1) - 1)
    {
      dest.data = (v51 + *(&v52 + 1) * v43 + v16);
      dest.height = (height * v17);
      dest.width = 5;
      dest.rowBytes = *(&v52 + 1);
      vImageOverwriteChannelsWithScalar_Planar8(scalar, &dest, 0x10u);
      v32 = (y * v21);
    }

    if (v30 + 5 <= v50 - 1 && v37 <= *(&v49 + 1) - 1)
    {
      v47.data = (v49 + *(&v50 + 1) * v32 + 2 * v30);
      v47.height = (height * v31);
      v47.width = 5;
      v47.rowBytes = *(&v50 + 1);
      vImageOverwriteChannelsWithScalar_Planar16U(v45 | (v44 << 8), &v47, 0x10u);
      v32 = (y * v21);
    }

    v39 = v27 + -5.0;
    if (v39 + 5 <= v52 - 1 && v35 <= *(&v51 + 1) - 1)
    {
      dest.data = (v51 + *(&v52 + 1) * v43 + v39);
      dest.height = (height * v17);
      dest.width = 5;
      dest.rowBytes = *(&v52 + 1);
      vImageOverwriteChannelsWithScalar_Planar8(scalar, &dest, 0x10u);
      v32 = (y * v21);
    }

    v40 = (v34 + -5.0);
    if (v40 + 5 <= v50 - 1 && v37 <= *(&v49 + 1) - 1)
    {
      v47.data = (v49 + *(&v50 + 1) * v32 + 2 * v40);
      v47.height = (height * v31);
      v47.width = 5;
      v47.rowBytes = *(&v50 + 1);
      vImageOverwriteChannelsWithScalar_Planar16U(v45 | (v44 << 8), &v47, 0x10u);
    }

    CVPixelBufferUnlockBaseAddress(a1, 0);
  }

  return v12 == 875704422;
}

uint64_t ___ZL23ARShouldUseLogTypeErrorv_block_invoke_26()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError(void)::internalOSVersion = result;
  return result;
}

void ___ZL13_ARLogGeneralv_block_invoke_27()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral(void)::logObj;
  _ARLogGeneral(void)::logObj = v0;
}

uint64_t cva::ArrayIterator<float,2u>::increment(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1)
  {
    cva::ArrayIterator<float,2u>::increment();
  }

  v2 = *(result + 16);
  v3 = v1 + v2;
  v4 = *(result + 24) + 1;
  *(result + 24) = v4;
  if (v4 == *(result + 8))
  {
    v5 = (v2 * v4);
    v6 = *(result + 28) + 1;
    v3 = v3 - v5 + *(result + 20);
    *(result + 24) = 0;
    *(result + 28) = v6;
  }

  *(result + 32) = v3;
  return result;
}

void *cva::Array<cva::Matrix<unsigned char,4u,1u,false>,2u,16u>::allocate(uint64_t a1, uint64_t a2)
{
  size = *(a1 + 4) * *(a2 + 4);
  if (!size)
  {
    return 0;
  }

  result = malloc_type_malloc(size, 0x100004052888210uLL);
  if (!result)
  {
    cva::Array<cva::Matrix<unsigned char,4u,1u,false>,2u,16u>::allocate();
  }

  return result;
}

void *cva::Array<unsigned short,2u,16u>::allocate(uint64_t a1, uint64_t a2)
{
  size = *(a1 + 4) * *(a2 + 4);
  if (!size)
  {
    return 0;
  }

  result = malloc_type_malloc(size, 0x1000040BDFB0063uLL);
  if (!result)
  {
    cva::Array<cva::Matrix<unsigned char,4u,1u,false>,2u,16u>::allocate();
  }

  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1C691A660](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
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

  MEMORY[0x1C691A670](v13);
  return a1;
}

void sub_1C2578858(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1C691A670](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1C2578838);
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

void sub_1C2578A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id _ARLogGeneral_42()
{
  if (_ARLogGeneral_onceToken_44 != -1)
  {
    _ARLogGeneral_cold_1_42();
  }

  v1 = _ARLogGeneral_logObj_44;

  return v1;
}

void sub_1C257926C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void (*a16)(char *))
{
  a16(&a14);
  os_unfair_lock_unlock(v16 + 6);
  _Unwind_Resume(a1);
}

id CreateDrawDatasFromFrame(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MEMORY[0x1E695DF70];
  v3 = [v1 anchors];
  v4 = [v2 arrayWithCapacity:{objc_msgSend(v3, "count") + 1}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [v1 anchors];
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if ([v9 isMemberOfClass:objc_opt_class()])
        {
          v10 = 16711680;
        }

        else
        {
          v10 = 255;
        }

        v11 = [DrawData alloc];
        [v9 transform];
        LODWORD(v12) = 10.0;
        v14 = [(DrawData *)v11 initWithPosition:v10 size:v13 color:v12];
        [v4 addObject:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v15 = [DrawData alloc];
  LODWORD(v16) = 30.0;
  v17 = [(DrawData *)v15 initWithPosition:0xFFFFFFLL size:0.0 color:v16];
  [v4 addObject:v17];

  return v4;
}

void DrawOntoPixelBufferBGRA(__CVBuffer *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  CVPixelBufferLockBaseAddress(a1, 0);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v38 = __DrawOntoPixelBufferBGRA_block_invoke;
  v39 = &__block_descriptor_40_e5_v8__0l;
  v40 = a1;
  v36[0] = CVPixelBufferGetBaseAddress(a1);
  v36[1] = CVPixelBufferGetHeight(a1);
  v36[2] = CVPixelBufferGetWidth(a1);
  v36[3] = CVPixelBufferGetBytesPerRow(a1);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v9)
  {
    v10 = *v33;
    v11 = *MEMORY[0x1E695F060];
    v12 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        [v14 position];
        v31 = v15;
        [v7 transform];
        v44 = __invert_f4(v43);
        v44.columns[0] = vaddq_f32(v44.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44.columns[0], v31.f32[0]), v44.columns[1], *v31.f32, 1), v44.columns[2], v31, 2));
        v44.columns[1] = vmulq_f32(v44.columns[0], v44.columns[0]);
        v16 = sqrtf(v44.columns[1].f32[2] + vaddv_f32(*v44.columns[1].f32));
        if (v44.columns[0].i32[2] >= 0)
        {
          v17 = -v16;
        }

        else
        {
          v17 = v16;
        }

        v18 = v17;
        if (v17 >= 0.05)
        {
          [v14 size];
          v20 = (v19 / v17);
          if (v20 <= 3)
          {
            v21 = 3;
          }

          else
          {
            v21 = v20;
          }

          v22 = v11;
          v23 = v12;
          if (a1)
          {
            Width = CVPixelBufferGetWidth(a1);
            Height = CVPixelBufferGetHeight(a1);
            v22 = Width;
            v23 = Height;
          }

          [v7 projectPoint:3 orientation:*v31.i64 viewportSize:{v22, v23}];
          v27 = v26;
          v29 = v28;
          v3 = v3 & 0xFFFFFFFFFF000000 | [v14 color] & 0xFFFFFF;
          v30.f64[0] = v29;
          DrawRectOfSize(v21, v3, v36, v27, v30);
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v32 objects:v41 count:{16, v18}];
    }

    while (v9);
  }

  v38(v37);
}

float SignedDistance(void *a1, float32x4_t a2)
{
  [a1 transform];
  v6 = __invert_f4(v5);
  v6.columns[0] = vaddq_f32(v6.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6.columns[0], a2.f32[0]), v6.columns[1], *a2.f32, 1), v6.columns[2], a2, 2));
  v6.columns[1] = vmulq_f32(v6.columns[0], v6.columns[0]);
  v2 = sqrtf(v6.columns[1].f32[2] + vaddv_f32(*v6.columns[1].f32));
  result = -v2;
  if (v6.columns[0].i32[2] < 0)
  {
    return v2;
  }

  return result;
}

vImage_Error DrawRectOfSize(vImage_Error result, unint64_t a2, uint64_t a3, float64_t a4, float64x2_t a5)
{
  a5.f64[1] = a4;
  v7 = vmovn_s64(vcvtq_s64_f64(a5));
  if ((v7.i32[1] & 0x80000000) == 0 && (v7.i32[0] & 0x80000000) == 0)
  {
    v8 = *(a3 + 8);
    v9 = *(a3 + 16);
    v10 = *(a3 + 8);
    if (v9 > v7.u32[1] && v10 > v7.u32[0] && v9 >= result && v10 >= result)
    {
      v22 = v5;
      v23 = v6;
      v13 = a2;
      v14 = a2 >> 8;
      v15 = a2 >> 16;
      v16.i64[0] = -1;
      v16.i64[1] = -1;
      v17 = vaddq_s64(v8, v16);
      v18 = *(a3 + 24);
      v19 = vmax_s32(vadd_s32(vdup_n_s32(result / -2), v7), 0);
      v20 = vdupq_n_s64(result);
      v21.data = (*a3 + v18 * v19.u32[0] + (4 * v19.i32[1]));
      *&v21.height = vbslq_s8(vcgtq_u64(vaddw_u32(v20, v19), v17), vsubw_u32(v17, v19), v20);
      v21.rowBytes = v18;
      vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, &v21, &v21, 1u, 0x10u);
      vImageOverwriteChannelsWithScalar_ARGB8888(v13, &v21, &v21, 2u, 0x10u);
      vImageOverwriteChannelsWithScalar_ARGB8888(v14, &v21, &v21, 4u, 0x10u);
      return vImageOverwriteChannelsWithScalar_ARGB8888(v15, &v21, &v21, 8u, 0x10u);
    }
  }

  return result;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_48()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_47 = result;
  return result;
}

id ARCreateInstanceOfType(objc_class *a1)
{
  Instance = class_createInstance(a1, 0);

  return Instance;
}

id ARGetPropertiesForType(objc_class *a1)
{
  outCount = 0;
  v1 = class_copyPropertyList(a1, &outCount);
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v3 = [v2 initWithCapacity:outCount];
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:property_getName(v1[i])];
      [v3 addObject:v5];
    }
  }

  free(v1);

  return v3;
}

id ARGetTypeOfProperty(objc_class *a1, id a2)
{
  v4 = a2;
  Property = class_getProperty(a1, [a2 UTF8String]);
  if (Property)
  {
    v6 = property_copyAttributeValue(Property, "T");
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    free(v6);
    if ([v7 hasPrefix:@"@"])
    {
      v8 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"@(.*)" options:0 error:0];
      v9 = [v8 matchesInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
      v10 = [v9 firstObject];
      if ([v10 numberOfRanges])
      {
        v11 = [v10 rangeAtIndex:1];
        v13 = [v7 substringWithRange:{v11, v12}];
        v14 = NSClassFromString(v13);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id ARGetValueOfProperty(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = NSSelectorFromString(v4);
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v6 = objc_opt_class(), ARGetTypeOfProperty(v6, v4)))
  {
    v7 = ([v3 methodForSelector:v5])(v3, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void ARSetValueOfIvar(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  obj = a1;
  v7 = objc_opt_class();
  v8 = [v6 UTF8String];

  InstanceVariable = class_getInstanceVariable(v7, v8);
  object_setIvar(obj, InstanceVariable, v5);
}

BOOL ARTypeIsSubclassOfType(objc_class *a1, objc_class *a2)
{
  Superclass = class_getSuperclass(a1);
  for (i = Superclass != 0; Superclass != a2 && Superclass; i = Superclass != 0)
  {
    Superclass = class_getSuperclass(Superclass);
  }

  return i;
}

double ARRotateCovariance(double a1, double a2, __n128 a3, int32x4_t a4, int32x4_t a5, int32x4_t a6)
{
  v6 = 0;
  v7 = vzip1q_s32(a4, a6);
  v8 = vzip1q_s32(v7, a5);
  v9 = vzip1q_s32(vzip2q_s32(a4, a6), vdupq_laneq_s32(a5, 2));
  v10 = vzip2q_s32(v7, vdupq_lane_s32(*a5.i8, 1));
  v17 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  do
  {
    *(&v18 + v6 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, COERCE_FLOAT(v16[v6])), a5, *&v16[v6], 1), a6, v16[v6], 2);
    ++v6;
  }

  while (v6 != 3);
  v11 = 0;
  v8.i32[3] = 0;
  v10.i32[3] = 0;
  v9.i32[3] = 0;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v16[0] = v8;
  v16[1] = v10;
  v17 = v9;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  do
  {
    *(&v18 + v11 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(v16[v11])), v13, *&v16[v11], 1), v14, v16[v11], 2);
    ++v11;
  }

  while (v11 != 3);
  return *v18.i64;
}

__n64 ARPointVarianceVIOFeature()
{
  result.n64_u32[0] = k_viofeature_variance_xy;
  result.n64_u32[1] = k_viofeature_variance_xy;
  return result;
}

double ARPointCovarianceVIOFeature(__n128 a1, int32x4_t a2, int32x4_t a3, int32x4_t a4, float a5)
{
  v8 = sqrtf(1.0 - (a5 * a5));
  *&v9 = ((a1.n128_f32[2] / (v8 / a5)) * *&k_viofeature_normalized_disparity_error) * ((a1.n128_f32[2] / (v8 / a5)) * *&k_viofeature_normalized_disparity_error);
  v10.n128_u64[0] = 0;
  LODWORD(v11) = 0;
  HIDWORD(v11) = k_viofeature_variance_xy;
  v10.n128_u64[1] = v9;
  return ARRotateCovariance(COERCE_DOUBLE(k_viofeature_variance_xy), v11, v10, a2, a3, a4);
}

__n64 ARPointVarianceJasper()
{
  result.n64_u32[0] = k_jasper_variance_uv;
  result.n64_u32[1] = k_jasper_variance_uv;
  return result;
}

double ARPointCovarianceJasper(__n128 a1, int32x4_t a2, int32x4_t a3, int32x4_t a4)
{
  a1.n128_f32[0] = *&k_jasper_max_z - a1.n128_f32[2];
  if ((*&k_jasper_max_z - a1.n128_f32[2]) < 0.0)
  {
    a1.n128_f32[0] = 0.0;
  }

  v7.n128_u64[0] = 0;
  LODWORD(v8) = 0;
  HIDWORD(v8) = k_jasper_variance_uv;
  v7.n128_u64[1] = COERCE_UNSIGNED_INT(*&k_jasper_variance_z * (1.0 - (a1.n128_f32[0] / *&k_jasper_max_z)));
  return ARRotateCovariance(COERCE_DOUBLE(k_jasper_variance_uv), v8, v7, a2, a3, a4);
}

double arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>::KeyMapBuffer(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = a2;
  return result;
}

{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = a2;
  return result;
}

uint64_t *arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>::insert(uint64_t a1, std::locale::__imp *a2, char **a3)
{
  std::deque<void const*>::push_front((a1 + 40), a2);
  if (std::__hash_table<std::__hash_value_type<void const*,std::vector<unsigned char>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<unsigned char>>>>::find<void const*>(a1, a2))
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Key already in buffer", 21);
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v7 = std::locale::use_facet(&v11, MEMORY[0x1E69E5318]);
    (v7->__vftable[2].~facet_0)(v7, 10);
    std::locale::~locale(&v11);
    std::ostream::put();
    std::ostream::flush();
  }

  v11.__locale_ = a2;
  result = std::__hash_table<std::__hash_value_type<void const*,std::vector<unsigned char>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<unsigned char>>>>::__emplace_unique_key_args<void const*,std::piecewise_construct_t const&,std::tuple<void const* const&>,std::tuple<>>(a1, a2) + 3;
  if (result != a3)
  {
    result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(result, *a3, a3[1], a3[1] - *a3);
  }

  v9 = *(a1 + 80);
  if (v9 > *(a1 + 88))
  {
    v10 = v9 - 1;
    v11.__locale_ = *(*(*(a1 + 48) + (((*(a1 + 72) + v10) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 72) + v10) & 0x1FF));
    *(a1 + 80) = v10;
    std::deque<void const*>::__maybe_remove_back_spare[abi:ne200100]((a1 + 40), 1);
    return std::__hash_table<std::__hash_value_type<void const*,std::vector<unsigned char>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<unsigned char>>>>::__erase_unique<void const*>(a1, &v11);
  }

  return result;
}

const void **std::deque<void const*>::push_front(const void **result, void *a2)
{
  v3 = result;
  v4 = result[4];
  if (!v4)
  {
    result = std::deque<void const*>::__add_front_capacity(result);
    v4 = v3[4];
  }

  v5 = v3[1];
  v6 = &v5[8 * (v4 >> 9)];
  if (v3[2] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 8 * (v4 & 0x1FF);
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 8) = *a2;
  v8 = v3[5] + 1;
  v3[4] = (v4 - 1);
  v3[5] = v8;
  return result;
}

BOOL arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>::find(void *a1, void *a2, void *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<void const*,std::vector<unsigned char>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<unsigned char>>>>::find<void const*>(a1, a2);
  v5 = v4;
  if (a3 && v4 && v4 + 3 != a3)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, v4[3], v4[4], v4[4] - v4[3]);
  }

  return v5 != 0;
}

void *arkit::wrapRawData@<X0>(arkit *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *std::vector<unsigned char>::vector[abi:ne200100](a3, a2);

  return memcpy(v5, this, a2);
}

const void **std::deque<void const*>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 6) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x200)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::allocator<void const**>::allocate_at_least[abi:ne200100](a1, v10);
  }

  *(a1 + 32) = v5 + 512;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<void const**>::emplace_front<void const**&>(a1, v11);
}

void sub_1C257B39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **std::__split_buffer<void const**>::emplace_front<void const**&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<void const**>::allocate_at_least[abi:ne200100](result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<void const**>::emplace_back<void const**>(void *result, void *a2)
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

      std::allocator<void const**>::allocate_at_least[abi:ne200100](result, v11);
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

      std::allocator<void const**>::allocate_at_least[abi:ne200100](result[4], v11);
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

void std::allocator<void const**>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__hash_table<std::__hash_value_type<void const*,std::vector<unsigned char>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<unsigned char>>>>::__emplace_unique_key_args<void const*,std::piecewise_construct_t const&,std::tuple<void const* const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void const*,std::vector<unsigned char>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::deque<void const*>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t *std::__hash_table<std::__hash_value_type<void const*,std::vector<unsigned char>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<unsigned char>>>>::__erase_unique<void const*>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<void const*,std::vector<unsigned char>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<unsigned char>>>>::find<void const*>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<void const*,std::vector<unsigned char>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<unsigned char>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<void const*,std::vector<unsigned char>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<unsigned char>>>>::find<void const*>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<void const*,std::vector<unsigned char>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<unsigned char>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<void const*,std::vector<unsigned char>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<unsigned char>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void const*,std::vector<unsigned char>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<void const*,std::vector<unsigned char>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<unsigned char>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<unsigned char>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void sub_1C257BED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C257CC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

float ARVoxelSizeForSceneReconstructionOptions(void *a1)
{
  v1 = [a1 voxelSize];
  v2 = 0.05;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 0.01;
    }

    else if (v1 == 4)
    {
      return 0.0;
    }
  }

  else if (v1)
  {
    if (v1 == 2)
    {
      return 0.03;
    }
  }

  else
  {
    v3 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.sceneReconstruction.voxelSize"];
    [v3 doubleValue];
    v2 = v4;
  }

  return v2;
}

uint64_t ARBucketsOrderOfMagnitudeForSceneReconstructionOptions(void *a1)
{
  v1 = [a1 bucketsCount];
  v2 = 0x11100D11u >> (8 * v1);
  if (v1 >= 4)
  {
    LOBYTE(v2) = 13;
  }

  return v2;
}

unint64_t SemanticFromARMeshClassification(unsigned int a1)
{
  v1 = 0x6070F1303010200uLL >> (8 * a1);
  if (a1 >= 8)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 0x1F;
}

uint64_t ARMeshClassificationFromSemantic(uint64_t result)
{
  if (result > 14)
  {
    if (result <= 17)
    {
      if (result != 15)
      {
        if (result != 16)
        {
          return 0;
        }

        return 4;
      }
    }

    else if (result != 18)
    {
      if (result != 19)
      {
        if (result == 31)
        {
          return 7;
        }

        return 0;
      }

      return 4;
    }

    return 5;
  }

  if (result > 5)
  {
    if ((result - 7) < 2)
    {
      return 6;
    }

    if (result == 6)
    {
      return 7;
    }

    return 0;
  }

  if (result == 1)
  {
    return 2;
  }

  if (result == 2)
  {
    return 1;
  }

  if (result != 3)
  {
    return 0;
  }

  return result;
}

id ARMeshAnchorFromMeshNoCopy(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, int a6, int a7, int a8, float32x4_t a9, float32x4_t a10, float32x4_t a11, float32x4_t a12, double a13, char a14, char a15)
{
  v23 = a1;
  v24 = a3;
  v26 = a4;
  if (a15)
  {
    CV3DReconMeshGetLocalToWorldTransform();
    v25 = 0;
    v29 = 0;
    v52[0] = v30;
    v52[1] = v31;
    v52[2] = v32;
    v52[3] = v33;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    do
    {
      *(&v53 + v29 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a9, COERCE_FLOAT(v52[v29])), a10, *&v52[v29], 1), a11, v52[v29], 2), a12, v52[v29], 3);
      ++v29;
    }

    while (v29 != 4);
    v46 = *&v54;
    v47 = *&v53;
    v28 = v55;
    v27 = v56;
  }

  else
  {
    v46 = *a10.i64;
    v47 = *a9.i64;
    v28 = a11.i64[0];
    v27 = a12.i64[0];
  }

  v45 = *&v28;
  v44 = *&v27;
  v34 = ARMeshGeometryFromMeshNoCopy(v23, a2, v25, a5, a6, a8);
  if (!v34)
  {
    v42 = 0;
    goto LABEL_15;
  }

  v35 = [ARMeshAnchor alloc];
  v36 = v35;
  if (!v26)
  {
    if (a7)
    {
      v41 = [(ARMeshAnchor *)v35 initWithGeometry:v34 atTimestamp:v24 identifier:a13 referenceOriginTransform:*a9.i64, *a10.i64, *a11.i64, *a12.i64];
      goto LABEL_14;
    }

LABEL_13:
    v41 = [(ARMeshAnchor *)v35 initWithGeometry:v34 atTimestamp:v24 identifier:a13 transform:v47, v46, v45, v44];
    goto LABEL_14;
  }

  if (!a7)
  {
    goto LABEL_13;
  }

  [v26 visionTransform];
  v41 = [(ARMeshAnchor *)v36 initWithGeometry:v34 atTimestamp:v24 identifier:a13 visionTransform:v37 referenceOriginTransform:v38, v39, v40, *&a9, *&a10, *&a11, *&a12];
LABEL_14:
  v42 = v41;
LABEL_15:

  return v42;
}

ARMeshGeometry *ARMeshGeometryFromMeshNoCopy(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v9 = a1;
  VerticesCount = CV3DReconMeshGetVerticesCount();
  v13 = VerticesCount;
  if (!VerticesCount)
  {
    goto LABEL_2;
  }

  if (a5)
  {
    v14 = CV3DReconMeshGetVerticesAsMTLBufferForDevice();
    goto LABEL_11;
  }

  VerticesRawPtr = CV3DReconMeshGetVerticesRawPtr();
  if (!VerticesRawPtr)
  {
    __ARMeshGeometryFromMeshNoCopy_block_invoke(0, @"Error getting vertices raw pointer", 0);
LABEL_2:
    v11 = 0;
    goto LABEL_3;
  }

  v14 = [v9 newBufferWithBytes:VerticesRawPtr length:12 * v13 options:0];
LABEL_11:
  v16 = [[ARGeometrySource alloc] initWithBuffer:v14 count:v13 format:30 componentsPerVector:3 offset:0 stride:12];
  v17 = 0;
  if (a6)
  {
    if (a5)
    {
      v18 = CV3DReconMeshGetVertexNormalsAsMTLBufferForDevice();
    }

    else
    {
      VertexNormalsRawPtr = CV3DReconMeshGetVertexNormalsRawPtr();
      if (!VertexNormalsRawPtr)
      {
        __ARMeshGeometryFromMeshNoCopy_block_invoke(0, @"Error getting normals raw pointer", 0);
        v17 = 0;
        goto LABEL_21;
      }

      v18 = [v9 newBufferWithBytes:VertexNormalsRawPtr length:12 * v13 options:0];
    }

    v17 = [[ARGeometrySource alloc] initWithBuffer:v18 count:v13 format:30 componentsPerVector:3 offset:0 stride:12];
  }

  FacesCount = CV3DReconMeshGetFacesCount();
  if (FacesCount)
  {
    v21 = CV3DReconMeshGetFacesAsMTLBufferForDevice();
    v31 = v21;
    v30 = [[ARGeometryElement alloc] initWithBuffer:v21 count:FacesCount bytesPerIndex:4 primitiveType:1];
    v22 = [[ARMeshGeometry alloc] initWithVertices:v16 normals:v17 faces:v30];
    if ((~a4 & 0x11) == 0 || (a4 & 0x80) != 0)
    {
      v29 = CV3DReconMeshGetVertexColorsAsMTLBufferForDevice();
      v23 = [[ARGeometrySource alloc] initWithBuffer:v29 count:v13 format:30 componentsPerVector:3 offset:0 stride:12];
      [(ARMeshGeometry *)v22 setColors:v23];
    }

    if ((~a4 & 3) == 0)
    {
      if (a5)
      {
        v24 = CV3DReconMeshGetFaceSemanticLabelsAsMTLBufferForDevice();
      }

      else
      {
        FaceSemanticLabelsRawPtr = CV3DReconMeshGetFaceSemanticLabelsRawPtr();
        if (!FaceSemanticLabelsRawPtr)
        {
          __ARMeshGeometryFromMeshNoCopy_block_invoke(0, @"Error getting semantic labels raw pointer", 0);
          v11 = 0;
          goto LABEL_35;
        }

        v24 = [v9 newBufferWithBytes:FaceSemanticLabelsRawPtr length:FacesCount options:0];
        v26 = [v24 contents];
        v27 = FacesCount;
        do
        {
          *v26 = ARMeshClassificationFromSemantic(*v26);
          ++v26;
          --v27;
        }

        while (v27);
      }

      v28 = [[ARGeometrySource alloc] initWithBuffer:v24 count:FacesCount format:45 componentsPerVector:1 offset:0 stride:1];
      [(ARMeshGeometry *)v22 setClassification:v28];
    }

    v11 = v22;
LABEL_35:

    goto LABEL_22;
  }

LABEL_21:
  v11 = 0;
LABEL_22:

LABEL_3:

  return v11;
}

void __ARMeshGeometryFromMeshNoCopy_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a3)
  {
    if (ARShouldUseLogTypeError_onceToken_48 != -1)
    {
      __ARMeshGeometryFromMeshNoCopy_block_invoke_cold_1();
    }

    v5 = ARShouldUseLogTypeError_internalOSVersion_48;
    v6 = _ARLogGeneral_43();
    v7 = v6;
    if (v5 == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = [a3 localizedFailureReason];
        v12 = 138412546;
        v13 = v4;
        v14 = 2112;
        v15 = v8;
        v9 = "%@: %@";
        v10 = v7;
        v11 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v10, v11, v9, &v12, 0x16u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = [a3 localizedFailureReason];
      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v8;
      v9 = "Error: %@: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }
}

id _ARLogGeneral_43()
{
  if (_ARLogGeneral_onceToken_45 != -1)
  {
    _ARLogGeneral_cold_1_43();
  }

  v1 = _ARLogGeneral_logObj_45;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_49()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_48 = result;
  return result;
}

id reportingQueue()
{
  if (reportingQueue_onceToken != -1)
  {
    reportingQueue_cold_1();
  }

  v1 = reportingQueue_s_reportingQueue;

  return v1;
}

id hitTestReportingMap()
{
  if (hitTestReportingMap_onceToken != -1)
  {
    hitTestReportingMap_cold_1();
  }

  v1 = hitTestReportingMap_s_hitTestReporting;

  return v1;
}

id bundleID()
{
  if (bundleID_onceToken != -1)
  {
    bundleID_cold_1();
  }

  v1 = bundleID_bundleID;

  return v1;
}

id _ARLogSession_1()
{
  if (_ARLogSession_onceToken_2 != -1)
  {
    _ARLogSession_cold_1_1();
  }

  v1 = _ARLogSession_logObj_2;

  return v1;
}

void __reportingQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create(0, v2);
  v1 = reportingQueue_s_reportingQueue;
  reportingQueue_s_reportingQueue = v0;
}

void __hitTestReportingMap_block_invoke()
{
  v0 = objc_opt_new();
  v1 = hitTestReportingMap_s_hitTestReporting;
  hitTestReportingMap_s_hitTestReporting = v0;
}

void __bundleID_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = bundleID_bundleID;
  bundleID_bundleID = v1;

  if (!bundleID_bundleID)
  {
    v5 = [MEMORY[0x1E696AE30] processInfo];
    v3 = [v5 processName];
    v4 = bundleID_bundleID;
    bundleID_bundleID = v3;
  }
}

id ARSphericalHarmonicsDataWithCoefficients(uint64_t a1, float32x4_t a2, float32x4_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2.f32[0] <= 0.0)
  {
    v6 = xmmword_1C25C8910;
  }

  else
  {
    a3.i32[0] = 1170939904;
    v3 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(a3, a2)), 0);
    v4 = vaddq_f32(vbslq_s8(v3, xmmword_1C25F3E40, xmmword_1C25F3E30), vdivq_f32(vbslq_s8(v3, xmmword_1C25F3E60, xmmword_1C25F3E50), vaddq_f32(vdupq_lane_s32(*a2.f32, 0), vbslq_s8(v3, xmmword_1C25F3E80, xmmword_1C25F3E70))));
    v4.i32[3] = 0;
    v5 = vmaxnmq_f32(v4, 0);
    v5.i32[3] = 0;
    v6 = vminnmq_f32(v5, xmmword_1C25F3E90);
  }

  v7 = 0;
  memset(v12, 0, 108);
  do
  {
    v8 = *(a1 + v7);
    v9 = (v12 + v7);
    *v9 = v6.f32[0] * v8;
    v9[9] = v6.f32[1] * v8;
    v9[18] = v6.f32[2] * v8;
    v7 += 4;
  }

  while (v7 != 36);
  v10 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 length:108];

  return v10;
}

double ARCCT2RGB(float32x4_t a1, float32x4_t a2)
{
  if (a1.f32[0] <= 0.0)
  {
    *&result = 1065353216;
  }

  else
  {
    a2.i32[0] = 1170939904;
    v2 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(a2, a1)), 0);
    v3 = vaddq_f32(vbslq_s8(v2, xmmword_1C25F3E40, xmmword_1C25F3E30), vdivq_f32(vbslq_s8(v2, xmmword_1C25F3E60, xmmword_1C25F3E50), vaddq_f32(vdupq_lane_s32(*a1.f32, 0), vbslq_s8(v2, xmmword_1C25F3E80, xmmword_1C25F3E70))));
    v3.i32[3] = 0;
    v4 = vmaxnmq_f32(v3, 0);
    v4.i32[3] = 0;
    *&result = vminnmq_f32(v4, xmmword_1C25F3E90).u64[0];
  }

  return result;
}

float32_t ARPrimaryLightFromSphericalHarmonics@<S0>(uint64_t a1@<X0>, float32x4_t *a2@<X8>, float a3@<S0>, float32x4_t a4@<Q1>, int32x4_t _Q3@<Q3>)
{
  a4.i32[0] = *(a1 + 12);
  a4.i32[1] = *(a1 + 4);
  v5 = vnegq_f32(a4);
  v5.i32[2] = *(a1 + 8);
  v6 = vmulq_f32(v5, v5);
  v7 = v6.f32[2] + vaddv_f32(*v6.f32);
  if (sqrtf(v7) >= 0.00001)
  {
    v9 = 0;
    *_Q3.i32 = v7;
    v10 = vrsqrte_f32(LODWORD(v7));
    v11 = vmul_f32(v10, vrsqrts_f32(_Q3.u32[0], vmul_f32(v10, v10)));
    _Q1 = vmulq_n_f32(v5, vmul_f32(v11, vrsqrts_f32(_Q3.u32[0], vmul_f32(v11, v11))).f32[0]);
    v13.i64[0] = 0xBEFA2A1BBEFA2A1BLL;
    v13.i32[2] = 1056582171;
    v13.i32[3] = vmuls_lane_f32(1.0925, *_Q1.f32, 1);
    *_Q3.i32 = vmuls_lane_f32(3.0, _Q1, 2);
    __asm { FMLA            S5, S3, V1.S[2] }

    *_Q3.i8 = vmul_f32(*_Q1.f32, vdup_n_s32(0xBF8BD8A0));
    v11.f32[0] = vmuls_lane_f32(-_Q1.f32[1], *_Q1.f32, 1) + (_Q1.f32[0] * _Q1.f32[0]);
    v19 = vdupq_laneq_s32(_Q1, 2);
    _Q1.i32[3] = _Q1.i32[0];
    *a2 = _Q1;
    v20 = vmulq_f32(_Q1, v13);
    v26 = 1049652922;
    v19.i32[1] = _S5;
    v19.i32[3] = v11.i32[0];
    v27 = vzip2q_s32(vzip1q_s32(v20, vextq_s8(v20, v20, 0xCuLL)), v20);
    v28 = vmulq_f32(v19, vtrn2q_s32(vrev64q_s32(vuzp2q_s32(_Q3, vzip1q_s32(_Q3, _Q3))), xmmword_1C25F3EA0));
    v21 = 0.0;
    do
    {
      v21 = v21 + (*(a1 + v9) * *(&v26 + v9));
      v9 += 4;
    }

    while (v9 != 36);
    v22 = (v21 * 867.0) / 992.743279;
    if (v22 < 0.0)
    {
      v22 = 0.0;
    }

    v23 = v22;
    v24 = ((*a1 + (((v23 * -8.0) * 1.7725) / 17.0)) * 1.7725) * 0.5;
    if (v24 < 0.0)
    {
      v24 = 0.0;
    }

    v25 = v24 * a3;
    result = v23 * a3;
    a2[1].f32[0] = result;
    a2[1].f32[1] = v25;
  }

  else
  {
    *a2 = xmmword_1C25C86A0;
    result = *a1 * a3;
    a2[1].f32[1] = result;
    a2[1].i32[0] = 0;
  }

  return result;
}

float32x4_t ARSphericalHarmonicsWithDirection@<Q0>(uint64_t a1@<X8>, float32x4_t _Q0@<Q0>, int32x4_t _Q3@<Q3>)
{
  v3.i64[0] = 0xBEFA2A1BBEFA2A1BLL;
  v3.i32[2] = 1056582171;
  v3.i32[3] = vmuls_lane_f32(1.0925, *_Q0.f32, 1);
  *_Q3.i32 = vmuls_lane_f32(3.0, _Q0, 2);
  __asm { FMLA            S4, S3, V0.S[2] }

  *_Q3.i8 = vmul_f32(*_Q0.f32, vdup_n_s32(0xBF8BD8A0));
  v9 = vmuls_lane_f32(-_Q0.f32[1], *_Q0.f32, 1) + (_Q0.f32[0] * _Q0.f32[0]);
  v10 = vdupq_laneq_s32(_Q0, 2);
  _Q0.i32[3] = _Q0.i32[0];
  v11 = vmulq_f32(_Q0, v3);
  *a1 = 1049652922;
  *(a1 + 4) = vzip2q_s32(vzip1q_s32(v11, vextq_s8(v11, v11, 0xCuLL)), v11);
  v10.i32[1] = _S4;
  v10.f32[3] = v9;
  result = vmulq_f32(v10, vtrn2q_s32(vrev64q_s32(vuzp2q_s32(_Q3, vzip1q_s32(_Q3, _Q3))), xmmword_1C25F3EA0));
  *(a1 + 20) = result;
  return result;
}

float ARSphericalHarmonicsDotProduct(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  result = 0.0;
  do
  {
    result = result + (*(a1 + v2) * *(a2 + v2));
    v2 += 4;
  }

  while (v2 != 36);
  return result;
}

uint64_t ARSphericalHarmonicsByFlippingZAxis@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return arkit::shct::flipAxesShCoeff(v4, 0, 0, 1, a2);
}

double ARSphericalHarmonicsByApplyingRotation@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, simd_float3x3 a3@<0:Q0, 16:Q1, 32:Q2>)
{
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v8 = *(a1 + 32);
  ARCVAMatrixFromMatrix(a3, v6);
  return arkit::shct::rotateShCoeff(v7, v6, a2);
}

id ARSphericalHarmonicsDataWithAmbientLight(float a1, float32x4_t a2, double a3, float32x4_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (a2.f32[0] <= 0.0)
  {
    v7 = xmmword_1C25C8910;
  }

  else
  {
    a4.i32[0] = 1170939904;
    v4 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(a4, a2)), 0);
    v5 = vaddq_f32(vbslq_s8(v4, xmmword_1C25F3E40, xmmword_1C25F3E30), vdivq_f32(vbslq_s8(v4, xmmword_1C25F3E60, xmmword_1C25F3E50), vaddq_f32(vdupq_lane_s32(*a2.f32, 0), vbslq_s8(v4, xmmword_1C25F3E80, xmmword_1C25F3E70))));
    v5.i32[3] = 0;
    v6 = vmaxnmq_f32(v5, 0);
    v6.i32[3] = 0;
    v7 = vminnmq_f32(v6, xmmword_1C25F3E90);
  }

  v10 = a1 * v7.f32[0];
  LODWORD(v13) = vmuls_lane_f32(a1, *v7.f32, 1);
  DWORD1(v15) = vmuls_lane_f32(a1, v7, 2);
  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:108];

  return v8;
}

uint64_t ARViewToCameraImageTransform@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v7 = a5 / a4;
  v8 = a4 / a5;
  if ((result - 3) <= 1)
  {
    v7 = v8;
  }

  v9 = *(MEMORY[0x1E695EFF8] + 8);
  v10 = a6 / a7;
  if (v7 >= v10)
  {
    v13 = *MEMORY[0x1E695EFF8];
    v11 = 1.0;
    if (v7 <= v10)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = v10 / v7;
      v9 = (1.0 - v12) * 0.5;
    }
  }

  else
  {
    v11 = v7 / v10;
    v12 = 1.0;
    v13 = (1.0 - v11) * 0.5;
  }

  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  if (!a2)
  {
    if (result == 2)
    {
      v13 = v13 + v11;
      *(a3 + 8) = v12;
      *(a3 + 16) = -v11;
      goto LABEL_25;
    }

    if (result == 4)
    {
      v13 = v13 + v11;
      *a3 = -v11;
      v9 = v9 + v12;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = -v12;
      goto LABEL_25;
    }

    if (result != 3)
    {
      v9 = v9 + v12;
      *(a3 + 8) = -v12;
      goto LABEL_24;
    }

    *a3 = v11;
LABEL_18:
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = v12;
    goto LABEL_25;
  }

  if (result == 2)
  {
    v13 = v13 + v11;
    v9 = v9 + v12;
    *(a3 + 8) = -v12;
    *(a3 + 16) = -v11;
    goto LABEL_25;
  }

  if (result == 4)
  {
    *a3 = -v11;
    v13 = v13 + v11;
    goto LABEL_18;
  }

  if (result != 3)
  {
    *(a3 + 8) = v12;
LABEL_24:
    *(a3 + 16) = v11;
    goto LABEL_25;
  }

  *a3 = v11;
  v9 = v9 + v12;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = -v12;
LABEL_25:
  *(a3 + 32) = v13;
  *(a3 + 40) = v9;
  return result;
}

uint64_t ARCameraToDisplayRotation(unint64_t a1)
{
  if (a1 > 4)
  {
    return 90;
  }

  else
  {
    return qword_1C25F3ED0[a1];
  }
}

__CFString *NSStringFromUIInterfaceOrientation(unint64_t a1)
{
  if (a1 > 4)
  {
    return &stru_1F4208A80;
  }

  else
  {
    return off_1E817E748[a1];
  }
}

void sub_1C2584984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C2584B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2584C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2584DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2584EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C258500C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ARTechniqueProcessDataClassApprovedList()
{
  if (ARTechniqueProcessDataClassApprovedList_onceToken != -1)
  {
    ARTechniqueProcessDataClassApprovedList_cold_1();
  }

  v1 = ARTechniqueProcessDataClassApprovedList_techniqueProcessDataClassApprovedList;

  return v1;
}

void __ARTechniqueProcessDataClassApprovedList_block_invoke()
{
  v27 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:23];
  v2 = [v0 setWithArray:{v1, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25}];
  v3 = ARTechniqueProcessDataClassApprovedList_techniqueProcessDataClassApprovedList;
  ARTechniqueProcessDataClassApprovedList_techniqueProcessDataClassApprovedList = v2;
}

id ARTechniqueResultDataClassApprovedList()
{
  if (ARTechniqueResultDataClassApprovedList_onceToken != -1)
  {
    ARTechniqueResultDataClassApprovedList_cold_1();
  }

  v1 = ARTechniqueResultDataClassApprovedList_techniqueResultDataClassApprovedList;

  return v1;
}

void __ARTechniqueResultDataClassApprovedList_block_invoke()
{
  v39 = MEMORY[0x1E695DF70];
  v38 = objc_opt_class();
  v37 = objc_opt_class();
  v36 = objc_opt_class();
  v35 = objc_opt_class();
  v34 = objc_opt_class();
  v33 = objc_opt_class();
  v32 = objc_opt_class();
  v31 = objc_opt_class();
  v30 = objc_opt_class();
  v29 = objc_opt_class();
  v28 = objc_opt_class();
  v27 = objc_opt_class();
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v40 = [v39 arrayWithObjects:{v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v12, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v10 = [MEMORY[0x1E695DFD8] setWithArray:v40];
  v11 = ARTechniqueResultDataClassApprovedList_techniqueResultDataClassApprovedList;
  ARTechniqueResultDataClassApprovedList_techniqueResultDataClassApprovedList = v10;
}

id ARRemoteTechniqueClientInterfaceWithProtocol(uint64_t a1)
{
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:a1];
  v2 = ARTechniqueResultDataClassApprovedList();
  [v1 setClasses:v2 forSelector:sel_techniqueDidOutputResultData_timestamp_context_ argumentIndex:0 ofReply:0];

  v3 = ARTechniqueResultDataClassApprovedList();
  [v1 setClasses:v3 forSelector:sel_techniqueDidOutputResultData_timestamp_context_ argumentIndex:2 ofReply:0];

  return v1;
}

id ARRemoteTechniqueServiceInterfaceWithProtocol(uint64_t a1)
{
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:a1];
  v2 = ARTechniqueProcessDataClassApprovedList();
  [v1 setClasses:v2 forSelector:sel_processData_reply_ argumentIndex:0 ofReply:0];

  v3 = ARTechniqueProcessDataClassApprovedList();
  [v1 setClasses:v3 forSelector:sel_processData_reply_ argumentIndex:0 ofReply:1];

  v4 = ARTechniqueResultDataClassApprovedList();
  [v1 setClasses:v4 forSelector:sel_requestResultDataAtTimestamp_context_ argumentIndex:1 ofReply:0];

  return v1;
}

id _ARLogTechnique_16()
{
  if (_ARLogTechnique_onceToken_22 != -1)
  {
    _ARLogTechnique_cold_1_16();
  }

  v1 = _ARLogTechnique_logObj_22;

  return v1;
}

void sub_1C2585DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2585F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2585FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2586274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C2586418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C25864FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C258661C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ARShouldUseLogTypeError_block_invoke_50()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_49 = result;
  return result;
}

void sub_1C25875B4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    [v3 decodeObjectOfClass:objc_opt_class() forKey:v2];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x1C2587568);
  }

  _Unwind_Resume(exception_object);
}

id _ARLogGeneral_44()
{
  if (_ARLogGeneral_onceToken_46 != -1)
  {
    _ARLogGeneral_cold_1_44();
  }

  v1 = _ARLogGeneral_logObj_46;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_51()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_50 = result;
  return result;
}

id ARLocationSensorDidOutputSensorDataClassApprovedList()
{
  if (ARLocationSensorDidOutputSensorDataClassApprovedList_onceToken != -1)
  {
    ARLocationSensorDidOutputSensorDataClassApprovedList_cold_1();
  }

  v1 = ARLocationSensorDidOutputSensorDataClassApprovedList_locationSensorDidOutputSensorDataClassApprovedList;

  return v1;
}

void __ARLocationSensorDidOutputSensorDataClassApprovedList_block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = ARLocationSensorDidOutputSensorDataClassApprovedList_locationSensorDidOutputSensorDataClassApprovedList;
  ARLocationSensorDidOutputSensorDataClassApprovedList_locationSensorDidOutputSensorDataClassApprovedList = v2;
}

id ARLocationSensorUpdateEstimationFromVIOPoseClassApprovedList()
{
  if (ARLocationSensorUpdateEstimationFromVIOPoseClassApprovedList_onceToken != -1)
  {
    ARLocationSensorUpdateEstimationFromVIOPoseClassApprovedList_cold_1();
  }

  v1 = ARLocationSensorUpdateEstimationFromVIOPoseClassApprovedList_locationSensorUpdateEstimationFromVIOPoseClassApprovedList;

  return v1;
}

void __ARLocationSensorUpdateEstimationFromVIOPoseClassApprovedList_block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = ARLocationSensorUpdateEstimationFromVIOPoseClassApprovedList_locationSensorUpdateEstimationFromVIOPoseClassApprovedList;
  ARLocationSensorUpdateEstimationFromVIOPoseClassApprovedList_locationSensorUpdateEstimationFromVIOPoseClassApprovedList = v2;
}

id ARRemoteLocationSensorClientInterface()
{
  v0 = ARRemoteSensorClientInterfaceWithProtocol(&unk_1F4284738);
  v1 = ARLocationSensorDidOutputSensorDataClassApprovedList();
  [v0 setClasses:v1 forSelector:sel_sensorDidOutputSensorData_ argumentIndex:0 ofReply:0];

  return v0;
}

id ARRemoteLocationSensorServiceInterface()
{
  v0 = ARRemoteSensorServiceInterfaceWithProtocol(&unk_1F4284798);
  v1 = ARLocationSensorUpdateEstimationFromVIOPoseClassApprovedList();
  [v0 setClasses:v1 forSelector:sel_updateEstimationFromVIOPose_imageData_ argumentIndex:1 ofReply:0];

  return v0;
}

id _ARLogSensor_11()
{
  if (_ARLogSensor_onceToken_15 != -1)
  {
    _ARLogSensor_cold_1_11();
  }

  v1 = _ARLogSensor_logObj_15;

  return v1;
}

void sub_1C2588BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _ARLogSensor_12()
{
  if (_ARLogSensor_onceToken_16 != -1)
  {
    _ARLogSensor_cold_1_12();
  }

  v1 = _ARLogSensor_logObj_16;

  return v1;
}

void sub_1C2589F30(void *a1)
{
  objc_begin_catch(a1);

  objc_exception_rethrow();
}

void sub_1C258A974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _ARLogGeneral_45()
{
  if (_ARLogGeneral_onceToken_47 != -1)
  {
    _ARLogGeneral_cold_1_45();
  }

  v1 = _ARLogGeneral_logObj_47;

  return v1;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_52()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_51 = result;
  return result;
}

void sub_1C258BB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, os_activity_scope_state_s state)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

id _ARLogGeneral_46()
{
  if (_ARLogGeneral_onceToken_48 != -1)
  {
    _ARLogGeneral_cold_1_46();
  }

  v1 = _ARLogGeneral_logObj_48;

  return v1;
}

void sub_1C258C0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1C258C6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C258D784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, os_activity_scope_state_s state)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1C258E564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __ARShouldUseLogTypeError_block_invoke_53()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_52 = result;
  return result;
}

double OUTLINED_FUNCTION_0_0()
{
  result = 0.0;
  *(v0 - 32) = 0u;
  return result;
}

void sub_1C258F1F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromCFUUIDRef(CFUUIDRef uuid)
{
  v1 = CFUUIDCreateString(*MEMORY[0x1E695E480], uuid);

  return v1;
}

id _ARLogGeneral_47()
{
  if (_ARLogGeneral_onceToken_50 != -1)
  {
    _ARLogGeneral_cold_1_47();
  }

  v1 = _ARLogGeneral_logObj_50;

  return v1;
}

uint64_t _archive_open_callback(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  archive_set_error();
  return 4294967266;
}

uint64_t __ARShouldUseLogTypeError_block_invoke_54()
{
  result = os_variant_has_internal_content();
  ARShouldUseLogTypeError_internalOSVersion_53 = result;
  return result;
}

void ARCoreAnalyticsEventCreateAndReport(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (ARShouldNotReportToCoreAnalytics_onceToken != -1)
  {
    ARCoreAnalyticsEventCreateAndReport_cold_1();
  }

  if ((ARShouldNotReportToCoreAnalytics_shouldNotReportToCoreAnalytics & 1) == 0)
  {
    AnalyticsSendEvent();
  }
}

BOOL __ARShouldNotReportToCoreAnalytics_block_invoke()
{
  result = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.daemonMetrics.disableReporting"];
  ARShouldNotReportToCoreAnalytics_shouldNotReportToCoreAnalytics = result;
  return result;
}

id ARCopyFromSharedTextureHandle(void *a1, char a2)
{
  v3 = a1;
  v4 = [v3 device];
  v5 = [v4 newCommandQueue];
  v6 = [v4 newSharedTextureWithHandle:v3];

  v7 = [MEMORY[0x1E69741C0] textureCubeDescriptorWithPixelFormat:objc_msgSend(v6 size:"pixelFormat") mipmapped:objc_msgSend(v6, "width"), objc_msgSend(v6, "mipmapLevelCount") > 1];
  if (a2)
  {
    v8 = [v4 newSharedTextureWithDescriptor:v7];
  }

  else
  {
    v8 = [v4 newTextureWithDescriptor:v7];
  }

  v9 = v8;
  v10 = [v5 commandBuffer];
  [v10 setLabel:@"com.apple.arkit.lightestimation.copytexturebuffer"];
  v11 = [v10 blitCommandEncoder];
  [v11 setLabel:@"com.apple.arkit.lightestimation.copytexture"];
  [v11 copyFromTexture:v6 toTexture:v9];
  [v11 endEncoding];
  [v10 commit];
  [v10 waitUntilCompleted];

  return v9;
}

id ARCopyMipmapsFromSharedTextureHandle(void *a1, id a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = a1;
    v4 = [v3 device];
    v5 = [v4 newCommandQueue];
    v6 = [v4 newSharedTextureWithHandle:v3];

    v7 = [v6 mipmapLevelCount];
    if (v7 >= v2)
    {
      v8 = v2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [MEMORY[0x1E69741C0] textureCubeDescriptorWithPixelFormat:objc_msgSend(v6 size:"pixelFormat") mipmapped:exp2((v8 - 1)), objc_msgSend(v6, "mipmapLevelCount") > 1];
    v2 = [v4 newSharedTextureWithDescriptor:v9];
    v10 = [v5 commandBuffer];
    [v10 setLabel:@"com.apple.arkit.lightestimation.lowrescopytexturebuffer"];
    v11 = [v10 blitCommandEncoder];
    [v11 setLabel:@"com.apple.arkit.lightestimation.lowrescopytexture"];
    [v11 copyFromTexture:v6 sourceSlice:0 sourceLevel:objc_msgSend(v6 toTexture:"mipmapLevelCount") - v8 destinationSlice:v2 destinationLevel:0 sliceCount:0 levelCount:{6, v8}];
    [v11 endEncoding];
    [v10 commit];
    [v10 waitUntilCompleted];
  }

  return v2;
}

float ARAverageCubemapIntensity(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 mipmapLevelCount] >= 2)
  {
    v2 = [v1 mipmapLevelCount] - 2;
  }

  else
  {
    v2 = 0;
  }

  v3 = 0;
  v4 = 0.0;
  v24 = vdupq_n_s64(2uLL);
  do
  {
    memset(v25, 0, sizeof(v25));
    v26 = v24;
    v5 = 1;
    v27 = 1;
    [v1 getBytes:v28 bytesPerRow:16 bytesPerImage:32 fromRegion:v25 mipmapLevel:v2 slice:{v3, *&v24}];
    v6 = 0;
    do
    {
      v7 = 0;
      v8 = v5;
      v9 = 1;
      do
      {
        v10 = v9;
        v11 = &v28[v7 | v6];
        _H0 = *v11;
        _H1 = v11[1];
        _H2 = v11[2];
        __asm
        {
          FCVT            S0, H0
          FCVT            S1, H1
        }

        v21 = (_S1 * 0.715) + (_S0 * 0.213);
        __asm { FCVT            S1, H2 }

        v4 = v4 + (v21 + (_S1 * 0.072));
        v7 = 4;
        v9 = 0;
      }

      while ((v10 & 1) != 0);
      v5 = 0;
      v6 = 8;
    }

    while ((v8 & 1) != 0);
    ++v3;
  }

  while (v3 != 6);

  return v4 / 24.0;
}

id _ARLogGeneral_48()
{
  if (_ARLogGeneral_onceToken_51 != -1)
  {
    _ARLogGeneral_cold_1_48();
  }

  v1 = _ARLogGeneral_logObj_51;

  return v1;
}

id ARErrorWithCodeAndUserInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = v4;
  if (a1 > 300)
  {
    if (a1 <= 499)
    {
      if (a1 > 303)
      {
        switch(a1)
        {
          case 304:
            v50 = ARKitCoreBundle();
            v51 = [v50 localizedStringForKey:@"Invalid collaboration data." value:&stru_1F4208A80 table:@"Localizable"];
            [v5 setObject:v51 forKeyedSubscript:*MEMORY[0x1E696A578]];

            v16 = ARKitCoreBundle();
            v7 = v16;
            v17 = @"The encoded data is not in a format supported by this version of ARCollaborationData.";
            break;
          case 400:
            v6 = ARKitCoreBundle();
            v7 = v6;
            v8 = @"Insufficient features.";
            goto LABEL_65;
          case 401:
            v27 = ARKitCoreBundle();
            v28 = [v27 localizedStringForKey:@"Object merge failed." value:&stru_1F4208A80 table:@"Localizable"];
            [v5 setObject:v28 forKeyedSubscript:*MEMORY[0x1E696A578]];

            v16 = ARKitCoreBundle();
            v7 = v16;
            v17 = @"Not enough matching features were found for the reference objects to be merged.";
            break;
          default:
            goto LABEL_67;
        }
      }

      else if (a1 == 301)
      {
        v44 = ARKitCoreBundle();
        v45 = [v44 localizedStringForKey:@"Invalid reference object." value:&stru_1F4208A80 table:@"Localizable"];
        [v5 setObject:v45 forKeyedSubscript:*MEMORY[0x1E696A578]];

        v16 = ARKitCoreBundle();
        v7 = v16;
        v17 = @"The reference object data is not in a format supported by this version of ARReferenceObject.";
      }

      else
      {
        if (a1 != 302)
        {
          v6 = ARKitCoreBundle();
          v7 = v6;
          v8 = @"Invalid configuration.";
          goto LABEL_65;
        }

        v54 = ARKitCoreBundle();
        v55 = [v54 localizedStringForKey:@"Invalid world map." value:&stru_1F4208A80 table:@"Localizable"];
        [v5 setObject:v55 forKeyedSubscript:*MEMORY[0x1E696A578]];

        v16 = ARKitCoreBundle();
        v7 = v16;
        v17 = @"The world map data is not in a format supported by this version of ARWorldMap.";
      }

      goto LABEL_60;
    }

    if (a1 <= 1000)
    {
      if (a1 != 500)
      {
        if (a1 == 501)
        {
          v6 = ARKitCoreBundle();
          v7 = v6;
          v8 = @"Request failed.";
          goto LABEL_65;
        }

        if (a1 != 1000)
        {
          goto LABEL_67;
        }

        [v4 setObject:@"Unauthorized to write to the photo library." forKeyedSubscript:*MEMORY[0x1E696A578]];
        [v5 setObject:@"A permission is missing to access the photo library." forKeyedSubscript:*MEMORY[0x1E696A588]];
        v18 = *MEMORY[0x1E696A598];
        v19 = @"Make sure that the application has the required privacy settings.";
        goto LABEL_73;
      }

      v35 = ARKitCoreBundle();
      v36 = [v35 localizedStringForKey:@"File IO failed." value:&stru_1F4208A80 table:@"Localizable"];
      [v5 setObject:v36 forKeyedSubscript:*MEMORY[0x1E696A578]];

      v37 = MEMORY[0x1E696AEC0];
      v38 = ARKitCoreBundle();
      v39 = [v38 localizedStringForKey:@"Unable to read from or write to URL: %@." value:&stru_1F4208A80 table:@"Localizable"];
      v40 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696A998]];
      v41 = [v37 stringWithFormat:v39, v40];
      [v5 setObject:v41 forKeyedSubscript:*MEMORY[0x1E696A588]];

      if (!v3)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (a1 > 1004)
      {
        if (a1 == 1005)
        {
          v6 = ARKitCoreBundle();
          v7 = v6;
          v8 = @"Unsupported sensor data.";
        }

        else
        {
          if (a1 != 1028)
          {
            goto LABEL_67;
          }

          v6 = ARKitCoreBundle();
          v7 = v6;
          v8 = @"Unsupported feature.";
        }

        goto LABEL_65;
      }

      if (a1 == 1001)
      {
        [v4 setObject:@"Failed saving the recording." forKeyedSubscript:*MEMORY[0x1E696A578]];
        v18 = *MEMORY[0x1E696A588];
        v19 = @"Failed saving the recording for an unknown reason.";
        goto LABEL_73;
      }

      if (a1 != 1004)
      {
        goto LABEL_67;
      }

      [v4 setObject:@"Failed to load espresso model." forKeyedSubscript:*MEMORY[0x1E696A578]];
      if (!v3 || (v9 = *MEMORY[0x1E696A368], [v3 objectForKey:*MEMORY[0x1E696A368]], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
      {
        v18 = *MEMORY[0x1E696A588];
        v19 = @"File path is invalid or does not exist";
        goto LABEL_73;
      }

      v11 = MEMORY[0x1E696AEC0];
      v12 = [v3 objectForKey:v9];
      v13 = [v11 stringWithFormat:@"File path '%@' is invalid or does not exist", v12];
      [v5 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696A588]];
    }

LABEL_68:
    [v5 addEntriesFromDictionary:v3];
    goto LABEL_69;
  }

  if (a1 <= 105)
  {
    if (a1 <= 102)
    {
      switch(a1)
      {
        case 'd':
          v42 = ARKitCoreBundle();
          v43 = [v42 localizedStringForKey:@"Unsupported configuration." value:&stru_1F4208A80 table:@"Localizable"];
          [v5 setObject:v43 forKeyedSubscript:*MEMORY[0x1E696A578]];

          v16 = ARKitCoreBundle();
          v7 = v16;
          v17 = @"The provided configuration is not supported on this device.";
          break;
        case 'e':
          v52 = ARKitCoreBundle();
          v53 = [v52 localizedStringForKey:@"Required sensor unavailable." value:&stru_1F4208A80 table:@"Localizable"];
          [v5 setObject:v53 forKeyedSubscript:*MEMORY[0x1E696A578]];

          v16 = ARKitCoreBundle();
          v7 = v16;
          v17 = @"A required sensor is not available on this device.";
          break;
        case 'f':
          v14 = ARKitCoreBundle();
          v15 = [v14 localizedStringForKey:@"Required sensor failed." value:&stru_1F4208A80 table:@"Localizable"];
          [v5 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696A578]];

          v16 = ARKitCoreBundle();
          v7 = v16;
          v17 = @"A sensor failed to deliver the required input.";
          break;
        default:
          goto LABEL_67;
      }

LABEL_60:
      v33 = [v16 localizedStringForKey:v17 value:&stru_1F4208A80 table:@"Localizable"];
      v34 = MEMORY[0x1E696A588];
      goto LABEL_66;
    }

    if (a1 == 103)
    {
      v46 = ARKitCoreBundle();
      v47 = [v46 localizedStringForKey:@"Camera access not authorized." value:&stru_1F4208A80 table:@"Localizable"];
      [v5 setObject:v47 forKeyedSubscript:*MEMORY[0x1E696A578]];

      v48 = ARKitCoreBundle();
      v49 = [v48 localizedStringForKey:@"The app does not have permission to use the camera." value:&stru_1F4208A80 table:@"Localizable"];
      [v5 setObject:v49 forKeyedSubscript:*MEMORY[0x1E696A588]];

      v24 = ARKitCoreBundle();
      v25 = v24;
      v26 = @"Make sure that the application has the required camera privacy settings.";
    }

    else
    {
      v20 = ARKitCoreBundle();
      if (a1 == 104)
      {
        v56 = [v20 localizedStringForKey:@"Microphone access not authorized." value:&stru_1F4208A80 table:@"Localizable"];
        [v5 setObject:v56 forKeyedSubscript:*MEMORY[0x1E696A578]];

        v57 = ARKitCoreBundle();
        v58 = [v57 localizedStringForKey:@"The app does not have permission to use the microphone." value:&stru_1F4208A80 table:@"Localizable"];
        [v5 setObject:v58 forKeyedSubscript:*MEMORY[0x1E696A588]];

        v24 = ARKitCoreBundle();
        v25 = v24;
        v26 = @"Make sure that the application has the required microphone privacy settings.";
      }

      else
      {
        v21 = [v20 localizedStringForKey:@"Location access not authorized." value:&stru_1F4208A80 table:@"Localizable"];
        [v5 setObject:v21 forKeyedSubscript:*MEMORY[0x1E696A578]];

        v22 = ARKitCoreBundle();
        v23 = [v22 localizedStringForKey:@"The app does not have permission to use the location of the device." value:&stru_1F4208A80 table:@"Localizable"];
        [v5 setObject:v23 forKeyedSubscript:*MEMORY[0x1E696A588]];

        v24 = ARKitCoreBundle();
        v25 = v24;
        v26 = @"Location access and precise accuracy must be enabled in the app's privacy settings.";
      }
    }

    v59 = [v24 localizedStringForKey:v26 value:&stru_1F4208A80 table:@"Localizable"];
    [v5 setObject:v59 forKeyedSubscript:*MEMORY[0x1E696A598]];

    if (!v3)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if (a1 > 199)
  {
    if (a1 > 201)
    {
      if (a1 == 202)
      {
        v6 = ARKitCoreBundle();
        v7 = v6;
        v8 = @"Geo tracking failed because of a runtime error.";
      }

      else
      {
        if (a1 != 300)
        {
          goto LABEL_67;
        }

        v6 = ARKitCoreBundle();
        v7 = v6;
        v8 = @"Invalid reference image.";
      }

      goto LABEL_65;
    }

    if (a1 != 200)
    {
      v6 = ARKitCoreBundle();
      v7 = v6;
      v8 = @"Geo tracking is not available at this location.";
LABEL_65:
      v33 = [v6 localizedStringForKey:v8 value:&stru_1F4208A80 table:@"Localizable"];
      v34 = MEMORY[0x1E696A578];
      goto LABEL_66;
    }

    v29 = ARKitCoreBundle();
    v30 = [v29 localizedStringForKey:@"World tracking failed." value:&stru_1F4208A80 table:@"Localizable"];
    [v5 setObject:v30 forKeyedSubscript:*MEMORY[0x1E696A578]];

    v16 = ARKitCoreBundle();
    v7 = v16;
    v17 = @"World tracking cannot determine the device’s position.";
    goto LABEL_60;
  }

  if (a1 == 106)
  {
    v31 = ARKitCoreBundle();
    v32 = [v31 localizedStringForKey:@"Another high-resolution frame is currently being captured." value:&stru_1F4208A80 table:@"Localizable"];
    [v5 setObject:v32 forKeyedSubscript:*MEMORY[0x1E696A578]];

    v7 = ARKitCoreBundle();
    v33 = [v7 localizedStringForKey:@"Please wait for the completion handler call." value:&stru_1F4208A80 table:@"Localizable"];
    v34 = MEMORY[0x1E696A598];
LABEL_66:
    [v5 setObject:v33 forKeyedSubscript:*v34];

LABEL_67:
    if (!v3)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if (a1 == 107)
  {
    v6 = ARKitCoreBundle();
    v7 = v6;
    v8 = @"Capturing a high resolution frame failed.";
    goto LABEL_65;
  }

  if (a1 != 150)
  {
    goto LABEL_67;
  }

  [v4 setObject:@"Unsupported capture session configuration." forKeyedSubscript:*MEMORY[0x1E696A578]];
  [v5 setObject:@"Input device and/or format of the provided capture session are not supported for the given configuration." forKeyedSubscript:*MEMORY[0x1E696A588]];
  v18 = *MEMORY[0x1E696A598];
  v19 = @"Make sure that the correct device and format are being used for capture.";
LABEL_73:
  [v5 setObject:v19 forKeyedSubscript:v18];
  if (v3)
  {
    goto LABEL_68;
  }

LABEL_69:
  v60 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.arkit.error" code:a1 userInfo:v5];

  return v60;
}

id ARFrameworkVersions()
{
  if (ARFrameworkVersions_onceToken != -1)
  {
    ARFrameworkVersions_cold_1();
  }

  v1 = ARFrameworkVersions_frameworksVersionsDict;

  return v1;
}

void __ARFrameworkVersions_block_invoke()
{
  v31 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v1 = [&unk_1F42593D0 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v26;
    do
    {
      v4 = 0;
      do
      {
        if (*v26 != v3)
        {
          objc_enumerationMutation(&unk_1F42593D0);
        }

        v5 = *(*(&v25 + 1) + 8 * v4);
        v6 = [MEMORY[0x1E696AAE8] bundleWithPath:v5];
        v7 = [v5 lastPathComponent];
        v8 = v7;
        if (v6 || (v9 = MEMORY[0x1E696AAE8], v10 = MEMORY[0x1E696AEC0], v29[0] = @"/AppleInternal/Library/Frameworks", v29[1] = v7, [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "pathWithComponents:", v11), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "bundleWithPath:", v12), v6 = objc_claimAutoreleasedReturnValue(), v12, v11, v6))
        {
          v13 = [v6 infoDictionary];
          v14 = [v13 objectForKeyedSubscript:@"CFBundleName"];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = [v8 stringByDeletingPathExtension];
          }

          v17 = v16;

          v18 = [v6 infoDictionary];
          v19 = [v18 objectForKeyedSubscript:@"CFBundleVersion"];
          v20 = v19;
          v21 = @"Unknown Version";
          if (v19)
          {
            v21 = v19;
          }

          v22 = v21;
        }

        else
        {
          v17 = [v8 stringByDeletingPathExtension];
          v6 = v8;
          v22 = @"Unknown Version";
        }

        [v0 setObject:v22 forKeyedSubscript:v17];
        ++v4;
      }

      while (v2 != v4);
      v23 = [&unk_1F42593D0 countByEnumeratingWithState:&v25 objects:v30 count:16];
      v2 = v23;
    }

    while (v23);
  }

  v24 = ARFrameworkVersions_frameworksVersionsDict;
  ARFrameworkVersions_frameworksVersionsDict = v0;
}

uint64_t ARCorrectCVPixelBufferOrientation(__CVBuffer *a1, unsigned int a2, __CVBuffer **a3)
{
  if (!a1)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v7 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v8 = _ARLogGeneral();
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        v10 = "Input pixel buffer cannot be NULL";
        v11 = v9;
        v12 = OS_LOG_TYPE_ERROR;
LABEL_17:
        _os_log_impl(&dword_1C241C000, v11, v12, v10, &buf, 2u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.data) = 0;
      v10 = "Error: Input pixel buffer cannot be NULL";
      v11 = v9;
      v12 = OS_LOG_TYPE_INFO;
      goto LABEL_17;
    }

    return 4294960635;
  }

  if (CVPixelBufferGetPixelFormatType(a1) != 1278226488)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v13 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v14 = _ARLogGeneral();
    v15 = v14;
    if (v13 == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        v16 = "Input pixel buffer must have format kCVPixelFormatType_OneComponent8";
        v17 = v15;
        v18 = OS_LOG_TYPE_ERROR;
LABEL_26:
        _os_log_impl(&dword_1C241C000, v17, v18, v16, &buf, 2u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.data) = 0;
      v16 = "Error: Input pixel buffer must have format kCVPixelFormatType_OneComponent8";
      v17 = v15;
      v18 = OS_LOG_TYPE_INFO;
      goto LABEL_26;
    }

    return 4294960616;
  }

  if (a2 == 1)
  {
    CVPixelBufferRetain(a1);
    result = 0;
    *a3 = a1;
    return result;
  }

  v44 = 0;
  pixelBufferOut = 0;
  if (a2 <= 8)
  {
    if (((1 << a2) & 0x18) != 0)
    {
      Width = CVPixelBufferGetWidth(a1);
      Height = CVPixelBufferGetHeight(a1);
      v21 = 2;
      goto LABEL_33;
    }

    if (((1 << a2) & 0xC0) != 0)
    {
      Height = CVPixelBufferGetWidth(a1);
      Width = CVPixelBufferGetHeight(a1);
      v21 = 1;
      goto LABEL_33;
    }

    if (((1 << a2) & 0x120) != 0)
    {
      Height = CVPixelBufferGetWidth(a1);
      Width = CVPixelBufferGetHeight(a1);
      v21 = 3;
      goto LABEL_33;
    }
  }

  if (a2 == 2)
  {
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    v21 = 0;
  }

  else
  {
    v21 = 0;
    Height = 0;
    Width = 0;
  }

LABEL_33:
  Attributes = _getAttributes();
  v23 = *MEMORY[0x1E695E480];
  if (CVPixelBufferCreate(*MEMORY[0x1E695E480], Width, Height, 0x4C303038u, Attributes, &pixelBufferOut))
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_2();
    }

    v24 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v25 = _ARLogGeneral();
    v26 = v25;
    if (v24 == 1)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        v27 = "Could not create pixelbuffer";
        p_buf = &buf;
LABEL_56:
        v34 = v26;
        v35 = OS_LOG_TYPE_ERROR;
LABEL_69:
        _os_log_impl(&dword_1C241C000, v34, v35, v27, p_buf, 2u);
      }

LABEL_70:

      CVPixelBufferRelease(pixelBufferOut);
      CVPixelBufferRelease(v44);
      return 4294960636;
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      goto LABEL_70;
    }

    LOWORD(buf.data) = 0;
    v27 = "Error: Could not create pixelbuffer";
    p_buf = &buf;
    goto LABEL_68;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  buf.data = CVPixelBufferGetBaseAddress(a1);
  buf.height = CVPixelBufferGetHeight(a1);
  buf.width = CVPixelBufferGetWidth(a1);
  buf.rowBytes = CVPixelBufferGetBytesPerRow(a1);
  dest.data = CVPixelBufferGetBaseAddress(pixelBufferOut);
  dest.height = CVPixelBufferGetHeight(pixelBufferOut);
  dest.width = CVPixelBufferGetWidth(pixelBufferOut);
  dest.rowBytes = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  v29 = vImageRotate90_Planar8(&buf, &dest, v21, 0, 0);
  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  if (v29)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_2();
    }

    v30 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v31 = _ARLogGeneral();
    v26 = v31;
    if (v30 == 1)
    {
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      LOWORD(v41.data) = 0;
      v27 = "Could not rotate pixelbuffer";
LABEL_55:
      p_buf = &v41;
      goto LABEL_56;
    }

    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_70;
    }

    LOWORD(v41.data) = 0;
    v27 = "Error: Could not rotate pixelbuffer";
    goto LABEL_67;
  }

  if (a2 <= 7 && ((1 << a2) & 0xB4) != 0)
  {
    if (CVPixelBufferCreate(v23, Width, Height, 0x4C303038u, Attributes, &v44))
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        ARCorrectCVPixelBufferOrientation_cold_2();
      }

      v32 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v33 = _ARLogGeneral();
      v26 = v33;
      if (v32 == 1)
      {
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        LOWORD(v41.data) = 0;
        v27 = "Could not create pixelbuffer";
        goto LABEL_55;
      }

      if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        goto LABEL_70;
      }

      LOWORD(v41.data) = 0;
      v27 = "Error: Could not create pixelbuffer";
LABEL_67:
      p_buf = &v41;
      goto LABEL_68;
    }

    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    CVPixelBufferLockBaseAddress(v44, 0);
    v41.data = CVPixelBufferGetBaseAddress(v44);
    v41.height = CVPixelBufferGetHeight(v44);
    v41.width = CVPixelBufferGetWidth(v44);
    v41.rowBytes = CVPixelBufferGetBytesPerRow(v44);
    v36 = vImageHorizontalReflect_Planar8(&dest, &v41, 0);
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    CVPixelBufferUnlockBaseAddress(v44, 0);
    if (v36)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        ARCorrectCVPixelBufferOrientation_cold_2();
      }

      v37 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v38 = _ARLogGeneral();
      v26 = v38;
      if (v37 == 1)
      {
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v40[0] = 0;
          v27 = "Could not mirror pixelbuffer";
          p_buf = v40;
          goto LABEL_56;
        }

        goto LABEL_70;
      }

      if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        goto LABEL_70;
      }

      v40[0] = 0;
      v27 = "Error: Could not mirror pixelbuffer";
      p_buf = v40;
LABEL_68:
      v34 = v26;
      v35 = OS_LOG_TYPE_INFO;
      goto LABEL_69;
    }

    v39 = pixelBufferOut;
    *a3 = v44;
    CVPixelBufferRelease(v39);
  }

  else
  {
    *a3 = pixelBufferOut;
  }

  return 0;
}

id _getAttributes(void)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69660D8];
  v3[0] = MEMORY[0x1E695E0F8];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

uint64_t ARCreateDownScaledGrayscaleImageAndMask(void *a1, size_t a2, void *a3, CVPixelBufferRef *a4, CVPixelBufferRef *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = objc_alloc_init(MEMORY[0x1E695F620]);
  pixelBufferOut = 0;
  v74 = 0;
  v72 = 0;
  [v8 extent];
  v12 = v11;
  [v8 extent];
  v14 = v13;
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"arkit/%s %@; 1/1", "ARCreateDownScaledGrayscaleImageAndMask", v9];;
  Attributes = _getAttributes();
  v17 = *MEMORY[0x1E695E480];
  if (CVPixelBufferCreate(*MEMORY[0x1E695E480], v12, v14, 0x4C303038u, Attributes, &pixelBufferOut))
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_2();
    }

    v18 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v19 = _ARLogGeneral();
    v20 = v19;
    if (v18 == 1)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        v21 = "Could not create pixelbuffer";
        v22 = v20;
        v23 = OS_LOG_TYPE_ERROR;
LABEL_16:
        _os_log_impl(&dword_1C241C000, v22, v23, v21, &buf, 2u);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.data) = 0;
      v21 = "Error: Could not create pixelbuffer";
      v22 = v20;
      v23 = OS_LOG_TYPE_INFO;
      goto LABEL_16;
    }

LABEL_54:
    CVPixelBufferRelease(v74);
    CVPixelBufferRelease(pixelBufferOut);
    CVPixelBufferRelease(v72);
    v46 = 4294960636;
    goto LABEL_55;
  }

  [v10 render:v8 toCVPixelBuffer:pixelBufferOut];
  if (pixelBufferOut)
  {
    buf.data = 0;
    if (ARScalePixelBufferMaxDimensionToNewDimension(pixelBufferOut, a2, &buf))
    {
      v65 = a4;
      v66 = v9;
      v24 = v15;
      v25 = a5;
      v26 = v10;
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        ARCorrectCVPixelBufferOrientation_cold_2();
      }

      v27 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v28 = _ARLogGeneral();
      v29 = v28;
      if (v27 == 1)
      {
        v10 = v26;
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }

        LOWORD(v70.data) = 0;
        v30 = "Error: Could not downscale pixelbuffer";
        v31 = v29;
        v32 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        v10 = v26;
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          goto LABEL_37;
        }

        LOWORD(v70.data) = 0;
        v30 = "Error: Error: Could not downscale pixelbuffer";
        v31 = v29;
        v32 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_1C241C000, v31, v32, v30, &v70, 2u);
LABEL_37:

      v15 = v24;
      v9 = v66;
      a5 = v25;
      a4 = v65;
      if (!a5)
      {
        goto LABEL_38;
      }

LABEL_20:
      if (CVPixelBufferCreate(v17, v12, v14, 0x20u, Attributes, &v74))
      {
        v33 = v10;
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          ARCorrectCVPixelBufferOrientation_cold_2();
        }

        v34 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v35 = _ARLogGeneral();
        v36 = v35;
        if (v34 == 1)
        {
          v10 = v33;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.data) = 0;
            v37 = "Could not create pixelbuffer";
LABEL_32:
            p_buf = &buf;
LABEL_33:
            v42 = v36;
            v43 = OS_LOG_TYPE_ERROR;
LABEL_52:
            _os_log_impl(&dword_1C241C000, v42, v43, v37, p_buf, 2u);
            goto LABEL_53;
          }

          goto LABEL_53;
        }

        v10 = v33;
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          goto LABEL_53;
        }

        LOWORD(buf.data) = 0;
        v37 = "Error: Could not create pixelbuffer";
LABEL_50:
        p_buf = &buf;
        goto LABEL_51;
      }

      [v10 render:v8 toCVPixelBuffer:v74];
      if (CVPixelBufferCreate(v17, v12, v14, 0x4C303038u, Attributes, &v72))
      {
        v38 = v10;
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          ARCorrectCVPixelBufferOrientation_cold_2();
        }

        v39 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v40 = _ARLogGeneral();
        v36 = v40;
        if (v39 == 1)
        {
          v10 = v38;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.data) = 0;
            v37 = "Could not create pixelbuffer";
            goto LABEL_32;
          }

LABEL_53:

          goto LABEL_54;
        }

        v10 = v38;
        if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          goto LABEL_53;
        }

        LOWORD(buf.data) = 0;
        v37 = "Error: Could not create pixelbuffer";
        goto LABEL_50;
      }

      CVPixelBufferLockBaseAddress(v74, 0);
      CVPixelBufferLockBaseAddress(v72, 0);
      memset(&buf, 0, sizeof(buf));
      buf.data = CVPixelBufferGetBaseAddress(v74);
      buf.height = CVPixelBufferGetHeight(v74);
      buf.width = CVPixelBufferGetWidth(v74);
      v47 = a5;
      buf.rowBytes = CVPixelBufferGetBytesPerRow(v74);
      memset(&v70, 0, sizeof(v70));
      v70.data = CVPixelBufferGetBaseAddress(v72);
      v70.height = CVPixelBufferGetHeight(v72);
      v70.width = CVPixelBufferGetWidth(v72);
      v70.rowBytes = CVPixelBufferGetBytesPerRow(v72);
      v48 = vImageExtractChannel_ARGB8888(&buf, &v70, 0, 0);
      CVPixelBufferUnlockBaseAddress(v74, 0);
      CVPixelBufferUnlockBaseAddress(v72, 0);
      if (v48)
      {
        v49 = v10;
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          ARCorrectCVPixelBufferOrientation_cold_2();
        }

        v50 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v51 = _ARLogGeneral();
        v36 = v51;
        if (v50 == 1)
        {
          v10 = v49;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v69[0]) = 0;
            v37 = "Could not extract alpha channel from image";
            p_buf = v69;
            goto LABEL_33;
          }

          goto LABEL_53;
        }

        v10 = v49;
        if (!os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          goto LABEL_53;
        }

        LOWORD(v69[0]) = 0;
        v37 = "Error: Could not extract alpha channel from image";
        p_buf = v69;
LABEL_51:
        v42 = v36;
        v43 = OS_LOG_TYPE_INFO;
        goto LABEL_52;
      }

      CVPixelBufferRelease(v74);
      if (!v72)
      {
        v60 = 0;
        v61 = v47;
LABEL_72:
        *v61 = v60;
        *a4 = pixelBufferOut;
        IOSurface = CVPixelBufferGetIOSurface(*v61);
        v63 = *MEMORY[0x1E696CF98];
        IOSurfaceSetValue(IOSurface, *MEMORY[0x1E696CF98], v15);
        v64 = CVPixelBufferGetIOSurface(*a4);
        IOSurfaceSetValue(v64, v63, v15);
        goto LABEL_39;
      }

      v69[0] = 0;
      if (!ARScalePixelBufferMaxDimensionToNewDimension(v72, a2, v69))
      {
        v61 = v47;
        CVPixelBufferRelease(v72);
        v72 = v69[0];
LABEL_71:
        v60 = v72;
        goto LABEL_72;
      }

      v53 = v10;
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        ARCorrectCVPixelBufferOrientation_cold_2();
      }

      v54 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v55 = _ARLogGeneral();
      v56 = v55;
      if (v54 == 1)
      {
        v10 = v53;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          *v68 = 0;
          v57 = "Error: Could not downscale alpha mask";
          v58 = v56;
          v59 = OS_LOG_TYPE_ERROR;
LABEL_69:
          _os_log_impl(&dword_1C241C000, v58, v59, v57, v68, 2u);
        }
      }

      else
      {
        v10 = v53;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *v68 = 0;
          v57 = "Error: Error: Could not downscale alpha mask";
          v58 = v56;
          v59 = OS_LOG_TYPE_INFO;
          goto LABEL_69;
        }
      }

      v61 = v47;
      goto LABEL_71;
    }

    CVPixelBufferRelease(pixelBufferOut);
    pixelBufferOut = buf.data;
  }

  if (a5)
  {
    goto LABEL_20;
  }

LABEL_38:
  v44 = pixelBufferOut;
  *a4 = pixelBufferOut;
  v45 = CVPixelBufferGetIOSurface(v44);
  IOSurfaceSetValue(v45, *MEMORY[0x1E696CF98], v15);
LABEL_39:
  v46 = 0;
LABEL_55:

  return v46;
}

uint64_t ARScalePixelBufferMaxDimensionToNewDimension(__CVBuffer *a1, size_t a2, __CVBuffer **a3)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1278226488)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_1();
    }

    v11 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v12 = _ARLogGeneral();
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        v14 = "Pixelbuffer must have format kCVPixelFormatType_OneComponent8";
        v15 = v13;
        v16 = OS_LOG_TYPE_ERROR;
LABEL_16:
        _os_log_impl(&dword_1C241C000, v15, v16, v14, &buf, 2u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.data) = 0;
      v14 = "Error: Pixelbuffer must have format kCVPixelFormatType_OneComponent8";
      v15 = v13;
      v16 = OS_LOG_TYPE_INFO;
      goto LABEL_16;
    }

    return 4294960616;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (Width <= Height)
  {
    v8 = Height;
  }

  else
  {
    v8 = Width;
  }

  if (v8 <= a2)
  {
    v10 = Height;
    a2 = Width;
  }

  else
  {
    v9 = a2;
    if (Width <= Height)
    {
      v10 = a2;
      a2 = ((v9 / Height) * Width);
    }

    else
    {
      v10 = ((v9 / Width) * Height);
    }
  }

  if (a2 == Width && v10 == Height)
  {
    *a3 = a1;
    CVPixelBufferRetain(a1);
    return 0;
  }

  Attributes = _getAttributes();
  pixelBufferOut = 0;
  if (CVPixelBufferCreate(*MEMORY[0x1E695E480], a2, v10, 0x4C303038u, Attributes, &pixelBufferOut))
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      ARCorrectCVPixelBufferOrientation_cold_2();
    }

    v19 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v20 = _ARLogGeneral();
    v21 = v20;
    if (v19 == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        v22 = "Could not create pixelbuffer";
        v23 = v21;
        v24 = OS_LOG_TYPE_ERROR;
LABEL_36:
        _os_log_impl(&dword_1C241C000, v23, v24, v22, &buf, 2u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.data) = 0;
      v22 = "Error: Could not create pixelbuffer";
      v23 = v21;
      v24 = OS_LOG_TYPE_INFO;
      goto LABEL_36;
    }

    return 4294960634;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  buf.data = CVPixelBufferGetBaseAddress(a1);
  buf.height = CVPixelBufferGetHeight(a1);
  buf.width = CVPixelBufferGetWidth(a1);
  buf.rowBytes = CVPixelBufferGetBytesPerRow(a1);
  dest.data = CVPixelBufferGetBaseAddress(pixelBufferOut);
  dest.height = CVPixelBufferGetHeight(pixelBufferOut);
  dest.width = CVPixelBufferGetWidth(pixelBufferOut);
  dest.rowBytes = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  if (!vImageScale_Planar8(&buf, &dest, 0, 0x20u))
  {
    CVPixelBufferUnlockBaseAddress(a1, 0);
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    result = 0;
    *a3 = pixelBufferOut;
    return result;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    ARCorrectCVPixelBufferOrientation_cold_2();
  }

  v25 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v26 = _ARLogGeneral();
  v27 = v26;
  if (v25 == 1)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *v31 = 0;
      v28 = "Could not scale pixelbuffer";
      v29 = v27;
      v30 = OS_LOG_TYPE_ERROR;
LABEL_41:
      _os_log_impl(&dword_1C241C000, v29, v30, v28, v31, 2u);
    }
  }

  else if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *v31 = 0;
    v28 = "Error: Could not scale pixelbuffer";
    v29 = v27;
    v30 = OS_LOG_TYPE_INFO;
    goto LABEL_41;
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  CVPixelBufferRelease(pixelBufferOut);
  return 4294960636;
}