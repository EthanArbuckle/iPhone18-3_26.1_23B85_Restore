void CA::shape_union(CA::Shape **this, CA::Shape **a2, const CA::Shape *a3)
{
  if (a2)
  {
    if (a2 == 1)
    {
      return;
    }

LABEL_5:
    v4 = *this;
    if (*this)
    {
      if (v4 == 1)
      {
        goto LABEL_7;
      }
    }

    else if (*(v4 + 1) == 6)
    {
LABEL_7:
      v5 = CA::Shape::ref(a2, a2);
LABEL_10:
      *this = v5;
      return;
    }

    v5 = CA::Shape::Union(*this, a2);
    CA::Shape::unref(v4);
    goto LABEL_10;
  }

  if (*(a2 + 1) != 6)
  {
    goto LABEL_5;
  }
}

uint64_t CA::Render::Updater::LayerShapes::union_bounds(__n128 *this, float64x2_t *a2, const CA::Bounds *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = this[1];
  v6 = a2[1];
  v7 = vclezq_f64(v5);
  v8 = vclezq_f64(v6);
  v9 = vcltzq_s64(vorrq_s8(vzip1q_s64(v8, v7), vzip2q_s64(v8, v7)));
  v9.n128_u64[0] = vmovn_s64(v9);
  if (v9.n128_u8[4])
  {
    if ((v9.n128_u8[0] & 1) == 0)
    {
      v5 = *a2;
LABEL_6:
      *this = v5;
      this[1] = v6;
    }
  }

  else if ((v9.n128_u8[0] & 1) == 0)
  {
    v9 = *this;
    v8 = *a2;
    v10 = vaddq_f64(*this, v5);
    v5 = vminnmq_f64(*this, *a2);
    v6 = vsubq_f64(vmaxnmq_f64(v10, vaddq_f64(*a2, v6)), v5);
    goto LABEL_6;
  }

  if (a3)
  {
    v11 = &this[4];
    if (this[4].n128_u64[0])
    {
      v12 = a2[1];
      v13 = vceqzq_f64(v12);
      if ((vorrq_s8(vdupq_laneq_s64(v13, 1), v13).u64[0] & 0x8000000000000000) != 0 || (v14 = vceqq_f64(v12, v12), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v14), 1), v14).u64[0] & 0x8000000000000000) != 0))
      {
        v18 = 0uLL;
      }

      else
      {
        v15 = vcvtmq_s64_f64(vmaxnmq_f64(*a2, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v18 = vuzp1q_s32(v15, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(*a2, v12), vdupq_n_s64(0x41C0000000000000uLL))), v15));
      }

      CA::shape_union(v11, &v18, a3);
    }
  }

  result = this[3].n128_i64[0];
  if (result && (*(result + 16) & 1) == 0)
  {
    v17 = a2->f64[0];
    v5.n128_u64[0] = *&a2->f64[1];
    v9.n128_f64[0] = a2[1].f64[0] + a2->f64[0];
    v8.n128_f64[0] = a2[1].f64[1] + v5.n128_f64[0];

    return CA::GenericRectTree<CA::Rect>::insert_node(result, (result + 8), v17, v5, v9, v8);
  }

  return result;
}

uint64_t CA::ShapeHandle::finish(CA::ShapeHandle *this, const int *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_26;
  }

  v3 = a2;
  v4 = *a2;
  if (*a2 == 0x7FFFFFFF)
  {
    goto LABEL_26;
  }

  v5 = *(a2 + 1);
  v6 = *(this + 1);
  if (*(*this + 8) >= (&v6[v5] - *this) >> 2)
  {
    goto LABEL_6;
  }

  if (CA::ShapeHandle::grow(this, v5))
  {
    v6 = *(this + 1);
LABEL_6:
    v7 = v6 + 2;
    *(this + 1) = v6 + 2;
    *v6 = v4;
    v6[1] = 0;
    v8 = v3[1] - 2;
    if (v3[1] != 2)
    {
      v9 = (v3 + 2);
      do
      {
        v10 = *v9++;
        *v7++ = v10;
        --v8;
      }

      while (v8);
      *(this + 1) = v7;
    }

    v11 = *(this + 2);
    v12 = *(this + 3);
    v13 = (v7 - v11) >> 2;
    *(v11 + 4) = v13;
    if (v12 && *(v12 + 4) == v13)
    {
      v14 = 2;
      while (v13 != v14)
      {
        v15 = *(v11 + 4 * v14);
        v16 = *(v12 + 4 * v14++);
        if (v15 != v16)
        {
          goto LABEL_15;
        }
      }

      *(this + 1) = v11;
    }

    else
    {
LABEL_15:
      *(this + 2) = v7;
      *(this + 3) = v11;
    }

    v3 += v3[1];
  }

  if (*v3 == 0x7FFFFFFF)
  {
    goto LABEL_26;
  }

  v17 = 0;
  v18 = v3;
  do
  {
    v19 = v18[1];
    v17 += v19;
    v18 += v19;
  }

  while (*v18 != 0x7FFFFFFF);
  v20 = *(this + 1);
  if (*(*this + 8) < (&v20[v17] - *this) >> 2)
  {
    if (!CA::ShapeHandle::grow(this, v17))
    {
      goto LABEL_26;
    }

    v20 = *(this + 1);
  }

  for (; v17; --v17)
  {
    v21 = *v3++;
    *v20++ = v21;
  }

  *(this + 1) = v20;
LABEL_26:
  v23 = *this;
  v22 = *(this + 1);
  v24 = &v22[-*this];
  if (v24 == 20)
  {
    if (v23 != (this + 32))
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v23);
    }

    v25 = *(this + 260);
    if (!v25)
    {
      return 1;
    }

LABEL_44:
    v26 = 0;
    *v25 = 0;
    v25[1] = 0;
    return v26;
  }

  if (v23[2] >= (v24 + 8) >> 2 || (v27 = CA::ShapeHandle::grow(this, 2), v22 = *(this + 1), v27))
  {
    *v22 = 0x7FFFFFFF;
    v22 += 4;
    *(this + 1) = v22;
  }

  v28 = *this;
  if (**this != 1)
  {
    if (v28 != (this + 32))
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v28);
    }

    v25 = *(this + 260);
    if (!v25)
    {
      return 0;
    }

    goto LABEL_44;
  }

  v29 = v22 - v28;
  v30 = (v22 - v28) >> 2;
  v28[1] = v30;
  v31 = *(this + 260);
  if (v31)
  {
    CA::Shape::get_bounds(v28, v31);
    v26 = 0;
    goto LABEL_59;
  }

  if (v30 != 12)
  {
    goto LABEL_52;
  }

  v39 = 0;
  v40 = 0;
  CA::Shape::get_bounds(v28, &v39);
  v26 = 1;
  if (v40 >= 1 && SHIDWORD(v40) >= 1)
  {
    if (!((HIDWORD(v40) | v40) >> 15) && v39 == __PAIR64__(SWORD2(v39), v39))
    {
      v26 = (v39 << 48) | (WORD2(v39) << 32) | (v40 << 17) | (4 * HIDWORD(v40)) | 1;
      goto LABEL_59;
    }

LABEL_52:
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v32 = malloc_type_zone_malloc(malloc_zone, v29 & 0x3FFFFFFFCLL, 0x100004052888210uLL);
    v26 = v32;
    if (v32)
    {
      if (v30)
      {
        v33 = *this;
        v34 = v30;
        v35 = v32;
        do
        {
          v36 = *v33++;
          *v35++ = v36;
          --v34;
        }

        while (v34);
      }

      v32[1] = v30;
      v32[2] = v30;
    }
  }

LABEL_59:
  v37 = *this;
  if (*this != (this + 32))
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v37);
  }

  return v26;
}

unint64_t CA::Shape::subtract(CA::Shape *this, const CA::Shape *a2, uint64_t a3, const int *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((this & 1) == 0)
  {
    if (*(this + 1) == 6)
    {
      goto LABEL_7;
    }

LABEL_5:
    if (a2)
    {
      if (a2 == 1)
      {
        goto LABEL_7;
      }
    }

    else if (*(a2 + 1) == 6)
    {
      goto LABEL_7;
    }

    v6 = xmmword_183E21520;
    v7 = 2;
    v5[0] = &v6;
    v5[1] = v8;
    v5[2] = v8;
    v5[3] = &v6 + 3;
    *&v8[2028] = 0;
    return CA::shape_subtract(v5, this, a2, a4);
  }

  if (this != 1)
  {
    goto LABEL_5;
  }

LABEL_7:

  return CA::Shape::ref(this, this);
}

uint64_t CA::BoundsImpl::Union(int32x2_t *a1, int32x2_t a2, int32x2_t a3)
{
  v3 = a1[1];
  v4 = vclez_s32(v3);
  v5 = vpmax_u32(v4, v4).u32[0];
  v6 = vclez_s32(a3);
  v7 = vpmax_u32(v6, v6).u32[0];
  if ((v5 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) != 0)
    {
      return 1;
    }

    v8 = vadd_s32(a2, a3);
    a2 = vmin_s32(*a1, a2);
    a3 = vsub_s32(vmax_s32(vadd_s32(*a1, v3), v8), a2);
LABEL_5:
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t CA::Shape::contains(uint64_t this, int32x2_t *a2)
{
  if (this)
  {
    if (this != 1)
    {
      v3.i32[0] = this >> 48;
      v3.i32[1] = (this >> 16) >> 16;
      v2.i32[0] = this >> 17;
      v4 = (this >> 2) & 0x7FFF;
LABEL_6:
      v2.i32[1] = v4;
      v5 = a2[1];
      v6 = vorr_s8(vcltz_s32(v5), vclez_s32(v2));
      if ((vpmax_u32(v6, v6).u32[0] & 0x80000000) == 0)
      {
        v7 = vand_s8(vcge_s32(vadd_s32(v3, v2), vadd_s32(*a2, v5)), vcge_s32(*a2, v3));
        return vpmin_u32(v7, v7).u32[0] >> 31;
      }

      return 0;
    }
  }

  else if (*(this + 4) == 12)
  {
    v3 = *(this + 28);
    v2.i32[0] = vsub_s32(vdup_lane_s32(v3, 1), v3).u32[0];
    v3.i32[1] = *(this + 20);
    v4 = *(this + 36) - v3.i32[1];
    goto LABEL_6;
  }

  v9 = a2[1].i32[0];
  if (!v9)
  {
    return 0;
  }

  v10 = a2[1].i32[1];
  if (!v10)
  {
    return 0;
  }

  if (this)
  {
    if (this == 1)
    {
      return 0;
    }
  }

  else if (*(this + 4) == 6)
  {
    return 0;
  }

  v8 = 0;
  v13 = *(this + 12);
  v11 = (this + 12);
  v12 = v13;
  if (v13 != 0x7FFFFFFF)
  {
    v14 = a2->i32[1];
    v15 = v14 + v10;
    if (v12 < v15)
    {
      v16 = a2->i32[0] + v9;
      while (v14 >= v12)
      {
        v17 = *(v11 + 1);
        v18 = &v11[4 * v17];
        v12 = *v18;
        if (v14 < *v18 && v17 >= 3)
        {
          v20 = v11 + 8;
          while (a2->i32[0] < *v20 || v16 > *(v20 + 1))
          {
            v20 += 8;
            if (v20 >= v18)
            {
              goto LABEL_28;
            }
          }

          v14 = *v18;
          if (v15 <= v12)
          {
            return 1;
          }
        }

LABEL_28:
        v8 = 0;
        if (v12 != 0x7FFFFFFF)
        {
          v11 = v18;
          if (v12 < v15)
          {
            continue;
          }
        }

        return v8;
      }

      return 0;
    }
  }

  return v8;
}

void CA::shape_intersect(CA::Shape **this, CA::Shape **a2, const CA::Bounds *a3)
{
  v4 = *this;
  if (*this)
  {
    if (v4 == 1)
    {
      return;
    }
  }

  else if (*(v4 + 1) == 6)
  {
    return;
  }

  v5 = *(a2 + 2);
  if (v5 <= *(a2 + 3))
  {
    v5 = *(a2 + 3);
  }

  if (v5 <= 1073741822)
  {
    v6 = CA::Shape::intersect(*this, a2);
    CA::Shape::unref(v4);
    *this = v6;
  }
}

unint64_t CA::Shape::Union(uint64_t this, uint64_t a2)
{
  v3 = this;
  v62 = *MEMORY[0x1E69E9840];
  if (this)
  {
    if (this == 1)
    {
LABEL_38:
      v19 = a2;
      goto LABEL_39;
    }
  }

  else if (*(this + 4) == 6)
  {
    goto LABEL_38;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      goto LABEL_33;
    }
  }

  else if (*(a2 + 4) == 6)
  {
    goto LABEL_33;
  }

  v49 = 0;
  v50 = 0;
  if ((this & 1) == 0)
  {
    if (*(this + 4) != 12)
    {
      goto LABEL_11;
    }

LABEL_15:
    if (a2)
    {
      if (a2 == 1)
      {
LABEL_17:
        if (this)
        {
          v8 = this >> 48;
          v7 = this << 16 >> 48;
          v9 = this >> 17;
          v10 = (this >> 2) & 0x7FFF;
        }

        else
        {
          LODWORD(v7) = *(this + 20);
          LODWORD(v8) = *(this + 28);
          v9 = *(this + 32) - v8;
          v10 = *(this + 36) - v7;
        }

        v49 = __PAIR64__(v7, v8);
        v50 = __PAIR64__(v10, v9);
        if (CA::Shape::contains(a2, &v49))
        {
          goto LABEL_38;
        }

        goto LABEL_44;
      }
    }

    else if (*(a2 + 4) != 12)
    {
      goto LABEL_17;
    }

    if (this)
    {
      v12 = this >> 48;
      v11 = this << 16 >> 48;
      v14 = ((this >> 2) & 0x7FFF) + v11;
      v13 = (this >> 48) + (this >> 17);
      if (a2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      LODWORD(v11) = *(this + 20);
      LODWORD(v12) = *(this + 28);
      v13 = *(this + 32);
      v14 = *(this + 36);
      if (a2)
      {
LABEL_22:
        v15 = a2 >> 48;
        v16 = a2 << 16 >> 48;
        v17 = ((a2 >> 2) & 0x7FFF) + v16;
        v18 = (a2 >> 48) + (a2 >> 17);
        goto LABEL_29;
      }
    }

    LODWORD(v16) = *(a2 + 20);
    LODWORD(v15) = *(a2 + 28);
    v18 = *(a2 + 32);
    v17 = *(a2 + 36);
LABEL_29:
    if (v12 <= v15 && v11 <= v16 && v13 >= v18 && v14 >= v17)
    {
      goto LABEL_33;
    }

    if (v12 >= v15 && v11 >= v16 && v13 <= v18 && v14 <= v17)
    {
      goto LABEL_38;
    }

    goto LABEL_44;
  }

  if (this != 1)
  {
    goto LABEL_15;
  }

LABEL_11:
  if ((a2 & 1) == 0)
  {
    if (*(a2 + 4) == 12)
    {
      v4 = *(a2 + 20);
      v5 = *(a2 + 32);
      LODWORD(v49) = *(a2 + 28);
      HIDWORD(v49) = v4;
      LODWORD(v50) = v5 - v49;
      v6 = *(a2 + 36) - v4;
      goto LABEL_25;
    }

LABEL_44:
    v55 = xmmword_183E21520;
    v56 = 2;
    v21 = v57;
    v51 = &v55;
    v52 = v57;
    v53 = v57;
    v54 = &v55 + 12;
    *&v57[507] = 0;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v22 = (a2 + 12);
    if (v3)
    {
      v59 = xmmword_183E21530;
      LODWORD(v60) = 2;
      DWORD1(v60) = (v3 >> 16) >> 16;
      DWORD2(v60) = 4;
      HIDWORD(v60) = v3 >> 48;
      LODWORD(v61) = HIDWORD(v60) + (v3 >> 17);
      DWORD1(v61) = ((v3 >> 2) & 0x7FFF) + DWORD1(v60);
      *(&v61 + 1) = 0x7FFFFFFF00000002;
      v3 = &v59;
    }

    v23 = (v3 + 12);
    v58 = 0uLL;
    memset(&v57[509], 0, 32);
    if (a2)
    {
      v22 = &v57[512];
      *&v57[512] = 0x280000000;
      v57[510] = 12;
      v57[514] = (a2 >> 16) >> 16;
      v57[515] = 4;
      v57[516] = a2 >> 48;
      LODWORD(v58) = v57[516] + (a2 >> 17);
      DWORD1(v58) = ((a2 >> 2) & 0x7FFF) + v57[514];
      *(&v58 + 1) = 0x7FFFFFFF00000002;
    }

    v24 = *v23;
    if (*v23 == 0x7FFFFFFF)
    {
      v25 = v22;
      return CA::ShapeHandle::finish(&v51, v25);
    }

    v26 = v22;
    v25 = v23;
    while (1)
    {
      v27 = *v26;
      if (*v26 == 0x7FFFFFFF)
      {
        return CA::ShapeHandle::finish(&v51, v25);
      }

      if (v24 - v27 >= 1)
      {
        break;
      }

      v28 = v25[1];
      if (((v24 - v27) & 0x80000000) == 0)
      {
        v23 = v25;
        v25 += v28;
        goto LABEL_56;
      }

      LODWORD(v29) = v22[1];
      v23 = v25;
      v25 += v28;
      v30 = v26;
LABEL_57:
      v31 = v28 - 2;
      v32 = v28 - 2 + v29;
      if (*(v51 + 2) < (&v21[v32] - v51) >> 2)
      {
        if (!CA::ShapeHandle::grow(&v51, v32))
        {
          if (*v25 == 0x7FFFFFFF)
          {
LABEL_92:
            v25 = v30;
          }

          return CA::ShapeHandle::finish(&v51, v25);
        }

        v21 = v52;
      }

      v33 = (v21 + 2);
      v52 = v21 + 2;
      v34 = v29 - 2;
      *v21 = v24;
      v21[1] = 0;
      v35 = v23 + 2;
      v36 = v22 + 2;
      if (v31 && v29 != 2)
      {
        v37 = 0;
        while (1)
        {
          v38 = *v35;
          v39 = *v36;
          v40 = *v35 - *v36;
          if (*v35 > *v36)
          {
            break;
          }

          v41 = v37 ^ 1;
          ++v35;
          --v31;
          if ((v40 & 0x80000000) == 0)
          {
            goto LABEL_66;
          }

          v39 = v38;
          if (v37)
          {
LABEL_67:
            if (v41)
            {
              goto LABEL_69;
            }
          }

LABEL_68:
          *v33 = v39;
          v33 += 4;
          v52 = v33;
LABEL_69:
          if (v31)
          {
            v37 = v41;
            if (v34)
            {
              continue;
            }
          }

          goto LABEL_74;
        }

        v41 = v37;
LABEL_66:
        v41 ^= 2u;
        ++v36;
        --v34;
        if (v37)
        {
          goto LABEL_67;
        }

        goto LABEL_68;
      }

LABEL_74:
      if (v31)
      {
        v34 = v31;
      }

      if (v34)
      {
        if (!v31)
        {
          v35 = v36;
        }

        do
        {
          v42 = *v35++;
          *v33 = v42;
          v33 += 4;
          --v34;
        }

        while (v34);
        v52 = v33;
      }

      v43 = v53;
      v44 = v54;
      v45 = (v33 - v53) >> 2;
      *(v53 + 1) = v45;
      if (v44 && *(v44 + 1) == v45)
      {
        v46 = 2;
        while (v45 != v46)
        {
          v47 = *&v43[4 * v46];
          v48 = *&v44[4 * v46++];
          if (v47 != v48)
          {
            goto LABEL_86;
          }
        }

        v52 = v43;
        v33 = v43;
      }

      else
      {
LABEL_86:
        v53 = v33;
        v54 = v43;
      }

      v24 = *v25;
      v21 = v33;
      v26 = v30;
      if (*v25 == 0x7FFFFFFF)
      {
        goto LABEL_92;
      }
    }

    LODWORD(v28) = v23[1];
LABEL_56:
    v29 = v26[1];
    v30 = &v26[v29];
    v22 = v26;
    v24 = *v26;
    goto LABEL_57;
  }

  if (a2 == 1)
  {
    goto LABEL_44;
  }

  LODWORD(v49) = a2 >> 48;
  HIDWORD(v49) = (a2 >> 16) >> 16;
  LODWORD(v50) = a2 >> 17;
  v6 = (a2 >> 2) & 0x7FFF;
LABEL_25:
  HIDWORD(v50) = v6;
  if (!CA::Shape::contains(this, &v49))
  {
    goto LABEL_44;
  }

LABEL_33:
  v19 = v3;
LABEL_39:

  return CA::Shape::ref(v19, a2);
}

void CA::shape_subtract(CA::Shape **this, CA::Shape **a2, const CA::Shape *a3, const int *a4)
{
  v5 = *this;
  if (*this)
  {
    if (v5 == 1)
    {
      return;
    }
  }

  else if (*(v5 + 1) == 6)
  {
    return;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      return;
    }

    goto LABEL_9;
  }

  if (*(a2 + 1) != 6)
  {
LABEL_9:
    v6 = CA::Shape::subtract(*this, a2, a3, a4);
    CA::Shape::unref(v5);
    *this = v6;
  }
}

void CA::Render::Update::add_visible_shape(CA::Shape **this, CA::Shape **a2, const CA::Shape *a3)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v4 = this + 71;
  CA::shape_union(this + 71, a2, a3);
  v5 = this[71];
  if ((v5 & 1) == 0 && *(v5 + 4) >= 257)
  {
    v8[0] = 0;
    v8[1] = 0;
    CA::Shape::get_bounds(v5, v8);
    v7 = CA::Shape::new_shape(v8, v6);
    CA::Shape::unref(*v4);
    *v4 = v7;
  }
}

uint64_t CA::Render::SDFElementLayer::get_bounds(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  *a3 = *(a2 + 72);
  a3[1] = *(a2 + 88);
  if (a4)
  {
    *a4 = 0u;
    a4[1] = 0u;
  }

  return 1;
}

void CA::OGL::GlassBackgroundFilter::DOD(CA::OGL::GlassBackgroundFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, float64x2_t *a4)
{
  v73 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 5);
  float_key = CA::Render::KeyValueArray::get_float_key(v7, 430, 1.0);
  v9 = a4 + 1;
  v65 = *a4;
  v67 = a4[1];
  v71 = xmmword_183E210C0;
  vec2_key = CA::Render::KeyValueArray::get_vec2_key(v7, 427, &v71);
  v62 = v10;
  v11 = CA::Render::KeyValueArray::get_float_key(v7, 429, 25.0);
  v12 = CA::Render::KeyValueArray::get_float_key(v7, 428, 1.0);
  v15 = CA::OGL::gaussian_expansion_factor(v13, v12);
  v16.f64[1] = v65.f64[1];
  v17 = v15 * v11;
  if (*v67.i64 <= *&v67.i64[1])
  {
    v18 = *&v67.i64[1];
  }

  else
  {
    v18 = *v67.i64;
  }

  v19 = v67;
  v20 = v65;
  if (v18 < 1.79769313e308)
  {
    v21 = *v67.i64 >= *&v67.i64[1] ? *&v67.i64[1] : *v67.i64;
    v22 = v21 <= 0.0;
    v19 = v67;
    v20 = v65;
    if (!v22)
    {
      v23 = vdupq_lane_s64(COERCE__INT64(-(v15 * v11)), 0);
      v20 = vaddq_f64(v65, v23);
      *v24.i64 = v17 + v17 + *v67.i64;
      v16.f64[0] = fmin(*v24.i64, v17 + v17 + *&v67.i64[1]);
      *&v24.i64[1] = v17 + v17 + *&v67.i64[1];
      v23.f64[0] = 0.0;
      v19 = vandq_s8(v24, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v23, v16)).i64[0], 0));
    }
  }

  v63 = v20;
  v64 = v19;
  v25.f64[0] = vec2_key;
  v25.f64[1] = v62;
  v70 = v25;
  glass_filter_bleed_blur_radius = CA::Render::get_glass_filter_bleed_blur_radius(v7, v14);
  v27 = CA::Render::KeyValueArray::get_float_key(v7, 356, 30.0);
  v28 = v27 + v27;
  if (glass_filter_bleed_blur_radius >= v28)
  {
    v28 = glass_filter_bleed_blur_radius;
  }

  if (v18 >= 1.79769313e308)
  {
    v29 = v67;
LABEL_18:
    v31 = v64;
    goto LABEL_19;
  }

  v29 = v67;
  if (*v67.i64 >= *&v67.i64[1])
  {
    v30 = *&v67.i64[1];
  }

  else
  {
    v30 = *v67.i64;
  }

  if (v30 <= 0.0)
  {
    goto LABEL_18;
  }

  v31 = v64;
  v65 = vaddq_f64(v65, vdupq_lane_s64(COERCE__INT64(v28 * -2.8), 0));
  *a4 = v65;
  v53 = v28 * 5.6;
  v54 = v53 + *v67.i64;
  v55 = v53 + *&v67.i64[1];
  a4[1].f64[0] = v54;
  a4[1].f64[1] = v55;
  if (v54 <= 0.0 || v55 <= 0.0)
  {
    v9->f64[0] = 0.0;
    a4[1].f64[1] = 0.0;
    v29 = 0uLL;
  }

  else
  {
    v29 = *v9;
  }

LABEL_19:
  v32 = vaddq_f64(v63, v70);
  v33 = vclezq_f64(v29);
  v34 = vclezq_f64(v31);
  v35 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v34, v33), vzip2q_s64(v34, v33))));
  if (v35.i8[4])
  {
    if (v35.i8[0])
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if ((v35.i8[0] & 1) == 0)
  {
    v36 = vaddq_f64(v32, v31);
    v32 = vminnmq_f64(v65, v32);
    v31 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v65, v29), v36), v32);
LABEL_24:
    *a4 = v32;
    a4[1] = v31;
  }

LABEL_25:
  v37 = *(a3 + 88);
  v71 = *(a3 + 72);
  v72 = v37;
  v38 = *(a3 + 17);
  if (v38)
  {
    v39 = *v38;
    if (*v38)
    {
      if (v39[12] == 3)
      {
        (*(*v39 + 184))(v39, a3, &v71, 0);
      }
    }
  }

  if (float_key == 0.0)
  {
    v66 = v72;
    v68 = v71;
    v40 = v17 - CA::Render::KeyValueArray::get_float_key(*(a2 + 5), 395, 100.0);
    if (v40 >= 0.0)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0.0;
    }

    if (v66.f64[0] <= v66.f64[1])
    {
      v43 = v66.f64[1];
    }

    else
    {
      v43 = v66.f64[0];
    }

    v44 = v43 < 1.79769313e308;
    v45 = v66;
    v46 = v68;
    if (v44)
    {
      v47 = v66.f64[0] >= v66.f64[1] ? v66.f64[1] : v66.f64[0];
      v22 = v47 <= 0.0;
      v45 = v66;
      v46 = v68;
      if (!v22)
      {
        *v45.f64 = v42;
        v45.f64[0] = -*v45.f64;
        v46 = vaddq_f64(v68, vdupq_lane_s64(*&v45.f64[0], 0));
        v45.f64[0] = v45.f64[0] * -2.0;
        *v48.i64 = v45.f64[0] + v66.f64[0];
        v45.f64[0] = v45.f64[0] + v66.f64[1];
        v41.f64[0] = fmin(*v48.i64, v45.f64[0]);
        v48.i64[1] = *&v45.f64[0];
        v45.f64[0] = 0.0;
        v45 = vandq_s8(v48, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v45, v41)).i64[0], 0));
      }
    }

    v49 = vaddq_f64(v46, v70);
    v50 = vclezq_f64(v66);
    v51 = vclezq_f64(v45);
    v52 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v51, v50), vzip2q_s64(v51, v50))));
    if (v52.i8[4])
    {
      if (v52.i8[0])
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v52.i8[0])
      {
        goto LABEL_52;
      }

      v56 = vaddq_f64(v49, v45);
      v49 = vminnmq_f64(v68, v49);
      v45 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v68, v66), v56), v49);
    }

    v71 = v49;
    v72 = v45;
  }

LABEL_52:
  v57 = vclezq_f64(*v9);
  if ((vorrq_s8(vdupq_laneq_s64(v57, 1), v57).u64[0] & 0x8000000000000000) == 0)
  {
    v58 = vclezq_f64(v72);
    if ((vorrq_s8(vdupq_laneq_s64(v58, 1), v58).u64[0] & 0x8000000000000000) != 0 || (v59 = vmaxnmq_f64(*a4, v71), v60 = vsubq_f64(vminnmq_f64(vaddq_f64(*a4, *v9), vaddq_f64(v71, v72)), v59), v61 = vclezq_f64(v60), (vorrq_s8(vdupq_laneq_s64(v61, 1), v61).u64[0] & 0x8000000000000000) != 0))
    {
      v9->f64[0] = 0.0;
      a4[1].f64[1] = 0.0;
    }

    else
    {
      *a4 = v59;
      a4[1] = v60;
    }
  }
}

uint64_t CA::Render::Update::fullfill_backdrops(uint64_t this, const CA::Shape *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = this;
    if (a2)
    {
      if (a2 == 1)
      {
        return this;
      }
    }

    else if (*(a2 + 1) == 6)
    {
      return this;
    }

    for (i = *(this + 544); i; i = *i)
    {
      v5 = *(i + 26);
      if ((v5 & 0x20000000) == 0)
      {
        v6 = *(*(i[1] + 256) + 80);
        *v14[0].i8 = v6;
        v7 = vclez_s32(*(&v6 + 8));
        if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) == 0)
        {
          v8 = *(v3 + 208);
          v9 = vclez_s32(v8);
          if ((vpmax_u32(v9, v9).u32[0] & 0x80000000) != 0 || (v10 = *(v3 + 200), v11 = vadd_s32(*&v6, *(&v6 + 8)), *&v6 = vmax_s32(*&v6, v10), v12 = vsub_s32(vmin_s32(v11, vadd_s32(v10, v8)), *&v6), v13 = vclez_s32(v12), (vpmax_u32(v13, v13).u32[0] & 0x80000000) != 0))
          {
            v14[1] = 0;
          }

          else
          {
            *(&v6 + 1) = v12;
            *v14[0].i8 = v6;
          }
        }

        this = CA::Shape::contains(a2, v14);
        if (this)
        {
          *(i + 26) = v5 | 0x20000000;
        }
      }
    }
  }

  return this;
}

void CA::Render::Update::add_opaque_shape(CA::Shape **this, CA::Shape **a2, const CA::Shape *a3)
{
  v4 = this + 70;
  CA::shape_union(this + 70, a2, a3);
  v5 = this[70];
  if ((v5 & 1) == 0 && *(v5 + 1) >= 257)
  {
    CA::Shape::unref(v5);
    *v4 = 1;
  }
}

void CA::Render::Updater::prepare_layer_mask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 56);
  v9 = *(v8 + 40);
  if ((v9 & 0x10000000000) == 0)
  {
    *(a4 + 88) = *(a3 + 88);
    *(a4 + 104) = *(a3 + 104);
    *(a4 + 120) = *(a3 + 120);
    goto LABEL_21;
  }

  v44 = 0u;
  v45 = 0u;
  v10 = *(v8 + 88);
  v54 = *(v8 + 72);
  v55 = v10;
  CA::Rect::apply_transform(v54.f64, a2 + 8);
  v11 = *(v8 + 136);
  v12 = 0.0;
  if (v11)
  {
    v12 = *(v11 + 232);
  }

  if ((v9 & 0xF0000) != 0)
  {
    if (v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = 0.0;
    if (v11)
    {
LABEL_7:
      if (*(v11 + 72))
      {
        CA::Render::Layer::max_corner_radii(v11);
        v12 = v43;
      }
    }
  }

  if ((v9 & 0x300000000) != 0)
  {
    v13 = v12 * 1.52866;
    v12 = v13;
  }

  if (v12 <= 0.0)
  {
    v14 = v54;
    v44 = v54;
    v45 = v55;
  }

  else
  {
    CA::Render::Updater::corner_clipped_layer_bounds(v53, v8);
    v44 = v53[0];
    v45 = v53[1];
    v14.n128_f64[0] = CA::Rect::apply_transform(v44.f64, a2 + 8);
    *(a2 + 72) |= 0x20C00000uLL;
  }

  v15 = *a2;
  if (*a2)
  {
    do
    {
      (*(*v15 + 32))(v15, &v44, &v54, v14);
      v15 = v15[1];
    }

    while (v15);
  }

  v16 = v55;
  *(a4 + 88) = v54;
  *(a4 + 104) = v16;
  v17 = vceqzq_f64(v45);
  if ((vorrq_s8(vdupq_laneq_s64(v17, 1), v17).u64[0] & 0x8000000000000000) != 0 || (v18 = vceqq_f64(v45, v45), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v18), 1), v18).u64[0] & 0x8000000000000000) != 0))
  {
    *(a4 + 120) = 0;
    *(a4 + 128) = 0;
  }

  else
  {
    v19 = vcvtpq_s64_f64(vmaxnmq_f64(v44, vdupq_n_s64(0xC1BFFFFFFF000000)));
    *(a4 + 120) = vuzp1q_s32(v19, vsubq_s64(vcvtmq_s64_f64(vminnmq_f64(vaddq_f64(v44, v45), vdupq_n_s64(0x41C0000000000000uLL))), v19));
  }

  CA::BoundsImpl::intersect(a4 + 88, *(a3 + 88), *(a3 + 104));
  CA::BoundsImpl::intersect((a4 + 120), *(a3 + 120), *(a3 + 128));
LABEL_21:
  v20 = *(*(a2 + 48) + 128);
  if (!v20)
  {
    return;
  }

  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v21 = (a4 + 104);
  v22 = *(a4 + 104);
  v50 = *(a4 + 88);
  v51 = v22;
  v23 = (a4 + 120);
  v52 = *(a4 + 120);
  v24 = *(a2 + 89);
  *(a2 + 89) = v24 | 0x40;
  if (CA::Render::Updater::prepare_layer(a1, a2, v20, &v44, a2 + 72))
  {
    *(a2 + 64) |= 8uLL;
  }

  *(a2 + 89) = *(a2 + 89) & 0xFFBF | v24 & 0x40;
  if ((*(*(a2 + 56) + 45) & 2) != 0)
  {
    goto LABEL_34;
  }

  v25 = vclezq_f64(*v21);
  if ((vorrq_s8(vdupq_laneq_s64(v25, 1), v25).u64[0] & 0x8000000000000000) == 0)
  {
    v26 = vclezq_f64(v45);
    if ((vorrq_s8(vdupq_laneq_s64(v26, 1), v26).u64[0] & 0x8000000000000000) != 0 || (v27 = *(a4 + 88), v28 = vmaxnmq_f64(v27, v44), v29 = vsubq_f64(vminnmq_f64(vaddq_f64(v27, *v21), vaddq_f64(v44, v45)), v28), v30 = vclezq_f64(v29), (vorrq_s8(vdupq_laneq_s64(v30, 1), v30).u64[0] & 0x8000000000000000) != 0))
    {
      v21->f64[0] = 0.0;
      *(a4 + 112) = 0;
    }

    else
    {
      *(a4 + 88) = v28;
      *(a4 + 104) = v29;
    }
  }

  v31 = *(v20 + 208);
  if (!v31)
  {
LABEL_34:
    *v23 = 0;
    *(a4 + 128) = 0;
    return;
  }

  if ((v31 & 1) == 0)
  {
    if (*(v31 + 4) == 12)
    {
      v33 = *(v31 + 28);
      v32.i32[0] = vsub_s32(vdup_lane_s32(v33, 1), v33).u32[0];
      v33.i32[1] = *(v31 + 20);
      v34 = *(v31 + 36) - v33.i32[1];
      goto LABEL_38;
    }

LABEL_42:
    v42 = CA::Shape::intersect(v31, (a4 + 120));
    CA::Shape::get_interior_bounds(v42, v23);
    CA::Shape::unref(v42);
    return;
  }

  if (v31 == 1)
  {
    goto LABEL_42;
  }

  v33.i32[0] = v31 >> 48;
  v33.i32[1] = (v31 >> 16) >> 16;
  v32.i32[0] = v31 >> 17;
  v34 = (v31 >> 2) & 0x7FFF;
LABEL_38:
  v35 = *(a4 + 128);
  v36 = vclez_s32(v35);
  if ((vpmax_u32(v36, v36).u32[0] & 0x80000000) == 0)
  {
    v32.i32[1] = v34;
    v37 = vclez_s32(v32);
    if ((vpmax_u32(v37, v37).u32[0] & 0x80000000) != 0 || (v38 = vadd_s32(v33, v32), *&v39 = vmax_s32(*v23, v33), v40 = vsub_s32(vmin_s32(vadd_s32(*v23, v35), v38), *&v39), v41 = vclez_s32(v40), (vpmax_u32(v41, v41).u32[0] & 0x80000000) != 0))
    {
      *(a4 + 128) = 0;
    }

    else
    {
      *(&v39 + 1) = v40;
      *v23 = v39;
    }
  }
}

double CA::Rect::apply_transform(double *a1, uint64_t a2)
{
  v3 = a1[2];
  result = a1[3];
  if (v3 <= result)
  {
    v4 = a1[3];
  }

  else
  {
    v4 = a1[2];
  }

  if (v4 >= 1.79769313e308)
  {
    return result;
  }

  v5 = *(a2 + 32);
  if ((v5 & 8) != 0)
  {
    v6 = a1[1];
    *a1 = *a1 * *(a2 + 16);
    a1[1] = v6 * *(a2 + 16);
    v3 = *(a2 + 16) * v3;
    a1[2] = v3;
    result = *(a2 + 16) * result;
    a1[3] = result;
    v5 = *(a2 + 32);
  }

  if ((v5 & 4) == 0)
  {
    v7 = result;
    result = v3;
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v8 = *a1;
  *a1 = -(result + a1[1]);
  a1[1] = v8;
  a1[2] = result;
  a1[3] = v3;
  v5 = *(a2 + 32);
  v7 = v3;
  if ((v5 & 2) != 0)
  {
LABEL_11:
    *a1 = -(result + *a1);
    v5 = *(a2 + 32);
  }

LABEL_12:
  v9 = a1[1];
  if (v5)
  {
    v9 = -(v7 + v9);
    a1[1] = v9;
  }

  *a1 = *a1 + *a2;
  result = v9 + *(a2 + 8);
  a1[1] = result;
  return result;
}

double CA::Rect::unapply_transform(double *a1, uint64_t a2)
{
  v3 = a1[2];
  result = a1[3];
  if (v3 <= result)
  {
    v4 = a1[3];
  }

  else
  {
    v4 = a1[2];
  }

  if (v4 < 1.79769313e308)
  {
    v5 = a1[1];
    v6 = *a1 - *a2;
    *a1 = v6;
    v7 = v5 - *(a2 + 8);
    a1[1] = v7;
    v8 = *(a2 + 32);
    if (v8)
    {
      v7 = -(v7 + result);
      a1[1] = v7;
      v8 = *(a2 + 32);
      if ((v8 & 2) == 0)
      {
LABEL_7:
        if ((v8 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_7;
    }

    v6 = -(v6 + v3);
    *a1 = v6;
    v8 = *(a2 + 32);
    if ((v8 & 4) == 0)
    {
LABEL_8:
      v9 = result;
      result = v3;
      v10 = v7;
      v7 = v6;
      if ((v8 & 8) == 0)
      {
        return result;
      }

LABEL_13:
      *a1 = v7 * *(a2 + 24);
      a1[1] = v10 * *(a2 + 24);
      a1[2] = result * *(a2 + 24);
      result = v9 * *(a2 + 24);
      a1[3] = result;
      return result;
    }

LABEL_12:
    v10 = -(v6 + v3);
    *a1 = v7;
    a1[1] = v10;
    a1[2] = result;
    a1[3] = v3;
    v9 = v3;
    if ((*(a2 + 32) & 8) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  return result;
}

void CA::Render::Updater::update_handle(CA::Render::Updater *this, int32x2_t *a2, CA::Shape **a3, CA::Render::Context *a4)
{
  if (a2[11].i32[0] != a4)
  {
    v4 = a4;
    v6 = a2[13];
    if (v6.i8[0])
    {
      a2[13] = (*&v6 & 0xFFFFFFFFFFFFFFFELL);
      CA::Render::Context::invalidate(a3, a2 + 15, a3);
      CA::Render::Update::invalidate_backdrops(this, &a2[15], 0, 0xFFFFFFFF);
      v6 = a2[13];
    }

    a2[11].i32[0] = v4;
    a2[13] = (*&v6 & 0xDBF83E000C3FFF83);
    a2[14] = v6;
    a2[15] = 0;
    a2[16] = 0;
  }
}

float64x2_t CA::Transform::concat(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 32) & 0xF) != 0)
  {
    CA::Transform::set(v13, a2);
    result.f64[0] = CA::Transform::concat(a1, v13, v3, v4);
  }

  else
  {
    result = *a2;
    if ((*(a1 + 144) & 0x10) != 0)
    {
      v6 = *(a1 + 16);
      v7 = *(a1 + 48);
      v8 = *(a1 + 80);
      v9 = *(a1 + 112);
      v10 = vmlaq_laneq_f64(*(a1 + 32), result, v7, 1);
      v11 = vmlaq_laneq_f64(*(a1 + 64), result, v8, 1);
      v12 = vmlaq_laneq_f64(*(a1 + 96), result, v9, 1);
      *a1 = vmlaq_laneq_f64(*a1, result, v6, 1);
      *(a1 + 16) = vmlaq_laneq_f64(v6, 0, v6, 1);
      *(a1 + 32) = v10;
      *(a1 + 48) = vmlaq_laneq_f64(v7, 0, v7, 1);
      *(a1 + 64) = v11;
      *(a1 + 80) = vmlaq_laneq_f64(v8, 0, v8, 1);
      *(a1 + 96) = v12;
      *(a1 + 112) = vmlaq_laneq_f64(v9, 0, v9, 1);
    }

    else
    {
      result = vaddq_f64(*(a1 + 96), result);
      *(a1 + 96) = result;
    }
  }

  return result;
}

uint64_t CA::BoundsImpl::intersect(int32x2_t *a1, int32x2_t a2, int32x2_t a3)
{
  v3 = a1[1];
  v4 = vclez_s32(v3);
  if ((vpmax_u32(v4, v4).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = vclez_s32(a3);
  if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0 || (v6 = vadd_s32(a2, a3), *&v7 = vmax_s32(*a1, a2), v8 = vsub_s32(vmin_s32(vadd_s32(*a1, v3), v6), *&v7), v9 = vclez_s32(v8), (vpmax_u32(v9, v9).u32[0] & 0x80000000) != 0))
  {
    v10 = 0;
    a1[1] = 0;
  }

  else
  {
    *(&v7 + 1) = v8;
    *a1->i8 = v7;
    return 1;
  }

  return v10;
}

uint64_t CA::Render::Context::context_by_id(CA::Render::Context *this)
{
  v1 = 0;
  if (this && CA::Render::Context::_context_table)
  {
    v2 = this;
    os_unfair_lock_lock(&CA::Render::Context::_context_lock);
    v3 = x_hash_table_lookup(CA::Render::Context::_context_table, v2, 0);
    v1 = v3;
    if (v3)
    {
      if ((*(v3 + 13) & 4) != 0)
      {
        v1 = 0;
      }

      else if (!atomic_fetch_add((v3 + 8), 1u))
      {
        v1 = 0;
        atomic_fetch_add((v3 + 8), 0xFFFFFFFF);
      }
    }

    os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
  }

  return v1;
}

void X::small_vector_base<unsigned int>::push_back(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = ((v4 - *a1) >> 2) + 1;
  if (*(a1 + 24) < v5)
  {
    X::small_vector_base<unsigned int>::grow(a1, v5);
    v4 = *(a1 + 8);
  }

  *v4 = *a2;
  *(a1 + 8) = v4 + 1;
}

__n128 CA::Transform::set(uint64_t a1, CA::Mat4Impl *this, int a3)
{
  if (a3 && CA::Mat4Impl::mat4_is_affine(this, this))
  {
    v5 = *this;
    v6 = *(this + 1);
    v7 = *(this + 4);
    v8 = *(this + 5);
    v9 = *(this + 12);
    v10 = *(this + 13);

    CA::Transform::set_affine(a1, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    v12 = *(this + 1);
    v13 = *(this + 2);
    v14 = *(this + 3);
    *a1 = *this;
    *(a1 + 16) = v12;
    *(a1 + 32) = v13;
    *(a1 + 48) = v14;
    v15 = *(this + 5);
    v16 = *(this + 6);
    v17 = *(this + 7);
    *(a1 + 64) = *(this + 4);
    *(a1 + 80) = v15;
    *(a1 + 96) = v16;
    *(a1 + 112) = v17;
    __asm { FMOV            V0.2D, #1.0 }

    *(a1 + 128) = result;
    *(a1 + 144) = *(a1 + 144) & 0xE0 | 0x10;
  }

  return result;
}

void CA::Transform::set_affine(CA::Transform *this, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a3 == 0.0 && a3 == a4)
  {
    CA::Transform::set_affine_rectilinear(this, a2, a5, a6, a7);
    return;
  }

  __asm { FMOV            V6.2D, #1.0 }

  *(this + 8) = _Q6;
  v12 = *(this + 144) & 0xE0;
  if (a2 == 0.0 && a2 == a5)
  {
    v15 = -a3;
    if (a3 >= 0.0)
    {
      v15 = a3;
    }

    v16 = -v15;
    if (v15 == a4)
    {
      v17 = 7;
    }

    else
    {
      v17 = 16;
    }

    if (v16 == a4)
    {
      v18 = 5;
    }

    else
    {
      v18 = v17;
    }

    if (v15 == a4)
    {
      v19 = 6;
    }

    else
    {
      v19 = 16;
    }

    if (v16 == a4)
    {
      v19 = 4;
    }

    if (v15 == a3)
    {
      v18 = v19;
    }

    v20 = v12 | v18;
    *(this + 144) = v20;
    if (v15 == 1.0 || v18 > 0xF)
    {
      goto LABEL_32;
    }

    *(this + 16) = v15;
    *(this + 17) = 1.0 / v15;
    v14 = v20 | 8;
  }

  else
  {
    v14 = v12 | 0x10;
  }

  *(this + 144) = v14;
LABEL_32:
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = xmmword_183E20E00;
  *(this + 7) = xmmword_183E20E60;
  *this = a2;
  *(this + 1) = a3;
  *(this + 4) = a4;
  *(this + 5) = a5;
  *(this + 12) = a6;
  *(this + 13) = a7;
}

double CA::Transform::set_affine_rectilinear(CA::Transform *this, double result, double a3, double a4, double a5)
{
  __asm { FMOV            V4.2D, #1.0 }

  v9 = *(this + 144) & 0xE0;
  *(this + 144) = v9;
  *this = xmmword_183E20E00;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 2) = xmmword_183E20E60;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = xmmword_183E20E00;
  *(this + 7) = xmmword_183E20E60;
  *(this + 8) = _Q4;
  *(this + 12) = a4;
  *(this + 13) = a5;
  if (result == 1.0 && result == a3)
  {
    return result;
  }

  *this = result;
  *(this + 5) = a3;
  v10 = -result;
  if (result >= 0.0)
  {
    v10 = result;
  }

  if (v10 != result)
  {
    if (-v10 == a3)
    {
      v12 = 3;
    }

    else
    {
      v12 = 16;
    }

    if (v10 == a3)
    {
      v11 = 2;
    }

    else
    {
      v11 = v12;
    }

    goto LABEL_16;
  }

  if (v10 != a3)
  {
    if (-v10 == a3)
    {
      v11 = 1;
    }

    else
    {
      v11 = 16;
    }

LABEL_16:
    v9 |= v11;
    *(this + 144) = v9;
  }

  result = 1.0;
  if (v10 != 1.0 && (v9 & 0x10) == 0)
  {
    result = 1.0 / v10;
    *(this + 16) = v10;
    *(this + 17) = 1.0 / v10;
    *(this + 144) = v9 | 8;
  }

  return result;
}

uint64_t CA::Shape::intersect(CA::Shape *this, const CA::Bounds *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v3 = this == 1;
  }

  else
  {
    v3 = *(this + 1) == 6;
  }

  v4 = v3;
  result = 1;
  if ((v4 & 1) == 0 && *(a2 + 2))
  {
    if (*(a2 + 3))
    {
      memset(v6, 0, sizeof(v6));
      CA::Shape::operator=(v6, a2);
      return CA::Shape::intersect(this, v6);
    }
  }

  return result;
}

uint64_t CA::Shape::operator=(uint64_t result, int *a2)
{
  if (a2[2] < 1 || a2[3] < 1)
  {
    *result = 0x600000000;
    v3 = 0x80000000;
    v4 = 20;
    v5 = 16;
    v6 = 12;
  }

  else
  {
    *result = 0xC00000000;
    *(result + 12) = 0x280000000;
    *(result + 20) = a2[1];
    *(result + 24) = 4;
    v2 = *a2;
    *(result + 28) = *a2;
    *(result + 32) = a2[2] + v2;
    v3 = a2[3] + a2[1];
    v4 = 44;
    v5 = 40;
    v6 = 36;
  }

  *(result + v6) = v3;
  *(result + v5) = 2;
  *(result + v4) = 0x7FFFFFFF;
  return result;
}

uint64_t CA::Shape::intersect(uint64_t this, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  if (this)
  {
    if (this == 1)
    {
      return this;
    }
  }

  else if (*(this + 4) == 6)
  {
    return 1;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      return 1;
    }
  }

  else if (*(a2 + 4) == 6)
  {
    return 1;
  }

  if (this)
  {
    if (this == 1)
    {
LABEL_15:
      v45 = xmmword_183E21520;
      v46 = 2;
      v2 = v47;
      v41 = &v45;
      v42 = v47;
      v43 = v47;
      v44 = &v45 + 12;
      *&v47[507] = 0;
      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      v3 = (a2 + 12);
      if (this)
      {
        v49 = xmmword_183E21530;
        LODWORD(v50) = 2;
        DWORD1(v50) = (this >> 16) >> 16;
        DWORD2(v50) = 4;
        HIDWORD(v50) = this >> 48;
        LODWORD(v51) = HIDWORD(v50) + (this >> 17);
        DWORD1(v51) = ((this >> 2) & 0x7FFF) + DWORD1(v50);
        *(&v51 + 1) = 0x7FFFFFFF00000002;
        this = &v49;
      }

      v4 = (this + 12);
      v48 = 0uLL;
      memset(&v47[509], 0, 32);
      if (a2)
      {
        v3 = &v47[512];
        *&v47[512] = 0x280000000;
        v47[510] = 12;
        v47[514] = (a2 >> 16) >> 16;
        v47[515] = 4;
        v47[516] = a2 >> 48;
        LODWORD(v48) = v47[516] + (a2 >> 17);
        DWORD1(v48) = ((a2 >> 2) & 0x7FFF) + v47[514];
        *(&v48 + 1) = 0x7FFFFFFF00000002;
      }

      v5 = *v4;
      if (*v4 == 0x7FFFFFFF)
      {
        return CA::ShapeHandle::finish(&v41, 0);
      }

      v6 = v3;
      v7 = (this + 12);
      while (1)
      {
        v8 = *v6;
        if (*v6 == 0x7FFFFFFF)
        {
          return CA::ShapeHandle::finish(&v41, 0);
        }

        if (v5 - v8 >= 1)
        {
          break;
        }

        v9 = v7[1];
        if (((v5 - v8) & 0x80000000) == 0)
        {
          v4 = v7;
          v7 += v9;
          goto LABEL_27;
        }

        LODWORD(v10) = *(v3 + 1);
        v4 = v7;
        v7 += v9;
        v11 = v6;
LABEL_28:
        v12 = v9 - 2;
        v13 = v9 - 2 + v10;
        if (*(v41 + 2) < (&v2[4 * v13] - v41) >> 2)
        {
          if (!CA::ShapeHandle::grow(&v41, v13))
          {
            return CA::ShapeHandle::finish(&v41, 0);
          }

          v2 = v42;
        }

        *v2 = v5;
        v14 = v2 + 8;
        v42 = v2 + 8;
        *(v2 + 1) = 0;
        if (v12)
        {
          v15 = v10 - 2;
          if (v10 != 2)
          {
            v16 = 0;
            v17 = (v3 + 8);
            v18 = v4 + 2;
            while (1)
            {
              v19 = *v18;
              v20 = *v17;
              v21 = *v18 - *v17;
              if (*v18 > *v17)
              {
                break;
              }

              ++v18;
              --v12;
              v22 = v16 ^ 1;
              if ((v21 & 0x80000000) == 0)
              {
                goto LABEL_37;
              }

              v20 = v19;
LABEL_38:
              if (v16 == 3 || v22 == 3)
              {
                *v14 = v20;
                v14 += 4;
                v42 = v14;
              }

              if (v12)
              {
                v16 = v22;
                if (v15)
                {
                  continue;
                }
              }

              goto LABEL_45;
            }

            v22 = v16;
LABEL_37:
            ++v17;
            --v15;
            v22 ^= 2u;
            goto LABEL_38;
          }
        }

LABEL_45:
        v23 = v43;
        v24 = v44;
        v25 = (v14 - v43) >> 2;
        *(v43 + 1) = v25;
        if (v24 && *(v24 + 1) == v25)
        {
          v26 = 2;
          while (v25 != v26)
          {
            v27 = *&v23[4 * v26];
            v28 = *&v24[4 * v26++];
            if (v27 != v28)
            {
              goto LABEL_50;
            }
          }

          v42 = v23;
          v14 = v23;
        }

        else
        {
LABEL_50:
          v43 = v14;
          v44 = v23;
        }

        v5 = *v7;
        v2 = v14;
        v6 = v11;
        if (*v7 == 0x7FFFFFFF)
        {
          return CA::ShapeHandle::finish(&v41, 0);
        }
      }

      LODWORD(v9) = v4[1];
LABEL_27:
      v10 = v6[1];
      v11 = &v6[v10];
      v3 = v6;
      v5 = *v6;
      goto LABEL_28;
    }
  }

  else if (*(this + 4) != 12)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      goto LABEL_15;
    }
  }

  else if (*(a2 + 4) != 12)
  {
    goto LABEL_15;
  }

  if (this)
  {
    v30 = this >> 48;
    v29 = this << 16 >> 48;
    v32 = ((this >> 2) & 0x7FFF) + v29;
    v31 = (this >> 48) + (this >> 17);
    if (a2)
    {
      goto LABEL_58;
    }

LABEL_60:
    LODWORD(v34) = *(a2 + 20);
    LODWORD(v33) = *(a2 + 28);
    v36 = *(a2 + 32);
    v35 = *(a2 + 36);
    goto LABEL_61;
  }

  LODWORD(v29) = *(this + 20);
  LODWORD(v30) = *(this + 28);
  v31 = *(this + 32);
  v32 = *(this + 36);
  if ((a2 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_58:
  v33 = a2 >> 48;
  v34 = a2 << 16 >> 48;
  v35 = ((a2 >> 2) & 0x7FFF) + v34;
  v36 = (a2 >> 48) + (a2 >> 17);
LABEL_61:
  if (v30 >= v33 && v29 >= v34 && v31 <= v36 && v32 <= v35)
  {
    return CA::Shape::ref(this, a2);
  }

  if (v30 <= v33 && v29 <= v34 && v31 >= v36 && v32 >= v35)
  {
    this = a2;
    return CA::Shape::ref(this, a2);
  }

  if (v30 <= v33)
  {
    LODWORD(v30) = v33;
  }

  if (v29 <= v34)
  {
    LODWORD(v29) = v34;
  }

  if (v31 >= v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = v31;
  }

  if (v32 >= v35)
  {
    v38 = v35;
  }

  else
  {
    v38 = v32;
  }

  this = 1;
  if (v37 > v30)
  {
    v39 = __OFSUB__(v38, v29);
    v40 = v38 - v29;
    if (!((v40 < 0) ^ v39 | (v40 == 0)))
    {
      v41 = __PAIR64__(v29, v30);
      LODWORD(v42) = v37 - v30;
      HIDWORD(v42) = v40;
      return CA::Shape::new_shape(&v41, a2);
    }
  }

  return this;
}

void CA::Shape::unref(CA::Shape *this)
{
  v2 = this;
  if ((this & 1) == 0 && *this && atomic_fetch_add(this, 0xFFFFFFFF) == 1)
  {
    *(this + 4) = -1;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      v2 = this;
    }

    v3 = malloc_zone;

    malloc_zone_free(v3, v2);
  }
}

BOOL CA::Shape::intersects(uint64_t this, int32x2_t *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2[1].i32[0])
  {
    v2 = a2[1].i32[1] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    if (this)
    {
      if (this != 1)
      {
        v7.i32[0] = this >> 48;
        v7.i32[1] = (this >> 16) >> 16;
        v6.i32[0] = this >> 17;
        v8 = (this >> 2) & 0x7FFF;
LABEL_14:
        v6.i32[1] = v8;
        v9 = vclez_s32(v6);
        if ((vpmax_u32(v9, v9).u32[0] & 0x80000000) == 0)
        {
          v10 = a2[1];
          v11 = vclez_s32(v10);
          if ((vpmax_u32(v11, v11).u32[0] & 0x80000000) == 0)
          {
            v12 = vclez_s32(vsub_s32(vmin_s32(vadd_s32(v7, v6), vadd_s32(*a2, v10)), vmax_s32(v7, *a2)));
            return vpmax_u32(v12, v12).i32[0] >= 0;
          }
        }
      }
    }

    else
    {
      v5 = *(this + 4);
      if (v5 != 6)
      {
        if (v5 != 12)
        {
          memset(v13, 0, sizeof(v13));
          CA::Shape::operator=(v13, a2);
          return CA::Shape::intersects(this, v13);
        }

        v7 = *(this + 28);
        v6.i32[0] = vsub_s32(vdup_lane_s32(v7, 1), v7).u32[0];
        v7.i32[1] = *(this + 20);
        v8 = *(this + 36) - v7.i32[1];
        goto LABEL_14;
      }
    }
  }

  return 0;
}

unint64_t CA::Shape::ref(unint64_t this, const CA::Bounds *a2)
{
  v2 = this;
  v11 = *MEMORY[0x1E69E9840];
  if ((this & 1) == 0)
  {
    if (*this)
    {
      atomic_fetch_add(this, 1u);
    }

    else
    {
      v3 = *(this + 4);
      if (v3 == 6)
      {
        return 1;
      }

      else if (v3 == 12)
      {
        v4 = *(this + 20);
        v5 = *(this + 32);
        v10[0] = *(this + 28);
        v10[1] = v4;
        v6 = *(this + 36) - v4;
        v10[2] = v5 - v10[0];
        v10[3] = v6;
        return CA::Shape::new_shape(v10, a2);
      }

      else if ((v3 & 0x80000000) != 0)
      {
        return 0;
      }

      else
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        this = malloc_type_zone_malloc(malloc_zone, 4 * v3, 0x100004052888210uLL);
        if (this)
        {
          if (v3)
          {
            v7 = v3;
            v8 = this;
            do
            {
              v9 = *v2++;
              *v8++ = v9;
              --v7;
            }

            while (v7);
          }

          *this = 1;
          *(this + 8) = v3;
        }
      }
    }
  }

  return this;
}

uint64_t CA::ShapeIterator::iterate(CA::ShapeIterator *this, CA::Bounds *a2)
{
  v2 = *this;
  if (*this)
  {
    if (v2 == 1 || *(this + 1) == 1)
    {
      return 0;
    }

    *a2 = v2 >> 48;
    *(a2 + 1) = (v2 >> 16) >> 16;
    *(a2 + 2) = v2 >> 17;
    *(a2 + 3) = (v2 >> 2) & 0x7FFF;
    v9 = 1;
    *(this + 1) = 1;
  }

  else
  {
    v3 = *(this + 1);
    if (v3)
    {
      v4 = (v2 + 4 * v3);
      v5 = *(this + 2);
      v6 = &v4[2 * v5 + 2];
      v7 = *v4;
      v8 = v5 + 1;
    }

    else
    {
      v4 = (v2 + 12);
      v7 = 0x7FFFFFFF;
      if (*(v2 + 12) != 0x7FFFFFFF)
      {
        v7 = *(v2 + 12);
        if (*(v2 + 16) == 2)
        {
          v10 = (v2 + 20);
          while (1)
          {
            v4 = v10;
            v7 = *v10;
            if (*v10 == 0x7FFFFFFF)
            {
              break;
            }

            v10 += 2;
            if (v4[1] != 2)
            {
              goto LABEL_14;
            }
          }

          v7 = 0x7FFFFFFF;
        }
      }

LABEL_14:
      *(this + 1) = (v4 - v2) >> 2;
      *(this + 2) = 0;
      v6 = v4 + 2;
      v8 = 1;
    }

    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }

    v11 = *v6;
    *a2 = *v6;
    *(a2 + 2) = v6[1] - v11;
    v12 = *v4;
    *(a2 + 1) = *v4;
    *(a2 + 3) = v4[v4[1]] - v12;
    *(this + 2) = v8;
    v13 = v4[1];
    if (v8 == (v13 - 2) >> 1)
    {
      v14 = &v4[v13];
      for (i = *v14; i != 0x7FFFFFFF && v14[1] == 2; i = v16)
      {
        v16 = v14[2];
        v14 += 2;
      }

      *(this + 1) = (v14 - v2) >> 2;
      *(this + 2) = 0;
    }

    return 1;
  }

  return v9;
}

unint64_t CA::Shape::get_bounds(unint64_t this, CA::Bounds *a2)
{
  if (this)
  {
    *a2 = this >> 48;
    *(a2 + 1) = (this >> 16) >> 16;
    *(a2 + 2) = this >> 17;
    *(a2 + 3) = (this >> 2) & 0x7FFF;
  }

  else
  {
    v2 = *(this + 4);
    if (v2 == 12)
    {
      *a2 = *(this + 28);
      *(a2 + 1) = *(this + 20);
      *(a2 + 2) = *(this + 32) - *(this + 28);
      v3 = *(this + 36) - *(this + 20);
    }

    else
    {
      if (v2 == 6)
      {
        *a2 = 0;
        *(a2 + 1) = 0;
        return this;
      }

      v4 = *(this + 12);
      this += 12;
      v5 = *(this + 8);
      if (v4 == 0x7FFFFFFF)
      {
        v6 = 0x80000000;
        v7 = 0x7FFFFFFF;
        v8 = *(this + 8);
      }

      else
      {
        v6 = 0x80000000;
        v8 = *(this + 8);
        v7 = 0x7FFFFFFF;
        do
        {
          v9 = *(this + 4);
          v10 = (this + 4 * v9);
          if (v9 != 2)
          {
            if (*(this + 8) < v7)
            {
              v7 = *(this + 8);
            }

            if (*(v10 - 1) > v6)
            {
              v6 = *(v10 - 1);
            }

            v8 = *v10;
          }

          this += 4 * v9;
        }

        while (*v10 != 0x7FFFFFFF);
      }

      *a2 = v7;
      *(a2 + 1) = v5;
      v3 = v8 - v5;
      *(a2 + 2) = v6 - v7;
    }

    *(a2 + 3) = v3;
  }

  return this;
}

void CA::shape_union(CA::Shape **this, CA::Shape **a2, const CA::Bounds *a3)
{
  v5 = *this;
  if (*this)
  {
    if (v5 == 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = CA::Shape::Union(*this, a2);
    CA::Shape::unref(v5);
    goto LABEL_6;
  }

  if (*(v5 + 1) != 6)
  {
    goto LABEL_5;
  }

LABEL_3:
  CA::Shape::unref(*this);
  v7 = CA::Shape::new_shape(a2, v6);
LABEL_6:
  *this = v7;
}

double CA::Rect::apply_transform(int8x16_t *this, const CA::Transform *a2, double *a3)
{
  v3 = *(a2 + 144);
  if ((v3 & 0x10) != 0)
  {
    *&result = CA::Mat4Impl::mat4_apply_to_rect(a2, this, a3).u64[0];
    return result;
  }

  v5 = *this[1].i64;
  result = *&this[1].i64[1];
  if (v5 <= result)
  {
    v6 = *&this[1].i64[1];
  }

  else
  {
    v6 = *this[1].i64;
  }

  if (v6 < 1.79769313e308)
  {
    if ((*(a2 + 144) & 8) != 0)
    {
      v7 = *&this->i64[1];
      *this->i64 = *this->i64 * *(a2 + 16);
      *&this->i64[1] = v7 * *(a2 + 16);
      v5 = *(a2 + 16) * v5;
      *this[1].i64 = v5;
      result = *(a2 + 16) * result;
      *&this[1].i64[1] = result;
      v3 = *(a2 + 144);
    }

    if ((v3 & 4) != 0)
    {
      v9 = this->i64[0];
      *this->i64 = -(result + *&this->i64[1]);
      this->i64[1] = v9;
      *this[1].i64 = result;
      *&this[1].i64[1] = v5;
      v3 = *(a2 + 144);
      v8 = v5;
      if ((v3 & 2) == 0)
      {
LABEL_14:
        v10 = *&this->i64[1];
        if (v3)
        {
          v10 = -(v8 + v10);
          *&this->i64[1] = v10;
        }

        *this->i64 = *this->i64 + *(a2 + 12);
        result = v10 + *(a2 + 13);
        *&this->i64[1] = result;
        return result;
      }
    }

    else
    {
      v8 = result;
      result = v5;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    *this->i64 = -(result + *this->i64);
    v3 = *(a2 + 144);
    goto LABEL_14;
  }

  return result;
}

unint64_t CA::Shape::new_shape(CA::Shape *this, const CA::Bounds *a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 < 1 || v3 < 1)
  {
    return 1;
  }

  if (!((v3 | v2) >> 15) && *this == __PAIR64__(*(this + 1), *this))
  {
    return (*this << 48) | (*(this + 1) << 32) | (v2 << 17) | (4 * v3) | 1;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0x30uLL, 0x100004052888210uLL);
  if (result)
  {
    result = CA::Shape::operator=(result, this);
    *result = 1;
    *(result + 8) = 12;
  }

  return result;
}

uint64_t CA::BoundsImpl::intersect(uint64_t a1, float64x2_t a2, float64x2_t a3)
{
  v3 = (a1 + 16);
  v4 = *(a1 + 16);
  v5 = vclezq_f64(v4);
  if ((vorrq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v6 = vclezq_f64(a3);
  if ((vorrq_s8(vdupq_laneq_s64(v6, 1), v6).u64[0] & 0x8000000000000000) != 0 || (v7 = vaddq_f64(a2, a3), v8 = vmaxnmq_f64(*a1, a2), v9 = vsubq_f64(vminnmq_f64(vaddq_f64(*a1, v4), v7), v8), v10 = vclezq_f64(v9), (vorrq_s8(vdupq_laneq_s64(v10, 1), v10).u64[0] & 0x8000000000000000) != 0))
  {
    result = 0;
    *v3 = 0;
    v3[1] = 0;
  }

  else
  {
    *a1 = v8;
    *(a1 + 16) = v9;
    return 1;
  }

  return result;
}

__n128 CA::Transform::operator=(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *a1 = *a2;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 128);
  *(a1 + 128) = result;
  v9 = *(a1 + 144) & 0xF8 | *(a2 + 144) & 7;
  *(a1 + 144) = v9;
  v10 = v9 & 0xFFFFFFF7 | (8 * ((*(a2 + 144) >> 3) & 1));
  *(a1 + 144) = v10;
  *(a1 + 144) = v10 & 0xEF | *(a2 + 144) & 0x10;
  return result;
}

BOOL CA::Render::BackdropLayer::get_bounds(CA::Render::BackdropLayer *this, const CA::Render::Layer *a2, CA::Rect *a3, CA::Rect *a4)
{
  v4 = *(this + 3) & 0x500;
  if (v4)
  {
    CA::Render::BackdropLayer::get_backdrop_bounds(this, a2, a3);
    if (!a4)
    {
      return v4 != 0;
    }
  }

  else
  {
    a4 = a3;
  }

  *a4 = 0u;
  *(a4 + 1) = 0u;
  return v4 != 0;
}

uint64_t CA::Render::KeyValueArray::get_float_color_key(CA::Render::KeyValueArray *this, int a2, float32x4_t *a3)
{
  named_object = CA::Render::KeyValueArray::find_named_object_(this, a2);
  if ((named_object & 0x80000000) != 0)
  {
    return 0;
  }

  v6 = *(*(this + named_object + 3) + 24);
  if (!v6 || *(v6 + 12) != 62 || *(v6 + 16) < 4u)
  {
    return 0;
  }

  *a3 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v6 + 24)), *(v6 + 40));
  return 1;
}

uint64_t CA::Render::BackdropLayer::get_backdrop_bounds(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 112);
  v4 = *(result + 120);
  if (*&v3 < v4)
  {
    v4 = *(result + 112);
  }

  if (v4 > 0.0)
  {
    v5 = (result + 96);
    v6 = (result + 104);
  }

  else
  {
    v5 = (a2 + 72);
    v6 = (a2 + 80);
    v3 = *(a2 + 88);
  }

  v7 = *v6;
  *a3 = *v5;
  *(a3 + 8) = v7;
  *(a3 + 16) = v3;
  if (*&v3 <= *(&v3 + 1))
  {
    v8 = *(&v3 + 1);
  }

  else
  {
    v8 = *&v3;
  }

  if (v8 < 1.79769313e308)
  {
    if (*&v3 >= *(&v3 + 1))
    {
      v9 = *(&v3 + 1);
    }

    else
    {
      v9 = *&v3;
    }

    if (v9 > 0.0)
    {
      *&v10 = -*(result + 36);
      *a3 = vaddq_f64(*a3, vdupq_lane_s64(v10, 0));
      v11 = *&v10 * -2.0;
      *(a3 + 16) = v11 + *&v3;
      *(a3 + 24) = v11 + *(&v3 + 1);
      if (v11 + *&v3 <= 0.0 || v11 + *(&v3 + 1) <= 0.0)
      {
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
      }
    }
  }

  return result;
}

uint64_t CA::Render::KeyValueArray::find_named_object_(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((a2 & 0x40000000) != 0)
  {
    if ((a2 & 0xBFFFFFFF) >= v3)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return a2 & 0xBFFFFFFF;
    }
  }

  else
  {
    result = 0;
    v5 = a1 + 24;
    while (*(*(v5 + 8 * result) + 16) != a2)
    {
      if (v3 == ++result)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

double CA::Render::KeyValueArray::get_float_key(CA::Render::KeyValueArray *this, int a2, double a3)
{
  named_object = CA::Render::KeyValueArray::find_named_object_(this, a2);
  if ((named_object & 0x80000000) == 0)
  {
    v6 = *(*(this + named_object + 3) + 24);
    if (v6)
    {
      if (*(v6 + 12) == 62 && *(v6 + 16))
      {
        return *(v6 + 24);
      }
    }
  }

  return a3;
}

double CA::Render::KeyValueArray::get_vec2_key(uint64_t a1, int a2, uint64_t a3)
{
  named_object = CA::Render::KeyValueArray::find_named_object_(a1, a2);
  if ((named_object & 0x80000000) == 0)
  {
    v6 = *(*(a1 + 8 * named_object + 24) + 24);
    if (v6)
    {
      if (*(v6 + 12) == 62 && *(v6 + 16) >= 2u)
      {
        a3 = v6 + 24;
      }
    }
  }

  return *a3;
}

double CA::Transform::set_2x2(CA::Transform *this)
{
  v1 = *(this + 144);
  result = *(this + 16);
  if ((v1 & 4) != 0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *(this + 16);
  }

  if ((*(this + 144) & 4) != 0)
  {
    v4 = -result;
  }

  else
  {
    v4 = 0.0;
  }

  if ((*(this + 144) & 4) == 0)
  {
    result = 0.0;
  }

  *(this + 4) = v4;
  *(this + 5) = v3;
  *this = v3;
  *(this + 1) = result;
  v5 = -v3;
  if ((v1 & 2) == 0)
  {
    if ((v1 & 1) == 0)
    {
      return result;
    }

LABEL_13:
    result = -result;
    *(this + 1) = result;
    *(this + 5) = v5;
    return result;
  }

  *this = v5;
  *(this + 4) = -v4;
  if (v1)
  {
    goto LABEL_13;
  }

  return result;
}

int32x4_t *CA::Bounds::set_exterior(int32x4_t *this, const Rect *a2, float64x2_t a3, float64x2_t a4)
{
  v4 = vceqzq_f64(a4);
  if ((vorrq_s8(vdupq_laneq_s64(v4, 1), v4).u64[0] & 0x8000000000000000) != 0 || (v5 = vceqq_f64(a4, a4), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v5), 1), v5).u64[0] & 0x8000000000000000) != 0))
  {
    this->i64[0] = 0;
    this->i64[1] = 0;
  }

  else
  {
    v6 = vmaxnmq_f64(a3, vdupq_n_s64(0xC1BFFFFFFF000000));
    v7 = vminnmq_f64(vaddq_f64(a3, a4), vdupq_n_s64(0x41C0000000000000uLL));
    v8 = vcvtmq_s64_f64(v6);
    *this = vuzp1q_s32(v8, vsubq_s64(vcvtpq_s64_f64(v7), v8));
  }

  return this;
}

void CA::Render::ImageQueue::did_composite(CA::Render::ImageQueue *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = *(*(this + 2) + 24);
  if (v1)
  {
    v2 = *(this + 111);
    if (v2)
    {
      v3 = *(this + 115);
      v4 = (v1 + 594);
      v5 = *(v1 + 52);
      v6 = *(v1 + 40);
      do
      {
        if (*(v4 - 54))
        {
          v7 = *(v4 - 22);
          v8 = *v4 || v3 == 0;
          v9 = v8 || v7 > v6;
          if (!v9 && v5 != 0)
          {
            v11 = *(v4 - 30);
            v12 = _CACImageQueueDidComposite(v3, 0, v5, *(v4 - 22), v11);
            if (v12)
            {
              v13 = v12;
              if (v12 == 268435460)
              {
                if (v3 == -1 || mach_port_mod_refs(*MEMORY[0x1E69E9A60], v3, 0, 1))
                {
                  if (x_log_get_utilities::once != -1)
                  {
                    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
                  }

                  v14 = x_log_get_utilities::log;
                  if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315138;
                    v25 = "IQDidComposite";
                    _os_log_error_impl(&dword_183AA6000, v14, OS_LOG_TYPE_ERROR, "%s failed to retain right", buf, 0xCu);
                  }
                }

                else
                {
                  if (CA::MachPortUtil::reply_queue(void)::once[0] != -1)
                  {
                    dispatch_once(CA::MachPortUtil::reply_queue(void)::once, &__block_literal_global_10344);
                  }

                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 0x40000000;
                  block[2] = ___ZN2CA12MachPortUtil17call_with_timeoutIPFijjjjjEJjjjEEEijjbPKcT_DpT0__block_invoke;
                  block[3] = &__block_descriptor_tmp_104;
                  v18 = v3;
                  v19 = 2;
                  v20 = v5;
                  v21 = v7;
                  v22 = v11;
                  v23 = 0;
                  block[4] = _CACImageQueueDidComposite;
                  block[5] = "IQDidComposite";
                  dispatch_async(CA::MachPortUtil::reply_queue(void)::queue, block);
                }
              }

              else
              {
                if (x_log_get_utilities::once != -1)
                {
                  dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
                }

                v15 = x_log_get_utilities::log;
                if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
                {
                  v16 = mach_error_string(v13);
                  *buf = 136315650;
                  v25 = "IQDidComposite";
                  v26 = 1024;
                  v27 = v13;
                  v28 = 2080;
                  v29 = v16;
                  _os_log_error_impl(&dword_183AA6000, v15, OS_LOG_TYPE_ERROR, "%s client message err=0x%x : %s", buf, 0x1Cu);
                }

                if (v13 != 268435460)
                {
                  goto LABEL_16;
                }
              }
            }

            *v4 = 1;
          }
        }

LABEL_16:
        v4 += 160;
        --v2;
      }

      while (v2);
    }
  }
}

uint64_t CA::Render::compute_gravity_transform(int a1, double *a2, float64x2_t *a3, uint64_t a4, uint64_t a5)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    switch(a1)
    {
      case 8:
LABEL_15:
        __asm { FMOV            V0.2D, #1.0 }

        *a5 = _Q0;
        v10 = a2[2] + *a2 - a3->f64[0];
        goto LABEL_17;
      case 10:
        v12 = a2[2];
        v11 = a2[3];
        v13 = v12 / a3->f64[0];
        if (v13 >= v11 / a3->f64[1])
        {
          v13 = v11 / a3->f64[1];
        }

        goto LABEL_26;
      case 11:
        v12 = a2[2];
        v11 = a2[3];
        v13 = v12 / a3->f64[0];
        if (v13 <= v11 / a3->f64[1])
        {
          v13 = v11 / a3->f64[1];
        }

LABEL_26:
        *a5 = v13;
        *(a5 + 8) = v13;
        v19 = a3->f64[1];
        v20 = a2[1];
        *a4 = *a2 + (v12 - a3->f64[0] * v13) * 0.5;
        v17 = v13 == 1.0;
        v16 = v20 + (v11 - v13 * v19) * 0.5;
        goto LABEL_23;
    }

LABEL_27:
    v21 = *(a2 + 2);
    v22 = vceqq_f64(v21, *a3);
    v23 = vmovn_s64(v22);
    __asm { FMOV            V1.2D, #1.0 }

    v17 = v23.i8[4] & v23.i8[0];
    *a5 = vbslq_s8(v22, _Q1, vdivq_f64(v21, *a3));
    v16 = a2[1];
    *a4 = *a2;
    goto LABEL_23;
  }

  if (a1 >= 3)
  {
    if (a1 == 3)
    {
LABEL_16:
      __asm { FMOV            V0.2D, #1.0 }

      *a5 = _Q0;
      v10 = *a2;
      goto LABEL_17;
    }

    if (a1 == 4)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

  __asm { FMOV            V0.2D, #1.0 }

  *a5 = _Q0;
  v10 = *a2 + (a2[2] - a3->f64[0]) * 0.5;
LABEL_17:
  *a4 = v10;
  *(a4 + 8) = 0;
  if (((1 << a1) & 0x19) != 0)
  {
    v16 = a2[1] + (a2[3] - a3->f64[1]) * 0.5;
  }

  else if (((1 << a1) & 0x62) != 0)
  {
    v16 = a2[3] + a2[1] - a3->f64[1];
  }

  else
  {
    v16 = a2[1];
  }

  v17 = 1;
LABEL_23:
  *(a4 + 8) = v16;
  return v17 & 1;
}

uint64_t CA::Shape::area(CA::Shape *this)
{
  if (this)
  {
    return ((this >> 2) & 0x7FFF) * (this >> 17);
  }

  v1 = this + 12;
  v2 = *(this + 3);
  if (v2 == 0x7FFFFFFF)
  {
    return 0;
  }

  result = 0;
  do
  {
    v4 = *(v1 + 1);
    v5 = &v1[4 * v4];
    v6 = *v5;
    v7 = v4 - 2;
    if (v7 >= 2)
    {
      v8 = v6 - v2;
      v9 = v7 >> 1;
      v10 = v1 + 12;
      do
      {
        result += (*v10 - *(v10 - 1)) * v8;
        v10 += 2;
        --v9;
      }

      while (v9);
    }

    v2 = *v5;
    v1 = v5;
  }

  while (v6 != 0x7FFFFFFF);
  return result;
}

float64_t CA::Transform::concat_left(CA::Transform *this, float64x2_t *a2, uint64_t a3, const double *a4)
{
  v4 = *(this + 144);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_6;
  }

  if ((LOBYTE(a2[9].f64[0]) & 0x10) != 0)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *(this + 8) = _Q0;
    *(this + 144) = v4 & 0xE0 | 0x10;
LABEL_6:
    *&v5.f64[0] = *&CA::Mat4Impl::mat4_concat(this, a2->f64, this, a4);
    return v5.f64[0];
  }

  v5.f64[0] = a2[6].f64[0];
  if ((*(this + 144) & 0xF) != 0)
  {
    *(this + 6) = vmlaq_n_f64(vmlaq_n_f64(*(this + 6), *this, v5.f64[0]), *(this + 2), a2[6].f64[1]);
  }

  else
  {
    v5.f64[1] = a2[6].f64[1];
    v5 = vaddq_f64(*(this + 6), v5);
    *(this + 6) = v5;
  }

  v11 = LOBYTE(a2[9].f64[0]);
  v12 = v11;
  if ((v11 & 8) != 0)
  {
    v5 = vmulq_f64(*(this + 8), a2[8]);
    *(this + 8) = v5;
    v4 = v4 & 0xE7 | (8 * (v5.f64[0] != 1.0));
    *(this + 144) = v4;
    v12 = LOBYTE(a2[9].f64[0]);
  }

  v13 = concat_table[v12 & 7 | (8 * (v4 & 7))];
  if ((v4 & 7) == v13)
  {
    if ((v11 & 8) == 0)
    {
      return v5.f64[0];
    }
  }

  else
  {
    *(this + 144) = v4 & 0xF8 | v13 & 7;
  }

  v5.f64[0] = CA::Transform::set_2x2(this);
  return v5.f64[0];
}

void CA::Render::Update::invalidate_backdrops(CA::Render::Update *this, const CA::Bounds *a2, CA::Render::BackdropState *a3, unsigned int a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 2);
  if (v4 >= *(a2 + 3))
  {
    v4 = *(a2 + 3);
  }

  if (v4 >= 1)
  {
    v6 = *(this + 68);
    if (v6)
    {
      while (1)
      {
        v10 = *(v6 + 104);
        if ((v10 & 0x20000000) != 0 && (v10 & 0x7FFFFFFu) <= a4)
        {
          goto LABEL_56;
        }

        v11 = *(*(v6 + 8) + 256);
        v12 = *(v11 + 56);
        os_unfair_lock_lock((v12 + 40));
        v15 = *(v6 + 16);
        v16 = *(v15 + 16);
        if (*(v12 + 544) == v16)
        {
          if ((*(v6 + 107) & 0x10) != 0)
          {
            v47 = 0uLL;
            CA::Shape::get_bounds(v16, &v47);
            *(v6 + 24) = v47;
          }

          goto LABEL_55;
        }

        if (!a3 || *(a3 + 7) != v12)
        {
          v17 = *a2;
          v46 = v17;
          v18 = DWORD2(v17);
          v19 = vclez_s32(*(&v17 + 8));
          v20 = vpmax_u32(v19, v19).u32[0];
          v21 = v17;
          if ((v20 & 0x80000000) != 0)
          {
            v30 = HIDWORD(v17);
          }

          else
          {
            v22 = *(v11 + 88);
            v23 = vclez_s32(v22);
            if ((vpmax_u32(v23, v23).u32[0] & 0x80000000) != 0 || (v24 = *(v11 + 80), v25 = vadd_s32(*&v17, *(&v17 + 8)), v26 = vmax_s32(*&v17, v24), v27 = vsub_s32(vmin_s32(v25, vadd_s32(v24, v22)), v26), v28 = vclez_s32(v27), (vpmax_u32(v28, v28).u32[0] & 0x80000000) != 0))
            {
              v30 = 0;
              v18 = 0;
              *(&v46 + 1) = 0;
            }

            else
            {
              *&v29 = v26;
              *(&v29 + 1) = v27;
              v46 = v29;
              v18 = v27.i32[0];
              v30 = v27.i32[1];
              v21 = v26;
            }
          }

          v31 = v18 >= v30 ? v30 : v18;
          if (v31 >= 1)
          {
            break;
          }
        }

LABEL_55:
        os_unfair_lock_unlock((v12 + 40));
LABEL_56:
        v6 = *v6;
        if (!v6)
        {
          return;
        }
      }

      v32 = *(v12 + 64);
      v33 = 0.0;
      if (v32 != 1.0)
      {
        v33 = ceilf(0.5 / v32);
      }

      if (v18 <= v30)
      {
        v34 = v30;
      }

      else
      {
        v34 = v18;
      }

      if (v34 <= 1073741822)
      {
        v35 = -v33;
        *&v46 = vadd_s32(v21, vdup_n_s32(v35));
        v36 = v30 - 2 * v35;
        DWORD2(v46) = v18 - 2 * v35;
        HIDWORD(v46) = v36;
        if (SDWORD2(v46) < 1 || v36 <= 0)
        {
          *(&v46 + 1) = 0;
        }
      }

      if (*(v11 + 116) != *(this + 68))
      {
        *(v11 + 120) = 1;
        v40 = *(v11 + 128);
        v41 = v40 + *(v6 + 112);
        v42 = *(this + 11);
        if (v41 >= v42)
        {
          v43 = *(this + 11);
        }

        else
        {
          v43 = v40 + *(v6 + 112);
        }

        *(this + 13) |= 0x400000000000uLL;
        if (v42 >= v43)
        {
          if (v43 != 0.0 && v41 < v42)
          {
            v45 = 0x400000000000;
          }

          else
          {
            v45 = *(this + 12) | 0x400000000000;
          }

          *(this + 12) = v45;
          *(this + 11) = v43;
        }

        goto LABEL_55;
      }

      if ((*(v6 + 107) & 0x10) != 0)
      {
        CA::BoundsImpl::Union((v6 + 24), *&v46, *(&v46 + 8));
        v15 = *(v6 + 16);
        v16 = *(v15 + 16);
      }

      if (v16)
      {
        CA::shape_union((v15 + 16), &v46, v14);
        v38 = *(v15 + 16);
        if ((v38 & 1) != 0 || *(v38 + 4) < 65)
        {
          goto LABEL_52;
        }

        v47 = 0uLL;
        CA::Shape::get_bounds(v38, &v47);
        CA::Shape::unref(*(v15 + 16));
        v39 = &v47;
      }

      else
      {
        v39 = &v46;
      }

      *(v15 + 16) = CA::Shape::new_shape(v39, v13);
LABEL_52:
      goto LABEL_55;
    }
  }
}

void CA::Render::Updater::FilterOp::apply_filter(CA::Render::Updater::FilterOp *this, Rect *a2, int a3)
{
  v6 = *&a2[2].top;
  v18 = *&a2->top;
  v19 = v6;
  v7 = a2[3];
  if (v6.n128_f64[0] <= v6.n128_f64[1])
  {
    v6.n128_u64[0] = a2[3];
  }

  if (v6.n128_f64[0] < 1.79769313e308)
  {
    v6.n128_f64[0] = CA::Rect::unapply_transform(a2, *(this + 3));
  }

  v8 = *(this + 5);
  v9 = *(v8 + 48);
  if (v9)
  {
    v10 = *(this + 4);
    if (((*(*v9 + 8))(*(v8 + 48), *(this + 5), v10, v6) & 1) == 0)
    {
      (*(*v9 + 48))(v9, v8, v10, a2);
    }
  }

  v11 = *&a2[2];
  if (v11 <= *&a2[3])
  {
    v11 = *&a2[3];
  }

  if (v11 < 1.79769313e308)
  {
    CA::Rect::apply_transform(a2, *(this + 3));
  }

  if ((*(this + 48) & 1) != 0 || a3)
  {
    v12 = *&a2[2].top;
    v13 = vclezq_f64(v12);
    v14 = vclezq_f64(v19);
    v15 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v14, v13), vzip2q_s64(v14, v13))));
    if (v15.i8[4])
    {
      if (v15.i8[0])
      {
        return;
      }

      *&a2->top = v18;
      a2[2] = *&v19.f64[0];
    }

    else
    {
      if (v15.i8[0])
      {
        return;
      }

      v16 = vminnmq_f64(*&a2->top, v18);
      v17 = vsubq_f64(vmaxnmq_f64(vaddq_f64(*&a2->top, v12), vaddq_f64(v18, v19)), v16);
      *&a2->top = v16;
      a2[2] = *&v17.f64[0];
      v7 = *&v17.f64[1];
    }

    a2[3] = v7;
  }
}

uint64_t CA::Render::Filter::compositing_dod(CA::Render::Filter *this)
{
  if (this > 548)
  {
    if (this <= 663)
    {
      if (this <= 561)
      {
        if (this == 549 || this == 555)
        {
          return 4;
        }

        return 0;
      }

      if ((this - 562) <= 0x3F && ((1 << (this - 50)) & 0x840000000000000FLL) != 0 || this == 659)
      {
        return 4;
      }

      if (this != 662)
      {
        return 0;
      }

      return 3;
    }

    v2 = this + 100;
    if ((this - 668) <= 0x1E)
    {
      if (((1 << v2) & 0x48000002) != 0)
      {
        return 4;
      }

      if (((1 << v2) & 0x10000001) != 0)
      {
        return 2;
      }

      if (this == 697)
      {
        return 3;
      }
    }

    if ((this - 742) <= 0x10 && ((1 << (this + 26)) & 0x1006D) != 0)
    {
      return 4;
    }

    if (this != 664)
    {
      return 0;
    }

    return 5;
  }

  if (this > 292)
  {
    v3 = this + 37;
    if ((this - 475) > 0x3A)
    {
      goto LABEL_19;
    }

    if (((1 << v3) & 0x404002000801C03) != 0)
    {
      return 4;
    }

    if (((1 << v3) & 0x2200000000000) == 0)
    {
LABEL_19:
      if (this == 293 || this == 307)
      {
        return 4;
      }

      return 0;
    }

    return 5;
  }

  if (this > 183)
  {
    v4 = this + 70;
    if ((this - 186) <= 0x36)
    {
      if (((1 << v4) & 0x40000000080030) != 0)
      {
        return 4;
      }

      if (((1 << v4) & 0xC) != 0)
      {
        return 3;
      }

      if (this == 186)
      {
        return 5;
      }
    }

    if (this != 184)
    {
      if (this != 185)
      {
        return 0;
      }

      return 2;
    }

    return 3;
  }

  if (this > 106)
  {
    if ((this - 179) < 2 || this == 107)
    {
      return 4;
    }

    if (this != 158)
    {
      return 0;
    }

    return 2;
  }

  if (this <= 102)
  {
    if (this != 60)
    {
      return this == 99;
    }

    return 4;
  }

  if (this == 103 || this == 105)
  {
    return 4;
  }

  return 0;
}

BOOL CA::Render::GradientLayer::is_valid(CA::Render::GradientLayer *this)
{
  v1 = *(this + 26);
  if (v1 != 58 && v1 != 587 && v1 != 128)
  {
    return 0;
  }

  if ((*(this + 13) & 8) != 0 && *(this + 14))
  {
    return 1;
  }

  return *(this + 6) != 0;
}

uint64_t CA::Render::ImageQueue::texture_cast(CA::Render::ImageQueue *this)
{
  result = *(this + 8);
  if (!result)
  {
    result = *(this + 10);
    if (!result)
    {
      return *(this + 3);
    }
  }

  return result;
}

uint64_t CA::Render::Layer::apply_contents_transform(uint64_t a1, uint64_t a2, float64x2_t *a3, int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = 0uLL;
  v27 = 0.0;
  v28 = 0.0;
  v7 = CA::Render::compute_gravity_transform(*(a1 + 40) >> 12, (a1 + 72), a3, &v29, &v27);
  v8 = *(a1 + 136);
  if (v8 && (v9 = *(v8 + 32)) != 0)
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    CA::Transform::set_affine_rectilinear(v31, v27, v28, v29.f64[0], v29.f64[1]);
    v10 = *(v9 + 16);
    v11 = (v9 + 24);
    v12 = (v9 + 40);
    _CF = v10 >= 6;
    if (v10 >= 6)
    {
      v14 = (v9 + 56);
    }

    else
    {
      v14 = (MEMORY[0x1E695EFD0] + 32);
    }

    if (!_CF)
    {
      v12 = (MEMORY[0x1E695EFD0] + 16);
      v11 = MEMORY[0x1E695EFD0];
    }

    CA::Transform::set_affine(v30, *v11, v11[1], *v12, v12[1], *v14, v14[1]);
    CA::Transform::concat(v31, v30, v15, v16);
    CA::Rect::apply_transform(a2, v31, v17);
    return 0;
  }

  else
  {
    if ((v7 & 1) == 0)
    {
      CA::BoundsImpl::scale(a2, v27, v28);
      if (a4)
      {
        v19 = vdupq_n_s64(0x412E848000000000uLL);
        __asm { FMOV            V3.2D, #0.5 }

        v24 = vrndmq_f64(vmlaq_f64(_Q3, v19, *a2));
        v25 = vrndmq_f64(vmlaq_f64(_Q3, v19, *(a2 + 16)));
        v26 = vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL);
        *a2 = vmulq_f64(v24, v26);
        *(a2 + 16) = vmulq_f64(v25, v26);
      }
    }

    *a2 = vaddq_f64(*a2, v29);
    return 1;
  }
}

float64_t CA::Transform::concat(CA::Transform *this, float64x2_t *a2, uint64_t a3, const double *a4)
{
  v4 = *(this + 144);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_6;
  }

  if ((LOBYTE(a2[9].f64[0]) & 0x10) != 0)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *(this + 8) = _Q0;
    *(this + 144) = v4 & 0xE0 | 0x10;
LABEL_6:
    *&v5.f64[0] = *&CA::Mat4Impl::mat4_concat(this, this, a2->f64, a4);
    return v5.f64[0];
  }

  if ((LOBYTE(a2[9].f64[0]) & 0xF) != 0)
  {
    v5.f64[0] = *(this + 12);
    *(this + 6) = vmlaq_n_f64(vmlaq_n_f64(a2[6], *a2, v5.f64[0]), a2[2], *(this + 13));
  }

  else
  {
    v5 = vaddq_f64(*(this + 6), a2[6]);
    *(this + 6) = v5;
  }

  v11 = LOBYTE(a2[9].f64[0]);
  v12 = v11;
  if ((v11 & 8) != 0)
  {
    v5 = vmulq_f64(*(this + 8), a2[8]);
    *(this + 8) = v5;
    v4 = v4 & 0xE7 | (8 * (v5.f64[0] != 1.0));
    *(this + 144) = v4;
    v12 = LOBYTE(a2[9].f64[0]);
  }

  v13 = concat_table[v4 & 7 | (8 * (v12 & 7))];
  if ((v4 & 7) == v13)
  {
    if ((v11 & 8) == 0)
    {
      return v5.f64[0];
    }
  }

  else
  {
    *(this + 144) = v4 & 0xF8 | v13 & 7;
  }

  v5.f64[0] = CA::Transform::set_2x2(this);
  return v5.f64[0];
}

void CA::Render::Updater::TransformOp::map_bounds(CA::Render::Updater::TransformOp *this, CA::Render::Updater::LayerShapes *a2, double *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  if (v5 == 0.0 && v6 == 0.0)
  {
    *v8.i64 = CA::Rect::apply_transform(a2, (this + 24), a3);
  }

  else
  {
    v9 = *(a2 + 1);
    v46 = *a2;
    *&v47[8] = vaddq_f64(v9, v46);
    *v47 = v5;
    v48 = v6;
    CA::Volume::apply_transform(&v46, (this + 24), a3);
    v10 = *&v46.f64[1];
    v11 = *&v47[8] - v46.f64[0];
    v12 = *&v47[16] - v46.f64[1];
    if (*&v47[8] - v46.f64[0] >= *&v47[16] - v46.f64[1])
    {
      v13 = *&v47[16] - v46.f64[1];
    }

    else
    {
      v13 = *&v47[8] - v46.f64[0];
    }

    if (v13 <= 0.0)
    {
      v8.i64[1] = 0;
      *a2 = 0u;
      *(a2 + 1) = 0u;
    }

    else
    {
      if (v11 <= v12)
      {
        v14 = *&v47[16] - v46.f64[1];
      }

      else
      {
        v14 = *&v47[8] - v46.f64[0];
      }

      if (v14 >= 1.79769313e308)
      {
        v8 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
        *a2 = v8;
        *(a2 + 1) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      }

      else
      {
        *a2 = v46.f64[0];
        *(a2 + 1) = v10;
        *(a2 + 2) = v11;
        *(a2 + 3) = v12;
      }
    }

    v8.i64[0] = *v47;
    v15 = v48;
    *(a2 + 4) = *v47;
    *(a2 + 5) = v15;
  }

  if ((*(this + 176) & 1) == 0)
  {
    v16 = *(a2 + 2);
    v8.i64[0] = *(a2 + 3);
    v17 = v16 <= *v8.i64 ? *(a2 + 3) : *(a2 + 2);
    if (v17 < 1.79769313e308)
    {
      v18 = v16 >= *v8.i64 ? *(a2 + 3) : *(a2 + 2);
      if (v18 > 0.0)
      {
        __asm { FMOV            V3.2D, #-1.0 }

        *a2 = vaddq_f64(*a2, _Q3);
        v24 = v16 + 2.0;
        *v8.i64 = *v8.i64 + 2.0;
        *(a2 + 2) = v24;
        *(a2 + 3) = v8.i64[0];
        if (v24 <= 0.0 || *v8.i64 <= 0.0)
        {
          *(a2 + 2) = 0;
          *(a2 + 3) = 0;
        }
      }
    }
  }

  v25 = *(a2 + 7);
  if (v25)
  {
    if (v25)
    {
      if (v25 == 1)
      {
        goto LABEL_58;
      }
    }

    else if (*(v25 + 4) == 6)
    {
      goto LABEL_58;
    }

    v45 = 0uLL;
    CA::Shape::get_interior_bounds(v25, &v45);
    if (v45.i32[2] <= v45.i32[3])
    {
      v28 = v45.i32[3];
    }

    else
    {
      v28 = v45.i32[2];
    }

    v26.i32[0] = 1073741822;
    v27.i32[0] = v28;
    v29.i64[0] = v45.i32[0];
    v29.i64[1] = v45.i32[1];
    v30 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v27, v26), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v29));
    v31 = v45.i32[2];
    if (v28 > 1073741822)
    {
      v31 = 1.79769313e308;
    }

    v46 = v30;
    if (v28 <= 1073741822)
    {
      v32 = v45.i32[3];
    }

    else
    {
      v32 = 1.79769313e308;
    }

    *v47 = v31;
    *&v47[8] = v32;
    CA::Rect::apply_transform_interior(&v46, (this + 24));
    v33 = vceqzq_f64(*v47);
    if ((vorrq_s8(vdupq_laneq_s64(v33, 1), v33).u64[0] & 0x8000000000000000) != 0 || (v34 = vceqq_f64(*v47, *v47), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v34), 1), v34).u64[0] & 0x8000000000000000) != 0))
    {
      v45 = 0uLL;
    }

    else
    {
      v35 = vcvtpq_s64_f64(vmaxnmq_f64(v46, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v45 = vuzp1q_s32(v35, vsubq_s64(vcvtmq_s64_f64(vminnmq_f64(vaddq_f64(v46, *v47), vdupq_n_s64(0x41C0000000000000uLL))), v35));
    }

    if ((*(this + 176) & 1) == 0)
    {
      v37 = *(a2 + 2);
      v36 = *(a2 + 3);
      v38 = v37 <= v36 ? *(a2 + 3) : *(a2 + 2);
      if (v38 < 1.79769313e308)
      {
        v39 = v37 >= v36 ? *(a2 + 3) : *(a2 + 2);
        if (v39 > 0.0)
        {
          __asm { FMOV            V3.2D, #1.0 }

          *a2 = vaddq_f64(*a2, _Q3);
          v41 = v37 + -2.0;
          v42 = v36 + -2.0;
          *(a2 + 2) = v41;
          *(a2 + 3) = v42;
          if (v41 <= 0.0 || v42 <= 0.0)
          {
            *(a2 + 2) = 0;
            *(a2 + 3) = 0;
          }
        }
      }
    }

    CA::Shape::unref(*(a2 + 7));
    *(a2 + 7) = CA::Shape::new_shape(&v45, v43);
  }

LABEL_58:
  if (*(a2 + 8))
  {
    CA::shape_map(a2 + 8, this, CA::Render::Updater::TransformOp::map_bounds(CA::Render::Updater::LayerShapes &,BOOL)::$_0::__invoke, v7, v8);
  }

  v44 = *(a2 + 6);
  if (v44)
  {
    if (*(v44 + 8))
    {
      *(v44 + 17) = 1;
    }
  }
}

void CA::Render::SDFLayer::sdf_padding(CA::Render::SDFLayer *this)
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }
}

uint64_t CA::Shape::map(CA::Shape *this, void *a2, void (*a3)(CA::Rect *, void *), int32x4_t a4)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v24 = 1;
  v25[0] = this;
  v23[0] = 0;
  v23[1] = 0;
  v25[1] = 0;
  v25[2] = 0;
  a4.i32[0] = 1073741822;
  v20 = a4;
  v18 = vdupq_n_s64(0xC1BFFFFFFF000000);
  v19 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
  v17 = vdupq_n_s64(0x41C0000000000000uLL);
  while (CA::ShapeIterator::iterate(v25, v23))
  {
    if (SLODWORD(v23[1]) <= SHIDWORD(v23[1]))
    {
      v7 = HIDWORD(v23[1]);
    }

    else
    {
      v7 = v23[1];
    }

    v6.i32[0] = v7;
    v8.i64[0] = SLODWORD(v23[0]);
    v8.i64[1] = SHIDWORD(v23[0]);
    v9 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v6, v20), 0), v19, vcvtq_f64_s64(v8));
    v10 = SLODWORD(v23[1]);
    if (v7 > 1073741822)
    {
      v10 = 1.79769313e308;
    }

    v21 = v9;
    if (v7 <= 1073741822)
    {
      v11 = SHIDWORD(v23[1]);
    }

    else
    {
      v11 = 1.79769313e308;
    }

    v22.f64[0] = v10;
    v22.f64[1] = v11;
    a3(&v21, a2);
    v13 = vceqzq_f64(v22);
    if ((vorrq_s8(vdupq_laneq_s64(v13, 1), v13).u64[0] & 0x8000000000000000) != 0 || (v14 = vceqq_f64(v22, v22), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v14), 1), v14).u64[0] & 0x8000000000000000) != 0))
    {
      v23[0] = 0;
      v23[1] = 0;
    }

    else
    {
      v15 = vcvtmq_s64_f64(vmaxnmq_f64(v21, v18));
      *v23 = vuzp1q_s32(v15, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v21, v22), v17)), v15));
    }

    CA::shape_union(&v24, v23, v12);
  }

  return v24;
}

double CA::Transform::set(CA::Transform *this, uint64_t a2)
{
  *this = xmmword_183E20E00;
  *(this + 1) = 0u;
  *(this + 2) = xmmword_183E20E60;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = xmmword_183E20E00;
  *(this + 6) = 0u;
  *(this + 7) = xmmword_183E20E60;
  *(this + 6) = *a2;
  *(this + 8) = *(a2 + 16);
  v2 = *(this + 144) & 0xF8 | *(a2 + 32) & 7;
  *(this + 144) = v2;
  *(this + 144) = v2 & 0xE7 | *(a2 + 32) & 8;
  return CA::Transform::set_2x2(this);
}

void CA::Render::Updater::FilterOp::map_bounds(CA::Render::Updater::FilterOp *this, Rect *a2, int a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(this + 5))
  {
    CA::Render::Updater::FilterOp::apply_filter(this, a2, a3);
    if (a2[8])
    {
      CA::shape_map(&a2[8], this, CA::Render::Updater::FilterOp::map_bounds(CA::Render::Updater::LayerShapes &,BOOL)::$_0::__invoke, v5, v6);
    }
  }

  v7 = a2[7];
  if (v7)
  {
    if (v7.top)
    {
      if (v7 == 1)
      {
        goto LABEL_15;
      }
    }

    else if (*(*&v7 + 4) == 6)
    {
      goto LABEL_15;
    }

    v8 = *(this + 5);
    if (!v8)
    {
      goto LABEL_14;
    }

    if (*(this + 48))
    {
      goto LABEL_14;
    }

    v9 = *(v8 + 48);
    if (!v9)
    {
      goto LABEL_14;
    }

    if ((*(*v9 + 24))(*(v8 + 48)))
    {
      v7 = a2[7];
LABEL_14:
      CA::Shape::unref(*&v7);
      a2[7] = 1;
      goto LABEL_15;
    }

    v12 = *(*(this + 5) + 48);
    if (!v12 || ((*(*v12 + 32))(v12) & 1) == 0)
    {
      v30 = 0uLL;
      CA::Shape::get_interior_bounds(*&a2[7], &v30);
      if (v30.i32[2] <= v30.i32[3])
      {
        v15 = v30.i32[3];
      }

      else
      {
        v15 = v30.i32[2];
      }

      v13.i32[0] = 1073741822;
      v14.i32[0] = v15;
      v16.i64[0] = v30.i32[0];
      v16.i64[1] = v30.i32[1];
      v17 = v30.i32[2];
      v18 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v14, v13), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v16));
      v19 = v30.i32[3];
      if (v15 > 1073741822)
      {
        v17 = 1.79769313e308;
        v19 = 1.79769313e308;
      }

      v28 = v18;
      v29.f64[0] = v17;
      v29.f64[1] = v19;
      v18.n128_f64[0] = fmax(v17, v19);
      if (v18.n128_f64[0] < 1.79769313e308)
      {
        v18.n128_f64[0] = CA::Rect::unapply_transform(v28.f64, *(this + 3));
      }

      v20 = *(*(this + 5) + 48);
      if (v20)
      {
        (*(*v20 + 56))(v20, v18);
        v21 = v29.f64[1];
        v22 = v29.f64[0];
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
        v21 = 0.0;
        v22 = 0.0;
      }

      if (v22 > v21)
      {
        v21 = v22;
      }

      if (v21 < 1.79769313e308)
      {
        CA::Rect::apply_transform(v28.f64, *(this + 3));
      }

      v23 = vceqzq_f64(v29);
      if ((vorrq_s8(vdupq_laneq_s64(v23, 1), v23).u64[0] & 0x8000000000000000) != 0 || (v24 = vceqq_f64(v29, v29), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v24), 1), v24).u64[0] & 0x8000000000000000) != 0))
      {
        v30 = 0uLL;
      }

      else
      {
        v25 = vcvtpq_s64_f64(vmaxnmq_f64(v28, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v30 = vuzp1q_s32(v25, vsubq_s64(vcvtmq_s64_f64(vminnmq_f64(vaddq_f64(v28, v29), vdupq_n_s64(0x41C0000000000000uLL))), v25));
      }

      v26 = a2[7];
      if (!CA::Shape::equal(v26, &v30))
      {
        CA::Shape::unref(v26);
        a2[7] = CA::Shape::new_shape(&v30, v27);
      }
    }
  }

LABEL_15:
  if (*(this + 5))
  {
    v10 = a2[6];
    if (v10)
    {
      *(*&v10 + 16) = 1;
      v11 = *(*&v10 + 8);
      if (v11)
      {
        CA::GenericRectTree<CA::Rect>::Pool::delete_node(**&v10, v11);
        *(*&v10 + 8) = 0;
      }
    }
  }
}

double CA::Render::Updater::SDFOp::apply(CA::Render::Updater::SDFOp *this, Rect *a2)
{
  result = *&a2[2];
  v4 = *&a2[3];
  if (result >= v4)
  {
    v5 = *&a2[3];
  }

  else
  {
    v5 = *&a2[2];
  }

  if (v5 > 0.0)
  {
    if (result <= v4)
    {
      result = *&a2[3];
    }

    if (result < 1.79769313e308)
    {
      CA::Rect::unapply_transform(a2, *(this + 3));
      v8 = *&a2->top;
      v9 = *&a2[2].top;
      *&v10.f64[0] = a2[3];
      if (v9.f64[0] <= v10.f64[0])
      {
        v11 = *&a2[3];
      }

      else
      {
        v11 = *&a2[2];
      }

      v12 = v11 < 1.79769313e308;
      v13 = *&a2[2].top;
      v14 = *&a2->top;
      if (v12)
      {
        v15 = v9.f64[0] >= v10.f64[0] ? *&a2[3] : *&a2[2];
        v16 = v15 <= 0.0;
        v13 = *&a2[2].top;
        v14 = *&a2->top;
        if (!v16)
        {
          v13.f64[0] = -*(this + 8);
          v14 = vaddq_f64(v8, vdupq_lane_s64(*&v13.f64[0], 0));
          v13.f64[0] = v13.f64[0] * -2.0;
          *v17.i64 = v13.f64[0] + v9.f64[0];
          v13.f64[0] = v13.f64[0] + v10.f64[0];
          v10.f64[0] = fmin(*v17.i64, v13.f64[0]);
          v17.i64[1] = *&v13.f64[0];
          v13.f64[0] = 0.0;
          v13 = vandq_s8(v17, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v13, v10)).i64[0], 0));
        }
      }

      v18 = vaddq_f64(v14, vcvtq_f64_f32(*(this + 36)));
      v19 = vclezq_f64(v9);
      v20 = vclezq_f64(v13);
      v21 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v20, v19), vzip2q_s64(v20, v19))));
      if (v21.i8[4])
      {
        if (v21.i8[0])
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v21.i8[0])
        {
LABEL_25:
          v23 = *(this + 3);

          return CA::Rect::apply_transform(a2, v23);
        }

        v22 = vaddq_f64(v18, v13);
        v18 = vminnmq_f64(v8, v18);
        v13 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v8, v9), v22), v18);
      }

      *&a2->top = v18;
      *&a2[2].top = v13;
      goto LABEL_25;
    }
  }

  return result;
}

void CA::Render::Updater::FlattenZOp::map_transform(CA::Render::Updater::FlattenZOp *this, CA::Transform *a2)
{
  if ((*(a2 + 144) & 0x10) != 0)
  {
    *(a2 + 2) = 0;
    *(a2 + 6) = 0;
    *(a2 + 10) = 0x3FF0000000000000;
    *(a2 + 14) = 0;
  }
}

void CA::Render::Updater::prepare_layer_contents(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v141 = *MEMORY[0x1E69E9840];
  v8 = (*(*a3 + 80))(a3);
  if (v8)
  {
    v9 = v8;
    *v119 = 0;
    if ((*(v8 + 13) & 0x64) != 0)
    {
      CA::Render::Texture::displayed_size_(v8, &v119[1], v119);
    }

    else
    {
      v28 = *(v8 + 16);
      v119[0] = *(v8 + 20);
      v119[1] = v28;
    }

    if (*(a3 + 12) == 56)
    {
      v29 = *(a3 + 32);
      v119[0] = *(a3 + 36);
      v119[1] = v29;
    }

    v30 = (*(*v9 + 104))(v9);
    if (v30 <= 0x23 && ((0xF9FE26000uLL >> v30) & 1) != 0)
    {
      *(a2 + 72) |= 0x40000000uLL;
    }

    if ((*(*(a2 + 56) + 47) & 0x10) != 0)
    {
      *(a2 + 72) |= 0x200000000uLL;
    }

    if (*(a3 + 12) != 25 || !CA::Render::ImageQueue::is_protected(a3))
    {
      goto LABEL_38;
    }

    v33 = *(a3 + 64);
    if (!v33)
    {
      v33 = *(a3 + 80);
      if (!v33)
      {
        if (!*(a3 + 24))
        {
          goto LABEL_38;
        }

        v33 = *(a3 + 80);
        if (!v33)
        {
          v33 = *(a3 + 24);
        }
      }
    }

    *(a2 + 72) |= ((*(*v33 + 256))(v33) << 47) & 0x3000000000000 | 0x800000000000;
LABEL_38:
    v34 = *(v9 + 3);
    if (v34 == 57)
    {
      *(a2 + 72) |= ((*(*v9 + 256))(v9) & 7) << 47;
      v34 = *(v9 + 3);
    }

    if ((v34 & 0x10000) != 0)
    {
      *(a2 + 72) |= 0x1000000uLL;
    }

    v35 = *(a2 + 56);
    if ((v34 & 0x1000) == 0 && (*(v35 + 46) & 8) == 0)
    {
      goto LABEL_49;
    }

    v36 = *(v35 + 136);
    if (v36)
    {
      if (!*v36)
      {
        goto LABEL_48;
      }

      v37 = (*(**v36 + 216))(*v36, *(a2 + 56));
      v35 = *(a2 + 56);
      if (!v37)
      {
LABEL_49:
        v38 = 0;
        goto LABEL_51;
      }

      v36 = *(v35 + 136);
      if (v36)
      {
LABEL_48:
        if (v36[74] < 1.0)
        {
          goto LABEL_49;
        }
      }
    }

    v38 = 1;
LABEL_51:
    LODWORD(v31) = v119[1];
    v39 = v31;
    LODWORD(v31) = v119[0];
    v40 = v31;
    v117 = 0uLL;
    v118.f64[0] = v39;
    v118.f64[1] = v40;
    v41 = *(v35 + 136);
    if (v41)
    {
      v42 = *(v41 + 304);
    }

    else
    {
      LOBYTE(v32) = *(v35 + 38);
      v42 = v32;
    }

    if (v42 != 1.0)
    {
      if (v42 != 0.0)
      {
        v70 = v42;
        v39 = v39 / v70;
        v40 = v40 / v70;
        v118.f64[0] = v39;
        v118.f64[1] = v40;
        if (v41)
        {
LABEL_58:
          v43 = *(v41 + 40);
          if (v43)
          {
            v39 = (v43[5] - v43[3]) * v39;
            v40 = (v43[6] - v43[4]) * v40;
            v118.f64[0] = v39;
            v118.f64[1] = v40;
          }
        }

LABEL_60:
        v116.f64[0] = v39;
        v116.f64[1] = v40;
        if ((*(v35 + 40) & 0xF000) != 0x9000 || *(v35 + 72) != 0.0 || *(v35 + 80) != 0.0 || v41 && *(v41 + 32) || *(v35 + 88) != v39 || *(v35 + 96) != v40)
        {
          v38 &= CA::Render::Layer::apply_contents_transform(v35, &v117, &v116, *(a3 + 12) == 25);
        }

        CA::Rect::apply_transform(v117.f64, a2 + 8);
        if ((*(v35 + 46) & 4) != 0)
        {
          __asm { FMOV            V0.2D, #1.0 }

          v120 = _Q0;
          v49 = *a2;
          if (*a2)
          {
            do
            {
              (*(*v49 + 48))(v49, &v120);
              v49 = v49[1];
            }

            while (v49);
            _Q0 = v120;
          }

          v50 = v118.f64[1];
          if (v118.f64[0] <= v118.f64[1])
          {
            v51 = v118.f64[1];
          }

          else
          {
            v51 = v118.f64[0];
          }

          if (v51 < 1.79769313e308)
          {
            if (v118.f64[0] < v118.f64[1])
            {
              v50 = v118.f64[0];
            }

            if (v50 > 0.0)
            {
              __asm { FMOV            V2.2D, #-0.5 }

              v53 = vdivq_f64(_Q2, _Q0);
              v54 = vaddq_f64(v117, v53);
              v55 = vsubq_f64(v118, vaddq_f64(v53, v53));
              v117 = v54;
              v118 = v55;
              if (v55.f64[0] <= 0.0 || v55.f64[1] <= 0.0)
              {
                v118 = 0uLL;
              }
            }
          }
        }

        v108 = v118;
        v109 = v117;
        v115[0] = v117;
        v115[1] = v118;
        CA::Render::Updater::LayerShapes::union_bounds(a4, &v117, ((*(a2 + 64) & 0x8000) == 0));
        if ((*(a2 + 65) & 0x80) != 0 && *(a4 + 72))
        {
          v57 = v108;
          v120 = v109;
          v121 = v108;
          v58 = *a2;
          if (*a2)
          {
            do
            {
              (*(*v58 + 40))(v58, &v120);
              v58 = v58[1];
            }

            while (v58);
            v57 = v121;
          }

          v59 = v57.f64[1];
          if (v57.f64[0] <= v57.f64[1])
          {
            v60 = v57.f64[1];
          }

          else
          {
            v60 = v57.f64[0];
          }

          if (v60 < 1.79769313e308)
          {
            if (v57.f64[0] < v57.f64[1])
            {
              v59 = v57.f64[0];
            }

            if (v59 > 0.0)
            {
              v61 = vaddq_f64(v57, vdupq_n_s64(0x3F60000000000000uLL));
              v120 = vaddq_f64(v120, vdupq_n_s64(0xBF50000000000000));
              v121 = v61;
              if (v61.f64[0] <= 0.0 || v61.f64[1] <= 0.0)
              {
                v121 = 0uLL;
              }
            }
          }

          v62 = v121;
          v63 = vclezq_f64(v121);
          if ((vorrq_s8(vdupq_laneq_s64(v63, 1), v63).u64[0] & 0x8000000000000000) == 0)
          {
            v64 = *(a4 + 104);
            v65 = vclezq_f64(v64);
            if ((vorrq_s8(vdupq_laneq_s64(v65, 1), v65).u64[0] & 0x8000000000000000) != 0 || (v66 = *(a4 + 88), v67 = vaddq_f64(v66, v64), v68 = vmaxnmq_f64(v120, v66), v62 = vsubq_f64(vminnmq_f64(vaddq_f64(v120, v121), v67), v68), v69 = vclezq_f64(v62), (vorrq_s8(vdupq_laneq_s64(v69, 1), v69).u64[0] & 0x8000000000000000) != 0))
            {
              v121 = 0uLL;
              v62 = 0uLL;
            }

            else
            {
              v120 = v68;
              v121 = v62;
            }
          }

          v74 = vceqzq_f64(v62);
          if ((vorrq_s8(vdupq_laneq_s64(v74, 1), v74).u64[0] & 0x8000000000000000) != 0 || (v75 = vceqq_f64(v62, v62), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v75), 1), v75).u64[0] & 0x8000000000000000) != 0))
          {
            v111[0] = 0;
            v111[1] = 0;
          }

          else
          {
            v76 = vcvtpq_s64_f64(vmaxnmq_f64(v120, vdupq_n_s64(0xC1BFFFFFFF000000)));
            *v111 = vuzp1q_s32(v76, vsubq_s64(vcvtmq_s64_f64(vminnmq_f64(vaddq_f64(v120, v62), vdupq_n_s64(0x41C0000000000000uLL))), v76));
          }

          CA::shape_union((a4 + 72), v111, v56);
        }

        if (*(a3 + 12) != 25 && (*(*v9 + 168))(v9) != 1.0)
        {
          v77 = 0x2000000000;
          if ((*(a2 + 64) & 0x8000) == 0)
          {
            v77 = 0x800000000;
          }

          *(a2 + 72) |= v77;
        }

        v78 = v9[6];
        if (v78 && (*(*a1 + 1376) & 1) == 0)
        {
          v120 = xmmword_183E20E00;
          v121 = 0u;
          v122 = xmmword_183E20E60;
          memset(v123, 0, sizeof(v123));
          v124 = xmmword_183E20E00;
          v125 = 0u;
          v126 = xmmword_183E20E60;
          __asm { FMOV            V0.2D, #1.0 }

          v127[0] = _Q0;
          LOBYTE(v127[1]) &= 0xE0u;
          if (CA::Render::Layer::append_texture_transform(*(a2 + 56), &v120, v9, a3))
          {
            CA::Transform::concat(&v120, a2 + 8);
            v111[0] = &v120;
            v111[1] = v115;
            v112 = a2;
            v113 = a4;
            v114 = a1;
            if ((v127[1] & 0x10) != 0 && !CA::Mat4Impl::mat4_is_rectilinear(&v120, v80))
            {
              v138 = 0;
              v139 = 0;
              CA::Shape::get_bounds(v78, &v138);
              CA::Render::Updater::prepare_layer_contents(CA::Render::Updater::GlobalState &,CA::Render::Updater::LocalState &,CA::Render::Object *,CA::Render::Updater::LayerShapes &)::$_0::operator()(v111, &v138, v105, v106, v107);
            }

            else
            {
              v139 = 0;
              v140 = 0;
              v138 = v78;
              v110[0] = 0;
              v110[1] = 0;
              while (CA::ShapeIterator::iterate(&v138, v110))
              {
                CA::Render::Updater::prepare_layer_contents(CA::Render::Updater::GlobalState &,CA::Render::Updater::LocalState &,CA::Render::Object *,CA::Render::Updater::LayerShapes &)::$_0::operator()(v111, v110, v56, v81, v82);
              }
            }
          }

          else
          {
            *(a2 + 64) |= 2uLL;
          }

          if ((*(*(a2 + 48) + 24) & 0x40) != 0)
          {
            v83 = v9[6];
            if (v83)
            {
              CA::Shape::unref(v83);
              v9[6] = 0;
            }
          }
        }

        v84 = v38 ^ 1;
        if (!*(a4 + 56))
        {
          v84 = 1;
        }

        if ((v84 & 1) == 0)
        {
          CA::Render::Updater::union_opaque_rect(a1, a4, v56, v109, v108);
        }

        if (!v9[7] && (*(*v9 + 104))(v9) != 9 && (BYTE3(xmmword_1ED4E97EC) & 1) == 0)
        {
          v103 = *(*(a2 + 56) + 152);
          if (v103)
          {
            v104 = *(v103 + 24);
            if (v104)
            {
              if ((*(v104 + 584) & 2) != 0)
              {
                (*(*v9 + 96))(v9);
              }
            }
          }
        }

        v85 = *(a2 + 64);
        if ((v85 & 0x8000) != 0)
        {
          if (a1[50] == 1)
          {
            v85 |= 2uLL;
            *(a2 + 64) = v85;
          }

          v86 = *a1;
          if (*(a4 + 120) != *(*a1 + 200) || *(a4 + 124) != v86[51] || *(a4 + 128) != v86[52] || *(a4 + 132) != v86[53])
          {
            v87 = *a4;
            v88 = *(a4 + 16);
            v89 = *a2;
            v120 = *a4;
            v121 = v88;
            v122 = 0u;
            memset(v123, 0, sizeof(v123));
            *&v124 = 0;
            if (v89)
            {
              do
              {
                (*(*v89 + 24))(v89, &v120, 0);
                v89 = v89[1];
              }

              while (v89);
              v87 = v120;
              v88 = v121;
            }

            v90 = vrndaq_f64(v87);
            if (vaddvq_f64(vaddq_f64(vabdq_f64(v87, v90), vabdq_f64(v88, vrndaq_f64(v88)))) < 0.004)
            {
              v91 = v88.f64[1];
              v92 = v88.f64[0] <= v88.f64[1] ? v88.f64[1] : v88.f64[0];
              if (v92 < 1.79769313e308)
              {
                if (v88.f64[0] < v88.f64[1])
                {
                  v91 = v88.f64[0];
                }

                if (v91 > 0.0)
                {
                  v88 = vsubq_f64(vrndaq_f64(vaddq_f64(v87, v88)), v90);
                  v87 = v90;
                }
              }
            }

            v93 = *(a4 + 88);
            v94 = *(a4 + 104);
            v95 = vrndaq_f64(v93);
            if (vaddvq_f64(vaddq_f64(vabdq_f64(v93, v95), vabdq_f64(v94, vrndaq_f64(v94)))) >= 0.004)
            {
              goto LABEL_161;
            }

            v96 = *(a4 + 112);
            v97 = v94.f64[0] <= v94.f64[1] ? *(a4 + 112) : *(a4 + 104);
            if (v97 >= 1.79769313e308)
            {
              goto LABEL_161;
            }

            if (v94.f64[0] < v94.f64[1])
            {
              v96 = *(a4 + 104);
            }

            if (v96 > 0.0)
            {
              v94 = vsubq_f64(vrndaq_f64(vaddq_f64(v93, v94)), v95);
            }

            else
            {
LABEL_161:
              v95 = *(a4 + 88);
            }

            v98 = vorrq_s8(vcltzq_f64(v88), vclezq_f64(v94));
            if ((vorrq_s8(vdupq_laneq_s64(v98, 1), v98).u64[0] & 0x8000000000000000) != 0 || (v99 = vandq_s8(vcgeq_f64(vaddq_f64(v95, v94), vaddq_f64(v87, v88)), vcgeq_f64(v87, v95)), (vandq_s8(vdupq_laneq_s64(v99, 1), v99).u64[0] & 0x8000000000000000) == 0))
            {
              *(a2 + 72) |= 0x20C00000uLL;
            }

            v85 = *(a2 + 64);
          }
        }

        else
        {
          *(a2 + 72) |= 0x20C00000uLL;
        }

        if ((v85 & 0x80) != 0 && *(a3 + 12) == 25)
        {
          v126 = 0u;
          memset(v127, 0, 24);
          v124 = 0u;
          v125 = 0u;
          memset(v123, 0, sizeof(v123));
          v121 = 0u;
          v122 = 0u;
          v120 = 0u;
          v101.n128_f64[0] = CA::Transform::set(&v120, a2 + 8);
          v102 = *a2;
          if (*a2)
          {
            do
            {
              (*(*v102 + 56))(v102, &v120, v101);
              v102 = v102[1];
            }

            while (v102);
          }

          *(*(*(a3 + 16) + 24) + 92) = CA::Render::Updater::get_rotation_flags(&v120, v100) ^ ((*(*a1 + 292) & 2) != 0) ^ *(*(a2 + 48) + 24) & 1 ^ 1;
        }

        return;
      }

      v118 = 0uLL;
      v40 = 0.0;
      v39 = 0.0;
    }

    if (v41)
    {
      goto LABEL_58;
    }

    goto LABEL_60;
  }

  v10 = *(a3 + 12);
  if (v10 == 25)
  {
    v71 = *(a3 + 32);
    if (v71)
    {
      v72 = v71 + 2;
      if (atomic_fetch_add(v71 + 2, 1u))
      {
        CA::Render::Updater::prepare_layer_contents(a1, a2, v71, a4);
        if (atomic_fetch_add(v72, 0xFFFFFFFF) == 1)
        {
          v73 = *(*v71 + 16);

          v73(v71);
        }
      }

      else
      {
        atomic_fetch_add(v72, 0xFFFFFFFF);
      }
    }
  }

  else if (v10 == 26)
  {
    v11 = *(a4 + 56);
    v128 = 0.0;
    v126 = 0u;
    memset(v127, 0, sizeof(v127));
    v125 = 0u;
    v122 = 0u;
    v123[0] = 0;
    v120 = 0u;
    v121 = 0u;
    *&v123[1] = vbicq_s8(vdupq_n_s64(1uLL), vceqzq_s64(v11));
    v123[3] = 0;
    v124 = 0uLL;
    v12 = *(a4 + 96);
    *(&v124 + 1) = *(a4 + 88);
    *&v125 = v12;
    v13 = *(a4 + 112);
    *(&v125 + 1) = *(a4 + 104);
    *&v126 = v13;
    v14 = *(a4 + 124);
    DWORD2(v126) = *(a4 + 120);
    HIDWORD(v126) = v14;
    v15 = *(a4 + 132);
    LODWORD(v127[0]) = *(a4 + 128);
    DWORD1(v127[0]) = v15;
    v129 = 0;
    *v130 = *&v123[1];
    v131 = 0;
    v132 = __PAIR128__(*(&v124 + 1), 0);
    v133 = __PAIR128__(*(&v125 + 1), v12);
    v134 = v13;
    v135 = DWORD2(v126);
    v136 = __PAIR64__(v127[0], v14);
    v137 = v15;
    CA::Render::Updater::prepare_layer_contents(a1, a2, *(a3 + 24), &v120);
    CA::Render::Updater::prepare_layer_contents(a1, a2, *(a3 + 32), v127 + 8);
    CA::Render::Updater::LayerShapes::union_bounds(a4, &v120, 1);
    CA::Render::Updater::LayerShapes::union_bounds(a4, (v127 + 8), 1);
    v17 = v122;
    v18 = *(a4 + 32);
    if (v18 > *&v122)
    {
      *(a4 + 32) = v122;
      v18 = *&v17;
    }

    v19 = *(a4 + 40);
    if (v19 < *(&v17 + 1))
    {
      *(a4 + 40) = *(&v17 + 1);
      v19 = *(&v17 + 1);
    }

    v20 = v128;
    if (v18 > *(&v127[2] + 1))
    {
      *(a4 + 32) = *(&v127[2] + 1);
    }

    if (v19 < v20)
    {
      *(a4 + 40) = v20;
    }

    if (*(a4 + 56))
    {
      v21 = CA::Shape::intersect(v123[1], v130[0]);
      CA::Shape::unref(v123[1]);
      CA::Shape::unref(v130[0]);
      CA::shape_union((a4 + 56), v21, v22);
      CA::Shape::unref(v21);
    }

    if (*(a4 + 64))
    {
      CA::shape_union((a4 + 64), v123[2], v16);
      v24 = *(a4 + 64);
      if ((v24 & 1) == 0)
      {
        if (*(v24 + 4) < 257)
        {
          goto LABEL_21;
        }

        v111[0] = 0;
        v111[1] = 0;
        CA::Shape::get_bounds(v24, v111);
        CA::Shape::unref(*(a4 + 64));
        v24 = CA::Shape::new_shape(v111, v25);
        *(a4 + 64) = v24;
      }

      if (!v24)
      {
LABEL_24:
        CA::Shape::unref(v123[2]);
        CA::Shape::unref(v130[1]);
        return;
      }

LABEL_21:
      CA::shape_union((a4 + 64), v130[1], v23);
      v26 = *(a4 + 64);
      if ((v26 & 1) == 0 && *(v26 + 4) >= 257)
      {
        v111[0] = 0;
        v111[1] = 0;
        CA::Shape::get_bounds(v26, v111);
        CA::Shape::unref(*(a4 + 64));
        *(a4 + 64) = CA::Shape::new_shape(v111, v27);
      }

      goto LABEL_24;
    }
  }
}

uint64_t CA::Bounds::contains(int32x2_t *this, uint64_t a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      v4.i32[0] = a2 >> 48;
      v4.i32[1] = (a2 >> 16) >> 16;
      v3.i32[0] = a2 >> 17;
      v5 = (a2 >> 2) & 0x7FFF;
LABEL_7:
      v3.i32[1] = v5;
      v6 = this[1];
      v7 = vorr_s8(vcltz_s32(v3), vclez_s32(v6));
      if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) == 0)
      {
        v8 = vand_s8(vcge_s32(vadd_s32(*this, v6), vadd_s32(v4, v3)), vcge_s32(v4, *this));
        return vpmin_u32(v8, v8).u32[0] >> 31;
      }
    }

    return 0;
  }

  v2 = *(a2 + 4);
  if (v2 == 6)
  {
    return 0;
  }

  if (v2 == 12)
  {
    v4 = *(a2 + 28);
    v3.i32[0] = vsub_s32(vdup_lane_s32(v4, 1), v4).u32[0];
    v4.i32[1] = *(a2 + 20);
    v5 = *(a2 + 36) - v4.i32[1];
    goto LABEL_7;
  }

  v12 = *(a2 + 12);
  v10 = (a2 + 12);
  v11 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v13 = this->i32[0];
    v14 = this->i32[1];
    v15 = this[1].i32[0] + this->i32[0];
    v16 = this[1].i32[1] + v14;
    result = 1;
    while (1)
    {
      v17 = *(v10 + 1);
      v18 = &v10[4 * v17];
      if (v17 == 2)
      {
        v11 = *v18;
      }

      else
      {
        if (v11 < v14)
        {
          return 0;
        }

        v11 = *v18;
        if (*v18 > v16 || *(v10 + 2) < v13 || *(v18 - 1) > v15)
        {
          return 0;
        }
      }

      v10 += 4 * v17;
      if (v11 == 0x7FFFFFFF)
      {
        return result;
      }
    }
  }

  return 1;
}

BOOL CA::Render::BackdropLayer::has_background(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *(a1 + 12) & 0x1100;
  if (v3 == 256)
  {
    *a3 = 0;
  }

  return v3 == 256;
}

void CA::shape_map(CA::Shape **this, CA::Shape **a2, void (*a3)(CA::Rect *, void *), void (*a4)(CA::Rect *, void *), int32x4_t a5)
{
  v6 = *this;
  if (*this)
  {
    if (v6 == 1)
    {
      return;
    }

    goto LABEL_5;
  }

  if (*(v6 + 1) != 6)
  {
LABEL_5:
    v7 = CA::Shape::map(*this, a2, a3, a5);
    CA::Shape::unref(v6);
    *this = v7;
  }
}

uint64_t CA::Render::SDFLayer::get_bounds(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a4 = 0u;
    a4[1] = 0u;
  }

  return 1;
}

void CA::Render::Updater::SDFOp::map_bounds(CA::Render::Updater::SDFOp *a1, uint64_t a2)
{
  *v5.i64 = CA::Render::Updater::SDFOp::apply(a1, a2);
  if (*(a2 + 64))
  {
    CA::shape_map((a2 + 64), a1, CA::Render::Updater::SDFOp::map_bounds(CA::Render::Updater::LayerShapes &,BOOL)::$_0::__invoke, v4, v5);
  }

  v6 = *(a2 + 56);
  if (v6)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        goto LABEL_9;
      }
    }

    else if (*(v6 + 1) == 6)
    {
      goto LABEL_9;
    }

    CA::Shape::unref(v6);
    *(a2 + 56) = 1;
  }

LABEL_9:
  v7 = *(a2 + 48);
  if (v7)
  {
    *(v7 + 16) = 1;
    v8 = *(v7 + 8);
    if (v8)
    {
      CA::GenericRectTree<CA::Rect>::Pool::delete_node(*v7, v8);
      *(v7 + 8) = 0;
    }
  }
}

void CA::Render::Update::invalidate_context(CA::Render::Update *this, CA::Shape **a2, int32x2_t *a3)
{
  CA::Render::Context::invalidate(a2, a3, a3);

  CA::Render::Update::invalidate_backdrops(this, a3, 0, 0xFFFFFFFF);
}

uint64_t CA::Render::Updater::FilterOp::copy(uint64_t a1, uint64_t *a2)
{
  v4 = x_heap_malloc_small_(a2, 0x38uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) = 1;
    *(v4 + 18) = 0;
    *v4 = &unk_1EF1F8248;
  }

  v6 = x_heap_malloc_small_(a2, 0x28uLL);
  if (v6)
  {
    v7 = *(a1 + 24);
    v8 = *v7;
    v9 = v7[1];
    *(v6 + 32) = *(v7 + 4);
    *v6 = v8;
    *(v6 + 16) = v9;
  }

  *(v5 + 24) = v6;
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = (v10 + 8);
    if (!atomic_fetch_add((v10 + 8), 1u))
    {
      v10 = 0;
      atomic_fetch_add(v11, 0xFFFFFFFF);
    }
  }

  *(v5 + 32) = v10;
  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = (v12 + 8);
    if (!atomic_fetch_add((v12 + 8), 1u))
    {
      v12 = 0;
      atomic_fetch_add(v13, 0xFFFFFFFF);
    }
  }

  *(v5 + 40) = v12;
  *(v5 + 48) = *(a1 + 48);
  return v5;
}

__n128 X::small_vector_base<CA::Render::Update::EDRRequest>::push_back(void *a1, __n128 *a2)
{
  v4 = a1[1];
  v5 = ((v4 - *a1) >> 4) + 1;
  if (a1[3] < v5)
  {
    X::small_vector_base<CA::Render::Update::EDRRequest>::grow(a1, v5);
    v4 = a1[1];
  }

  result = *a2;
  *v4 = *a2;
  a1[1] += 16;
  return result;
}

uint64_t CA::Render::ImageQueue::resolved_display_attributes(CA::Render::ImageQueue *this, const CA::Render::Update *a2)
{
  v3 = *(this + 53);
  if (!v3)
  {
    operator new();
  }

  *v3 = *(a2 + 24);
  v4 = *(a2 + 25);
  v5 = *(a2 + 26);
  v6 = *(a2 + 28);
  *(v3 + 48) = *(a2 + 27);
  *(v3 + 64) = v6;
  *(v3 + 16) = v4;
  *(v3 + 32) = v5;
  v7 = *(a2 + 29);
  v8 = *(a2 + 30);
  v9 = *(a2 + 31);
  *(v3 + 128) = *(a2 + 64);
  *(v3 + 96) = v8;
  *(v3 + 112) = v9;
  *(v3 + 80) = v7;
  v10 = *(this + 53);
  v11 = *(v10 + 12);
  if (v11 == 0.0 || (v12 = *(v10 + 20), v12 == 0.0))
  {
    if (*(this + 23) <= 0.0)
    {
      if (*(this + 59) <= 0.0)
      {
        v20 = *(v10 + 4);
        *(v10 + 12) = v20;
        v21 = v20 * 0.01;
        *(v10 + 20) = v21;
        *(v10 + 28) = 1065353216;
        return v10;
      }

      v16 = *(this + 61);
      *(v10 + 12) = v16;
      v17 = *(this + 63);
      *(v10 + 20) = v17;
      v18 = *(this + 66);
    }

    else
    {
      v16 = *(this + 25);
      *(v10 + 12) = v16;
      v17 = *(this + 27);
      *(v10 + 20) = v17;
      v18 = *(this + 30);
    }

    v19 = v16 / (v17 * 100.0);
    *(v10 + 28) = v19;
    *(v10 + 32) = v18;
  }

  else
  {
    if ((*(this + 104) + *(this + 105)) <= 1.0)
    {
      v13 = *(this + 104) + *(this + 105);
    }

    else
    {
      v13 = 1.0;
    }

    if ((*(v10 + 62) & 1) == 0 && (*(v10 + 68) - 2) >= 3 && v13 < 1.0)
    {
      v14 = log2f(*(v10 + 20));
      v15 = exp2f((v13 * v14) * ((v13 * v13) * (v13 * v13)));
      *(v10 + 20) = v15;
      *(v10 + 12) = (v15 * v11) / v12;
    }
  }

  return v10;
}

uint64_t CA::Render::Updater::TransformOp::copy(uint64_t a1, uint64_t *a2)
{
  v3 = x_heap_malloc_small_(a2, 0xB8uLL);
  v4 = v3;
  if (v3)
  {
    is_2d_affine = 1;
    *(v3 + 16) = 1;
    *(v3 + 18) = 0;
    *v3 = &unk_1EF1F82D0;
    CA::Transform::operator=(v3 + 24, a1 + 24);
    if ((*(a1 + 168) & 0x10) != 0)
    {
      is_2d_affine = CA::Mat4Impl::mat4_is_2d_affine((a1 + 24), v6);
    }

    *(v4 + 176) = is_2d_affine;
  }

  return v4;
}

uint64_t CA::Render::ImageQueue::is_protected(CA::Render::ImageQueue *this)
{
  v1 = atomic_load((*(*(this + 2) + 24) + 8));
  if ((v1 & 4) != 0)
  {
    return 1;
  }

  result = *(this + 8);
  if (result)
  {
    return (*(*result + 248))();
  }

  result = *(this + 10);
  if (result)
  {
    return (*(*result + 248))();
  }

  result = *(this + 3);
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

BOOL CA::Render::GradientLayer::has_background(CA::Render::GradientLayer *a1, uint64_t a2, BOOL *a3)
{
  result = CA::Render::GradientLayer::is_valid(a1);
  if (result)
  {
    if ((*(a1 + 3) & 0x800) != 0)
    {
      v6 = *(a1 + 3) & 0x1000;
    }

    else
    {
      v6 = *(a1 + 7) & 0x800;
    }

    *a3 = v6 != 0;
  }

  return result;
}

uint64_t CA::Render::Updater::get_rotation_flags(CA::Render::Updater *this, CA::Transform *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  LOBYTE(v2) = *(this + 144);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(this + 3);
    v17 = *(this + 2);
    v18 = *this;
    v22 = *(this + 1);
    v23[0] = *this;
    v23[1] = v22;
    v24 = v17;
    v21 = v4;
    v5 = *(this + 4);
    v6 = *(this + 5);
    v7 = *(this + 6);
    v8 = *(this + 7);
    v25 = v4;
    v26 = v5;
    v19 = *(&v8 + 1);
    v20 = *&v6;
    v27 = v6;
    v28 = v7;
    v29 = v8;
    if (CA::Mat4Impl::mat4_is_affine(this, a2))
    {
      v12 = v17;
      v11 = v18;
      v10.i64[0] = v18.i64[1];
      v9.i64[0] = v17.i64[1];
      if (fabs(*&v18.i64[1]) >= 1.0e-15 || fabs(*v17.i64) >= 1.0e-15)
      {
        if (fabs(*v18.i64) < 1.0e-15 && fabs(*&v17.i64[1]) < 1.0e-15)
        {
          v24.i64[1] = 0;
          *&v23[0] = 0;
          v9.i64[0] = 0;
          v11.i64[0] = 0;
        }
      }

      else
      {
        v24.i64[0] = 0;
        *(&v23[0] + 1) = 0;
        v12.i64[0] = 0;
        v10.i64[0] = 0;
      }

      if (vabdd_f64(fabs(*v10.i64), fabs(*v12.i64)) >= 1.0e-15)
      {
        if (vabdd_f64(fabs(*v11.i64), fabs(*v9.i64)) < 1.0e-15)
        {
          v15.f64[0] = NAN;
          v15.f64[1] = NAN;
          v24.i64[1] = vbslq_s8(vnegq_f64(v15), v11, v9).u64[0];
        }
      }

      else
      {
        v14.f64[0] = NAN;
        v14.f64[1] = NAN;
        v24.i64[0] = vbslq_s8(vnegq_f64(v14), v10, v12).u64[0];
      }

      CA::Transform::set(this, v23, 1);
      v2 = *(this + 144);
      v13 = (v2 >> 4) & 1;
    }

    else
    {
      v13 = 1;
    }

    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v22), vceqzq_f64(v21))))) & 1) == 0 && v20 == 1.0 && v13 && v19 == 1.0)
    {
      *&v29 = 0;
      v26 = 0uLL;
      v27 = xmmword_183E20E00;
      CA::Transform::set(this, v23, 1);
      LOBYTE(v2) = *(this + 144);
    }
  }

  if ((v2 & 0x10) != 0)
  {
    return 0;
  }

  else
  {
    return v2 & 7;
  }
}

void CA::Render::ImageQueue::set_visible(CA::Render::ImageQueue *this, int a2)
{
  v3 = *(*(this + 2) + 24);
  if (*(v3 + 32) != a2)
  {
    *(v3 + 32) = a2;
    if ((a2 & 1) == 0)
    {
      CAShmemImageQueueCollectable(v3, *(this + 115), 0, 0);
    }
  }
}

CA::Render::Filter *CA::Render::Filter::Filter(CA::Render::Filter *this, int a2, atomic_uint *a3, atomic_uint *a4)
{
  *(this + 2) = 1;
  *(this + 3) = 17;
  ++dword_1ED4EAA7C;
  *this = &unk_1EF1F5438;
  *(this + 2) = 0;
  *(this + 6) = a2;
  if (a3)
  {
    v5 = a3 + 2;
    if (!atomic_fetch_add(a3 + 2, 1u))
    {
      a3 = 0;
      atomic_fetch_add(v5, 0xFFFFFFFF);
    }
  }

  *(this + 4) = a3;
  if (a4)
  {
    v6 = a4 + 2;
    if (!atomic_fetch_add(a4 + 2, 1u))
    {
      a4 = 0;
      atomic_fetch_add(v6, 0xFFFFFFFF);
    }
  }

  *(this + 5) = a4;
  v7 = *(this + 6);
  if (CA::Render::filter_table || (CA::Render::add_filter(0x228, CA::OGL::page_curl_filter_init(void)::page_curl, a3), CA::Render::add_filter(0x118, CA::OGL::initialize_filters(void)::gaussian_blur_filter, v8), CA::Render::add_filter(0x2E1, CA::OGL::initialize_filters(void)::variable_blur_filter, v9), CA::Render::add_filter(0x1D3, CA::OGL::initialize_filters(void)::lanczos_resize_filter, v10), CA::Render::add_filter(0x39, CA::OGL::initialize_filters(void)::average_color_filter, v11), CA::Render::add_filter(0x1DD, CA::OGL::initialize_filters(void)::limit_apl_filter, v12), CA::Render::add_filter(0x60, CA::OGL::initialize_filters(void)::chromatic_aberration_filter, v13), CA::Render::add_filter(0x61, CA::OGL::initialize_filters(void)::chromatic_aberration_map_filter, v14), CA::Render::add_filter(0xCA, CA::OGL::initialize_filters(void)::displacement_filter, v15), CA::Render::add_filter(0x11B, CA::OGL::initialize_filters(void)::glass_background_filter, v16), CA::Render::add_filter(0x11C, &CA::OGL::initialize_filters(void)::glass_foreground_filter, v17), CA::Render::filter_table))
  {
    os_unfair_lock_lock(&CA::Render::filter_lock);
    v18 = x_hash_table_lookup(CA::Render::filter_table, v7, 0);
    os_unfair_lock_unlock(&CA::Render::filter_lock);
  }

  else
  {
    v18 = 0;
  }

  *(this + 6) = v18;
  if (CA::Render::Filter::evaluate_identity(this))
  {
    *(this + 3) |= 0x40000u;
  }

  v19 = *(this + 5);
  if (v19)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = 0;
      v22 = v19 + 24;
      while (1)
      {
        v23 = *(v22 + 8 * v21);
        if (*(v23 + 16) == 431)
        {
          break;
        }

        if (v20 == ++v21)
        {
          return this;
        }
      }

      if ((v21 & 0x80000000) == 0 && *(v23 + 24))
      {
        *(this + 3) |= 0x80000u;
      }
    }
  }

  return this;
}

void CA::Render::Update::added_all_contexts(CA::Render::Update *this, CA::Shape *a2, const CA::Shape *a3)
{
  v3 = this;
  v224 = *MEMORY[0x1E69E9840];
  for (i = *(this + 68); i; i = *i)
  {
    v5 = *(i[1] + 256);
    if (*(v5 + 120) == 1 && *(v5 + 116) == *(v3 + 68))
    {
      a2 = *(*(v5 + 56) + 544);
      if (a2)
      {
        CA::Render::Update::invalidate_backdrops(v3, a2, 0, 1);
        CA::shape_union(v3 + 2, *(*(v5 + 56) + 544), v6);
        v7 = *(v5 + 56);
        v8 = *(v7 + 544);
        v218[0] = 0;
        v218[1] = 0;
        CA::Shape::get_bounds(v8, v218);
        if (*(v7 + 584))
        {
          CA::shape_union((v7 + 584), v218, v10);
        }

        else
        {
          *(v7 + 584) = CA::Shape::new_shape(v218, v9);
        }
      }
    }
  }

  v11 = *(v3 + 79);
  if (v11)
  {
    do
    {
      v12 = *v11;
      if (*v11)
      {
        v13 = *v11;
        while ((*(v13 + 3) & 0xC00000018) == 0 && (~*(*(v13 + 4) + 40) & 0x410000000000000) != 0)
        {
          v13 = *(v13 + 11);
          if (!v13)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
LABEL_15:
        v14 = *(*(v12 + 32) + 56);
        CA::Render::Update::invalidate_backdrops(v3, *(v14 + 544), 0, 0);
        CA::shape_union(v3 + 2, *(v14 + 544), v15);
      }

      if (atomic_fetch_add(v12 + 4, 0xFFFFFFFF) == 1)
      {
        CA::Render::LayerNode::delete_node(v12, a2);
      }

      v11 = v11[1];
    }

    while (v11);
    v16 = *(v3 + 79);
    if (v16)
    {
      do
      {
        v17 = v16[1];
        free(v16);
        v16 = v17;
      }

      while (v17);
    }

    *(v3 + 79) = 0;
  }

  v18 = *(v3 + 68);
  if (!v18)
  {
    goto LABEL_169;
  }

  v19 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
  v210 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v211 = v19;
  v19.i64[0] = 0x7FF0000000000000;
  v204 = v19;
  v208 = v19;
  v19.i32[0] = 1073741822;
  v202 = v19;
  v203 = v19;
  v201 = v19;
  v200 = v3;
  do
  {
    v20 = *(*(v18 + 8) + 256);
    os_unfair_lock_lock((v20 + 52));
    v21 = *(v20 + 56);
    os_unfair_lock_lock((v21 + 40));
    LODWORD(v24) = *(*(v20 + 56) + 64);
    v25 = 0.0;
    if (*&v24 != 1.0)
    {
      *&v24 = 0.5 / *&v24;
      v25 = ceilf(*&v24);
    }

    v26 = *(v3 + 68);
    if (*(v21 + 56) != v26 || *(v21 + 488) == v26)
    {
      LOBYTE(v27) = 0;
      goto LABEL_29;
    }

    v60 = *(v3 + 38);
    v61 = *(v3 + 78);
    v62 = *(v21 + 12);
    *(v21 + 12) = v62 & 0xFFFFFBFF;
    *(v21 + 488) = v26;
    v63 = *(v21 + 624);
    if (v63)
    {
      LODWORD(v63) = *(v63 + 16);
    }

    v64 = (v60 & 0x38000) != 0;
    v65 = (v62 >> 10) & 1;
    if (*(v21 + 620) != v63)
    {
      v65 = 1;
    }

    *(v21 + 620) = v63;
    v66 = ((v62 & 0x800) == 0) | v65;
    if (*(v21 + 688) == v64)
    {
      v66 = v65;
    }

    if (v61)
    {
      v67 = *(v21 + 48);
      if (!v67 || *(v67 + 8) != v61)
      {
        v66 = 1;
      }
    }

    v68 = (*(v21 + 632) != 0) | v66;
    v69 = *(v21 + 72);
    v70 = *(v21 + 80);
    v71 = 0xAAAAAAAAAAAAAAABLL * ((v70 - v69) >> 6);
    if (v70 != v69)
    {
      do
      {
        v72 = v71 - 1;
        if (0xAAAAAAAAAAAAAAABLL * ((v70 - v69) >> 6) <= v71 - 1)
        {
LABEL_214:
          __assert_rtn("operator[]", "x-small-vector.h", 91, "pos < size () && Out of bounds access");
        }

        v73 = v69 + 192 * v72;
        if (*(v73 + 184) != v26 || !*(v73 + 24))
        {
          v74 = (v69 + 192 * v71);
          if (v74 != v70)
          {
            v75 = v74 - 12;
            do
            {
              v76 = v75[13];
              *v75 = v75[12];
              v75[1] = v76;
              v77 = v75[15];
              v75[2] = v75[14];
              v75[3] = v77;
              v78 = v75[17];
              v75[4] = v75[16];
              v75[5] = v78;
              v79 = v75[19];
              v75[6] = v75[18];
              v75[7] = v79;
              v24 = v75[20];
              v80 = v75[21];
              v81 = v75[22];
              *(v75 + 172) = *(v75 + 364);
              v75[9] = v80;
              v75[10] = v81;
              v82 = v75 + 24;
              v75[8] = v24;
              v75 += 12;
            }

            while (v82 != v70);
            v69 = *(v21 + 72);
            v70 = *(v21 + 80);
          }

          if (v70 <= v69)
          {
            __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
          }

          v70 -= 12;
          *(v21 + 80) = v70;
          v68 = 1;
        }

        v71 = v72;
      }

      while (v72);
      v71 = 0xAAAAAAAAAAAAAAABLL * ((v70 - v69) >> 6);
    }

    v83 = 126 - 2 * __clz(v71);
    if (v70 == v69)
    {
      v84 = 0;
    }

    else
    {
      v84 = v83;
    }

    std::__introsort<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *,false>(v69, v70, v84, 1, *&v24);
    v85 = *(v21 + 72);
    v86 = *(v21 + 80) - v85;
    if (!v86)
    {
      v90.f64[0] = 0.0;
      v207 = 0u;
      v91 = 0uLL;
      goto LABEL_152;
    }

    v87 = v86 >> 6;
    v88 = 0xAAAAAAAAAAAAAAABLL * v87 - 1;
    v89 = (v85 + 192 * v88);
    v90 = v89[2];
    v91 = v89[3];
    v207 = v90;
    if (0xAAAAAAAAAAAAAAABLL * v87 == 1)
    {
      goto LABEL_151;
    }

    v92 = 0;
    v206 = v89[6];
    v209 = v89[7];
    v205 = vaddq_f64(v206, v209);
    v93 = 181;
    do
    {
      v221 = 0u;
      v219 = 0u;
      v220 = 0u;
      *v218 = 0u;
      v94 = *(v21 + 72);
      v95 = 0xAAAAAAAAAAAAAAABLL * ((*(v21 + 80) - v94) >> 6);
      if (v95 <= v92)
      {
        goto LABEL_214;
      }

      v96 = *(v94 + v93 - 141);
      v97 = *(v94 + v93 - 133);
      v98 = *(v94 + v93 - 125);
      v218[0] = *(v94 + v93 - 149);
      v218[1] = *&v96;
      v219.f64[0] = v97 + *v218;
      v219.f64[1] = v96;
      v220.f64[0] = v97 + *v218;
      v220.f64[1] = v98 + v96;
      *&v221.f64[0] = v218[0];
      v221.f64[1] = v98 + v96;
      *&v214.f64[0] = &unk_1EF1FECF0;
      *&v214.f64[1] = 4;
      *&v215.f64[0] = v218;
      if (v95 <= v88)
      {
        goto LABEL_214;
      }

      v212 = v91;
      CA::Render::LayerNode::MapGeometry::map(&v214, *(v94 + v93 - 157), *(v94 + 192 * v88 + 24));
      v91 = v212;
      v99 = vbslq_s8(vcgtq_f64(v219, *v218), *v218, v219);
      v100 = vbslq_s8(vcgtq_f64(v221, v220), v220, v221);
      v101 = vbslq_s8(vcgtq_f64(v100, v99), v99, v100);
      v102 = vbslq_s8(vcgtq_f64(*v218, v219), *v218, v219);
      v103 = vbslq_s8(vcgtq_f64(v220, v221), v220, v221);
      v104 = vcgtq_f64(v102, v103);
      v105 = vbslq_s8(v104, v102, v103);
      v106 = vsubq_f64(v105, v101);
      v107 = vaddvq_f64(v106);
      v104.i64[0] = *&v107 & 0x7FFFFFFFFFFFFFFFLL;
      v108 = vdupq_lane_s64(vcgtq_s64(v208, v104).i64[0], 0);
      v109 = vbslq_s8(v108, v106, v210);
      v110 = vbslq_s8(v108, v101, v211);
      v111 = vclezq_f64(v212);
      v112 = vclezq_f64(v109);
      v113 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v112, v111), vzip2q_s64(v112, v111))));
      if ((v113.i8[4] & 1) == 0)
      {
        if (v113.i8[0])
        {
          goto LABEL_96;
        }

        *&v109.f64[0] = *&v107 & 0x7FFFFFFFFFFFFFFFLL;
        v110 = vminnmq_f64(v207, v110);
        v109 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v207, v212), vbslq_s8(vdupq_lane_s64(vcgtq_s64(v204, v109).i64[0], 0), v105, vdupq_n_s64(0x7FDFFFFFFFFFFFFFuLL))), v110);
LABEL_95:
        v207 = v110;
        v91 = v109;
        goto LABEL_96;
      }

      if ((v113.i8[0] & 1) == 0)
      {
        goto LABEL_95;
      }

LABEL_96:
      v114 = *(v94 + v93 - 69);
      v115 = vorrq_s8(vcltzq_f64(v114), vclezq_f64(v209));
      if ((vorrq_s8(vdupq_laneq_s64(v115, 1), v115).u64[0] & 0x8000000000000000) != 0)
      {
        LOBYTE(v117) = 0;
      }

      else
      {
        v116 = vandq_s8(vcgeq_f64(v205, vaddq_f64(*(v94 + v93 - 85), v114)), vcgeq_f64(*(v94 + v93 - 85), v206));
        v117 = vandq_s8(vdupq_laneq_s64(v116, 1), v116).u64[0] >> 63;
      }

      *(v94 + v93) = v117;
      ++v92;
      v93 += 192;
    }

    while (v88 != v92);
    v90.f64[0] = v207.f64[0];
LABEL_151:
    v3 = v200;
LABEL_152:
    if (*(v21 + 552) != v90.f64[0])
    {
      v176 = v207.f64[1];
LABEL_157:
      v27 = 1;
      goto LABEL_158;
    }

    v176 = v207.f64[1];
    if (*(v21 + 560) != v207.f64[1] || *(v21 + 568) != v91.f64[0])
    {
      goto LABEL_157;
    }

    v27 = (*(v21 + 576) != v91.f64[1]) | v68;
LABEL_158:
    *(v21 + 552) = v90.f64[0];
    *(v21 + 560) = v176;
    *(v21 + 568) = v91;
    if (*(v21 + 48))
    {
      v177 = 0;
    }

    else
    {
      v177 = (*(v21 + 13) & 8) == 0;
    }

    if ((v27 | v177))
    {
      v178 = *(v21 + 544);
      if (v178)
      {
        if (*(v21 + 584))
        {
          CA::Shape::unref(*(v21 + 584));
          v178 = *(v21 + 544);
        }

        *(v21 + 584) = CA::Shape::ref(v178, v22);
      }
    }

LABEL_29:
    v28 = *(v21 + 600);
    if (v28)
    {
      CA::Shape::unref(v28);
    }

    v29 = *(v21 + 592);
    if (v29)
    {
      v29 = CA::Shape::ref(v29, v22);
    }

    *(v21 + 600) = v29;
    if (v27)
    {
      v30 = *(v21 + 544);
      goto LABEL_35;
    }

    if (BYTE9(xmmword_1ED4E980C) == 1)
    {
      v30 = *(v21 + 544);
      if (v30)
      {
LABEL_35:
        CA::shape_union(v3 + 2, v30, v23);
      }
    }

    os_unfair_lock_unlock((v21 + 40));
    v31 = *(v18 + 32);
    if (v31 >= *(v18 + 36))
    {
      v31 = *(v18 + 36);
    }

    if (v31 >= 1)
    {
      v217 = 0uLL;
      v216 = 0uLL;
      v32 = *(v18 + 32);
      v33 = *(v20 + 88);
      v34 = vorr_s8(vcltz_s32(v33), vclez_s32(v32));
      if ((vpmax_u32(v34, v34).u32[0] & 0x80000000) == 0 && (*&v35 = *(v20 + 80), v36 = vand_s8(vcge_s32(vadd_s32(*(v18 + 24), v32), vadd_s32(*&v35, v33)), vcge_s32(*&v35, *(v18 + 24))), (vpmin_u32(v36, v36).u32[0] & 0x80000000) != 0))
      {
        *&v217 = *(v20 + 80);
        *(&v217 + 1) = v33;
        v162 = v33.i32[0];
        v163 = v33.i32[1];
        *(&v35 + 1) = v33;
        v216 = v35;
      }

      else
      {
        v37.i32[1] = 0;
        v37.i64[1] = 0;
        v215 = 0u;
        v38 = v32.i32[0];
        if (v32.i32[0] <= v32.i32[1])
        {
          v38 = v32.i32[1];
        }

        v37.i32[0] = v38;
        v39 = *(v18 + 24);
        v40.i64[0] = v39;
        v40.i64[1] = SHIDWORD(v39);
        v45.i64[1] = v211.i64[1];
        v41 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v37, v203), 0), v211, vcvtq_f64_s64(v40));
        v40.i64[0] = v32.i32[0];
        v40.i64[1] = v32.i32[1];
        v42 = vcvtq_f64_s64(v40);
        v43 = vdup_n_s32(v38 > 1073741822);
        v40.i64[0] = v43.u32[0];
        v40.i64[1] = v43.u32[1];
        v44 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v40, 0x3FuLL)), v210, v42);
        v214 = v41;
        v215 = v44;
        v45.i32[0] = *(v18 + 108);
        if (*v45.i32 != 0.0)
        {
          v46 = (*(v20 + 64) + *(v20 + 72) / 2);
          v47 = *v41.i64 - v46;
          v48 = 1.0 / ((*v45.i32 * 2.0) + 1.0);
          *v45.i64 = v48;
          if (v48 != 1.0 && v44.f64[0] < 1.79769313e308)
          {
            v47 = v47 * *v45.i64;
            v215.f64[0] = v44.f64[0] * *v45.i64;
          }

          v50 = *(v20 + 68) + *(v20 + 76) / 2;
          v51 = *&v41.i64[1] - v50;
          v52 = v44.f64[1];
          if (v48 != 1.0 && v44.f64[1] < 1.79769313e308)
          {
            v51 = v51 * *v45.i64;
            *v45.i64 = v44.f64[1] * *v45.i64;
            *&v215.f64[1] = v45.i64[0];
          }

          v45.i32[0] = v38;
          v54 = *(v18 + 24);
          v55.i64[0] = v54;
          v55.i64[1] = SHIDWORD(v54);
          v56 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v45, v202), 0), v211, vcvtq_f64_s64(v55));
          v214.f64[0] = v47 + v46;
          v214.f64[1] = v51 + v50;
          v57 = vclezq_f64(v215);
          v58 = vclezq_f64(v44);
          v59 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v58, v57), vzip2q_s64(v58, v57))));
          if (v59.i8[4])
          {
            if ((v59.i8[0] & 1) == 0)
            {
              v214 = v56;
              v215.f64[0] = v44.f64[0];
              goto LABEL_103;
            }
          }

          else if ((v59.i8[0] & 1) == 0)
          {
            v118 = vminnmq_f64(v214, v56);
            v119 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v214, v215), vaddq_f64(v56, v44)), v118);
            v214 = v118;
            v52 = v119.f64[1];
            v215.f64[0] = v119.f64[0];
LABEL_103:
            v215.f64[1] = v52;
          }
        }

        v213[0] = &unk_1EF1FBD80;
        v213[1] = 1;
        v213[2] = &v214;
        CA::Render::LayerNode::MapGeometry::map(v213, 0, *(v18 + 8));
        CA::Rect::apply_transform(v214.f64, v18 + 48);
        v120 = *(v18 + 88);
        v121 = v214;
        v122 = v215;
        *v218 = v214;
        v219 = v215;
        v220 = 0u;
        v221 = 0u;
        v222 = 0u;
        v223 = 0;
        if (v120)
        {
          do
          {
            (*(*v120 + 24))(v120, v218, 0);
            v120 = v120[1];
          }

          while (v120);
          v121 = *v218;
          v122 = v219;
        }

        v215 = v122;
        v123 = *(v3 + 26);
        v124 = v123;
        if (v123 <= SHIDWORD(v123))
        {
          v124 = HIDWORD(v123);
        }

        v125 = vclezq_f64(v122);
        if ((vorrq_s8(vdupq_laneq_s64(v125, 1), v125).u64[0] & 0x8000000000000000) == 0)
        {
          v126.i64[0] = v123;
          v126.i64[1] = SHIDWORD(v123);
          v127 = vcvtq_f64_s64(v126);
          v128 = vdup_n_s32(v124 > 1073741822);
          v126.i64[0] = v128.u32[0];
          v126.i64[1] = v128.u32[1];
          v129 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v126, 0x3FuLL)), v210, v127);
          v130 = vclezq_f64(v129);
          v131 = vdupq_laneq_s64(v130, 1);
          if ((vorrq_s8(v131, v130).u64[0] & 0x8000000000000000) != 0 || (v132 = *(v3 + 25), v133.i64[0] = v132, v133.i64[1] = SHIDWORD(v132), v131.i32[0] = v124, v134 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v131, v201), 0), v211, vcvtq_f64_s64(v133)), v135 = vaddq_f64(v134, v129), v136 = vmaxnmq_f64(v121, v134), v122 = vsubq_f64(vminnmq_f64(vaddq_f64(v121, v122), v135), v136), v137 = vclezq_f64(v122), (vorrq_s8(vdupq_laneq_s64(v137, 1), v137).u64[0] & 0x8000000000000000) != 0))
          {
            v215 = 0uLL;
            v122 = 0uLL;
          }

          else
          {
            v214 = v136;
            v215 = v122;
            v121 = v136;
          }
        }

        v138 = vceqzq_f64(v122);
        v139 = vorrq_s8(vdupq_laneq_s64(v138, 1), v138).u64[0];
        v140 = 0uLL;
        if ((v139 & 0x8000000000000000) == 0)
        {
          v141 = vceqq_f64(v122, v122);
          if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v141), 1), v141).u64[0] & 0x8000000000000000) == 0)
          {
            v142 = vmaxnmq_f64(v121, vdupq_n_s64(0xC1BFFFFFFF000000));
            v143 = vminnmq_f64(vaddq_f64(v121, v122), vdupq_n_s64(0x41C0000000000000uLL));
            v144 = vcvtmq_s64_f64(v142);
            v140 = vuzp1q_s32(v144, vsubq_s64(vcvtpq_s64_f64(v143), v144));
          }
        }

        v145 = vextq_s8(v140, v140, 8uLL).u64[0];
        v146 = *(v18 + 32);
        v147 = vclez_s32(v145);
        v148 = vpmax_u32(v147, v147).u32[0];
        v149 = vclez_s32(v146);
        v150 = vpmax_u32(v149, v149).u32[0];
        if ((v148 & 0x80000000) != 0)
        {
          if ((v150 & 0x80000000) == 0)
          {
            v140.i64[0] = *(v18 + 24);
LABEL_122:
            v140.u64[1] = v146;
            v145 = vextq_s8(v140, v140, 8uLL).u64[0];
          }
        }

        else if ((v150 & 0x80000000) == 0)
        {
          v151 = *(v18 + 24);
          v152 = vadd_s32(*v140.i8, v145);
          *v140.i8 = vmin_s32(*v140.i8, v151);
          v146 = vsub_s32(vmax_s32(v152, vadd_s32(v151, v146)), *v140.i8);
          goto LABEL_122;
        }

        v153 = vclez_s32(v145);
        if ((vpmax_u32(v153, v153).u32[0] & 0x80000000) != 0 || (v154 = *(v20 + 88), v155 = vclez_s32(v154), (vpmax_u32(v155, v155).u32[0] & 0x80000000) != 0) || (v156 = *(v20 + 80), v157 = vadd_s32(*v140.i8, v145), v158 = vadd_s32(v156, v154), v159 = vmax_s32(*v140.i8, v156), v160 = vsub_s32(vmin_s32(v157, v158), v159), v161 = vclez_s32(v160), (vpmax_u32(v161, v161).u32[0] & 0x80000000) != 0))
        {
          v163 = 0;
          v162 = 0;
        }

        else
        {
          v162 = v160.i32[0];
          v163 = v160.i32[1];
          *&v164 = v159;
          *(&v164 + 1) = v160;
          v216 = v164;
          v217 = v164;
          if (v160.i32[0] <= v160.i32[1])
          {
            v165 = v160.i32[1];
          }

          else
          {
            v165 = v160.i32[0];
          }

          if (v160.i32[0] >= v160.i32[1])
          {
            v166 = v160.i32[1];
          }

          else
          {
            v166 = v160.i32[0];
          }

          if (v165 <= 1073741822 && v166 >= 1)
          {
            v168 = -v25;
            *&v216 = vadd_s32(v159, vdup_n_s32(v168));
            v169 = v160.i32[0] - 2 * v168;
            v170 = v160.i32[1] - 2 * v168;
            *(&v216 + 1) = __PAIR64__(v170, v169);
            if (v169 < 1 || v170 <= 0)
            {
              *(&v216 + 1) = 0;
            }
          }

          v171 = vclez_s32(*(&v216 + 8));
          if ((vpmax_u32(v171, v171).u32[0] & 0x80000000) == 0)
          {
            *&v172 = vmax_s32(*&v216, v156);
            v173 = vsub_s32(vmin_s32(vadd_s32(*&v216, *(&v216 + 8)), v158), *&v172);
            v174 = vclez_s32(v173);
            if ((vpmax_u32(v174, v174).u32[0] & 0x80000000) != 0)
            {
              *(&v216 + 1) = 0;
            }

            else
            {
              *(&v172 + 1) = v173;
              v216 = v172;
            }
          }
        }
      }

      if (v162 < v163)
      {
        v163 = v162;
      }

      if (v163 >= 1)
      {
        v219 = 0u;
        v220 = 0u;
        *v218 = 0u;
        CA::Shape::operator=(v218, &v216);
        CA::shape_union(v3 + 2, v218, v175);
        v219 = 0u;
        v220 = 0u;
        *v218 = 0u;
        CA::Shape::operator=(v218, &v217);
        CA::Render::Update::invalidate_backdrops(v3, v218, v18, 1);
      }
    }

    os_unfair_lock_unlock((v20 + 52));
    v18 = *v18;
  }

  while (v18);
LABEL_169:
  for (j = *(v3 + 73); j; j = *j)
  {
    v180 = j[2];
    if (v180)
    {
      v181 = (j[1] + 584);
      if (*v181)
      {
        CA::shape_union((j[1] + 584), v180, a3);
      }

      else
      {
        v182 = j[4];
        if (v182)
        {
          v183 = *(v182 + 256);
          if (v183)
          {
            v184 = *(v183 + 56);
            if (v184)
            {
              if (*(v184 + 60))
              {
                ++*(v3 + 203);
              }
            }
          }
        }

        *v181 = CA::Shape::ref(v180, v180);
      }
    }
  }

  v185 = *(v3 + 138);
  if (v185)
  {
    if (*(v3 + 72))
    {
      v186 = 0;
      do
      {
        v187 = *(*(v3 + 72) + 8 * v186);
        if (v187)
        {
          CA::Shape::unref(v187);
          LODWORD(v185) = *(v3 + 138);
        }

        ++v186;
      }

      while (v186 < v185);
    }

    else
    {
      *(v3 + 72) = malloc_type_malloc(8 * v185, 0x2004093837F09uLL);
      LODWORD(v185) = *(v3 + 138);
    }

    v188 = *(v3 + 68);
    if (v188)
    {
      v189 = v185 - 1;
      do
      {
        v190 = *(v188[2] + 8);
        os_unfair_lock_lock((v190 + 40));
        v191 = *(v190 + 584);
        if (v191)
        {
          v192 = CA::Shape::intersect(v191, v188[5]);
        }

        else
        {
          v192 = 1;
        }

        *(*(v3 + 72) + 8 * v189) = v192;
        os_unfair_lock_unlock((v190 + 40));
        v188 = *v188;
        --v189;
      }

      while (v188);
      LODWORD(v185) = *(v3 + 138);
    }

    if (v185 >= 2)
    {
      v193 = 0;
      v194 = 1;
      do
      {
        CA::shape_union((*(v3 + 72) + v193 + 8), *(*(v3 + 72) + v193), a3);
        ++v194;
        v193 += 8;
      }

      while (v194 < *(v3 + 138));
    }
  }

  CA::shape_intersect(v3 + 2, v3 + 25, a3);
  v196 = *(v3 + 3);
  if (v196)
  {
    CA::Shape::unref(v196);
    *(v3 + 3) = 0;
  }

  *(v3 + 3) = CA::Shape::ref(*(v3 + 2), v195);
  if ((*(v3 + 305) & 2) != 0)
  {
    notify_post("com.apple.CoreAnimation.CAWindowServer.SecureModeViolation");
  }

  v197 = *(v3 + 172) | 0x80000000;
  *(v3 + 172) = v197;
  v198 = *(v3 + 4);
  if (v198)
  {
    if (v198 != 1)
    {
      goto LABEL_206;
    }
  }

  else
  {
    if (*(v198 + 4) == 6)
    {
      goto LABEL_207;
    }

LABEL_206:
    v199 = CA::Shape::dilate(v198, 1, 1);
    CA::Shape::unref(*(v3 + 4));
    *(v3 + 4) = v199;
    v197 = *(v3 + 172);
  }

LABEL_207:
  if (v197 & 1) == 0 && (BYTE11(xmmword_1ED4E980C))
  {
    kdebug_trace();
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (*&dword_1ED4E9748)
  {
    if (*&dword_1ED4E9748 > 0.0)
    {
      *&dword_1ED4E9748 = *&dword_1ED4E9748 + -1.0;
    }
  }
}

void CA::FrameRateRangeGroup::arbitrate_ranges(CA::FrameRateRangeGroup *this)
{
  *&v2.var0 = CA::FrameRateArbitrator::arbitrate(this + 12, "");
  *(this + 32) = v2;
  v3 = *(this + 1);
  if (v3)
  {
    v4 = 64;
    if ((*(v3 + 241) & 8) == 0)
    {
      v4 = 48;
    }

    v5 = (v3 + v4);
  }

  else
  {
    v5 = (this + 120);
  }

  v8 = CAFrameIntervalRangeToFrameRateRange(v2, *v5);
  v9 = v6;
  v10 = v7;
  v11 = v8 == *(this + 11) && v6 == *(this + 12);
  if (!v11 || v7 != *(this + 13))
  {
    [*(this + 2) willChangeValueForKey:@"arbitratedRange"];
    *(this + 11) = v8;
    *(this + 12) = v9;
    *(this + 13) = v10;
    v12 = *(this + 2);

    [v12 didChangeValueForKey:@"arbitratedRange"];
  }
}

unint64_t CA::Shape::get_interior_bounds(unint64_t this, CA::Bounds *a2)
{
  if (this)
  {
    *a2 = this >> 48;
    *(a2 + 1) = (this >> 16) >> 16;
    *(a2 + 2) = this >> 17;
    *(a2 + 3) = (this >> 2) & 0x7FFF;
  }

  else
  {
    v2 = *(this + 4);
    if (v2 == 12)
    {
      *a2 = *(this + 28);
      *(a2 + 1) = *(this + 20);
      *(a2 + 2) = *(this + 32) - *(this + 28);
      *(a2 + 3) = *(this + 36) - *(this + 20);
    }

    else if (v2 == 6)
    {
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    else
    {
      v4 = *(this + 12);
      this += 12;
      v3 = v4;
      if (v4 != 0x7FFFFFFF)
      {
        v5 = -1;
        do
        {
          v6 = this;
          v7 = *(this + 4);
          this += 4 * v7;
          v8 = v7 - 2;
          v9 = *this;
          if (v8 >= 2)
          {
            v10 = v8 >> 1;
            v11 = v9 - v3;
            v12 = (v6 + 12);
            do
            {
              v13 = *(v12 - 1);
              v14 = *v12 - v13;
              if (v5 < v14 * v11)
              {
                v5 = v14 * v11;
                *a2 = v13;
                *(a2 + 1) = v3;
                *(a2 + 2) = v14;
                *(a2 + 3) = v11;
              }

              v12 += 2;
              --v10;
            }

            while (v10);
            v9 = *this;
          }

          v3 = v9;
        }

        while (v9 != 0x7FFFFFFF);
      }
    }
  }

  return this;
}

uint64_t CA::Shape::dilate(uint64_t this, const CA::Bounds *a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 | a2)
  {
    v4 = a2;
    if (this)
    {
      if (this != 1)
      {
        v6 = this >> 48;
        v5 = this << 16 >> 48;
        LODWORD(v19) = this >> 48;
        HIDWORD(v19) = (this >> 16) >> 16;
        v8 = this >> 17;
        LODWORD(v20) = this >> 17;
        v9 = (this >> 2) & 0x7FFF;
        goto LABEL_10;
      }
    }

    else if (*(this + 4) == 12)
    {
      LODWORD(v5) = *(this + 20);
      LODWORD(v6) = *(this + 28);
      v7 = *(this + 32);
      v19 = __PAIR64__(v5, v6);
      v8 = v7 - v6;
      LODWORD(v20) = v8;
      v9 = *(this + 36) - v5;
LABEL_10:
      HIDWORD(v20) = v9;
      if (v8 <= v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = v8;
      }

      if (v8 >= v9)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      if (v11 <= 1073741822 && v12 >= 1)
      {
        LODWORD(v19) = v6 - a2;
        HIDWORD(v19) = v5 - a3;
        LODWORD(v20) = v8 + 2 * a2;
        HIDWORD(v20) = v9 + 2 * a3;
        if (v20 < 1 || v9 + 2 * a3 <= 0)
        {
          v20 = 0;
        }
      }

      return CA::Shape::new_shape(&v19, a2);
    }

    v17 = 0;
    v18 = 1;
    v16 = 0;
    v20 = 0;
    v21 = 0;
    v13 = 2 * a2;
    v14 = 2 * a3;
    v19 = this;
    while (CA::ShapeIterator::iterate(&v19, &v16))
    {
      LODWORD(v16) = v16 - v4;
      HIDWORD(v16) -= a3;
      LODWORD(v17) = v17 + v13;
      HIDWORD(v17) += v14;
      CA::shape_union(&v18, &v16, v15);
    }

    return v18;
  }

  return CA::Shape::ref(this, a2);
}

int *CA::Bounds::subtract_exterior(int *this, const CA::Shape *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = this[2];
  if (v2 >= this[3])
  {
    v2 = this[3];
  }

  if (v2 >= 1)
  {
    v4 = this;
    if (a2)
    {
      if (a2 == 1)
      {
        return this;
      }
    }

    else if (*(a2 + 1) == 6)
    {
      return this;
    }

    memset(v10, 0, 48);
    CA::Shape::operator=(v10, this);
    bzero(&v8, 0x7F0uLL);
    v7 = xmmword_183E21520;
    v8 = 2;
    v6[0] = &v7;
    v6[1] = v9;
    v6[2] = v9;
    v6[3] = &v7 + 3;
    *&v9[2028] = v4;
    return CA::shape_subtract(v6, v10, a2, v5);
  }

  return this;
}

unint64_t CA::Shape::Union(CA::Shape *this, const CA::Bounds *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a2 + 2))
  {
    v3 = *(a2 + 3) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (this)
    {
      if (this == 1)
      {
        goto LABEL_11;
      }
    }

    else if (*(this + 1) == 6)
    {
LABEL_11:

      return CA::Shape::new_shape(a2, a2);
    }

    memset(v5, 0, sizeof(v5));
    CA::Shape::operator=(v5, a2);
    return CA::Shape::Union(this, v5);
  }

  return CA::Shape::ref(this, a2);
}

float64x2_t *CA::Render::Updater::corner_clipped_layer_bounds(float64x2_t *this, const CA::Render::Layer *a2)
{
  v2 = *(a2 + 72);
  *this = v2;
  v4 = *(a2 + 11);
  v3 = *(a2 + 12);
  this[1].f64[0] = v4;
  f64 = this[1].f64;
  this[1].f64[1] = v3;
  v6 = *(a2 + 17);
  if (v6)
  {
    v8 = this;
    v9 = *(v6 + 232);
    v10 = *(a2 + 5);
    if ((v10 & 0xF0000) == 0)
    {
      v9 = 0.0;
    }

    if (*(v6 + 72))
    {
      v29 = v2;
      this = CA::Render::Layer::max_corner_radii(*(a2 + 17));
      v2 = v29;
      v9 = v25;
    }

    if (v9 > 0.0)
    {
      if (*(v6 + 56) && (*(a2 + 50) & 1) != 0)
      {
        if (v4 <= v3)
        {
          v11 = v3;
        }

        else
        {
          v11 = v4;
        }

        if (v11 < 1.79769313e308)
        {
          v12 = v4 >= v3 ? v3 : v4;
          if (v12 > 0.0)
          {
            *&v13 = v9;
            *v8 = vaddq_f64(v2, vdupq_lane_s64(v13, 0));
            v14 = *&v13 * -2.0;
            v15 = v14 + v4;
            v16 = v14 + v3;
LABEL_33:
            v8[1].f64[0] = v15;
            v8[1].f64[1] = v16;
            if (v15 <= 0.0 || v16 <= 0.0)
            {
              *f64 = 0;
              f64[1] = 0;
            }
          }
        }
      }

      else
      {
        if ((v10 & 0x300000000) != 0)
        {
          v17 = v9 * 1.52866;
          v9 = v17;
        }

        v18 = ceilf(v9);
        v19 = v18;
        if ((~v10 & 0xF0000) != 0)
        {
          if (v4 <= v3)
          {
            v27 = 0.0;
            if ((v10 & 0x30000) != 0)
            {
              v26 = v19;
            }

            else
            {
              v26 = 0.0;
            }

            if ((v10 & 0xC0000) != 0)
            {
              v28 = v19;
            }

            else
            {
              v28 = 0.0;
            }

            v19 = 0.0;
          }

          else
          {
            v26 = 0.0;
            if ((v10 & 0x50000) != 0)
            {
              v27 = v18;
            }

            else
            {
              v27 = 0.0;
            }

            if ((v10 & 0xA0000) == 0)
            {
              v19 = 0.0;
            }

            v28 = 0.0;
          }

          return CA::BoundsImpl::inset(v8, v27, v26, v19, v28);
        }

        else
        {
          v20 = 0.0;
          if (v4 <= v3)
          {
            v21 = 0.0;
          }

          else
          {
            v21 = v19;
          }

          if (v4 > v3)
          {
            v22 = v4;
          }

          else
          {
            v20 = v19;
            v22 = v3;
          }

          if (v22 < 1.79769313e308)
          {
            v23 = v4 >= v3 ? v3 : v4;
            if (v23 > 0.0)
            {
              v24.f64[0] = v21;
              v24.f64[1] = v20;
              *v8 = vaddq_f64(v2, v24);
              v15 = v4 - (v21 + v21);
              v16 = v3 - (v20 + v20);
              goto LABEL_33;
            }
          }
        }
      }
    }
  }

  return this;
}

double CA::BoundsImpl::scale(double *a1, double result, double a3)
{
  if (result != 1.0)
  {
    v3 = a1[2];
    if (v3 < 1.79769313e308)
    {
      *a1 = *a1 * result;
      result = v3 * result;
      a1[2] = result;
    }
  }

  if (a3 != 1.0)
  {
    result = a1[3];
    if (result < 1.79769313e308)
    {
      a1[1] = a1[1] * a3;
      result = result * a3;
      a1[3] = result;
    }
  }

  return result;
}

uint64_t CA::OGL::VariableBlurFilter::get_bounds(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = *(a3 + 136);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      if (v5[12] == 3)
      {
        return (*(*v5 + 184))(v5, a3, a4, 0);
      }
    }
  }

  *a4 = *(a3 + 72);
  a4[1] = *(a3 + 88);
  return 1;
}

uint64_t CA::OGL::BlurFilter::DOD(CA::OGL::BlurFilter *this, CA::Render::KeyValueArray **a2, const CA::Render::Layer *a3, float64x2_t *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  float_key = CA::Render::KeyValueArray::get_float_key(a2[5], 400, 0.0);
  (*(*this + 160))(this);
  v11 = a4[1].f64[0];
  v12 = a4[1].f64[1];
  v10 = a4 + 1;
  if (v11 <= v12)
  {
    v13 = a4[1].f64[1];
  }

  else
  {
    v13 = a4[1].f64[0];
  }

  if (v13 < 1.79769313e308)
  {
    v14 = v11 >= v12 ? a4[1].f64[1] : a4[1].f64[0];
    if (v14 > 0.0)
    {
      *&v15 = -(float_key * v9);
      *a4 = vaddq_f64(*a4, vdupq_lane_s64(v15, 0));
      v16 = *&v15 * -2.0;
      v17 = v16 + v11;
      v18 = v16 + v12;
      a4[1].f64[0] = v17;
      a4[1].f64[1] = v18;
      if (v17 <= 0.0 || v18 <= 0.0)
      {
        v10->f64[0] = 0.0;
        a4[1].f64[1] = 0.0;
      }
    }
  }

  v25 = 0u;
  v26 = 0u;
  result = (*(*this + 152))(this, a2, a3, &v25);
  if (result)
  {
    v20 = vclezq_f64(*v10);
    if ((vorrq_s8(vdupq_laneq_s64(v20, 1), v20).u64[0] & 0x8000000000000000) == 0)
    {
      v21 = vclezq_f64(v26);
      if ((vorrq_s8(vdupq_laneq_s64(v21, 1), v21).u64[0] & 0x8000000000000000) != 0 || (v22 = vmaxnmq_f64(*a4, v25), v23 = vsubq_f64(vminnmq_f64(vaddq_f64(*a4, *v10), vaddq_f64(v25, v26)), v22), v24 = vclezq_f64(v23), (vorrq_s8(vdupq_laneq_s64(v24, 1), v24).u64[0] & 0x8000000000000000) != 0))
      {
        v10->f64[0] = 0.0;
        a4[1].f64[1] = 0.0;
      }

      else
      {
        *a4 = v22;
        a4[1] = v23;
      }
    }
  }

  return result;
}

BOOL CA::OGL::MetalContext::is_viable_texture_from_iosurface(CA::OGL::MetalContext *this, IOSurfaceRef buffer, MTLPixelFormat a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (IOSurfaceGetPlaneCount(buffer))
  {
    return 1;
  }

  BytesPerRow = IOSurfaceGetBytesPerRow(buffer);
  {
  }

  v6 = qword_1ED4E4918;
  if (((qword_1ED4E4918 - 1) & BytesPerRow) == 0)
  {
    BytesPerElement = IOSurfaceGetBytesPerElement(buffer);
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    memset(v16, 0, sizeof(v16));
    MTLGetTextureLevelInfoForDeviceWithOptions();
    IOSurfaceGetWidth(buffer);
    if (IOSurfaceAllowsPixelSizeCasting(buffer) || *(&v17 + 1) == BytesPerElement)
    {
      return 1;
    }

    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v7 = x_log_get_ogl_metal(void)::log;
    if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v11[0] = 67109632;
    v11[1] = IOSurfaceGetID(buffer);
    v12 = 2048;
    v13 = *(&v17 + 1);
    v14 = 2048;
    v15 = BytesPerElement;
    v8 = "Failed to allocate MTLTexture from IOSurface 0x%x. Texture block bytes (%ld) not equal to surface block bytes (%ld).";
    v9 = v11;
LABEL_10:
    _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, v8, v9, 0x1Cu);
    return 0;
  }

  if (x_log_get_ogl_metal(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
  }

  v7 = x_log_get_ogl_metal(void)::log;
  result = os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LODWORD(v16[0]) = 67109632;
    DWORD1(v16[0]) = IOSurfaceGetID(buffer);
    WORD4(v16[0]) = 2048;
    *(v16 + 10) = BytesPerRow;
    WORD1(v16[1]) = 2048;
    *(&v16[1] + 4) = v6;
    v8 = "Failed to allocate MTLTexture from IOSurface 0x%x. Row bytes (%ld) not %ld aligned.";
    v9 = v16;
    goto LABEL_10;
  }

  return result;
}

void CA::FrameRateRangeGroup::add(int8x8_t *this, CAFrameRateRange a2)
{
  preferred = a2.preferred;
  maximum = a2.maximum;
  minimum = a2.minimum;
  v29 = *MEMORY[0x1E69E9840];
  v7 = CA::FrameRateRangeGroup::fps_range_to_frame_interval_range(this, a2);
  v8 = v6;
  v27 = v7;
  v28 = v6;
  v9 = (maximum << 16) | (minimum << 32) | preferred;
  v10 = this[8];
  if (!*&v10)
  {
    goto LABEL_20;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = (maximum << 16) | (minimum << 32) | preferred;
    if (v9 >= *&v10)
    {
      v12 = v9 % *&v10;
    }
  }

  else
  {
    v12 = v9 & (*&v10 - 1);
  }

  v13 = *(*&this[7] + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v9)
    {
      break;
    }

    if (v11.u32[0] > 1uLL)
    {
      if (v15 >= *&v10)
      {
        v15 %= *&v10;
      }
    }

    else
    {
      v15 &= *&v10 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_20;
    }

LABEL_19:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  if (*(v14 + 4) != minimum || *(v14 + 5) != maximum || *(v14 + 6) != preferred)
  {
    goto LABEL_19;
  }

  v16 = v14[6];
  if (v16)
  {
    if (*(v14 + 8) != v7 || *(v14 + 36) != __PAIR64__(v6, HIDWORD(v7)))
    {
      __assert_rtn("add", "CAFrameRateRangeGroup.mm", 152, "info.count == 0 || info.range == range");
    }

    goto LABEL_38;
  }

  v18 = this[12];
  v17 = this[13];
  v19 = this + 12;
  if (v17 == v18)
  {
    goto LABEL_37;
  }

  v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 2);
  while (2)
  {
    v21 = v20 >> 1;
    v22 = &v18[12 * (v20 >> 1)];
    if (*v22 <= v7)
    {
      if (*v22 != v7)
      {
        goto LABEL_34;
      }

      v23 = *(v22 + 1);
      if (v23 > HIDWORD(v7))
      {
        goto LABEL_35;
      }

      if (v23 == HIDWORD(v7))
      {
        v24 = *(v22 + 2);
        v25 = v20 + ~v21;
        v26 = v22 + 12;
        if (v24 <= v8)
        {
          v18 = v26;
          v21 = v25;
        }
      }

      else
      {
LABEL_34:
        v18 = v22 + 12;
        v21 = v20 + ~v21;
      }
    }

LABEL_35:
    v20 = v21;
    if (v21)
    {
      continue;
    }

    break;
  }

  v17 = v18;
LABEL_37:
  std::vector<CAFrameIntervalRange>::insert(v19, v17, &v27);
  v16 = v14[6];
LABEL_38:
  v14[4] = v27;
  *(v14 + 10) = v28;
  v14[6] = v16 + 1;
}

unint64_t CA::FrameRateRangeGroup::fps_range_to_frame_interval_range(CA::FrameRateRangeGroup *this, CAFrameRateRange a2)
{
  if (*(this + 1))
  {
    return CA::Display::DisplayTimingsControl::fps_range_to_frame_interval_range(*(this + 1), a2, 0);
  }

  else
  {
    return CAFrameRateRangeToFrameIntervalRange(a2, *(this + 15), *(this + 128), *(this + 129) & 1, (*(this + 129) >> 1) & 1, (*(this + 129) >> 2) & 1);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CAFrameIntervalRange>>(unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

uint64_t CA::shape_subtract(int **this, uint64_t a2, uint64_t a3, const int *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  if (a2)
  {
    v36 = xmmword_183E21530;
    LODWORD(v37) = 2;
    DWORD1(v37) = (a2 >> 16) >> 16;
    DWORD2(v37) = 4;
    HIDWORD(v37) = a2 >> 48;
    LODWORD(v38) = HIDWORD(v37) + (a2 >> 17);
    DWORD1(v38) = ((a2 >> 2) & 0x7FFF) + DWORD1(v37);
    *(&v38 + 1) = 0x7FFFFFFF00000002;
    a2 = &v36;
  }

  v5 = (a2 + 12);
  v34 = 0uLL;
  v35 = 0uLL;
  v33 = 0uLL;
  if (a3)
  {
    v33 = xmmword_183E21530;
    LODWORD(v34) = 2;
    DWORD1(v34) = (a3 >> 16) >> 16;
    DWORD2(v34) = 4;
    HIDWORD(v34) = a3 >> 48;
    LODWORD(v35) = HIDWORD(v34) + (a3 >> 17);
    DWORD1(v35) = ((a3 >> 2) & 0x7FFF) + DWORD1(v34);
    *(&v35 + 1) = 0x7FFFFFFF00000002;
    a3 = &v33;
  }

  v6 = *v5;
  if (*v5 != 0x7FFFFFFF)
  {
    v9 = (a3 + 12);
    v10 = (a3 + 12);
    v7 = (a2 + 12);
    while (1)
    {
      v11 = *v10;
      if (*v10 == 0x7FFFFFFF)
      {
        return CA::ShapeHandle::finish(this, v7);
      }

      if (v6 - v11 >= 1)
      {
        break;
      }

      v12 = v7[1];
      if (((v6 - v11) & 0x80000000) == 0)
      {
        v5 = v7;
        v7 += v12;
        goto LABEL_14;
      }

      LODWORD(v13) = v9[1];
      v5 = v7;
      v7 += v12;
      v14 = v10;
LABEL_15:
      v15 = v12 - 2;
      v16 = v12 - 2 + v13;
      v17 = this[1];
      if ((*this)[2] < &v17[v16] - *this)
      {
        if (!CA::ShapeHandle::grow(this, v16))
        {
          return CA::ShapeHandle::finish(this, v7);
        }

        v17 = this[1];
      }

      v18 = v17 + 2;
      this[1] = v17 + 2;
      *v17 = v6;
      v17[1] = 0;
      v19 = v5 + 2;
      if (v15)
      {
        v20 = v13 - 2;
        if (v13 != 2)
        {
          v21 = 0;
          v22 = (v9 + 2);
          while (1)
          {
            v23 = *v19;
            v24 = *v22;
            if (*v19 > *v22)
            {
              break;
            }

            ++v19;
            --v15;
            v25 = v21 ^ 1;
            if (((v23 - *v22) & 0x80000000) == 0)
            {
              goto LABEL_24;
            }

            v24 = v23;
LABEL_25:
            if (v21 == 1 || v25 == 1)
            {
              *v18++ = v24;
              this[1] = v18;
            }

            if (v15)
            {
              v21 = v25;
              if (v20)
              {
                continue;
              }
            }

            goto LABEL_32;
          }

          v25 = v21;
LABEL_24:
          ++v22;
          --v20;
          v25 ^= 2u;
          goto LABEL_25;
        }
      }

LABEL_32:
      if (v15)
      {
        do
        {
          v26 = *v19++;
          *v18++ = v26;
          --v15;
        }

        while (v15);
        this[1] = v18;
      }

      v27 = this[2];
      v28 = this[3];
      v29 = (v18 - v27) >> 2;
      v27[1] = v29;
      if (v28 && v28[1] == v29)
      {
        v30 = 2;
        while (v29 != v30)
        {
          v31 = v27[v30];
          v32 = v28[v30++];
          if (v31 != v32)
          {
            goto LABEL_40;
          }
        }

        this[1] = v27;
      }

      else
      {
LABEL_40:
        this[2] = v18;
        this[3] = v27;
      }

      v6 = *v7;
      v10 = v14;
      if (*v7 == 0x7FFFFFFF)
      {
        return CA::ShapeHandle::finish(this, v7);
      }
    }

    LODWORD(v12) = v5[1];
LABEL_14:
    v13 = v10[1];
    v14 = &v10[v13];
    v9 = v10;
    v6 = *v10;
    goto LABEL_15;
  }

  v7 = (a2 + 12);
  return CA::ShapeHandle::finish(this, v7);
}

float CAFrameIntervalRangeToFrameRateRange(CAFrameIntervalRange a1, double a2)
{
  var2 = a1.var2;
  var0 = a1.var0;
  v5 = CAFrameIntervalToFrameRate(a1.var1, a2);
  CAFrameIntervalToFrameRate(var0, a2);
  CAFrameIntervalToFrameRate(var2, a2);
  return v5;
}

unsigned int CAFrameIntervalToFrameRate(unsigned int result, double a2)
{
  if ((result & 0x80000000) != 0)
  {
    __assert_rtn("CAFrameIntervalToFrameRate", "CATimingReference.cpp", 442, "frame_interval >= 0");
  }

  if (result)
  {
    v2 = 1.0 / (result * a2);
    return llroundf(v2);
  }

  return result;
}

void CA::WindowServer::IOMFBDisplay::update_display_headroom(CA::WindowServer::IOMFBDisplay *this)
{
  (*(*this + 1104))(this);
  if (!(*(*this + 904))(this))
  {
    goto LABEL_7;
  }

  if ((*(this + 905) & 0x10) == 0)
  {
    if (CADeviceIsVirtualized::once[0] != -1)
    {
      dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
    }

    if ((CADeviceIsVirtualized::is_virtualized & 1) == 0 && !CA::WindowServer::Display::Mode::is_hdr((this + 656)))
    {
LABEL_7:
      CA::WindowServer::Display::initialize_edr_state(this);
      v2 = *(this + 88);
      if (v2)
      {
        atomic_store(0x3F800000u, v2);
      }
    }
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::update_ui_scale_factor(CA::WindowServer::IOMFBDisplay *this)
{
  v2 = (*(*this + 1552))(this);
  v3.n128_u32[0] = 1.0;
  if (v2)
  {
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (*&dword_1ED4E96B0)
    {
      v3.n128_f32[0] = truncf(*&dword_1ED4E96B0);
    }

    else
    {
      v3.n128_f32[0] = (*(*this + 952))(this);
    }

    v3.n128_f32[0] = v3.n128_f32[0] * 0.01;
  }

  v4 = *(*this + 1088);

  return v4(this, v3);
}

void CA::WindowServer::get_context_logical_bounds(CA::WindowServer *this, CA::Render::Context *a2, int32x2_t *a3, CA::Bounds *a4, BOOL *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((BYTE14(xmmword_1ED4E97EC) & 1) == 0 && (*(this + 13) & 0x80) != 0)
  {
    v9 = CA::Render::Context::root_layer_handle(this);
    if (v9)
    {
      v10 = *(v9 + 5);
      if (v10)
      {
        CA::Render::Layer::frame(&v22, *(v10 + 32), 0);
        v11 = v23.f64[1];
        if (v23.f64[0] > v23.f64[1])
        {
          v11 = v23.f64[0];
        }

        if (v11 < 1073741820.0)
        {
          v14.f64[0] = NAN;
          v14.f64[1] = NAN;
          v15 = vnegq_f64(v14);
          __asm { FMOV            V4.2D, #0.5 }

          v12 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v15, _Q4, v22), v22)));
          v21 = vaddq_f64(v22, v23);
          v13 = vsub_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v15, _Q4, v21), v21))), v12);
        }

        else
        {
          v12 = vdup_n_s32(0xE0000001);
          v13 = 0xC0000000C0000000;
        }

        *a3 = v12;
        a3[1] = v13;
        *a2 = 1;
        if (*(this + 14))
        {
          *a4 = 1;
        }
      }
    }
  }
}

void CA::Render::Update::add_context(CA::Render::Update *this, CA::Render::Context *a2, CA::Render::Layer *a3, const CA::Transform *a4)
{
  *(a2 + 82) = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = BYTE11(xmmword_1ED4E980C);
  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    kdebug_trace();
  }

  if (a3)
  {
    v9 = *(a2 + 56);
    if ((!v9 || (*(this + 1377) & 0x20) != 0 || (*(v9 + 13) & 4) != 0) && CA::Render::Update::allowed_in_secure_update(this, a2, 0) && CA::Render::Update::allowed_to_include_context(this, a2) && *(a2 + 48) <= *(this + 294) && CA::Render::Update::allowed_in_update(this, a2, a3, 0))
    {
      CA::Render::Update::add_included_context(this, a2);
    }
  }

  if (v8)
  {
    kdebug_trace();
  }

  objc_autoreleasePoolPop(v7);
}

void CA::Render::Update::add_context(CA::Render::Update *this, CA::Render::Context *a2)
{
  v4 = CA::Render::Context::root_layer_handle(a2);
  if (v4)
  {
    v5 = *(v4 + 2);
  }

  else
  {
    v5 = 0;
  }

  CA::Render::Update::add_context(this, a2, v5, 0);
}

uint64_t CA::Render::fourcc_to_format(CA::Render *this)
{
  v1 = CA::Render::fourcc_compressed_of_type(this, 0, 0);
  if (v1 > 1279342647)
  {
    if (v1 > 1647534391)
    {
      if (v1 > 1999843441)
      {
        switch(v1)
        {
          case 1999843442:
            return 33;
          case 1999908961:
            return 34;
          case 2037741171:
            return 7;
        }
      }

      else
      {
        switch(v1)
        {
          case 1647534392:
            return 35;
          case 1815162994:
            return 31;
          case 1815491698:
            return 21;
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (v1 > 1380401728)
    {
      switch(v1)
      {
        case 1380401729:
          return 11;
        case 1380410945:
          return 14;
        case 1380411457:
          return 13;
      }

      return 0xFFFFFFFFLL;
    }

    if (v1 != 1279342648)
    {
      if (v1 == 1378955371)
      {
        return 32;
      }

      return 0xFFFFFFFFLL;
    }

    return 18;
  }

  if (v1 > 892679472)
  {
    if (v1 <= 1278226487)
    {
      switch(v1)
      {
        case 892679473:
          return 20;
        case 1093677112:
          return 9;
        case 1111970369:
          return 1;
      }

      return 0xFFFFFFFFLL;
    }

    if (v1 == 1278226488)
    {
      return 10;
    }

    if (v1 == 1278555445)
    {
      return 5;
    }

    if (v1 != 1279340600)
    {
      return 0xFFFFFFFFLL;
    }

    return 18;
  }

  if (v1 > 843264103)
  {
    switch(v1)
    {
      case 843264104:
        return 28;
      case 843264310:
        return 27;
      case 846624121:
        return 6;
    }

    return 0xFFFFFFFFLL;
  }

  if (v1 == 16)
  {
    return 4;
  }

  v2 = 0;
  if (v1 != 32)
  {
    return 0xFFFFFFFFLL;
  }

  return v2;
}

void *CA::WindowServer::Display::ogl_display(CA::WindowServer::Display *this)
{
  result = *(this + 40);
  if (!result)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    result = malloc_type_zone_malloc(malloc_zone, 0x10uLL, 0x165299FDuLL);
    if (result)
    {
      *result = &unk_1EF1F7758;
      result[1] = this;
    }

    *(this + 40) = result;
  }

  return result;
}

uint64_t CA::WindowServer::Display::all_clones_are_screen_recording(CA::WindowServer::Display *this)
{
  v3[1] = *MEMORY[0x1E69E9840];
  if ((*(this + 160) & 4) == 0)
  {
    return 0;
  }

  v2 = *(this + 5);
  if (v2)
  {
    while ((*(**(*v2 + 96) + 704))(*(*v2 + 96)))
    {
      if ((*(**(*v2 + 96) + 704))(*(*v2 + 96)) == 3)
      {
        break;
      }

      if ((*(**(*v2 + 96) + 712))(*(*v2 + 96)) != 1)
      {
        v3[0] = *(*(*v2 + 96) + 656);
        if (!CA::WindowServer::Display::Mode::is_hdr(v3))
        {
          break;
        }
      }

      v2 = v2[1];
      if (!v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t CA::WindowServer::AppleDisplay::compressed_pixel_format(uint64_t a1, CA::Render *this, unint64_t a3, int a4)
{
  if ((a4 & 0xFFFFFFFD) != 0)
  {
    if (a4 != 1)
    {
      __assert_rtn("compressed_pixel_format", "windowserver-apple-display.cpp", 2449, "surface_usage == kSurfaceUsageAssembly");
    }

    if (CADeviceUseCompression::once[0] != -1)
    {
      dispatch_once(CADeviceUseCompression::once, &__block_literal_global_17_12639);
    }

    if ((CADeviceUseCompression::enable_compression & 1) == 0)
    {
      goto LABEL_49;
    }

    v5 = 0;
  }

  else
  {
    v9 = *(a1 + 29776);
    if (v9)
    {
      v10 = v9 >= a3;
    }

    else
    {
      v10 = 1;
    }

    v11 = !v10;
    v12 = *(a1 + 29792);
    if (v12)
    {
      v13 = v12 >= CA::WindowServer::IOMFBDisplay::_compressed_display_count;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      if (*(a1 + 29495))
      {
        goto LABEL_49;
      }

      v14 = (*(a1 + 672) & 0x1C00) == 4096;
    }

    if ((a3 != 0) & v11 | v14 || (*(a1 + 29968) & 0x400) == 0)
    {
      goto LABEL_49;
    }

    if (CADeviceUseCompression::once[0] != -1)
    {
      dispatch_once(CADeviceUseCompression::once, &__block_literal_global_17_12639);
    }

    v15 = CADeviceUseCompression::enable_compression;
    if ((BYTE3(xmmword_1ED4E980C) & 1) != 0 || !CADeviceUseCompression::enable_compression || (*(a1 + 672) & 0x1C00) == 0x1000)
    {
      if (!CADeviceUseCompression::enable_compression)
      {
        goto LABEL_49;
      }

      v5 = 1;
    }

    else
    {
      v5 = (*(*a1 + 1640))(a1);
      if ((v15 & 1) == 0)
      {
        LODWORD(result) = 0;
        goto LABEL_48;
      }
    }
  }

  if (CADeviceSupportsUniversalCompression::once != -1)
  {
    dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
  }

  if (CADeviceSupportsUniversalCompression::universal)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  if (CADeviceSupportsLossyUniversalCompression::once != -1)
  {
    dispatch_once(&CADeviceSupportsLossyUniversalCompression::once, &__block_literal_global_40);
  }

  if (CADeviceSupportsLossyUniversalCompression::lossy != 1 || (CA::Render::fourcc_is_lossy_compressed(this) & 1) == 0)
  {
    LODWORD(result) = CA::Render::fourcc_compressed_of_type(this, v6, 0);
    if (result != this)
    {
LABEL_48:
      if (!v5)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }
  }

  if (CADeviceSupportsUniversalCompression::once != -1)
  {
    dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
  }

  if (CADeviceSupportsUniversalCompression::universal)
  {
    LODWORD(result) = this;
    goto LABEL_48;
  }

  LODWORD(result) = CA::Render::fourcc_compressed_of_type(this, 1, 0);
  if (v5)
  {
LABEL_49:
    LODWORD(result) = CA::Render::fourcc_compressed_of_type(this, 0, 0);
  }

LABEL_50:
  if (result)
  {
    return result;
  }

  else
  {
    return this;
  }
}

void CA::Render::Update::render_edr_factor()
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }
}

uint64_t CA::OGL::MetalContext::set_render_begin_time(uint64_t this, uint64_t a2)
{
  *(this + 5184) = a2;
  *(this + 3936) |= 0x40u;
  return this;
}

BOOL CA::WindowServer::IOMFBDisplay::needs_swap_begin_current_page(CA::WindowServer::IOMFBDisplay *this, int a2)
{
  if (byte_1ED4E989F)
  {
    return 0;
  }

  v4 = this + 24576;
  pthread_mutex_lock((this + 25848));
  *(v4 + 372) = a2;
  v5 = *(this + 12 * *(v4 + 314) + 6484) == 0;
  pthread_mutex_unlock((this + 25848));
  return v5;
}

void CA::WindowServer::IOMFBServer::try_swap_begin_async(CA::WindowServer::IOMFBServer *this, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(this + 136);
  if (v3)
  {
    v4 = *MEMORY[0x1E695E8E0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CA12WindowServer11IOMFBServer20try_swap_begin_asyncEj_block_invoke;
    block[3] = &__block_descriptor_tmp_101;
    block[4] = this;
    v6 = a2;
    CFRunLoopPerformBlock(v3, v4, block);
    CFRunLoopWakeUp(*(this + 136));
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::framebuffer_pixel_format(CA::WindowServer::IOMFBDisplay *this)
{
  v1 = this + 26632;
  if (byte_1ED4E984B == 1)
  {
    if (CADeviceSupportsUniversalCompression::once != -1)
    {
      dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
    }

    v3 = 1999908961;
    if (CADeviceSupportsUniversalCompression::universal == 1)
    {
      if (v1[2883])
      {
        return 1647534392;
      }

      else
      {
        return 1999908961;
      }
    }
  }

  else
  {
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    v3 = 1380411457;
    v4 = *&qword_1ED4E977C;
    if (CA::WindowServer::Display::edr_headroom(this) <= v4 || (v5 = *(this + 88)) == 0 || (v6 = COERCE_FLOAT(atomic_load((v5 + 4))), v6 <= 8.0))
    {
      if ((byte_1ED4E984A & 1) == 0 && (byte_1ED4E9864 & 1) == 0 && (*v1 & 1) == 0)
      {
        if (v1[2863] == 1 && CA::WindowServer::Display::Mode::is_hdr((this + 27320)) && (v1[2901] & 1) != 0)
        {
          goto LABEL_30;
        }

        if (CADeviceIsVirtualized::once[0] != -1)
        {
          dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
        }

        if (CADeviceIsVirtualized::is_virtualized)
        {
          goto LABEL_30;
        }

        if (!(*(*this + 1888))(this))
        {
          goto LABEL_21;
        }

        if (CADeviceSupportsUniversalCompression::once != -1)
        {
          dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
        }

        if (CADeviceSupportsUniversalCompression::universal)
        {
          v7 = 1647534392;
        }

        else
        {
LABEL_21:
          if ((*(this + 160) & 8) != 0)
          {
            if (CADeviceUseFramebufferCompression::once != -1)
            {
              dispatch_once(&CADeviceUseFramebufferCompression::once, &__block_literal_global_25);
            }

            v7 = 1647534392;
            if (CADeviceUseFramebufferCompression::enable_compression != 1 || (v1[2863] & 1) != 0 || (*(this + 336) & 0x1C00) == 0x1000)
            {
              v3 = 1647534392;
LABEL_30:
              if ((v1[2883] & 1) == 0)
              {
                if (v3 == 643969848)
                {
                  return 645346401;
                }

                else if (v3 == 1647534392)
                {
                  return 1999908961;
                }
              }

              return v3;
            }

            if (CADeviceSupportsUniversalCompression::once != -1)
            {
              dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
              v7 = 1647534392;
            }

            if ((CADeviceSupportsUniversalCompression::universal & 1) == 0)
            {
              if (v1[2882])
              {
                v7 = 1999908961;
              }

              else
              {
                v7 = 1380411457;
              }
            }
          }

          else
          {
            v7 = 1111970369;
          }
        }

        v3 = (*(*this + 2480))(this, v7, 0, 0);
        goto LABEL_30;
      }
    }
  }

  return v3;
}

void CA::OGL::Renderer::prepare_clip_shape(CA::OGL::Renderer *this, const CA::Render::Update *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (v4)
  {
    CA::Shape::unref(v4);
  }

  *(this + 2) = 0;
  if ((a2 & 1) == 0)
  {
    v10 = 0;
    v11 = 0;
    v5 = *(a2 + 1);
    if (v5 != 6 && v5 != 12)
    {
      CA::Shape::get_bounds(a2, &v10);
      if ((*(*this + 872) & 0x10) != 0 || (v8 = SHIDWORD(v11) * v11, v8 < 2 * CA::Shape::area(a2)))
      {
        v9 = *(this + 2);
        if (v9)
        {
          CA::Shape::unref(v9);
        }

        *(this + 2) = CA::Shape::new_shape(&v10, v7);
      }
    }
  }
}

uint64_t CA::OGL::MetalContext::get_surface(CA::OGL::MetalContext *this, CA::WindowServer::Surface *a2, int a3)
{
  v87 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v6 = (*(*a2 + 168))(a2);
  if (!v6)
  {
    return 0;
  }

  v7 = *(a2 + 14);
  if (!v7 || (v8 = *(a2 + 15), !v8) || (v9 = *(this + 411), v9 < v7) || v9 < v8)
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v15 = x_log_get_ogl_metal(void)::log;
    if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v21 = *(a2 + 14);
    v22 = *(a2 + 15);
    *buf = 67109376;
    v74 = v21;
    v75 = 1024;
    v76 = v22;
    v23 = "Ignoring [%d x %d] invalid surface dimensions";
    v24 = v15;
    v25 = 14;
    goto LABEL_22;
  }

  v10 = v6;
  v11 = *(a2 + 16);
  v12 = CA::OGL::four_cc_to_mtl_format(v11, *(this + 829));
  if (v12 == MTLPixelFormatInvalid)
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v18 = x_log_get_ogl_metal(void)::log;
    if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v19 = v11 >> 24;
    if ((v11 & 0x80000000) != 0)
    {
      v20 = __maskrune(v19, 0x40000uLL);
    }

    else
    {
      v20 = *(MEMORY[0x1E69E9830] + 4 * v19 + 60) & 0x40000;
    }

    if (v20)
    {
      v59 = v11 >> 24;
    }

    else
    {
      v59 = 32;
    }

    if (BYTE2(v11) <= 0x7Fu)
    {
      v60 = *(MEMORY[0x1E69E9830] + 4 * BYTE2(v11) + 60) & 0x40000;
    }

    else
    {
      v60 = __maskrune(BYTE2(v11), 0x40000uLL);
    }

    if (v60)
    {
      v61 = SBYTE2(v11);
    }

    else
    {
      v61 = 32;
    }

    if (BYTE1(v11) <= 0x7Fu)
    {
      v62 = *(MEMORY[0x1E69E9830] + 4 * BYTE1(v11) + 60) & 0x40000;
    }

    else
    {
      v62 = __maskrune(BYTE1(v11), 0x40000uLL);
    }

    if (v62)
    {
      v63 = SBYTE1(v11);
    }

    else
    {
      v63 = 32;
    }

    if (v11 <= 0x7Fu)
    {
      v64 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v64 = __maskrune(v11, 0x40000uLL);
    }

    *buf = 67109888;
    v65 = v11;
    v74 = v59;
    v75 = 1024;
    if (!v64)
    {
      v65 = 32;
    }

    v76 = v61;
    v77 = 1024;
    v78 = v63;
    v79 = 1024;
    v80 = v65;
    v23 = "Unsupported IOSurface pixel format: %c%c%c%c";
    v24 = v18;
    v25 = 26;
    goto LABEL_22;
  }

  v13 = v12;
  if (!CA::OGL::MetalContext::is_viable_texture_from_iosurface(this, v10, v12))
  {
    return 0;
  }

  if (*(a2 + 10) != CA::OGL::MetalContext::release_display_surfaces || (v26 = *(a2 + 9)) == 0)
  {
    operator new();
  }

  v27 = *(a2 + 16);
  v28 = v27 == 643969848 || v27 == 1647534392;
  if (v28 && a3)
  {
    v29 = *(a2 + 236);
    v30 = ((v29 & 0x40000000) == 0) & (*(this + 3316) >> 1);
    if (v30)
    {
      v13 = 554;
    }

    v31 = v26 + 8;
    v16 = *(v26 + 8 + 8 * v30);
    if ((v29 & 0x80000000) != 0)
    {
      v32 = *(v31 + 8 * ((((v29 & 0x40000000) == 0) & (*(this + 3316) >> 1)) == 0));
      v33 = *(v32 + 144) & 0x80000000 | *(v16 + 144) & 0x7FFFFFFF;
      *(v16 + 144) = v33;
      *(v16 + 4) = *(v32 + 4);
      v34 = *(a2 + 236);
      if ((v34 & 0x200000000) != 0)
      {
        *(v16 + 144) = v33 | 0x20000000;
        v34 = *(a2 + 236);
      }

      *(a2 + 236) = v34 & 0xFFFFFFFF7FFFFFFFLL;
    }
  }

  else
  {
    v16 = *(v26 + 8);
  }

  if (!a3)
  {
    v39 = 0;
    goto LABEL_48;
  }

  if (CADeviceUseFramebufferCompression::once != -1)
  {
    dispatch_once(&CADeviceUseFramebufferCompression::once, &__block_literal_global_25);
  }

  v35 = *(this + 75);
  if (!v35 || (v36 = CADeviceUseFramebufferCompression::enable_compression, (v37 = (*(*v35 + 16))(v35)) == 0) || (v36 & 1) != 0)
  {
    v38 = 0;
    v39 = 0;
    if ((*(v16 + 308) & 0x400) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v38 = (*(v37 + 672) & 0xFD) == 1;
  v39 = v38;
  if (v38 == ((*(v16 + 308) & 0x400) == 0))
  {
LABEL_47:
    CA::OGL::MetalContext::finalize_surface_textures(this, v16);
    v39 = v38;
  }

LABEL_48:
  *&v40 = *(a2 + 7);
  *(&v40 + 1) = *(this + 76);
  *(v16 + 40) = v40;
  v41 = *(this + 77);
  if (v39)
  {
    v42 = 1024;
  }

  else
  {
    v42 = 0;
  }

  *(v16 + 308) = *(v16 + 308) & 0xFBFF | v42;
  v43 = 40;
  if (v39)
  {
    v44 = 44;
  }

  else
  {
    v44 = 40;
  }

  v45 = *(v16 + v44);
  *(v16 + 56) = v41;
  *(v16 + 256) = v45;
  if (!v39)
  {
    v43 = 44;
  }

  *(v16 + 260) = *(v16 + v43);
  *(v16 + 88) = *(this + 872);
  *(v16 + 148) |= 1u;
  if (!*(v16 + 168))
  {
    v46 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v13 width:? height:? mipmapped:?];
    v47 = v46;
    if (a3)
    {
      [v46 setFramebufferOnly:1];
      if (v39)
      {
        v48 = 3;
      }

      else
      {
        v48 = 0;
      }

      [v47 setRotation:v48];
      v49 = 5;
    }

    else
    {
      v49 = 17;
    }

    [v47 setUsage:v49];
    v50 = [*(this + 438) newTextureWithDescriptor:v47 iosurface:v10 plane:0];
    *(v16 + 168) = v50;
    [v50 setLabel:@"com.apple.coreanimation.framebuffer-surface"];
    *(v16 + 192) = v13;
    *(v16 + 308) = *(v16 + 308) & 0xFFF0 | 1;
    if (*(v16 + 168))
    {
      CA::OGL::MetalContext::add_memoryless_textures(this, v16);
      goto LABEL_65;
    }

    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v52 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      v53 = 44;
      if ((*(v16 + 308) & 0x400) != 0)
      {
        v54 = 44;
      }

      else
      {
        v54 = 40;
      }

      v55 = *(v16 + v54);
      if ((*(v16 + 308) & 0x400) != 0)
      {
        v53 = 40;
      }

      v56 = *(v16 + v53);
      v57 = v11 >> 24;
      if ((v11 & 0x80000000) != 0)
      {
        v58 = __maskrune(v57, 0x40000uLL);
      }

      else
      {
        v58 = *(MEMORY[0x1E69E9830] + 4 * v57 + 60) & 0x40000;
      }

      if (v58)
      {
        v66 = v11 >> 24;
      }

      else
      {
        v66 = 32;
      }

      if (BYTE2(v11) <= 0x7Fu)
      {
        v67 = *(MEMORY[0x1E69E9830] + 4 * BYTE2(v11) + 60) & 0x40000;
      }

      else
      {
        v67 = __maskrune(BYTE2(v11), 0x40000uLL);
      }

      if (v67)
      {
        v68 = SBYTE2(v11);
      }

      else
      {
        v68 = 32;
      }

      if (BYTE1(v11) <= 0x7Fu)
      {
        v69 = *(MEMORY[0x1E69E9830] + 4 * BYTE1(v11) + 60) & 0x40000;
      }

      else
      {
        v69 = __maskrune(BYTE1(v11), 0x40000uLL);
      }

      if (v69)
      {
        v70 = SBYTE1(v11);
      }

      else
      {
        v70 = 32;
      }

      if (v11 <= 0x7Fu)
      {
        v71 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
      }

      else
      {
        v71 = __maskrune(v11, 0x40000uLL);
      }

      if (v71)
      {
        v72 = v11;
      }

      else
      {
        v72 = 32;
      }

      *buf = 67110658;
      v74 = v55;
      v75 = 1024;
      v76 = v56;
      v77 = 1024;
      v78 = v66;
      v79 = 1024;
      v80 = v68;
      v81 = 1024;
      v82 = v70;
      v83 = 1024;
      v84 = v72;
      v85 = 2080;
      Name = MTLPixelFormatGetName();
      v23 = "Failed to allocate [%d x %d] %c%c%c%c framebuffer %s";
      v24 = v52;
      v25 = 48;
LABEL_22:
      _os_log_error_impl(&dword_183AA6000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
      return 0;
    }

    return 0;
  }

LABEL_65:
  if ((v13 - 550) <= 5)
  {
    *(v16 + 92) |= 0x100u;
  }

  if (v13 == 115)
  {
    v51 = 16;
  }

  else
  {
    if (v13 != 125)
    {
      goto LABEL_72;
    }

    v51 = 32;
  }

  *(v16 + 92) |= v51;
LABEL_72:
  if (!CA::OGL::metal_pixel_format_has_alpha_plane(v13, v14))
  {
    *(v16 + 92) &= ~8u;
  }

  return v16;
}

uint64_t CA::OGL::four_cc_to_mtl_format(CA::Render *a1, __int16 a2)
{
  v3 = CA::Render::fourcc_compressed_of_type(a1, 0, 0);
  result = 0;
  if (v3 > 1882468913)
  {
    if (v3 <= 1953903153)
    {
      if (v3 > 1886676531)
      {
        if (v3 <= 1952854575)
        {
          if (v3 <= 1886680625)
          {
            if (v3 != 1886676532)
            {
              if (v3 != 1886680624)
              {
                return result;
              }

              goto LABEL_140;
            }

LABEL_122:
            v16 = (a2 & 0x100) == 0;
            v17 = 582;
            goto LABEL_152;
          }

          if (v3 != 1886680626)
          {
            if (v3 != 1886680628)
            {
              return result;
            }

            goto LABEL_122;
          }

          goto LABEL_141;
        }

        if (v3 <= 1952855091)
        {
          if (v3 != 1952854576)
          {
            if (v3 != 1952854578)
            {
              return result;
            }

            goto LABEL_145;
          }

LABEL_129:
          v16 = (a2 & 0x80) == 0;
          v17 = 570;
          goto LABEL_152;
        }

        if (v3 != 1952855092)
        {
          if (v3 != 1953903152)
          {
            return result;
          }

          goto LABEL_129;
        }

LABEL_142:
        v16 = (a2 & 0x80) == 0;
        v17 = 572;
        goto LABEL_152;
      }

      if (v3 <= 1885745713)
      {
        if (v3 != 1882468914)
        {
          if (v3 != 1882469428)
          {
            v24 = 1885745712;
            goto LABEL_132;
          }

          goto LABEL_139;
        }
      }

      else
      {
        if (v3 > 1886676527)
        {
          if (v3 == 1886676528)
          {
LABEL_140:
            v16 = (a2 & 0x100) == 0;
            v17 = 580;
            goto LABEL_152;
          }

          if (v3 != 1886676530)
          {
            return result;
          }

LABEL_141:
          v16 = (a2 & 0x100) == 0;
          v17 = 581;
          goto LABEL_152;
        }

        if (v3 != 1885745714)
        {
          if (v3 != 1885746228)
          {
            return result;
          }

LABEL_139:
          v16 = (a2 & 2) == 0;
          v17 = 510;
          goto LABEL_152;
        }
      }

      v16 = (a2 & 2) == 0;
      v17 = 509;
      goto LABEL_152;
    }

    if (v3 <= 2016687215)
    {
      if (v3 <= 1999908960)
      {
        if (v3 == 1953903154)
        {
LABEL_145:
          v16 = (a2 & 0x80) == 0;
          v17 = 571;
          goto LABEL_152;
        }

        if (v3 != 1953903668)
        {
          v27 = 554;
          if ((a2 & 2) == 0)
          {
            v27 = 0;
          }

          if (v3 == 1999843442)
          {
            return v27;
          }

          else
          {
            return 0;
          }
        }

        goto LABEL_142;
      }

      if (v3 <= 2016686641)
      {
        if (v3 == 1999908961)
        {
          v16 = (a2 & 2) == 0;
          v17 = 552;
LABEL_152:
          if (v16)
          {
            return 0;
          }

          else
          {
            return v17;
          }
        }

        v15 = 2016686640;
LABEL_50:
        if (v3 != v15)
        {
          return result;
        }

        v16 = (a2 & 2) == 0;
        v17 = 505;
        goto LABEL_152;
      }

      if (v3 != 2016686642)
      {
        v28 = 2016687156;
LABEL_125:
        if (v3 != v28)
        {
          return result;
        }

        v16 = (a2 & 2) == 0;
        v17 = 507;
        goto LABEL_152;
      }
    }

    else
    {
      if (v3 > 2019964015)
      {
        if (v3 > 2037741157)
        {
          if (v3 != 2037741158 && v3 != 2037741171)
          {
            return result;
          }

          v29 = (a2 & 1) == 0;
          v30 = 501;
          goto LABEL_147;
        }

        if (v3 != 2019964016)
        {
          v5 = v3 == 2033463606;
          v6 = 110;
          goto LABEL_111;
        }

        goto LABEL_143;
      }

      if (v3 <= 2019963441)
      {
        if (v3 != 2016687216)
        {
          v15 = 2019963440;
          goto LABEL_50;
        }

LABEL_143:
        v16 = (a2 & 2) == 0;
        v17 = 504;
        goto LABEL_152;
      }

      if (v3 != 2019963442)
      {
        v28 = 2019963956;
        goto LABEL_125;
      }
    }

    v16 = (a2 & 2) == 0;
    v17 = 506;
    goto LABEL_152;
  }

  if (v3 > 1278226535)
  {
    if (v3 > 1380401728)
    {
      if (v3 <= 1647534391)
      {
        v7 = 1380411456;
        v8 = 542;
        if ((a2 & 1) == 0)
        {
          v8 = 0;
        }

        if (v3 == 1599226420)
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        if (v3 == 1380411457)
        {
          v10 = 115;
        }

        else
        {
          v10 = v9;
        }

        v11 = 1380401729;
        v12 = 70;
        v13 = v3 == 1380410945;
        v14 = 125;
        goto LABEL_58;
      }

      if (v3 <= 1815491697)
      {
        v20 = 1647534392;
        v21 = 550;
        if ((a2 & 4) == 0)
        {
          v21 = 0;
        }

        v22 = v3 == 1815162994;
        v23 = 94;
        goto LABEL_79;
      }

      if (v3 == 1815491698)
      {
        return 110;
      }

      v24 = 1882468912;
LABEL_132:
      if (v3 != v24)
      {
        return result;
      }

      v16 = (a2 & 2) == 0;
      v17 = 508;
      goto LABEL_152;
    }

    if (v3 <= 1278555700)
    {
      v20 = 1278226536;
      v21 = 25;
      v25 = 43;
      if ((a2 & 2) == 0)
      {
        v25 = 0;
      }

      if (v3 == 1278555445)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      if (v3 == 1278226742)
      {
        v23 = 20;
      }

      else
      {
        v23 = v26;
      }

      goto LABEL_93;
    }

    if (v3 <= 1279342647)
    {
      if (v3 == 1278555701)
      {
        return 40;
      }

      if (v3 != 1279340600)
      {
        return result;
      }

      return 30;
    }

    if (v3 == 1279342648)
    {
      return 30;
    }

    v5 = v3 == 1378955371;
    v6 = 90;
LABEL_111:
    if (v5)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  if (v3 <= 875704949)
  {
    if (v3 > 846624120)
    {
      if (v3 > 875704437)
      {
        if (v3 != 875704438)
        {
          if (v3 != 875704934)
          {
            return result;
          }

LABEL_105:
          v16 = (a2 & 2) == 0;
          v17 = 502;
          goto LABEL_152;
        }

        goto LABEL_137;
      }

      if (v3 != 846624121)
      {
        if (v3 != 875704422)
        {
          return result;
        }

LABEL_137:
        v29 = (a2 & 1) == 0;
        v30 = 500;
        goto LABEL_147;
      }

      v29 = (a2 & 1) == 0;
      v30 = 562;
LABEL_147:
      if (v29)
      {
        return 0;
      }

      else
      {
        return v30;
      }
    }

    if (v3 != 843264056)
    {
      v20 = 843264104;
      v21 = 65;
      v22 = v3 == 843264310;
      v23 = 60;
LABEL_79:
      if (!v22)
      {
        v23 = 0;
      }

LABEL_93:
      if (v3 == v20)
      {
        return v21;
      }

      else
      {
        return v23;
      }
    }

    return 30;
  }

  if (v3 > 1093677111)
  {
    v7 = 1278226487;
    v18 = 55;
    if (v3 != 1278226534)
    {
      v18 = 0;
    }

    if (v3 == 1278226488)
    {
      v10 = 10;
    }

    else
    {
      v10 = v18;
    }

    v11 = 1093677112;
    v12 = 1;
    v13 = v3 == 1111970369;
    v14 = 80;
LABEL_58:
    if (!v13)
    {
      v14 = 0;
    }

    if (v3 == v11)
    {
      v19 = v12;
    }

    else
    {
      v19 = v14;
    }

    if (v3 <= v7)
    {
      return v19;
    }

    else
    {
      return v10;
    }
  }

  if (v3 <= 875836517)
  {
    if (v3 != 875704950)
    {
      v5 = v3 == 875836468;
      v6 = 42;
      goto LABEL_111;
    }

    goto LABEL_105;
  }

  if (v3 == 875836518 || v3 == 875836534)
  {
    v16 = (a2 & 2) == 0;
    v17 = 503;
    goto LABEL_152;
  }

  return result;
}

BOOL CA::OGL::metal_pixel_format_has_alpha_plane(CA::OGL *this, MTLPixelFormat a2)
{
  result = 1;
  if (this - 70 > 0x37 || ((1 << (this - 70)) & 0xE03D0000000C1FLL) == 0)
  {
    v4 = this - 550;
    v5 = this == 1;
    return v4 < 4 || v5;
  }

  return result;
}

void CA::WindowServer::IOSurface::set_render_headroom(CA::WindowServer::IOSurface *this, float a2, int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 17) != a2 || a3 != 0)
  {
    *(this + 17) = a2;
    valuePtr = a2;
    v5 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    v6 = (*(*this + 168))(this);
    IOSurfaceSetValue(v6, *MEMORY[0x1E696CEF0], v5);
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

float64_t CA::OGL::Renderer::render(CA::Render::Update const*,unsigned long,CA::CASharedEvent *)::$_0::__invoke(float64x2_t *a1)
{
  v1 = a1[1].f64[0];
  if (v1 < 1.79769313e308)
  {
    a1->f64[0] = a1->f64[0] * 0.03125;
    a1[1].f64[0] = v1 * 0.03125;
  }

  v2 = a1[1].f64[1];
  if (v2 < 1.79769313e308)
  {
    a1->f64[1] = a1->f64[1] * 0.03125;
    a1[1].f64[1] = v2 * 0.03125;
  }

  v3 = a1[1];
  v4 = a1[1].f64[1];
  if (v3.f64[0] <= v4)
  {
    v5 = a1[1].f64[1];
  }

  else
  {
    v5 = a1[1].f64[0];
  }

  if (v5 < 1.79769313e308)
  {
    if (v3.f64[0] < v4)
    {
      v4 = a1[1].f64[0];
    }

    if (v4 > 0.0)
    {
      v6 = vrndmq_f64(*a1);
      v3 = vsubq_f64(vrndpq_f64(vaddq_f64(*a1, v3)), v6);
      *a1 = v6;
      a1[1] = v3;
    }
  }

  if (v3.f64[0] < 1.79769313e308)
  {
    a1->f64[0] = a1->f64[0] * 32.0;
    a1[1].f64[0] = v3.f64[0] * 32.0;
  }

  v3.f64[0] = v3.f64[1];
  if (v3.f64[1] < 1.79769313e308)
  {
    a1->f64[1] = a1->f64[1] * 32.0;
    v3.f64[0] = v3.f64[1] * 32.0;
    a1[1].f64[1] = v3.f64[1] * 32.0;
  }

  return v3.f64[0];
}