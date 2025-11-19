uint64_t ClipperLib::Clipper::IntersectEdges(uint64_t result, _DWORD *a2, _DWORD *a3, void *a4)
{
  v7 = a2[23];
  v8 = a3[23];
  v9 = a2[18];
  v10 = a3[18];
  if (v9 == v10)
  {
    v11 = 164;
    if (!v9)
    {
      v11 = 168;
    }

    v12 = *(result + v11);
    v13 = a2[21];
    if (v12)
    {
      if (a3[20] + v13)
      {
        v14 = a3[20] + v13;
      }

      else
      {
        v14 = -v13;
      }

      a2[21] = v14;
      v15 = a3[21];
      v16 = v15 - a2[20];
      if (v16)
      {
        a3[21] = v16;
      }

      else
      {
        a3[21] = -v15;
      }
    }

    else
    {
      a2[21] = a3[21];
      a3[21] = v13;
    }
  }

  else
  {
    v17 = 164;
    if (!v10)
    {
      v17 = 168;
    }

    if (*(result + v17))
    {
      v18 = a2[22] + a3[20];
    }

    else
    {
      v18 = a2[22] == 0;
    }

    a2[22] = v18;
    v19 = 164;
    if (!v9)
    {
      v19 = 168;
    }

    if (*(result + v19))
    {
      v20 = a3[22] - a2[20];
    }

    else
    {
      v20 = a3[22] == 0;
    }

    a3[22] = v20;
  }

  v21 = 164;
  if (v9)
  {
    v22 = 164;
  }

  else
  {
    v22 = 168;
  }

  if (v9)
  {
    v23 = 168;
  }

  else
  {
    v23 = 164;
  }

  v24 = *(result + v23);
  v25 = *(result + v22);
  if (v10)
  {
    v26 = 164;
  }

  else
  {
    v26 = 168;
  }

  if (v10)
  {
    v21 = 168;
  }

  v27 = *(result + v21);
  v28 = *(result + v26);
  v29 = a2[21];
  v30 = -v29;
  if ((v29 & 0x80000000) == 0)
  {
    v31 = v29;
  }

  else
  {
    v31 = -v29;
  }

  if (v25 != 2)
  {
    v29 = v31;
  }

  if (v25 == 3)
  {
    v29 = v30;
  }

  v32 = a3[21];
  v33 = -v32;
  if ((v32 & 0x80000000) == 0)
  {
    v34 = v32;
  }

  else
  {
    v34 = -v32;
  }

  if (v28 != 2)
  {
    v32 = v34;
  }

  if (v28 == 3)
  {
    v35 = v33;
  }

  else
  {
    v35 = v32;
  }

  if (v7 < 0 || v8 < 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      if (v35 > 1)
      {
        return result;
      }

      v37 = a2;
      goto LABEL_65;
    }

    if ((v8 & 0x80000000) == 0)
    {
      if (v29 > 1)
      {
        return result;
      }

      goto LABEL_64;
    }

    if (v29 > 1 || v35 > 1)
    {
      return result;
    }

    v48 = a2[22];
    v49 = -v48;
    if (v48 >= 0)
    {
      v50 = v48;
    }

    else
    {
      v50 = -v48;
    }

    if (v24 != 2)
    {
      v48 = v50;
    }

    if (v24 != 3)
    {
      v49 = v48;
    }

    v51 = a3[22];
    if (v27 == 3)
    {
      v51 = -v51;
    }

    else if (v27 != 2)
    {
      if (v51 >= 0)
      {
        v51 = v51;
      }

      else
      {
        v51 = -v51;
      }
    }

    if (v9 == v10)
    {
      if (v29 != 1 || v35 != 1)
      {
        v53 = a2[19];
        a2[19] = a3[19];
        a3[19] = v53;
        return result;
      }

      v52 = *(result + 104);
      if (v52 <= 1)
      {
        if (!v52)
        {
          if (v49 < 1 || v51 < 1)
          {
            return result;
          }

          goto LABEL_110;
        }

        if (v52 != 1)
        {
          return result;
        }

        goto LABEL_108;
      }

      if (v52 == 2)
      {
        if (v9 != 1 || v49 < 1 || v51 <= 0)
        {
          if (v9)
          {
            return result;
          }

LABEL_108:
          if (v49 > 0 || v51 > 0)
          {
            return result;
          }
        }
      }

      else if (v52 != 3)
      {
        return result;
      }
    }

LABEL_110:

    return ClipperLib::Clipper::AddLocalMinPoly(result, a2, a3, a4);
  }

  if (v29 <= 1 && v35 <= 1 && (v9 == v10 || *(result + 104) == 3))
  {
    v36 = result;
    ClipperLib::Clipper::AddOutPt(result, a2, a4);
    result = v36;
LABEL_64:
    v37 = a3;
LABEL_65:
    result = ClipperLib::Clipper::AddOutPt(result, v37, a4);
    v42 = a2[19];
    a2[19] = a3[19];
    a3[19] = v42;
    v43 = a2[23];
    a2[23] = a3[23];
    a3[23] = v43;
    return result;
  }

  v38 = result;
  result = ClipperLib::Clipper::AddOutPt(result, a2, a4);
  if (a3[20])
  {
    v39 = a2[23];
    v40 = a3[23];
    v41 = v39 < v40;
    if (v39 == v40)
    {
LABEL_61:
      a2[23] = -1;
      a3[23] = -1;
      return result;
    }
  }

  else
  {
    result = ClipperLib::Clipper::AddOutPt(v38, a3, a4);
    v44 = a2[23];
    v45 = a3[23];
    v41 = v44 < v45;
    if (v44 == v45)
    {
      goto LABEL_61;
    }
  }

  if (v41)
  {
    v46 = a2;
    v47 = a3;
  }

  else
  {
    v46 = a3;
    v47 = a2;
  }

  return ClipperLib::Clipper::AppendPolygon(v38, v46, v47);
}

uint64_t ClipperLib::Clipper::DeleteFromAEL(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 120);
  v3 = *(a2 + 128);
  if (*(a2 + 120) == 0)
  {
    if (*(result + 144) != a2)
    {
      return result;
    }
  }

  else if (v3)
  {
    *(v3 + 120) = v2;
    if (!v2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(result + 144) = v2;
  if (v2)
  {
LABEL_7:
    *(v2 + 128) = v3;
  }

LABEL_8:
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  return result;
}

uint64_t ClipperLib::Clipper::DeleteFromSEL(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 136);
  v3 = *(a2 + 144);
  if (*(a2 + 136) == 0)
  {
    if (*(result + 152) != a2)
    {
      return result;
    }
  }

  else if (v3)
  {
    *(v3 + 136) = v2;
    if (!v2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(result + 152) = v2;
  if (v2)
  {
LABEL_7:
    *(v2 + 144) = v3;
  }

LABEL_8:
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  return result;
}

uint64_t ClipperLib::Clipper::SetHoleState(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 128);
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 92);
      if ((v5 & 0x80000000) == 0)
      {
        if (*(v3 + 80))
        {
          v4 ^= 1u;
          if (!*(a3 + 8))
          {
            *(a3 + 8) = *(*(result + 8) + 8 * v5);
          }
        }
      }

      v3 = *(v3 + 128);
    }

    while (v3);
    if (v4)
    {
      *(a3 + 4) = 1;
    }
  }

  return result;
}

uint64_t ClipperLib::GetLowermostRec(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a2 + 32);
    if (!v5)
    {
      goto LABEL_29;
    }

    goto LABEL_3;
  }

  v9 = *(a1 + 24);
  v10 = v9[3];
  if (v10 == v9)
  {
LABEL_41:
    v4 = v9;
    *(a1 + 32) = v9;
    v5 = *(a2 + 32);
    if (!v5)
    {
      goto LABEL_29;
    }

    goto LABEL_3;
  }

  v11 = 0;
  do
  {
    v12 = v10[2];
    v13 = v9[2];
    if (v12 > v13)
    {
LABEL_7:
      v11 = 0;
      v9 = v10;
      goto LABEL_8;
    }

    if (v12 == v13)
    {
      v14 = v10[1];
      v15 = v9[1];
      if (v14 <= v15)
      {
        if (v14 < v15)
        {
          goto LABEL_7;
        }

        if (v10[3] != v9 && v10[4] != v9)
        {
          v11 = v10;
        }
      }
    }

LABEL_8:
    v10 = v10[3];
  }

  while (v10 != v9);
  if (!v11 || v11 == v9)
  {
    goto LABEL_41;
  }

  v4 = v9;
  do
  {
    if (!ClipperLib::FirstIsBottomPt(v10, v11))
    {
      v4 = v11;
    }

    do
    {
      v11 = v11[3];
    }

    while (v11[1] != v4[1] || v11[2] != v4[2]);
  }

  while (v11 != v9);
  *(v3 + 32) = v4;
  v5 = *(a2 + 32);
  if (v5)
  {
LABEL_3:
    v6 = v4[2];
    v7 = v5[2];
    v8 = v6 < v7;
    if (v6 <= v7)
    {
      goto LABEL_57;
    }

    return v3;
  }

LABEL_29:
  v17 = *(a2 + 24);
  v18 = v17[3];
  if (v18 == v17)
  {
LABEL_56:
    v5 = v17;
    *(a2 + 32) = v17;
    v4 = *(v3 + 32);
    v27 = v4[2];
    v28 = v5[2];
    v8 = v27 < v28;
    if (v27 <= v28)
    {
      goto LABEL_57;
    }

    return v3;
  }

  v19 = 0;
  while (2)
  {
    v20 = v18[2];
    v21 = v17[2];
    if (v20 > v21)
    {
      goto LABEL_31;
    }

    if (v20 != v21)
    {
      goto LABEL_32;
    }

    v22 = v18[1];
    v23 = v17[1];
    if (v22 > v23)
    {
      goto LABEL_32;
    }

    if (v22 < v23)
    {
LABEL_31:
      v19 = 0;
      v17 = v18;
      goto LABEL_32;
    }

    if (v18[3] != v17 && v18[4] != v17)
    {
      v19 = v18;
    }

LABEL_32:
    v18 = v18[3];
    if (v18 != v17)
    {
      continue;
    }

    break;
  }

  if (!v19 || v19 == v17)
  {
    goto LABEL_56;
  }

  v5 = v17;
  do
  {
    if (!ClipperLib::FirstIsBottomPt(v18, v19))
    {
      v5 = v19;
    }

    do
    {
      v19 = v19[3];
    }

    while (v19[1] != v5[1] || v19[2] != v5[2]);
  }

  while (v19 != v17);
  *(a2 + 32) = v5;
  v4 = *(v3 + 32);
  v25 = v4[2];
  v26 = v5[2];
  v8 = v25 < v26;
  if (v25 > v26)
  {
    return v3;
  }

LABEL_57:
  if (!v8)
  {
    v30 = v4[1];
    v31 = v5[1];
    if (v30 < v31)
    {
      return v3;
    }

    if (v30 <= v31 && v4[3] != v4)
    {
      if (v5[3] != v5 && !ClipperLib::FirstIsBottomPt(v4, v5))
      {
        return a2;
      }

      return v3;
    }
  }

  return a2;
}

BOOL ClipperLib::Param1RightOfParam2(uint64_t a1, uint64_t a2)
{
  do
  {
    a1 = *(a1 + 8);
  }

  while (a1 != a2 && a1 != 0);
  return a1 == a2;
}

int *ClipperLib::Clipper::GetOutRec(ClipperLib::Clipper *this, int a2)
{
  v2 = *(this + 1);
  v3 = *(v2 + 8 * a2);
  do
  {
    result = v3;
    v3 = *(v2 + 8 * *v3);
  }

  while (result != v3);
  return result;
}

void ClipperLib::Clipper::ProcessHorizontal(void *a1, void *a2, int a3)
{
  v3 = a2;
  v5 = *a2;
  v6 = a2[4];
  v7 = *a2 < v6;
  v69 = a2;
  v8 = v7;
  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (v7)
  {
    v10 = v6;
  }

  else
  {
    v10 = v5;
  }

  v11 = a2;
  while (1)
  {
    v12 = v11;
    v11 = v11[14];
    if (!v11)
    {
      break;
    }

    if (v11[7])
    {
      goto LABEL_27;
    }
  }

  v13 = v12[12];
  v14 = v12[4];
  v15 = v12[5];
  v16 = *(v13 + 32) == v14 && *(v13 + 40) == v15;
  if ((!v16 || *(v13 + 112)) && ((v13 = v12[13], *(v13 + 32) == v14) ? (v17 = *(v13 + 40) == v15) : (v17 = 0), !v17 || *(v13 + 112)) || *(v13 + 92) == -2 || *(v13 + 120) == *(v13 + 128) && *(v13 + 56))
  {
LABEL_27:
    v13 = 0;
  }

  v66 = a1 + 18;
  while (1)
  {
    if (v8)
    {
      v19 = 15;
    }

    else
    {
      v19 = 16;
    }

    v20 = v3[v19];
    while (v20)
    {
      v22 = v20;
      v23 = *(v20 + 16);
      if (v23 == v3[4])
      {
        v24 = v3[14];
        if (v24)
        {
          if (*(v20 + 64) < *(v24 + 64))
          {
            break;
          }
        }
      }

      v20 = *(v20 + v19 * 8);
      if (v8)
      {
        if (v23 > v10)
        {
          break;
        }

        if (v3 == v12 && v22 == v13)
        {
          goto LABEL_84;
        }

        v25 = v3[3];
        v67 = v23;
        v68 = v25;
        ClipperLib::Clipper::IntersectEdges(a1, v3, v22, &v67);
        v27 = v3[15];
        v26 = v3[16];
        if (v27 != v26)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v23 < v9)
        {
          break;
        }

        if (v3 == v12 && v22 == v13)
        {
LABEL_84:
          if ((*(v3 + 23) & 0x80000000) == 0)
          {
            ClipperLib::Clipper::AddOutPt(a1, v3, v3 + 4);
            for (i = a1[19]; i; i = *(i + 136))
            {
              if ((*(i + 92) & 0x80000000) == 0)
              {
                v40 = *v3;
                v41 = v3[4];
                v42 = *i;
                v43 = *(i + 32);
                if (*v3 >= v41)
                {
                  v44 = v3[4];
                }

                else
                {
                  v44 = *v3;
                }

                if (*v3 <= v41)
                {
                  v40 = v3[4];
                }

                if (v42 >= v43)
                {
                  v45 = *(i + 32);
                }

                else
                {
                  v45 = *i;
                }

                if (v42 <= v43)
                {
                  v42 = *(i + 32);
                }

                if (v44 < v42 && v45 < v40)
                {
                  ClipperLib::Clipper::AddOutPt(a1, i, i);
                  v47 = *(i + 32);
                  v48 = *(i + 40);
                  operator new();
                }
              }
            }

            v33 = *v3;
            v34 = v3[1];
            operator new();
          }

          v35 = v69[16];
          v36 = v69 + 15;
          v37 = v69[15];
          if (*(v69 + 15) == 0)
          {
            v39 = v66;
            if (*v66 == v69)
            {
              *v66 = v37;
              goto LABEL_117;
            }

            v50 = *(v13 + 120);
            v51 = *(v13 + 128);
            v49 = (v13 + 120);
            if (*(v13 + 120) != 0)
            {
              goto LABEL_112;
            }

LABEL_118:
            if (*v39 == v13)
            {
              *v39 = v50;
              goto LABEL_120;
            }
          }

          else
          {
            v38 = (v35 + 120);
            v39 = v66;
            if (!v35)
            {
              v38 = v66;
            }

            *v38 = v37;
            if (v37)
            {
              *(v37 + 128) = v35;
            }

LABEL_117:
            *v36 = 0;
            v36[1] = 0;
            v50 = *(v13 + 120);
            v51 = *(v13 + 128);
            v49 = (v13 + 120);
            if (*(v13 + 120) == 0)
            {
              goto LABEL_118;
            }

LABEL_112:
            v52 = (v51 + 120);
            if (!v51)
            {
              v52 = v39;
            }

            *v52 = v50;
            if (v50)
            {
LABEL_115:
              *(v50 + 128) = v51;
            }

LABEL_120:
            *v49 = 0;
            v49[1] = 0;
          }

          return;
        }

        v28 = v3[3];
        v67 = v23;
        v68 = v28;
        ClipperLib::Clipper::IntersectEdges(a1, v22, v3, &v67);
        v27 = v3[15];
        v26 = v3[16];
        if (v27 != v26)
        {
LABEL_58:
          v30 = *(v22 + 120);
          v29 = *(v22 + 128);
          if (v30 == v29)
          {
            continue;
          }

          if (v27 == v22)
          {
            if (v30)
            {
              v30[16] = v3;
              v26 = v3[16];
            }

            if (v26)
            {
              v26[15] = v22;
            }

            *(v22 + 120) = v3;
            *(v22 + 128) = v26;
            v3[15] = v30;
            v3[16] = v22;
            v31 = v22;
            if (*(v22 + 128))
            {
              continue;
            }
          }

          else if (v30 == v3)
          {
            if (v27)
            {
              v27[16] = v22;
              v29 = *(v22 + 128);
            }

            if (v29)
            {
              v29[15] = v3;
            }

            v3[15] = v22;
            v3[16] = v29;
            v26 = v3;
            *(v22 + 120) = v27;
            *(v22 + 128) = v3;
            v31 = v3;
            if (v3[16])
            {
              goto LABEL_70;
            }
          }

          else
          {
            v3[15] = v30;
            if (v30)
            {
              v30[16] = v3;
              v29 = *(v22 + 128);
            }

            v3[16] = v29;
            if (v29)
            {
              v29[15] = v3;
            }

            *(v22 + 120) = v27;
            if (v27)
            {
              v27[16] = v22;
            }

            *(v22 + 128) = v26;
            if (v26)
            {
              v26[15] = v22;
            }

            v31 = v3;
            if (v3[16])
            {
LABEL_70:
              v31 = v22;
              if (v26)
              {
                continue;
              }
            }
          }

          *v66 = v31;
        }
      }
    }

    v21 = v3[14];
    if (!v21)
    {
      if ((*(v3 + 23) & 0x80000000) == 0)
      {
        ClipperLib::Clipper::AddOutPt(a1, v3, v3 + 4);
      }

      v50 = v3[15];
      v51 = v3[16];
      v49 = v3 + 15;
      if (*(v3 + 15) != 0)
      {
        v53 = (v51 + 120);
        if (!v51)
        {
          v53 = v66;
        }

        *v53 = v50;
        if (v50)
        {
          goto LABEL_115;
        }

        goto LABEL_120;
      }

      if (*v66 == v3)
      {
        *v66 = v50;
        goto LABEL_120;
      }

      return;
    }

    if (*(v21 + 56))
    {
      break;
    }

    ClipperLib::Clipper::UpdateEdgeIntoAEL(a1, &v69);
    v3 = v69;
    if ((*(v69 + 23) & 0x80000000) == 0)
    {
      ClipperLib::Clipper::AddOutPt(a1, v69, v69);
    }

    v18 = v3[4];
    v8 = *v3 < v18;
    if (*v3 >= v18)
    {
      v9 = v3[4];
    }

    else
    {
      v9 = *v3;
    }

    if (*v3 <= v18)
    {
      v10 = v3[4];
    }

    else
    {
      v10 = *v3;
    }
  }

  if ((*(v3 + 23) & 0x80000000) != 0)
  {
    ClipperLib::Clipper::UpdateEdgeIntoAEL(a1, &v69);
    return;
  }

  ClipperLib::Clipper::AddOutPt(a1, v3, v3 + 4);
  if (a3)
  {
    v55 = *v3;
    v54 = v3[1];
    operator new();
  }

  ClipperLib::Clipper::UpdateEdgeIntoAEL(a1, &v69);
  v56 = v69;
  if (*(v69 + 20))
  {
    v57 = v69[15];
    v58 = v69[16];
    if (v58 && *(v58 + 16) == *v69 && (v59 = *(v58 + 24), v59 == v69[1]) && *(v58 + 80) && (*(v58 + 92) & 0x80000000) == 0 && v59 > *(v58 + 40) && ClipperLib::SlopesEqual(v69, v69[16], *(a1 + *(*a1 - 24) + 40)))
    {
      v60 = a1;
      v61 = v58;
    }

    else
    {
      if (!v57)
      {
        return;
      }

      if (*(v57 + 16) != *v56)
      {
        return;
      }

      v62 = *(v57 + 24);
      if (v62 != v56[1] || !*(v57 + 80) || (*(v57 + 92) & 0x80000000) != 0 || v62 <= *(v57 + 40) || !ClipperLib::SlopesEqual(v56, v57, *(a1 + *(*a1 - 24) + 40)))
      {
        return;
      }

      v60 = a1;
      v61 = v57;
    }

    ClipperLib::Clipper::AddOutPt(v60, v61, v56);
    v63 = v56[4];
    v64 = v56[5];
    ClipperLib::Clipper::AddJoin();
  }
}

uint64_t ClipperLib::GetMaximaPair(void *a1)
{
  result = a1[12];
  v3 = a1[4];
  v4 = a1[5];
  v5 = *(result + 32) == v3 && *(result + 40) == v4;
  if (!v5 || *(result + 112))
  {
    result = a1[13];
    v6 = *(result + 32) == v3 && *(result + 40) == v4;
    if (!v6 || *(result + 112))
    {
      return 0;
    }
  }

  if (*(result + 92) == -2 || *(result + 120) == *(result + 128) && *(result + 56))
  {
    return 0;
  }

  return result;
}

uint64_t ClipperLib::Clipper::SwapPositionsInAEL(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 120);
  v3 = *(a2 + 128);
  if (v4 != v3)
  {
    v6 = *(a3 + 120);
    v5 = *(a3 + 128);
    if (v6 != v5)
    {
      if (v4 != a3)
      {
        if (v6 == a2)
        {
          if (v4)
          {
            *(v4 + 128) = a3;
            v5 = *(a3 + 128);
          }

          if (v5)
          {
            *(v5 + 120) = a2;
          }

          *(a2 + 120) = a3;
          *(a2 + 128) = v5;
          v3 = a2;
          *(a3 + 120) = v4;
          *(a3 + 128) = a2;
          if (!*(a2 + 128))
          {
            goto LABEL_27;
          }
        }

        else
        {
          *(a2 + 120) = v6;
          if (v6)
          {
            *(v6 + 128) = a2;
            v5 = *(a3 + 128);
          }

          *(a2 + 128) = v5;
          if (v5)
          {
            *(v5 + 120) = a2;
          }

          *(a3 + 120) = v4;
          if (v4)
          {
            *(v4 + 128) = a3;
          }

          *(a3 + 128) = v3;
          if (v3)
          {
            *(v3 + 120) = a3;
          }

          if (!*(a2 + 128))
          {
            goto LABEL_27;
          }
        }

        a2 = a3;
        if (v3)
        {
          return result;
        }

LABEL_27:
        *(result + 144) = a2;
        return result;
      }

      if (v6)
      {
        *(v6 + 128) = a2;
        v3 = *(a2 + 128);
      }

      if (v3)
      {
        *(v3 + 120) = a3;
      }

      *(a3 + 120) = a2;
      *(a3 + 128) = v3;
      *(a2 + 120) = v6;
      *(a2 + 128) = a3;
      a2 = a3;
      if (!*(a3 + 128))
      {
        goto LABEL_27;
      }
    }
  }

  return result;
}

uint64_t ClipperLib::Clipper::SwapPositionsInSEL(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 136);
  if (v3 || *(a2 + 144))
  {
    v4 = *(a3 + 136);
    if (v4)
    {
      if (v3 != a3)
      {
        if (v4 == a2)
        {
          if (v3)
          {
            *(v3 + 144) = a3;
          }

          v9 = *(a3 + 144);
          if (v9)
          {
            *(v9 + 136) = a2;
          }

          *(a2 + 136) = a3;
          *(a2 + 144) = v9;
          *(a3 + 136) = v3;
          *(a3 + 144) = a2;
          if (!*(a2 + 144))
          {
            goto LABEL_29;
          }

          goto LABEL_22;
        }

        v5 = *(a2 + 144);
        *(v4 + 144) = a2;
        v6 = (a3 + 144);
        v7 = *(a3 + 144);
        *(a2 + 136) = v4;
        *(a2 + 144) = v7;
        if (!v7)
        {
          *(a3 + 136) = v3;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

LABEL_15:
        *(v7 + 136) = a2;
        *(a3 + 136) = v3;
        if (!v3)
        {
LABEL_9:
          *v6 = v5;
          if (v5)
          {
            *(v5 + 136) = a3;
            if (!*(a2 + 144))
            {
              goto LABEL_29;
            }

LABEL_22:
            a2 = a3;
            if (*(a3 + 144))
            {
              return result;
            }

LABEL_29:
            *(result + 152) = a2;
            return result;
          }

LABEL_21:
          if (!*(a2 + 144))
          {
            goto LABEL_29;
          }

          goto LABEL_22;
        }

LABEL_8:
        *(v3 + 144) = a3;
        goto LABEL_9;
      }

      *(v4 + 144) = a2;
    }

    else
    {
      v6 = (a3 + 144);
      v7 = *(a3 + 144);
      if (!v7)
      {
        return result;
      }

      if (v3 != a3)
      {
        v5 = *(a2 + 144);
        *(a2 + 136) = 0;
        *(a2 + 144) = v7;
        goto LABEL_15;
      }
    }

    v8 = *(a2 + 144);
    if (v8)
    {
      *(v8 + 136) = a3;
    }

    *(a3 + 136) = a2;
    *(a3 + 144) = v8;
    *(a2 + 136) = v4;
    *(a2 + 144) = a3;
    goto LABEL_21;
  }

  return result;
}

uint64_t ClipperLib::GetNextInAEL(uint64_t a1, int a2)
{
  v2 = 128;
  if (a2 == 1)
  {
    v2 = 120;
  }

  return *(a1 + v2);
}

uint64_t *ClipperLib::GetHorzDirection(uint64_t *result, int *a2, void *a3, void *a4)
{
  v4 = *result;
  v5 = result[4];
  v6 = *result < v5;
  if (*result >= v5)
  {
    v4 = result[4];
  }

  *a3 = v4;
  if (v6)
  {
    v7 = result + 4;
  }

  else
  {
    v7 = result;
  }

  v8 = *v7;
  v9 = v6;
  *a4 = v8;
  *a2 = v9;
  return result;
}

void ClipperLib::Clipper::UpdateEdgeIntoAEL(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 112);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    ClipperLib::clipperException::clipperException(exception, "UpdateEdgeIntoAEL: invalid call");
  }

  *(v3 + 92) = *(v2 + 92);
  v6 = v2 + 120;
  v5 = *(v2 + 120);
  v4 = *(v6 + 8);
  v7 = a1 + 18;
  if (v4)
  {
    v7 = (v4 + 120);
  }

  *v7 = v3;
  if (v5)
  {
    *(v5 + 128) = *(*a2 + 112);
  }

  v8 = *(*a2 + 112);
  *(v8 + 76) = *(*a2 + 76);
  *a2 = v8;
  v8[1] = *v8;
  *(*a2 + 128) = v4;
  *(*a2 + 120) = v5;
  if (*(*a2 + 56))
  {
    v22 = *(*a2 + 40);
    std::vector<long long>::push_back[abi:ne200100]((a1 + 14), &v22);
    v10 = a1[14];
    v11 = a1[15];
    v12 = (v11 - v10) >> 3;
    v13 = v12 < 2;
    v14 = v12 - 2;
    if (!v13)
    {
      v15 = v14 >> 1;
      v16 = (v10 + 8 * v15);
      v19 = *(v11 - 8);
      v17 = (v11 - 8);
      v18 = v19;
      v20 = *v16;
      if (*v16 < v19)
      {
        do
        {
          *v17 = v20;
          v17 = v16;
          if (!v15)
          {
            break;
          }

          v15 = (v15 - 1) >> 1;
          v16 = (v10 + 8 * v15);
          v20 = *v16;
        }

        while (*v16 < v18);
        *v17 = v18;
      }
    }
  }
}

uint64_t ClipperLib::Clipper::BuildIntersectList(uint64_t this, uint64_t a2)
{
  v2 = *(this + 144);
  if (v2)
  {
    *(this + 152) = v2;
    do
    {
      while (1)
      {
        v5 = *(v2 + 120);
        *(v2 + 136) = v5;
        if (*(v2 + 40) != a2)
        {
          break;
        }

        *(v2 + 16) = *(v2 + 32);
        v2 = v5;
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      v3 = *(v2 + 64) * (a2 - *(v2 + 8));
      if (v3 >= 0.0)
      {
        v4 = 0.5;
      }

      else
      {
        v4 = -0.5;
      }

      *(v2 + 16) = *v2 + (v4 + v3);
      v2 = v5;
    }

    while (v5);
LABEL_9:
    v6 = *(this + 152);
    v7 = v6[17];
    if (v7)
    {
      do
      {
        v10 = 0uLL;
        if (v6[2] > *(v7 + 16))
        {
          ClipperLib::IntersectPoint(v6, v7, &v10);
          operator new();
        }

        v6 = v7;
        v7 = *(v7 + 136);
      }

      while (v7);
      v8 = v6[18];
      if (v8)
      {
        *(v8 + 136) = 0;
      }
    }

    else
    {
      v9 = v6[18];
      if (v9)
      {
        *(v9 + 136) = 0;
      }
    }

    *(this + 152) = 0;
  }

  return this;
}

BOOL ClipperLib::Clipper::FixupIntersectionOrder(ClipperLib::Clipper *this)
{
  v2 = *(this + 18);
  *(this + 19) = v2;
  if (v2)
  {
    do
    {
      v3 = *(v2 + 120);
      *(v2 + 136) = v3;
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 10);
  v5 = *(this + 11);
  v6 = 126 - 2 * __clz((v5->i64 - v4) >> 3);
  v26 = ClipperLib::IntersectListSort;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = 1;
  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(p2t::Point const*,p2t::Point const*),p2t::Point**,false>(v4, v5, &v26, v7, 1);
  v9 = *(this + 11) - *(this + 10);
  if (v9)
  {
    v8 = 0;
    v10 = 0;
    v11 = v9 >> 3;
    if ((v9 >> 3) <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9 >> 3;
    }

    v13 = 1;
    do
    {
      if (v11 <= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v11;
      }

      v15 = *(this + 10);
      v16 = *(v15 + 8 * v10);
      v17 = *v16;
      v18 = v16[1];
      if (*(*v16 + 136) != v18 && *(v17 + 144) != v18)
      {
        v19 = v13;
        v20 = v10;
        while (1)
        {
          if (v19 >= v11)
          {
            v20 = v14;
LABEL_23:
            if (v20 == v11)
            {
              return v8;
            }

            goto LABEL_26;
          }

          v21 = *(v15 + 8 * v19);
          v23 = *v21;
          v22 = v21[1];
          if (*(v23 + 136) == v22)
          {
            break;
          }

          ++v19;
          ++v20;
          if (*(v23 + 144) == v22)
          {
            goto LABEL_23;
          }
        }

        v20 = v19;
        if (v19 == v11)
        {
          return v8;
        }

LABEL_26:
        *(v15 + 8 * v10) = *(v15 + 8 * v20);
        *(v15 + 8 * v20) = v16;
        v24 = *(v15 + 8 * v10);
        v17 = *v24;
        v18 = v24[1];
      }

      ClipperLib::Clipper::SwapPositionsInSEL(this, v17, v18);
      v8 = ++v10 >= v11;
      ++v13;
    }

    while (v10 != v12);
  }

  return v8;
}

void *ClipperLib::Clipper::ProcessIntersectList(void *this)
{
  v1 = this;
  v2 = this[10];
  if (this[11] != v2)
  {
    for (i = 0; i < (v1[11] - v2) >> 3; ++i)
    {
      v4 = *(v2 + 8 * i);
      ClipperLib::Clipper::IntersectEdges(v1, *v4, v4[1], v4 + 2);
      v5 = *v4;
      v7 = *(*v4 + 120);
      v6 = *(*v4 + 128);
      if (v7 == v6)
      {
        goto LABEL_4;
      }

      v8 = v4[1];
      v10 = *(v8 + 120);
      v9 = *(v8 + 128);
      if (v10 == v9)
      {
        goto LABEL_4;
      }

      if (v7 == v8)
      {
        if (v10)
        {
          *(v10 + 128) = v5;
          v6 = *(v5 + 16);
        }

        if (v6)
        {
          *(v6 + 15) = v8;
        }

        *(v8 + 120) = v5;
        *(v8 + 128) = v6;
        *(v5 + 15) = v10;
        *(v5 + 16) = v8;
        v5 = v8;
        if (*(v8 + 128))
        {
          goto LABEL_4;
        }
      }

      else if (v10 == v5)
      {
        if (v7)
        {
          *(v7 + 128) = v8;
          v9 = *(v8 + 128);
        }

        if (v9)
        {
          *(v9 + 120) = v5;
        }

        *(v5 + 15) = v8;
        *(v5 + 16) = v9;
        v6 = v5;
        *(v8 + 120) = v7;
        *(v8 + 128) = v5;
        if (*(v5 + 16))
        {
LABEL_18:
          v5 = v8;
          if (v6)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        *(v5 + 15) = v10;
        if (v10)
        {
          *(v10 + 128) = v5;
          v9 = *(v8 + 128);
        }

        *(v5 + 16) = v9;
        if (v9)
        {
          *(v9 + 120) = v5;
        }

        *(v8 + 120) = v7;
        if (v7)
        {
          *(v7 + 128) = v8;
        }

        *(v8 + 128) = v6;
        if (v6)
        {
          *(v6 + 15) = v8;
        }

        if (*(v5 + 16))
        {
          goto LABEL_18;
        }
      }

      v1[18] = v5;
LABEL_4:
      this = MEMORY[0x23EE6C500](v4, 0x1020C406C4767B9);
      v2 = v1[10];
    }
  }

  v1[11] = v2;
  return this;
}

uint64_t ClipperLib::Clipper::DisposeIntersectNodes(uint64_t this)
{
  v1 = this;
  v2 = *(this + 80);
  v3 = *(this + 88);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = MEMORY[0x23EE6C500](this, 0x1020C406C4767B9);
        v2 = *(v1 + 80);
        v3 = *(v1 + 88);
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  *(v1 + 88) = v2;
  return this;
}

uint64_t ClipperLib::Clipper::DoMaxima(uint64_t result, uint64_t a2)
{
  v3 = result;
  v5 = (a2 + 32);
  v4 = *(a2 + 32);
  v6 = *(a2 + 96);
  v7 = *(a2 + 40);
  v8 = *(v6 + 32) == v4 && *(v6 + 40) == v7;
  if ((!v8 || *(v6 + 112)) && ((v6 = *(a2 + 104), *(v6 + 32) == v4) ? (v9 = *(v6 + 40) == v7) : (v9 = 0), !v9 || *(v6 + 112)) || *(v6 + 92) == -2 || (v12 = (v6 + 120), *(v6 + 120) == *(v6 + 128)) && *(v6 + 56))
  {
    if ((*(a2 + 92) & 0x80000000) == 0)
    {
      result = ClipperLib::Clipper::AddOutPt(result, a2, (a2 + 32));
    }

    v11 = *(a2 + 120);
    v10 = *(a2 + 128);
    v12 = (a2 + 120);
    if (*(a2 + 120) == 0)
    {
      if (*(v3 + 144) == a2)
      {
        goto LABEL_93;
      }

      return result;
    }

    goto LABEL_17;
  }

  v14 = (a2 + 120);
  v13 = *(a2 + 120);
  v15 = v13 != 0;
  if (v13 && v13 != v6)
  {
    while (1)
    {
      result = ClipperLib::Clipper::IntersectEdges(v3, a2, v13, v5);
      v24 = *(a2 + 120);
      v23 = *(a2 + 128);
      if (v24 != v23)
      {
        v26 = *(v13 + 120);
        v25 = *(v13 + 128);
        if (v26 != v25)
        {
          break;
        }
      }

LABEL_34:
      v13 = *v14;
      v15 = *v14 != 0;
      if (*v14)
      {
        v22 = v13 == v6;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        goto LABEL_25;
      }
    }

    if (v24 == v13)
    {
      if (v26)
      {
        *(v26 + 128) = a2;
        v23 = *(a2 + 128);
      }

      if (v23)
      {
        *(v23 + 120) = v13;
      }

      *(v13 + 120) = a2;
      *(v13 + 128) = v23;
      *(a2 + 120) = v26;
      *(a2 + 128) = v13;
      v27 = v13;
      if (*(v13 + 128))
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (v26 == a2)
    {
      if (v24)
      {
        *(v24 + 128) = v13;
        v25 = *(v13 + 128);
      }

      if (v25)
      {
        *(v25 + 120) = a2;
      }

      *(a2 + 120) = v13;
      *(a2 + 128) = v25;
      v23 = a2;
      *(v13 + 120) = v24;
      *(v13 + 128) = a2;
      v27 = a2;
      if (!*(a2 + 128))
      {
        goto LABEL_33;
      }
    }

    else
    {
      *v14 = v26;
      if (v26)
      {
        *(v26 + 128) = a2;
        v25 = *(v13 + 128);
      }

      *(a2 + 128) = v25;
      if (v25)
      {
        *(v25 + 120) = a2;
      }

      *(v13 + 120) = v24;
      if (v24)
      {
        *(v24 + 128) = v13;
      }

      *(v13 + 128) = v23;
      if (v23)
      {
        *(v23 + 120) = v13;
      }

      v27 = a2;
      if (!*(a2 + 128))
      {
LABEL_33:
        *(v3 + 144) = v27;
        goto LABEL_34;
      }
    }

    v27 = v13;
    if (v23)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_25:
  v16 = *(a2 + 92);
  if (v16 == -1)
  {
    if (*(v6 + 92) != -1)
    {
      goto LABEL_96;
    }

    v28 = *(a2 + 128);
    if (v28)
    {
      v29 = 1;
    }

    else
    {
      v29 = v15;
    }

    if (v29)
    {
      if (v28)
      {
        v30 = (v28 + 120);
LABEL_80:
        *v30 = v13;
        if (v15)
        {
          *(v13 + 128) = v28;
        }

        *v14 = 0;
        *(a2 + 128) = 0;
LABEL_83:
        v11 = *(v6 + 120);
        v10 = *(v6 + 128);
        if (*(v6 + 120) == 0)
        {
          goto LABEL_92;
        }

LABEL_17:
        if (v10)
        {
          *(v10 + 120) = v11;
          if (!v11)
          {
            goto LABEL_95;
          }

          goto LABEL_94;
        }

LABEL_93:
        *(v3 + 144) = v11;
        if (!v11)
        {
LABEL_95:
          *v12 = 0;
          v12[1] = 0;
          return result;
        }

LABEL_94:
        *(v11 + 128) = v10;
        goto LABEL_95;
      }
    }

    else if (*(v3 + 144) != a2)
    {
      goto LABEL_83;
    }

    v30 = (v3 + 144);
    goto LABEL_80;
  }

  if (v16 < 0 || (*(v6 + 92) & 0x80000000) != 0)
  {
LABEL_96:
    exception = __cxa_allocate_exception(0x20uLL);
    ClipperLib::clipperException::clipperException(exception, "DoMaxima error");
  }

  result = ClipperLib::Clipper::AddOutPt(v3, a2, v5);
  if (*(v6 + 80))
  {
    v17 = *(a2 + 92);
    v18 = *(v6 + 92);
    v19 = v17 < v18;
    if (v17 == v18)
    {
      goto LABEL_30;
    }
  }

  else
  {
    result = ClipperLib::Clipper::AddOutPt(v3, v6, v5);
    v31 = *(a2 + 92);
    v32 = *(v6 + 92);
    v19 = v31 < v32;
    if (v31 == v32)
    {
LABEL_30:
      *(a2 + 92) = -1;
      *(v6 + 92) = -1;
      v21 = *(a2 + 120);
      v20 = *(a2 + 128);
      if (*(a2 + 120) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_86;
    }
  }

  if (v19)
  {
    v33 = a2;
    v34 = v6;
  }

  else
  {
    v33 = v6;
    v34 = a2;
  }

  result = ClipperLib::Clipper::AppendPolygon(v3, v33, v34);
  v21 = *(a2 + 120);
  v20 = *(a2 + 128);
  if (*(a2 + 120) == 0)
  {
LABEL_31:
    if (*(v3 + 144) == a2)
    {
      goto LABEL_88;
    }

    goto LABEL_83;
  }

LABEL_86:
  if (v20)
  {
    v35 = (v20 + 120);
    goto LABEL_89;
  }

LABEL_88:
  v35 = (v3 + 144);
LABEL_89:
  *v35 = v21;
  if (v21)
  {
    *(v21 + 128) = v20;
  }

  *v14 = 0;
  *(a2 + 128) = 0;
  v11 = *(v6 + 120);
  v10 = *(v6 + 128);
  if (*(v6 + 120) != 0)
  {
    goto LABEL_17;
  }

LABEL_92:
  if (*(v3 + 144) == v6)
  {
    goto LABEL_93;
  }

  return result;
}

uint64_t ClipperLib::PointCount(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = a1;
    do
    {
      v1 = (v1 + 1);
      v2 = *(v2 + 24);
    }

    while (v2 != a1);
  }

  return v1;
}

void std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

__n128 ClipperLib::SwapIntersectNodes(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  *a1 = *a2;
  result = *(a2 + 16);
  a1[1] = result;
  *a2 = v3;
  *(a2 + 16) = v2;
  return result;
}

BOOL ClipperLib::GetOverlap(ClipperLib *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  if (this >= a2)
  {
    if (a3 >= a4)
    {
      if (a2 <= a4)
      {
        v14 = a4;
      }

      else
      {
        v14 = a2;
      }

      *a5 = v14;
      if (a3 >= this)
      {
        v15 = this;
      }

      else
      {
        v15 = a3;
      }

      *a6 = v15;
      return *a5 < v15;
    }

    else
    {
      if (a2 <= a3)
      {
        v10 = a3;
      }

      else
      {
        v10 = a2;
      }

      *a5 = v10;
      if (a4 >= this)
      {
        v11 = this;
      }

      else
      {
        v11 = a4;
      }

      *a6 = v11;
      return *a5 < v11;
    }
  }

  else if (a3 >= a4)
  {
    if (this <= a4)
    {
      v12 = a4;
    }

    else
    {
      v12 = this;
    }

    *a5 = v12;
    if (a3 >= a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = a3;
    }

    *a6 = v13;
    return *a5 < v13;
  }

  else
  {
    if (this <= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = this;
    }

    *a5 = v7;
    if (a4 >= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = a4;
    }

    *a6 = v8;
    return *a5 < v8;
  }
}

uint64_t ClipperLib::JoinHorz(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = a1[1];
  v8 = *(a2 + 8);
  v9 = v7 <= v8;
  v10 = *(a3 + 8) <= *(a4 + 8);
  if (v9 != v10)
  {
    v17 = *(a3 + 8) <= *(a4 + 8);
    v15 = *(a2 + 8);
    v16 = a1[1];
    if (v7 > v8)
    {
      do
      {
        v11 = a1;
        a1 = a1[3];
        v13 = a1[1];
      }

      while (v13 >= a5 && v13 <= v11[1] && a1[2] == a6);
      if (a7)
      {
LABEL_13:
        operator new();
      }
    }

    else
    {
      do
      {
        v11 = a1;
        a1 = a1[3];
        v12 = a1[1];
      }

      while (v12 <= a5 && v12 >= v11[1] && a1[2] == a6);
      if (!a7)
      {
        goto LABEL_13;
      }
    }

    v11[1];
    goto LABEL_13;
  }

  return v9 ^ v10;
}

uint64_t ClipperLib::Clipper::JoinPoints(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(*a2 + 8);
  v8 = *(*a2 + 16);
  v9 = a2[3];
  if (v8 != v9)
  {
    v45 = (v5 + 3);
    do
    {
      v46 = *v45;
      v47 = *(*v45 + 8);
      v48 = *(*v45 + 16);
      v45 = *v45 + 24;
    }

    while (v46 != v5 && v47 == v7 && v48 == v8);
    if (v48 <= v8 && (v79 = *a1, v80 = a2[2], ClipperLib::SlopesEqual(v7, v8, v47, v48, v80, v9, *(a1 + *(*a1 - 24) + 40))))
    {
      v77 = a4;
      v76 = 0;
    }

    else
    {
      v46 = v5;
      do
      {
        v46 = v46[4];
        v51 = v46[1];
        v52 = v46[2];
      }

      while (v46 != v5 && v51 == v7 && v52 == v8);
      if (v52 > v8)
      {
        return 0;
      }

      v79 = *a1;
      v80 = a2[2];
      result = ClipperLib::SlopesEqual(v7, v8, v51, v52, v80, v9, *(a1 + *(*a1 - 24) + 40));
      if (!result)
      {
        return result;
      }

      v77 = a4;
      v76 = 1;
    }

    v56 = v6[1];
    v57 = (v6 + 3);
    v58 = v6[2];
    do
    {
      v59 = *v57;
      v60 = *(*v57 + 8);
      v61 = *(*v57 + 16);
      v57 = *v57 + 24;
    }

    while (v60 == v56 && v61 == v58 && v59 != v6);
    if (v61 <= v58 && ClipperLib::SlopesEqual(v56, v6[2], v60, v61, v80, v9, *(a1 + *(v79 - 24) + 40)))
    {
      v64 = 0;
      result = 0;
      if (v46 == v59)
      {
        return result;
      }
    }

    else
    {
      v59 = v6;
      do
      {
        v59 = v59[4];
        v65 = v59[1];
        v66 = v59[2];
      }

      while (v65 == v56 && v66 == v58 && v59 != v6);
      if (v66 > v58)
      {
        return 0;
      }

      result = ClipperLib::SlopesEqual(v56, v58, v65, v66, v80, v9, *(a1 + *(v79 - 24) + 40));
      if (!result)
      {
        return result;
      }

      v64 = 1;
      result = 0;
      if (v46 == v59)
      {
        return result;
      }
    }

    if (v46 == v5 || v59 == v6)
    {
      return result;
    }

    if (a3 != v77 || v76 != v64)
    {
      operator new();
    }

    return 0;
  }

  v10 = a2[2];
  v11 = *a2;
  if (v10 != v7 || (v10 == v6[1] ? (v12 = v8 == v6[2]) : (v12 = 0), v11 = *a2, !v12))
  {
    do
    {
      v13 = v11;
      v11 = v11[4];
    }

    while (v11 != v5 && v11[2] == v8 && v11 != v6);
    v16 = v13 + 2;
    do
    {
      v17 = v5;
      v5 = v5[3];
    }

    while (v5 != v13 && v5[2] == v8 && v5 != v6);
    if (v5 != v13 && v5 != v6)
    {
      v21 = v6[2];
      v22 = v6;
      do
      {
        v23 = v22;
        v22 = v22[4];
      }

      while (v22 != v17 && v22[2] == v21 && v22 != v6);
      do
      {
        v26 = v6;
        v6 = v6[3];
      }

      while (v6 != v13 && v6 != v23 && v6[2] == v21);
      if (v6 != v23 && v6 != v13)
      {
        v30 = v13[1];
        v31 = *(v17 + 8);
        v32 = *(v23 + 8);
        v33 = *(v26 + 8);
        v34 = v32 < v33;
        if (v31 <= v33)
        {
          v35 = *(v26 + 8);
        }

        else
        {
          v35 = *(v17 + 8);
        }

        if (v32 >= v30)
        {
          v36 = v13[1];
        }

        else
        {
          v36 = *(v23 + 8);
        }

        if (v31 <= v32)
        {
          v37 = *(v23 + 8);
        }

        else
        {
          v37 = *(v17 + 8);
        }

        if (v33 >= v30)
        {
          v38 = v13[1];
        }

        else
        {
          v38 = *(v26 + 8);
        }

        if (v32 < v33)
        {
          v36 = v38;
        }

        else
        {
          v37 = v35;
        }

        if (v30 <= v33)
        {
          v39 = *(v26 + 8);
        }

        else
        {
          v39 = v13[1];
        }

        if (v32 >= v31)
        {
          v40 = *(v17 + 8);
        }

        else
        {
          v40 = *(v23 + 8);
        }

        if (v30 <= v32)
        {
          v41 = *(v23 + 8);
        }

        else
        {
          v41 = v13[1];
        }

        if (v33 >= v31)
        {
          v42 = *(v17 + 8);
        }

        else
        {
          v42 = *(v26 + 8);
        }

        if (v32 < v33)
        {
          v40 = v42;
        }

        else
        {
          v41 = v39;
        }

        if (v30 < v31)
        {
          v37 = v41;
          v36 = v40;
        }

        if (v37 < v36)
        {
          if (v30 < v37 || v30 > v36)
          {
            if (v32 < v37 || v32 > v36)
            {
              if (v31 < v37 || v31 > v36)
              {
                v16 = (v26 + 16);
              }

              else
              {
                v16 = (v17 + 16);
                v33 = *(v17 + 8);
                v34 = v30 < v31;
              }
            }

            else
            {
              v34 = v32 > v33;
              v16 = (v23 + 16);
              v33 = *(v23 + 8);
            }
          }

          else
          {
            v34 = v30 > v31;
            v33 = v13[1];
          }

          v75 = *v16;
          *a2 = v13;
          a2[1] = v23;

          return ClipperLib::JoinHorz(v13, v17, v23, v26, v33, v75, v34);
        }
      }
    }

    return 0;
  }

  if (a3 != a4)
  {
    return 0;
  }

  v69 = *a2;
  while (1)
  {
    v69 = v69[3];
    if (v69 == v5)
    {
      break;
    }

    v70 = v69[2];
    if (v69[1] != v10 || v70 != v8)
    {
      goto LABEL_147;
    }
  }

  v70 = v69[2];
LABEL_147:
  v72 = a2[1];
  while (1)
  {
    v72 = v72[3];
    if (v72 == v6)
    {
      break;
    }

    v73 = v72[2];
    if (v72[1] != v10 || v73 != v8)
    {
      goto LABEL_155;
    }
  }

  v73 = v72[2];
LABEL_155:
  if (v70 > v8 == v73 <= v8)
  {
    operator new();
  }

  return v70 > v8 == v73 <= v8;
}

uint64_t ClipperLib::Clipper::FixupFirstLefts1(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = v4 - v3;
  if (v4 == v3)
  {
    return result;
  }

  v6 = 0;
  v7 = v5 >> 3;
  if (v7 <= 1)
  {
    v7 = 1;
  }

  while (2)
  {
    v8 = *(v3 + 8 * v6);
    v9 = *(v8 + 24);
    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = *(v8 + 8);
    if (!v10)
    {
      goto LABEL_7;
    }

    do
    {
      if (*(v10 + 24))
      {
        break;
      }

      v10 = *(v10 + 8);
    }

    while (v10);
    if (v10 != a2)
    {
      goto LABEL_7;
    }

    v11 = *(v8 + 24);
    while (2)
    {
      v12 = 0;
      result = v11[1];
      v13 = v11[2];
      v14 = *(a3 + 24);
      while (1)
      {
        v15 = v14;
        v14 = v14[3];
        v16 = v14[2];
        if (v16 == v13)
        {
          v17 = v14[1];
          if (v17 == result)
          {
            goto LABEL_33;
          }

          v18 = v15[2];
          if (v18 == v13)
          {
            if (v17 > result != v15[1] >= result)
            {
              goto LABEL_33;
            }

            goto LABEL_16;
          }

          v19 = v18 - v13;
          v20 = v16 - v13;
          if (v16 >= v13 != v18 < v13)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v18 = v15[2];
          v19 = v18 - v13;
          v20 = v16 - v13;
          if (v16 >= v13 != v18 < v13)
          {
            goto LABEL_16;
          }
        }

        v21 = v15[1];
        v22 = v14[1];
        v24 = __OFSUB__(v21, result);
        v23 = v21 - result < 0;
        v25 = v21 - result;
        if (v23 == v24)
        {
          break;
        }

        v24 = __OFSUB__(v22, result);
        v26 = v22 == result;
        v23 = v22 - result < 0;
        v27 = v22 - result;
        if (!(v23 ^ v24 | v26))
        {
          goto LABEL_29;
        }

LABEL_16:
        if (v14 == *(a3 + 24))
        {
          if (!v12)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }
      }

      v24 = __OFSUB__(v22, result);
      v26 = v22 == result;
      v23 = v22 - result < 0;
      v27 = v22 - result;
      if (!(v23 ^ v24 | v26))
      {
        v12 = 1 - v12;
        goto LABEL_16;
      }

LABEL_29:
      v28 = -(v27 * v19 - v25 * v20);
      if (v28 != 0.0)
      {
        if (v16 <= v18 != v28 > 0.0)
        {
          v12 = 1 - v12;
        }

        goto LABEL_16;
      }

LABEL_33:
      v11 = v11[3];
      if (v11 != v9)
      {
        continue;
      }

      break;
    }

LABEL_6:
    *(v8 + 8) = a3;
LABEL_7:
    if (++v6 != v7)
    {
      continue;
    }

    return result;
  }
}

uint64_t ClipperLib::Clipper::FixupFirstLefts2(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = *(result + 16) - v3;
  if (v4)
  {
    v5 = v4 >> 3;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    do
    {
      if (*(*v3 + 8) == a2)
      {
        *(*v3 + 8) = a3;
      }

      v3 += 8;
      --v5;
    }

    while (v5);
  }

  return result;
}

double ClipperLib::GetUnitNormal(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = a1[1];
  v4 = *a2 == *a1 && v2 == v3;
  result = 0.0;
  if (!v4)
  {
    return 1.0 / sqrt((*a2 - *a1) * (*a2 - *a1) + (v2 - v3) * (v2 - v3)) * (v2 - v3);
  }

  return result;
}

double ClipperLib::ClipperOffset::ClipperOffset(ClipperLib::ClipperOffset *this, double a2, double a3)
{
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 22) = &unk_284B50480;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 229) = 0u;
  *this = a2;
  *(this + 1) = a3;
  result = NAN;
  *(this + 10) = xmmword_2389FBC90;
  return result;
}

void ClipperLib::ClipperOffset::~ClipperOffset(ClipperLib::ClipperOffset *this)
{
  v4 = this + 208;
  v2 = *(this + 26);
  v3 = *(v4 + 1);
  if (((v3 - v2) >> 3) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        (*(*v6 + 8))(v2[v5]);
        v2 = *(this + 26);
        v3 = *(this + 27);
      }

      ++v5;
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  *(this + 27) = v2;
  *(this + 20) = -1;
  *(this + 22) = &unk_284B50480;
  if (v2)
  {
    operator delete(v2);
  }

  v7 = *(this + 23);
  if (v7)
  {
    *(this + 24) = v7;
    operator delete(v7);
  }

  v8 = *(this + 11);
  if (v8)
  {
    *(this + 12) = v8;
    operator delete(v8);
  }

  v9 = *(this + 8);
  if (v9)
  {
    *(this + 9) = v9;
    operator delete(v9);
  }

  v10 = *(this + 5);
  if (v10)
  {
    *(this + 6) = v10;
    operator delete(v10);
  }

  v11 = *(this + 2);
  if (v11)
  {
    v12 = *(this + 3);
    v13 = *(this + 2);
    if (v12 != v11)
    {
      v14 = *(this + 3);
      do
      {
        v16 = *(v14 - 24);
        v14 -= 24;
        v15 = v16;
        if (v16)
        {
          *(v12 - 16) = v15;
          operator delete(v15);
        }

        v12 = v14;
      }

      while (v14 != v11);
      v13 = *(this + 2);
    }

    *(this + 3) = v11;
    operator delete(v13);
  }
}

void *ClipperLib::ClipperOffset::Clear(void *this)
{
  v1 = this;
  v2 = this[26];
  v3 = this[27];
  if (((v3 - v2) >> 3) >= 1)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[26];
        v3 = v1[27];
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[27] = v2;
  v1[20] = -1;
  return this;
}

void ClipperLib::PolyNode::~PolyNode(ClipperLib::PolyNode *this)
{
  *this = &unk_284B50480;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_284B50480;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x23EE6C500);
}

void ClipperLib::ClipperOffset::AddPath(uint64_t a1, void *a2)
{
  if (((a2[1] - *a2) >> 4) >= 1)
  {
    operator new();
  }
}

void ClipperLib::ClipperOffset::AddPaths(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ClipperLib::ClipperOffset::AddPath(a1, (v2 + v5));
      ++v6;
      v2 = *a2;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }
}

void *ClipperLib::ClipperOffset::FixOrientations(void *this)
{
  v1 = this[20];
  if (v1 < 0)
  {
    v2 = this[26];
    goto LABEL_26;
  }

  v2 = this[26];
  v4 = (*(v2 + 8 * v1) + 8);
  v3 = *v4;
  v5 = v4[1] - *v4;
  if ((v5 >> 4) < 3)
  {
    goto LABEL_26;
  }

  v6 = 0;
  v7 = (v5 >> 4) - 1;
  v8 = (v5 >> 4) & 0x7FFFFFFF;
  v9 = 0.0;
  do
  {
    v10 = vcvtq_f64_s64(*(v3 + 16 * v7));
    v11 = vcvtq_f64_s64(*(v3 + 16 * v6));
    v9 = vmulq_laneq_f64(vaddq_f64(v10, v11), vsubq_f64(v10, v11), 1).f64[0] + v9;
    LODWORD(v7) = v6++;
  }

  while (v8 != v6);
  if (v9 * -0.5 >= 0.0)
  {
LABEL_26:
    v28 = this[27];
    if (((v28 - v2) >> 3) >= 1)
    {
      v29 = 0;
      do
      {
        v30 = *(v2 + 8 * v29);
        if (*(v30 + 76) == 1)
        {
          v33 = v30 + 8;
          v31 = *(v30 + 8);
          v32 = *(v33 + 8);
          v34 = (v32 - v31) >> 4;
          if (v34 >= 3)
          {
            v35 = 0;
            v36 = v34 - 1;
            v37 = 0.0;
            do
            {
              v38 = vcvtq_f64_s64(*(v31 + 16 * v36));
              v39 = vcvtq_f64_s64(*(v31 + 16 * v35));
              v37 = vmulq_laneq_f64(vaddq_f64(v38, v39), vsubq_f64(v38, v39), 1).f64[0] + v37;
              v36 = v35++;
            }

            while ((((v32 - v31) >> 4) & 0x7FFFFFFF) != v35);
            if (v37 * -0.5 < 0.0 && v31 != v32)
            {
              v40 = (v32 - 16);
              if (v40 > v31)
              {
                v41 = v31 + 16;
                do
                {
                  v42 = *(v41 - 16);
                  *(v41 - 16) = *v40;
                  *v40-- = v42;
                  v27 = v41 >= v40;
                  v41 += 16;
                }

                while (!v27);
                v2 = this[26];
                v28 = this[27];
              }
            }
          }
        }

        ++v29;
      }

      while (v29 < ((v28 - v2) >> 3));
    }

    return this;
  }

  v12 = this[27];
  if (((v12 - v2) >> 3) >= 1)
  {
    for (i = 0; i < ((v12 - v2) >> 3); ++i)
    {
      v14 = *(v2 + 8 * i);
      v15 = *(v14 + 76);
      if (v15 == 1)
      {
        v16 = *(v14 + 8);
        v17 = *(v14 + 16);
        v18 = (v17 - v16) >> 4;
        if (v18 < 3)
        {
          goto LABEL_16;
        }

        v19 = 0;
        v20 = v18 - 1;
        v21 = 0.0;
        do
        {
          v22 = vcvtq_f64_s64(*(v16 + 16 * v20));
          v23 = vcvtq_f64_s64(*(v16 + 16 * v19));
          v21 = vmulq_laneq_f64(vaddq_f64(v22, v23), vsubq_f64(v22, v23), 1).f64[0] + v21;
          v20 = v19++;
        }

        while ((((v17 - v16) >> 4) & 0x7FFFFFFF) != v19);
        if (v21 * -0.5 >= 0.0)
        {
          goto LABEL_16;
        }
      }

      else if (!v15)
      {
        v16 = *(v14 + 8);
        v17 = *(v14 + 16);
LABEL_16:
        v24 = (v17 - 16);
        if (v16 != v17 && v24 > v16)
        {
          v26 = v16 + 16;
          do
          {
            v43 = *(v26 - 16);
            *(v26 - 16) = *v24;
            *v24-- = v43;
            v27 = v26 >= v24;
            v26 += 16;
          }

          while (!v27);
          v2 = this[26];
          v12 = this[27];
        }
      }
    }
  }

  return this;
}

__n128 ClipperLib::ReversePath(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = (v2 - 16);
  if (*a1 != v2 && v3 > v1)
  {
    v5 = v1 + 16;
    do
    {
      result = *(v5 - 16);
      *(v5 - 16) = *v3;
      *v3-- = result;
      v7 = v5 >= v3;
      v5 += 16;
    }

    while (!v7);
  }

  return result;
}

void ClipperLib::ClipperOffset::Execute(ClipperLib::ClipperOffset *this, uint64_t *a2, double a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v6 = a2[1];
  if (v6 != *a2)
  {
    v8 = a2[1];
    do
    {
      v10 = *(v8 - 24);
      v8 -= 24;
      v9 = v10;
      if (v10)
      {
        *(v6 - 16) = v9;
        operator delete(v9);
      }

      v6 = v8;
    }

    while (v8 != v7);
  }

  a2[1] = v7;
  ClipperLib::ClipperOffset::FixOrientations(this);
  ClipperLib::ClipperOffset::DoOffset(this, a3);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v47 = 0u;
  v48 = 0u;
  v31 = &unk_284B504F0;
  v46 = &unk_284B50538;
  v38 = 0;
  v39 = 0;
  v49 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v53 = 0;
  v11 = *(this + 2);
  if (*(this + 3) != v11)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      ClipperLib::ClipperBase::AddPath(&v46, v11 + v12, 0, 1);
      ++v13;
      v11 = *(this + 2);
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 3) - v11) >> 3));
  }

  if (a3 <= 0.0)
  {
    v14 = &v31 + *(v31 - 3);
    v15 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v15 != v16)
    {
      v17 = *(v15 + 8);
      v19 = *v17;
      v18 = v17[1];
      v20 = v19;
      v21 = v18;
      do
      {
        v22 = *(v15 + 8);
        v23 = v22;
        do
        {
          v28 = v23[14];
          if (v28)
          {
            v29 = v23;
            do
            {
              v24 = v28;
              if (*v29 < v19)
              {
                v19 = *v29;
              }

              if (*v29 > v20)
              {
                v20 = *v29;
              }

              v28 = v28[14];
              v29 = v24;
            }

            while (v28);
          }

          else
          {
            v24 = v23;
          }

          if (*v24 < v19)
          {
            v19 = *v24;
          }

          if (v20 <= *v24)
          {
            v20 = *v24;
          }

          v26 = v24[4];
          v25 = v24[5];
          if (v26 < v19)
          {
            v19 = v26;
          }

          if (v20 <= v26)
          {
            v20 = v26;
          }

          if (v25 < v21)
          {
            v21 = v25;
          }

          v27 = v23 == v22;
          v23 = *(v15 + 16);
        }

        while (v27);
        if (v18 <= v22[1])
        {
          v18 = v22[1];
        }

        v15 += 24;
      }

      while (v15 != v16);
    }

    operator new();
  }

  ClipperLib::Clipper::Execute(&v31, 1, a2, 2, 2);
  ClipperLib::Clipper::~Clipper(&v31);
  v30 = *MEMORY[0x277D85DE8];
}

void sub_2389D5CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void sub_2389D5CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void sub_2389D5CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  operator delete(v12);
  ClipperLib::Clipper::~Clipper(&a12);
  _Unwind_Resume(a1);
}

void sub_2389D5CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void ClipperLib::ClipperOffset::DoOffset(ClipperLib::ClipperOffset *this, double a2)
{
  v2 = a2;
  v4 = *(this + 2);
  v140 = this + 16;
  v5 = *(this + 3);
  if (v5 != v4)
  {
    v6 = *(this + 3);
    do
    {
      v8 = *(v6 - 24);
      v6 -= 24;
      v7 = v8;
      if (v8)
      {
        *(v5 - 16) = v7;
        operator delete(v7);
        v2 = a2;
      }

      v5 = v6;
    }

    while (v6 != v4);
  }

  *(this + 3) = v4;
  *(this + 14) = v2;
  v9 = fabs(v2);
  if (v9 < 1.0e-20)
  {
    v10 = ((*(this + 27) - *(this + 26)) >> 3);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 4) - *(this + 2)) >> 3) < v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      goto LABEL_153;
    }

    v12 = *(this + 26);
    v11 = *(this + 27);
    if (((v11 - v12) >> 3) >= 1)
    {
      v13 = 0;
      do
      {
        v15 = *(v12 + 8 * v13);
        if (!*(v15 + 76))
        {
          v16 = *(this + 3);
          if (v16 >= *(this + 4))
          {
            v14 = std::vector<std::vector<ClipperLib::IntPoint>>::__emplace_back_slow_path<std::vector<ClipperLib::IntPoint> const&>(v140, (v15 + 8));
          }

          else
          {
            *v16 = 0;
            v16[1] = 0;
            v16[2] = 0;
            v18 = *(v15 + 8);
            v17 = *(v15 + 16);
            if (v17 != v18)
            {
              if (((v17 - v18) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
            }

            v14 = v16 + 3;
            *(this + 3) = v16 + 3;
          }

          *(this + 3) = v14;
          v12 = *(this + 26);
          v11 = *(this + 27);
        }

        ++v13;
      }

      while (v13 < ((v11 - v12) >> 3));
    }

    return;
  }

  v19 = *(this + 1);
  v20 = 2.0 / (*this * *this);
  if (*this <= 2.0)
  {
    v20 = 0.5;
  }

  *(this + 18) = v20;
  v21 = 0.25;
  v22 = fmin(v19, v9 * 0.25);
  if (v19 > 0.0)
  {
    v21 = v22;
  }

  v23 = fmin(3.14159265 / acos(1.0 - v21 / v9), v9 * 3.14159265);
  v24 = __sincos_stret(6.28318531 / v23);
  *(this + 8) = v24;
  *(this + 19) = v23 * 0.159154943;
  if (a2 < 0.0)
  {
    *(this + 16) = -v24.__sinval;
  }

  v25 = ((*(this + 27) - *(this + 26)) >> 2) & 0xFFFFFFFFFFFFFFFELL;
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 4) - *(this + 2)) >> 3) < v25)
  {
    if (v25 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_153:
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v26 = *(this + 26);
  if (((*(this + 27) - v26) >> 3) >= 1)
  {
    v27 = 0;
    v28 = (this + 40);
    v137 = vdupq_lane_s64(*&a2, 0);
    __asm
    {
      FMOV            V1.2D, #0.5
      FMOV            V0.2D, #-0.5
    }

    v141 = _Q0;
    v142 = _Q1;
    do
    {
      v34 = *(v26 + 8 * v27);
      if (v28 != (v34 + 8))
      {
        std::vector<ClipperLib::IntPoint>::__assign_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(v28, *(v34 + 8), *(v34 + 16), (*(v34 + 16) - *(v34 + 8)) >> 4);
      }

      v35 = *(this + 5);
      v36 = *(this + 6) - v35;
      v37 = v36 >> 4;
      if (!(v36 >> 4))
      {
        goto LABEL_33;
      }

      if (a2 <= 0.0)
      {
        if (v37 < 3 || *(v34 + 76))
        {
          goto LABEL_33;
        }

        *(this + 9) = *(this + 8);
      }

      else
      {
        *(this + 9) = *(this + 8);
        if (v37 == 1)
        {
          if (*(v34 + 72) == 1)
          {
            v38 = a2;
            v40 = v141;
            v39 = v142;
            if (v23 >= 1.0)
            {
              v41 = 2;
              v42 = xmmword_2389FBCA0;
              do
              {
                v143 = v42;
                v43 = vmlaq_n_f64(vcvtq_f64_s64(**(this + 5)), v42, v38);
                v147 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v43), v40, v39), v43));
                std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, &v147);
                v40 = v141;
                v39 = v142;
                v44 = vmulq_n_f64(v143, *(this + 16));
                v45 = vextq_s8(v44, v44, 8uLL);
                v46 = vmulq_n_f64(v143, *(this + 17));
                *&v42.f64[0] = *&vsubq_f64(v46, v45);
                v47 = vaddq_f64(v46, v45);
                v38 = a2;
                v42.f64[1] = v47.f64[1];
                v47.f64[0] = v41++;
              }

              while (v23 >= v47.f64[0]);
            }

            v48 = *(this + 3);
            if (v48 >= *(this + 4))
            {
              goto LABEL_129;
            }
          }

          else
          {
            v93 = vsubq_f64(vcvtq_f64_s64(*v35), v137);
            v147 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v93), v141, v142), v93));
            std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, &v147);
            v94 = vcvtq_f64_s64(**v28);
            *&v95.f64[0] = *&vaddq_f64(v137, v94);
            v95.f64[1] = vsubq_f64(v94, v137).f64[1];
            v147 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v95), v141, v142), v95));
            std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, &v147);
            v96 = vaddq_f64(v137, vcvtq_f64_s64(**v28));
            v147 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v96), v141, v142), v96));
            std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, &v147);
            v97 = vcvtq_f64_s64(**v28);
            *&v98.f64[0] = *&vsubq_f64(v97, v137);
            v98.f64[1] = vaddq_f64(v137, v97).f64[1];
            v147 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v98), v141, v142), v98));
            std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, &v147);
            v48 = *(this + 3);
            if (v48 >= *(this + 4))
            {
              goto LABEL_129;
            }
          }

          *v48 = 0;
          v48[1] = 0;
          v48[2] = 0;
          v100 = *(this + 8);
          v99 = *(this + 9);
          if (v99 != v100)
          {
            if (((v99 - v100) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
          }

          goto LABEL_32;
        }
      }

      v49 = *(this + 11);
      *(this + 12) = v49;
      v144 = v36 << 28;
      v138 = v36;
      v50 = (v36 >> 4);
      if (v50 > (*(this + 13) - v49) >> 4)
      {
        if (!(v50 >> 60))
        {
          operator new();
        }

        goto LABEL_150;
      }

      v139 = v27;
      v51 = (v37 - 1);
      v136 = v37 - 2;
      if (v37 >= 2)
      {
        v52 = 0;
        v53 = (v37 - 1);
        while (1)
        {
          while (1)
          {
            v54 = &(*v28)[v52];
            v56 = *(v54 + 2);
            v55 = *(v54 + 3);
            v58 = *v54;
            v57 = *(v54 + 1);
            v59 = 0.0;
            v60 = v56 - v58;
            if (v60)
            {
              _ZF = 0;
            }

            else
            {
              _ZF = v55 == v57;
            }

            v62 = 0.0;
            if (!_ZF)
            {
              v63 = (v55 - v57);
              v64 = 1.0 / sqrt(v60 * v60 + v63 * v63);
              v62 = v64 * v63;
              v59 = -(v60 * v64);
            }

            v66 = *(this + 12);
            v65 = *(this + 13);
            if (v66 >= v65)
            {
              break;
            }

            *v66 = v62;
            v66[1] = v59;
            *(this + 12) = v66 + 2;
            v52 += 16;
            if (!--v53)
            {
              goto LABEL_72;
            }
          }

          v67 = *(this + 11);
          v68 = v66 - v67;
          v69 = (v66 - v67) >> 4;
          v70 = v69 + 1;
          if ((v69 + 1) >> 60)
          {
            break;
          }

          v71 = v65 - v67;
          if (v71 >> 3 > v70)
          {
            v70 = v71 >> 3;
          }

          if (v71 >= 0x7FFFFFFFFFFFFFF0)
          {
            v72 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v72 = v70;
          }

          if (v72)
          {
            if (!(v72 >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v73 = (16 * v69);
          *v73 = v62;
          v73[1] = v59;
          v74 = 16 * v69 + 16;
          memcpy(0, v67, v68);
          *(this + 11) = 0;
          *(this + 12) = v74;
          *(this + 13) = 0;
          if (v67)
          {
            operator delete(v67);
          }

          v28 = (this + 40);
          *(this + 12) = v74;
          v52 += 16;
          if (!--v53)
          {
            goto LABEL_72;
          }
        }

LABEL_150:
        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
      }

LABEL_72:
      if (*(v34 + 76) >= 2u)
      {
        v147 = *(*(this + 11) + ((v144 - 0x200000000) >> 28));
        std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 88, &v147);
        v85 = *(v34 + 76);
        if (v85 == 1)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v75 = &(*v28)[16 * v51];
        v76 = *(*v28 + 1);
        v78 = *v75;
        v77 = *(v75 + 1);
        v79 = 0.0;
        v80 = **v28 - v78;
        if (v80)
        {
          v81 = 0;
        }

        else
        {
          v81 = v76 == v77;
        }

        v82 = 0.0;
        if (!v81)
        {
          v83 = v76 - v77;
          v84 = 1.0 / sqrt(v80 * v80 + v83 * v83);
          v82 = v84 * v83;
          v79 = -(v80 * v84);
        }

        *v147.i64 = v82;
        *&v147.i64[1] = v79;
        std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 88, &v147);
        v85 = *(v34 + 76);
        if (v85 == 1)
        {
LABEL_88:
          v147.i32[0] = v37 - 1;
          if (v37 >= 1)
          {
            v89 = 0;
            do
            {
              ClipperLib::ClipperOffset::OffsetPoint(this, v89++, v147.i32, *(v34 + 72));
            }

            while (v37 != v89);
          }

          v90 = *(this + 3);
          if (v90 >= *(this + 4))
          {
            v48 = std::vector<std::vector<ClipperLib::IntPoint>>::__emplace_back_slow_path<std::vector<ClipperLib::IntPoint> const&>(v140, this + 8);
          }

          else
          {
            *v90 = 0;
            v90[1] = 0;
            v90[2] = 0;
            v92 = *(this + 8);
            v91 = *(this + 9);
            if (v91 != v92)
            {
              if (((v91 - v92) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
            }

            v48 = v90 + 3;
            *(this + 3) = v48;
          }

          *(this + 3) = v48;
          *(this + 9) = *(this + 8);
          v106 = *(this + 11);
          v107 = v106[v51];
          if (v37 > 1)
          {
            v108 = ((v138 >> 4) & 0x7FFFFFFF) - 1;
            if (v108 <= 1)
            {
              v109 = (v37 - 1);
              goto LABEL_139;
            }

            v109 = v51 - (v108 & 0xFFFFFFFFFFFFFFFELL);
            v127 = &v106[v51 - 1];
            v128 = v108 & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v129 = vnegq_f64(*v127);
              *v127 = vnegq_f64(*(v127 - 16));
              *(v127 + 16) = v129;
              v127 -= 32;
              v128 -= 2;
            }

            while (v128);
            if (v108 != (v108 & 0xFFFFFFFFFFFFFFFELL))
            {
LABEL_139:
              v130 = &v106[v109];
              v131 = v109 + 1;
              v132 = v130;
              do
              {
                v133 = v132[-1];
                --v132;
                *v130 = vnegq_f64(v133);
                --v131;
                v130 = v132;
              }

              while (v131 > 1);
            }
          }

          *v106 = vnegq_f64(v107);
          v147.i32[0] = 0;
          if (v37 >= 1)
          {
            do
            {
              ClipperLib::ClipperOffset::OffsetPoint(this, v51, v147.i32, *(v34 + 72));
              LODWORD(v51) = v51 - 1;
            }

            while (v51 != -1);
            v48 = *(this + 3);
          }

          if (v48 >= *(this + 4))
          {
            *(this + 3) = std::vector<std::vector<ClipperLib::IntPoint>>::__emplace_back_slow_path<std::vector<ClipperLib::IntPoint> const&>(v140, this + 8);
            v27 = v139;
            goto LABEL_33;
          }

          *v48 = 0;
          v48[1] = 0;
          v48[2] = 0;
          v135 = *(this + 8);
          v134 = *(this + 9);
          v27 = v139;
          if (v134 != v135)
          {
            if (((v134 - v135) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
          }

          goto LABEL_32;
        }
      }

      if (v85)
      {
        v146 = 0;
        if (v37 >= 3)
        {
          v101 = 1;
          v102 = v37 - 2;
          do
          {
            ClipperLib::ClipperOffset::OffsetPoint(this, v101++, &v146, *(v34 + 72));
            --v102;
          }

          while (v102);
          v85 = *(v34 + 76);
        }

        v147 = 0uLL;
        if (v85 == 2)
        {
          v103 = vmlaq_n_f64(vcvtq_f64_s64(*&(*v28)[16 * v51]), *(*(this + 11) + 16 * v51), a2);
          v147 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v103), v141, v142), v103));
          std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, &v147);
          v104 = vmlsq_lane_f64(vcvtq_f64_s64(*&(*v28)[16 * v51]), *(*(this + 11) + 16 * v51), a2, 0);
          v147 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v104), v141, v142), v104));
          std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, &v147);
          v105 = *(this + 11);
          if (v37 < 2)
          {
            goto LABEL_122;
          }

LABEL_115:
          v111 = ((v138 >> 4) & 0x7FFFFFFF) - 1;
          if (v111 <= 1)
          {
            v112 = (v37 - 1);
            goto LABEL_120;
          }

          v112 = v51 - (v111 & 0xFFFFFFFFFFFFFFFELL);
          v113 = &v105[v51 - 1];
          v114 = v111 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            v115 = vnegq_f64(*v113);
            *v113 = vnegq_f64(*(v113 - 16));
            *(v113 + 16) = v115;
            v113 -= 32;
            v114 -= 2;
          }

          while (v114);
          if (v111 != (v111 & 0xFFFFFFFFFFFFFFFELL))
          {
LABEL_120:
            v116 = &v105[v112];
            v117 = v112 + 1;
            v118 = v116;
            do
            {
              v119 = v118[-1];
              --v118;
              *v116 = vnegq_f64(v119);
              --v117;
              v116 = v118;
            }

            while (v117 > 1);
          }
        }

        else
        {
          v146 = v37 - 2;
          *(this + 15) = 0;
          *(*(this + 11) + 16 * v51) = vnegq_f64(*(*(this + 11) + 16 * v51));
          v110 = v37 - 1;
          if (v85 != 3)
          {
            ClipperLib::ClipperOffset::DoRound(this, v110, v136);
            v105 = *(this + 11);
            if (v37 < 2)
            {
              goto LABEL_122;
            }

            goto LABEL_115;
          }

          ClipperLib::ClipperOffset::DoSquare(this, v110, v136);
          v105 = *(this + 11);
          if (v37 >= 2)
          {
            goto LABEL_115;
          }
        }

LABEL_122:
        *v105 = vnegq_f64(v105[1]);
        v146 = v37 - 1;
        if (v37 > 2)
        {
          do
          {
            LODWORD(v51) = v51 - 1;
            ClipperLib::ClipperOffset::OffsetPoint(this, v51, &v146, *(v34 + 72));
          }

          while (v51 > 1);
        }

        v120 = *(v34 + 76);
        if (v120 == 2)
        {
          v121 = vmlsq_lane_f64(vcvtq_f64_s64(**v28), **(this + 11), a2, 0);
          v147 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v121), v141, v142), v121));
          std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, &v147);
          v122 = vmlaq_n_f64(vcvtq_f64_s64(**v28), **(this + 11), a2);
          v147 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v122), v141, v142), v122));
          std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, &v147);
          v27 = v139;
          v123 = *(this + 3);
          if (v123 < *(this + 4))
          {
LABEL_132:
            *v123 = 0;
            v123[1] = 0;
            v123[2] = 0;
            v126 = *(this + 8);
            v125 = *(this + 9);
            if (v125 != v126)
            {
              if (((v125 - v126) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
            }

            v124 = v123 + 3;
            *(this + 3) = v123 + 3;
            goto LABEL_130;
          }
        }

        else
        {
          v146 = 1;
          *(this + 15) = 0;
          v27 = v139;
          if (v120 == 3)
          {
            ClipperLib::ClipperOffset::DoSquare(this, 0, 1);
            v123 = *(this + 3);
            if (v123 < *(this + 4))
            {
              goto LABEL_132;
            }
          }

          else
          {
            ClipperLib::ClipperOffset::DoRound(this, 0, 1);
            v123 = *(this + 3);
            if (v123 < *(this + 4))
            {
              goto LABEL_132;
            }
          }
        }

LABEL_129:
        v124 = std::vector<std::vector<ClipperLib::IntPoint>>::__emplace_back_slow_path<std::vector<ClipperLib::IntPoint> const&>(v140, this + 8);
LABEL_130:
        *(this + 3) = v124;
        goto LABEL_33;
      }

      v147.i32[0] = v37 - 1;
      if (v37 >= 1)
      {
        v86 = 0;
        do
        {
          ClipperLib::ClipperOffset::OffsetPoint(this, v86++, v147.i32, *(v34 + 72));
        }

        while (v37 != v86);
      }

      v48 = *(this + 3);
      v27 = v139;
      if (v48 >= *(this + 4))
      {
        goto LABEL_129;
      }

      *v48 = 0;
      v48[1] = 0;
      v48[2] = 0;
      v88 = *(this + 8);
      v87 = *(this + 9);
      if (v87 != v88)
      {
        if (((v87 - v88) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
      }

LABEL_32:
      *(this + 3) = v48 + 3;
      *(this + 3) = v48 + 3;
LABEL_33:
      ++v27;
      v26 = *(this + 26);
    }

    while (v27 < ((*(this + 27) - v26) >> 3));
  }
}

void sub_2389D6B18(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 24) = v2;
  _Unwind_Resume(exception_object);
}

void ClipperLib::ClipperOffset::Execute(ClipperLib::ClipperOffset *this, ClipperLib::PolyTree *a2, double a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 10);
  v7 = *(a2 + 11);
  if (v7 != v6)
  {
    v8 = 0;
    do
    {
      v9 = *(v6 + 8 * v8);
      if (v9)
      {
        (*(*v9 + 8))(v9);
        v6 = *(a2 + 10);
        v7 = *(a2 + 11);
      }

      ++v8;
    }

    while (v8 < (v7 - v6) >> 3);
  }

  if (v7 != v6)
  {
    *(a2 + 11) = v6;
  }

  v10 = *(a2 + 4);
  if (*(a2 + 5) != v10)
  {
    *(a2 + 5) = v10;
  }

  ClipperLib::ClipperOffset::FixOrientations(this);
  ClipperLib::ClipperOffset::DoOffset(this, a3);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v47 = 0u;
  v48 = 0u;
  v31 = &unk_284B504F0;
  v46 = &unk_284B50538;
  v38 = 0;
  v39 = 0;
  v49 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v53 = 0;
  v11 = *(this + 2);
  if (*(this + 3) != v11)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      ClipperLib::ClipperBase::AddPath(&v46, v11 + v12, 0, 1);
      ++v13;
      v11 = *(this + 2);
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 3) - v11) >> 3));
  }

  if (a3 <= 0.0)
  {
    v14 = &v31 + *(v31 - 3);
    v15 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v15 != v16)
    {
      v17 = *(v15 + 8);
      v19 = *v17;
      v18 = v17[1];
      v20 = v19;
      v21 = v18;
      do
      {
        v22 = *(v15 + 8);
        v23 = v22;
        do
        {
          v28 = v23[14];
          if (v28)
          {
            v29 = v23;
            do
            {
              v24 = v28;
              if (*v29 < v19)
              {
                v19 = *v29;
              }

              if (*v29 > v20)
              {
                v20 = *v29;
              }

              v28 = v28[14];
              v29 = v24;
            }

            while (v28);
          }

          else
          {
            v24 = v23;
          }

          if (*v24 < v19)
          {
            v19 = *v24;
          }

          if (v20 <= *v24)
          {
            v20 = *v24;
          }

          v26 = v24[4];
          v25 = v24[5];
          if (v26 < v19)
          {
            v19 = v26;
          }

          if (v20 <= v26)
          {
            v20 = v26;
          }

          if (v25 < v21)
          {
            v21 = v25;
          }

          v27 = v23 == v22;
          v23 = *(v15 + 16);
        }

        while (v27);
        if (v18 <= v22[1])
        {
          v18 = v22[1];
        }

        v15 += 24;
      }

      while (v15 != v16);
    }

    operator new();
  }

  ClipperLib::Clipper::Execute(&v31, 1, a2, 2, 2);
  ClipperLib::Clipper::~Clipper(&v31);
  v30 = *MEMORY[0x277D85DE8];
}

void sub_2389D7068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  operator delete(v14);
  ClipperLib::Clipper::~Clipper(&a14);
  _Unwind_Resume(a1);
}

void sub_2389D70B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void ClipperLib::ClipperOffset::OffsetPoint(uint64_t a1, int a2, int *a3, int a4)
{
  v6 = *a3;
  v7 = *(a1 + 88);
  v8 = *(v7 + 16 * a2);
  v9 = *(v7 + 16 * v6);
  v10 = vmulq_f64(v9, vextq_s8(v8, v8, 8uLL));
  v11 = vsubq_f64(v10, vdupq_laneq_s64(v10, 1)).f64[0];
  *(a1 + 120) = v11;
  v12 = *(a1 + 112);
  v13 = 1.0;
  if (fabs(v12 * v11) >= 1.0)
  {
    if (v11 > 1.0 || (v13 = -1.0, v11 < -1.0))
    {
      *(a1 + 120) = v13;
      v11 = v13;
    }
  }

  else if (vaddvq_f64(vmulq_f64(v8, v9)) > 0.0)
  {
    v14 = vmlaq_n_f64(vcvtq_f64_s64(*(*(a1 + 40) + 16 * a2)), v9, v12);
    __asm
    {
      FMOV            V2.2D, #0.5
      FMOV            V3.2D, #-0.5
    }

    v35 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v14), _Q3, _Q2), v14));
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](a1 + 64, &v35);
    return;
  }

  if (v12 * v11 < 0.0)
  {
    v21 = 16 * a2;
    v22 = vmlaq_n_f64(vcvtq_f64_s64(*(*(a1 + 40) + v21)), v9, v12);
    __asm
    {
      FMOV            V2.2D, #0.5
      FMOV            V3.2D, #-0.5
    }

    v33 = _Q2;
    v34 = _Q3;
    v35 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v22), _Q3, _Q2), v22));
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](a1 + 64, &v35);
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](a1 + 64, (*(a1 + 40) + v21));
    v26 = vmlaq_n_f64(vcvtq_f64_s64(*(*(a1 + 40) + v21)), *(*(a1 + 88) + v21), *(a1 + 112));
    v35 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v26), v34, v33), v26));
    v27 = a1 + 64;
LABEL_9:
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](v27, &v35);
LABEL_10:
    *a3 = a2;
    return;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (a4 != 1)
  {
    if (a4 != 2)
    {
      goto LABEL_10;
    }

    v28 = vmulq_f64(v9, v8);
    v29 = v28.f64[0] + 1.0 + v28.f64[1];
    if (v29 >= *(a1 + 144))
    {
      v30 = vmlaq_n_f64(vcvtq_f64_s64(*(*(a1 + 40) + 16 * a2)), vaddq_f64(v8, v9), v12 / v29);
      __asm
      {
        FMOV            V1.2D, #0.5
        FMOV            V2.2D, #-0.5
      }

      v35 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v30), _Q2, _Q1), v30));
      v27 = a1 + 64;
      goto LABEL_9;
    }

LABEL_15:
    ClipperLib::ClipperOffset::DoSquare(a1, a2, v6);
    *a3 = a2;
    return;
  }

  ClipperLib::ClipperOffset::DoRound(a1, a2, v6);
  *a3 = a2;
}

void ClipperLib::ClipperOffset::DoSquare(ClipperLib::ClipperOffset *this, int a2, int a3)
{
  v4 = *(this + 11);
  v5 = 16 * a2;
  v23 = *(v4 + 16 * a3);
  v6 = atan2(*(this + 15), vaddvq_f64(vmulq_f64(*(v4 + v5), v23)));
  v25 = tan(v6 * 0.25);
  v7 = vmulq_n_f64(v23, v25);
  v8 = vextq_s8(v7, v7, 8uLL);
  *&v9.f64[0] = *&vsubq_f64(v23, v8);
  v9.f64[1] = vaddq_f64(v23, v8).f64[1];
  v10 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + v5)), v9, *(this + 14));
  __asm
  {
    FMOV            V2.2D, #0.5
    FMOV            V3.2D, #-0.5
  }

  v22 = _Q2;
  v24 = _Q3;
  v26 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v10), _Q3, _Q2), v10));
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, &v26);
  v17 = *(*(this + 11) + v5);
  v18 = vmulq_n_f64(v17, v25);
  v19 = vextq_s8(v18, v18, 8uLL);
  *&v20.f64[0] = *&vaddq_f64(v17, v19);
  v20.f64[1] = vsubq_f64(v17, v19).f64[1];
  v21 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + v5)), v20, *(this + 14));
  v26 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v21), v24, v22), v21));
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, &v26);
}

void ClipperLib::ClipperOffset::DoRound(ClipperLib::ClipperOffset *this, int a2, int a3)
{
  v4 = *(this + 11);
  v5 = a2;
  v30 = *(v4 + 16 * a3);
  v6 = atan2(*(this + 15), vaddvq_f64(vmulq_f64(*(v4 + 16 * a2), v30)));
  v7 = v30.f64[0];
  v8 = *(this + 19) * fabs(v6);
  if (v8 >= 0.0)
  {
    v9 = 0.5;
  }

  else
  {
    v9 = -0.5;
  }

  if ((v9 + v8) <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = (v9 + v8);
  }

  v11 = v30.f64[1];
  do
  {
    v31 = v7;
    v12 = (*(this + 5) + 16 * v5);
    v13 = v12[1];
    v14 = *(this + 14);
    v15 = *v12 + v14 * v7;
    if (v15 >= 0.0)
    {
      v16 = 0.5;
    }

    else
    {
      v16 = -0.5;
    }

    v17 = (v16 + v15);
    v18 = v13 + v14 * v11;
    if (v18 >= 0.0)
    {
      v19 = 0.5;
    }

    else
    {
      v19 = -0.5;
    }

    v32.i64[0] = v17;
    v32.i64[1] = (v19 + v18);
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, &v32);
    v21 = *(this + 16);
    v20 = *(this + 17);
    v22 = v21 * v11;
    v11 = v20 * v11 + v21 * v31;
    v7 = -(v22 - v20 * v31);
    --v10;
  }

  while (v10);
  v23 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + 16 * v5)), *(*(this + 11) + 16 * v5), *(this + 14));
  __asm
  {
    FMOV            V2.2D, #0.5
    FMOV            V3.2D, #-0.5
  }

  v32 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v23), _Q3, _Q2), v23));
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, &v32);
}

void ClipperLib::ClipperOffset::DoMiter(ClipperLib::ClipperOffset *this, int a2, int a3, double a4)
{
  v4 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + 16 * a2)), vaddq_f64(*(*(this + 11) + 16 * a2), *(*(this + 11) + 16 * a3)), *(this + 14) / a4);
  __asm
  {
    FMOV            V2.2D, #0.5
    FMOV            V3.2D, #-0.5
  }

  v11 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v4), _Q3, _Q2), v4));
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, &v11);
}

uint64_t *ClipperLib::ReversePaths(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  if (v1 != *result)
  {
    v3 = 0;
    do
    {
      v4 = (v2 + 24 * v3);
      v5 = *v4;
      v6 = v4[1];
      v7 = (v6 - 16);
      if (v5 != v6 && v7 > v5)
      {
        v9 = v5 + 16;
        do
        {
          v10 = *(v9 - 16);
          *(v9 - 16) = *v7;
          *v7-- = v10;
          v11 = v9 >= v7;
          v9 += 16;
        }

        while (!v11);
        v2 = *result;
        v1 = result[1];
      }

      ++v3;
    }

    while (v3 < 0xAAAAAAAAAAAAAAABLL * ((v1 - v2) >> 3));
  }

  return result;
}

void ClipperLib::SimplifyPolygon(uint64_t a1, uint64_t *a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v22 = 0u;
  v23 = 0u;
  v6 = &unk_284B504F0;
  v21 = &unk_284B50538;
  v13 = 0;
  v14 = 0;
  v24 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v18 = 0;
  v19 = 0;
  v28 = 0;
  v20 = 1;
  ClipperLib::ClipperBase::AddPath(&v21, a1, 0, 1);
  ClipperLib::Clipper::Execute(&v6, 1, a2, a3, a3);
  ClipperLib::Clipper::~Clipper(&v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_2389D7778(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void ClipperLib::SimplifyPolygons(uint64_t *a1, uint64_t *a2, int a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v26 = 0u;
  v27 = 0u;
  v10 = &unk_284B504F0;
  v25 = &unk_284B50538;
  v17 = 0;
  v18 = 0;
  v28 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v22 = 0;
  v23 = 0;
  v32 = 0;
  v24 = 1;
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      ClipperLib::ClipperBase::AddPath(&v25, v5 + v7, 0, 1);
      ++v8;
      v5 = *a1;
      v7 += 24;
    }

    while (v8 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }

  ClipperLib::Clipper::Execute(&v10, 1, a2, a3, a3);
  ClipperLib::Clipper::~Clipper(&v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_2389D78F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void sub_2389D7908(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

double ClipperLib::DistanceFromLineSqrd(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4 = (v3 - a3[1]);
  v5 = (*a3 - *a2);
  v6 = (a1[1] - v3) * v5 + (*a1 - *a2) * v4;
  return v6 * v6 / (v4 * v4 + v5 * v5);
}

BOOL ClipperLib::SlopesNearCollinear(uint64_t *a1, uint64_t *a2, uint64_t *a3, double a4)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  if (*a1 - *a2 >= 0)
  {
    v8 = *a1 - *a2;
  }

  else
  {
    v8 = *a2 - *a1;
  }

  v9 = v4 - v6;
  if (v4 - v6 >= 0)
  {
    v10 = v4 - v6;
  }

  else
  {
    v10 = v6 - v4;
  }

  if (v8 <= v10)
  {
    v18 = a3[1];
    if (v4 > v6 == v4 >= v18)
    {
      if (v4 < v6 == v6 >= v18)
      {
        v12 = v9;
        v13 = (v7 - v5);
        v14 = v5;
        v15 = v4;
        v16 = *a3;
        v17 = v18;
        goto LABEL_19;
      }

      v19 = (v4 - v18);
      v20 = (*a3 - v5);
      v21 = v5;
      v22 = v4;
      v23 = v7;
      v24 = v6;
    }

    else
    {
      v19 = (v6 - v18);
      v20 = (*a3 - v7);
      v21 = v7;
      v22 = v6;
      v23 = v5;
      v24 = v4;
    }

    return ((v23 - v21) * v19 + (v24 - v22) * v20) * ((v23 - v21) * v19 + (v24 - v22) * v20) / (v19 * v19 + v20 * v20) < a4;
  }

  v11 = *a3;
  if (v7 < v5 != *a3 <= v5)
  {
    v12 = (v6 - a3[1]);
    v13 = (v11 - v7);
    v14 = v7;
    v15 = v6;
    v16 = v5;
    v17 = v4;
LABEL_19:
    v27 = (v17 - v15) * v13 + (v16 - v14) * v12;
    return v27 * v27 / (v13 * v13 + v12 * v12) < a4;
  }

  v25 = v7 - v5;
  if (v7 > v5 != v11 <= v7)
  {
    v12 = (v4 - a3[1]);
    v13 = (*a3 - v5);
    v14 = v5;
    v15 = v4;
    v16 = v7;
    v17 = v6;
    goto LABEL_19;
  }

  v12 = v9;
  v13 = v25;
  v27 = (v11 - v5) * v9 + (a3[1] - v4) * v25;
  return v27 * v27 / (v13 * v13 + v12 * v12) < a4;
}

uint64_t ClipperLib::ExcludeOp(uint64_t a1)
{
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  *(v1 + 24) = v2;
  *(v2 + 32) = v1;
  *v1 = 0;
  return v1;
}

void *ClipperLib::CleanPolygon(void *result, void *a2)
{
  v2 = result[1] - *result;
  if (v2)
  {
    is_mul_ok(v2 >> 4, 0x28uLL);
    operator new[]();
  }

  a2[1] = *a2;
  return result;
}

uint64_t *ClipperLib::CleanPolygons(uint64_t *result, void *a2)
{
  v2 = *result;
  if (result[1] != *result)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    do
    {
      result = ClipperLib::CleanPolygon((v2 + v5), (*a2 + v5));
      ++v6;
      v2 = *v4;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((v4[1] - *v4) >> 3));
  }

  return result;
}

uint64_t *ClipperLib::CleanPolygons(uint64_t *result)
{
  v1 = *result;
  if (result[1] != *result)
  {
    v2 = result;
    v3 = 0;
    v4 = 0;
    do
    {
      result = ClipperLib::CleanPolygon((v1 + v3), (v1 + v3));
      ++v4;
      v1 = *v2;
      v3 += 24;
    }

    while (v4 < 0xAAAAAAAAAAAAAAABLL * ((v2[1] - *v2) >> 3));
  }

  return result;
}

void ClipperLib::Minkowski(uint64_t *a1, uint64_t *a2, uint64_t *a3, char a4, unsigned int a5)
{
  v62 = *a1;
  v63 = a1[1];
  v9 = *a2;
  v8 = a2[1];
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v61 = (v8 - v9) >> 4;
  if (v8 != v9)
  {
    if (v61 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    goto LABEL_98;
  }

  v10 = (v63 - v62) >> 4;
  v60 = v10 >> 60;
  if (a4)
  {
    if (v8 != v9)
    {
      v11 = 0;
      v12 = v61;
      if (v61 <= 1)
      {
        v12 = 1;
      }

      v58 = v12;
      do
      {
        __p = 0;
        v68 = 0;
        v69 = 0;
        if (v63 != v62)
        {
          if (!v60)
          {
            operator new();
          }

          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
        }

        v13 = *a1;
        if (a1[1] != *a1)
        {
          v14 = 0;
          v15 = v68;
          do
          {
            v16 = vaddq_s64(*(v13 + 16 * v14), *(*a2 + 16 * v11));
            if (v15 < v69)
            {
              *v15++ = v16;
            }

            else
            {
              v17 = __p;
              v18 = v15 - __p;
              v19 = (v15 - __p) >> 4;
              v20 = v19 + 1;
              if ((v19 + 1) >> 60)
              {
                _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
              }

              v21 = v69 - __p;
              if ((v69 - __p) >> 3 > v20)
              {
                v20 = v21 >> 3;
              }

              if (v21 >= 0x7FFFFFFFFFFFFFF0)
              {
                v22 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v22 = v20;
              }

              if (v22)
              {
                if (!(v22 >> 60))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v23 = v19;
              v24 = (16 * v19);
              v25 = &v24[-v23];
              *v24 = v16;
              v15 = v24 + 1;
              memcpy(v25, v17, v18);
              __p = v25;
              v68 = v15;
              v69 = 0;
              if (v17)
              {
                operator delete(v17);
              }
            }

            v68 = v15;
            ++v14;
            v13 = *a1;
          }

          while (v14 < (a1[1] - *a1) >> 4);
        }

        v26 = v65;
        if (v65 >= v66)
        {
          v27 = std::vector<std::vector<ClipperLib::IntPoint>>::__emplace_back_slow_path<std::vector<ClipperLib::IntPoint> const&>(&v64, &__p);
        }

        else
        {
          *v65 = 0;
          v26[1] = 0;
          v26[2] = 0;
          if (v68 != __p)
          {
            if (((v68 - __p) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
          }

          v27 = v26 + 3;
        }

        v65 = v27;
        if (__p)
        {
          v68 = __p;
          operator delete(__p);
        }

        ++v11;
      }

      while (v11 != v58);
    }
  }

  else if (v8 != v9)
  {
    v28 = 0;
    v29 = v61;
    if (v61 <= 1)
    {
      v29 = 1;
    }

    v59 = v29;
    do
    {
      __p = 0;
      v68 = 0;
      v69 = 0;
      if (v63 != v62)
      {
        if (!v60)
        {
          operator new();
        }

        _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
      }

      v30 = *a1;
      if (a1[1] != *a1)
      {
        v31 = 0;
        v32 = v68;
        do
        {
          v33 = vsubq_s64(*(*a2 + 16 * v28), *(v30 + 16 * v31));
          if (v32 < v69)
          {
            *v32++ = v33;
          }

          else
          {
            v34 = __p;
            v35 = v32 - __p;
            v36 = (v32 - __p) >> 4;
            v37 = v36 + 1;
            if ((v36 + 1) >> 60)
            {
              _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
            }

            v38 = v69 - __p;
            if ((v69 - __p) >> 3 > v37)
            {
              v37 = v38 >> 3;
            }

            if (v38 >= 0x7FFFFFFFFFFFFFF0)
            {
              v39 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v39 = v37;
            }

            if (v39)
            {
              if (!(v39 >> 60))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v40 = v36;
            v41 = (16 * v36);
            v42 = &v41[-v40];
            *v41 = v33;
            v32 = v41 + 1;
            memcpy(v42, v34, v35);
            __p = v42;
            v68 = v32;
            v69 = 0;
            if (v34)
            {
              operator delete(v34);
            }
          }

          v68 = v32;
          ++v31;
          v30 = *a1;
        }

        while (v31 < (a1[1] - *a1) >> 4);
      }

      v43 = v65;
      if (v65 >= v66)
      {
        v44 = std::vector<std::vector<ClipperLib::IntPoint>>::__emplace_back_slow_path<std::vector<ClipperLib::IntPoint> const&>(&v64, &__p);
      }

      else
      {
        *v65 = 0;
        v43[1] = 0;
        v43[2] = 0;
        if (v68 != __p)
        {
          if (((v68 - __p) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
        }

        v44 = v43 + 3;
      }

      v65 = v44;
      if (__p)
      {
        v68 = __p;
        operator delete(__p);
      }

      ++v28;
    }

    while (v28 != v59);
  }

  v45 = *a3;
  v46 = a3[1];
  if (v46 != *a3)
  {
    v47 = a3[1];
    do
    {
      v49 = *(v47 - 24);
      v47 -= 24;
      v48 = v49;
      if (v49)
      {
        *(v46 - 16) = v48;
        operator delete(v48);
      }

      v46 = v47;
    }

    while (v47 != v45);
    v46 = *a3;
  }

  a3[1] = v45;
  v50 = v61 + a5 + (v61 + a5) * v10;
  if (0xAAAAAAAAAAAAAAABLL * ((a3[2] - v46) >> 3) < v50)
  {
    if (v50 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_98:
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  if (v61 != (a5 ^ 1) && v63 != v62)
  {
    operator new();
  }

  v51 = v64;
  if (v64)
  {
    v52 = v65;
    v53 = v64;
    if (v65 != v64)
    {
      v54 = v65;
      do
      {
        v56 = *(v54 - 3);
        v54 -= 3;
        v55 = v56;
        if (v56)
        {
          *(v52 - 2) = v55;
          operator delete(v55);
        }

        v52 = v54;
      }

      while (v54 != v51);
      v53 = v64;
    }

    v65 = v51;
    operator delete(v53);
  }
}

void ClipperLib::MinkowskiSum(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned int a4)
{
  v32 = *MEMORY[0x277D85DE8];
  ClipperLib::Minkowski(a1, a2, a3, 1, a4);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0u;
  v26 = 0u;
  v9 = &unk_284B504F0;
  v24 = &unk_284B50538;
  v16 = 0;
  v17 = 0;
  v27 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v31 = 0;
  v5 = *a3;
  if (a3[1] != *a3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      ClipperLib::ClipperBase::AddPath(&v24, v5 + v6, 0, 1);
      ++v7;
      v5 = *a3;
      v6 += 24;
    }

    while (v7 < 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  }

  ClipperLib::Clipper::Execute(&v9, 1, a3, 1, 1);
  ClipperLib::Clipper::~Clipper(&v9);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v73 = *MEMORY[0x277D85DE8];
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v66 = 0u;
  v67 = 0u;
  v50 = &unk_284B504F0;
  v65 = &unk_284B50538;
  v57 = 0;
  v58 = 0;
  v68 = 0;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v72 = 0;
  v4 = *a2;
  if (a2[1] != *a2)
  {
    for (i = 0; i < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3); ++i)
    {
      __p = 0;
      v48 = 0;
      v49 = 0;
      ClipperLib::Minkowski(a1, (v4 + 24 * i), &__p, 1, a4);
      v10 = *(v50 - 3);
      v11 = __p;
      if (v48 != __p)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          ClipperLib::ClipperBase::AddPath(&v50 + v10, &v11[v12], 0, 1);
          ++v13;
          v11 = __p;
          v12 += 24;
        }

        while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v48 - __p) >> 3));
      }

      if (!a4)
      {
        goto LABEL_40;
      }

      v44 = 0;
      v45 = 0;
      v46 = 0;
      v14 = (*a2 + 24 * i);
      v15 = **a1;
      v16 = *v14;
      v17 = v14[1];
      if (v17 != *v14)
      {
        v43 = **a1;
        std::vector<ClipperLib::IntPoint>::__append(&v44, v17 - *v14);
        v16 = *v14;
        v17 = v14[1];
        v15 = v43;
      }

      if (v17 != v16)
      {
        v18 = v17 - v16;
        v19 = v44;
        if (v18 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v18;
        }

        if (v18 >= 0xE && ((v21 = v44 + 16 * v20 - 16, v21 >= v44) ? (v22 = v21 + 8 >= v44 + 8) : (v22 = 0), v22 ? (v23 = (v20 - 1) >> 60 == 0) : (v23 = 0), v23 && (v44 < &v16[v20] ? (v24 = v16 >= (v44 + 16 * v20)) : (v24 = 1), v24)))
        {
          v25 = v20 & 0x1FFFFFFFFFFFFFFCLL;
          v26 = v16 + 2;
          v27 = (v44 + 32);
          v28 = v20 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v29 = v26[-2];
            v30 = v26[-1];
            v31 = *v26;
            v32 = v26[1];
            v26 += 4;
            v27[-2] = vaddq_s64(v29, v15);
            v27[-1] = vaddq_s64(v30, v15);
            *v27 = vaddq_s64(v31, v15);
            v27[1] = vaddq_s64(v32, v15);
            v27 += 4;
            v28 -= 4;
          }

          while (v28);
          if (v18 == v25)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v25 = 0;
        }

        v33 = v20 - v25;
        v34 = &v19[16 * v25];
        v35 = &v16[v25];
        do
        {
          v36 = *v35++;
          *v34++ = vaddq_s64(v36, v15);
          --v33;
        }

        while (v33);
      }

LABEL_37:
      ClipperLib::ClipperBase::AddPath(&v50 + *(v50 - 3), &v44, 1, 1);
      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }

      v11 = __p;
LABEL_40:
      if (v11)
      {
        v37 = v48;
        v9 = v11;
        if (v48 != v11)
        {
          v38 = v48;
          do
          {
            v40 = *(v38 - 3);
            v38 -= 24;
            v39 = v40;
            if (v40)
            {
              *(v37 - 2) = v39;
              operator delete(v39);
            }

            v37 = v38;
          }

          while (v38 != v11);
          v9 = __p;
        }

        v48 = v11;
        operator delete(v9);
      }

      v4 = *a2;
    }
  }

  ClipperLib::Clipper::Execute(&v50, 1, a3, 1, 1);
  ClipperLib::Clipper::~Clipper(&v50);
  v41 = *MEMORY[0x277D85DE8];
}

void sub_2389D8B0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void sub_2389D8B20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void ClipperLib::TranslatePath(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = a1[1] - *a1;
  v10 = (a2[1] - *a2) >> 4;
  if (v9 >> 4 <= v10)
  {
    if (v9 >> 4 < v10)
    {
      a2[1] = *a2 + v9;
    }
  }

  else
  {
    std::vector<ClipperLib::IntPoint>::__append(a2, (v9 >> 4) - v10);
    v8 = *a1;
  }

  v11 = a1[1];
  if (v11 != v8)
  {
    v12 = (v11 - v8) >> 4;
    v13 = *a2;
    if (v12 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v12;
    }

    if (v12 <= 0xF || ((v15 = v13 + 16 * (v14 - 1), v15 >= v13) ? (v16 = v15 + 8 >= v13 + 8) : (v16 = 0), v16 ? (v17 = (v14 - 1) >> 60 == 0) : (v17 = 0), !v17 || (v13 < v8 + 16 * v14 ? (v18 = v8 >= v13 + 16 * v14) : (v18 = 1), !v18)))
    {
      v19 = 0;
LABEL_28:
      v28.i64[0] = a3;
      v28.i64[1] = a4;
      v29 = v14 - v19;
      v30 = (v8 + 16 * v19);
      v31 = (v13 + 16 * v19);
      do
      {
        v32 = *v30++;
        *v31++ = vaddq_s64(v32, v28);
        --v29;
      }

      while (v29);
      return;
    }

    v19 = v14 & 0x1FFFFFFFFFFFFFFCLL;
    v20.i64[0] = a3;
    v20.i64[1] = a4;
    v21 = (v8 + 32);
    v22 = (v13 + 32);
    v23 = v14 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      v24 = v21[-2];
      v25 = v21[-1];
      v26 = *v21;
      v27 = v21[1];
      v21 += 4;
      v22[-2] = vaddq_s64(v24, v20);
      v22[-1] = vaddq_s64(v25, v20);
      *v22 = vaddq_s64(v26, v20);
      v22[1] = vaddq_s64(v27, v20);
      v22 += 4;
      v23 -= 4;
    }

    while (v23);
    if (v12 != v19)
    {
      goto LABEL_28;
    }
  }
}

void sub_2389D8FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void sub_2389D9010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
    std::vector<std::vector<ClipperLib::IntPoint>>::~vector[abi:ne200100](&a16);
    ClipperLib::Clipper::~Clipper(&a19);
    _Unwind_Resume(a1);
  }

  std::vector<std::vector<ClipperLib::IntPoint>>::~vector[abi:ne200100](&a16);
  ClipperLib::Clipper::~Clipper(&a19);
  _Unwind_Resume(a1);
}

void ClipperLib::MinkowskiDiff(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  ClipperLib::Minkowski(a1, a2, a3, 0, 1u);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v24 = 0u;
  v25 = 0u;
  v8 = &unk_284B504F0;
  v23 = &unk_284B50538;
  v15 = 0;
  v16 = 0;
  v26 = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v30 = 0;
  v4 = *a3;
  if (a3[1] != *a3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ClipperLib::ClipperBase::AddPath(&v23, v4 + v5, 0, 1);
      ++v6;
      v4 = *a3;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  }

  ClipperLib::Clipper::Execute(&v8, 1, a3, 1, 1);
  ClipperLib::Clipper::~Clipper(&v8);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_2389D91BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void sub_2389D91D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void *ClipperLib::AddPolyNodeToPaths(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    return result;
  }

  v5 = result;
  if (a2 != 2)
  {
    v6 = 0;
    v7 = result + 1;
    if (result[1] == result[2])
    {
      goto LABEL_14;
    }

LABEL_6:
    if ((v6 & 1) == 0)
    {
      v8 = *(a3 + 8);
      if (v8 >= *(a3 + 16))
      {
        result = std::vector<std::vector<ClipperLib::IntPoint>>::__emplace_back_slow_path<std::vector<ClipperLib::IntPoint> const&>(a3, v7);
      }

      else
      {
        *v8 = 0;
        v8[1] = 0;
        v8[2] = 0;
        v10 = result[1];
        v9 = result[2];
        if (v9 != v10)
        {
          if (((v9 - v10) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
        }

        result = v8 + 3;
        *(a3 + 8) = v8 + 3;
      }

      *(a3 + 8) = result;
    }

    goto LABEL_14;
  }

  v6 = *(result + 68);
  v7 = result + 1;
  if (result[1] != result[2])
  {
    goto LABEL_6;
  }

LABEL_14:
  v11 = v5[4];
  if (((v5[5] - v11) >> 3) >= 1)
  {
    v12 = 0;
    do
    {
      result = ClipperLib::AddPolyNodeToPaths(*(v11 + 8 * v12++), a2, a3);
      v11 = v5[4];
    }

    while (v12 < ((v5[5] - v11) >> 3));
  }

  return result;
}

void sub_2389D931C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void *ClipperLib::PolyTreeToPaths(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4 == *a2)
  {
    v5 = a2[1];
    v9 = *(a1 + 80);
    v10 = (*(a1 + 88) - v9) >> 3;
    if (v10 >= 1)
    {
LABEL_7:
      LODWORD(v10) = v10 - (**(a1 + 32) != *v9);
    }
  }

  else
  {
    v6 = a2[1];
    do
    {
      v8 = *(v6 - 24);
      v6 -= 24;
      v7 = v8;
      if (v8)
      {
        *(v4 - 16) = v7;
        operator delete(v7);
      }

      v4 = v6;
    }

    while (v6 != v5);
    a2[1] = v5;
    v9 = *(a1 + 80);
    v10 = (*(a1 + 88) - v9) >> 3;
    if (v10 >= 1)
    {
      goto LABEL_7;
    }
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a2[2] - *a2) >> 3) < v10)
  {
    if (v10 < 0xAAAAAAAAAAAAAABLL)
    {
      v11 = v5 - *a2;
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  return ClipperLib::AddPolyNodeToPaths(a1, 0, a2);
}

void *ClipperLib::ClosedPathsFromPolyTree(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4 == *a2)
  {
    v5 = a2[1];
    v9 = *(a1 + 80);
    v10 = (*(a1 + 88) - v9) >> 3;
    if (v10 >= 1)
    {
LABEL_7:
      LODWORD(v10) = v10 - (**(a1 + 32) != *v9);
    }
  }

  else
  {
    v6 = a2[1];
    do
    {
      v8 = *(v6 - 24);
      v6 -= 24;
      v7 = v8;
      if (v8)
      {
        *(v4 - 16) = v7;
        operator delete(v7);
      }

      v4 = v6;
    }

    while (v6 != v5);
    a2[1] = v5;
    v9 = *(a1 + 80);
    v10 = (*(a1 + 88) - v9) >> 3;
    if (v10 >= 1)
    {
      goto LABEL_7;
    }
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a2[2] - *a2) >> 3) < v10)
  {
    if (v10 < 0xAAAAAAAAAAAAAABLL)
    {
      v11 = v5 - *a2;
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  return ClipperLib::AddPolyNodeToPaths(a1, 2, a2);
}

void ClipperLib::OpenPathsFromPolyTree(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4 == *a2)
  {
    v5 = a2[1];
    v9 = *(a1 + 80);
    v10 = (*(a1 + 88) - v9) >> 3;
    if (v10 >= 1)
    {
LABEL_7:
      LODWORD(v10) = v10 - (**(a1 + 32) != *v9);
    }
  }

  else
  {
    v6 = a2[1];
    do
    {
      v8 = *(v6 - 24);
      v6 -= 24;
      v7 = v8;
      if (v8)
      {
        *(v4 - 16) = v7;
        operator delete(v7);
      }

      v4 = v6;
    }

    while (v6 != v5);
    a2[1] = v5;
    v9 = *(a1 + 80);
    v10 = (*(a1 + 88) - v9) >> 3;
    if (v10 >= 1)
    {
      goto LABEL_7;
    }
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a2[2] - *a2) >> 3) < v10)
  {
    if (v10 < 0xAAAAAAAAAAAAAABLL)
    {
      v11 = v5 - *a2;
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (((v12 - v13) >> 3) >= 1)
  {
    v14 = 0;
    do
    {
      v16 = *(v13 + 8 * v14);
      if (*(v16 + 68) == 1)
      {
        v17 = a2[1];
        if (v17 >= a2[2])
        {
          v15 = std::vector<std::vector<ClipperLib::IntPoint>>::__emplace_back_slow_path<std::vector<ClipperLib::IntPoint> const&>(a2, (v16 + 8));
        }

        else
        {
          *v17 = 0;
          v17[1] = 0;
          v17[2] = 0;
          v19 = *(v16 + 8);
          v18 = *(v16 + 16);
          if (v18 != v19)
          {
            if (((v18 - v19) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
          }

          v15 = v17 + 3;
          a2[1] = (v17 + 3);
        }

        a2[1] = v15;
        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
      }

      ++v14;
    }

    while (v14 < ((v12 - v13) >> 3));
  }
}

void sub_2389D9824(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void *ClipperLib::operator<<(void *a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
  v5 = MEMORY[0x23EE6C480](v4, *a2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ",", 1);
  v7 = MEMORY[0x23EE6C480](v6, a2[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ")", 1);
  return a1;
}

void *ClipperLib::operator<<(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = v4 - v3;
    v7 = (v4 - v3) >> 4;
    v8 = v7 - 1;
    if (v7 != 1)
    {
      v9 = 0;
      do
      {
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
        v11 = MEMORY[0x23EE6C480](v10, *(*a2 + v9));
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ",", 1);
        v13 = MEMORY[0x23EE6C480](v12, *(*a2 + v9 + 8));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "), ", 3);
        v9 += 16;
        --v8;
      }

      while (v8);
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
    v15 = MEMORY[0x23EE6C480](v14, *(*a2 + v6 - 16));
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ",", 1);
    v17 = MEMORY[0x23EE6C480](v16, *(*a2 + v6 - 8));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ")\n", 2);
  }

  return a1;
}

{
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ClipperLib::operator<<(a1, (v3 + v5));
      ++v6;
      v3 = *a2;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\n", 1);
  return a1;
}

ClipperLib::clipperException *ClipperLib::clipperException::clipperException(ClipperLib::clipperException *this, const char *__s)
{
  *this = &unk_284B505C0;
  v4 = this + 8;
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(this + 31) = v5;
  if (v5)
  {
    memmove(v4, __s, v5);
  }

  v4[v6] = 0;
  return this;
}

uint64_t ClipperLib::clipperException::what(ClipperLib::clipperException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

void *std::vector<std::vector<ClipperLib::IntPoint>>::__emplace_back_slow_path<std::vector<ClipperLib::IntPoint> const&>(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v7 = v5 + 3;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v5 - v9;
  memcpy(v10, *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_2389D9DE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 24;
        v4 = *(v2 - 24);
        *(a1 + 16) = v2 - 24;
        if (!v4)
        {
          break;
        }

        *(v2 - 16) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 24;
    }

    while (v5 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,false>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v10 = (a2 - 24);
  v11 = a2 - 48;
  v12 = a2 - 72;
  v13 = a1;
  while (1)
  {
    a1 = v13;
    v14 = &a2[-v13];
    v15 = 0xAAAAAAAAAAAAAAABLL * (&a2[-v13] >> 3);
    if (v15 > 2)
    {
      break;
    }

    if (v15 < 2)
    {
      return result;
    }

    if (v15 == 2)
    {
      if (*v13 >= *v10)
      {
        return result;
      }

      goto LABEL_108;
    }

LABEL_9:
    if (v14 <= 575)
    {
      v91 = (v13 + 24);
      v93 = v13 == a2 || v91 == a2;
      if (a5)
      {
        if (!v93)
        {
          v94 = 0;
          v95 = v13;
          do
          {
            v97 = v91;
            v98 = v95[1].n128_i64[1];
            if (v95->n128_u64[0] < v98)
            {
              v132 = v95[2];
              v99 = v94;
              v96 = v97;
              while (1)
              {
                *v96 = *(v96 - 24);
                *(v96 + 16) = *(v96 - 8);
                if (!v99)
                {
                  break;
                }

                v100 = *(v96 - 48);
                v96 -= 24;
                v99 += 24;
                if (v100 >= v98)
                {
                  goto LABEL_122;
                }
              }

              v96 = v13;
LABEL_122:
              *v96 = v98;
              result = v132;
              *(v96 + 8) = v132;
            }

            v91 = &v97[1].n128_i8[8];
            v94 -= 24;
            v95 = v97;
          }

          while (&v97[1].n128_i8[8] != a2);
        }
      }

      else if (!v93)
      {
        do
        {
          v103 = v91;
          v104 = *(a1 + 24);
          if (*a1 < v104)
          {
            v134 = *(a1 + 32);
            do
            {
              *v91 = *(v91 - 24);
              *(v91 + 2) = *(v91 - 1);
              v105 = *(v91 - 6);
              v91 -= 24;
            }

            while (v105 < v104);
            *v91 = v104;
            result = v134;
            *(v91 + 8) = v134;
          }

          v91 = (v103 + 24);
          a1 = v103;
        }

        while ((v103 + 24) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v13 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,ClipperLib::LocalMinimum *>(v13, a2, a2);
      }

      return result;
    }

    v16 = v15 >> 1;
    v17 = v13 + 24 * (v15 >> 1);
    v18 = *v10;
    if (v14 < 0xC01)
    {
      v21 = *v13;
      if (*v17 < *v13)
      {
        if (v21 < v18)
        {
          v139 = *(v17 + 16);
          v113 = *v17;
          v22 = *v10;
          *(v17 + 16) = *(a2 - 1);
          *v17 = v22;
          goto LABEL_36;
        }

        v148 = *(v17 + 16);
        v120 = *v17;
        v40 = *v13;
        *(v17 + 16) = *(v13 + 16);
        *v17 = v40;
        *(v13 + 16) = v148;
        *v13 = v120;
        if (*v13 < *v10)
        {
          v139 = *(v13 + 16);
          v113 = *v13;
          v41 = *v10;
          *(v13 + 16) = *(a2 - 1);
          *v13 = v41;
LABEL_36:
          *(a2 - 1) = v139;
          *v10 = v113;
        }

LABEL_37:
        --a4;
        v27 = *v13;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v21 >= v18)
      {
        goto LABEL_37;
      }

      v142 = *(v13 + 16);
      v116 = *v13;
      v25 = *v10;
      *(v13 + 16) = *(a2 - 1);
      *v13 = v25;
      *(a2 - 1) = v142;
      *v10 = v116;
      if (*v17 >= *v13)
      {
        goto LABEL_37;
      }

      v143 = *(v17 + 16);
      v117 = *v17;
      v26 = *v13;
      *(v17 + 16) = *(v13 + 16);
      *v17 = v26;
      *(v13 + 16) = v143;
      *v13 = v117;
      --a4;
      v27 = *v13;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (v27 < *(v13 - 24))
      {
        goto LABEL_62;
      }

      v111 = *(v13 + 8);
      if (*v10 >= v27)
      {
        v76 = v13 + 24;
        do
        {
          v13 = v76;
          if (v76 >= a2)
          {
            break;
          }

          v76 += 24;
        }

        while (*v13 >= v27);
      }

      else
      {
        do
        {
          v75 = *(v13 + 24);
          v13 += 24;
        }

        while (v75 >= v27);
      }

      v77 = a2;
      if (v13 < a2)
      {
        v77 = a2;
        do
        {
          v78 = *(v77 - 3);
          v77 -= 24;
        }

        while (v78 < v27);
      }

      while (v13 < v77)
      {
        v162 = *(v13 + 16);
        v129 = *v13;
        v79 = *v77;
        *(v13 + 16) = *(v77 + 2);
        *v13 = v79;
        *(v77 + 2) = v162;
        *v77 = v129;
        do
        {
          v80 = *(v13 + 24);
          v13 += 24;
        }

        while (v80 >= v27);
        do
        {
          v81 = *(v77 - 3);
          v77 -= 24;
        }

        while (v81 < v27);
      }

      if (v13 - 24 != a1)
      {
        v82 = *(v13 - 24);
        *(a1 + 16) = *(v13 - 8);
        *a1 = v82;
      }

      a5 = 0;
      *(v13 - 24) = v27;
      result = v111;
      *(v13 - 16) = v111;
    }

    else
    {
      v19 = *v17;
      if (*v13 >= *v17)
      {
        if (v19 < v18)
        {
          v140 = *(v17 + 16);
          v114 = *v17;
          v23 = *v10;
          *(v17 + 16) = *(a2 - 1);
          *v17 = v23;
          *(a2 - 1) = v140;
          *v10 = v114;
          if (*v13 < *v17)
          {
            v141 = *(v13 + 16);
            v115 = *v13;
            v24 = *v17;
            *(v13 + 16) = *(v17 + 16);
            *v13 = v24;
            *(v17 + 16) = v141;
            *v17 = v115;
          }
        }
      }

      else
      {
        if (v19 >= v18)
        {
          v144 = *(v13 + 16);
          v118 = *v13;
          v28 = *v17;
          *(v13 + 16) = *(v17 + 16);
          *v13 = v28;
          *(v17 + 16) = v144;
          *v17 = v118;
          if (*v17 >= *v10)
          {
            goto LABEL_28;
          }

          v138 = *(v17 + 16);
          v112 = *v17;
          v29 = *v10;
          *(v17 + 16) = *(a2 - 1);
          *v17 = v29;
        }

        else
        {
          v138 = *(v13 + 16);
          v112 = *v13;
          v20 = *v10;
          *(v13 + 16) = *(a2 - 1);
          *v13 = v20;
        }

        *(a2 - 1) = v138;
        *v10 = v112;
      }

LABEL_28:
      v30 = (v13 + 24);
      v31 = v13 + 24 * v16;
      v32 = v31 - 24;
      v33 = *(v31 - 24);
      v34 = *v11;
      if (*(v13 + 24) >= v33)
      {
        if (v33 < v34)
        {
          v146 = *(v31 - 8);
          v119 = *v32;
          v37 = *v11;
          *(v31 - 8) = *(a2 - 4);
          *v32 = v37;
          *(a2 - 4) = v146;
          *v11 = v119;
          if (*v30 < *v32)
          {
            v38 = *v30;
            v147 = *(v13 + 40);
            v39 = *(v31 - 8);
            *v30 = *v32;
            *(v13 + 40) = v39;
            *(v31 - 8) = v147;
            *v32 = v38;
          }
        }
      }

      else
      {
        if (v33 >= v34)
        {
          v42 = *v30;
          v149 = *(v13 + 40);
          v43 = *(v31 - 8);
          *v30 = *v32;
          *(v13 + 40) = v43;
          *(v31 - 8) = v149;
          *v32 = v42;
          if (*v32 >= *v11)
          {
            goto LABEL_42;
          }

          v150 = *(v31 - 8);
          v121 = *v32;
          v44 = *v11;
          *(v31 - 8) = *(a2 - 4);
          *v32 = v44;
          v35 = v121;
          *(a2 - 4) = v150;
        }

        else
        {
          v35 = *v30;
          v145 = *(v13 + 40);
          v36 = *(a2 - 4);
          *v30 = *v11;
          *(v13 + 40) = v36;
          *(a2 - 4) = v145;
        }

        *v11 = v35;
      }

LABEL_42:
      v45 = (v13 + 48);
      v48 = *(v31 + 24);
      v46 = v31 + 24;
      v47 = v48;
      v49 = *v12;
      if (*(v13 + 48) >= v48)
      {
        if (v47 < v49)
        {
          v152 = *(v46 + 16);
          v122 = *v46;
          v52 = *v12;
          *(v46 + 16) = *(a2 - 7);
          *v46 = v52;
          *(a2 - 7) = v152;
          *v12 = v122;
          if (*v45 < *v46)
          {
            v53 = *v45;
            v153 = *(v13 + 64);
            v54 = *(v46 + 16);
            *v45 = *v46;
            *(v13 + 64) = v54;
            *(v46 + 16) = v153;
            *v46 = v53;
          }
        }
      }

      else
      {
        if (v47 >= v49)
        {
          v55 = *v45;
          v154 = *(v13 + 64);
          v56 = *(v46 + 16);
          *v45 = *v46;
          *(v13 + 64) = v56;
          *(v46 + 16) = v154;
          *v46 = v55;
          if (*v46 >= *v12)
          {
            goto LABEL_51;
          }

          v155 = *(v46 + 16);
          v123 = *v46;
          v57 = *v12;
          *(v46 + 16) = *(a2 - 7);
          *v46 = v57;
          v50 = v123;
          *(a2 - 7) = v155;
        }

        else
        {
          v50 = *v45;
          v151 = *(v13 + 64);
          v51 = *(a2 - 7);
          *v45 = *v12;
          *(v13 + 64) = v51;
          *(a2 - 7) = v151;
        }

        *v12 = v50;
      }

LABEL_51:
      v58 = *v17;
      v59 = *v46;
      if (*v32 >= *v17)
      {
        if (v58 < v59)
        {
          v157 = *(v17 + 16);
          v125 = *v17;
          *v17 = *v46;
          *(v17 + 16) = *(v46 + 16);
          *(v46 + 16) = v157;
          *v46 = v125;
          if (*v32 < *v17)
          {
            v158 = *(v32 + 16);
            v126 = *v32;
            *v32 = *v17;
            *(v32 + 16) = *(v17 + 16);
            *(v17 + 16) = v158;
            *v17 = v126;
          }
        }
      }

      else
      {
        if (v58 >= v59)
        {
          v159 = *(v32 + 16);
          v127 = *v32;
          *v32 = *v17;
          *(v32 + 16) = *(v17 + 16);
          *(v17 + 16) = v159;
          *v17 = v127;
          if (*v17 >= *v46)
          {
            goto LABEL_60;
          }

          v156 = *(v17 + 16);
          v124 = *v17;
          *v17 = *v46;
          *(v17 + 16) = *(v46 + 16);
        }

        else
        {
          v156 = *(v32 + 16);
          v124 = *v32;
          *v32 = *v46;
          *(v32 + 16) = *(v46 + 16);
        }

        *(v46 + 16) = v156;
        *v46 = v124;
      }

LABEL_60:
      v160 = *(v13 + 16);
      v128 = *v13;
      v60 = *v17;
      *(v13 + 16) = *(v17 + 16);
      *v13 = v60;
      *(v17 + 16) = v160;
      *v17 = v128;
      --a4;
      v27 = *v13;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v110 = *(v13 + 8);
      v61 = v13;
      do
      {
        v62 = v61;
        v63 = *(v61 + 24);
        v61 += 24;
      }

      while (v27 < v63);
      v64 = a2;
      if (v62 == v13)
      {
        v64 = a2;
        do
        {
          if (v61 >= v64)
          {
            break;
          }

          v66 = *(v64 - 3);
          v64 -= 24;
        }

        while (v27 >= v66);
      }

      else
      {
        do
        {
          v65 = *(v64 - 3);
          v64 -= 24;
        }

        while (v27 >= v65);
      }

      v13 = v61;
      if (v61 < v64)
      {
        v67 = v64;
        do
        {
          v68 = *v13;
          v161 = *(v13 + 16);
          v69 = *(v67 + 16);
          *v13 = *v67;
          *(v13 + 16) = v69;
          *(v67 + 16) = v161;
          *v67 = v68;
          do
          {
            v70 = *(v13 + 24);
            v13 += 24;
          }

          while (v27 < v70);
          do
          {
            v71 = *(v67 - 24);
            v67 -= 24;
          }

          while (v27 >= v71);
        }

        while (v13 < v67);
      }

      if (v13 - 24 != a1)
      {
        v72 = *(v13 - 24);
        *(a1 + 16) = *(v13 - 8);
        *a1 = v72;
      }

      *(v13 - 24) = v27;
      *(v13 - 16) = v110;
      if (v61 < v64)
      {
        goto LABEL_81;
      }

      v73 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(a1, (v13 - 24), v110);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(v13, a2, v74))
      {
        a2 = (v13 - 24);
        if (!v73)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v73)
      {
LABEL_81:
        std::__introsort<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,false>(a1, v13 - 24, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v15 != 3)
  {
    if (v15 == 4)
    {
      v83 = (v13 + 24);
      v87 = *(v13 + 24);
      v88 = (v13 + 48);
      v89 = *(v13 + 48);
      if (*v13 >= v87)
      {
        if (v87 < v89)
        {
          v102 = *(v13 + 40);
          result = *v83;
          *v83 = *v88;
          *(v13 + 40) = *(v13 + 64);
          *v88 = result;
          *(v13 + 64) = v102;
          if (*v13 < *(v13 + 24))
          {
            v166 = *(v13 + 16);
            v133 = *v13;
            *v13 = *v83;
            *(v13 + 16) = *(v13 + 40);
            result = v133;
            *v83 = v133;
            *(v13 + 40) = v166;
          }
        }
      }

      else
      {
        if (v87 < v89)
        {
          v164 = *(v13 + 16);
          v131 = *v13;
          *v13 = *v88;
          *(v13 + 16) = *(v13 + 64);
          result = v131;
          *v88 = v131;
          v90 = v164;
          goto LABEL_149;
        }

        v169 = *(v13 + 16);
        v136 = *v13;
        *v13 = *v83;
        *(v13 + 16) = *(v13 + 40);
        result = v136;
        *v83 = v136;
        *(v13 + 40) = v169;
        if (*(v13 + 24) < v89)
        {
          v90 = *(v13 + 40);
          result = *v83;
          *v83 = *v88;
          *(v13 + 40) = *(v13 + 64);
          *v88 = result;
LABEL_149:
          *(v13 + 64) = v90;
        }
      }

      if (v88->n128_u64[0] >= *v10)
      {
        return result;
      }

      result = *v88;
      v170 = *(v13 + 64);
      v107 = *(a2 - 1);
      *v88 = *v10;
      *(v13 + 64) = v107;
      *(a2 - 1) = v170;
      *v10 = result;
      if (v83->n128_u64[0] >= v88->n128_u64[0])
      {
        return result;
      }

      v108 = *(v13 + 40);
      result = *v83;
      *v83 = *v88;
      *(v13 + 40) = *(v13 + 64);
      *v88 = result;
      *(v13 + 64) = v108;
LABEL_153:
      if (*v13 < *(v13 + 24))
      {
        v171 = *(v13 + 16);
        v137 = *v13;
        *v13 = *v83;
        *(v13 + 16) = v83[1].n128_u64[0];
        result = v137;
        *v83 = v137;
        v83[1].n128_u64[0] = v171;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,0>(v13, (v13 + 24), (v13 + 48), v13 + 72, (a2 - 24), result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v83 = (v13 + 24);
  v84 = *(v13 + 24);
  v85 = *v10;
  if (*v13 >= v84)
  {
    if (v84 >= v85)
    {
      return result;
    }

    result = *v83;
    v165 = *(v13 + 40);
    v101 = *(a2 - 1);
    *v83 = *v10;
    *(v13 + 40) = v101;
    *(a2 - 1) = v165;
    *v10 = result;
    goto LABEL_153;
  }

  if (v84 < v85)
  {
LABEL_108:
    v163 = *(v13 + 16);
    v130 = *v13;
    v86 = *v10;
    *(v13 + 16) = *(a2 - 1);
    *v13 = v86;
    result = v130;
    *(a2 - 1) = v163;
    *v10 = v130;
    return result;
  }

  v167 = *(v13 + 16);
  v135 = *v13;
  *v13 = *v83;
  *(v13 + 16) = *(v13 + 40);
  result = v135;
  *v83 = v135;
  *(v13 + 40) = v167;
  if (*(v13 + 24) < *v10)
  {
    result = *v83;
    v168 = *(v13 + 40);
    v106 = *(a2 - 1);
    *v83 = *v10;
    *(v13 + 40) = v106;
    *(a2 - 1) = v168;
    *v10 = result;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,0>(__n128 *a1, __n128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a1->n128_u64[0] >= a2->n128_u64[0])
  {
    if (v6 < v7)
    {
      v10 = a2[1].n128_i64[0];
      result = *a2;
      v11 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[2] = v10;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v6 < v7)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[2];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[2] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a2->n128_u64[0] < *a3)
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a3 < *a4)
  {
    v17 = a3[2];
    result = *a3;
    v18 = *(a4 + 16);
    *a3 = *a4;
    a3[2] = v18;
    *a4 = result;
    *(a4 + 16) = v17;
    if (a2->n128_u64[0] < *a3)
    {
      v19 = a2[1].n128_i64[0];
      result = *a2;
      v20 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[2] = v19;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (*a4 < *a5)
  {
    v23 = *(a4 + 16);
    result = *a4;
    v24 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v24;
    *a5 = result;
    *(a5 + 16) = v23;
    if (*a3 < *a4)
    {
      v25 = a3[2];
      result = *a3;
      v26 = *(a4 + 16);
      *a3 = *a4;
      a3[2] = v26;
      *a4 = result;
      *(a4 + 16) = v25;
      if (a2->n128_u64[0] < *a3)
      {
        v27 = a2[1].n128_i64[0];
        result = *a2;
        v28 = a3[2];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[2] = v27;
        if (a1->n128_u64[0] < a2->n128_u64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(uint64_t a1, _OWORD *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a1 + 24);
      v8 = *(a1 + 24);
      v10 = *(a2 - 3);
      v4 = (a2 - 24);
      v9 = v10;
      if (*a1 < v8)
      {
        if (v8 >= v9)
        {
          v39 = *(a1 + 16);
          v40 = *a1;
          *a1 = *v7;
          *(a1 + 16) = *(a1 + 40);
          *v7 = v40;
          *(a1 + 40) = v39;
          if (*(a1 + 24) < v4->n128_u64[0])
          {
            v41 = *(a1 + 40);
            v42 = *v7;
            v43 = v4[1].n128_i64[0];
            *v7 = *v4;
            *(a1 + 40) = v43;
            *v4 = v42;
            v4[1].n128_u64[0] = v41;
            return 1;
          }

          return 1;
        }

        goto LABEL_12;
      }

      if (v8 >= v9)
      {
        return 1;
      }

      v28 = *(a1 + 40);
      v29 = *v7;
      v30 = v4[1].n128_i64[0];
      *v7 = *v4;
      *(a1 + 40) = v30;
      *v4 = v29;
      v4[1].n128_u64[0] = v28;
LABEL_48:
      if (*a1 < *(a1 + 24))
      {
        v63 = *(a1 + 16);
        v64 = *a1;
        *a1 = *v7;
        *(a1 + 16) = v7[1].n128_u64[0];
        *v7 = v64;
        v7[1].n128_u64[0] = v63;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,0>(a1, (a1 + 24), (a1 + 48), a1 + 72, a2 - 24, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v7 = (a1 + 24);
    v21 = *(a1 + 24);
    v22 = (a1 + 48);
    v23 = *(a1 + 48);
    v24 = (a2 - 24);
    v25 = *a1;
    if (*a1 >= v21)
    {
      if (v21 < v23)
      {
        v35 = *(a1 + 40);
        v36 = *v7;
        *v7 = *v22;
        *(a1 + 40) = *(a1 + 64);
        *v22 = v36;
        *(a1 + 64) = v35;
        if (v25 < v7->n128_u64[0])
        {
          v37 = *(a1 + 16);
          v38 = *a1;
          *a1 = *v7;
          *(a1 + 16) = *(a1 + 40);
          *v7 = v38;
          *(a1 + 40) = v37;
        }
      }

      goto LABEL_45;
    }

    if (v21 >= v23)
    {
      v56 = *(a1 + 16);
      v57 = *a1;
      *a1 = *v7;
      *(a1 + 16) = *(a1 + 40);
      *v7 = v57;
      *(a1 + 40) = v56;
      if (*(a1 + 24) >= v23)
      {
        goto LABEL_45;
      }

      v26 = *(a1 + 40);
      v27 = *v7;
      *v7 = *v22;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v26 = *(a1 + 16);
      v27 = *a1;
      *a1 = *v22;
      *(a1 + 16) = *(a1 + 64);
    }

    *v22 = v27;
    *(a1 + 64) = v26;
LABEL_45:
    if (v22->n128_u64[0] >= v24->n128_u64[0])
    {
      return 1;
    }

    v58 = *(a1 + 64);
    v59 = *v22;
    v60 = *(a2 - 1);
    *v22 = *v24;
    *(a1 + 64) = v60;
    *v24 = v59;
    *(a2 - 1) = v58;
    if (v7->n128_u64[0] >= v22->n128_u64[0])
    {
      return 1;
    }

    v61 = *(a1 + 40);
    v62 = *v7;
    *v7 = *v22;
    *(a1 + 40) = *(a1 + 64);
    *v22 = v62;
    *(a1 + 64) = v61;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 3);
    v4 = (a2 - 24);
    if (*a1 >= v5)
    {
      return 1;
    }

LABEL_12:
    v11 = *(a1 + 16);
    v12 = *a1;
    v13 = v4[1].n128_i64[0];
    *a1 = *v4;
    *(a1 + 16) = v13;
    *v4 = v12;
    v4[1].n128_u64[0] = v11;
    return 1;
  }

LABEL_13:
  v14 = (a1 + 48);
  v15 = *(a1 + 48);
  v16 = (a1 + 24);
  v17 = *(a1 + 24);
  v18 = *a1;
  if (*a1 >= v17)
  {
    if (v17 < v15)
    {
      v31 = *(a1 + 40);
      v32 = *v16;
      *v16 = *v14;
      *(a1 + 40) = *(a1 + 64);
      *v14 = v32;
      *(a1 + 64) = v31;
      if (v18 < v16->n128_u64[0])
      {
        v33 = *(a1 + 16);
        v34 = *a1;
        *a1 = *v16;
        *(a1 + 16) = *(a1 + 40);
        *v16 = v34;
        *(a1 + 40) = v33;
      }
    }
  }

  else if (v17 >= v15)
  {
    v44 = *(a1 + 16);
    v45 = *a1;
    *a1 = *v16;
    *(a1 + 16) = *(a1 + 40);
    *v16 = v45;
    *(a1 + 40) = v44;
    if (*(a1 + 24) < v15)
    {
      v46 = *(a1 + 40);
      v47 = *v16;
      *v16 = *v14;
      *(a1 + 40) = *(a1 + 64);
      *v14 = v47;
      *(a1 + 64) = v46;
    }
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *a1;
    *a1 = *v14;
    *(a1 + 16) = *(a1 + 64);
    *v14 = v20;
    *(a1 + 64) = v19;
  }

  v48 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v49 = 0;
  v50 = 0;
  while (1)
  {
    v51 = v14->n128_u64[0];
    v52 = *v48;
    if (v51 < *v48)
    {
      break;
    }

LABEL_40:
    v14 = v48;
    v49 += 24;
    v48 = (v48 + 24);
    if (v48 == a2)
    {
      return 1;
    }
  }

  v65 = *(v48 + 8);
  v53 = v49;
  do
  {
    v54 = a1 + v53;
    *(v54 + 72) = *(a1 + v53 + 48);
    *(v54 + 88) = *(a1 + v53 + 64);
    if (v53 == -48)
    {
      *a1 = v52;
      *(a1 + 8) = v65;
      if (++v50 != 8)
      {
        goto LABEL_40;
      }

      return (v48 + 24) == a2;
    }

    v53 -= 24;
  }

  while (*(v54 + 24) < v52);
  v55 = a1 + v53;
  *(v55 + 72) = v52;
  *(v55 + 80) = v65;
  if (++v50 != 8)
  {
    goto LABEL_40;
  }

  return (v48 + 24) == a2;
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,ClipperLib::LocalMinimum *>(uint64_t *a1, char *a2, __int128 *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (a2 - a1 >= 25 && v3 >= 0x30)
  {
    v41 = (v4 - 2) >> 1;
    v42 = a1 + 3;
    v43 = v41;
    do
    {
      if (v41 >= v43)
      {
        v44 = (2 * (v43 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        v45 = &v42[6 * v43];
        if (2 * v43 + 2 >= v4)
        {
          v47 = &a1[3 * v43];
          v48 = *v47;
          if (*v47 >= *v45)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v46 = v45[3];
          if (v46 < *v45)
          {
            v45 += 3;
            v44 = 2 * v43 + 2;
          }

          else
          {
            v46 = *v45;
          }

          v47 = &a1[3 * v43];
          v48 = *v47;
          if (*v47 >= v46)
          {
LABEL_67:
            v55 = *(v47 + 1);
            while (1)
            {
              v50 = v47;
              v47 = v45;
              v51 = *v45;
              v50[2] = v45[2];
              *v50 = v51;
              if (v41 < v44)
              {
                break;
              }

              v52 = (2 * v44) | 1;
              v45 = &v42[6 * v44];
              v44 = 2 * v44 + 2;
              if (v44 < v4)
              {
                v49 = v45[3];
                if (v49 < *v45)
                {
                  v45 += 3;
                }

                else
                {
                  v49 = *v45;
                  v44 = v52;
                }

                if (v48 < v49)
                {
                  break;
                }
              }

              else
              {
                v44 = v52;
                if (v48 < *v45)
                {
                  break;
                }
              }
            }

            *v47 = v48;
            *(v47 + 1) = v55;
          }
        }
      }

      v24 = v43-- <= 0;
    }

    while (!v24);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 48)
    {
      i = a2;
      do
      {
        if (*a1 < *i)
        {
          v6 = *(i + 2);
          v7 = *i;
          v8 = a1[2];
          *i = *a1;
          *(i + 2) = v8;
          *a1 = v7;
          a1[2] = v6;
        }

        i = (i + 24);
      }

      while (i != a3);
      goto LABEL_36;
    }

    v9 = a1 + 3;
    v10 = a1 + 6;
    for (i = a2; i != a3; i = (i + 24))
    {
      if (*a1 < *i)
      {
        v11 = *(i + 2);
        v12 = *i;
        v13 = a1[2];
        *i = *a1;
        *(i + 2) = v13;
        *a1 = v12;
        a1[2] = v11;
        if (v4 <= 2)
        {
          v15 = a1 + 3;
          v16 = 1;
          v17 = *a1;
          if (*a1 >= *v9)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (*v10 >= *v9)
          {
            v14 = *v9;
          }

          else
          {
            v14 = *v10;
          }

          if (*v10 >= *v9)
          {
            v15 = a1 + 3;
          }

          else
          {
            v15 = a1 + 6;
          }

          if (*v10 >= *v9)
          {
            v16 = 1;
          }

          else
          {
            v16 = 2;
          }

          v17 = *a1;
          if (*a1 >= v14)
          {
LABEL_27:
            v53 = *(a1 + 1);
            v18 = a1;
            while (1)
            {
              v20 = v18;
              v18 = v15;
              v21 = *v15;
              v20[2] = v15[2];
              *v20 = v21;
              if (((v4 - 2) >> 1) < v16)
              {
                break;
              }

              v22 = (2 * v16) | 1;
              v15 = &v9[6 * v16];
              v16 = 2 * v16 + 2;
              if (v16 < v4)
              {
                v19 = v15[3];
                if (v19 < *v15)
                {
                  v15 += 3;
                }

                else
                {
                  v19 = *v15;
                  v16 = v22;
                }

                if (v17 < v19)
                {
                  break;
                }
              }

              else
              {
                v16 = v22;
                if (v17 < *v15)
                {
                  break;
                }
              }
            }

            *v18 = v17;
            *(v18 + 1) = v53;
          }
        }
      }
    }
  }

LABEL_36:
  if (v3 >= 25)
  {
    v23 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    do
    {
      v25 = 0;
      v54 = *a1;
      v56 = a1[2];
      v26 = a1;
      do
      {
        v31 = v26 + 24 * v25;
        v29 = (v31 + 24);
        v32 = (2 * v25) | 1;
        v25 = 2 * v25 + 2;
        if (v25 < v23)
        {
          v28 = *(v31 + 48);
          v27 = (v31 + 48);
          if (v28 >= *(v27 - 3))
          {
            v25 = v32;
          }

          else
          {
            v29 = v27;
          }
        }

        else
        {
          v25 = v32;
        }

        v30 = *v29;
        *(v26 + 2) = *(v29 + 2);
        *v26 = v30;
        v26 = v29;
      }

      while (v25 <= ((v23 - 2) >> 1));
      a2 -= 24;
      if (v29 == a2)
      {
        *(v29 + 2) = v56;
        *v29 = v54;
      }

      else
      {
        v33 = *a2;
        *(v29 + 2) = *(a2 + 2);
        *v29 = v33;
        *a2 = v54;
        *(a2 + 2) = v56;
        v34 = v29 - a1 + 24;
        if (v34 >= 25)
        {
          v35 = (-2 - 0x5555555555555555 * (v34 >> 3)) >> 1;
          v36 = &a1[3 * v35];
          v37 = *v29;
          if (*v29 < *v36)
          {
            v57 = *(v29 + 8);
            do
            {
              v38 = v29;
              v29 = v36;
              v39 = *v36;
              *(v38 + 2) = v36[2];
              *v38 = v39;
              if (!v35)
              {
                break;
              }

              v35 = (v35 - 1) >> 1;
              v36 = &a1[3 * v35];
            }

            while (v37 < *v36);
            *v29 = v37;
            *(v29 + 8) = v57;
          }
        }
      }

      v24 = v23-- <= 2;
    }

    while (!v24);
  }

  return i;
}

void std::vector<long long>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

char *std::vector<ClipperLib::IntPoint>::__assign_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 4)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void std::vector<ClipperLib::IntPoint>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x23EE6C450](v14, a1);
  if (v14[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x23EE6C460](v14);
  return a1;
}

void sub_2389DBC78(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x23EE6C460](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2389DBC58);
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

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_2389DBEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2389DC180(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF48778);

  _Unwind_Resume(a1);
}

void sub_2389DCDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = GKNoise;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2389DED7C(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_2389DEE58(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void OpenSteer::PolylinePathway::~PolylinePathway(OpenSteer::PolylinePathway *this)
{
  *this = &unk_284B50608;
  v2 = *(this + 10);
  if (v2)
  {
    MEMORY[0x23EE6C4E0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x23EE6C4E0](v3, 0x1000C803E1C8BA9);
  }

  v4 = *(this + 11);
  if (v4)
  {
    MEMORY[0x23EE6C4E0](v4, 0x1000C803E1C8BA9);
  }
}

{
  *this = &unk_284B50608;
  v2 = *(this + 10);
  if (v2)
  {
    MEMORY[0x23EE6C4E0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x23EE6C4E0](v3, 0x1000C803E1C8BA9);
  }

  v4 = *(this + 11);
  if (v4)
  {
    MEMORY[0x23EE6C4E0](v4, 0x1000C803E1C8BA9);
  }
}

{
  *this = &unk_284B50608;
  v2 = *(this + 10);
  if (v2)
  {
    MEMORY[0x23EE6C4E0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x23EE6C4E0](v3, 0x1000C803E1C8BA9);
  }

  v4 = *(this + 11);
  if (v4)
  {
    MEMORY[0x23EE6C4E0](v4, 0x1000C803E1C8BA9);
  }

  JUMPOUT(0x23EE6C500);
}

void OpenSteer::PolylinePathway::PolylinePathway(OpenSteer::PolylinePathway *this, int a2, const Vec3 *a3, float a4, int a5)
{
  *this = &unk_284B50608;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  OpenSteer::PolylinePathway::initialize(this, a2, a3, a4, a5);
}

{
  *this = &unk_284B50608;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  OpenSteer::PolylinePathway::initialize(this, a2, a3, a4, a5);
}

void OpenSteer::PolylinePathway::initialize(OpenSteer::PolylinePathway *this, int a2, const Vec3 *a3, float a4, int a5)
{
  *(this + 6) = a4;
  *(this + 28) = a5;
  *(this + 2) = a2;
  *(this + 24) = 0;
  if (a5)
  {
    *(this + 2) = a2 + 1;
  }

  operator new[]();
}

float OpenSteer::PolylinePathway::mapPointToPath(float32x2_t *this, const Vec3 *a2, Vec3 *a3, float *a4)
{
  if (this[1].i32[0] < 2)
  {
    v20 = 0;
    v8 = 0.0;
  }

  else
  {
    v20 = 0;
    v8 = 0.0;
    v9 = 3.4028e38;
    v10 = 1;
    v11 = 12;
    do
    {
      v12 = this[11];
      this[4].i32[0] = *(*&this[10] + 4 * v10);
      v13 = *&v12 + v11;
      v14 = *(*&v12 + v11);
      this[9].i32[0] = *(v13 + 8);
      this[8] = v14;
      v15 = OpenSteer::PolylinePathway::pointToSegmentDistance(this, a2, (*&this[2] + v11 - 12), (*&this[2] + v11));
      if (v15 < v9)
      {
        v8 = this[6].f32[1];
        v20 = this[7];
        v16 = this[8];
        LODWORD(a3->z) = this[9].i32[0];
        *&a3->x = v16;
        v9 = v15;
      }

      ++v10;
      v11 += 12;
    }

    while (v10 < this[1].i32[0]);
  }

  v17 = vsub_f32(v20, *&a2->y);
  v18 = vmul_f32(v17, v17);
  *a4 = sqrtf((v18.f32[0] + ((v8 - a2->x) * (v8 - a2->x))) + v18.f32[1]) - this[3].f32[0];
  return v8;
}

float OpenSteer::PolylinePathway::pointToSegmentDistance(float32x2_t *this, const Vec3 *a2, const Vec3 *a3, const Vec3 *a4)
{
  v4 = a2->z - a3->z;
  v5 = vsub_f32(*&a2->x, *&a3->x);
  this[5] = v5;
  this[6].f32[0] = v4;
  v6 = this[8];
  v7 = vaddv_f32(vmul_f32(v6, v5));
  v8 = this[9].f32[0];
  v9 = v7 + (v8 * v4);
  this[4].f32[1] = v9;
  if (v9 >= 0.0)
  {
    v13 = this[4].f32[0];
    if (v9 <= v13)
    {
      v14 = v9 * v6.f32[0];
      v15 = vmuls_lane_f32(v9, v6, 1);
      v16 = v9 * v8;
      this[6].f32[1] = v14;
      this[7].f32[0] = v15;
      y = a3->y;
      x = a3->x + v14;
      this[7].f32[1] = v16;
      v11 = y + v15;
      z = a3->z + v16;
      this[6].f32[1] = x;
      this[7].f32[0] = v11;
      this[7].f32[1] = z;
    }

    else
    {
      x = a4->x;
      v11 = a4->y;
      this[6].i32[1] = LODWORD(a4->x);
      this[7].f32[0] = v11;
      z = a4->z;
      this[7].f32[1] = z;
      this[4].f32[1] = v13;
    }
  }

  else
  {
    x = a3->x;
    v11 = a3->y;
    this[6].i32[1] = LODWORD(a3->x);
    this[7].f32[0] = v11;
    z = a3->z;
    this[7].f32[1] = z;
    this[4].i32[1] = 0;
  }

  return sqrtf((((a2->x - x) * (a2->x - x)) + ((a2->y - v11) * (a2->y - v11))) + ((a2->z - z) * (a2->z - z)));
}

float OpenSteer::PolylinePathway::mapPointToPathDistance(float32x2_t *this, const Vec3 *a2)
{
  v2 = 0.0;
  if (this[1].i32[0] >= 2)
  {
    v5 = 0.0;
    v6 = 3.4028e38;
    v7 = 1;
    v8 = 12;
    do
    {
      v9 = this[11];
      this[4].i32[0] = *(*&this[10] + 4 * v7);
      v10 = *&v9 + v8;
      v11 = *(*&v9 + v8);
      this[9].i32[0] = *(v10 + 8);
      this[8] = v11;
      v12 = OpenSteer::PolylinePathway::pointToSegmentDistance(this, a2, (*&this[2] + v8 - 12), (*&this[2] + v8));
      if (v12 < v6)
      {
        v2 = this[4].f32[1] + v5;
        v6 = v12;
      }

      v5 = this[4].f32[0] + v5;
      ++v7;
      v8 += 12;
    }

    while (v7 < this[1].i32[0]);
  }

  return v2;
}

float32x2_t OpenSteer::PolylinePathway::mapPathDistanceToPoint(OpenSteer::PolylinePathway *this, float a2)
{
  v2 = a2;
  if (*(this + 28) == 1)
  {
    v2 = fmodf(a2, *(this + 24));
  }

  else
  {
    if (a2 < 0.0)
    {
      v9 = *(this + 2);
      result = *v9;
      v10 = v9[1].i32[0];
      return result;
    }

    if (*(this + 24) <= a2)
    {
      v11 = *(this + 2) + 12 * *(this + 2);
      result = *(v11 - 12);
      v12 = *(v11 - 4);
      return result;
    }
  }

  v4 = *(this + 2);
  result = 0;
  if (v4 >= 2)
  {
    v6 = *(this + 10);
    v7 = 1;
    while (1)
    {
      v8 = *(v6 + 4 * v7);
      *(this + 8) = v8;
      if (v8 >= v2)
      {
        break;
      }

      v2 = v2 - v8;
      if (v4 == ++v7)
      {
        return result;
      }
    }

    v13 = v2 / v8;
    v14 = (*(this + 2) + 12 * v7);
    result = vmla_n_f32(*(v14 - 12), vsub_f32(*v14, *(v14 - 12)), v13);
    v15 = v14[-1].f32[1] + ((v14[1].f32[0] - v14[-1].f32[1]) * v13);
  }

  return result;
}

uint64_t p2t::Triangle::Triangle(uint64_t this, Point *a2, Point *a3, Point *a4)
{
  *(this + 8) = a2;
  *(this + 16) = a3;
  *this = 0;
  *(this + 4) = 0;
  *(this + 24) = a4;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  return this;
}

void *p2t::Triangle::MarkNeighbor(void *this, Point *a2, Point *a3, p2t::Triangle *a4)
{
  v5 = this[2];
  v4 = this[3];
  v6 = v4 == a2 && v5 == a3;
  if (v6 || (v4 == a3 ? (v7 = v5 == a2) : (v7 = 0), v7))
  {
    this[4] = a4;
  }

  else
  {
    v8 = this[1];
    v10 = v4 == a2 && v8 == a3;
    v11 = v8 == a2 && v4 == a3;
    v12 = 5;
    if (!v11 && !v10)
    {
      v14 = v5 == a2 && v8 == a3;
      v15 = v8 == a2 && v5 == a3;
      v12 = 6;
      if (!v15 && !v14)
      {
        p2t::Triangle::MarkNeighbor();
      }
    }

    this[v12] = a4;
  }

  return this;
}

void *p2t::Triangle::MarkNeighbor(void *this, p2t::Triangle *a2)
{
  v2 = this[2];
  v3 = this[3];
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = v4 == v2 || v5 == v2;
  v7 = *(a2 + 3);
  v8 = v6 || v7 == v2;
  v9 = v8;
  if (v8)
  {
    v10 = v4 == v3 || v5 == v3;
    if (v10 || v7 == v3)
    {
      v13 = v7 == v3 && v5 == v2;
      v14 = v5 == v3 && v7 == v2;
      this[4] = a2;
      v15 = 32;
      if (!v14 && !v13)
      {
        v16 = v4 == v3 && v7 == v2;
        v17 = v16;
        v18 = v7 == v3 && v4 == v2;
        v15 = 40;
        if (!v18 && !v17)
        {
          v19 = v4 == v3 && v5 == v2;
          v20 = v19;
          v21 = v5 == v3 && v4 == v2;
          v15 = 48;
          if (!v21 && !v20)
          {
            p2t::Triangle::MarkNeighbor();
          }
        }
      }

LABEL_138:
      *(a2 + v15) = this;
      return this;
    }
  }

  v22 = this[1];
  if (v4 == v22 || v5 == v22 || v7 == v22)
  {
    if (v4 == v3 || v5 == v3 || v7 == v3)
    {
      v28 = v7 == v3 && v5 == v22;
      v29 = v5 == v3 && v7 == v22;
      this[5] = a2;
      v15 = 32;
      if (!v29 && !v28)
      {
        v30 = v4 == v3 && v7 == v22;
        v31 = v30;
        v32 = v7 == v3 && v4 == v22;
        v15 = 40;
        if (!v32 && !v31)
        {
          v33 = v4 == v3 && v5 == v22;
          v34 = v33;
          v35 = v5 == v3 && v4 == v22;
          v15 = 48;
          if (!v35 && !v34)
          {
            p2t::Triangle::MarkNeighbor();
          }
        }
      }
    }

    else
    {
      if (!v9)
      {
        return this;
      }

      v37 = v7 == v2 && v5 == v22;
      v38 = v5 == v2 && v7 == v22;
      this[6] = a2;
      v15 = 32;
      if (!v38 && !v37)
      {
        v39 = v4 == v2 && v7 == v22;
        v40 = v39;
        v41 = v7 == v2 && v4 == v22;
        v15 = 40;
        if (!v41 && !v40)
        {
          v43 = v4 == v2 && v5 == v22;
          v44 = v5 == v2 && v4 == v22;
          v15 = 48;
          if (!v44 && !v43)
          {
            p2t::Triangle::MarkNeighbor();
          }
        }
      }
    }

    goto LABEL_138;
  }

  return this;
}

double p2t::Triangle::Clear(p2t::Triangle *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = (v1 + 32);
    if (*(v1 + 32) != this)
    {
      v4 = *(v1 + 40);
      v3 = (v1 + 40);
      if (v4 == this)
      {
        v2 = v3;
      }

      else
      {
        v2 = v3 + 1;
      }
    }

    *v2 = 0;
  }

  v5 = *(this + 5);
  if (v5)
  {
    v6 = (v5 + 32);
    if (*(v5 + 32) != this)
    {
      v8 = *(v5 + 40);
      v7 = (v5 + 40);
      if (v8 == this)
      {
        v6 = v7;
      }

      else
      {
        v6 = v7 + 1;
      }
    }

    *v6 = 0;
  }

  v9 = *(this + 6);
  if (v9)
  {
    v10 = (v9 + 32);
    if (*(v9 + 32) != this)
    {
      v12 = *(v9 + 40);
      v11 = (v9 + 40);
      if (v12 == this)
      {
        v10 = v11;
      }

      else
      {
        v10 = v11 + 1;
      }
    }

    *v10 = 0;
  }

  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

uint64_t p2t::Triangle::ClearNeighbor(uint64_t this, p2t::Triangle *a2)
{
  v2 = (this + 32);
  if (*(this + 32) != a2)
  {
    v3 = *(this + 40);
    this += 40;
    if (v3 == a2)
    {
      v2 = this;
    }

    else
    {
      v2 = (this + 8);
    }
  }

  *v2 = 0;
  return this;
}

void *p2t::Triangle::ClearNeighbors(void *this)
{
  this[4] = 0;
  this[5] = 0;
  this[6] = 0;
  return this;
}

uint64_t p2t::Triangle::ClearDelunayEdges(uint64_t this)
{
  *(this + 5) = 0;
  *(this + 3) = 0;
  return this;
}

Point *p2t::Triangle::OppositePoint(p2t::Triangle *this, p2t::Triangle *a2, Point *a3)
{
  v3 = *(a2 + 1);
  if (v3 == a3)
  {
    v4 = *(a2 + 3);
    goto LABEL_6;
  }

  v4 = *(a2 + 2);
  if (v4 != a3)
  {
    if (*(a2 + 3) != a3)
    {
      p2t::Triangle::OppositePoint();
    }

LABEL_6:
    v5 = *(this + 1);
    if (v5 != v4)
    {
      goto LABEL_7;
    }

    return *(this + 3);
  }

  v4 = *(a2 + 1);
  v5 = *(this + 1);
  if (v5 == v3)
  {
    return *(this + 3);
  }

LABEL_7:
  if (*(this + 2) == v4)
  {
    return v5;
  }

  if (*(this + 3) != v4)
  {
    p2t::Triangle::OppositePoint();
  }

  return *(this + 2);
}

Point *p2t::Triangle::PointCW(p2t::Triangle *this, Point *a2)
{
  v3 = *(this + 1);
  if (v3 == a2)
  {
    return *(this + 3);
  }

  result = *(this + 2);
  if (result == a2)
  {
    return v3;
  }

  if (*(this + 3) != a2)
  {
    p2t::Triangle::OppositePoint();
  }

  return result;
}

void *p2t::Triangle::Legalize(void *this, Point *a2)
{
  v2 = this[1];
  this[1] = this[3];
  this[2] = v2;
  this[3] = a2;
  return this;
}

void *p2t::Triangle::Legalize(void *this, Point *a2, Point *a3)
{
  v3 = this + 1;
  v4 = this[1];
  if (v4 == a2)
  {
    v7 = this[3];
    this += 3;
    *(this - 2) = v7;
    *(this - 1) = v4;
    *this = a3;
  }

  else
  {
    v5 = this[2];
    if (v5 == a2)
    {
      this[2] = v4;
      this[3] = v5;
      *v3 = a3;
    }

    else
    {
      v6 = this[3];
      if (v6 != a2)
      {
        p2t::Triangle::Legalize();
      }

      this[1] = v6;
      this[3] = v5;
      this += 2;
      v3[1] = a3;
    }
  }

  return this;
}

uint64_t p2t::Triangle::Index(const Point **this, const Point *a2)
{
  if (this[1] == a2)
  {
    return 0;
  }

  if (this[2] == a2)
  {
    return 1;
  }

  if (this[3] != a2)
  {
    p2t::Triangle::Index();
  }

  return 2;
}

uint64_t p2t::Triangle::EdgeIndex(p2t::Triangle *this, const Point *a2, const Point *a3)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  if (v3 == a2)
  {
    if (v4 != a3)
    {
      if (*(this + 3) != a3)
      {
        return 0xFFFFFFFFLL;
      }

      return 1;
    }

    return 2;
  }

  v5 = *(this + 3);
  if (v4 != a2)
  {
    if (v5 != a2)
    {
      return 0xFFFFFFFFLL;
    }

    if (v3 != a3)
    {
      if (v4 == a3)
      {
        return 0;
      }

      return 0xFFFFFFFFLL;
    }

    return 1;
  }

  if (v5 != a3)
  {
    if (v3 != a3)
    {
      return 0xFFFFFFFFLL;
    }

    return 2;
  }

  return 0;
}

uint64_t p2t::Triangle::MarkConstrainedEdge(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (v5 != v3)
  {
    v6 = v4 == v3;
    v8 = v5 == v2;
    v7 = v5 == v2;
    v8 = v8 && v4 == v3;
    if (!v8)
    {
      v9 = *(result + 24);
      goto LABEL_9;
    }

LABEL_24:
    *(result + 2) = 1;
    return result;
  }

  if (v4 == v2)
  {
    goto LABEL_24;
  }

  v7 = v3 == v2;
  v6 = v4 == v3;
  v9 = *(result + 24);
  if (v9 == v2)
  {
LABEL_25:
    *(result + 1) = 1;
    return result;
  }

LABEL_9:
  if (v7 && v9 == v3)
  {
    goto LABEL_25;
  }

  if (v9 != v2)
  {
    v6 = 0;
  }

  v12 = v4 == v2 && v9 == v3;
  if (v6 || v12)
  {
    *result = 1;
  }

  return result;
}

uint64_t p2t::Triangle::MarkConstrainedEdge(uint64_t this, Point *a2, Point *a3)
{
  v4 = *(this + 8);
  v3 = *(this + 16);
  if (v4 != a3)
  {
    v5 = v3 == a3;
    v7 = v4 == a2;
    v6 = v4 == a2;
    v7 = v7 && v3 == a3;
    if (!v7)
    {
      v8 = *(this + 24);
      goto LABEL_7;
    }

LABEL_29:
    *(this + 2) = 1;
    return this;
  }

  if (v3 == a2)
  {
    goto LABEL_29;
  }

  v5 = v3 == a3;
  v7 = v4 == a2;
  v6 = v4 == a2;
  if (v7 && v3 == a3)
  {
    goto LABEL_29;
  }

  v8 = *(this + 24);
  if (v8 == a2)
  {
LABEL_28:
    *(this + 1) = 1;
    return this;
  }

LABEL_7:
  if (v6 && v8 == a3)
  {
    goto LABEL_28;
  }

  if (v8 != a2)
  {
    v5 = 0;
  }

  v11 = v3 == a2 && v8 == a3;
  if (v5 || v11)
  {
    *this = 1;
  }

  return this;
}

Point *p2t::Triangle::PointCCW(p2t::Triangle *this, Point *a2)
{
  result = *(this + 1);
  v4 = *(this + 2);
  if (result == a2)
  {
    return *(this + 2);
  }

  v5 = *(this + 3);
  if (v4 == a2)
  {
    return v5;
  }

  if (v5 != a2)
  {
    p2t::Triangle::PointCCW();
  }

  return result;
}

uint64_t p2t::Triangle::NeighborCW(p2t::Triangle *this, Point *a2)
{
  if (*(this + 1) == a2)
  {
    return *(this + 5);
  }

  v2 = 32;
  if (*(this + 2) == a2)
  {
    v2 = 48;
  }

  return *(this + v2);
}

uint64_t p2t::Triangle::NeighborCCW(p2t::Triangle *this, Point *a2)
{
  if (*(this + 1) == a2)
  {
    return *(this + 6);
  }

  v2 = 40;
  if (*(this + 2) == a2)
  {
    v2 = 32;
  }

  return *(this + v2);
}

uint64_t p2t::Triangle::GetConstrainedEdgeCCW(p2t::Triangle *this, Point *a2)
{
  if (*(this + 1) == a2)
  {
    return *(this + 2);
  }

  else
  {
    return *(this + (*(this + 2) != a2));
  }
}

uint64_t p2t::Triangle::GetConstrainedEdgeCW(p2t::Triangle *this, Point *a2)
{
  if (*(this + 1) == a2)
  {
    return *(this + 1);
  }

  else
  {
    return *(this + 2 * (*(this + 2) == a2));
  }
}

uint64_t p2t::Triangle::SetConstrainedEdgeCCW(uint64_t this, Point *a2, char a3)
{
  if (*(this + 8) == a2)
  {
    *(this + 2) = a3;
  }

  else if (*(this + 16) == a2)
  {
    *this = a3;
  }

  else
  {
    *(this + 1) = a3;
  }

  return this;
}

uint64_t p2t::Triangle::SetConstrainedEdgeCW(uint64_t this, Point *a2, char a3)
{
  if (*(this + 8) == a2)
  {
    *(this + 1) = a3;
  }

  else if (*(this + 16) == a2)
  {
    *(this + 2) = a3;
  }

  else
  {
    *this = a3;
  }

  return this;
}

uint64_t p2t::Triangle::GetDelunayEdgeCCW(Point **this, Point *a2)
{
  if (this[1] == a2)
  {
    return *(this + 5);
  }

  v2 = 3;
  if (this[2] != a2)
  {
    v2 = 4;
  }

  return *(this + v2);
}

uint64_t p2t::Triangle::GetDelunayEdgeCW(Point **this, Point *a2)
{
  if (this[1] == a2)
  {
    return *(this + 4);
  }

  v2 = 3;
  if (this[2] == a2)
  {
    v2 = 5;
  }

  return *(this + v2);
}

uint64_t p2t::Triangle::SetDelunayEdgeCCW(uint64_t this, Point *a2, char a3)
{
  if (*(this + 8) == a2)
  {
    *(this + 5) = a3;
  }

  else
  {
    v3 = 3;
    if (*(this + 16) != a2)
    {
      v3 = 4;
    }

    *(this + v3) = a3;
  }

  return this;
}

uint64_t p2t::Triangle::SetDelunayEdgeCW(uint64_t this, Point *a2, char a3)
{
  if (*(this + 8) == a2)
  {
    *(this + 4) = a3;
  }

  else
  {
    v3 = 3;
    if (*(this + 16) == a2)
    {
      v3 = 5;
    }

    *(this + v3) = a3;
  }

  return this;
}

uint64_t p2t::Triangle::NeighborAcross(p2t::Triangle *this, Point *a2)
{
  if (*(this + 1) == a2)
  {
    return *(this + 4);
  }

  v2 = 48;
  if (*(this + 2) == a2)
  {
    v2 = 40;
  }

  return *(this + v2);
}

uint64_t p2t::Triangle::DebugPrint(double **this)
{
  v2 = MEMORY[0x277D82678];
  v3 = MEMORY[0x23EE6C470](MEMORY[0x277D82678], *this[1]);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ",", 1);
  v5 = MEMORY[0x23EE6C470](v4, this[1][1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " ", 1);
  v6 = MEMORY[0x23EE6C470](v2, *this[2]);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ",", 1);
  v8 = MEMORY[0x23EE6C470](v7, this[2][1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " ", 1);
  v9 = MEMORY[0x23EE6C470](v2, *this[3]);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ",", 1);
  v11 = MEMORY[0x23EE6C470](v10, this[3][1]);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v14);
  std::ostream::put();
  return std::ostream::flush();
}

void *OpenSteer::PlugIn::PlugIn(void *this)
{
  *this = &unk_284B50668;
  v1 = OpenSteer::PlugIn::itemsInRegistry++;
  OpenSteer::PlugIn::registry[v1] = this;
  return this;
}

uint64_t OpenSteer::PlugIn::addToRegistry(uint64_t this)
{
  v1 = OpenSteer::PlugIn::itemsInRegistry++;
  OpenSteer::PlugIn::registry[v1] = this;
  return this;
}

uint64_t OpenSteer::PlugIn::next(OpenSteer::PlugIn *this)
{
  if (OpenSteer::PlugIn::itemsInRegistry < 1)
  {
    return 0;
  }

  v1 = 0;
  while (OpenSteer::PlugIn::registry[v1] != this)
  {
    if (OpenSteer::PlugIn::itemsInRegistry == ++v1)
    {
      return 0;
    }
  }

  if (OpenSteer::PlugIn::itemsInRegistry - 1 == v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = (v1 + 1);
  }

  return OpenSteer::PlugIn::registry[v3];
}

uint64_t OpenSteer::PlugIn::findByName(OpenSteer::PlugIn *this, const char *a2)
{
  v2 = 0;
  if (this && OpenSteer::PlugIn::itemsInRegistry >= 1)
  {
    v4 = 0;
    while (1)
    {
      v2 = OpenSteer::PlugIn::registry[v4];
      v5 = (*(*v2 + 40))(v2, a2);
      if (v5)
      {
        if (!strcmp(this, v5))
        {
          break;
        }
      }

      if (++v4 >= OpenSteer::PlugIn::itemsInRegistry)
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t (*OpenSteer::PlugIn::applyToAll(uint64_t (*this)(uint64_t, void (*)(OpenSteer::PlugIn *)), void (*a2)(OpenSteer::PlugIn *)))(uint64_t, void (*)(OpenSteer::PlugIn *))
{
  if (OpenSteer::PlugIn::itemsInRegistry >= 1)
  {
    v2 = this;
    v3 = 0;
    do
    {
      this = v2(OpenSteer::PlugIn::registry[v3++], a2);
    }

    while (v3 < OpenSteer::PlugIn::itemsInRegistry);
  }

  return this;
}

void OpenSteer::PlugIn::sortBySelectionOrder(OpenSteer::PlugIn *this)
{
  v1 = OpenSteer::PlugIn::itemsInRegistry;
  if (OpenSteer::PlugIn::itemsInRegistry >= 2)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v4 = v2 + 1;
      if (v2 + 1 < v1)
      {
        v5 = v3;
        do
        {
          v6 = (*(*OpenSteer::PlugIn::registry[v2] + 48))(OpenSteer::PlugIn::registry[v2]);
          if (v6 > (*(*OpenSteer::PlugIn::registry[v5] + 48))(OpenSteer::PlugIn::registry[v5]))
          {
            v7 = OpenSteer::PlugIn::registry[v2];
            OpenSteer::PlugIn::registry[v2] = OpenSteer::PlugIn::registry[v5];
            OpenSteer::PlugIn::registry[v5] = v7;
          }

          ++v5;
          v1 = OpenSteer::PlugIn::itemsInRegistry;
        }

        while (OpenSteer::PlugIn::itemsInRegistry > v5);
      }

      ++v3;
      ++v2;
    }

    while (v4 < v1 - 1);
  }
}

uint64_t OpenSteer::PlugIn::findDefault(OpenSteer::PlugIn *this)
{
  if (!OpenSteer::PlugIn::itemsInRegistry)
  {
    return 0;
  }

  if (OpenSteer::PlugIn::itemsInRegistry < 1)
  {
    i = OpenSteer::PlugIn::registry;
  }

  else
  {
    v1 = 0;
    for (i = OpenSteer::PlugIn::registry; !(*(**i + 56))(); ++i)
    {
      if (++v1 >= OpenSteer::PlugIn::itemsInRegistry)
      {
        return OpenSteer::PlugIn::registry[0];
      }
    }
  }

  return *i;
}

uint64_t OpenSteer::PlugIn::reset(uint64_t (***this)(OpenSteer::PlugIn *))
{
  (*this)[3](this);
  v2 = **this;

  return v2(this);
}