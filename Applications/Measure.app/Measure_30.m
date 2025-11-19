void sub_10023609C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

_DWORD *sub_100236364(unsigned int a1, int a2, int a3, uint64_t a4)
{
  if (!a4)
  {
    v5 = 0;
    v6 = 0;
    sub_1002A8980(-27, &v5, "cvCreateSet", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/datastructs.cpp", 2486);
  }

  if (a2 < 112 || a3 < 16 || (a3 & 7) != 0)
  {
    v5 = 0;
    v6 = 0;
    sub_1002A8980(-201, &v5, "cvCreateSet", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/datastructs.cpp", 2490);
  }

  result = sub_100231FEC(a1, a2, a3, a4);
  *(result + 1) = 17048;
  return result;
}

uint64_t sub_100236464(uint64_t a1, void *__src, void *a3)
{
  if (!a1)
  {
    v15[0] = 0;
    v15[1] = 0;
    sub_1002A8980(-27, v15, "cvSetAdd", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/datastructs.cpp", 2507);
  }

  v6 = *(a1 + 96);
  if (!v6)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 44);
    sub_100232F60(a1, 0);
    v9 = *(a1 + 48);
    v6 = *(a1 + 56);
    *(a1 + 96) = v6;
    if (v6 + v8 <= v9)
    {
      v11 = v6;
      do
      {
        v10 = (v11 + v8);
        *v11 = v7 | 0x80000000;
        v11[1] = v11 + v8;
        ++v7;
        v12 = v11 + v8 + v8;
        v11 = (v11 + v8);
      }

      while (v12 <= v9);
    }

    else
    {
      v10 = v6;
    }

    *(v10 - v8 + 8) = 0;
    *(**(a1 + 88) + 20) += v7 - *(a1 + 40);
    *(a1 + 40) = v7;
    *(a1 + 56) = v9;
  }

  *(a1 + 96) = v6[1];
  v13 = *v6 & 0x3FFFFFF;
  if (__src)
  {
    memcpy(v6, __src, *(a1 + 44));
  }

  *v6 = v13;
  ++*(a1 + 104);
  if (a3)
  {
    *a3 = v6;
  }

  return v13;
}

int *sub_1002365BC(uint64_t a1)
{
  result = sub_100233B80(a1);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return result;
}

_DWORD *sub_1002365E8(unsigned int a1, int a2, int a3, int a4, uint64_t a5)
{
  if (a3 < 16 || a2 < 120 || a4 <= 39)
  {
    v9[0] = 0;
    v9[1] = 0;
    sub_1002A8980(-201, v9, "cvCreateGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/datastructs.cpp", 2586);
  }

  v7 = sub_100236364(a1, a2, a3, a5);
  *(v7 + 14) = sub_100236364(0, 112, a4, a5);
  return v7;
}

uint64_t sub_1002366C4(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    v14[0] = 0;
    v14[1] = 0;
    sub_1002A8980(-27, v14, "cvGraphAddVtx", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/datastructs.cpp", 2620);
  }

  v6 = *(a1 + 96);
  if (!v6)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 44);
    sub_100232F60(a1, 0);
    v9 = *(a1 + 48);
    v6 = *(a1 + 56);
    *(a1 + 96) = v6;
    if (v6 + v8 <= v9)
    {
      v11 = v6;
      do
      {
        v10 = (v11 + v8);
        *v11 = v7 | 0x80000000;
        *(v11 + 1) = v11 + v8;
        ++v7;
        v12 = v11 + v8 + v8;
        v11 = (v11 + v8);
      }

      while (v12 <= v9);
    }

    else
    {
      v10 = v6;
    }

    *(v10 - v8 + 8) = 0;
    *(**(a1 + 88) + 20) += v7 - *(a1 + 40);
    *(a1 + 40) = v7;
    *(a1 + 56) = v9;
  }

  *(a1 + 96) = *(v6 + 1);
  *v6 &= 0x3FFFFFFu;
  ++*(a1 + 104);
  if (a2)
  {
    memcpy(v6 + 4, (a2 + 16), *(a1 + 44) - 16);
  }

  *(v6 + 1) = 0;
  result = *v6;
  if (a3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_100236880(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a3;
  v4 = a2;
  if (!a1 || !a2 || !a3)
  {
    v11[0] = 0;
    v11[1] = 0;
    sub_1002A8980(-27, v11, "cvFindGraphEdgeByPtr", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/datastructs.cpp", 2705);
  }

  if (a2 == a3)
  {
    return 0;
  }

  if ((*(a1 + 1) & 0x40) == 0)
  {
    v5 = *a2 & 0x3FFFFFF;
    v6 = *a3 & 0x3FFFFFF;
    v7 = v5 > v6;
    if (v5 <= v6)
    {
      v8 = a3;
    }

    else
    {
      v8 = a2;
    }

    if (v7)
    {
      v4 = a3;
    }

    v3 = v8;
  }

  for (result = *(v4 + 1); result; result = *(result + 8 * (v4 == v10) + 8))
  {
    v10 = *(result + 32);
    if (v10 == v3)
    {
      break;
    }
  }

  return result;
}

uint64_t sub_10023697C(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t *a5)
{
  if (!a1)
  {
    v31 = 0;
    v32 = 0;
    qmemcpy(sub_1002A80E0(&v31, 21), "graph pointer is NULL", 21);
    sub_1002A8980(-27, &v31, "cvGraphAddEdgeByPtr", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/datastructs.cpp", 2762);
  }

  v10 = a3;
  v11 = a2;
  if ((*(a1 + 1) & 0x40) == 0)
  {
    v12 = *a2 & 0x3FFFFFF;
    v13 = *a3 & 0x3FFFFFF;
    if (v12 <= v13)
    {
      v10 = a3;
    }

    else
    {
      v10 = a2;
    }

    if (v12 <= v13)
    {
      v11 = a2;
    }

    else
    {
      v11 = a3;
    }
  }

  v14 = sub_100236880(a1, v11, v10);
  if (v14)
  {
    v15 = 0;
    if (a5)
    {
LABEL_12:
      *a5 = v14;
    }
  }

  else
  {
    if (a2 == a3)
    {
      if (v11)
      {
        v17 = -5;
      }

      else
      {
        v17 = -27;
      }

      v31 = 0;
      v32 = 0;
      qmemcpy(sub_1002A80E0(&v31, 41), "vertex pointers coinside (or set to NULL)", 41);
      sub_1002A8980(v17, &v31, "cvGraphAddEdgeByPtr", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/datastructs.cpp", 2782);
    }

    v18 = *(a1 + 112);
    v14 = *(v18 + 96);
    v19 = v18;
    if (!v14)
    {
      v20 = *(v18 + 40);
      v21 = *(v18 + 44);
      sub_100232F60(*(a1 + 112), 0);
      v22 = *(v18 + 48);
      v14 = *(v18 + 56);
      *(v18 + 96) = v14;
      if (v14 + v21 <= v22)
      {
        v24 = v14;
        do
        {
          v23 = v24 + v21;
          *v24 = v20 | 0x80000000;
          *(v24 + 8) = v24 + v21;
          ++v20;
          v25 = v24 + v21 + v21;
          v24 += v21;
        }

        while (v25 <= v22);
      }

      else
      {
        v23 = v14;
      }

      *(v23 - v21 + 8) = 0;
      *(**(v18 + 88) + 20) += v20 - *(v18 + 40);
      *(v18 + 40) = v20;
      *(v18 + 56) = v22;
      v19 = *(a1 + 112);
    }

    *(v18 + 96) = *(v14 + 8);
    *v14 &= 0x3FFFFFFu;
    ++*(v18 + 104);
    *(v14 + 24) = v11;
    *(v14 + 32) = v10;
    *(v14 + 8) = *(v11 + 1);
    *(v14 + 16) = *(v10 + 1);
    *(v10 + 1) = v14;
    *(v11 + 1) = v14;
    v26 = *(v19 + 44);
    v27 = (v26 - 40);
    if (a4)
    {
      if (v27 >= 1)
      {
        v28 = v14;
        memcpy((v14 + 40), (a4 + 40), v27);
        v14 = v28;
      }

      v29 = *(a4 + 4);
    }

    else
    {
      v29 = 1.0;
      if (v27 >= 1)
      {
        v30 = v14;
        bzero((v14 + 40), (v26 - 40));
        v14 = v30;
      }
    }

    *(v14 + 4) = v29;
    v15 = 1;
    if (a5)
    {
      goto LABEL_12;
    }
  }

  return v15;
}

_DWORD *sub_100236C48(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1 || (*a1 & 0xFFFF3000) != 0x42981000)
  {
    v39 = 0;
    v40 = 0;
    qmemcpy(sub_1002A80E0(&v39, 21), "Invalid graph pointer", 21);
    sub_1002A8980(-5, &v39, "cvCloneGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/datastructs.cpp", 3262);
  }

  if (!a2)
  {
    v2 = *(a1 + 72);
    if (!v2)
    {
      v39 = 0;
      v40 = 0;
      v4 = sub_1002A80E0(&v39, 20);
      *(v4 + 16) = 1919251566;
      *v4 = *"NULL storage pointer";
      sub_1002A8980(-27, &v39, "cvCloneGraph", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/datastructs.cpp", 3268);
    }
  }

  v5 = *(*(a1 + 112) + 44);
  LODWORD(v6) = *(a1 + 44);
  v7 = sub_1001D90AC(4 * *(a1 + 40));
  v8 = sub_1001D90AC(8 * *(a1 + 40));
  v38 = v5;
  v9 = sub_1002365E8(*a1, *(a1 + 4), v6, v5, v2);
  memcpy(v9 + 3600, (a1 + 14400), *(a1 + 4) - 120);
  v43 = 0u;
  v44 = 0u;
  v41 = 64;
  v42 = a1;
  v10 = *(a1 + 88);
  if (v10)
  {
    v11 = *v10;
    v12 = v10[3];
    *(&v43 + 1) = v12;
    v13 = *(a1 + 44);
    v14 = *(v11 + 24) + (*(v11 + 20) - 1) * v13;
    v45 = *(v10 + 4);
    v15 = *(v10 + 5);
    *&v43 = v10;
    v16 = &v12[v15 * v13];
    *&v44 = v12;
    *(&v44 + 1) = v16;
    v6 = v6;
    v46 = v14;
    if (*(a1 + 40) < 1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    v12 = 0;
    v45 = 0;
    v43 = 0uLL;
    v44 = 0uLL;
    v6 = v6;
    v46 = 0;
    if (*(a1 + 40) < 1)
    {
      goto LABEL_17;
    }
  }

  v17 = 0;
  v18 = 0;
  do
  {
    if ((*v12 & 0x80000000) == 0)
    {
      v39 = 0;
      sub_1002366C4(v9, v12, &v39);
      v19 = *v12;
      v20 = v39;
      *v39 = *v12;
      v7[v18] = v19;
      *v12 = v18;
      v8[v18++] = v20;
    }

    v12 += v6;
    *(&v43 + 1) = v12;
    if (v12 >= v16)
    {
      v10 = v10[1];
      *&v43 = v10;
      v12 = v10[3];
      v21 = *(v10 + 5);
      v22 = *(a1 + 44);
      *(&v43 + 1) = v12;
      *&v44 = v12;
      v16 = &v12[v22 * v21];
      *(&v44 + 1) = v16;
    }

    ++v17;
  }

  while (v17 < *(a1 + 40));
LABEL_17:
  sub_100232554(*(a1 + 112), &v41, 0);
  v23 = *(a1 + 112);
  if (*(v23 + 40) >= 1)
  {
    v24 = 0;
    v25 = *(&v43 + 1);
    do
    {
      if ((*v25 & 0x80000000) == 0)
      {
        v39 = 0;
        sub_10023697C(v9, v8[**(v25 + 24)], v8[**(v25 + 32)], v25, &v39);
        *v39 = *v25;
        v25 = *(&v43 + 1);
      }

      v25 += v38;
      *(&v43 + 1) = v25;
      if (v25 >= *(&v44 + 1))
      {
        *&v43 = *(v43 + 8);
        v25 = *(v43 + 24);
        v26 = *(v43 + 20);
        v27 = *(v42 + 44);
        *(&v43 + 1) = v25;
        *&v44 = v25;
        *(&v44 + 1) = v25 + v27 * v26;
      }

      ++v24;
      v23 = *(a1 + 112);
    }

    while (v24 < *(v23 + 40));
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 64;
  v42 = a1;
  v28 = *(a1 + 88);
  if (v28)
  {
    v29 = *v28;
    v30 = v28[3];
    *(&v43 + 1) = v30;
    v31 = *(a1 + 44);
    v32 = *(v29 + 24) + (*(v29 + 20) - 1) * v31;
    v45 = *(v28 + 4);
    LODWORD(v29) = *(v28 + 5);
    *&v43 = v28;
    v33 = &v30[v29 * v31];
    *&v44 = v30;
    *(&v44 + 1) = v33;
    v46 = v32;
    v34 = *(v23 + 40);
    if (v34 < 1)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v33 = 0;
    v30 = 0;
    v45 = 0;
    v43 = 0uLL;
    v44 = 0uLL;
    v46 = 0;
    v34 = *(v23 + 40);
    if (v34 < 1)
    {
      goto LABEL_35;
    }
  }

  v35 = 0;
  do
  {
    if ((*v30 & 0x80000000) == 0)
    {
      v36 = v7[v35++];
      *v30 = v36;
    }

    v30 += v6;
    if (v30 >= v33)
    {
      v28 = v28[1];
      *&v43 = v28;
      v30 = v28[3];
      v33 = &v30[*(a1 + 44) * *(v28 + 5)];
      *&v44 = v30;
      *(&v44 + 1) = v33;
    }

    --v34;
  }

  while (v34);
  *(&v43 + 1) = v30;
LABEL_35:
  j__free(v7);
  j__free(v8);
  if (variable initialization expression of PointTrail.isStarted() >= 0)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void sub_1002370B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_1002370E0(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3)
  {
    v12[0] = 0;
    v12[1] = 0;
    v5 = sub_1002A80E0(v12, 20);
    *(v5 + 16) = 1919251566;
    *v5 = *"NULL storage pointer";
    sub_1002A8980(-27, v12, "cvTreeToNodeSeq", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/datastructs.cpp", 3346);
  }

  v4 = sub_100231FEC(0, a2, 8uLL, a3);
  if (a1)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + 32);
      if (!v7 || v6 == 0x7FFFFFFE)
      {
        break;
      }

      ++v6;
LABEL_6:
      v12[0] = a1;
      sub_100233314(v4, v12);
      a1 = v7;
    }

    v9 = a1;
    do
    {
      v7 = *(v9 + 16);
      if (v7)
      {
        goto LABEL_6;
      }

      v9 = *(v9 + 24);
      v10 = __OFSUB__(v6--, 1);
    }

    while (v6 < 0 == v10);
    v12[0] = a1;
    sub_100233314(v4, v12);
  }

  return v4;
}

uint64_t sub_100237230(uint64_t result, uint64_t a2, int a3)
{
  if (!result || !a2)
  {
    v3 = 0;
    v4 = 0;
    sub_1002A8980(-27, &v3, "cvInitTreeNodeIterator", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/datastructs.cpp", 3443);
  }

  if (a3 < 0)
  {
    v3 = 0;
    v4 = 0;
    sub_1002A8980(-211, &v3, "cvInitTreeNodeIterator", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/datastructs.cpp", 3446);
  }

  *result = a2;
  *(result + 8) = 0;
  *(result + 12) = a3;
  return result;
}

uint64_t sub_100237308(uint64_t *a1)
{
  if (!a1)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 21), "NULL iterator pointer", 21);
    sub_1002A8980(-27, v9, "cvNextTreeNode", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/datastructs.cpp", 3462);
  }

  result = *a1;
  v3 = *(a1 + 2);
  if (*a1)
  {
    v4 = *(result + 32);
    if (v4 && (v5 = v3 + 1, v3 + 1 < *(a1 + 3)))
    {
LABEL_11:
      *a1 = v4;
      *(a1 + 2) = v5;
    }

    else
    {
      v5 = (v3 & (v3 >> 31)) - 1;
      v6 = *a1;
      while (!*(v6 + 16))
      {
        v6 = *(v6 + 24);
        v7 = __OFSUB__(v3--, 1);
        if (v3 < 0 != v7)
        {
          v4 = 0;
          goto LABEL_11;
        }
      }

      if (*(a1 + 3))
      {
        v8 = *(v6 + 16);
      }

      else
      {
        v8 = 0;
      }

      *a1 = v8;
      *(a1 + 2) = v3;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 2) = v3;
  }

  return result;
}

uint64_t sub_100237434(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || !a2)
  {
    v5[0] = 0;
    v5[1] = 0;
    sub_1002A8980(-27, v5, "cvInsertNodeIntoTree", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/datastructs.cpp", 3392);
  }

  v3 = *(a2 + 32);
  if (a2 == a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  *(result + 16) = v3;
  *(result + 24) = v4;
  if (v3)
  {
    *(v3 + 8) = result;
  }

  *(a2 + 32) = result;
  return result;
}

void sub_1002374D8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      sub_10000918C();
    }

    v8 = v3 - v5;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * a2;
    bzero(v11, 4 * a2);
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

void sub_10023762C(unint64_t a1, uint64_t a2, float32x4_t *a3, unint64_t a4, unint64_t a5, unsigned int a6, int a7, int a8, double a9, float a10)
{
  v14 = a7;
  if (a7 >= 0x89)
  {
    operator new[]();
  }

  if (a6 <= 30)
  {
    v15 = 30;
  }

  else
  {
    v15 = a6;
  }

  v337 = v15;
  v334 = a5 >> 2;
  v335 = a2 >> 2;
  v339 = (a7 - 1);
  if (a7 < 1)
  {
    goto LABEL_32;
  }

  if (!a4)
  {
    if (a6 <= 0)
    {
      bzero(v350, 8 * a7);
      v63 = a7;
      v64 = 0;
      if (a7 > 1)
      {
        goto LABEL_33;
      }

      goto LABEL_91;
    }

    v41 = 0;
    v42 = a1;
    v43 = (a1 + 16);
    v44 = 4 * v335;
    while (1)
    {
      if (a6 >= 8)
      {
        v46 = 0.0;
        v47 = a6 & 0x7FFFFFF8;
        v48 = v43;
        do
        {
          v49 = *v48[-2].f32;
          v50 = vcvtq_f64_f32(*v49.f32);
          v51 = vcvt_hight_f64_f32(v49);
          v52 = vcvtq_f64_f32(*v48);
          v53 = vcvt_hight_f64_f32(*v48->f32);
          v54 = vmulq_f64(v51, v51);
          v55 = vmulq_f64(v50, v50);
          v56 = vmulq_f64(v53, v53);
          v57 = vmulq_f64(v52, v52);
          v46 = v46 + v55.f64[0] + v55.f64[1] + v54.f64[0] + v54.f64[1] + v57.f64[0] + v57.f64[1] + v56.f64[0] + v56.f64[1];
          v48 += 4;
          v47 -= 8;
        }

        while (v47);
        v45 = a6 & 0x7FFFFFF8;
        if (v45 == a6)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v45 = 0;
        v46 = 0.0;
      }

      v58 = (v42 + 4 * v45);
      v59 = a6 - v45;
      do
      {
        v60 = *v58++;
        v46 = v46 + v60 * v60;
        --v59;
      }

      while (v59);
LABEL_21:
      *&v350[v41++] = v46;
      v43 = (v43 + v44);
      v42 += v44;
      if (v41 == a7)
      {
        goto LABEL_32;
      }
    }
  }

  v16 = a5 & 0xFFFFFFFFFFFFFFFCLL;
  v346 = 4 * a7;
  v17 = a7;
  v347 = a5 & 0xFFFFFFFFFFFFFFFCLL;
  if (a6 >= 1)
  {
    v18 = 0;
    v345 = a6 & 0x7FFFFFF8;
    v19 = a1;
    v20 = (a1 + 16);
    v21 = 4 * v335;
    while (1)
    {
      if (a6 >= 8)
      {
        v24 = 0.0;
        v27 = v345;
        v28 = v20;
        v26 = v346;
        do
        {
          v29 = *v28[-2].f32;
          v30 = vcvtq_f64_f32(*v29.f32);
          v31 = vcvt_hight_f64_f32(v29);
          v32 = vcvtq_f64_f32(*v28);
          v33 = vcvt_hight_f64_f32(*v28->f32);
          v34 = vmulq_f64(v31, v31);
          v35 = vmulq_f64(v30, v30);
          v36 = vmulq_f64(v33, v33);
          v37 = vmulq_f64(v32, v32);
          v24 = v24 + v35.f64[0] + v35.f64[1] + v34.f64[0] + v34.f64[1] + v37.f64[0] + v37.f64[1] + v36.f64[0] + v36.f64[1];
          v28 += 4;
          v27 -= 8;
        }

        while (v27);
        v23 = v345;
        v25 = a4;
        if (v345 == a6)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v23 = 0;
        v24 = 0.0;
        v25 = a4;
        v26 = v346;
      }

      v38 = (v19 + 4 * v23);
      v39 = a6 - v23;
      do
      {
        v40 = *v38++;
        v24 = v24 + v40 * v40;
        --v39;
      }

      while (v39);
LABEL_10:
      *&v350[v18] = v24;
      v22 = v25;
      bzero((v25 + v16 * v18), v26);
      v16 = v347;
      *(v22 + 4 * (v334 + 1) * v18++) = 1065353216;
      v20 = (v20 + v21);
      v19 += v21;
      if (v18 == a7)
      {
        goto LABEL_32;
      }
    }
  }

  bzero(v350, 8 * a7);
  v61 = a4;
  v62 = a4;
  do
  {
    bzero(v62, v346);
    *v61 = 1065353216;
    v61 = (v61 + v347 + 4);
    v62 += v347;
    --v17;
  }

  while (v17);
LABEL_32:
  v63 = a7;
  v64 = a4;
  if (a7 > 1)
  {
LABEL_33:
    v65 = 0;
    v348 = a5 & 0xFFFFFFFFFFFFFFFCLL;
    v66 = a6 & 0x7FFFFFF8;
    v67 = 4 * v335;
    v64 = a4;
    v68 = 4 * v334;
    do
    {
      v338 = v65;
      v69 = 0;
      v70 = 0;
      v71 = v64;
      v73 = (a4 + 4 * v334);
      v72 = a1 + 4 * v335;
      v74 = a1;
      v75 = a1 + 16 + 4 * v335;
      v76 = (a1 + 16);
      v77 = 1;
      do
      {
        v78 = 0;
        v342 = v69 + 1;
        v343 = v72;
        v344 = v73;
        v64 = a4;
        v80 = a1 + (a2 & 0xFFFFFFFFFFFFFFFCLL) * v69 < a1 + 4 * a6 + v335 * (4 * a7 - 4) && a1 + (a2 & 0xFFFFFFFFFFFFFFFCLL) < a1 + 4 * a6 || a2 < 0;
        v82 = v80 || a6 < 8;
        v83 = v75;
        v84 = v77;
        do
        {
          if (a6 < 1)
          {
            v86 = 0.0;
            goto LABEL_61;
          }

          if (a6 < 8)
          {
            v85 = 0;
            v86 = 0.0;
LABEL_59:
            v97 = (v74 + 4 * v85);
            v98 = (v72 + 4 * v85);
            v99 = a6 - v85;
            do
            {
              v100 = *v97++;
              v101 = v100;
              v102 = *v98++;
              v86 = v86 + v101 * v102;
              --v99;
            }

            while (v99);
            goto LABEL_61;
          }

          v86 = 0.0;
          v87 = v83;
          v88 = v76;
          v89 = a6 & 0x7FFFFFF8;
          do
          {
            v90 = v88[-1];
            v91 = vcvtq_f64_f32(*v90.f32);
            v92 = v87[-1];
            v93 = vmulq_f64(vcvt_hight_f64_f32(v90), vcvt_hight_f64_f32(v92));
            v94 = vmulq_f64(v91, vcvtq_f64_f32(*v92.f32));
            v95 = vmulq_f64(vcvt_hight_f64_f32(*v88), vcvt_hight_f64_f32(*v87));
            v96 = vmulq_f64(vcvtq_f64_f32(*v88->f32), vcvtq_f64_f32(*v87->f32));
            v86 = v86 + v94.f64[0] + v94.f64[1] + v93.f64[0] + v93.f64[1] + v96.f64[0] + v96.f64[1] + v95.f64[0] + v95.f64[1];
            v88 += 2;
            v87 += 2;
            v89 -= 8;
          }

          while (v89);
          v85 = a6 & 0x7FFFFFF8;
          if (v66 != a6)
          {
            goto LABEL_59;
          }

LABEL_61:
          v103 = *&v350[v69];
          v104 = *&v350[v84];
          if (fabs(v86) > sqrt(v103 * v104) * a10)
          {
            v105 = v86 + v86;
            v106 = v103 - v104;
            v107 = fabs(v105);
            v108 = vabdd_f64(v103, v104);
            if (v107 <= v108)
            {
              v109 = 0.0;
              if (v106 != 0.0)
              {
                v109 = v108 * sqrt(v107 / v108 * (v107 / v108) + 1.0);
              }
            }

            else
            {
              v109 = v107 * sqrt(v108 / v107 * (v108 / v107) + 1.0);
            }

            v80 = v106 < 0.0;
            v110 = sqrt((v109 - v106) * 0.5 / v109);
            v111 = v105 / (v109 * v110 + v109 * v110);
            v112 = sqrt((v106 + v109) / (v109 + v109));
            *&v112 = v112;
            *v113.i64 = v109 * *&v112 + v109 * *&v112;
            v114 = v105 / *v113.i64;
            if (v80)
            {
              v114 = v110;
              *&v112 = v111;
            }

            if (a6 <= 0)
            {
              v117 = 0.0;
              v116 = 0.0;
            }

            else
            {
              v113.f32[0] = -v114;
              if (v82)
              {
                v115 = 0;
                v116 = 0.0;
                v117 = 0.0;
                goto LABEL_75;
              }

              v118 = 0;
              v119 = vdupq_lane_s32(*&v112, 0);
              v120 = vdupq_lane_s32(*v113.f32, 0);
              v116 = 0.0;
              v117 = 0.0;
              do
              {
                v121 = (v74 + v118);
                v122 = *(v74 + v118);
                v123 = *(v74 + v118 + 16);
                v124 = (v72 + v118);
                v125 = *(v72 + v118);
                v126 = *(v72 + v118 + 16);
                v127 = vmlaq_f32(vmulq_n_f32(v125, v114), v122, v119);
                v128 = vmlaq_f32(vmulq_n_f32(v126, v114), v123, v119);
                v129 = vmlaq_f32(vmulq_n_f32(v125, *&v112), v122, v120);
                v130 = vmlaq_f32(vmulq_n_f32(v126, *&v112), v123, v120);
                *v121 = v127;
                v121[1] = v128;
                *v124 = v129;
                v124[1] = v130;
                v131 = vcvtq_f64_f32(*v127.f32);
                v132 = vcvt_hight_f64_f32(v127);
                v133 = vcvtq_f64_f32(*v128.f32);
                v134 = vcvt_hight_f64_f32(v128);
                v135 = vmulq_f64(v132, v132);
                v136 = vmulq_f64(v131, v131);
                v137 = vmulq_f64(v134, v134);
                v138 = vmulq_f64(v133, v133);
                v139 = vcvtq_f64_f32(*v129.f32);
                v140 = vcvt_hight_f64_f32(v129);
                v141 = vcvtq_f64_f32(*v130.f32);
                v142 = vcvt_hight_f64_f32(v130);
                v143 = vmulq_f64(v140, v140);
                v144 = vmulq_f64(v139, v139);
                v145 = vmulq_f64(v142, v142);
                v146 = vmulq_f64(v141, v141);
                v116 = v116 + v136.f64[0] + v136.f64[1] + v135.f64[0] + v135.f64[1] + v138.f64[0] + v138.f64[1] + v137.f64[0] + v137.f64[1];
                v117 = v117 + v144.f64[0] + v144.f64[1] + v143.f64[0] + v143.f64[1] + v146.f64[0] + v146.f64[1] + v145.f64[0] + v145.f64[1];
                v118 += 32;
              }

              while (32 * ((a6 >> 3) & 0xFFFFFFF) != v118);
              v115 = a6 & 0x7FFFFFF8;
              if (v66 != a6)
              {
                do
                {
LABEL_75:
                  v147 = *(v74 + 4 * v115);
                  v148 = *(v72 + 4 * v115);
                  v149 = (v114 * v148) + (*&v112 * v147);
                  v150 = (*&v112 * v148) + (v113.f32[0] * v147);
                  *(v74 + 4 * v115) = v149;
                  *(v72 + 4 * v115) = v150;
                  v116 = v116 + v149 * v149;
                  v117 = v117 + v150 * v150;
                  ++v115;
                }

                while (a6 != v115);
              }
            }

            *&v350[v69] = v116;
            *&v350[v84] = v117;
            if (v64)
            {
              if (a7 < 4)
              {
                LODWORD(v151) = 0;
                goto LABEL_82;
              }

              v151 = 0;
              v152 = v71;
              v153 = v73;
              do
              {
                v113 = vsubq_f32(vmulq_n_f32(*v153, *&v112), vmulq_n_f32(*v152, v114));
                *v152 = vaddq_f32(vmulq_n_f32(*v152, *&v112), vmulq_n_f32(*v153, v114));
                ++v152;
                *v153++ = v113;
                v151 += 4;
              }

              while (v151 <= (a7 - 4));
              if (v151 < a7)
              {
LABEL_82:
                v113.f32[0] = -v114;
                v154 = v151;
                v155 = v14 - v151;
                if (v155 <= 3)
                {
                  goto LABEL_240;
                }

                v156 = 4 * v154;
                v64 = a4;
                if (a4 + v348 * v69 + 4 * v154 < a4 + (a5 & 0xFFFFFFFFFFFFFFFCLL) + 4 * v14 + v348 * v69 + v348 * v78)
                {
                  v64 = a4;
                  if (a4 + (a5 & 0xFFFFFFFFFFFFFFFCLL) + v348 * v69 + v348 * v78 + v156 < a4 + 4 * v14 + v348 * v69)
                  {
                    goto LABEL_240;
                  }
                }

                v154 += v155 & 0xFFFFFFFFFFFFFFFCLL;
                v157 = vdupq_lane_s32(*&v112, 0);
                v158 = vdupq_lane_s32(*v113.f32, 0);
                v159 = v155 & 0xFFFFFFFFFFFFFFFCLL;
                do
                {
                  v160 = *(v71 + v156);
                  v161 = *(v73 + v156);
                  *(v71 + v156) = vmlaq_f32(vmulq_n_f32(v161, v114), v160, v157);
                  *(v73 + v156) = vmlaq_f32(vmulq_n_f32(v161, *&v112), v160, v158);
                  v156 += 16;
                  v159 -= 4;
                }

                while (v159);
                if (v155 != (v155 & 0xFFFFFFFFFFFFFFFCLL))
                {
LABEL_240:
                  do
                  {
                    v162 = v71->f32[v154];
                    v163 = v73->f32[v154];
                    v71->f32[v154] = (v114 * v163) + (*&v112 * v162);
                    v73->f32[v154++] = (*&v112 * v163) + (v113.f32[0] * v162);
                  }

                  while (v14 != v154);
                }
              }
            }

            v70 = 1;
          }

          ++v84;
          ++v78;
          v83 = (v83 + v67);
          v72 += v67;
          v73 = (v73 + v68);
        }

        while (v84 != v63);
        ++v77;
        v76 = (v76 + v67);
        v75 += v67;
        v74 += v67;
        v72 = v343 + v67;
        v73 = (v344 + v68);
        v71 = (v71 + v68);
        ++v69;
      }

      while (v342 != v339);
      v65 = v338 + 1;
    }

    while ((v70 & (v338 + 1 < v337)) != 0);
  }

LABEL_91:
  if (a7 < 1)
  {
    goto LABEL_148;
  }

  if (a6 > 0)
  {
    v164 = 0;
    v165 = a1;
    v166 = (a1 + 16);
    v167 = 4 * v335;
    while (1)
    {
      if (a6 >= 8)
      {
        v169 = 0.0;
        v170 = a6 & 0x7FFFFFF8;
        v171 = v166;
        do
        {
          v172 = *v171[-2].f32;
          v173 = vcvtq_f64_f32(*v172.f32);
          v174 = vcvt_hight_f64_f32(v172);
          v175 = vcvtq_f64_f32(*v171);
          v176 = vcvt_hight_f64_f32(*v171->f32);
          v177 = vmulq_f64(v174, v174);
          v178 = vmulq_f64(v173, v173);
          v179 = vmulq_f64(v176, v176);
          v180 = vmulq_f64(v175, v175);
          v169 = v169 + v178.f64[0] + v178.f64[1] + v177.f64[0] + v177.f64[1] + v180.f64[0] + v180.f64[1] + v179.f64[0] + v179.f64[1];
          v171 += 4;
          v170 -= 8;
        }

        while (v170);
        v168 = a6 & 0x7FFFFFF8;
        if (v168 == a6)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v168 = 0;
        v169 = 0.0;
      }

      v181 = (v165 + 4 * v168);
      v182 = a6 - v168;
      do
      {
        v183 = *v181++;
        v169 = v169 + v183 * v183;
        --v182;
      }

      while (v182);
LABEL_94:
      *&v350[v164++] = sqrt(v169);
      v166 = (v166 + v167);
      v165 += v167;
      if (v164 == v63)
      {
        goto LABEL_104;
      }
    }
  }

  bzero(v350, 8 * v63);
LABEL_104:
  if (a7 >= 2)
  {
    v184 = 0;
    v185 = a4;
    v186 = a1;
    v187 = 4 * v335;
    v188 = 4 * v334;
    v189 = 1;
    v190 = (a4 + 16);
    v191 = (a1 + 16);
    do
    {
      v192 = v184++;
      v193 = v189;
      v194 = v192;
      do
      {
        if (*&v350[v194] < *&v350[v193])
        {
          v194 = v193;
        }

        ++v193;
      }

      while (v63 != v193);
      if (v192 == v194)
      {
        goto LABEL_106;
      }

      v195 = v350[v192];
      v350[v192] = v350[v194];
      v350[v194] = v195;
      if (!a4)
      {
        goto LABEL_106;
      }

      v196 = v194;
      if (a6 >= 1)
      {
        if (a6 <= 7)
        {
          v197 = 0;
LABEL_116:
          v198 = (v186 + 4 * v197);
          v199 = (a1 + 4 * v197 + v187 * v196);
          v200 = a6 - v197;
          do
          {
            v201 = *v198;
            *v198++ = *v199;
            *v199++ = v201;
            --v200;
          }

          while (v200);
          goto LABEL_118;
        }

        v197 = 0;
        if (a1 + 4 * v335 * v194 < a1 + 4 * (a6 + v335 * (v339 + 0x3FFFFFFFFFFFFFFFLL)) && a1 + 4 * a6 + (a2 & 0xFFFFFFFFFFFFFFFCLL) * v194 > a1)
        {
          goto LABEL_116;
        }

        if (a2 < 0)
        {
          goto LABEL_116;
        }

        v215 = (a1 + 16 + v187 * v194);
        v216 = a6 & 0x7FFFFFF8;
        v217 = v191;
        do
        {
          v218 = *(v217 - 1);
          v219 = *v217;
          v220 = *v215;
          *(v217 - 1) = *(v215 - 1);
          *v217 = v220;
          *(v215 - 1) = v218;
          *v215 = v219;
          v217 += 2;
          v215 += 2;
          v216 -= 8;
        }

        while (v216);
        v197 = a6 & 0x7FFFFFF8;
        if (v197 != a6)
        {
          goto LABEL_116;
        }
      }

LABEL_118:
      if (a7 > 7)
      {
        v202 = 0;
        if ((a4 + 4 * v334 * v196 >= a4 + 4 * (v63 + v334 * (v339 + 0x3FFFFFFFFFFFFFFFLL)) || a4 + 4 * v63 + (a5 & 0xFFFFFFFFFFFFFFFCLL) * v196 <= a4) && (a5 & 0x8000000000000000) == 0)
        {
          v208 = (a4 + 16 + v188 * v196);
          v209 = v63 & 0x7FFFFFF8;
          v210 = v190;
          do
          {
            v211 = *(v210 - 1);
            v212 = *v210;
            v213 = *v208;
            *(v210 - 1) = *(v208 - 1);
            *v210 = v213;
            *(v208 - 1) = v211;
            *v208 = v212;
            v210 += 2;
            v208 += 2;
            v209 -= 8;
          }

          while (v209);
          v202 = v63 & 0x7FFFFFF8;
          if (v202 == v63)
          {
            goto LABEL_106;
          }
        }
      }

      else
      {
        v202 = 0;
      }

      v203 = (v185 + 4 * v202);
      v204 = (a4 + 4 * v202 + v188 * v196);
      v205 = v63 - v202;
      do
      {
        v206 = *v203;
        *v203++ = *v204;
        *v204++ = v206;
        --v205;
      }

      while (v205);
LABEL_106:
      ++v189;
      v191 = (v191 + v187);
      v186 += v187;
      v190 = (v190 + v188);
      v185 += v188;
    }

    while (v184 != v339);
  }

  if (a7 <= 7)
  {
    v221 = 0;
    v64 = a4;
LABEL_146:
    v229 = &a3->f32[v221];
    v230 = v63 - v221;
    v231 = &v350[v221];
    do
    {
      v232 = *v231++;
      v233 = v232;
      *v229++ = v233;
      --v230;
    }

    while (v230);
    goto LABEL_148;
  }

  v221 = v63 & 0x7FFFFFF8;
  v222 = &v351;
  v223 = a3 + 1;
  v224 = v221;
  v64 = a4;
  do
  {
    v226 = v222[-2];
    v225 = v222[-1];
    v228 = *v222;
    v227 = v222[1];
    v222 += 4;
    v223[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v226), v225);
    *v223 = vcvt_hight_f32_f64(vcvt_f32_f64(v228), v227);
    v223 += 2;
    v224 -= 8;
  }

  while (v224);
  if (v221 != v63)
  {
    goto LABEL_146;
  }

LABEL_148:
  if (v64 && a8 >= 1)
  {
    v234 = 0;
    v235 = a1;
    v237 = 4 * a6;
    v238 = v237 - (a2 & 0xFFFFFFFFFFFFFFFCLL);
    v239 = a1 + v237;
    v240 = a1 + v238;
    v241 = a6 & 0x7FFFFFF8;
    v242 = a6 & 0x7FFFFFFC;
    v243 = 4 * v335;
    v244 = a10 * 100.0;
    v245 = 16 * ((a6 >> 2) & 0x1FFFFFFF);
    v246 = 305419896;
    v247 = (a1 + 16);
    while (1)
    {
      v248 = 0.0;
      if (v234 < v14)
      {
        v248 = *&v350[v234];
      }

      if (v248 > a9)
      {
        break;
      }

      v251 = v240 > a1 && v239 + (a2 & 0xFFFFFFFFFFFFFFFCLL) * v234 > a1 || a2 < 0;
      if (a6 >= 1)
      {
        v252 = 0;
        v253 = a6 < 4 || v251;
        while (1)
        {
          v254 = v235;
          v255 = a6;
          do
          {
            v246 = HIDWORD(v246) + 4164903690 * v246;
            if ((v246 & 0x100) != 0)
            {
              v256 = 1.0 / a6;
            }

            else
            {
              v236 = 1.0 / a6;
              v256 = -v236;
            }

            *v254++ = v256;
            --v255;
          }

          while (v255);
          if (v234)
          {
            v257 = 0;
            v258 = a1;
            v259 = (a1 + 16);
            while (a6 >= 8)
            {
              v261 = 0.0;
              v262 = v247;
              v263 = v259;
              v264 = a6 & 0x7FFFFFF8;
              do
              {
                v265 = vmulq_f32(v262[-1], v263[-1]);
                v266 = vmulq_f32(*v262, *v263);
                v267 = vcvt_hight_f64_f32(v265);
                v268 = vcvtq_f64_f32(*v265.f32);
                v269 = vcvt_hight_f64_f32(v266);
                v270 = vcvtq_f64_f32(*v266.f32);
                v261 = v261 + v268.f64[0] + v268.f64[1] + v267.f64[0] + v267.f64[1] + v270.f64[0] + v270.f64[1] + v269.f64[0] + v269.f64[1];
                v263 += 2;
                v262 += 2;
                v264 -= 8;
              }

              while (v264);
              v260 = a6 & 0x7FFFFFF8;
              if (v241 != a6)
              {
                goto LABEL_179;
              }

LABEL_180:
              v271 = -v261;
              v272 = 0;
              if (v253)
              {
                v273 = 0.0;
                do
                {
LABEL_185:
                  v280 = v235[v272] + v271 * *(v258 + 4 * v272);
                  v235[v272] = v280;
                  v273 = v273 + fabsf(v280);
                  ++v272;
                }

                while (a6 != v272);
                goto LABEL_186;
              }

              v274 = vdupq_lane_s64(*&v271, 0);
              v273 = 0.0;
              do
              {
                v275 = (v235 + v272);
                v276 = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*(v235 + v272)), vcvtq_f64_f32(*(v258 + v272)), v274));
                v277 = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*(v235 + v272 + 8)), vcvtq_f64_f32(*(v258 + v272 + 8)), v274));
                *v275 = v276;
                v275[1] = v277;
                v278 = vabs_f32(v276);
                v279 = vabs_f32(v277);
                v273 = (((v273 + v278.f32[0]) + v278.f32[1]) + v279.f32[0]) + v279.f32[1];
                v272 += 16;
              }

              while (v245 != v272);
              v272 = a6 & 0x7FFFFFFC;
              if (v242 != a6)
              {
                goto LABEL_185;
              }

LABEL_186:
              v281 = 1.0 / v273;
              if (v273 <= v244)
              {
                v281 = 0.0;
              }

              if (a6 >= 8)
              {
                v283 = v247;
                v284 = a6 & 0x7FFFFFF8;
                do
                {
                  v285 = vmulq_n_f32(*v283, v281);
                  v283[-1] = vmulq_n_f32(v283[-1], v281);
                  *v283 = v285;
                  v283 += 2;
                  v284 -= 8;
                }

                while (v284);
                v282 = a6 & 0x7FFFFFF8;
                if (v241 == a6)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v282 = 0;
              }

              do
              {
                v235[v282] = v281 * v235[v282];
                ++v282;
              }

              while (a6 != v282);
LABEL_173:
              ++v257;
              v259 = (v259 + v243);
              v258 += v243;
              if (v257 == v234)
              {
                v286 = 0;
                v287 = a1;
                v288 = (a1 + 16);
                while (a6 >= 8)
                {
                  v290 = 0.0;
                  v291 = v247;
                  v292 = v288;
                  v293 = a6 & 0x7FFFFFF8;
                  do
                  {
                    v294 = vmulq_f32(v291[-1], v292[-1]);
                    v295 = vmulq_f32(*v291, *v292);
                    v296 = vcvt_hight_f64_f32(v294);
                    v297 = vcvtq_f64_f32(*v294.f32);
                    v298 = vcvt_hight_f64_f32(v295);
                    v299 = vcvtq_f64_f32(*v295.f32);
                    v290 = v290 + v297.f64[0] + v297.f64[1] + v296.f64[0] + v296.f64[1] + v299.f64[0] + v299.f64[1] + v298.f64[0] + v298.f64[1];
                    v292 += 2;
                    v291 += 2;
                    v293 -= 8;
                  }

                  while (v293);
                  v289 = a6 & 0x7FFFFFF8;
                  if (v241 != a6)
                  {
                    goto LABEL_202;
                  }

LABEL_203:
                  v300 = -v290;
                  v301 = 0;
                  if (v253)
                  {
                    v302 = 0.0;
                    do
                    {
LABEL_208:
                      v309 = v235[v301] + v300 * *(v287 + 4 * v301);
                      v235[v301] = v309;
                      v302 = v302 + fabsf(v309);
                      ++v301;
                    }

                    while (a6 != v301);
                    goto LABEL_209;
                  }

                  v303 = vdupq_lane_s64(*&v300, 0);
                  v302 = 0.0;
                  do
                  {
                    v304 = (v235 + v301);
                    v305 = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*(v235 + v301)), vcvtq_f64_f32(*(v287 + v301)), v303));
                    v306 = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*(v235 + v301 + 8)), vcvtq_f64_f32(*(v287 + v301 + 8)), v303));
                    *v304 = v305;
                    v304[1] = v306;
                    v307 = vabs_f32(v305);
                    v308 = vabs_f32(v306);
                    v302 = (((v302 + v307.f32[0]) + v307.f32[1]) + v308.f32[0]) + v308.f32[1];
                    v301 += 16;
                  }

                  while (v245 != v301);
                  v301 = a6 & 0x7FFFFFFC;
                  if (v242 != a6)
                  {
                    goto LABEL_208;
                  }

LABEL_209:
                  v310 = 1.0 / v302;
                  if (v302 <= v244)
                  {
                    v310 = 0.0;
                  }

                  if (a6 >= 8)
                  {
                    v312 = v247;
                    v313 = a6 & 0x7FFFFFF8;
                    do
                    {
                      v314 = vmulq_n_f32(*v312, v310);
                      v312[-1] = vmulq_n_f32(v312[-1], v310);
                      *v312 = v314;
                      v312 += 2;
                      v313 -= 8;
                    }

                    while (v313);
                    v311 = a6 & 0x7FFFFFF8;
                    if (v241 == a6)
                    {
                      goto LABEL_196;
                    }
                  }

                  else
                  {
                    v311 = 0;
                  }

                  do
                  {
                    v235[v311] = v310 * v235[v311];
                    ++v311;
                  }

                  while (a6 != v311);
LABEL_196:
                  ++v286;
                  v288 = (v288 + v243);
                  v287 += v243;
                  if (v286 == v234)
                  {
                    goto LABEL_218;
                  }
                }

                v289 = 0;
                v290 = 0.0;
                do
                {
LABEL_202:
                  v290 = v290 + (v235[v289] * *(v287 + 4 * v289));
                  ++v289;
                }

                while (a6 != v289);
                goto LABEL_203;
              }
            }

            v260 = 0;
            v261 = 0.0;
            do
            {
LABEL_179:
              v261 = v261 + (v235[v260] * *(v258 + 4 * v260));
              ++v260;
            }

            while (a6 != v260);
            goto LABEL_180;
          }

LABEL_218:
          if (a6 >= 8)
          {
            v316 = 0.0;
            v317 = v247;
            v318 = a6 & 0x7FFFFFF8;
            do
            {
              v319 = *v317[-2].f32;
              v320 = vcvtq_f64_f32(*v319.f32);
              v321 = vcvt_hight_f64_f32(v319);
              v322 = vcvtq_f64_f32(*v317);
              v323 = vcvt_hight_f64_f32(*v317->f32);
              v324 = vmulq_f64(v321, v321);
              v325 = vmulq_f64(v320, v320);
              v326 = vmulq_f64(v323, v323);
              v327 = vmulq_f64(v322, v322);
              v316 = v316 + v325.f64[0] + v325.f64[1] + v324.f64[0] + v324.f64[1] + v327.f64[0] + v327.f64[1] + v326.f64[0] + v326.f64[1];
              v317 += 4;
              v318 -= 8;
            }

            while (v318);
            v315 = a6 & 0x7FFFFFF8;
            if (v241 == a6)
            {
              goto LABEL_224;
            }
          }

          else
          {
            v315 = 0;
            v316 = 0.0;
          }

          do
          {
            v316 = v316 + v235[v315] * v235[v315];
            ++v315;
          }

          while (a6 != v315);
LABEL_224:
          v248 = sqrt(v316);
          if (v252 <= 0x62)
          {
            ++v252;
            if (v248 <= a9)
            {
              continue;
            }
          }

          goto LABEL_226;
        }
      }

      v248 = 0.0;
      v328 = 0.0;
      if (a9 < 0.0)
      {
        goto LABEL_227;
      }

LABEL_228:
      if (a6 >= 1)
      {
        if (a6 >= 8)
        {
          v330 = 0;
          do
          {
            v331 = vmulq_n_f32(v247[v330 / 0x10], v328);
            *&v235[v330 / 4] = vmulq_n_f32(*&v235[v330 / 4], v328);
            v247[v330 / 0x10] = v331;
            v330 += 32;
          }

          while (32 * ((a6 >> 3) & 0xFFFFFFF) != v330);
          v329 = a6 & 0x7FFFFFF8;
          if (v241 == a6)
          {
            goto LABEL_151;
          }
        }

        else
        {
          v329 = 0;
        }

        do
        {
          v235[v329] = v328 * v235[v329];
          ++v329;
        }

        while (a6 != v329);
      }

LABEL_151:
      ++v234;
      v235 = (v235 + v243);
      v247 = (v247 + v243);
      if (v234 == a8)
      {
        return;
      }
    }

LABEL_226:
    v328 = 0.0;
    if (v248 <= a9)
    {
      goto LABEL_228;
    }

LABEL_227:
    v328 = 1.0 / v248;
    goto LABEL_228;
  }
}

unint64_t sub_100238A20(unint64_t result, uint64_t a2, void *a3, unint64_t a4, unint64_t a5, unsigned int a6, unsigned int a7, int a8, double a9, double a10)
{
  v10 = a8;
  v262 = result;
  v15 = a7;
  if (a7 >= 0x89)
  {
    operator new[]();
  }

  if (a6 <= 30)
  {
    v16 = 30;
  }

  else
  {
    v16 = a6;
  }

  v253 = v16;
  v252 = a2 >> 3;
  v17 = a6 > 0;
  if (a7 < 1)
  {
    goto LABEL_69;
  }

  v251 = a5 >> 3;
  v249 = a6 > 0;
  if (a4)
  {
    v18 = a5 & 0xFFFFFFFFFFFFFFF8;
    v19 = 8 * a7;
    v20 = a7;
    v21 = a5 & 0xFFFFFFFFFFFFFFF8;
    if (a6 < 1)
    {
      bzero(v273, 8 * a7);
      v35 = a4;
      v36 = a4;
      do
      {
        bzero(v36, v19);
        *v35 = 0x3FF0000000000000;
        v35 = (v35 + v21 + 8);
        v36 += v21;
        --v20;
      }

      while (v20);
    }

    else
    {
      v22 = 0;
      v23 = result;
      do
      {
        v24 = (a4 + v18 * v22);
        v25 = 0.0;
        v26 = a6;
        v27 = v23;
        do
        {
          v28 = *v27++;
          v25 = v25 + v28 * v28;
          --v26;
        }

        while (v26);
        *&v273[v22] = v25;
        bzero(v24, 8 * v20);
        *(a4 + 8 * (v251 + 1) * v22++) = 0x3FF0000000000000;
        v23 += v252;
        v18 = v21;
      }

      while (v22 != v20);
    }
  }

  else
  {
    if (a6 <= 0)
    {
      bzero(v273, 8 * a7);
      v258 = a7 - 1;
      if (a7 == 1)
      {
        goto LABEL_23;
      }

      goto LABEL_156;
    }

    v29 = 0;
    v30 = result;
    do
    {
      v31 = 0.0;
      v32 = a6;
      v33 = v30;
      do
      {
        v34 = *v33++;
        v31 = v31 + v34 * v34;
        --v32;
      }

      while (v32);
      *&v273[v29++] = v31;
      v30 += v252;
    }

    while (v29 != a7);
  }

  v258 = a7 - 1;
  if (a7 == 1)
  {
    goto LABEL_23;
  }

LABEL_156:
  v156 = 0;
  v157 = a7 - 2;
  v158 = a5 & 0xFFFFFFFFFFFFFFF8;
  v159 = (v157 & 0xFFFFFFFE) + 2;
  if ((v159 | 1) > v15)
  {
    v160 = v159 + 1;
  }

  else
  {
    v160 = v15;
  }

  v257 = 8 * v159;
  v271 = a5 & 0xFFFFFFFFFFFFFFF8;
  v255 = a4 + v158 - v257;
  v256 = a4 + v158;
  v161 = a6 & 0x7FFFFFFC;
  v268 = v160;
  v162 = 8 * v252;
  v269 = v160 - v159;
  v260 = v269 - (v160 & 1);
  v261 = v160 & 1;
  v163 = 8 * v251;
  while (2)
  {
    v254 = v156;
    v164 = 0;
    v165 = 0;
    v166 = a4;
    v168 = a4 + 8 * v251;
    v167 = v262 + 8 * v252;
    v169 = v262;
    v171 = v262 + 16 + 8 * v252;
    v170 = (v262 + 16);
    v172 = 1;
    while (2)
    {
      v173 = 0;
      v264 = v164 + 1;
      v265 = v171;
      v177 = v262 + (a2 & 0xFFFFFFFFFFFFFFF8) * v164 < v262 + 8 * a6 + v252 * (8 * a7 - 8) && v262 + (a2 & 0xFFFFFFFFFFFFFFF8) < v262 + 8 * a6 || a2 < 0 || a6 < 4;
      v266 = v167;
      v267 = v168;
      v178 = v168;
      v179 = v167;
      v263 = v172;
      v180 = v172;
      do
      {
        if (a6 < 1)
        {
          v182 = 0.0;
          goto LABEL_187;
        }

        if (a6 < 4)
        {
          v181 = 0;
          v182 = 0.0;
LABEL_185:
          v188 = (v169 + 8 * v181);
          v189 = (v179 + 8 * v181);
          v190 = a6 - v181;
          do
          {
            v191 = *v188++;
            v192 = v191;
            v193 = *v189++;
            v182 = v182 + v192 * v193;
            --v190;
          }

          while (v190);
          goto LABEL_187;
        }

        v182 = 0.0;
        v183 = v171;
        v184 = v170;
        v185 = a6 & 0x7FFFFFFC;
        do
        {
          v186 = vmulq_f64(v184[-1], v183[-1]);
          v187 = vmulq_f64(*v184, *v183);
          v182 = v182 + v186.f64[0] + v186.f64[1] + v187.f64[0] + v187.f64[1];
          v184 += 2;
          v183 += 2;
          v185 -= 4;
        }

        while (v185);
        v181 = a6 & 0x7FFFFFFC;
        if (v161 != a6)
        {
          goto LABEL_185;
        }

LABEL_187:
        v194 = *&v273[v164];
        v195 = *&v273[v180];
        if (fabs(v182) <= sqrt(v194 * v195) * a10)
        {
          goto LABEL_177;
        }

        v196 = v182 + v182;
        v197 = v194 - v195;
        v198 = fabs(v196);
        v199 = vabdd_f64(v194, v195);
        if (v198 <= v199)
        {
          v200 = 0.0;
          if (v197 != 0.0)
          {
            v200 = v199 * sqrt(v198 / v199 * (v198 / v199) + 1.0);
          }
        }

        else
        {
          v200 = v198 * sqrt(v199 / v198 * (v199 / v198) + 1.0);
        }

        v93 = v197 < 0.0;
        v201 = sqrt((v200 - v197) * 0.5 / v200);
        v202 = v196 / (v200 * v201 + v200 * v201);
        v203 = sqrt((v197 + v200) / (v200 + v200));
        v204 = v196 / (v200 * v203 + v200 * v203);
        if (v93)
        {
          v204 = v201;
          v203 = v202;
        }

        if (a6 <= 0)
        {
          v208 = 0.0;
          v207 = 0.0;
          goto LABEL_202;
        }

        v205 = -v204;
        if (v177)
        {
          v206 = 0;
          v207 = 0.0;
          v208 = 0.0;
          do
          {
LABEL_201:
            v226 = *(v169 + 8 * v206);
            v227 = *(v179 + 8 * v206);
            v228 = v204 * v227 + v203 * v226;
            v229 = v203 * v227 + v205 * v226;
            *(v169 + 8 * v206) = v228;
            *(v179 + 8 * v206) = v229;
            v207 = v207 + v228 * v228;
            v208 = v208 + v229 * v229;
            ++v206;
          }

          while (a6 != v206);
          goto LABEL_202;
        }

        v209 = 0;
        v210 = vdupq_lane_s64(*&v203, 0);
        v211 = vdupq_lane_s64(*&v205, 0);
        v207 = 0.0;
        v208 = 0.0;
        do
        {
          v212 = (v169 + v209);
          v213 = *(v169 + v209);
          v214 = *(v169 + v209 + 16);
          v215 = (v179 + v209);
          v216 = *(v179 + v209);
          v217 = *(v179 + v209 + 16);
          v218 = vmlaq_f64(vmulq_n_f64(v216, v204), v213, v210);
          v219 = vmlaq_f64(vmulq_n_f64(v217, v204), v214, v210);
          v220 = vmlaq_f64(vmulq_n_f64(v216, v203), v213, v211);
          v221 = vmlaq_f64(vmulq_n_f64(v217, v203), v214, v211);
          *v212 = v218;
          v212[1] = v219;
          *v215 = v220;
          v215[1] = v221;
          v222 = vmulq_f64(v218, v218);
          v223 = vmulq_f64(v219, v219);
          v224 = vmulq_f64(v220, v220);
          v225 = vmulq_f64(v221, v221);
          v207 = v207 + v222.f64[0] + v222.f64[1] + v223.f64[0] + v223.f64[1];
          v208 = v208 + v224.f64[0] + v224.f64[1] + v225.f64[0] + v225.f64[1];
          v209 += 32;
        }

        while (32 * ((a6 >> 2) & 0x1FFFFFFF) != v209);
        v206 = a6 & 0x7FFFFFFC;
        if (v161 != a6)
        {
          goto LABEL_201;
        }

LABEL_202:
        *&v273[v164] = v207;
        *&v273[v180] = v208;
        if (a4)
        {
          v230 = 0;
          v231 = vdupq_lane_s64(*&v203, 0);
          v232 = 2;
          v233 = v166;
          v234 = v178;
          do
          {
            v235 = v232;
            v236 = vmulq_n_f64(*v234, v203);
            v237 = vmulq_n_f64(*v233, v204);
            *v233 = vaddq_f64(vmulq_n_f64(*v233, v203), vmulq_n_f64(*v234, v204));
            ++v233;
            *v234++ = vsubq_f64(v236, v237);
            v230 += 2;
            v232 += 2;
          }

          while (v230 <= v157);
          if (v230 < a7)
          {
            v238 = -v204;
            v230 = v230;
            if (v269 <= 1)
            {
              goto LABEL_216;
            }

            v239 = 8 * (v268 + v230);
            if (a4 + v271 * v164 + 8 * v230 < v255 + v271 * v164 + v271 * v173 + v239 && v256 + v271 * v164 + v271 * v173 + 8 * v230 < a4 + v271 * v164 - v257 + v239)
            {
              goto LABEL_216;
            }

            v240 = v260;
            v230 = v260 + v230;
            v241 = vdupq_lane_s64(*&v238, 0);
            v242 = 8 * v235;
            do
            {
              v243 = *(v166 + v242);
              v244 = *(v178 + v242);
              *(v166 + v242) = vmlaq_f64(vmulq_n_f64(v244, v204), v243, v231);
              *(v178 + v242) = vmlaq_f64(vmulq_n_f64(v244, v203), v243, v241);
              v242 += 16;
              v240 -= 2;
            }

            while (v240);
            if (v261)
            {
LABEL_216:
              do
              {
                v245 = v166->f64[v230];
                v246 = v178->f64[v230];
                v166->f64[v230] = v204 * v246 + v203 * v245;
                v178->f64[v230++] = v203 * v246 + v238 * v245;
              }

              while (v230 < v15);
            }
          }
        }

        v165 = 1;
LABEL_177:
        ++v180;
        ++v173;
        v171 += v162;
        v179 += v162;
        v178 = (v178 + v163);
      }

      while (v180 != a7);
      ++v164;
      v172 = v263 + 1;
      v170 = (v170 + v162);
      v171 = v265 + v162;
      v169 += v162;
      v167 = v266 + v162;
      v168 = v267 + v163;
      v166 = (v166 + v163);
      if (v264 != v258)
      {
        continue;
      }

      break;
    }

    v156 = v254 + 1;
    if ((v165 & (v254 + 1 < v253)) != 0)
    {
      continue;
    }

    break;
  }

LABEL_23:
  if (a6 > 0)
  {
    v37 = 0;
    v38 = v262;
    do
    {
      v39 = 0.0;
      v40 = a6;
      v41 = v38;
      do
      {
        v42 = *v41++;
        v39 = v39 + v42 * v42;
        --v40;
      }

      while (v40);
      *&v273[v37++] = sqrt(v39);
      v38 += v252;
    }

    while (v37 != a7);
    if (a7 == 1)
    {
      v249 = 1;
      goto LABEL_68;
    }

LABEL_32:
    v43 = 0;
    v44 = a4;
    v45 = v262;
    v46 = 8 * v252;
    v47 = 8 * v251;
    v48 = 1;
    v49 = (a4 + 16);
    v50 = (v262 + 16);
    while (2)
    {
      v51 = v43++;
      v52 = v48;
      v53 = v51;
      do
      {
        if (*&v273[v53] < *&v273[v52])
        {
          v53 = v52;
        }

        ++v52;
      }

      while (a7 != v52);
      if (v51 != v53)
      {
        v54 = v273[v51];
        v273[v51] = v273[v53];
        v273[v53] = v54;
        if (a4)
        {
          v55 = v53;
          if (a6 >= 1)
          {
            if (a6 <= 3)
            {
              v56 = 0;
              goto LABEL_43;
            }

            v56 = 0;
            if (v262 + 8 * v252 * v53 < v262 + 8 * (a6 + v252 * (v258 + 0x1FFFFFFFFFFFFFFFLL)) && v262 + 8 * a6 + (a2 & 0xFFFFFFFFFFFFFFF8) * v53 > v262)
            {
              goto LABEL_43;
            }

            if (a2 < 0)
            {
              goto LABEL_43;
            }

            v74 = (v262 + 16 + v46 * v53);
            v75 = a6 & 0x7FFFFFFC;
            v76 = v50;
            do
            {
              v77 = *(v76 - 1);
              v78 = *v76;
              v79 = *v74;
              *(v76 - 1) = *(v74 - 1);
              *v76 = v79;
              *(v74 - 1) = v77;
              *v74 = v78;
              v76 += 2;
              v74 += 2;
              v75 -= 4;
            }

            while (v75);
            v56 = a6 & 0x7FFFFFFC;
            if (v56 != a6)
            {
LABEL_43:
              v57 = (v45 + 8 * v56);
              v58 = (v262 + 8 * v56 + v46 * v55);
              v59 = a6 - v56;
              do
              {
                v60 = *v57;
                *v57++ = *v58;
                *v58++ = v60;
                --v59;
              }

              while (v59);
            }
          }

          if (a7 <= 3)
          {
            v61 = 0;
            goto LABEL_47;
          }

          v61 = 0;
          if (a4 + 8 * v251 * v55 < a4 + 8 * (a7 + v251 * (v258 + 0x1FFFFFFFFFFFFFFFLL)) && a4 + 8 * a7 + (a5 & 0xFFFFFFFFFFFFFFF8) * v55 > a4)
          {
            goto LABEL_47;
          }

          if ((a5 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          v67 = (a4 + 16 + v47 * v55);
          v68 = a7 & 0x7FFFFFFC;
          v69 = v49;
          do
          {
            v70 = *(v69 - 1);
            v71 = *v69;
            v72 = *v67;
            *(v69 - 1) = *(v67 - 1);
            *v69 = v72;
            *(v67 - 1) = v70;
            *v67 = v71;
            v69 += 2;
            v67 += 2;
            v68 -= 4;
          }

          while (v68);
          v61 = a7 & 0x7FFFFFFC;
          if (v61 != a7)
          {
LABEL_47:
            v62 = (v44 + 8 * v61);
            v63 = (a4 + 8 * v61 + v47 * v55);
            v64 = a7 - v61;
            do
            {
              v65 = *v62;
              *v62++ = *v63;
              *v63++ = v65;
              --v64;
            }

            while (v64);
          }
        }
      }

      ++v48;
      v50 = (v50 + v46);
      v45 += v46;
      v49 = (v49 + v47);
      v44 += v47;
      if (v43 == v258)
      {
        goto LABEL_68;
      }

      continue;
    }
  }

  bzero(v273, 8 * a7);
  if (a7 != 1)
  {
    goto LABEL_32;
  }

  v249 = 0;
LABEL_68:
  result = memcpy(a3, v273, 8 * a7);
  v10 = a8;
  v17 = v249;
LABEL_69:
  if (a4 && v10 >= 1)
  {
    v80 = 0;
    v81 = v10;
    v82 = 8 * a6;
    v83 = v262;
    v84 = v262 + v82;
    v85 = v262 + v82 - (a2 & 0xFFFFFFFFFFFFFFF8);
    v86 = a10 * 100.0;
    v87 = a6 & 0xFFFFFFFC;
    v88 = 8 * v252;
    v89 = v82 & 0x7FFFFFFE0;
    result = 305419896;
    v90 = (v262 + 16);
    do
    {
      v91 = 0.0;
      if (v80 < v15)
      {
        v91 = *&v273[v80];
      }

      if (v91 <= a9)
      {
        v92 = v85 > v262 && v84 + (a2 & 0xFFFFFFFFFFFFFFF8) * v80 > v262;
        v93 = v92 || a2 < 0;
        v94 = v93;
        v91 = 0.0;
        if (v17)
        {
          v95 = 0;
          v96 = a6 < 4 || v94;
          while (1)
          {
            v97 = v83;
            v98 = a6;
            do
            {
              result = HIDWORD(result) + 4164903690 * result;
              if ((result & 0x100) != 0)
              {
                v99 = 1.0 / a6;
              }

              else
              {
                v99 = -(1.0 / a6);
              }

              *v97++ = v99;
              --v98;
            }

            while (v98);
            if (v80)
            {
              break;
            }

LABEL_139:
            v150 = 0;
            v151 = 0.0;
            do
            {
              v151 = v151 + v83[v150] * v83[v150];
              ++v150;
            }

            while (a6 != v150);
            v91 = sqrt(v151);
            if (v95 <= 0x62)
            {
              ++v95;
              if (v91 <= a9)
              {
                continue;
              }
            }

            goto LABEL_143;
          }

          v100 = 0;
          v101 = v262;
          v102 = (v262 + 16);
          while (2)
          {
            if (a6 < 4)
            {
              v103 = 0;
              v104 = 0.0;
              goto LABEL_100;
            }

            v104 = 0.0;
            v105 = v90;
            v106 = v102;
            v107 = a6 & 0xFFFFFFFC;
            do
            {
              v108 = vmulq_f64(v105[-1], v106[-1]);
              v109 = vmulq_f64(*v105, *v106);
              v104 = v104 + v108.f64[0] + v108.f64[1] + v109.f64[0] + v109.f64[1];
              v106 += 2;
              v105 += 2;
              v107 -= 4;
            }

            while (v107);
            v103 = a6 & 0xFFFFFFFC;
            if (v87 != a6)
            {
              do
              {
LABEL_100:
                v104 = v104 + v83[v103] * *(v101 + 8 * v103);
                ++v103;
              }

              while (a6 != v103);
            }

            v110 = -v104;
            v111 = 0;
            if (v96)
            {
              v112 = 0.0;
              goto LABEL_106;
            }

            v113 = vdupq_lane_s64(*&v110, 0);
            v112 = 0.0;
            do
            {
              v114 = (v83 + v111);
              v115 = vmlaq_f64(*(v83 + v111), *(v101 + v111), v113);
              v116 = vmlaq_f64(*(v83 + v111 + 16), *(v101 + v111 + 16), v113);
              *v114 = v115;
              v114[1] = v116;
              v117 = vabsq_f64(v115);
              v118 = vabsq_f64(v116);
              v112 = v112 + v117.f64[0] + v117.f64[1] + v118.f64[0] + v118.f64[1];
              v111 += 32;
            }

            while (v89 != v111);
            v111 = a6 & 0xFFFFFFFC;
            if (v87 != a6)
            {
              do
              {
LABEL_106:
                v119 = v83[v111] + v110 * *(v101 + 8 * v111);
                v83[v111] = v119;
                v112 = v112 + fabs(v119);
                ++v111;
              }

              while (a6 != v111);
            }

            v120 = 1.0 / v112;
            if (v112 <= v86)
            {
              v120 = 0.0;
            }

            if (a6 < 4)
            {
              v121 = 0;
              goto LABEL_114;
            }

            v122 = v90;
            v123 = a6 & 0xFFFFFFFC;
            do
            {
              v124 = vmulq_n_f64(*v122, v120);
              v122[-1] = vmulq_n_f64(v122[-1], v120);
              *v122 = v124;
              v122 += 2;
              v123 -= 4;
            }

            while (v123);
            v121 = a6 & 0xFFFFFFFC;
            if (v87 != a6)
            {
              do
              {
LABEL_114:
                v83[v121] = v120 * v83[v121];
                ++v121;
              }

              while (a6 != v121);
            }

            ++v100;
            v102 = (v102 + v88);
            v101 += v88;
            if (v100 != v80)
            {
              continue;
            }

            break;
          }

          v125 = 0;
          v126 = v262;
          v127 = (v262 + 16);
          while (2)
          {
            if (a6 < 4)
            {
              v128 = 0;
              v129 = 0.0;
              goto LABEL_123;
            }

            v129 = 0.0;
            v130 = v90;
            v131 = v127;
            v132 = a6 & 0xFFFFFFFC;
            do
            {
              v133 = vmulq_f64(v130[-1], v131[-1]);
              v134 = vmulq_f64(*v130, *v131);
              v129 = v129 + v133.f64[0] + v133.f64[1] + v134.f64[0] + v134.f64[1];
              v131 += 2;
              v130 += 2;
              v132 -= 4;
            }

            while (v132);
            v128 = a6 & 0xFFFFFFFC;
            if (v87 != a6)
            {
              do
              {
LABEL_123:
                v129 = v129 + v83[v128] * *(v126 + 8 * v128);
                ++v128;
              }

              while (a6 != v128);
            }

            v135 = -v129;
            v136 = 0;
            if (v96)
            {
              v137 = 0.0;
              goto LABEL_129;
            }

            v138 = vdupq_lane_s64(*&v135, 0);
            v137 = 0.0;
            do
            {
              v139 = (v83 + v136);
              v140 = vmlaq_f64(*(v83 + v136), *(v126 + v136), v138);
              v141 = vmlaq_f64(*(v83 + v136 + 16), *(v126 + v136 + 16), v138);
              *v139 = v140;
              v139[1] = v141;
              v142 = vabsq_f64(v140);
              v143 = vabsq_f64(v141);
              v137 = v137 + v142.f64[0] + v142.f64[1] + v143.f64[0] + v143.f64[1];
              v136 += 32;
            }

            while (v89 != v136);
            v136 = a6 & 0xFFFFFFFC;
            if (v87 != a6)
            {
              do
              {
LABEL_129:
                v144 = v83[v136] + v135 * *(v126 + 8 * v136);
                v83[v136] = v144;
                v137 = v137 + fabs(v144);
                ++v136;
              }

              while (a6 != v136);
            }

            v145 = 1.0 / v137;
            if (v137 <= v86)
            {
              v145 = 0.0;
            }

            if (a6 < 4)
            {
              v146 = 0;
              goto LABEL_137;
            }

            v147 = v90;
            v148 = a6 & 0xFFFFFFFC;
            do
            {
              v149 = vmulq_n_f64(*v147, v145);
              v147[-1] = vmulq_n_f64(v147[-1], v145);
              *v147 = v149;
              v147 += 2;
              v148 -= 4;
            }

            while (v148);
            v146 = a6 & 0xFFFFFFFC;
            if (v87 != a6)
            {
              do
              {
LABEL_137:
                v83[v146] = v145 * v83[v146];
                ++v146;
              }

              while (a6 != v146);
            }

            ++v125;
            v127 = (v127 + v88);
            v126 += v88;
            if (v125 == v80)
            {
              goto LABEL_139;
            }

            continue;
          }
        }
      }

LABEL_143:
      if (v91 <= a9)
      {
        v152 = 0.0;
      }

      else
      {
        v152 = 1.0 / v91;
      }

      if (v17)
      {
        if (a6 >= 4)
        {
          v154 = 0;
          do
          {
            v155 = vmulq_n_f64(v90[v154 / 0x10], v152);
            *&v83[v154 / 8] = vmulq_n_f64(*&v83[v154 / 8], v152);
            v90[v154 / 0x10] = v155;
            v154 += 32;
          }

          while (v89 != v154);
          v153 = a6 & 0xFFFFFFFC;
          if (v87 == a6)
          {
            goto LABEL_72;
          }
        }

        else
        {
          v153 = 0;
        }

        do
        {
          v83[v153] = v152 * v83[v153];
          ++v153;
        }

        while (a6 != v153);
      }

LABEL_72:
      ++v80;
      v83 = (v83 + v88);
      v90 = (v90 + v88);
    }

    while (v80 != v81);
  }

  return result;
}

double sub_100239A14(uint64_t a1, uint64_t a2, int a3)
{
  sub_1002ACE7C(v166, &off_100473ED8);
  if (sub_100271148(a1) == 0x10000)
  {
    v6 = *(a1 + 8);
    v7 = *v6;
    v8 = *(v6 + 16);
    v158 = *v6;
    v159 = v8;
    v160 = *(v6 + 32);
    v9 = *(v6 + 56);
    v161 = *(v6 + 48);
    v162 = v9;
    v163 = &v158 + 8;
    v164 = v165;
    v165[1] = 0;
    v165[0] = 0;
    if (v9)
    {
      atomic_fetch_add((v9 + 20), 1u);
      if (*(v6 + 4) <= 2)
      {
LABEL_4:
        v10 = *(v6 + 72);
        v11 = v164;
        *v164 = *v10;
        v11[1] = v10[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v7) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v158) = 0;
    sub_100269B58(&v158, v6);
  }

  else
  {
    sub_1002703C0(a1, -1, &v158);
  }

LABEL_8:
  v12 = v158 & 0xFFF;
  if (v12 - 5 >= 2)
  {
    v168 = 0uLL;
    qmemcpy(sub_1002A80E0(&v168, 22), "type == 5 || type == 6", 22);
    sub_1002A8980(-215, v168.i64, "invert", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/lapack.cpp", 839);
  }

  v13 = (((v158 & 0xFFF) >> 3) + 1) << ((0xFA50u >> (2 * (v158 & 7))) & 3);
  v14 = DWORD2(v158);
  v15 = SHIDWORD(v158);
  if (a3 == 1)
  {
    if (SHIDWORD(v158) >= SDWORD2(v158))
    {
      v16 = DWORD2(v158);
    }

    else
    {
      v16 = HIDWORD(v158);
    }

    v168.i64[0] = v169;
    v168.i64[1] = v13 * (v16 + v16 * (DWORD2(v158) + HIDWORD(v158))) + 8;
    if (v168.i64[1] >= 0x409uLL)
    {
      operator new[]();
    }

    sub_10000A690(&v150, SDWORD2(v158), v16, v12, (v169 + v13 - 1) & -v13, 0);
    sub_10000A690(v142, v16, 1, v12, v151 + v13 * (v16 * v14), 0);
    sub_10000A690(&v135, v16, v15, v12, v144 + v13 * v16, 0);
    v117 = 16842752;
    *&v118[4] = &v158;
    *&v118[12] = 0;
    v132 = 33619968;
    v133 = v142;
    v134 = 0;
    v129 = 33619968;
    v130 = &v150;
    v131 = 0;
    v126 = 33619968;
    v127 = &v135;
    v128 = 0;
    sub_1002ACE7C(&v123, &off_100473F38);
    sub_10023F480(&v117, &v132, &v129, &v126, 0);
    if (v124)
    {
      sub_1002ACC1C(&v123);
    }

    v134 = 0;
    v132 = 16842752;
    v133 = v142;
    v131 = 0;
    v129 = 16842752;
    v130 = &v150;
    v128 = 0;
    v126 = 16842752;
    v127 = &v135;
    v117 = 1124007936;
    memset(v118, 0, sizeof(v118));
    v119 = &v118[4];
    v120 = &v121;
    v121 = 0;
    v122 = 0;
    v125 = 0;
    v123 = 16842752;
    v124 = &v117;
    sub_10023ADE0(&v132, &v129, &v126, &v123, a2);
    if (*&v118[52] && atomic_fetch_add((*&v118[52] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(&v117);
    }

    *&v118[52] = 0;
    memset(&v118[12], 0, 32);
    if (*v118 >= 1)
    {
      v17 = 0;
      v18 = v119;
      do
      {
        *&v18[4 * v17++] = 0;
      }

      while (v17 < *v118);
    }

    if (v120 != &v121)
    {
      j__free(v120);
    }

    if (v12 == 5)
    {
      v19 = 0.0;
      if (*v144 >= 0.00000011921)
      {
        v19 = (*(v144 + 4 * v15 - 4) / *v144);
      }
    }

    else
    {
      v19 = 0.0;
      if (*v144 >= 2.22044605e-16)
      {
        v19 = *(v144 + 8 * v15 - 8) / *v144;
      }
    }

    if (v138 && atomic_fetch_add((v138 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(&v135);
    }

    v138 = 0;
    v136 = 0u;
    v137 = 0u;
    if (v135.i32[1] >= 1)
    {
      v29 = 0;
      v30 = v139;
      do
      {
        *(v30 + 4 * v29++) = 0;
      }

      while (v29 < v135.i32[1]);
    }

    if (v140 != v141)
    {
      j__free(v140);
    }

    if (v146 && atomic_fetch_add((v146 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v142);
    }

    v146 = 0;
    v144 = 0u;
    v145 = 0u;
    if (v143 >= 1)
    {
      v31 = 0;
      v32 = v147;
      do
      {
        *(v32 + 4 * v31++) = 0;
      }

      while (v31 < v143);
    }

    if (v148 != v149)
    {
      j__free(v148);
    }

    if (v154 && atomic_fetch_add((v154 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(&v150);
    }

    v154 = 0;
    v151 = 0u;
    v152 = 0u;
    if (SDWORD1(v150) >= 1)
    {
      v33 = 0;
      v34 = v155;
      do
      {
        *&v34[4 * v33++] = 0;
      }

      while (v33 < SDWORD1(v150));
    }

    if (v156 != v157)
    {
      j__free(v156);
    }

    if (v168.i64[0] != v169 && v168.i64[0] != 0)
    {
      goto LABEL_115;
    }

    goto LABEL_174;
  }

  if (DWORD2(v158) != HIDWORD(v158))
  {
    v168 = 0uLL;
    v20 = sub_1002A80E0(&v168, 6);
    *(v20 + 4) = 28192;
    *v20 = 1027416173;
    sub_1002A8980(-215, v168.i64, "invert", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/lapack.cpp", 863);
  }

  if (a3 != 2)
  {
    if (a3 && a3 != 3)
    {
      v168 = 0uLL;
      qmemcpy(sub_1002A80E0(&v168, 48), "method == DECOMP_LU || method == DECOMP_CHOLESKY", 48);
      sub_1002A8980(-215, v168.i64, "invert", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/lapack.cpp", 883);
    }

    sub_100275A84(a2, HIDWORD(v158), HIDWORD(v158), v158 & 0xFFF, -1, 0, 0);
    if (sub_100271148(a2) == 0x10000)
    {
      v23 = *(a2 + 8);
      v24 = *v23;
      v25 = *(v23 + 16);
      v150 = *v23;
      v151 = v25;
      v152 = *(v23 + 32);
      v26 = *(v23 + 56);
      v153 = *(v23 + 48);
      v154 = v26;
      v155 = &v150 + 8;
      v156 = v157;
      v157[0] = 0;
      v157[1] = 0;
      if (v26)
      {
        atomic_fetch_add((v26 + 20), 1u);
        if (*(v23 + 4) <= 2)
        {
LABEL_51:
          v27 = *(v23 + 72);
          v28 = v156;
          *v156 = *v27;
          v28[1] = v27[1];
          goto LABEL_118;
        }
      }

      else if (SDWORD1(v24) <= 2)
      {
        goto LABEL_51;
      }

      DWORD1(v150) = 0;
      sub_100269B58(&v150, v23);
    }

    else
    {
      sub_1002703C0(a2, -1, &v150);
    }

LABEL_118:
    if (v15 <= 3)
    {
      v43 = v159;
      v44 = v151;
      v45 = v157[0];
      if (v15 == 3)
      {
        if (v12 == 5)
        {
          v59 = *v159;
          v60 = *(v159 + v165[0] + 4);
          v61 = (v159 + 2 * v165[0]);
          v62 = v61[2];
          v63 = *(v159 + v165[0] + 8);
          v64 = v61[1];
          v65.f64[0] = v60 * v62 - v63 * v64;
          v66 = *(v159 + 4);
          v67 = *(v159 + v165[0]);
          v68 = *v61;
          v69 = *(v159 + 8);
          v70.f64[0] = v67 * v64 - v60 * v68;
          v71 = v59 * v65.f64[0] - (v67 * v62 - v63 * v68) * v66 + v69 * v70.f64[0];
          if (v71 != 0.0)
          {
            v19 = 1.0;
            v72 = 1.0 / v71;
            v73 = v69 * v64 - v66 * v62;
            v74 = (v66 * v63 - v69 * v60) * v72;
            v75 = (v63 * v68 - v67 * v62) * v72;
            v76 = (v59 * v62 - v69 * v68) * v72;
            v77 = (v69 * v67 - v59 * v63) * v72;
            v78 = v66 * v68 - v59 * v64;
            v79 = (v59 * v60 - v66 * v67) * v72;
            v65.f64[1] = v73;
            *v151 = vcvt_f32_f64(vmulq_n_f64(v65, v72));
            v80 = v74;
            *(v44 + 8) = v80;
            v81 = v75;
            v82 = (v44 + v45);
            v83 = v76;
            *v82 = v81;
            v82[1] = v83;
            v84 = v77;
            v82[2] = v84;
            v70.f64[1] = v78;
            v85 = (v44 + 2 * v45);
            *v85 = vcvt_f32_f64(vmulq_n_f64(v70, v72));
            *&v79 = v79;
            v85[1].i32[0] = LODWORD(v79);
            goto LABEL_166;
          }
        }

        else
        {
          v93 = (v159 + 2 * v165[0]);
          v94 = v93[1];
          v95 = v93[2];
          v96 = *(v159 + v165[0] + 8);
          v97 = *(v159 + v165[0] + 16);
          v98 = *v93;
          v99 = *(v159 + v165[0]);
          v100 = v96 * v95 - v97 * v94;
          v101 = *v159;
          v102 = *(v159 + 8);
          v103 = *(v159 + 16);
          v104 = v99 * v94 - v96 * *v93;
          v105 = *v159 * v100 - v102 * (v99 * v95 - v97 * *v93) + v103 * v104;
          if (v105 != 0.0)
          {
            v19 = 1.0;
            v106 = 1.0 / v105;
            *v151 = v100 * v106;
            *(v44 + 8) = (v95 * -v102 + v103 * v94) * v106;
            *(v44 + 16) = (v102 * v97 - v103 * v96) * v106;
            v107 = (v44 + v45);
            *v107 = (v97 * v98 - v99 * v95) * v106;
            v107[1] = (v101 * v95 - v103 * v98) * v106;
            v107[2] = (v103 * v99 - v101 * v97) * v106;
            v108 = (v44 + 2 * v45);
            *v108 = v104 * v106;
            v108[1] = (v102 * v98 - v101 * v94) * v106;
            v108[2] = (v99 * -v102 + v101 * v96) * v106;
            goto LABEL_166;
          }
        }
      }

      else if (v15 == 2)
      {
        if (v12 == 5)
        {
          v46 = *v159;
          v47 = (v159 + v165[0]);
          v48 = *(v159 + v165[0] + 4);
          v49 = v46 * v48 - *(v159 + 4) * *(v159 + v165[0]);
          if (v49 != 0.0)
          {
            v19 = 1.0;
            v50 = 1.0 / v49;
            v51 = v50 * v46;
            v52 = (v151 + v157[0]);
            v52[1] = v51;
            v53 = v50 * v48;
            *v44 = v53;
            v54 = v50 * -*v47;
            v55 = v50 * -*(v43 + 4);
            *(v44 + 4) = v55;
            v56 = v54;
            *v52 = v56;
            goto LABEL_166;
          }
        }

        else
        {
          v87 = (v159 + v165[0]);
          v88 = *(v159 + v165[0] + 8);
          v89 = *v159 * v88 - *(v159 + 8) * *(v159 + v165[0]);
          if (v89 != 0.0)
          {
            v19 = 1.0;
            v90 = 1.0 / v89;
            v91 = (v151 + v157[0]);
            v91[1] = *v159 * v90;
            *v44 = v88 * v90;
            v92 = -(*v87 * v90);
            *(v44 + 8) = -(*(v43 + 8) * v90);
            *v91 = v92;
            goto LABEL_166;
          }
        }
      }

      else if (v12 == 5)
      {
        if (*v159 != 0.0)
        {
          *v151 = 1.0 / *v159;
          v19 = 1.0;
          goto LABEL_166;
        }
      }

      else if (*v159 != 0.0)
      {
        v19 = 1.0;
        *v151 = 1.0 / *v159;
        goto LABEL_166;
      }

      v168 = 0u;
      v169[0] = 0u;
      sub_10022CAFC(&v150, &v168);
      v19 = 0.0;
LABEL_166:
      if (v154 && atomic_fetch_add((v154 + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(&v150);
      }

      v154 = 0;
      v151 = 0u;
      v152 = 0u;
      if (SDWORD1(v150) >= 1)
      {
        v112 = 0;
        v113 = v155;
        do
        {
          *&v113[4 * v112++] = 0;
        }

        while (v112 < SDWORD1(v150));
      }

      if (v156 != v157)
      {
        j__free(v156);
      }

      goto LABEL_174;
    }

    v168.i64[0] = v169;
    v168.i64[1] = (v15 * v15 * v13);
    if (v168.i32[2] >= 0x409u)
    {
      operator new[]();
    }

    sub_10000A690(v142, v15, v15, v12, v169, 0);
    v135.i32[0] = 33619968;
    v135.i64[1] = v142;
    *&v136 = 0;
    sub_10022B754(&v158, &v135);
    v117 = 50397184;
    *&v118[4] = &v150;
    *&v118[12] = 0;
    v135 = 0x3FF0000000000000uLL;
    v136 = 0uLL;
    sub_100276DB0(&v117, &v135);
    if (a3 || v12 != 5)
    {
      if (a3 || v12 != 6)
      {
        if (a3 == 3 && v12 == 5)
        {
          v86 = sub_10027FA5C(v144, v149[0], v15, v151, v157[0], v15);
        }

        else
        {
          v86 = sub_10027FFE8(v144, v149[0], v15, v151, v157[0], v15);
        }

        v19 = 1.0;
        if (v86)
        {
LABEL_133:
          v58 = v146;
          if (!v146)
          {
            goto LABEL_156;
          }

          goto LABEL_154;
        }

LABEL_153:
        v135 = 0u;
        v136 = 0u;
        sub_10022CAFC(&v150, &v135);
        v19 = 0.0;
        v58 = v146;
        if (!v146)
        {
LABEL_156:
          v146 = 0;
          v144 = 0u;
          v145 = 0u;
          if (v143 >= 1)
          {
            v109 = 0;
            v110 = v147;
            do
            {
              *(v110 + 4 * v109++) = 0;
            }

            while (v109 < v143);
          }

          if (v148 != v149)
          {
            j__free(v148);
          }

          if (v168.i64[0] != v169 && v168.i64[0] != 0)
          {
            operator delete[]();
          }

          goto LABEL_166;
        }

LABEL_154:
        if (atomic_fetch_add((v58 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v142);
        }

        goto LABEL_156;
      }

      v57 = sub_10027F0C4(v144, v149[0], v15, v151, v157[0], v15);
    }

    else
    {
      v57 = sub_10027E5CC(v144, v149[0], v15, v151, v157[0], v15);
    }

    v19 = 1.0;
    if (v57)
    {
      goto LABEL_133;
    }

    goto LABEL_153;
  }

  v168.i64[0] = v169;
  v168.i64[1] = v13 * (HIDWORD(v158) + 2 * HIDWORD(v158) * HIDWORD(v158)) + 8;
  if (v168.i64[1] >= 0x409uLL)
  {
    operator new[]();
  }

  sub_10000A690(&v150, SHIDWORD(v158), SHIDWORD(v158), v12, (v169 + v13 - 1) & -v13, 0);
  sub_10000A690(v142, v15, 1, v12, v151 + v13 * (v15 * v15), 0);
  sub_10000A690(&v135, v15, v15, v12, v144 + v15 * v13, 0);
  v117 = 16842752;
  *&v118[4] = &v158;
  *&v118[12] = 0;
  v132 = 33619968;
  v133 = v142;
  v134 = 0;
  v129 = 33619968;
  v130 = &v135;
  v131 = 0;
  sub_10023B8A4(&v117, &v132, &v129);
  v117 = 16842752;
  *&v118[4] = &v135;
  *&v118[12] = 0;
  v132 = 33619968;
  v133 = &v150;
  v134 = 0;
  sub_10026EF8C(&v117, &v132);
  v134 = 0;
  v132 = 16842752;
  v133 = v142;
  v131 = 0;
  v129 = 16842752;
  v130 = &v150;
  v128 = 0;
  v126 = 16842752;
  v127 = &v135;
  v117 = 1124007936;
  memset(v118, 0, sizeof(v118));
  v119 = &v118[4];
  v120 = &v121;
  v121 = 0;
  v122 = 0;
  v125 = 0;
  v123 = 16842752;
  v124 = &v117;
  sub_10023ADE0(&v132, &v129, &v126, &v123, a2);
  if (*&v118[52] && atomic_fetch_add((*&v118[52] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v117);
  }

  *&v118[52] = 0;
  memset(&v118[12], 0, 32);
  if (*v118 >= 1)
  {
    v21 = 0;
    v22 = v119;
    do
    {
      *&v22[4 * v21++] = 0;
    }

    while (v21 < *v118);
  }

  if (v120 != &v121)
  {
    j__free(v120);
  }

  if (v12 == 5)
  {
    v19 = 0.0;
    if (*v144 >= 0.00000011921)
    {
      v19 = (*(v144 + 4 * v15 - 4) / *v144);
    }
  }

  else
  {
    v19 = 0.0;
    if (*v144 >= 2.22044605e-16)
    {
      v19 = *(v144 + 8 * v15 - 8) / *v144;
    }
  }

  if (v138 && atomic_fetch_add((v138 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v135);
  }

  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  if (v135.i32[1] >= 1)
  {
    v36 = 0;
    v37 = v139;
    do
    {
      *(v37 + 4 * v36++) = 0;
    }

    while (v36 < v135.i32[1]);
  }

  if (v140 != v141)
  {
    j__free(v140);
  }

  if (v146 && atomic_fetch_add((v146 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v142);
  }

  v146 = 0;
  v144 = 0u;
  v145 = 0u;
  if (v143 >= 1)
  {
    v38 = 0;
    v39 = v147;
    do
    {
      *(v39 + 4 * v38++) = 0;
    }

    while (v38 < v143);
  }

  if (v148 != v149)
  {
    j__free(v148);
  }

  if (v154 && atomic_fetch_add((v154 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v150);
  }

  v154 = 0;
  v151 = 0u;
  v152 = 0u;
  if (SDWORD1(v150) >= 1)
  {
    v40 = 0;
    v41 = v155;
    do
    {
      *&v41[4 * v40++] = 0;
    }

    while (v40 < SDWORD1(v150));
  }

  if (v156 != v157)
  {
    j__free(v156);
  }

  if (v168.i64[0] != v169 && v168.i64[0] != 0)
  {
LABEL_115:
    operator delete[]();
  }

LABEL_174:
  if (v162 && atomic_fetch_add((v162 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v158);
  }

  v162 = 0;
  v159 = 0u;
  v160 = 0u;
  if (SDWORD1(v158) >= 1)
  {
    v114 = 0;
    v115 = v163;
    do
    {
      *&v115[4 * v114++] = 0;
    }

    while (v114 < SDWORD1(v158));
  }

  if (v164 != v165)
  {
    j__free(v164);
  }

  if (v167)
  {
    sub_1002ACC1C(v166);
  }

  return v19;
}

void sub_10023AB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100006D14(&a57);
  sub_100006D14(&a69);
  sub_1001D8BF4(&STACK[0x240]);
  _Unwind_Resume(a1);
}

void sub_10023AC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_100006D14(&a9);
  sub_100006D14(&a33);
  sub_100006D14(&a45);
  sub_100006D14(&a57);
  if (STACK[0x250] != v57)
  {
    if (STACK[0x250])
    {
      operator delete[]();
    }
  }

  JUMPOUT(0x10023AD94);
}

void sub_10023AD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100006D14(&a69);
  sub_1001D8BF4(&STACK[0x240]);
  _Unwind_Resume(a1);
}

void sub_10023ADB0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023ADE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_100271148(a1) == 0x10000)
  {
    v10 = *(a1 + 8);
    v11 = *v10;
    v12 = *(v10 + 16);
    v95 = *v10;
    v96 = v12;
    v97 = *(v10 + 32);
    v13 = *(v10 + 56);
    v98 = *(v10 + 48);
    v99 = v13;
    v100 = &v95 + 2;
    v101 = v102;
    v102[1] = 0;
    v102[0] = 0;
    if (v13)
    {
      atomic_fetch_add((v13 + 20), 1u);
      if (*(v10 + 4) <= 2)
      {
LABEL_4:
        v14 = *(v10 + 72);
        v15 = v101;
        *v101 = *v14;
        v15[1] = v14[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v11) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v95) = 0;
    sub_100269B58(&v95, v10);
  }

  else
  {
    sub_1002703C0(a1, -1, &v95);
  }

LABEL_8:
  if (sub_100271148(a2) == 0x10000)
  {
    v16 = *(a2 + 8);
    v17 = *v16;
    v18 = *(v16 + 16);
    v87 = *v16;
    v88 = v18;
    v89 = *(v16 + 32);
    v19 = *(v16 + 56);
    v90 = *(v16 + 48);
    v91 = v19;
    v92 = &v87 + 8;
    v93 = v94;
    v94[0] = 0;
    v94[1] = 0;
    if (v19)
    {
      atomic_fetch_add((v19 + 20), 1u);
      if (*(v16 + 4) <= 2)
      {
LABEL_11:
        v20 = *(v16 + 72);
        v21 = v93;
        *v93 = *v20;
        v21[1] = v20[1];
        goto LABEL_15;
      }
    }

    else if (SDWORD1(v17) <= 2)
    {
      goto LABEL_11;
    }

    DWORD1(v87) = 0;
    sub_100269B58(&v87, v16);
  }

  else
  {
    sub_1002703C0(a2, -1, &v87);
  }

LABEL_15:
  if (sub_100271148(a3) == 0x10000)
  {
    v22 = *(a3 + 8);
    v23 = *v22;
    v24 = *(v22 + 16);
    v79 = *v22;
    v80 = v24;
    v81 = *(v22 + 32);
    v25 = *(v22 + 56);
    v82 = *(v22 + 48);
    v83 = v25;
    v84 = &v79 + 8;
    v85 = v86;
    v86[0] = 0;
    v86[1] = 0;
    if (v25)
    {
      atomic_fetch_add((v25 + 20), 1u);
      if (*(v22 + 4) <= 2)
      {
LABEL_18:
        v26 = *(v22 + 72);
        v27 = v85;
        *v85 = *v26;
        v27[1] = v26[1];
        goto LABEL_22;
      }
    }

    else if (SDWORD1(v23) <= 2)
    {
      goto LABEL_18;
    }

    DWORD1(v79) = 0;
    sub_100269B58(&v79, v22);
  }

  else
  {
    sub_1002703C0(a3, -1, &v79);
  }

LABEL_22:
  if (sub_100271148(a4) == 0x10000)
  {
    v28 = *(a4 + 8);
    v29 = *v28;
    v30 = *(v28 + 16);
    v71 = *v28;
    v72 = v30;
    v73 = *(v28 + 32);
    v31 = *(v28 + 56);
    v74 = *(v28 + 48);
    v75 = v31;
    v76 = &v71 + 8;
    v77 = v78;
    v78[0] = 0;
    v78[1] = 0;
    if (v31)
    {
      atomic_fetch_add((v31 + 20), 1u);
      if (*(v28 + 4) <= 2)
      {
LABEL_25:
        v32 = *(v28 + 72);
        v33 = v77;
        *v77 = *v32;
        v33[1] = v32[1];
        goto LABEL_29;
      }
    }

    else if (SDWORD1(v29) <= 2)
    {
      goto LABEL_25;
    }

    DWORD1(v71) = 0;
    sub_100269B58(&v71, v28);
  }

  else
  {
    sub_1002703C0(a4, -1, &v71);
  }

LABEL_29:
  if (SDWORD1(v95) < 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = *(v101 + 2 * DWORD1(v95) - 2);
  }

  v35 = v95 & 0xFFF;
  v36 = DWORD2(v87);
  v37 = HIDWORD(v79);
  if (v72)
  {
    v38 = HIDWORD(v71);
  }

  else
  {
    v38 = DWORD2(v87);
  }

  if (SHIDWORD(v79) >= SDWORD2(v87))
  {
    v39 = DWORD2(v87);
  }

  else
  {
    v39 = HIDWORD(v79);
  }

  if (DWORD2(v95) != 1)
  {
    if (HIDWORD(v95) == 1)
    {
      v40 = 0;
    }

    else
    {
      v40 = v34;
    }

    v34 = v102[0] + v40;
  }

  v103 = v105;
  v104 = 8 * v38 + 16;
  if (v104 >= 0x409)
  {
    operator new[]();
  }

  if (v35 != (v87 & 0xFFF) || v35 != (v79 & 0xFFF) || !v88 || !v80 || !v96)
  {
    v63 = 0uLL;
    qmemcpy(sub_1002A80E0(&v63, 76), "w.type() == u.type() && u.type() == vt.type() && u.data && vt.data && w.data", 76);
    sub_1002A8980(-215, &v63, "backSubst", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/lapack.cpp", 1561);
  }

  if (SHIDWORD(v87) < v39 || SDWORD2(v79) < v39 || ((v49 = *v100, v50 = v100[1], v50 != v39) || v49 != 1) && (v50 != 1 || v49 != v39) && (v50 != DWORD2(v79) || v49 != HIDWORD(v87)))
  {
    v63 = 0uLL;
    qmemcpy(sub_1002A80E0(&v63, 122), "u.cols >= nm && vt.rows >= nm && (w.size() == Size(nm, 1) || w.size() == Size(1, nm) || w.size() == Size(vt.rows, u.cols))", 122);
    sub_1002A8980(-215, &v63, "backSubst", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/lapack.cpp", 1563);
  }

  if (v72 && ((v71 & 0xFFF) != v35 || DWORD2(v71) != DWORD2(v87)))
  {
    v63 = 0uLL;
    qmemcpy(sub_1002A80E0(&v63, 54), "rhs.data == 0 || (rhs.type() == type && rhs.rows == m)", 54);
    sub_1002A8980(-215, &v63, "backSubst", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/lapack.cpp", 1564);
  }

  sub_100275A84(a5, HIDWORD(v79), v38, v35, -1, 0, 0);
  if (sub_100271148(a5) == 0x10000)
  {
    v42 = *(a5 + 8);
    v43 = *v42;
    v44 = *(v42 + 16);
    v63 = *v42;
    v64 = v44;
    v45 = *(v42 + 32);
    v65 = v45;
    v46 = *(v42 + 56);
    v66 = *(v42 + 48);
    v67 = v46;
    v68 = &v63 + 8;
    v69 = v70;
    v70[0] = 0;
    v70[1] = 0;
    if (v46)
    {
      atomic_fetch_add((v46 + 20), 1u);
      if (*(v42 + 4) <= 2)
      {
LABEL_61:
        v47 = *(v42 + 72);
        v48 = v69;
        *v69 = *v47;
        v48[1] = v47[1];
        goto LABEL_72;
      }
    }

    else if (SDWORD1(v43) <= 2)
    {
      goto LABEL_61;
    }

    DWORD1(v63) = 0;
    sub_100269B58(&v63, v42);
  }

  else
  {
    sub_1002703C0(a5, -1, &v63);
  }

LABEL_72:
  if (v35 == 6)
  {
    sub_10023EA20(v36, v37, v96, v34, v88, v94[0], 0, v80, *&v43, *&v45, v41, v86[0], v72, v78[0], v38, v64, v70[0], v103);
  }

  else
  {
    if (v35 != 5)
    {
      v62[0] = 0;
      v62[1] = 0;
      sub_1002A8980(-210, v62, "backSubst", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/lapack.cpp", 1577);
    }

    sub_10023E010(v36, v37, v96, v34, v88, v94[0], 0, v80, v86[0], v72, v78[0], v38, v64, v70[0], v103);
  }

  if (v67 && atomic_fetch_add((v67 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v63);
  }

  v67 = 0;
  v64 = 0u;
  v65 = 0u;
  if (SDWORD1(v63) >= 1)
  {
    v51 = 0;
    v52 = v68;
    do
    {
      *&v52[4 * v51++] = 0;
    }

    while (v51 < SDWORD1(v63));
  }

  if (v69 != v70)
  {
    j__free(v69);
  }

  if (v103 != v105 && v103 != 0)
  {
    operator delete[]();
  }

  if (v75 && atomic_fetch_add((v75 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v71);
  }

  v75 = 0;
  v72 = 0u;
  v73 = 0u;
  if (SDWORD1(v71) >= 1)
  {
    v54 = 0;
    v55 = v76;
    do
    {
      *&v55[4 * v54++] = 0;
    }

    while (v54 < SDWORD1(v71));
  }

  if (v77 != v78)
  {
    j__free(v77);
  }

  if (v83 && atomic_fetch_add((v83 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v79);
  }

  v83 = 0;
  v80 = 0u;
  v81 = 0u;
  if (SDWORD1(v79) >= 1)
  {
    v56 = 0;
    v57 = v84;
    do
    {
      *&v57[4 * v56++] = 0;
    }

    while (v56 < SDWORD1(v79));
  }

  if (v85 != v86)
  {
    j__free(v85);
  }

  if (v91 && atomic_fetch_add((v91 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v87);
  }

  v91 = 0;
  v88 = 0u;
  v89 = 0u;
  if (SDWORD1(v87) >= 1)
  {
    v58 = 0;
    v59 = v92;
    do
    {
      *&v59[4 * v58++] = 0;
    }

    while (v58 < SDWORD1(v87));
  }

  if (v93 != v94)
  {
    j__free(v93);
  }

  if (v99 && atomic_fetch_add((v99 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v95);
  }

  v99 = 0;
  v96 = 0u;
  v97 = 0u;
  if (SDWORD1(v95) >= 1)
  {
    v60 = 0;
    v61 = v100;
    do
    {
      v61[v60++] = 0;
    }

    while (v60 < SDWORD1(v95));
  }

  if (v101 != v102)
  {
    j__free(v101);
  }
}

void sub_10023B770(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100008E3C(a1);
}

void sub_10023B818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v32 = STACK[0x230];
  if (STACK[0x230] != v31 && v32)
  {
    operator delete[](v32, 0x1000C8077774924);
  }

  sub_100006D14(&a31);
  JUMPOUT(0x10023B854);
}

void sub_10023B874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100006D14(&a55);
  sub_100006D14(&a67);
  _Unwind_Resume(a1);
}

uint64_t sub_10023B8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1002ACE7C(v78, &off_100473F18);
  if (sub_100271148(a1) == 0x10000)
  {
    v6 = *(a1 + 8);
    v7 = *v6;
    v8 = *(v6 + 16);
    v70 = *v6;
    v71 = v8;
    v72 = *(v6 + 32);
    v9 = *(v6 + 56);
    v73 = *(v6 + 48);
    v74 = v9;
    v75 = &v70 + 8;
    v76 = v77;
    v77[0] = 0;
    v77[1] = 0;
    if (v9)
    {
      atomic_fetch_add((v9 + 20), 1u);
      if (*(v6 + 4) <= 2)
      {
LABEL_4:
        v10 = *(v6 + 72);
        v11 = v76;
        *v76 = *v10;
        v11[1] = v10[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v7) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v70) = 0;
    sub_100269B58(&v70, v6);
  }

  else
  {
    sub_1002703C0(a1, -1, &v70);
  }

LABEL_8:
  v12 = SDWORD2(v70);
  if (DWORD2(v70) != HIDWORD(v70))
  {
    v80[0] = 0uLL;
    v13 = sub_1002A80E0(v80, 20);
    *(v13 + 16) = 1936486243;
    *v13 = *"src.rows == src.cols";
    sub_1002A8980(-215, v80, "eigen", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/lapack.cpp", 1395);
  }

  v14 = v70 & 0xFFF;
  if (v14 - 5 >= 2)
  {
    v80[0] = 0uLL;
    qmemcpy(sub_1002A80E0(v80, 22), "type == 5 || type == 6", 22);
    sub_1002A8980(-215, v80, "eigen", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/lapack.cpp", 1396);
  }

  *v66 = 1124007936;
  memset(&v66[4], 0, 60);
  v67 = &v66[8];
  v68 = v69;
  v69[0] = 0;
  v69[1] = 0;
  if (sub_1002769C0(a3))
  {
    sub_100275A84(a3, v12, v12, v14, -1, 0, 0);
    if (sub_100271148(a3) != 0x10000)
    {
      sub_1002703C0(a3, -1, v80);
      goto LABEL_20;
    }

    v15 = *(a3 + 8);
    v16 = *v15;
    v17 = *(v15 + 16);
    v80[0] = *v15;
    v80[1] = v17;
    v80[2] = *(v15 + 32);
    v18 = *(v15 + 56);
    *&v80[3] = *(v15 + 48);
    *(&v80[3] + 1) = v18;
    v81 = v80 + 8;
    v82 = v83;
    v83[1] = 0;
    v83[0] = 0;
    if (v18)
    {
      atomic_fetch_add((v18 + 20), 1u);
      if (*(v15 + 4) <= 2)
      {
LABEL_16:
        v19 = *(v15 + 72);
        v20 = v82;
        *v82 = *v19;
        v20[1] = v19[1];
LABEL_20:
        if (*&v66[56] && atomic_fetch_add((*&v66[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v66);
        }

        if (*&v66[4] >= 1)
        {
          v21 = 0;
          v22 = v67;
          do
          {
            *&v22[4 * v21++] = 0;
          }

          while (v21 < *&v66[4]);
        }

        *v66 = v80[0];
        *&v66[16] = v80[1];
        *&v66[32] = v80[2];
        *&v66[48] = v80[3];
        v23 = v68;
        if (v68 == v69)
        {
          v24 = v82;
          if (SDWORD1(v80[0]) <= 2)
          {
            goto LABEL_28;
          }
        }

        else
        {
          j__free(v68);
          v67 = &v66[8];
          v68 = v69;
          v23 = v69;
          v24 = v82;
          if (SDWORD1(v80[0]) <= 2)
          {
LABEL_28:
            *v23 = *v24;
            v23[1] = v24[1];
            goto LABEL_31;
          }
        }

        v67 = v81;
        v68 = v24;
        v81 = v80 + 8;
        v82 = v83;
LABEL_31:
        LODWORD(v80[0]) = 1124007936;
        memset(v80 + 4, 0, 60);
        if (v82 != v83)
        {
          j__free(v82);
        }

        goto LABEL_33;
      }
    }

    else if (SDWORD1(v16) <= 2)
    {
      goto LABEL_16;
    }

    DWORD1(v80[0]) = 0;
    sub_100269B58(v80, v15);
    goto LABEL_20;
  }

LABEL_33:
  if (SDWORD1(v70) < 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v76 + DWORD1(v70) - 1);
  }

  v26 = v25 * v12;
  v27 = (v25 * v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = v27 * v12;
  *&v80[0] = &v80[1];
  *(&v80[0] + 1) = 5 * v12 * v25 + v27 * v12 + 32;
  if (*(&v80[0] + 1) >= 0x409uLL)
  {
    operator new[]();
  }

  sub_10000A690(v58, v12, v12, v14, &v80[1], v27);
  v29 = &v80[1] + v28;
  sub_10000A690(v50, v12, 1, v14, &v80[1] + v28, 0);
  v47 = 33619968;
  v48 = v58;
  v49 = 0;
  sub_10022B754(&v70, &v47);
  if (v14 == 5)
  {
    v35 = sub_10023FE74(v60, *v65, v52, *&v66[16], v69[0], v12, &v29[v26], v30, v31, v32, v33, v34);
  }

  else
  {
    v35 = sub_10024076C(v60, *v65, v52, *&v66[16], v69[0], v12, &v29[v26]);
  }

  v36 = v35;
  sub_10022B754(v50, a2);
  if (v54 && atomic_fetch_add((v54 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v50);
  }

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  if (v51 >= 1)
  {
    v37 = 0;
    v38 = v55;
    do
    {
      *(v38 + 4 * v37++) = 0;
    }

    while (v37 < v51);
  }

  if (v56 != &v57)
  {
    j__free(v56);
  }

  if (v62 && atomic_fetch_add((v62 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v58);
  }

  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  if (v59 >= 1)
  {
    v39 = 0;
    v40 = v63;
    do
    {
      *(v40 + 4 * v39++) = 0;
    }

    while (v39 < v59);
  }

  if (v64 != v65)
  {
    j__free(v64);
  }

  if (*&v80[0] != &v80[1] && *&v80[0] != 0)
  {
    operator delete[]();
  }

  if (*&v66[56] && atomic_fetch_add((*&v66[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v66);
  }

  *&v66[56] = 0;
  memset(&v66[16], 0, 32);
  if (*&v66[4] >= 1)
  {
    v42 = 0;
    v43 = v67;
    do
    {
      *&v43[4 * v42++] = 0;
    }

    while (v42 < *&v66[4]);
  }

  if (v68 != v69)
  {
    j__free(v68);
  }

  if (v74 && atomic_fetch_add((v74 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v70);
  }

  v74 = 0;
  v71 = 0u;
  v72 = 0u;
  if (SDWORD1(v70) >= 1)
  {
    v44 = 0;
    v45 = v75;
    do
    {
      *&v45[4 * v44++] = 0;
    }

    while (v44 < SDWORD1(v70));
  }

  if (v76 != v77)
  {
    j__free(v76);
  }

  if (v79)
  {
    sub_1002ACC1C(v78);
  }

  return v36;
}

void sub_10023BFB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10023C0DC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  sub_1002ACE7C(v256, &off_100473EF8);
  if (sub_100271148(a1) == 0x10000)
  {
    v8 = *(a1 + 8);
    v9 = *v8;
    v10 = *(v8 + 16);
    v248 = *v8;
    v249 = v10;
    v250 = *(v8 + 32);
    v11 = *(v8 + 56);
    v251 = *(v8 + 48);
    v252 = v11;
    v253 = &v248 + 8;
    v254 = v255;
    v255[1] = 0;
    v255[0] = 0;
    if (v11)
    {
      atomic_fetch_add((v11 + 20), 1u);
      if (*(v8 + 4) <= 2)
      {
LABEL_4:
        v12 = *(v8 + 72);
        v13 = v254;
        *v254 = *v12;
        v13[1] = v12[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v9) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v248) = 0;
    sub_100269B58(&v248, v8);
  }

  else
  {
    sub_1002703C0(a1, -1, &v248);
  }

LABEL_8:
  if (sub_100271148(a2) != 0x10000)
  {
    sub_1002703C0(a2, -1, &v240);
    goto LABEL_15;
  }

  v14 = *(a2 + 8);
  v15 = *v14;
  v16 = *(v14 + 16);
  v240 = *v14;
  v241 = v16;
  v242 = *(v14 + 32);
  v17 = *(v14 + 56);
  v243 = *(v14 + 48);
  v244 = v17;
  v245 = &v240 + 8;
  v246 = v247;
  v247[1] = 0;
  v247[0] = 0;
  if (!v17)
  {
    if (SDWORD1(v15) <= 2)
    {
      goto LABEL_11;
    }

LABEL_14:
    DWORD1(v240) = 0;
    sub_100269B58(&v240, v14);
    goto LABEL_15;
  }

  atomic_fetch_add((v17 + 20), 1u);
  if (*(v14 + 4) > 2)
  {
    goto LABEL_14;
  }

LABEL_11:
  v18 = *(v14 + 72);
  v19 = v246;
  *v246 = *v18;
  v19[1] = v18[1];
LABEL_15:
  v20 = v248 & 0xFFF;
  if (v20 != (v240 & 0xFFF) || v20 - 5 >= 2)
  {
    v262 = 0uLL;
    qmemcpy(sub_1002A80E0(&v262, 48), "type == _src2.type() && (type == 5 || type == 6)", 48);
    sub_1002A8980(-215, &v262, "solve", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/lapack.cpp", 1100);
  }

  if (a4 <= 0x13 && ((1 << a4) & 0x90009) != 0)
  {
    if ((a4 & 0x10) == 0 && DWORD2(v248) != HIDWORD(v248))
    {
      v262 = 0uLL;
      qmemcpy(sub_1002A80E0(&v262, 87), "(method != DECOMP_LU && method != DECOMP_CHOLESKY) || is_normal || src.rows == src.cols", 87);
      sub_1002A8980(-215, &v262, "solve", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/lapack.cpp", 1104);
    }

    if (((1 << a4) & 0x90009) != 0 && (a4 & 0x10) == 0 && SDWORD2(v248) <= 3 && DWORD2(v248) == HIDWORD(v248) && HIDWORD(v240) == 1)
    {
      sub_100275A84(a3, DWORD2(v248), 1u, v248 & 0xFFF, -1, 0, 0);
      if (sub_100271148(a3) == 0x10000)
      {
        v21 = *(a3 + 8);
        v22 = *v21;
        v23 = *(v21 + 16);
        v262 = *v21;
        v263 = v23;
        v264 = *(v21 + 32);
        v24 = *(v21 + 56);
        v265 = *(v21 + 48);
        v266 = v24;
        v267 = &v262 + 8;
        v268 = v269;
        v269[1] = 0;
        v269[0] = 0;
        if (v24)
        {
          atomic_fetch_add((v24 + 20), 1u);
          if (*(v21 + 4) <= 2)
          {
LABEL_31:
            v25 = *(v21 + 72);
            v26 = v268;
            *v268 = *v25;
            v26[1] = v25[1];
            goto LABEL_229;
          }
        }

        else if (SDWORD1(v22) <= 2)
        {
          goto LABEL_31;
        }

        DWORD1(v262) = 0;
        sub_100269B58(&v262, v21);
      }

      else
      {
        sub_1002703C0(a3, -1, &v262);
      }

LABEL_229:
      v103 = v263;
      v104 = v269[0];
      if (DWORD2(v248) == 3)
      {
        if (v20 == 5)
        {
          v116 = *v249;
          v117 = *(v249 + v255[0] + 4);
          v118 = (v249 + 2 * v255[0]);
          v119 = v118[2];
          v120 = v119;
          v121 = *(v249 + v255[0] + 8);
          v122 = v118[1];
          v123 = v117 * v119 - v121 * v122;
          v124 = *(v249 + 4);
          v125 = *(v249 + v255[0]);
          v126 = *v118;
          v127 = -(v121 * v126);
          v128 = *(v249 + 8);
          v129 = v125 * v122 - v117 * v126;
          v130 = v116 * v123 - (v125 * v119 - v121 * v126) * v124 + v128 * v129;
          if (v130 != 0.0)
          {
            v131 = -v121;
            v132 = -(v127 + v125 * v120);
            v133 = 1.0 / v130;
            v134 = *v241;
            v135 = *(v241 + v247[0]);
            v136 = *(v241 + 2 * v247[0]);
            v137 = v133 * (v134 * v123 - (v131 * v136 + v135 * v120) * v124 + v128 * (-v117 * v136 + v135 * v122));
            v138 = v125 * v136 - v135 * v126;
            v139 = v133 * (v132 * v134 + v116 * ((v119 * v135) + v131 * v136) + v128 * v138);
            v140 = v133 * (v116 * (v117 * v136 - v135 * v122) - v138 * v124 + v134 * v129);
            *v263 = v137;
            *(v103 + v104) = v139;
            *(v103 + 2 * v104) = v140;
            v101 = 1;
            v115 = v266;
            if (!v266)
            {
              goto LABEL_255;
            }

            goto LABEL_253;
          }
        }

        else
        {
          v147 = (v249 + 2 * v255[0]);
          v148 = v147[1];
          v149 = v147[2];
          v150 = *(v249 + v255[0] + 8);
          v151 = *(v249 + v255[0] + 16);
          v152 = *v147;
          v153 = *(v249 + v255[0]);
          v154 = v150 * v149 - v151 * v148;
          v155 = *v249;
          v156 = *(v249 + 8);
          v157 = *(v249 + 16);
          v158 = v153 * v148 - v150 * *v147;
          v159 = *v249 * v154 - v156 * (v153 * v149 - v151 * *v147) + v157 * v158;
          if (v159 != 0.0)
          {
            v160 = 1.0 / v159;
            v161 = *(v241 + v247[0]);
            v162 = *(v241 + 2 * v247[0]);
            v163 = v160 * ((v149 * -v156 + v157 * v148) * v161 + v154 * *v241 + (v156 * v151 - v157 * v150) * v162);
            v164 = v160 * ((v155 * v149 - v157 * v152) * v161 + (v151 * v152 - v153 * v149) * *v241 + (v157 * v153 - v155 * v151) * v162);
            v165 = v160 * ((v156 * v152 - v155 * v148) * v161 + v158 * *v241 + (v153 * -v156 + v155 * v150) * v162);
            *v263 = v163;
            *(v103 + v104) = v164;
            *(v103 + 2 * v104) = v165;
            v101 = 1;
            v115 = v266;
            if (!v266)
            {
              goto LABEL_255;
            }

            goto LABEL_253;
          }
        }
      }

      else if (DWORD2(v248) == 2)
      {
        if (v20 == 5)
        {
          v105 = *v249;
          v106 = *(v249 + v255[0] + 4);
          v107 = *(v249 + 4);
          v108 = *(v249 + v255[0]);
          v109 = v105 * v106 - v107 * v108;
          if (v109 != 0.0)
          {
            v110 = 1.0 / v109;
            v111 = *v241;
            v112 = *(v241 + v247[0]);
            v113 = v110 * (v111 * v106 - v112 * v107);
            v114 = v110 * (v112 * v105 - v111 * v108);
            *(v263 + v269[0]) = v114;
            *v103 = v113;
            v101 = 1;
            v115 = v266;
            if (!v266)
            {
              goto LABEL_255;
            }

            goto LABEL_253;
          }
        }

        else
        {
          v141 = *(v249 + 8);
          v142 = *(v249 + v255[0] + 8);
          v143 = *v249 * v142 - v141 * *(v249 + v255[0]);
          if (v143 != 0.0)
          {
            v144 = 1.0 / v143;
            v145 = *(v241 + v247[0]);
            v146 = v144 * (*v241 * v142 - v145 * v141);
            *(v263 + v269[0]) = v144 * (v145 * *v249 - *v241 * *(v249 + v255[0]));
            *v103 = v146;
            v101 = 1;
            v115 = v266;
            if (!v266)
            {
              goto LABEL_255;
            }

            goto LABEL_253;
          }
        }
      }

      else if (v20 == 5)
      {
        if (*v249 != 0.0)
        {
          *v263 = *v241 / *v249;
          v101 = 1;
          v115 = v266;
          if (!v266)
          {
            goto LABEL_255;
          }

          goto LABEL_253;
        }
      }

      else if (*v249 != 0.0)
      {
        *v263 = *v241 / *v249;
        v101 = 1;
        v115 = v266;
        if (!v266)
        {
          goto LABEL_255;
        }

        goto LABEL_253;
      }

      v101 = 0;
      v115 = v266;
      if (!v266)
      {
LABEL_255:
        v266 = 0;
        v263 = 0u;
        v264 = 0u;
        if (SDWORD1(v262) >= 1)
        {
          v166 = 0;
          v167 = v267;
          do
          {
            *&v167[4 * v166++] = 0;
          }

          while (v166 < SDWORD1(v262));
        }

        if (v268 != v269)
        {
          j__free(v268);
        }

        goto LABEL_334;
      }

LABEL_253:
      if (atomic_fetch_add((v115 + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(&v262);
      }

      goto LABEL_255;
    }
  }

  v27 = DWORD2(v248);
  v28 = HIDWORD(v248);
  *&v262 = &v263;
  *(&v262 + 1) = 1032;
  v29 = (((v248 & 0xFFF) >> 3) + 1) << ((0xFA50u >> (2 * (v248 & 7))) & 3);
  v232 = v240;
  v233 = v241;
  v196 = (v29 * SHIDWORD(v248) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a4 == 1)
  {
    v30 = (SDWORD2(v248) * v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    v30 = (v29 * SHIDWORD(v248) + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  v234 = v242;
  v235 = v243;
  v236 = v244;
  v237 = &v232 + 8;
  v238 = v239;
  v239[1] = 0;
  v239[0] = 0;
  v197 = HIDWORD(v240);
  if (v244)
  {
    atomic_fetch_add((v244 + 20), 1u);
    if (SDWORD1(v240) <= 2)
    {
LABEL_37:
      v31 = v246;
      v32 = v238;
      *v238 = *v246;
      v32[1] = v31[1];
      goto LABEL_40;
    }
  }

  else if (SDWORD1(v240) <= 2)
  {
    goto LABEL_37;
  }

  DWORD1(v232) = 0;
  sub_100269B58(&v232, &v240);
LABEL_40:
  sub_100275A84(a3, HIDWORD(v248), HIDWORD(v232), v248 & 0xFFF, -1, 0, 0);
  if (sub_100271148(a3) == 0x10000)
  {
    v33 = *(a3 + 8);
    v34 = *v33;
    v35 = *(v33 + 16);
    v225 = *v33;
    v226 = v35;
    v227 = *(v33 + 32);
    v36 = *(v33 + 56);
    *&v228 = *(v33 + 48);
    *(&v228 + 1) = v36;
    v229 = &v225 + 8;
    v230 = v231;
    v231[1] = 0;
    v231[0] = 0;
    if (v36)
    {
      atomic_fetch_add((v36 + 20), 1u);
      if (*(v33 + 4) <= 2)
      {
LABEL_43:
        v37 = *(v33 + 72);
        v38 = v230;
        *v230 = *v37;
        v38[1] = v37[1];
        goto LABEL_47;
      }
    }

    else if (SDWORD1(v34) <= 2)
    {
      goto LABEL_43;
    }

    DWORD1(v225) = 0;
    sub_100269B58(&v225, v33);
  }

  else
  {
    sub_1002703C0(a3, -1, &v225);
  }

LABEL_47:
  if (v27 < v28)
  {
    v218 = 0uLL;
    qmemcpy(sub_1002A80E0(&v218, 58), "The function can not solve under-determined linear systems", 58);
    sub_1002A8980(-5, &v218, "solve", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/lapack.cpp", 1250);
  }

  v39 = a4 & 0xFFFFFFEF;
  if (v27 == v28)
  {
    v40 = 0;
    v198 = v27;
  }

  else if ((a4 & 0x10) != 0)
  {
    if (v39 == 1)
    {
      v39 = 2;
    }

    v40 = 1;
    v198 = v28;
  }

  else
  {
    v40 = (a4 >> 4) & 1;
    v198 = v27;
  }

  v195 = ((v20 >> 3) + 1) << ((0xFA50u >> (2 * (v20 & 7))) & 3);
  if (v39 == 1)
  {
    v41 = 1;
  }

  else
  {
    v41 = v40;
  }

  if (v41)
  {
    v42 = v28;
  }

  else
  {
    v42 = v27;
  }

  v43 = v30 * v42;
  v44 = v29 * (v197 * v28);
  v45 = v44 + 32;
  if (!v40)
  {
    v45 = 32;
  }

  v46 = v45 + v43;
  if (v39 - 1 <= 1)
  {
    v46 += 5 * v28 * v195 + 8 * v197 + v196 * v28 + 32;
  }

  v47 = v20;
  if (*(&v262 + 1) >= v46)
  {
    *(&v262 + 1) = v46;
    v48 = v262;
  }

  else
  {
    v48 = &v263;
    if (v262 != &v263)
    {
      if (v262)
      {
        operator delete[]();
      }

      *&v262 = &v263;
    }

    *(&v262 + 1) = v46;
    if (v46 >= 0x409)
    {
      operator new[]();
    }
  }

  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v50 = v47;
  sub_10000A690(&v218, v198, v28, v47, v49, v30);
  if (v40)
  {
    *v213 = 16842752;
    *&v213[8] = &v248;
    *&v213[16] = 0;
    *v202 = 33619968;
    *&v202[8] = &v218;
    *&v202[16] = 0;
    v51 = sub_100276DA4();
    sub_100245784(v213, v202, 1, v51, -1, 1.0);
    v52 = v49 + v43;
    if (v39 == 3 || !v39)
    {
      *&v202[16] = 0;
      *v202 = 16842752;
      *&v202[8] = &v248;
      *&__src[16] = 0;
      *__src = 16842752;
      *&__src[8] = &v232;
      *v213 = 1124007936;
      memset(&v213[4], 0, 60);
      v214 = &v213[8];
      v215 = &v216;
      v216 = 0;
      v217 = 0;
      v212 = 0;
      LODWORD(v210) = 16842752;
      v211 = v213;
      v207 = 33619968;
      v208 = &v225;
      v209 = 0;
      sub_100243EB0(v202, __src, &v210, &v207, 1, 1.0, 0.0);
      if (*&v213[56] && atomic_fetch_add((*&v213[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v213);
      }

      *&v213[56] = 0;
      memset(&v213[16], 0, 32);
      if (*&v213[4] >= 1)
      {
        v53 = 0;
        v54 = v214;
        do
        {
          *&v54[4 * v53++] = 0;
        }

        while (v53 < *&v213[4]);
      }

      if (v215 != &v216)
      {
        j__free(v215);
      }

      goto LABEL_124;
    }

    sub_10000A690(v213, v28, v197, v47, v49 + v43, 0);
    *&__src[16] = 0;
    *__src = 16842752;
    *&__src[8] = &v248;
    v212 = 0;
    LODWORD(v210) = 16842752;
    v211 = &v232;
    *v202 = 1124007936;
    memset(&v202[4], 0, 60);
    v203 = &v202[8];
    v204 = &v205;
    v205 = 0;
    v206 = 0;
    v209 = 0;
    v207 = 16842752;
    v208 = v202;
    v199 = 33619968;
    v200 = v213;
    v201 = 0;
    sub_100243EB0(__src, &v210, &v207, &v199, 1, 1.0, 0.0);
    v50 = v47;
    if (*&v202[56] && atomic_fetch_add((*&v202[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v202);
    }

    *&v202[56] = 0;
    memset(&v202[16], 0, 32);
    if (*&v202[4] >= 1)
    {
      v59 = 0;
      v60 = v203;
      do
      {
        *&v60[4 * v59++] = 0;
      }

      while (v59 < *&v202[4]);
    }

    if (v204 != &v205)
    {
      j__free(v204);
    }

    if (*&v213[56])
    {
      atomic_fetch_add((*&v213[56] + 20), 1u);
    }

    if (v236 && atomic_fetch_add((v236 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(&v232);
    }

    v236 = 0;
    v233 = 0u;
    v234 = 0u;
    if (v232 <= 0)
    {
      LODWORD(v232) = *v213;
      v63 = *&v213[4];
      if (*&v213[4] <= 2)
      {
LABEL_114:
        DWORD1(v232) = v63;
        *(&v232 + 1) = *&v213[8];
        v64 = v215;
        v65 = v238;
        *v238 = *v215;
        v65[1] = v64[1];
LABEL_168:
        v233 = *&v213[16];
        v234 = *&v213[32];
        v235 = *&v213[48];
        v236 = *&v213[56];
        if (*&v213[56] && atomic_fetch_add((*&v213[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v213);
        }

        *&v213[56] = 0;
        memset(&v213[16], 0, 32);
        if (*&v213[4] >= 1)
        {
          v86 = 0;
          v87 = v214;
          do
          {
            *&v87[4 * v86++] = 0;
          }

          while (v86 < *&v213[4]);
        }

        if (v215 != &v216)
        {
          j__free(v215);
        }

        v52 += v44;
        if (v39 == 4)
        {
          goto LABEL_134;
        }

        goto LABEL_124;
      }
    }

    else
    {
      v61 = 0;
      v62 = v237;
      do
      {
        *&v62[4 * v61++] = 0;
      }

      while (v61 < SDWORD1(v232));
      LODWORD(v232) = *v213;
      if (SDWORD1(v232) <= 2)
      {
        v63 = *&v213[4];
        if (*&v213[4] <= 2)
        {
          goto LABEL_114;
        }
      }
    }

    sub_100269B58(&v232, v213);
    goto LABEL_168;
  }

  if (v39 != 1)
  {
    *v213 = 33619968;
    *&v213[8] = &v218;
    *&v213[16] = 0;
    sub_10022B754(&v248, v213);
    goto LABEL_121;
  }

  sub_10000A690(v213, v28, v198, v47, v49, v30);
  if (*(&v221 + 1) && atomic_fetch_add((*(&v221 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v218);
  }

  if (SDWORD1(v218) >= 1)
  {
    v55 = 0;
    v56 = v222;
    do
    {
      *&v56[4 * v55++] = 0;
    }

    while (v55 < SDWORD1(v218));
  }

  v218 = *v213;
  v219 = *&v213[16];
  v220 = *&v213[32];
  v221 = *&v213[48];
  v57 = v223;
  if (v223 == v224)
  {
    v58 = v215;
    if (*&v213[4] <= 2)
    {
      goto LABEL_94;
    }

LABEL_117:
    v222 = v214;
    v223 = v58;
    v214 = &v213[8];
    v215 = &v216;
    goto LABEL_118;
  }

  j__free(v223);
  v222 = &v218 + 8;
  v223 = v224;
  v57 = v224;
  v58 = v215;
  if (*&v213[4] > 2)
  {
    goto LABEL_117;
  }

LABEL_94:
  *v57 = *v58;
  v57[1] = v58[1];
LABEL_118:
  *v213 = 1124007936;
  memset(&v213[4], 0, 60);
  if (v215 != &v216)
  {
    j__free(v215);
  }

  *v213 = 16842752;
  *&v213[8] = &v248;
  *&v213[16] = 0;
  *v202 = 33619968;
  *&v202[8] = &v218;
  *&v202[16] = 0;
  sub_10026EF8C(v213, v202);
LABEL_121:
  v52 = v49 + v43;
  if (v39 == 3 || !v39)
  {
    *v213 = 33619968;
    *&v213[8] = &v225;
    *&v213[16] = 0;
    sub_10022B754(&v232, v213);
    goto LABEL_124;
  }

  if (v39 == 4)
  {
LABEL_134:
    *v213 = 1124007936;
    memset(&v213[4], 0, 60);
    v214 = &v213[8];
    v215 = &v216;
    v76 = v40 ^ 1;
    if (v27 == v28)
    {
      v76 = 0;
    }

    v216 = 0;
    v217 = 0;
    if ((v76 & 1) == 0)
    {
      *v202 = 33619968;
      *&v202[8] = &v225;
      *&v202[16] = 0;
      sub_10022B754(&v232, v202);
      if (*(&v228 + 1))
      {
        atomic_fetch_add((*(&v228 + 1) + 20), 1u);
      }

      if (*&v213[56] && atomic_fetch_add((*&v213[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v213);
      }

      *&v213[56] = 0;
      memset(&v213[16], 0, 32);
      if (*&v213[4] <= 0)
      {
        *v213 = v225;
        v79 = DWORD1(v225);
        if (SDWORD1(v225) <= 2)
        {
LABEL_147:
          *&v213[4] = v79;
          *&v213[8] = *(&v225 + 1);
          v80 = v230;
          v81 = v215;
          *v215 = *v230;
          v81[1] = v80[1];
LABEL_196:
          *&v213[16] = v226;
          *&v213[32] = v227;
          *&v213[48] = v228;
          goto LABEL_202;
        }
      }

      else
      {
        v77 = 0;
        v78 = v214;
        do
        {
          *&v78[4 * v77++] = 0;
        }

        while (v77 < *&v213[4]);
        *v213 = v225;
        if (*&v213[4] <= 2)
        {
          v79 = DWORD1(v225);
          if (SDWORD1(v225) <= 2)
          {
            goto LABEL_147;
          }
        }
      }

      sub_100269B58(v213, &v225);
      goto LABEL_196;
    }

    *v202 = 1124007936;
    memset(&v202[4], 0, 60);
    v203 = &v202[8];
    v204 = &v205;
    v205 = 0;
    v206 = 0;
    *__src = __PAIR64__(v197, v27);
    sub_100268ED0(v202, 2, __src, v50);
    if (*&v213[56] && atomic_fetch_add((*&v213[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v213);
    }

    if (*&v213[4] >= 1)
    {
      v82 = 0;
      v83 = v214;
      do
      {
        *&v83[4 * v82++] = 0;
      }

      while (v82 < *&v213[4]);
    }

    *v213 = *v202;
    *&v213[16] = *&v202[16];
    *&v213[32] = *&v202[32];
    *&v213[48] = *&v202[48];
    v84 = v215;
    if (v215 == &v216)
    {
      v85 = v204;
      if (*&v202[4] <= 2)
      {
        goto LABEL_159;
      }
    }

    else
    {
      j__free(v215);
      v214 = &v213[8];
      v215 = &v216;
      v84 = &v216;
      v85 = v204;
      if (*&v202[4] <= 2)
      {
LABEL_159:
        *v84 = *v85;
        v84[1] = v85[1];
LABEL_199:
        *v202 = 1124007936;
        memset(&v202[4], 0, 60);
        if (v204 != &v205)
        {
          j__free(v204);
        }

        *v202 = 33619968;
        *&v202[8] = v213;
        *&v202[16] = 0;
        sub_10022B754(&v232, v202);
LABEL_202:
        if (v50 == 5)
        {
          v95 = sub_100280510(v219, *v224, DWORD2(v218), SHIDWORD(v218), *&v213[12], *&v213[16], v216, 0);
        }

        else
        {
          v95 = sub_100280C9C(v219, *v224, DWORD2(v218), SHIDWORD(v218), *&v213[12], *&v213[16], v216, 0);
        }

        v96 = v95;
        if (*&v213[8] != DWORD2(v225))
        {
          *__src = 0;
          *&__src[4] = DWORD2(v225);
          v210 = 0x7FFFFFFF80000000;
          sub_10026A3FC(v202, v213, __src, &v210);
          *__src = 33619968;
          *&__src[16] = 0;
          *&__src[8] = &v225;
          sub_10022B754(v202, __src);
          if (*&v202[56] && atomic_fetch_add((*&v202[56] + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v202);
          }

          *&v202[56] = 0;
          memset(&v202[16], 0, 32);
          if (*&v202[4] >= 1)
          {
            v97 = 0;
            v98 = v203;
            do
            {
              *&v98[4 * v97++] = 0;
            }

            while (v97 < *&v202[4]);
          }

          if (v204 != &v205)
          {
            j__free(v204);
          }
        }

        if (*&v213[56] && atomic_fetch_add((*&v213[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v213);
        }

        *&v213[56] = 0;
        memset(&v213[16], 0, 32);
        if (*&v213[4] >= 1)
        {
          v99 = 0;
          v100 = v214;
          do
          {
            *&v100[4 * v99++] = 0;
          }

          while (v99 < *&v213[4]);
        }

        if (v215 != &v216)
        {
          j__free(v215);
        }

        if (v96)
        {
          goto LABEL_305;
        }

LABEL_223:
        memset(v213, 0, 32);
        sub_10022CAFC(&v225, v213);
        v101 = 0;
        v102 = *(&v221 + 1);
        if (!*(&v221 + 1))
        {
          goto LABEL_308;
        }

LABEL_306:
        if (atomic_fetch_add((v102 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(&v218);
        }

        goto LABEL_308;
      }
    }

    v214 = v203;
    v215 = v85;
    v203 = &v202[8];
    v204 = &v205;
    goto LABEL_199;
  }

LABEL_124:
  if (v39 == 3)
  {
    if (v50 == 5)
    {
      v67 = sub_10027FA5C(v219, *v224, v28, v226, v231[0], v197);
    }

    else
    {
      v67 = sub_10027FFE8(v219, *v224, v28, v226, v231[0], v197);
    }

    if (v67)
    {
      goto LABEL_305;
    }

    goto LABEL_223;
  }

  if (v39)
  {
    v68 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_10000A690(v213, v28, v28, v50, v68, v196);
    sub_10000A690(v202, v28, 1, v50, v68 + v196 * v28, 0);
    *__src = 1124007936;
    memset(&__src[4], 0, 60);
    v259 = &__src[8];
    v260 = v261;
    v261[1] = 0;
    v261[0] = 0;
    v73 = v68 + (v196 + v195) * v28;
    if (v39 == 2)
    {
      if (v50 == 5)
      {
        sub_10023FE74(v219, *v224, *&v202[16], *&v213[16], v216, v28, v73, 0.0, v69, v70, v71, v72);
      }

      else
      {
        sub_10024076C(v219, *v224, *&v202[16], *&v213[16], v216, v28, v73);
      }

      if (*&v213[56])
      {
        atomic_fetch_add((*&v213[56] + 20), 1u);
      }

      if (*&__src[56] && atomic_fetch_add((*&__src[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(__src);
      }

      v88 = &v213[8];
      v89 = &v215;
      *&__src[56] = 0;
      memset(&__src[16], 0, 32);
      if (*__src <= 0)
      {
        v92 = *&v213[4];
        *__src = *v213;
        if (*&v213[4] >= 3)
        {
LABEL_191:
          v94 = v213;
          sub_100269B58(__src, v213);
          goto LABEL_278;
        }
      }

      else
      {
        v90 = 0;
        v91 = v259;
        do
        {
          *&v91[4 * v90++] = 0;
        }

        while (v90 < *&__src[4]);
        v92 = *&v213[4];
        *__src = *v213;
        if (*&__src[4] > 2 || *&v213[4] >= 3)
        {
          goto LABEL_191;
        }
      }

      v94 = v213;
      goto LABEL_277;
    }

    if (v50 == 5)
    {
      if (*&v213[16])
      {
        sub_10023762C(v219, *v224, *&v202[16], *&v213[16], v216, v198, v28, v28, 1.17549435e-38, 0.00000023842);
      }

      else
      {
        sub_10023762C(v219, *v224, *&v202[16], 0, v216, v198, v28, 0, 1.17549435e-38, 0.00000023842);
      }
    }

    else if (*&v213[16])
    {
      sub_100238A20(v219, *v224, *&v202[16], *&v213[16], v216, v198, v28, v28, 2.22507386e-308, 2.22044605e-15);
    }

    else
    {
      sub_100238A20(v219, *v224, *&v202[16], 0, v216, v198, v28, 0, 2.22507386e-308, 2.22044605e-15);
    }

    if (*(&v221 + 1))
    {
      atomic_fetch_add((*(&v221 + 1) + 20), 1u);
    }

    if (*&__src[56] && atomic_fetch_add((*&__src[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(__src);
    }

    v88 = &v218 + 8;
    v89 = &v223;
    *&__src[56] = 0;
    memset(&__src[16], 0, 32);
    if (*__src <= 0)
    {
      v92 = DWORD1(v218);
      *__src = v218;
      if (SDWORD1(v218) >= 3)
      {
LABEL_274:
        v94 = &v218;
        sub_100269B58(__src, &v218);
        goto LABEL_278;
      }
    }

    else
    {
      v168 = 0;
      v169 = v259;
      do
      {
        *&v169[4 * v168++] = 0;
      }

      while (v168 < *&__src[4]);
      v92 = DWORD1(v218);
      *__src = v218;
      if (*&__src[4] > 2 || SDWORD1(v218) >= 3)
      {
        goto LABEL_274;
      }
    }

    v94 = &v218;
LABEL_277:
    *&__src[4] = v92;
    *&__src[8] = *v88;
    v171 = *v89;
    v172 = v260;
    *v260 = **v89;
    v172[1] = v171[1];
LABEL_278:
    v173 = *(v94 + 2);
    *&__src[24] = *(v94 + 24);
    v174 = *(v94 + 40);
    *&__src[40] = v174;
    v175 = *(v94 + 7);
    *&__src[16] = v173;
    *&__src[56] = v175;
    if (v50 == 5)
    {
      sub_10023E010(v198, v28, *&v202[16], 0, v173, v261[0], 1, *&v213[16], v216, v233, v239[0], v197, v226, v231[0], v73);
      v176 = *&__src[56];
      if (!*&__src[56])
      {
        goto LABEL_284;
      }
    }

    else
    {
      sub_10023EA20(v198, v28, *&v202[16], 0, v173, v261[0], 1, *&v213[16], *&v174, v74, v75, v216, v233, v239[0], v197, v226, v231[0], v73);
      v176 = *&__src[56];
      if (!*&__src[56])
      {
LABEL_284:
        *&__src[56] = 0;
        memset(&__src[16], 0, 32);
        if (*&__src[4] >= 1)
        {
          v177 = 0;
          v178 = v259;
          do
          {
            *&v178[4 * v177++] = 0;
          }

          while (v177 < *&__src[4]);
        }

        if (v260 != v261)
        {
          j__free(v260);
        }

        if (*&v202[56] && atomic_fetch_add((*&v202[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v202);
        }

        *&v202[56] = 0;
        memset(&v202[16], 0, 32);
        if (*&v202[4] >= 1)
        {
          v179 = 0;
          v180 = v203;
          do
          {
            *&v180[4 * v179++] = 0;
          }

          while (v179 < *&v202[4]);
        }

        if (v204 != &v205)
        {
          j__free(v204);
        }

        if (*&v213[56] && atomic_fetch_add((*&v213[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v213);
        }

        *&v213[56] = 0;
        memset(&v213[16], 0, 32);
        if (*&v213[4] >= 1)
        {
          v181 = 0;
          v182 = v214;
          do
          {
            *&v182[4 * v181++] = 0;
          }

          while (v181 < *&v213[4]);
        }

        if (v215 != &v216)
        {
          j__free(v215);
        }

        goto LABEL_305;
      }
    }

    if (atomic_fetch_add((v176 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(__src);
    }

    goto LABEL_284;
  }

  if (v50 == 5)
  {
    v66 = sub_10027E5CC(v219, *v224, v28, v226, v231[0], v197);
  }

  else
  {
    v66 = sub_10027F0C4(v219, *v224, v28, v226, v231[0], v197);
  }

  if (!v66)
  {
    goto LABEL_223;
  }

LABEL_305:
  v101 = 1;
  v102 = *(&v221 + 1);
  if (*(&v221 + 1))
  {
    goto LABEL_306;
  }

LABEL_308:
  *(&v221 + 1) = 0;
  v219 = 0u;
  v220 = 0u;
  if (SDWORD1(v218) >= 1)
  {
    v183 = 0;
    v184 = v222;
    do
    {
      *&v184[4 * v183++] = 0;
    }

    while (v183 < SDWORD1(v218));
  }

  if (v223 != v224)
  {
    j__free(v223);
  }

  if (*(&v228 + 1) && atomic_fetch_add((*(&v228 + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v225);
  }

  *(&v228 + 1) = 0;
  v226 = 0u;
  v227 = 0u;
  if (SDWORD1(v225) >= 1)
  {
    v185 = 0;
    v186 = v229;
    do
    {
      *&v186[4 * v185++] = 0;
    }

    while (v185 < SDWORD1(v225));
  }

  if (v230 != v231)
  {
    j__free(v230);
  }

  if (v236 && atomic_fetch_add((v236 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v232);
  }

  v236 = 0;
  v233 = 0u;
  v234 = 0u;
  if (SDWORD1(v232) >= 1)
  {
    v187 = 0;
    v188 = v237;
    do
    {
      *&v188[4 * v187++] = 0;
    }

    while (v187 < SDWORD1(v232));
  }

  if (v238 != v239)
  {
    j__free(v238);
  }

  if (v262 != &v263 && v262 != 0)
  {
    operator delete[]();
  }

LABEL_334:
  if (v244 && atomic_fetch_add((v244 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v240);
  }

  v244 = 0;
  v241 = 0u;
  v242 = 0u;
  if (SDWORD1(v240) >= 1)
  {
    v190 = 0;
    v191 = v245;
    do
    {
      *&v191[4 * v190++] = 0;
    }

    while (v190 < SDWORD1(v240));
  }

  if (v246 != v247)
  {
    j__free(v246);
  }

  if (v252 && atomic_fetch_add((v252 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v248);
  }

  v252 = 0;
  v249 = 0u;
  v250 = 0u;
  if (SDWORD1(v248) >= 1)
  {
    v192 = 0;
    v193 = v253;
    do
    {
      *&v193[4 * v192++] = 0;
    }

    while (v192 < SDWORD1(v248));
  }

  if (v254 != v255)
  {
    j__free(v254);
  }

  if (v257)
  {
    sub_1002ACC1C(v256);
  }

  return v101;
}

void sub_10023DE24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

float *sub_10023E010(unsigned int a1, int a2, float32x4_t *a3, uint64_t a4, float *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, float32x4_t *a10, uint64_t a11, unsigned int a12, float *a13, unint64_t a14, uint64_t a15)
{
  v191 = a14 >> 2;
  if (a2 >= a1)
  {
    v20 = a1;
  }

  else
  {
    v20 = a2;
  }

  v177 = v20;
  if (a10)
  {
    v21 = a12;
  }

  else
  {
    v21 = a1;
  }

  if (a2 >= 1 && v21 >= 1)
  {
    v22 = a13;
    v23 = a2;
    do
    {
      bzero(v22, 4 * v21);
      v22 += v191;
      --v23;
    }

    while (v23);
  }

  v24 = v177;
  v25 = a10;
  v27 = a3;
  result = a13;
  if (v177 >= 1)
  {
    v28 = 0;
    v29 = (a6 >> 2);
    if (a4)
    {
      v30 = (a4 >> 2);
    }

    else
    {
      v30 = 1;
    }

    v31 = 0.0;
    if (v177 < 8)
    {
      goto LABEL_20;
    }

    if (v30 != 1)
    {
      goto LABEL_20;
    }

    v28 = v177 & 0x7FFFFFF8;
    v32 = a3 + 1;
    v33 = v28;
    do
    {
      v34 = v32[-1];
      v35 = vcvt_hight_f64_f32(v34);
      v36 = vcvtq_f64_f32(*v34.f32);
      v37 = vcvt_hight_f64_f32(*v32);
      v38 = vcvtq_f64_f32(*v32->f32);
      v31 = v31 + v36.f64[0] + v36.f64[1] + v35.f64[0] + v35.f64[1] + v38.f64[0] + v38.f64[1] + v37.f64[0] + v37.f64[1];
      v32 += 2;
      v33 -= 8;
    }

    while (v33);
    if (v28 != v177)
    {
LABEL_20:
      v39 = v177 - v28;
      v40 = &a3->f32[v30 * v28];
      do
      {
        v31 = v31 + *v40;
        v40 += v30;
        --v39;
      }

      while (v39);
    }

    v41 = (a11 >> 2);
    v42 = v31 * 4.4408921e-16;
    v43 = a1;
    if (a7)
    {
      v44 = 1;
    }

    else
    {
      v44 = (a6 >> 2);
    }

    if (!a7)
    {
      v29 = 1;
    }

    v45 = 4 * v29;
    v46 = 4 * v41;
    v47 = 4 * v44;
    v48 = 4 * (a9 >> 2);
    v49 = 4 * v191;
    v50 = a2;
    if (v21 == 1)
    {
      v51 = 0;
      v54 = v44 != 1 || v41 != 1 || a1 < 8;
      v55 = (a5 + 4);
      while (1)
      {
        v56 = a3->f32[v51 * v30];
        if (fabs(v56) > v42)
        {
          break;
        }

LABEL_38:
        ++v51;
        a5 = (a5 + v45);
        v55 = (v55 + v45);
        a8 += v48;
        if (v51 == v177)
        {
          return result;
        }
      }

      if (a10)
      {
        if (v54)
        {
          v57 = 0;
          v58 = 0.0;
        }

        else
        {
          v58 = 0.0;
          v59 = a1 & 0xFFFFFFF8;
          v60 = a10 + 1;
          v61 = v55;
          do
          {
            v62 = vmulq_f32(v61[-1], v60[-1]);
            v63 = vmulq_f32(*v61, *v60);
            v64 = vcvt_hight_f64_f32(v62);
            v65 = vcvtq_f64_f32(*v62.f32);
            v66 = vcvt_hight_f64_f32(v63);
            v67 = vcvtq_f64_f32(*v63.f32);
            v58 = v58 + v65.f64[0] + v65.f64[1] + v64.f64[0] + v64.f64[1] + v67.f64[0] + v67.f64[1] + v66.f64[0] + v66.f64[1];
            v61 += 2;
            v60 += 2;
            v59 -= 8;
          }

          while (v59);
          v57 = a1 & 0xFFFFFFF8;
          if (v57 == a1)
          {
            goto LABEL_49;
          }
        }

        v68 = a1 - v57;
        v69 = (a10->f32 + v46 * v57);
        v70 = v47 * v57;
        do
        {
          v58 = v58 + (*(a5 + v70) * *v69);
          v69 = (v69 + v46);
          v70 += v47;
          --v68;
        }

        while (v68);
      }

      else
      {
        v58 = *a5;
      }

LABEL_49:
      v71 = 0;
      v72 = 1.0 / v56 * v58;
      v73 = a13;
      do
      {
        v74 = *v73 + v72 * *(a8 + 4 * v71);
        *v73 = v74;
        ++v71;
        v73 = (v73 + v49);
      }

      while (a2 != v71);
      goto LABEL_38;
    }

    v75 = 0;
    v76 = ((a15 + 7) & 0xFFFFFFFFFFFFFFF8);
    v77 = (v21 - 4);
    v78 = (v77 & 0xFFFFFFFC) + 4;
    v79 = (v77 & 0xFFFFFFFC) + 5;
    if (v79 <= v21)
    {
      v79 = v21;
    }

    v80 = v79 - (v77 & 0xFFFFFFFC) - 4;
    v81 = v77 >> 2;
    v82 = (v77 >> 2) + 1;
    v192 = v82 & 0x7FFFFFFC;
    v185 = v80 & 0xFFFFFFFFFFFFFFF8;
    v180 = v78 + (v80 & 0xFFFFFFFFFFFFFFF8);
    v184 = v79 & 3;
    v83 = v82 & 0x7FFFFFFE;
    v190 = 4 * v83;
    v183 = v80 - v184;
    v182 = v78 + v80 - v184;
    v85 = v43 < 8 || v44 != 1;
    v170 = v85;
    v86 = 4 * v81;
    v87 = &a10[v81 + 2];
    v88 = &v76[4 * v81];
    v179 = (v88 + 8);
    v168 = v87;
    v187 = (a5 + 4);
    v181 = (v88 + 6);
    v171 = &a13[v86 + 6];
    v174 = v43;
    v175 = v30;
    v173 = v45;
    v169 = v44;
    v172 = v80;
    v186 = v82 & 0x7FFFFFFE;
    do
    {
      v89 = v27->f32[v75 * v30];
      if (fabs(v89) > v42)
      {
        v90 = 1.0 / v89;
        if (v25)
        {
          if (v21 > 0)
          {
            v176 = 1.0 / v89;
            bzero(v76, 8 * v21);
            if (v21 < 4)
            {
              v91 = *v76;
              v92 = &a10->f32[2];
              v93 = a5;
              v94 = v174;
              v30 = v175;
              v25 = a10;
              v27 = a3;
              result = a13;
              v24 = v177;
              v48 = 4 * (a9 >> 2);
              v45 = v173;
              v80 = v172;
              v78 = (v77 & 0xFFFFFFFC) + 4;
              v82 = (v77 >> 2) + 1;
              v83 = v186;
              do
              {
                v95 = *v93;
                v96 = *(v92 - 2);
                v76[1] = v76[1] + (*v93 * *(v92 - 1));
                if (v21 != 2)
                {
                  v76[2] = v76[2] + (v95 * *v92);
                }

                v91 = v91 + (v95 * v96);
                v93 = (v93 + v47);
                v92 = (v92 + v46);
                --v94;
              }

              while (v94);
              *v76 = v91;
LABEL_90:
              if (v21 >= 4)
              {
                v126 = v21 & 0x7FFFFFFC;
                v127 = (v76 + 2);
                do
                {
                  v128 = vmulq_n_f64(*v127, v176);
                  v127[-1] = vmulq_n_f64(v127[-1], v176);
                  *v127 = v128;
                  v127 += 2;
                  v126 -= 4;
                }

                while (v126);
                v125 = v21 & 0x7FFFFFFC;
                if (v125 == v21)
                {
                  goto LABEL_103;
                }
              }

              else
              {
                v125 = 0;
              }

              v129 = v21 - v125;
              v130 = &v76[v125];
              do
              {
                *v130 = v176 * *v130;
                ++v130;
                --v129;
              }

              while (v129);
              goto LABEL_103;
            }

            v98 = 0;
            v99 = v168;
            v25 = a10;
            v27 = a3;
            v100 = a10;
            result = a13;
            v24 = v177;
            v30 = v175;
            v48 = 4 * (a9 >> 2);
            v45 = v173;
            v80 = v172;
            v78 = (v77 & 0xFFFFFFFC) + 4;
            v82 = (v77 >> 2) + 1;
            v83 = v186;
            while (2)
            {
              v101 = a5[v98 * v169];
              if (v77 <= 0xB)
              {
                v102 = 0;
                goto LABEL_80;
              }

              v103 = v192;
              v104 = v100;
              v105 = ((a15 + 7) & 0xFFFFFFFFFFFFFFF8);
              do
              {
                v106 = v105;
                v195 = vld4q_f64(v106);
                v106 += 8;
                v196 = vld4q_f64(v106);
                v198 = vld4q_f32(v104);
                v104 += 16;
                v107 = vmulq_n_f32(v198.val[0], v101);
                v108 = vcvtq_f64_f32(*v107.f32);
                v199.val[0] = vaddq_f64(v196.val[0], vcvt_hight_f64_f32(v107));
                v109 = vmulq_n_f32(v198.val[1], v101);
                v199.val[1] = vaddq_f64(v196.val[1], vcvt_hight_f64_f32(v109));
                v110 = vmulq_n_f32(v198.val[2], v101);
                v199.val[2] = vaddq_f64(v196.val[2], vcvt_hight_f64_f32(v110));
                v198.val[0] = vmulq_n_f32(v198.val[3], v101);
                v199.val[3] = vaddq_f64(v196.val[3], vcvt_hight_f64_f32(v198.val[0]));
                v196.val[0] = vaddq_f64(v195.val[0], v108);
                v196.val[1] = vaddq_f64(v195.val[1], vcvtq_f64_f32(*v109.f32));
                v196.val[2] = vaddq_f64(v195.val[2], vcvtq_f64_f32(*v110.f32));
                v196.val[3] = vaddq_f64(v195.val[3], vcvtq_f64_f32(*v198.val[0].f32));
                vst4q_f64(v105, v196);
                vst4q_f64(v106, v199);
                v105 += 16;
                v103 -= 4;
              }

              while (v103);
              v102 = 4 * v192;
              v83 = v186;
              if ((v77 >> 2) + 1 != v192)
              {
LABEL_80:
                v111 = &v100[v102];
                v112 = &v76[v102 + 2];
                do
                {
                  v113 = *v111;
                  v114 = v111[1];
                  v111 += 2;
                  v115 = vaddq_f64(*v112, vcvtq_f64_f32(vmul_n_f32(v114, v101)));
                  v112[-1] = vaddq_f64(v112[-1], vcvtq_f64_f32(vmul_n_f32(v113, v101)));
                  *v112 = v115;
                  v102 += 4;
                  v112 += 2;
                }

                while (v102 <= v77);
              }

              if (v21 > v102)
              {
                v116 = (v77 & 0xFFFFFFFC) + 4;
                if (v172 <= 7)
                {
                  goto LABEL_126;
                }

                v117 = v179;
                v118 = v99;
                v119 = v185;
                do
                {
                  v120 = vmulq_n_f32(v118[-1], v101);
                  v121 = vmulq_n_f32(*v118, v101);
                  v122 = vaddq_f64(v117[-1], vcvt_hight_f64_f32(v120));
                  v123 = vaddq_f64(*v117, vcvtq_f64_f32(*v121.f32));
                  v124 = vaddq_f64(v117[1], vcvt_hight_f64_f32(v121));
                  v117[-2] = vaddq_f64(v117[-2], vcvtq_f64_f32(*v120.f32));
                  v117[-1] = v122;
                  *v117 = v123;
                  v117[1] = v124;
                  v117 += 4;
                  v118 += 2;
                  v119 -= 8;
                }

                while (v119);
                v116 = v180;
                if (v172 != v185)
                {
LABEL_126:
                  do
                  {
                    v76[v116] = v76[v116] + (v101 * v100[v116]);
                    ++v116;
                  }

                  while (v116 < v21);
                }
              }

              ++v98;
              v100 = (v100 + v46);
              v99 = (v99 + v46);
              if (v98 == v174)
              {
                goto LABEL_90;
              }

              continue;
            }
          }
        }

        else if (v21 >= 1)
        {
          if (v170)
          {
            v97 = 0;
            goto LABEL_101;
          }

          v131 = v21 & 0x7FFFFFF8;
          v132 = (v76 + 4);
          v133 = v187;
          do
          {
            v134 = v133[-1];
            v135 = vcvt_hight_f64_f32(*v133);
            v136 = vmulq_n_f64(vcvtq_f64_f32(*v133->f32), v90);
            v132[-2] = vmulq_n_f64(vcvtq_f64_f32(*v134.f32), v90);
            v132[-1] = vmulq_n_f64(vcvt_hight_f64_f32(v134), v90);
            *v132 = v136;
            v132[1] = vmulq_n_f64(v135, v90);
            v132 += 4;
            v133 += 2;
            v131 -= 8;
          }

          while (v131);
          v97 = v21 & 0x7FFFFFF8;
          if (v97 != v21)
          {
LABEL_101:
            v137 = v21 - v97;
            v138 = &v76[v97];
            v139 = v47 * v97;
            do
            {
              *v138++ = v90 * *(a5 + v139);
              v139 += v47;
              --v137;
            }

            while (v137);
          }

LABEL_103:
          if (v21 < 4)
          {
            v140 = 0;
            v141 = *v76;
            v142 = a13 + 2;
            do
            {
              v143 = *(a8 + 4 * v140);
              v144 = *(v142 - 2) + v143 * v141;
              v145 = *(v142 - 1) + v143 * v76[1];
              *(v142 - 2) = v144;
              *(v142 - 1) = v145;
              if (v21 != 2)
              {
                v146 = *v142 + v143 * v76[2];
                *v142 = v146;
              }

              ++v140;
              v142 = (v142 + v49);
            }

            while (v50 != v140);
            goto LABEL_61;
          }

          v147 = 0;
          v148 = v171;
          v149 = result;
          while (2)
          {
            *&v150 = *(a8 + 4 * v147);
            if (v77 <= 3)
            {
              v151 = 0;
              goto LABEL_115;
            }

            v152 = vdupq_lane_s64(v150, 0);
            v153 = v83;
            v154 = ((a15 + 7) & 0xFFFFFFFFFFFFFFF8);
            v155 = v149;
            do
            {
              v193 = vld4_f32(v155);
              v197 = vld4q_f64(v154);
              v154 += 8;
              v194.val[0] = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(v193.val[0]), v197.val[0], v152));
              v194.val[1] = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(v193.val[1]), v197.val[1], v152));
              v194.val[2] = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(v193.val[2]), v197.val[2], v152));
              v194.val[3] = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(v193.val[3]), v197.val[3], v152));
              vst4_f32(v155, v194);
              v155 += 8;
              v153 -= 2;
            }

            while (v153);
            v151 = v190;
            if (v82 != v83)
            {
LABEL_115:
              v156 = vdupq_lane_s64(v150, 0);
              v157 = v151;
              v158 = &v76[v151];
              do
              {
                v159 = *v158;
                v160 = v158[1];
                v158 += 2;
                *&v149[v157] = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*&v149[v157]), v159, v156)), vmlaq_f64(vcvt_hight_f64_f32(*&v149[v157]), v160, v156));
                v151 += 4;
                v157 += 4;
              }

              while (v151 <= v77);
            }

            if (v21 > v151)
            {
              v161 = v78;
              if (v80 <= 3)
              {
                goto LABEL_127;
              }

              v162 = vdupq_lane_s64(v150, 0);
              v163 = v148;
              v164 = v181;
              v165 = v183;
              do
              {
                v166 = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*v163), *v164, v162));
                v163[-1] = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(v163[-1]), v164[-1], v162));
                *v163 = v166;
                v164 += 2;
                v163 += 2;
                v165 -= 4;
              }

              while (v165);
              v161 = v182;
              if (v184)
              {
LABEL_127:
                do
                {
                  v167 = v149[v161] + *&v150 * v76[v161];
                  v149[v161++] = v167;
                }

                while (v161 < v21);
              }
            }

            ++v147;
            v149 = (v149 + v49);
            v148 = (v148 + v49);
            if (v147 == v50)
            {
              break;
            }

            continue;
          }
        }
      }

LABEL_61:
      ++v75;
      a5 = (a5 + v45);
      a8 += v48;
      v187 = (v187 + v45);
    }

    while (v75 != v24);
  }

  return result;
}

void sub_10023EA20(unsigned int a1, int a2, __n128 *a3, uint64_t a4, double *a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, float64x2_t a11, uint64_t a12, float64x2_t *a13, uint64_t a14, unsigned int a15, double *a16, unint64_t a17, uint64_t a18)
{
  v210 = a17 >> 3;
  if (a2 >= a1)
  {
    v22 = a1;
  }

  else
  {
    v22 = a2;
  }

  v198 = v22;
  if (a13)
  {
    v24 = a15;
  }

  else
  {
    v24 = a1;
  }

  if (a2 >= 1 && v24 >= 1)
  {
    v25 = a16;
    v26 = a2;
    do
    {
      bzero(v25, 8 * v24);
      v25 += v210;
      --v26;
    }

    while (v26);
  }

  v27 = a3;
  if (v198 < 1)
  {
    return;
  }

  v28 = 0;
  v29 = (a6 >> 3);
  if (a4)
  {
    v30 = (a4 >> 3);
  }

  else
  {
    v30 = 1;
  }

  v31 = 0.0;
  if (v198 < 4)
  {
    goto LABEL_20;
  }

  if (v30 != 1)
  {
    goto LABEL_20;
  }

  v28 = v198 & 0x7FFFFFFC;
  v32 = a3 + 1;
  v33 = v28;
  do
  {
    a11 = *v32;
    v31 = v31 + v32[-1].n128_f64[0] + v32[-1].n128_f64[1] + v32->n128_f64[0] + v32->n128_f64[1];
    v32 += 2;
    v33 -= 4;
  }

  while (v33);
  if (v28 != v198)
  {
LABEL_20:
    v34 = v198 - v28;
    v35 = &a3->n128_f64[v30 * v28];
    do
    {
      v31 = v31 + *v35;
      v35 += v30;
      --v34;
    }

    while (v34);
  }

  v36 = (a14 >> 3);
  v37 = v31 * 4.4408921e-16;
  if (a7)
  {
    v38 = 1;
  }

  else
  {
    v38 = (a6 >> 3);
  }

  v39 = v210;
  if (!a7)
  {
    v29 = 1;
  }

  v40 = (a12 >> 3);
  v41 = a2;
  if (v24 != 1)
  {
    v65 = 0;
    v66 = ((a18 + 7) & 0xFFFFFFFFFFFFFFF8);
    v67 = (v24 - 4);
    v211 = v210 << 32;
    v68 = v67 & 0xFFFFFFFC;
    v69 = ((8 * v67) & 0x7FFFFFFE0) + 32;
    v70 = a16 + v69;
    v71 = (v41 + 0x1FFFFFFFFFFFFFFFLL) * v39;
    v208 = a1;
    v72 = v68 + 5;
    if (v68 + 5 <= v24)
    {
      v72 = v24;
    }

    v73 = &a16[v71 + v72];
    v74 = v66 + v69;
    v187 = v38;
    v75 = &v66[v72];
    v76 = v72 - v68 - 4;
    v77 = &a16[v71 + 4 + v68];
    v199 = v39;
    v78 = (v67 >> 2) + 1;
    v193 = 8 * v29;
    v194 = v30;
    v185 = -8 * v29;
    v186 = v66 - a5;
    v79 = 32 * (v67 >> 2);
    v80 = v36 * (a1 + 0x1FFFFFFFFFFFFFFFLL);
    v192 = a1;
    v81 = &a13->f64[v80 + v72];
    v82 = &a13[2].f64[v80 + v68];
    v83 = v67 < 4;
    v85 = v82 > v66 && v74 > a13;
    v86 = v76 < 4;
    v88 = &v66[v79 / 8 + 4] < v81 && &a13[v79 / 0x10 + 2] < v75;
    if (v36 < 0)
    {
      v85 = 1;
    }

    v89 = v78 & 0x7FFFFFFE;
    v90 = v36 < 0 || v88;
    v91 = v72 & 3;
    v92 = v76 - v91;
    v93 = (v67 & 0xFFFFFFFC) + 4;
    v94 = a16;
    v95 = a13;
    v202 = v93 + v92;
    v195 = v24 & 0x7FFFFFFC;
    v97 = v74 > a16 && v77 > v66;
    v98 = v211 < 0;
    v100 = v70 < v75 && v74 < v73;
    v205 = v83 || v85;
    v200 = v86 | v90;
    v101 = v198;
    v103 = v208 < 4 || v187 != 1;
    v184 = v103;
    v209 = v83 || v98 || v97;
    v204 = v86 || v98 || v100;
    v104 = 8 * v36;
    v183 = &a13[v79 / 0x10 + 3];
    v201 = &v66[v79 / 8 + 6];
    v212 = 8 * v187;
    v105 = 4 * (v78 & 0x7FFFFFFE);
    v203 = (a5 + 2);
    v106 = 8 * v199;
    v188 = &a16[v79 / 8 + 6];
    v107 = v193;
    v190 = v91;
    v191 = v105;
    v189 = v92;
    while (1)
    {
      v108 = v27->n128_f64[v65 * v30];
      if (fabs(v108) > v37)
      {
        a11.f64[0] = 1.0 / v108;
        if (v95)
        {
          if (v24 > 0)
          {
            v196 = a11;
            bzero(v66, 8 * v24);
            if (v24 < 4)
            {
              v109 = *v66;
              f64 = a13[1].f64;
              v111 = a5;
              v112 = v192;
              v27 = a3;
              v101 = v198;
              v94 = a16;
              v95 = a13;
              v30 = v194;
              v78 = (v67 >> 2) + 1;
              v93 = (v67 & 0xFFFFFFFC) + 4;
              v91 = v190;
              v105 = v191;
              v92 = v189;
              do
              {
                v113 = *v111;
                v109 = v109 + *v111 * *(f64 - 2);
                *v66 = v109;
                v66[1] = v66[1] + v113 * *(f64 - 1);
                if (v24 != 2)
                {
                  v66[2] = v66[2] + v113 * *f64;
                }

                v111 = (v111 + v212);
                f64 = (f64 + v104);
                --v112;
              }

              while (v112);
LABEL_119:
              if (v24 >= 4)
              {
                v139 = v24 & 0x7FFFFFFC;
                v140 = (v66 + 2);
                v107 = v193;
                a11 = v196;
                do
                {
                  v141 = vmulq_n_f64(*v140, v196.n128_f64[0]);
                  v140[-1] = vmulq_n_f64(v140[-1], v196.n128_f64[0]);
                  *v140 = v141;
                  v140 += 2;
                  v139 -= 4;
                }

                while (v139);
                v138 = v24 & 0x7FFFFFFC;
                if (v195 == v24)
                {
                  goto LABEL_132;
                }
              }

              else
              {
                v138 = 0;
                v107 = v193;
                a11 = v196;
              }

              v142 = v24 - v138;
              v143 = &v66[v138];
              do
              {
                *v143 = a11.f64[0] * *v143;
                ++v143;
                --v142;
              }

              while (v142);
              goto LABEL_132;
            }

            v116 = 0;
            v117 = v183;
            v94 = a16;
            v95 = a13;
            v118 = a13;
            v27 = a3;
            v101 = v198;
            v30 = v194;
            v78 = (v67 >> 2) + 1;
            v93 = (v67 & 0xFFFFFFFC) + 4;
            v91 = v190;
            v105 = v191;
            v92 = v189;
            while (2)
            {
              v119 = *&a5[v116 * v187];
              if (v205)
              {
                v120 = 0;
                goto LABEL_110;
              }

              v121 = 0;
              v122 = vdupq_lane_s64(v119, 0);
              v123 = v89;
              do
              {
                v124 = &v66[v121 / 8];
                v125 = vmlaq_f64(*&v66[v121 / 8 + 6], v118[v121 / 0x10 + 3], v122);
                v126 = vmlaq_f64(*&v66[v121 / 8 + 2], v118[v121 / 0x10 + 1], v122);
                v127 = vmlaq_f64(*&v66[v121 / 8 + 4], v118[v121 / 0x10 + 2], v122);
                *v124 = vmlaq_f64(*&v66[v121 / 8], v118[v121 / 0x10], v122);
                v124[1] = v126;
                v124[2] = v127;
                v124[3] = v125;
                v121 += 64;
                v123 -= 2;
              }

              while (v123);
              v120 = v191;
              if ((v67 >> 2) + 1 != v89)
              {
LABEL_110:
                v128 = vdupq_lane_s64(v119, 0);
                v129 = v120;
                do
                {
                  v130 = &v66[v129];
                  v131 = *&v66[v129 + 2];
                  *v130 = vmlaq_f64(*&v66[v129], *(v118 + v129 * 8), v128);
                  v130[1] = vmlaq_f64(v131, *(v118 + v129 * 8 + 16), v128);
                  v120 += 4;
                  v129 += 4;
                }

                while (v120 <= v67);
              }

              if (v24 > v120)
              {
                v132 = (v67 & 0xFFFFFFFC) + 4;
                if (v200)
                {
                  goto LABEL_161;
                }

                v133 = vdupq_lane_s64(v119, 0);
                v134 = v201;
                v135 = v117;
                v136 = v189;
                do
                {
                  v137 = vmlaq_f64(*v134, *v135, v133);
                  v134[-1] = vmlaq_f64(v134[-1], v135[-1], v133);
                  *v134 = v137;
                  v135 += 2;
                  v134 += 2;
                  v136 -= 4;
                }

                while (v136);
                v132 = v202;
                if (v190)
                {
LABEL_161:
                  do
                  {
                    v66[v132] = v66[v132] + *&v119 * v118->f64[v132];
                    ++v132;
                  }

                  while (v132 < v24);
                }
              }

              ++v116;
              v118 = (v118 + v104);
              v117 = (v117 + v104);
              if (v116 == v192)
              {
                goto LABEL_119;
              }

              continue;
            }
          }
        }

        else if (v24 >= 1)
        {
          v114 = v184;
          if ((v186 + v185 * v65) < 0x20)
          {
            v114 = 1;
          }

          if (v114)
          {
            v115 = 0;
            goto LABEL_130;
          }

          v144 = v24 & 0x7FFFFFFC;
          v145 = (v66 + 2);
          v146 = v203;
          do
          {
            v147 = vmulq_n_f64(*v146, a11.f64[0]);
            v145[-1] = vmulq_n_f64(v146[-1], a11.f64[0]);
            *v145 = v147;
            v146 += 2;
            v145 += 2;
            v144 -= 4;
          }

          while (v144);
          v115 = v24 & 0x7FFFFFFC;
          if (v195 != v24)
          {
LABEL_130:
            v148 = v24 - v115;
            v149 = &v66[v115];
            v150 = v212 * v115;
            do
            {
              *v149++ = a11.f64[0] * *(a5 + v150);
              v150 += v212;
              --v148;
            }

            while (v148);
          }

LABEL_132:
          if (v24 < 4)
          {
            v151 = 0;
            v152 = a16 + 2;
            do
            {
              v153 = *(a8 + 8 * v151);
              v154 = *(v152 - 1);
              *(v152 - 2) = *(v152 - 2) + v153 * *v66;
              *(v152 - 1) = v154 + v153 * v66[1];
              if (v24 != 2)
              {
                *v152 = *v152 + v153 * v66[2];
              }

              ++v151;
              v152 = (v152 + v106);
            }

            while (v41 != v151);
            goto LABEL_89;
          }

          v155 = 0;
          v156 = v188;
          v157 = a16 + 2;
          v158 = v94;
          while (2)
          {
            v159 = *(a8 + 8 * v155);
            if (v209)
            {
              v160 = 0;
              goto LABEL_144;
            }

            v161 = 0;
            v162 = vdupq_lane_s64(v159, 0);
            v163 = v89;
            do
            {
              v164 = &v158[v161];
              v165 = vmlaq_f64(*&v158[v161 + 6], *&v66[v161 + 6], v162);
              v166 = vmlaq_f64(*&v158[v161 + 2], *&v66[v161 + 2], v162);
              a11 = vmlaq_f64(*&v158[v161], *&v66[v161], v162);
              v167 = vmlaq_f64(*&v158[v161 + 4], *&v66[v161 + 4], v162);
              *v164 = a11;
              v164[1] = v166;
              v164[2] = v167;
              v164[3] = v165;
              v161 += 8;
              v163 -= 2;
            }

            while (v163);
            v160 = v105;
            if (v78 != v89)
            {
LABEL_144:
              v168 = vdupq_lane_s64(v159, 0);
              v169 = &v66[v160 + 2];
              v170 = &v157[v160];
              do
              {
                v171 = *v170;
                v170[-1] = vmlaq_f64(v170[-1], v169[-1], v168);
                v172 = *v169;
                v169 += 2;
                a11.f64[1] = v172.f64[1];
                *v170 = vmlaq_f64(v171, v172, v168);
                v170 += 2;
                v160 += 4;
              }

              while (v160 <= v67);
            }

            if (v24 > v160)
            {
              v173 = v93;
              if (v204)
              {
                goto LABEL_162;
              }

              v174 = vdupq_lane_s64(v159, 0);
              v175 = v156;
              v176 = v201;
              v177 = v92;
              do
              {
                a11 = vmlaq_f64(v175[-1], v176[-1], v174);
                v178 = vmlaq_f64(*v175, *v176, v174);
                v175[-1] = a11;
                *v175 = v178;
                v176 += 2;
                v175 += 2;
                v177 -= 4;
              }

              while (v177);
              v173 = v202;
              if (v91)
              {
LABEL_162:
                do
                {
                  v158[v173] = v158[v173] + *&v159 * v66[v173];
                  ++v173;
                }

                while (v173 < v24);
              }
            }

            ++v155;
            v158 = (v158 + v106);
            v157 = (v157 + v106);
            v156 = (v156 + v106);
            if (v155 == v41)
            {
              break;
            }

            continue;
          }
        }
      }

LABEL_89:
      ++v65;
      a5 = (a5 + v107);
      a8 += 8 * (a12 >> 3);
      v203 = (v203 + v107);
      if (v65 == v101)
      {
        return;
      }
    }
  }

  v42 = 0;
  if (a13)
  {
    v43 = v38 == 1 && v36 == 1;
    v44 = 8 * v29;
    v46 = !v43 || a1 < 6;
    v47 = (a5 + 2);
    v48 = 8 * v36;
    v49 = 8 * v38;
    v50 = 8 * v40;
    while (1)
    {
      v51 = a3->n128_f64[v42 * v30];
      if (fabs(v51) > v37)
      {
        break;
      }

LABEL_39:
      ++v42;
      v47 = (v47 + v44);
      a5 = (a5 + v44);
      a8 += v50;
      if (v42 == v198)
      {
        return;
      }
    }

    if (v46)
    {
      v52 = 0;
      v53 = 0.0;
    }

    else
    {
      v53 = 0.0;
      v54 = a1 & 0xFFFFFFFC;
      v55 = a13 + 1;
      v56 = v47;
      do
      {
        v57 = vmulq_f64(v56[-1], v55[-1]);
        v58 = vmulq_f64(*v56, *v55);
        v53 = v53 + v57.f64[0] + v57.f64[1] + v58.f64[0] + v58.f64[1];
        v56 += 2;
        v55 += 2;
        v54 -= 4;
      }

      while (v54);
      v52 = a1 & 0xFFFFFFFC;
      if (v52 == a1)
      {
        goto LABEL_48;
      }
    }

    v59 = a1 - v52;
    v60 = (a13->f64 + v48 * v52);
    v61 = v49 * v52;
    do
    {
      v53 = v53 + *(a5 + v61) * *v60;
      v60 = (v60 + v48);
      v61 += v49;
      --v59;
    }

    while (v59);
LABEL_48:
    v62 = 0;
    v63 = 1.0 / v51 * v53;
    v64 = a16;
    do
    {
      *v64 = *v64 + v63 * *(a8 + 8 * v62++);
      v64 += v210;
    }

    while (a2 != v62);
    goto LABEL_39;
  }

  do
  {
    v179 = a3->n128_f64[v42 * v30];
    if (fabs(v179) > v37)
    {
      v180 = 0;
      v181 = 1.0 / v179 * *a5;
      v182 = a16;
      do
      {
        *v182 = *v182 + v181 * *(a8 + 8 * v180++);
        v182 += v210;
      }

      while (a2 != v180);
    }

    ++v42;
    a5 += v29;
    a8 += 8 * v40;
  }

  while (v42 != v198);
}

void sub_10023F480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (sub_100271148(a1) == 0x10000)
  {
    v10 = *(a1 + 8);
    v11 = *v10;
    v12 = *(v10 + 16);
    v89 = *v10;
    v90 = v12;
    v91 = *(v10 + 32);
    v13 = *(v10 + 56);
    v92 = *(v10 + 48);
    v93 = v13;
    v94 = &v89 + 8;
    v95 = v96;
    v96[1] = 0;
    v96[0] = 0;
    if (v13)
    {
      atomic_fetch_add((v13 + 20), 1u);
      if (*(v10 + 4) <= 2)
      {
LABEL_4:
        v14 = *(v10 + 72);
        v15 = v95;
        *v95 = *v14;
        v15[1] = v14[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v11) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v89) = 0;
    sub_100269B58(&v89, v10);
  }

  else
  {
    sub_1002703C0(a1, -1, &v89);
  }

LABEL_8:
  v16 = HIDWORD(v89);
  v17 = DWORD2(v89);
  v18 = v89;
  v53 = sub_1002769C0(a3) || sub_1002769C0(a4);
  v19 = v18 & 0xFFF;
  if (v19 - 5 >= 2)
  {
    v98 = 0;
    v97 = 0;
    qmemcpy(sub_1002A80E0(&v97, 22), "type == 5 || type == 6", 22);
    sub_1002A8980(-215, &v97, "_SVDcompute", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/lapack.cpp", 1473);
  }

  if ((a5 & 2) != 0)
  {
    sub_100274CEC(a3);
    sub_100274CEC(a4);
    v52 = v16;
    v53 = 0;
    if (v17 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v17;
    }

    if (v17 >= v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = v17;
    }

    v22 = v21;
    v23 = DWORD1(v89);
    v50 = a3;
    v51 = a4;
    v49 = a2;
    if (SDWORD1(v89) >= 1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v17 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v17;
    }

    if (v17 >= v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = v17;
    }

    if ((a5 & 4) != 0)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    v23 = DWORD1(v89);
    v50 = a3;
    v51 = a4;
    v49 = a2;
    v52 = v16;
    if (SDWORD1(v89) >= 1)
    {
LABEL_24:
      v24 = *(v95 + v23 - 1);
      goto LABEL_33;
    }
  }

  v24 = 0;
LABEL_33:
  v25 = (v24 * v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = v24 * v21;
  v27 = v25 * v22;
  v97 = v99;
  v98 = v26 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF0) * v21 + v27 + 32;
  if (v98 >= 0x409)
  {
    operator new[]();
  }

  sub_10000A690(v81, v21, v20, v19, v99, v25);
  v28 = &v99[v27];
  sub_10000A690(v73, v21, 1, v19, v28, 0);
  sub_10000A690(v65, v22, v20, v19, v99, v25);
  *v61 = 1124007936;
  memset(&v61[4], 0, 60);
  v62 = &v61[8];
  v63 = v64;
  v64[0] = 0;
  v64[1] = 0;
  if (v53)
  {
    sub_10000A690(v57, v21, v21, v19, &v28[v26 + 15] & 0xFFFFFFFFFFFFFFF0, (v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (*&v61[56] && atomic_fetch_add((*&v61[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v61);
    }

    if (*&v61[4] >= 1)
    {
      v29 = 0;
      v30 = v62;
      do
      {
        *&v30[4 * v29++] = 0;
      }

      while (v29 < *&v61[4]);
    }

    *v61 = *v57;
    *&v61[16] = *&v57[16];
    *&v61[32] = *&v57[32];
    *&v61[48] = *&v57[48];
    v31 = v63;
    if (v63 == v64)
    {
      v32 = v59;
      if (*&v57[4] <= 2)
      {
        goto LABEL_44;
      }
    }

    else
    {
      j__free(v63);
      v62 = &v61[8];
      v63 = v64;
      v31 = v64;
      v32 = v59;
      if (*&v57[4] <= 2)
      {
LABEL_44:
        *v31 = *v32;
        v31[1] = v32[1];
        goto LABEL_47;
      }
    }

    v62 = v58;
    v63 = v32;
    v58 = &v57[8];
    v59 = v60;
LABEL_47:
    *v57 = 1124007936;
    memset(&v57[4], 0, 60);
    if (v59 != v60)
    {
      j__free(v59);
    }
  }

  if (v22 > v21)
  {
    memset(v57, 0, 32);
    sub_10022CAFC(v65, v57);
  }

  if (v17 >= v52)
  {
    *v57 = 16842752;
    *&v57[8] = &v89;
    *&v57[16] = 0;
    v54 = 33619968;
    v55 = v81;
    v56 = 0;
    sub_10026EF8C(v57, &v54);
  }

  else
  {
    *v57 = 33619968;
    *&v57[8] = v81;
    *&v57[16] = 0;
    sub_10022B754(&v89, v57);
  }

  if (v19 == 5)
  {
    if (*&v61[16])
    {
      if (v53)
      {
        v33 = v22;
      }

      else
      {
        v33 = 0;
      }

      if (v33 >= 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = v21;
      }

      sub_10023762C(v83, v72, v75, *&v61[16], v64[0], v20, v21, v34, 1.17549435e-38, 0.00000023842);
    }

    else
    {
      sub_10023762C(v83, v72, v75, 0, v64[0], v20, v21, 0, 1.17549435e-38, 0.00000023842);
    }
  }

  else if (*&v61[16])
  {
    if (v53)
    {
      v35 = v22;
    }

    else
    {
      v35 = 0;
    }

    if (v35 >= 0)
    {
      v36 = v35;
    }

    else
    {
      v36 = v21;
    }

    sub_100238A20(v83, v72, v75, *&v61[16], v64[0], v20, v21, v36, 2.22507386e-308, 2.22044605e-15);
  }

  else
  {
    sub_100238A20(v83, v72, v75, 0, v64[0], v20, v21, 0, 2.22507386e-308, 2.22044605e-15);
  }

  sub_10022B754(v73, v49);
  if (v53)
  {
    if (v17 >= v52)
    {
      if (sub_1002769C0(v50))
      {
        *v57 = 16842752;
        *&v57[8] = v65;
        *&v57[16] = 0;
        sub_10026EF8C(v57, v50);
      }

      if (sub_1002769C0(v51))
      {
        v37 = v61;
        goto LABEL_83;
      }
    }

    else
    {
      if (sub_1002769C0(v50))
      {
        *v57 = 16842752;
        *&v57[8] = v61;
        *&v57[16] = 0;
        sub_10026EF8C(v57, v50);
      }

      if (sub_1002769C0(v51))
      {
        v37 = v65;
LABEL_83:
        sub_10022B754(v37, v51);
      }
    }
  }

  if (*&v61[56] && atomic_fetch_add((*&v61[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v61);
  }

  *&v61[56] = 0;
  memset(&v61[16], 0, 32);
  if (*&v61[4] >= 1)
  {
    v38 = 0;
    v39 = v62;
    do
    {
      *&v39[4 * v38++] = 0;
    }

    while (v38 < *&v61[4]);
  }

  if (v63 != v64)
  {
    j__free(v63);
  }

  if (v69 && atomic_fetch_add((v69 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v65);
  }

  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  if (v66 >= 1)
  {
    v40 = 0;
    v41 = v70;
    do
    {
      *(v41 + 4 * v40++) = 0;
    }

    while (v40 < v66);
  }

  if (v71 != &v72)
  {
    j__free(v71);
  }

  if (v77 && atomic_fetch_add((v77 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v73);
  }

  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  if (v74 >= 1)
  {
    v42 = 0;
    v43 = v78;
    do
    {
      *(v43 + 4 * v42++) = 0;
    }

    while (v42 < v74);
  }

  if (v79 != &v80)
  {
    j__free(v79);
  }

  if (v85 && atomic_fetch_add((v85 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v81);
  }

  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  if (v82 >= 1)
  {
    v44 = 0;
    v45 = v86;
    do
    {
      *(v45 + 4 * v44++) = 0;
    }

    while (v44 < v82);
  }

  if (v87 != &v88)
  {
    j__free(v87);
  }

  if (v97 != v99 && v97 != 0)
  {
    operator delete[]();
  }

  if (v93 && atomic_fetch_add((v93 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v89);
  }

  v93 = 0;
  v90 = 0u;
  v91 = 0u;
  if (SDWORD1(v89) >= 1)
  {
    v47 = 0;
    v48 = v94;
    do
    {
      *&v48[4 * v47++] = 0;
    }

    while (v47 < SDWORD1(v89));
  }

  if (v95 != v96)
  {
    j__free(v95);
  }
}

void sub_10023FD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100006D14(&a29);
  sub_100006D14(&a41);
  sub_100006D14(&a53);
  sub_100006D14(&a65);
  if (STACK[0x280] != a12)
  {
    if (STACK[0x280])
    {
      operator delete[]();
    }
  }

  sub_100006D14(&STACK[0x220]);
  _Unwind_Resume(a1);
}

uint64_t sub_10023FE74(uint64_t a1, unint64_t a2, uint64_t a3, _DWORD *a4, unint64_t a5, unsigned int a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12)
{
  v176 = a5;
  v13 = a4;
  if (a4)
  {
    if (a6 < 1)
    {
      return 1;
    }

    v171 = a7;
    v173 = a2;
    v169 = a5 >> 2;
    v16 = a5 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = (a5 & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v18 = a4;
    v19 = a6;
    do
    {
      bzero(v18, 4 * a6);
      *v13 = 1065353216;
      v13 = (v13 + v17);
      v18 += v16;
      --v19;
    }

    while (v19);
    a7 = v171;
    v176 = v169;
    a2 = v173;
    v13 = a4;
  }

  v20 = a6 - 1;
  if (a6 >= 1)
  {
    v21 = 0;
    v22 = 30 * a6 * a6;
    v23 = ((a7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v24 = &v23[a6];
    v25 = a2 >> 2;
    v26 = (a1 + 8);
    v27 = 4 * (a2 >> 2);
    v28 = (a1 + v27);
    v29 = 2;
    do
    {
      *(a3 + 4 * v21) = *(a1 + 4 * ((a2 >> 2) + 1) * v21);
      if (v21 < v20)
      {
        v31 = v21 + 1;
        if (v21 + 2 < a6)
        {
          v32 = fabsf(*(a1 + 4 * v25 * v21 + 4 * v31));
          v33 = v26;
          v34 = v29;
          do
          {
            v35 = *v33++;
            v36 = fabsf(v35);
            if (v32 < v36)
            {
              v32 = v36;
              LODWORD(v31) = v34;
            }

            ++v34;
          }

          while (a6 != v34);
        }

        v23[v21] = v31;
      }

      if (v21)
      {
        if (v21 == 1)
        {
          v30 = 0;
        }

        else
        {
          v30 = 0;
          v37 = fabsf(*(a1 + 4 * v21));
          v38 = v28;
          for (i = 1; i != v21; ++i)
          {
            v40 = fabsf(*v38);
            if (v37 < v40)
            {
              v37 = v40;
              v30 = i;
            }

            v38 = (v38 + v27);
          }
        }

        v24[v21] = v30;
      }

      ++v21;
      ++v29;
      v26 = (v26 + v27 + 4);
      ++v28;
    }

    while (v21 != a6);
    if (a6 != 1 && v22)
    {
      v41 = 0;
      v42 = 4 * v176;
      v170 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v43 = a1 + v27;
      v172 = &v13[a6];
      while (1)
      {
        v45 = *v23;
        v46 = fabsf(*(a1 + 4 * v45));
        if (a6 < 3)
        {
          LODWORD(v47) = 0;
        }

        else
        {
          LODWORD(v47) = 0;
          v48 = v43;
          v49 = 1;
          do
          {
            v50 = fabsf(*(v48 + 4 * v23[v49]));
            if (v46 < v50)
            {
              v46 = v50;
              LODWORD(v47) = v49;
            }

            ++v49;
            v48 += v27;
          }

          while (v20 != v49);
          LODWORD(v45) = v23[v47];
        }

        v51 = 1;
        do
        {
          v52 = v24[v51];
          v53 = fabsf(*(a1 + v27 * v52 + 4 * v51));
          v54 = v46 < v53;
          if (v46 >= v53)
          {
            v45 = v45;
          }

          else
          {
            v46 = v53;
            v45 = v51;
          }

          if (v54)
          {
            v47 = v52;
          }

          else
          {
            v47 = v47;
          }

          ++v51;
        }

        while (a6 != v51);
        v55 = a1 + 4 * v25 * v47;
        v56 = *(v55 + 4 * v45);
        v57 = fabsf(v56);
        if (v57 <= 0.00000011921)
        {
          goto LABEL_123;
        }

        v58 = (*(a3 + 4 * v45) - *(a3 + 4 * v47)) * 0.5;
        v59 = fabsf(v58);
        if (v57 <= v59)
        {
          v60 = 0.0;
          if (v58 != 0.0)
          {
            v60 = v59 * sqrtf(((v57 / v59) * (v57 / v59)) + 1.0);
          }
        }

        else
        {
          v60 = v57 * sqrtf(((v59 / v57) * (v59 / v57)) + 1.0);
        }

        v61 = v59 + v60;
        v62 = fabsf(v61);
        if (v57 <= v62)
        {
          v63 = 0.0;
          if (v61 != 0.0)
          {
            v63 = v62 * sqrtf(((v57 / v62) * (v57 / v62)) + 1.0);
          }
        }

        else
        {
          v63 = v57 * sqrtf(((v62 / v57) * (v62 / v57)) + 1.0);
        }

        *&a11 = v61 / v63;
        v64 = v58 < 0.0;
        if (v58 >= 0.0)
        {
          v65 = v56 * (v56 / v61);
        }

        else
        {
          v65 = -(v56 * (v56 / v61));
        }

        *(v55 + 4 * v45) = 0;
        if (v64)
        {
          *&a12 = -(v56 / v63);
        }

        else
        {
          *&a12 = v56 / v63;
        }

        *(a3 + 4 * v47) = *(a3 + 4 * v47) - v65;
        *(a3 + 4 * v45) = v65 + *(a3 + 4 * v45);
        if (v47 >= 1)
        {
          v66 = v47;
          v67 = a1;
          do
          {
            v68 = *(v67 + 4 * v47);
            v69 = *(v67 + 4 * v45);
            *(v67 + 4 * v47) = (v68 * *&a11) - (v69 * *&a12);
            *(v67 + 4 * v45) = (*&a11 * v69) + (v68 * *&a12);
            v67 += v27;
            --v66;
          }

          while (v66);
        }

        v70 = v47 + 1;
        if (v47 + 1 < v45)
        {
          v71 = (a1 + v27 * v70 + 4 * v45);
          v72 = (a1 + v27 * v47 + 4 * v70);
          v73 = ~v47 + v45;
          do
          {
            v74 = *v72;
            v75 = *v71;
            *v72 = (*v72 * *&a11) - (*v71 * *&a12);
            ++v72;
            *v71 = (*&a11 * v75) + (v74 * *&a12);
            v71 = (v71 + v27);
            --v73;
          }

          while (v73);
        }

        v76 = v45 + 1;
        if (v45 + 1 < a6)
        {
          v77 = v76;
          v78 = a6 - 2 - v45;
          if (v78 <= 2)
          {
            goto LABEL_77;
          }

          v79 = 4 * v76 + v170 * v47;
          v80 = (a1 + v79);
          v175 = a1 + 4 * v25 * v47;
          v81 = v41;
          v82 = v25;
          v83 = v42;
          v84 = v43;
          v85 = a1 + 4 + 4 * v78;
          v86 = v85 + v79;
          v87 = v13;
          v88 = 4 * v76 + v170 * v45;
          v89 = (a1 + v88);
          v90 = v85 + v88;
          v13 = v87;
          v43 = v84;
          v42 = v83;
          v25 = v82;
          v41 = v81;
          v55 = v175;
          if (v80 < v90 && v89 < v86)
          {
            goto LABEL_77;
          }

          v92 = v78 + 1;
          v93 = (v78 + 1) & 0x1FFFFFFFCLL;
          v77 = v93 + v76;
          v94 = vdupq_lane_s32(*&a12, 0);
          v95 = vdupq_lane_s32(*&a11, 0);
          v96 = v93;
          do
          {
            v97 = *v80;
            v98 = *v89;
            *v80 = vmlaq_f32(vmulq_n_f32(vnegq_f32(*v89), *&a12), v95, *v80);
            ++v80;
            *v89++ = vmlaq_f32(vmulq_n_f32(v98, *&a11), v94, v97);
            v96 -= 4;
          }

          while (v96);
          if (v92 != v93)
          {
LABEL_77:
            v99 = a1 + 4 * v77;
            v100 = (v99 + v27 * v47);
            v101 = (v99 + v27 * v45);
            v102 = a6 - v77;
            do
            {
              v103 = *v100;
              v104 = *v101;
              *v100 = (*v100 * *&a11) - (*v101 * *&a12);
              ++v100;
              *v101++ = (*&a11 * v104) + (v103 * *&a12);
              --v102;
            }

            while (v102);
          }
        }

        if (v13)
        {
          if (a6 >= 4 && ((v105 = &v13[v176 * v47], v106 = &v13[v176 * v45], v105 < (v172 + v42 * v45)) ? (v107 = v106 >= (v172 + v42 * v47)) : (v107 = 1), v107))
          {
            v108 = vdupq_lane_s32(*&a12, 0);
            v109 = vdupq_lane_s32(*&a11, 0);
            v110 = a6 & 0x7FFFFFFC;
            do
            {
              v111 = *v105;
              v112 = *v106;
              *v105 = vmlaq_f32(vmulq_n_f32(vnegq_f32(*v106), *&a12), v109, *v105);
              ++v105;
              *v106++ = vmlaq_f32(vmulq_n_f32(v112, *&a11), v108, v111);
              v110 -= 4;
            }

            while (v110);
            v113 = a6 & 0x7FFFFFFC;
            if (v113 == a6)
            {
              goto LABEL_93;
            }
          }

          else
          {
            v113 = 0;
          }

          v114 = &v13[v113];
          v115 = (v114 + v42 * v47);
          v116 = (v114 + v42 * v45);
          v117 = a6 - v113;
          do
          {
            v118 = *v115;
            v119 = *v116;
            *v115 = (*v115 * *&a11) - (*v116 * *&a12);
            ++v115;
            *v116++ = (*&a11 * v119) + (v118 * *&a12);
            --v117;
          }

          while (v117);
        }

LABEL_93:
        if (v47 < v20)
        {
          v120 = v47 + 2;
          if (v47 + 2 < a6)
          {
            v121 = fabsf(*(v55 + 4 * v70));
            v122 = (a1 + v27 * v47 + 4 * v120);
            do
            {
              v123 = *v122++;
              v124 = fabsf(v123);
              if (v121 < v124)
              {
                v121 = v124;
                LODWORD(v70) = v120;
              }

              ++v120;
            }

            while (a6 != v120);
          }

          v23[v47] = v70;
        }

        if (v47 >= 1)
        {
          if (v47 == 1)
          {
            v125 = 0;
          }

          else
          {
            v125 = 0;
            v126 = fabsf(*(a1 + 4 * v47));
            v127 = (v43 + 4 * v47);
            for (j = 1; j != v47; ++j)
            {
              v129 = fabsf(*v127);
              if (v126 < v129)
              {
                v126 = v129;
                v125 = j;
              }

              v127 = (v127 + v27);
            }
          }

          v24[v47] = v125;
        }

        if (v45 < v20)
        {
          v130 = v45 + 2;
          if (v45 + 2 < a6)
          {
            v131 = fabsf(*(a1 + 4 * v25 * v45 + 4 * v76));
            v132 = (a1 + v27 * v45 + 4 * v130);
            do
            {
              v133 = *v132++;
              v134 = fabsf(v133);
              if (v131 < v134)
              {
                v131 = v134;
                LODWORD(v76) = v130;
              }

              ++v130;
            }

            while (a6 != v130);
          }

          v23[v45] = v76;
        }

        if (v45 >= 1)
        {
          if (v45 == 1)
          {
            v44 = 0;
          }

          else
          {
            v44 = 0;
            v135 = fabsf(*(a1 + 4 * v45));
            v136 = (v43 + 4 * v45);
            for (k = 1; k != v45; ++k)
            {
              v138 = fabsf(*v136);
              if (v135 < v138)
              {
                v135 = v138;
                v44 = k;
              }

              v136 = (v136 + v27);
            }
          }

          v24[v45] = v44;
        }

        if (++v41 == v22)
        {
          goto LABEL_123;
        }
      }
    }

    if (a6 != 1)
    {
LABEL_123:
      if (v13)
      {
        v139 = 0;
        v140 = 4 * v176;
        v141 = 1;
        v142 = v13;
        v143 = (v13 + 4);
        while (1)
        {
          v144 = v139++;
          v145 = v141;
          v146 = v144;
          do
          {
            if (*(a3 + 4 * v146) < *(a3 + 4 * v145))
            {
              v146 = v145;
            }

            ++v145;
          }

          while (a6 != v145);
          if (v144 == v146)
          {
            goto LABEL_125;
          }

          v147 = *(a3 + 4 * v146);
          v148 = v146;
          *(a3 + 4 * v146) = *(a3 + 4 * v144);
          *(a3 + 4 * v144) = v147;
          if (a6 >= 8)
          {
            v149 = 0;
            v154 = &v13[v176 * v146];
            if (((&v13[a6] + v140 * v148) <= v13 || v154 >= &v13[a6 + v176 * (v20 - 1)]) && (v140 & 0x8000000000000000) == 0)
            {
              v156 = (v13 + v140 * v148 + 16);
              v157 = a6 & 0x7FFFFFF8;
              v158 = v143;
              do
              {
                v159 = *(v156 - 1);
                v160 = *v156;
                v161 = *v158;
                *(v156 - 1) = *(v158 - 1);
                *v156 = v161;
                *(v158 - 1) = v159;
                *v158 = v160;
                v156 += 2;
                v158 += 2;
                v157 -= 8;
              }

              while (v157);
              v149 = a6 & 0x7FFFFFF8;
              if (v149 == a6)
              {
                goto LABEL_125;
              }
            }
          }

          else
          {
            v149 = 0;
          }

          v150 = (&v13[v149] + v140 * v148);
          v151 = &v142[v149];
          v152 = a6 - v149;
          do
          {
            v153 = *v150;
            *v150++ = *v151;
            *v151++ = v153;
            --v152;
          }

          while (v152);
LABEL_125:
          ++v141;
          v143 = (v143 + v140);
          v142 = (v142 + v140);
          if (v139 == v20)
          {
            return 1;
          }
        }
      }

      v162 = 0;
      v163 = 1;
      do
      {
        v164 = v162++;
        v165 = v163;
        v166 = v164;
        do
        {
          if (*(a3 + 4 * v166) < *(a3 + 4 * v165))
          {
            v166 = v165;
          }

          ++v165;
        }

        while (a6 != v165);
        if (v164 != v166)
        {
          v167 = *(a3 + 4 * v166);
          *(a3 + 4 * v166) = *(a3 + 4 * v164);
          *(a3 + 4 * v164) = v167;
        }

        ++v163;
      }

      while (v162 != v20);
    }
  }

  return 1;
}

uint64_t sub_10024076C(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, unint64_t a5, int a6, uint64_t a7)
{
  v168 = a5;
  if (a4)
  {
    if (a6 < 1)
    {
      return 1;
    }

    v163 = a7;
    v165 = a2;
    v162 = a5 >> 3;
    v10 = a5 & 0xFFFFFFFFFFFFFFF8;
    v11 = (a5 & 0xFFFFFFFFFFFFFFF8) + 8;
    v12 = a4;
    v167 = a4;
    v13 = a4;
    v14 = a6;
    do
    {
      bzero(v12, 8 * a6);
      *v13 = 0x3FF0000000000000;
      v13 = (v13 + v11);
      v12 += v10;
      --v14;
    }

    while (v14);
    a7 = v163;
    v168 = v162;
    a2 = v165;
    a4 = v167;
  }

  v15 = (a6 - 1);
  if (a6 >= 1)
  {
    v16 = 0;
    v17 = (30 * a6 * a6);
    v18 = ((a7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = &v18[a6];
    v20 = a2 >> 3;
    v21 = (a1 + 16);
    v22 = 8 * (a2 >> 3);
    v23 = (a1 + v22);
    v24 = 2;
    do
    {
      *(a3 + 8 * v16) = *(a1 + 8 * ((a2 >> 3) + 1) * v16);
      if (v16 < v15)
      {
        v26 = v16 + 1;
        if (v16 + 2 < a6)
        {
          v27 = fabs(*(a1 + 8 * v20 * v16 + 8 * v26));
          v28 = v21;
          v29 = v24;
          do
          {
            v30 = *v28++;
            v31 = fabs(v30);
            if (v27 < v31)
            {
              v27 = v31;
              LODWORD(v26) = v29;
            }

            ++v29;
          }

          while (a6 != v29);
        }

        v18[v16] = v26;
      }

      if (v16)
      {
        if (v16 == 1)
        {
          v25 = 0;
        }

        else
        {
          v25 = 0;
          v32 = fabs(*(a1 + 8 * v16));
          v33 = v23;
          for (i = 1; i != v16; ++i)
          {
            v35 = fabs(*v33);
            if (v32 < v35)
            {
              v32 = v35;
              v25 = i;
            }

            v33 = (v33 + v22);
          }
        }

        v19[v16] = v25;
      }

      ++v16;
      ++v24;
      v21 = (v21 + v22 + 8);
      ++v23;
    }

    while (v16 != a6);
    if (a6 != 1 && v17)
    {
      v36 = 0;
      v37 = 8 * v168;
      v164 = a2 & 0xFFFFFFFFFFFFFFF8;
      v38 = (a6 - 2);
      v39 = a1 + v22;
      v166 = &a4[8 * a6];
      while (1)
      {
        v41 = *v18;
        v42 = fabs(*(a1 + 8 * v41));
        if (a6 < 3)
        {
          LODWORD(v43) = 0;
        }

        else
        {
          LODWORD(v43) = 0;
          v44 = v39;
          v45 = 1;
          do
          {
            v46 = fabs(*(v44 + 8 * v18[v45]));
            if (v42 < v46)
            {
              v42 = v46;
              LODWORD(v43) = v45;
            }

            ++v45;
            v44 += v22;
          }

          while (v15 != v45);
          LODWORD(v41) = v18[v43];
        }

        v47 = 1;
        do
        {
          v48 = v19[v47];
          v49 = fabs(*(a1 + v22 * v48 + 8 * v47));
          v50 = v42 < v49;
          if (v42 >= v49)
          {
            v41 = v41;
          }

          else
          {
            v42 = v49;
            v41 = v47;
          }

          if (v50)
          {
            v43 = v48;
          }

          else
          {
            v43 = v43;
          }

          ++v47;
        }

        while (a6 != v47);
        v51 = a1 + 8 * v20 * v43;
        v52 = *(v51 + 8 * v41);
        v53 = fabs(v52);
        if (v53 <= 2.22044605e-16)
        {
          goto LABEL_120;
        }

        v54 = (*(a3 + 8 * v41) - *(a3 + 8 * v43)) * 0.5;
        v55 = fabs(v54);
        if (v53 <= v55)
        {
          v56 = 0.0;
          if (v54 != 0.0)
          {
            v56 = v55 * sqrt(v53 / v55 * (v53 / v55) + 1.0);
          }
        }

        else
        {
          v56 = v53 * sqrt(v55 / v53 * (v55 / v53) + 1.0);
        }

        v57 = v55 + v56;
        v58 = fabs(v57);
        if (v53 <= v58)
        {
          v59 = 0.0;
          if (v57 != 0.0)
          {
            v59 = v58 * sqrt(v53 / v58 * (v53 / v58) + 1.0);
          }
        }

        else
        {
          v59 = v53 * sqrt(v58 / v53 * (v58 / v53) + 1.0);
        }

        v60 = v57 / v59;
        v61 = v54 < 0.0;
        if (v54 >= 0.0)
        {
          v62 = v52 * (v52 / v57);
        }

        else
        {
          v62 = -(v52 * (v52 / v57));
        }

        *(v51 + 8 * v41) = 0;
        if (v61)
        {
          v63 = -(v52 / v59);
        }

        else
        {
          v63 = v52 / v59;
        }

        *(a3 + 8 * v43) = *(a3 + 8 * v43) - v62;
        *(a3 + 8 * v41) = v62 + *(a3 + 8 * v41);
        if (v43 >= 1)
        {
          v64 = v43;
          v65 = a1;
          do
          {
            v66 = *(v65 + 8 * v43);
            v67 = *(v65 + 8 * v41);
            *(v65 + 8 * v43) = v66 * v60 - v67 * v63;
            *(v65 + 8 * v41) = v60 * v67 + v66 * v63;
            v65 += v22;
            --v64;
          }

          while (v64);
        }

        v68 = v43 + 1;
        if (v43 + 1 < v41)
        {
          v69 = (a1 + v22 * v68 + 8 * v41);
          v70 = (a1 + v22 * v43 + 8 * v68);
          v71 = ~v43 + v41;
          do
          {
            v72 = *v70;
            v73 = *v69;
            *v70 = *v70 * v60 - *v69 * v63;
            ++v70;
            *v69 = v60 * v73 + v72 * v63;
            v69 = (v69 + v22);
            --v71;
          }

          while (v71);
        }

        v74 = v41 + 1;
        if (v41 + 1 < a6)
        {
          v75 = v74;
          v76 = (v38 - v41);
          if (v76 <= 2)
          {
            goto LABEL_77;
          }

          v77 = 8 * v74 + v164 * v43;
          v78 = (a1 + v77);
          v79 = v38;
          v80 = a1 + 8 + 8 * v76;
          v81 = v17;
          v82 = v80 + v77;
          v83 = 8 * v74 + v164 * v41;
          v39 = a1 + v22;
          v84 = (a1 + v83);
          v85 = v78 >= v80 + v83 || v84 >= v82;
          v17 = v81;
          v38 = v79;
          if (!v85)
          {
            goto LABEL_77;
          }

          v86 = v76 + 1;
          v87 = (v76 + 1) & 0x1FFFFFFFELL;
          v75 = v87 + v74;
          v88 = vdupq_lane_s64(*&v63, 0);
          v89 = vdupq_lane_s64(*&v60, 0);
          v90 = v87;
          do
          {
            v91 = *v78;
            v92 = *v84;
            *v78 = vmlaq_f64(vmulq_n_f64(vnegq_f64(*v84), v63), v89, *v78);
            ++v78;
            *v84++ = vmlaq_f64(vmulq_n_f64(v92, v60), v88, v91);
            v90 -= 2;
          }

          while (v90);
          if (v86 != v87)
          {
LABEL_77:
            v93 = a1 + 8 * v75;
            v94 = (v93 + v22 * v43);
            v95 = (v93 + v22 * v41);
            v96 = a6 - v75;
            do
            {
              v97 = *v94;
              v98 = *v95;
              *v94 = *v94 * v60 - *v95 * v63;
              ++v94;
              *v95++ = v60 * v98 + v97 * v63;
              --v96;
            }

            while (v96);
          }
        }

        if (a4)
        {
          v99 = &a4[8 * v168 * v43];
          v100 = &a4[8 * v168 * v41];
          if (v99 >= &v166[v37 * v41] || v100 >= &v166[v37 * v43])
          {
            v102 = vdupq_lane_s64(*&v63, 0);
            v103 = vdupq_lane_s64(*&v60, 0);
            v104 = a6 & 0x7FFFFFFE;
            do
            {
              v105 = *v99;
              v106 = *v100;
              *v99 = vmlaq_f64(vmulq_n_f64(vnegq_f64(*v100), v63), v103, *v99);
              ++v99;
              *v100++ = vmlaq_f64(vmulq_n_f64(v106, v60), v102, v105);
              v104 -= 2;
            }

            while (v104);
            v107 = a6 & 0x7FFFFFFE;
            if (v107 == a6)
            {
              goto LABEL_90;
            }
          }

          else
          {
            v107 = 0;
          }

          v108 = &a4[8 * v107];
          v109 = &v108[v37 * v43];
          v110 = &v108[v37 * v41];
          v111 = a6 - v107;
          do
          {
            v112 = *v109;
            v113 = *v110;
            *v109 = *v109 * v60 - *v110 * v63;
            ++v109;
            *v110++ = v60 * v113 + v112 * v63;
            --v111;
          }

          while (v111);
        }

LABEL_90:
        if (v43 < v15)
        {
          v114 = v43 + 2;
          if (v43 + 2 < a6)
          {
            v115 = fabs(*(a1 + 8 * v20 * v43 + 8 * v68));
            v116 = (a1 + v22 * v43 + 8 * v114);
            do
            {
              v117 = *v116++;
              v118 = fabs(v117);
              if (v115 < v118)
              {
                v115 = v118;
                LODWORD(v68) = v114;
              }

              ++v114;
            }

            while (a6 != v114);
          }

          v18[v43] = v68;
        }

        if (v43 >= 1)
        {
          if (v43 == 1)
          {
            v119 = 0;
          }

          else
          {
            v119 = 0;
            v120 = fabs(*(a1 + 8 * v43));
            v121 = (v39 + 8 * v43);
            for (j = 1; j != v43; ++j)
            {
              v123 = fabs(*v121);
              if (v120 < v123)
              {
                v120 = v123;
                v119 = j;
              }

              v121 = (v121 + v22);
            }
          }

          v19[v43] = v119;
        }

        if (v41 < v15)
        {
          v124 = v41 + 2;
          if (v41 + 2 < a6)
          {
            v125 = fabs(*(a1 + 8 * v20 * v41 + 8 * v74));
            v126 = (a1 + v22 * v41 + 8 * v124);
            do
            {
              v127 = *v126++;
              v128 = fabs(v127);
              if (v125 < v128)
              {
                v125 = v128;
                LODWORD(v74) = v124;
              }

              ++v124;
            }

            while (a6 != v124);
          }

          v18[v41] = v74;
        }

        if (v41 >= 1)
        {
          if (v41 == 1)
          {
            v40 = 0;
          }

          else
          {
            v40 = 0;
            v129 = fabs(*(a1 + 8 * v41));
            v130 = (v39 + 8 * v41);
            for (k = 1; k != v41; ++k)
            {
              v132 = fabs(*v130);
              if (v129 < v132)
              {
                v129 = v132;
                v40 = k;
              }

              v130 = (v130 + v22);
            }
          }

          v19[v41] = v40;
        }

        if (++v36 == v17)
        {
          goto LABEL_120;
        }
      }
    }

    if (a6 != 1)
    {
LABEL_120:
      if (a4)
      {
        v133 = 0;
        v134 = 8 * v168;
        v135 = 1;
        v136 = a4;
        v137 = a4 + 16;
        while (1)
        {
          v138 = v133++;
          v139 = v135;
          v140 = v138;
          do
          {
            if (*(a3 + 8 * v140) < *(a3 + 8 * v139))
            {
              v140 = v139;
            }

            ++v139;
          }

          while (a6 != v139);
          if (v138 == v140)
          {
            goto LABEL_122;
          }

          v141 = *(a3 + 8 * v140);
          v142 = v140;
          *(a3 + 8 * v140) = *(a3 + 8 * v138);
          *(a3 + 8 * v138) = v141;
          if (a6 >= 4)
          {
            v143 = 0;
            if ((&a4[8 * a6 + v134 * v140] <= a4 || &a4[8 * v168 * v140] >= &a4[8 * a6 + 8 * v168 * (v15 - 1)]) && (v134 & 0x8000000000000000) == 0)
            {
              v149 = &a4[v134 * v140 + 16];
              v150 = a6 & 0x7FFFFFFC;
              v151 = v137;
              do
              {
                v152 = *(v149 - 1);
                v153 = *v149;
                v154 = *v151;
                *(v149 - 1) = *(v151 - 1);
                *v149 = v154;
                *(v151 - 1) = v152;
                *v151 = v153;
                v149 += 32;
                v151 += 2;
                v150 -= 4;
              }

              while (v150);
              v143 = a6 & 0x7FFFFFFC;
              if (v143 == a6)
              {
                goto LABEL_122;
              }
            }
          }

          else
          {
            v143 = 0;
          }

          v144 = &a4[8 * v143 + v134 * v142];
          v145 = &v136[8 * v143];
          v146 = a6 - v143;
          do
          {
            v147 = *v144;
            *v144 = *v145;
            v144 += 8;
            *v145 = v147;
            v145 += 8;
            --v146;
          }

          while (v146);
LABEL_122:
          ++v135;
          v137 += v134;
          v136 += v134;
          if (v133 == v15)
          {
            return 1;
          }
        }
      }

      v155 = 0;
      v156 = 1;
      do
      {
        v157 = v155++;
        v158 = v156;
        v159 = v157;
        do
        {
          if (*(a3 + 8 * v159) < *(a3 + 8 * v158))
          {
            v159 = v158;
          }

          ++v158;
        }

        while (a6 != v158);
        if (v157 != v159)
        {
          v160 = *(a3 + 8 * v159);
          *(a3 + 8 * v159) = *(a3 + 8 * v157);
          *(a3 + 8 * v157) = v160;
        }

        ++v156;
      }

      while (v155 != v15);
    }
  }

  return 1;
}

uint64_t sub_10024105C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1);
  }

  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (*(a1 + 4) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 64);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 4));
  }

  v5 = *(a1 + 72);
  if (v5 != (a1 + 80))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_1002410F0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1);
  }

  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (*(a1 + 4) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 64);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 4));
  }

  v5 = *(a1 + 72);
  if (v5 != (a1 + 80))
  {
    j__free(v5);
  }

  return a1;
}

void *sub_100241184(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v14 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, &std::ctype<char>::id);
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

    if (!sub_100241330(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_1002412C8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1002412A8);
}

uint64_t sub_100241330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
        sub_100241528();
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

void sub_10024150C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100241540()
{
  if ((atomic_load_explicit(&qword_1004BD400, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_1004BD400))
  {
    return dword_1004BD3F8;
  }

  dword_1004BD3F8 = sub_100241E1C();
  __cxa_guard_release(&qword_1004BD400);
  return dword_1004BD3F8;
}

uint64_t sub_1002415C8(int a1, const char *a2)
{
  sub_1002AA18C();
  if (a1 >= 4)
  {
    v4 = &std::cout;
  }

  else
  {
    v4 = &std::cerr;
  }

  sub_100241960(v17);
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        v5 = "[FATAL:";
        break;
      case 2:
        v5 = "[ERROR:";
        break;
      case 3:
        v5 = "[ WARN:";
        break;
      default:
        goto LABEL_29;
    }

    goto LABEL_17;
  }

  if (a1 == 4)
  {
    v5 = "[ INFO:";
LABEL_17:
    sub_100241184(&v18, v5, 7);
    v7 = std::ostream::operator<<();
    v6 = sub_100241184(v7, "] ", 2);
    goto LABEL_18;
  }

  if (a1 == 5)
  {
    v5 = "[DEBUG:";
    goto LABEL_17;
  }

  if (a1 != 6)
  {
    goto LABEL_29;
  }

  v6 = &v18;
LABEL_18:
  v8 = strlen(a2);
  v9 = sub_100241184(v6, a2, v8);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(__p, &std::ctype<char>::id);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  if ((v16 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v12 = v16;
  }

  else
  {
    v12 = __p[1];
  }

  sub_100241184(v4, v11, v12);
  if (v16 < 0)
  {
    operator delete(__p[0]);
    if (a1 > 3)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (a1 <= 3)
  {
LABEL_28:
    std::ostream::flush();
  }

LABEL_29:
  v18 = v13;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1002418F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_100241CC8(&a15);
    _Unwind_Resume(a1);
  }

  sub_100241CC8(&a15);
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100241960(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_100242358((a1 + 3), 24);
  return a1;
}

void sub_100241BDC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_100241C10(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, &std::ctype<char>::id);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t sub_100241CC8(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

uint64_t sub_100241E1C()
{
  if ((atomic_load_explicit(&qword_1004BD408, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004BD408))
  {
    sub_1002AA910("OPENCV_LOG_LEVEL", "INFO", &qword_1004BD410);
    __cxa_atexit(sub_1002422D0, &qword_1004BD410, &_mh_execute_header);
    __cxa_guard_release(&qword_1004BD408);
  }

  v0 = qword_1004BD410;
  if (qword_1004BD410 == "DISABLED")
  {
    return 0;
  }

  if (qword_1004BD410)
  {
    v1 = qword_1004BD410;
  }

  else
  {
    v1 = "";
  }

  v2 = strcmp(v1, "DISABLED");
  if (v0 == "disabled" || v2 == 0)
  {
    return 0;
  }

  v5 = strcmp(v1, "disabled");
  result = 0;
  if (v0 != "0" && v5)
  {
    v6 = *v1 == 48 && v1[1] == 0;
    result = 0;
    if (v0 != "OFF" && !v6)
    {
      v7 = strcmp(v1, "OFF");
      result = 0;
      if (v0 != "off")
      {
        if (v7)
        {
          result = strcmp(v1, "off");
          if (result)
          {
            if (v0 == "FATAL")
            {
              return 1;
            }

            v8 = strcmp(v1, "FATAL");
            result = 1;
            if (v0 == "fatal" || !v8)
            {
              return result;
            }

            if (!strcmp(v1, "fatal"))
            {
              return 1;
            }

            if (v0 == "ERROR")
            {
              return 2;
            }

            v9 = strcmp(v1, "ERROR");
            result = 2;
            if (v0 == "error" || !v9)
            {
              return result;
            }

            if (!strcmp(v1, "error"))
            {
              return 2;
            }

            if (v0 == "WARNING")
            {
              return 3;
            }

            v10 = strcmp(v1, "WARNING");
            result = 3;
            if (v0 == "warning")
            {
              return result;
            }

            if (!v10)
            {
              return result;
            }

            v11 = strcmp(v1, "warning");
            result = 3;
            if (v0 == "WARNINGS")
            {
              return result;
            }

            if (!v11)
            {
              return result;
            }

            v12 = strcmp(v1, "WARNINGS");
            result = 3;
            if (v0 == "warnings")
            {
              return result;
            }

            if (!v12)
            {
              return result;
            }

            v13 = strcmp(v1, "warnings");
            result = 3;
            if (v0 == "WARN")
            {
              return result;
            }

            if (!v13)
            {
              return result;
            }

            v14 = strcmp(v1, "WARN");
            result = 3;
            if (v0 == "warn" || !v14)
            {
              return result;
            }

            if (!strcmp(v1, "warn"))
            {
              return 3;
            }

            if (v0 == "INFO")
            {
              return 4;
            }

            v15 = strcmp(v1, "INFO");
            result = 4;
            if (v0 == "info" || !v15)
            {
              return result;
            }

            if (!strcmp(v1, "info"))
            {
              return 4;
            }

            if (v0 == "DEBUG")
            {
              return 5;
            }

            v16 = strcmp(v1, "DEBUG");
            result = 5;
            if (v0 == "debug" || !v16)
            {
              return result;
            }

            if (!strcmp(v1, "debug"))
            {
              return 5;
            }

            if (v0 == "VERBOSE")
            {
              return 6;
            }

            v17 = strcmp(v1, "VERBOSE");
            result = 6;
            if (v0 != "verbose" && v17)
            {
              if (strcmp(v1, "verbose"))
              {
                v18 = sub_100241184(&std::cerr, "ERROR: Unexpected logging level value: ", 39);
                v19 = sub_1002422FC(v18);
                sub_100241C10(v19);
                return 4;
              }

              return 6;
            }
          }
        }
      }
    }
  }

  return result;
}