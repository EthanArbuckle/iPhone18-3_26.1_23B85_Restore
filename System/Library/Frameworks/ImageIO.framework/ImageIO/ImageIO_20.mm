void sub_185F9E5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  kdu_warning::~kdu_warning(va);
  _Unwind_Resume(a1);
}

void kd_encoder::kd_encoder(kd_encoder *this)
{
  *this = &unk_1EF4D3768;
  *(this + 1) = &unk_1EF4D3798;
  kdu_block_encoder::kdu_block_encoder((this + 16));
}

void sub_185F9E6B0(_Unwind_Exception *a1)
{
  *v1 = &unk_1EF4D34F0;
  v1[1] = &unk_1EF4D3478;
  _Unwind_Resume(a1);
}

void kd_multi_line::reset(kd_multi_line *this, int a2, double a3)
{
  v4 = *(this + 6);
  if ((v4 & 2) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(this + 1);
  }

  if ((*(this + 6) & 2) != 0)
  {
    v6 = *(this + 1);
  }

  else
  {
    v6 = 0;
  }

  if (*(this + 36) != (v4 & 1))
  {
    kd_multi_line::reset();
  }

  if (v4)
  {
    if (v6)
    {
      v7 = *(this + 5);
      if (a2)
      {
        if (v7 >= 1)
        {
          v8 = 0;
          v9 = (v7 + 7) & 0xFFFFFFF8;
          v10 = vdupq_n_s64(v7 - 1);
          v11 = v6 + 4;
          do
          {
            v12 = vdupq_n_s64(v8);
            v13 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_186205EC0)));
            if (vuzp1_s8(vuzp1_s16(v13, *v10.i8), *v10.i8).u8[0])
            {
              *(v11 - 4) = a2;
            }

            if (vuzp1_s8(vuzp1_s16(v13, *&v10), *&v10).i8[1])
            {
              *(v11 - 3) = a2;
            }

            if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_186205EB0)))), *&v10).i8[2])
            {
              *(v11 - 2) = a2;
              *(v11 - 1) = a2;
            }

            v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_186205EA0)));
            if (vuzp1_s8(*&v10, vuzp1_s16(v14, *&v10)).i32[1])
            {
              *v11 = a2;
            }

            if (vuzp1_s8(*&v10, vuzp1_s16(v14, *&v10)).i8[5])
            {
              v11[1] = a2;
            }

            if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_186205E90))))).i8[6])
            {
              v11[2] = a2;
              v11[3] = a2;
            }

            v8 += 8;
            v11 += 8;
          }

          while (v9 != v8);
        }

        return;
      }

      v15 = 2 * v7;
      goto LABEL_53;
    }

    if (!v5)
    {
      kd_multi_line::reset();
    }

    v16 = *(this + 5);
    if (!a2)
    {
      v30 = 4 * v16;
      v6 = v5;
      goto LABEL_54;
    }

    if (v16 >= 1)
    {
      v17 = 0;
      v18 = vdupq_n_s64(v16 - 1);
      v19 = (v16 + 3) & 0xFFFFFFFC;
      v20 = v5 + 2;
      do
      {
        v21 = vdupq_n_s64(v17);
        v22 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(v21, xmmword_186205EC0)));
        if (vuzp1_s16(v22, *v18.i8).u8[0])
        {
          *(v20 - 2) = a2;
        }

        if (vuzp1_s16(v22, *&v18).i8[2])
        {
          *(v20 - 1) = a2;
        }

        if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, vorrq_s8(v21, xmmword_186205EB0)))).i32[1])
        {
          *v20 = a2;
          v20[1] = a2;
        }

        v17 += 4;
        v20 += 4;
      }

      while (v19 != v17);
    }
  }

  else if (v6)
  {
    if (*&a3 == 0.0)
    {
      v15 = 2 * *(this + 5);
LABEL_53:
      v30 = v15;
LABEL_54:

      bzero(v6, v30);
      return;
    }

    v31 = *(this + 5);
    if (v31 >= 1)
    {
      v32 = 0;
      v33 = vcvtmd_s64_f64((*&a3 * 8192.0) + 0.5);
      v34 = vdupq_n_s64(v31 - 1);
      v35 = (v31 + 7) & 0xFFFFFFF8;
      v36 = v6 + 4;
      do
      {
        v37 = vdupq_n_s64(v32);
        v38 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(v37, xmmword_186205EC0)));
        if (vuzp1_s8(vuzp1_s16(v38, *v34.i8), *v34.i8).u8[0])
        {
          *(v36 - 4) = v33;
        }

        if (vuzp1_s8(vuzp1_s16(v38, *&v34), *&v34).i8[1])
        {
          *(v36 - 3) = v33;
        }

        if (vuzp1_s8(vuzp1_s16(*&v34, vmovn_s64(vcgeq_u64(v34, vorrq_s8(v37, xmmword_186205EB0)))), *&v34).i8[2])
        {
          *(v36 - 2) = v33;
          *(v36 - 1) = v33;
        }

        v39 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(v37, xmmword_186205EA0)));
        if (vuzp1_s8(*&v34, vuzp1_s16(v39, *&v34)).i32[1])
        {
          *v36 = v33;
        }

        if (vuzp1_s8(*&v34, vuzp1_s16(v39, *&v34)).i8[5])
        {
          v36[1] = v33;
        }

        if (vuzp1_s8(*&v34, vuzp1_s16(*&v34, vmovn_s64(vcgeq_u64(v34, vorrq_s8(v37, xmmword_186205E90))))).i8[6])
        {
          v36[2] = v33;
          v36[3] = v33;
        }

        v32 += 8;
        v36 += 8;
      }

      while (v35 != v32);
    }
  }

  else
  {
    v23 = *(this + 5);
    if (v23 >= 1)
    {
      v24 = 0;
      v25 = vdupq_n_s64(v23 - 1);
      v26 = (v23 + 3) & 0xFFFFFFFC;
      v27 = v5 + 2;
      do
      {
        v28 = vdupq_n_s64(v24);
        v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_186205EC0)));
        if (vuzp1_s16(v29, *&a3).u8[0])
        {
          *(v27 - 2) = LODWORD(a3);
        }

        if (vuzp1_s16(v29, *&a3).i8[2])
        {
          *(v27 - 1) = LODWORD(a3);
        }

        if (vuzp1_s16(*&a3, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_186205EB0)))).i32[1])
        {
          *v27 = LODWORD(a3);
          v27[1] = LODWORD(a3);
        }

        v24 += 4;
        v27 += 4;
      }

      while (v26 != v24);
    }
  }
}

uint64_t kd_multi_line::apply_offset(uint64_t this, int a2, float a3)
{
  if ((*(this + 6) & 2) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + 8);
  }

  if ((*(this + 6) & 2) != 0)
  {
    v4 = *(this + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*(this + 36) == 1)
  {
    if (a2)
    {
      v5 = *(this + 20);
      if (v3)
      {
        if (v5 >= 1)
        {
          v6 = v5 + 1;
          do
          {
            *v3++ += a2;
            --v6;
          }

          while (v6 > 1);
        }
      }

      else if (v5 >= 1)
      {
        v9 = v5 + 1;
        do
        {
          *v4++ += a2;
          --v9;
        }

        while (v9 > 1);
      }
    }
  }

  else if (a3 != 0.0)
  {
    if (v3)
    {
      v7 = *(this + 20);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        do
        {
          *v3 = *v3 + a3;
          ++v3;
          --v8;
        }

        while (v8 > 1);
      }
    }

    else
    {
      v10 = *(this + 20);
      if (v10 >= 1)
      {
        v11 = vcvtmd_s64_f64((a3 * 8192.0) + 0.5);
        v12 = v10 + 1;
        do
        {
          *v4++ += v11;
          --v12;
        }

        while (v12 > 1);
      }
    }
  }

  return this;
}

uint64_t kd_multi_line::copy(uint64_t this, kd_multi_line *a2, int a3, float a4)
{
  v4 = *(a2 + 5);
  if (v4 != *(this + 20))
  {
    kd_multi_line::copy();
  }

  if ((*(this + 6) & 2) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(this + 8);
  }

  if ((*(this + 6) & 2) != 0)
  {
    v6 = *(this + 8);
  }

  else
  {
    v6 = 0;
  }

  if ((*(a2 + 6) & 2) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a2 + 1);
  }

  if ((*(a2 + 6) & 2) != 0)
  {
    v8 = *(a2 + 1);
  }

  else
  {
    v8 = 0;
  }

  if (*(this + 36) == 1)
  {
    if ((*(a2 + 36) & 1) == 0)
    {
      kd_multi_line::copy();
    }

    if (v5)
    {
      if (v4 >= 1)
      {
        v9 = v4 + 1;
        do
        {
          v10 = *v7++;
          *v5++ = LODWORD(v10) + a3;
          --v9;
        }

        while (v9 > 1);
      }
    }

    else if (v4 >= 1)
    {
      v16 = v4 + 1;
      do
      {
        v17 = *v8++;
        *v6++ = v17 + a3;
        --v16;
      }

      while (v16 > 1);
    }
  }

  else if (v5)
  {
    if (*(a2 + 36) == 1)
    {
      if (v4 >= 1)
      {
        v11 = 1.0 / (1 << *(this + 40));
        v12 = v4 + 1;
        do
        {
          v13 = *v7++;
          *v5++ = a4 + (v13 * v11);
          --v12;
        }

        while (v12 > 1);
      }
    }

    else
    {
      v18 = *(a2 + 10);
      v19 = *(this + 40);
      if (v18 == v19)
      {
        if (v4 >= 1)
        {
          v20 = v4 + 1;
          do
          {
            v21 = *v7++;
            *v5++ = v21 + a4;
            --v20;
          }

          while (v20 > 1);
        }
      }

      else if (v4 >= 1)
      {
        v28 = 1 << v18;
        v29 = (1 << v19);
        v30 = v4 + 1;
        do
        {
          v31 = *v7++;
          *v5++ = a4 + (v31 * (v28 / v29));
          --v30;
        }

        while (v30 > 1);
      }
    }
  }

  else
  {
    v14 = (a4 * 8192.0) + 0.5;
    if (*(a2 + 36))
    {
      v15 = 13;
    }

    else
    {
      v15 = *(a2 + 10);
    }

    v22 = vcvtmd_s64_f64(v14);
    v23 = v15 - *(this + 40);
    if (v23)
    {
      if (v23 < 1)
      {
        if (v4 >= 1)
        {
          v32 = -v23;
          v33 = (v22 << -v23) + (1 << ~v23);
          v34 = v4 + 1;
          do
          {
            v35 = *v8++;
            *v6++ = (v33 + v35) >> v32;
            --v34;
          }

          while (v34 > 1);
        }
      }

      else if (v4 >= 1)
      {
        v26 = v4 + 1;
        do
        {
          v27 = *v8++;
          *v6++ = (v27 << v23) + v22;
          --v26;
        }

        while (v26 > 1);
      }
    }

    else if (v4 >= 1)
    {
      v24 = v4 + 1;
      do
      {
        v25 = *v8++;
        *v6++ = v25 + v22;
        --v24;
      }

      while (v24 > 1);
    }
  }

  return this;
}

void kd_multi_transform::~kd_multi_transform(kd_multi_transform *this)
{
  *this = &unk_1EF4D37F8;
  for (i = *(this + 2); ; i = *(this + 2))
  {
    *(this + 3) = i;
    if (!i)
    {
      break;
    }

    *(this + 2) = i[6];
    (*(*i + 8))(i);
  }

  v3 = *(this + 5);
  for (*(this + 6) = v3; v3; *(this + 6) = v3)
  {
    v4 = *(v3 + 8);
    *(this + 5) = *(v3 + 16);
    if (v4)
    {
      MEMORY[0x186602830](v4, 0x20C8093837F09);
    }

    MEMORY[0x186602850](v3, 0x10A0C40AA2F9B3ELL);
    v3 = *(this + 5);
  }

  v5 = *(this + 7);
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x1020C80587BA0B9);
  }

  v6 = *(this + 4);
  if (v6)
  {
    v7 = v6 - 16;
    v8 = *(v6 - 8);
    if (v8)
    {
      v9 = (v6 + 160 * v8 - 160);
      v10 = -160 * v8;
      do
      {
        kd_multi_component::~kd_multi_component(v9);
        v9 = (v11 - 160);
        v10 += 160;
      }

      while (v10);
    }

    MEMORY[0x186602830](v7, 0x10A1C80A5FDC87BLL);
  }

  v12 = *(this + 14);
  if (v12)
  {
    MEMORY[0x186602830](v12, 0x1000C8052888210);
  }

  v13 = *(this + 16);
  if (v13)
  {
    MEMORY[0x186602830](v13, 0x1000C8052888210);
  }

  v14 = *(this + 11);
  if (v14)
  {
    MEMORY[0x186602830](v14, 0x1000C8077774924);
  }
}

{
  kd_multi_transform::~kd_multi_transform(this);

  JUMPOUT(0x186602850);
}

void kd_multi_transform::construct(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9[0] = a3;
  v9[1] = a2;
  if (a5)
  {
    ycc = 0;
  }

  else
  {
    ycc = kdu_tile::get_ycc(v9);
  }

  *(a1 + 8) = ycc;
  *v7 = 0;
  *v8 = 0;
  operator new();
}

uint64_t kd_multi_transform::get_scratch_ints(kd_multi_transform *this, int a2)
{
  v2 = *(this + 26);
  if (v2 < a2)
  {
    *(this + 26) = v2 + a2;
    v3 = *(this + 14);
    if (v3)
    {
      MEMORY[0x186602830](v3, 0x1000C8052888210);
    }

    operator new[]();
  }

  return *(this + 14);
}

uint64_t kd_multi_transform::propagate_knowledge(kd_multi_transform *this, int a2)
{
  if (*(this + 8) == 1)
  {
    v3 = *(this + 5);
    if (*v3 <= 2)
    {
      kd_multi_transform::propagate_knowledge();
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *(v3 + 8);
    v8 = a2;
    do
    {
      v9 = v7[v4];
      v6 |= v9[36];
      v5 |= v9[37];
      v8 |= v9[38];
      ++v4;
    }

    while (v4 != 3);
    v10 = 0;
    v11 = 0;
    v12 = v6 & 1;
    v13 = v5 & 1;
    v14 = v8 & 1;
    v15 = *v7;
    v16 = *(*v7 + 20);
    do
    {
      v17 = v7[v10];
      *(v17 + 36) = v12;
      *(v17 + 37) = v13;
      *(v17 + 38) = v14;
      if (*(v17 + 20) == v16)
      {
        v11 |= *(v17 + 16) != *(v15 + 16);
      }

      else
      {
        v11 = 1;
      }

      ++v10;
    }

    while (v10 != 3);
  }

  else
  {
    v11 = 0;
  }

  v18 = 0;
  v19 = *(this + 2);
  if (!v19)
  {
    LOBYTE(v20) = 0;
    if ((v11 & 1) == 0)
    {
      goto LABEL_104;
    }

LABEL_107:
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    kdu_error::kdu_error(&v60, "Kakadu Core Error:\n");
    (*(v60 + 16))(&v60, "Cannot implement multi-component transform.  It seems that image components which must be processed by a common transform block (or decorrelating colour transform) have incompatible dimensions.  This error may also be detected if the sub-sampling factors associated with an MCT output image component vary from tile to tile or if relative component size change from resolution level to resolution level (due to incompatible Part-2 downsampling factor style usage).  While these latter conditions might not be strictly illegal, they are clearly foolish.");
    kdu_error::~kdu_error(&v60);
  }

  LOBYTE(v20) = 0;
  if ((v11 & 1) == 0)
  {
    v20 = 0;
    v18 = 0;
    while (1)
    {
      v21 = *(v19 + 24);
      if ((*(v19 + 8) & 1) == 0)
      {
        break;
      }

      v22 = *(v19 + 12);
      if (v21 > v22)
      {
        kd_multi_transform::propagate_knowledge();
      }

      if (v22 >= 1)
      {
        v23 = 0;
        v11 = 0;
        v24 = 20;
        while (1)
        {
          v25 = *(v19 + 16);
          if (a2)
          {
            *(v25 + v24 + 18) = 1;
          }

          v26 = v25 + v24;
          if (*(v25 + v24 + 19))
          {
            goto LABEL_45;
          }

          v27 = *(*(v19 + 32) + 8 * v23);
          if (*(v27 + 38) != *(v26 + 18))
          {
            v20 = 1;
            *(v27 + 38) = 1;
            *(v26 + 18) = 1;
          }

          v28 = v25 + v24;
          if (*(v27 + 37) != *(v25 + v24 + 17))
          {
            v20 = 1;
            *(v27 + 37) = 1;
            *(v28 + 17) = 1;
          }

          if (*(v27 + 36) != *(v28 + 16))
          {
            v20 = 1;
            *(v27 + 36) = 1;
            *(v28 + 16) = 1;
          }

          v29 = (v27 + 16);
          v30 = (v25 + v24 - 4);
          v31 = *(v25 + v24);
          v32 = *(v27 + 20);
          if (v32 != v31 || *v29 != *v30)
          {
            break;
          }

LABEL_38:
          v34 = *(v27 + 40);
          v35 = v25 + v24;
          v36 = *(v35 + 20);
          if (v34 != v36)
          {
            if (v34)
            {
              if (v36)
              {
                v18 = 1;
              }

              else
              {
                *(v35 + 20) = v34;
              }
            }

            else
            {
              *(v27 + 40) = v36;
            }

            v20 = 1;
          }

LABEL_45:
          ++v23;
          v24 += 80;
          if (v23 >= *(v19 + 12))
          {
            goto LABEL_101;
          }
        }

        if (v32 || *v29)
        {
          if (v31 || (v33 = (v27 + 16), *v30))
          {
            v11 = 1;
LABEL_37:
            v20 = 1;
            goto LABEL_38;
          }
        }

        else
        {
          v33 = (v25 + v24 - 4);
          v30 = (v27 + 16);
        }

        *v30 = *v33;
        goto LABEL_37;
      }

      v11 = 0;
LABEL_101:
      v19 = *(v19 + 48);
      if (!v19 || (v11 & 1) != 0)
      {
        goto LABEL_103;
      }
    }

    if (v21 >= 1)
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = *(v19 + 32);
      v42 = *(v19 + 24);
      v43 = a2;
      while (1)
      {
        v44 = *v41;
        if (*v41)
        {
          break;
        }

LABEL_56:
        ++v41;
        if (!--v42)
        {
          goto LABEL_59;
        }
      }

      if (*(v44 + 20) == v40)
      {
        if ((*(v44 + 16) == v39) | v38 & 1)
        {
          goto LABEL_55;
        }
      }

      else if (v38)
      {
LABEL_55:
        v43 |= *(v44 + 38);
        v37 |= *(v44 + 40) == 0;
        goto LABEL_56;
      }

      v45 = *(v44 + 16);
      v39 = v45;
      v40 = HIDWORD(v45);
      v38 = 1;
      goto LABEL_55;
    }

    v40 = 0;
    v39 = 0;
    v38 = 0;
    v37 = 0;
    v43 = a2;
LABEL_59:
    v46 = *(v19 + 12);
    if (v46 < 1)
    {
      v47 = 0;
LABEL_69:
      v52 = v39 | (v40 << 32);
      if (v21 < 1)
      {
        v11 = 0;
      }

      else
      {
        v53 = 0;
        v11 = 0;
        do
        {
          v54 = *(*(v19 + 32) + 8 * v53);
          if (v54)
          {
            if (*(v54 + 38) != (v43 & 1))
            {
              v20 = 1;
              *(v54 + 38) = 1;
            }

            if (*(v54 + 20) != v40 || *(v54 + 16) != v39)
            {
              if ((v38 & 1) == 0)
              {
                kd_multi_transform::propagate_knowledge();
              }

              if (*(v54 + 20) || *(v54 + 16))
              {
                v11 = 1;
              }

              else
              {
                *(v54 + 16) = v52;
                v21 = *(v19 + 24);
              }

              v20 = 1;
            }
          }

          ++v53;
        }

        while (v53 < v21);
        v46 = *(v19 + 12);
      }

      if (v46 >= 1)
      {
        v55 = 0;
        v56 = 0;
        v57 = v43 & 1;
        do
        {
          v58 = *(v19 + 16) + v55;
          if (*(v58 + 38) != v57)
          {
            v20 = 1;
            *(v58 + 38) = 1;
          }

          if (*(v58 + 20) != v40 || *(v58 + 16) != v39)
          {
            if ((v38 & 1) == 0)
            {
              kd_multi_transform::propagate_knowledge();
            }

            if (*(v58 + 20) || *(v58 + 16))
            {
              v11 = 1;
            }

            else
            {
              *(v58 + 16) = v52;
              v46 = *(v19 + 12);
            }

            v20 = 1;
          }

          ++v56;
          v55 += 80;
        }

        while (v56 < v46);
      }

      v20 |= (*(*v19 + 32))(v19, v37 & 1, v47 & 1);
      goto LABEL_101;
    }

    v47 = 0;
    v48 = *(v19 + 16) + 20;
    v49 = *(v19 + 12);
    while (*v48 != v40)
    {
      if ((v38 & 1) == 0)
      {
        goto LABEL_65;
      }

LABEL_66:
      v43 |= *(v48 + 18);
      v51 = *(v48 + 20);
      v48 += 80;
      v47 |= v51 == 0;
      if (!--v49)
      {
        goto LABEL_69;
      }
    }

    if ((*(v48 - 4) == v39) | v38 & 1)
    {
      goto LABEL_66;
    }

LABEL_65:
    v50 = *(v48 - 4);
    v39 = v50;
    v40 = HIDWORD(v50);
    v38 = 1;
    goto LABEL_66;
  }

LABEL_103:
  if (v11)
  {
    goto LABEL_107;
  }

LABEL_104:
  if (v18)
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    kdu_error::kdu_error(&v60, "Kakadu Core Error:\n");
    (*(v60 + 16))(&v60, "Part-2 codestream declares a codestream component to have a different bit-depth (Sprecision) to the output component (Mprecision) with which it is directly associated.  While this is allowed, it makes very little sense, and Kakadu will not perform the required multiple scaling for irreversibly transformed components.");
    kdu_error::~kdu_error(&v60);
  }

  return v20 & 1;
}

void kd_multi_transform::create_resources(kd_multi_transform *this)
{
  v2 = *(this + 5);
  v3 = *v2;
  if (*v2 < 1)
  {
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(this + 4) + 160 * v4;
      if (*(*(v2 + 8) + 8 * v4) != v6 + 24)
      {
        kd_multi_transform::create_resources();
      }

      v7 = *(v6 + 61) != *(v6 + 60);
      if (*(v6 + 128) >= 1)
      {
        v8 = 0;
        v9 = 0;
        do
        {
          kdu_line_buf::pre_create((*(v6 + 136) + v8), (this + 64), *(v6 + 44), *(v6 + 60), (*(v6 + 62) & 1) == 0, 2u, 2);
          ++v9;
          v8 += 16;
        }

        while (v9 < *(v6 + 128));
        v2 = *(this + 5);
        v3 = *v2;
      }

      v5 &= v7;
      ++v4;
    }

    while (v4 < v3);
  }

  for (i = *(this + 2); i; i = *(i + 48))
  {
    v11 = *(i + 12);
    if (v11 >= 1)
    {
      v12 = 0;
      for (j = 0; j < v11; ++j)
      {
        v14 = *(i + 16) + v12;
        v15 = *(v14 + 36);
        v16 = *(v14 + 37) != v15;
        if (!*(v14 + 56))
        {
          kdu_line_buf::pre_create(v14, (this + 64), *(v14 + 20), v15, (*(v14 + 38) & 1) == 0, 2u, 2);
          v11 = *(i + 12);
        }

        v5 &= v16;
        v12 += 80;
      }
    }
  }

  v17 = *(this + 6);
  v18 = *v17;
  if (*v17 >= 1)
  {
    v19 = 0;
    do
    {
      v20 = *(*(v17 + 8) + 8 * v19);
      v21 = *(v20 + 36);
      v22 = *(v20 + 37) != v21;
      if (!*(v20 + 56) && !*(v20 + 64) && (*(v20 + 72) & 0x80000000) != 0)
      {
        kdu_line_buf::pre_create(v20, (this + 64), *(v20 + 20), v21, (*(v20 + 38) & 1) == 0, 2u, 2);
        v17 = *(this + 6);
        v18 = *v17;
      }

      v5 &= v22;
      ++v19;
    }

    while (v19 < v18);
  }

  if ((v5 & 1) == 0)
  {
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    kdu_error::kdu_error(v38, "Kakadu Core Error:\n");
    (*(*&v38[0] + 16))(v38, "Cannot implement multi-component transform.  It seems that one or more transform steps require image samples to be treated as reversible, where other steps require the same image samples to be treated as irreversible.  This is illegal in Part-1 of the JPEG2000 standard.  Although Part-2 is not clear on the matter, Kakadu's implementation insists only that irreversibly compressed samples not be subjected to reversible multi-component transform processing during decompression -- this is eminently reasonable, since exact reversible processing of data which is not already exactly defined, makes no sense.  The reverse case, in which reversibly compressed data is processed using an irreversible multi-component transform, can make sense, particularly where there are multiple ways to render the same original reversibly compressed codestream components to MCT outputs.");
    kdu_error::~kdu_error(v38);
  }

  kdu_sample_allocator::finalize(this + 64);
  v23 = **(this + 5);
  if (v23 >= 1)
  {
    for (k = 0; k < v23; ++k)
    {
      v25 = *(this + 4) + 160 * k;
      if (*(v25 + 128) >= 1)
      {
        v26 = 0;
        v27 = 0;
        do
        {
          kdu_line_buf::create(*(v25 + 136) + v26);
          ++v27;
          v26 += 16;
        }

        while (v27 < *(v25 + 128));
        v23 = **(this + 5);
      }
    }
  }

  for (m = *(this + 2); m; m = *(m + 48))
  {
    if (*(m + 12) >= 1)
    {
      v29 = 0;
      v30 = 0;
      do
      {
        v31 = *(m + 16);
        if (!*(v31 + v29 + 56))
        {
          kdu_line_buf::create(v31 + v29);
          if (*(v31 + v29 + 39) == 1)
          {
            LODWORD(v32) = *(v31 + v29 + 48);
            kd_multi_line::reset((v31 + v29), *(v31 + v29 + 44), v32);
          }
        }

        ++v30;
        v29 += 80;
      }

      while (v30 < *(m + 12));
    }
  }

  v33 = *(this + 6);
  v34 = *v33;
  if (*v33 >= 1)
  {
    v35 = 0;
    do
    {
      v36 = *(*(v33 + 8) + 8 * v35);
      if (!*(v36 + 56) && !*(v36 + 64) && (*(v36 + 72) & 0x80000000) != 0)
      {
        kdu_line_buf::create(*(*(v33 + 8) + 8 * v35));
        if ((*(v36 + 39) & 1) == 0)
        {
          kd_multi_transform::create_resources();
        }

        LODWORD(v37) = *(v36 + 48);
        kd_multi_line::reset(v36, *(v36 + 44), v37);
        v33 = *(this + 6);
        v34 = *v33;
      }

      ++v35;
    }

    while (v35 < v34);
  }
}

uint64_t kd_multi_transform::get_scratch_floats(kd_multi_transform *this, int a2)
{
  v2 = *(this + 30);
  if (v2 < a2)
  {
    *(this + 30) = v2 + a2;
    v3 = *(this + 16);
    if (v3)
    {
      MEMORY[0x186602830](v3, 0x1000C8052888210);
    }

    operator new[]();
  }

  return *(this + 16);
}

void kd_multi_synthesis::~kd_multi_synthesis(kd_multi_synthesis *this)
{
  *this = &unk_1EF4D3818;
  v2 = (this + 8);
  *(this + 1) = &unk_1EF4D3860;
  v3 = *(this + 18);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8052888210);
  }

  kd_multi_transform::~kd_multi_transform(v2);
  *this = &unk_1EF4D3C30;
}

{
  kd_multi_synthesis::~kd_multi_synthesis(this);

  JUMPOUT(0x186602850);
}

void non-virtual thunk tokd_multi_synthesis::~kd_multi_synthesis(kd_multi_synthesis *this)
{
  kd_multi_synthesis::~kd_multi_synthesis((this - 8));
}

{
  kd_multi_synthesis::~kd_multi_synthesis((this - 8));

  JUMPOUT(0x186602850);
}

uint64_t kd_multi_synthesis::terminate_queues(uint64_t result, kdu_thread_entity *this)
{
  if (this)
  {
    v3 = *(result + 104);
    if (!v3 || !*(*(result + 40) + 16))
    {
      kd_multi_synthesis::terminate_queues();
    }

    return kdu_thread_entity::terminate(this, v3, 1, 0);
  }

  return result;
}

uint64_t kd_multi_synthesis::get_size(kd_multi_synthesis *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || (v2 = *(this + 7), *v2 <= a2))
  {
    kd_multi_synthesis::get_size();
  }

  return *(*(*(v2 + 8) + 8 * a2) + 16);
}

uint64_t kd_multi_synthesis::get_line(uint64_t a1, unsigned int a2, kdu_thread_entity *a3)
{
  if ((a2 & 0x80000000) != 0 || (v5 = *(a1 + 56), *v5 <= a2))
  {
    kd_multi_synthesis::get_line();
  }

  result = kd_multi_synthesis::get_line(a1, *(*(v5 + 8) + 8 * a2), *(*(a1 + 144) + 4 * a2), a3);
  if (result)
  {
    ++*(*(a1 + 144) + 4 * a2);
  }

  return result;
}

uint64_t kd_multi_synthesis::get_line(uint64_t a1, uint64_t a2, uint64_t a3, kdu_thread_entity *a4)
{
  if (*(a2 + 56))
  {
    kd_multi_synthesis::get_line();
  }

  v4 = a2;
  if ((*(a2 + 39) & 1) == 0)
  {
    v6 = *(a2 + 24);
    if (v6 == a3)
    {
      v7 = *(a2 + 32);
      if (v7 <= 0)
      {
        kd_multi_synthesis::get_line();
      }

LABEL_5:
      *(v4 + 32) = v7 - 1;
      v8 = *(v4 + 64);
      if (v8)
      {
        --*(v8 + 44);
      }

      return v4;
    }

    if (v6 != a3 - 1)
    {
      kd_multi_synthesis::get_line();
    }

    if (*(a2 + 32) > 0)
    {
      return 0;
    }

    v12 = *(a2 + 64);
    if (v12)
    {
      if (*(v12 + 8) == 1)
      {
        v13 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - *(v12 + 16)) >> 4);
        if ((v13 & 0x80000000) != 0 || *(v12 + 24) <= v13)
        {
          kd_multi_synthesis::get_line();
        }

        v14 = *(v12 + 32);
        v15 = 8 * (v13 & 0x7FFFFFFF);
        v16 = *(v14 + v15);
        if (!v16)
        {
          kd_multi_synthesis::get_line();
        }

        if (!kd_multi_synthesis::get_line(a1, *(v14 + v15), a3, a4))
        {
          return 0;
        }

        *(v4 + 24) = a3;
        *(v4 + 32) = *(v4 + 28);
        kd_multi_line::copy(v4, v16, *(v4 + 44), *(v4 + 48));
      }

      else
      {
        if (*(v12 + 44) > 0)
        {
          return 0;
        }

        v39 = *(v12 + 40);
        v40 = *(v12 + 24);
        while (v39 < v40)
        {
          v41 = *(*(v12 + 32) + 8 * v39);
          if (v41 && *(v41 + 39) != 1)
          {
            if (!kd_multi_synthesis::get_line(a1, v41, a3, a4))
            {
              return 0;
            }

            ++*(v41 + 32);
            v42 = *(v41 + 64);
            if (v42)
            {
              ++*(v42 + 44);
            }

            v39 = *(v12 + 40);
            v40 = *(v12 + 24);
          }

          *(v12 + 40) = ++v39;
        }

        (*(*v12 + 40))(v12);
        if (*(v12 + 24) >= 1)
        {
          v44 = 0;
          do
          {
            v45 = *(*(v12 + 32) + 8 * v44);
            if (v45)
            {
              if (*(v45 + 24) != a3)
              {
                kd_multi_synthesis::get_line();
              }

              --*(v45 + 32);
              v46 = *(v45 + 64);
              if (v46)
              {
                --*(v46 + 44);
              }
            }

            ++v44;
          }

          while (v44 < *(v12 + 24));
        }

        if (*(v12 + 12) >= 1)
        {
          v47 = 0;
          v48 = 0;
          do
          {
            v49 = *(v12 + 16);
            v50 = v49 + v47;
            if (*(v49 + v47 + 32) || *(v50 + 24) != v6)
            {
              kd_multi_synthesis::get_line();
            }

            *(v50 + 24) = a3;
            v51 = *(v49 + v47 + 28);
            *(v50 + 32) = v51;
            *(v12 + 44) += v51;
            ++v48;
            v47 += 80;
          }

          while (v48 < *(v12 + 12));
        }

        *(v12 + 40) = 0;
      }
    }

    else
    {
      v17 = *(a2 + 72);
      if ((v17 & 0x80000000) != 0)
      {
        kd_multi_synthesis::get_line();
      }

      v18 = *(*(a1 + 48) + 8);
      if (*(v18 + 8 * v17) != a2)
      {
        kd_multi_synthesis::get_line();
      }

      v19 = (v17 < 3) & *(a1 + 16);
      if (v19 == 1)
      {
        v20 = 0;
        while (1)
        {
          v21 = *(v18 + v20);
          if (*(v21 + 24) != v6)
          {
            kd_multi_synthesis::get_line();
          }

          if (*(v21 + 32) >= 1)
          {
            return 0;
          }

          v20 += 8;
          if (v20 == 24)
          {
            v17 = 0;
            break;
          }
        }
      }

      v22 = 160 * v17 + 136;
      do
      {
        v23 = *(a1 + 40);
        v24 = (v23 + v22);
        v25 = *(v23 + v22 - 24);
        if (!v25)
        {
          if (*(v24 - 32) == 1)
          {
            if (!a4 || (v26 = v23 + v22, *(v23 + v22 - 16) <= 0))
            {
              kd_multi_synthesis::get_line();
            }

            kdu_thread_entity::process_jobs(a4, *(v26 - 120), 0, 1);
            v27 = *(v26 - 20);
            v25 = *(v26 - 16);
            *(v26 - 28) = v27;
            if (v27 <= 0)
            {
              v28 = v25;
            }

            else
            {
              v28 = 0;
            }

            v29 = *(v26 - 96) - (v25 + a3);
            if (v29 >= *(v26 - 12))
            {
              v29 = *(v26 - 12);
            }

            *(v24 - 6) = v25;
            *(v26 - 20) = v28;
            *(v26 - 16) = v29;
            if (v29 >= 1)
            {
              kdu_thread_entity::add_jobs(a4, *(v26 - 120), 1, 0);
              v25 = *(v24 - 6);
            }
          }

          else
          {
            v30 = v23 + v22;
            if ((a4 == 0) != (*(v23 + v22 - 120) == 0))
            {
              kd_multi_synthesis::get_line();
            }

            *(v30 - 28) = 0;
            v31 = *(v30 - 96) - a3;
            if (v31 >= *(v30 - 12))
            {
              v31 = *(v30 - 12);
            }

            *(v30 - 20) = 0;
            *(v30 - 16) = v31;
            (*(*(v24 - 17) + 16))(v24 - 17, a4, 0);
            v25 = *(v30 - 16);
            *(v24 - 6) = v25;
            *(v30 - 16) = 0;
          }
        }

        v32 = *v24;
        v33 = *(v24 - 7);
        *(v24 - 7) = v33 + 1;
        *(v24 - 7) = *(v32 + 16 * v33);
        *(v24 - 6) = v25 - 1;
        if (v17 < 2)
        {
          v34 = v19;
        }

        else
        {
          v34 = 0;
        }

        ++v17;
        v22 += 160;
      }

      while ((v34 & 1) != 0);
      if (v19)
      {
        v35 = *(*(a1 + 48) + 8);
        if (kdu_convert_ycc_to_rgb(*v35, v35[1], v35[2], -1))
        {
          v53 = 0;
          memset(v52, 0, sizeof(v52));
          kdu_error::kdu_error(v52, "Kakadu Core Error:\n");
          (*(*&v52[0] + 16))(v52, "Corrupt JP2 data");
          kdu_error::~kdu_error(v52);
        }

        for (i = 0; i != 3; ++i)
        {
          v37 = v35[i];
          kd_multi_line::apply_offset(v37, *(v37 + 44), *(v37 + 48));
          v38 = *(v37 + 28);
          ++*(v37 + 24);
          *(v37 + 32) = v38;
        }
      }

      else
      {
        kd_multi_line::apply_offset(v4, *(v4 + 44), *(v4 + 48));
        v43 = *(v4 + 28);
        ++*(v4 + 24);
        *(v4 + 32) = v43;
      }
    }

    if (*(v4 + 24) != a3 || (v7 = *(v4 + 32), v7 <= 0))
    {
      kd_multi_synthesis::get_line();
    }

    goto LABEL_5;
  }

  return v4;
}

uint64_t kd_multi_synthesis::is_line_precise(kd_multi_synthesis *this, unsigned int a2)
{
  v2 = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v3 = *(this + 7);
    if (v3)
    {
      if (*v3 <= a2)
      {
        v2 = 0;
      }

      else
      {
        v2 = *(*(*(v3 + 8) + 8 * a2) + 38);
      }
    }
  }

  return v2 & 1;
}

uint64_t kd_multi_synthesis::is_line_absolute(kd_multi_synthesis *this, unsigned int a2)
{
  v2 = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v3 = *(this + 7);
    if (v3)
    {
      if (*v3 <= a2)
      {
        v2 = 0;
      }

      else
      {
        v2 = *(*(*(v3 + 8) + 8 * a2) + 36);
      }
    }
  }

  return v2 & 1;
}

void kd_multi_analysis::~kd_multi_analysis(kd_multi_analysis *this)
{
  *this = &unk_1EF4D3880;
  v2 = (this + 8);
  *(this + 1) = &unk_1EF4D38C8;
  v3 = *(this + 18);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8052888210);
  }

  kd_multi_transform::~kd_multi_transform(v2);
  *this = &unk_1EF4D3C78;
}

{
  kd_multi_analysis::~kd_multi_analysis(this);

  JUMPOUT(0x186602850);
}

void non-virtual thunk tokd_multi_analysis::~kd_multi_analysis(kd_multi_analysis *this)
{
  kd_multi_analysis::~kd_multi_analysis((this - 8));
}

{
  kd_multi_analysis::~kd_multi_analysis((this - 8));

  JUMPOUT(0x186602850);
}

uint64_t kd_multi_analysis::terminate_queues(uint64_t result, kdu_thread_entity *this)
{
  if (this)
  {
    v3 = *(result + 104);
    if (!v3 || !*(*(result + 40) + 16))
    {
      kd_multi_analysis::terminate_queues();
    }

    return kdu_thread_entity::terminate(this, v3, 1, 0);
  }

  return result;
}

void *kd_multi_analysis::prepare_network_for_inversion(void *this)
{
  v1 = this;
  v2 = this[4];
  if (v2)
  {
    v3 = 0;
    v50 = vdupq_n_s64(0x10uLL);
    do
    {
      if (*(v2 + 8) == 1)
      {
        v4 = *(v2 + 24);
        if (v4 >= 1)
        {
          v5 = 0;
          v6 = 8 * (*(v2 + 12) & ~(*(v2 + 12) >> 31));
          v7 = 8 * v4;
          v8 = 28;
          do
          {
            if (v6 == v5)
            {
              kd_multi_analysis::prepare_network_for_inversion();
            }

            if (!*(*(v2 + 16) + v8))
            {
              v9 = *(v2 + 32);
              v10 = *(v9 + v5);
              if (v10)
              {
                --*(v10 + 28);
                *(v9 + v5) = 0;
              }
            }

            v5 += 8;
            v8 += 80;
          }

          while (v7 != v5);
        }
      }

      else
      {
        this = (*(*v2 + 48))(v2);
        if (this)
        {
          v11 = *(v2 + 12);
          if (v11 >= 1)
          {
            v12 = 0;
            v13 = vdupq_n_s64(v11 - 1);
            v14 = 1280 * ((v11 + 15) >> 4);
            v15 = *(v2 + 16);
            v16 = xmmword_186205EC0;
            v17 = xmmword_186205EB0;
            v18 = xmmword_186205EA0;
            v19 = xmmword_186205E90;
            v20 = xmmword_186205E80;
            v21 = xmmword_186205E70;
            v22 = xmmword_186205E60;
            v23 = xmmword_186205E50;
            do
            {
              v24 = vmovn_s64(vcgeq_u64(v13, v16));
              if (vuzp1_s8(vuzp1_s16(v24, *v13.i8), *v13.i8).u8[0])
              {
                *(v15 + v12 + 39) = 1;
              }

              if (vuzp1_s8(vuzp1_s16(v24, *&v13), *&v13).i8[1])
              {
                *(v15 + v12 + 119) = 1;
              }

              if (vuzp1_s8(vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v17))), *&v13).i8[2])
              {
                *(v15 + v12 + 199) = 1;
                *(v15 + v12 + 279) = 1;
              }

              v25 = vmovn_s64(vcgeq_u64(v13, v18));
              if (vuzp1_s8(*&v13, vuzp1_s16(v25, *&v13)).i32[1])
              {
                *(v15 + v12 + 359) = 1;
              }

              if (vuzp1_s8(*&v13, vuzp1_s16(v25, *&v13)).i8[5])
              {
                *(v15 + v12 + 439) = 1;
              }

              if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v19)))).i8[6])
              {
                *(v15 + v12 + 519) = 1;
                *(v15 + v12 + 599) = 1;
              }

              v26 = vmovn_s64(vcgeq_u64(v13, v20));
              if (vuzp1_s8(vuzp1_s16(v26, *v13.i8), *v13.i8).u8[0])
              {
                *(v15 + v12 + 679) = 1;
              }

              if (vuzp1_s8(vuzp1_s16(v26, *&v13), *&v13).i8[1])
              {
                *(v15 + v12 + 759) = 1;
              }

              if (vuzp1_s8(vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v21))), *&v13).i8[2])
              {
                *(v15 + v12 + 839) = 1;
                *(v15 + v12 + 919) = 1;
              }

              v27 = vmovn_s64(vcgeq_u64(v13, v22));
              if (vuzp1_s8(*&v13, vuzp1_s16(v27, *&v13)).i32[1])
              {
                *(v15 + v12 + 999) = 1;
              }

              if (vuzp1_s8(*&v13, vuzp1_s16(v27, *&v13)).i8[5])
              {
                *(v15 + v12 + 1079) = 1;
              }

              if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v23)))).i8[6])
              {
                *(v15 + v12 + 1159) = 1;
                *(v15 + v12 + 1239) = 1;
              }

              v18 = vaddq_s64(v18, v50);
              v17 = vaddq_s64(v17, v50);
              v16 = vaddq_s64(v16, v50);
              v19 = vaddq_s64(v19, v50);
              v20 = vaddq_s64(v20, v50);
              v21 = vaddq_s64(v21, v50);
              v22 = vaddq_s64(v22, v50);
              v12 += 1280;
              v23 = vaddq_s64(v23, v50);
            }

            while (v14 != v12);
          }

          v28 = *(v2 + 24);
          if (v28 >= 1)
          {
            v29 = 0;
            v30 = 8 * v28;
            do
            {
              v31 = *(v2 + 32);
              v32 = *(v31 + v29);
              if (v32)
              {
                --*(v32 + 28);
                *(v31 + v29) = 0;
              }

              v29 += 8;
            }

            while (v30 != v29);
          }

          v3 = this;
        }
      }

      v2 = *(v2 + 56);
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  for (i = v1[3]; i; i = *(i + 48))
  {
    v34 = *(i + 24);
    if (v34 >= 1)
    {
      v35 = 0;
      v36 = 8 * v34;
      v37 = 39;
      do
      {
        v38 = *(i + 32);
        v39 = *(v38 + v35);
        if (v39)
        {
          if (*(v39 + 39) == 1)
          {
            *(v38 + v35) = 0;
            --*(v39 + 28);
            if (*(i + 8) == 1)
            {
              *(*(i + 16) + v37) = 1;
            }
          }
        }

        v35 += 8;
        v37 += 80;
      }

      while (v36 != v35);
    }
  }

  v40 = v1[6];
  if (*v40 >= 1)
  {
    v41 = 0;
    do
    {
      if (*(*(*(v40 + 1) + 8 * v41) + 28) <= 0)
      {
        v52 = 0;
        memset(v51, 0, sizeof(v51));
        kdu_error::kdu_error(v51, "Kakadu Core Error:\n");
        (*(*&v51[0] + 16))();
        if (v3)
        {
          (*(*&v51[0] + 16))(v51, "  The following additional explanation is available ---- ");
          (*(*&v51[0] + 16))(v51, v3);
        }

        kdu_error::~kdu_error(v51);
      }

      ++v41;
    }

    while (v41 < *v40);
  }

  v42 = v1[7];
  v43 = *v42;
  if (*v42 >= 1)
  {
    v44 = 0;
    do
    {
      v45 = v1[4];
      if (v45)
      {
        v46 = *(*(v42 + 8) + 8 * v44);
        do
        {
          if (*(v46 + 28) < 2)
          {
            break;
          }

          v47 = *(v45 + 24);
          if (v47 >= 1)
          {
            v48 = *(v45 + 32);
            while (*v48 != *(*(v42 + 8) + 8 * v44))
            {
              ++v48;
              if (!--v47)
              {
                goto LABEL_76;
              }
            }

            *v48 = 0;
            v42 = v1[7];
            v49 = *(*(v42 + 8) + 8 * v44);
            --*(v49 + 28);
          }

LABEL_76:
          v45 = *(v45 + 56);
        }

        while (v45);
        v43 = *v42;
      }

      ++v44;
    }

    while (v44 < v43);
  }

  return this;
}

uint64_t kd_multi_analysis::get_size(kd_multi_analysis *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || (v2 = *(this + 7), *v2 <= a2))
  {
    kd_multi_analysis::get_size();
  }

  return *(*(*(v2 + 8) + 8 * a2) + 16);
}

uint64_t kd_multi_analysis::exchange_line(uint64_t a1, unsigned int a2, uint64_t a3, kdu_thread_entity *a4)
{
  if ((a2 & 0x80000000) != 0 || (v6 = *(a1 + 56), *v6 <= a2))
  {
    kd_multi_analysis::exchange_line();
  }

  v7 = *(*(a1 + 144) + 4 * a2);
  v8 = *(*(v6 + 8) + 8 * a2);
  if (v7 >= *(v8 + 16))
  {
    return 0;
  }

  if (*(v8 + 28) != 1)
  {
    kd_multi_analysis::exchange_line();
  }

  if (a3)
  {
    if (v8 != a3 || *(v8 + 32) == 1)
    {
      kd_multi_analysis::exchange_line();
    }

    kd_multi_line::apply_offset(v8, -*(v8 + 44), -*(v8 + 48));
    kd_multi_analysis::advance_line(a1, v8, v7, a4);
    LODWORD(v7) = v7 + 1;
    *(*(a1 + 144) + 4 * a2) = v7;
  }

  if (*(v8 + 24) != v7 - 1)
  {
    kd_multi_analysis::exchange_line();
  }

  if (*(v8 + 32))
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t kd_multi_analysis::advance_line(uint64_t result, uint64_t a2, uint64_t a3, kdu_thread_entity *a4)
{
  if (*(a2 + 28) != 1)
  {
    kd_multi_analysis::advance_line();
  }

  if (*(a2 + 24) != a3 - 1)
  {
    kd_multi_analysis::advance_line();
  }

  *(a2 + 24) = a3;
  *(a2 + 32) = 0;
  if ((*(a2 + 39) & 1) == 0)
  {
    v7 = result;
    v8 = *(a2 + 64);
    if (v8)
    {
      if (*(v8 + 8) != 1)
      {
        *(a2 + 32) = 1;
        v37 = *(v8 + 44);
        v29 = __OFSUB__(v37--, 1);
        *(v8 + 44) = v37;
        if (!((v37 < 0) ^ v29 | (v37 == 0)))
        {
          return result;
        }

        v38 = *(v8 + 24);
        v39 = *(v8 + 40);
        if (v38 > v39)
        {
          v40 = 8 * v39;
          v41 = v38 - v39;
          v42 = v39 + 1;
          do
          {
            v43 = *(v8 + 32);
            v44 = *(v43 + v40);
            if (v44)
            {
              if (*(v44 + 39) == 1)
              {
                *(v43 + v40) = 0;
              }

              else if (*(v44 + 24) < a3 && (*(v44 + 32) & 1) != 0)
              {
                return result;
              }
            }

            *(v8 + 40) = v42;
            v40 += 8;
            ++v42;
            --v41;
          }

          while (v41);
        }

        if (v38 >= 1)
        {
          v45 = 0;
          v46 = 8 * v38;
          do
          {
            v47 = *(v8 + 32);
            v48 = *(v47 + v45);
            if (v48 && *(v48 + 24) >= a3)
            {
              v49 = *(v48 + 28);
              v29 = __OFSUB__(v49, 1);
              v50 = v49 - 1;
              if ((v50 < 0) ^ v29 | (v50 == 0))
              {
                kd_multi_analysis::advance_line();
              }

              *(v48 + 28) = v50;
              *(v47 + v45) = 0;
            }

            v45 += 8;
          }

          while (v46 != v45);
        }

        result = (*(*v8 + 56))(v8);
        v51 = *(v8 + 24);
        if (v51 >= 1)
        {
          for (i = 0; i < v51; ++i)
          {
            v53 = *(*(v8 + 32) + 8 * i);
            if (v53)
            {
              result = kd_multi_analysis::advance_line(v7, v53, a3, a4);
              v51 = *(v8 + 24);
            }
          }
        }

        if (*(v8 + 12) >= 1)
        {
          v54 = 0;
          v55 = 0;
          v56 = *(v8 + 16);
          do
          {
            *(v56 + v54 + 32) = 0;
            v56 = *(v8 + 16);
            v57 = *(v56 + v54 + 28);
            if (v57 >= 1)
            {
              if (v57 != 1)
              {
                kd_multi_analysis::advance_line();
              }

              ++*(v8 + 44);
            }

            ++v55;
            v54 += 80;
          }

          while (v55 < *(v8 + 12));
        }

        *(v8 + 40) = 0;
        goto LABEL_76;
      }

      v9 = -858993459 * ((a2 - *(v8 + 16)) >> 4);
      if (v9 < 0 || *(v8 + 24) <= v9)
      {
        kd_multi_analysis::advance_line();
      }

      v10 = *(v8 + 32);
      v11 = v9 & 0x7FFFFFFF;
      v12 = *(v10 + 8 * v11);
      v13 = *(v12 + 28);
      if (*(v12 + 24) < a3)
      {
        if (v13 < 1 || *(v12 + 39) == 1)
        {
          kd_multi_analysis::advance_line();
        }

        kd_multi_line::copy(v12, a2, -*(v12 + 44), -*(v12 + 48));
        result = kd_multi_analysis::advance_line(v7, v12, a3, a4);
LABEL_76:
        if (*(a2 + 32) == 1)
        {
          kd_multi_analysis::advance_line();
        }

        return result;
      }

      v29 = __OFSUB__(v13, 1);
      v58 = v13 - 1;
      if ((v58 < 0) ^ v29 | (v58 == 0))
      {
        kd_multi_analysis::advance_line();
      }

      *(v12 + 28) = v58;
      *(v10 + 8 * v11) = 0;
    }

    else
    {
      v14 = *(a2 + 72);
      if ((v14 & 0x80000000) != 0)
      {
        kd_multi_analysis::advance_line();
      }

      if (*(*(*(result + 48) + 8) + 8 * v14) != a2)
      {
        kd_multi_analysis::advance_line();
      }

      v15 = (v14 < 3) & *(result + 16);
      if (v15 != 1)
      {
LABEL_24:
        v20 = ~a3;
        v21 = 160 * v14 + 136;
        do
        {
          v22 = *(v7 + 40);
          v23 = v22 + v21;
          v24 = *(v22 + v21 - 24);
          if (!v24)
          {
            if (*(v23 - 32) == 1)
            {
              if (!a4)
              {
                kd_multi_analysis::advance_line();
              }

              v25 = v22 + v21;
              if (*(v22 + v21 - 16) && (kdu_thread_entity::process_jobs(a4, *(v25 - 120), 0, 1), !*(v25 - 20)))
              {
                v35 = *(v25 - 16);
                v36 = *(v22 + v21 - 28) - v35;
                *(v25 - 20) = v35;
                *(v25 - 16) = v36;
                if (v35 >= 1)
                {
                  *(v22 + v21 - 28) = 0;
                }
              }

              else
              {
                v26 = *(v25 - 28);
                *(v25 - 20) = 0;
                *(v25 - 16) = v26;
              }

              result = kdu_thread_entity::add_jobs(a4, *(v22 + v21 - 120), 1, 0);
            }

            else
            {
              v27 = v22 + v21;
              if ((a4 == 0) != (*(v22 + v21 - 120) == 0))
              {
                kd_multi_analysis::advance_line();
              }

              v28 = *(v27 - 28);
              *(v27 - 20) = 0;
              *(v27 - 16) = v28;
              *(v27 - 28) = 0;
              result = (*(*(v23 - 136) + 16))(v23 - 136, a4, 0);
              *(v27 - 16) = 0;
            }

            v24 = *(v22 + v21 - 12);
            if (*(v22 + v21 - 96) + v20 < v24)
            {
              v24 = *(v22 + v21 - 96) + v20;
            }

            *(v23 - 24) = v24;
          }

          v29 = __OFSUB__(v24, 1);
          v30 = v24 - 1;
          if (v30 < 0 == v29)
          {
            v31 = v22 + v21;
            v32 = *(v22 + v21);
            v33 = *(v22 + v21 - 28);
            *(v31 - 28) = v33 + 1;
            *(v31 - 112) = *(v32 + 16 * v33);
            *(v23 - 24) = v30;
          }

          if (v14 < 2)
          {
            v34 = v15;
          }

          else
          {
            v34 = 0;
          }

          v21 += 160;
          ++v14;
        }

        while ((v34 & 1) != 0);
        goto LABEL_76;
      }

      v16 = 0;
      *(a2 + 32) = 1;
      v17 = *(*(result + 48) + 8);
      while (*(v17[v16] + 24) >= a3)
      {
        if (++v16 == 3)
        {
          result = kdu_convert_rgb_to_ycc(*v17, v17[1], v17[2]);
          if (result)
          {
            v60 = 0;
            memset(v59, 0, sizeof(v59));
            kdu_error::kdu_error(v59, "Kakadu Core Error:\n");
            (*(*&v59[0] + 16))(v59, "Corrupt JP2 data");
            kdu_error::~kdu_error(v59);
          }

          for (j = 0; j != 3; ++j)
          {
            v19 = v17[j];
            if ((*(v19 + 32) & 1) == 0)
            {
              kd_multi_analysis::advance_line();
            }

            *(v19 + 32) = 0;
          }

          v14 = 0;
          goto LABEL_24;
        }
      }
    }
  }

  return result;
}

uint64_t kd_multi_analysis::is_line_precise(kd_multi_analysis *this, unsigned int a2)
{
  v2 = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v3 = *(this + 7);
    if (v3)
    {
      if (*v3 <= a2)
      {
        v2 = 0;
      }

      else
      {
        v2 = *(*(*(v3 + 8) + 8 * a2) + 38);
      }
    }
  }

  return v2 & 1;
}

uint64_t kd_multi_analysis::is_line_absolute(kd_multi_analysis *this, unsigned int a2)
{
  v2 = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v3 = *(this + 7);
    if (v3)
    {
      if (*v3 <= a2)
      {
        v2 = 0;
      }

      else
      {
        v2 = *(*(*(v3 + 8) + 8 * a2) + 36);
      }
    }
  }

  return v2 & 1;
}

void kd_multi_null_block::initialize(uint64_t a1, int a2, int a3, uint64_t *a4, int a5, int a6, _DWORD *a7, _DWORD *a8, kd_multi_transform *a9)
{
  v22 = a4;
  v20 = a6;
  v21 = a5;
  scratch_ints = kd_multi_transform::get_scratch_ints(a9, a5 + 2 * a6);
  scratch_floats = kd_multi_transform::get_scratch_floats(a9, a6);
  *v19 = 0;
  kdu_tile::get_mct_block_info(&v22, a2, a3, &v19[1], v19, &v21, &v20, scratch_ints, (scratch_ints + 4 * a5), scratch_floats, (scratch_ints + 4 * a5 + 4 * a6), 0);
  if (*v19 == __PAIR64__(*a7, *a8))
  {
    v18 = v20;
    *(a1 + 12) = v20;
    is_mul_ok(v18, 0x50uLL);
    operator new[]();
  }

  kd_multi_null_block::initialize();
}

void kd_multi_matrix_block::initialize(uint64_t a1, int a2, int a3, uint64_t *a4, int a5, int a6, _DWORD *a7, _DWORD *a8, kd_multi_transform *a9)
{
  v22 = a4;
  v20 = a6;
  v21 = a5;
  scratch_ints = kd_multi_transform::get_scratch_ints(a9, a6 + a5);
  scratch_floats = kd_multi_transform::get_scratch_floats(a9, a6);
  *v19 = 0;
  kdu_tile::get_mct_block_info(&v22, a2, a3, &v19[1], v19, &v21, &v20, scratch_ints, (scratch_ints + 4 * a5), scratch_floats, 0, 0);
  if (*v19 == __PAIR64__(*a7, *a8))
  {
    v18 = v20;
    *(a1 + 12) = v20;
    is_mul_ok(v18, 0x50uLL);
    operator new[]();
  }

  kd_multi_matrix_block::initialize();
}

uint64_t kd_multi_matrix_block::normalize_coefficients(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 < 1)
  {
    v4 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = *(this + 32);
    do
    {
      v6 = *(v5 + 8 * v3);
      if (v6)
      {
        if (*(v6 + 39) == 1)
        {
          kd_multi_matrix_block::normalize_coefficients();
        }

        v7 = *(v6 + 40);
        if (v7)
        {
          v4 |= *(v6 + 38);
          v8 = *(this + 12);
          if (v8 >= 1)
          {
            v9 = (1 << v7);
            v10 = (*(this + 64) + v2);
            do
            {
              *v10 = *v10 * v9;
              v10 += v1;
              --v8;
            }

            while (v8);
          }
        }

        else
        {
          v4 = 1;
        }
      }

      ++v3;
      v2 += 4;
    }

    while (v3 != v1);
  }

  v11 = *(this + 12);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = *(this + 16);
    do
    {
      v15 = v14 + 80 * v13;
      v16 = *(v15 + 40);
      if (v16)
      {
        v4 |= *(v15 + 38);
        if (v1 >= 1)
        {
          v17 = 1.0 / (1 << v16);
          v18 = (*(this + 64) + v12);
          v19 = v1;
          do
          {
            *v18 = v17 * *v18;
            ++v18;
            --v19;
          }

          while (v19);
        }
      }

      else
      {
        v4 = 1;
      }

      ++v13;
      v12 += 4 * v1;
    }

    while (v13 != v11);
  }

  if (v4)
  {
    if (v1 >= 1)
    {
      v20 = *(this + 32);
      do
      {
        if (*v20)
        {
          *(*v20 + 38) = 1;
        }

        v20 += 8;
        --v1;
      }

      while (v1);
    }

    if (v11 >= 1)
    {
      v21 = 0;
      v22 = vdupq_n_s64(v11 - 1);
      v23 = xmmword_186205E50;
      v24 = xmmword_186205E60;
      v25 = xmmword_186205E70;
      v26 = xmmword_186205E80;
      v27 = xmmword_186205E90;
      v28 = xmmword_186205EA0;
      v29 = xmmword_186205EB0;
      v30 = xmmword_186205EC0;
      v31 = vdupq_n_s64(0x10uLL);
      v32 = *(this + 16);
      do
      {
        v33 = vmovn_s64(vcgeq_u64(v22, v30));
        if (vuzp1_s8(vuzp1_s16(v33, *v22.i8), *v22.i8).u8[0])
        {
          *(v32 + v21 + 38) = 1;
        }

        if (vuzp1_s8(vuzp1_s16(v33, *&v22), *&v22).i8[1])
        {
          *(v32 + v21 + 118) = 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v29))), *&v22).i8[2])
        {
          *(v32 + v21 + 198) = 1;
          *(v32 + v21 + 278) = 1;
        }

        v34 = vmovn_s64(vcgeq_u64(v22, v28));
        if (vuzp1_s8(*&v22, vuzp1_s16(v34, *&v22)).i32[1])
        {
          *(v32 + v21 + 358) = 1;
        }

        if (vuzp1_s8(*&v22, vuzp1_s16(v34, *&v22)).i8[5])
        {
          *(v32 + v21 + 438) = 1;
        }

        if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v27)))).i8[6])
        {
          *(v32 + v21 + 518) = 1;
          *(v32 + v21 + 598) = 1;
        }

        v35 = vmovn_s64(vcgeq_u64(v22, v26));
        if (vuzp1_s8(vuzp1_s16(v35, *v22.i8), *v22.i8).u8[0])
        {
          *(v32 + v21 + 678) = 1;
        }

        if (vuzp1_s8(vuzp1_s16(v35, *&v22), *&v22).i8[1])
        {
          *(v32 + v21 + 758) = 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v25))), *&v22).i8[2])
        {
          *(v32 + v21 + 838) = 1;
          *(v32 + v21 + 918) = 1;
        }

        v36 = vmovn_s64(vcgeq_u64(v22, v24));
        if (vuzp1_s8(*&v22, vuzp1_s16(v36, *&v22)).i32[1])
        {
          *(v32 + v21 + 998) = 1;
        }

        if (vuzp1_s8(*&v22, vuzp1_s16(v36, *&v22)).i8[5])
        {
          *(v32 + v21 + 1078) = 1;
        }

        if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v23)))).i8[6])
        {
          *(v32 + v21 + 1158) = 1;
          *(v32 + v21 + 1238) = 1;
        }

        v28 = vaddq_s64(v28, v31);
        v29 = vaddq_s64(v29, v31);
        v30 = vaddq_s64(v30, v31);
        v27 = vaddq_s64(v27, v31);
        v26 = vaddq_s64(v26, v31);
        v25 = vaddq_s64(v25, v31);
        v24 = vaddq_s64(v24, v31);
        v21 += 1280;
        v23 = vaddq_s64(v23, v31);
      }

      while (1280 * ((v11 + 15) >> 4) != v21);
    }
  }

  return this;
}

void kd_multi_matrix_block::perform_transform(kd_multi_matrix_block *this)
{
  if (*(this + 3) >= 1)
  {
    v2 = 0;
    v3 = vdupq_n_s64(4uLL);
    HIDWORD(v4) = 0;
    v50 = v3;
    while (1)
    {
      v5 = (*(this + 2) + 80 * v2);
      v6 = *v5;
      if ((*(v5 + 6) & 2) != 0)
      {
        break;
      }

      v7 = *(v5 + 1);
      if (!v7)
      {
        break;
      }

      if (v6 >= 1)
      {
        LODWORD(v4) = v5[12];
        v8 = (v6 + 3) & 0xFFFFFFFC;
        v9 = vdupq_n_s64(v6 - 1);
        v10 = (v7 + 8);
        v11 = xmmword_186205EC0;
        v12 = xmmword_186205EB0;
        do
        {
          v13 = vmovn_s64(vcgeq_u64(v9, v11));
          if (vuzp1_s16(v13, *&v4).u8[0])
          {
            *(v10 - 2) = LODWORD(v4);
          }

          if (vuzp1_s16(v13, *&v4).i8[2])
          {
            *(v10 - 1) = LODWORD(v4);
          }

          if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v9, *&v12))).i32[1])
          {
            *v10 = LODWORD(v4);
            v10[1] = LODWORD(v4);
          }

          v12 = vaddq_s64(v12, v3);
          v11 = vaddq_s64(v11, v3);
          v10 += 4;
          v8 -= 4;
        }

        while (v8);
      }

      LODWORD(v14) = *(this + 6);
      if (v14 >= 1)
      {
        v15 = 0;
        do
        {
          v16 = *(*(this + 4) + 8 * v15);
          if (v16)
          {
            v17 = *(*(this + 8) + 4 * (v15 + v14 * v2));
            if (v17 != 0.0)
            {
              if ((*(v16 + 6) & 2) != 0)
              {
                v18 = 0;
              }

              else
              {
                v18 = *(v16 + 8);
              }

              if (*(v16 + 36))
              {
                v19 = *(v16 + 40);
                if (v19 >= 1)
                {
                  v17 = v17 * (1.0 / (1 << v19));
                }

                if (v6 >= 1)
                {
                  v20 = v6;
                  v21 = v7;
                  do
                  {
                    v22 = *v18++;
                    *v21 = *v21 + (v17 * v22);
                    ++v21;
                    --v20;
                  }

                  while (v20);
                }
              }

              else if (v6 >= 1)
              {
                v23 = v6;
                v24 = v7;
                do
                {
                  v25 = *v18++;
                  *v24 = *v24 + (v17 * v25);
                  ++v24;
                  --v23;
                }

                while (v23);
              }
            }
          }

          ++v15;
          v14 = *(this + 6);
        }

        while (v15 < v14);
      }

LABEL_63:
      if (++v2 >= *(this + 3))
      {
        return;
      }
    }

    if (*(this + 10))
    {
      if ((*(v5 + 6) & 2) != 0)
      {
LABEL_35:
        v26 = *(v5 + 1);
LABEL_38:
        v27 = *(this + 11);
        bzero(v27, 4 * v6);
        LODWORD(v28) = *(this + 6);
        v3 = v50;
        if (v28 >= 1)
        {
          v29 = 0;
          v30 = *(this + 10);
          v31 = *(this + 4);
          do
          {
            v32 = v29 + v28 * v2;
            v33 = *(v30 + 2 * v32);
            v34 = *(v30 + 2 * v32);
            v35 = *(v31 + 8 * v29);
            if (v35)
            {
              v36 = v34 == 0;
            }

            else
            {
              v36 = 1;
            }

            if (!v36)
            {
              if ((*(v35 + 6) & 2) != 0)
              {
                v37 = *(v35 + 8);
              }

              else
              {
                v37 = 0;
              }

              if (*(v35 + 36))
              {
                v38 = *(v35 + 40);
                if (v38 <= 0)
                {
                  kd_multi_matrix_block::perform_transform();
                }

                v39 = ((1 << (v38 - 14)) + v33) >> (v38 - 13);
                if (v38 < 0xE)
                {
                  v40 = 13 - v38;
                }

                else
                {
                  LOWORD(v34) = v39;
                  v40 = 0;
                }

                if (v6 >= 1)
                {
                  v41 = v6;
                  v42 = v27;
                  do
                  {
                    v43 = *v37++;
                    *v42++ += (v43 << v40) * v34;
                    --v41;
                  }

                  while (v41);
                }
              }

              else if (v6 >= 1)
              {
                v44 = v6;
                v45 = v27;
                do
                {
                  v46 = *v37++;
                  *v45++ += v46 * v33;
                  --v44;
                }

                while (v44);
              }
            }

            ++v29;
            v28 = *(this + 6);
          }

          while (v29 < v28);
        }

        if (v6 >= 1)
        {
          v47 = *(this + 24);
          v4 = (*(v5 + 12) * 8192.0) + 0.5;
          v48 = (vcvtmd_s64_f64(v4) << v47) + (1 << v47 >> 1);
          do
          {
            v49 = *v27++;
            *v26++ = (v48 + v49) >> v47;
            --v6;
          }

          while (v6);
        }

        goto LABEL_63;
      }
    }

    else
    {
      kd_multi_matrix_block::create_short_coefficients(this);
      if ((*(v5 + 6) & 2) != 0)
      {
        goto LABEL_35;
      }
    }

    v26 = 0;
    goto LABEL_38;
  }
}

uint64_t kd_multi_matrix_block::create_short_coefficients(uint64_t this)
{
  if (!*(this + 80))
  {
    v1 = *(this + 12);
    v2 = *(this + 24);
    if (v1 >= 1)
    {
      v3 = 0;
      v4 = 0;
      v5 = 0.00001;
      do
      {
        if (v2 >= 1)
        {
          v6 = *(this + 32);
          v7 = *(this + 24);
          v8 = v3;
          do
          {
            if (*v6)
            {
              v9 = *(*(this + 64) + v8);
              if (v9 <= v5)
              {
                if (v9 < -v5)
                {
                  v5 = -v9;
                }
              }

              else
              {
                v5 = *(*(this + 64) + v8);
              }
            }

            v8 += 4;
            ++v6;
            --v7;
          }

          while (v7);
        }

        ++v4;
        v3 += 4 * v2;
      }

      while (v4 != v1);
    }

    operator new[]();
  }

  return this;
}

const char *kd_multi_matrix_block::prepare_for_inversion(kd_multi_matrix_block *this)
{
  if (*(this + 9))
  {
    return 0;
  }

  v2 = *(this + 6);
  if (*(this + 3) < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = (*(this + 2) + 28);
    v5 = *(this + 3);
    do
    {
      v6 = *v4;
      v4 += 20;
      if (v6 > 0)
      {
        ++v3;
      }

      --v5;
    }

    while (v5);
  }

  *(this + 11) = v3;
  if (v3 < v2)
  {
    return "Encountered underdetermined system while trying to invert a multi-component transform block so as to convert MCT output components into codestream components during compression.";
  }

  if (v2 < 1)
  {
LABEL_17:
    operator new[]();
  }

  v7 = *(this + 4);
  v1 = "Encountered an irreversible decorrelation transform block which operates on reversible codestream sample data.  While we allow such transforms to be processed during decompression, it is unreasonable to generate reversibly compressed component samples using an irreversible inverse multi-component transform during compression.  Kakadu will not invert this transform during compression.  This can prevent the compression process from proceeding if there are no other paths back from the MCT output components to the codestream components.";
  v8 = v2;
  while (!*v7 || (*(*v7 + 36) & 1) == 0)
  {
    v7 += 8;
    if (!--v8)
    {
      goto LABEL_17;
    }
  }

  return v1;
}

void kd_multi_matrix_block::perform_inverse(kd_multi_matrix_block *this)
{
  if (!*(this + 9))
  {
    kd_multi_matrix_block::perform_inverse();
  }

  if (*(this + 6) >= 1)
  {
    v2 = 0;
    HIDWORD(v3) = 0;
    v4 = vdupq_n_s64(4uLL);
    v36 = v4;
    do
    {
      v5 = *(*(this + 4) + 8 * v2);
      if (v5)
      {
        v6 = *v5;
        if ((*(v5 + 6) & 2) != 0 || (v7 = *(v5 + 1)) == 0)
        {
          if (*(this + 10))
          {
            if ((*(v5 + 6) & 2) != 0)
            {
              goto LABEL_30;
            }

LABEL_32:
            v22 = 0;
          }

          else
          {
            kd_multi_matrix_block::create_short_inverse_coefficients(this);
            if ((*(v5 + 6) & 2) == 0)
            {
              goto LABEL_32;
            }

LABEL_30:
            v22 = *(v5 + 1);
          }

          v23 = *(this + 11);
          bzero(v23, 4 * v6);
          v24 = *(this + 3);
          v4 = v36;
          if (v24 >= 1)
          {
            v25 = 0;
            v26 = *(this + 2);
            do
            {
              v27 = v26 + 80 * v25;
              if (*(v27 + 28) >= 1)
              {
                v28 = (*(v27 + 6) & 2) != 0 ? *(v27 + 8) : 0;
                if (v6 >= 1)
                {
                  v29 = *(*(this + 10) + 2 * (v25 + v24 * v2));
                  v30 = v6;
                  v31 = v23;
                  do
                  {
                    v32 = *v28++;
                    *v31++ += v32 * v29;
                    --v30;
                  }

                  while (v30);
                  v24 = *(this + 3);
                }
              }

              ++v25;
            }

            while (v25 < v24);
          }

          if (v6 >= 1)
          {
            v33 = *(this + 24);
            v3 = (*(v5 + 12) * 8192.0) + 0.5;
            v34 = (1 << v33 >> 1) - (vcvtmd_s64_f64(v3) << v33);
            do
            {
              v35 = *v23++;
              *v22++ = (v34 + v35) >> v33;
              --v6;
            }

            while (v6);
          }

          goto LABEL_47;
        }

        if (v6 >= 1)
        {
          *&v3 = -*(v5 + 12);
          v8 = (v6 + 3) & 0xFFFFFFFC;
          v9 = vdupq_n_s64(v6 - 1);
          v10 = (v7 + 8);
          v11 = xmmword_186205EC0;
          v12 = xmmword_186205EB0;
          do
          {
            v13 = vmovn_s64(vcgeq_u64(v9, v11));
            if (vuzp1_s16(v13, *&v3).u8[0])
            {
              *(v10 - 2) = LODWORD(v3);
            }

            if (vuzp1_s16(v13, *&v3).i8[2])
            {
              *(v10 - 1) = LODWORD(v3);
            }

            if (vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v9, *&v12))).i32[1])
            {
              *v10 = LODWORD(v3);
              v10[1] = LODWORD(v3);
            }

            v12 = vaddq_s64(v12, v4);
            v11 = vaddq_s64(v11, v4);
            v10 += 4;
            v8 -= 4;
          }

          while (v8);
        }

        v14 = *(this + 3);
        if (v14 >= 1)
        {
          for (i = 0; i < v14; ++i)
          {
            v16 = *(this + 2) + 80 * i;
            if (*(v16 + 28) >= 1)
            {
              if ((*(v16 + 6) & 2) != 0)
              {
                v17 = 0;
              }

              else
              {
                v17 = *(v16 + 8);
              }

              if (v6 >= 1)
              {
                v18 = *(*(this + 9) + 4 * (i + v14 * v2));
                v19 = v6;
                v20 = v7;
                do
                {
                  v21 = *v17++;
                  *v20 = *v20 + (v18 * v21);
                  ++v20;
                  --v19;
                }

                while (v19);
                v14 = *(this + 3);
              }
            }
          }
        }
      }

LABEL_47:
      ++v2;
    }

    while (v2 < *(this + 6));
  }
}

uint64_t kd_multi_matrix_block::create_short_inverse_coefficients(uint64_t this)
{
  if (!*(this + 80))
  {
    v1 = *(this + 24);
    if (v1 >= 1)
    {
      v2 = 0;
      v3 = 0;
      v4 = 0.00001;
      do
      {
        if (*(*(this + 32) + 8 * v3))
        {
          v5 = *(this + 12);
          if (v5 >= 1)
          {
            v6 = (*(this + 72) + v2 * v5);
            do
            {
              v7 = *v6;
              if (*v6 <= v4)
              {
                if (v7 < -v4)
                {
                  v4 = -v7;
                }
              }

              else
              {
                v4 = *v6;
              }

              ++v6;
              --v5;
            }

            while (v5);
          }
        }

        ++v3;
        v2 += 4;
      }

      while (v3 != v1);
    }

    operator new[]();
  }

  return this;
}

void kd_multi_rxform_block::initialize(uint64_t a1, int a2, int a3, uint64_t *a4, int a5, int a6, _DWORD *a7, _DWORD *a8, kd_multi_transform *a9)
{
  v19 = a4;
  v17 = a6;
  v18 = a5;
  if (a5 >= a6)
  {
    scratch_ints = kd_multi_transform::get_scratch_ints(a9, 4 * a5);
    *v16 = 0;
    kdu_tile::get_mct_block_info(&v19, a2, a3, &v16[1], v16, &v18, &v17, scratch_ints, (scratch_ints + 4 * a5), 0, (scratch_ints + 4 * a5 + 4 * a5), 0);
    if (*v16 == __PAIR64__(*a7, *a8))
    {
      *(a1 + 24) = a5;
      *(a1 + 12) = a5;
      is_mul_ok(a5, 0x50uLL);
      operator new[]();
    }

    kd_multi_rxform_block::initialize();
  }

  kd_multi_rxform_block::initialize();
}

const char *kd_multi_rxform_block::prepare_for_inversion(kd_multi_rxform_block *this)
{
  v1 = *(this + 3);
  if (v1 < 1)
  {
LABEL_5:
    v3 = 0;
    *(this + 11) = v1;
  }

  else
  {
    v2 = (*(this + 2) + 28);
    v3 = "Reversible decorrelation transform block cannot be inverted unless all of its outputs can be computed by downstream transform blocks, or by the application supplying them.";
    v4 = *(this + 3);
    while (1)
    {
      v5 = *v2;
      v2 += 20;
      if (v5 < 1)
      {
        break;
      }

      if (!--v4)
      {
        goto LABEL_5;
      }
    }
  }

  return v3;
}

void kd_multi_rxform_block::perform_transform(kd_multi_rxform_block *this)
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if (*(this + 6) != v1)
  {
    kd_multi_rxform_block::perform_transform();
  }

  if (v1 >= 1)
  {
    for (i = 0; i != v1; ++i)
    {
      v4 = (*(this + 2) + 80 * i);
      v5 = *(*(this + 4) + 8 * i);
      if (v5)
      {
        kd_multi_line::copy(v4, v5, 0, 0.0);
      }

      else
      {
        kd_multi_line::reset(v4, 0, 0.0);
      }
    }
  }

  if ((v1 & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = v1 + 1;
    v8 = vdupq_n_s64(4uLL);
    while (1)
    {
      if (v6 == v1)
      {
        v9 = -1;
      }

      else
      {
        v9 = ~v6;
      }

      v10 = (v1 + v9);
      v11 = (*(this + 2) + 80 * v10);
      v12 = *v11;
      v13 = *v11;
      if (!*(this + 9))
      {
        operator new[]();
      }

      v14 = *(*(this + 8) + 4 * v6 + 4 * v10 * v7);
      if (v14 >= 0)
      {
        v15 = *(*(this + 8) + 4 * v6 + 4 * v10 * v7);
      }

      else
      {
        v15 = -v14;
      }

      if (v6 == v1)
      {
        v16 = v15;
      }

      else
      {
        v16 = *(*(this + 8) + 4 * v6 + 4 * v10 * v7);
      }

      v17 = -1;
      do
      {
        ++v17;
      }

      while (1 << v17 < v16);
      if (1 << v17 != v16)
      {
        v48 = 0;
        memset(v47, 0, sizeof(v47));
        kdu_error::kdu_error(v47, "Kakadu Core Error:\n");
        (*(*&v47[0] + 16))(v47, "Multi-component reversible decorrelation transforms must have exact positive powers of 2 for the divisors which are used to scale and round the update terms.  The offending divisor is ");
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        *v49 = 0u;
        if (BYTE8(v47[0]))
        {
          sprintf(v49, "%x");
        }

        else
        {
          sprintf(v49, "%d");
        }

        (*(*&v47[0] + 16))(v47, v49);
        (*(*&v47[0] + 16))(v47, ".");
        kdu_error::~kdu_error(v47);
      }

      if (v13 >= 1)
      {
        v18 = v16 >> 1;
        v19 = (v12 + 3) & 0xFFFFFFFC;
        v20 = vdupq_n_s64(v12 - 1);
        v21 = (*(this + 9) + 8);
        v22 = xmmword_186205EC0;
        v23 = xmmword_186205EB0;
        do
        {
          v24 = vmovn_s64(vcgeq_u64(v20, v22));
          if (vuzp1_s16(v24, *v20.i8).u8[0])
          {
            *(v21 - 2) = v18;
          }

          if (vuzp1_s16(v24, *&v20).i8[2])
          {
            *(v21 - 1) = v18;
          }

          if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v23))).i32[1])
          {
            *v21 = v18;
            v21[1] = v18;
          }

          v23 = vaddq_s64(v23, v8);
          v22 = vaddq_s64(v22, v8);
          v21 += 4;
          v19 -= 4;
        }

        while (v19);
      }

      v25 = *(v11 + 6);
      if ((v25 & 2) != 0 || (v26 = *(v11 + 1)) == 0)
      {
        if (v1)
        {
          for (j = 0; j != v1; ++j)
          {
            if (j != v10)
            {
              v36 = *(*(this + 8) + 4 * j * v7 + 4 * v6);
              if (v36)
              {
                v37 = *(this + 2) + 80 * j;
                v38 = (*(v37 + 6) & 2) != 0 ? *(v37 + 8) : 0;
                if (v13 >= 1)
                {
                  v39 = *(this + 9);
                  v40 = v12;
                  do
                  {
                    v41 = *v38++;
                    *v39++ += v36 * v41;
                    --v40;
                  }

                  while (v40);
                }
              }
            }
          }
        }

        if ((v25 & 2) != 0)
        {
          v42 = *(v11 + 1);
          if (v14 < 0)
          {
LABEL_74:
            if (v6 != v1)
            {
              kd_multi_rxform_block::perform_transform();
            }

            if (v13 >= 1)
            {
              v44 = 0;
              do
              {
                *(v42 + 2 * v44) = (*(*(this + 9) + 4 * v44) >> v17) - *(v42 + 2 * v44);
                ++v44;
              }

              while (v12 != v44);
            }

            goto LABEL_83;
          }
        }

        else
        {
          v42 = 0;
          if (v14 < 0)
          {
            goto LABEL_74;
          }
        }

        if (v13 >= 1)
        {
          v43 = 0;
          do
          {
            *(v42 + 2 * v43) -= *(*(this + 9) + 4 * v43) >> v17;
            ++v43;
          }

          while (v12 != v43);
        }
      }

      else
      {
        if (v1)
        {
          for (k = 0; k != v1; ++k)
          {
            if (k != v10)
            {
              v28 = *(*(this + 8) + 4 * k * v7 + 4 * v6);
              if (v28)
              {
                v29 = *(this + 2) + 80 * k;
                v30 = (*(v29 + 6) & 2) != 0 ? 0 : *(v29 + 8);
                if (v13 >= 1)
                {
                  v31 = *(this + 9);
                  v32 = v12;
                  do
                  {
                    v33 = *v30++;
                    *v31++ += v33 * v28;
                    --v32;
                  }

                  while (v32);
                }
              }
            }
          }

          v26 = *(v11 + 1);
        }

        if (v14 < 0)
        {
          if (v6 != v1)
          {
            kd_multi_rxform_block::perform_transform();
          }

          if (v13 >= 1)
          {
            v45 = 0;
            do
            {
              *(v26 + v45) = (*(*(this + 9) + v45) >> v17) - *(v26 + v45);
              v45 += 4;
            }

            while (4 * v12 != v45);
          }
        }

        else if (v13 >= 1)
        {
          v34 = 0;
          do
          {
            *(v26 + v34) -= *(*(this + 9) + v34) >> v17;
            v34 += 4;
          }

          while (4 * v12 != v34);
        }
      }

LABEL_83:
      if (++v6 == v1 + 1)
      {
        if (v1 >= 1)
        {
          v46 = 0;
          do
          {
            kd_multi_line::apply_offset(*(this + 2) + v46, *(*(this + 2) + v46 + 44), 0.0);
            v46 += 80;
          }

          while (80 * v1 != v46);
        }

        return;
      }
    }
  }
}

uint64_t kd_multi_rxform_block::perform_inverse(uint64_t this)
{
  v52 = *MEMORY[0x1E69E9840];
  v1 = *(this + 12);
  if ((v1 & 0x80000000) != 0)
  {
    return this;
  }

  v2 = this;
  v3 = v1 + 1;
  v4 = vdupq_n_s64(4uLL);
  v5 = *(this + 12);
  do
  {
    v6 = v1 + ~(v5 % v1);
    v7 = (v2[2] + 80 * v6);
    v8 = *v7;
    v9 = *v7;
    if (!v2[9])
    {
      operator new[]();
    }

    v10 = *(v2[8] + 4 * (v5 + v6 * v3));
    if (v10 >= 0)
    {
      v11 = *(v2[8] + 4 * (v5 + v6 * v3));
    }

    else
    {
      v11 = -v10;
    }

    if (v5 == v1)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(v2[8] + 4 * (v5 + v6 * v3));
    }

    v13 = -1;
    do
    {
      ++v13;
    }

    while (1 << v13 < v12);
    if (1 << v13 != v12)
    {
      v46 = 0;
      memset(v45, 0, sizeof(v45));
      kdu_error::kdu_error(v45, "Kakadu Core Error:\n");
      (*(*&v45[0] + 16))(v45, "Multi-component reversible decorrelation transforms must have exact positive powers of 2 for the divisors which are used to scale and round the update terms.  The offending divisor is ");
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      *v47 = 0u;
      if (BYTE8(v45[0]))
      {
        sprintf(v47, "%x");
      }

      else
      {
        sprintf(v47, "%d");
      }

      (*(*&v45[0] + 16))(v45, v47);
      (*(*&v45[0] + 16))(v45, ".");
      kdu_error::~kdu_error(v45);
    }

    if (v9 >= 1)
    {
      v14 = v12 >> 1;
      v15 = (v8 + 3) & 0xFFFFFFFC;
      v16 = vdupq_n_s64(v8 - 1);
      v17 = (v2[9] + 8);
      v18 = xmmword_186205EC0;
      v19 = xmmword_186205EB0;
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v16, v18));
        if (vuzp1_s16(v20, *v16.i8).u8[0])
        {
          *(v17 - 2) = v14;
        }

        if (vuzp1_s16(v20, *&v16).i8[2])
        {
          *(v17 - 1) = v14;
        }

        if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, *&v19))).i32[1])
        {
          *v17 = v14;
          v17[1] = v14;
        }

        v19 = vaddq_s64(v19, v4);
        v18 = vaddq_s64(v18, v4);
        v17 += 4;
        v15 -= 4;
      }

      while (v15);
    }

    v21 = *(v7 + 6);
    if ((v21 & 2) == 0)
    {
      v22 = *(v7 + 1);
      if (v22)
      {
        if (v1)
        {
          for (i = 0; i != v1; ++i)
          {
            if (i != v6)
            {
              v24 = *(v2[8] + 4 * i * v3 + 4 * v5);
              if (v24)
              {
                v25 = v2[2] + 80 * i;
                v26 = (*(v25 + 6) & 2) != 0 ? 0 : *(v25 + 8);
                if (v9 >= 1)
                {
                  v27 = v2[9];
                  v28 = v8;
                  do
                  {
                    v29 = *v26++;
                    *v27++ += v29 * v24;
                    --v28;
                  }

                  while (v28);
                }
              }
            }
          }

          v22 = *(v7 + 1);
        }

        if (v10 < 0)
        {
          if (v5 != v1)
          {
            kd_multi_rxform_block::perform_inverse();
          }

          if (v9 >= 1)
          {
            v41 = 0;
            do
            {
              *(v22 + v41) = (*(v2[9] + v41) >> v13) - *(v22 + v41);
              v41 += 4;
            }

            while (4 * v8 != v41);
          }
        }

        else if (v9 >= 1)
        {
          v30 = 0;
          do
          {
            *(v22 + v30) += *(v2[9] + v30) >> v13;
            v30 += 4;
          }

          while (4 * v8 != v30);
        }

        continue;
      }
    }

    if (v1)
    {
      for (j = 0; j != v1; ++j)
      {
        if (j != v6)
        {
          v32 = *(v2[8] + 4 * j * v3 + 4 * v5);
          if (v32)
          {
            v33 = v2[2] + 80 * j;
            v34 = (*(v33 + 6) & 2) != 0 ? *(v33 + 8) : 0;
            if (v9 >= 1)
            {
              v35 = v2[9];
              v36 = v8;
              do
              {
                v37 = *v34++;
                *v35++ += v32 * v37;
                --v36;
              }

              while (v36);
            }
          }
        }
      }
    }

    if ((v21 & 2) != 0)
    {
      v38 = *(v7 + 1);
      if ((v10 & 0x80000000) == 0)
      {
LABEL_59:
        if (v9 >= 1)
        {
          v39 = 0;
          do
          {
            *(v38 + 2 * v39) += *(v2[9] + 4 * v39) >> v13;
            ++v39;
          }

          while (v8 != v39);
        }

        continue;
      }
    }

    else
    {
      v38 = 0;
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_59;
      }
    }

    if (v5 != v1)
    {
      kd_multi_rxform_block::perform_inverse();
    }

    if (v9 >= 1)
    {
      v40 = 0;
      do
      {
        *(v38 + 2 * v40) = (*(v2[9] + 4 * v40) >> v13) - *(v38 + 2 * v40);
        ++v40;
      }

      while (v8 != v40);
    }
  }

  while (v5-- > 0);
  v43 = 0;
  v44 = 0;
  do
  {
    this = *(v2[4] + 8 * v44);
    if (this)
    {
      this = kd_multi_line::copy(this, (v2[2] + v43), -*(this + 44), 0.0);
    }

    ++v44;
    v43 += 80;
  }

  while (v1 != v44);
  return this;
}

void kd_multi_dependency_block::initialize(uint64_t a1, int a2, int a3, uint64_t *a4, int a5, int a6, _DWORD *a7, _DWORD *a8, kd_multi_transform *a9)
{
  v19 = a4;
  v17 = a6;
  v18 = a5;
  if (a5 >= a6)
  {
    v16 = 0;
    scratch_ints = kd_multi_transform::get_scratch_ints(a9, 3 * a5);
    kdu_tile::get_mct_block_info(&v19, a2, a3, &v16 + 1, &v16, &v18, &v17, scratch_ints, (scratch_ints + 4 * a5), 0, 0, 0);
    if (v16 == __PAIR64__(*a7, *a8))
    {
      *(a1 + 24) = a5;
      *(a1 + 12) = a5;
      is_mul_ok(a5, 0x50uLL);
      operator new[]();
    }

    kd_multi_dependency_block::initialize();
  }

  kd_multi_dependency_block::initialize();
}

const char *kd_multi_dependency_block::prepare_for_inversion(kd_multi_dependency_block *this)
{
  v1 = *(this + 3);
  if (v1 < 1)
  {
LABEL_5:
    v6 = *(this + 6);
    if (v6 < 1)
    {
LABEL_11:
      v3 = 0;
      *(this + 11) = v1;
    }

    else
    {
      v7 = 0;
      v8 = 8 * v6;
      v3 = "Encountered an irreversible dependency transform block which operates on reversible codestream sample data.  While we allow such transforms to be processed during decompression, it is unreasonable to generate reversibly compressed component samples using an irreversible inverse multi-component transform during compression.  Kakadu will not invert this transform during compression.  This can prevent the compression process from proceeding if there are no other paths back from the MCT output components to the codestream components.";
      while (1)
      {
        if ((*(this + 64) & 1) == 0)
        {
          v9 = *(*(this + 4) + v7);
          if (v9)
          {
            if (*(v9 + 36))
            {
              break;
            }
          }
        }

        v7 += 8;
        if (v8 == v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v2 = (*(this + 2) + 28);
    v3 = "Dependency transform block cannot be inverted or partially inverted unless a contiguous prefix of the output components can be computed by downstream transform blocks, or by the application supplying them.";
    v4 = *(this + 3);
    while (1)
    {
      v5 = *v2;
      v2 += 20;
      if (v5 < 1)
      {
        break;
      }

      if (!--v4)
      {
        goto LABEL_5;
      }
    }
  }

  return v3;
}

uint64_t kd_multi_dependency_block::normalize_coefficients(uint64_t this)
{
  if (*(this + 64))
  {
    return this;
  }

  v1 = *(this + 12);
  if (v1 != *(this + 24))
  {
    kd_multi_dependency_block::normalize_coefficients();
  }

  if (v1 < 1)
  {
    return this;
  }

  v2 = 0;
  v3 = 0;
  v4 = *(this + 32);
  v5 = *(this + 16);
  v6 = 4 * v1;
  v7 = v1 - 1;
  v8 = 4 * v1;
  while (1)
  {
    v9 = *(v4 + 8 * v2);
    v10 = v5 + 80 * v2;
    v11 = *(v10 + 40);
    if (v11)
    {
      break;
    }

    if (v9)
    {
      v11 = *(v9 + 40);
      *(v10 + 40) = v11;
      v3 = 1;
      goto LABEL_10;
    }

    if (++v2 == v1)
    {
      goto LABEL_25;
    }

    v3 = 1;
LABEL_21:
    v8 += v6;
    --v7;
  }

  if (v9)
  {
    v3 |= *(v9 + 40) == 0;
  }

LABEL_10:
  v12 = *(v10 + 38);
  if (v11 >= 1)
  {
    v13 = (1 << v11);
    if (v2 + 1 < v1)
    {
      v14 = (*(this + 88) + v8 + 4 * v2);
      v15 = v7;
      do
      {
        *v14 = *v14 * v13;
        v14 = (v14 + v6);
        --v15;
      }

      while (v15);
    }

    v16 = 1.0 / v13;
    if (v2)
    {
      v17 = (*(this + 88) + 4 * v2 * v1);
      v18 = v2;
      do
      {
        *v17 = v16 * *v17;
        ++v17;
        --v18;
      }

      while (v18);
      v19 = v2;
    }

    else
    {
      v19 = 0;
    }

    *(*(this + 96) + 4 * v19) = v16 * *(*(this + 96) + 4 * v19);
  }

  v3 |= v12;
  if (++v2 != v1)
  {
    goto LABEL_21;
  }

  if ((v3 & 1) == 0)
  {
    return this;
  }

LABEL_25:
  v20 = (v5 + 38);
  do
  {
    *v20 = 1;
    if (*v4)
    {
      *(*v4 + 38) = 1;
    }

    v4 += 8;
    v20 += 80;
    --v1;
  }

  while (v1);
  return this;
}

uint64_t kd_multi_dependency_block::create_short_matrix(uint64_t this)
{
  if (!*(this + 104) && (*(this + 64) & 1) == 0)
  {
    v1 = *(this + 12);
    if (v1 == *(this + 24))
    {
      if (v1 >= 1)
      {
        v2 = 0;
        v3 = 0;
        v4 = 0.0;
        do
        {
          if (v3)
          {
            for (i = 0; i != v3; ++i)
            {
              v6 = *(this + 88) + v2;
              v7 = *(v6 + 4 * i);
              if (v7 <= v4)
              {
                if (v7 < -v4)
                {
                  v4 = -v7;
                }
              }

              else
              {
                v4 = *(v6 + 4 * i);
              }
            }
          }

          ++v3;
          v2 += 4 * v1;
        }

        while (v3 != v1);
      }

      operator new[]();
    }

    kd_multi_dependency_block::create_short_matrix();
  }

  return this;
}

uint64_t kd_multi_dependency_block::perform_transform(uint64_t this)
{
  v88 = *MEMORY[0x1E69E9840];
  v1 = *(this + 12);
  if (*(this + 24) != v1)
  {
    kd_multi_dependency_block::perform_transform();
  }

  if (v1 >= 1)
  {
    v2 = this;
    v3 = 0;
    v80 = vdupq_n_s64(4uLL);
    v4.i32[1] = 0;
    v79 = *(this + 12);
    while (1)
    {
      if (v3 <= 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = v3;
      }

      v6 = (*(v2 + 16) + 80 * v3);
      v7 = *(*(v2 + 32) + 8 * v3);
      v8 = *v6;
      v9 = *v6;
      if ((*(v2 + 64) & 1) == 0)
      {
        v4.i32[0] = *(*(v2 + 96) + 4 * v3);
        v11 = *(v2 + 16) + 80 * v3;
        if (v7)
        {
          kd_multi_line::copy(v6, v7, 0, *v4.i32);
        }

        else
        {
          kd_multi_line::reset(v6, 0, *v4.i64);
        }

        v12 = v79;
        if (v3)
        {
          if ((*(v11 + 6) & 2) != 0 || (v37 = *(v11 + 8)) == 0)
          {
            if (!*(v2 + 120))
            {
              operator new[]();
            }

            if (!*(v2 + 104))
            {
              kd_multi_dependency_block::create_short_matrix(v2);
              v12 = v79;
            }

            if ((*(v11 + 6) & 2) != 0)
            {
              v46 = *(v11 + 8);
            }

            else
            {
              v46 = 0;
            }

            v57 = *(v2 + 112);
            if (v8 >= 1)
            {
              v58 = 1 << v57 >> 1;
              v59 = (v8 + 3) & 0xFFFFFFFC;
              v4 = vdupq_n_s64(v8 - 1);
              v60 = (*(v2 + 120) + 8);
              v61 = xmmword_186205EC0;
              v62 = xmmword_186205EB0;
              do
              {
                v63 = vmovn_s64(vcgeq_u64(v4, v61));
                if (vuzp1_s16(v63, *v4.i8).u8[0])
                {
                  *(v60 - 2) = v58;
                }

                if (vuzp1_s16(v63, *&v4).i8[2])
                {
                  *(v60 - 1) = v58;
                }

                if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v62))).i32[1])
                {
                  *v60 = v58;
                  v60[1] = v58;
                }

                v64 = vdupq_n_s64(4uLL);
                v62 = vaddq_s64(v62, v64);
                v61 = vaddq_s64(v61, v64);
                v60 += 4;
                v59 -= 4;
              }

              while (v59);
            }

            v65 = 0;
            v66 = *(v2 + 16);
            v67 = *(v2 + 104) + 2 * v3 * v12;
            do
            {
              v68 = v66 + 80 * v65;
              if ((*(v68 + 6) & 2) != 0)
              {
                v69 = *(v68 + 8);
              }

              else
              {
                v69 = 0;
              }

              v70 = *(v67 + 2 * v65);
              if (*(v67 + 2 * v65))
              {
                v71 = v9 < 1;
              }

              else
              {
                v71 = 1;
              }

              if (!v71)
              {
                v72 = *(v2 + 120);
                v73 = v8;
                do
                {
                  v74 = *v69++;
                  *v72++ += v74 * v70;
                  --v73;
                }

                while (v73);
              }

              ++v65;
            }

            while (v65 != v5);
            if (v9 >= 1)
            {
              v75 = 0;
              do
              {
                *(v46 + 2 * v75) += *(*(v2 + 120) + 4 * v75) >> v57;
                ++v75;
              }

              while (v8 != v75);
            }
          }

          else
          {
            for (i = 0; i != v3; ++i)
            {
              v39 = *(v2 + 16) + 80 * i;
              if ((*(v39 + 6) & 2) != 0)
              {
                v40 = 0;
              }

              else
              {
                v40 = *(v39 + 8);
              }

              v41 = *(*(v2 + 88) + 4 * i + 4 * v3 * v79);
              if (v41 != 0.0 && v9 >= 1)
              {
                v43 = v8;
                v44 = v37;
                do
                {
                  v45 = *v40++;
                  *v44 = *v44 + (v45 * v41);
                  ++v44;
                  --v43;
                }

                while (v43);
              }
            }
          }
        }

        goto LABEL_111;
      }

      v10 = *(*(v2 + 80) + 4 * v3);
      v78 = *(v2 + 16) + 80 * v3;
      if (v7)
      {
        kd_multi_line::copy(v6, v7, v10, 0.0);
      }

      else
      {
        kd_multi_line::reset(v6, v10, 0.0);
      }

      v12 = v79;
      if (v3)
      {
        v13 = v3 * v79;
        v14 = *(*(v2 + 72) + 4 * v3 + 4 * (v79 * v3));
        v15 = -1;
        do
        {
          v16 = 1 << ++v15;
        }

        while (1 << v15 < v14);
        if (v16 != v14)
        {
          v82 = 0;
          memset(v81, 0, sizeof(v81));
          kdu_error::kdu_error(v81, "Kakadu Core Error:\n");
          (*(*&v81[0] + 16))(v81, "Multi-component reversible dependency transforms must have exact positive powers of 2 on the diagonal of their triangular coefficient matrix; these are the divisors used to scale and round the prediction terms.  The offending divisor is ");
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          *v83 = 0u;
          if (BYTE8(v81[0]))
          {
            sprintf(v83, "%x");
          }

          else
          {
            sprintf(v83, "%d");
          }

          (*(*&v81[0] + 16))(v81, v83);
          (*(*&v81[0] + 16))(v81, ".");
          kdu_error::~kdu_error(v81);
        }

        v17 = *(v2 + 120);
        if (!v17)
        {
          operator new[]();
        }

        if (v9 >= 1)
        {
          v18 = v16 >> 1;
          v19 = (v8 + 3) & 0xFFFFFFFC;
          v4 = vdupq_n_s64(v8 - 1);
          v20 = v17 + 2;
          v21 = xmmword_186205EC0;
          v22 = xmmword_186205EB0;
          do
          {
            v23 = vmovn_s64(vcgeq_u64(v4, v21));
            if (vuzp1_s16(v23, *v4.i8).u8[0])
            {
              *(v20 - 2) = v18;
            }

            if (vuzp1_s16(v23, *&v4).i8[2])
            {
              *(v20 - 1) = v18;
            }

            if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v22))).i32[1])
            {
              *v20 = v18;
              v20[1] = v18;
            }

            v22 = vaddq_s64(v22, v80);
            v21 = vaddq_s64(v21, v80);
            v20 += 4;
            v19 -= 4;
          }

          while (v19);
        }

        v24 = *(v78 + 8);
        v12 = v79;
        if ((*(v78 + 6) & 2) != 0)
        {
          v25 = *(v2 + 72);
LABEL_72:
          v47 = 0;
          v48 = *(v2 + 16);
          do
          {
            v49 = v48 + 80 * v47;
            if ((*(v49 + 6) & 2) != 0)
            {
              v50 = *(v49 + 8);
            }

            else
            {
              v50 = 0;
            }

            v51 = *(v25 + 4 * (v47 + v13));
            if (v51)
            {
              v52 = v9 < 1;
            }

            else
            {
              v52 = 1;
            }

            if (!v52)
            {
              v53 = v8;
              v54 = v17;
              do
              {
                v55 = *v50++;
                *v54++ += v51 * v55;
                --v53;
              }

              while (v53);
            }

            ++v47;
          }

          while (v47 != v5);
          if (v9 >= 1)
          {
            v56 = 0;
            do
            {
              *(v24 + 2 * v56) += *(*(v2 + 120) + 4 * v56) >> v15;
              ++v56;
            }

            while (v8 != v56);
          }

          goto LABEL_111;
        }

        v25 = *(v2 + 72);
        if (!v24)
        {
          goto LABEL_72;
        }

        v26 = 0;
        v27 = *(v2 + 16);
        v28 = v25 + 4 * v13;
        do
        {
          v29 = v27 + 80 * v26;
          if ((*(v29 + 6) & 2) != 0)
          {
            v30 = 0;
          }

          else
          {
            v30 = *(v29 + 8);
          }

          v31 = *(v28 + 4 * v26);
          if (v31)
          {
            v32 = v8 < 1;
          }

          else
          {
            v32 = 1;
          }

          if (!v32)
          {
            v33 = v8;
            v34 = v17;
            do
            {
              v35 = *v30++;
              *v34++ += v35 * v31;
              --v33;
            }

            while (v33);
          }

          ++v26;
        }

        while (v26 != v5);
        if (v9 >= 1)
        {
          v36 = 0;
          do
          {
            *(v24 + v36) += *(*(v2 + 120) + v36) >> v15;
            v36 += 4;
          }

          while (4 * v8 != v36);
        }
      }

LABEL_111:
      if (++v3 == v12)
      {
        v76 = 0;
        v77 = 80 * v12;
        do
        {
          this = kd_multi_line::apply_offset(*(v2 + 16) + v76, *(*(v2 + 16) + v76 + 44), *(*(v2 + 16) + v76 + 48));
          v76 += 80;
        }

        while (v77 != v76);
        return this;
      }
    }
  }

  return this;
}

_DWORD *kd_multi_dependency_block::perform_inverse(_DWORD *this)
{
  v83 = *MEMORY[0x1E69E9840];
  v1 = this[3];
  if (this[6] != v1)
  {
    kd_multi_dependency_block::perform_inverse();
  }

  if (v1 >= 1)
  {
    v2 = this;
    v3 = 0;
    v75 = vdupq_n_s64(4uLL);
    v74 = this[3];
    do
    {
      if (v3 <= 1)
      {
        v4 = 1;
      }

      else
      {
        v4 = v3;
      }

      v5 = *(v2 + 16) + 80 * v3;
      v6 = *(*(v2 + 32) + 8 * v3);
      v7 = *v5;
      v8 = *v5;
      if (*(v2 + 64))
      {
        if (!v3)
        {
          goto LABEL_78;
        }

        v73 = *(*(v2 + 32) + 8 * v3);
        v9 = v3 * v1;
        v10 = *(*(v2 + 72) + 4 * v3 + 4 * v1 * v3);
        v11 = -1;
        do
        {
          v12 = 1 << ++v11;
        }

        while (1 << v11 < v10);
        if (v12 != v10)
        {
          v77 = 0;
          memset(v76, 0, sizeof(v76));
          kdu_error::kdu_error(v76, "Kakadu Core Error:\n");
          (*(*&v76[0] + 16))(v76, "Multi-component reversible dependency transforms must have exact positive powers of 2 on the diagonal of their triangular coefficient matrix; these are the divisors used to scale and round the prediction terms.  The offending divisor is ");
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          *v78 = 0u;
          if (BYTE8(v76[0]))
          {
            sprintf(v78, "%x");
          }

          else
          {
            sprintf(v78, "%d");
          }

          (*(*&v76[0] + 16))(v76, v78);
          (*(*&v76[0] + 16))(v76, ".");
          kdu_error::~kdu_error(v76);
        }

        this = *(v2 + 120);
        if (!this)
        {
          operator new[]();
        }

        if (v8 >= 1)
        {
          v13 = v12 >> 1;
          v14 = (v7 + 3) & 0xFFFFFFFC;
          v15 = vdupq_n_s64(v7 - 1);
          v16 = this + 2;
          v17 = xmmword_186205EC0;
          v18 = xmmword_186205EB0;
          do
          {
            v19 = vmovn_s64(vcgeq_u64(v15, v17));
            if (vuzp1_s16(v19, *v15.i8).u8[0])
            {
              *(v16 - 2) = v13;
            }

            if (vuzp1_s16(v19, *&v15).i8[2])
            {
              *(v16 - 1) = v13;
            }

            if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v18))).i32[1])
            {
              *v16 = v13;
              v16[1] = v13;
            }

            v18 = vaddq_s64(v18, v75);
            v17 = vaddq_s64(v17, v75);
            v16 += 4;
            v14 -= 4;
          }

          while (v14);
        }

        v20 = *(v5 + 8);
        if ((*(v5 + 6) & 2) != 0)
        {
          v21 = *(v2 + 16);
          v22 = *(v2 + 72);
          v1 = v74;
        }

        else
        {
          v21 = *(v2 + 16);
          v22 = *(v2 + 72);
          v1 = v74;
          if (v20)
          {
            v23 = 0;
            v6 = v73;
            do
            {
              v24 = v21 + 80 * v23;
              if ((*(v24 + 6) & 2) != 0)
              {
                v25 = 0;
              }

              else
              {
                v25 = *(v24 + 8);
              }

              v26 = *(v22 + 4 * v9 + 4 * v23);
              if (v26)
              {
                v27 = v7 < 1;
              }

              else
              {
                v27 = 1;
              }

              if (!v27)
              {
                v28 = v7;
                v29 = this;
                do
                {
                  v30 = *v25++;
                  *v29++ += v30 * v26;
                  --v28;
                }

                while (v28);
              }

              ++v23;
            }

            while (v23 != v4);
            if (v8 >= 1)
            {
              v31 = 0;
              do
              {
                *(v20 + v31) -= *(*(v2 + 120) + v31) >> v11;
                v31 += 4;
              }

              while (4 * v7 != v31);
            }

            goto LABEL_78;
          }
        }

        for (i = 0; i != v4; ++i)
        {
          v44 = v21 + 80 * i;
          if ((*(v44 + 6) & 2) != 0)
          {
            v45 = *(v44 + 8);
          }

          else
          {
            v45 = 0;
          }

          v46 = *(v22 + 4 * (i + v9));
          if (v46)
          {
            v47 = v8 < 1;
          }

          else
          {
            v47 = 1;
          }

          if (!v47)
          {
            v48 = v7;
            v49 = this;
            do
            {
              v50 = *v45++;
              *v49++ += v46 * v50;
              --v48;
            }

            while (v48);
          }
        }

        v6 = v73;
        if (v8 >= 1)
        {
          v51 = 0;
          do
          {
            *(v20 + 2 * v51) -= *(*(v2 + 120) + 4 * v51) >> v11;
            ++v51;
          }

          while (v7 != v51);
        }

LABEL_78:
        if (v6)
        {
          this = kd_multi_line::copy(v6, v5, -*(v6 + 44) - *(*(v2 + 80) + 4 * v3), 0.0);
LABEL_111:
          v1 = v74;
          goto LABEL_112;
        }

        goto LABEL_112;
      }

      v32 = *(*(v2 + 32) + 8 * v3);
      if ((*(v5 + 6) & 2) == 0)
      {
        v33 = *(v5 + 8);
        if (v33)
        {
          if (v3)
          {
            for (j = 0; j != v3; ++j)
            {
              v35 = *(v2 + 16) + 80 * j;
              if ((*(v35 + 6) & 2) != 0)
              {
                v36 = 0;
              }

              else
              {
                v36 = *(v35 + 8);
              }

              v37 = *(*(v2 + 88) + 4 * j + 4 * v3 * v1);
              if (v37 != 0.0 && v8 >= 1)
              {
                v39 = v7;
                v40 = v33;
                do
                {
                  v41 = *v36++;
                  *v40 = *v40 - (v41 * v37);
                  ++v40;
                  --v39;
                }

                while (v39);
              }
            }
          }

          goto LABEL_107;
        }
      }

      if (!v3)
      {
        goto LABEL_107;
      }

      if (*(v2 + 104))
      {
        if ((*(v5 + 6) & 2) == 0)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v52 = *(v2 + 16) + 80 * v3;
        kd_multi_dependency_block::create_short_matrix(v2);
        v5 = v52;
        v1 = v74;
        if ((*(v52 + 6) & 2) == 0)
        {
LABEL_81:
          v42 = 0;
          goto LABEL_82;
        }
      }

      v42 = *(v5 + 8);
LABEL_82:
      v53 = *(v2 + 112);
      this = *(v2 + 120);
      if (!this)
      {
        operator new[]();
      }

      if (v7 >= 1)
      {
        v54 = 1 << v53 >> 1;
        v55 = (v7 + 3) & 0xFFFFFFFC;
        v56 = vdupq_n_s64(v7 - 1);
        v57 = this + 2;
        v58 = xmmword_186205EC0;
        v59 = xmmword_186205EB0;
        do
        {
          v60 = vmovn_s64(vcgeq_u64(v56, v58));
          if (vuzp1_s16(v60, *v56.i8).u8[0])
          {
            *(v57 - 2) = v54;
          }

          if (vuzp1_s16(v60, *&v56).i8[2])
          {
            *(v57 - 1) = v54;
          }

          if (vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, *&v59))).i32[1])
          {
            *v57 = v54;
            v57[1] = v54;
          }

          v61 = vdupq_n_s64(4uLL);
          v59 = vaddq_s64(v59, v61);
          v58 = vaddq_s64(v58, v61);
          v57 += 4;
          v55 -= 4;
        }

        while (v55);
      }

      v62 = 0;
      v63 = *(v2 + 16);
      v64 = *(v2 + 104) + 2 * v3 * v1;
      do
      {
        v65 = v63 + 80 * v62;
        if ((*(v65 + 6) & 2) != 0)
        {
          v66 = *(v65 + 8);
        }

        else
        {
          v66 = 0;
        }

        v67 = *(v64 + 2 * v62);
        if (*(v64 + 2 * v62))
        {
          v68 = v8 < 1;
        }

        else
        {
          v68 = 1;
        }

        if (!v68)
        {
          v69 = v7;
          v70 = this;
          do
          {
            v71 = *v66++;
            *v70++ += v71 * v67;
            --v69;
          }

          while (v69);
        }

        ++v62;
      }

      while (v62 != v4);
      if (v8 >= 1)
      {
        v72 = 0;
        do
        {
          *(v42 + 2 * v72) -= *(*(v2 + 120) + 4 * v72) >> v53;
          ++v72;
        }

        while (v7 != v72);
      }

LABEL_107:
      if (v32)
      {
        if ((*(v32 + 36) & 1) != 0 || *(v5 + 36) == 1)
        {
          kd_multi_dependency_block::perform_inverse();
        }

        this = kd_multi_line::copy(v32, v5, 0, -(*(v32 + 48) - ((-(1 << *(v5 + 40)) / (1 << *(v32 + 40))) * *(*(v2 + 96) + 4 * v3))));
        goto LABEL_111;
      }

LABEL_112:
      ++v3;
    }

    while (v3 != v1);
  }

  return this;
}

void kd_multi_dwt_block::initialize(uint64_t a1, int a2, int a3, uint64_t *a4, int a5, int a6, _DWORD *a7, _DWORD *a8, kd_multi_transform *a9)
{
  v26[0] = a4;
  v24 = a6;
  v25 = a5;
  scratch_ints = kd_multi_transform::get_scratch_ints(a9, 3 * a6 + 2 * a5);
  v17 = (scratch_ints + 4 * a5);
  v15 = &v17[a5];
  scratch_floats = kd_multi_transform::get_scratch_floats(a9, a6);
  *v23 = 0;
  kdu_tile::get_mct_block_info(v26, a2, a3, &v23[1], v23, &v25, &v24, scratch_ints, v15, scratch_floats, &v15[a6 + a6], 0);
  if (*v23 == __PAIR64__(*a7, *a8))
  {
    *v22 = 0;
    v21 = 0;
    v20 = 0;
    if (kdu_tile::get_mct_dwt_info(v26, a2, a3, (a1 + 80), (a1 + 64), v22, &v21, (a1 + 84), (a1 + 81), (a1 + 82), &v20, v17, &v15[a6]))
    {
      if (*(a1 + 64) > 0)
      {
        *(a1 + 120) = 0;
        *(a1 + 96) = 0;
        operator new[]();
      }
    }

    kd_multi_dwt_block::initialize();
  }

  kd_multi_dwt_block::initialize();
}

const char *kd_multi_dwt_block::prepare_for_inversion(kd_multi_dwt_block *this)
{
  v1 = *(this + 16);
  if (v1 <= 0)
  {
    kd_multi_dwt_block::prepare_for_inversion();
  }

  v2 = *(this + 9) + (v1 << 6);
  v3 = *(v2 - 60);
  if (v3 < 1)
  {
LABEL_7:
    *(this + 11) = v3;
    v7 = *(this + 6);
    if (v7 < 1)
    {
      return 0;
    }

    else
    {
      v8 = 0;
      v9 = 8 * v7;
      v5 = "Encountered an irreversible DWT transform block which operates on reversible codestream sample data.  While we allow such transforms to be processed during decompression, it is unreasonable to generate reversibly compressed component samples using an irreversible inverse multi-component transform during compression.  Kakadu will not invert this transform during compression.  This can prevent the compression process from proceeding if there are no other paths back from the MCT output components to the codestream components.";
      while (1)
      {
        if ((*(this + 80) & 1) == 0)
        {
          v10 = *(*(this + 4) + v8);
          if (v10)
          {
            if (*(v10 + 36))
            {
              break;
            }
          }
        }

        v8 += 8;
        if (v9 == v8)
        {
          return 0;
        }
      }
    }
  }

  else if (*(v2 - 48) == *(v2 - 64))
  {
    v4 = *(v2 - 32);
    v5 = "DWT transform block cannot be inverted unless all output components can be computed by downstream transform blocks in the multi-component transform network, or by the application supplying them.";
    v6 = v3;
    while (*(*v4 + 28) >= 1)
    {
      v4 += 8;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    return "DWT transform block cannot be inverted unless all output components can be computed by downstream transform blocks in the multi-component transform network, or by the application supplying them.";
  }

  return v5;
}

uint64_t kd_multi_dwt_block::normalize_coefficients(uint64_t this)
{
  if ((*(this + 80) & 1) == 0)
  {
    v1 = *(this + 12);
    if (v1 < 1)
    {
      v3 = 0;
      v2 = 0;
    }

    else
    {
      v2 = 0;
      v3 = 0;
      v4 = (*(this + 16) + 40);
      v5 = *(this + 12);
      do
      {
        if (*v4 > v3)
        {
          v3 = *v4;
        }

        v2 |= *(v4 - 2);
        v4 += 20;
        --v5;
      }

      while (v5);
    }

    v6 = (v3 == 0) | v2;
    LODWORD(v7) = *(this + 24);
    if (v7 >= 1)
    {
      v8 = *(this + 32);
      v9 = *(this + 24);
      do
      {
        v10 = *v8;
        if (*v8 && ((*(v10 + 38) & 1) != 0 || !*(v10 + 40)))
        {
          v6 = 1;
        }

        ++v8;
        --v9;
      }

      while (v9);
    }

    if (v1 >= 1)
    {
      v11 = 0;
      for (i = 0; i < v1; ++i)
      {
        v13 = *(this + 16) + v11;
        *(v13 + 38) = v6 & 1;
        if ((*(v13 + 37) & 1) == 0)
        {
          kd_multi_dwt_block::normalize_coefficients();
        }

        v14 = *(v13 + 40);
        if (v14)
        {
          if (v14 != v3)
          {
            v17 = 0;
            memset(v16, 0, sizeof(v16));
            kdu_error::kdu_error(v16, "Kakadu Core Error:\n");
            (*(*&v16[0] + 16))(v16, "Inconsistent bit-depths encountered amongst output image components produced by a DWT transform block embedded inside the multi-component transform network.  All output (i.e., synthesized) components produced by a single DWT block must be declared with the same bit-depth.  Anything else makes no sense, so Kakadu does not bother trying to accommodate this case.");
            kdu_error::~kdu_error(v16);
          }
        }

        else
        {
          *(v13 + 40) = v3;
        }

        v11 += 80;
      }

      LODWORD(v7) = *(this + 24);
    }

    if (v7 >= 1)
    {
      v15 = *(this + 32);
      v7 = v7;
      do
      {
        if (*v15)
        {
          *(*v15 + 38) = v6 & 1;
        }

        v15 += 8;
        --v7;
      }

      while (v7);
    }
  }

  return this;
}

uint64_t kd_multi_dwt_block::propagate_bit_depths(kd_multi_dwt_block *this, int a2, int a3)
{
  if ((a2 & 1) == 0 && !a3)
  {
    goto LABEL_29;
  }

  v3 = *(this + 3);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = (*(this + 2) + 40);
    v6 = *(this + 3);
    do
    {
      v8 = *v5;
      v5 += 20;
      v7 = v8;
      if (v8)
      {
        if (v4)
        {
          v9 = v4 == v7;
          v4 = v7;
          if (!v9)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v4 = v7;
        }
      }

      --v6;
    }

    while (v6);
    if (v4)
    {
      goto LABEL_32;
    }
  }

  if (a2)
  {
LABEL_29:
    v17 = 0;
    return v17 & 1;
  }

  v10 = *(this + 9);
  v11 = *(v10 + 20);
  if (v11 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v12 = 0;
    v13 = *(v10 + 40);
    do
    {
      if (*v13)
      {
        v14 = **v13;
        if (v14)
        {
          v15 = *(v14 + 40);
          if (v15)
          {
            if (v15 > v12)
            {
              v12 = v15;
            }

            if (v15 >= v4)
            {
              v16 = v4;
            }

            else
            {
              v16 = v15;
            }

            if (v4)
            {
              v4 = v16;
            }

            else
            {
              v4 = v15;
            }
          }
        }
      }

      ++v13;
      --v11;
    }

    while (v11);
    if (v4 <= 0 && v12 != v4)
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  v17 = 0;
  if (v3 >= 1 && a3)
  {
    v17 = 0;
    v19 = (*(this + 2) + 40);
    do
    {
      if (!*v19)
      {
        *v19 = v4;
        v17 = 1;
      }

      v19 += 20;
      --v3;
    }

    while (v3);
  }

  if (a2)
  {
    v20 = *(this + 16);
    if (v20 >= 1)
    {
      v21 = 0;
      v22 = *(this + 9);
      do
      {
        v23 = v22 + (v21 << 6);
        v24 = *(v23 + 20);
        if (v24 >= 1)
        {
          v25 = *(v23 + 40);
          if (v21)
          {
            v26 = v4 + 1;
          }

          else
          {
            v26 = v4;
          }

          do
          {
            if (*v25)
            {
              v27 = **v25;
              if (v27)
              {
                if (!*(v27 + 40))
                {
                  *(v27 + 40) = v26;
                  v17 = 1;
                }
              }
            }

            ++v25;
            --v24;
          }

          while (v24);
        }

        ++v21;
      }

      while (v21 != v20);
    }
  }

  return v17 & 1;
}

void kd_multi_dwt_block::perform_transform(kd_multi_dwt_block *this)
{
  if (*(this + 16) >= 1)
  {
    v2 = 0;
    while (1)
    {
      v3 = *(this + 9) + (v2 << 6);
      LODWORD(v4) = *(v3 + 20);
      if (v4 >= 1)
      {
        for (i = 0; i < v4; ++i)
        {
          v6 = *(*(v3 + 40) + 8 * i);
          if (v6)
          {
            v7 = *(*(v3 + 32) + 8 * i);
            v8 = *v6;
            if (*v6)
            {
              if (*(this + 80) == 1)
              {
                kd_multi_line::copy(v7, v8, 0, 0.0);
              }

              else
              {
                if ((*(v3 + 16) + i))
                {
                  v9 = *(v3 + 56) * 0.5;
                }

                else
                {
                  v9 = *(v3 + 52);
                }

                v10 = *(v7 + 20);
                if ((*(v7 + 6) & 2) != 0 || (v11 = *(v7 + 8)) == 0)
                {
                  if (*(v8 + 36))
                  {
                    v13 = 8192.0;
                  }

                  else
                  {
                    v13 = (1 << *(v8 + 40));
                  }

                  v14 = (v9 / (1 << *(v7 + 40))) * v13;
                  v15 = 0;
                  while (v14 < 16383.0)
                  {
                    v14 = v14 + v14;
                    ++v15;
                  }

                  while (v14 > 32767.0)
                  {
                    v14 = v14 * 0.5;
                    --v15;
                  }

                  if ((*(v8 + 6) & 2) != 0)
                  {
                    v16 = *(v8 + 8);
                    if ((*(v7 + 6) & 2) == 0)
                    {
                      goto LABEL_32;
                    }

LABEL_30:
                    v17 = *(v7 + 8);
                  }

                  else
                  {
                    v16 = 0;
                    if ((*(v7 + 6) & 2) != 0)
                    {
                      goto LABEL_30;
                    }

LABEL_32:
                    v17 = 0;
                  }

                  v18 = vcvtmd_s64_f64(v14 + 0.5);
                  if (v15 < 0)
                  {
                    if (v10 >= 1)
                    {
                      v20 = -v15;
                      do
                      {
                        v21 = *v16++;
                        *v17++ = (v21 * v18) << v20;
                        --v10;
                      }

                      while (v10);
                    }
                  }

                  else if (v10 >= 1)
                  {
                    do
                    {
                      v19 = *v16++;
                      *v17++ = ((1 << v15 >> 1) + v19 * v18) >> v15;
                      --v10;
                    }

                    while (v10);
                  }

                  goto LABEL_10;
                }

                if (*(v8 + 36) == 1)
                {
                  if ((*(v8 + 6) & 2) != 0)
                  {
                    v12 = 0;
                  }

                  else
                  {
                    v12 = *(v8 + 8);
                  }

                  if (v10 >= 1)
                  {
                    v23 = v9 / (1 << *(v7 + 40));
                    do
                    {
                      v24 = *v12++;
                      *v11++ = v23 * v24;
                      --v10;
                    }

                    while (v10);
                  }
                }

                else
                {
                  if ((*(v8 + 6) & 2) != 0)
                  {
                    v22 = 0;
                  }

                  else
                  {
                    v22 = *(v8 + 8);
                  }

                  if (v10 >= 1)
                  {
                    v25 = (v9 * (1 << *(v8 + 40))) / (1 << *(v7 + 40));
                    do
                    {
                      v26 = *v22++;
                      *v11++ = v25 * v26;
                      --v10;
                    }

                    while (v10);
                  }
                }
              }
            }

            else
            {
              kd_multi_line::reset(v7, 0, 0.0);
            }
          }

LABEL_10:
          v4 = *(v3 + 20);
        }
      }

      v27 = *(v3 + 16);
      if (*(v3 + 4) == 1)
      {
        if ((v27 & 1) != 0 && *(this + 80) == 1)
        {
          v28 = **(v3 + 32);
          v29 = *(v28 + 6);
          v30 = *(v28 + 8);
          v31 = *(v28 + 20);
          if ((v29 & 2) != 0 && v30)
          {
            if (v31 >= 1)
            {
              do
              {
                *v30 = *v30 >> 1;
                v30 = (v30 + 2);
                --v31;
              }

              while (v31);
            }
          }

          else if (v31 >= 1)
          {
            do
            {
              *v30++ >>= 1;
              --v31;
            }

            while (v31);
          }
        }

        if (*(v3 + 48))
        {
          kd_multi_dwt_block::perform_transform();
        }

        goto LABEL_122;
      }

      v63 = v2;
      v32 = *(this + 21);
      if (v32 >= 1)
      {
        v33 = v27 + v4;
        v34 = v27 + v4 - 1;
        while (1)
        {
          v35 = ((*(v3 + 16) ^ (v32 - 1)) & 1) == 0;
          if (v35 < v4)
          {
            break;
          }

LABEL_101:
          v49 = v32-- <= 1;
          if (v49)
          {
            goto LABEL_103;
          }
        }

        v36 = *(this + 11) + 32 * (v32 - 1);
        while (1)
        {
          v37 = *(*(v3 + 32) + 8 * v35);
          v38 = *(v37 + 20);
          v39 = *(v37 + 6);
          v40 = *(v37 + 8);
          v41 = (v39 & 2) != 0 ? v40 : 0;
          v42 = (v39 & 2) != 0 ? 0 : v40;
          v43 = *(v36 + 1);
          if (*(v36 + 1))
          {
            break;
          }

LABEL_96:
          if (v41)
          {
            perform_synthesis_lifting_step(v36, *(this + 16), v41, v41, v38, 0);
          }

          else
          {
            if (!v42)
            {
              kd_multi_dwt_block::perform_transform();
            }

            perform_synthesis_lifting_step(v36, *(this + 16), v42, v42, v38, 0);
          }

          v35 += 2;
          LODWORD(v4) = *(v3 + 20);
          if (v4 <= v35)
          {
            goto LABEL_101;
          }
        }

        v44 = 0;
        v45 = *(v3 + 16);
        v46 = ((v45 + v35) ^ 1) + 2 * *(v36 + 4);
        while (1)
        {
          v47 = v46 < v27;
          if (v46 < v27 || (v48 = v46, v46 >= v33))
          {
            v48 = v46;
            do
            {
              if (v47)
              {
                if (*(this + 82))
                {
                  v48 = 2 * v27 - v48;
                }

                else
                {
                  v48 = ((v48 ^ v27) & 1) + v27;
                }
              }

              else if (*(this + 82))
              {
                v48 = 2 * v34 - v48;
              }

              else
              {
                v48 = v34 - ((v48 ^ v34) & 1);
              }

              v47 = v48 < v27;
              v49 = v48 >= v27 && v48 < v33;
            }

            while (!v49);
          }

          v50 = v48 - v45;
          if (v48 - v45 < 0 || v50 >= v4)
          {
            kd_multi_dwt_block::perform_transform();
          }

          v51 = *(*(v3 + 32) + 8 * v50);
          if (v41)
          {
            if ((*(v51 + 6) & 2) != 0)
            {
              goto LABEL_94;
            }
          }

          else if ((*(v51 + 6) & 2) == 0)
          {
LABEL_94:
            v52 = *(v51 + 8);
            goto LABEL_95;
          }

          v52 = 0;
LABEL_95:
          *(*(this + 16) + 8 * v44++) = v52;
          v46 += 2;
          if (v44 == v43)
          {
            goto LABEL_96;
          }
        }
      }

LABEL_103:
      v2 = v63;
      if ((*(this + 80) & 1) == 0 && *(v3 + 48) >= 1 && v4 >= 1)
      {
        break;
      }

LABEL_122:
      v60 = *(this + 16);
      if (v2 >= v60 - 1 && *(v3 + 20) >= 1)
      {
        v61 = 0;
        do
        {
          v62 = *(*(v3 + 32) + 8 * v61);
          kd_multi_line::apply_offset(v62, *(v62 + 44), *(v62 + 48));
          ++v61;
        }

        while (v61 < *(v3 + 20));
        LODWORD(v60) = *(this + 16);
      }

      if (++v2 >= v60)
      {
        return;
      }
    }

    v54 = 0;
    while (1)
    {
      v55 = *(*(v3 + 32) + 8 * v54);
      v56 = *(v55 + 20);
      v57 = *(v55 + 6);
      v58 = *(v55 + 8);
      if ((v57 & 2) != 0)
      {
        break;
      }

      v59 = *(v3 + 48);
      if (!v58)
      {
        goto LABEL_115;
      }

      if (v56 >= 1)
      {
        do
        {
          *v58 = *v58 * (1 << v59);
          ++v58;
          --v56;
        }

        while (v56);
      }

LABEL_117:
      if (++v54 >= *(v3 + 20))
      {
        goto LABEL_122;
      }
    }

    v59 = *(v3 + 48);
LABEL_115:
    if (v56 >= 1)
    {
      do
      {
        *v58 = *v58 << v59;
        v58 = (v58 + 2);
        --v56;
      }

      while (v56);
    }

    goto LABEL_117;
  }
}

uint64_t kd_multi_dwt_block::perform_inverse(uint64_t this)
{
  v1 = *(this + 64);
  if (v1 < 1)
  {
    return this;
  }

  v2 = this;
  do
  {
    v3 = *(v2 + 72) + ((v1 - 1) << 6);
    v4 = *(v3 + 4);
    v58 = v1 - 1;
    v59 = v1;
    if (v4 == 1)
    {
      if (*(v3 + 48))
      {
        kd_multi_dwt_block::perform_inverse();
      }

      if ((*v3 & 1) != 0 && *(v2 + 80) == 1)
      {
        v5 = **(v3 + 32);
        v6 = *(v5 + 6);
        v7 = *(v5 + 8);
        v8 = *(v5 + 20);
        if ((v6 & 2) != 0 && v7)
        {
          if (v8 >= 1)
          {
            do
            {
              *v7++ *= 2;
              --v8;
            }

            while (v8);
          }
        }

        else if (v8 >= 1)
        {
          do
          {
            *v7 *= 2;
            v7 += 2;
            --v8;
          }

          while (v8);
        }
      }

      goto LABEL_71;
    }

    if ((*(v2 + 80) & 1) == 0 && *(v3 + 48) >= 1 && *(v3 + 20) >= 1)
    {
      v9 = 0;
      while (1)
      {
        v10 = *(*(v3 + 32) + 8 * v9);
        v11 = *(v10 + 20);
        v12 = *(v10 + 6);
        v13 = *(v10 + 8);
        if ((v12 & 2) != 0)
        {
          break;
        }

        v14 = *(v3 + 48);
        if (!v13)
        {
          goto LABEL_22;
        }

        if (v11 >= 1)
        {
          do
          {
            *v13 = (1.0 / (1 << v14)) * *v13;
            ++v13;
            --v11;
          }

          while (v11);
        }

LABEL_24:
        if (++v9 >= *(v3 + 20))
        {
          v4 = *(v3 + 4);
          goto LABEL_26;
        }
      }

      v14 = *(v3 + 48);
LABEL_22:
      if (v11 >= 1)
      {
        do
        {
          *v13 = ((0x10000 << (v14 - 1) >> 16) + *v13) >> v14;
          v13 = (v13 + 2);
          --v11;
        }

        while (v11);
      }

      goto LABEL_24;
    }

LABEL_26:
    v15 = *(v2 + 84);
    if (v15 < 1)
    {
      goto LABEL_71;
    }

    v16 = 0;
    v17 = *v3;
    v18 = v4 + *v3;
    v19 = 2 * *v3;
    v20 = *(v3 + 20);
    do
    {
      v21 = ((*(v3 + 16) ^ v16) & 1) == 0;
      if (v21 >= v20)
      {
        goto LABEL_67;
      }

      v22 = *(v2 + 88) + 32 * v16;
      do
      {
        v23 = *(*(v3 + 32) + 8 * v21);
        v24 = *(v23 + 20);
        v25 = *(v23 + 6);
        v26 = *(v23 + 8);
        if ((v25 & 2) != 0)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        if ((v25 & 2) != 0)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26;
        }

        v29 = *(v22 + 1);
        if (*(v22 + 1))
        {
          v30 = 0;
          v31 = *(v3 + 16);
          v32 = ((v31 + v21) ^ 1) + 2 * *(v22 + 4);
          do
          {
            v33 = v32 < v17;
            if (v32 < v17 || (v34 = v32, v32 >= v18))
            {
              v34 = v32;
              do
              {
                if (v33)
                {
                  if (*(v2 + 82))
                  {
                    v34 = v19 - v34;
                  }

                  else
                  {
                    v34 = ((v34 ^ v17) & 1) + v17;
                  }
                }

                else if (*(v2 + 82))
                {
                  v34 = 2 * (v18 - 1) - v34;
                }

                else
                {
                  v34 = v18 - 1 - ((v34 ^ (v18 - 1)) & 1);
                }

                v33 = v34 < v17;
              }

              while (v34 < v17 || v34 >= v18);
            }

            v36 = v34 - v31;
            if (v34 - v31 < 0 || v36 >= v20)
            {
              kd_multi_dwt_block::perform_inverse();
            }

            v37 = *(*(v3 + 32) + 8 * v36);
            if (v27)
            {
              if ((*(v37 + 6) & 2) != 0)
              {
                goto LABEL_59;
              }
            }

            else if ((*(v37 + 6) & 2) == 0)
            {
LABEL_59:
              v38 = *(v37 + 8);
              goto LABEL_60;
            }

            v38 = 0;
LABEL_60:
            *(*(v2 + 128) + 8 * v30++) = v38;
            v32 += 2;
          }

          while (v30 != v29);
        }

        if (v27)
        {
          this = perform_analysis_lifting_step(v22, *(v2 + 128), v27, v27, v24, 0);
        }

        else
        {
          if (!v28)
          {
            kd_multi_dwt_block::perform_inverse();
          }

          this = perform_analysis_lifting_step(v22, *(v2 + 128), v28, v28, v24, 0);
        }

        v21 += 2;
        v20 = *(v3 + 20);
      }

      while (v20 > v21);
      v15 = *(v2 + 84);
LABEL_67:
      ++v16;
    }

    while (v16 < v15);
LABEL_71:
    if (*(v3 + 20) >= 1)
    {
      v39 = 0;
      do
      {
        v40 = *(*(v3 + 40) + 8 * v39);
        if (v40)
        {
          this = *v40;
          if (*v40)
          {
            v41 = *(*(v3 + 32) + 8 * v39);
            if (*(v2 + 80) == 1)
            {
              this = kd_multi_line::copy(this, v41, -*(this + 44), -*(this + 48));
            }

            else
            {
              if ((*(v3 + 16) + v39))
              {
                v42 = *(v3 + 56) * 0.5;
              }

              else
              {
                v42 = *(v3 + 52);
              }

              if (*(this + 36) == 1)
              {
                kd_multi_dwt_block::perform_inverse();
              }

              v43 = *(v41 + 20);
              v44 = (1 << *(v41 + 40)) / (v42 * (1 << *(this + 40)));
              if ((*(v41 + 6) & 2) != 0 || (v45 = *(v41 + 8)) == 0)
              {
                v47 = 0;
                while (v44 < 16383.0)
                {
                  v44 = v44 + v44;
                  ++v47;
                }

                while (v44 > 32767.0)
                {
                  v44 = v44 * 0.5;
                  --v47;
                }

                if ((*(v41 + 6) & 2) != 0)
                {
                  v48 = *(v41 + 8);
                }

                else
                {
                  v48 = 0;
                }

                if ((*(this + 6) & 2) != 0)
                {
                  v49 = *(this + 8);
                }

                else
                {
                  v49 = 0;
                }

                v50 = vcvtmd_s64_f64(v44 + 0.5);
                v51 = vcvtmd_s64_f64((*(this + 48) * 8192.0) + 0.5);
                if (v47 < 0)
                {
                  if (v43 >= 1)
                  {
                    v54 = -v47;
                    do
                    {
                      v55 = *v48++;
                      *v49++ = ((v55 * v50) << v54) - v51;
                      --v43;
                    }

                    while (v43);
                  }
                }

                else if (v43 >= 1)
                {
                  v52 = (1 << v47 >> 1) - (v51 << v47);
                  do
                  {
                    v53 = *v48++;
                    *v49++ = (v52 + v53 * v50) >> v47;
                    --v43;
                  }

                  while (v43);
                }
              }

              else
              {
                if ((*(this + 6) & 2) != 0)
                {
                  v46 = 0;
                }

                else
                {
                  v46 = *(this + 8);
                }

                if (v43 >= 1)
                {
                  v56 = -*(this + 48);
                  do
                  {
                    v57 = *v45++;
                    *v46++ = v56 + (v57 * v44);
                    --v43;
                  }

                  while (v43);
                }
              }
            }
          }
        }

        ++v39;
      }

      while (v39 < *(v3 + 20));
    }

    v1 = v58;
  }

  while (v59 >= 2);
  return this;
}

void kd_multi_null_block::~kd_multi_null_block(kd_multi_null_block *this)
{
  kd_multi_block::~kd_multi_block(this);

  JUMPOUT(0x186602850);
}

void kd_multi_matrix_block::~kd_multi_matrix_block(kd_multi_matrix_block *this)
{
  kd_multi_matrix_block::~kd_multi_matrix_block(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4D3960;
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C8052888210);
  }

  v3 = *(this + 9);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8052888210);
  }

  v4 = *(this + 10);
  if (v4)
  {
    MEMORY[0x186602830](v4, 0x1000C80BDFB0063);
  }

  v5 = *(this + 11);
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x1000C8052888210);
  }

  v6 = *(this + 13);
  if (v6)
  {
    MEMORY[0x186602830](v6, 0x1000C8000313F17);
  }

  kd_multi_block::~kd_multi_block(this);
}

void kd_multi_rxform_block::~kd_multi_rxform_block(kd_multi_rxform_block *this)
{
  kd_multi_rxform_block::~kd_multi_rxform_block(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4D39C8;
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C8052888210);
  }

  v3 = *(this + 9);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8052888210);
  }

  kd_multi_block::~kd_multi_block(this);
}

void kd_multi_dependency_block::~kd_multi_dependency_block(kd_multi_dependency_block *this)
{
  kd_multi_dependency_block::~kd_multi_dependency_block(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4D3A30;
  v2 = *(this + 9);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C8052888210);
  }

  v3 = *(this + 10);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8052888210);
  }

  v4 = *(this + 11);
  if (v4)
  {
    MEMORY[0x186602830](v4, 0x1000C8052888210);
  }

  v5 = *(this + 12);
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x1000C8052888210);
  }

  v6 = *(this + 13);
  if (v6)
  {
    MEMORY[0x186602830](v6, 0x1000C80BDFB0063);
  }

  v7 = *(this + 15);
  if (v7)
  {
    MEMORY[0x186602830](v7, 0x1000C8052888210);
  }

  kd_multi_block::~kd_multi_block(this);
}

void kd_multi_dwt_block::~kd_multi_dwt_block(kd_multi_dwt_block *this)
{
  kd_multi_dwt_block::~kd_multi_dwt_block(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4D3A98;
  v2 = *(this + 9);
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = (v2 + (v4 << 6) - 64);
      v6 = -64 * v4;
      do
      {
        kd_multi_dwt_level::~kd_multi_dwt_level(v5);
        v5 = (v7 - 64);
        v6 += 64;
      }

      while (v6);
    }

    MEMORY[0x186602830](v3, 0x1080C80D9599B8ALL);
  }

  v8 = *(this + 11);
  if (v8)
  {
    MEMORY[0x186602830](v8, 0x1090C805C18EE7CLL);
  }

  v9 = *(this + 13);
  if (v9)
  {
    MEMORY[0x186602830](v9, 0x1000C8052888210);
  }

  v10 = *(this + 14);
  if (v10)
  {
    MEMORY[0x186602830](v10, 0x1000C8052888210);
  }

  v11 = *(this + 16);
  if (v11)
  {
    MEMORY[0x186602830](v11, 0x20C8093837F09);
    *(this + 16) = 0;
  }

  kd_multi_block::~kd_multi_block(this);
}

void kd_multi_component::~kd_multi_component(kd_multi_component *this)
{
  *this = &unk_1EF4D3BA0;
  v2 = *(this + 18);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 18) = 0;
  }

  v3 = *(this + 19);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(this + 19) = 0;
  }

  v4 = *(this + 17);
  if (v4)
  {
    MEMORY[0x186602830](v4, 0x1020C805730B0C9);
  }

  *this = &unk_1EF4D3478;
}

{
  kd_multi_component::~kd_multi_component(this);

  JUMPOUT(0x186602850);
}

uint64_t kd_multi_component::do_job(uint64_t this, kdu_thread_entity *a2)
{
  if (*(this + 120) >= 1)
  {
    v3 = this;
    v4 = 0;
    do
    {
      v5 = *(v3 + 144);
      v6 = *(v3 + 136) + 16 * (v4 + *(v3 + 116));
      if (v5)
      {
        this = (*(*v5 + 24))(v5, v6, a2);
      }

      else
      {
        this = (*(**(v3 + 152) + 16))(*(v3 + 152), v6, a2);
      }

      ++v4;
    }

    while (v4 < *(v3 + 120));
  }

  return this;
}

void kd_multi_block::~kd_multi_block(kd_multi_block *this)
{
  *this = &unk_1EF4D3BE0;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1020C80587BA0B9);
  }

  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x20C8093837F09);
  }
}

void kd_multi_dwt_level::~kd_multi_dwt_level(kd_multi_dwt_level *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x20C8093837F09);
  }

  v3 = *(this + 5);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x80C80B8603338);
  }
}

void _cg_jinit_c_master_control(uint64_t *a1, int a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v4 = (*a1[1])();
  a1[62] = v4;
  *v4 = prepare_for_pass;
  *(v4 + 8) = pass_startup;
  *(v4 + 16) = finish_pass_master;
  *(v4 + 28) = 0;
  v5 = *(a1 + 119);
  if ((v5 - 17) <= 0xFFFFFFEF)
  {
    v6 = *a1;
    *(v6 + 40) = 7;
    *(v6 + 48) = v5;
    *(*a1 + 52) = *(a1 + 119);
    (**a1)(a1);
    v5 = *(a1 + 119);
  }

  if ((v5 - 2) > 5)
  {
    v7 = _cg_jpeg_natural_order;
  }

  else
  {
    v7 = *(&off_1E6EF8BD0 + (v5 - 2));
  }

  a1[60] = v7;
  if (v5 >= 8)
  {
    v8 = 63;
  }

  else
  {
    v8 = v5 * v5 - 1;
  }

  *(a1 + 122) = v8;
  v9 = *(a1 + 21);
  if (!v9 || !*(a1 + 20) || *(a1 + 23) <= 0)
  {
    v10 = *a1;
    *(v10 + 40) = 33;
    (*v10)(a1);
    v9 = *(a1 + 21);
  }

  if (v9 > 0xFFDC || *(a1 + 20) >= 0xFFDDu)
  {
    v11 = *a1;
    *(v11 + 40) = 42;
    *(v11 + 48) = 65500;
    (**a1)(a1);
  }

  v12 = *(a1 + 22);
  if ((v12 - 13) <= 0xFFFFFFFA)
  {
    v13 = *a1;
    *(v13 + 40) = 16;
    *(v13 + 48) = v12;
    (**a1)(a1);
  }

  v14 = *(a1 + 23);
  if (v14 >= 11)
  {
    v15 = *a1;
    *(v15 + 40) = 27;
    *(v15 + 48) = v14;
    *(*a1 + 52) = 10;
    (**a1)(a1);
    v14 = *(a1 + 23);
  }

  a1[44] = 0x100000001;
  if (v14 < 1)
  {
    v18 = 1;
  }

  else
  {
    v16 = 0;
    v17 = (a1[13] + 12);
    v18 = 1;
    v19 = 1;
    do
    {
      v20 = *(v17 - 1);
      if ((v20 - 5) < 0xFFFFFFFC || (v21 = *v17, (*v17 - 5) <= 0xFFFFFFFB))
      {
        v22 = *a1;
        *(v22 + 40) = 19;
        (*v22)(a1);
        v19 = *(a1 + 88);
        v20 = *(v17 - 1);
        v21 = *v17;
        v18 = *(a1 + 89);
        v14 = *(a1 + 23);
      }

      if (v19 <= v20)
      {
        v19 = v20;
      }

      *(a1 + 88) = v19;
      if (v18 <= v21)
      {
        v18 = v21;
      }

      *(a1 + 89) = v18;
      ++v16;
      v17 += 24;
    }

    while (v16 < v14);
    if (v14 >= 1)
    {
      v23 = 0;
      v24 = a1[13];
      while (1)
      {
        v24[1] = v23;
        v25 = *(a1 + 90);
        if (*(a1 + 72))
        {
          v24[9] = v25;
          v26 = v24 + 9;
          v27 = *(a1 + 91);
        }

        else
        {
          if (*(a1 + 76))
          {
            v28 = 8;
          }

          else
          {
            v28 = 4;
          }

          if (v25 <= v28)
          {
            v29 = 1;
            do
            {
              if (*(a1 + 88) % (2 * v24[2] * v29))
              {
                break;
              }

              v29 *= 2;
            }

            while (v29 * v25 <= v28);
          }

          else
          {
            v29 = 1;
          }

          v25 *= v29;
          v24[9] = v25;
          v26 = v24 + 9;
          v27 = *(a1 + 91);
          if (v27 <= v28)
          {
            v30 = 1;
            do
            {
              if (*(a1 + 89) % (2 * v24[3] * v30))
              {
                break;
              }

              v30 *= 2;
            }

            while (v30 * v27 <= v28);
            goto LABEL_44;
          }
        }

        v30 = 1;
LABEL_44:
        v31 = v30 * v27;
        v24[10] = v30 * v27;
        if (v25 <= 2 * v30 * v27)
        {
          if (v31 > 2 * v25)
          {
            v24[10] = 2 * v25;
          }
        }

        else
        {
          *v26 = 2 * v31;
        }

        v24[7] = jdiv_round_up(v24[2] * *(a1 + 20), *(a1 + 119) * *(a1 + 88));
        v24[8] = jdiv_round_up(v24[3] * *(a1 + 21), *(a1 + 119) * *(a1 + 89));
        v24[11] = jdiv_round_up(v24[9] * v24[2] * *(a1 + 20), *(a1 + 119) * *(a1 + 88));
        v24[12] = jdiv_round_up(v24[10] * v24[3] * *(a1 + 21), *(a1 + 119) * *(a1 + 89));
        v24[13] = 0;
        ++v23;
        v24 += 24;
        if (v23 >= *(a1 + 23))
        {
          v18 = *(a1 + 89);
          break;
        }
      }
    }
  }

  *(a1 + 92) = jdiv_round_up(*(a1 + 21), *(a1 + 119) * v18);
  v32 = a1[35];
  if (v32)
  {
    v88 = 0;
    memset(v87, 0, sizeof(v87));
    bzero(__b, 0xA00uLL);
    if (*(a1 + 68) <= 0)
    {
      v33 = *a1;
      *(v33 + 40) = 20;
      *(v33 + 48) = 0;
      (**a1)(a1);
      v32 = a1[35];
    }

    v81 = a2;
    if (v32[5] || v32[6] != 63)
    {
      v35 = 1;
      *(a1 + 87) = 1;
      v34 = *(a1 + 23);
      if (v34 >= 1)
      {
        memset(__b, 255, v34 << 8);
        v35 = 1;
      }
    }

    else
    {
      *(a1 + 87) = 0;
      v34 = *(a1 + 23);
      if (v34 >= 1)
      {
        bzero(v87, 4 * v34);
      }

      v35 = 0;
    }

    if (*(a1 + 68) >= 1)
    {
      v80 = v4;
      v36 = 1;
      while (1)
      {
        v37 = *v32;
        if ((v37 - 5) <= 0xFFFFFFFB && (v38 = *a1, *(v38 + 40) = 27, *(v38 + 48) = v37, *(*a1 + 52) = 4, (**a1)(a1), v37 < 1))
        {
          v43 = 0;
        }

        else
        {
          v39 = 0;
          do
          {
            v40 = v32[v39 + 1];
            if (v40 < 0 || v40 >= *(a1 + 23))
            {
              v41 = *a1;
              *(v41 + 40) = 20;
              *(v41 + 48) = v36;
              (**a1)(a1);
            }

            if (v39 && v40 <= v32[v39])
            {
              v42 = *a1;
              *(v42 + 40) = 20;
              *(v42 + 48) = v36;
              (**a1)(a1);
            }

            ++v39;
          }

          while (v37 != v39);
          v43 = 1;
        }

        v44 = *(v32 + 5);
        if (!*(a1 + 87))
        {
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v44, xmmword_1862081C0)))))
          {
            v58 = *a1;
            *(v58 + 40) = 18;
            *(v58 + 48) = v36;
            (**a1)(a1);
          }

          if (v43)
          {
            v59 = 1;
            do
            {
              v60 = v32[v59];
              if (*(v87 + v60))
              {
                v61 = *a1;
                *(v61 + 40) = 20;
                *(v61 + 48) = v36;
                (**a1)(a1);
              }

              *(v87 + v60) = 1;
              ++v59;
              --v37;
            }

            while (v37);
          }

          goto LABEL_110;
        }

        v45 = v44.u32[0];
        v85 = HIDWORD(*(v32 + 5));
        v46 = *(v32 + 7);
        v84 = HIDWORD(*(v32 + 5));
        if (v44.i32[0] > 0x3Fu || v44.i32[1] < v44.i32[0] || v44.i32[1] > 63 || v44.i32[2] < 0 || (*(a1 + 22) <= 8 ? (v62 = 10) : (v62 = 13), v44.i32[2] <= v62 ? (v63 = v44.i32[3] > v62) : (v63 = 1), v63))
        {
          v47 = *a1;
          *(v47 + 40) = 18;
          *(v47 + 48) = v36;
          (**a1)(a1);
          v44.i32[3] = v84;
        }

        if (v45)
        {
          break;
        }

        if (v85)
        {
          goto LABEL_83;
        }

LABEL_84:
        if (v43)
        {
          v49 = 0;
          v50 = v44.i32[3];
          v83 = v85 - v45 + 1;
          v82 = &__b[v45];
          while (1)
          {
            v51 = v32[v49 + 1];
            if (v45 && (__b[64 * v51] & 0x80000000) != 0)
            {
              v52 = *a1;
              *(v52 + 40) = 18;
              *(v52 + 48) = v36;
              (**a1)(a1);
            }

            v53 = v45;
            if (v45 <= v85)
            {
              break;
            }

LABEL_90:
            ++v49;
            v45 = v53;
            if (v49 == v37)
            {
              goto LABEL_110;
            }
          }

          v54 = &v82[256 * v51];
          v55 = v83;
          while (2)
          {
            if (*v54 < 0)
            {
              if (v46)
              {
                goto LABEL_98;
              }
            }

            else if (v46 != *v54 || v50 != v46 - 1)
            {
LABEL_98:
              v57 = *a1;
              *(v57 + 40) = 18;
              *(v57 + 48) = v36;
              (**a1)(a1);
            }

            *v54++ = v50;
            if (!--v55)
            {
              goto LABEL_90;
            }

            continue;
          }
        }

LABEL_110:
        v32 += 9;
        v63 = v36++ < *(a1 + 68);
        if (!v63)
        {
          v35 = *(a1 + 87);
          LODWORD(v34) = *(a1 + 23);
          v4 = v80;
          goto LABEL_126;
        }
      }

      if (v37 == 1)
      {
        goto LABEL_84;
      }

LABEL_83:
      v48 = *a1;
      *(v48 + 40) = 18;
      *(v48 + 48) = v36;
      (**a1)(a1);
      v44.i32[3] = v84;
      goto LABEL_84;
    }

LABEL_126:
    if (v35)
    {
      a2 = v81;
      if (v34 >= 1)
      {
        v64 = 0;
        v65 = __b;
        do
        {
          if ((*v65 & 0x80000000) != 0)
          {
            v66 = *a1;
            *(v66 + 40) = 46;
            (*v66)(a1);
            LODWORD(v34) = *(a1 + 23);
          }

          v65 += 64;
          ++v64;
        }

        while (v64 < v34);
      }
    }

    else
    {
      a2 = v81;
      if (v34 >= 1)
      {
        v67 = 0;
        do
        {
          if (!*(v87 + v67))
          {
            v68 = *a1;
            *(v68 + 40) = 46;
            (*v68)(a1);
            LODWORD(v34) = *(a1 + 23);
          }

          ++v67;
        }

        while (v67 < v34);
      }
    }

    if (*(a1 + 119) <= 7)
    {
      if (*(a1 + 68) < 1)
      {
        v70 = 0;
      }

      else
      {
        v69 = 0;
        v70 = 0;
        v71 = a1[35];
        v72 = v71;
        do
        {
          if (v69 != v70)
          {
            v73 = v71 + 36 * v70;
            v74 = *v72;
            v75 = v72[1];
            *(v73 + 32) = *(v72 + 8);
            *v73 = v74;
            *(v73 + 16) = v75;
          }

          v76 = v71 + 36 * v70;
          v77 = *(a1 + 122);
          if (*(v76 + 20) <= v77)
          {
            if (*(v76 + 24) > v77)
            {
              *(v76 + 24) = v77;
            }

            ++v70;
          }

          ++v69;
          v72 = (v72 + 36);
        }

        while (v69 < *(a1 + 68));
      }

      *(a1 + 68) = v70;
    }
  }

  else
  {
    *(a1 + 87) = 0;
    *(a1 + 68) = 1;
  }

  if (*(a1 + 74))
  {
    v78 = 0;
    *(a1 + 73) = 0;
  }

  else if (*(a1 + 73) || !*(a1 + 87) && (*(a1 + 119) - 2) > 5)
  {
    v78 = 1;
  }

  else
  {
    v78 = 0;
    *(a1 + 74) = 1;
  }

  *(v4 + 44) = 0;
  if (!a2)
  {
    *(v4 + 32) = 0;
    if (v78)
    {
      goto LABEL_163;
    }

LABEL_165:
    v79 = 2 * *(a1 + 68);
    goto LABEL_166;
  }

  if ((v78 & 1) == 0)
  {
    *(v4 + 32) = 1;
    goto LABEL_165;
  }

  *(v4 + 32) = 2;
LABEL_163:
  v79 = *(a1 + 68);
LABEL_166:
  *(v4 + 40) = v79;
}

uint64_t prepare_for_pass(uint64_t a1)
{
  v2 = *(a1 + 496);
  v3 = v2[8];
  if (v3 == 2)
  {
    goto LABEL_16;
  }

  if (v3 == 1)
  {
    select_scan_parameters(a1);
    per_scan_setup(a1);
    if (*(a1 + 460) || !*(a1 + 468))
    {
      (**(a1 + 560))(a1, 1);
      result = (**(a1 + 520))(a1, 2);
      goto LABEL_21;
    }

    v7 = v2[9] + 1;
    v2[8] = 2;
    v2[9] = v7;
LABEL_16:
    if (!*(a1 + 296))
    {
      select_scan_parameters(a1);
      per_scan_setup(a1);
    }

    (**(a1 + 560))(a1, 0);
    (**(a1 + 520))(a1, 2);
    if (!v2[11])
    {
      (*(*(a1 + 528) + 8))(a1);
    }

    result = (*(*(a1 + 528) + 16))(a1);
    goto LABEL_21;
  }

  if (v3)
  {
    v6 = *a1;
    *(v6 + 40) = 49;
    result = (*v6)(a1);
    goto LABEL_22;
  }

  select_scan_parameters(a1);
  per_scan_setup(a1);
  if (!*(a1 + 288))
  {
    (**(a1 + 536))(a1);
    (**(a1 + 544))(a1);
    (**(a1 + 512))(a1, 0);
  }

  (**(a1 + 552))(a1);
  (**(a1 + 560))(a1, *(a1 + 296));
  if (v2[10] <= 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  (**(a1 + 520))(a1, v4);
  result = (**(a1 + 504))(a1, 0);
  if (!*(a1 + 296))
  {
    v2[6] = 1;
    goto LABEL_22;
  }

LABEL_21:
  v2[6] = 0;
LABEL_22:
  v8 = v2[9];
  v9 = v2[10];
  v2[7] = v8 == v9 - 1;
  v10 = *(a1 + 16);
  if (v10)
  {
    *(v10 + 24) = v8;
    *(v10 + 28) = v9;
  }

  return result;
}

uint64_t pass_startup(uint64_t a1)
{
  *(*(a1 + 496) + 24) = 0;
  (*(*(a1 + 528) + 8))();
  v2 = *(*(a1 + 528) + 16);

  return v2(a1);
}

uint64_t finish_pass_master(uint64_t a1)
{
  v2 = *(a1 + 496);
  result = (*(*(a1 + 560) + 16))();
  v4 = v2[8];
  switch(v4)
  {
    case 2:
      if (*(a1 + 296))
      {
        v2[8] = 1;
      }

      goto LABEL_9;
    case 1:
      v2[8] = 2;
      break;
    case 0:
      v2[8] = 2;
      if (!*(a1 + 296))
      {
LABEL_9:
        ++v2[11];
      }

      break;
  }

  ++v2[9];
  return result;
}

uint64_t select_scan_parameters(uint64_t result)
{
  v1 = result;
  v2 = *(result + 280);
  if (!v2)
  {
    v11 = *(result + 92);
    if (v11 >= 5)
    {
      v12 = *result;
      *(v12 + 40) = 27;
      *(v12 + 48) = v11;
      *(*result + 52) = 4;
      result = (**result)(result);
      v11 = *(v1 + 92);
    }

    *(v1 + 372) = v11;
    if (v11 >= 1)
    {
      v13 = *(v1 + 104);
      v14 = v11;
      v15 = (v11 + 1) & 0xFFFFFFFE;
      v16 = vdupq_n_s64(v14 - 1);
      v17 = xmmword_186205EC0;
      v18 = (v1 + 384);
      v19 = vdupq_n_s64(2uLL);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v16, v17));
        if (v20.i8[0])
        {
          *(v18 - 1) = v13;
        }

        if (v20.i8[4])
        {
          *v18 = v13 + 96;
        }

        v17 = vaddq_s64(v17, v19);
        v18 += 2;
        v13 += 192;
        v15 -= 2;
      }

      while (v15);
    }

    goto LABEL_16;
  }

  v3 = (v2 + 36 * *(*(result + 496) + 44));
  v4 = *v3;
  *(result + 372) = v4;
  if (v4 >= 1)
  {
    v5 = *(result + 104);
    v6 = (v3 + 1);
    v7 = (result + 376);
    do
    {
      v8 = *v6++;
      *v7++ = v5 + 96 * v8;
      --v4;
    }

    while (v4);
  }

  if (!*(result + 348))
  {
LABEL_16:
    v9 = 0;
    *(v1 + 460) = 0;
    *(v1 + 464) = (*(v1 + 476) * *(v1 + 476) - 1);
    goto LABEL_17;
  }

  *(result + 460) = *(v3 + 5);
  v10 = v3[7];
  v9 = v3[8];
  *(result + 468) = v10;
LABEL_17:
  *(v1 + 472) = v9;
  return result;
}

uint64_t per_scan_setup(uint64_t result)
{
  v1 = result;
  v2 = *(result + 372);
  if (v2 == 1)
  {
    v3 = *(result + 376);
    v4 = *(v3 + 32);
    *(result + 408) = *(v3 + 28);
    *(result + 412) = v4;
    v5 = *(v3 + 36);
    *(v3 + 64) = 1;
    *(v3 + 68) = v5;
    v6 = *(v3 + 12);
    v7 = v4 % v6;
    *(v3 + 56) = 0x100000001;
    if (!v7)
    {
      v7 = v6;
    }

    *(v3 + 72) = 1;
    *(v3 + 76) = v7;
    *(result + 416) = 1;
  }

  else
  {
    if ((v2 - 5) <= 0xFFFFFFFB)
    {
      v8 = *result;
      *(v8 + 40) = 27;
      *(v8 + 48) = v2;
      *(*result + 52) = 4;
      (**result)(result);
    }

    *(v1 + 408) = jdiv_round_up(*(v1 + 80), *(v1 + 476) * *(v1 + 352));
    result = jdiv_round_up(*(v1 + 84), *(v1 + 476) * *(v1 + 356));
    *(v1 + 412) = result;
    if (*(v1 + 372) >= 1)
    {
      v9 = 0;
      do
      {
        v10 = *(v1 + 376 + 8 * v9);
        v11 = v10[2];
        v12 = v10[3];
        v13 = v12 * v11;
        v14 = v10[8];
        v15 = v10[9] * v11;
        v10[16] = v12 * v11;
        v10[17] = v15;
        v16 = v10[7] % v11;
        v10[14] = v11;
        v10[15] = v12;
        if (v16)
        {
          v11 = v16;
        }

        if (v14 % v12)
        {
          v12 = v14 % v12;
        }

        v10[18] = v11;
        v10[19] = v12;
        if (*(v1 + 416) + v13 >= 11)
        {
          v17 = *v1;
          *(v17 + 40) = 14;
          result = (*v17)(v1);
        }

        if (v13 >= 1)
        {
          v18 = v13 + 1;
          do
          {
            v19 = *(v1 + 416);
            *(v1 + 416) = v19 + 1;
            *(v1 + 420 + 4 * v19) = v9;
            --v18;
          }

          while (v18 > 1);
        }

        ++v9;
      }

      while (v9 < *(v1 + 372));
    }
  }

  v20 = *(v1 + 320);
  if (v20 >= 1)
  {
    v21 = *(v1 + 408) * v20;
    if (v21 >= 0xFFFF)
    {
      LODWORD(v21) = 0xFFFF;
    }

    *(v1 + 316) = v21;
  }

  return result;
}

void kdrc_overlay::~kdrc_overlay(kdrc_overlay *this)
{
  *this = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v2 = *(this + 13);
  v3 = *(this + 16);
  if (v2)
  {
    do
    {
      v4 = v2;
      v2 = *(v2 + 24);
      *(v4 + 24) = v3;
      v3 = v4;
    }

    while (v2);
    *(this + 14) = v4;
    *(this + 15) = 0;
    v3 = v4;
    *(this + 13) = 0;
  }

  else
  {
    *(this + 14) = v3;
    *(this + 15) = 0;
    if (!v3)
    {
      return;
    }
  }

  do
  {
    *(this + 16) = *(v3 + 24);
    MEMORY[0x186602850]();
    v3 = *(this + 16);
    *(this + 14) = v3;
  }

  while (v3);
}

uint64_t kdrc_overlay::set_geometry(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, unint64_t a7, unint64_t a8, unint64_t a9)
{
  v9 = HIDWORD(a7);
  v10 = HIDWORD(a8);
  if (*(result + 24) != a2 || *(result + 32) != a3 || *(result + 40) != a4 || *(result + 41) != a5 || *(result + 42) != a6 || *(result + 44) != a7 || *(result + 52) != __PAIR128__(a9, a8))
  {
    *(result + 24) = a2;
    *(result + 32) = a3;
    *(result + 40) = a4;
    *(result + 41) = a5;
    *(result + 42) = a6;
    *(result + 44) = a7;
    *(result + 52) = a8;
    *(result + 60) = a9;
    if (a4)
    {
      LODWORD(v11) = a8;
    }

    else
    {
      v11 = HIDWORD(a8);
    }

    if (a4)
    {
      v12 = HIDWORD(a7);
    }

    else
    {
      LODWORD(v10) = a8;
      LODWORD(v12) = a7;
    }

    if (a4)
    {
      LODWORD(v9) = a7;
    }

    v13 = *(result + 20);
    v14 = v11 * SHIDWORD(a3) * v13 / v9;
    if (v14 >= (v10 * a3 * v13 / v12))
    {
      LODWORD(v14) = v10 * a3 * v13 / v12;
    }

    *(result + 68) = v14;
    v15 = *(result + 104);
    if (v15)
    {
      v16 = *(result + 128);
      do
      {
        v17 = v15;
        v15 = *(v15 + 24);
        *(v17 + 24) = v16;
        v16 = v17;
      }

      while (v15);
      *(result + 104) = 0;
      *(result + 128) = v17;
    }

    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 112) = 0;
    *(result + 120) = 0;
  }

  return result;
}

BOOL kdrc_overlay::set_buffer_surface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *&v41 = a3;
  *(&v41 + 1) = a4;
  if (!*a1)
  {
    kdrc_overlay::set_buffer_surface();
  }

  if (*(a1 + 48) < 1 || *(a1 + 44) < 1 || *(a1 + 56) < 1 || *(a1 + 52) <= 0)
  {
    kdrc_overlay::set_buffer_surface();
  }

  v40 = *(a1 + 72);
  kdu_dims::operator&=(&v40, &v41);
  *(a1 + 88) = a2;
  *(a1 + 72) = v41;
  LODWORD(v8) = HIDWORD(v40) + DWORD1(v40);
  v9 = DWORD2(v40) + v40;
  v10 = DWORD1(v41);
  v11 = HIDWORD(v41) + DWORD1(v41);
  v12 = DWORD2(v41) + v41;
  if (DWORD1(v40) == DWORD1(v41) && v11 == v8)
  {
    if (v12 > v40 && v12 <= v9)
    {
      v13 = v41;
      v9 = v40;
      goto LABEL_21;
    }

    if (v9 <= v41 || (v13 = DWORD2(v40) + v40, v9 = DWORD2(v41) + v41, v40 > v41))
    {
LABEL_36:
      v38 = v41;
      v39 = DWORD2(v41) | (HIDWORD(v41) << 32);
      v21 = *(a1 + 104);
      if (v21)
      {
        v22 = *(a1 + 128);
        do
        {
          v23 = v21;
          v21 = *(v21 + 24);
          *(v23 + 24) = v22;
          v22 = v23;
        }

        while (v21);
        *(a1 + 104) = 0;
        *(a1 + 128) = v23;
      }

      *(a1 + 112) = 0;
      goto LABEL_41;
    }
  }

  else
  {
    if (v40 != v41 || v12 != v9)
    {
      goto LABEL_36;
    }

    if (v11 <= SDWORD1(v40) || v11 > v8)
    {
      if (v8 <= SDWORD1(v41))
      {
        goto LABEL_36;
      }

      v13 = v40;
      v10 = (HIDWORD(v40) + DWORD1(v40));
      LODWORD(v8) = HIDWORD(v41) + DWORD1(v41);
      if (SDWORD1(v40) > SDWORD1(v41))
      {
        goto LABEL_36;
      }
    }

    else
    {
      v13 = v40;
      v8 = DWORD1(v40);
    }
  }

LABEL_21:
  v38 = v13 | (v10 << 32);
  v39 = (v9 - v13) | ((v8 - v10) << 32);
  v14 = (a1 + 104);
  v15 = *(a1 + 104);
  if (!v15)
  {
LABEL_41:
    *(a1 + 120) = 0;
    v14 = (a1 + 104);
    goto LABEL_42;
  }

  v16 = 0;
  do
  {
    v17 = *(v15 + 24);
    if (kdu_dims::intersects((v15 + 8), &v41) && !kdu_dims::intersects((v15 + 8), &v38))
    {
      v16 = v15;
    }

    else
    {
      v18 = (v16 + 24);
      if (!v16)
      {
        v18 = (a1 + 104);
      }

      *v18 = v17;
      if (v15 == *(a1 + 112))
      {
        if (v17)
        {
          kdrc_overlay::set_buffer_surface();
        }

        *(a1 + 112) = v16;
      }

      *(v15 + 24) = *(a1 + 128);
      *(a1 + 128) = v15;
    }

    v15 = v17;
  }

  while (v17);
  v19 = *(a1 + 104);
  *(a1 + 120) = 0;
  if (!v19)
  {
LABEL_42:
    v19 = 0;
    v24 = 0;
    v20 = *(a1 + 112);
    if (!v20)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v20 = *(a1 + 112);
  if (!v20)
  {
LABEL_73:
    kdrc_overlay::set_buffer_surface();
  }

LABEL_43:
  v24 = v19;
  if (*(v20 + 24))
  {
    goto LABEL_73;
  }

LABEL_44:
  v25 = &v38;
  if (a5)
  {
    v25 = &v41;
  }

  v37 = *v25;
  if (SHIDWORD(v37) >= 1 && SDWORD2(v37) >= 1)
  {
    kdrc_overlay::map_from_compositing_grid(a1, &v37);
    v36 = 0;
    jpx_meta_manager::load_matches((a1 + 8), 1, (a1 + 16), 0, 0);
    for (i = 0; ; i = v36)
    {
      v36 = jpx_meta_manager::enumerate_matches((a1 + 8), i, *(a1 + 16), 0xFFFFFFFFLL, 0, v37, *(&v37 + 1), *(a1 + 68), 0);
      if (!v36)
      {
        v24 = *v14;
        return v24 != 0;
      }

      v35 = 0uLL;
      *&v35 = jpx_metanode::get_bounding_box(&v36);
      *(&v35 + 1) = v27;
      kdrc_overlay::map_to_compositing_grid(a1, &v35);
      if (kdu_dims::intersects(&v35, &v38))
      {
        goto LABEL_51;
      }

      if (!kdu_dims::intersects(&v35, &v41))
      {
        continue;
      }

      v31 = *v14;
      if (!*v14)
      {
LABEL_51:
        v28 = *(a1 + 20);
        if (SHIDWORD(v35) >= v28 || SDWORD2(v35) >= v28)
        {
          v30 = *(a1 + 128);
          if (!v30)
          {
            operator new();
          }

          *(a1 + 128) = *(v30 + 24);
          *(v30 + 24) = 0;
          v32 = *(a1 + 112);
          if (v32)
          {
            v33 = (v32 + 24);
          }

          else
          {
            v33 = v14;
          }

          *v33 = v30;
          *(a1 + 112) = v30;
          *v30 = v36;
          *(v30 + 8) = v35;
          *(v30 + 32) = 0;
        }
      }

      else
      {
        while (*v31 != v36)
        {
          v31 = v31[3];
          if (!v31)
          {
            goto LABEL_51;
          }
        }
      }
    }
  }

  return v24 != 0;
}

int32x2_t kdrc_overlay::map_from_compositing_grid(kdrc_overlay *this, int32x2_t *a2)
{
  v4 = vadd_s32(*a2, *(this + 60));
  *a2 = v4;
  v5 = *(this + 14);
  v6 = v4.i32[1] * v5;
  v7 = *(this + 12);
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    v9 = ~v6 / v8;
    if (v9 >> 31)
    {
      kdrc_overlay::map_from_compositing_grid();
    }

    LODWORD(v9) = ~v9;
  }

  else
  {
    v9 = v6 / v8;
    if (v9 >> 31)
    {
      kdrc_overlay::map_from_compositing_grid();
    }
  }

  v10 = *(this + 13);
  v11 = v4.i32[0] * v10;
  LODWORD(v12) = *(this + 11);
  if (v12 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v12;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    v13 = ~v11 / v12;
    if (v13 >> 31)
    {
      kdrc_overlay::map_from_compositing_grid();
    }

    LODWORD(v13) = ~v13;
  }

  else
  {
    v13 = v11 / v12;
    if (v13 >> 31)
    {
      kdrc_overlay::map_from_compositing_grid();
    }
  }

  v14 = (a2[1].i32[1] + v4.i32[1]) * v5;
  if (v14 <= 0)
  {
    v16 = -v14 / v8;
    if (v16 >= 0x80000001)
    {
      goto LABEL_30;
    }

    v15 = -v16;
  }

  else
  {
    v15 = (v14 - 1) / v8;
    if (v15 >= 0x7FFFFFFF)
    {
      goto LABEL_30;
    }

    LODWORD(v15) = v15 + 1;
  }

  v17 = v10 * (a2[1].i32[0] + v4.i32[0]);
  if (v17 <= 0)
  {
    v19 = -v17 / v12;
    if (v19 < 0x80000001)
    {
      v18 = -v19;
      goto LABEL_27;
    }

LABEL_30:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v18 = (v17 - 1) / v12;
  if (v18 >= 0x7FFFFFFF)
  {
    goto LABEL_30;
  }

  LODWORD(v18) = v18 + 1;
LABEL_27:
  *a2 = (v13 | (v9 << 32));
  a2[1] = ((v18 - v13) | ((v15 - v9) << 32));
  kdu_dims::from_apparent(a2, *(this + 40), *(this + 41), *(this + 42));
  v20 = *(this + 32);
  v21 = vmul_s32(*a2, v20);
  v22 = vmul_s32(a2[1], v20);
  *a2 = v21;
  a2[1] = v22;
  result = vsub_s32(v21, *(this + 24));
  *a2 = result;
  return result;
}

int32x4_t *kdrc_overlay::map_to_compositing_grid(int32x2_t *this, int32x2_t *a2)
{
  v4 = vadd_s32(*a2, this[3]);
  *a2 = v4;
  if (this[4].i32[1] <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = this[4].u32[1];
  }

  if (v4 <= 0)
  {
    v6 = -(-HIDWORD(v4) / v5);
  }

  else
  {
    v6 = (HIDWORD(v4) - 1) / v5 + 1;
  }

  v7 = a2[1].i32[1] + HIDWORD(v4);
  if (this[4].i32[0] <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = this[4].u32[0];
  }

  if (v4 <= 0)
  {
    v9 = -(-v4 / v8);
  }

  else
  {
    v9 = (v4 - 1) / v8 + 1;
  }

  v10 = a2[1].i32[0] + v4;
  if (v7 <= 0)
  {
    v11 = -(-v7 / v5);
  }

  else
  {
    v11 = (v7 - 1) / v5 + 1;
  }

  if (v10 <= 0)
  {
    v12 = -(-v10 / v8);
  }

  else
  {
    v12 = (v10 - 1) / v8 + 1;
  }

  *a2 = (v9 | (v6 << 32));
  a2[1] = ((v12 - v9) | ((v11 - v6) << 32));
  result = kdu_dims::to_apparent(a2, this[5].u8[0], this[5].u8[1], this[5].u8[2]);
  v14 = *a2;
  v15 = this[6].i32[0];
  v16 = HIDWORD(*a2) * v15;
  v17 = this[7].i32[0];
  if (v17 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    v19 = ~v16 / v18;
    if (v19 >> 31)
    {
      kdrc_overlay::map_from_compositing_grid();
    }

    LODWORD(v19) = ~v19;
  }

  else
  {
    v19 = v16 / v18;
    if (v19 >> 31)
    {
      kdrc_overlay::map_from_compositing_grid();
    }
  }

  v20 = this[5].i32[1];
  v21 = v14 * v20;
  LODWORD(v22) = this[6].i32[1];
  if (v22 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v22;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    v23 = ~v21 / v22;
    if (v23 >> 31)
    {
      kdrc_overlay::map_from_compositing_grid();
    }

    LODWORD(v23) = ~v23;
  }

  else
  {
    v23 = v21 / v22;
    if (v23 >> 31)
    {
      kdrc_overlay::map_from_compositing_grid();
    }
  }

  v24 = (a2[1].i32[1] + (v14 >> 32)) * v15;
  if (v24 <= 0)
  {
    v26 = -v24 / v18;
    if (v26 >= 0x80000001)
    {
      goto LABEL_48;
    }

    v25 = -v26;
  }

  else
  {
    v25 = (v24 - 1) / v18;
    if (v25 >= 0x7FFFFFFF)
    {
      goto LABEL_48;
    }

    LODWORD(v25) = v25 + 1;
  }

  v27 = v20 * (a2[1].i32[0] + v14);
  if (v27 <= 0)
  {
    v29 = -v27 / v22;
    if (v29 < 0x80000001)
    {
      v28 = -v29;
      goto LABEL_45;
    }

LABEL_48:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v28 = (v27 - 1) / v22;
  if (v28 >= 0x7FFFFFFF)
  {
    goto LABEL_48;
  }

  LODWORD(v28) = v28 + 1;
LABEL_45:
  *a2 = (v23 | (v19 << 32));
  a2[1] = ((v28 - v23) | ((v25 - v19) << 32));
  v30 = v19 - this[8].i32[0];
  a2->i32[0] = v23 - this[7].i32[1];
  a2->i32[1] = v30;
  return result;
}

uint64_t kdrc_overlay::update_config(kdrc_overlay *this, int a2, int a3)
{
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  v4 = *(this + 24);
  v5 = *(this + 5);
  if (v4 == a3 && v3 == v5)
  {
    return 0;
  }

  *(this + 24) = a3;
  v8 = v3 < v5 && *(this + 21) >= 1 && *(this + 20) > 0;
  *(this + 5) = v3;
  if (!*(this + 12) || !*(this + 11) || !*(this + 14) || !*(this + 13))
  {
    return 0;
  }

  v9 = *(this + 44);
  v10 = *(this + 52);
  v11 = *(this + 40);
  v12 = v11 == 1;
  if (v11 == 1)
  {
    v13 = *(this + 44);
  }

  else
  {
    v13 = HIDWORD(v9);
  }

  if (v12)
  {
    v9 >>= 32;
  }

  if (v12)
  {
    v14 = *(this + 52);
  }

  else
  {
    v14 = HIDWORD(v10);
  }

  if (v12)
  {
    v10 >>= 32;
  }

  v15 = *(this + 8);
  v16 = v14 * v3 * *(this + 9) / v13;
  *(this + 17) = v16;
  v17 = v10 * v3 * v15 / v9;
  if (v16 > v17)
  {
    *(this + 17) = v17;
  }

  v19 = (this + 104);
  v18 = *(this + 13);
  *(this + 15) = 0;
  if (v18)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      while (1)
      {
        v22 = v18;
        if (v4 != a3)
        {
          *(v18 + 32) = 0;
        }

        v18 = *(v18 + 24);
        if (*(v22 + 20) < v3 && *(v22 + 16) < v3)
        {
          break;
        }

        v21 = v22;
        if (!v18)
        {
          goto LABEL_44;
        }
      }

      v23 = (v21 + 24);
      if (!v21)
      {
        v23 = (this + 104);
      }

      *v23 = v18;
      if (!v18)
      {
        if (v22 != *(this + 14))
        {
          kdrc_overlay::update_config();
        }

        *(this + 14) = v21;
      }

      *(v22 + 24) = *(this + 16);
      *(this + 16) = v22;
      v20 = 1;
    }

    while (v18);
LABEL_44:
    if (v8)
    {
      v24 = *v19;
      if (*v19)
      {
        v25 = *(this + 16);
        do
        {
          v26 = v24;
          v24 = *(v24 + 24);
          *(v26 + 24) = v25;
          v25 = v26;
        }

        while (v24);
        *(this + 13) = 0;
        *(this + 16) = v26;
      }

      goto LABEL_50;
    }

    if (v20)
    {
      v34 = *v19;
      if (!*v19)
      {
        return 1;
      }

      result = 1;
      do
      {
        *(v34 + 32) = 0;
        v34 = *(v34 + 24);
      }

      while (v34);
      return result;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

LABEL_50:
  *(this + 14) = 0;
  v37 = *(this + 72);
  kdrc_overlay::map_from_compositing_grid(this, &v37);
  v36 = 0;
  jpx_meta_manager::load_matches((this + 8), 1, this + 4, 0, 0);
  for (i = 0; ; i = v36)
  {
    result = jpx_meta_manager::enumerate_matches(this + 1, i, *(this + 4), 0xFFFFFFFFLL, 0, v37, *(&v37 + 1), *(this + 17), 0);
    v36 = result;
    if (!result)
    {
      break;
    }

    v35 = 0uLL;
    *&v35 = jpx_metanode::get_bounding_box(&v36);
    *(&v35 + 1) = v29;
    kdrc_overlay::map_to_compositing_grid(this, &v35);
    if (kdu_dims::intersects(&v35, this + 18))
    {
      v30 = *(this + 5);
      if (SHIDWORD(v35) >= v30 || SDWORD2(v35) >= v30)
      {
        v31 = *(this + 16);
        if (!v31)
        {
          operator new();
        }

        *(this + 16) = *(v31 + 24);
        *(v31 + 24) = 0;
        v32 = *(this + 14);
        if (v32)
        {
          v33 = (v32 + 24);
        }

        else
        {
          v33 = (this + 104);
        }

        *v33 = v31;
        *(this + 14) = v31;
        *v31 = v36;
        *(v31 + 8) = v35;
        *(v31 + 32) = 0;
      }
    }
  }

  return result;
}

uint64_t kdrc_overlay::process(kdrc_overlay *this, kdu_dims *a2)
{
  v3 = *(this + 11);
  if (!v3)
  {
    return 0;
  }

  v5 = *(this + 15);
  if (v5 == *(this + 14))
  {
    return 0;
  }

  if (!v5)
  {
    v5 = *(this + 13);
    *(this + 15) = v5;
  }

  while (1)
  {
    if (*(v5 + 32))
    {
      v6 = *(v5 + 24);
      if (!v6)
      {
        return 0;
      }

      goto LABEL_11;
    }

    if (*(v5 + 20) < *(this + 21))
    {
      goto LABEL_13;
    }

    v7 = *(v5 + 16);
    v8 = *(this + 20);
    v6 = *(v5 + 24);
    if (!v6)
    {
      break;
    }

    if (v7 < v8)
    {
      goto LABEL_13;
    }

LABEL_11:
    *(this + 15) = v6;
    v5 = v6;
  }

  if (v7 >= v8)
  {
    return 0;
  }

LABEL_13:
  v9 = (this + 72);
  if (((*(**this + 40))(*this, v3, *(this + 9), *(this + 10), *(v5 + 8), *(v5 + 16), *(this + 4)) & 1) == 0)
  {
    BYTE2(v13) = *(this + 42);
    LOWORD(v13) = *(this + 20);
    (*(**this + 48))(*this, *(this + 11), *(this + 9), *(this + 10), *(*(this + 15) + 8), *(*(this + 15) + 16), *(this + 4), **(this + 15), *(this + 24), *(this + 3), *(this + 4), v13, *(this + 44), *(this + 52), *(this + 60));
  }

  v10 = *(this + 15);
  v11 = 1;
  *(v10 + 32) = 1;
  v14 = *(v10 + 8);
  kdu_dims::operator&=(&v14, v9);
  *a2 = v14;
  return v11;
}

int32x4_t kdu_dims::from_apparent(int32x4_t *this, int a2, int a3, int a4)
{
  if (a4)
  {
    this->i32[1] = 1 - (this->i32[1] + this->i32[3]);
    if (!a3)
    {
LABEL_3:
      if (!a2)
      {
        return result;
      }

LABEL_7:
      result = vrev64q_s32(*this);
      *this = result;
      return result;
    }
  }

  else if (!a3)
  {
    goto LABEL_3;
  }

  this->i32[0] = 1 - (this->i32[0] + this->i32[2]);
  if (a2)
  {
    goto LABEL_7;
  }

  return result;
}

void kdrc_codestream::init(kdrc_codestream *this, kdu_compressed_source *a2)
{
  if (!*(this + 36))
  {
    kdu_codestream::create((this + 288), a2);
  }

  kdrc_codestream::init();
}

void kdrc_codestream::init(uint64_t a1, jx_codestream_source *a2)
{
  v3 = a2;
  if (!*(a1 + 288))
  {
    jpx_codestream_source::open_stream(&v3, (a1 + 8));
    kdu_codestream::create((a1 + 288), (a1 + 8));
  }

  kdrc_codestream::init();
}

void kdrc_codestream::init(kdrc_codestream *this, mj2_video_source *a2, uint64_t a3, uint64_t a4)
{
  if (!*(this + 36))
  {
    (*(*a2 + 104))(a2, a3);
    (*(*a2 + 168))(a2, a4, this + 8);
    kdu_codestream::create((this + 288), (this + 8));
  }

  kdrc_codestream::init();
}

void kdrc_codestream::restart(kdrc_codestream *this, mj2_video_source *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 36))
  {
    jpx_input_box::close((this + 8));
    (*(*a2 + 104))(a2, a3);
    (*(*a2 + 168))(a2, a4, this + 8);
    kdu_codestream::restart((this + 288), (this + 8));
  }

  kdrc_codestream::restart();
}

uint64_t kdrc_codestream::attach(kdrc_codestream *this, kdrc_stream *a2)
{
  if (*(a2 + 142))
  {
    kdrc_codestream::attach();
  }

  v3 = *(this + 40);
  *(a2 + 143) = v3;
  *(a2 + 144) = 0;
  if (v3)
  {
    if (*(v3 + 1152))
    {
      kdrc_codestream::attach();
    }

    *(v3 + 1152) = a2;
    *(this + 40) = a2;
    *(a2 + 142) = this;
    do
    {
      if (*(v3 + 1068) == 1)
      {
        kdu_region_decompressor::finish((v3 + 120));
        *(*(v3 + 1136) + 296) = 0;
        *(v3 + 1068) = 0;
      }

      v3 = *(v3 + 1144);
    }

    while (v3);
  }

  else
  {
    *(this + 40) = a2;
    *(a2 + 142) = this;
  }

  if (*(this + 296) == 1)
  {
    kdrc_codestream::attach();
  }

  kdu_codestream::change_appearance(this + 36, 0, 0, 0);

  return kdu_codestream::apply_input_restrictions(this + 288, 0, 0, 0, 0, 0, 0);
}

kdrc_codestream *kdrc_codestream::detach(kdrc_codestream *this, kdrc_codestream **a2)
{
  if (a2[142] != this)
  {
    kdrc_codestream::detach();
  }

  v2 = a2 + 142;
  v3 = a2[144];
  v4 = *(this + 40);
  if (v3)
  {
    if (v4 == a2)
    {
      kdrc_codestream::detach();
    }

    v5 = a2[143];
    *(v3 + 143) = v5;
    if (v5)
    {
      *(v5 + 144) = a2[144];
    }

    *v2 = 0;
    a2[143] = 0;
    a2[144] = 0;
    if (!v4)
    {
LABEL_13:
      kdrc_codestream::~kdrc_codestream(this);

      JUMPOUT(0x186602850);
    }
  }

  else
  {
    if (v4 != a2)
    {
      kdrc_codestream::detach();
    }

    v6 = a2[143];
    *(this + 40) = v6;
    if (!v6)
    {
      *v2 = 0;
      a2[143] = 0;
      a2[144] = 0;
      goto LABEL_13;
    }

    *(v6 + 144) = 0;
    *(v6 + 144) = a2[144];
    *v2 = 0;
    a2[143] = 0;
    a2[144] = 0;
  }

  return this;
}

uint64_t kdrc_codestream::move_to_head(uint64_t this, kdrc_stream *a2)
{
  if (*(a2 + 142) != this)
  {
    kdrc_codestream::move_to_head();
  }

  v2 = a2;
  v3 = this;
  v4 = *(a2 + 144);
  v5 = *(this + 320);
  if (v4)
  {
    if (v5 == a2)
    {
      kdrc_codestream::move_to_head();
    }

    v6 = *(a2 + 143);
    *(v4 + 1144) = v6;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v5 != a2)
    {
      kdrc_codestream::move_to_head();
    }

    v6 = *(a2 + 143);
    *(this + 320) = v6;
    if (!v6)
    {
      *(a2 + 143) = 0;
      *(a2 + 144) = 0;
      goto LABEL_14;
    }

    *(v6 + 144) = 0;
    v5 = v6;
  }

  *(v6 + 144) = *(a2 + 144);
LABEL_10:
  *(a2 + 143) = v5;
  *(a2 + 144) = 0;
  if (v5)
  {
    if (*(v5 + 144))
    {
      kdrc_codestream::move_to_head();
    }

    *(v5 + 144) = a2;
  }

LABEL_14:
  *(this + 320) = a2;
  do
  {
    if (*(v2 + 1068) == 1)
    {
      this = kdu_region_decompressor::finish((v2 + 120));
      *(*(v2 + 142) + 296) = 0;
      *(v2 + 1068) = 0;
    }

    v2 = *(v2 + 143);
  }

  while (v2);
  if (*(v3 + 296) == 1)
  {
    kdrc_codestream::move_to_head();
  }

  return this;
}

uint64_t kdrc_codestream::move_to_tail(uint64_t this, kdrc_stream *a2)
{
  if (*(a2 + 142) != this)
  {
    kdrc_codestream::move_to_tail();
  }

  v2 = a2;
  v3 = this;
  v4 = *(a2 + 144);
  v5 = (this + 320);
  v6 = *(this + 320);
  if (v4)
  {
    if (v6 == a2)
    {
      kdrc_codestream::move_to_tail();
    }

    v7 = *(a2 + 143);
    *(v4 + 1144) = v7;
    if (!v7)
    {
      goto LABEL_11;
    }

LABEL_10:
    *(v7 + 144) = *(a2 + 144);
    goto LABEL_11;
  }

  if (v6 != a2)
  {
    kdrc_codestream::move_to_tail();
  }

  v7 = *(a2 + 143);
  *v5 = v7;
  if (v7)
  {
    *(v7 + 144) = 0;
    goto LABEL_10;
  }

LABEL_11:
  v8 = 0;
  v9 = (this + 320);
  do
  {
    v10 = v8;
    v8 = *v9;
    v9 = (*v9 + 1144);
  }

  while (v8);
  *(a2 + 144) = v10;
  *(a2 + 143) = 0;
  if (v10)
  {
    *(v10 + 1144) = a2;
    v2 = *v5;
    if (!*v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *v5 = a2;
  }

  do
  {
    if (*(v2 + 1068) == 1)
    {
      this = kdu_region_decompressor::finish((v2 + 120));
      *(*(v2 + 142) + 296) = 0;
      *(v2 + 1068) = 0;
    }

    v2 = *(v2 + 143);
  }

  while (v2);
LABEL_20:
  if (*(v3 + 296) == 1)
  {
    kdrc_codestream::move_to_tail();
  }

  return this;
}

uint64_t kdrc_stream::kdrc_stream(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6)
{
  kdu_channel_mapping::kdu_channel_mapping((a1 + 64));
  kdu_region_decompressor::kdu_region_decompressor((a1 + 120));
  *(a1 + 1052) = 0u;
  bzero((a1 + 376), 0x210uLL);
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 972) = 0u;
  *(a1 + 988) = 0u;
  *(a1 + 1004) = 0u;
  *(a1 + 1020) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 9) = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 56) = 0x10000;
  *(a1 + 1068) = 0;
  *(a1 + 909) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 1;
  *(a1 + 1124) = 0;
  *(a1 + 1120) = 256;
  *(a1 + 1104) = -1;
  *(a1 + 1112) = 0;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 360) = xmmword_1862081E0;
  return a1;
}

void kdrc_stream::~kdrc_stream(kdrc_stream *this)
{
  if (*(this + 1068) == 1)
  {
    kdu_region_decompressor::finish((this + 120));
    v2 = *(this + 142);
    *(v2 + 296) = 0;
    *(this + 1068) = 0;
  }

  else
  {
    v2 = *(this + 142);
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  kdrc_codestream::detach(v2, this);
  *(this + 142) = 0;
LABEL_5:
  v3 = *(this + 6);
  if (v3)
  {
    kdrc_overlay::~kdrc_overlay(v3);
    MEMORY[0x186602850]();
  }

  kdu_region_decompressor::~kdu_region_decompressor((this + 120));
  kdu_channel_mapping::~kdu_channel_mapping(this + 8);
}

double kdrc_stream::init(kdrc_stream *this, kdu_compressed_source *a2, kdrc_codestream **a3)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (*(this + 6))
  {
    kdrc_stream::init();
  }

  *(this + 9) = 0;
  *(this + 69) = 0u;
  if (*(this + 142))
  {
    kdrc_stream::init();
  }

  if (!a3)
  {
    operator new();
  }

  kdrc_codestream::attach(a3[142], this);
  v5 = *(this + 142);
  if (v5 != a3[142])
  {
    kdrc_stream::init();
  }

  v6 = -1;
  *(this + 90) = -1;
  *(this + 93) = 0;
  kdu_channel_mapping::configure((this + 64), v5[36]);
  if (*(this + 16) >= 1)
  {
    v6 = **(this + 9);
  }

  *(this + 91) = v6;
  *(this + 92) = v6;
  *(this + 226) = kdu_codestream::get_min_dwt_levels((*(this + 142) + 288));
  kdrc_stream::configure_subsampling(this);
  *(this + 908) = kdu_codestream::can_flip((*(this + 142) + 288));
  *(this + 1068) = 0;
  *(this + 909) = 0;

  *&result = kdrc_stream::invalidate_surface(this).n128_u64[0];
  return result;
}

void sub_185FAB1A8(void *a1)
{
  __cxa_begin_catch(a1);
  kdrc_codestream::~kdrc_codestream(v1);
  MEMORY[0x186602850]();
  __cxa_rethrow();
}

void kdrc_stream::configure_subsampling(kdrc_stream *this)
{
  if ((*(this + 92) & 0x80000000) != 0)
  {
    kdrc_stream::configure_subsampling();
  }

  v2 = *(this + 226);
  if (v2 < 33)
  {
    if (v2 < 0)
    {
      return;
    }
  }

  else
  {
    v2 = 32;
    *(this + 226) = 32;
  }

  v3 = v2;
  do
  {
    kdu_codestream::apply_input_restrictions(*(this + 142) + 288, 0, 0, v3, 0, 0, *(this + 93));
    if (v3 == *(this + 226) && (*(this + 90) & 0x80000000) == 0)
    {
      num_components = kdu_codestream::get_num_components((*(this + 142) + 288), 1);
      if (num_components <= *(this + 90))
      {
        *(this + 92) = num_components - 1;
        *(this + 90) = num_components - 1;
      }
    }

    v11 = 0;
    kdu_codestream::get_subsampling((*(this + 142) + 288), *(this + 92), &v11, 1);
    v5 = v11;
    *(this + v3 + 47) = v11;
    v6 = HIDWORD(v5);
    if ((*(this + 90) & 0x80000000) != 0)
    {
      v7 = *(this + 16);
      if (v7 >= 1)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(this + 9) + 4 * i);
          if (v9 != *(this + 92))
          {
            kdu_codestream::get_subsampling((*(this + 142) + 288), v9, &v11, 1);
            if (SHIDWORD(v11) >= v6)
            {
              v6 = v6;
            }

            else
            {
              v6 = HIDWORD(v11);
            }

            if (v11 < v5)
            {
              LODWORD(v5) = v11;
            }

            v7 = *(this + 16);
          }
        }
      }
    }

    *(this + v3 + 80) = v5 | (v6 << 32);
  }

  while (v3-- > 0);
}

__n128 kdrc_stream::invalidate_surface(__n128 *this)
{
  v2 = (this + 1020);
  if (this[66].n128_u8[12] == 1)
  {
    kdu_region_decompressor::finish(&this[7].n128_i8[8]);
    *(this[71].n128_u64[0] + 296) = 0;
    this[66].n128_u8[12] = 0;
  }

  v2[2].n128_u64[0] = v2->n128_u64[0];
  v2[2].n128_u64[1] = 0;
  result = v2[2];
  this[68] = result;
  this[67] = result;
  this[70].n128_u8[4] = 0;
  this[70].n128_u32[0] = 256;
  return result;
}

void kdrc_stream::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (!*(a1 + 48))
  {
    *(a1 + 1104) = jpx_codestream_source::get_codestream_id(&v4);
    operator new();
  }

  kdrc_stream::init();
}

void sub_185FAB9A4(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    kdrc_codestream::~kdrc_codestream(v2);
    MEMORY[0x186602850]();
    __cxa_rethrow();
  }

  sub_185FABA20();
}

void sub_185FABA0C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  sub_185FABA20();
}

void kdrc_stream::init(kdrc_stream *this, mj2_video_source *a2, uint64_t a3, unsigned int a4, kdrc_codestream **a5)
{
  v19 = *MEMORY[0x1E69E9840];
  *(this + 2) = a2;
  *(this + 6) = a3;
  *(this + 7) = a4;
  if (!*(this + 6))
  {
    *(this + 9) = 0;
    if (a4 > 1 || (v10 = (*(*a2 + 80))(a2), a4) && !v10)
    {
      *&v18 = 0;
      *v16 = 0u;
      v17 = 0u;
      kdu_error::kdu_error(v16, "Error in Kakadu Region Compositor:\n");
      kdu_error::~kdu_error(v16);
    }

    (*(*a2 + 104))(a2, a3);
    *(this + 276) = mj2_video_source::get_stream_idx(a2, a4);
    *(this + 277) = mj2_video_source::get_track_idx(a2) - 1;
    *(this + 139) = 0;
    if (!*(this + 142))
    {
      if (a5)
      {
        kdrc_codestream::attach(a5[142], this);
        v11 = *(this + 142);
        if (v11 != a5[142])
        {
          kdrc_stream::init();
        }

        kdu_codestream::enable_restart(v11 + 36);
        *(this + 90) = -1;
        *(this + 93) = 0;
        v12 = mj2_video_source::access_channels(a2);
        v13 = mj2_video_source::access_palette(a2);
        v14 = mj2_video_source::access_dimensions(a2);
        v15 = mj2_video_source::access_colour(a2);
        kdu_channel_mapping::configure(this + 8, v15, v12, 0, v13, v14);
      }

      operator new();
    }

    kdrc_stream::init();
  }

  kdrc_stream::init();
}

void sub_185FABE84(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    kdrc_codestream::~kdrc_codestream(v2);
    MEMORY[0x186602850]();
    __cxa_rethrow();
  }

  sub_185FABF00();
}

void sub_185FABEEC(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  sub_185FABF00();
}

uint64_t kdrc_stream::change_frame(kdrc_stream *this, uint64_t a2)
{
  result = *(this + 2);
  if (result && *(this + 6) != a2)
  {
    if (*(this + 1068) == 1)
    {
      kdu_region_decompressor::finish((this + 120));
      *(*(this + 142) + 296) = 0;
      *(this + 1068) = 0;
      result = *(this + 2);
    }

    *(this + 6) = a2;
    (*(*result + 104))(result, a2);
    *(this + 276) = mj2_video_source::get_stream_idx(*(this + 2), *(this + 7));
    v5 = *(this + 142);
    if (v5)
    {
      kdrc_codestream::restart(v5, *(this + 2), a2, *(this + 7));
    }

    operator new();
  }

  return result;
}

void sub_185FAC084(void *a1)
{
  __cxa_begin_catch(a1);
  kdrc_codestream::~kdrc_codestream(v1);
  MEMORY[0x186602850]();
  __cxa_rethrow();
}

uint64_t *kdrc_stream::set_error_level(kdrc_stream *this, int a2)
{
  v3 = *(this + 142);
  if (!v3 || !*(v3 + 288))
  {
    kdrc_stream::set_error_level();
  }

  v4 = (v3 + 288);
  if (a2 == 2)
  {
    v6 = 0;

    return kdu_codestream::set_resilient(v4, v6);
  }

  if (a2 != 1)
  {
    if (!a2)
    {

      return kdu_codestream::set_fast(v4);
    }

    v6 = 1;

    return kdu_codestream::set_resilient(v4, v6);
  }

  return kdu_codestream::set_fussy(v4);
}

uint64_t kdrc_stream::set_mode(__n128 *this, uint64_t a2, unsigned __int32 a3)
{
  v3 = a2;
  if (a2 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  if (this[22].n128_u32[2] != a2 || this[23].n128_u32[1] != v5)
  {
    for (i = *(this[71].n128_u64[0] + 320); i; i = *(i + 1144))
    {
      if (*(i + 1068) == 1)
      {
        kdu_region_decompressor::finish((i + 120));
        *(*(i + 1136) + 296) = 0;
        *(i + 1068) = 0;
      }
    }

    this[22].n128_u32[2] = v3;
    this[23].n128_u32[1] = v5;
    if ((v3 & 0x80000000) != 0)
    {
      LODWORD(v3) = this[22].n128_u32[3];
    }

    this[23].n128_u32[0] = v3;
    kdrc_stream::configure_subsampling(this);
    this[56].n128_u8[13] = 0;
    this[65].n128_u64[0] = 0;
    kdrc_stream::invalidate_surface(this);
    return this[22].n128_u32[2];
  }

  return v3;
}

uint64_t kdrc_stream::set_thread_env(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) != a2 && *(result + 1068) == 1)
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    kdu_error::kdu_error(v3);
    kdu_error::~kdu_error(v3);
  }

  *(result + 32) = a2;
  *(result + 40) = a3;
  return result;
}

uint64_t kdrc_stream::set_scale(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, int a8, float a9, unsigned __int8 a10, unsigned __int8 a11, _DWORD *a12)
{
  *&v104 = a2;
  *(&v104 + 1) = a3;
  v14 = HIDWORD(a6);
  v15 = HIDWORD(a7);
  *a12 = 0;
  if (*(a1 + 16))
  {
    LODWORD(v16) = 0;
    LODWORD(v17) = 0;
    a2 = 0;
    a3 = 0;
    v18 = 0;
    LODWORD(v19) = 0;
    v104 = 0uLL;
  }

  else
  {
    v19 = HIDWORD(a2);
    v17 = HIDWORD(a3);
    LODWORD(v16) = a3;
    v18 = a2;
  }

  if (*(a1 + 909) == 1 && *(a1 + 911) == a10 && *(a1 + 912) == a11 && *(a1 + 910) == a8 && *(a1 + 916) == a9 && *(a1 + 924) == v19 && *(a1 + 920) == v18 && *(a1 + 932) == v17 && *(a1 + 928) == v16 && *(a1 + 936) == a4 && *(a1 + 944) == a5 && *(a1 + 956) == HIDWORD(a6))
  {
    v20 = *(a1 + 952) == a6 && *(a1 + 964) == HIDWORD(a7) && *(a1 + 960) == a7;
  }

  else
  {
    v20 = 0;
  }

  *(a1 + 909) = 0;
  *(a1 + 911) = a10;
  *(a1 + 912) = a11;
  *(a1 + 910) = a8;
  *(a1 + 916) = a9;
  *(a1 + 920) = v104;
  *(a1 + 936) = a4;
  *(a1 + 944) = a5;
  *(a1 + 952) = a6;
  *(a1 + 960) = a7;
  if (((a10 & 1) != 0 || a11) && (*(a1 + 908) & 1) == 0)
  {
    v44 = 0;
    v45 = 0;
    *a12 |= 2u;
    return v45 | v44;
  }

  v100 = a3;
  v101 = HIDWORD(a4);
  v22 = a2;
  v23 = a7;
  v98 = v20;
  v24 = a6;
  v102 = a4;
  for (i = *(*(a1 + 1136) + 320); i; i = *(i + 1144))
  {
    if (*(i + 1068) == 1)
    {
      kdu_region_decompressor::finish((i + 120));
      *(*(i + 1136) + 296) = 0;
      *(i + 1068) = 0;
    }
  }

  v26 = v14;
  if (v14 && v24)
  {
    v27 = v17 < 1 || v16 < 1;
    v28 = v27;
    v29 = v100;
    if (v28 == 1)
    {
      v30 = *(a1 + 1136);
      v31 = *(v30 + 312) * v14;
      if (v15 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v15;
      }

      if (v31 <= 0)
      {
        v33 = -(-v31 / v32);
      }

      else
      {
        v33 = (v31 - 1) / v32 + 1;
      }

      v22 = 0;
      v46 = *(v30 + 308) * v24;
      if (v23 <= 1)
      {
        v47 = 1;
      }

      else
      {
        v47 = v23;
      }

      v48 = (v46 - 1) / v47;
      v27 = v46 <= 0;
      v49 = -(-v46 / v47);
      if (!v27)
      {
        v49 = v48 + 1;
      }

      *(&v104 + 1) = __PAIR64__(v33, v49);
      LODWORD(v16) = v49;
      v17 = __PAIR64__(v33, v49) >> 32;
      v29 = __PAIR64__(v33, v49);
    }

    v51 = SHIDWORD(a5) < 1 || a5 < 1;
    v52 = !v51;
    if (v51)
    {
      v53 = v29;
    }

    else
    {
      v53 = a5;
    }

    if (v52)
    {
      v41 = v102;
    }

    else
    {
      v41 = 0;
    }

    if (v52)
    {
      v43 = v101;
    }

    else
    {
      v43 = 0;
    }

    v42 = a12;
    if (v28)
    {
      v38 = *(a1 + 1136);
      v104 = *(v38 + 300);
      LODWORD(v16) = DWORD2(v104);
      LODWORD(v17) = HIDWORD(v104);
    }

    else
    {
      v54 = HIDWORD(v22) * v15;
      if (v14 <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = v14;
      }

      if (v54 <= 0)
      {
        v56 = -(-v54 / v55);
      }

      else
      {
        v56 = (v54 - 1) / v55 + 1;
      }

      v57 = v22 * v23;
      if (v24 <= 1)
      {
        v58 = 1;
      }

      else
      {
        v58 = v24;
      }

      if (v57 <= 0)
      {
        v59 = -(-v57 / v58);
      }

      else
      {
        v59 = (v57 - 1) / v58 + 1;
      }

      v60 = v16 + v22;
      v61 = (v17 + HIDWORD(v22)) * v15;
      if (v61 <= 0)
      {
        v62 = -(-v61 / v55);
      }

      else
      {
        v62 = (v61 - 1) / v55 + 1;
      }

      v63 = v60 * v23;
      v64 = (v60 * v23 - 1) / v58;
      v65 = -(-v63 / v58);
      if (v63 > 0)
      {
        v65 = v64 + 1;
      }

      v17 = v62 - v56;
      v16 = v65 - v59;
      *(&v104 + 1) = v16 | (v17 << 32);
      v38 = *(a1 + 1136);
      v66 = v56 + *(v38 + 304);
      LODWORD(v104) = v59 + *(v38 + 300);
      DWORD1(v104) = v66;
    }

    v67 = *(a1 + 380);
    if (v67 < 1 || (v68 = *(a1 + 376), v68 < 1))
    {
      v44 = 0;
      v45 = 0;
LABEL_104:
      *v42 |= 1u;
      return v45 | v44;
    }

    v35 = SHIDWORD(v53) / v17 * a9;
    v37 = v53 / v16 * a9;
    v39 = 2.0 / SHIDWORD(v53);
    if (v17 / v67 < SHIDWORD(v53))
    {
      v39 = 2.0 / v17 * v67;
    }

    v40 = 2.0 / v16 * v68;
    if (v16 / v68 >= v53)
    {
      v40 = 2.0 / v53;
    }
  }

  else
  {
    v34 = *(a1 + 380);
    v35 = a9 / v34;
    v36 = *(a1 + 376);
    v37 = a9 / v36;
    v38 = *(a1 + 1136);
    v39 = 2.0 / *(v38 + 312) * v34;
    v40 = 2.0 / *(v38 + 308) * v36;
    v41 = v102;
    v42 = a12;
    v43 = v101;
  }

  v69 = 0;
  v70 = (a1 + 972);
  if (v39 <= 0.1)
  {
    v71 = v39;
  }

  else
  {
    v71 = 0.1;
  }

  if (v40 <= 0.1)
  {
    v72 = v40;
  }

  else
  {
    v72 = 0.1;
  }

  for (j = (a1 + 376); ; j += 2)
  {
    v74 = v35 * j[67];
    if (v74 >= 1.0 - v71)
    {
      v75 = v37 * j[66];
      if (v75 >= 1.0 - v72)
      {
        break;
      }
    }

    if (v69 >= *(a1 + 904))
    {
      v44 = 0;
      v45 = 0;
      *(a1 + 968) = v69;
      goto LABEL_104;
    }

    ++v69;
  }

  v78 = j;
  v76 = *j;
  v77 = v78[1];
  *(a1 + 968) = v69;
  v79 = v35 * v77;
  v80 = v37 * v76;
  v81 = floor(v79 + 0.5);
  v82 = floor(v80 + 0.5);
  if (vabdd_f64(v81, v79) >= v71)
  {
    v81 = v79;
  }

  else
  {
    v74 = v74 * (v81 / v79);
  }

  if (vabdd_f64(v82, v80) >= v72)
  {
    v82 = v80;
  }

  else
  {
    v75 = v75 * (v82 / v80);
  }

  v83 = 1.0;
  if (v74 < 1.0)
  {
    v81 = v81 * (1.0 / v74);
  }

  v84 = v75 < 1.0;
  v85 = v82 * (1.0 / v75);
  if (v84)
  {
    v82 = v85;
  }

  *(a1 + 984) = 1;
  v86 = vcvtpd_s64_f64(v81);
  *(a1 + 976) = v86;
  if ((v71 + 1.0) * v81 < v86)
  {
    *(a1 + 984) = v17;
    if (!v26)
    {
      LODWORD(v17) = *(v38 + 312);
      *(a1 + 984) = v17;
    }

    if (v17 <= 0)
    {
      kdrc_stream::set_scale();
    }

    if (v17 != 1)
    {
      while (v81 * v17 > 1073741820.0)
      {
        v87 = v17 >> 1;
        *(a1 + 984) = v17 >> 1;
        v27 = v17 > 3;
        LODWORD(v17) = v17 >> 1;
        if (!v27)
        {
          goto LABEL_125;
        }
      }

      v87 = v17;
LABEL_125:
      v83 = v87;
    }

    v86 = vcvtpd_s64_f64(v81 * v83);
    *(a1 + 976) = v86;
  }

  *(a1 + 980) = 1;
  v88 = vcvtpd_s64_f64(v82);
  v70->i32[0] = v88;
  v89 = 1.0;
  if ((v72 + 1.0) * v82 < v88)
  {
    *(a1 + 980) = v16;
    if (!v24)
    {
      LODWORD(v16) = *(v38 + 308);
      *(a1 + 980) = v16;
    }

    if (v16 <= 0)
    {
      kdrc_stream::set_scale();
    }

    if (v16 != 1)
    {
      while (v82 * v16 > 1073741820.0)
      {
        v90 = v16 >> 1;
        *(a1 + 980) = v16 >> 1;
        v27 = v16 > 3;
        LODWORD(v16) = v16 >> 1;
        if (!v27)
        {
          goto LABEL_136;
        }
      }

      v90 = v16;
LABEL_136:
      v89 = v90;
    }

    v88 = vcvtpd_s64_f64(v82 * v89);
    v70->i32[0] = v88;
  }

  if (v26 && v24)
  {
    LODWORD(i) = vcvtmd_s64_f64(v43 * (v86 / (v81 * v83) * a9) + 0.5);
    v91 = vcvtmd_s64_f64(v41 * (v88 / (v82 * v89) * a9) + 0.5);
    kdu_codestream::apply_input_restrictions(v38 + 288, 0, 0, v69, 0, &v104, *(a1 + 372));
  }

  else
  {
    kdu_codestream::apply_input_restrictions(v38 + 288, 0, 0, v69, 0, 0, *(a1 + 372));
    i = 0;
    v91 = 0;
  }

  kdu_codestream::change_appearance((*(a1 + 1136) + 288), a8, a10, a11);
  if (a8)
  {
    *v70 = vrev64q_s32(*v70);
  }

  v103 = 0uLL;
  kdu_codestream::get_dims((*(a1 + 1136) + 288), *(a1 + 368), &v103, 1);
  if (v103.i32[3] >> 18 || v103.i32[2] >= 0x40000u)
  {
    *a12 |= 1u;
  }

  else
  {
    render_dims = find_render_dims(v103.i64[0], v103.i64[1], v70->i64[0], *(a1 + 980));
    *(a1 + 988) = render_dims;
    *(a1 + 996) = v93;
    if (a8)
    {
      v94 = v91;
    }

    else
    {
      v94 = i;
    }

    if (a8)
    {
      v95 = i;
    }

    else
    {
      v95 = v91;
    }

    if (a11)
    {
      i = 1 - v94 - HIDWORD(v93);
    }

    else
    {
      i = v94;
    }

    if (a10)
    {
      v91 = 1 - v95 - v93;
    }

    else
    {
      v91 = v95;
    }

    *(a1 + 1004) = (render_dims - v91) | ((HIDWORD(render_dims) - i) << 32);
    if (!v98)
    {
      *(a1 + 1040) = 0;
      kdrc_stream::invalidate_surface(a1);
    }

    *(a1 + 909) = 1;
    v96 = *(a1 + 48);
    if (v96)
    {
      kdrc_overlay::set_geometry(v96, *(*(a1 + 1136) + 300), *(a1 + 376 + 8 * *(a1 + 968)), a8, a10, a11, v70->i64[0], *(a1 + 980), *(a1 + 1004));
    }
  }

  v44 = i << 32;
  v45 = v91;
  return v45 | v44;
}