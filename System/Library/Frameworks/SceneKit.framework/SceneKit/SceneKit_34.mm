void btConvexPolyhedron::initialize(float32x4_t *this)
{
  v92 = 1;
  v91 = 0;
  v90 = 0;
  v95 = 1;
  v94 = 0;
  v93 = 0;
  v98 = 1;
  v97 = 0;
  v96 = 0;
  v101 = 1;
  v100 = 0;
  v99 = 0;
  this[7].i64[0] = 0;
  this[7].i64[1] = 0;
  v2 = this + 7;
  LODWORD(v3) = this[2].i32[3];
  if (v3 < 1)
  {
    goto LABEL_54;
  }

  v4 = 0;
  do
  {
    v5 = *(this[3].i64[1] + 48 * v4 + 4);
    if (v5 >= 1)
    {
      v6 = 0;
      do
      {
        v7 = v6 + 1;
        v8 = (v6 + 1);
        v9 = *(this[3].i64[1] + 48 * v4 + 16);
        v10 = *(v9 + 4 * v6);
        if (v7 == v5)
        {
          v8 = 0;
        }

        v11 = *(v9 + 4 * v8);
        v87 = v10;
        v88 = v11;
        if (v11 > v10)
        {
          v87 = v11;
          v88 = v10;
        }

        Index = btHashMap<btInternalVertexPair,btInternalEdge>::findIndex(v89, &v87);
        if (Index == -1)
        {
          v13 = 0;
        }

        else
        {
          v13 = v97 + 4 * Index;
        }

        v14 = vsubq_f32(*(this[1].i64[1] + 16 * v88), *(this[1].i64[1] + 16 * v87));
        v14.i32[3] = 0;
        v15 = vmulq_f32(v14, v14);
        v16 = vmulq_n_f32(v14, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v15.i8, *v15.i8), *&vextq_s8(v15, v15, 8uLL)).f32[0]));
        v17 = this[4].i32[3];
        if (v17 < 1)
        {
LABEL_21:
          if (v17 == this[5].i32[0])
          {
            v22 = v17 ? 2 * v17 : 1;
            if (v17 < v22)
            {
              v85 = v16;
              if (v22)
              {
                v23 = btAlignedAllocInternal(16 * v22, 16);
                v16 = v85;
                v24 = v23;
                v17 = this[4].i32[3];
              }

              else
              {
                v24 = 0;
              }

              if (v17 >= 1)
              {
                v25 = 0;
                v26 = 16 * v17;
                do
                {
                  *(v24 + v25) = *(this[5].i64[1] + v25);
                  v25 += 16;
                }

                while (v26 != v25);
              }

              v27 = this[5].i64[1];
              if (v27 && this[6].i8[0] == 1)
              {
                btAlignedFreeInternal(v27);
                v16 = v85;
              }

              this[6].i8[0] = 1;
              this[5].i64[1] = v24;
              this[5].i32[0] = v22;
              v17 = this[4].i32[3];
            }
          }

          *(this[5].i64[1] + 16 * v17) = v16;
          ++this[4].i32[3];
        }

        else
        {
          v18 = this[5].i64[1];
          v19 = this[4].u32[3];
          while (1)
          {
            v20 = vsubq_f32(*v18, v16);
            if (fabsf(v20.f32[0]) <= 0.000001 && fabsf(v20.f32[1]) <= 0.000001 && fabsf(v20.f32[2]) <= 0.000001)
            {
              break;
            }

            v21 = vaddq_f32(v16, *v18);
            if (fabsf(v21.f32[0]) <= 0.000001 && fabsf(v21.f32[1]) <= 0.000001 && fabsf(v21.f32[2]) <= 0.000001)
            {
              break;
            }

            ++v18;
            if (!--v19)
            {
              goto LABEL_21;
            }
          }
        }

        if (v13)
        {
          *(v13 + 1) = v4;
        }

        else
        {
          HIWORD(v86) = -1;
          LOWORD(v86) = v4;
          btHashMap<btInternalVertexPair,btInternalEdge>::insert(v89, &v87, &v86);
        }

        v6 = v7;
      }

      while (v7 != v5);
      LODWORD(v3) = this[2].i32[3];
    }

    ++v4;
  }

  while (v4 < v3);
  if (v3 < 1)
  {
LABEL_54:
    v55.i64[0] = 0x7F0000007FLL;
    v55.i64[1] = 0x7F0000007FLL;
    this[7] = vmulq_f32(this[7], vnegq_f32(v55));
    this[9].i32[0] = 2139095039;
    v51 = 3.4028e38;
  }

  else
  {
    v28 = 0;
    v29 = this[3].i64[1];
    v30 = this[1].i64[1];
    v3 = v3;
    v31 = 0.0;
    v32 = vdupq_n_s32(0x3EAAAAABu);
    do
    {
      v33 = v29 + 48 * v28;
      v34 = *(v33 + 4);
      if (v34 >= 3)
      {
        v35 = 0;
        v36 = **(v33 + 16);
        v37 = *v2;
        v38 = 4 * (v34 - 1) - 4;
        do
        {
          v39 = *(v29 + 48 * v28 + 16) + v35;
          v40 = *(v30 + 16 * v36);
          v41 = *(v30 + 16 * *(v39 + 4));
          v42 = vsubq_f32(v40, v41);
          v42.i32[3] = 0;
          v43 = *(v30 + 16 * *(v39 + 8));
          v44 = vsubq_f32(v40, v43);
          v44.i32[3] = 0;
          v45 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v44, v44, 0xCuLL), v44, 8uLL), v42), vmulq_f32(vextq_s8(vextq_s8(v42, v42, 0xCuLL), v42, 8uLL), v44));
          v46 = vextq_s8(vextq_s8(v45, v45, 0xCuLL), v45, 8uLL);
          v46.i32[3] = 0;
          v47 = vmulq_f32(v46, v46);
          *v47.i32 = sqrtf(vadd_f32(vpadd_f32(*v47.i8, *v47.i8), *&vextq_s8(v47, v47, 8uLL)).f32[0]) * 0.5;
          v48 = vmulq_n_f32(vmulq_f32(vaddq_f32(vaddq_f32(v40, v41), v43), v32), *v47.i32);
          v48.i32[3] = 0;
          v37 = vaddq_f32(v37, v48);
          *v2 = v37;
          v31 = v31 + *v47.i32;
          v35 += 4;
        }

        while (v38 != v35);
      }

      ++v28;
    }

    while (v28 != v3);
    v49 = vmulq_n_f32(this[7], 1.0 / v31);
    this[7] = v49;
    this[9].i32[0] = 2139095039;
    v50 = (this[3].i64[1] + 44);
    v51 = 3.4028e38;
    do
    {
      v52.i64[0] = *(v50 - 3);
      v52.i64[1] = *(v50 - 1);
      v53 = vmulq_f32(v49, v52);
      v54 = fabsf(*v50 + vadd_f32(vpadd_f32(*v53.i8, *v53.i8), *&vextq_s8(v53, v53, 8uLL)).f32[0]);
      if (v54 < v51)
      {
        this[9].f32[0] = v54;
        v51 = v54;
      }

      v50 += 12;
      --v3;
    }

    while (v3);
  }

  v56 = this->u32[3];
  if (v56 < 1)
  {
    v57 = 0x80000000800000;
    v58 = vneg_f32(0x80000000800000);
    v61 = -3.4028e38;
    v60 = 3.4028e38;
  }

  else
  {
    v57 = 0x80000000800000;
    v58 = vneg_f32(0x80000000800000);
    v59 = (this[1].i64[1] + 8);
    v60 = 3.4028e38;
    v61 = -3.4028e38;
    do
    {
      v62 = *(v59 - 2);
      v58 = vbsl_s8(vcgt_f32(v58, v62), v62, v58);
      v57 = vbsl_s8(vcgt_f32(v62, v57), v62, v57);
      v63 = *v59;
      v59 += 4;
      v64 = v63;
      if (v63 < v60)
      {
        v60 = v64;
      }

      if (v64 > v61)
      {
        v61 = v64;
      }

      --v56;
    }

    while (v56);
  }

  v65 = vadd_f32(v57, v58);
  v66 = vsub_f32(v57, v58);
  *this[11].f32 = v66;
  *this[10].f32 = v65;
  this[10].f32[2] = v60 + v61;
  this[10].i32[3] = 0;
  v67 = v61 - v60;
  this[11].f32[2] = v67;
  this[11].i32[3] = 0;
  v68 = v51 / 1.7321;
  if (v66.f32[1] >= v67)
  {
    v69 = 1;
  }

  else
  {
    v69 = 2;
  }

  if (v66.f32[0] >= v66.f32[1])
  {
    v70 = 2 * (v66.f32[0] < v67);
  }

  else
  {
    v70 = v69;
  }

  v71 = this[11].f32[v70];
  v72 = -(v68 - (v71 * 0.5)) * 0.00097656;
  this[8].f32[1] = v68;
  this[8].f32[2] = v68;
  this[8].f32[0] = v68;
  v73 = this + 8;
  v74 = v71 * 0.5;
  this[8].f32[v70] = v71 * 0.5;
  v75 = 1024;
  while (!btConvexPolyhedron::testContainment(this))
  {
    v74 = v74 - v72;
    v73->f32[v70] = v74;
    if (!--v75)
    {
      this[8].f32[1] = v68;
      this[8].f32[2] = v68;
      this[8].f32[0] = v68;
      goto LABEL_79;
    }
  }

  v76 = v51 - v68;
  v77 = 1 << v70;
  v78 = (1 << v70) & 3;
  v79 = (1 << (v77 & 3)) & 3;
  v80 = v73->f32[v79];
  v81 = v76 * 0.00097656;
  v82 = v73->f32[v78];
  v73->f32[v78] = (v76 * 0.00097656) + v82;
  v83 = (v76 * 0.00097656) + v73->f32[v79];
  v73->f32[v79] = v83;
  if (btConvexPolyhedron::testContainment(this))
  {
    v84 = 1024;
    while (--v84)
    {
      v80 = v83;
      v82 = v73->f32[v78];
      v73->f32[v78] = v81 + v82;
      v83 = v81 + v73->f32[v79];
      v73->f32[v79] = v83;
      if (!btConvexPolyhedron::testContainment(this))
      {
        goto LABEL_78;
      }
    }
  }

  else
  {
LABEL_78:
    v73->f32[v78] = v82;
    v73->f32[v79] = v80;
  }

LABEL_79:
  if (v100 && v101 == 1)
  {
    btAlignedFreeInternal(v100);
  }

  v101 = 1;
  v100 = 0;
  v99 = 0;
  if (v97 && v98 == 1)
  {
    btAlignedFreeInternal(v97);
  }

  v98 = 1;
  v97 = 0;
  v96 = 0;
  if (v94 && v95 == 1)
  {
    btAlignedFreeInternal(v94);
  }

  v95 = 1;
  v94 = 0;
  v93 = 0;
  if (v91)
  {
    if (v92 == 1)
    {
      btAlignedFreeInternal(v91);
    }
  }
}

void btHashMap<btInternalVertexPair,btInternalEdge>::insert(uint64_t a1, unsigned __int16 *a2, _DWORD *a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a1 + 72);
  Index = btHashMap<btInternalVertexPair,btInternalEdge>::findIndex(a1, a2);
  if (Index == -1)
  {
    v10 = v6 + (v7 << 16);
    v11 = v8 - 1;
    v12 = *(a1 + 68);
    v13 = *(a1 + 72);
    v14 = v12;
    if (v12 == v13)
    {
      v15 = v12 ? 2 * v12 : 1;
      v14 = *(a1 + 68);
      if (v12 < v15)
      {
        if (v15)
        {
          v16 = btAlignedAllocInternal(4 * v15, 16);
        }

        else
        {
          v16 = 0;
        }

        if (*(a1 + 68) >= 1)
        {
          v17 = 0;
          v18 = 4 * *(a1 + 68);
          do
          {
            *(v16 + v17) = *(*(a1 + 80) + v17);
            v17 += 4;
          }

          while (v18 != v17);
        }

        v19 = *(a1 + 80);
        if (v19 && *(a1 + 88) == 1)
        {
          btAlignedFreeInternal(v19);
        }

        *(a1 + 88) = 1;
        *(a1 + 80) = v16;
        *(a1 + 72) = v15;
        v14 = *(a1 + 68);
      }
    }

    v20 = v10 & v11;
    *(*(a1 + 80) + 4 * v14) = *a3;
    ++*(a1 + 68);
    v21 = *(a1 + 100);
    if (v21 == *(a1 + 104))
    {
      v22 = v21 ? 2 * v21 : 1;
      if (v21 < v22)
      {
        if (v22)
        {
          v23 = btAlignedAllocInternal(4 * v22, 16);
          v21 = *(a1 + 100);
        }

        else
        {
          v23 = 0;
        }

        if (v21 >= 1)
        {
          v24 = 0;
          v25 = 4 * v21;
          do
          {
            *(v23 + v24) = *(*(a1 + 112) + v24);
            v24 += 4;
          }

          while (v25 != v24);
        }

        v26 = *(a1 + 112);
        if (v26 && *(a1 + 120) == 1)
        {
          btAlignedFreeInternal(v26);
        }

        *(a1 + 120) = 1;
        *(a1 + 112) = v23;
        *(a1 + 104) = v22;
        v21 = *(a1 + 100);
      }
    }

    *(*(a1 + 112) + 4 * v21) = *a2;
    ++*(a1 + 100);
    if (v13 < *(a1 + 72))
    {
      btHashMap<btInternalVertexPair,btInternalEdge>::growTables(a1);
      v20 = (*a2 + (a2[1] << 16)) & (*(a1 + 72) - 1);
    }

    v27 = *(a1 + 16);
    *(*(a1 + 48) + 4 * v12) = *(v27 + 4 * v20);
    *(v27 + 4 * v20) = v12;
  }

  else
  {
    *(*(a1 + 80) + 4 * Index) = *a3;
  }
}

__n128 btConvexPolyhedron::project(btConvexPolyhedron *this, const btTransform *a2, float32x4_t *a3, float *a4, float *a5, __n128 *a6, __n128 *a7)
{
  *a4 = 3.4028e38;
  *a5 = -3.4028e38;
  v7 = *(this + 3);
  if (v7 < 1)
  {
    result.n128_u32[0] = -8388609;
  }

  else
  {
    v8 = 0;
    v9 = 16 * v7;
    result.n128_u32[1] = 0;
    do
    {
      v11 = *(*(this + 3) + v8);
      v12 = vmulq_f32(a2->var0.var0[0], v11);
      v13 = vmulq_f32(v11, a2->var0.var0[1]);
      v14 = vmulq_f32(v11, a2->var0.var0[2]);
      v14.i32[3] = 0;
      *v12.f32 = vadd_f32(vpadd_f32(*v12.f32, *v13.i8), vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)));
      *&v12.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
      v15 = vaddq_f32(v12, a2->var1);
      v16 = vmulq_f32(v15, *a3);
      v17 = vadd_f32(vpadd_f32(*v16.i8, *v16.i8), *&vextq_s8(v16, v16, 8uLL)).f32[0];
      if (v17 < *a4)
      {
        *a4 = v17;
        *a6 = v15;
      }

      if (v17 > *a5)
      {
        *a5 = v17;
        *a7 = v15;
      }

      v8 += 16;
    }

    while (v9 != v8);
    result.n128_f32[0] = *a5;
  }

  v18 = *a4;
  if (*a4 > result.n128_f32[0])
  {
    *a4 = result.n128_f32[0];
    *a5 = v18;
    result = *a6;
    *a6 = *a7;
    *a7 = result;
  }

  return result;
}

uint64_t btAlignedObjectArray<btFace>::~btAlignedObjectArray(uint64_t a1)
{
  v2 = *(a1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 48 * v2;
    do
    {
      v5 = *(a1 + 16) + v3;
      v6 = *(v5 + 16);
      if (v6 && *(v5 + 24) == 1)
      {
        btAlignedFreeInternal(v6);
      }

      *(v5 + 24) = 1;
      *(v5 + 16) = 0;
      *(v5 + 4) = 0;
      *(v5 + 8) = 0;
      v3 += 48;
    }

    while (v4 != v3);
  }

  v7 = *(a1 + 16);
  if (v7 && *(a1 + 24) == 1)
  {
    btAlignedFreeInternal(v7);
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  return a1;
}

uint64_t btHashMap<btInternalVertexPair,btInternalEdge>::findIndex(uint64_t a1, unsigned __int16 *a2)
{
  v2 = a2[1];
  v3 = (*a2 + (v2 << 16)) & (*(a1 + 72) - 1);
  if (v3 >= *(a1 + 4))
  {
    return 0xFFFFFFFFLL;
  }

  result = *(*(a1 + 16) + 4 * v3);
  if (result == -1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v6 = (*(a1 + 112) + 4 * result);
    if (*a2 == *v6 && v2 == v6[1])
    {
      break;
    }

    result = *(*(a1 + 48) + 4 * result);
    if (result == -1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void btHashMap<btInternalVertexPair,btInternalEdge>::growTables(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 4);
  if (v2 >= v1)
  {
    return;
  }

  if (*(a1 + 8) < v1)
  {
    if (v1)
    {
      v4 = btAlignedAllocInternal(4 * v1, 16);
      LODWORD(v5) = *(a1 + 4);
    }

    else
    {
      v4 = 0;
      LODWORD(v5) = *(a1 + 4);
    }

    v6 = *(a1 + 16);
    if (v5 < 1)
    {
      if (!v6)
      {
LABEL_14:
        *(a1 + 24) = 1;
        *(a1 + 16) = v4;
        *(a1 + 8) = v1;
        goto LABEL_15;
      }
    }

    else
    {
      v5 = v5;
      v7 = v4;
      v8 = *(a1 + 16);
      do
      {
        v9 = *v8++;
        *v7++ = v9;
        --v5;
      }

      while (v5);
    }

    if (*(a1 + 24) == 1)
    {
      btAlignedFreeInternal(v6);
    }

    *(a1 + 16) = 0;
    goto LABEL_14;
  }

LABEL_15:
  bzero((*(a1 + 16) + 4 * v2), 4 * (v1 + ~v2) + 4);
  *(a1 + 4) = v1;
  v10 = *(a1 + 36);
  if (v10 < v1)
  {
    if (*(a1 + 40) >= v1)
    {
LABEL_28:
      bzero((*(a1 + 48) + 4 * v10), 4 * (v1 + ~v10) + 4);
      goto LABEL_29;
    }

    if (v1)
    {
      v11 = btAlignedAllocInternal(4 * v1, 16);
    }

    else
    {
      v11 = 0;
    }

    LODWORD(v12) = *(a1 + 36);
    v13 = *(a1 + 48);
    if (v12 < 1)
    {
      if (!v13)
      {
LABEL_27:
        *(a1 + 56) = 1;
        *(a1 + 48) = v11;
        *(a1 + 40) = v1;
        goto LABEL_28;
      }
    }

    else
    {
      v12 = v12;
      v14 = v11;
      v15 = *(a1 + 48);
      do
      {
        v16 = *v15++;
        *v14++ = v16;
        --v12;
      }

      while (v12);
    }

    if (*(a1 + 56) == 1)
    {
      btAlignedFreeInternal(v13);
    }

    goto LABEL_27;
  }

LABEL_29:
  *(a1 + 36) = v1;
  if (v1 >= 1)
  {
    memset(*(a1 + 16), 255, 4 * v1);
    memset(*(a1 + 48), 255, 4 * v1);
  }

  if (v2 >= 1)
  {
    v17 = 0;
    v18 = *(a1 + 16);
    v19 = *(a1 + 48);
    v20 = (*(a1 + 112) + 2);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v20 += 2;
      v23 = (v21 + (v22 << 16)) & (*(a1 + 72) - 1);
      *(v19 + 4 * v17) = *(v18 + 4 * v23);
      *(v18 + 4 * v23) = v17++;
    }

    while (v2 != v17);
  }
}

void btConvexShape::btConvexShape(btConvexShape *this)
{
  *(this + 2) = 35;
  *(this + 2) = 0;
  *this = &unk_282DCA1A0;
}

void *btConvexShape::project(btConvexShape *this, const btTransform *a2, float32x4_t *a3, float *a4, float *a5)
{
  v10 = a2->var0.var0[0];
  v11 = a2->var0.var0[1];
  v10.i32[3] = 0;
  v11.i32[3] = 0;
  v12 = a2->var0.var0[2];
  v12.i32[3] = 0;
  v29 = vaddq_f32(vaddq_f32(vmulq_n_f32(v10, COERCE_FLOAT(*a3)), vmulq_lane_f32(v11, *a3->f32, 1)), vmulq_laneq_f32(v12, *a3, 2));
  (*(*this + 128))(&v28);
  v13 = vmulq_f32(a2->var0.var0[0], v28);
  v14 = vmulq_f32(v28, a2->var0.var0[1]);
  v15 = vmulq_f32(v28, a2->var0.var0[2]);
  v15.i32[3] = 0;
  *v13.f32 = vadd_f32(vpadd_f32(*v13.f32, *v14.i8), vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v14, v14, 8uLL)));
  *&v13.u32[2] = vpadd_f32(vpadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)), 0);
  v16 = vaddq_f32(v13, a2->var1);
  v13.i64[0] = 0x8000000080000000;
  v13.i64[1] = 0x8000000080000000;
  v26 = v16;
  v27 = veorq_s8(v29, v13);
  result = (*(*this + 128))(&v28, this, &v27);
  v18 = vmulq_f32(a2->var0.var0[0], v28);
  v19 = vmulq_f32(v28, a2->var0.var0[1]);
  v20 = vmulq_f32(v28, a2->var0.var0[2]);
  v20.i32[3] = 0;
  *v18.f32 = vadd_f32(vpadd_f32(*v18.f32, *v19.i8), vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v19, v19, 8uLL)));
  *&v18.u32[2] = vpadd_f32(vpadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)), 0);
  v21 = vaddq_f32(v18, a2->var1);
  v22 = vmulq_f32(v26, *a3);
  *a4 = vadd_f32(vpadd_f32(*v22.i8, *v22.i8), *&vextq_s8(v22, v22, 8uLL)).u32[0];
  v23 = vmulq_f32(v21, *a3);
  v24 = vadd_f32(vpadd_f32(*v23.i8, *v23.i8), *&vextq_s8(v23, v23, 8uLL)).f32[0];
  *a5 = v24;
  v25 = *a4;
  if (*a4 > v24)
  {
    *a4 = v24;
    *a5 = v25;
  }

  return result;
}

_DWORD *btConvexShape::localGetSupportVertexWithoutMarginNonVirtual@<X0>(_DWORD *this@<X0>, int8x16_t *a2@<X1>, float32x4_t *a3@<X8>, float32x4_t a4@<Q6>)
{
  v5 = this[2];
  if (v5 <= 4)
  {
    if (!v5)
    {
      v30.i64[0] = 0x8000000080000000;
      v30.i64[1] = 0x8000000080000000;
      *a3 = veorq_s8(vandq_s8(*a2, v30), *(this + 3));
      return this;
    }

    if (v5 != 1)
    {
      if (v5 == 4)
      {
        v6 = *(this + 17);
        v7 = this[31];
        goto LABEL_39;
      }

      goto LABEL_35;
    }

    v39 = *a2;
    v39.i32[2] = a2->i32[2];
    v40 = *(this + 5);
    v41 = *(this + 6);
    this += 20;
    v42 = vmulq_f32(v39, *(this + 2));
    v39.i32[3] = 0;
    v43 = vmulq_f32(v40, v39);
    v44 = vmulq_f32(v39, v41);
    v42.i32[3] = 0;
    v45 = vadd_f32(vpadd_f32(*v43.i8, *v44.i8), vzip1_s32(*&vextq_s8(v43, v43, 8uLL), *&vextq_s8(v44, v44, 8uLL)));
    v46 = vpadd_f32(vpadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL)), 0);
    v47 = 2;
    if (v45.f32[1] >= v46.f32[0])
    {
      v48 = 1;
    }

    else
    {
      v48 = 2;
    }

    if ((vcgt_f32(v46, v45).u8[0] & 1) == 0)
    {
      v47 = 0;
    }

    if (v45.f32[0] < v45.f32[1])
    {
      v47 = v48;
    }

    v49 = *&this[4 * v47];
LABEL_54:
    a3->i64[0] = v49.i64[0];
    a3->i32[2] = v49.i32[2];
LABEL_60:
    a3->i32[3] = 0;
    return this;
  }

  if (v5 > 9)
  {
    if (v5 != 10)
    {
      if (v5 == 13)
      {
        v68 = *(this + 3);
        v8 = *a2->i32;
        v9 = *&a2->i32[1];
        v66 = v9;
        *v67 = v8;
        v10 = *&a2->i32[2];
        v65 = v10;
        v11 = this[18];
        v12 = v11;
        v13 = &v63;
        v14 = v67;
        v15 = &v64;
        this = v67;
        v16 = v67;
        if (v11 == 1)
        {
          v15 = &v63;
          v14 = &v66;
          v13 = &v64;
          v17 = &v68;
        }

        else
        {
          v16 = &v66;
          v17 = &v68.i32[1];
        }

        v18 = v11 == 2;
        if (v11 == 2)
        {
          v10 = v9;
          v19 = &v63;
        }

        else
        {
          v19 = &v62;
        }

        if (v11 == 2)
        {
          v20 = &v62;
        }

        else
        {
          v20 = v15;
        }

        if (v18)
        {
          v21 = &v65;
        }

        else
        {
          v21 = v14;
        }

        if (v18)
        {
          v13 = &v64;
          v22 = v67;
        }

        else
        {
          v22 = v16;
        }

        if (v18)
        {
          v23 = &v68;
        }

        else
        {
          v23 = v17;
        }

        v24 = v68.f32[v12];
        v25 = v23->f32[0];
        v26 = *v22;
        v27 = sqrtf((v10 * v10) + (v26 * v26));
        if (v27 == 0.0)
        {
          *v13 = v25;
          if (*v21 >= 0.0)
          {
            v59 = v24;
          }

          else
          {
            v59 = -v24;
          }

          *v20 = v59;
          v29 = 0.0;
        }

        else
        {
          v28 = v25 / v27;
          *v13 = v28 * v26;
          if (*v21 < 0.0)
          {
            v24 = -v24;
          }

          *v20 = v24;
          v29 = v28 * v10;
        }

        *v19 = v29;
        v60 = v62;
        v61 = v63;
        a3->i32[0] = v64;
        a3->i32[1] = v61;
        a3->i32[2] = v60;
        goto LABEL_60;
      }

LABEL_35:
      v31 = *(*this + 136);

      return v31();
    }

    v32 = *a2;
    v32.i64[1] = a2->u32[2];
    v33 = this[18];
    v34 = *&this[v33 + 12];
    v35 = *&this[(v33 + 2) % 3 + 12];
    v36 = vmulq_f32(v32, v32);
    v37 = vadd_f32(*&vextq_s8(v36, v36, 8uLL), vpadd_f32(*v36.i8, *v36.i8)).f32[0];
    if (v37 >= 0.0001)
    {
      v38 = vmulq_n_f32(v32, 1.0 / sqrtf(v37));
    }

    else
    {
      v38 = xmmword_21C27F910;
    }

    v68 = 0uLL;
    v68.f32[v33] = v34;
    v50 = vmulq_n_f32(v38, v35);
    v51 = vmulq_n_f32(v38, *(this + 16));
    v52 = vsubq_f32(vaddq_f32(v68, v50), v51);
    v52.i32[3] = 0;
    v53 = vmulq_f32(v38, v52);
    *a4.f32 = vpadd_f32(*v53.i8, *v53.i8);
    v54 = vextq_s8(v53, v53, 8uLL);
    *v54.f32 = vadd_f32(*a4.f32, *v54.f32);
    a4.i32[0] = -581039253;
    v55 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v54, a4), 0), v52, 0);
    v54.f32[0] = fmaxf(v54.f32[0], -1.0e18);
    v68 = 0uLL;
    v68.f32[v33] = -v34;
    v56 = vsubq_f32(vaddq_f32(v68, v50), v51);
    v56.i32[3] = 0;
    v57 = vmulq_f32(v38, v56);
    *v50.f32 = vpadd_f32(*v57.i8, *v57.i8);
    v58 = vextq_s8(v57, v57, 8uLL);
    *v58.f32 = vadd_f32(*v50.f32, *v58.f32);
    v49 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v58, v54), 0), v56, v55);
    goto LABEL_54;
  }

  if (v5 != 5)
  {
    if (v5 == 8)
    {
      a3->i64[0] = 0;
      a3->i64[1] = 0;
      return this;
    }

    goto LABEL_35;
  }

  v6 = *(this + 15);
  v7 = this[32];
LABEL_39:

  return convexHullSupport(a2, v6, this + 2, v7, a3);
}

uint64_t convexHullSupport@<X0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X3>, int a4@<W2>, float32x4_t *a5@<X8>)
{
  v9 = vmulq_f32(*a1, *a3);
  v19 = v9;
  v10 = a4;
  if (a4 > 3)
  {
    v18 = 0.0;
    result = _maxdot_large(a2->f32, v19.f32, a4, &v18);
    if (result < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (a4 < 1)
  {
    result = -1;
    goto LABEL_14;
  }

  v11 = 0;
  v12 = -1;
  v13 = -3.4028e38;
  do
  {
    v14 = vmulq_f32(v9, a2[v11]);
    v15 = vadd_f32(vpadd_f32(*v14.i8, *v14.i8), *&vextq_s8(v14, v14, 8uLL)).f32[0];
    if (v15 > v13)
    {
      v13 = v15;
      v12 = v11;
    }

    ++v11;
  }

  while (a4 != v11);
  result = v12;
  if ((v12 & 0x8000000000000000) == 0)
  {
LABEL_12:
    if (result < v10)
    {
      v17 = a2[result];
LABEL_16:
      *a5 = vmulq_f32(v17, *a3);
      return result;
    }
  }

LABEL_14:
  if (a4 >= 1)
  {
    v17 = *a2;
    goto LABEL_16;
  }

  a5->i64[0] = 0;
  a5->i64[1] = 0;
  return result;
}

float32x4_t btConvexShape::localGetSupportVertexNonVirtual@<Q0>(btConvexShape *this@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>, float32x4_t a4@<Q6>)
{
  v6 = *a2;
  v7 = vmulq_f32(v6, v6);
  v8 = vadd_f32(vpadd_f32(*v7.i8, *v7.i8), *&vextq_s8(v7, v7, 8uLL)).f32[0];
  if (v8 < 1.4211e-14)
  {
    v6 = xmmword_21C2A2150;
    v18 = xmmword_21C2A2150;
    __asm { FMOV            V1.2S, #1.0 }

    v8 = vpadd_f32(_D1, _D1).f32[0] + 1.0;
  }

  v18 = vmulq_n_f32(v6, 1.0 / sqrtf(v8));
  btConvexShape::localGetSupportVertexWithoutMarginNonVirtual(this, &v18, &v17, a4);
  btConvexShape::getMarginNonVirtual(this);
  v15 = vmulq_n_f32(v18, v14);
  v15.i32[3] = 0;
  result = vaddq_f32(v17, v15);
  *a3 = result;
  return result;
}

_DWORD *btConvexShape::getMarginNonVirtual(_DWORD *this)
{
  v1 = this[2];
  if (v1 > 7)
  {
    if (v1 != 13 && v1 != 10 && v1 != 8)
    {
      return (*(*this + 96))();
    }
  }

  else if ((v1 - 4) >= 2 && v1 >= 2)
  {
    return (*(*this + 96))();
  }

  return this;
}

void btConvexTriangleMeshShape::btConvexTriangleMeshShape(btConvexTriangleMeshShape *this, btStridingMeshInterface *a2, int a3)
{
  btPolyhedralConvexAabbCachingShape::btPolyhedralConvexAabbCachingShape(this);
  *v6 = &unk_282DCA268;
  *(v6 + 120) = a2;
  *(v6 + 8) = 3;
  if (a3)
  {
    btPolyhedralConvexAabbCachingShape::recalcLocalAabb(this);
  }
}

uint64_t btConvexTriangleMeshShape::localGetSupportingVertexWithoutMargin@<X0>(btConvexTriangleMeshShape *this@<X0>, float32x4_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a2;
  v5 = vmulq_f32(v4, v4);
  v6 = vadd_f32(vpadd_f32(*v5.i8, *v5.i8), *&vextq_s8(v5, v5, 8uLL)).f32[0];
  if (v6 >= 0.0001)
  {
    v7 = vmulq_n_f32(v4, 1.0 / sqrtf(v6));
  }

  else
  {
    v7 = xmmword_21C27F910;
  }

  v13 = 0uLL;
  v12[0] = &unk_282DCA378;
  v14 = -581039253;
  v15 = v7;
  v8 = *(this + 15);
  v10 = xmmword_21C2A42A0;
  v11 = xmmword_21C2A4030;
  (*(*v8 + 16))(v8, v12, &v10, &v11);
  *a3 = v13;
  return C3DSceneSourcePerformConsistencyCheck(v12);
}

uint64_t btConvexTriangleMeshShape::batchedUnitVectorGetSupportingVertexWithoutMargin(uint64_t this, const btVector3 *a2, btVector3 *a3, int a4)
{
  if (a4 >= 1)
  {
    v24 = v4;
    v25 = v5;
    v6 = a3;
    v8 = this;
    v9 = a4;
    v10 = (a4 + 3) & 0xFFFFFFFC;
    v11 = vdupq_n_s64(a4 - 1);
    v12 = xmmword_21C27F630;
    v13 = xmmword_21C27F640;
    v14 = &a3[2].var0.var0[3];
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v16, *v11.i8).u8[0])
      {
        *(v14 - 8) = -581039253;
      }

      if (vuzp1_s16(v16, *&v11).i8[2])
      {
        *(v14 - 4) = -581039253;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v14 = -581039253;
        v14[4] = -581039253;
      }

      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 16;
      v10 -= 4;
    }

    while (v10);
    do
    {
      v20[0] = &unk_282DCA378;
      v21 = 0;
      v22 = -581039253;
      v17 = *a2++;
      v23 = v17;
      v18 = xmmword_21C2A42A0;
      v19 = xmmword_21C2A4030;
      (*(**(v8 + 120) + 16))(*(v8 + 120), v20, &v18, &v19);
      *v6++ = v21;
      this = C3DSceneSourcePerformConsistencyCheck(v20);
      --v9;
    }

    while (v9);
  }

  return this;
}

float32x4_t btConvexTriangleMeshShape::localGetSupportingVertex@<Q0>(btConvexTriangleMeshShape *this@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  (*(*this + 136))(this);
  result.f32[0] = (*(*this + 96))(this);
  if (result.f32[0] != 0.0)
  {
    v8 = vmulq_f32(*a2, *a2);
    *v7.f32 = vpadd_f32(*v8.i8, *v8.i8);
    v9 = vextq_s8(v8, v8, 8uLL);
    *v9.f32 = vadd_f32(*v7.f32, *v9.f32);
    v7.i32[0] = 679477248;
    v10 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v7, v9), 0), xmmword_21C2A2150, *a2);
    v11 = vmulq_f32(v10, v10);
    v12 = vmulq_n_f32(vmulq_n_f32(v10, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).f32[0])), (*(*this + 96))(this));
    v12.i32[3] = 0;
    result = vaddq_f32(*a3, v12);
    *a3 = result;
  }

  return result;
}

void btConvexTriangleMeshShape::~btConvexTriangleMeshShape(btConvexTriangleMeshShape *this)
{
  btPolyhedralConvexShape::~btPolyhedralConvexShape(this);

  btAlignedFreeInternal(v1);
}

void LocalSupportVertexCallback::~LocalSupportVertexCallback(LocalSupportVertexCallback *this)
{
  C3DSceneSourcePerformConsistencyCheck(this);

  JUMPOUT(0x21CF07610);
}

uint64_t LocalSupportVertexCallback::internalProcessTriangleIndex(uint64_t this, btVector3 *a2)
{
  v2 = 0;
  v3 = *(this + 48);
  v4 = *(this + 32);
  do
  {
    v5 = vmulq_f32(v3, a2[v2]);
    v6 = vadd_f32(vpadd_f32(*v5.i8, *v5.i8), *&vextq_s8(v5, v5, 8uLL)).f32[0];
    if (v6 > v4)
    {
      *(this + 32) = v6;
      *(this + 16) = a2[v2];
      v4 = v6;
    }

    ++v2;
  }

  while (v2 != 3);
  return this;
}

void btCylinderShape::btCylinderShape(btCylinderShape *this, const btVector3 *a2)
{
  btConvexInternalShape::btConvexInternalShape(this);
  *v4 = &unk_282DCA3A0;
  *(v4 + 18) = 1;
  btConvexInternalShape::setSafeMargin(v4, a2, 0.1);
  *v5.i64 = (*(*this + 96))(this);
  v11 = v5;
  v6 = (*(*this + 96))(this);
  v10 = LODWORD(v6);
  v7 = (*(*this + 96))(this);
  v8 = v11;
  v8.i32[1] = v10;
  v8.f32[2] = v7;
  v9 = vsubq_f32(vmulq_f32(*a2, *(this + 2)), v8);
  v9.i32[3] = 0;
  *(this + 3) = v9;
  *(this + 2) = 13;
}

float32x4_t btCylinderShape::getAabb(float32x4_t *this, const btTransform *a2, btVector3 *a3, btVector3 *a4)
{
  *&v8 = (*(this->i64[0] + 96))(this);
  var1 = a2->var1;
  v10 = vdupq_lane_s32(v8, 0);
  v10.i32[3] = 0;
  v11 = vaddq_f32(this[3], v10);
  v12 = vmulq_f32(v11, vandq_s8(a2->var0.var0[0], xmmword_21C2A40B0));
  v13 = vmulq_f32(v11, vandq_s8(a2->var0.var0[1], xmmword_21C2A40B0));
  v14 = vmulq_f32(v11, vandq_s8(a2->var0.var0[2], xmmword_21C2A40B0));
  v14.i32[3] = 0;
  *v12.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vpadd_f32(*v12.f32, *v13.i8));
  *&v12.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
  v15 = vsubq_f32(var1, v12);
  v15.var0.var0[3] = 0.0;
  *a3 = v15;
  result = vaddq_f32(var1, v12);
  *a4 = result;
  return result;
}

void btCylinderShape::calculateLocalInertia(btCylinderShape *this, float a2, btVector3 *a3)
{
  v20 = *(this + 3);
  *v6.i64 = (*(*this + 96))(this);
  v19 = v6;
  v7 = (*(*this + 96))(this);
  v18 = LODWORD(v7);
  v8 = (*(*this + 96))(this);
  v9 = v19;
  v9.i32[1] = v18;
  v9.f32[2] = v8;
  v15 = vaddq_f32(v20, v9);
  v10 = *(this + 18);
  v11 = vmulq_f32(v15, v15).f32[0];
  v12 = ((a2 * 0.25) * v11) + ((a2 / 12.0) * vmuls_lane_f32(vmuls_lane_f32(4.0, v15, 2), v15, 2));
  v13 = (a2 * 0.5) * v11;
  v14 = (a2 * 0.25) * v11;
  v15.f32[0] = ((a2 * 0.25) * (v15.f32[1] * v15.f32[1])) + ((a2 / 12.0) * ((4.0 * v15.f32[0]) * v15.f32[0]));
  v16 = (a2 * 0.5) * (v15.f32[1] * v15.f32[1]);
  if (v10)
  {
    v16 = v14 + ((a2 / 12.0) * (v15.f32[1] * (v15.f32[1] * 4.0)));
    v17 = v13;
  }

  else
  {
    v17 = v15.f32[0];
  }

  if (v10)
  {
    v15.f32[0] = v14 + ((a2 / 12.0) * (v15.f32[1] * (v15.f32[1] * 4.0)));
  }

  if (v10 == 2)
  {
    v16 = v12;
    v17 = v12;
  }

  a3->var0.var0[0] = v16;
  a3->var0.var0[1] = v17;
  if (v10 == 2)
  {
    v15.f32[0] = v13;
  }

  LODWORD(a3->var0.var0[2]) = v15.i32[0];
  a3->var0.var0[3] = 0.0;
}

uint64_t btCylinderShape::localGetSupportingVertexWithoutMargin@<X0>(uint64_t this@<X0>, const btVector3 *a2@<X1>, float *a3@<X8>)
{
  v3 = *(this + 48);
  v4 = *(this + 52);
  v5 = a2->var0.var0[0];
  v6 = a2->var0.var0[2];
  v7 = sqrtf((v6 * v6) + (v5 * v5));
  if (v7 == 0.0)
  {
    if (a2->var0.var0[1] < 0.0)
    {
      v4 = -v4;
    }

    v9 = 0.0;
  }

  else
  {
    v8 = v3 / v7;
    v3 = v5 * v8;
    if (a2->var0.var0[1] < 0.0)
    {
      v4 = -v4;
    }

    v9 = v6 * v8;
  }

  *a3 = v3;
  a3[1] = v4;
  a3[2] = v9;
  return this;
}

__n128 btCylinderShape::batchedUnitVectorGetSupportingVertexWithoutMargin(btCylinderShape *this, const btVector3 *a2, btVector3 *a3, int a4, __n128 a5)
{
  if (a4 >= 1)
  {
    v5 = a4;
    v6 = &a2->var0.var0[1];
    do
    {
      v7 = *(this + 12);
      v8 = *(v6 - 1);
      v9 = v6[1];
      v10 = sqrtf((v9 * v9) + (v8 * v8));
      v11 = -*(this + 13);
      if (v10 == 0.0)
      {
        if (*v6 >= 0.0)
        {
          v11 = *(this + 13);
        }

        v13 = 0.0;
      }

      else
      {
        v12 = v7 / v10;
        v7 = v8 * v12;
        if (*v6 >= 0.0)
        {
          v11 = *(this + 13);
        }

        v13 = v9 * v12;
      }

      a5.n128_u64[0] = __PAIR64__(LODWORD(v11), LODWORD(v7));
      a5.n128_f32[2] = v13;
      *a3++ = a5;
      v6 += 4;
      --v5;
    }

    while (v5);
  }

  result.n128_u64[0] = a5.n128_u64[0];
  result.n128_u32[2] = a5.n128_u32[2];
  return result;
}

void btCylinderShape::~btCylinderShape(btCylinderShape *this)
{
  v1 = C3DSceneSourcePerformConsistencyCheck(this);

  btAlignedFreeInternal(v1);
}

float32x4_t btCylinderShape::setLocalScaling(float32x4_t *this, float32x4_t *a2)
{
  v4 = (*(this->i64[0] + 96))(this);
  v15 = LODWORD(v4);
  v5 = (*(this->i64[0] + 96))(this);
  v13 = LODWORD(v5);
  *&v6 = (*(this->i64[0] + 96))(this);
  v7.i64[0] = __PAIR64__(v13, v15);
  v7.i64[1] = v6;
  v16 = v7;
  v8 = this[2];
  v9 = vaddq_f32(this[3], v7);
  v10 = vrecpeq_f32(v8);
  v11 = vmulq_f32(v10, vrecpsq_f32(v8, v10));
  v14 = vmulq_f32(vrecpsq_f32(v8, v11), vmulq_f32(v9, v11));
  btConvexInternalShape::setLocalScaling(this, a2);
  result = vsubq_f32(vmulq_f32(v14, this[2]), v16);
  result.i32[3] = 0;
  this[3] = result;
  return result;
}

uint64_t btCylinderShape::getAnisotropicRollingFrictionDirection@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  *(a2 + *(this + 72)) = 1065353216;
  return this;
}

float32x4_t btCylinderShape::setMargin(float32x4_t *this, float32_t a2)
{
  v4 = (*(this->i64[0] + 96))(this);
  v16 = LODWORD(v4);
  v5 = (*(this->i64[0] + 96))(this);
  v14 = LODWORD(v5);
  *&v6 = (*(this->i64[0] + 96))(this);
  v7.i64[0] = __PAIR64__(v14, v16);
  v7.i64[1] = v6;
  v17 = vaddq_f32(this[3], v7);
  this[4].f32[0] = a2;
  v8 = (*(this->i64[0] + 96))(this);
  v15 = LODWORD(v8);
  v9 = (*(this->i64[0] + 96))(this);
  v13 = LODWORD(v9);
  *&v10 = (*(this->i64[0] + 96))(this);
  v11.i64[0] = __PAIR64__(v13, v15);
  v11.i64[1] = v10;
  result = vsubq_f32(v17, v11);
  result.i32[3] = 0;
  this[3] = result;
  return result;
}

const char *btCylinderShape::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  btCollisionShape::serialize(a1, a2, a3);
  for (i = 0; i != 16; i += 4)
  {
    *(a2 + 32 + i) = *(a1 + 48 + i);
  }

  for (j = 0; j != 16; j += 4)
  {
    *(a2 + 16 + j) = *(a1 + 32 + j);
  }

  *(a2 + 48) = *(a1 + 64);
  *(a2 + 56) = *(a1 + 72);
  return "btCylinderShapeData";
}

float32x4_t btCylinderShape::localGetSupportingVertex@<Q0>(btCylinderShape *this@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  (*(*this + 136))(&v14);
  v13 = v14;
  *a3 = v14;
  result.f32[0] = (*(*this + 96))(this);
  if (result.f32[0] != 0.0)
  {
    v8 = vmulq_f32(*a2, *a2);
    *v7.f32 = vpadd_f32(*v8.i8, *v8.i8);
    v9 = vextq_s8(v8, v8, 8uLL);
    *v9.f32 = vadd_f32(*v7.f32, *v9.f32);
    v7.i32[0] = 679477248;
    v10 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v7, v9), 0), xmmword_21C2A2150, *a2);
    v11 = vmulq_f32(v10, v10);
    v12 = vmulq_n_f32(vmulq_n_f32(v10, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).f32[0])), (*(*this + 96))(this));
    v12.i32[3] = 0;
    result = vaddq_f32(v13, v12);
    *a3 = result;
  }

  return result;
}

float btCylinderShape::getRadius(btCylinderShape *this)
{
  v2 = *(this + 12);
  v3 = (*(*this + 96))();
  (*(*this + 96))(this);
  (*(*this + 96))(this);
  return v2 + v3;
}

void btMultiSphereShape::btMultiSphereShape(btMultiSphereShape *this, const btVector3 *a2, const float *a3, int a4)
{
  btConvexInternalAabbCachingShape::btConvexInternalAabbCachingShape(this);
  *v8 = &unk_282DCA470;
  *(v8 + 144) = 1;
  *(v8 + 136) = 0;
  *(v8 + 124) = 0;
  *(v8 + 176) = 1;
  *(v8 + 168) = 0;
  *(v8 + 156) = 0;
  *(v8 + 8) = 9;
  if (a4 < 0)
  {
    v15 = 0;
  }

  else
  {
    if (!a4)
    {
      *(this + 31) = 0;
      *(this + 39) = 0;
      goto LABEL_29;
    }

    v9 = btAlignedAllocInternal(16 * a4, 16);
    v10 = v9;
    v11 = *(this + 31);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = 16 * v11;
      do
      {
        *(v9 + v12) = *(*(this + 17) + v12);
        v12 += 16;
      }

      while (v13 != v12);
    }

    v14 = *(this + 17);
    if (v14 && *(this + 144) == 1)
    {
      btAlignedFreeInternal(v14);
    }

    *(this + 144) = 1;
    *(this + 17) = v10;
    *(this + 32) = a4;
    v15 = *(this + 39);
  }

  *(this + 31) = a4;
  if (v15 < a4)
  {
    if (*(this + 40) >= a4)
    {
LABEL_25:
      bzero((*(this + 21) + 4 * v15), 4 * (~v15 + a4) + 4);
      goto LABEL_26;
    }

    if (a4)
    {
      v16 = btAlignedAllocInternal(4 * a4, 16);
      LODWORD(v17) = *(this + 39);
    }

    else
    {
      v16 = 0;
      LODWORD(v17) = v15;
    }

    v18 = *(this + 21);
    if (v17 < 1)
    {
      if (!v18)
      {
LABEL_24:
        *(this + 176) = 1;
        *(this + 21) = v16;
        *(this + 40) = a4;
        goto LABEL_25;
      }
    }

    else
    {
      v17 = v17;
      v19 = v16;
      v20 = *(this + 21);
      do
      {
        v21 = *v20++;
        *v19++ = v21;
        --v17;
      }

      while (v17);
    }

    if (*(this + 176) == 1)
    {
      btAlignedFreeInternal(v18);
    }

    goto LABEL_24;
  }

LABEL_26:
  *(this + 39) = a4;
  if (a4 >= 1)
  {
    v22 = 0;
    do
    {
      *(*(this + 17) + 16 * v22) = a2[v22];
      *(*(this + 21) + 4 * v22) = a3[v22];
      ++v22;
    }

    while (a4 != v22);
  }

LABEL_29:
  btConvexInternalAabbCachingShape::recalcLocalAabb(this);
}

uint64_t btMultiSphereShape::localGetSupportingVertexWithoutMargin@<X0>(uint64_t this@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = this;
  v37 = *MEMORY[0x277D85DE8];
  a3->i64[0] = 0;
  a3->i64[1] = 0;
  v4 = *a2;
  v5 = vmulq_f32(v4, v4);
  v6 = vadd_f32(vpadd_f32(*v5.i8, *v5.i8), *&vextq_s8(v5, v5, 8uLL)).f32[0];
  if (v6 >= 1.4211e-14)
  {
    v7 = vmulq_n_f32(v4, 1.0 / sqrtf(v6));
  }

  else
  {
    v7 = xmmword_21C27F910;
  }

  v35 = v7;
  v34 = 0.0;
  v8 = *(this + 124);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(this + 168);
    v11 = *(this + 136);
    v12 = -1.0e18;
    v13 = *(this + 124);
    v32 = v13;
    do
    {
      v14 = v13 - 128;
      if (v13 >= 128)
      {
        v13 = 128;
      }

      if (v13 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v13;
      }

      v16 = v8 - v9;
      if (v8 - v9 >= 128)
      {
        v17 = 128;
      }

      else
      {
        v17 = v8 - v9;
      }

      if (v16 < 1)
      {
        this = -1;
        v28 = -3.4028e38;
      }

      else
      {
        v18 = 0;
        v19 = v17;
        v20 = v35;
        do
        {
          v21 = *v10++;
          v22 = vmulq_n_f32(vmulq_f32(v20, v3[2]), v21);
          v22.i32[3] = 0;
          v23 = *v11++;
          v33 = vaddq_f32(v23, v22);
          v24 = (*(v3->i64[0] + 96))(v3);
          v20 = v35;
          v25 = vsubq_f32(v33, vmulq_n_f32(v35, v24));
          v25.i32[3] = 0;
          v36[v18++] = v25;
        }

        while (v15 != v18);
        if (v16 > 3)
        {
          this = _maxdot_large(v36[0].f32, v35.f32, v19, &v34);
          v28 = v34;
          v8 = v32;
          goto LABEL_26;
        }

        v26 = 0;
        v27 = -1;
        v28 = -3.4028e38;
        do
        {
          v29 = vmulq_f32(v36[v26], v35);
          v30 = vadd_f32(vpadd_f32(*v29.i8, *v29.i8), *&vextq_s8(v29, v29, 8uLL)).f32[0];
          if (v30 > v28)
          {
            v28 = v30;
            v27 = v26;
          }

          ++v26;
        }

        while (v26 < v19);
        this = v27;
        v8 = v32;
      }

      v34 = v28;
LABEL_26:
      if (v28 > v12)
      {
        *a3 = v36[this];
        v12 = v28;
      }

      v9 += 128;
      v13 = v14;
    }

    while (v9 < v8);
  }

  return this;
}

uint64_t btMultiSphereShape::batchedUnitVectorGetSupportingVertexWithoutMargin(uint64_t this, const btVector3 *a2, btVector3 *a3, int a4)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a4 >= 1)
  {
    v4 = this;
    v32 = 0;
    v30 = a4;
    while (1)
    {
      v36 = 0.0;
      v5 = v4[7].i32[3];
      if (v5 >= 1)
      {
        break;
      }

LABEL_28:
      if (++v32 == v30)
      {
        return this;
      }
    }

    v6 = 0;
    v7 = v4[10].i64[1];
    v8 = v4[8].i64[1];
    v9 = v4[7].i32[3];
    v10 = -1.0e18;
    v11 = &a2[v32];
    v33 = v9;
    while (1)
    {
      v12 = v9 - 128;
      if (v9 >= 128)
      {
        v9 = 128;
      }

      if (v9 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v9;
      }

      v14 = v5 - v6;
      if (v5 - v6 >= 128)
      {
        v15 = 128;
      }

      else
      {
        v15 = v5 - v6;
      }

      if (v14 < 1)
      {
        this = -1;
        v26 = -3.4028e38;
      }

      else
      {
        v34 = v12;
        v16 = 0;
        v17 = v15;
        v18 = *v11;
        do
        {
          v19 = *v7++;
          v20 = vmulq_n_f32(vmulq_f32(v18, v4[2]), v19);
          v20.i32[3] = 0;
          v21 = *v8++;
          v35 = vaddq_f32(v21, v20);
          v22 = (*(v4->i64[0] + 96))(v4);
          v18 = *v11;
          v23 = vsubq_f32(v35, vmulq_n_f32(*v11, v22));
          v23.i32[3] = 0;
          v37[v16++] = v23;
        }

        while (v13 != v16);
        if (v14 > 3)
        {
          this = _maxdot_large(v37[0].f32, v11->f32, v17, &v36);
          v26 = v36;
          v5 = v33;
          v12 = v34;
          goto LABEL_25;
        }

        v24 = 0;
        v25 = -1;
        v26 = -3.4028e38;
        do
        {
          v27 = vmulq_f32(v37[v24], *v11);
          v28 = vadd_f32(vpadd_f32(*v27.i8, *v27.i8), *&vextq_s8(v27, v27, 8uLL)).f32[0];
          if (v28 > v26)
          {
            v26 = v28;
            v25 = v24;
          }

          ++v24;
        }

        while (v24 < v17);
        this = v25;
        v5 = v33;
        v12 = v34;
      }

      v36 = v26;
LABEL_25:
      if (v26 > v10)
      {
        a3[v32] = v37[this];
        v10 = v26;
      }

      v6 += 128;
      v9 = v12;
      if (v6 >= v5)
      {
        goto LABEL_28;
      }
    }
  }

  return this;
}

float btMultiSphereShape::calculateLocalInertia(float32x4_t *this, float a2, btVector3 *a3)
{
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmulq_f32(vsubq_f32(this[6], this[5]), v3);
  v5 = a2 / 12.0;
  v3.f32[0] = (v4.f32[2] + v4.f32[2]) * (v4.f32[2] + v4.f32[2]);
  *v4.f32 = vadd_f32(*v4.f32, *v4.f32);
  *a3->var0.var0 = vrev64_s32(vmul_n_f32(vmla_f32(vdup_lane_s32(*v3.f32, 0), *v4.f32, *v4.f32), v5));
  result = v5 * (COERCE_FLOAT(vmul_f32(*&v4, *&v4).i32[1]) + (v4.f32[0] * v4.f32[0]));
  *&a3->var0.var0[2] = LODWORD(result);
  return result;
}

const char *btMultiSphereShape::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  btCollisionShape::serialize(a1, a2, a3);
  for (i = 0; i != 16; i += 4)
  {
    *(a2 + 32 + i) = *(a1 + 48 + i);
  }

  for (j = 0; j != 16; j += 4)
  {
    *(a2 + 16 + j) = *(a1 + 32 + j);
  }

  *(a2 + 48) = *(a1 + 64);
  v8 = *(a1 + 124);
  if (v8)
  {
    *(a2 + 56) = (*(*a3 + 56))(a3, *(a1 + 136));
    *(a2 + 64) = v8;
    v9 = (*(*a3 + 32))(a3, 20, v8);
    v10 = *(a1 + 136);
    if (v8 >= 1)
    {
      v11 = 0;
      v12 = *(v9 + 8);
      v13 = *(a1 + 168);
      v14 = *(a1 + 136);
      do
      {
        for (k = 0; k != 16; k += 4)
        {
          *(v12 + k) = *(v14 + k);
        }

        *(v12 + 16) = *(v13 + 4 * v11++);
        v12 += 20;
        v14 += 16;
      }

      while (v11 != v8);
    }

    (*(*a3 + 40))(a3, v9, "btPositionAndRadius", 1497453121, v10);
  }

  else
  {
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
  }

  return "btMultiSphereShapeData";
}

void btMultiSphereShape::~btMultiSphereShape(btMultiSphereShape *this)
{
  *this = &unk_282DCA470;
  v2 = *(this + 21);
  if (v2 && *(this + 176) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 176) = 1;
  *(this + 21) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  v3 = *(this + 17);
  if (v3 && *(this + 144) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 144) = 1;
  *(this + 17) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;

  C3DSceneSourcePerformConsistencyCheck(this);
}

{
  *this = &unk_282DCA470;
  v2 = *(this + 21);
  if (v2 && *(this + 176) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 176) = 1;
  *(this + 21) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  v3 = *(this + 17);
  if (v3 && *(this + 144) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 144) = 1;
  *(this + 17) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  v4 = C3DSceneSourcePerformConsistencyCheck(this);

  btAlignedFreeInternal(v4);
}

void btOptimizedBvh::~btOptimizedBvh(btOptimizedBvh *this)
{
  btQuantizedBvh::~btQuantizedBvh(this);

  btAlignedFreeInternal(v1);
}

void btOptimizedBvh::build(float32x4_t *this, btStridingMeshInterface *a2, int a3, float32x4_t *a4, float32x4_t *a5, int32x2_t a6)
{
  this[4].i8[8] = a3;
  if (a3)
  {
    a6.i32[0] = 1.0;
    v8 = btQuantizedBvh::setQuantizationValues(this, a4, a5, a6);
    v59 = &unk_282DCA588;
    v60 = this + 9;
    v61 = this;
    (*(*a2 + 16))(a2, &v59, this + 1, this + 2, v8);
    v9 = this[9].i32[1];
    v10 = 2 * v9;
    v11 = this[11].i32[1];
    if (v11 < 2 * v9)
    {
      v12 = v11;
      if (this[11].i32[2] < v10)
      {
        if (v9)
        {
          v13 = btAlignedAllocInternal(32 * v9, 16);
          v11 = this[11].i32[1];
        }

        else
        {
          v13 = 0;
        }

        if (v11 >= 1)
        {
          v18 = 0;
          v19 = 16 * v11;
          do
          {
            *(v13 + v18) = *(this[12].i64[0] + v18);
            v18 += 16;
          }

          while (v19 != v18);
        }

        v20 = this[12].i64[0];
        if (v20 && this[12].i8[8] == 1)
        {
          btAlignedFreeInternal(v20);
        }

        this[12].i8[8] = 1;
        this[12].i64[0] = v13;
        this[11].i32[2] = v10;
      }

      v21 = 16 * v12;
      v22 = v10 - v12;
      do
      {
        v23 = (this[12].i64[0] + v21);
        *v23 = 0;
        v23[1] = 0;
        v21 += 16;
        --v22;
      }

      while (v22);
    }

    this[11].i32[1] = v10;
  }

  else
  {
    v59 = &unk_282DCA5B0;
    v60 = this + 5;
    v57 = xmmword_21C2A4030;
    v58 = xmmword_21C2A4040;
    (*(*a2 + 16))(a2, &v59, &v58, &v57, a5);
    v9 = this[5].i32[1];
    v14 = 2 * v9;
    v15 = this[7].i32[1];
    if (v15 < 2 * v9)
    {
      v16 = v15;
      if (this[7].i32[2] < v14)
      {
        if (v9)
        {
          v17 = btAlignedAllocInternal(v9 << 7, 16);
          v15 = this[7].i32[1];
        }

        else
        {
          v17 = 0;
        }

        if (v15 >= 1)
        {
          v24 = 0;
          v25 = v15 << 6;
          do
          {
            v26 = (v17 + v24);
            v27 = (this[8].i64[0] + v24);
            *v26 = *v27;
            v26[1] = v27[1];
            v28 = v27[3];
            v26[2] = v27[2];
            v26[3] = v28;
            v24 += 64;
          }

          while (v25 != v24);
        }

        v29 = this[8].i64[0];
        if (v29 && this[8].i8[8] == 1)
        {
          btAlignedFreeInternal(v29);
        }

        this[8].i8[8] = 1;
        this[8].i64[0] = v17;
        this[7].i32[2] = v14;
      }

      v30 = v16 << 6;
      v31 = v14 - v16;
      do
      {
        v32 = (this[8].i64[0] + v30);
        v32[2] = 0uLL;
        v32[3] = 0uLL;
        *v32 = 0uLL;
        v32[1] = 0uLL;
        v30 += 64;
        --v31;
      }

      while (v31);
    }

    this[7].i32[1] = v14;
  }

  C3DSceneSourcePerformConsistencyCheck(&v59);
  this[4].i32[1] = 0;
  if (v9)
  {
    btQuantizedBvh::buildTree(this, 0, v9, v33, v34, v35, v36, v37, v38, v39, v40);
    if (this[4].i8[8] == 1 && !this[13].i32[3])
    {
      v41 = 1;
      if (!this[14].i32[0])
      {
        v42 = btAlignedAllocInternal(32, 16);
        v43 = v42;
        v44 = this[13].u32[3];
        if (v44 >= 1)
        {
          v45 = 0;
          v46 = 32 * v44;
          do
          {
            v47 = (v42 + v45);
            v48 = (this[14].i64[1] + v45);
            v49 = v48[1];
            *v47 = *v48;
            v47[1] = v49;
            v45 += 32;
          }

          while (v46 != v45);
        }

        v50 = this[14].i64[1];
        if (v50 && this[15].i8[0] == 1)
        {
          btAlignedFreeInternal(v50);
        }

        this[15].i8[0] = 1;
        this[14].i64[1] = v43;
        this[14].i32[0] = 1;
        v41 = this[13].i32[3] + 1;
      }

      this[13].i32[3] = v41;
      v51 = this[14].i64[1];
      v52 = this[12].i64[0];
      *v51 = *v52;
      *(v51 + 2) = *(v52 + 2);
      *(v51 + 4) = *(v52 + 4);
      *(v51 + 6) = *(v52 + 6);
      *(v51 + 8) = *(v52 + 8);
      *(v51 + 10) = *(v52 + 10);
      *(v51 + 12) = 0;
      v53 = *(v52 + 12);
      if (v53 < 0)
      {
        v54 = -v53;
      }

      else
      {
        v54 = 1;
      }

      *(v51 + 16) = v54;
    }

    this[15].i32[2] = this[13].i32[3];
    v55 = this[10].i64[0];
    if (v55 && this[10].i8[8] == 1)
    {
      btAlignedFreeInternal(v55);
    }

    this[10].i8[8] = 1;
    this[10].i64[0] = 0;
    this[9].i32[1] = 0;
    this[9].i32[2] = 0;
    v56 = this[6].i64[0];
    if (v56)
    {
      if (this[6].i8[8] == 1)
      {
        btAlignedFreeInternal(v56);
      }
    }

    this[6].i8[8] = 1;
    this[6].i64[0] = 0;
    this[5].i32[1] = 0;
    this[5].i32[2] = 0;
  }
}

void btOptimizedBvh::build(btStridingMeshInterface *,BOOL,btVector3 const&,btVector3 const&)::QuantizedNodeTriangleCallback::~QuantizedNodeTriangleCallback(uint64_t a1)
{
  C3DSceneSourcePerformConsistencyCheck(a1);

  JUMPOUT(0x21CF07610);
}

double btOptimizedBvh::build(btStridingMeshInterface *,BOOL,btVector3 const&,btVector3 const&)::QuantizedNodeTriangleCallback::internalProcessTriangleIndex(uint64_t a1, float32x4_t *a2, int a3, int a4)
{
  v6 = a2[1];
  v7 = vminq_f32(vminq_f32(*a2, xmmword_21C2A4030), v6);
  v8 = vmaxq_f32(vmaxq_f32(*a2, xmmword_21C2A4040), v6);
  v9 = a2[2];
  v10 = vminq_f32(v7, v9);
  v11 = vmaxq_f32(v8, v9);
  v12 = v10;
  *v12.i32 = v10.f32[0] + -0.001;
  v13 = v11;
  *v13.i32 = v11.f32[0] + 0.001;
  v9.i32[0] = 990057071;
  v14 = vdupq_lane_s32(*&vcgtq_f32(v9, vsubq_f32(v11, v10)), 0);
  v15 = vbslq_s8(v14, v12, v10);
  v16 = vbslq_s8(v14, v13, v11);
  if ((v16.f32[1] - v15.f32[1]) < 0.002)
  {
    v16.f32[1] = v16.f32[1] + 0.001;
    v15.f32[1] = v15.f32[1] + -0.001;
  }

  if ((v16.f32[2] - v15.f32[2]) < 0.002)
  {
    v16.f32[2] = v16.f32[2] + 0.001;
    v15.f32[2] = v15.f32[2] + -0.001;
  }

  v18 = *(a1 + 8);
  v17 = *(a1 + 16);
  v19 = v17[1];
  v20 = v17[3];
  v21 = *(v18 + 4);
  if (v21 == *(v18 + 8))
  {
    v22 = v21 ? 2 * v21 : 1;
    if (v21 < v22)
    {
      v35 = v16;
      v36 = v15;
      v33 = v20;
      v34 = v19;
      if (v22)
      {
        v23 = btAlignedAllocInternal(16 * v22, 16);
        v20 = v33;
        v19 = v34;
        v16 = v35;
        v15 = v36;
        v24 = v23;
        v21 = *(v18 + 4);
      }

      else
      {
        v24 = 0;
      }

      if (v21 >= 1)
      {
        v25 = 0;
        v26 = 16 * v21;
        do
        {
          *(v24 + v25) = *(*(v18 + 16) + v25);
          v25 += 16;
        }

        while (v26 != v25);
      }

      v27 = *(v18 + 16);
      if (v27 && *(v18 + 24) == 1)
      {
        btAlignedFreeInternal(v27);
        v20 = v33;
        v19 = v34;
        v16 = v35;
        v15 = v36;
      }

      *(v18 + 24) = 1;
      *(v18 + 16) = v24;
      *(v18 + 8) = v22;
      v21 = *(v18 + 4);
    }
  }

  v28 = vmulq_f32(v20, vsubq_f32(v16, v19));
  v29 = (v28.f32[1] + 1.0) | 1;
  v30 = vmulq_f32(v20, vsubq_f32(v15, v19));
  v31 = *(v18 + 16) + 16 * v21;
  v30.f32[3] = v28.f32[0] + 1.0;
  *v28.f32 = vmovn_s32(vcvtq_u32_f32(v30));
  v30.i32[0] = v28.i32[0] & 0xFFFEFFFE;
  v30.i16[2] = v28.i16[2] & 0xFFFE;
  *&result = v28.i64[0] | 0x1000100010001;
  v30.i16[3] = HIWORD(result);
  *v31 = v30.i64[0];
  *(v31 + 8) = v29;
  *(v31 + 10) = (v28.f32[2] + 1.0) | 1;
  *(v31 + 12) = a4 | (a3 << 21);
  ++*(v18 + 4);
  return result;
}

void btOptimizedBvh::build(btStridingMeshInterface *,BOOL,btVector3 const&,btVector3 const&)::NodeTriangleCallback::~NodeTriangleCallback(uint64_t a1)
{
  C3DSceneSourcePerformConsistencyCheck(a1);

  JUMPOUT(0x21CF07610);
}

float32x4_t btOptimizedBvh::build(btStridingMeshInterface *,BOOL,btVector3 const&,btVector3 const&)::NodeTriangleCallback::internalProcessTriangleIndex(uint64_t a1, float32x4_t *a2, __int32 a3, __int32 a4)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *(a1 + 8);
  v10 = *(v9 + 4);
  if (v10 == *(v9 + 8))
  {
    v11 = v10 ? 2 * v10 : 1;
    if (v10 < v11)
    {
      v23 = a2[1];
      v24 = *a2;
      v22 = a2[2];
      if (v11)
      {
        v12 = btAlignedAllocInternal(v11 << 6, 16);
        v8 = v22;
        v7 = v23;
        v6 = v24;
        v13 = v12;
        v10 = *(v9 + 4);
      }

      else
      {
        v13 = 0;
      }

      if (v10 >= 1)
      {
        v14 = 0;
        v15 = v10 << 6;
        do
        {
          v16 = (v13 + v14);
          v17 = (*(v9 + 16) + v14);
          *v16 = *v17;
          v16[1] = v17[1];
          v18 = v17[3];
          v16[2] = v17[2];
          v16[3] = v18;
          v14 += 64;
        }

        while (v15 != v14);
      }

      v19 = *(v9 + 16);
      if (v19 && *(v9 + 24) == 1)
      {
        btAlignedFreeInternal(v19);
        v8 = v22;
        v7 = v23;
        v6 = v24;
      }

      *(v9 + 24) = 1;
      *(v9 + 16) = v13;
      *(v9 + 8) = v11;
      v10 = *(v9 + 4);
    }
  }

  result = vmaxq_f32(vmaxq_f32(vmaxq_f32(v6, xmmword_21C2A4040), v7), v8);
  v21 = (*(v9 + 16) + (v10 << 6));
  *v21 = vminq_f32(vminq_f32(vminq_f32(v6, xmmword_21C2A4030), v7), v8);
  v21[1] = result;
  v21[2].i32[0] = -1;
  v21[2].i32[1] = a3;
  v21[2].i32[2] = a4;
  ++*(v9 + 4);
  return result;
}

void btPolyhedralConvexShape::btPolyhedralConvexShape(btPolyhedralConvexShape *this)
{
  btConvexInternalShape::btConvexInternalShape(this);
  *v1 = &unk_282DCA5D8;
  v1[9] = 0;
}

void btPolyhedralConvexShape::~btPolyhedralConvexShape(btPolyhedralConvexShape *this)
{
  *this = &unk_282DCA5D8;
  v2 = *(this + 9);
  if (v2)
  {
    (**v2)(v2);
    btAlignedFreeInternal(*(this + 9));
  }

  C3DSceneSourcePerformConsistencyCheck(this);
}

uint64_t btPolyhedralConvexShape::initializePolyhedralFeatures(btPolyhedralConvexShape *this, int a2)
{
  v232 = *MEMORY[0x277D85DE8];
  v4 = *(this + 9);
  if (v4)
  {
    (**v4)(v4);
    btAlignedFreeInternal(*(this + 9));
  }

  v5 = btAlignedAllocInternal(192, 16);
  btConvexPolyhedron::btConvexPolyhedron(v5);
  *(this + 9) = v6;
  v228 = 1;
  v227 = 0;
  v226 = 0;
  if ((*(*this + 192))(this) >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      if (v12 == v11)
      {
        if (v11)
        {
          v14 = (2 * v11);
        }

        else
        {
          v14 = 1;
        }

        if (v11 < v14)
        {
          if (v14)
          {
            v15 = btAlignedAllocInternal(16 * v14, 16);
          }

          else
          {
            v15 = 0;
          }

          if (v11 >= 1)
          {
            v17 = 0;
            do
            {
              *&v15[v17] = *&v227[v17];
              v17 += 2;
            }

            while (2 * v11 != v17);
            v10 = v227;
          }

          if (v10 && v228 == 1)
          {
            btAlignedFreeInternal(v10);
          }

          v228 = 1;
          v227 = v15;
          HIDWORD(v226) = v14;
          v16 = v226;
          goto LABEL_24;
        }

        v15 = v10;
        v16 = v11;
      }

      else
      {
        v15 = v10;
        v16 = v12;
      }

      v14 = v11;
LABEL_24:
      v18 = v16 + 1;
      LODWORD(v226) = v16 + 1;
      (*(*this + 216))(this, v13, &v15[2 * v12]);
      v13 = (v13 + 1);
      v10 = v15;
      v11 = v14;
      v12 = v18;
      if (v13 >= (*(*this + 192))(this))
      {
        goto LABEL_27;
      }
    }
  }

  v18 = 0;
  v15 = 0;
LABEL_27:
  v218 = 1;
  v217 = 0;
  v216 = 0;
  v221 = 1;
  v220 = 0;
  v219 = 0;
  v224 = 1;
  v223 = 0;
  v222 = 0;
  if (a2)
  {
    v230.i8[8] = 1;
    v230.i64[0] = 0;
    *(v229.i64 + 4) = 0;
    btGeometryUtil::getPlaneEquationsFromVertices(v225, &v229);
    v214 = 1;
    v213 = 0;
    v212 = 0;
    if (v229.i32[1] >= 1)
    {
      v19 = 0;
      do
      {
        v195 = *(v230.i64[0] + 16 * v19);
        v20 = (*(*this + 96))(this);
        v21 = v212;
        if (v212 == HIDWORD(v212))
        {
          v22 = v212 ? 2 * v212 : 1;
          if (v212 < v22)
          {
            if (v22)
            {
              v23 = btAlignedAllocInternal(16 * v22, 16);
              v21 = v212;
            }

            else
            {
              v23 = 0;
            }

            if (v21 >= 1)
            {
              v24 = 0;
              v25 = 16 * v21;
              do
              {
                *&v23[v24] = *(v213 + v24);
                v24 += 16;
              }

              while (v25 != v24);
            }

            if (v213 && v214 == 1)
            {
              btAlignedFreeInternal(v213);
            }

            v214 = 1;
            v213 = v23;
            HIDWORD(v212) = v22;
            v21 = v212;
          }
        }

        v26 = v195;
        *(&v26 + 3) = *(&v195 + 3) - v20;
        *(v213 + v21) = v26;
        LODWORD(v212) = v212 + 1;
        ++v19;
      }

      while (v19 < v229.i32[1]);
    }

    v210 = 1;
    v209 = 0;
    v207 = 0;
    v208 = 0;
    btGeometryUtil::getVerticesFromPlaneEquations(v211, v206);
    btConvexHullComputer::compute(v215, v209, 0, 16, v207, 0.0, 0.0, v27, v28, v29);
    if (v209 && v210 == 1)
    {
      btAlignedFreeInternal(v209);
    }

    if (v213 && v214 == 1)
    {
      btAlignedFreeInternal(v213);
    }

    if (v230.i64[0] && v230.u8[8] == 1)
    {
      btAlignedFreeInternal(v230.i64[0]);
    }
  }

  else
  {
    btConvexHullComputer::compute(v215, v15, 0, 16, v18, 0.0, 0.0, v7, v8, v9);
  }

  v30 = v222;
  if (v222 < 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = btAlignedAllocInternal(16 * v222, 16);
  }

  v214 = 1;
  v213 = 0;
  HIDWORD(v212) = 0;
  v229 = 0u;
  v230 = 0u;
  v231 = 0u;
  v230.i8[8] = 1;
  v229.i32[1] = 0;
  v190 = this;
  if ((v30 & 0x80000000) != 0)
  {
    v36 = (48 * v30 + 24);
    v37 = v30 + 1;
    do
    {
      v38 = *(v36 - 1);
      if (v38 && *v36 == 1)
      {
        btAlignedFreeInternal(v38);
      }

      *v36 = 1;
      *(v36 - 1) = 0;
      *(v36 - 20) = 0;
      v36 += 48;
    }

    while (v37++);
  }

  else if (v30)
  {
    v32 = btAlignedAllocInternal(48 * v30, 16);
    v33 = v32;
    v214 = 1;
    v213 = v32;
    HIDWORD(v212) = v30;
    v34 = v30;
    do
    {
      v35 = btAlignedObjectArray<int>::btAlignedObjectArray(v32, &v229);
      *(v35 + 32) = v231;
      v32 = (v35 + 48);
      --v34;
    }

    while (v34);
    goto LABEL_70;
  }

  v33 = 0;
LABEL_70:
  LODWORD(v212) = v30;
  if (v230.i64[0] && v230.u8[8] == 1)
  {
    btAlignedFreeInternal(v230.i64[0]);
  }

  v40 = v216;
  v41 = *(this + 9);
  v42 = *(v41 + 12);
  if (v42 < v216 && *(v41 + 16) < v216)
  {
    if (v216)
    {
      v43 = btAlignedAllocInternal(16 * v216, 16);
      v42 = *(v41 + 12);
    }

    else
    {
      v43 = 0;
    }

    if (v42 >= 1)
    {
      v44 = 0;
      v45 = 16 * v42;
      do
      {
        *(v43 + v44) = *(*(v41 + 24) + v44);
        v44 += 16;
      }

      while (v45 != v44);
    }

    v46 = *(v41 + 24);
    if (v46 && *(v41 + 32) == 1)
    {
      btAlignedFreeInternal(v46);
    }

    *(v41 + 32) = 1;
    *(v41 + 24) = v43;
    *(v41 + 16) = v40;
  }

  *(v41 + 12) = v40;
  if (v40 >= 1)
  {
    v47 = 0;
    do
    {
      *(*(*(this + 9) + 24) + v47) = *(v217 + v47);
      v47 += 16;
    }

    while (16 * v40 != v47);
  }

  if (v30 < 1)
  {
    goto LABEL_142;
  }

  v48 = 0;
  v189 = v31;
  v196 = v30;
  do
  {
    v49 = 0;
    v50 = v220 + 12 * *(v223 + v48);
    v51 = &v33[48 * v48];
    v52 = v50;
    do
    {
      while (1)
      {
        v53 = v52[3 * v52[1] + 2];
        LODWORD(v54) = *(v51 + 1);
        if (v54 == *(v51 + 2))
        {
          v55 = v54 ? 2 * v54 : 1;
          if (v54 < v55)
          {
            if (v55)
            {
              v56 = btAlignedAllocInternal(4 * v55, 16);
              LODWORD(v54) = *(v51 + 1);
            }

            else
            {
              v56 = 0;
            }

            v57 = *(v51 + 2);
            if (v54 < 1)
            {
              if (!v57)
              {
LABEL_107:
                v51[24] = 1;
                *(v51 + 2) = v56;
                *(v51 + 2) = v55;
                LODWORD(v54) = *(v51 + 1);
                goto LABEL_108;
              }
            }

            else
            {
              v54 = v54;
              v58 = v56;
              v59 = *(v51 + 2);
              do
              {
                v60 = *v59++;
                *v58++ = v60;
                --v54;
              }

              while (v54);
            }

            if (v51[24] == 1)
            {
              btAlignedFreeInternal(v57);
            }

            *(v51 + 2) = 0;
            goto LABEL_107;
          }
        }

LABEL_108:
        *(*(v51 + 2) + 4 * v54) = v53;
        ++*(v51 + 1);
        if (v49 <= 1)
        {
          break;
        }

        v65 = &v52[3 * v52[1]];
        v52 = &v65[3 * *v65];
        v49 = 2;
        if (v52 == v50)
        {
          goto LABEL_114;
        }
      }

      v61 = vsubq_f32(*(v217 + v52[2]), *(v217 + v53));
      v61.i32[3] = 0;
      v62 = vmulq_f32(v61, v61);
      v63 = v49 + 1;
      *(&v229 + v49) = vmulq_n_f32(v61, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v62.i8, *v62.i8), *&vextq_s8(v62, v62, 8uLL)).f32[0]));
      v64 = &v52[3 * v52[1]];
      v52 = &v64[3 * *v64];
      ++v49;
    }

    while (v52 != v50);
    if (v63 == 2)
    {
LABEL_114:
      v66 = vsubq_f32(vmulq_f32(v229, vextq_s8(vextq_s8(v230, v230, 0xCuLL), v230, 8uLL)), vmulq_f32(v230, vextq_s8(vextq_s8(v229, v229, 0xCuLL), v229, 8uLL)));
      v67 = vextq_s8(vextq_s8(v66, v66, 0xCuLL), v66, 8uLL);
      v67.i32[3] = 0;
      v31 = v189;
      v68 = &v189[2 * v48];
      v69 = vmulq_f32(v67, v67);
      v70 = vmulq_n_f32(v67, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v69.i8, *v69.i8), *&vextq_s8(v69, v69, 8uLL)).f32[0]));
      *v68 = v70;
      v33 = v213;
      v71 = v213 + 48 * v48;
      v71[8] = v70.i32[0];
      v71[9] = v68->i32[1];
      v71[10] = v68->i32[2];
      v71[11] = 1900671690;
      goto LABEL_116;
    }

    v31 = v189;
    v72 = &v189[2 * v48];
    *v72 = 0;
    v72[1] = 0;
    v33 = v213;
LABEL_116:
    v73 = &v33[48 * v48];
    v74 = *(v73 + 1);
    v75 = 1.0e30;
    if (v74 >= 1)
    {
      v76 = *(v73 + 2);
      v75 = 1.0e30;
      do
      {
        v77 = *v76++;
        v78 = vmulq_f32(*(*(*(this + 9) + 24) + 16 * v77), *&v31[2 * v48]);
        v79 = vadd_f32(vpadd_f32(*v78.i8, *v78.i8), *&vextq_s8(v78, v78, 8uLL)).f32[0];
        if (v75 > v79)
        {
          v75 = v79;
        }

        --v74;
      }

      while (v74);
    }

    *(v73 + 11) = -v75;
    ++v48;
  }

  while (v48 != v196);
  if (v212 < 1)
  {
LABEL_142:
    btConvexPolyhedron::initialize(*(this + 9));
    goto LABEL_323;
  }

  v80 = 0;
  v81 = 0;
  v82 = 0;
  while (2)
  {
    if (v80 == v82 && (!v80 ? (v83 = 1) : (v83 = (2 * v80)), v82 < v83))
    {
      if (v83)
      {
        v84 = btAlignedAllocInternal(4 * v83, 16);
        if (v80)
        {
LABEL_131:
          for (i = 0; i != v80; ++i)
          {
            *(v84 + 4 * i) = *(v81 + i);
          }

LABEL_137:
          btAlignedFreeInternal(v81);
          goto LABEL_138;
        }
      }

      else
      {
        v84 = 0;
        if (v80)
        {
          goto LABEL_131;
        }
      }

      if (v81)
      {
        goto LABEL_137;
      }

      v83 = 1;
LABEL_138:
      v81 = v84;
    }

    else
    {
      v83 = v82;
    }

    *(v81 + v80) = v80;
    ++v80;
    v82 = v83;
    if (v80 < v212)
    {
      continue;
    }

    break;
  }

  v188 = v81 - 4;
  while (2)
  {
    v86 = v81;
    v87 = v80;
    LODWORD(v80) = v80 - 1;
    v191 = v86;
    v88 = *(v86 + v80);
    v89 = btAlignedAllocInternal(4, 16);
    *v89 = v88;
    v90 = (v87 - 2);
    if (v87 < 2)
    {
      v108 = 1;
      v94 = v190;
      v81 = v191;
LABEL_258:
      v199 = v80;
      v155 = 0;
      v156 = v108;
      do
      {
        v157 = v89;
        v158 = v213 + 48 * *(v89 + v155);
        btAlignedObjectArray<int>::btAlignedObjectArray(&v229, v158);
        v231 = *(v158 + 2);
        v159 = *(v94 + 9);
        v160 = *(v159 + 44);
        if (v160 == *(v159 + 48))
        {
          v161 = v160 ? 2 * v160 : 1;
          if (v160 < v161)
          {
            if (v161)
            {
              v162 = btAlignedAllocInternal(48 * v161, 16);
              v160 = *(v159 + 44);
            }

            else
            {
              v162 = 0;
            }

            if (v160 >= 1)
            {
              v163 = 0;
              v164 = 48 * v160;
              do
              {
                v165 = *(v159 + 56) + v163;
                *(btAlignedObjectArray<int>::btAlignedObjectArray(v162 + v163, v165) + 32) = *(v165 + 32);
                v163 += 48;
              }

              while (v164 != v163);
              v166 = *(v159 + 44);
              if (v166 >= 1)
              {
                v167 = 0;
                v168 = 48 * v166;
                do
                {
                  v169 = *(v159 + 56) + v167;
                  v170 = *(v169 + 16);
                  if (v170 && *(v169 + 24) == 1)
                  {
                    btAlignedFreeInternal(v170);
                  }

                  *(v169 + 24) = 1;
                  *(v169 + 16) = 0;
                  *(v169 + 4) = 0;
                  *(v169 + 8) = 0;
                  v167 += 48;
                }

                while (v168 != v167);
              }
            }

            v171 = *(v159 + 56);
            if (v171 && *(v159 + 64) == 1)
            {
              btAlignedFreeInternal(v171);
            }

            *(v159 + 64) = 1;
            *(v159 + 56) = v162;
            *(v159 + 48) = v161;
            v160 = *(v159 + 44);
            v94 = v190;
            v81 = v191;
          }
        }

        v172 = btAlignedObjectArray<int>::btAlignedObjectArray(*(v159 + 56) + 48 * v160, &v229);
        *(v172 + 32) = v231;
        ++*(v159 + 44);
        if (v230.i64[0] && v230.u8[8] == 1)
        {
          btAlignedFreeInternal(v230.i64[0]);
        }

        ++v155;
        v89 = v157;
      }

      while (v155 != v156);
      LODWORD(v80) = v199;
LABEL_285:
      if (!v89)
      {
        goto LABEL_287;
      }

      goto LABEL_286;
    }

    v91 = v213 + 48 * v88;
    v92.i64[0] = *(v91 + 4);
    v92.i64[1] = *(v91 + 10);
    v194 = 1;
    v93 = 1;
    v94 = v190;
    v81 = v191;
    v197 = v92;
    while (2)
    {
      v95 = *(v191 + v90);
      v96 = v213 + 48 * v95;
      v97.i64[0] = *(v96 + 4);
      v97.i64[1] = *(v96 + 10);
      v98 = vmulq_f32(v92, v97);
      if (vadd_f32(vpadd_f32(*v98.i8, *v98.i8), *&vextq_s8(v98, v98, 8uLL)).f32[0] > 0.999)
      {
        LODWORD(v99) = v194;
        if (v194 == v93)
        {
          if (v194)
          {
            v93 = 2 * v194;
          }

          else
          {
            v93 = 1;
          }

          LODWORD(v99) = v194;
          if (v194 >= v93)
          {
            v102 = v89;
            v93 = v194;
          }

          else
          {
            if (v93)
            {
              v100 = v89;
              v101 = btAlignedAllocInternal(4 * v93, 16);
              LODWORD(v99) = v194;
              v89 = v100;
              v102 = v101;
            }

            else
            {
              v102 = 0;
            }

            if (v99 < 1)
            {
              v104 = v89;
              if (v89)
              {
                goto LABEL_161;
              }
            }

            else
            {
              v99 = v99;
              v103 = v102;
              v104 = v89;
              do
              {
                v105 = *v89;
                v89 = (v89 + 4);
                *v103++ = v105;
                --v99;
              }

              while (v99);
LABEL_161:
              btAlignedFreeInternal(v104);
            }

            LODWORD(v99) = v194;
            v92 = v197;
          }
        }

        else
        {
          v102 = v89;
        }

        v102[v99] = v95;
        v194 = v99 + 1;
        if (v80 > 0)
        {
          v106 = 0;
          while (*(v191 + v106) != v95)
          {
            if (v80 == ++v106)
            {
              goto LABEL_170;
            }
          }

          if (v80 > v106)
          {
            v107 = *(v191 + v106);
            *(v191 + v106) = *&v188[4 * v80];
            *&v188[4 * v80] = v107;
            LODWORD(v80) = v80 - 1;
          }
        }

LABEL_170:
        v89 = v102;
      }

      v146 = v90-- <= 0;
      if (!v146)
      {
        continue;
      }

      break;
    }

    v108 = v194;
    if (v194 <= 1)
    {
LABEL_257:
      if (v108 < 1)
      {
        goto LABEL_285;
      }

      goto LABEL_258;
    }

    v109 = 0;
    v110 = 0;
    v210 = 1;
    v209 = 0;
    v207 = 0;
    v208 = 0;
    v205 = 0uLL;
    v192 = v213;
    v193 = v89;
    do
    {
      v111 = &v192[48 * *(v89 + v110)];
      v112.i64[0] = *(v111 + 4);
      v112.i64[1] = *(v111 + 10);
      v205 = vaddq_f32(v205, v112);
      v113 = *(v111 + 1);
      if (v113 >= 1)
      {
        for (j = 0; j < v113; ++j)
        {
          v115 = *(*(v111 + 2) + 4 * j);
          v116 = *(*(*(v190 + 9) + 24) + 16 * v115);
          if (v109 < 1)
          {
LABEL_181:
            if (v109 == v208)
            {
              v120 = v109 ? 2 * v109 : 1;
              if (v109 < v120)
              {
                v198 = *(*(*(v190 + 9) + 24) + 16 * *(*(v111 + 2) + 4 * j));
                if (v120)
                {
                  v121 = btAlignedAllocInternal(32 * v120, 16);
                  v116 = v198;
                  v122 = v121;
                  v109 = v207;
                }

                else
                {
                  v122 = 0;
                }

                if (v109 >= 1)
                {
                  v123 = 0;
                  v124 = 32 * v109;
                  do
                  {
                    v125 = &v122[v123];
                    v126 = v209 + v123;
                    *v125 = *(v209 + v123);
                    *(v125 + 2) = *(v126 + 2);
                    v123 += 32;
                  }

                  while (v124 != v123);
                }

                if (v209 && v210 == 1)
                {
                  btAlignedFreeInternal(v209);
                  v116 = v198;
                }

                v210 = 1;
                v209 = v122;
                v208 = v120;
                v109 = v207;
              }
            }

            v83 = v83 | (v115 << 32);
            v127 = v209 + 32 * v109;
            *v127 = v116;
            *(v127 + 2) = v83;
            v109 = ++v207;
            v113 = *(v111 + 1);
          }

          else
          {
            v117 = v109;
            v118 = (v209 + 20);
            while (1)
            {
              v119 = *v118;
              v118 += 8;
              if (v119 == v115)
              {
                break;
              }

              if (!--v117)
              {
                goto LABEL_181;
              }
            }
          }
        }
      }

      ++v110;
      v89 = v193;
    }

    while (v110 != v194);
    v230.i8[8] = 1;
    v230.i64[0] = 0;
    *(v229.i64 + 4) = 0;
    v128 = &v192[48 * *v193];
    for (k = 8; k != 12; ++k)
    {
      v229.i32[k] = *&v128[k * 4];
    }

    v204 = 1;
    v203 = 0;
    v201 = 0;
    v202 = 0;
    v130 = vmulq_f32(v205, v205);
    v205 = vmulq_n_f32(v205, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v130.i8, *v130.i8), *&vextq_s8(v130, v130, 8uLL)).f32[0]));
    GrahamScanConvexHull2D(v206, v200, &v205);
    if (v201 > 0)
    {
      v131 = 0;
      v132 = v229.i32[1];
      while (2)
      {
        v133 = v203;
        if (v132 != v229.i32[2])
        {
          goto LABEL_219;
        }

        v134 = v132 ? 2 * v132 : 1;
        if (v132 >= v134)
        {
          goto LABEL_219;
        }

        if (v134)
        {
          v135 = btAlignedAllocInternal(4 * v134, 16);
          v132 = v229.i32[1];
        }

        else
        {
          v135 = 0;
        }

        v136 = v230.i64[0];
        if (v132 >= 1)
        {
          v137 = v132;
          v138 = v135;
          v139 = v230.i64[0];
          do
          {
            v140 = *v139++;
            *v138++ = v140;
            --v137;
          }

          while (v137);
          goto LABEL_216;
        }

        if (v230.i64[0])
        {
LABEL_216:
          if (v230.u8[8] == 1)
          {
            btAlignedFreeInternal(v136);
          }
        }

        v230.i8[8] = 1;
        v230.i64[0] = v135;
        v229.i32[2] = v134;
        v132 = v229.i32[1];
LABEL_219:
        *(v230.i64[0] + 4 * v132) = v133[8 * v131 + 5];
        v132 = ++v229.i32[1];
        v141 = v207;
        if (v207 >= 1)
        {
          v142 = v209 + 20;
          v143 = v207;
          while (*v142 != *(v203 + 8 * v131 + 5))
          {
            v142 += 8;
            if (!--v143)
            {
              goto LABEL_225;
            }
          }

          *v142 = -1;
        }

LABEL_225:
        if (++v131 >= v201)
        {
          goto LABEL_229;
        }

        continue;
      }
    }

    v141 = v207;
LABEL_229:
    if (v141 >= 1)
    {
      for (m = 0; m != v141; ++m)
      {
        v145 = *(v209 + 8 * m + 5);
        v146 = v145 == -1 || v212 < 1;
        if (!v146)
        {
          v147 = 0;
          while (2)
          {
            v148 = v193;
            v149 = &v192[48 * v147];
            v150 = v194;
            while (1)
            {
              v151 = *v148++;
              if (v147 == v151)
              {
                break;
              }

              if (!--v150)
              {
                v152 = *(v149 + 1);
                if (v152 >= 1)
                {
                  v153 = *(v149 + 2);
                  while (1)
                  {
                    v154 = *v153++;
                    if (v154 == v145)
                    {
                      break;
                    }

                    if (!--v152)
                    {
                      goto LABEL_245;
                    }
                  }

                  if (v203 && v204 == 1)
                  {
                    btAlignedFreeInternal(v203);
                  }

                  if (v230.i64[0] && v230.u8[8] == 1)
                  {
                    btAlignedFreeInternal(v230.i64[0]);
                  }

                  if (v209 && v210 == 1)
                  {
                    btAlignedFreeInternal(v209);
                  }

                  v89 = v193;
                  v108 = v194;
                  goto LABEL_257;
                }

                break;
              }
            }

LABEL_245:
            if (++v147 != v212)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    v173 = *(v190 + 9);
    v174 = *(v173 + 44);
    if (v174 == *(v173 + 48))
    {
      v175 = v174 ? 2 * v174 : 1;
      if (v174 < v175)
      {
        if (v175)
        {
          v176 = btAlignedAllocInternal(48 * v175, 16);
          v174 = *(v173 + 44);
        }

        else
        {
          v176 = 0;
        }

        if (v174 >= 1)
        {
          v177 = 0;
          v178 = 48 * v174;
          do
          {
            v179 = *(v173 + 56) + v177;
            *(btAlignedObjectArray<int>::btAlignedObjectArray(v176 + v177, v179) + 32) = *(v179 + 32);
            v177 += 48;
          }

          while (v178 != v177);
          v180 = *(v173 + 44);
          v94 = v190;
          if (v180 >= 1)
          {
            v181 = 0;
            v182 = 48 * v180;
            do
            {
              v183 = *(v173 + 56) + v181;
              v184 = *(v183 + 16);
              if (v184 && *(v183 + 24) == 1)
              {
                btAlignedFreeInternal(v184);
              }

              *(v183 + 24) = 1;
              *(v183 + 16) = 0;
              *(v183 + 4) = 0;
              *(v183 + 8) = 0;
              v181 += 48;
            }

            while (v182 != v181);
          }
        }

        v185 = *(v173 + 56);
        if (v185 && *(v173 + 64) == 1)
        {
          btAlignedFreeInternal(v185);
        }

        *(v173 + 64) = 1;
        *(v173 + 56) = v176;
        *(v173 + 48) = v175;
        v174 = *(v173 + 44);
        v81 = v191;
      }
    }

    v186 = btAlignedObjectArray<int>::btAlignedObjectArray(*(v173 + 56) + 48 * v174, &v229);
    *(v186 + 32) = v231;
    ++*(v173 + 44);
    if (v203 && v204 == 1)
    {
      btAlignedFreeInternal(v203);
    }

    if (v230.i64[0] && v230.u8[8] == 1)
    {
      btAlignedFreeInternal(v230.i64[0]);
    }

    if (v209 && v210 == 1)
    {
      btAlignedFreeInternal(v209);
    }

    v89 = v193;
    if (v193)
    {
LABEL_286:
      btAlignedFreeInternal(v89);
    }

LABEL_287:
    if (v80)
    {
      continue;
    }

    break;
  }

  btConvexPolyhedron::initialize(*(v94 + 9));
  v31 = v189;
  if (v81)
  {
    btAlignedFreeInternal(v81);
  }

LABEL_323:
  btAlignedObjectArray<btFace>::~btAlignedObjectArray(v211);
  if (v31)
  {
    btAlignedFreeInternal(v31);
  }

  if (v223 && v224 == 1)
  {
    btAlignedFreeInternal(v223);
  }

  v224 = 1;
  v223 = 0;
  v222 = 0;
  if (v220 && v221 == 1)
  {
    btAlignedFreeInternal(v220);
  }

  v221 = 1;
  v220 = 0;
  v219 = 0;
  if (v217 && v218 == 1)
  {
    btAlignedFreeInternal(v217);
  }

  if (v227 && v228 == 1)
  {
    btAlignedFreeInternal(v227);
  }

  return 1;
}

void GrahamScanConvexHull2D(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  v6 = a3->f32[2];
  v7 = a3->f32[1];
  if (fabsf(v6) <= 0.70711)
  {
    v11 = 1.0 / sqrtf((v7 * v7) + (a3->f32[0] * a3->f32[0]));
    v10.i64[1] = 0;
    v10.f32[0] = -(v7 * v11);
    v10.f32[1] = a3->f32[0] * v11;
  }

  else
  {
    v8 = 1.0 / sqrtf((v6 * v6) + (v7 * v7));
    v9 = -(v6 * v8);
    v10.i32[0] = 0;
    v10.i32[3] = 0;
    v10.f32[1] = v9;
    v10.f32[2] = v7 * v8;
  }

  v12 = *(a1 + 4);
  if (v12 >= 2)
  {
    v24 = 0;
    for (i = 0; i < v12; ++i)
    {
      v26 = *(a1 + 16);
      v27 = v26[v24];
      v28 = vmulq_f32(v10, v27);
      v29 = vadd_f32(vpadd_f32(*v28.i8, *v28.i8), *&vextq_s8(v28, v28, 8uLL));
      v30 = *v26;
      v31 = vmulq_f32(v10, *v26);
      if (vcgt_f32(vadd_f32(vpadd_f32(*v31.i8, *v31.i8), *&vextq_s8(v31, v31, 8uLL)), v29).u8[0])
      {
        v32 = v26[1].i64[0];
        *v26 = v27;
        v26[1].i64[0] = v26[v24 + 1].i64[0];
        v33 = (*(a1 + 16) + v24 * 16);
        *v33 = v30;
        v33[1].i64[0] = v32;
        v12 = *(a1 + 4);
      }

      v24 += 2;
    }

    v34 = *(a1 + 16);
    v34[1].i32[0] = -246811958;
    v35 = *v34;
    if (v12 >= 2)
    {
      v36 = vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL);
      f32 = v34[3].f32;
      v38 = v12 - 1;
      do
      {
        v39 = vsubq_f32(*(f32 - 4), v35);
        v39.i32[3] = 0;
        v40 = vsubq_f32(vmulq_f32(v10, vextq_s8(vextq_s8(v39, v39, 0xCuLL), v39, 8uLL)), vmulq_f32(v36, v39));
        v41 = vextq_s8(vextq_s8(v40, v40, 0xCuLL), v40, 8uLL);
        v41.i32[3] = 0;
        v42 = vmulq_f32(*a3, v41);
        v43 = vmulq_f32(v39, v39);
        *f32 = vadd_f32(vpadd_f32(*v42.i8, *v42.i8), *&vextq_s8(v42, v42, 8uLL)).f32[0] / sqrtf(vadd_f32(vpadd_f32(*v43.i8, *v43.i8), *&vextq_s8(v43, v43, 8uLL)).f32[0]);
        f32 += 8;
        --v38;
      }

      while (v38);
    }

    v80 = v35;
    btAlignedObjectArray<GrahamVector3>::quickSortInternal<btAngleCompareFunc>(a1, &v80, 1, v12 - 1);
    v44 = 0;
    v45 = *(a2 + 4);
    v46 = 1;
    do
    {
      v47 = v46;
      v48 = *(a1 + 16);
      if (v45 == *(a2 + 8))
      {
        v49 = v45 ? 2 * v45 : 1;
        if (v45 < v49)
        {
          if (v49)
          {
            v50 = btAlignedAllocInternal(32 * v49, 16);
            v45 = *(a2 + 4);
          }

          else
          {
            v50 = 0;
          }

          if (v45 >= 1)
          {
            v51 = 0;
            v52 = 32 * v45;
            do
            {
              v53 = v50 + v51;
              v54 = *(a2 + 16) + v51;
              *v53 = *v54;
              *(v53 + 16) = *(v54 + 16);
              v51 += 32;
            }

            while (v52 != v51);
          }

          v55 = *(a2 + 16);
          if (v55 && *(a2 + 24) == 1)
          {
            btAlignedFreeInternal(v55);
          }

          *(a2 + 24) = 1;
          *(a2 + 16) = v50;
          *(a2 + 8) = v49;
          v45 = *(a2 + 4);
        }
      }

      v46 = 0;
      v56 = v48 + 32 * v44;
      v57 = *(a2 + 16) + 32 * v45;
      *v57 = *v56;
      *(v57 + 16) = *(v56 + 16);
      v45 = *(a2 + 4) + 1;
      *(a2 + 4) = v45;
      v44 = 1;
    }

    while ((v47 & 1) != 0);
    v58 = *(a1 + 4);
    if (v58 != 2)
    {
      for (j = 2; j != v58; ++j)
      {
        if (v45 >= 2)
        {
          v60 = *(a2 + 16);
          v61 = (*(a1 + 16) + 32 * j);
          v62 = 2 * v45;
          v63 = 32 * (v45 - 1);
          v64 = 32 * v45 - 64;
          while (1)
          {
            v65 = *(v60 + v64);
            v66 = vsubq_f32(v65, *(v60 + v63));
            v66.i32[3] = 0;
            v67 = *v61;
            v68 = vsubq_f32(v65, *v61);
            v68.i32[3] = 0;
            v69 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v68, v68, 0xCuLL), v68, 8uLL), v66), vmulq_f32(vextq_s8(vextq_s8(v66, v66, 0xCuLL), v66, 8uLL), v68));
            v70 = vextq_s8(vextq_s8(v69, v69, 0xCuLL), v69, 8uLL);
            v70.i32[3] = 0;
            v71 = vmulq_f32(*a3, v70);
            if (vadd_f32(vpadd_f32(*v71.i8, *v71.i8), *&vextq_s8(v71, v71, 8uLL)).f32[0] > 0.0)
            {
              break;
            }

            *(a2 + 4) = --v45;
            v62 -= 2;
            v63 -= 32;
            v64 -= 32;
            if ((v45 + 1) < 3)
            {
              goto LABEL_65;
            }
          }

          if (*(a2 + 8) == v45 && v45 < v62)
          {
            v72 = btAlignedAllocInternal(32 * v62, 16);
            v60 = v72;
            v73 = *(a2 + 4);
            if (v73 >= 1)
            {
              v74 = 0;
              v75 = 32 * v73;
              do
              {
                v76 = v72 + v74;
                v77 = *(a2 + 16) + v74;
                *v76 = *v77;
                *(v76 + 16) = *(v77 + 16);
                v74 += 32;
              }

              while (v75 != v74);
            }

            v78 = *(a2 + 16);
            if (v78 && *(a2 + 24) == 1)
            {
              btAlignedFreeInternal(v78);
            }

            *(a2 + 24) = 1;
            *(a2 + 16) = v60;
            *(a2 + 8) = v62;
            v45 = *(a2 + 4);
            v67 = *v61;
          }

          v79 = (v60 + 32 * v45);
          *v79 = v67;
          v79[1].i64[0] = v61[1].i64[0];
          v45 = *(a2 + 4) + 1;
          *(a2 + 4) = v45;
LABEL_65:
          v58 = *(a1 + 4);
        }
      }
    }
  }

  else if (v12 == 1)
  {
    v13 = 0;
    v14 = *(a2 + 4);
    do
    {
      v15 = *(a1 + 16);
      if (v14 == *(a2 + 8))
      {
        v16 = v14 ? 2 * v14 : 1;
        if (v14 < v16)
        {
          if (v16)
          {
            v17 = btAlignedAllocInternal(32 * v16, 16);
            v14 = *(a2 + 4);
          }

          else
          {
            v17 = 0;
          }

          if (v14 >= 1)
          {
            v18 = 0;
            v19 = 32 * v14;
            do
            {
              v20 = v17 + v18;
              v21 = *(a2 + 16) + v18;
              *v20 = *v21;
              *(v20 + 16) = *(v21 + 16);
              v18 += 32;
            }

            while (v19 != v18);
          }

          v22 = *(a2 + 16);
          if (v22)
          {
            if (*(a2 + 24) == 1)
            {
              btAlignedFreeInternal(v22);
            }
          }

          *(a2 + 24) = 1;
          *(a2 + 16) = v17;
          *(a2 + 8) = v16;
          v14 = *(a2 + 4);
        }
      }

      v23 = *(a2 + 16) + 32 * v14;
      *v23 = *v15;
      *(v23 + 16) = *(v15 + 16);
      v14 = *(a2 + 4) + 1;
      *(a2 + 4) = v14;
      ++v13;
    }

    while (v13 < *(a1 + 4));
  }
}

uint64_t btPolyhedralConvexShape::localGetSupportingVertexWithoutMargin@<X0>(btPolyhedralConvexShape *this@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  a3->i64[0] = 0;
  a3->i64[1] = 0;
  v5 = *a2;
  v6 = vmulq_f32(v5, v5);
  v7 = vadd_f32(vpadd_f32(*v6.i8, *v6.i8), *&vextq_s8(v6, v6, 8uLL)).f32[0];
  if (v7 >= 0.0001)
  {
    v8 = vmulq_n_f32(v5, 1.0 / sqrtf(v7));
  }

  else
  {
    v8 = xmmword_21C27F910;
  }

  v23 = v8;
  v22 = 0.0;
  v21 = *a3;
  result = (*(*this + 192))(this);
  if (result >= 1)
  {
    v10 = 0;
    v11 = -1.0e18;
    do
    {
      if (((*(*this + 192))(this) - v10) > 127)
      {
        v12 = 128;
      }

      else
      {
        v12 = (*(*this + 192))(this) - v10;
        if (v12 < 1)
        {
          v13 = -3.4028e38;
          v14 = -1;
          goto LABEL_17;
        }
      }

      v15 = 0;
      v16 = v12;
      v17 = v24;
      do
      {
        (*(*this + 216))(this, v15++, v17++);
      }

      while (v16 != v15);
      if (v16 > 3)
      {
        v14 = _maxdot_large(v24[0].f32, v23.f32, v16, &v22);
        v13 = v22;
        goto LABEL_19;
      }

      v18 = 0;
      v14 = -1;
      v13 = -3.4028e38;
      do
      {
        v19 = vmulq_f32(v24[v18], v23);
        v20 = vadd_f32(vpadd_f32(*v19.i8, *v19.i8), *&vextq_s8(v19, v19, 8uLL)).f32[0];
        if (v20 > v13)
        {
          v13 = v20;
          v14 = v18;
        }

        ++v18;
      }

      while (v16 != v18);
LABEL_17:
      v22 = v13;
LABEL_19:
      if (v13 > v11)
      {
        v21 = v24[v14];
        v11 = v13;
      }

      v10 += 128;
      result = (*(*this + 192))(this);
    }

    while (v10 < result);
  }

  *a3 = v21;
  return result;
}

uint64_t btPolyhedralConvexShape::batchedUnitVectorGetSupportingVertexWithoutMargin(uint64_t this, const btVector3 *a2, btVector3 *a3, int a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a4 >= 1)
  {
    v4 = this;
    v5 = (a4 + 3) & 0xFFFFFFFC;
    v27 = a4;
    v6 = vdupq_n_s64(a4 - 1);
    v7 = xmmword_21C27F630;
    v8 = xmmword_21C27F640;
    v9 = &a3[2].var0.var0[3];
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v6, v8));
      if (vuzp1_s16(v11, *v6.i8).u8[0])
      {
        *(v9 - 8) = -581039253;
      }

      if (vuzp1_s16(v11, *&v6).i8[2])
      {
        *(v9 - 4) = -581039253;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
      {
        *v9 = -581039253;
        v9[4] = -581039253;
      }

      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 16;
      v5 -= 4;
    }

    while (v5);
    v12 = 0;
    v28 = 0.0;
    while (1)
    {
      this = (*(*v4 + 192))(v4);
      if (this >= 1)
      {
        break;
      }

LABEL_29:
      if (++v12 == v27)
      {
        return this;
      }
    }

    v13 = 0;
    v14 = &a2[v12];
    v15 = &a3[v12];
    while (1)
    {
      if (((*(*v4 + 192))(v4) - v13) > 127)
      {
        v16 = 128;
      }

      else
      {
        v16 = (*(*v4 + 192))(v4) - v13;
        if (v16 < 1)
        {
          v17 = -3.4028e38;
          v18 = -1;
          goto LABEL_24;
        }
      }

      v19 = 0;
      v20 = v16;
      v21 = v29;
      do
      {
        (*(*v4 + 216))(v4, v19++, v21++);
      }

      while (v20 != v19);
      if (v20 > 3)
      {
        v18 = _maxdot_large(v29[0].f32, v14->f32, v20, &v28);
        v17 = v28;
        goto LABEL_26;
      }

      v22 = 0;
      v18 = -1;
      v17 = -3.4028e38;
      do
      {
        v23 = vmulq_f32(v29[v22], *v14);
        v24 = vadd_f32(vpadd_f32(*v23.i8, *v23.i8), *&vextq_s8(v23, v23, 8uLL)).f32[0];
        if (v24 > v17)
        {
          v17 = v24;
          v18 = v22;
        }

        ++v22;
      }

      while (v20 != v22);
LABEL_24:
      v28 = v17;
LABEL_26:
      if (v17 > v15->var0.var0[3])
      {
        *v15 = v29[v18];
        v15->var0.var0[3] = v17;
      }

      v13 += 128;
      this = (*(*v4 + 192))(v4);
      if (v13 >= this)
      {
        goto LABEL_29;
      }
    }
  }

  return this;
}

float32x4_t btPolyhedralConvexShape::calculateLocalInertia(btPolyhedralConvexShape *this, float a2, btVector3 *a3)
{
  v13 = COERCE_INT32X2_T((*(*this + 96))(this));
  v16[0] = xmmword_21C27F910;
  v16[1] = xmmword_21C27F8C0;
  v16[2] = xmmword_21C27F600;
  v17 = 0;
  v18 = 0;
  (*(*this + 16))(this, v16, &v15, &v14);
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  v7 = vmulq_f32(vsubq_f32(v14, v15), v6);
  v8 = vextq_s8(v7, v7, 8uLL);
  v8.i32[1] = v7.i32[0];
  v9 = vadd_f32(vdup_lane_s32(v13, 0), *v8.f32);
  v10 = vadd_f32(v9, v9);
  v11 = vmul_f32(v10, v10);
  *v8.f32 = vdup_lane_s32(v11, 0);
  v8.f32[0] = ((*v13.i32 + *&v7.i32[1]) + (*v13.i32 + *&v7.i32[1])) * ((*v13.i32 + *&v7.i32[1]) + (*v13.i32 + *&v7.i32[1]));
  *v8.f32 = vadd_f32(v11, *v8.f32);
  v8.f32[2] = v11.f32[1] + (((*v13.i32 + *&v7.i32[1]) + (*v13.i32 + *&v7.i32[1])) * ((*v13.i32 + *&v7.i32[1]) + (*v13.i32 + *&v7.i32[1])));
  result = vmulq_n_f32(v8, a2 * 0.083333);
  result.i32[3] = 0;
  *a3 = result;
  return result;
}

uint64_t btPolyhedralConvexAabbCachingShape::setLocalScaling(float32x4_t *this, float32x4_t *a2)
{
  btConvexInternalShape::setLocalScaling(this, a2);

  return btPolyhedralConvexAabbCachingShape::recalcLocalAabb(this);
}

uint64_t btPolyhedralConvexAabbCachingShape::recalcLocalAabb(btPolyhedralConvexAabbCachingShape *this)
{
  v8 = *MEMORY[0x277D85DE8];
  *(this + 112) = 1;
  if ((atomic_load_explicit(_MergedGlobals_1, memory_order_acquire) & 1) == 0)
  {
    btPolyhedralConvexAabbCachingShape::recalcLocalAabb();
  }

  memset(v7, 0, sizeof(v7));
  v2 = v7;
  result = (*(*this + 152))(this, &dword_27CDDAA30, v7, 6);
  v4 = *(this + 16);
  v5 = (this + 96);
  v6 = -48;
  do
  {
    *v5 = *v2 + v4;
    *(v5 - 4) = v2[12] - v4;
    ++v5;
    v2 += 5;
    v6 += 16;
  }

  while (v6);
  return result;
}

void btPolyhedralConvexAabbCachingShape::btPolyhedralConvexAabbCachingShape(btPolyhedralConvexAabbCachingShape *this)
{
  btConvexInternalShape::btConvexInternalShape(this);
  *(v1 + 72) = 0;
  *v1 = &unk_282DCA6E0;
  *(v1 + 80) = xmmword_21C280340;
  *(v1 + 96) = xmmword_21C2A2150;
  *(v1 + 112) = 0;
}

float32x4_t btPolyhedralConvexAabbCachingShape::getAabb(float32x4_t *this, const btTransform *a2, btVector3 *a3, btVector3 *a4)
{
  *&v8 = (*(this->i64[0] + 96))(this);
  v10 = this[5];
  v9 = this[6];
  v11 = a2->var0.var0[1];
  v12 = a2->var0.var0[2];
  v13 = vandq_s8(v12, xmmword_21C2A40B0);
  v14 = vaddq_f32(v9, v10);
  v15 = vsubq_f32(v9, v10);
  v10.i64[0] = 0x3F0000003F000000;
  v10.i64[1] = 0x3F0000003F000000;
  v16 = vmulq_f32(v14, v10);
  v17 = vmulq_f32(v12, v16);
  v16.i32[3] = 0;
  v18 = vmulq_f32(v15, v10);
  v18.i32[3] = 0;
  v19 = vdupq_lane_s32(v8, 0);
  v19.i32[3] = 0;
  v20 = vaddq_f32(v19, v18);
  v21 = vmulq_f32(a2->var0.var0[0], v16);
  v22 = vmulq_f32(v11, v16);
  v17.i32[3] = 0;
  *v21.f32 = vadd_f32(vpadd_f32(*v21.f32, *v22.i8), vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)));
  *&v21.u32[2] = vpadd_f32(vpadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)), 0);
  v23 = vaddq_f32(a2->var1, v21);
  v24 = vmulq_f32(v20, vandq_s8(a2->var0.var0[0], xmmword_21C2A40B0));
  v25 = vmulq_f32(v20, vandq_s8(v11, xmmword_21C2A40B0));
  v26 = vmulq_f32(v20, v13);
  v26.i32[3] = 0;
  *v24.f32 = vadd_f32(vpadd_f32(*v24.f32, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
  *&v24.u32[2] = vpadd_f32(vpadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), 0);
  v27 = vsubq_f32(v23, v24);
  v27.var0.var0[3] = 0.0;
  *a3 = v27;
  result = vaddq_f32(v23, v24);
  *a4 = result;
  return result;
}

uint64_t btAlignedObjectArray<GrahamVector3>::quickSortInternal<btAngleCompareFunc>(uint64_t result, float32x4_t *a2, int a3, int a4)
{
  LODWORD(v5) = a3;
  v7 = result;
  do
  {
    v8 = v5;
    v9 = *(v7 + 16) + 32 * ((v5 + a4 + ((v5 + a4) >> 31)) >> 1);
    v10 = *v9;
    v11 = *(v9 + 16);
    v12 = *(v9 + 20);
    LODWORD(v13) = a4;
    do
    {
      v14 = *(v7 + 16);
      v15 = *a2;
      v16 = vsubq_f32(v10, *a2);
      v16.i32[3] = 0;
      v17 = vmulq_f32(v16, v16);
      v5 = v5;
      v18 = v14 + 32 * v5 + 16;
      v19 = vadd_f32(vpadd_f32(*v17.i8, *v17.i8), *&vextq_s8(v17, v17, 8uLL));
      while (*v18 != v11)
      {
        if (*v18 >= v11)
        {
          goto LABEL_12;
        }

LABEL_11:
        ++v5;
        v18 += 32;
      }

      v20 = vsubq_f32(*(v18 - 16), v15);
      v20.i32[3] = 0;
      v21 = vmulq_f32(v20, v20);
      *v21.i8 = vadd_f32(vpadd_f32(*v21.i8, *v21.i8), *&vextq_s8(v21, v21, 8uLL));
      v22 = vcgt_f32(v19, *v21.i8).u8[0];
      if (vmvn_s8(vceq_f32(*v21.i8, v19)).u8[0])
      {
        v23 = v22;
      }

      else
      {
        v23 = *(v18 + 4) < v12;
      }

      if (v23)
      {
        goto LABEL_11;
      }

LABEL_12:
      v13 = v13;
      for (i = (32 * v13) | 0x10; ; i -= 32)
      {
        v25 = v14 + i;
        v26 = *(v14 + i);
        if (v11 == v26)
        {
          break;
        }

        if (v11 >= v26)
        {
          goto LABEL_20;
        }

LABEL_19:
        --v13;
      }

      v27 = vsubq_f32(*(v25 - 16), v15);
      v27.i32[3] = 0;
      v28 = vmulq_f32(v27, v27);
      *v28.i8 = vadd_f32(vpadd_f32(*v28.i8, *v28.i8), *&vextq_s8(v28, v28, 8uLL));
      v29 = vcgt_f32(*v28.i8, v19).u8[0];
      v30 = v12 < *(v25 + 4);
      if (vmvn_s8(vceq_f32(v19, *v28.i8)).u8[0])
      {
        v30 = v29;
      }

      if (v30)
      {
        goto LABEL_19;
      }

LABEL_20:
      if (v5 <= v13)
      {
        v31 = *(v18 - 16);
        v32 = *v18;
        *(v18 - 16) = *(v14 + i - 16);
        *v18 = *(v14 + i);
        v33 = (*(v7 + 16) + i);
        *(v33 - 1) = v31;
        *v33 = v32;
        LODWORD(v5) = v5 + 1;
        LODWORD(v13) = v13 - 1;
      }
    }

    while (v5 <= v13);
    if (v13 > v8)
    {
      result = btAlignedObjectArray<GrahamVector3>::quickSortInternal<btAngleCompareFunc>(v7, a2);
    }
  }

  while (v5 < a4);
  return result;
}

uint64_t btAlignedObjectArray<int>::btAlignedObjectArray(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 1;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  v3 = *(a2 + 4);
  if (v3 < 1)
  {
    *(a1 + 4) = v3;
    return a1;
  }

  v5 = btAlignedAllocInternal(4 * v3, 16);
  v6 = *(a1 + 4);
  v7 = *(a1 + 16);
  if (v6 >= 1)
  {
    v8 = v5;
    v9 = *(a1 + 16);
    do
    {
      v10 = *v9++;
      *v8++ = v10;
      --v6;
    }

    while (v6);
LABEL_8:
    if (*(a1 + 24) == 1)
    {
      btAlignedFreeInternal(v7);
    }

    goto LABEL_10;
  }

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_10:
  *(a1 + 24) = 1;
  *(a1 + 16) = v5;
  *(a1 + 8) = v3;
  bzero(v5, 4 * v3);
  *(a1 + 4) = v3;
  v11 = *(a2 + 16);
  do
  {
    v12 = *v11++;
    *v5++ = v12;
    --v3;
  }

  while (v3);
  return a1;
}

void btPolyhedralConvexAabbCachingShape::recalcLocalAabb()
{
  if (__cxa_guard_acquire(_MergedGlobals_1))
  {
    dword_27CDDAA30 = 1065353216;
    unk_27CDDAA3C = 0;
    unk_27CDDAA34 = 0;
    dword_27CDDAA44 = 1065353216;
    qword_27CDDAA48 = 0;
    unk_27CDDAA50 = 0;
    qword_27CDDAA58 = 1065353216;
    dword_27CDDAA60 = -1082130432;
    unk_27CDDAA6C = 0;
    unk_27CDDAA64 = 0;
    dword_27CDDAA74 = -1082130432;
    qword_27CDDAA78 = 0;
    unk_27CDDAA80 = 0;
    qword_27CDDAA88 = 3212836864;

    __cxa_guard_release(_MergedGlobals_1);
  }
}

void btShapeHull::btShapeHull(btShapeHull *this, const btConvexShape *a2)
{
  *(this + 9) = a2;
  *(this + 24) = 1;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 56) = 1;
  *(this + 6) = 0;
  *(this + 36) = 0;
  *(this + 16) = 0;
}

void btShapeHull::~btShapeHull(btShapeHull *this)
{
  v2 = *(this + 6);
  if (v2 && *(this + 56) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 56) = 1;
  *(this + 6) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  v3 = *(this + 2);
  if (!v3)
  {
    *(this + 24) = 1;
LABEL_13:
    *(this + 2) = 0;
LABEL_14:
    *(this + 56) = 1;
    *(this + 6) = 0;
    *(this + 9) = 0;
    *(this + 10) = 0;
    goto LABEL_15;
  }

  if ((*(this + 24) & 1) == 0)
  {
    *(this + 24) = 1;
    *(this + 2) = 0;
    goto LABEL_13;
  }

  btAlignedFreeInternal(v3);
  v4 = *(this + 6);
  *(this + 24) = 1;
  *(this + 2) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (!v4 || (*(this + 56) & 1) == 0)
  {
    goto LABEL_14;
  }

  btAlignedFreeInternal(v4);
  v5 = *(this + 2);
  *(this + 56) = 1;
  *(this + 6) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  if (v5 && *(this + 24) == 1)
  {
    btAlignedFreeInternal(v5);
  }

LABEL_15:
  *(this + 24) = 1;
  *(this + 2) = 0;
  *(this + 4) = 0;
}

BOOL btShapeHull::buildHull(btShapeHull *this, float a2)
{
  v52 = *MEMORY[0x277D85DE8];
  UnitSpherePoints = (*(**(this + 9) + 168))(*(this + 9), a2);
  if (UnitSpherePoints < 1)
  {
    v7 = 42;
  }

  else
  {
    v4 = 0;
    v5 = UnitSpherePoints;
    do
    {
      v6 = (*(**(this + 9) + 176))(*(this + 9), v4, v51);
      UnitSpherePoints = btShapeHull::getUnitSpherePoints(v6);
      *&_MergedGlobals_2[2 * v4++ + 86] = v51[0];
    }

    while (v5 != v4);
    v7 = v4 + 42;
  }

  v8 = 0;
  v9 = &xmmword_27CDDAAA0;
  do
  {
    v10 = *(this + 9);
    btShapeHull::getUnitSpherePoints(UnitSpherePoints);
    UnitSpherePoints = (*(*v10 + 128))(v33, v10, v9);
    v51[v8++] = *v33;
    ++v9;
  }

  while (v7 != v8);
  v50 = 0x100000001000;
  v47[0] = 1;
  v47[1] = v7;
  v48 = v51;
  v49 = 0x3A83126F00000010;
  v43 = 1;
  v42 = 0;
  v41 = 0;
  v46 = 1;
  v45 = 0;
  v44 = 0;
  v35 = 1;
  v34 = 0;
  *&v33[12] = 0;
  v39 = 1;
  v38 = 0;
  v37 = 0;
  v33[0] = 1;
  *&v33[4] = 0;
  v36 = 0;
  ConvexHull = HullLibrary::CreateConvexHull(v40, v47, v33);
  if (ConvexHull == 1)
  {
    goto LABEL_44;
  }

  v12 = *&v33[4];
  v13 = *(this + 1);
  v14 = *&v33[4];
  if (v13 < *&v33[4])
  {
    v14 = *&v33[4];
    if (*(this + 2) < *&v33[4])
    {
      if (*&v33[4])
      {
        v15 = btAlignedAllocInternal(16 * *&v33[4], 16);
        v13 = *(this + 1);
      }

      else
      {
        v15 = 0;
      }

      if (v13 >= 1)
      {
        v16 = 0;
        v17 = 16 * v13;
        do
        {
          *(v15 + v16) = *(*(this + 2) + v16);
          v16 += 16;
        }

        while (v17 != v16);
      }

      v18 = *(this + 2);
      if (v18 && *(this + 24) == 1)
      {
        btAlignedFreeInternal(v18);
      }

      *(this + 24) = 1;
      *(this + 2) = v15;
      *(this + 2) = v12;
      v14 = *&v33[4];
    }
  }

  *(this + 1) = v12;
  if (v14 >= 1)
  {
    v19 = 0;
    do
    {
      *(*(this + 2) + 16 * v19) = *(v34 + v19);
      ++v19;
    }

    while (v19 < *&v33[4]);
  }

  v20 = HIDWORD(v36);
  *(this + 16) = HIDWORD(v36);
  v21 = *(this + 9);
  v22 = v20;
  if (v21 <= v20)
  {
    if (v21 >= v20)
    {
LABEL_39:
      v22 = *(this + 16);
      goto LABEL_40;
    }

    if (*(this + 10) >= v20)
    {
LABEL_38:
      bzero((*(this + 6) + 4 * v21), 4 * (v20 + ~v21) + 4);
      goto LABEL_39;
    }

    if (v20)
    {
      v23 = btAlignedAllocInternal(4 * v20, 16);
    }

    else
    {
      v23 = 0;
    }

    LODWORD(v24) = *(this + 9);
    v25 = *(this + 6);
    if (v24 < 1)
    {
      if (!v25)
      {
LABEL_37:
        *(this + 56) = 1;
        *(this + 6) = v23;
        *(this + 10) = v20;
        goto LABEL_38;
      }
    }

    else
    {
      v24 = v24;
      v26 = v23;
      v27 = *(this + 6);
      do
      {
        v28 = *v27++;
        *v26++ = v28;
        --v24;
      }

      while (v24);
    }

    if (*(this + 56) == 1)
    {
      btAlignedFreeInternal(v25);
    }

    goto LABEL_37;
  }

LABEL_40:
  *(this + 9) = v20;
  if (v22 >= 1)
  {
    v29 = 0;
    v30 = v38;
    v31 = *(this + 6);
    do
    {
      *(v31 + 4 * v29) = v30[v29];
      ++v29;
    }

    while (v29 < *(this + 16));
  }

  HullLibrary::ReleaseResult(v40, v33);
LABEL_44:
  if (v38 && v39 == 1)
  {
    btAlignedFreeInternal(v38);
  }

  v39 = 1;
  v38 = 0;
  v37 = 0;
  if (v34 && v35 == 1)
  {
    btAlignedFreeInternal(v34);
  }

  if (v45 && v46 == 1)
  {
    btAlignedFreeInternal(v45);
  }

  v46 = 1;
  v45 = 0;
  v44 = 0;
  if (v42 && v43 == 1)
  {
    btAlignedFreeInternal(v42);
  }

  return ConvexHull != 1;
}

__int128 *btShapeHull::getUnitSpherePoints(btShapeHull *this)
{
  if ((atomic_load_explicit(_MergedGlobals_2, memory_order_acquire) & 1) == 0)
  {
    btShapeHull::getUnitSpherePoints();
  }

  return &xmmword_27CDDAAA0;
}

void btShapeHull::getUnitSpherePoints()
{
  if (__cxa_guard_acquire(_MergedGlobals_2))
  {
    xmmword_27CDDAAA0 = xmmword_21C2A42C0;
    unk_27CDDAAB0 = xmmword_21C2A42D0;
    xmmword_27CDDAAC0 = xmmword_21C2A42E0;
    unk_27CDDAAD0 = xmmword_21C2A42F0;
    xmmword_27CDDAAE0 = xmmword_21C2A4300;
    unk_27CDDAAF0 = xmmword_21C2A4310;
    xmmword_27CDDAB00 = xmmword_21C2A4320;
    unk_27CDDAB10 = xmmword_21C2A4330;
    xmmword_27CDDAB20 = xmmword_21C2A4340;
    unk_27CDDAB30 = xmmword_21C2A4350;
    xmmword_27CDDAB40 = xmmword_21C2A4360;
    unk_27CDDAB50 = xmmword_21C2A4370;
    xmmword_27CDDAB60 = xmmword_21C2A4380;
    unk_27CDDAB70 = xmmword_21C2A4390;
    xmmword_27CDDAB80 = xmmword_21C2A43A0;
    unk_27CDDAB90 = xmmword_21C2A43B0;
    xmmword_27CDDABA0 = xmmword_21C2A43C0;
    unk_27CDDABB0 = xmmword_21C2A43D0;
    xmmword_27CDDABC0 = xmmword_21C2A43E0;
    unk_27CDDABD0 = xmmword_21C2A43F0;
    xmmword_27CDDABE0 = xmmword_21C2A4400;
    unk_27CDDABF0 = xmmword_21C2A4410;
    xmmword_27CDDAC00 = xmmword_21C2A4420;
    unk_27CDDAC10 = xmmword_21C2A4430;
    xmmword_27CDDAC20 = xmmword_21C2A4440;
    unk_27CDDAC30 = xmmword_21C27F9A0;
    xmmword_27CDDAC40 = xmmword_21C2A4450;
    unk_27CDDAC50 = xmmword_21C2A4460;
    xmmword_27CDDAC60 = xmmword_21C2A4470;
    unk_27CDDAC70 = xmmword_21C2A4480;
    xmmword_27CDDAC80 = xmmword_21C2A4490;
    unk_27CDDAC90 = xmmword_21C2A44A0;
    xmmword_27CDDACA0 = xmmword_21C2A44B0;
    unk_27CDDACB0 = xmmword_21C2A44C0;
    xmmword_27CDDACC0 = xmmword_21C2A44D0;
    unk_27CDDACD0 = xmmword_21C2A44E0;
    xmmword_27CDDACE0 = xmmword_21C2A44F0;
    unk_27CDDACF0 = xmmword_21C2A4500;
    xmmword_27CDDAD00 = xmmword_21C2A4510;
    unk_27CDDAD10 = xmmword_21C2A4520;
    xmmword_27CDDAD20 = xmmword_21C2A4530;
    unk_27CDDAD30 = xmmword_21C2A4540;

    __cxa_guard_release(_MergedGlobals_2);
  }
}

void btSphereShape::batchedUnitVectorGetSupportingVertexWithoutMargin(btSphereShape *this, const btVector3 *a2, btVector3 *a3, int a4)
{
  if (a4 >= 1)
  {
    bzero(a3, 16 * a4);
  }
}

float32x4_t btSphereShape::localGetSupportingVertex@<Q0>(btSphereShape *this@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  (*(*this + 136))(&v14);
  v13 = v14;
  v6 = vmulq_f32(*a2, *a2);
  *v7.f32 = vpadd_f32(*v6.i8, *v6.i8);
  v8 = vextq_s8(v6, v6, 8uLL);
  *v8.f32 = vadd_f32(*v7.f32, *v8.f32);
  v7.i32[0] = 679477248;
  v9 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v7, v8), 0), xmmword_21C2A2150, *a2);
  v10 = vmulq_f32(v9, v9);
  v11 = vmulq_n_f32(vmulq_n_f32(v9, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL)).f32[0])), (*(*this + 96))(this));
  v11.i32[3] = 0;
  result = vaddq_f32(v13, v11);
  *a3 = result;
  return result;
}

float32x4_t btSphereShape::getAabb(btSphereShape *this, const btTransform *a2, btVector3 *a3, btVector3 *a4)
{
  v8 = (*(*this + 96))(this);
  v15 = LODWORD(v8);
  v9 = (*(*this + 96))(this);
  v14 = LODWORD(v9);
  *&v10 = (*(*this + 96))(this);
  v11.i64[0] = __PAIR64__(v14, v15);
  v11.i64[1] = v10;
  v12 = vsubq_f32(a2->var1, v11);
  v12.var0.var0[3] = 0.0;
  *a3 = v12;
  result = vaddq_f32(v11, a2->var1);
  *a4 = result;
  return result;
}

float btSphereShape::calculateLocalInertia(btSphereShape *this, float a2, btVector3 *a3)
{
  v5 = (a2 * 0.4) * (*(*this + 96))(this);
  result = v5 * (*(*this + 96))(this);
  v7 = vzip1q_s32(LODWORD(result), LODWORD(result));
  v7.var0.var0[2] = result;
  *a3 = v7;
  return result;
}

void btSphereShape::~btSphereShape(btSphereShape *this)
{
  v1 = C3DSceneSourcePerformConsistencyCheck(this);

  btAlignedFreeInternal(v1);
}

void btStaticPlaneShape::btStaticPlaneShape(btStaticPlaneShape *this, float32x4_t *a2, float32_t a3)
{
  btConcaveShape::btConcaveShape(this);
  v5->i64[0] = &unk_282DCA8B0;
  v6 = vmulq_f32(*a2, *a2);
  v5[4] = vmulq_n_f32(*a2, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v6.i8, *v6.i8), *&vextq_s8(v6, v6, 8uLL)).f32[0]));
  v5[5].f32[0] = a3;
  v5[6].i64[0] = 0;
  v5[6].i64[1] = 0;
  v5->i32[2] = 28;
}

void btStaticPlaneShape::~btStaticPlaneShape(btStaticPlaneShape *this)
{
  v1 = C3DSceneSourcePerformConsistencyCheck(this);

  btAlignedFreeInternal(v1);
}

double btStaticPlaneShape::getAabb(btStaticPlaneShape *this, const btTransform *a2, btVector3 *a3, btVector3 *a4)
{
  *a3 = xmmword_21C2A4040;
  result = 5.72459157e141;
  *a4 = xmmword_21C2A4030;
  return result;
}

uint64_t btStaticPlaneShape::processAllTriangles(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, double a5, double a6, double a7, float32x4_t a8, double a9, double a10, double a11, int32x4_t a12)
{
  v49 = *MEMORY[0x277D85DE8];
  v13 = *a4;
  v14 = *a3;
  v15 = a1[4].f32[2];
  if (fabsf(v15) <= 0.70711)
  {
    v22.i32[0] = a1[4].i32[0];
    v23 = a1[4].f32[1];
    v24 = (v23 * v23) + (v22.f32[0] * v22.f32[0]);
    v25 = 1.0 / sqrtf(v24);
    v22.f32[1] = -v23;
    v26.f32[0] = -v15;
    *a12.i8 = vmul_n_f32(v22, v25);
    v21 = vrev64q_s32(a12).u64[0];
    v26.i32[1] = a1[4].i32[2];
    *a8.f32 = vmul_f32(*a12.i8, v26);
    a8.f32[2] = v24 * v25;
  }

  else
  {
    v17 = a1[4].f32[0];
    v16 = a1[4].f32[1];
    v18 = (v15 * v15) + (v16 * v16);
    v19 = 1.0 / sqrtf(v18);
    v20 = -(v15 * v19);
    a8.f32[0] = v18 * v19;
    v21.i32[0] = 0;
    v21.i32[3] = 0;
    v21.f32[1] = v20;
    v21.f32[2] = v16 * v19;
    a8.f32[1] = -(v17 * (v16 * v19));
    a8.f32[2] = v17 * v20;
  }

  v27 = a1[4];
  v28.i64[0] = 0x3F0000003F000000;
  v28.i64[1] = 0x3F0000003F000000;
  v29 = vmulq_f32(vaddq_f32(v13, v14), v28);
  v30 = v29;
  v30.i32[3] = 0;
  v31 = vmulq_f32(v27, v30);
  v32 = vsubq_f32(v29, vmulq_n_f32(v27, vadd_f32(*&vextq_s8(v31, v31, 8uLL), vpadd_f32(*v31.i8, *v31.i8)).f32[0] - a1[5].f32[0]));
  v32.i32[3] = 0;
  v33 = vmulq_f32(vsubq_f32(v13, v14), v28);
  v33.i32[3] = 0;
  v34 = vmulq_f32(v33, v33);
  *v34.i32 = sqrtf(vadd_f32(*&vextq_s8(v34, v34, 8uLL), vpadd_f32(*v34.i8, *v34.i8)).f32[0]);
  v35 = vmulq_n_f32(v21, *v34.i32);
  v35.i32[3] = 0;
  v36 = vaddq_f32(v35, v32);
  v37 = vmulq_n_f32(a8, *v34.i32);
  v38 = vsubq_f32(v36, v37);
  v39 = vsubq_f32(v32, v35);
  v40 = vsubq_f32(v39, v37);
  v37.i32[3] = 0;
  v38.i32[3] = 0;
  v44 = vaddq_f32(v36, v37);
  v45 = v37;
  v39.i32[3] = 0;
  v40.i32[3] = 0;
  v42 = v40;
  v43 = v39;
  v46 = v44;
  v47 = v38;
  v48 = v40;
  (*(*a2 + 16))(a2, &v46, 0, 0);
  v46 = v42;
  v47 = vaddq_f32(v45, v43);
  v48 = v44;
  return (*(*a2 + 16))(a2, &v46, 0, 1);
}

__n128 btStaticPlaneShape::setLocalScaling(btVector3 *this, __n128 *a2)
{
  result = *a2;
  this[6] = *a2;
  return result;
}

const char *btStaticPlaneShape::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  btCollisionShape::serialize(a1, a2, a3);
  for (i = 0; i != 16; i += 4)
  {
    *(a2 + 16 + i) = *(a1 + 96 + i);
  }

  for (j = 0; j != 16; j += 4)
  {
    *(a2 + 32 + j) = *(a1 + 64 + j);
  }

  *(a2 + 48) = *(a1 + 80);
  return "btStaticPlaneShapeData";
}

uint64_t btStridingMeshInterface::InternalProcessAllTriangles(uint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 56))(a1);
  if (result >= 1)
  {
    v5 = result;
    v6 = 0;
    v68 = 0;
    v69 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v62 = *(a1 + 16);
    LODWORD(v7) = *(a1 + 24);
    do
    {
      v63 = 0;
      v66 = 2;
      (*(*a1 + 32))(a1, &v69, &v64, &v67, &v65, &v68, &v67 + 4, &v63, &v66, v6);
      if (v67 == 1)
      {
        if (v66 == 2)
        {
          v53 = v62;
          if (v63 >= 1)
          {
            v54 = 0;
            do
            {
              v55 = (v68 + SHIDWORD(v67) * v54);
              v56 = (v69 + (v65 * *v55));
              v57 = v56[1].f64[0];
              v70 = vmul_f32(v53, vcvt_f32_f64(*v56));
              v71 = v7 * v57;
              v72 = 0;
              v58 = (v69 + (v55[1] * v65));
              v59 = v58[1].f64[0];
              v73 = vmul_f32(v53, vcvt_f32_f64(*v58));
              v74 = v7 * v59;
              v75 = 0;
              v60 = (v69 + (v55[2] * v65));
              v61 = v60[1].f64[0];
              v76 = vmul_f32(v53, vcvt_f32_f64(*v60));
              v77 = v7 * v61;
              v78 = 0;
              (*(*a2 + 16))(a2, &v70, v6, v54);
              v53 = v62;
              v54 = (v54 + 1);
            }

            while (v54 < v63);
          }
        }

        else if (v66 == 3)
        {
          v35 = v62;
          if (v63 >= 1)
          {
            v36 = 0;
            do
            {
              v37 = (v68 + SHIDWORD(v67) * v36);
              v38 = (v69 + v65 * *v37);
              v39 = v38[1].f64[0];
              v70 = vmul_f32(v35, vcvt_f32_f64(*v38));
              v71 = v7 * v39;
              v72 = 0;
              v40 = (v69 + v65 * v37[1]);
              v41 = v40[1].f64[0];
              v73 = vmul_f32(v35, vcvt_f32_f64(*v40));
              v74 = v7 * v41;
              v75 = 0;
              v42 = (v69 + v65 * v37[2]);
              v43 = v42[1].f64[0];
              v76 = vmul_f32(v35, vcvt_f32_f64(*v42));
              v77 = v7 * v43;
              v78 = 0;
              (*(*a2 + 16))(a2, &v70, v6, v36);
              v35 = v62;
              v36 = (v36 + 1);
            }

            while (v36 < v63);
          }
        }

        else
        {
          v17 = v62;
          if (v66 == 5 && v63 >= 1)
          {
            v18 = 0;
            do
            {
              v19 = (v68 + SHIDWORD(v67) * v18);
              v20 = (v69 + v65 * *v19);
              v21 = v20[1].f64[0];
              v70 = vmul_f32(v17, vcvt_f32_f64(*v20));
              v71 = v7 * v21;
              v72 = 0;
              v22 = (v69 + v65 * v19[1]);
              v23 = v22[1].f64[0];
              v73 = vmul_f32(v17, vcvt_f32_f64(*v22));
              v74 = v7 * v23;
              v75 = 0;
              v24 = (v69 + v65 * v19[2]);
              v25 = v24[1].f64[0];
              v76 = vmul_f32(v17, vcvt_f32_f64(*v24));
              v77 = v7 * v25;
              v78 = 0;
              (*(*a2 + 16))(a2, &v70, v6, v18);
              v17 = v62;
              v18 = (v18 + 1);
            }

            while (v18 < v63);
          }
        }
      }

      else if (!v67)
      {
        if (v66 == 2)
        {
          v44 = v62;
          if (v63 >= 1)
          {
            v45 = 0;
            do
            {
              v46 = (v68 + SHIDWORD(v67) * v45);
              v47 = (v69 + (v65 * *v46));
              v48 = v7 * v47[1].f32[0];
              v70 = vmul_f32(v44, *v47);
              v71 = v48;
              v72 = 0;
              v49 = (v69 + (v46[1] * v65));
              v50 = v7 * v49[1].f32[0];
              v73 = vmul_f32(v44, *v49);
              v74 = v50;
              v75 = 0;
              v51 = (v69 + (v46[2] * v65));
              v52 = v7 * v51[1].f32[0];
              v76 = vmul_f32(v44, *v51);
              v77 = v52;
              v78 = 0;
              (*(*a2 + 16))(a2, &v70, v6, v45);
              v44 = v62;
              v45 = (v45 + 1);
            }

            while (v45 < v63);
          }
        }

        else if (v66 == 3)
        {
          v26 = v62;
          if (v63 >= 1)
          {
            v27 = 0;
            do
            {
              v28 = (v68 + SHIDWORD(v67) * v27);
              v29 = (v69 + v65 * *v28);
              v30 = v7 * v29[1].f32[0];
              v70 = vmul_f32(v26, *v29);
              v71 = v30;
              v72 = 0;
              v31 = (v69 + v65 * v28[1]);
              v32 = v7 * v31[1].f32[0];
              v73 = vmul_f32(v26, *v31);
              v74 = v32;
              v75 = 0;
              v33 = (v69 + v65 * v28[2]);
              v34 = v7 * v33[1].f32[0];
              v76 = vmul_f32(v26, *v33);
              v77 = v34;
              v78 = 0;
              (*(*a2 + 16))(a2, &v70, v6, v27);
              v26 = v62;
              v27 = (v27 + 1);
            }

            while (v27 < v63);
          }
        }

        else
        {
          v8 = v62;
          if (v66 == 5 && v63 >= 1)
          {
            v9 = 0;
            do
            {
              v10 = (v68 + SHIDWORD(v67) * v9);
              v11 = (v69 + v65 * *v10);
              v12 = v7 * v11[1].f32[0];
              v70 = vmul_f32(v8, *v11);
              v71 = v12;
              v72 = 0;
              v13 = (v69 + v65 * v10[1]);
              v14 = v7 * v13[1].f32[0];
              v73 = vmul_f32(v8, *v13);
              v74 = v14;
              v75 = 0;
              v15 = (v69 + v65 * v10[2]);
              v16 = v7 * v15[1].f32[0];
              v76 = vmul_f32(v8, *v15);
              v77 = v16;
              v78 = 0;
              (*(*a2 + 16))(a2, &v70, v6, v9);
              v8 = v62;
              v9 = (v9 + 1);
            }

            while (v9 < v63);
          }
        }
      }

      result = (*(*a1 + 48))(a1, v6);
      v6 = (v6 + 1);
    }

    while (v6 != v5);
  }

  return result;
}

const char *btStridingMeshInterface::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 56))(a1);
  *(a2 + 24) = v6;
  *a2 = 0;
  if (v6)
  {
    v7 = (*(*a3 + 32))(a3, 56, v6);
    v8 = *(v7 + 8);
    *a2 = (*(*a3 + 56))(a3, v8);
    v9 = (*(*a1 + 56))(a1);
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v45 = 0;
    if (v9 >= 1)
    {
      v10 = v9;
      v11 = 0;
      do
      {
        (*(*a1 + 32))(a1, &v49, &v45 + 4, &v47, &v46, &v48, &v47 + 4, &v45, &v46 + 4, v11);
        v12 = v45;
        v13 = HIDWORD(v45);
        *(v8 + 48) = v45;
        *(v8 + 52) = v13;
        *v8 = 0u;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0u;
        if (HIDWORD(v46) == 5)
        {
          if (v12)
          {
            v26 = (*(*a3 + 32))(a3, 4);
            v27 = *(v26 + 8);
            *(v8 + 32) = (*(*a3 + 56))(a3, v27);
            if (v45 >= 1)
            {
              v28 = 0;
              v29 = (v27 + 2);
              do
              {
                v30 = (v48 + SHIDWORD(v47) * v28);
                *(v29 - 2) = *v30;
                *(v29 - 1) = v30[1];
                *v29 = v30[2];
                v29 += 4;
                ++v28;
              }

              while (v28 < v45);
            }

            (*(*a3 + 40))(a3, v26, "btCharIndexTripletData", 1497453121, *(v26 + 8));
          }
        }

        else if (HIDWORD(v46) == 3)
        {
          if (v12)
          {
            v20 = (*(*a3 + 32))(a3, 8);
            v21 = *(v20 + 8);
            *(v8 + 24) = (*(*a3 + 56))(a3, v21);
            v22 = v45;
            if (v45 >= 1)
            {
              v23 = SHIDWORD(v47);
              v24 = (v48 + 4);
              v25 = (v21 + 4);
              do
              {
                *(v25 - 2) = *(v24 - 2);
                *(v25 - 1) = *(v24 - 1);
                *v25 = *v24;
                v25 += 4;
                v24 = (v24 + v23);
                --v22;
              }

              while (v22);
            }

            (*(*a3 + 40))(a3, v20, "btShortIntIndexTripletData", 1497453121, *(v20 + 8));
          }
        }

        else if (HIDWORD(v46) == 2 && v12)
        {
          v14 = (*(*a3 + 32))(a3, 4, (3 * v12));
          v15 = *(v14 + 8);
          *(v8 + 16) = (*(*a3 + 56))(a3, v15);
          if (v45 >= 1)
          {
            v16 = 0;
            v17 = v48;
            v18 = (v15 + 8);
            do
            {
              v19 = (v17 + SHIDWORD(v47) * v16);
              *(v18 - 2) = *v19;
              *(v18 - 1) = v19[1];
              *v18 = v19[2];
              v18 += 3;
              ++v16;
            }

            while (v16 < v45);
          }

          (*(*a3 + 40))(a3, v14, "btIntIndexData", 1497453121, *(v14 + 8));
        }

        if (v47 == 1)
        {
          if (HIDWORD(v45))
          {
            v37 = (*(*a3 + 32))(a3, 32);
            v38 = *(v37 + 8);
            *(v8 + 8) = (*(*a3 + 56))(a3, v38);
            v39 = HIDWORD(v45);
            if (SHIDWORD(v45) >= 1)
            {
              v40 = v46;
              v41 = (v49 + 16);
              v42 = (v38 + 16);
              do
              {
                *(v42 - 2) = *(v41 - 2);
                *(v42 - 1) = *(v41 - 1);
                *v42 = *v41;
                v42 += 4;
                v41 = (v41 + v40);
                --v39;
              }

              while (v39);
            }

            (*(*a3 + 40))(a3, v37, "btVector3DoubleData", 1497453121, *(v37 + 8));
          }
        }

        else if (!v47 && HIDWORD(v45))
        {
          v31 = (*(*a3 + 32))(a3, 16);
          v32 = *(v31 + 8);
          *v8 = (*(*a3 + 56))(a3, v32);
          v33 = HIDWORD(v45);
          if (SHIDWORD(v45) >= 1)
          {
            v34 = v46;
            v35 = (v49 + 8);
            v36 = (v32 + 8);
            do
            {
              *(v36 - 2) = *(v35 - 2);
              *(v36 - 1) = *(v35 - 1);
              *v36 = *v35;
              v36 += 4;
              v35 = (v35 + v34);
              --v33;
            }

            while (v33);
          }

          (*(*a3 + 40))(a3, v31, "btVector3FloatData", 1497453121, *(v31 + 8));
        }

        (*(*a1 + 48))(a1, v11);
        v11 = (v11 + 1);
        v8 += 56;
      }

      while (v11 != v10);
    }

    (*(*a3 + 40))(a3, v7, "btMeshPartData", 1497453121, *(v7 + 8));
  }

  for (i = 0; i != 16; i += 4)
  {
    *(a2 + 8 + i) = *(a1 + 16 + i);
  }

  return "btStridingMeshInterfaceData";
}

void btTriangleIndexVertexArray::~btTriangleIndexVertexArray(btTriangleIndexVertexArray *this)
{
  *this = &unk_282DCA948;
  v2 = *(this + 6);
  if (v2 && *(this + 56) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 56) = 1;
  *(this + 6) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;

  C3DSceneSourcePerformConsistencyCheck(this);
}

{
  btTriangleIndexVertexArray::~btTriangleIndexVertexArray(this);

  btAlignedFreeInternal(v1);
}

uint64_t btTriangleIndexVertexArray::getLockedVertexIndexBase(uint64_t result, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, void *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, int a10)
{
  v10 = *(result + 48) + 48 * a10;
  *a3 = *(v10 + 20);
  *a2 = *(v10 + 24);
  *a4 = *(v10 + 40);
  v11 = *(v10 + 36);
  *a5 = *(v10 + 32);
  *a8 = *v10;
  *a6 = *(v10 + 8);
  *a7 = *(v10 + 16);
  *a9 = v11;
  return result;
}

uint64_t btTriangleIndexVertexArray::getLockedReadOnlyVertexIndexBase(uint64_t result, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, void *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, int a10)
{
  v10 = *(result + 48) + 48 * a10;
  *a3 = *(v10 + 20);
  *a2 = *(v10 + 24);
  *a4 = *(v10 + 40);
  v11 = *(v10 + 36);
  *a5 = *(v10 + 32);
  *a8 = *v10;
  *a6 = *(v10 + 8);
  *a7 = *(v10 + 16);
  *a9 = v11;
  return result;
}

__n128 btTriangleIndexVertexArray::setPremadeAabb(btVector3 *this, const btVector3 *a2, __n128 *a3)
{
  this[5] = *a2;
  result = *a3;
  this[6] = *a3;
  LODWORD(this[4].var0.var0[2]) = 1;
  return result;
}

__n128 btTriangleIndexVertexArray::getPremadeAabb(btVector3 *this, btVector3 *a2, btVector3 *a3)
{
  *a2 = this[5];
  result = this[6];
  *a3 = result;
  return result;
}

void btTriangleMeshShape::btTriangleMeshShape(btTriangleMeshShape *this, btStridingMeshInterface *a2)
{
  btConcaveShape::btConcaveShape(this);
  *v4 = &unk_282DCA9D0;
  *(v4 + 64) = a2;
  *(v4 + 8) = 21;
  if ((*(*a2 + 80))(a2))
  {
    (*(*a2 + 96))(a2, this + 32, this + 48);
  }

  else
  {
    btTriangleMeshShape::recalcLocalAabb(this);
  }
}

float btTriangleMeshShape::recalcLocalAabb(btTriangleMeshShape *this)
{
  for (i = 0; i != 12; i += 4)
  {
    v6[0] = 0;
    v6[1] = 0;
    *(v6 + i) = 1065353216;
    (*(*this + 136))(&v5, this, v6);
    *(this + i + 48) = *(&v6[-2] + i) + *(this + 6);
    *(v6 + i) = -1082130432;
    (*(*this + 136))(&v4, this, v6);
    v5 = v4;
    result = *(&v6[-2] + i) - *(this + 6);
    *(this + i + 32) = result;
  }

  return result;
}

void btTriangleMeshShape::~btTriangleMeshShape(btTriangleMeshShape *this)
{
  v1 = C3DSceneSourcePerformConsistencyCheck(this);

  btAlignedFreeInternal(v1);
}

float32x4_t btTriangleMeshShape::getAabb(btTriangleMeshShape *this, const btTransform *a2, btVector3 *a3, btVector3 *a4)
{
  v31 = *(this + 2);
  v32 = *(this + 3);
  v8 = (*(*this + 96))(this);
  v30 = LODWORD(v8);
  v9 = (*(*this + 96))(this);
  v29 = LODWORD(v9);
  *&v10 = (*(*this + 96))(this);
  v11 = a2->var0.var0[1];
  v12 = a2->var0.var0[2];
  v13 = vandq_s8(v12, xmmword_21C2A40B0);
  v14 = vandq_s8(v11, xmmword_21C2A40B0);
  v15.i64[0] = 0x3F0000003F000000;
  v15.i64[1] = 0x3F0000003F000000;
  v16 = vmulq_f32(vaddq_f32(*(this + 3), *(this + 2)), v15);
  v17 = vmulq_f32(v12, v16);
  v16.i32[3] = 0;
  v18 = vmulq_f32(vsubq_f32(v32, v31), v15);
  v18.i32[3] = 0;
  v19.i64[0] = __PAIR64__(v29, v30);
  v19.i64[1] = v10;
  v20 = vaddq_f32(v19, v18);
  v21 = vmulq_f32(a2->var0.var0[0], v16);
  v22 = vmulq_f32(v11, v16);
  v17.i32[3] = 0;
  *v21.f32 = vadd_f32(vpadd_f32(*v21.f32, *v22.i8), vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)));
  *&v21.u32[2] = vpadd_f32(vpadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)), 0);
  v23 = vaddq_f32(v21, a2->var1);
  v24 = vmulq_f32(v20, vandq_s8(a2->var0.var0[0], xmmword_21C2A40B0));
  v25 = vmulq_f32(v20, v14);
  v26 = vmulq_f32(v20, v13);
  v26.i32[3] = 0;
  *v24.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)), vpadd_f32(*v24.f32, *v25.i8));
  *&v24.u32[2] = vpadd_f32(vpadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), 0);
  v27 = vsubq_f32(v23, v24);
  v27.var0.var0[3] = 0.0;
  *a3 = v27;
  result = vaddq_f32(v23, v24);
  *a4 = result;
  return result;
}

uint64_t btTriangleMeshShape::processAllTriangles(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v6[0] = &unk_282DCAA78;
  v6[1] = a2;
  v4 = *a4;
  v7 = *a3;
  v8 = v4;
  (*(**(a1 + 64) + 16))(*(a1 + 64), v6);
  return C3DSceneSourcePerformConsistencyCheck(v6);
}

uint64_t btTriangleMeshShape::localGetSupportingVertex@<X0>(btTriangleMeshShape *this@<X0>, float32x4_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v8 = 0uLL;
  v7[0] = &unk_282DCAAA0;
  v9 = xmmword_21C27F910;
  v10 = xmmword_21C27F8C0;
  v11 = xmmword_21C27F600;
  v12 = 0;
  v13 = 0;
  v14 = -581039253;
  v15 = vaddq_f32(vmulq_laneq_f32(xmmword_21C27F600, *a2, 2), vaddq_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(*a2)), vmulq_lane_f32(xmmword_21C27F8C0, *a2->f32, 1)));
  v5 = xmmword_21C2A42A0;
  v6 = xmmword_21C2A4030;
  (*(*this + 128))(this, v7, &v5, &v6);
  *a3 = v8;
  return C3DSceneSourcePerformConsistencyCheck(v7);
}

void btTriangleMeshShape::processAllTriangles(btTriangleCallback *,btVector3 const&,btVector3 const&)const::FilteredCallback::~FilteredCallback(uint64_t a1)
{
  C3DSceneSourcePerformConsistencyCheck(a1);

  JUMPOUT(0x21CF07610);
}

uint64_t btTriangleMeshShape::processAllTriangles(btTriangleCallback *,btVector3 const&,btVector3 const&)const::FilteredCallback::internalProcessTriangleIndex(uint64_t result, float *a2)
{
  v2 = *a2;
  v3 = a2[4];
  if (*a2 >= v3)
  {
    v4 = a2[4];
  }

  else
  {
    v4 = *a2;
  }

  v5 = a2[8];
  if (v4 >= v5)
  {
    v4 = a2[8];
  }

  if (v4 <= *(result + 32))
  {
    v6 = v2 <= v3;
    if (v2 <= v3)
    {
      v2 = a2[4];
    }

    v7 = 4 * v6;
    if (v2 <= v5)
    {
      v7 = 8;
    }

    if (a2[v7] >= *(result + 16))
    {
      v8 = a2 + 2;
      v9 = a2[2];
      v10 = a2[6];
      v11 = a2[10];
      if (v9 >= v10)
      {
        v12 = a2[6];
      }

      else
      {
        v12 = a2[2];
      }

      if (v12 >= v11)
      {
        v12 = a2[10];
      }

      if (v12 <= *(result + 40))
      {
        if (v9 <= v10)
        {
          v9 = a2[6];
          v8 = a2 + 6;
        }

        if (v9 <= v11)
        {
          v8 = a2 + 10;
        }

        if (*v8 >= *(result + 24))
        {
          v13 = a2 + 1;
          v14 = a2[1];
          v15 = a2[5];
          v16 = a2[9];
          if (v14 >= v15)
          {
            v17 = a2[5];
          }

          else
          {
            v17 = a2[1];
          }

          if (v17 >= v16)
          {
            v17 = a2[9];
          }

          if (v17 <= *(result + 36))
          {
            if (v14 <= v15)
            {
              v14 = a2[5];
              v13 = a2 + 5;
            }

            if (v14 <= v16)
            {
              v13 = a2 + 9;
            }

            if (*v13 >= *(result + 20))
            {
              return (*(**(result + 8) + 16))(*v13);
            }
          }
        }
      }
    }
  }

  return result;
}

void SupportVertexCallback::~SupportVertexCallback(SupportVertexCallback *this)
{
  C3DSceneSourcePerformConsistencyCheck(this);

  JUMPOUT(0x21CF07610);
}

uint64_t SupportVertexCallback::processTriangle(uint64_t this, btVector3 *a2)
{
  v2 = 0;
  v3 = *(this + 112);
  v4 = *(this + 96);
  do
  {
    v5 = vmulq_f32(v3, a2[v2]);
    v6 = vadd_f32(vpadd_f32(*v5.i8, *v5.i8), *&vextq_s8(v5, v5, 8uLL)).f32[0];
    if (v6 > v4)
    {
      *(this + 96) = v6;
      *(this + 16) = a2[v2];
      v4 = v6;
    }

    ++v2;
  }

  while (v2 != 3);
  return this;
}

void *btContinuousConvexCollision::btContinuousConvexCollision(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = &unk_282DCAAC8;
  result[1] = a4;
  result[2] = a5;
  result[3] = a2;
  result[4] = a3;
  result[5] = 0;
  return result;
}

void btContinuousConvexCollision::btContinuousConvexCollision(btContinuousConvexCollision *this, const btConvexShape *a2, const btStaticPlaneShape *a3)
{
  *this = &unk_282DCAAC8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = 0;
  *(this + 5) = a3;
}

uint64_t btContinuousConvexCollision::computeClosestPoints(btContinuousConvexCollision *this, const btTransform *a2, const btTransform *a3, btPointCollector *a4)
{
  v78 = *MEMORY[0x277D85DE8];
  if (*(this + 4))
  {
    v8 = btVoronoiSimplexSolver::reset(*(this + 1));
    v9 = *(this + 3);
    v10 = *(this + 4);
    v11 = v9[2];
    v12 = *(v10 + 8);
    v13 = (*(*v9 + 96))(v9, v8);
    v14 = (*(**(this + 4) + 96))(*(this + 4));
    btGjkPairDetector::btGjkPairDetector(v77, v9, v10, v11, v12, *(this + 1), *(this + 2), v13, v14);
    v76 = 1566444395;
    v15 = a2->var0.var0[1];
    v75[0] = a2->var0.var0[0];
    v75[1] = v15;
    var1 = a2->var1;
    v75[2] = a2->var0.var0[2];
    v75[3] = var1;
    v17 = a3->var0.var0[1];
    v75[4] = a3->var0.var0[0];
    v75[5] = v17;
    v18 = a3->var1;
    v75[6] = a3->var0.var0[2];
    v75[7] = v18;
    return btGjkPairDetector::getClosestPoints(v19, v75, a4, 0, 0);
  }

  else
  {
    v21 = *(this + 3);
    v22 = *(this + 5);
    v23 = a2->var0.var0[1];
    v24 = a2->var0.var0[2];
    v25 = a2->var1;
    v27 = a3->var0.var0[0];
    v26 = a3->var0.var0[1];
    v28 = a3->var0.var0[2];
    v29 = vtrn1q_s32(a3->var0.var0[0], v26);
    v30.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
    v31.i64[0] = v29.i64[0];
    v31.i64[1] = v28.u32[0];
    v29.i64[0] = 0x8000000080000000;
    v29.i64[1] = 0x8000000080000000;
    v32 = veorq_s8(a3->var1, v29);
    v33 = vmulq_f32(v31, v32);
    *v34.f32 = vzip2_s32(*a3->var0.var0[0].var0.var0, *v26.f32);
    *&v34.u32[2] = vzip2_s32(*v28.f32, 0);
    v35 = vmulq_f32(v34, v32);
    v30.i64[1] = vextq_s8(v28, v28, 8uLL).u32[0];
    v36 = vmulq_f32(v30, v32);
    v36.i32[3] = 0;
    v73 = vadd_f32(vpadd_f32(*v33.i8, *v35.i8), vzip1_s32(*&vextq_s8(v33, v33, 8uLL), *&vextq_s8(v35, v35, 8uLL)));
    v37 = a2->var0.var0[0];
    v37.i32[3] = 0;
    v38 = v23;
    v38.i32[3] = 0;
    v39 = v24;
    v39.i32[3] = 0;
    v71 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v37, *a3->var0.var0[0].var0.var0, 1), v38, *v26.f32, 1), v39, *v28.f32, 1);
    v40 = vmulq_f32(v25, v31);
    v41 = vmulq_f32(v25, v34);
    v42 = vmulq_f32(v25, v30);
    v42.i32[3] = 0;
    v72 = vadd_f32(vzip1_s32(*&vextq_s8(v40, v40, 8uLL), *&vextq_s8(v41, v41, 8uLL)), vpadd_f32(*v40.i8, *v41.i8));
    v69 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v37, COERCE_FLOAT(*a3->var0.var0)), v38, v26.f32[0]), v39, v28.f32[0]);
    v70 = vpadd_f32(vpadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL)), 0);
    v68 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v37, a3->var0.var0[0], 2), v38, v26, 2), v39, v28, 2);
    v27.i32[3] = 0;
    v26.i32[3] = 0;
    v28.i32[3] = 0;
    v43 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v27, *a2->var0.var0[0].var0.var0, 1), v26, *v23.f32, 1), v28, *v24.f32, 1);
    v44 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v27, COERCE_FLOAT(*a2->var0.var0)), v26, v23.f32[0]), v28, v24.f32[0]);
    v45 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v27, a2->var0.var0[0], 2), v26, v23, 2), v28, v24, 2);
    v46 = veorq_s8(*(v22 + 64), v29);
    v47 = vmulq_f32(v44, v46);
    v48 = vmulq_f32(v43, v46);
    v49 = vmulq_f32(v45, v46);
    v49.i32[3] = 0;
    *v47.i8 = vadd_f32(vpadd_f32(*v47.i8, *v48.i8), vzip1_s32(*&vextq_s8(v47, v47, 8uLL), *&vextq_s8(v48, v48, 8uLL)));
    v47.u64[1] = vpadd_f32(vpadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL)), 0);
    v67 = vpadd_f32(vpadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL)), 0);
    v77[0] = v47;
    (*(*v21 + 128))(v75);
    v50 = vmulq_f32(v69, v75[0]);
    v51 = vmulq_f32(v71, v75[0]);
    v52 = vmulq_f32(v68, v75[0]);
    v52.i32[3] = 0;
    *v50.f32 = vadd_f32(vpadd_f32(*v50.f32, *v51.f32), vzip1_s32(*&vextq_s8(v50, v50, 8uLL), *&vextq_s8(v51, v51, 8uLL)));
    *v53.f32 = v72;
    *&v53.u32[2] = v70;
    *v51.f32 = v73;
    *&v51.u32[2] = v67;
    *&v50.u32[2] = vpadd_f32(vpadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL)), 0);
    v54 = vaddq_f32(vaddq_f32(v51, v53), v50);
    v55 = *(v22 + 64);
    v56 = vmulq_f32(v55, v54);
    v57 = vmulq_n_f32(v55, vadd_f32(vpadd_f32(*v56.i8, *v56.i8), *&vextq_s8(v56, v56, 8uLL)).f32[0] - *(v22 + 80));
    v57.i32[3] = 0;
    v58 = vsubq_f32(v54, v57);
    v59 = a3->var0.var0[2];
    v60 = vmulq_f32(v59, v58);
    v58.i32[3] = 0;
    v61 = a3->var0.var0[1];
    v62 = vmulq_f32(a3->var0.var0[0], v58);
    v63 = vmulq_f32(v61, v58);
    v60.i32[3] = 0;
    *v63.f32 = vadd_f32(vpadd_f32(*v62.i8, *v63.f32), vzip1_s32(*&vextq_s8(v62, v62, 8uLL), *&vextq_s8(v63, v63, 8uLL)));
    *&v63.u32[2] = vpadd_f32(vpadd_f32(*v60.i8, *&vextq_s8(v60, v60, 8uLL)), 0);
    v64 = vmulq_f32(v55, a3->var0.var0[0]);
    v65 = vmulq_f32(v55, v61);
    v66 = vmulq_f32(v55, v59);
    v66.i32[3] = 0;
    *v59.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v64, v64, 8uLL), *&vextq_s8(v65, v65, 8uLL)), vpadd_f32(*v64.i8, *v65.i8));
    *&v59.u32[2] = vpadd_f32(vpadd_f32(*v66.i8, *&vextq_s8(v66, v66, 8uLL)), 0);
    v77[0] = vaddq_f32(a3->var1, v63);
    v74 = v59;
    return (*(*a4 + 32))(a4, &v74, v77);
  }
}

uint64_t btContinuousConvexCollision::calcTimeOfImpact(btContinuousConvexCollision *this, float32x4_t *a2, const btTransform *a3, float32x4_t *a4, btTransform *a5, float32x4_t *a6)
{
  v56 = *MEMORY[0x277D85DE8];
  v11 = vsubq_f32(a3->var1, a2[3]);
  v11.i32[3] = 0;
  v45 = v11;
  v51.var0.var0[2] = v11;
  v48.var0.var0[0].var0.var0[0] = 0.0;
  btTransformUtil::calculateDiffAxisAngle(a2, a3, &v55, v48.var0.var0, a5);
  v12 = vmulq_n_f32(v55.var0.var0[0], v48.var0.var0[0].var0.var0[0]);
  v12.i32[3] = 0;
  v42 = v12;
  v51.var0.var0[1] = v12;
  v13 = vsubq_f32(a5->var1, a4[3]);
  v13.i32[3] = 0;
  v43 = v13;
  v51.var0.var0[0] = v13;
  v48.var0.var0[0].var0.var0[0] = 0.0;
  btTransformUtil::calculateDiffAxisAngle(a4, a5, &v55, v48.var0.var0, v14);
  v15 = vmulq_n_f32(v55.var0.var0[0], v48.var0.var0[0].var0.var0[0]);
  v15.var0.var0[3] = 0.0;
  v41 = v15;
  v50 = v15;
  v16 = (*(**(this + 3) + 32))(*(this + 3));
  v17 = *(this + 4);
  if (v17)
  {
    (*(*v17 + 32))(v17);
  }

  else
  {
    v18 = 0.0;
  }

  v19 = vmulq_f32(v42, v42);
  v20 = vmulq_f32(v41, v41);
  v21 = (v18 * sqrtf(vadd_f32(vpadd_f32(*v20.i8, *v20.i8), *&vextq_s8(v20, v20, 8uLL)).f32[0])) + (sqrtf(vadd_f32(vpadd_f32(*v19.i8, *v19.i8), *&vextq_s8(v19, v19, 8uLL)).f32[0]) * v16);
  v22 = vsubq_f32(v43, v45);
  v22.i32[3] = 0;
  v23 = vmulq_f32(v22, v22);
  if ((v21 + sqrtf(vadd_f32(vpadd_f32(*v23.i8, *v23.i8), *&vextq_s8(v23, v23, 8uLL)).f32[0])) != 0.0)
  {
    v46 = v22;
    *v55.var0.var0[0].var0.var0 = &unk_282DCAAF0;
    strcpy(&v55.var1, "k\v^]");
    btContinuousConvexCollision::computeClosestPoints(this, a2, a4, &v55);
    v25 = v55.var0.var0[2];
    v49 = v55.var0.var0[2];
    if (LOBYTE(v55.var1.var0.var0[1]) == 1)
    {
      v26 = v55.var0.var0[1];
      v27 = vmulq_f32(v55.var0.var0[1], v46);
      if ((v21 + vadd_f32(vpadd_f32(*v27.i8, *v27.i8), *&vextq_s8(v27, v27, 8uLL)).f32[0]) > 0.00000011921)
      {
        v28 = v55.var1.var0.var0[0] + a6[12].f32[0];
        v29 = 0.0;
        if (v28 <= 0.001)
        {
LABEL_23:
          a6[11].f32[0] = v29;
          result = 1;
          a6[9] = v26;
          a6[10] = v25;
          return result;
        }

        v30 = 0;
        v31 = 0.0;
        while (1)
        {
          v32 = a6[11].i64[1];
          if (v32)
          {
            v48.var0.var0[0] = xmmword_21C280340;
            v44 = v26;
            (*(*v32 + 40))(v32, &v49, &v48, 0.2);
            v26 = v44;
          }

          v33 = vmulq_f32(v26, v46);
          v34 = v21 + vadd_f32(*&vextq_s8(v33, v33, 8uLL), vpadd_f32(*v33.i8, *v33.i8)).f32[0];
          if (v34 <= 0.00000011921)
          {
            break;
          }

          result = 0;
          v36 = v28 / v34;
          v29 = v31 + v36;
          v37 = (v31 + v36) > v31 && v29 <= 1.0;
          if (!v37 || v29 < 0.0)
          {
            return result;
          }

          btTransformUtil::integrateTransform(a2, &v51.var0.var0[2], &v51.var0.var0[1], &v48.var0, v31 + v36, v24);
          btTransformUtil::integrateTransform(a4, &v51, &v50, &v47.var0, v29, v38);
          v39 = a6[11].i64[1];
          if (v39)
          {
            v51.var1 = xmmword_21C27F910;
            (*(*v39 + 40))(v39, &v48.var1, &v51.var1, 0.2);
          }

          (*a6->i64[0])(a6, v29);
          *v51.var1.var0.var0 = &unk_282DCAAF0;
          strcpy(v54, "k\v^]");
          btContinuousConvexCollision::computeClosestPoints(this, &v48, &v47, &v51.var1);
          if (LOBYTE(v54[1]) != 1)
          {
            (*(a6->i64[0] + 16))(a6, 0xFFFFFFFFLL, v30);
            return 0;
          }

          v40 = a6[12].f32[0];
          v25 = v53;
          v49 = v53;
          if (v30 == 64)
          {
            (*(a6->i64[0] + 16))(a6, 4294967294, 65);
            return 0;
          }

          v30 = (v30 + 1);
          v26 = v52;
          v28 = v54[0] + v40;
          v31 = v29;
          if ((v54[0] + v40) <= 0.001)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  return 0;
}

void btTransformUtil::integrateTransform(float32x4_t *this, const btTransform *a2, float32x4_t *a3, btMatrix3x3 *a4, float a5, btTransform *a6)
{
  v7 = a5;
  v9 = vmulq_n_f32(a2->var0.var0[0], a5);
  v9.i32[3] = 0;
  a4[1].var0[0] = vaddq_f32(this[3], v9);
  v10 = *a3;
  v11 = vmulq_f32(v10, v10);
  v12 = sqrtf(vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).f32[0]);
  if ((v12 * v7) <= 0.7854)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.7854 / v7;
  }

  if (v13 >= 0.001)
  {
    v30 = *a3;
    v32 = v7;
    v15 = sinf((v13 * 0.5) * v7);
    v10 = v30;
    v7 = v32;
    v14 = v15 / v13;
  }

  else
  {
    v14 = (v13 * ((((v7 * v7) * v7) * -0.020833) * v13)) + (v7 * 0.5);
  }

  v33 = vmulq_n_f32(v10, v14);
  v16 = cosf((v13 * v7) * 0.5);
  v17 = v33;
  v17.f32[3] = v16;
  v31 = v17;
  btMatrix3x3::getRotation(this, &v35);
  v18 = v35;
  v19 = vextq_s8(v31, v31, 8uLL).u64[0];
  v20 = vzip1_s32(v19, *v33.f32);
  v21 = vextq_s8(v18, v18, 8uLL).u64[0];
  *v22.f32 = vzip1_s32(v21, *v35.var0.var0);
  v23 = vext_s8(v21, *v35.var0.var0, 4uLL);
  *v24.f32 = vext_s8(*v33.f32, v19, 4uLL);
  *v25.f32 = vext_s8(*v35.var0.var0, v21, 4uLL);
  *v26.f32 = v20;
  v26.i64[1] = v24.i64[0];
  *&v25.u32[2] = vrev64_s32(*v22.f32);
  v27 = vtrn2q_s32(v18, v18);
  *&v24.u32[2] = v20;
  *&v22.u32[2] = v23;
  v28 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v35, v31, 3), vmulq_f32(v26, v25)), veorq_s8(vaddq_f32(vmulq_f32(vdupq_lane_s64(v33.i64[0], 0), vextq_s8(v27, v27, 8uLL)), vmulq_f32(v24, v22)), xmmword_21C27FD30));
  v29 = vmulq_f32(v28, v28);
  v29.i64[0] = vpaddq_f32(v29, v29).u64[0];
  v34 = vmulq_n_f32(v28, 1.0 / sqrtf(vpadd_f32(*v29.f32, *v29.f32).f32[0]));
  btMatrix3x3::setRotation(a4, &v34);
}

void btContinuousConvexCollision::~btContinuousConvexCollision(btContinuousConvexCollision *this)
{
  C3DSceneSourcePerformConsistencyCheck(this);

  JUMPOUT(0x21CF07610);
}

uint64_t btPointCollector::addContactPoint(uint64_t this, const btVector3 *a2, const btVector3 *a3, float a4)
{
  if (*(this + 48) > a4)
  {
    *(this + 52) = 1;
    *(this + 16) = *a2;
    *(this + 32) = *a3;
    *(this + 48) = a4;
  }

  return this;
}

void *btGjkConvexCast::btGjkConvexCast(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = &unk_282DCAB28;
  result[1] = a4;
  result[2] = a2;
  result[3] = a3;
  return result;
}

uint64_t btGjkConvexCast::calcTimeOfImpact(btVoronoiSimplexSolver **this, const btTransform *a2, const btTransform *a3, const btTransform *a4, const btTransform *a5, float32x4_t *a6)
{
  v48 = *MEMORY[0x277D85DE8];
  btVoronoiSimplexSolver::reset(this[1]);
  var1 = a2->var1;
  v34 = a3->var1;
  v30 = a4->var1;
  v31 = a5->var1;
  v44[0] = &unk_282DCAAF0;
  strcpy(v47, "k\v^]");
  btGjkPairDetector::btGjkPairDetector(v43, this[2], this[3], this[1], 0);
  v42 = 1566444395;
  v12 = a2->var0.var0[1];
  v36[0] = a2->var0.var0[0];
  v36[1] = v12;
  v13 = a2->var1;
  v36[2] = a2->var0.var0[2];
  v37 = v13;
  v14 = a4->var0.var0[1];
  v38 = a4->var0.var0[0];
  v39 = v14;
  v15 = a4->var1;
  v40 = a4->var0.var0[2];
  v41 = v15;
  btGjkPairDetector::getClosestPoints(v43, v36, v44, 0, 0);
  if (LOBYTE(v47[1]) == 1)
  {
    v16 = vsubq_f32(vsubq_f32(v34, var1), vsubq_f32(v31, v30));
    v16.i32[3] = 0;
    v33 = v16;
    v17 = v47[0];
    v18 = v45;
    if (v47[0] <= 0.001)
    {
      v27 = v46;
      v26 = 0.0;
LABEL_16:
      v28 = vmulq_f32(v18, v33);
      if (vadd_f32(*&vextq_s8(v28, v28, 8uLL), vpadd_f32(*v28.i8, *v28.i8)).f32[0] < -a6[12].f32[0])
      {
        a6[11].f32[0] = v26;
        result = 1;
        a6[9] = v18;
        a6[10] = v27;
        return result;
      }
    }

    else
    {
      v19 = 0.0;
      v20 = 33;
      while (--v20)
      {
        result = 0;
        v22 = vmulq_f32(v18, v33);
        v23 = v19 - (v17 / vadd_f32(*&vextq_s8(v22, v22, 8uLL), vpadd_f32(*v22.i8, *v22.i8)).f32[0]);
        v24 = v23 > v19 && v23 <= 1.0;
        if (!v24 || v23 < 0.0)
        {
          return result;
        }

        v35 = v23;
        (*a6->i64[0])(a6);
        v25 = vaddq_f32(a4->var1, vmulq_n_f32(vsubq_f32(a5->var1, a4->var1), v35));
        v37 = vaddq_f32(a2->var1, vmulq_n_f32(vsubq_f32(a3->var1, a2->var1), v35));
        v41 = v25;
        btGjkPairDetector::getClosestPoints(v43, v36, v44, 0, 0);
        if (LOBYTE(v47[1]) != 1)
        {
          return 0;
        }

        v17 = v47[0];
        if (v47[0] < 0.0)
        {
          a6[11].f32[0] = v35;
          v29 = v46;
          a6[9] = v45;
          a6[10] = v29;
          return 1;
        }

        v18 = v45;
        v26 = v35;
        v19 = v35;
        if (v47[0] <= 0.001)
        {
          v27 = v46;
          goto LABEL_16;
        }
      }
    }
  }

  return 0;
}

void btGjkConvexCast::~btGjkConvexCast(btGjkConvexCast *this)
{
  C3DSceneSourcePerformConsistencyCheck(this);

  JUMPOUT(0x21CF07610);
}

BOOL btGjkEpaSolver2::Distance(uint64_t a1, float32x4_t *a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  v51 = *MEMORY[0x277D85DE8];
  gjkepa2_impl::Initialize(a1, a2, a3, a4, a6, v41, 0);
  v45 = 0;
  v46 = 0;
  v50 = 2;
  v48 = 0;
  v47 = 0;
  v13 = gjkepa2_impl::GJK::Evaluate(v44, v41, a5, v9, v10, v11, v12);
  v14 = v13;
  if (v13)
  {
    if (v13 == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    *a6 = v15;
  }

  else
  {
    v16 = v49;
    if (*(v49 + 48))
    {
      v17 = 0;
      v37 = 0u;
      v18 = 0uLL;
      do
      {
        v38 = *(v16 + 4 * v17 + 32);
        v19 = v42;
        v20 = (v41[0].i64[0] + (v43 >> 1));
        v36 = v18;
        if (v43)
        {
          v19 = *(*v20 + v42);
        }

        v19(&v40, v20, *(v16 + 8 * v17));
        v21 = vmulq_n_f32(v40, v38);
        v21.i32[3] = 0;
        v37 = vaddq_f32(v37, v21);
        v22.i64[0] = 0x8000000080000000;
        v22.i64[1] = 0x8000000080000000;
        v39 = veorq_s8(**(v49 + 8 * v17), v22);
        gjkepa2_impl::MinkowskiDiff::Support(v41, &v39, 1, &v40);
        v23 = vmulq_n_f32(v40, v38);
        v23.i32[3] = 0;
        v18 = vaddq_f32(v36, v23);
        ++v17;
        v16 = v49;
      }

      while (v17 < *(v49 + 48));
    }

    else
    {
      v18 = 0uLL;
      v37 = 0u;
    }

    v24 = vmulq_f32(v37, *a2);
    v25 = vmulq_f32(v37, a2[1]);
    v26 = vmulq_f32(v37, a2[2]);
    v26.i32[3] = 0;
    *v24.f32 = vadd_f32(vpadd_f32(*v24.f32, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
    *&v24.u32[2] = vpadd_f32(vpadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), 0);
    *(a6 + 16) = vaddq_f32(v24, a2[3]);
    v27 = vmulq_f32(v18, *a2);
    v28 = vmulq_f32(v18, a2[1]);
    v29 = vmulq_f32(v18, a2[2]);
    v29.i32[3] = 0;
    *v27.f32 = vadd_f32(vpadd_f32(*v27.f32, *v28.i8), vzip1_s32(*&vextq_s8(v27, v27, 8uLL), *&vextq_s8(v28, v28, 8uLL)));
    *&v27.u32[2] = vpadd_f32(vpadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL)), 0);
    v30 = vaddq_f32(v27, a2[3]);
    v31 = vsubq_f32(v37, v18);
    v31.i32[3] = 0;
    v32 = vmulq_f32(v31, v31);
    v33 = sqrtf(vadd_f32(*&vextq_s8(v32, v32, 8uLL), vpadd_f32(*v32.i8, *v32.i8)).f32[0]);
    *(a6 + 64) = v33;
    if (v33 <= 0.0001)
    {
      v34 = 1.0;
    }

    else
    {
      v34 = 1.0 / v33;
    }

    *(a6 + 32) = v30;
    *(a6 + 48) = vmulq_n_f32(v31, v34);
  }

  return v14 == 0;
}

uint64_t gjkepa2_impl::Initialize(uint64_t result, float32x4_t *a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6, int a7)
{
  *a5 = 0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  a6->i64[0] = result;
  a6->i64[1] = a3;
  v7 = *a2;
  v8 = a2[1];
  v7.i32[3] = 0;
  v8.i32[3] = 0;
  v9 = a2[2];
  v9.i32[3] = 0;
  v10 = a4[1];
  v11 = a4[2];
  v12 = vmulq_n_f32(v7, COERCE_FLOAT(*a4));
  v13 = vmulq_lane_f32(v7, *a4->f32, 1);
  v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v7, *a4, 2), v8, v10, 2), v9, v11, 2);
  a6[1] = vmlaq_n_f32(vmlaq_n_f32(v12, v8, v10.f32[0]), v9, v11.f32[0]);
  a6[2] = vmlaq_lane_f32(vmlaq_lane_f32(v13, v8, *v10.f32, 1), v9, *v11.f32, 1);
  a6[3] = v14;
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a2[2];
  v19 = vsubq_f32(a4[3], a2[3]);
  v19.i32[3] = 0;
  v20 = *a2;
  v21 = a2[1];
  v15.i32[3] = 0;
  v20.i32[3] = 0;
  v16.i32[3] = 0;
  v22 = vmlaq_laneq_f32(vmulq_laneq_f32(v15, *a2, 2), v16, v21, 2);
  v23 = vmlaq_lane_f32(vmulq_lane_f32(v15, *a2->f32, 1), v16, *v21.f32, 1);
  v21.i32[3] = 0;
  v17.i32[3] = 0;
  v24 = vmlaq_laneq_f32(v22, v17, v18, 2);
  v18.i32[3] = 0;
  a6[4] = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v15, COERCE_FLOAT(*a2)), v16, v21.f32[0]), v17, v18.f32[0]);
  a6[5] = vmlaq_lane_f32(v23, v17, *v18.f32, 1);
  a6[6] = v24;
  a6[7] = vaddq_f32(vaddq_f32(vmulq_n_f32(v20, v19.f32[0]), vmulq_lane_f32(v21, *v19.f32, 1)), vmulq_laneq_f32(v18, v19, 2));
  v25 = btConvexShape::localGetSupportVertexWithoutMarginNonVirtual;
  if (a7)
  {
    v25 = btConvexShape::localGetSupportVertexNonVirtual;
  }

  a6[8].i64[0] = v25;
  a6[8].i64[1] = 0;
  return result;
}

uint64_t gjkepa2_impl::GJK::Evaluate(float32x4_t *this, float32x4_t *a2, float32x4_t *a3, double a4, double a5, float32x4_t a6, float32x4_t a7)
{
  v67 = *MEMORY[0x277D85DE8];
  v8 = this + 26;
  this[26].i64[0] = &this[18];
  this[26].i64[1] = &this[20];
  this[27].i64[0] = &this[22];
  this[27].i64[1] = &this[24];
  this[28].i64[0] = 4;
  this[29].i32[0] = 0;
  *this = *a2;
  this[1] = a2[1];
  this[2] = a2[2];
  this[3] = a2[3];
  this[4] = a2[4];
  this[5] = a2[5];
  this[6] = a2[6];
  this[7] = a2[7];
  this[8] = a2[8];
  this[10].i32[0] = 0;
  this[13].i32[2] = 0;
  v9 = *a3;
  this[9] = *a3;
  this[10].i64[1] = &this[24];
  v10 = &this[10].i8[8];
  v11 = vmulq_f32(v9, v9);
  *a6.f32 = vpadd_f32(*v11.i8, *v11.i8);
  v12 = vextq_s8(v11, v11, 8uLL);
  *a7.f32 = vadd_f32(*a6.f32, *v12.i8);
  a6.i64[0] = 0;
  v12.i64[0] = 0;
  v62 = a7;
  v63 = v12;
  v66[0] = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a7, a6), 0), vnegq_f32(v9), xmmword_21C27F910);
  this[12].i32[2] = 0;
  this[28].i32[0] = 3;
  this[13].i32[2] = 1;
  gjkepa2_impl::GJK::getsupport(this, v66, &this[24]);
  v13 = 0;
  v14 = 0;
  this[12].i32[2] = 1065353216;
  v15 = *(*v10 + 16);
  this[9] = v15;
  v66[2] = v15;
  v66[3] = v15;
  v66[0] = v15;
  v66[1] = v15;
  v16 = this[28].i32[1];
  v17.i64[0] = 0x8000000080000000;
  v17.i64[1] = 0x8000000080000000;
  v18 = v15;
  while (2)
  {
    v19 = vmulq_f32(v18, v18);
    v20 = sqrtf(vadd_f32(vpadd_f32(*v19.i8, *v19.i8), *&vextq_s8(v19, v19, 8uLL)).f32[0]);
    if (v20 < 0.0001)
    {
      v21 = v16;
      this[29].i32[0] = 1;
LABEL_35:
      result = this[29].u32[0];
      break;
    }

    v21 = 1 - v16;
    v22 = &v10[56 * v16];
    v23 = &v10[56 * (1 - v16)];
    v65 = veorq_s8(v15, v17);
    v24 = *(v22 + 12);
    *(v22 + v24 + 8) = 0;
    v25 = this[28].i32[0] - 1;
    this[28].i32[0] = v25;
    v26 = v8->i64[v25];
    v22[v24] = v26;
    *(v22 + 12) = v24 + 1;
    gjkepa2_impl::GJK::getsupport(this, &v65, v26);
    v29 = 0;
    v30 = *(v22 + 12);
    v31 = v22[v30 - 1][1];
    do
    {
      v32 = vsubq_f32(v31, v66[v29]);
      v32.i32[3] = 0;
      v33 = vmulq_f32(v32, v32);
      if (vadd_f32(vpadd_f32(*v33.i8, *v33.i8), *&vextq_s8(v33, v33, 8uLL)).f32[0] < 0.0001)
      {
        goto LABEL_34;
      }

      ++v29;
    }

    while (v29 != 4);
    v13 = (v13 + 1) & 3;
    v66[v13] = v31;
    v34 = vmulq_f32(v31, this[9]);
    v35 = vadd_f32(vpadd_f32(*v34.i8, *v34.i8), *&vextq_s8(v34, v34, 8uLL)).f32[0] / v20;
    v36 = v63;
    if (v35 > *v63.i32)
    {
      *v36.i32 = v35;
    }

    if (((v20 - *v36.i32) + (v20 * -0.0001)) <= 0.0)
    {
      goto LABEL_34;
    }

    v64 = 0;
    v63 = v36;
    if (v30 == 4)
    {
      *v37.i32 = gjkepa2_impl::GJK::projectorigin(*v22 + 1, v22[1] + 1, v22[2] + 1, v22[3] + 1, &v65, &v64, v28);
      goto LABEL_22;
    }

    if (v30 == 3)
    {
      *v37.i64 = gjkepa2_impl::GJK::projectorigin(*v22 + 1, v22[1] + 1, v22[2] + 1, &v65, &v64, v27);
      goto LABEL_22;
    }

    v37 = v62;
    if (v30 != 2)
    {
      goto LABEL_22;
    }

    v38 = v22[1][1];
    v39 = (*v22)[1];
    v40 = vsubq_f32(v38, v39);
    v40.i32[3] = 0;
    v41 = vmulq_f32(v40, v40);
    v42 = vadd_f32(vpadd_f32(*v41.i8, *v41.i8), *&vextq_s8(v41, v41, 8uLL)).f32[0];
    if (v42 <= 0.0)
    {
LABEL_34:
      v21 = this[28].i32[1];
      v57 = &v10[56 * v21];
      v58 = *(v57 + 12) - 1;
      *(v57 + 12) = v58;
      v59 = *&v57[8 * v58];
      v60 = this[28].u32[0];
      this[28].i32[0] = v60 + 1;
      v8->i64[v60] = v59;
      goto LABEL_35;
    }

    v43 = vmulq_f32(v39, v40);
    v44 = -vadd_f32(*&vextq_s8(v43, v43, 8uLL), vpadd_f32(*v43.i8, *v43.i8)).f32[0] / v42;
    if (v44 >= 1.0)
    {
      *v65.var0.var0 = 0x3F80000000000000;
      v64 = 2;
      v46 = vmulq_f32(v38, v38);
    }

    else
    {
      if (v44 <= 0.0)
      {
        *v65.var0.var0 = 1065353216;
        v64 = 1;
      }

      else
      {
        v65.var0.var0[0] = 1.0 - v44;
        v65.var0.var0[1] = v44;
        v64 = 3;
        v45 = vmulq_n_f32(v40, v44);
        v45.i32[3] = 0;
        v39 = vaddq_f32(v39, v45);
      }

      v46 = vmulq_f32(v39, v39);
    }

    v47 = vpadd_f32(*v46.i8, *v46.i8);
    v37 = vextq_s8(v46, v46, 8uLL);
    *v37.i8 = vadd_f32(v47, *v37.i8);
LABEL_22:
    if (*v37.i32 < 0.0)
    {
      goto LABEL_34;
    }

    *(v23 + 12) = 0;
    v15 = 0uLL;
    this[9] = 0u;
    this[28].i32[1] = v21;
    v48 = *(v22 + 12);
    v49 = v64;
    v18 = 0uLL;
    v17.i64[0] = 0x8000000080000000;
    v17.i64[1] = 0x8000000080000000;
    if (v48)
    {
      v50 = 0;
      for (i = 0; i != v48; ++i)
      {
        v52 = v22[i];
        if ((v49 >> i))
        {
          *&v23[8 * v50] = v52;
          v53 = v65.var0.var0[i];
          *(v23 + 12) = v50 + 1;
          *&v23[4 * v50 + 32] = v53;
          v54 = vmulq_n_f32(v52[1], v53);
          v54.i32[3] = 0;
          v15 = vaddq_f32(v18, v54);
          this[9] = v15;
          ++v50;
          v18 = v15;
        }

        else
        {
          v55 = this[28].u32[0];
          this[28].i32[0] = v55 + 1;
          v8->i64[v55] = v52;
        }
      }
    }

    if (v49 == 15)
    {
      this[29].i32[0] = 1;
    }

    if (v14 == 127)
    {
      result = 2;
      this[29].i32[0] = 2;
      this[28].i64[1] = v23;
      return result;
    }

    v62 = v37;
    ++v14;
    result = this[29].u32[0];
    v16 = v21;
    if (!result)
    {
      continue;
    }

    break;
  }

  this[28].i64[1] = &v10[56 * v21];
  if (result == 1)
  {
    this[10].i32[0] = 0;
  }

  else if (!result)
  {
    v61 = vmulq_f32(this[9], this[9]);
    this[10].f32[0] = sqrtf(vadd_f32(vpadd_f32(*v61.i8, *v61.i8), *&vextq_s8(v61, v61, 8uLL)).f32[0]);
  }

  return result;
}

void *gjkepa2_impl::MinkowskiDiff::Support@<X0>(float32x4_t *this@<X0>, float32x4_t *a2@<X1>, int a3@<W2>, float32x4_t *a4@<X8>)
{
  if (a3)
  {
    v6 = this[8].i64[0];
    v7 = this[8].i64[1];
    v8 = (this->i64[1] + (v7 >> 1));
    if (v7)
    {
      v6 = *(*v8 + v6);
    }

    v12 = vmulq_f32(this[1], *a2);
    v13 = vmulq_f32(*a2, this[2]);
    v14 = vmulq_f32(*a2, this[3]);
    v14.i32[3] = 0;
    *v12.i8 = vadd_f32(vpadd_f32(*v12.i8, *v13.i8), vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)));
    v12.u64[1] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
    v19 = v12;
    result = v6(&v20, v8, &v19);
    v16 = vmulq_f32(this[4], v20);
    v17 = vmulq_f32(v20, this[5]);
    v18 = vmulq_f32(v20, this[6]);
    v18.i32[3] = 0;
    *v16.f32 = vadd_f32(vpadd_f32(*v16.f32, *v17.i8), vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v17, v17, 8uLL)));
    *&v16.u32[2] = vpadd_f32(vpadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)), 0);
    *a4 = vaddq_f32(v16, this[7]);
  }

  else
  {
    v9 = this[8].i64[0];
    v10 = this[8].i64[1];
    v11 = (this->i64[0] + (v10 >> 1));
    if (v10)
    {
      v9 = *(*v11 + v9);
    }

    return v9(v11, a2);
  }

  return result;
}

float btGjkEpaSolver2::Penetration(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v52 = *MEMORY[0x277D85DE8];
  gjkepa2_impl::Initialize(v7, v5, v8, v9, v1, v34, v10);
  v48 = 0;
  v47 = 0;
  v51 = 2;
  v50 = 0;
  v49 = 0;
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v37 = veorq_s8(*v4, v11);
  v14 = gjkepa2_impl::GJK::Evaluate(v46, v34, &v37, *v37.var0.var0, COERCE_DOUBLE(0x8000000080000000), v12, v13);
  if (v14 == 2)
  {
    v2->i32[0] = 2;
  }

  else if (v14 == 1)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    gjkepa2_impl::EPA::Initialize(&v37);
    v16.i64[0] = 0x8000000080000000;
    v16.i64[1] = 0x8000000080000000;
    v33 = veorq_s8(*v4, v16);
    if (gjkepa2_impl::EPA::Evaluate(&v37, v46, &v33) == 9)
    {
      v2->i32[0] = 3;
    }

    else
    {
      if (v39)
      {
        v17 = 0;
        v18 = 0uLL;
        do
        {
          v19 = v35;
          v20 = (v34[0].i64[0] + (v36 >> 1));
          v32 = v18;
          if (v36)
          {
            v19 = *(*v20 + v35);
          }

          v19(&v33, v20, *&v37.var0.var0[2 * v17 + 2]);
          v21 = vmulq_n_f32(v33, *&v38[v17]);
          v21.i32[3] = 0;
          v18 = vaddq_f32(v32, v21);
          ++v17;
        }

        while (v17 < v39);
      }

      else
      {
        v18 = 0uLL;
      }

      v2->i32[0] = 1;
      v22 = vmulq_f32(v18, *v6);
      v23 = vmulq_f32(v18, v6[1]);
      v24 = vmulq_f32(v18, v6[2]);
      v24.i32[3] = 0;
      *v22.f32 = vadd_f32(vpadd_f32(*v22.f32, *v23.i8), vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v23, v23, 8uLL)));
      *&v22.u32[2] = vpadd_f32(vpadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)), 0);
      v25 = v40;
      v26 = v41;
      v27 = vmulq_n_f32(v40, v41);
      v27.i32[3] = 0;
      v2[1] = vaddq_f32(v22, v6[3]);
      v28 = vsubq_f32(v18, v27);
      v29 = vmulq_f32(v6[2], v28);
      v28.i32[3] = 0;
      v30 = vmulq_f32(*v6, v28);
      v31 = vmulq_f32(v6[1], v28);
      v29.i32[3] = 0;
      *v31.f32 = vadd_f32(vpadd_f32(*v30.i8, *v31.f32), vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v31, v31, 8uLL)));
      *&v31.u32[2] = vpadd_f32(vpadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL)), 0);
      v2[2] = vaddq_f32(v6[3], v31);
      v2[3] = vnegq_f32(v25);
      result = -v26;
      v2[4].f32[0] = -v26;
    }
  }

  return result;
}

uint64_t gjkepa2_impl::EPA::Evaluate(gjkepa2_impl::EPA *this, float32x4_t *a2, int8x16_t *a3)
{
  v5 = a2[28].i64[1];
  if (*(v5 + 12) < 2u || !gjkepa2_impl::GJK::EncloseOrigin(a2))
  {
    goto LABEL_49;
  }

  v7 = *(this + 1805);
  if (v7)
  {
    v8 = *(this + 3612);
    v9 = *(this + 3616);
    do
    {
      v10 = *(v7 + 72);
      v11 = *(v7 + 80);
      if (v11)
      {
        *(v11 + 72) = v10;
      }

      if (v10)
      {
        *(v10 + 80) = *(v7 + 80);
      }

      if (*(this + 1805) == v7)
      {
        *(this + 1805) = *(v7 + 80);
      }

      *(v7 + 72) = 0;
      v12 = *(this + 1807);
      *(v7 + 80) = v12;
      if (v12)
      {
        *(v12 + 72) = v7;
      }

      *(this + 1807) = v7;
      ++v9;
      v7 = *(this + 1805);
      --v8;
    }

    while (v7);
    *(this + 3612) = v8;
    *(this + 3616) = v9;
  }

  *this = 0;
  *(this + 3608) = 0;
  v13 = v5[2];
  v14 = v5[3][1];
  v16 = *v5;
  v15 = v5[1];
  _Q1 = vsubq_f32((*v5)[1], v14);
  v18 = vsubq_f32(v15[1], v14);
  _Q0 = vsubq_f32(v13[1], v14);
  _S6 = vmuls_lane_f32(-_Q1.f32[0], v18, 2);
  __asm { FMLA            S4, S6, V0.S[1] }

  _S3 = -_Q1.f32[1] * v18.f32[0];
  __asm { FMLA            S4, S3, V0.S[2] }

  _Q1.f32[0] = vmuls_lane_f32(_Q1.f32[0], *v18.f32, 1);
  __asm { FMLA            S4, S1, V0.S[2] }

  if ((_S4 + (vmuls_lane_f32(-_Q1.f32[2], *v18.f32, 1) * _Q0.f32[0])) >= 0.0)
  {
    v29 = v5[1];
    v15 = *v5;
  }

  else
  {
    *v5 = v15;
    v5[1] = v16;
    v5[4] = vrev64_s32(v5[4]);
    v29 = v16;
  }

  v30 = gjkepa2_impl::EPA::newface(this, v15, v29, v13, 1);
  v31 = gjkepa2_impl::EPA::newface(this, v5[1], *v5, v5[3], 1);
  v32 = gjkepa2_impl::EPA::newface(this, v5[2], v5[1], v5[3], 1);
  v33 = gjkepa2_impl::EPA::newface(this, *v5, v5[2], v5[3], 1);
  if (*(this + 3612) == 4)
  {
    v34 = *(this + 1805);
    v35 = *(v34 + 80);
    if (v35)
    {
      v36 = *(v34 + 16) * *(v34 + 16);
      do
      {
        if ((*(v35 + 16) * *(v35 + 16)) < v36)
        {
          v36 = *(v35 + 16) * *(v35 + 16);
          v34 = v35;
        }

        v35 = *(v35 + 80);
      }

      while (v35);
    }

    v37 = 0;
    v38 = *v34;
    v39 = *(v34 + 16);
    v40 = *(v34 + 24);
    v41 = *(v34 + 40);
    v30[5].i8[8] = 0;
    v30[3].i64[0] = v31;
    v31[5].i8[8] = 0;
    v31[3].i64[0] = v30;
    v30[5].i8[9] = 0;
    v30[3].i64[1] = v32;
    v32[5].i8[8] = 1;
    v32[3].i64[0] = v30;
    v30[5].i8[10] = 0;
    v30[4].i64[0] = v33;
    v33[5].i8[8] = 2;
    v33[3].i64[0] = v30;
    v31[5].i8[9] = 2;
    v31[3].i64[1] = v33;
    v33[5].i8[10] = 1;
    v33[4].i64[0] = v31;
    v31[5].i8[10] = 1;
    v31[4].i64[0] = v32;
    *(&v32[5].i16[4] + 1) = 258;
    v32[3].i64[1] = v31;
    v32[4].i64[0] = v33;
    v33[5].i8[9] = 2;
    v33[3].i64[1] = v32;
    *this = 0;
    while (1)
    {
      v42 = *(this + 3608);
      if (v42 > 0x3F)
      {
        *this = 6;
        goto LABEL_57;
      }

      v78 = v39;
      v79 = v38;
      v80 = v40;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      *(this + 3608) = v42 + 1;
      v43 = (this + 32 * v42 + 96);
      *(v34 + 91) = ++v37;
      gjkepa2_impl::GJK::getsupport(a2, v34, v43);
      v44 = vmulq_f32(*v34, v43[1]);
      if ((vadd_f32(vpadd_f32(*v44.i8, *v44.i8), *&vextq_s8(v44, v44, 8uLL)).f32[0] - *(v34 + 16)) <= 0.0001)
      {
        v61 = 7;
        goto LABEL_56;
      }

      v45 = 0;
      do
      {
        v46 = gjkepa2_impl::EPA::expand(this, v37, v43, *(v34 + 8 * v45 + 48), *(v34 + v45 + 88), &v81);
        if (v45 > 1)
        {
          break;
        }

        ++v45;
      }

      while ((v46 & 1) != 0);
      v47 = v83 > 2 ? v46 : 0;
      if ((v47 & 1) == 0)
      {
        break;
      }

      v48 = v81;
      v49 = v82;
      *(v81 + 89) = 2;
      *(v48 + 56) = v49;
      *(v49 + 90) = 1;
      *(v49 + 64) = v48;
      v50 = *(v34 + 72);
      v51 = *(v34 + 80);
      if (v51)
      {
        *(v51 + 72) = v50;
      }

      if (v50)
      {
        *(v50 + 80) = *(v34 + 80);
      }

      if (*(this + 1805) == v34)
      {
        *(this + 1805) = *(v34 + 80);
      }

      --*(this + 3612);
      *(v34 + 72) = 0;
      v52 = *(this + 1807);
      *(v34 + 80) = v52;
      if (v52)
      {
        *(v52 + 72) = v34;
      }

      *(this + 1807) = v34;
      ++*(this + 3616);
      v34 = *(this + 1805);
      v53 = *(v34 + 80);
      if (v53)
      {
        v54 = *(v34 + 16) * *(v34 + 16);
        do
        {
          if ((*(v53 + 16) * *(v53 + 16)) < v54)
          {
            v54 = *(v53 + 16) * *(v53 + 16);
            v34 = v53;
          }

          v53 = *(v53 + 80);
        }

        while (v53);
      }

      v38 = *v34;
      v39 = *(v34 + 16);
      v40 = *(v34 + 24);
      v41 = *(v34 + 40);
      if (v37 == 255)
      {
        goto LABEL_57;
      }
    }

    v61 = 4;
LABEL_56:
    *this = v61;
    v38 = v79;
    v40 = v80;
    v39 = v78;
LABEL_57:
    v62 = vmulq_n_f32(v38, v39);
    *(this + 4) = v38;
    *(this + 20) = v39;
    *(this + 14) = 3;
    *(this + 8) = v40;
    *(this + 3) = v41;
    v63 = vsubq_f32(*(*(&v40 + 1) + 16), v62);
    v63.i32[3] = 0;
    v64 = vsubq_f32(v41[1], v62);
    v64.i32[3] = 0;
    v65 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v64, v64, 0xCuLL), v64, 8uLL), v63), vmulq_f32(vextq_s8(vextq_s8(v63, v63, 0xCuLL), v63, 8uLL), v64));
    v66 = vextq_s8(vextq_s8(v65, v65, 0xCuLL), v65, 8uLL);
    v66.i32[3] = 0;
    v67 = vmulq_f32(v66, v66);
    *v67.i32 = sqrtf(vadd_f32(vpadd_f32(*v67.i8, *v67.i8), *&vextq_s8(v67, v67, 8uLL)).f32[0]);
    *(this + 10) = v67.i32[0];
    v68 = vsubq_f32(v41[1], v62);
    v68.i32[3] = 0;
    v69 = vsubq_f32(*(v40 + 16), v62);
    v69.i32[3] = 0;
    v70 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v69, v69, 0xCuLL), v69, 8uLL), v68), vmulq_f32(vextq_s8(vextq_s8(v68, v68, 0xCuLL), v68, 8uLL), v69));
    v71 = vextq_s8(vextq_s8(v70, v70, 0xCuLL), v70, 8uLL);
    v71.i32[3] = 0;
    v72 = vmulq_f32(v71, v71);
    *v72.i32 = sqrtf(vadd_f32(vpadd_f32(*v72.i8, *v72.i8), *&vextq_s8(v72, v72, 8uLL)).f32[0]);
    *(this + 11) = v72.i32[0];
    v73 = vsubq_f32(*(v40 + 16), v62);
    v73.i32[3] = 0;
    v74 = vsubq_f32(*(*(&v40 + 1) + 16), v62);
    v74.i32[3] = 0;
    v75 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v74, v74, 0xCuLL), v74, 8uLL), v73), vmulq_f32(vextq_s8(vextq_s8(v73, v73, 0xCuLL), v73, 8uLL), v74));
    v76 = vextq_s8(vextq_s8(v75, v75, 0xCuLL), v75, 8uLL);
    v76.i32[3] = 0;
    v77 = vmulq_f32(v76, v76);
    *v77.i32 = sqrtf(vadd_f32(vpadd_f32(*v77.i8, *v77.i8), *&vextq_s8(v77, v77, 8uLL)).f32[0]);
    v73.f32[0] = (*v67.i32 + *v72.i32) + *v77.i32;
    *(this + 10) = *v67.i32 / v73.f32[0];
    *(this + 11) = *v72.i32 / v73.f32[0];
    *(this + 12) = *v77.i32 / v73.f32[0];
    return *this;
  }

  else
  {
LABEL_49:
    *this = 8;
    v55.i64[0] = 0x8000000080000000;
    v55.i64[1] = 0x8000000080000000;
    v56 = veorq_s8(*a3, v55);
    v57 = vmulq_f32(v56, v56);
    v58 = sqrtf(vadd_f32(vpadd_f32(*v57.i8, *v57.i8), *&vextq_s8(v57, v57, 8uLL)).f32[0]);
    if (v58 <= 0.0)
    {
      v59 = xmmword_21C27F910;
    }

    else
    {
      v59 = vmulq_n_f32(v56, 1.0 / v58);
      v59.i32[3] = 0;
    }

    *(this + 4) = v59;
    *(this + 20) = 0;
    *(this + 14) = 1;
    *(this + 1) = *v5;
    *(this + 10) = 1065353216;
    return 8;
  }
}

double gjkepa2_impl::GJK::projectorigin(float32x4_t *this, float32x4_t *a2, float32x4_t *a3, const btVector3 *a4, float *a5, unsigned int *a6)
{
  v49[3] = *MEMORY[0x277D85DE8];
  v49[0] = this;
  v49[1] = a2;
  v6 = *this;
  v7 = vsubq_f32(*this, *a2);
  v7.i32[3] = 0;
  v8 = *a3;
  v9 = vsubq_f32(*a2, *a3);
  v9.i32[3] = 0;
  v49[2] = a3;
  v48[0] = v7;
  v48[1] = v9;
  v10 = vsubq_f32(v8, v6);
  v10.i32[3] = 0;
  v48[2] = v10;
  v11 = vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL);
  v12 = vsubq_f32(vmulq_f32(v11, v7), vmulq_f32(vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL), v9));
  v13 = vextq_s8(vextq_s8(v12, v12, 0xCuLL), v12, 8uLL);
  v13.i32[3] = 0;
  v16 = vmulq_f32(v13, v13);
  v14 = vpadd_f32(*v16.i8, *v16.i8);
  v16.i64[0] = vextq_s8(v16, v16, 8uLL).u64[0];
  v15 = vadd_f32(v14, *v16.i8);
  v16.i32[0] = -1.0;
  if (v15.f32[0] > 0.0)
  {
    v17 = 0;
    v18 = 0;
    v16 = vextq_s8(v13, v13, 0xCuLL);
    v19 = vextq_s8(v16, v13, 8uLL);
    v20 = 0.0;
    v16.i32[0] = -1.0;
    v21 = 0.0;
    do
    {
      v22 = vsubq_f32(vmulq_f32(v19, v48[v17]), vmulq_f32(vextq_s8(vextq_s8(v48[v17], v48[v17], 0xCuLL), v48[v17], 8uLL), v13));
      v23 = vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL);
      v23.i32[3] = 0;
      v24 = *v49[v17];
      v25 = vmulq_f32(v24, v23);
      if (vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL)).f32[0] > 0.0)
      {
        v26 = gjkepa2_impl::GJK::projectorigin(btVector3 const&,btVector3 const&,btVector3 const&,float *,unsigned int &)::imd3[v17];
        v27 = *v49[v26];
        v28 = vsubq_f32(v27, v24);
        v28.i32[3] = 0;
        v29 = vmulq_f32(v28, v28);
        v30 = vadd_f32(vpadd_f32(*v29.i8, *v29.i8), *&vextq_s8(v29, v29, 8uLL)).f32[0];
        v31 = -1.0;
        if (v30 > 0.0)
        {
          v32 = vmulq_f32(v24, v28);
          v20 = -vadd_f32(*&vextq_s8(v32, v32, 8uLL), vpadd_f32(*v32.i8, *v32.i8)).f32[0] / v30;
          if (v20 >= 1.0)
          {
            v35 = vmulq_f32(v27, v27);
            v20 = 1.0;
            v21 = 0.0;
            v18 = 2;
          }

          else if (v20 <= 0.0)
          {
            v35 = vmulq_f32(v24, v24);
            v20 = 0.0;
            v21 = 1.0;
            v18 = 1;
          }

          else
          {
            v21 = 1.0 - v20;
            v33 = vmulq_n_f32(v28, v20);
            v33.i32[3] = 0;
            v34 = vaddq_f32(v24, v33);
            v35 = vmulq_f32(v34, v34);
            v18 = 3;
          }

          LODWORD(v31) = vadd_f32(vpadd_f32(*v35.i8, *v35.i8), *&vextq_s8(v35, v35, 8uLL)).u32[0];
        }

        if (*v16.i32 < 0.0 || v31 < *v16.i32)
        {
          a4->var0.var0[v17] = v21;
          a4->var0.var0[v26] = v20;
          *a5 = ((v18 << 31 >> 31) & (1 << v17)) + ((1 << v26) & (v18 << 30 >> 31));
          a4->var0.var0[gjkepa2_impl::GJK::projectorigin(btVector3 const&,btVector3 const&,btVector3 const&,float *,unsigned int &)::imd3[v26]] = 0.0;
          *v16.i32 = v31;
        }
      }

      ++v17;
    }

    while (v17 != 3);
    if (*v16.i32 < 0.0)
    {
      v36 = vmulq_f32(*this, v13);
      v37 = sqrtf(v15.f32[0]);
      v38 = vmulq_n_f32(v13, vdiv_f32(vadd_f32(vpadd_f32(*v36.i8, *v36.i8), *&vextq_s8(v36, v36, 8uLL)), v15).f32[0]);
      *a5 = 7;
      v39 = vsubq_f32(*a2, v38);
      v39.i32[3] = 0;
      v40 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v39, v39, 0xCuLL), v39, 8uLL), v9), vmulq_f32(v11, v39));
      v41 = vextq_s8(vextq_s8(v40, v40, 0xCuLL), v40, 8uLL);
      v41.i32[3] = 0;
      v42 = vmulq_f32(v41, v41);
      *v42.i32 = sqrtf(vadd_f32(vpadd_f32(*v42.i8, *v42.i8), *&vextq_s8(v42, v42, 8uLL)).f32[0]) / v37;
      LODWORD(a4->var0.var0[0]) = v42.i32[0];
      v43 = vsubq_f32(*a3, v38);
      v38.i32[3] = 0;
      v16 = vmulq_f32(v38, v38);
      v43.i32[3] = 0;
      v44 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v43, v43, 0xCuLL), v43, 8uLL), v10), vmulq_f32(vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL), v43));
      v45 = vextq_s8(vextq_s8(v44, v44, 0xCuLL), v44, 8uLL);
      v45.i32[3] = 0;
      *v16.i8 = vadd_f32(vpadd_f32(*v16.i8, *v16.i8), *&vextq_s8(v16, v16, 8uLL));
      v46 = vmulq_f32(v45, v45);
      *v46.i32 = sqrtf(vadd_f32(vpadd_f32(*v46.i8, *v46.i8), *&vextq_s8(v46, v46, 8uLL)).f32[0]) / v37;
      LODWORD(a4->var0.var0[1]) = v46.i32[0];
      a4->var0.var0[2] = 1.0 - (*v42.i32 + *v46.i32);
    }
  }

  return *v16.i64;
}

float gjkepa2_impl::GJK::projectorigin(float32x4_t *this, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, const btVector3 *a5, float *a6, unsigned int *a7)
{
  v51[4] = *MEMORY[0x277D85DE8];
  v51[0] = this;
  v51[1] = a2;
  v51[2] = a3;
  v51[3] = a4;
  v7 = *this;
  v8 = *a4;
  _Q4 = vsubq_f32(*this, *a4);
  _Q4.i32[3] = 0;
  v10 = *a2;
  v11 = vsubq_f32(*a2, *a4);
  v11.i32[3] = 0;
  v50[0] = _Q4;
  v50[1] = v11;
  v12 = *a3;
  _Q3 = vsubq_f32(*a3, v8);
  _Q3.i32[3] = 0;
  v50[2] = _Q3;
  _S17 = vmuls_lane_f32(-_Q4.f32[0], v11, 2);
  __asm { FMLA            S7, S17, V3.S[1] }

  _S6 = -_Q4.f32[1] * v11.f32[0];
  __asm { FMLA            S7, S6, V3.S[2] }

  _Q4.f32[0] = vmuls_lane_f32(_Q4.f32[0], *v11.f32, 1);
  __asm { FMLA            S7, S4, V3.S[2] }

  v23 = _S7 + (vmuls_lane_f32(-_Q4.f32[2], *v11.f32, 1) * _Q3.f32[0]);
  v24 = -1.0;
  if (v23 != 0.0)
  {
    v25 = vsubq_f32(v10, v12);
    v25.i32[3] = 0;
    v26 = vsubq_f32(v7, v10);
    v26.i32[3] = 0;
    v27 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL), v25), vmulq_f32(vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL), v26));
    v28 = vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL);
    v28.i32[3] = 0;
    v29 = vmulq_f32(v7, v28);
    if ((v23 * vadd_f32(vpadd_f32(*v29.i8, *v29.i8), *&vextq_s8(v29, v29, 8uLL)).f32[0]) <= 0.0)
    {
      v34 = 0;
      v49.var0.var0[2] = 0.0;
      *v49.var0.var0 = 0;
      v48 = 0.0;
      do
      {
        v35 = gjkepa2_impl::GJK::projectorigin(btVector3 const&,btVector3 const&,btVector3 const&,btVector3 const&,float *,unsigned int &)::imd3[v34];
        v36 = vsubq_f32(vmulq_f32(v50[v34], vextq_s8(vextq_s8(v50[v35], v50[v35], 0xCuLL), v50[v35], 8uLL)), vmulq_f32(v50[v35], vextq_s8(vextq_s8(v50[v34], v50[v34], 0xCuLL), v50[v34], 8uLL)));
        v37 = vextq_s8(vextq_s8(v36, v36, 0xCuLL), v36, 8uLL);
        v37.i32[3] = 0;
        v38 = vmulq_f32(*a4, v37);
        if ((v23 * vadd_f32(vpadd_f32(*v38.i8, *v38.i8), *&vextq_s8(v38, v38, 8uLL)).f32[0]) > 0.0)
        {
          v39 = gjkepa2_impl::GJK::projectorigin(v51[v34], v51[v35], a4, &v49, &v48, a6);
          if (v24 < 0.0 || *&v39 < v24)
          {
            v40 = v49.var0.var0[1];
            a5->var0.var0[v34] = v49.var0.var0[0];
            *a6 = ((1 << v35) & ((LODWORD(v48) << 30) >> 31)) + ((2 * LODWORD(v48)) & 8) + (((LODWORD(v48) << 31) >> 31) & (1 << v34));
            a5->var0.var0[v35] = v40;
            a5->var0.var0[gjkepa2_impl::GJK::projectorigin(btVector3 const&,btVector3 const&,btVector3 const&,btVector3 const&,float *,unsigned int &)::imd3[v35]] = 0.0;
            a5->var0.var0[3] = v49.var0.var0[2];
            v24 = *&v39;
          }
        }

        ++v34;
      }

      while (v34 != 3);
      if (v24 < 0.0)
      {
        *a6 = 15;
        a5->var0.var0[0] = gjkepa2_impl::GJK::det(a3, a2, a4, a4) / v23;
        a5->var0.var0[1] = gjkepa2_impl::GJK::det(this, a3, a4, v41) / v23;
        v43 = gjkepa2_impl::GJK::det(a2, this, a4, v42) / v23;
        v44 = 1.0 - (v43 + (a5->var0.var0[0] + a5->var0.var0[1]));
        a5->var0.var0[2] = v43;
        a5->var0.var0[3] = v44;
        return 0.0;
      }
    }
  }

  return v24;
}

__n128 gjkepa2_impl::GJK::getsupport(float32x4_t *a1, float32x4_t *a2, uint64_t a3)
{
  v5 = vmulq_f32(*a2, *a2);
  v6 = vmulq_n_f32(*a2, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v5.i8, *v5.i8), *&vextq_s8(v5, v5, 8uLL)).f32[0]));
  v6.i32[3] = 0;
  *a3 = v6;
  v7 = a1[8].i64[0];
  v8 = a1[8].i64[1];
  v9 = (a1->i64[0] + (v8 >> 1));
  if (v8)
  {
    v7 = *(*v9 + v7);
  }

  v7(&v22, v9, a3);
  v10 = a1[8].i64[0];
  v11 = a1[8].i64[1];
  v12 = (a1->i64[1] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  v13.i64[0] = 0x8000000080000000;
  v13.i64[1] = 0x8000000080000000;
  v14 = veorq_s8(*a3, v13);
  v15 = vmulq_f32(a1[1], v14);
  v16 = vmulq_f32(a1[2], v14);
  v17 = vmulq_f32(a1[3], v14);
  v17.i32[3] = 0;
  *v15.i8 = vadd_f32(vpadd_f32(*v15.i8, *v16.i8), vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v16, v16, 8uLL)));
  v15.u64[1] = vpadd_f32(vpadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)), 0);
  v23 = v15;
  v10(&v24, v12, &v23);
  v18 = vmulq_f32(a1[4], v24);
  v19 = vmulq_f32(v24, a1[5]);
  v20 = vmulq_f32(v24, a1[6]);
  v20.i32[3] = 0;
  *v18.f32 = vadd_f32(vpadd_f32(*v18.f32, *v19.i8), vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v19, v19, 8uLL)));
  *&v18.u32[2] = vpadd_f32(vpadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)), 0);
  result = vsubq_f32(v22, vaddq_f32(v18, a1[7]));
  result.n128_u32[3] = 0;
  *(a3 + 16) = result;
  return result;
}

uint64_t gjkepa2_impl::EPA::Initialize(uint64_t this)
{
  v1 = 0;
  *this = 9;
  *(this + 14432) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  v2 = this + 14336;
  v3 = *(this + 14464);
  v4 = 128;
  v5 = *(this + 14456);
  do
  {
    *(v2 + 72) = 0;
    *(v2 + 80) = v5;
    if (v5)
    {
      *(v5 + 72) = v2;
    }

    v5 = this + 2144 + 96 * (127 - v1);
    *(this + 14456) = v2;
    ++v1;
    v2 -= 96;
    --v4;
  }

  while (v4);
  *(this + 14464) = v3 + 128;
  return this;
}

uint64_t gjkepa2_impl::GJK::EncloseOrigin(float32x4_t *this)
{
  v2 = this[28].i64[1];
  v3 = *(v2 + 12);
  if (v3 <= 2)
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v4 = 0;
        v5 = vsubq_f32(v2[1][1], (*v2)[1]);
        v5.i32[3] = 0;
        v6 = vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL);
        v7 = this + 26;
        v77 = v6;
        v78 = v5;
        while (1)
        {
          v81 = 0uLL;
          v81.i32[v4] = 1065353216;
          v8 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v81, v81, 0xCuLL), v81, 8uLL), v5), vmulq_f32(v6, v81));
          v9 = vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL);
          v9.i32[3] = 0;
          v80 = v9;
          v10 = vmulq_f32(v9, v9);
          if (vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL)).f32[0] > 0.0)
          {
            v11 = this[28].i64[1];
            v12 = *(v11 + 48);
            *(v11 + 4 * v12 + 32) = 0;
            v13 = this[28].i32[0] - 1;
            this[28].i32[0] = v13;
            v14 = v7->i64[v13];
            *(v11 + 8 * v12) = v14;
            *(v11 + 48) = v12 + 1;
            gjkepa2_impl::GJK::getsupport(this, &v80, v14);
            if (gjkepa2_impl::GJK::EncloseOrigin(this))
            {
              return 1;
            }

            v15 = this[28].i64[1];
            v16 = *(v15 + 48) - 1;
            *(v15 + 48) = v16;
            v17 = *(v15 + 8 * v16);
            v18 = this[28].u32[0];
            v7->i64[v18] = v17;
            v19 = this[28].i64[1];
            v20.i64[0] = 0x8000000080000000;
            v20.i64[1] = 0x8000000080000000;
            v79 = veorq_s8(v80, v20);
            v21 = *(v19 + 48);
            *(v19 + 4 * v21 + 32) = 0;
            this[28].i32[0] = v18;
            *(v19 + 8 * v21) = v17;
            *(v19 + 48) = v21 + 1;
            gjkepa2_impl::GJK::getsupport(this, &v79, v17);
            if (gjkepa2_impl::GJK::EncloseOrigin(this))
            {
              return 1;
            }

            v22 = this[28].i64[1];
            v23 = *(v22 + 48) - 1;
            *(v22 + 48) = v23;
            v24 = *(v22 + 8 * v23);
            v25 = this[28].u32[0];
            this[28].i32[0] = v25 + 1;
            v7->i64[v25] = v24;
            v6 = v77;
            v5 = v78;
          }

          if (++v4 == 3)
          {
            return 0;
          }
        }
      }

      return 0;
    }

    v41 = 0;
    v42 = this + 26;
    LODWORD(v43) = this[28].i32[0] - 1;
    while (1)
    {
      v81 = 0uLL;
      v81.i32[v41] = 1065353216;
      v44 = this[28].i64[1];
      v45 = *(v44 + 48);
      *(v44 + 4 * v45 + 32) = 0;
      this[28].i32[0] = v43;
      v46 = v42->i64[v43];
      *(v44 + 8 * v45) = v46;
      *(v44 + 48) = v45 + 1;
      gjkepa2_impl::GJK::getsupport(this, &v81, v46);
      if (gjkepa2_impl::GJK::EncloseOrigin(this))
      {
        break;
      }

      v47 = this[28].i64[1];
      v48 = *(v47 + 48) - 1;
      *(v47 + 48) = v48;
      v49 = *(v47 + 8 * v48);
      v50 = this[28].u32[0];
      v42->i64[v50] = v49;
      v51 = this[28].i64[1];
      v52.i64[0] = 0x8000000080000000;
      v52.i64[1] = 0x8000000080000000;
      v80 = veorq_s8(v81, v52);
      v53 = *(v51 + 48);
      *(v51 + 4 * v53 + 32) = 0;
      this[28].i32[0] = v50;
      *(v51 + 8 * v53) = v49;
      *(v51 + 48) = v53 + 1;
      gjkepa2_impl::GJK::getsupport(this, &v80, v49);
      if (gjkepa2_impl::GJK::EncloseOrigin(this))
      {
        break;
      }

      v54 = this[28].i64[1];
      v55 = *(v54 + 48) - 1;
      *(v54 + 48) = v55;
      v56 = *(v54 + 8 * v55);
      v43 = this[28].u32[0];
      this[28].i32[0] = v43 + 1;
      v42->i64[v43] = v56;
      if (++v41 == 3)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v3 == 3)
  {
    v57 = (*v2)[1];
    v58 = vsubq_f32(v2[1][1], v57);
    v58.i32[3] = 0;
    v59 = vsubq_f32(v2[2][1], v57);
    v59.i32[3] = 0;
    v60 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v59, v59, 0xCuLL), v59, 8uLL), v58), vmulq_f32(vextq_s8(vextq_s8(v58, v58, 0xCuLL), v58, 8uLL), v59));
    v61 = vextq_s8(vextq_s8(v60, v60, 0xCuLL), v60, 8uLL);
    v61.i32[3] = 0;
    v81 = v61;
    v62 = vmulq_f32(v61, v61);
    if (vadd_f32(vpadd_f32(*v62.i8, *v62.i8), *&vextq_s8(v62, v62, 8uLL)).f32[0] > 0.0)
    {
      *(v2 + 44) = 0x400000000;
      v63 = this + 26;
      v64 = this[28].i32[0] - 1;
      this[28].i32[0] = v64;
      v65 = this[26].i64[v64];
      v2[3] = v65;
      gjkepa2_impl::GJK::getsupport(this, &v81, v65);
      if (gjkepa2_impl::GJK::EncloseOrigin(this))
      {
        return 1;
      }

      v66 = this[28].i64[1];
      v67 = *(v66 + 48) - 1;
      *(v66 + 48) = v67;
      v68 = *(v66 + 8 * v67);
      v69 = this[28].u32[0];
      v63->i64[v69] = v68;
      v70 = this[28].i64[1];
      v71.i64[0] = 0x8000000080000000;
      v71.i64[1] = 0x8000000080000000;
      v80 = veorq_s8(v81, v71);
      v72 = *(v70 + 48);
      *(v70 + 4 * v72 + 32) = 0;
      this[28].i32[0] = v69;
      *(v70 + 8 * v72) = v68;
      *(v70 + 48) = v72 + 1;
      gjkepa2_impl::GJK::getsupport(this, &v80, v68);
      if (gjkepa2_impl::GJK::EncloseOrigin(this))
      {
        return 1;
      }

      v73 = this[28].i64[1];
      v74 = *(v73 + 48) - 1;
      *(v73 + 48) = v74;
      v75 = *(v73 + 8 * v74);
      v76 = this[28].u32[0];
      this[28].i32[0] = v76 + 1;
      v63->i64[v76] = v75;
    }

    return 0;
  }

  if (v3 != 4)
  {
    return 0;
  }

  v26 = v2[3][1];
  _Q0 = vsubq_f32((*v2)[1], v26);
  v28 = vsubq_f32(v2[1][1], v26);
  _Q1 = vsubq_f32(v2[2][1], v26);
  _S6 = vmuls_lane_f32(-_Q0.f32[0], v28, 2);
  __asm { FMLA            S4, S6, V1.S[1] }

  _S3 = -_Q0.f32[1] * v28.f32[0];
  __asm { FMLA            S4, S3, V1.S[2] }

  _Q0.f32[0] = vmuls_lane_f32(_Q0.f32[0], *v28.f32, 1);
  __asm { FMLA            S4, S0, V1.S[2] }

  v39 = _S4 + (vmuls_lane_f32(-_Q0.f32[2], *v28.f32, 1) * _Q1.f32[0]);
  result = 1;
  if (v39 >= 0.0 && v39 <= 0.0)
  {
    return 0;
  }

  return result;
}

float32x4_t *gjkepa2_impl::EPA::newface(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, char a5)
{
  v6 = *(a1 + 14456);
  if (!v6)
  {
    *a1 = 5;
    return v6;
  }

  v11 = v6[4].i64[1];
  v12 = v6[5].i64[0];
  if (v12)
  {
    *(v12 + 72) = v11;
  }

  if (v11)
  {
    *(v11 + 80) = v6[5].i64[0];
  }

  if (*(a1 + 14456) == v6)
  {
    *(a1 + 14456) = v6[5].i64[0];
  }

  --*(a1 + 14464);
  v6[4].i64[1] = 0;
  v13 = *(a1 + 14440);
  v6[5].i64[0] = v13;
  if (v13)
  {
    *(v13 + 72) = v6;
  }

  *(a1 + 14440) = v6;
  ++*(a1 + 14448);
  v6[5].i8[11] = 0;
  v6[1].i64[1] = a2;
  v6[2].i64[0] = a3;
  v6[2].i64[1] = a4;
  v14 = a2[1];
  v15 = vsubq_f32(a3[1], v14);
  v16 = v15;
  v16.i32[3] = 0;
  v17 = vsubq_f32(a4[1], v14);
  v18 = v17;
  v18.i32[3] = 0;
  v19 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL), v15), vmulq_f32(vextq_s8(vextq_s8(v16, v16, 0xCuLL), v16, 8uLL), v17));
  v20 = vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL);
  v20.i32[3] = 0;
  *v6 = v20;
  v21 = vmulq_f32(v20, v20);
  v22 = sqrtf(vadd_f32(vpadd_f32(*v21.i8, *v21.i8), *&vextq_s8(v21, v21, 8uLL)).f32[0]);
  if (v22 <= 0.0001)
  {
    v24 = 2;
    goto LABEL_20;
  }

  if (!gjkepa2_impl::EPA::getedgedist(a1, v6, a2, a3, v6[1].f32) && !gjkepa2_impl::EPA::getedgedist(a1, v6, a3, a4, v6[1].f32) && !gjkepa2_impl::EPA::getedgedist(a1, v6, a4, a2, v6[1].f32))
  {
    v23 = vmulq_f32(a2[1], *v6);
    v6[1].f32[0] = vadd_f32(vpadd_f32(*v23.i8, *v23.i8), *&vextq_s8(v23, v23, 8uLL)).f32[0] / v22;
  }

  *v6 = vmulq_n_f32(*v6, 1.0 / v22);
  if ((a5 & 1) == 0 && v6[1].f32[0] < -0.00001)
  {
    v24 = 3;
LABEL_20:
    *a1 = v24;
    v25 = v6[4].i64[1];
    v26 = v6[5].i64[0];
    if (v26)
    {
      *(v26 + 72) = v25;
    }

    if (v25)
    {
      *(v25 + 80) = v6[5].i64[0];
    }

    if (*(a1 + 14440) == v6)
    {
      *(a1 + 14440) = v6[5].i64[0];
    }

    --*(a1 + 14448);
    v6[4].i64[1] = 0;
    v27 = *(a1 + 14456);
    v6[5].i64[0] = v27;
    if (v27)
    {
      *(v27 + 72) = v6;
    }

    *(a1 + 14456) = v6;
    ++*(a1 + 14464);
    return 0;
  }

  return v6;
}

uint64_t gjkepa2_impl::EPA::expand(uint64_t a1, int a2, float32x4_t *a3, float32x4_t *a4, unsigned int a5, uint64_t *a6)
{
  if (a4[5].u8[11] == a2)
  {
    return 0;
  }

  v8 = a5;
  v11 = a5;
  v12 = vmulq_f32(*a4, a3[1]);
  if ((vadd_f32(vpadd_f32(*v12.i8, *v12.i8), *&vextq_s8(v12, v12, 8uLL)).f32[0] - a4[1].f32[0]) < -0.00001)
  {
    result = gjkepa2_impl::EPA::newface(a1, a4[1].i64[gjkepa2_impl::EPA::expand(unsigned int,gjkepa2_impl::GJK::sSV *,gjkepa2_impl::EPA::sFace *,unsigned int,gjkepa2_impl::EPA::sHorizon &)::i1m3[a5] + 1], a4[1].i64[a5 + 1], a3, 0);
    if (!result)
    {
      return result;
    }

    *(result + 88) = v8;
    *(result + 48) = a4;
    a4[5].i8[v11 + 8] = 0;
    a4[3].i64[v11] = result;
    v13 = *a6;
    if (*a6)
    {
      *(v13 + 89) = 2;
      *(v13 + 56) = result;
      *(result + 90) = 1;
      *(result + 64) = v13;
    }

    else
    {
      a6[1] = result;
    }

    *a6 = result;
    v17 = a6 + 2;
    goto LABEL_20;
  }

  a4[5].i8[11] = a2;
  result = gjkepa2_impl::EPA::expand(a1);
  if (result)
  {
    result = gjkepa2_impl::EPA::expand(a1);
    if (result)
    {
      v14 = a4[4].i64[1];
      v15 = a4[5].i64[0];
      if (v15)
      {
        *(v15 + 72) = v14;
      }

      if (v14)
      {
        *(v14 + 80) = a4[5].i64[0];
      }

      if (*(a1 + 14440) == a4)
      {
        *(a1 + 14440) = a4[5].i64[0];
      }

      --*(a1 + 14448);
      a4[4].i64[1] = 0;
      v16 = *(a1 + 14456);
      a4[5].i64[0] = v16;
      if (v16)
      {
        *(v16 + 72) = a4;
      }

      *(a1 + 14456) = a4;
      v17 = (a1 + 14464);
LABEL_20:
      ++*v17;
      return 1;
    }
  }

  return result;
}

BOOL gjkepa2_impl::EPA::getedgedist(uint64_t a1, int8x16_t *a2, float32x4_t *a3, float32x4_t *a4, float *a5)
{
  v5 = a4[1];
  v6 = a3[1];
  v7 = vsubq_f32(v5, v6);
  v7.i32[3] = 0;
  v8 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(*a2, *a2, 0xCuLL), *a2, 8uLL), v7), vmulq_f32(*a2, vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL)));
  v9 = vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL);
  v9.i32[3] = 0;
  v10 = vmulq_f32(v6, v9);
  v11 = vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL)).f32[0];
  if (v11 < 0.0)
  {
    v12 = vmulq_f32(v6, v7);
    if (vadd_f32(*&vextq_s8(v12, v12, 8uLL), vpadd_f32(*v12.i8, *v12.i8)).f32[0] <= 0.0)
    {
      v14 = vmulq_f32(v5, v7);
      if (vadd_f32(*&vextq_s8(v14, v14, 8uLL), vpadd_f32(*v14.i8, *v14.i8)).f32[0] >= 0.0)
      {
        v16 = vmulq_f32(v7, v7);
        v17 = vmulq_f32(v5, v6);
        *v17.i32 = vadd_f32(*&vextq_s8(v17, v17, 8uLL), vpadd_f32(*v17.i8, *v17.i8)).f32[0];
        v18 = vmulq_f32(v6, v6);
        v19 = vmulq_f32(v5, v5);
        v15 = fmaxf(((-*v17.i32 * *v17.i32) + (vadd_f32(*&vextq_s8(v18, v18, 8uLL), vpadd_f32(*v18.i8, *v18.i8)).f32[0] * vadd_f32(*&vextq_s8(v19, v19, 8uLL), vpadd_f32(*v19.i8, *v19.i8)).f32[0])) / vadd_f32(*&vextq_s8(v16, v16, 8uLL), vpadd_f32(*v16.i8, *v16.i8)).f32[0], 0.0);
        goto LABEL_8;
      }

      v13 = vmulq_f32(v5, v5);
    }

    else
    {
      v13 = vmulq_f32(v6, v6);
    }

    LODWORD(v15) = vadd_f32(*&vextq_s8(v13, v13, 8uLL), vpadd_f32(*v13.i8, *v13.i8)).u32[0];
LABEL_8:
    *a5 = sqrtf(v15);
  }

  return v11 < 0.0;
}

uint64_t btGjkEpaPenetrationDepthSolver::calcPenDepth(btGjkEpaPenetrationDepthSolver *this, btVoronoiSimplexSolver *a2, const btConvexShape *a3, const btConvexShape *a4, float32x4_t *a5, float32x4_t *a6, btVector3 *a7, btVector3 *a8, btVector3 *a9, btIDebugDraw *a10)
{
  v26 = *MEMORY[0x277D85DE8];
  v16 = vsubq_f32(a6[3], a5[3]);
  v16.i32[3] = 0;
  v21 = v16;
  btGjkEpaSolver2::Penetration(a3);
  v18 = v17;
  if ((v17 & 1) != 0 || btGjkEpaSolver2::Distance(a3, a5, a4, a6, &v21, v22))
  {
    v19 = v24;
    *a8 = v23;
    *a9 = v19;
    *a7 = v25;
  }

  return v18;
}

uint64_t btGjkPairDetector::btGjkPairDetector(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_282DCAB78;
  *(a1 + 16) = xmmword_21C27F8C0;
  *(a1 + 32) = a5;
  *(a1 + 40) = a4;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  v7 = a3[2];
  *(a1 + 64) = a2[2];
  *(a1 + 68) = v7;
  *(a1 + 72) = (*(*a2 + 96))(a2);
  *(a1 + 76) = (*(*a3 + 96))(a3);
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *(a1 + 100) = 0x100000001;
  return a1;
}

double btGjkPairDetector::btGjkPairDetector(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, float a8, float a9)
{
  *a1 = &unk_282DCAB78;
  *(a1 + 16) = xmmword_21C27F8C0;
  *(a1 + 32) = a7;
  *(a1 + 40) = a6;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  *(a1 + 68) = a5;
  *(a1 + 72) = a8;
  *(a1 + 76) = a9;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *&result = 0x100000001;
  *(a1 + 100) = 0x100000001;
  return result;
}

void btGjkPairDetector::getClosestPointsNonVirtual(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  *(a1 + 84) = 0;
  v108 = 0uLL;
  v92 = a2[1];
  v93 = *a2;
  v104[0] = *a2;
  v104[1] = v92;
  v10 = a2[2];
  v9 = a2[3];
  v89 = a2[5];
  v90 = a2[4];
  v102[0] = v90;
  v102[1] = v89;
  v12 = a2[6];
  v11 = a2[7];
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vmulq_f32(vaddq_f32(v9, v11), v13);
  v14.i32[3] = 0;
  v91 = v10;
  v104[2] = v10;
  v105 = vsubq_f32(v9, v14);
  v87 = v105;
  v88 = v12;
  v102[2] = v12;
  v103 = vsubq_f32(v11, v14);
  v85 = v14;
  v86 = v103;
  if ((*(*(a1 + 48) + 8) - 17) <= 1)
  {
    v8 = (*(*(a1 + 56) + 8) - 17) < 2;
  }

  *(a1 + 16) = xmmword_21C27F8C0;
  v15 = (a1 + 16);
  v16 = *(a1 + 72);
  v17 = *(a1 + 76);
  ++gNumGjkChecks;
  v18 = 0.0;
  if (*(a1 + 80))
  {
    v17 = 0.0;
  }

  else
  {
    v18 = v16;
  }

  *(a1 + 96) = 0;
  *(a1 + 88) = 0xFFFFFFFFLL;
  v83 = v18;
  v84 = v17;
  v19 = v18 + v17;
  btVoronoiSimplexSolver::reset(*(a1 + 40));
  v21 = *v15;
  for (i = 1.0e18; ; i = v46)
  {
    v23.i64[0] = 0x8000000080000000;
    v23.i64[1] = 0x8000000080000000;
    v24 = veorq_s8(v21, v23);
    v25 = *a2;
    v26 = a2[1];
    v25.i32[3] = 0;
    v26.i32[3] = 0;
    v27 = a2[2];
    v27.i32[3] = 0;
    v28 = vaddq_f32(vaddq_f32(vmulq_n_f32(v25, v24.f32[0]), vmulq_lane_f32(v26, *v24.f32, 1)), vmulq_laneq_f32(v27, v24, 2));
    v29 = a2[4];
    v30 = a2[5];
    v29.i32[3] = 0;
    v30.i32[3] = 0;
    v31 = a2[6];
    v31.i32[3] = 0;
    v106 = vaddq_f32(vaddq_f32(vmulq_n_f32(v29, v21.f32[0]), vmulq_lane_f32(v30, *v21.f32, 1)), vmulq_laneq_f32(v31, v21, 2));
    v107 = v28;
    btConvexShape::localGetSupportVertexWithoutMarginNonVirtual(*(a1 + 48), &v107, &v101, v20);
    btConvexShape::localGetSupportVertexWithoutMarginNonVirtual(*(a1 + 56), &v106, &v100, v32);
    v33 = vmulq_f32(v93, v101);
    v34 = vmulq_f32(v101, v92);
    v35 = vmulq_f32(v101, v91);
    v35.i32[3] = 0;
    *v33.f32 = vadd_f32(vpadd_f32(*v33.f32, *v34.i8), vzip1_s32(*&vextq_s8(v33, v33, 8uLL), *&vextq_s8(v34, v34, 8uLL)));
    *&v33.u32[2] = vpadd_f32(vpadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL)), 0);
    v36 = vaddq_f32(v33, v87);
    v37 = vmulq_f32(v90, v100);
    v38 = vmulq_f32(v100, v89);
    v39 = vmulq_f32(v100, v88);
    v39.i32[3] = 0;
    *v37.f32 = vadd_f32(vpadd_f32(*v37.f32, *v38.i8), vzip1_s32(*&vextq_s8(v37, v37, 8uLL), *&vextq_s8(v38, v38, 8uLL)));
    *&v37.u32[2] = vpadd_f32(vpadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL)), 0);
    v40 = vaddq_f32(v37, v86);
    v98 = v40;
    v99 = v36;
    if (v8)
    {
      v99.var0.var0[2] = 0.0;
      v98.var0.var0[2] = 0.0;
      v40 = v98;
      v36 = v99;
    }

    v41 = vsubq_f32(v36, v40);
    v41.var0.var0[3] = 0.0;
    v97 = v41;
    v42 = vmulq_f32(*v15, v41);
    v43 = vadd_f32(vpadd_f32(*v42.i8, *v42.i8), *&vextq_s8(v42, v42, 8uLL));
    if (v43.f32[0] > 0.0 && vmul_f32(v43, v43).f32[0] > (i * a2[8].f32[0]))
    {
      v48 = 10;
      goto LABEL_29;
    }

    v94 = v43.f32[0];
    if (btVoronoiSimplexSolver::inSimplex(*(a1 + 40), &v97))
    {
      v48 = 1;
      goto LABEL_29;
    }

    if ((i - v94) <= (i * 0.000001))
    {
      break;
    }

    btVoronoiSimplexSolver::addVertex(*(a1 + 40), &v97, &v99, &v98);
    btVoronoiSimplexSolver::closest(*(a1 + 40), &v96);
    if (!v44)
    {
      v48 = 3;
      goto LABEL_29;
    }

    v21 = v96;
    v45 = vmulq_f32(v21, v21);
    v46 = vadd_f32(vpadd_f32(*v45.i8, *v45.i8), *&vextq_s8(v45, v45, 8uLL)).f32[0];
    if (v46 < 0.000001)
    {
      *v15 = v96;
      v48 = 6;
      goto LABEL_29;
    }

    if ((i - v46) <= (i * 0.00000011921))
    {
      v48 = 12;
      i = v46;
      goto LABEL_29;
    }

    *(a1 + 16) = v96;
    v47 = *(a1 + 92);
    *(a1 + 92) = v47 + 1;
    if (v47 > 1000)
    {
      v49 = 0;
      goto LABEL_34;
    }

    if (**(a1 + 40) == 4)
    {
      v49 = 0;
      *(a1 + 96) = 13;
      goto LABEL_34;
    }
  }

  if ((i - v94) <= 0.0)
  {
    v48 = 2;
  }

  else
  {
    v48 = 11;
  }

LABEL_29:
  *(a1 + 96) = v48;
  btVoronoiSimplexSolver::compute_points(*(a1 + 40), &v107, &v106);
  v50 = *(a1 + 16);
  v108 = v50;
  v51 = vmulq_f32(v50, v50);
  v52 = vadd_f32(vpadd_f32(*v51.i8, *v51.i8), *&vextq_s8(v51, v51, 8uLL)).f32[0];
  if (v52 < 0.0001)
  {
    *(a1 + 96) = 5;
  }

  if (v52 > 1.4211e-14)
  {
    v53 = 1.0 / sqrtf(v52);
    v54 = sqrtf(i);
    v55 = vmulq_n_f32(v50, v83 / v54);
    v55.i32[3] = 0;
    v107 = vsubq_f32(v107, v55);
    v108 = vmulq_n_f32(v50, v53);
    v56 = vmulq_n_f32(v50, v84 / v54);
    v56.i32[3] = 0;
    v106 = vaddq_f32(v106, v56);
    v57 = (1.0 / v53) - v19;
    v49 = 1;
    *(a1 + 88) = 1;
    goto LABEL_35;
  }

  v49 = 0;
  *(a1 + 88) = 2;
LABEL_34:
  v57 = 0.0;
LABEL_35:
  LODWORD(v58) = *(a1 + 100);
  if (v58)
  {
    v58 = *(a1 + 32);
    if (v58)
    {
      LODWORD(v58) = *(a1 + 96);
      if (v58)
      {
        LODWORD(v58) = (v19 + v57) < 0.01;
      }
    }
  }

  if ((!v49 || v58) && (v59 = *(a1 + 32)) != 0)
  {
    ++gNumDeepPenetrationChecks;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if ((*(*v59 + 16))(v59, *(a1 + 40), *(a1 + 48), *(a1 + 56), v104, v102, a1 + 16, &v101, &v100, a4))
    {
      v60 = vsubq_f32(v100, v101);
      v60.i32[3] = 0;
      v61 = vmulq_f32(v60, v60);
      v62 = vadd_f32(vpadd_f32(*v61.i8, *v61.i8), *&vextq_s8(v61, v61, 8uLL)).f32[0];
      if (v62 <= 1.4211e-14)
      {
        v60 = *v15;
        v63 = vmulq_f32(v60, v60);
        LODWORD(v62) = vadd_f32(vpadd_f32(*v63.i8, *v63.i8), *&vextq_s8(v63, v63, 8uLL)).u32[0];
      }

      if (v62 <= 1.4211e-14)
      {
        v68 = 9;
        goto LABEL_60;
      }

      v64 = vsubq_f32(v101, v100);
      v64.i32[3] = 0;
      v65 = vmulq_f32(v64, v64);
      v66 = -sqrtf(vadd_f32(*&vextq_s8(v65, v65, 8uLL), vpadd_f32(*v65.i8, *v65.i8)).f32[0]);
      if (v57 <= v66)
      {
        v67 = v49;
      }

      else
      {
        v67 = 0;
      }

      if (v67)
      {
        v68 = 8;
LABEL_60:
        *(a1 + 88) = v68;
LABEL_61:
        if ((v49 & 1) == 0)
        {
          return;
        }

        goto LABEL_65;
      }

      v106 = v100;
      v107 = v101;
      v108 = vmulq_n_f32(v60, 1.0 / sqrtf(v62));
      *(a1 + 88) = 3;
      v57 = v66;
    }

    else
    {
      v69 = *v15;
      v70 = vmulq_f32(v69, v69);
      v71 = vadd_f32(vpadd_f32(*v70.i8, *v70.i8), *&vextq_s8(v70, v70, 8uLL)).f32[0];
      if (v71 <= 0.0)
      {
        goto LABEL_61;
      }

      v72 = vsubq_f32(v101, v100);
      v72.i32[3] = 0;
      v73 = vmulq_f32(v72, v72);
      v74 = sqrtf(vadd_f32(vpadd_f32(*v73.i8, *v73.i8), *&vextq_s8(v73, v73, 8uLL)).f32[0]) - v19;
      if (v74 >= v57)
      {
        v75 = v49;
      }

      else
      {
        v75 = 0;
      }

      if (v75)
      {
        *(a1 + 88) = 5;
      }

      else
      {
        v76 = vmulq_n_f32(v69, v83);
        v76.i32[3] = 0;
        v77 = vmulq_n_f32(v69, v84);
        v77.i32[3] = 0;
        v106 = vaddq_f32(v100, v77);
        v107 = vsubq_f32(v101, v76);
        v108 = vmulq_n_f32(v69, 1.0 / sqrtf(v71));
        *(a1 + 88) = 6;
        v57 = v74;
      }
    }
  }

  else if (!v49)
  {
    return;
  }

LABEL_65:
  if (v57 < 0.0 || (v57 * v57) < a2[8].f32[0])
  {
    if (*(a1 + 104))
    {
      (*(**(a1 + 48) + 16))(*(a1 + 48), v104, &v101, &v100);
      v78.i64[0] = 0x3F0000003F000000;
      v78.i64[1] = 0x3F0000003F000000;
      v95 = vmulq_f32(vaddq_f32(v100, v101), v78);
      (*(**(a1 + 56) + 16))(*(a1 + 56), v102, &v101, &v100);
      v79.i64[0] = 0x3F0000003F000000;
      v79.i64[1] = 0x3F0000003F000000;
      v80 = vsubq_f32(v95, vmulq_f32(vaddq_f32(v101, v100), v79));
      v80.i32[3] = 0;
      v81 = v108;
      v82 = vmulq_f32(v108, v80);
      if (vadd_f32(vpadd_f32(*v82.i8, *v82.i8), *&vextq_s8(v82, v82, 8uLL)).f32[0] < 0.0)
      {
        v81 = vnegq_f32(v108);
        v108 = v81;
      }
    }

    else
    {
      v81 = v108;
    }

    *(a1 + 16) = v81;
    *(a1 + 84) = v57;
    v101 = vaddq_f32(v106, v85);
    (*(*a3 + 32))(a3, &v108, &v101, v57);
  }
}

uint64_t btMinkowskiPenetrationDepthSolver::calcPenDepth(btMinkowskiPenetrationDepthSolver *this, btVoronoiSimplexSolver *a2, const btConvexShape *a3, const btConvexShape *a4, const btTransform *a5, const btTransform *a6, btVector3 *a7, btVector3 *a8, btVector3 *a9, btIDebugDraw *a10)
{
  MEMORY[0x28223BE20](this);
  v100 = v13;
  v101 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v11;
  v20 = v19;
  v102 = v21;
  v118 = *MEMORY[0x277D85DE8];
  v103 = (v19[2] - 17) <= 1 && (v11[2] - 17) < 2;
  for (i = 0; i != 84; i += 2)
  {
    PenetrationDirections = btMinkowskiPenetrationDepthSolver::getPenetrationDirections(PenetrationDirections);
    v23 = *&_MergedGlobals_3[i + 2];
    v24 = vnegq_f32(v23);
    v25 = *v17;
    v26 = v17[1];
    v25.i32[3] = 0;
    v26.i32[3] = 0;
    v27 = v17[2];
    v27.i32[3] = 0;
    *&v115[i * 8] = vaddq_f32(vaddq_f32(vmulq_n_f32(v25, v24.f32[0]), vmulq_lane_f32(v26, *v24.f32, 1)), vmulq_laneq_f32(v27, v24, 2));
    v28 = *v15;
    v29 = v15[1];
    v28.i32[3] = 0;
    v29.i32[3] = 0;
    v30 = v15[2];
    v30.i32[3] = 0;
    *&v114[i * 8] = vaddq_f32(vaddq_f32(vmulq_n_f32(v28, v23.f32[0]), vmulq_lane_f32(v29, *v23.f32, 1)), vmulq_laneq_f32(v30, v23, 2));
  }

  v31 = (*(*v20 + 168))(v20);
  if (v31 < 1)
  {
    v46 = 42;
  }

  else
  {
    v32 = 0;
    v33 = v31;
    do
    {
      v34 = (*(*v20 + 176))(v20, v32, v117);
      v35 = vmulq_f32(*v17, v117[0]);
      v36 = vmulq_f32(v117[0], v17[1]);
      v37 = vmulq_f32(v117[0], v17[2]);
      v37.i32[3] = 0;
      *v35.i8 = vadd_f32(vpadd_f32(*v35.i8, *v36.i8), vzip1_s32(*&vextq_s8(v35, v35, 8uLL), *&vextq_s8(v36, v36, 8uLL)));
      v35.u64[1] = vpadd_f32(vpadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL)), 0);
      v117[0] = v35;
      btMinkowskiPenetrationDepthSolver::getPenetrationDirections(v34);
      v38 = v117[0];
      *&_MergedGlobals_3[2 * v32 + 86] = v117[0];
      v39 = vnegq_f32(v38);
      v40 = *v17;
      v41 = v17[1];
      v40.i32[3] = 0;
      v41.i32[3] = 0;
      v42 = v17[2];
      v42.i32[3] = 0;
      *&v115[16 * v32 + 672] = vaddq_f32(vaddq_f32(vmulq_n_f32(v40, v39.f32[0]), vmulq_lane_f32(v41, *v39.f32, 1)), vmulq_laneq_f32(v42, v39, 2));
      v43 = *v15;
      v44 = v15[1];
      v43.i32[3] = 0;
      v44.i32[3] = 0;
      v45 = v15[2];
      v45.i32[3] = 0;
      *&v114[16 * v32++ + 672] = vaddq_f32(vaddq_f32(vmulq_n_f32(v43, v38.f32[0]), vmulq_lane_f32(v44, *v38.f32, 1)), vmulq_laneq_f32(v45, v38, 2));
    }

    while (v33 != v32);
    v46 = (v32 + 42);
  }

  v47 = (*(*v18 + 168))(v18);
  if (v47 >= 1)
  {
    v48 = v47;
    v49 = 0;
    v46 = v46;
    do
    {
      v50 = (*(*v18 + 176))(v18, v49, v117);
      v51 = vmulq_f32(*v15, v117[0]);
      v52 = vmulq_f32(v117[0], v15[1]);
      v53 = vmulq_f32(v117[0], v15[2]);
      v53.i32[3] = 0;
      *v51.i8 = vadd_f32(vpadd_f32(*v51.i8, *v52.i8), vzip1_s32(*&vextq_s8(v51, v51, 8uLL), *&vextq_s8(v52, v52, 8uLL)));
      v51.u64[1] = vpadd_f32(vpadd_f32(*v53.i8, *&vextq_s8(v53, v53, 8uLL)), 0);
      v117[0] = v51;
      btMinkowskiPenetrationDepthSolver::getPenetrationDirections(v50);
      v54 = v117[0];
      *&_MergedGlobals_3[2 * v46 + 2] = v117[0];
      v55 = *v17;
      v56 = v17[1];
      v55.i32[3] = 0;
      v56.i32[3] = 0;
      v57 = vnegq_f32(v54);
      v58 = v17[2];
      v58.i32[3] = 0;
      *&v115[16 * v46] = vaddq_f32(vaddq_f32(vmulq_n_f32(v55, v57.f32[0]), vmulq_lane_f32(v56, *v57.f32, 1)), vmulq_laneq_f32(v58, v57, 2));
      v59 = *v15;
      v60 = v15[1];
      v59.i32[3] = 0;
      v60.i32[3] = 0;
      v61 = v15[2];
      v61.i32[3] = 0;
      *&v114[16 * v46++] = vaddq_f32(vaddq_f32(vmulq_n_f32(v59, v54.f32[0]), vmulq_lane_f32(v60, *v54.f32, 1)), vmulq_laneq_f32(v61, v54, 2));
      v49 = (v49 + 1);
    }

    while (v48 != v49);
  }

  (*(*v20 + 152))(v20, v115, v117, v46);
  v62 = (*(*v18 + 152))(v18, v114, v116, v46);
  if (v46 < 1)
  {
    v105 = 0u;
    v67 = 1.0e18;
  }

  else
  {
    v63 = v46;
    v105 = 0u;
    v64 = v116;
    v65 = v117;
    v66 = &xmmword_27CDDAE90;
    v67 = 1.0e18;
    do
    {
      v62 = btMinkowskiPenetrationDepthSolver::getPenetrationDirections(v62);
      v68 = *v66;
      v68.i32[2] = 0;
      if (v103)
      {
        v69 = -1;
      }

      else
      {
        v69 = 0;
      }

      v70 = vbslq_s8(vdupq_n_s32(v69), v68, *v66);
      v71 = vmulq_f32(v70, v70);
      if (vadd_f32(vpadd_f32(*v71.i8, *v71.i8), *&vextq_s8(v71, v71, 8uLL)).f32[0] <= 0.01)
      {
        v87 = v105;
      }

      else
      {
        v72 = vmulq_f32(*v65, *v17);
        v73 = vmulq_f32(*v65, v17[1]);
        v74 = vmulq_f32(*v65, v17[2]);
        v74.i32[3] = 0;
        *v72.f32 = vadd_f32(vpadd_f32(*v72.f32, *v73.i8), vzip1_s32(*&vextq_s8(v72, v72, 8uLL), *&vextq_s8(v73, v73, 8uLL)));
        *&v72.u32[2] = vpadd_f32(vpadd_f32(*v74.i8, *&vextq_s8(v74, v74, 8uLL)), 0);
        v75 = vmulq_f32(*v64, *v15);
        v76 = vmulq_f32(*v64, v15[1]);
        v77 = vmulq_f32(*v64, v15[2]);
        v77.i32[3] = 0;
        *v75.f32 = vadd_f32(vpadd_f32(*v75.f32, *v76.i8), vzip1_s32(*&vextq_s8(v75, v75, 8uLL), *&vextq_s8(v76, v76, 8uLL)));
        *&v75.u32[2] = vpadd_f32(vpadd_f32(*v77.i8, *&vextq_s8(v77, v77, 8uLL)), 0);
        v78 = vaddq_f32(v72, v17[3]);
        v79 = vaddq_f32(v75, v15[3]);
        v80 = v78;
        v80.i32[2] = 0;
        v81 = v79;
        v81.i32[2] = 0;
        if (v103)
        {
          v82 = -1;
        }

        else
        {
          v82 = 0;
        }

        v83 = vdupq_n_s32(v82);
        v84 = vsubq_f32(vbslq_s8(v83, v81, v79), vbslq_s8(v83, v80, v78));
        v84.i32[3] = 0;
        v85 = vmulq_f32(v70, v84);
        v86 = vadd_f32(vpadd_f32(*v85.i8, *v85.i8), *&vextq_s8(v85, v85, 8uLL)).f32[0];
        v87 = v105;
        if (v86 < v67)
        {
          v87 = v70;
          v67 = v86;
        }
      }

      v105 = v87;
      ++v64;
      ++v65;
      ++v66;
      --v63;
    }

    while (v63);
  }

  btConvexShape::getMarginNonVirtual(v20);
  btConvexShape::getMarginNonVirtual(v18);
  if (v67 < 0.0)
  {
    return 0;
  }

  btConvexShape::getMarginNonVirtual(v20);
  v90 = v89;
  btConvexShape::getMarginNonVirtual(v18);
  v104 = v67 + ((v90 + v91) + 0.5);
  btGjkPairDetector::btGjkPairDetector(v112, v20, v18, v102, 0);
  v92 = vmulq_n_f32(v105, v104);
  v92.i32[3] = 0;
  v93 = v17[2];
  v94 = vaddq_f32(v17[3], v92);
  v95 = v17[1];
  v110[0] = *v17;
  v110[1] = v95;
  v110[2] = v93;
  v110[3] = v94;
  v96 = v15[1];
  v110[4] = *v15;
  v110[5] = v96;
  v97 = v15[3];
  v110[6] = v15[2];
  v110[7] = v97;
  v111 = 1566444395;
  v106 = &unk_282DCABC8;
  v109 = 0;
  v94.i64[0] = 0x8000000080000000;
  v94.i64[1] = 0x8000000080000000;
  v113 = veorq_s8(v105, v94);
  btGjkPairDetector::getClosestPoints(v112, v110, &v106, a10, 0);
  result = v109;
  if (v109 == 1)
  {
    v98 = v107;
    v99 = vsubq_f32(v107, vmulq_n_f32(v105, v104 - v108));
    v99.i32[3] = 0;
    *v100 = v99;
    *a9 = v98;
    *v101 = v105;
  }

  return result;
}

__int128 *btMinkowskiPenetrationDepthSolver::getPenetrationDirections(btMinkowskiPenetrationDepthSolver *this)
{
  if ((atomic_load_explicit(_MergedGlobals_3, memory_order_acquire) & 1) == 0)
  {
    btMinkowskiPenetrationDepthSolver::getPenetrationDirections();
  }

  return &xmmword_27CDDAE90;
}

uint64_t btMinkowskiPenetrationDepthSolver::calcPenDepth(btVoronoiSimplexSolver &,btConvexShape const*,btConvexShape const*,btTransform const&,btTransform const&,btVector3 &,btVector3 &,btVector3 &,btIDebugDraw *)::btIntermediateResult::addContactPoint(uint64_t result, _OWORD *a2, _OWORD *a3, float a4)
{
  *(result + 16) = *a2;
  *(result + 32) = *a3;
  *(result + 48) = a4;
  *(result + 52) = 1;
  return result;
}

void btMinkowskiPenetrationDepthSolver::getPenetrationDirections()
{
  if (__cxa_guard_acquire(_MergedGlobals_3))
  {
    xmmword_27CDDAE90 = xmmword_21C2A42C0;
    unk_27CDDAEA0 = xmmword_21C2A42D0;
    xmmword_27CDDAEB0 = xmmword_21C2A42E0;
    unk_27CDDAEC0 = xmmword_21C2A42F0;
    xmmword_27CDDAED0 = xmmword_21C2A4300;
    unk_27CDDAEE0 = xmmword_21C2A4310;
    xmmword_27CDDAEF0 = xmmword_21C2A4320;
    unk_27CDDAF00 = xmmword_21C2A4330;
    xmmword_27CDDAF10 = xmmword_21C2A4340;
    unk_27CDDAF20 = xmmword_21C2A4350;
    xmmword_27CDDAF30 = xmmword_21C2A4360;
    unk_27CDDAF40 = xmmword_21C2A4370;
    xmmword_27CDDAF50 = xmmword_21C2A4380;
    unk_27CDDAF60 = xmmword_21C2A4390;
    xmmword_27CDDAF70 = xmmword_21C2A43A0;
    unk_27CDDAF80 = xmmword_21C2A43B0;
    xmmword_27CDDAF90 = xmmword_21C2A43C0;
    unk_27CDDAFA0 = xmmword_21C2A43D0;
    xmmword_27CDDAFB0 = xmmword_21C2A43E0;
    unk_27CDDAFC0 = xmmword_21C2A43F0;
    xmmword_27CDDAFD0 = xmmword_21C2A4400;
    unk_27CDDAFE0 = xmmword_21C2A4410;
    xmmword_27CDDAFF0 = xmmword_21C2A4420;
    unk_27CDDB000 = xmmword_21C2A4430;
    xmmword_27CDDB010 = xmmword_21C2A4440;
    unk_27CDDB020 = xmmword_21C27F9A0;
    xmmword_27CDDB030 = xmmword_21C2A4450;
    unk_27CDDB040 = xmmword_21C2A4460;
    xmmword_27CDDB050 = xmmword_21C2A4470;
    unk_27CDDB060 = xmmword_21C2A4480;
    xmmword_27CDDB070 = xmmword_21C2A4490;
    unk_27CDDB080 = xmmword_21C2A44A0;
    xmmword_27CDDB090 = xmmword_21C2A44B0;
    unk_27CDDB0A0 = xmmword_21C2A44C0;
    xmmword_27CDDB0B0 = xmmword_21C2A44D0;
    unk_27CDDB0C0 = xmmword_21C2A44E0;
    xmmword_27CDDB0D0 = xmmword_21C2A44F0;
    unk_27CDDB0E0 = xmmword_21C2A4500;
    xmmword_27CDDB0F0 = xmmword_21C2A4510;
    unk_27CDDB100 = xmmword_21C2A4520;
    xmmword_27CDDB110 = xmmword_21C2A4530;
    unk_27CDDB120 = xmmword_21C2A4540;

    __cxa_guard_release(_MergedGlobals_3);
  }
}

btPersistentManifold *btPersistentManifold::clearUserCache(btPersistentManifold *this, btManifoldPoint *a2)
{
  var13 = a2->var13;
  if (var13)
  {
    this = *&this[1].var0;
    if (this)
    {
      this = (*(*&this->var0 + 24))(this);
    }

    else
    {
      if (!gContactDestroyedCallback)
      {
        return this;
      }

      this = gContactDestroyedCallback(var13);
    }

    a2->var13 = 0;
  }

  return this;
}

uint64_t btPersistentManifold::sortCachedPoints(btPersistentManifold *this, const btManifoldPoint *a2)
{
  v2 = 0;
  var5 = a2->var5;
  p_var7 = &this->var1[0].var7;
  v5 = -1;
  do
  {
    v6 = *p_var7;
    p_var7 += 48;
    v7 = v6;
    if (v6 < var5)
    {
      var5 = v7;
      v5 = v2;
    }

    ++v2;
  }

  while (v2 != 4);
  var0 = a2->var0;
  if (gContactCalcArea3Points)
  {
    if (v5)
    {
      v9 = *(&this->var1[1].var0 + 8);
      v10 = vsubq_f32(var0, v9);
      v10.i32[3] = 0;
      v11 = *(&this->var1[3].var0 + 8);
      v12 = *(&this->var1[2].var0 + 8);
      v13 = vsubq_f32(v11, v12);
      v13.i32[3] = 0;
      v14 = vextq_s8(vextq_s8(v13, v13, 0xCuLL), v13, 8uLL);
      v15 = vsubq_f32(vmulq_f32(v14, v10), vmulq_f32(vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL), v13));
      v16 = vextq_s8(vextq_s8(v15, v15, 0xCuLL), v15, 8uLL);
      v16.i32[3] = 0;
      v17 = vmulq_f32(v16, v16);
      v17.i32[0] = vadd_f32(vpadd_f32(*v17.f32, *v17.f32), *&vextq_s8(v17, v17, 8uLL)).u32[0];
      if (v5 == 1)
      {
        v18 = vsubq_f32(var0, *(&this->var1[0].var0 + 8));
        v18.i32[3] = 0;
        v19 = vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL);
        v20.i32[0] = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v11 = *(&this->var1[3].var0 + 8);
      v12 = *(&this->var1[2].var0 + 8);
      v13 = vsubq_f32(v11, v12);
      v13.i32[3] = 0;
      v14 = vextq_s8(vextq_s8(v13, v13, 0xCuLL), v13, 8uLL);
      v17.i32[0] = 0;
    }

    v18 = vsubq_f32(var0, *(&this->var1[0].var0 + 8));
    v18.i32[3] = 0;
    v19 = vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL);
    v57 = vsubq_f32(vmulq_f32(v14, v18), vmulq_f32(v19, v13));
    v58 = vextq_s8(vextq_s8(v57, v57, 0xCuLL), v57, 8uLL);
    v58.i32[3] = 0;
    v20 = vmulq_f32(v58, v58);
    v20.i32[0] = vadd_f32(vpadd_f32(*v20.i8, *v20.i8), *&vextq_s8(v20, v20, 8uLL)).u32[0];
    v9 = *(&this->var1[1].var0 + 8);
    v59 = 0.0;
    if (v5 == 2)
    {
LABEL_19:
      v65 = vsubq_f32(v12, v9);
      v65.i32[3] = 0;
      v66 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v65, v65, 0xCuLL), v65, 8uLL), v18), vmulq_f32(v19, v65));
      v67 = vextq_s8(vextq_s8(v66, v66, 0xCuLL), v66, 8uLL);
      v67.i32[3] = 0;
      v68 = vmulq_f32(v67, v67);
      LODWORD(v64) = vadd_f32(vpadd_f32(*v68.i8, *v68.i8), *&vextq_s8(v68, v68, 8uLL)).u32[0];
      goto LABEL_39;
    }

LABEL_18:
    v60 = vsubq_f32(v11, v9);
    v60.i32[3] = 0;
    v61 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v60, v60, 0xCuLL), v60, 8uLL), v18), vmulq_f32(v19, v60));
    v62 = vextq_s8(vextq_s8(v61, v61, 0xCuLL), v61, 8uLL);
    v62.i32[3] = 0;
    v63 = vmulq_f32(v62, v62);
    LODWORD(v59) = vadd_f32(vpadd_f32(*v63.i8, *v63.i8), *&vextq_s8(v63, v63, 8uLL)).u32[0];
    v64 = 0.0;
    if (v5 == 3)
    {
      goto LABEL_39;
    }

    goto LABEL_19;
  }

  if (v5)
  {
    v21 = *(&this->var1[1].var0 + 8);
    v22 = vsubq_f32(var0, v21);
    v23 = v22;
    v23.i32[3] = 0;
    v24 = *(&this->var1[2].var0 + 8);
    v25 = *(&this->var1[3].var0 + 8);
    v26 = vsubq_f32(v24, v25);
    v27 = v26;
    v27.i32[3] = 0;
    v28 = vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL);
    v33 = vsubq_f32(var0, v24);
    v29 = vsubq_f32(v21, v25);
    v30 = v29;
    v30.i32[3] = 0;
    v31 = vextq_s8(vextq_s8(v30, v30, 0xCuLL), v30, 8uLL);
    v32 = vmulq_f32(v31, v33);
    v33.i32[3] = 0;
    v34 = vsubq_f32(var0, v25);
    v35 = v34;
    v35.i32[3] = 0;
    v36 = vsubq_f32(v21, v24);
    v37 = v36;
    v37.i32[3] = 0;
    v38 = vextq_s8(vextq_s8(v23, v23, 0xCuLL), v23, 8uLL);
    v39 = vsubq_f32(vmulq_f32(v28, v22), vmulq_f32(v38, v26));
    v40 = vextq_s8(vextq_s8(v39, v39, 0xCuLL), v39, 8uLL);
    v40.i32[3] = 0;
    v41 = vmulq_f32(vextq_s8(vextq_s8(v37, v37, 0xCuLL), v37, 8uLL), v34);
    v42 = vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL);
    v43 = vsubq_f32(v32, vmulq_f32(v42, v29));
    v44 = vextq_s8(vextq_s8(v43, v43, 0xCuLL), v43, 8uLL);
    v44.i32[3] = 0;
    v45 = vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL);
    v46 = vsubq_f32(v41, vmulq_f32(v45, v36));
    v47 = vextq_s8(vextq_s8(v46, v46, 0xCuLL), v46, 8uLL);
    v47.i32[3] = 0;
    v17 = vmulq_f32(v40, v40);
    *v17.f32 = vadd_f32(vpadd_f32(*v17.f32, *v17.f32), *&vextq_s8(v17, v17, 8uLL));
    v48 = vmulq_f32(v44, v44);
    v49 = vadd_f32(vpadd_f32(*v48.i8, *v48.i8), *&vextq_s8(v48, v48, 8uLL));
    v50 = vmulq_f32(v47, v47);
    LODWORD(v51) = vadd_f32(vpadd_f32(*v50.i8, *v50.i8), *&vextq_s8(v50, v50, 8uLL)).u32[0];
    if ((vcgt_f32(*v17.f32, v49).u8[0] & 1) == 0)
    {
      v17.f32[0] = v49.f32[0];
    }

    if (v17.f32[0] <= v51)
    {
      v17.f32[0] = v51;
    }

    if (v5 == 1)
    {
      v52 = *(&this->var1[0].var0 + 8);
      v53 = vsubq_f32(var0, v52);
      v53.i32[3] = 0;
      v54 = vsubq_f32(v52, v25);
      v54.i32[3] = 0;
      v55 = vextq_s8(vextq_s8(v53, v53, 0xCuLL), v53, 8uLL);
      v56 = vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL);
      v20.i32[0] = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v24 = *(&this->var1[2].var0 + 8);
    v25 = *(&this->var1[3].var0 + 8);
    v33 = vsubq_f32(var0, v24);
    v33.i32[3] = 0;
    v35 = vsubq_f32(var0, v25);
    v35.i32[3] = 0;
    v27 = vsubq_f32(v24, v25);
    v27.i32[3] = 0;
    v28 = vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL);
    v42 = vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL);
    v45 = vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL);
    v17.i32[0] = 0;
  }

  v52 = *(&this->var1[0].var0 + 8);
  v53 = vsubq_f32(var0, v52);
  v69 = vmulq_f32(v28, v53);
  v53.i32[3] = 0;
  v54 = vsubq_f32(v52, v25);
  v70 = vmulq_f32(v42, v54);
  v54.i32[3] = 0;
  v72 = vsubq_f32(v52, v24);
  v71 = vmulq_f32(v45, v72);
  v72.i32[3] = 0;
  v55 = vextq_s8(vextq_s8(v53, v53, 0xCuLL), v53, 8uLL);
  v73 = vsubq_f32(v69, vmulq_f32(v55, v27));
  v74 = vextq_s8(vextq_s8(v73, v73, 0xCuLL), v73, 8uLL);
  v74.i32[3] = 0;
  v56 = vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL);
  v75 = vsubq_f32(vmulq_f32(v56, v33), v70);
  v76 = vextq_s8(vextq_s8(v75, v75, 0xCuLL), v75, 8uLL);
  v76.i32[3] = 0;
  v77 = vextq_s8(vextq_s8(v72, v72, 0xCuLL), v72, 8uLL);
  v78 = vsubq_f32(vmulq_f32(v77, v35), v71);
  v79 = vextq_s8(vextq_s8(v78, v78, 0xCuLL), v78, 8uLL);
  v79.i32[3] = 0;
  v20 = vmulq_f32(v74, v74);
  *v20.i8 = vadd_f32(vpadd_f32(*v20.i8, *v20.i8), *&vextq_s8(v20, v20, 8uLL));
  v80 = vmulq_f32(v76, v76);
  v81 = vadd_f32(vpadd_f32(*v80.i8, *v80.i8), *&vextq_s8(v80, v80, 8uLL));
  v82 = vmulq_f32(v79, v79);
  LODWORD(v83) = vadd_f32(vpadd_f32(*v82.i8, *v82.i8), *&vextq_s8(v82, v82, 8uLL)).u32[0];
  if ((vcgt_f32(*v20.i8, v81).u8[0] & 1) == 0)
  {
    *v20.i32 = v81.f32[0];
  }

  if (*v20.i32 <= v83)
  {
    *v20.i32 = v83;
  }

  v59 = 0.0;
  if (v5 == 2)
  {
    goto LABEL_34;
  }

  v21 = *(&this->var1[1].var0 + 8);
  v23 = vsubq_f32(var0, v21);
  v23.i32[3] = 0;
  v30 = vsubq_f32(v21, v25);
  v30.i32[3] = 0;
  v31 = vextq_s8(vextq_s8(v30, v30, 0xCuLL), v30, 8uLL);
  v38 = vextq_s8(vextq_s8(v23, v23, 0xCuLL), v23, 8uLL);
LABEL_27:
  v84 = vsubq_f32(vmulq_f32(v31, v53), vmulq_f32(v55, v30));
  v85 = vextq_s8(vextq_s8(v84, v84, 0xCuLL), v84, 8uLL);
  v85.i32[3] = 0;
  v86 = vsubq_f32(vmulq_f32(v56, v23), vmulq_f32(v38, v54));
  v87 = vextq_s8(vextq_s8(v86, v86, 0xCuLL), v86, 8uLL);
  v87.i32[3] = 0;
  v88 = vsubq_f32(v52, v21);
  v89 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v88, v88, 0xCuLL), v88, 8uLL), v35), vmulq_f32(v45, v88));
  v90 = vextq_s8(vextq_s8(v89, v89, 0xCuLL), v89, 8uLL);
  v90.i32[3] = 0;
  v91 = vmulq_f32(v85, v85);
  v92 = vadd_f32(vpadd_f32(*v91.i8, *v91.i8), *&vextq_s8(v91, v91, 8uLL));
  v93 = vmulq_f32(v87, v87);
  v94 = vadd_f32(vpadd_f32(*v93.i8, *v93.i8), *&vextq_s8(v93, v93, 8uLL));
  v95 = vmulq_f32(v90, v90);
  LODWORD(v96) = vadd_f32(vpadd_f32(*v95.i8, *v95.i8), *&vextq_s8(v95, v95, 8uLL)).u32[0];
  if ((vcgt_f32(v92, v94).u8[0] & 1) == 0)
  {
    v92.f32[0] = v94.f32[0];
  }

  if (v92.f32[0] <= v96)
  {
    v59 = v96;
  }

  else
  {
    v59 = v92.f32[0];
  }

  v64 = 0.0;
  if (v5 != 3)
  {
    var0 = a2->var0;
    v52 = *(&this->var1[0].var0 + 8);
    v24 = *(&this->var1[2].var0 + 8);
    v53 = vsubq_f32(a2->var0, v52);
    v53.i32[3] = 0;
    v33 = vsubq_f32(a2->var0, v24);
    v33.i32[3] = 0;
    v72 = vsubq_f32(v52, v24);
    v72.i32[3] = 0;
    v55 = vextq_s8(vextq_s8(v53, v53, 0xCuLL), v53, 8uLL);
    v77 = vextq_s8(vextq_s8(v72, v72, 0xCuLL), v72, 8uLL);
    v42 = vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL);
LABEL_34:
    v97 = *(&this->var1[1].var0 + 8);
    v98 = vsubq_f32(var0, v97);
    v99 = v98;
    v99.i32[3] = 0;
    v100 = vsubq_f32(v97, v24);
    v101 = vmulq_f32(v55, v100);
    v100.i32[3] = 0;
    v102 = vsubq_f32(v52, v97);
    v103 = vmulq_f32(v42, v102);
    v102.i32[3] = 0;
    v104 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v100, v100, 0xCuLL), v100, 8uLL), v53), v101);
    v105 = vextq_s8(vextq_s8(v104, v104, 0xCuLL), v104, 8uLL);
    v105.i32[3] = 0;
    v106 = vsubq_f32(vmulq_f32(v77, v98), vmulq_f32(vextq_s8(vextq_s8(v99, v99, 0xCuLL), v99, 8uLL), v72));
    v107 = vextq_s8(vextq_s8(v106, v106, 0xCuLL), v106, 8uLL);
    v107.i32[3] = 0;
    v108 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v102, v102, 0xCuLL), v102, 8uLL), v33), v103);
    v109 = vextq_s8(vextq_s8(v108, v108, 0xCuLL), v108, 8uLL);
    v109.i32[3] = 0;
    v110 = vmulq_f32(v105, v105);
    v111 = vadd_f32(vpadd_f32(*v110.i8, *v110.i8), *&vextq_s8(v110, v110, 8uLL));
    v112 = vmulq_f32(v107, v107);
    v113 = vadd_f32(vpadd_f32(*v112.i8, *v112.i8), *&vextq_s8(v112, v112, 8uLL));
    v114 = vmulq_f32(v109, v109);
    LODWORD(v115) = vadd_f32(vpadd_f32(*v114.i8, *v114.i8), *&vextq_s8(v114, v114, 8uLL)).u32[0];
    if (vcgt_f32(v111, v113).u8[0])
    {
      v113.f32[0] = v111.f32[0];
    }

    if (v113.f32[0] <= v115)
    {
      v64 = v115;
    }

    else
    {
      v64 = v113.f32[0];
    }
  }

LABEL_39:
  v17.i32[1] = v20.i32[0];
  v17.i64[1] = __PAIR64__(LODWORD(v64), LODWORD(v59));
  v116 = vabsq_f32(v17);
  v117 = -1.0e18;
  if (v116.f32[0] > -1.0e18)
  {
    v118 = 0;
  }

  else
  {
    v118 = -1;
  }

  if (v116.f32[0] > -1.0e18)
  {
    v117 = v116.f32[0];
  }

  if (v116.f32[1] > v117)
  {
    v118 = 1;
    v117 = v116.f32[1];
  }

  if (v116.f32[2] > v117)
  {
    v118 = 2;
    v117 = v116.f32[2];
  }

  if (v116.f32[3] <= v117)
  {
    return v118;
  }

  else
  {
    return 3;
  }
}

btPersistentManifold *btPersistentManifold::getCacheEntry(btPersistentManifold *this, const btManifoldPoint *a2)
{
  var6_low = LODWORD(this->var6);
  if (var6_low < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  v4 = *&this->var7 * *&this->var7;
  v5 = &this->var1[0].var0.var0.var0[2];
  LODWORD(this) = -1;
  do
  {
    v6 = *v5;
    v5 += 48;
    v7 = vsubq_f32(v6, a2->var0);
    v7.i32[3] = 0;
    v8 = vmulq_f32(v7, v7);
    v9 = vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0];
    if (v9 >= v4)
    {
      this = this;
    }

    else
    {
      this = v3;
    }

    if (v9 < v4)
    {
      v4 = v9;
    }

    ++v3;
  }

  while (var6_low != v3);
  return this;
}

uint64_t btPersistentManifold::addManifoldPoint(btPersistentManifold *this, const btManifoldPoint *a2)
{
  var6 = this->var6;
  if (LODWORD(var6) == 4)
  {
    LODWORD(var6) = btPersistentManifold::sortCachedPoints(this, a2);
    btPersistentManifold::clearUserCache(this, &this->var1[SLODWORD(var6)].var0.var0.var0[2]);
  }

  else
  {
    LODWORD(this->var6) = LODWORD(var6) + 1;
  }

  v5 = LODWORD(var6) & ~(SLODWORD(var6) >> 31);
  v6 = this + 192 * v5;
  *(v6 + 1) = a2->var0;
  *(v6 + 2) = a2->var1;
  *(v6 + 3) = a2->var2;
  *(v6 + 4) = a2->var3;
  *(v6 + 5) = a2->var4;
  *(v6 + 6) = *&a2->var5;
  v7 = *&a2->var9;
  v8 = *&a2->var13;
  v9 = *&a2->var16;
  *(v6 + 156) = *&a2->var19;
  *(v6 + 8) = v8;
  *(v6 + 9) = v9;
  *(v6 + 7) = v7;
  *(v6 + 11) = *(&a2->var23 + 4);
  *(v6 + 12) = *(&a2->var24 + 4);
  v10 = *&this[1].var0;
  if (v10 && (*(v10 + 8) & 1) != 0)
  {
    (**v10)(v10, this, v5);
  }

  return v5;
}

btPersistentManifold *btPersistentManifold::refreshContactPoints(btPersistentManifold *this, const btTransform *a2, const btTransform *a3)
{
  var6_low = LODWORD(this->var6);
  if (var6_low >= 1)
  {
    v4 = this;
    v5 = var6_low + 1;
    v6 = (this + 192 * var6_low - 24);
    do
    {
      v7 = *&v6[-1].var1[3].var7;
      v8 = vmulq_f32(a2->var0.var0[0], v7);
      v9 = vmulq_f32(v7, a2->var0.var0[1]);
      v10 = vmulq_f32(v7, a2->var0.var0[2]);
      v10.i32[3] = 0;
      *v8.f32 = vadd_f32(vpadd_f32(*v8.f32, *v9.i8), vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v9, v9, 8uLL)));
      *&v8.u32[2] = vpadd_f32(vpadd_f32(*v10.i8, *&vextq_s8(v10, v10, 8uLL)), 0);
      v11 = vaddq_f32(v8, a2->var1);
      *&v6[-1].var1[3].var18 = v11;
      v12 = *&v6[-1].var1[3].var11;
      v13 = vmulq_f32(a3->var0.var0[0], v12);
      v14 = vmulq_f32(v12, a3->var0.var0[1]);
      v15 = vmulq_f32(v12, a3->var0.var0[2]);
      v15.i32[3] = 0;
      *v13.f32 = vadd_f32(vpadd_f32(*v13.f32, *v14.i8), vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v14, v14, 8uLL)));
      *&v13.u32[2] = vpadd_f32(vpadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)), 0);
      v16 = vaddq_f32(v13, a3->var1);
      *&v6[-1].var1[3].var14 = v16;
      v17 = vsubq_f32(v11, v16);
      v17.i32[3] = 0;
      v18 = vmulq_f32(*&v6[-1].var1[3].var22, v17);
      LODWORD(v6[-1].var1[3].var23.var0.var0[3]) = vadd_f32(vpadd_f32(*v18.i8, *v18.i8), *&vextq_s8(v18, v18, 8uLL)).u32[0];
      ++v6->var0;
      v6 = (v6 - 192);
      --v5;
    }

    while (v5 > 1);
    v19 = 192 * var6_low;
    do
    {
      v20 = (v4 + v19);
      v21 = *(v4 + v19 - 96);
      v22 = *&v4->var7;
      if (v21 <= v22 && (v23 = vsubq_f32(v20[-9], vsubq_f32(v20[-8], vmulq_n_f32(v20[-7], v21))), v23.i32[3] = 0, v24 = vmulq_f32(v23, v23), vadd_f32(vpadd_f32(*v24.i8, *v24.i8), *&vextq_s8(v24, v24, 8uLL)).f32[0] <= (v22 * v22)))
      {
        if (gContactProcessedCallback)
        {
          this = (gContactProcessedCallback)(&v20[-11], v4->var3, *&v4->var4);
        }
      }

      else
      {
        this = btPersistentManifold::removeContactPoint(v4, (var6_low - 1));
      }

      --var6_low;
      v19 -= 192;
    }

    while ((var6_low + 1) > 1);
  }

  return this;
}

btPersistentManifold *btPersistentManifold::removeContactPoint(btPersistentManifold *this, uint64_t a2)
{
  v2 = a2;
  v4 = *&this[1].var0;
  if (v4 && (v4[8] & 4) != 0)
  {
    (*(*v4 + 16))(v4, this, a2);
  }

  v5 = &this->var1[v2].var0.var0.var0[2];
  result = btPersistentManifold::clearUserCache(this, v5);
  v7 = SLODWORD(this->var6) - 1;
  if (v7 != v2)
  {
    v7 = &this->var1[v7].var0.var0.var0[2];
    v8 = *(v7 + 16);
    *v5 = *v7;
    *(v5 + 1) = v8;
    v9 = *(v7 + 48);
    *(v5 + 2) = *(v7 + 32);
    *(v5 + 3) = v9;
    *(v5 + 4) = *(v7 + 64);
    v10 = *(v7 + 96);
    v11 = *(v7 + 112);
    v12 = *(v7 + 128);
    *(v5 + 35) = *(v7 + 140);
    *(v5 + 7) = v11;
    *(v5 + 8) = v12;
    *(v5 + 6) = v10;
    *(v5 + 5) = *(v7 + 80);
    v13 = *(v7 + 176);
    *(v5 + 10) = *(v7 + 160);
    *(v5 + 11) = v13;
    *(v7 + 112) = 0;
    *(v7 + 120) = 0;
    *(v7 + 128) = 0;
    *(v7 + 124) = 0;
    *(v7 + 152) = 0;
    LODWORD(v7) = LODWORD(this->var6) - 1;
  }

  LODWORD(this->var6) = v7;
  return result;
}

void btPolyhedralContactClipping::clipFace(uint64_t a1, uint64_t a2, float32x4_t *a3, float a4)
{
  v4 = *(a1 + 4);
  if (v4 >= 2)
  {
    v9 = 0;
    v10 = *(*(a1 + 16) + 16 * v4 - 16);
    v11 = vmulq_f32(v10, *a3);
    v12 = vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).f32[0] + a4;
    while (1)
    {
      v13 = *(*(a1 + 16) + 16 * v9);
      v14 = vmulq_f32(v13, *a3);
      v15 = vadd_f32(vpadd_f32(*v14.i8, *v14.i8), *&vextq_s8(v14, v14, 8uLL)).f32[0] + a4;
      if (v12 < 0.0)
      {
        break;
      }

      if (v15 < 0.0)
      {
        v20 = *(a2 + 4);
        if (v20 == *(a2 + 8))
        {
          v21 = v20 ? 2 * v20 : 1;
          if (v20 < v21)
          {
            v38 = v10;
            v42 = *(*(a1 + 16) + 16 * v9);
            if (v21)
            {
              v22 = btAlignedAllocInternal(16 * v21, 16);
              v10 = v38;
              v13 = v42;
              v23 = v22;
              v20 = *(a2 + 4);
            }

            else
            {
              v23 = 0;
            }

            if (v20 >= 1)
            {
              v29 = 0;
              v30 = 16 * v20;
              do
              {
                *(v23 + v29) = *(*(a2 + 16) + v29);
                v29 += 16;
              }

              while (v30 != v29);
            }

            v31 = *(a2 + 16);
            if (v31 && *(a2 + 24) == 1)
            {
              btAlignedFreeInternal(v31);
              v10 = v38;
              v13 = v42;
            }

            *(a2 + 24) = 1;
            *(a2 + 16) = v23;
            *(a2 + 8) = v21;
            v20 = *(a2 + 4);
          }
        }

        *(*(a2 + 16) + 16 * v20) = vaddq_f32(v10, vmulq_n_f32(vsubq_f32(v13, v10), v12 / (v12 - v15)));
        v32 = *(a2 + 8);
        v16 = *(a2 + 4) + 1;
        *(a2 + 4) = v16;
        if (v16 == v32)
        {
          v17 = v16 ? 2 * v16 : 1;
          if (v16 < v17)
          {
            if (v17)
            {
              v44 = v13;
              v33 = btAlignedAllocInternal(16 * v17, 16);
              v13 = v44;
              v19 = v33;
              v16 = *(a2 + 4);
            }

            else
            {
              v19 = 0;
            }

            if (v16 >= 1)
            {
              v36 = 0;
              v37 = 16 * v16;
              do
              {
                *(v19 + v36) = *(*(a2 + 16) + v36);
                v36 += 16;
              }

              while (v37 != v36);
            }

            v28 = *(a2 + 16);
            if (v28)
            {
              v24 = v13;
              if (*(a2 + 24) == 1)
              {
                goto LABEL_63;
              }

              goto LABEL_65;
            }

LABEL_64:
            v24 = v13;
            goto LABEL_65;
          }
        }

LABEL_49:
        v24 = v13;
        goto LABEL_66;
      }

LABEL_67:
      ++v9;
      v12 = v15;
      v10 = v13;
      if (v9 == v4)
      {
        return;
      }
    }

    if (v15 < 0.0)
    {
      v16 = *(a2 + 4);
      if (v16 == *(a2 + 8))
      {
        v17 = v16 ? 2 * v16 : 1;
        if (v16 < v17)
        {
          if (v17)
          {
            v41 = *(*(a1 + 16) + 16 * v9);
            v18 = btAlignedAllocInternal(16 * v17, 16);
            v13 = v41;
            v19 = v18;
            v16 = *(a2 + 4);
          }

          else
          {
            v19 = 0;
          }

          if (v16 >= 1)
          {
            v26 = 0;
            v27 = 16 * v16;
            do
            {
              *(v19 + v26) = *(*(a2 + 16) + v26);
              v26 += 16;
            }

            while (v27 != v26);
          }

          v28 = *(a2 + 16);
          if (v28)
          {
            v24 = v13;
            if (*(a2 + 24))
            {
              goto LABEL_63;
            }

            goto LABEL_65;
          }

          goto LABEL_64;
        }
      }

      goto LABEL_49;
    }

    v24 = vaddq_f32(v10, vmulq_n_f32(vsubq_f32(v13, v10), v12 / (v12 - v15)));
    v16 = *(a2 + 4);
    if (v16 == *(a2 + 8))
    {
      v17 = v16 ? 2 * v16 : 1;
      if (v16 < v17)
      {
        if (v17)
        {
          v39 = v24;
          v43 = *(*(a1 + 16) + 16 * v9);
          v25 = btAlignedAllocInternal(16 * v17, 16);
          v24 = v39;
          v13 = v43;
          v19 = v25;
          v16 = *(a2 + 4);
        }

        else
        {
          v19 = 0;
        }

        if (v16 >= 1)
        {
          v34 = 0;
          v35 = 16 * v16;
          do
          {
            *(v19 + v34) = *(*(a2 + 16) + v34);
            v34 += 16;
          }

          while (v35 != v34);
        }

        v28 = *(a2 + 16);
        if (v28 && (*(a2 + 24) & 1) != 0)
        {
LABEL_63:
          v40 = v24;
          v45 = v13;
          btAlignedFreeInternal(v28);
          v24 = v40;
          v13 = v45;
        }

LABEL_65:
        *(a2 + 24) = 1;
        *(a2 + 16) = v19;
        *(a2 + 8) = v17;
        v16 = *(a2 + 4);
      }
    }

LABEL_66:
    *(*(a2 + 16) + 16 * v16) = v24;
    ++*(a2 + 4);
    goto LABEL_67;
  }
}

BOOL TestInternalObjects(const btTransform *a1, const btTransform *a2, float32x4_t *a3, float32x4_t *a4, const btConvexPolyhedron *a5, const btConvexPolyhedron *a6, float a7)
{
  _Q4 = *a4;
  v8 = vmulq_f32(*a3, *a4);
  LODWORD(v9) = vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).u32[0];
  _S3 = a1->var0.var0[2].var0.var0[0];
  __asm { FMLA            S2, S3, V4.S[2] }

  _S5 = a2->var0.var0[2].var0.var0[2];
  __asm { FMLA            S3, S5, V4.S[2] }

  v18.i64[0] = *a2->var0.var0[1].var0.var0;
  v18.i64[1] = *&a1->var0.var0[1].var0.var0[1];
  v19.i64[0] = *a2->var0.var0[0].var0.var0;
  v19.i64[1] = *&a1->var0.var0[0].var0.var0[1];
  v20.i64[0] = *a2->var0.var0[2].var0.var0;
  v20.i64[1] = *&a1->var0.var0[2].var0.var0[1];
  _Q18 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v18, *_Q4.f32, 1), v19, _Q4.f32[0]), v20, _Q4, 2);
  v22 = vmovn_s32(vcltzq_f32(_Q18));
  if (v22.i8[6])
  {
    _S7 = -*(a5 + 34);
  }

  else
  {
    _S7 = *(a5 + 34);
  }

  if (v22.i8[0])
  {
    v24 = -*(a6 + 32);
  }

  else
  {
    v24 = *(a6 + 32);
  }

  if (v22.i8[2])
  {
    v25 = -*(a6 + 33);
  }

  else
  {
    v25 = *(a6 + 33);
  }

  v26 = *(a6 + 34);
  if (_S3 < 0.0)
  {
    v26 = -v26;
  }

  __asm { FMLA            S2, S7, V18.S[3] }

  v28 = (vmuls_lane_f32(v25, *_Q18.f32, 1) + (v24 * _Q18.f32[0])) + (v26 * _S3);
  if (_S2 <= *(a5 + 36))
  {
    _S2 = *(a5 + 36);
  }

  if (v28 <= *(a6 + 36))
  {
    v28 = *(a6 + 36);
  }

  v29 = _S2 + v28;
  v30 = v9 + v29;
  v31 = v29 - v9;
  if (v30 < v31)
  {
    v31 = v30;
  }

  return v31 <= a7;
}

uint64_t btPolyhedralContactClipping::findSeparatingAxis(float32x4_t *a1, float32x4_t *a2, btTransform *a3, btTransform *a4, float32x4_t *a5, uint64_t a6)
{
  v10 = a1[7];
  v11 = vmulq_f32(a3->var0.var0[0], v10);
  v12 = vmulq_f32(v10, a3->var0.var0[1]);
  v13 = vmulq_f32(v10, a3->var0.var0[2]);
  v13.i32[3] = 0;
  *v11.f32 = vadd_f32(vpadd_f32(*v11.f32, *v12.i8), vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v12, v12, 8uLL)));
  *&v11.u32[2] = vpadd_f32(vpadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL)), 0);
  v14 = vaddq_f32(v11, a3->var1);
  v15 = a2[7];
  v16 = vmulq_f32(a4->var0.var0[0], v15);
  v17 = vmulq_f32(v15, a4->var0.var0[1]);
  var1 = a4->var1;
  v19 = vmulq_f32(v15, a4->var0.var0[2]);
  v20 = vextq_s8(v16, v16, 8uLL);
  v19.i32[3] = 0;
  ++gActualSATPairTests;
  *v16.f32 = vadd_f32(vpadd_f32(*v16.f32, *v17.i8), vzip1_s32(*v20.f32, *&vextq_s8(v17, v17, 8uLL)));
  *&v16.u32[2] = vpadd_f32(vpadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)), 0);
  v21 = vsubq_f32(v14, vaddq_f32(v16, var1));
  v21.var0.var0[3] = 0.0;
  v106 = v21;
  v111 = v21;
  v22 = a1[2].u32[3];
  if (v22 < 1)
  {
    v27 = 3.4028e38;
  }

  else
  {
    v23 = 0;
    v24 = gExpectedNbTests;
    v25 = gUseInternalObject;
    v26 = 48 * v22;
    v27 = 3.4028e38;
    do
    {
      v28 = a1[3].i64[1] + v23;
      *v21.var0.var0 = *(v28 + 32);
      v21.var0.var0[2] = *(v28 + 40);
      v29 = v21;
      v29.i32[3] = 0;
      v30 = vmulq_f32(v21, a3->var0.var0[2]);
      v31 = vmulq_f32(v29, a3->var0.var0[0]);
      v32 = vmulq_f32(v29, a3->var0.var0[1]);
      v30.i32[3] = 0;
      *v32.f32 = vadd_f32(vpadd_f32(*v31.i8, *v32.f32), vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)));
      v33 = vextq_s8(v30, v30, 8uLL);
      *&v32.u32[2] = vpadd_f32(vpadd_f32(*v30.i8, *v33.f32), 0);
      v34 = vmulq_f32(v32, v106);
      *v33.f32 = vpadd_f32(*v34.i8, *v34.i8);
      v35 = vextq_s8(v34, v34, 8uLL);
      *v35.f32 = vadd_f32(*v33.f32, *v35.f32);
      v33.i64[0] = 0;
      v110 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v33, v35), 0), vnegq_f32(v32), v32);
      gExpectedNbTests = ++v24;
      if ((v25 & 1) != 0 && !TestInternalObjects(a3, a4, &v111, &v110, a1, a2, v27))
      {
        v25 = 1;
      }

      else
      {
        ++gActualNbTests;
        v109 = 0.0;
        result = TestSepAxis(a1, a2, a3, a4, &v110, &v109, &v108, &v107);
        if (!result)
        {
          return result;
        }

        v37 = v109;
        if (v109 < v27)
        {
          *a5 = v110;
          v27 = v37;
        }

        v24 = gExpectedNbTests;
        v25 = gUseInternalObject;
      }

      v23 += 48;
    }

    while (v26 != v23);
  }

  v38 = a2[2].u32[3];
  if (v38 >= 1)
  {
    v39 = 0;
    v40 = gExpectedNbTests;
    v41 = gUseInternalObject;
    v42 = 48 * v38;
    do
    {
      v43 = a2[3].i64[1] + v39;
      *v21.var0.var0 = *(v43 + 32);
      v21.var0.var0[2] = *(v43 + 40);
      v44 = v21;
      v44.i32[3] = 0;
      v45 = vmulq_f32(v21, a4->var0.var0[2]);
      v46 = vmulq_f32(v44, a4->var0.var0[0]);
      v47 = vmulq_f32(v44, a4->var0.var0[1]);
      v45.i32[3] = 0;
      *v47.f32 = vadd_f32(vpadd_f32(*v46.i8, *v47.f32), vzip1_s32(*&vextq_s8(v46, v46, 8uLL), *&vextq_s8(v47, v47, 8uLL)));
      v48 = vextq_s8(v45, v45, 8uLL);
      *&v47.u32[2] = vpadd_f32(vpadd_f32(*v45.i8, *v48.f32), 0);
      v49 = vmulq_f32(v47, v106);
      *v48.f32 = vpadd_f32(*v49.i8, *v49.i8);
      v50 = vextq_s8(v49, v49, 8uLL);
      *v50.f32 = vadd_f32(*v48.f32, *v50.f32);
      v48.i64[0] = 0;
      v110 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v48, v50), 0), vnegq_f32(v47), v47);
      gExpectedNbTests = ++v40;
      if ((v41 & 1) != 0 && !TestInternalObjects(a3, a4, &v111, &v110, a1, a2, v27))
      {
        v41 = 1;
      }

      else
      {
        ++gActualNbTests;
        v109 = 0.0;
        result = TestSepAxis(a1, a2, a3, a4, &v110, &v109, &v108, &v107);
        if (!result)
        {
          return result;
        }

        v51 = v109;
        if (v109 < v27)
        {
          *a5 = v110;
          v27 = v51;
        }

        v40 = gExpectedNbTests;
        v41 = gUseInternalObject;
      }

      v39 += 48;
    }

    while (v42 != v39);
  }

  v52 = a1[4].i32[3];
  if (v52 >= 1)
  {
    v53 = 0;
    v54 = a2[4].i32[3];
    v100 = -1;
    v101 = -1;
    do
    {
      if (v54 >= 1)
      {
        v55 = 0;
        v56 = *(a1[5].i64[1] + 16 * v53);
        v57 = vmulq_f32(v56, a3->var0.var0[0]);
        v58 = vmulq_f32(v56, a3->var0.var0[1]);
        v59 = vmulq_f32(v56, a3->var0.var0[2]);
        v59.i32[3] = 0;
        *v57.i8 = vadd_f32(vpadd_f32(*v57.i8, *v58.i8), vzip1_s32(*&vextq_s8(v57, v57, 8uLL), *&vextq_s8(v58, v58, 8uLL)));
        *v59.i8 = vpadd_f32(vpadd_f32(*v59.i8, *&vextq_s8(v59, v59, 8uLL)), 0);
        *v58.i8 = vext_s8(*v57.i8, *v59.i8, 4uLL);
        v58.i64[1] = v57.i64[0];
        v103 = v58;
        v57.i64[1] = v59.i64[0];
        v105 = v57;
        do
        {
          v60 = *(a2[5].i64[1] + 16 * v55);
          v61 = vmulq_f32(v60, a4->var0.var0[0]);
          v62 = vmulq_f32(v60, a4->var0.var0[1]);
          v63 = vmulq_f32(v60, a4->var0.var0[2]);
          v20 = vextq_s8(v62, v62, 8uLL);
          v63.i32[3] = 0;
          *v64.f32 = vadd_f32(vpadd_f32(*v61.f32, *v62.i8), vzip1_s32(*&vextq_s8(v61, v61, 8uLL), *v20.f32));
          *v63.i8 = vpadd_f32(vpadd_f32(*v63.i8, *&vextq_s8(v63, v63, 8uLL)), 0);
          *v61.f32 = vext_s8(*v64.f32, *v63.i8, 4uLL);
          v61.i64[1] = v64.i64[0];
          v64.i64[1] = v63.i64[0];
          v65 = vsubq_f32(vmulq_f32(v105, v61), vmulq_f32(v103, v64));
          v66 = vextq_s8(vextq_s8(v65, v65, 0xCuLL), v65, 8uLL);
          v66.i32[3] = 0;
          if (fabsf(v66.f32[0]) > 0.000001 || fabsf(v66.f32[1]) > 0.000001 || fabsf(v66.f32[2]) > 0.000001)
          {
            v104 = v64;
            v67 = vmulq_f32(v66, v66);
            v68 = vmulq_n_f32(v66, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v67.i8, *v67.i8), *&vextq_s8(v67, v67, 8uLL)).f32[0]));
            v69 = vmulq_f32(v68, v106);
            *v64.f32 = vpadd_f32(*v69.i8, *v69.i8);
            v70 = vextq_s8(v69, v69, 8uLL);
            *v70.f32 = vadd_f32(*v64.f32, *v70.f32);
            v64.i64[0] = 0;
            v110 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v64, v70), 0), vnegq_f32(v68), v68);
            ++gExpectedNbTests;
            if (gUseInternalObject != 1 || TestInternalObjects(a3, a4, &v111, &v110, a1, a2, v27))
            {
              ++gActualNbTests;
              v109 = 0.0;
              result = TestSepAxis(a1, a2, a3, a4, &v110, &v109, &v108, &v107);
              if (!result)
              {
                return result;
              }

              v71 = v109;
              if (v109 < v27)
              {
                *a5 = v110;
                v98 = v104;
                v99 = v107;
                v96 = v108;
                v97 = v105;
                v100 = v55;
                v101 = v53;
                v27 = v71;
              }

              v54 = a2[4].i32[3];
            }
          }

          ++v55;
        }

        while (v55 < v54);
        v52 = a1[4].i32[3];
      }

      ++v53;
    }

    while (v53 < v52);
    if ((v101 & 0x80000000) == 0 && (v100 & 0x80000000) == 0)
    {
      v72 = vsubq_f32(v99, v96);
      v72.i32[3] = 0;
      v73 = vmulq_f32(v97, v98);
      v74 = vadd_f32(*&vextq_s8(v73, v73, 8uLL), vpadd_f32(*v73.i8, *v73.i8)).f32[0];
      v75 = vmulq_f32(v97, v72);
      LODWORD(v76) = vadd_f32(*&vextq_s8(v75, v75, 8uLL), vpadd_f32(*v75.i8, *v75.i8)).u32[0];
      v77 = vmulq_f32(v98, v72);
      v78 = 1.0 - (v74 * v74);
      v79 = -vadd_f32(*&vextq_s8(v77, v77, 8uLL), vpadd_f32(*v77.i8, *v77.i8)).f32[0];
      v80 = 0.0;
      if (v78 != 0.0)
      {
        v81 = (v76 + (v79 * v74)) / v78;
        v80 = -1.0e30;
        if (v81 >= -1.0e30)
        {
          v80 = v81;
          if (v81 > 1.0e30)
          {
            v80 = 1.0e30;
          }
        }
      }

      v82 = v79 + (v80 * v74);
      if (v82 >= -1.0e30)
      {
        if (v82 > 1.0e30)
        {
          v84 = v76 + (v74 * 1.0e30);
          v80 = -1.0e30;
          v82 = 1.0e30;
          if (v84 >= -1.0e30)
          {
            v82 = 1.0e30;
            v80 = v84;
            if (v84 > 1.0e30)
            {
              v80 = 1.0e30;
              v82 = 1.0e30;
            }
          }
        }
      }

      else
      {
        v82 = -1.0e30;
        v83 = v76 + (v74 * -1.0e30);
        if (v83 >= -1.0e30)
        {
          v80 = 1.0e30;
          if (v83 <= 1.0e30)
          {
            v80 = v83;
          }
        }

        else
        {
          v80 = -1.0e30;
        }
      }

      v85 = vmulq_n_f32(v98, v82);
      v85.i32[3] = 0;
      v86 = vsubq_f32(v72, vmulq_n_f32(v97, v80));
      v86.i32[3] = 0;
      v87 = vaddq_f32(v85, v86);
      v88 = vmulq_f32(v87, v87);
      v89 = vadd_f32(vpadd_f32(*v88.i8, *v88.i8), *&vextq_s8(v88, v88, 8uLL)).f32[0];
      if (v89 > 0.00000011921)
      {
        v90 = sqrtf(v89);
        v91 = vmulq_n_f32(v87, 1.0 / v90);
        v92 = vmulq_f32(v91, v106);
        *v20.f32 = vpadd_f32(*v92.i8, *v92.i8);
        v93 = vextq_s8(v92, v92, 8uLL);
        *v93.f32 = vadd_f32(*v93.f32, *v20.f32);
        v20.i64[0] = 0;
        v110 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v20, v93), 0), vnegq_f32(v91), v91);
        v108 = vaddq_f32(v99, v85);
        (*(*a6 + 32))(a6, &v110, &v108, -v90);
      }
    }
  }

  v94 = vmulq_f32(*a5, v106);
  if (vadd_f32(vpadd_f32(*v94.i8, *v94.i8), *&vextq_s8(v94, v94, 8uLL)).f32[0] < 0.0)
  {
    *a5 = vnegq_f32(*a5);
  }

  return 1;
}