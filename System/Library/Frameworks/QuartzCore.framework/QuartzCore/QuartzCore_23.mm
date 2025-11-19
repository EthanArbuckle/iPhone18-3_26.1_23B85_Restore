void CA::OGL::Shape::render_path(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v1;
  v81[1537] = *MEMORY[0x1E69E9840];
  if (!*(v1[82] + 16) && (*(*v1 + 232))(v1, 10, v2))
  {
    v35 = &v67;
    *(v9[2] + 16) = 13;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v66.i64[0] = v9;
    v70 = v4;
    v36 = v9[2];
    _H1 = *(v36 + 8);
    v38.i64[0] = *(v36 + 10);
    v39 = *(v36 + 14);
    __asm { FCMP            H8, #0 }

    _ZF = _ZF || _H8 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
    if (!_ZF)
    {
      __asm { FCVT            S2, H8 }

      v46 = 1.0 / _S2;
      __asm { FCVT            S1, H1 }

      _S1 = v46 * _S1;
      v38 = vcvtq_f32_f16(*v38.f32);
      *v38.f32 = vmul_n_f32(*v38.f32, v46);
      __asm { FCVT            H1, S1 }

      v38.i32[0] = vcvt_f16_f32(v38).u32[0];
    }

    v66.i16[4] = _H1;
    *(&v66.i32[2] + 2) = v38.i32[0];
    v66.i16[7] = v39;
    if ((*(*v9 + 232))(v9, 26))
    {
      v49 = v9[2];
      if ((*(v49 + 497) & 1) == 0)
      {
        BYTE1(v70) = 1;
        goto LABEL_31;
      }

      if (*(v49 + 496) == 3)
      {
        BYTE1(v70) = _H8 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
        if (_H8 != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
        {
          goto LABEL_29;
        }

LABEL_31:
        v35 = &v67 + 1;
        v69 = vdupq_n_s64(0x300uLL);
        *&v67 = &v71;
        v50 = v81;
        goto LABEL_32;
      }
    }

    BYTE1(v70) = 0;
LABEL_29:
    v69.i64[0] = 1536;
    v50 = &v71;
LABEL_32:
    *v35 = v50;
    v68 = 0u;
    v65 = 0u;
    v51 = *(v9[82] + 8);
    v61 = v9;
    v62 = v51;
    v64 = 0u;
    v63 = 0;
    BYTE8(v64) = 1;
    CA::OGL::Context::ClippedArray::start(&v61);
    for (i = 0uLL; ; *(&i + 1) = 0)
    {
      do
      {
        while (1)
        {
          if (!CA::OGL::Context::ClippedArray::next_rect(&v61, &i))
          {
            if (v68)
            {
              (*(*v66.i64[0] + 360))(v66.i64[0], 0, v68, v67);
              *&v68 = 0;
            }

            CA::OGL::Shape::Lines::flush(&v66, 1u);
            *(v9[2] + 16) = 0;
            return;
          }

          if ((v70 & 1) == 0)
          {
            break;
          }

LABEL_35:
          (**v6)(v6, &v66, &i);
        }

        v52 = vclez_s32(*(&i + 8));
      }

      while ((vpmax_u32(v52, v52).u32[0] & 0x80000000) != 0);
      v53 = v8[1];
      v54 = vclez_s32(v53);
      if ((vpmax_u32(v54, v54).u32[0] & 0x80000000) == 0)
      {
        *&v55 = vmax_s32(*&i, *v8);
        v56 = vsub_s32(vmin_s32(vadd_s32(*&i, *(&i + 8)), vadd_s32(*v8, v53)), *&v55);
        v57 = vclez_s32(v56);
        if ((vpmax_u32(v57, v57).u32[0] & 0x80000000) == 0)
        {
          *(&v55 + 1) = v56;
          i = v55;
          goto LABEL_35;
        }
      }
    }
  }

  v10 = v8[1].i32[0];
  if (v10 <= 3072 && v8[1].i32[1] <= 3072)
  {
    v11 = CA::Render::format_rowbytes(9, v10);
    v12 = v11;
    *&i = v11;
    v13 = is_mul_ok(v11, v8[1].u32[1]) ? (v11 * v8[1].u32[1]) : 0;
    if (v13 <= 0x900000)
    {
      v59 = 0;
      v14 = CA::Render::aligned_malloc(v13, &v59, 0);
      if (v14)
      {
        v15 = v14;
        (*(*v6 + 8))(v6, v14, v12, v8);
        v16 = v59;
        v17 = CA::Render::Image::new_image(9, v8[1].u32[0], v8[1].u32[1], 1u, 0, v15, &i, CA::Render::aligned_free, v59, v58);
        if (v17)
        {
          v19 = v17;
          v20 = v9[2];
          v21 = *(v20 + 16) & 0xFFFFFF00FF00FF00;
          if (*(v20 + 8) == 0x3C003C003C003C00)
          {
            v22 = 1;
          }

          else
          {
            v22 = 3;
          }

          *(v20 + 16) = v22 | v21;
          *(v20 + 20) = HIDWORD(v21);
          v66 = 0uLL;
          v23 = CA::OGL::Context::bind_image(v9, 0, v17, 0, 0, 0, 0, 0, 0.0, &v66, 0);
          if (v23)
          {
            v24 = v23;
            v25 = v8->i32[0];
            v26 = v8->i32[1];
            v27 = v8[1].i32[1];
            v28 = v8[1].i32[0] + v8->i32[0];
            v29 = v27 + v26;
            *v74 = 0u;
            v30 = *(v9[82] + 8);
            v71 = *&v9;
            v72 = v30;
            memset(v73, 0, sizeof(v73));
            *&v73[16] = 256;
            CA::OGL::Context::ClippedArray::start(&v71);
            v61 = 0;
            v62 = 0;
            while (CA::OGL::Context::ClippedArray::next_rect(&v71, &v61))
            {
              CA::OGL::Context::array_rect(v9, v25, v26, v28, v29);
              v31 = v66.i64[1];
              v32 = v66.i64[0];
              v33 = v9[17] + 48 * v9[18];
              *(v33 - 176) = v66.i32[0];
              *(v33 - 172) = HIDWORD(v31);
              *(v33 - 128) = v31;
              *(v33 - 80) = v31;
              *(v33 - 76) = HIDWORD(v32);
              *(v33 - 32) = v32;
              v34 = *(v9[2] + 8);
              *(v33 - 160) = v34;
              *(v33 - 112) = v34;
              *(v33 - 64) = v34;
              *(v33 - 16) = v34;
            }

            if (v4)
            {
              v71 = v25;
              v72 = v26;
              *&v73[16] = v28;
              *v74 = v26;
              v75 = v28;
              v76 = v29;
              v78 = v25;
              v79 = v29;
              v80 = xmmword_183E20E60;
              v77 = xmmword_183E20E60;
              *&v74[8] = xmmword_183E20E60;
              *v73 = xmmword_183E20E60;
              v61 = 0;
              CA::OGL::emit_quad_surround(v9, &v71, &v61);
            }

            (*(*v9 + 560))(v9, v24, 0);
          }

          *(v9[2] + 16) = 0;
          if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v19 + 16))(v19);
          }
        }

        else
        {
          CA::Render::aligned_free(v15, v16, v18);
        }
      }
    }
  }
}

unint64_t CA::Render::InterpolatedFunction::set_interpolations(unint64_t this, const __CFArray *a2)
{
  if (*(this + 48))
  {
    v3 = this;
    this = [(__CFArray *)a2 count];
    v4 = *(v3 + 16) - 1;
    if (this < v4)
    {
      this = [(__CFArray *)a2 count];
      v4 = this;
    }

    v5 = *(v3 + 48);
    __asm { FMOV            V0.2D, #1.0 }

    if (v4)
    {
      v11 = 0;
      v12 = *(v3 + 48);
      v17 = _Q0;
      do
      {
        v13 = [(__CFArray *)a2 objectAtIndexedSubscript:v11, v17];
        objc_opt_class();
        this = objc_opt_isKindOfClass();
        if (this)
        {
          this = [v13 _getPoints:v12];
          _Q0 = v17;
        }

        else
        {
          *v12 = 0;
          *(v12 + 8) = 0;
          _Q0 = v17;
          *(v12 + 16) = v17;
        }

        ++v11;
        v12 += 32;
      }

      while (v4 != v11);
    }

    v14 = *(v3 + 16);
    if (v4 < v14 - 1)
    {
      v15 = ~v4 + v14;
      v16 = (v5 + 32 * v4 + 16);
      do
      {
        *(v16 - 2) = 0;
        *(v16 - 1) = 0;
        *v16 = _Q0;
        v16 += 2;
        --v15;
      }

      while (v15);
    }
  }

  return this;
}

void CA::radix_sort(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v2;
  v5 = v1;
  v56 = *MEMORY[0x1E69E9840];
  if (v1 > 0x3F)
  {
    v14 = v3;
    v15 = 16 * v1;
    v16 = v3;
    if (!v3)
    {
      if (v15 > 0x1000)
      {
        v16 = malloc_type_malloc(16 * v1, 0x10800407411B482uLL);
        if (!v16)
        {
          return;
        }
      }

      else
      {
        MEMORY[0x1EEE9AC00](v1);
        v16 = &v55[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
        bzero(v16, 16 * v5);
      }
    }

    bzero(v55, 0x1000uLL);
    v17 = v4;
    v18 = v5;
    do
    {
      v19 = *v17;
      v17 += 4;
      ++*&v55[16 * v19];
      ++*&v55[16 * BYTE1(v19) + 4];
      ++*&v55[16 * BYTE2(v19) + 8];
      ++*&v55[((v19 >> 20) & 0xFF0) + 12];
      --v18;
    }

    while (v18);
    v20 = 0;
    v21 = 0uLL;
    do
    {
      v22 = &v55[16 * v20];
      v23 = vaddq_s32(*v22, v21);
      v24 = vaddq_s32(v23, v22[1]);
      v25 = vaddq_s32(v24, v22[2]);
      v26 = vaddq_s32(v25, v22[3]);
      *v22 = v21;
      v22[1] = v23;
      v22[2] = v24;
      v22[3] = v25;
      v21 = v26;
      v27 = v20 >= 0xFC;
      v20 += 4;
    }

    while (!v27);
    v28 = v4 + 1;
    v29 = v5;
    do
    {
      v30 = *(v28 - 2);
      v31 = 16 * v30;
      v32 = *&v55[v31];
      *&v55[v31] = v32 + 1;
      v33 = *v28;
      v28 += 2;
      v34 = &v16[16 * v32];
      *v34 = v30;
      *(v34 + 1) = v33;
      --v29;
    }

    while (v29);
    v35 = v16 + 8;
    v36 = v5;
    do
    {
      v37 = *(v35 - 2);
      v38 = *v35;
      v35 += 2;
      v39 = &v55[16 * BYTE1(v37)];
      v40 = *(v39 + 1);
      *(v39 + 1) = v40 + 1;
      v41 = &v4[v40];
      *v41 = v37;
      *(v41 + 1) = v38;
      --v36;
    }

    while (v36);
    v42 = v4 + 1;
    v43 = v5;
    do
    {
      v44 = *(v42 - 2);
      v45 = *v42;
      v42 += 2;
      v46 = &v55[16 * BYTE2(v44)];
      v47 = *(v46 + 2);
      *(v46 + 2) = v47 + 1;
      v48 = &v16[16 * v47];
      *v48 = v44;
      *(v48 + 1) = v45;
      --v43;
    }

    while (v43);
    v49 = (v16 + 8);
    do
    {
      v50 = *(v49 - 2);
      v51 = *v49;
      v49 += 2;
      v52 = &v55[(v50 >> 20) & 0xFF0];
      v53 = *(v52 + 3);
      *(v52 + 3) = v53 + 1;
      v54 = &v4[v53];
      *v54 = v50;
      *(v54 + 1) = v51;
      --v5;
    }

    while (v5);
    if (v15 > 0x1000 && !v14)
    {
      free(v16);
    }
  }

  else if (v1 >= 2)
  {
    v6 = 1;
    v7 = v2;
    do
    {
      v8 = &v2[v6];
      v9 = *v8;
      v10 = *(v8 + 1);
      v11 = v7;
      v12 = v6;
      while (*v11 > v9)
      {
        --v12;
        v11[1] = *v11;
        --v11;
        if (v12 + 1 <= 1)
        {
          v12 = 0;
          break;
        }
      }

      v13 = &v2[v12];
      *v13 = v9;
      *(v13 + 1) = v10;
      ++v6;
      ++v7;
    }

    while (v6 != v1);
  }
}

uint64_t CA::ScanConverter::RendererImpl::Edge::sort_xmin(uint64_t *a1, unint64_t a2)
{
  v3 = a1;
  v4 = a2 >> 1;
  v5 = a1;
  v6 = (a2 >> 1) - 1;
  if (a2 >> 1 != 1)
  {
    v5 = a1;
    do
    {
      v5 = *v5;
      --v6;
    }

    while (v6);
  }

  v7 = *v5;
  *v5 = 0;
  if (a2 > 3)
  {
    v3 = CA::ScanConverter::RendererImpl::Edge::sort_xmin(a1, a2 >> 1);
  }

  if (a2 - v4 >= 2)
  {
    v7 = CA::ScanConverter::RendererImpl::Edge::sort_xmin(v7, a2 - v4);
  }

  if (*(v7 + 28) >= *(v3 + 28))
  {
    v9 = *v3;
    v8 = v7;
    v7 = v3;
  }

  else
  {
    v8 = *v7;
    v9 = v3;
  }

  v10 = v9 != 0;
  if (v9 && v8)
  {
    v11 = v7;
    do
    {
      if (*(v8 + 28) >= *(v9 + 28))
      {
        *v11 = v9;
        v13 = *v9;
        v12 = v8;
        v11 = v9;
        v9 = *v9;
      }

      else
      {
        *v11 = v8;
        v12 = *v8;
        v13 = v9;
        v11 = v8;
        v8 = *v8;
      }

      v10 = v13 != 0;
      if (v13)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 1;
      }
    }

    while (!v14);
  }

  else
  {
    v13 = v9;
    v12 = v8;
    v11 = v7;
  }

  if (v10)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  *v11 = v15;
  return v7;
}

void CA::OGL::MetalContext::draw_lines(CA::OGL::Context *a1, int a2, unsigned int a3, char *a4)
{
  if (*(*(a1 + 2) + 16) - 104 <= 6)
  {
    __assert_rtn("draw_lines", "ogl-metal.mm", 8855, "get_texture_function() < OGL_TEX_PATH_FIRST || get_texture_function() > OGL_TEX_PATH_LAST");
  }

  CA::OGL::MetalContext::draw(a1, 1, a3, 1u, a4, 0x10uLL, 8u, a2, a3, 0, 0, 0);
}

void CA::Render::Gradient::~Gradient(void **this)
{
  CA::Render::InterpolatedFunction::~InterpolatedFunction(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

uint64_t CA::ScanConverter::Path::add_line(uint64_t this, double a2, double a3, double a4, double a5)
{
  if (a2 != a4 || a3 != a5)
  {
    v6 = a2;
    if (vabdd_f64(a5, a3) >= 0.000001)
    {
      v7 = a5;
    }

    else
    {
      v7 = a3;
    }

    if (a2 >= a4)
    {
      a2 = a4;
    }

    if (v6 <= a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = v6;
    }

    if (v7 <= a3)
    {
      v9 = v7;
    }

    else
    {
      v9 = a3;
    }

    if (v7 >= a3)
    {
      v10 = v7;
    }

    else
    {
      v10 = a3;
    }

    if (v7 == a3)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = (a4 - v6) / (v7 - a3);
    }

    v12 = a4 - v11 * v7;
    if (v7 >= a3)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = -1.0;
    }

    return CA::ScanConverter::Path::add_curve(this, a2, v9, v8, v10, 0.0, v11, v12, v13);
  }

  return this;
}

uint64_t CA::ScanConverter::Path::lineto(uint64_t this, double a2, double a3, double a4)
{
  v7 = this;
  v8 = *(this + 64);
  if (v8 != a2 || *(this + 72) != a3 || *(this + 80) != a4)
  {
    v9 = *(this + 80);
    v10 = v9 + -0.0001;
    if (a4 + -0.0001 < 0.0 || v10 < 0.0)
    {
      if (a4 + -0.0001 < 0.0 && v10 < 0.0)
      {
        goto LABEL_14;
      }

      v15 = v10 / (v9 - a4);
      v16 = v8 + v15 * (a2 - v8);
      v17 = *(this + 72);
      v18 = v17 + (a3 - v17) * v15;
      v19 = v9 + v15 * (a4 - v9);
      v20 = v18 / v19;
      if (v10 >= 0.0)
      {
        v22 = v16 / v19;
        this = CA::ScanConverter::Path::add_line(this, v8 / v9, v17 / v9, v16 / v19, v18 / v19);
        *(v7 + 96) = v22;
        *(v7 + 104) = v20;
        *(v7 + 88) = 1;
        goto LABEL_14;
      }

      if (*(this + 88) == 1)
      {
        v21 = v16 / v19;
        CA::ScanConverter::Path::add_line(this, *(this + 96), *(this + 104), v16 / v19, v18 / v19);
        *(v7 + 88) = 0;
      }

      else
      {
        *(this + 89) = 1;
        v21 = v16 / v19;
        *(this + 112) = v16 / v19;
        *(this + 120) = v20;
      }

      v13 = a2 / a4;
      v14 = a3 / a4;
      this = v7;
      v11 = v21;
      v12 = v20;
    }

    else
    {
      v11 = v8 / v9;
      v12 = *(this + 72) / v9;
      v13 = a2 / a4;
      v14 = a3 / a4;
    }

    this = CA::ScanConverter::Path::add_line(this, v11, v12, v13, v14);
LABEL_14:
    *(v7 + 64) = a2;
    *(v7 + 72) = a3;
    *(v7 + 80) = a4;
  }

  return this;
}

double *CA::ScanConverter::Path::lineto(double *this, double a2, double a3)
{
  if (this[10] != 1.0)
  {
    return CA::ScanConverter::Path::lineto(this, a2, a3, 1.0);
  }

  v5 = this[8];
  v6 = this[9];
  if (v5 != a2 || v6 != a3)
  {
    this[8] = a2;
    this[9] = a3;
    return CA::ScanConverter::Path::add_line(this, v5, v6, a2, a3);
  }

  return this;
}

uint64_t CAML::ObjCInteger::end(CAML::ObjCInteger *this, CAML::Context *a2, CAML::State *a3, char *__str, uint64_t a5)
{
  __endptr[1] = *MEMORY[0x1E69E9840];
  __endptr[0] = __str;
  valuePtr = strtol(__str, __endptr, 10);
  v9 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  CAML::State::set_value(a3, v9);
  CFRelease(v9);
  return CAML::check_trailer(a2, __endptr[0], &__str[a5], v10);
}

double parse_digit_sequence_integer(const char *a1, const char **a2, const char *a3)
{
  v3 = a1;
  if (a1 < a3)
  {
    v3 = a1;
    while (*v3 - 48 <= 9)
    {
      if (++v3 == a3)
      {
        v3 = a3;
        break;
      }
    }
  }

  if (a2)
  {
    *a2 = v3;
  }

  v4 = v3 - 1;
  result = 0.0;
  if (v4 >= a1)
  {
    v6 = 1.0;
    do
    {
      v7 = *v4--;
      result = result + v6 * (v7 - 48);
      v6 = v6 * 10.0;
    }

    while (v4 >= a1);
  }

  return result;
}

void *CA::Render::Subtexture::encode(const CA::Render::Object **this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  CA::Render::Encoder::encode_object(a2, this[2]);
  v4 = *(this + 6);
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v5 = *(a2 + 4);
  }

  *v5 = v4;
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = (v6 + 4);
  *(a2 + 4) = v6 + 4;
  v9 = *(this + 7);
  if (v6 + 8 > v7)
  {
    CA::Render::Encoder::grow(a2, 4);
    v8 = *(a2 + 4);
  }

  *v8 = v9;
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = (v10 + 4);
  *(a2 + 4) = v10 + 4;
  v13 = *(this + 8);
  if (v10 + 8 > v11)
  {
    CA::Render::Encoder::grow(a2, 4);
    v12 = *(a2 + 4);
  }

  *v12 = v13;
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = (v14 + 4);
  *(a2 + 4) = v14 + 4;
  v17 = *(this + 9);
  if (v14 + 8 > v15)
  {
    CA::Render::Encoder::grow(a2, 4);
    v16 = *(a2 + 4);
  }

  *v16 = v17;
  *(a2 + 4) += 4;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void _XImageQueueDidComposite(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 44)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    CAImageQueueDidComposite(a1[8], a1[9], a1[10]);
    *(a2 + 32) = 0;
  }
}

double pow_10(unsigned int a1)
{
  result = 1.0;
  if (a1 >= 1)
  {
    if (a1 < 0x21)
    {
      v2 = a1;
    }

    else
    {
      do
      {
        result = result * 1.0e32;
        v2 = a1 - 32;
        v3 = a1 > 0x40;
        a1 -= 32;
      }

      while (v3);
    }

    v4 = v2 - 1;
    v5 = &pow_10(int)::up;
    return v5[v4] * result;
  }

  if ((a1 & 0x80000000) != 0)
  {
    if (a1 > 0xFFFFFFDF)
    {
      v6 = a1;
    }

    else
    {
      do
      {
        result = result * 1.0e-32;
        v6 = a1 + 32;
        v7 = __CFADD__(a1, 64);
        a1 += 32;
      }

      while (!v7);
    }

    v4 = ~v6;
    v5 = &pow_10(int)::down;
    return v5[v4] * result;
  }

  return result;
}

uint64_t CA::Render::Surface::ycbcr_matrix(CA::Render::Surface *this, __IOSurface *a2)
{
  v2 = *(this + 361);
  if ((v2 & 0xF) == 0)
  {
    v4 = *(this + 16);
    if (v4)
    {
      v2 = *(this + 361) & 0xF0 | CA::Render::iosurface_ycbcr_matrix(v4, a2);
    }

    else
    {
      v2 |= 1u;
    }

    *(this + 361) = v2;
    v5 = *(this + 14);
    if (v5)
    {
      *(v5 + 361) = *(v5 + 361) & 0xF0 | v2 & 0xF;
      v2 = *(this + 361);
    }
  }

  return v2 & 0xF;
}

atomic_uint *CA::OGL::emit_shadow_round_rect(CA::OGL::Context *this, float64x2_t *a2, float32x2_t *a3, float16x4_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, int a11, CA::Mat4Impl *a12)
{
  v13 = a6;
  v14 = a5;
  v121 = *MEMORY[0x1E69E9840];
  if (a11)
  {
    v21 = a9;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = a2[1].f64[0];
  v23 = 1.0;
  if (v21 >= 1.0 || (v22 >= a10 * 5.6 ? (v24 = a2[1].f64[1] < a10 * 5.6) : (v24 = 1), v24))
  {
    v87 = a7;
    v25 = a10 * 2.8;
    if (a8)
    {
      v23 = 1.528665;
    }

    v88 = v21;
    v26 = v25 + v21 * v23;
    v27 = v26 + v26;
    if (v26 + v26 < v22 && a11 == 15 && v27 < a2[1].f64[1] && (*(*this + 232))(this, 37, a3, a4, a5, a6, a7, a12))
    {
      if (byte_1ED4E9872 == 1)
      {
        *a4 = 0x3C003A0000003400;
      }

      v85 = *a2;
      v86 = a2[1];
      _Q0 = vaddq_f64(*a2, vcvtq_f64_f32(*a3));
      *a2 = _Q0;
      v31 = *a4;
      if (v14 >= 255)
      {
        v32 = 255;
      }

      else
      {
        v32 = v14;
      }

      v33 = v32 & ~(v32 >> 31);
      if (*&v31 == 0x3C003C003C003C00)
      {
        *_Q0.f64 = v33 * 0.0039216;
        __asm { FCVT            H0, S0 }

        *&_Q0.f64[0] = vdup_lane_s16(*&_Q0.f64[0], 0);
      }

      else
      {
        *&_Q0.f64[0] = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v31), v33 * 0.0039216));
      }

      v44 = COERCE_DOUBLE(vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(*(*(this + 82) + 32)), vcvtq_f32_f16(*&_Q0.f64[0]))));
      if (*(*(this + 82) + 32) != 0x3C003C003C003C00)
      {
        _Q0.f64[0] = v44;
      }

      *(*(this + 2) + 8) = _Q0.f64[0];
      if (v13)
      {
        v45 = 12;
      }

      else
      {
        v45 = 3;
      }

      *(*(this + 2) + 16) = v45;
      v116 = 0;
      v117 = 0;
      v118 = 0.0;
      v46 = a9 / a10;
      if (v46 <= 20.0)
      {
        v52 = 0;
        v53 = &CA::OGL::emit_shadow_round_rect(CA::OGL::Context &,CA::Rect &,CA::Vec2<float> const&,double,double,CA::OGL::ExtendedColor,int,BOOL,BOOL,unsigned int,unsigned int,CA::Transform const&,float)::w[55 * (a8 != 0)];
        do
        {
          v54 = CA::OGL::emit_shadow_round_rect(CA::OGL::Context &,CA::Rect &,CA::Vec2<float> const&,double,double,CA::OGL::ExtendedColor,int,BOOL,BOOL,unsigned int,unsigned int,CA::Transform const&,float)::w[55 * (a8 != 0) + 10 + 11 * v52];
          for (i = 9; i != -1; --i)
          {
            v54 = v53[i] + (v54 * v46);
          }

          *(&v116 + v52++) = v54;
          v53 += 11;
        }

        while (v52 != 5);
      }

      else
      {
        v47 = 0;
        v48 = -v46;
        v49 = (&CA::OGL::emit_shadow_round_rect(CA::OGL::Context &,CA::Rect &,CA::Vec2<float> const&,double,double,CA::OGL::ExtendedColor,int,BOOL,BOOL,unsigned int,unsigned int,CA::Transform const&,float)::w + 60 * (a8 != 0) + 4);
        do
        {
          v50 = *(v49 - 1);
          v51 = *v49;
          *(&v116 + v47) = v50 + (exp2f(v48 / v49[1]) * v51);
          v47 += 4;
          v49 += 3;
        }

        while (v47 != 20);
      }

      v29.f32[0] = (*(&v116 + 1) * 60.0) + (*&v116 * -60.0);
      v56.i32[1] = v117.i32[1];
      v57 = vmul_f32(v117, 0xC0A00000C1F00000);
      v58 = vadd_f32(v57, v29);
      v29.f32[1] = *(&v116 + 1) * 20.0;
      v59 = -(((*(&v116 + 1) * 60.0) + (*&v116 * -90.0)) - (v117.f32[0] * 15.0));
      v56.f32[0] = v117.f32[0] + *&v116;
      v60 = vmla_f32(vext_s8(vsub_f32(v57, v29), v58, 4uLL), 0x40C0000041700000, v56);
      v61 = (*(&v116 + 1) * 20.0) + (*&v116 * -60.0);
      v62 = *&v116 * 15.0;
      v63 = v26 / fmax(a10 * 1.41421356, 0.5);
      v56.f32[0] = v118 * v63;
      v64 = *(this + 2);
      *(v64 + 96) = xmmword_183E21110;
      *(v64 + 17) = 14;
      v65 = *(this + 2);
      v65[50] = v60;
      v65[51].f32[0] = v59;
      v65[51].f32[1] = v61;
      v65[52].f32[0] = v62;
      v65[52].f32[1] = v63;
      v65[53].i32[0] = v56.i32[0];
      v66 = a2->f64[0];
      v67 = a2->f64[1];
      v68 = a2->f64[0] + v26;
      v115[0] = a2->f64[0] - v25;
      v115[1] = v68;
      v69 = a2[1].f64[1];
      v70 = a2[1].f64[0] + v66;
      v115[2] = v70 - v26;
      v115[3] = v70 + v25;
      v114[0] = v67 - v25;
      v114[1] = v67 + v26;
      v114[2] = v69 + v67 - v26;
      v114[3] = v69 + v67 + v25;
      *&v112[4] = 0x80000000800000;
      *&v70 = (v26 + v25 + v26 + v25) / v27;
      *v112 = LODWORD(v70);
      v113 = LODWORD(v70);
      *&v110[4] = 0x80000000800000;
      *v110 = LODWORD(v70);
      v111 = LODWORD(v70);
      if (v87)
      {
        *(*(this + 2) + 16) = 14;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0;
        v105 = 0;
        v102 = 0;
        v103 = 0;
        v101 = 0;
        v120 = 0u;
        memset(v119, 0, sizeof(v119));
        memset(v100, 0, 64);
        memset(v99, 0, sizeof(v99));
        memset(v98, 0, sizeof(v98));
        memset(v97, 0, sizeof(v97));
        memset(v96, 0, sizeof(v96));
        if (a8)
        {
          v71 = vaddq_f64(vdivq_f64(vmulq_f64(v86, vdupq_n_s64(0xBFF721E8A7A4B61BLL)), vdupq_lane_s64(COERCE__INT64(v88 * 1.528665), 0)), vdupq_n_s64(0x400721E8A7A4B61BuLL));
          __asm { FMOV            V1.2D, #1.0 }

          v73 = vbslq_s8(vcgtq_f64(v71, _Q1), _Q1, v71);
          v90[0] = vcvt_f32_f64(vbicq_s8(v73, vcltzq_f64(v73)));
          v88 = v88 * 1.528665;
          LODWORD(v28) = vcvtpd_s64_f64(v88);
          (*(*this + 512))(this, 1, v28, 0, 0, &v105, a8, v90);
        }

        else
        {
          LODWORD(v28) = vcvtpd_s64_f64(v88);
          (*(*this + 504))(this, 1, v28, 0, 0, &v105);
        }

        v77.i64[1] = *&v85.f64[1];
        v76.i64[1] = *&v86.f64[1];
        *&v108 = v85.f64[0];
        *(&v108 + 1) = v88 + v85.f64[0];
        v78 = vaddq_f64(v86, v85);
        *&v109 = *v78.i64 - v88;
        *(&v109 + 1) = v78.i64[0];
        *&v106 = v85.f64[1];
        v77.i32[1] = v78.i32[3];
        *(&v107 + 1) = v78.i64[1];
        *(&v106 + 1) = v88 + v85.f64[1];
        *&v107 = *&v78.i64[1] - v88;
        *v77.i32 = *&v105 + ((*(&v105 + 1) - *&v105) * 0.5);
        LODWORD(v103) = v105;
        *(&v103 + 1) = *v77.i32;
        *&v104 = *v77.i32;
        HIDWORD(v104) = HIDWORD(v105);
        LODWORD(v101) = v105;
        *(&v101 + 1) = *v77.i32;
        *&v102 = *v77.i32;
        HIDWORD(v102) = HIDWORD(v105);
        v89 = 0.0;
        v78.i64[0] = 1.0;
        v76.i64[0] = 1.0;
        v79 = (~CA::OGL::transform_filter_bits(a12, v74, v78, v76, v77) & 9) != 0;
        v80 = CA::OGL::merge_compressed_geometry_clipped(v115, &v108, v112, &v103, 4, 0.0, v119, v99, v98, (&v89 + 2), v83) - 1;
        v81 = CA::OGL::merge_compressed_geometry_clipped(v114, &v106, v110, &v101, 4, 0.0, v100, v97, v96, &v89, v84) - 1;
        v82 = CA::OGL::merge_rr_occl_bins_8x8(HIWORD(v89), LOWORD(v89), v80, v81, v79);
        v90[0] = a2;
        v90[1] = a12;
        v91 = 63;
        v92 = 0;
        v94 = 0;
        v93 = 0;
        v95 = 0;
        CA::OGL::emit_n_part_rect_occluded(this, v90, v80, v81, v119, v100, v99, v97, v98, v96, v82);
        (*(*this + 560))(this, 0, 1);
      }

      else
      {
        *&v119[0] = a2;
        *(&v119[0] + 1) = a12;
        if (v13)
        {
          v75 = 278528;
        }

        else
        {
          v75 = 0x20000;
        }

        memset(&v119[1] + 4, 0, 28);
        LODWORD(v119[1]) = 63;
        CA::OGL::emit_nine_part_rect(this, v119, v115, v114, v112, v110, 0, 0, v75);
      }

      result = (*(*this + 560))(this, 0, 0);
      *(*(this + 2) + 16) = 0;
    }

    else
    {
      result = CA::OGL::Context::shadow_cache(this);
      if (result)
      {
        v39 = 0.0;
        if ((a11 & 4) != 0)
        {
          v40 = v88;
        }

        else
        {
          v40 = 0.0;
        }

        *v119 = v40;
        *(v119 + 1) = v40;
        if ((a11 & 8) != 0)
        {
          v41 = v88;
        }

        else
        {
          v41 = 0.0;
        }

        *&v119[1] = v41;
        *(&v119[1] + 1) = v41;
        if ((a11 & 2) != 0)
        {
          v42 = v88;
        }

        else
        {
          v42 = 0.0;
        }

        *&v119[2] = v42;
        *(&v119[2] + 1) = v42;
        if (a11)
        {
          v39 = v88;
        }

        *&v120 = v39;
        *(&v120 + 1) = v39;
        result = CA::Render::ShadowCache::lookup_rounded_rect_path(result, a2->f64, v119, a8 != 0);
        if (result)
        {
          v100[0] = *a4;
          return CA::OGL::emit_shadow_path(this);
        }
      }
    }
  }

  else
  {
    if (byte_1ED4E9872)
    {
      *a4 = 0x3C0038CD00003400;
      v43 = 0x3C0038CD00003400;
    }

    else
    {
      v43 = *a4;
    }

    *&v119[0] = v43;
    return CA::OGL::emit_shadow_rect(this, a2, a3, v119, a5, a6, a7, a12, a10);
  }

  return result;
}

_DWORD *CA::Context::copy_timings(CA::Transaction **this, CA::Layer *a2, void *a3)
{
  v33[1] = *MEMORY[0x1E69E9840];
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x138uLL, 0xDEEC3011uLL);
  v6 = v5;
  if (v5)
  {
    v5[2] = 1;
    v5[3] = 59;
    ++dword_1ED4EAB24;
    *v5 = &unk_1EF201618;
    *(v5 + 2) = v5 + 12;
    *(v5 + 3) = v5 + 12;
    *(v5 + 4) = v5 + 12;
    *(v5 + 5) = 32;
    v5[76] = 1065353216;
  }

  v7 = *(a2 + 29);
  *(a2 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  while (this)
  {
    v33[0] = 0;
    CA::Layer::render_timing(v33, this[2], a2);
    v8 = v33[0];
    if (v33[0])
    {
      if (!atomic_fetch_add((v33[0] + 8), 1u))
      {
        atomic_fetch_add((v8 + 8), 0xFFFFFFFF);
      }

      *(v6 + 76) = *(v6 + 76) * *(v8 + 16);
      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      v11 = &v9[-v10];
      v12 = (&v9[-v10] >> 3) + 1;
      v13 = *(v6 + 5);
      if (v13 < v12)
      {
        v14 = *(v6 + 4);
        v15 = (v13 + 1) | ((v13 + 1) >> 1) | (((v13 + 1) | ((v13 + 1) >> 1)) >> 2);
        v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
        v17 = v16 | (v16 >> 16) | ((v16 | (v16 >> 16)) >> 32);
        if (v17 + 1 > v12)
        {
          v18 = v17 + 1;
        }

        else
        {
          v18 = v12;
        }

        v19 = malloc_type_malloc(8 * v18, 0x2004093837F09uLL);
        v20 = v19;
        v21 = *(v6 + 2);
        v22 = *(v6 + 3);
        if (v21 != v22)
        {
          v23 = v19;
          do
          {
            v24 = *v21++;
            *v23++ = v24;
          }

          while (v21 != v22);
        }

        if (v10 != v14)
        {
          free(*(v6 + 2));
        }

        v9 = &v11[v20];
        *(v6 + 2) = v20;
        *(v6 + 3) = &v11[v20];
        *(v6 + 5) = v18;
      }

      *v9 = v8;
      *(v6 + 3) += 8;
      if (atomic_fetch_add((v8 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v8 + 16))(v8);
      }
    }

    this = CA::Layer::superlayer(this[2], a2);
  }

  v25 = *(v6 + 2);
  v26 = *(v6 + 3);
  v27 = (v26 - 8);
  if (v25 != v26 && v27 > v25)
  {
    v29 = v25 + 8;
    do
    {
      v30 = *(v29 - 8);
      *(v29 - 8) = *v27;
      *v27-- = v30;
      v31 = v29 >= v27;
      v29 += 8;
    }

    while (!v31);
  }

  CA::Transaction::unlock(a2);
  return v6;
}

void CA::Render::DeferredEncoder::add_timing_list(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (!atomic_fetch_add((a4 + 8), 1u))
  {
    atomic_fetch_add((a4 + 8), 0xFFFFFFFF);
  }

  v7 = a1[16];
  v8 = a1[17];
  if (v7 >= v8)
  {
    v10 = a1[15];
    v11 = v7 - v10;
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v10) >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0x666666666666666)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v14 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v10) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x333333333333333)
    {
      v15 = 0x666666666666666;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 <= 0x666666666666666)
      {
        operator new();
      }

      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v16 = 40 * v12;
    *v16 = a2;
    *(v16 + 8) = a3;
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    *(v16 + 32) = 0;
    v9 = 40 * v12 + 40;
    v17 = (40 * v12 - v11);
    memcpy(v17, v10, v11);
    a1[15] = v17;
    a1[16] = v9;
    a1[17] = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v7 = a2;
    *(v7 + 8) = a3;
    *(v7 + 16) = a4;
    *(v7 + 24) = a5;
    v9 = v7 + 40;
    *(v7 + 32) = 0;
  }

  a1[16] = v9;
}

uint64_t CA::Render::iosurface_ycbcr_matrix(CA::Render *this, __IOSurface *a2)
{
  PixelFormat = IOSurfaceGetPixelFormat(this);
  v3 = 0;
  if (PixelFormat > 1952854575)
  {
    if (PixelFormat <= 2019963439)
    {
      if (PixelFormat == 1952854576 || PixelFormat == 1952854578)
      {
        goto LABEL_23;
      }

      v6 = 1952855092;
    }

    else
    {
      if (PixelFormat > 2019963955)
      {
        if (PixelFormat == 2037741158)
        {
          goto LABEL_23;
        }

        v5 = 13364;
      }

      else
      {
        if (PixelFormat == 2019963440)
        {
          goto LABEL_23;
        }

        v5 = 12850;
      }

      v6 = v5 | 0x78660000;
    }
  }

  else
  {
    if (PixelFormat > 1714696751)
    {
      if (PixelFormat > 1936077361)
      {
        if (PixelFormat != 1936077362)
        {
          v4 = 13364;
          goto LABEL_18;
        }
      }

      else if (PixelFormat != 1714696752)
      {
        v4 = 12848;
LABEL_18:
        v6 = v4 | 0x73660000;
        goto LABEL_22;
      }

LABEL_23:
      v3 = 1;
      goto LABEL_24;
    }

    if (PixelFormat == 875704422 || PixelFormat == 875704934)
    {
      goto LABEL_23;
    }

    v6 = 875836518;
  }

LABEL_22:
  if (PixelFormat == v6)
  {
    goto LABEL_23;
  }

LABEL_24:
  IOSurfaceGetYCbCrMatrix();
  return (v3 + 1);
}

uint64_t CA::Render::iosurface_chroma_location(__IOSurface *a1, int a2)
{
  if (((a2 - 1) & 0xF9) != 0)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = IOSurfaceCopyValue(a1, *MEMORY[0x1E696CE70]);
  if (v3)
  {
    v4 = v3;
    if (CFEqual(v3, *MEMORY[0x1E696CE90]))
    {
      v2 = 1;
    }

    else if (CFEqual(v4, *MEMORY[0x1E696CE88]))
    {
      v2 = 2;
    }

    else if (CFEqual(v4, *MEMORY[0x1E696CEA0]))
    {
      v2 = 3;
    }

    else if (CFEqual(v4, *MEMORY[0x1E696CE98]))
    {
      v2 = 4;
    }

    else if (CFEqual(v4, *MEMORY[0x1E696CE80]))
    {
      v2 = 5;
    }

    else if (CFEqual(v4, *MEMORY[0x1E696CE78]))
    {
      v2 = 6;
    }

    CFRelease(v4);
  }

  return v2;
}

double CA::Render::TimingList::map_time(CA::Render::TimingList *this, double result)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  v2 = *(this + 3);
  v11[0] = result;
  v4 = v2 - v3;
  if (v4)
  {
    v6 = 0;
    v7 = v4 >> 3;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = v7 - 1;
    do
    {
      v9 = *(this + 2);
      if (v6 >= (*(this + 3) - v9) >> 3)
      {
        __assert_rtn("operator[]", "x-small-vector.h", 98, "pos < (size ()) && Out of bounds access");
      }

      if (CA::Render::Timing::map_time(*(v9 + 8 * v6), v11, 0))
      {
        v10 = v8 == v6;
      }

      else
      {
        v10 = 1;
      }

      ++v6;
    }

    while (!v10);
    return v11[0];
  }

  return result;
}

uint64_t CA::Render::ycbcr_fourcc_is_triplanar(CA::Render *this)
{
  v1 = this;
  result = 1;
  if (v1 > 1983013175)
  {
    if (v1 > 2016567607)
    {
      if (v1 > 2016698679)
      {
        if (v1 == 2016698680)
        {
          return result;
        }

        v3 = 2016698739;
      }

      else
      {
        if (v1 == 2016567608)
        {
          return result;
        }

        v3 = 2016567667;
      }
    }

    else if (v1 > 2016436535)
    {
      if (v1 == 2016436536)
      {
        return result;
      }

      v3 = 2016436595;
    }

    else
    {
      if (v1 == 1983013176)
      {
        return result;
      }

      v3 = 1983144248;
    }

    goto LABEL_22;
  }

  if (v1 > 1949327730)
  {
    if (v1 > 1949589874)
    {
      if (v1 == 1949589875)
      {
        return result;
      }

      v3 = 1982882104;
    }

    else
    {
      if (v1 == 1949327731)
      {
        return result;
      }

      v3 = 1949458803;
    }

    goto LABEL_22;
  }

  if (v1 != 1932550515 && v1 != 1932681587)
  {
    v3 = 1932812659;
LABEL_22:
    if (v1 != v3)
    {
      return 0;
    }
  }

  return result;
}

void *CA::Render::DeferredEncoder::mark_begin_time(void *this)
{
  v1 = this[23];
  if (v1)
  {
    v2 = this[19];
    if (v2)
    {
      v3 = vcnt_s8(v2);
      v3.i16[0] = vaddlv_u8(v3);
      if (v3.u32[0] > 1uLL)
      {
        v4 = this[23];
        if (v1 >= *&v2)
        {
          v4 = v1 % *&v2;
        }
      }

      else
      {
        v4 = (*&v2 - 1) & v1;
      }

      v5 = *(this[18] + 8 * v4);
      if (v5)
      {
        for (i = *v5; i; i = *i)
        {
          v7 = i[1];
          if (v7 == v1)
          {
            if (i[2] == v1)
            {
              goto LABEL_20;
            }
          }

          else
          {
            if (v3.u32[0] > 1uLL)
            {
              if (v7 >= *&v2)
              {
                v7 %= *&v2;
              }
            }

            else
            {
              v7 &= *&v2 - 1;
            }

            if (v7 != v4)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

LABEL_20:
  this[23] = 0;
  return this;
}

uint64_t CAML::ObjCContext::check_type(CAML::ObjCContext *this, const CAML::Type *a2, const CAML::Type *a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  v3 = *(a2 + 3);
  if (!v3)
  {
    return 0;
  }

  v5 = *(a3 + 3);
  if (!v5 || v3 == v5)
  {
    return 1;
  }

  if ((*(*a2 + 32))(a2))
  {
    v8 = *(*a3 + 32);

    return v8(a3);
  }

  else
  {

    return [v5 isSubclassOfClass:v3];
  }
}

__n128 CA::OGL::apply_pending_blending(__n128 *a1)
{
  v1 = a1[2].n128_u32[2];
  if (HIBYTE(v1) != 3)
  {
    result = a1[3];
    a1[4] = result;
    a1[5].n128_u64[1] = a1[5].n128_u64[0];
    a1[2].n128_u32[2] = v1 | (HIBYTE(v1) << 16) | 0x3000000;
    a1[2].n128_u64[0] |= 0x100000uLL;
  }

  return result;
}

BOOL CA::Transform::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 144) & 0x10) == 0 && (*(a2 + 144) & 0x10) == 0)
  {
    if (((*(a2 + 144) ^ *(a1 + 144)) & 7) == 0 && *(a1 + 128) == *(a2 + 128) && *(a1 + 96) == *(a2 + 96))
    {
      return *(a1 + 104) == *(a2 + 104);
    }

    return 0;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = 1;
  v4 = 15;
  while (v3 != 16)
  {
    v5 = *(a1 + 8 * v3);
    v6 = *(a2 + 8 * v3++);
    if (v5 != v6)
    {
      v4 = v3 - 2;
      return v4 > 0xE;
    }
  }

  return v4 > 0xE;
}

uint64_t CA::OGL::MaskNode::prepare(CA::OGL::MaskNode *this)
{
  result = CA::OGL::ImagingNode::prepare(this);
  v3 = *(this + 2);
  if ((*(v3 + 32) & 2) != 0)
  {
    if (*(this + 240))
    {
      result = *(this + 31);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = CA::OGL::prepare_layer(*(this + 1), *(*(v3 + 16) + 128), v3, this + 56, 0, (*(this + 59) >> 23) & 1);
      *(this + 31) = result;
      *(this + 240) |= 1u;
      if (!result)
      {
        return result;
      }
    }

    v5 = *(*(result + 176) + 236);
    if ((v5 & 0x200000) != 0)
    {
      *(this + 59) |= 0x200000u;
      v5 = *(*(result + 176) + 236);
    }

    if ((v5 & 0x1000000) != 0)
    {
      *(this + 59) |= 0x1000000u;
    }
  }

  else
  {
    v4 = *(this + 3);
    if (v4)
    {
      if ((*(v4 + 238) & 0x20) == 0)
      {
        *(v4 + 228) |= 0x80000000000uLL;
      }
    }
  }

  return result;
}

void CA::OGL::MaskNode::compute_dod(CA::OGL::MaskNode *this, int32x2_t *a2, double *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = *(this + 2);
  *a2->i8 = xmmword_183E21120;
  if ((*(v5 + 32) & 2) != 0)
  {
    if (*(this + 240))
    {
      v6 = *(this + 31);
    }

    else
    {
      v6 = CA::OGL::prepare_layer(*(this + 1), *(*(v5 + 16) + 128), v5, this + 56, 0, (*(this + 59) >> 23) & 1);
      *(this + 31) = v6;
      *(this + 240) |= 1u;
    }

    if (v6 && (*(*(v5 + 24) + 40) & 0x20000000000) == 0)
    {
      v8 = *(v6 + 176);
      v9 = v8[19].i32[0];
      if (v9 < 0)
      {
        (*(*v8 + 40))(*(v6 + 176), v8 + 18);
        v9 = v8[19].i32[0];
      }

      *a2 = v8[18];
      v10 = v8[19].i32[1];
      a2[1].i32[0] = v9;
      a2[1].i32[1] = v10;
    }
  }

  if (*(v5 + 32))
  {
    v11 = *(v5 + 24);
    v12 = *(v11 + 88);
    v28 = *(v11 + 72);
    v29 = v12;
    CA::Rect::apply_transform(&v28, *(this + 10), a3);
    v13 = vceqzq_f64(v29);
    v14 = vorrq_s8(vdupq_laneq_s64(v13, 1), v13).u64[0];
    v15 = 0uLL;
    if ((v14 & 0x8000000000000000) == 0)
    {
      v16 = vceqq_f64(v29, v29);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v16), 1), v16).u64[0] & 0x8000000000000000) == 0)
      {
        v17 = vcvtmq_s64_f64(vmaxnmq_f64(v28, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v15 = vuzp1q_s32(v17, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v28, v29), vdupq_n_s64(0x41C0000000000000uLL))), v17));
      }
    }

    v18 = a2[1];
    v19 = vclez_s32(v18);
    if ((vpmax_u32(v19, v19).u32[0] & 0x80000000) == 0)
    {
      v20 = vextq_s8(v15, v15, 8uLL).u64[0];
      v21 = vclez_s32(v20);
      if ((vpmax_u32(v21, v21).u32[0] & 0x80000000) != 0 || (v22 = vadd_s32(*v15.i8, v20), *v15.i8 = vmax_s32(*a2, *v15.i8), v23 = vsub_s32(vmin_s32(vadd_s32(*a2, v18), v22), *v15.i8), v24 = vclez_s32(v23), (vpmax_u32(v24, v24).u32[0] & 0x80000000) != 0))
      {
        a2[1] = 0;
      }

      else
      {
        v15.u64[1] = v23;
        *a2->i8 = v15;
      }
    }
  }

  v25 = *(this + 3);
  if (v25)
  {
    if (v25[19].i32[0] < 0)
    {
      (*(*v25 + 40))(v25, v25 + 18);
    }

    v26 = v25[18];
    v27 = v25[19];

    CA::BoundsImpl::intersect(a2, v26, v27);
  }
}

uint64_t CA::OGL::MaskNode::propagate_roi(uint64_t this, const CA::Bounds *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(this + 24);
  if (v2)
  {
    v4 = this;
    v5 = *(this + 80);
    if ((*(v5 + 144) & 0x10) == 0 && (*(this + 238) & 0x40) == 0 && (v2[238] & 0x20) == 0)
    {
      v6 = *(*(this + 16) + 24);
      v7 = *(v6 + 72);
      v8 = *(v6 + 88);
      v35 = v7;
      v36 = v8;
      v9 = *(v6 + 136);
      v10 = v8.f64[1];
      if (v9)
      {
        if (*(v9 + 72))
        {
          v33 = v6;
          v34 = v5;
          v32 = v8.f64[1];
          v30 = v7;
          v31 = v8.f64[0];
          CA::Render::Layer::max_corner_radii(v9);
          v7 = v30;
          v8.f64[0] = v31;
          v6 = v33;
          v5 = v34;
          v10 = v32;
        }

        else
        {
          v11 = *(v9 + 232);
        }
      }

      else
      {
        v11 = 0.0;
      }

      if (v11 > 0.0)
      {
        if ((*(v6 + 44) & 3) != 0)
        {
          v11 = v11 * 1.528665;
        }

        if (v8.f64[0] <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8.f64[0];
        }

        if (v12 < 1.79769313e308)
        {
          v13 = v8.f64[0] >= v10 ? v10 : v8.f64[0];
          if (v13 > 0.0)
          {
            v14.f64[0] = 0.0;
            v14.f64[1] = v11;
            v35 = vaddq_f64(v7, v14);
            v15 = v10 - (v11 + v11);
            v36.f64[0] = v8.f64[0];
            v36.f64[1] = v15;
            if (v8.f64[0] <= 0.0 || v15 <= 0.0)
            {
              v36 = 0uLL;
            }
          }
        }
      }

      CA::Rect::apply_transform_interior(&v35, v5);
      v16 = *(a2 + 1);
      v17 = HIDWORD(v16);
      v18.i64[0] = v16;
      v18.i64[1] = SHIDWORD(v16);
      v19 = v18;
      if (v16 > SHIDWORD(v16))
      {
        v17 = *(a2 + 1);
      }

      v20 = vcvtq_f64_s64(v19);
      v21 = vdup_n_s32(v17 > 1073741822);
      v22.i64[0] = v21.u32[0];
      v22.i64[1] = v21.u32[1];
      v23 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v22, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v20);
      v24 = vorrq_s8(vcltzq_f64(v23), vclezq_f64(v36));
      v25 = vdupq_laneq_s64(v24, 1);
      v26 = vorrq_s8(v25, v24);
      if ((v26.i64[0] & 0x8000000000000000) == 0)
      {
        v26.i32[0] = 1073741822;
        v25.i32[0] = v17;
        v27.i64[0] = *a2;
        v27.i64[1] = HIDWORD(*a2);
        v28 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v25, v26), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v27));
        v29 = vandq_s8(vcgeq_f64(vaddq_f64(v35, v36), vaddq_f64(v28, v23)), vcgeq_f64(v28, v35));
        if ((vandq_s8(vdupq_laneq_s64(v29, 1), v29).u64[0] & 0x8000000000000000) != 0)
        {
          *(v4 + 228) |= 0x100uLL;
          v2[136] = *(v4 + 136);
          v2 = *(v4 + 24);
        }
      }
    }

    this = (*(*v2 + 56))(v2, a2);
    *(*(v4 + 24) + 228) |= 0x200uLL;
  }

  return this;
}

void CAML::ObjCContext::warningv(id *this, const char *a2, va_list a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a3;
  if ((this[14] & 0x40) != 0)
  {
    [this[12] CAMLParser:this[10] formatWarningString:a2 arguments:v7 lineNumber:*(*(this[1] + 7) + 52)];
  }

  else
  {
    v6 = 0;
    vasprintf(&v6, a2, v7);
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v4 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(this[1] + 7) + 52);
      *buf = 67109378;
      v10 = v5;
      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "CAML warning:%d: %s", buf, 0x12u);
    }

    free(v6);
  }
}

void CA::OGL::MaskNode::apply(uint64_t a1, const double *a2, double a3, double a4, int8x16_t a5)
{
  v86 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *v7;
  if (!*(a1 + 24))
  {
    v35 = *(v6 + 32);
    if ((v35 & 2) != 0)
    {
      if (*(a1 + 240))
      {
        v36 = *(a1 + 248);
      }

      else
      {
        v36 = CA::OGL::prepare_layer(*(a1 + 8), *(*(v6 + 16) + 128), v6, a1 + 56, 0, (*(a1 + 236) >> 23) & 1);
        *(a1 + 248) = v36;
        *(a1 + 240) |= 1u;
      }

      v37 = CA::OGL::prepare_layers_roi(v7, v36, a1 + 56, 0);
      CA::OGL::render_layers(v7, v37);
      *(a1 + 248) = 0;
      *(a1 + 240) &= ~1u;
      v35 = *(v6 + 32);
      if (v35)
      {
        *(*&v8[2] + 497) |= 1u;
        v35 = *(v6 + 32);
      }
    }

    if ((v35 & 1) == 0)
    {
      goto LABEL_50;
    }

    *(*&v8[2] + 8) = 0x3C003C003C003C00;
    v38 = *(v6 + 24);
    v40 = *(v38 + 88);
    v73 = v40;
    v77 = *(v38 + 72);
    v71 = v77;
    v39.i64[1] = *&v77.f64[1];
    v78 = v40;
    v41 = *(v6 + 41);
    v42 = *(a1 + 80);
    *&v83[0] = &v77;
    *(&v83[0] + 1) = v42;
    v39.i64[0] = 1.0;
    v40.i64[0] = 1.0;
    v43 = CA::OGL::transform_filter_bits(v42, a2, v39, v40, a5);
    v44.i64[0] = 1.0;
    LODWORD(v83[1]) = CA::OGL::rect_filter_bits(v42, v43, v45, v71, v73, v44, 1.0);
    DWORD1(v83[1]) = v41;
    v83[2] = 0uLL;
    *(&v83[1] + 1) = 0;
    v46 = 0.0;
    v47 = *(v38 + 136);
    if (v47)
    {
      v48 = *(v47 + 72);
      if (v48)
      {
        CA::OGL::fill_uneven_round_rect(v8, v83, (v48 + 24), *(v38 + 44) & 3);
LABEL_50:
        *(*&v8[2] + 497) &= ~1u;
        return;
      }

      v61 = *(v47 + 56);
      if (v61)
      {
        v62 = (*(*v61 + 80))(v61, 0.0);
        v63 = *(v6 + 24);
        v64 = *(v63 + 136);
        if (v64)
        {
          v65 = *(v64 + 64);
          if (v65)
          {
            if (*(v65 + 16) > 3u)
            {
              v69 = vsubq_f64(*(v65 + 40), *(v65 + 24));
              v74 = *(v65 + 24);
              v75 = v69;
            }

            else
            {
              v74 = 0u;
              v75 = 0u;
            }
          }

          else
          {
            __asm { FMOV            V0.2D, #0.5 }

            v74 = _Q0;
            v75 = 0uLL;
          }

          v67 = *(v64 + 232);
        }

        else
        {
          __asm { FMOV            V0.2D, #0.5 }

          v74 = _Q0;
          v75 = 0uLL;
          v67 = 0.0;
        }

        CA::OGL::fill_corner_rect(v8, v83, v62, &v74, *(*(v6 + 16) + 24) & 1, HIWORD(*(v63 + 48)) & 1, *(v63 + 42) & 0xF, v67, v67);
        goto LABEL_50;
      }

      v46 = *(v47 + 232);
    }

    CA::OGL::fill_round_rect(v8, v83, (*(v38 + 42) & 0xF), *(v38 + 44) & 3, v46, v46);
    goto LABEL_50;
  }

  v10 = *(v6 + 24);
  v70 = *(v10 + 88);
  v72 = *(v10 + 72);
  v82[0] = v72;
  v82[1] = v70;
  v11 = v8[2];
  if (*(*&v11 + 496) >= 2u)
  {
    *(*&v11 + 497) |= 1u;
    v11 = v8[2];
  }

  *(*&v11 + 8) = *(a1 + 88);
  v12 = 0.0;
  CA::OGL::Context::bind_surface(v8, *a2, 0, 0, 0, 0.0);
  v13 = CA::Shape::intersect(*(a1 + 64), (*a2 + 48));
  memset(v83, 0, sizeof(v83));
  v84 = 0u;
  *(&v84 + 1) = *(a1 + 128);
  v85 = 0;
  *(v83 + 8) = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  *(&v83[2] + 8) = *(a1 + 96);
  v16 = *(a1 + 112);
  *(&v83[1] + 1) = v14;
  *&v83[2] = v15;
  *(&v83[3] + 1) = v16;
  LOWORD(v85) = *(a1 + 136) & 0x5FF;
  LODWORD(v84) = *(a1 + 120);
  *(&v83[0] + 1) = v13;
  *&v83[0] = CA::OGL::Context::set_gstate(v8, v83);
  v17 = *(v6 + 41);
  v18 = *a2 + 48;
  v19 = *(&v83[1] + 1);
  *&v77.f64[0] = v82;
  v77.f64[1] = *(&v83[1] + 1);
  v20.i64[0] = 1.0;
  v21.i64[0] = 1.0;
  v24 = CA::OGL::transform_filter_bits(*(&v83[1] + 1), v22, v20, v21, v23);
  v25.i64[0] = 1.0;
  v78.i32[0] = CA::OGL::rect_filter_bits(v19, v24, v26, v72, v70, v25, 1.0);
  v78.i32[1] = v17;
  v78.i64[1] = 0;
  v80 = 0;
  v81 = v18;
  v79 = CA::OGL::MaskNode::MaskRectState::map_;
  v27 = *(v6 + 24);
  v28 = *(v27 + 136);
  if (!v28)
  {
    goto LABEL_15;
  }

  v29 = *(v28 + 72);
  if (v29)
  {
    CA::OGL::fill_uneven_round_rect_tex(v8, &v77, (v29 + 24), CA::OGL::MaskNode::apply(float,CA::OGL::Surface **,float *)::identity_st, *(v27 + 44) & 3);
    goto LABEL_28;
  }

  v30 = *(v28 + 56);
  if (!v30)
  {
    v12 = *(v28 + 232);
LABEL_15:
    CA::OGL::fill_round_rect_tex(v8, &v77, CA::OGL::MaskNode::apply(float,CA::OGL::Surface **,float *)::identity_st, *(v27 + 42) & 0xF, *(v27 + 44) & 3, 0, v12, v12);
    goto LABEL_28;
  }

  v31 = (*(*v30 + 80))(v30);
  v32 = *(v6 + 24);
  v33 = *(v32 + 136);
  if (v33)
  {
    v34 = *(v33 + 64);
    if (v34)
    {
      if (*(v34 + 16) > 3u)
      {
        v56 = vsubq_f64(*(v34 + 40), *(v34 + 24));
        v74 = *(v34 + 24);
        v75 = v56;
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
      }
    }

    else
    {
      __asm { FMOV            V0.2D, #0.5 }

      v74 = _Q0;
      v75 = 0uLL;
    }

    v54 = *(v33 + 232);
  }

  else
  {
    __asm { FMOV            V0.2D, #0.5 }

    v74 = _Q0;
    v75 = 0uLL;
    v54 = 0.0;
  }

  CA::OGL::fill_corner_rect_tex(v8, &v77, v31, &v74, *(*(v6 + 16) + 24) & 1, HIWORD(*(v32 + 48)) & 1, CA::OGL::MaskNode::apply(float,CA::OGL::Surface **,float *)::identity_st, *(v32 + 42) & 0xF, v54, v54, 0);
LABEL_28:
  CA::OGL::Context::unbind_surface(v8, *a2, 0);
  v58 = 0;
  *(*&v8[2] + 497) &= ~1u;
  v59 = *(a1 + 236);
  v60 = ((v59 >> 17) & 0xF) - 1;
  if (v60 <= 0xB)
  {
    v58 = dword_183E2D698[v60];
  }

  if ((v59 & 0x1E0000) == 0x120000 && *a2 && (*(*a2 + 93) & 8) != 0)
  {
    v58 = 8388736;
  }

  else if (!v58)
  {
    goto LABEL_34;
  }

  *&v74 = v82;
  *(&v74 + 1) = *(&v83[1] + 1);
  v75 = 0u;
  v76 = 0u;
  CA::OGL::fill_color_rect(v8, &v74, v58, 0.0, v57);
LABEL_34:
  CA::OGL::Context::set_gstate(v8, **&v8[82]);
  if (v13)
  {
    CA::Shape::unref(v13);
  }
}

void CA::OGL::MaskNode::~MaskNode(CA::OGL::MaskNode *this)
{
  *this = &unk_1EF1FD610;
  v1 = *(this + 31);
  if (v1)
  {
    v2 = *(this + 1);
    do
    {
      v3 = *v1;
      CA::OGL::Renderer::dealloc_layer(v2, v1);
      v1 = v3;
    }

    while (v3);
  }
}

{
  CA::OGL::MaskNode::~MaskNode(this);
  abort();
}

void CAML::anonymous namespace::set_document(CAML::_anonymous_namespace_ *this, CAML::Context *a2, CAML::State *a3)
{
  v4 = *(a2 + 8);
  v5 = *(this + 5);
  if (v5)
  {
    CFRelease(v5);
    *(this + 5) = 0;
  }

  if (v4)
  {
    *(this + 5) = CFRetain(v4);
  }
}

uint64_t CAML::Context::result(CAML::Context *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    xmlParseChunk(v2, "", 0, 1);
    xmlFreeParserCtxt(*(this + 1));
    *(this + 1) = 0;
    v3 = *(this + 9);
    if (v3)
    {
      CFRelease(v3);
      *(this + 9) = 0;
    }

    CAML::Context::pop_state(this);
    (*(*this + 64))(this);
  }

  return *(this + 5);
}

CA::Render::Subtexture *CA::Render::Subtexture::Subtexture(CA::Render::Subtexture *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 56;
  ++dword_1ED4EAB18;
  *v4 = &unk_1EF203398;
  *(this + 2) = CA::Render::Decoder::decode_object(a2, 6, &CA::Render::texture_types);
  v5 = CA::Render::Decoder::decode_int32(a2);
  v6 = CA::Render::Decoder::decode_int32(a2);
  v7 = CA::Render::Decoder::decode_int32(a2);
  v8 = CA::Render::Decoder::decode_int32(a2);
  *(this + 6) = v5;
  *(this + 7) = v6;
  *(this + 8) = v7;
  *(this + 9) = v8;
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-texture.cpp", 248);
  return this;
}

void CAML::ObjCContext::~ObjCContext(CAML::ObjCContext *this)
{
  v2 = 0;
  *this = &unk_1EF1FA3E0;
  v3 = *(this + 13);
  v4 = 1 << *v3;
  do
  {
    for (i = *(*(v3 + 16) + 8 * v2); i; i = *i)
    {
    }

    ++v2;
  }

  while (v2 != v4);
  x_hash_table_free(*(this + 13));
  *this = &unk_1EF1FBCD0;
  if (*(this + 1))
  {
    CAML::Context::result(this);
  }

  v6 = *(this + 2);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 5);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 7);
  if (v10)
  {
    x_hash_table_free(v10);
  }

  v11 = *(this + 8);
  if (v11)
  {
    CFDictionaryApplyFunction(v11, CAML::Context::free_object, 0);
    CFRelease(*(this + 8));
  }

  v12 = *(this + 9);
  if (v12)
  {
    CFRelease(v12);
  }
}

{
  CAML::ObjCContext::~ObjCContext(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

uint64_t CA::Render::Subtexture::texture_cast(CA::Render::Subtexture *this)
{
  result = *(this + 2);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

void CA::Render::Updater::prepare_replicator(uint64_t a1, uint64_t a2, uint64_t a3, const double *a4)
{
  v4 = a3;
  v96 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 32);
  v8 = *(*(*a2 + 32) + 136);
  if (v8 && (v9 = *(v8 + 8)) != 0)
  {
    v84 = 0;
    v82 = v9;
    v83 = *(v9 + 32);
  }

  else
  {
    v84 = 1;
    v82 = 0;
    v83 = INFINITY;
  }

  v88 = v7;
  v10 = *(a2 + 56);
  if (v10 == 0.0)
  {
    goto LABEL_29;
  }

  if (v7 <= 0.0)
  {
    if (v7 >= 0.0 || v83 >= INFINITY && v83 <= INFINITY)
    {
      goto LABEL_29;
    }

    v11 = v83 - *(a2 + 16);
  }

  else
  {
    v11 = *(a2 + 16);
  }

  v12 = v11 / v88;
  v13 = ceil(v12);
  v14 = floor(v12);
  if (v10 > 0.0)
  {
    v14 = v13;
  }

  if (v14 >= *(a3 + 16))
  {
    goto LABEL_29;
  }

  v15 = v14 * v88;
  if (v7 <= 0.0)
  {
    v16 = v83 - v15;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a2 + 32);
  *(a2 + 48) |= 0x10000000000uLL;
  if (v17 == INFINITY)
  {
    v18 = v17 != v16;
    goto LABEL_25;
  }

  if (v10 <= 0.0)
  {
    if (v17 <= v16)
    {
      v18 = v17 < v16;
      goto LABEL_25;
    }
  }

  else if (v17 >= v16)
  {
    v18 = v17 > v16;
LABEL_25:
    _ZF = v16 == 0.0 || !v18;
    v19 = 0x10000000000;
    if (_ZF)
    {
      v19 = *(a2 + 40) | 0x10000000000;
    }

    *(a2 + 40) = v19;
    *(a2 + 32) = v16;
  }

LABEL_29:
  memset(&v95[16], 0, 32);
  *v95 = 0u;
  v93 = a3;
  v94[0] = xmmword_183E20E00;
  v94[1] = 0u;
  v94[2] = xmmword_183E20E60;
  memset(&v94[3], 0, 32);
  v94[5] = xmmword_183E20E00;
  v94[6] = 0u;
  v94[7] = xmmword_183E20E60;
  __asm { FMOV            V3.2D, #1.0 }

  v94[8] = _Q3;
  v24 = vcvtq_f64_f32(*(a3 + 36));
  v25 = vcvtq_f64_f32(*(a3 + 44));
  *&v95[8] = v24;
  *&v95[24] = v25;
  *(a2 + 96) = &v93;
  v27 = (a2 + 40);
  v26 = *(a2 + 40);
  v85 = *(a2 + 32);
  v28 = *(a2 + 48);
  v29 = *(a2 + 16);
  v89 = *(a2 + 24);
  if (*(a3 + 16) <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = *(a3 + 16);
  }

  v31 = *(a3 + 24);
  if (v31)
  {
    v32 = *(v31 + 16);
    v33 = (v31 + 24);
    if (v32 <= 0xF)
    {
      v33 = &CA::Mat4Impl::mat4_identity_double;
    }

    v34 = v33[1];
    v35 = v33[2];
    v36 = v33[3];
    v90[0] = *v33;
    v90[1] = v34;
    v90[2] = v35;
    v90[3] = v36;
    v37 = v33[5];
    v38 = v33[6];
    v39 = v33[7];
    v90[4] = v33[4];
    v90[5] = v37;
    v90[6] = v38;
    v90[7] = v39;
    v86 = v24;
    v81 = v25;
    CA::Transform::set(v91, v90, 1);
    v25 = v81;
    v24 = v86;
  }

  else
  {
    v91[0] = xmmword_183E20E00;
    v91[1] = 0uLL;
    v91[2] = xmmword_183E20E60;
    memset(&v91[3], 0, 32);
    v91[5] = xmmword_183E20E00;
    v91[6] = 0uLL;
    v91[7] = xmmword_183E20E60;
    v91[8] = _Q3;
    v92 = 0;
  }

  v40 = 0;
  v41 = v24.f64[1];
  v42 = v25.f64[1];
  *&v95[40] = 0;
  __asm { FMOV            V2.2D, #0.5 }

  v87 = _Q2;
  v44 = 0.0;
  do
  {
    v45 = v42 * 255.0;
    v46 = (v45 * v41 + 0.5) & ~((v45 * v41 + 0.5) >> 31);
    if (v46 >= 255)
    {
      v46 = 255;
    }

    v24.f64[1] = v25.f64[0];
    v47 = vshl_u32(vmin_s32(vmax_s32(vmovn_s64(vcvtq_s64_f64(vmlaq_n_f64(v87, v24, v45))), 0), 0xFF000000FFLL), 0x800000018);
    v48 = v47.i32[0] | (v46 << 16);
    v49 = (v45 + 0.5) & ~((v45 + 0.5) >> 31);
    if (v49 >= 255)
    {
      v49 = 255;
    }

    v50 = v48 | v49 | v47.i32[1];
    *&v95[44] = v50;
    v51 = v44 + v29;
    *(a2 + 16) = v44 + v29;
    *(a2 + 24) = v44 + v89;
    if (v44 + v29 >= 0.0)
    {
      if (v51 >= v83)
      {
        v51 = -1.0;
        if ((v84 & 1) == 0)
        {
          v51 = v83 + -0.000001;
          if ((*(v82 + 13) & 2) == 0)
          {
            v51 = -1.0;
          }
        }

        *(a2 + 16) = v51;
      }
    }

    else
    {
      v51 = -1.0;
      if ((v84 & 1) == 0 && (*(v82 + 13) & 4) != 0)
      {
        v51 = 0.0;
      }

      *(a2 + 16) = v51;
      *(a2 + 72) |= 0x800uLL;
    }

    *(a2 + 32) = 0x7FF0000000000000;
    *v27 = 0;
    *(a2 + 48) = 0;
    if (v40 || (v50 == -1 ? (_ZF = v51 == v29) : (_ZF = 0), !_ZF))
    {
      ++*(a2 + 132);
    }

    if (*(a2 + 60) <= 0xC0u)
    {
      v53 = *(*a2 + 32);
      if (!*(a2 + 96))
      {
        v67 = *(v53 + 136);
        if (v67)
        {
          if (*v67 && *(*v67 + 12) == 46)
          {
            CA::Render::Updater::prepare_replicator(a1, a2);
            goto LABEL_86;
          }
        }
      }

      a3 = *(v53 + 112);
      if ((*(v53 + 13) & 0x20) != 0)
      {
        if (a3)
        {
          CA::Render::Updater::prepare_sublayer0(a1, a2, a3);
        }
      }

      else if (a3)
      {
        v54 = *(a3 + 16);
        if (v54)
        {
          v55 = (a3 + 24);
          do
          {
            a3 = *v55;
            if (*v55)
            {
              CA::Render::Updater::prepare_sublayer0(a1, a2, a3);
            }

            ++v55;
            --v54;
          }

          while (v54);
        }
      }

      v56 = *(a2 + 88);
      if (v56)
      {
        v57 = CA::Render::Context::root_layer_handle(v56);
        if (!v57 || (a3 = *(v57 + 2)) == 0)
        {
LABEL_77:
          if ((*(*a1 + 1376) & 1) == 0)
          {
            v63 = CA::Render::Context::copy_dirty_shape(*(a2 + 88), v58);
            if (v63)
            {
              v64 = v63;
              CA::Render::Context::invalidate(*(a1 + 64), v63, a3);
              CA::Shape::unref(v64);
              v65 = *(a2 + 88);
              v66 = *(v65 + 608);
              if (v66)
              {
                CA::Shape::unref(v66);
              }

              *(v65 + 608) = 1;
            }
          }

          goto LABEL_86;
        }

        v59 = *(*a2 + 24);
        v60 = *(*a2 + 88);
        if (v60)
        {
          if (((*(v60 + 24) | v59) & 0x20000000) == 0)
          {
LABEL_76:
            v61 = v59 & 0x4000000;
            v62 = *(a1 + 72);
            *(a1 + 72) = *(a2 + 88);
            CA::Render::Updater::prepare_sublayer0(a1, a2, a3);
            *(*a2 + 24) = *(*a2 + 24) & 0xFFFFFFFFFBFFFFFFLL | v61;
            *(a1 + 72) = v62;
            goto LABEL_77;
          }
        }

        else if ((v59 & 0x20000000) == 0)
        {
          goto LABEL_76;
        }

        *(*a2 + 24) = v59 | 0x4000000;
        goto LABEL_76;
      }
    }

LABEL_86:
    v68 = *(a2 + 32);
    if (v68 != INFINITY)
    {
      v69 = v68 - v44;
      v28 |= *(a2 + 48);
      if (v85 >= v69)
      {
        if (v85 <= v69 || v69 == 0.0)
        {
          v71 = v26;
        }

        else
        {
          v71 = 0;
        }

        v26 = *v27 | v71;
        v85 = v69;
      }
    }

    CA::Transform::concat_left(v94, v91, a3, a4);
    v73 = *&v95[8] + v4[13];
    if (v73 >= 0.0)
    {
      v74 = *&v95[8] + v4[13];
    }

    else
    {
      v74 = 0.0;
    }

    if (v73 <= 1.0)
    {
      v24.f64[0] = v74;
    }

    else
    {
      v24.f64[0] = 1.0;
    }

    v72 = v4[14];
    v75 = *&v95[16] + v72;
    if (v75 >= 0.0)
    {
      v76 = *&v95[16] + v72;
    }

    else
    {
      v76 = 0.0;
    }

    if (v75 <= 1.0)
    {
      v41 = v76;
    }

    else
    {
      v41 = 1.0;
    }

    v77 = v4[16];
    v78 = *&v95[24] + v4[15];
    if (v78 >= 0.0)
    {
      v79 = *&v95[24] + v4[15];
    }

    else
    {
      v79 = 0.0;
    }

    *&v95[8] = v24.f64[0];
    *&v95[16] = v41;
    if (v78 <= 1.0)
    {
      v25.f64[0] = v79;
    }

    else
    {
      v25.f64[0] = 1.0;
    }

    *&v95[24] = v25.f64[0];
    v80 = *&v95[32] + v77;
    v42 = 1.0;
    if (v80 <= 1.0)
    {
      v42 = 0.0;
      if (v80 >= 0.0)
      {
        v42 = v80;
      }
    }

    *&v95[32] = v42;
    v40 = *&v95[40] + 1;
    *&v95[40] = v40;
    v44 = v44 - v88;
  }

  while (v40 < v30);
  *(a2 + 40) = v26;
  *(a2 + 48) = v28;
  *(a2 + 16) = v29;
  *(a2 + 24) = v89;
  *(a2 + 32) = v85;
  *(a2 + 96) = 0;
}

uint64_t CAML::anonymous namespace::free_types(void *a1, uint64_t a2)
{
  result = (*(*a2 + 56))(a2);
  if ((result & 1) == 0)
  {
    free(a1);
    v5 = *(*a2 + 8);

    return v5(a2);
  }

  return result;
}

BOOL CA::Render::Fence::resolve_fences(CA::Render::Fence *this)
{
  v86 = *MEMORY[0x1E69E9840];
  v85 = 0;
  v82 = 0u;
  v83 = 0u;
  v84 = 1065353216;
  memset(v80, 0, sizeof(v80));
  v81 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(&v82, *(CA::Render::Fence::cleared_f_names + 24));
  v1 = &unk_1EA851000;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(v80, *(CA::Render::Fence::fences_by_name + 24));
  for (i = *(CA::Render::Fence::cleared_f_names + 16); i; i = *i)
  {
    v3 = i[2];
    if (!std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(&v82, v3) && !std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(v80, v3))
    {
      v77 = 0u;
      v78 = 0u;
      v79 = 1065353216;
      if (CA::Render::Fence::is_fence_resolved(v3, &v77, &v82, v80))
      {
        for (j = v78; j; j = *j)
        {
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&v82, j[2]);
        }
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v77);
    }
  }

  v5 = *(&v83 + 1);
  if (*(&v83 + 1))
  {
    v73 = *(&v83 + 1);
    batch = CA::Render::Fence::create_batch(1);
    for (k = *(CA::Render::Fence::fcontexts_by_id + 16); k; k = std::__hash_table<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::__unordered_map_hasher<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,CA::OGL::Context::RenderObjectSlice::Hash,std::equal_to<CA::OGL::Context::RenderObjectSlice>,true>,std::__unordered_map_equal<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::equal_to<CA::OGL::Context::RenderObjectSlice>,CA::OGL::Context::RenderObjectSlice::Hash,true>,std::allocator<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>>>::erase(CA::Render::Fence::fcontexts_by_id, k))
    {
      while (1)
      {
        v8 = k[3];
        v9 = *v8;
        v10 = v8[1];
        ptr = v8;
        v11 = *v10;
        if (*v10 == *(v10 + 8))
        {
          break;
        }

        v74 = k;
        do
        {
          for (m = v83; m; m = *m)
          {
            v13 = m[2];
            if (std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(v11, v13))
            {
              if (batch)
              {
                if ((*(v9 + 13) & 4) == 0)
                {
                  v76 = *(v9 + 16);
                  v14 = *(batch + 24);
                  if (!std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v14, v76))
                  {
                    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v14, v76);
                    kdebug_trace();
                    CA::Render::Context::add_fence_batch_port(v9, *(batch + 40));
                    v15 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::Fence::bcontexts_by_id, v76);
                    if (!v15)
                    {
                      if (!atomic_fetch_add((v9 + 8), 1u))
                      {
                        atomic_fetch_add((v9 + 8), 0xFFFFFFFF);
                      }

                      if (x_malloc_get_zone::once != -1)
                      {
                        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                      }

                      *malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x20040960023A9uLL) = v9;
                      operator new();
                    }

                    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(*(v15[3] + 16), *(batch + 40));
                  }
                }
              }

              std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>(v11, v13);
            }
          }

          if (v11[3])
          {
            v11 += 5;
            v16 = *(v10 + 8);
          }

          else
          {
            v17 = *(v10 + 8);
            if (v11 + 5 == v17)
            {
              v16 = v11;
            }

            else
            {
              v18 = v11;
              do
              {
                std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(v18);
                v19 = v18[5];
                v18[5] = 0;
                v20 = *v18;
                *v18 = v19;
                if (v20)
                {
                  operator delete(v20);
                }

                v21 = v18[7];
                v18[2] = v21;
                v22 = v18[6];
                v18[1] = v22;
                v18[6] = 0;
                v23 = v18[8];
                v18[3] = v23;
                *(v18 + 8) = *(v18 + 18);
                if (v23)
                {
                  v24 = *(v21 + 8);
                  if ((v22 & (v22 - 1)) != 0)
                  {
                    if (v24 >= v22)
                    {
                      v24 %= v22;
                    }
                  }

                  else
                  {
                    v24 &= v22 - 1;
                  }

                  *(*v18 + 8 * v24) = v18 + 2;
                  v18[7] = 0;
                  v18[8] = 0;
                }

                v16 = v18 + 5;
                v25 = v18 + 10;
                v18 += 5;
              }

              while (v25 != v17);
              v17 = *(v10 + 8);
            }

            while (v17 != v16)
            {
              v17 -= 40;
              std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v17);
            }

            *(v10 + 8) = v16;
          }
        }

        while (v11 != v16);
        v26 = *v10 == v16;
        v1 = &unk_1EA851000;
        k = v74;
        if (v26)
        {
          break;
        }

        k = *v74;
        if (!*v74)
        {
          goto LABEL_55;
        }
      }

      *&v77 = v10;
      std::vector<std::unordered_set<unsigned long long>>::__destroy_vector::operator()[abi:nn200100](&v77);
      MEMORY[0x1865EA9A0](v10, 0x20C40960023A9);
      if (v9 && atomic_fetch_add((v9 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v9 + 16))(v9);
      }

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, ptr);
    }

LABEL_55:
    v27 = v83;
    if (v83)
    {
      v28 = MEMORY[0x1E69E9A60];
      do
      {
        v29 = v27[2];
        v30 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(v1[417], v29);
        if (!v30)
        {
          abort();
        }

        v31 = v30[3];
        kdebug_trace();
        v32 = v1[417];
        v33 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(v32, v29);
        if (v33)
        {
          v34 = v32[1];
          v35 = v33[1];
          v36 = vcnt_s8(v34);
          v36.i16[0] = vaddlv_u8(v36);
          if (v36.u32[0] > 1uLL)
          {
            if (v35 >= *&v34)
            {
              v35 %= *&v34;
            }
          }

          else
          {
            v35 &= *&v34 - 1;
          }

          v37 = *(*v32 + 8 * v35);
          do
          {
            v38 = v37;
            v37 = *v37;
          }

          while (v37 != v33);
          if (v38 == v32 + 2)
          {
            goto LABEL_76;
          }

          v39 = v38[1];
          if (v36.u32[0] > 1uLL)
          {
            if (v39 >= *&v34)
            {
              v39 %= *&v34;
            }
          }

          else
          {
            v39 &= *&v34 - 1;
          }

          if (v39 != v35)
          {
LABEL_76:
            if (!*v33)
            {
              goto LABEL_77;
            }

            v40 = *(*v33 + 8);
            if (v36.u32[0] > 1uLL)
            {
              if (v40 >= *&v34)
              {
                v40 %= *&v34;
              }
            }

            else
            {
              v40 &= *&v34 - 1;
            }

            if (v40 != v35)
            {
LABEL_77:
              *(*v32 + 8 * v35) = 0;
            }
          }

          v41 = *v33;
          if (*v33)
          {
            v42 = *(v41 + 8);
            if (v36.u32[0] > 1uLL)
            {
              if (v42 >= *&v34)
              {
                v42 %= *&v34;
              }
            }

            else
            {
              v42 &= *&v34 - 1;
            }

            if (v42 != v35)
            {
              *(*v32 + 8 * v42) = v38;
              v41 = *v33;
            }
          }

          *v38 = v41;
          *v33 = 0;
          --v32[3];
          operator delete(v33);
        }

        v43 = CA::Render::Fence::fences_by_port;
        v44 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::Fence::fences_by_port, *(v31 + 16));
        if (v44)
        {
          v45 = v43[1];
          v46 = v44[1];
          v47 = vcnt_s8(v45);
          v47.i16[0] = vaddlv_u8(v47);
          if (v47.u32[0] > 1uLL)
          {
            if (v46 >= *&v45)
            {
              v46 %= *&v45;
            }
          }

          else
          {
            v46 &= *&v45 - 1;
          }

          v48 = *(*v43 + 8 * v46);
          do
          {
            v49 = v48;
            v48 = *v48;
          }

          while (v48 != v44);
          if (v49 == v43 + 2)
          {
            goto LABEL_104;
          }

          v50 = v49[1];
          if (v47.u32[0] > 1uLL)
          {
            if (v50 >= *&v45)
            {
              v50 %= *&v45;
            }
          }

          else
          {
            v50 &= *&v45 - 1;
          }

          if (v50 != v46)
          {
LABEL_104:
            if (!*v44)
            {
              goto LABEL_105;
            }

            v51 = *(*v44 + 8);
            if (v47.u32[0] > 1uLL)
            {
              if (v51 >= *&v45)
              {
                v51 %= *&v45;
              }
            }

            else
            {
              v51 &= *&v45 - 1;
            }

            if (v51 != v46)
            {
LABEL_105:
              *(*v43 + 8 * v46) = 0;
            }
          }

          v52 = *v44;
          if (*v44)
          {
            v53 = *(v52 + 8);
            if (v47.u32[0] > 1uLL)
            {
              if (v53 >= *&v45)
              {
                v53 %= *&v45;
              }
            }

            else
            {
              v53 &= *&v45 - 1;
            }

            if (v53 != v46)
            {
              *(*v43 + 8 * v53) = v49;
              v52 = *v44;
            }
          }

          *v49 = v52;
          *v44 = 0;
          --v43[3];
          operator delete(v44);
        }

        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>(CA::Render::Fence::cleared_f_names, v29);
        mach_port_destruct(*v28, *(v31 + 16), 0, *v31);
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v1 = &unk_1EA851000;
        malloc_zone_free(malloc_zone, v31);
        v27 = *v27;
      }

      while (v27);
    }

    v54 = mach_absolute_time();
    v55 = CATimeWithHostTime(v54);
    v56 = *CA::Render::Fence::transactions;
    if (*CA::Render::Fence::transactions != *(CA::Render::Fence::transactions + 8))
    {
      v57 = v55;
      v58 = MEMORY[0x1E69E9A60];
      do
      {
        v59 = *v56;
        v60 = v83;
        if (v83)
        {
          v61 = 0;
LABEL_121:
          v62 = *v59;
          do
          {
            v63 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(v62, v60[2]);
            if (v63)
            {
              std::__hash_table<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::__unordered_map_hasher<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,CA::OGL::Context::RenderObjectSlice::Hash,std::equal_to<CA::OGL::Context::RenderObjectSlice>,true>,std::__unordered_map_equal<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::equal_to<CA::OGL::Context::RenderObjectSlice>,CA::OGL::Context::RenderObjectSlice::Hash,true>,std::allocator<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>>>::erase(v62, v63);
              v60 = *v60;
              v61 = 1;
              if (v60)
              {
                goto LABEL_121;
              }

              goto LABEL_128;
            }

            v60 = *v60;
          }

          while (v60);
          if ((v61 & 1) == 0)
          {
            goto LABEL_129;
          }

LABEL_128:
          CA::Render::Fence::send_rlfg_msg(*(v59 + 16), *(batch + 40), *batch, &v82, v57);
        }

LABEL_129:
        if (*(*v59 + 24))
        {
          v56 += 8;
          v64 = *(CA::Render::Fence::transactions + 8);
        }

        else
        {
          mach_port_deallocate(*v58, *(v59 + 16));
          if (*v59)
          {
            v65 = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(*v59);
            MEMORY[0x1865EA9A0](v65, 0x10A0C408EF24B1CLL);
          }

          v66 = *(v59 + 8);
          if (v66)
          {
            v67 = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v66);
            MEMORY[0x1865EA9A0](v67, 0x10A0C408EF24B1CLL);
          }

          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v59);
          v68 = CA::Render::Fence::transactions;
          v69 = *(CA::Render::Fence::transactions + 8);
          v70 = v69 - (v56 + 8);
          if (v69 != v56 + 8)
          {
            memmove(v56, v56 + 8, v69 - (v56 + 8));
          }

          v64 = &v56[v70];
          *(v68 + 8) = &v56[v70];
        }
      }

      while (v56 != v64);
    }

    v71 = *(batch + 40);
    v5 = v73;
    if (v71 + 1 >= 2)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v71);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v80);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v82);
  return v5 != 0;
}

uint64_t CA::Render::Fence::is_fence_resolved(unint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a2, a1);
  if (!std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(CA::Render::Fence::cleared_f_names, a1))
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a4, a1);
    return 0;
  }

  v8 = *(CA::Render::Fence::fcontexts_by_id + 16);
  if (!v8)
  {
    return 1;
  }

  while (1)
  {
    v9 = *(v8[3] + 8);
    v10 = v9[1];
    if (v10 != *v9)
    {
      break;
    }

LABEL_16:
    v8 = *v8;
    result = 1;
    if (!v8)
    {
      return result;
    }
  }

  v11 = 0;
  while (1)
  {
    v17 = 0;
    v10 -= 40;
    v15 = 0u;
    v16 = 0u;
    std::unordered_set<unsigned long long>::unordered_set(&v15, v10);
    if ((v11 & 1) == 0 && !std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(&v15, a1))
    {
      v11 = 0;
      goto LABEL_15;
    }

    v12 = v16;
    if (v16)
    {
      break;
    }

LABEL_13:
    v11 = 1;
LABEL_15:
    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v15);
    if (v10 == *v9)
    {
      goto LABEL_16;
    }
  }

  while (1)
  {
    v13 = v12[2];
    if (!std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(a2, v13) && !std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(*a3, *(a3 + 8), v13) && (std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(a4, v13) || !CA::Render::Fence::is_fence_resolved(v13, a2, a3, a4)))
    {
      break;
    }

    v12 = *v12;
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a4, a1);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v15);
  return 0;
}

uint64_t std::unordered_set<unsigned long long>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a1, i[2]);
  }

  return a1;
}

void CAML::ObjCNSObject::~ObjCNSObject(CAML::ObjCNSObject *this)
{
  *this = &unk_1EF200920;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF200920;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CAML::Context::free_object(CAML::Context *this, __CFString *a2, Object *a3, void *a4)
{
  if (a2)
  {
    CFRelease(a2->info);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v5 = malloc_zone;

    malloc_zone_free(v5, a2);
  }
}

void ___ZN2CA6Render5Fence11Transaction8Observer8activateENSt3__113unordered_setIyNS4_4hashIyEENS4_8equal_toIyEENS4_9allocatorIyEEEEPFvPS3_RKSC_djyEPFvSD_SF_jjEPFvSD_SF_E_block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2 == 8)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], *(a1 + 96), 1u, -1);
    v9 = *(*(a1 + 48) + 8);
    if (*(v9 + 24))
    {
      *(v9 + 24) = 0;
    }

    v10 = *(*(*(a1 + 56) + 8) + 24);
    if (v10)
    {
      dispatch_source_cancel(v10);
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  else if (a2 == 2)
  {
    v3 = *(a1 + 64);
    *v18 = 0;
    msg = dispatch_mach_msg_get_msg();
    v19 = 0u;
    v20 = 0u;
    v21 = 1065353216;
    v17 = 0.0;
    v16 = 0;
    v14 = 0;
    v15 = 0;
    if (CA::Render::Fence::extract_msg(msg, 0, &v19, &v17, &v16, &v15, &v14 + 1, &v14))
    {
      msgh_id = msg->msgh_id;
      if (msgh_id == 1919772259)
      {
        if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
        {
          v12 = *(a1 + 88);
          if (v12)
          {
            v12(v3, &v19, HIDWORD(v14), v14);
          }
        }
      }

      else if (msgh_id == 1919706727 && (*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
      {
        for (i = v20; i; i = *i)
        {
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>((*(*(a1 + 40) + 8) + 40), i[2]);
        }

        v7 = *(a1 + 72);
        if (v7)
        {
          v7(v3, &v19, v16, v15, v17);
        }

        if (!*(*(*(a1 + 40) + 8) + 64))
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          (*(a1 + 80))(v3, *(*(a1 + 40) + 8) + 40);
          if (*(*(*(a1 + 48) + 8) + 24))
          {
            dispatch_mach_cancel();
            *(*(*(a1 + 48) + 8) + 24) = 0;
          }

          v8 = *(*(*(a1 + 56) + 8) + 24);
          if (v8)
          {
            dispatch_source_cancel(v8);
            *(*(*(a1 + 56) + 8) + 24) = 0;
          }
        }
      }
    }

    else
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v11 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        v13 = msg->msgh_id;
        *buf = 67109120;
        v23 = v13;
        _os_log_error_impl(&dword_183AA6000, v11, OS_LOG_TYPE_ERROR, "unknown fence tx observer message %i\n", buf, 8u);
      }
    }

    mach_msg_destroy(msg);
    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v19);
  }
}

uint64_t CA::Render::Fence::extract_msg(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, _DWORD *a5, void *a6, _DWORD *a7, _DWORD *a8)
{
  v9 = *(a1 + 20);
  if (v9 == 1919772259)
  {
    if (a2 < 0x34)
    {
      return 0;
    }

    if (*(a1 + 4) < 0x34u)
    {
      return 0;
    }

    if ((*a1 & 0x80000000) == 0)
    {
      return 0;
    }

    if (*(a1 + 24) != 1)
    {
      return 0;
    }

    if (*(a1 + 39) != 1)
    {
      return 0;
    }

    v12 = *(a1 + 28);
    if (!v12)
    {
      return 0;
    }

    v13 = *(a1 + 40);
    if (v13 < 8)
    {
      return 0;
    }

    if (a7)
    {
      *a7 = *(a1 + 44);
    }

    if (a8)
    {
      *a8 = *(a1 + 48);
    }
  }

  else
  {
    if (v9 != 1919706727 || a2 < 0x48 || *(a1 + 4) < 0x48u || (*a1 & 0x80000000) == 0)
    {
      return 0;
    }

    v10 = *(a1 + 24);
    if (v10 == 1)
    {
      goto LABEL_21;
    }

    if (v10 != 2)
    {
      return 0;
    }

    if (*(a1 + 55))
    {
LABEL_21:
      v11 = 0;
    }

    else
    {
      v11 = *(a1 + 44);
    }

    if (*(a1 + 39) != 1)
    {
      return 0;
    }

    v12 = *(a1 + 28);
    if (!v12)
    {
      return 0;
    }

    v13 = *(a1 + 40);
    if (v13 < 8)
    {
      return 0;
    }

    *a6 = *(a1 + 56);
    *a4 = *(a1 + 64);
    *a5 = v11;
  }

  v15 = v13 >> 3;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(a3, vcvtps_u32_f32(v15 / *(a3 + 32)));
  v16 = v12;
  do
  {
    v17 = *v16++;
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a3, v17);
    result = 1;
    --v15;
  }

  while (v15);
  return result;
}

uint64_t *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>(void *a1, unint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(a1, a2);
  if (result)
  {

    return std::__hash_table<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::__unordered_map_hasher<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,CA::OGL::Context::RenderObjectSlice::Hash,std::equal_to<CA::OGL::Context::RenderObjectSlice>,true>,std::__unordered_map_equal<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::equal_to<CA::OGL::Context::RenderObjectSlice>,CA::OGL::Context::RenderObjectSlice::Hash,true>,std::allocator<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>>>::erase(a1, result);
  }

  return result;
}

void CA::Render::Fence::send_rlfg_msg(uint64_t a1, int a2, uint64_t a3, uint64_t a4, double a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = *(a4 + 24);
  if (!v5)
  {
    __assert_rtn("send_rlfg_msg", "render-fence.cpp", 107, "!f_names.empty ()");
  }

  if ((a2 + 1) <= 1)
  {
    __assert_rtn("send_rlfg_msg", "render-fence.cpp", 108, "MACH_PORT_VALID (batch_port)");
  }

  v10 = a1;
  v11 = 8 * v5;
  if ((8 * v5) > 0x1000)
  {
    v12 = malloc_type_malloc(8 * v5, 0x42227E51uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v12 = &msg[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    bzero(v12, v11);
  }

  v13 = *(a4 + 16);
  if (v13)
  {
    v14 = v12;
    do
    {
      *v14++ = v13[2];
      v13 = *v13;
    }

    while (v13);
  }

  *msg = 0x4880000013;
  *&msg[8] = v10;
  *&msg[12] = xmmword_183E21770;
  v21 = v12;
  v15 = 8 * *(a4 + 24);
  v22 = 16777472;
  v23 = v15;
  v24 = a2;
  v25 = 0x13000000000000;
  v26 = a3;
  v27 = a5;
  v16 = mach_msg(msg, 17, 0x48u, 0, 0, 0x64u, 0);
  if (v16)
  {
    v17 = v16;
    if ((v16 - 268435459) <= 1)
    {
      mach_msg_destroy(msg);
    }

    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v18 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v29 = v17;
      _os_log_error_impl(&dword_183AA6000, v18, OS_LOG_TYPE_ERROR, "failed to send rlfg reply: %x\n", buf, 8u);
    }
  }

  if (v11 > 0x1000)
  {
    free(v12);
  }
}

uint64_t CA::fo_fences_released(void *a1, uint64_t a2, unsigned int a3, unint64_t a4, double a5)
{
  if (a1 && a1[4])
  {
    if (a3 - 1 >= 0xFFFFFFFE)
    {
      CA::Render::Fence::Transaction::Observer::notify_batch_handlers(a1);
    }

    else
    {
      v9 = [CABatchInfo _newInfoWithUnownedPort:a3 name:a4];
      CA::Render::Fence::Transaction::Observer::notify_batch_handlers(a1);
      if (v9)
      {
        os_unfair_lock_lock(&v9->_lock);
        v9->_invalidated = 1;
        os_unfair_lock_unlock(&v9->_lock);
      }
    }
  }

  return CA::Context::send_deferrals(0, 0, a2, a3, a5);
}

BOOL CA::Render::DeferredEncoder::retime(int8x8_t *this, double a2)
{
  v4 = this[15];
  v3 = this[16];
  if (*&v4 == *&v3)
  {
    v3 = this[15];
  }

  else
  {
    v6 = vdupq_n_s64(0x7FF8000000000000uLL);
    v20 = v6;
    do
    {
      v7 = this[19];
      if (v7)
      {
        v8 = **&v4;
        v9 = vcnt_s8(v7);
        v9.i16[0] = vaddlv_u8(v9);
        if (v9.u32[0] > 1uLL)
        {
          v10 = **&v4;
          if (v8 >= *&v7)
          {
            v10 = v8 % *&v7;
          }
        }

        else
        {
          v10 = (*&v7 - 1) & v8;
        }

        v11 = *(*&this[18] + 8 * v10);
        if (v11)
        {
          v12 = *v11;
          if (*v11)
          {
            do
            {
              v13 = v12[1];
              if (v13 == v8)
              {
                if (v12[2] == v8)
                {
                  v14 = CA::Render::TimingList::map_time(*(*&v4 + 16), *(*&v4 + 24) + a2);
                  v6 = v20;
                  *(*&v4 + 32) = v14;
                  *(*&this[3] + v12[3]) = v14;
                  v3 = this[16];
                  goto LABEL_20;
                }
              }

              else
              {
                if (v9.u32[0] > 1uLL)
                {
                  if (v13 >= *&v7)
                  {
                    v13 %= *&v7;
                  }
                }

                else
                {
                  v13 &= *&v7 - 1;
                }

                if (v13 != v10)
                {
                  break;
                }
              }

              v12 = *v12;
            }

            while (v12);
          }
        }
      }

      *(*&v4 + 24) = v6;
LABEL_20:
      *&v4 += 40;
    }

    while (*&v4 != *&v3);
  }

  if (this[21])
  {
    v15 = this[20];
    if (v15)
    {
      do
      {
        v16 = *v15;
        operator delete(v15);
        v15 = v16;
      }

      while (v16);
    }

    this[20] = 0;
    v17 = this[19];
    if (v17)
    {
      v18 = 0;
      do
      {
        *(*&this[18] + 8 * v18++) = 0;
      }

      while (*&v17 != v18);
    }

    this[21] = 0;
    v3 = this[16];
  }

  return *&this[15] != *&v3;
}

CA::OGL::Context *CA::OGL::fill_uneven_round_rect(CA::OGL::Context *result, uint64_t a2, double *a3, uint64_t a4)
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(*a2 + 16);
  if (v5 >= *(*a2 + 24))
  {
    v5 = *(*a2 + 24);
  }

  if (v5 > 0.0)
  {
    v7 = result;
    v8 = *a3;
    v9 = a3[2];
    if (*a3 == v9)
    {
      v10 = a3[1];
      v11 = a3[3];
      if (v10 == v11)
      {
        v12 = a3[4];
        if (v9 == v12)
        {
          v13 = a3[5];
          if (v11 == v13 && v12 == a3[6] && v13 == a3[7])
          {

            return CA::OGL::fill_round_rect(result, a2, 0xF, a4, v8, v10);
          }
        }
      }
    }

    v14 = *(a2 + 8);
    if ((*(v14 + 144) & 0x10) != 0)
    {
      v15.f64[0] = vaddvq_f64(vmulq_f64(*v14, *v14));
      v16 = vaddvq_f64(vmulq_f64(*(v14 + 32), *(v14 + 32)));
      v17 = *(v14 + 120);
      if (v17 != 1.0)
      {
        v18 = 1.0 / (v17 * v17);
        v15.f64[0] = v18 * v15.f64[0];
        v16 = v18 * v16;
      }

      v19 = v15.f64[0] != 1.0;
      if (v16 != 1.0)
      {
        v19 = 1;
      }

      v20 = sqrt(v15.f64[0]);
      v21 = sqrt(v16);
      if (v19)
      {
        v16 = v21;
        v15.f64[0] = v20;
      }
    }

    else
    {
      v15.f64[0] = *(v14 + 128);
      v16 = v15.f64[0];
    }

    v22 = a3 + 1;
    v23 = 0.0;
    v24 = 4;
    do
    {
      v25 = *(v22 - 1);
      v26 = *v22;
      if (v25 <= *v22)
      {
        v25 = *v22;
      }

      if (v23 <= v25)
      {
        v23 = v25;
      }

      v22 += 2;
      --v24;
    }

    while (v24);
    if (v15.f64[0] <= v16)
    {
      v27 = v16;
    }

    else
    {
      v27 = v15.f64[0];
    }

    v28 = v27 * v23;
    if (a4)
    {
      v28 = v28 * 1.528665;
    }

    v29 = COERCE_INT32X2_T(1.0);
    if (v28 < 1.0)
    {

      return CA::OGL::fill_rect(result, a2, a3);
    }

    v29.i32[0] = 0;
    v30 = 0;
    v15.f64[1] = v16;
    __asm { FMOV            V1.2D, #0.5 }

    v66 = v4[1];
    v67 = *v4;
    v72 = 0u;
    v73 = 0u;
    v36 = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(_Q1, v15)));
    __asm { FMOV            V0.2D, #1.0 }

    v38 = vdivq_f64(_Q0, v66);
    LODWORD(v26) = a4;
    v39 = vdup_lane_s32(vceq_s32(*&v26, v29), 0);
    v40 = vdup_n_s32(0x3FC3AB4Bu);
    do
    {
      v41 = vcvt_f32_f64(vmulq_f64(vbslq_s8(vcgtq_f64(*&a3[2 * v30], v36), *&a3[2 * v30], v36), v38));
      *(&v72 + v30++) = vbsl_s8(v39, v41, vmul_f32(v41, v40));
    }

    while (v30 != 4);
    v42 = *(result + 2);
    v43 = *(v42 + 16) & 0xFFFFFF00FF00FF00;
    if (*(v42 + 8) == 0x3C003C003C003C00)
    {
      v44 = 1;
    }

    else
    {
      v44 = 3;
    }

    *(v42 + 16) = v44 | v43;
    *(v42 + 20) = HIDWORD(v43);
    v71 = 0;
    if (a4)
    {
      v45.i64[0] = __PAIR64__(HIDWORD(v72), v72);
      v46.i64[0] = __PAIR64__(DWORD1(v73), DWORD2(v72));
      v46.i64[1] = __PAIR64__(DWORD1(v72), DWORD2(v73));
      v45.i64[1] = __PAIR64__(HIDWORD(v73), v73);
      v47 = vaddq_f32(v46, v45);
      v48 = vdupq_n_s64(0x400721E8A7A4B61BuLL);
      v49 = vsubq_f64(v48, vdivq_f64(v48, vcvt_hight_f64_f32(v47)));
      v50 = vsubq_f64(v48, vdivq_f64(v48, vcvtq_f64_f32(*v47.f32)));
      v51 = vbslq_s8(vcgtq_f64(v49, _Q0), _Q0, v49);
      v52 = vbslq_s8(vcgtq_f64(v50, _Q0), _Q0, v50);
      v70[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vbicq_s8(v52, vcltzq_f64(v52))), vbicq_s8(v51, vcltzq_f64(v51)));
      result = (*(*result + 536))(result, 0, &v72, &v71, a4, v70);
    }

    else
    {
      result = (*(*result + 528))(result, 0, &v72, &v71);
    }

    if ((*(v7 + 152) & 0xFFFFFFFC) == 0)
    {
      return result;
    }

    v53 = vaddq_f64(v66, v67);
    v54.f64[0] = v67.f64[0];
    v54.f64[1] = v53.f64[1];
    v70[4] = v54;
    v70[5] = xmmword_183E20E60;
    v55 = *(v7 + 136);
    v70[0] = v67;
    v70[1] = xmmword_183E20E60;
    v70[6] = v53;
    v70[7] = xmmword_183E20E60;
    v53.f64[1] = v67.f64[1];
    v70[2] = v53;
    v70[3] = xmmword_183E20E60;
    v56 = v71;
    *(v55 + 64) = HIDWORD(v71);
    *(v55 + 68) = v56;
    *(v55 + 16) = v56;
    *(v55 + 20) = v56;
    *(v55 + 160) = HIDWORD(v56);
    *(v55 + 164) = HIDWORD(v56);
    *(v55 + 112) = v56;
    v57 = *(*(v7 + 16) + 8);
    *(v55 + 32) = v57;
    *(v55 + 80) = v57;
    *(v55 + 128) = v57;
    *(v55 + 176) = v57;
    v58 = *(a2 + 24);
    if (v58)
    {
      v58(a2, v70, v55, 4);
    }

    CA::OGL::transform_vertices(v70, v55, 4, *(a2 + 8));
    v59 = *(a2 + 32);
    if (v59)
    {
      v59(a2, v55, 4);
    }

    v60 = *(a2 + 20);
    if ((v60 & 0xF) == 0 || (*(a2 + 16) & 9) == 0)
    {
      goto LABEL_57;
    }

    if ((v60 & 4) != 0)
    {
      CA::OGL::aa_adjust_vertices(v55, (v55 + 96), 48, 2);
      v60 = *(a2 + 20);
      if ((v60 & 8) == 0)
      {
LABEL_54:
        if ((v60 & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_61;
      }
    }

    else if ((v60 & 8) == 0)
    {
      goto LABEL_54;
    }

    CA::OGL::aa_adjust_vertices((v55 + 96), v55, 48, 2);
    v60 = *(a2 + 20);
    if ((v60 & 1) == 0)
    {
LABEL_55:
      if ((v60 & 2) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

LABEL_61:
    CA::OGL::aa_adjust_vertices(v55, (v55 + 48), 96, 2);
    if ((*(a2 + 20) & 2) == 0)
    {
LABEL_57:
      v61 = CA::OGL::Context::need_transparent_source(v7);
      CA::OGL::emit_quad_indices(v7, *(a2 + 40), CA::OGL::fill_uneven_round_rect(CA::OGL::Context &,CA::OGL::RectState const&,CA::Vec2<double> *,unsigned int)::indices, 4uLL, 4u);
      result = (*(*v7 + 560))(v7, 0, 0);
      *(*(v7 + 16) + 16) = 0;
      if (v61)
      {
        v62 = vcvtq_f64_f32(*(v55 + 8));
        v69[0] = vcvtq_f64_f32(*v55);
        v69[1] = v62;
        v63 = vcvtq_f64_f32(*(v55 + 56));
        v69[2] = vcvtq_f64_f32(*(v55 + 48));
        v69[3] = v63;
        v64 = vcvtq_f64_f32(*(v55 + 152));
        v69[4] = vcvtq_f64_f32(*(v55 + 144));
        v69[5] = v64;
        v65 = vcvtq_f64_f32(*(v55 + 104));
        v69[6] = vcvtq_f64_f32(*(v55 + 96));
        v69[7] = v65;
        v68 = 0;
        return CA::OGL::emit_quad_surround(v7, v69, &v68);
      }

      return result;
    }

LABEL_56:
    CA::OGL::aa_adjust_vertices((v55 + 48), v55, 96, 2);
    goto LABEL_57;
  }

  return result;
}

uint64_t CA::Layer::run_deferred_animation_callbacks(uint64_t this, double a2, const CA::Render::DeferredEncoder *a3)
{
  if ((byte_1ED4E9889 & 1) == 0)
  {
    if (*(this + 120) != *(this + 128))
    {
      operator new();
    }

    __assert_rtn("run_deferred_animation_callbacks", "CALayer.mm", 8552, "!timing_infos.empty ()");
  }

  return this;
}

void sub_183BF3290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21)
{
  if (a19 != a21)
  {
    free(a19);
  }

  if (v21)
  {
    MEMORY[0x1865EA9A0](v21, 0x20C40960023A9);
  }

  _Unwind_Resume(exception_object);
}

void CA::Render::DeferredEncoder::~DeferredEncoder(CA::Render::DeferredEncoder *this)
{
  *this = &unk_1EF1FFEC8;
  v2 = *(this + 15);
  for (i = *(this + 16); v2 != i; v2 += 40)
  {
    v4 = *(v2 + 16);
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
    }
  }

  v5 = *(this + 20);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(this + 18);
  *(this + 18) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 15);
  if (v8)
  {
    *(this + 16) = v8;
    operator delete(v8);
  }

  CA::Render::Encoder::~Encoder(this);
}

{
  CA::Render::DeferredEncoder::~DeferredEncoder(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::Render::TimingList::~TimingList(CA::Render::TimingList *this, const CA::Render::Object *a2)
{
  CA::Render::TimingList::~TimingList(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF201618;
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3;
      if (atomic_fetch_add((*v3 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      v3 += 8;
    }

    while (v3 != v4);
    v3 = *(this + 2);
  }

  if (v3 != *(this + 4))
  {
    free(v3);
  }

  --dword_1ED4EAB24;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

void *find_state(NSArray *a1, NSString *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSArray *)a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v12;
LABEL_4:
  v7 = 0;
  while (1)
  {
    if (*v12 != v6)
    {
      objc_enumerationMutation(a1);
    }

    v8 = *(*(&v11 + 1) + 8 * v7);
    if ([objc_msgSend(v8 "name")])
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [(NSArray *)a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
      v8 = 0;
      if (v5)
      {
        goto LABEL_4;
      }

      return v8;
    }
  }
}

void CA::Render::anonymous namespace::Compressor::add_rect(CA::Render::_anonymous_namespace_::Compressor *this, double a2, double a3, double a4, double a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 <= a4)
  {
    v6 = a2;
  }

  else
  {
    v6 = a4;
  }

  if (a2 <= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a2;
  }

  if (a3 <= a5)
  {
    v8 = a3;
  }

  else
  {
    v8 = a5;
  }

  if (a3 <= a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = a3;
  }

  v10 = vabdd_f64(v8, v9);
  if (vabdd_f64(v6, v7) >= 0.000001)
  {
    if (v10 >= 0.000001)
    {
      v16 = *this + v7;
      *&v18 = v6 - *this;
      *(&v18 + 1) = v16;
      v17 = *this;
      *&v18 = v8 - *this;
      *(&v18 + 1) = v17 + v9;
      v13 = this + 104;
    }

    else
    {
      *&v18 = v6;
      *(&v18 + 1) = v7;
      v14 = *this + v6;
      *&v18 = v6 - *this;
      *(&v18 + 1) = v14;
      v15 = *this + v7;
      *&v18 = v7 - *this;
      *(&v18 + 1) = v15;
      v13 = this + 56;
    }
  }

  else
  {
    if (v10 < 0.000001)
    {
      return;
    }

    *&v18 = v8;
    *(&v18 + 1) = v9;
    v11 = *this + v8;
    *&v18 = v8 - *this;
    *(&v18 + 1) = v11;
    v12 = *this + v9;
    *&v18 = v9 - *this;
    *(&v18 + 1) = v12;
    v13 = this + 104;
  }
}

uint64_t CA::fo_completed(CA::Render::Fence::Transaction::Observer *a1, uint64_t a2)
{
  v4 = mach_absolute_time();
  v5 = CATimeWithHostTime(v4);
  result = CA::fo_fences_released(a1, a2, 0, 0, v5);
  if (a1)
  {
    CA::Render::Fence::Transaction::Observer::~Observer(a1);

    JUMPOUT(0x1865EA9A0);
  }

  return result;
}

void *find_transition(NSArray *a1, __CFString *a2, __CFString *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = &stru_1EF20BE80;
  }

  v13 = 0u;
  v14 = 0u;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = &stru_1EF20BE80;
  }

  v15 = 0uLL;
  v16 = 0uLL;
  v6 = [(NSArray *)a1 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v14;
LABEL_9:
  v9 = 0;
  while (1)
  {
    if (*v14 != v8)
    {
      objc_enumerationMutation(a1);
    }

    v10 = *(*(&v13 + 1) + 8 * v9);
    if ([objc_msgSend(v10 "fromState")])
    {
      if ([objc_msgSend(v10 "toState")])
      {
        return v10;
      }
    }

    if (v7 == ++v9)
    {
      v7 = [(NSArray *)a1 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        goto LABEL_9;
      }

      return 0;
    }
  }
}

void std::vector<CA::Render::anonymous namespace::Interval>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = (v4 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v11 = (16 * v7);
    v12 = &v11[-((v4 - *a1) >> 4)];
    *v11 = *a2;
    v5 = v11 + 1;
    if (v6 != v4)
    {
      v13 = v6;
      v14 = v12;
      do
      {
        v15 = *v13++;
        *v14++ = v15;
      }

      while (v13 != v4);
    }

    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void CA::Render::anonymous namespace::Compressor::closepath(CA::Render::_anonymous_namespace_::Compressor *this)
{
  v2 = (this + 128);
  v3 = *(this + 16);
  v4 = (this + 144);
  v5 = *(this + 18);
  v6 = *(this + 17);
  v7 = *(this + 19);
  if (v3 == v5 && v6 == v7)
  {
    if ((*(this + 160) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *v2 = *v4;
  }

  ++*(this + 3);
  *(this + 160) = 0;
}

void CA::Render::Fence::Transaction::Observer::~Observer(CA::Render::Fence::Transaction::Observer *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 2));
    *(this + 2) = 0;
  }

  if (*(this + 1))
  {
    dispatch_mach_cancel();
    dispatch_release(*(this + 1));
    *(this + 1) = 0;
  }

  v3 = *(this + 6);
  if (v3 && *(this + 28) == 1)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], v3, 1u, -1);
  }

  *(this + 28) = 0;
  *(this + 6) = 0;
  if (*(this + 4))
  {
    CA::Render::Fence::Transaction::Observer::free_batch_handlers(this);
  }
}

void CA::add_timer(CA *this, void *a2)
{
  Current = CFRunLoopGetCurrent();
  v4 = *MEMORY[0x1E695E8D0];

  CFRunLoopAddTimer(Current, this, v4);
}

uint64_t CA::ScanConverter::Path::cubeto(CA::ScanConverter::Path *this, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (*(this + 10) != 1.0)
  {
    return CA::ScanConverter::Path::cubeto(this, a2, a3, 1.0, a4, a5, 1.0, a6, a7, a8, a9, a10, a11, a12, a13, a14, 1.0);
  }

  v18 = *(this + 8);
  v19 = *(this + 9);
  *(this + 8) = a6;
  *(this + 9) = a7;

  return CA::ScanConverter::Path::add_cube(this, v18, v19, a2, a3, a4, a5, a6, a7);
}

void CA::Render::anonymous namespace::flatten_intervals(uint64_t a1, uint64_t *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a2[1];
  v6 = 126 - 2 * __clz((v5 - v4) >> 4);
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v15[0] = 0;
  v9 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    v10 = (v9 + 8);
    v11 = 1;
    v12 = 0.0;
    while (1)
    {
      if ((v11 & 1) == 0)
      {
        if (*(v10 - 1) <= v12)
        {
          if (v12 <= *v10)
          {
            v13 = v10;
          }

          else
          {
            v13 = v15;
          }

          goto LABEL_13;
        }

        std::vector<double>::push_back[abi:nn200100](a1, v15);
      }

      std::vector<double>::push_back[abi:nn200100](a1, v10 - 1);
      v13 = (v9 + 8);
      v8 = a2[1];
LABEL_13:
      v11 = 0;
      v12 = *v13;
      *v15 = *v13;
      v9 += 16;
      v14 = v10 + 1;
      v10 += 2;
      if (v14 == v8)
      {
        std::vector<double>::push_back[abi:nn200100](a1, v15);
        return;
      }
    }
  }
}

void std::vector<double>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
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
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void CA::ScanConverter::render_mask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v9;
  v225[1020] = *MEMORY[0x1E69E9840];
  v215 = v22;
  v23 = *(v9 + 24);
  v24 = 32 * v23;
  v218 = v21 - v16 - v14 * v22;
  if (a9)
  {
    if ((32 * v23) > 0x1000)
    {
      v25 = malloc_type_malloc(32 * v23, 0x25DB91DBuLL);
      if (!v25)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v9);
      v25 = &v211 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v25, 32 * v23);
    }

    v213 = 32 * v23;
    v27 = *(v20 + 8);
    if (v27)
    {
      v28 = 0;
      do
      {
        v29 = v27[1];
        if (v29)
        {
          v30 = (v27 + 3);
          v31 = &v25[16 * v28 + 8];
          v28 += v29;
          v32 = (v27 + 3);
          do
          {
            v33 = *v32;
            v32 += 6;
            *(v31 - 2) = ((v33 >> 31) | 0x80000000) ^ v33;
            *v31 = v30;
            v31 += 16;
            v30 = v32;
            --v29;
          }

          while (v29);
        }

        v27 = *v27;
      }

      while (v27);
    }

    v34 = &v25[16 * v23];
    v212 = v25;
    CA::radix_sort(v23);
    if (v17 <= -16777216)
    {
      v37 = -16777216;
    }

    else
    {
      v37 = v17;
    }

    v216 = v37;
    if (v13 >= 0x1000000)
    {
      v13 = 0x1000000;
    }

    if (v15 <= -16777216)
    {
      v38 = -16777216;
    }

    else
    {
      v38 = v15;
    }

    v222 = 0;
    v223 = v225;
    if (v11 >= 0x1000000)
    {
      v39 = 0x1000000;
    }

    else
    {
      v39 = v11;
    }

    v224 = xmmword_183E210D0;
    v220 = 0;
    v221 = &v222;
    v217 = v39;
    if (v38 < v39)
    {
      v40 = 0;
      v41 = v212;
      v214 = v218 + v216;
      while (1)
      {
        v42 = v220;
        if (v220)
        {
          v43 = v38;
          v44 = v38 + 1;
          v45 = (v38 + 1);
          v46 = &v220;
          do
          {
            v47 = *(v42 + 16);
            v48 = v47[1];
            if (v48 <= v43)
            {
              *v46 = *v42;
              *v42 = v40;
              v40 = v42;
            }

            else
            {
              v49 = *v47;
              if (*v47 >= v43)
              {
                v50 = *v47;
              }

              else
              {
                v50 = v38;
              }

              if (v48 > v45)
              {
                v48 = v44;
              }

              v51 = v47[2];
              v52 = v47[3];
              v53 = v47[4];
              v54 = v53 + ((v52 + ((v50 - v49) * v51)) * (v50 - v49));
              v55 = v53 + ((v52 + ((v48 - v49) * v51)) * (v48 - v49));
              if (v54 >= v55)
              {
                v56 = v55;
              }

              else
              {
                v56 = v54;
              }

              if (v54 > v55)
              {
                v55 = v54;
              }

              *v36.i32 = fmaxf(v55 - v56, 0.000001);
              v36 = vrecpe_f32(vdup_lane_s32(v36, 0));
              *(v42 + 28) = v56;
              *(v42 + 32) = v55;
              *(v42 + 24) = v47[5] * (v48 - v50);
              *(v42 + 36) = v36.i32[0];
              v46 = v42;
            }

            v42 = *v46;
          }

          while (*v46);
          v57 = v220;
          if (v220)
          {
            v58 = 0;
            v59 = &v220;
            do
            {
              while (1)
              {
                v60 = v59;
                v59 = v57;
                v57 = *v57;
                if (!v57)
                {
                  break;
                }

                if (*(v59 + 7) > *(v57 + 7))
                {
                  *v60 = v57;
                  *v59 = *v57;
                  *v57 = v59;
                  v58 = 1;
                }
              }

              v57 = v220;
              v61 = v58 & (v220 != 0);
              v59 = &v220;
              v58 = 0;
            }

            while ((v61 & 1) != 0);
          }
        }

        else
        {
          v44 = v38 + 1;
          v45 = (v38 + 1);
        }

        LODWORD(v218) = v44;
        if (v41 >= v34)
        {
          goto LABEL_81;
        }

        v62 = 0;
        v63 = 0;
        v64 = v38;
        do
        {
          v65 = *(v41 + 1);
          v66 = *v65;
          if (*v65 >= v45)
          {
            break;
          }

          v67 = v65[1];
          if (v67 > v64)
          {
            if (v40)
            {
              v68 = *v40;
            }

            else
            {
              v40 = x_heap_malloc_small_(v221, 0x28uLL);
              v68 = 0;
              v65 = *(v41 + 1);
              v66 = *v65;
              v67 = v65[1];
            }

            *(v40 + 16) = v65;
            if (v66 >= v64)
            {
              v69 = v66;
            }

            else
            {
              v69 = v38;
            }

            if (v67 > v45)
            {
              v67 = v45;
            }

            v70 = v65[2];
            v71 = v65[3];
            v72 = v65[4];
            v73 = v72 + ((v71 + ((v69 - v66) * v70)) * (v69 - v66));
            v74 = v72 + ((v71 + ((v67 - v66) * v70)) * (v67 - v66));
            if (v73 >= v74)
            {
              v75 = v74;
            }

            else
            {
              v75 = v73;
            }

            if (v73 > v74)
            {
              v74 = v73;
            }

            v35.f32[0] = fmaxf(v74 - v75, 0.000001);
            v35 = vdup_lane_s32(v35, 0);
            *(v40 + 28) = v75;
            *(v40 + 32) = v74;
            *(v40 + 24) = v65[5] * (v67 - v69);
            *(v40 + 36) = vrecpe_f32(v35).u32[0];
            *v40 = v63;
            ++v62;
            v63 = v40;
            v40 = v68;
          }

          v41 += 16;
        }

        while (v41 < v34);
        if (!v62)
        {
          goto LABEL_81;
        }

        if (v62 != 1)
        {
          v63 = CA::ScanConverter::RendererImpl::Edge::sort_xmin(v63, v62);
        }

        v76 = &v220;
        if (v63)
        {
          break;
        }

LABEL_78:
        if (!*v76)
        {
          v63 = 0;
LABEL_80:
          *v76 = v63;
        }

LABEL_81:
        v79 = v220;
        if (v220)
        {
          if (v216 < v13)
          {
            v80 = 0;
            v81 = (v214 + v38 * v215);
            v82 = 0.0;
            for (i = v216; ; i = v92)
            {
              for (j = i; v80; v80 = *(v80 + 8))
              {
                if (*(v80 + 32) > j)
                {
                  break;
                }

                v82 = *(v80 + 24) + v82;
              }

              v85 = j + 1.0;
              v219 = v80;
              if (v79)
              {
                break;
              }

LABEL_105:
              v79 = 0;
              v92 = v13;
              if (!v80)
              {
                goto LABEL_138;
              }

LABEL_108:
              v93 = 1.0;
              v94 = v82;
              do
              {
                v95 = v80;
                v96 = *(v80 + 28);
                if (v96 >= j)
                {
                  v97 = *(v80 + 28);
                }

                else
                {
                  v97 = i;
                }

                v98 = *(v80 + 32);
                if (v98 > v85)
                {
                  v98 = j + 1.0;
                }

                v94 = v94 + ((*(v80 + 24) * v93) * ((v85 - v98) + (((v97 - v98) * *(v80 + 36)) * (v96 + ((v98 + v97) * -0.5)))));
                v80 = *(v80 + 8);
                if (v19 == 1)
                {
                  if (!v80)
                  {
                    v101 = fabsf(v94);
                    goto LABEL_124;
                  }

                  v99 = *(v95 + 16);
                  v100 = *(v80 + 16);
                  if (v99[5] == v100[5] && *v99 != v100[1] && v99[1] != *v100)
                  {
                    v93 = -v93;
                  }
                }
              }

              while (v80);
              v101 = fabsf(v94);
              if (!v19)
              {
                v102 = fminf(v101, 1.0);
                goto LABEL_126;
              }

LABEL_124:
              v103 = v101;
              v102 = v101 - truncf(v101);
              if (v103)
              {
                v102 = 1.0 - v102;
              }

LABEL_126:
              v92 = i + 1;
              *v81++ = (v102 * 255.99);
LABEL_165:
              if (v92 >= v13)
              {
                goto LABEL_167;
              }

              v80 = v219;
            }

            while (1)
            {
LABEL_88:
              v86 = v79;
              v87 = v79[7];
              if (v85 <= v87)
              {
                v80 = v219;
                if (v219)
                {
                  goto LABEL_108;
                }

                v104 = floorf(v87);
                v105 = v104;
                if (v104 < -16777000.0)
                {
                  v105 = -16777216;
                }

                v106 = 16777000.0;
                if (v87 < 16777000.0)
                {
                  v106 = v79[7];
                }

                if (v87 >= 0.0)
                {
                  v105 = v106;
                }

                if (v105 >= v13)
                {
                  v105 = v13;
                }

                if ((LODWORD(v87) & 0x7FFFFFFFu) >= 0x7F800000)
                {
                  v92 = v13;
                }

                else
                {
                  v92 = v105;
                }

LABEL_138:
                v107 = fabsf(v82);
                if (v19)
                {
                  v108 = v107;
                  v107 = v107 - truncf(v107);
                  if (v108)
                  {
                    v107 = 1.0 - v107;
                  }

LABEL_143:
                  v109 = v92 - i;
                  if (v107 == 0.0)
                  {
LABEL_164:
                    v81 += v109;
                    goto LABEL_165;
                  }
                }

                else
                {
                  if (v107 < 1.0)
                  {
                    goto LABEL_143;
                  }

                  v109 = v92 - i;
                  v107 = 1.0;
                }

                v110 = (v107 * 255.99);
                v111 = v109;
                if (v109 <= 8)
                {
                  if (v109)
                  {
                    memset(v81, v110, v109);
                  }

                  goto LABEL_164;
                }

                v112 = v81;
                if (v81)
                {
                  *v81 = v110;
                  v112 = v81 + 1;
                  v111 = v109 - 1;
                }

                v113 = v110 | (v110 << 8);
                if ((v112 & 2) != 0)
                {
                  *v112++ = v113;
                  v111 -= 2;
                }

                v114 = v113 | (v113 << 16);
                if ((v112 & 4) != 0)
                {
                  *v112 = v114;
                  v112 += 2;
                  v111 -= 4;
                }

                if (v111 >= 8)
                {
                  do
                  {
                    *v112 = v114 | (v114 << 32);
                    v112 += 4;
                    v111 -= 8;
                  }

                  while (v111 > 7);
                }

                v115 = v111 - 4;
                if (v111 >= 4)
                {
                  *v112 = v114;
                  v112 += 2;
                  LODWORD(v111) = v111 - 4;
                  if ((v115 & 2) == 0)
                  {
                    goto LABEL_157;
                  }
                }

                else if ((v111 & 2) == 0)
                {
LABEL_157:
                  if ((v111 & 1) == 0)
                  {
                    goto LABEL_164;
                  }

LABEL_163:
                  *v112 = v110;
                  goto LABEL_164;
                }

                *v112++ = v113;
                if (((v111 - 2) & 1) == 0)
                {
                  goto LABEL_164;
                }

                goto LABEL_163;
              }

              v79 = *v79;
              v88 = v86[8];
              if (v88 <= j)
              {
                v82 = v86[6] + v82;
                if (v79)
                {
                  continue;
                }

LABEL_104:
                v80 = v219;
                goto LABEL_105;
              }

              v89 = v219;
              if (v219)
              {
                break;
              }

              v90 = &v219;
LABEL_101:
              *v90 = v86;
              *(v86 + 1) = 0;
              if (!v79)
              {
                goto LABEL_104;
              }
            }

            v90 = &v219;
            while (1)
            {
              v91 = *(v89 + 32);
              if (SLODWORD(v88) == SLODWORD(v91))
              {
                if (v87 < *(v89 + 28))
                {
                  goto LABEL_103;
                }
              }

              else if (v88 < v91)
              {
LABEL_103:
                *(v86 + 1) = v89;
                *v90 = v86;
                if (!v79)
                {
                  goto LABEL_104;
                }

                goto LABEL_88;
              }

              v90 = (v89 + 8);
              v89 = *(v89 + 8);
              if (!v89)
              {
                goto LABEL_101;
              }
            }
          }

LABEL_167:
          v116 = v218;
        }

        else
        {
          if (v41 == v34)
          {
            goto LABEL_341;
          }

          v117 = vcvtms_s32_f32(**(v41 + 1));
          if (v38 <= v117)
          {
            v116 = v117;
          }

          else
          {
            v116 = v38;
          }
        }

        v38 = v116;
        if (v116 >= v217)
        {
          goto LABEL_341;
        }
      }

      while (1)
      {
        v77 = *v76;
        if (!*v76)
        {
          goto LABEL_80;
        }

        if (*(v63 + 28) >= *(v77 + 7))
        {
          v76 = *v76;
          if (!v63)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v78 = *v63;
          *v76 = v63;
          *v63 = v77;
          v63 = v78;
          if (!v78)
          {
            goto LABEL_78;
          }
        }
      }
    }

    goto LABEL_341;
  }

  if ((32 * v23) > 0x1000)
  {
    v26 = malloc_type_malloc(32 * v23, 0x25DB91DBuLL);
    if (!v26)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    v26 = &v211 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v26, 32 * v23);
  }

  v213 = 32 * v23;
  v118 = *(v20 + 8);
  if (v118)
  {
    v119 = 0;
    do
    {
      v120 = v118[1];
      if (v120)
      {
        v121 = (v118 + 3);
        v122 = &v26[16 * v119 + 8];
        v119 += v120;
        v123 = (v118 + 3);
        do
        {
          v124 = *v123;
          v123 += 6;
          *(v122 - 2) = ((v124 >> 31) | 0x80000000) ^ v124;
          *v122 = v121;
          v122 += 16;
          v121 = v123;
          --v120;
        }

        while (v120);
      }

      v118 = *v118;
    }

    while (v118);
  }

  v125 = &v26[16 * v23];
  v212 = v26;
  CA::radix_sort(v23);
  if (v17 <= -16777216)
  {
    v128 = -16777216;
  }

  else
  {
    v128 = v17;
  }

  v216 = v128;
  if (v13 >= 0x1000000)
  {
    v13 = 0x1000000;
  }

  if (v15 <= -16777216)
  {
    v129 = -16777216;
  }

  else
  {
    v129 = v15;
  }

  v222 = 0;
  v223 = v225;
  if (v11 >= 0x1000000)
  {
    v130 = 0x1000000;
  }

  else
  {
    v130 = v11;
  }

  v224 = xmmword_183E210D0;
  v220 = 0;
  v221 = &v222;
  v217 = v130;
  if (v129 < v130)
  {
    v131 = 0;
    v132 = &xmmword_183E21000;
    v133 = v212;
    v214 = v218 + v216;
    while (1)
    {
      v134 = v220;
      if (v220)
      {
        v135 = v129;
        v136 = v129 + 1;
        v137 = (v129 + 1);
        v138 = &v220;
        do
        {
          v139 = *(v134 + 16);
          v140 = v139[1];
          if (v140 <= v135)
          {
            *v138 = *v134;
            *v134 = v131;
            v131 = v134;
          }

          else
          {
            v141 = *v139;
            if (*v139 >= v135)
            {
              v142 = *v139;
            }

            else
            {
              v142 = v129;
            }

            if (v140 > v137)
            {
              v140 = v136;
            }

            v143 = v139[2];
            v144 = v139[3];
            v145 = v139[4];
            v146 = v145 + ((v144 + ((v142 - v141) * v143)) * (v142 - v141));
            v147 = v145 + ((v144 + ((v140 - v141) * v143)) * (v140 - v141));
            if (v146 >= v147)
            {
              v148 = v147;
            }

            else
            {
              v148 = v146;
            }

            if (v146 > v147)
            {
              v147 = v146;
            }

            *v127.i32 = fmaxf(v147 - v148, 0.000001);
            v127 = vrecpe_f32(vdup_lane_s32(v127, 0));
            *(v134 + 28) = v148;
            *(v134 + 32) = v147;
            *(v134 + 24) = v139[5] * (v140 - v142);
            *(v134 + 36) = v127.i32[0];
            v138 = v134;
          }

          v134 = *v138;
        }

        while (*v138);
        v149 = v220;
        if (v220)
        {
          v150 = 0;
          v151 = &v220;
          do
          {
            while (1)
            {
              v152 = v151;
              v151 = v149;
              v149 = *v149;
              if (!v149)
              {
                break;
              }

              if (*(v151 + 7) > *(v149 + 7))
              {
                *v152 = v149;
                *v151 = *v149;
                *v149 = v151;
                v150 = 1;
              }
            }

            v149 = v220;
            v153 = v150 & (v220 != 0);
            v151 = &v220;
            v150 = 0;
          }

          while ((v153 & 1) != 0);
        }
      }

      else
      {
        v136 = v129 + 1;
        v137 = (v129 + 1);
      }

      LODWORD(v218) = v136;
      if (v133 >= v125)
      {
        goto LABEL_249;
      }

      v154 = 0;
      v155 = 0;
      v156 = v129;
      do
      {
        v157 = *(v133 + 1);
        v158 = *v157;
        if (*v157 >= v137)
        {
          break;
        }

        v159 = v157[1];
        if (v159 > v156)
        {
          if (v131)
          {
            v160 = *v131;
          }

          else
          {
            v161 = x_heap_malloc_small_(v221, 0x28uLL);
            v132 = &xmmword_183E21000;
            v131 = v161;
            v160 = 0;
            v157 = *(v133 + 1);
            v158 = *v157;
            v159 = v157[1];
          }

          *(v131 + 16) = v157;
          if (v158 >= v156)
          {
            v162 = v158;
          }

          else
          {
            v162 = v129;
          }

          if (v159 > v137)
          {
            v159 = v137;
          }

          v163 = v157[2];
          v164 = v157[3];
          v165 = v157[4];
          v166 = v165 + ((v164 + ((v162 - v158) * v163)) * (v162 - v158));
          v167 = v165 + ((v164 + ((v159 - v158) * v163)) * (v159 - v158));
          if (v166 >= v167)
          {
            v168 = v167;
          }

          else
          {
            v168 = v166;
          }

          if (v166 > v167)
          {
            v167 = v166;
          }

          v126.f32[0] = fmaxf(v167 - v168, 0.000001);
          v126 = vdup_lane_s32(v126, 0);
          *(v131 + 28) = v168;
          *(v131 + 32) = v167;
          *(v131 + 24) = v157[5] * (v159 - v162);
          *(v131 + 36) = vrecpe_f32(v126).u32[0];
          *v131 = v155;
          ++v154;
          v155 = v131;
          v131 = v160;
        }

        v133 += 16;
      }

      while (v133 < v125);
      if (!v154)
      {
        goto LABEL_249;
      }

      if (v154 != 1)
      {
        v169 = CA::ScanConverter::RendererImpl::Edge::sort_xmin(v155, v154);
        v132 = &xmmword_183E21000;
        v155 = v169;
      }

      v170 = &v220;
      if (v155)
      {
        break;
      }

LABEL_246:
      if (!*v170)
      {
        v155 = 0;
LABEL_248:
        *v170 = v155;
      }

LABEL_249:
      v173 = v220;
      if (v220)
      {
        if (v216 < v13)
        {
          v174 = 0;
          v175 = (v214 + v129 * v215);
          v176 = 0.0;
          for (k = v216; ; k = v186)
          {
            for (m = k; v174; v174 = *(v174 + 8))
            {
              if (*(v174 + 32) > m)
              {
                break;
              }

              v176 = *(v174 + 24) + v176;
            }

            v179 = m + 1.0;
            v219 = v174;
            if (!v173)
            {
LABEL_273:
              v173 = 0;
              v186 = v13;
              if (v174)
              {
LABEL_280:
                v192 = 1.0;
                v193 = v176;
                do
                {
                  v194 = v174;
                  v195 = *(v174 + 28);
                  if (v195 >= m)
                  {
                    v196 = *(v174 + 28);
                  }

                  else
                  {
                    v196 = k;
                  }

                  v197 = *(v174 + 32);
                  if (v197 > v179)
                  {
                    v197 = m + 1.0;
                  }

                  v193 = v193 + ((*(v174 + 24) * v192) * ((v179 - v197) + (((v196 - v197) * *(v174 + 36)) * (v195 + ((v197 + v196) * -0.5)))));
                  v174 = *(v174 + 8);
                  if (v19 == 1)
                  {
                    if (!v174)
                    {
                      goto LABEL_294;
                    }

                    v198 = *(v194 + 16);
                    v199 = *(v174 + 16);
                    if (v198[5] == v199[5] && *v198 != v199[1] && v198[1] != *v199)
                    {
                      v192 = -v192;
                    }
                  }
                }

                while (v174);
                if (v19)
                {
LABEL_294:
                  v200 = fabsf(v193);
                  v201 = v200;
                  v202 = v200 - truncf(v200);
                  if (v201)
                  {
                    v202 = 1.0 - v202;
                  }

                  v203 = v202 > 0.0;
                  goto LABEL_299;
                }

                v203 = v193 < 0.0;
                if (v193 > 0.0)
                {
                  v203 = 1;
                }

LABEL_299:
                v186 = k + 1;
                *v175++ = (v203 * *(v132 + 659));
                goto LABEL_333;
              }

              if (!v19)
              {
                goto LABEL_312;
              }

LABEL_275:
              v187 = fabsf(v176);
              v188 = v187;
              v189 = v187 - truncf(v187);
              if (v188)
              {
                v189 = 1.0 - v189;
              }

              LODWORD(v190) = v186 - k;
              if (v189 <= 0.0)
              {
                goto LABEL_278;
              }

LABEL_313:
              v191 = v190;
              if (v190 <= 8)
              {
                if (v186 != k)
                {
                  memset(v175, 255, v190);
                  v132 = &xmmword_183E21000;
                }

                goto LABEL_332;
              }

              v207 = v175;
              v190 = v190;
              if ((v175 & 1) == 0)
              {
                if ((v175 & 2) == 0)
                {
                  goto LABEL_316;
                }

LABEL_327:
                *v207++ = -1;
                v190 -= 2;
                if ((v207 & 4) == 0)
                {
                  goto LABEL_318;
                }

LABEL_317:
                *v207 = -1;
                v207 += 2;
                v190 -= 4;
                goto LABEL_318;
              }

              *v175 = -1;
              v207 = v175 + 1;
              v190 = v190 - 1;
              if (((v175 + 1) & 2) != 0)
              {
                goto LABEL_327;
              }

LABEL_316:
              if ((v207 & 4) != 0)
              {
                goto LABEL_317;
              }

LABEL_318:
              if (v190 >= 8)
              {
                do
                {
                  *v207 = -1;
                  v207 += 4;
                  v190 -= 8;
                }

                while (v190 > 7);
              }

              v208 = v190 - 4;
              if (v190 >= 4)
              {
                *v207 = -1;
                v207 += 2;
                LODWORD(v190) = v190 - 4;
                if ((v208 & 2) == 0)
                {
                  goto LABEL_322;
                }
              }

              else if ((v190 & 2) == 0)
              {
LABEL_322:
                if ((v190 & 1) == 0)
                {
                  goto LABEL_332;
                }

LABEL_331:
                *v207 = -1;
                goto LABEL_332;
              }

              *v207++ = -1;
              if (((v190 - 2) & 1) == 0)
              {
                goto LABEL_332;
              }

              goto LABEL_331;
            }

LABEL_256:
            while (1)
            {
              v180 = v173;
              v181 = v173[7];
              if (v179 <= v181)
              {
                break;
              }

              v173 = *v173;
              v182 = v180[8];
              if (v182 <= m)
              {
                v176 = v180[6] + v176;
                if (v173)
                {
                  continue;
                }

LABEL_272:
                v174 = v219;
                goto LABEL_273;
              }

              v183 = v219;
              if (v219)
              {
                v184 = &v219;
                while (1)
                {
                  v185 = *(v183 + 32);
                  if (SLODWORD(v182) == SLODWORD(v185))
                  {
                    if (v181 < *(v183 + 28))
                    {
                      goto LABEL_271;
                    }
                  }

                  else if (v182 < v185)
                  {
LABEL_271:
                    *(v180 + 1) = v183;
                    *v184 = v180;
                    if (!v173)
                    {
                      goto LABEL_272;
                    }

                    goto LABEL_256;
                  }

                  v184 = (v183 + 8);
                  v183 = *(v183 + 8);
                  if (!v183)
                  {
                    goto LABEL_269;
                  }
                }
              }

              v184 = &v219;
LABEL_269:
              *v184 = v180;
              *(v180 + 1) = 0;
              if (!v173)
              {
                goto LABEL_272;
              }
            }

            v174 = v219;
            if (v219)
            {
              goto LABEL_280;
            }

            v204 = floorf(v181);
            v205 = v204;
            if (v204 < -16777000.0)
            {
              v205 = -16777216;
            }

            v206 = 16777000.0;
            if (v181 < 16777000.0)
            {
              v206 = v173[7];
            }

            if (v181 >= 0.0)
            {
              v205 = v206;
            }

            if (v205 >= v13)
            {
              v205 = v13;
            }

            if ((LODWORD(v181) & 0x7FFFFFFFu) >= 0x7F800000)
            {
              v186 = v13;
            }

            else
            {
              v186 = v205;
            }

            if (v19)
            {
              goto LABEL_275;
            }

LABEL_312:
            LODWORD(v190) = v186 - k;
            if (v176 != 0.0)
            {
              goto LABEL_313;
            }

LABEL_278:
            v191 = v190;
LABEL_332:
            v175 += v191;
LABEL_333:
            if (v186 >= v13)
            {
              break;
            }

            v174 = v219;
          }
        }

        v209 = v218;
      }

      else
      {
        if (v133 == v125)
        {
          goto LABEL_341;
        }

        v210 = vcvtms_s32_f32(**(v133 + 1));
        if (v129 <= v210)
        {
          v209 = v210;
        }

        else
        {
          v209 = v129;
        }
      }

      v129 = v209;
      if (v209 >= v217)
      {
        goto LABEL_341;
      }
    }

    while (1)
    {
      v171 = *v170;
      if (!*v170)
      {
        goto LABEL_248;
      }

      if (*(v155 + 28) >= v171[7])
      {
        v170 = *v170;
        if (!v155)
        {
          goto LABEL_246;
        }
      }

      else
      {
        v172 = *v155;
        *v170 = v155;
        *v155 = v171;
        v155 = v172;
        if (!v172)
        {
          goto LABEL_246;
        }
      }
    }
  }

LABEL_341:
  if (v213 > 0x1000)
  {
    free(v212);
  }

  x_heap_free(v221);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,CA::Render::anonymous namespace::Interval *,false>(uint64_t result, double *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 2;
  v9 = a2 - 4;
  v10 = a2 - 6;
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = (a2 - v11) >> 4;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3:
        v79 = (v11 + 16);
        v80 = *(v11 + 16);
        v77 = *v11;
        v81 = *v8;
        if (v80 < *v11)
        {
          v78 = *(v11 + 8);
          if (v81 >= v80)
          {
            *v11 = *v79;
            *(v11 + 16) = v77;
            *(v11 + 24) = v78;
            if (*v8 >= v77)
            {
              return result;
            }

            *v79 = *v8;
          }

          else
          {
LABEL_108:
            *v11 = *v8;
          }

          *(a2 - 2) = v77;
          *(a2 - 1) = v78;
          return result;
        }

        if (v81 >= v80)
        {
          return result;
        }

        v126 = *(v11 + 24);
        *v79 = *v8;
        *(a2 - 2) = v80;
        *(a2 - 1) = v126;
        goto LABEL_182;
      case 4:
        v79 = (v11 + 16);
        v82 = *(v11 + 16);
        v83 = (v11 + 32);
        v84 = *(v11 + 32);
        v85 = *v11;
        if (v82 >= *v11)
        {
          if (v84 < v82)
          {
            v127 = *(v11 + 24);
            *v79 = *v83;
            *(v11 + 32) = v82;
            *(v11 + 40) = v127;
            if (*(v11 + 16) < v85)
            {
              v128 = *(v11 + 8);
              *v11 = *v79;
              *(v11 + 16) = v85;
              *(v11 + 24) = v128;
            }

            v84 = v82;
          }
        }

        else
        {
          v86 = *(v11 + 8);
          if (v84 < v82)
          {
            *v11 = *v83;
            goto LABEL_178;
          }

          *v11 = *v79;
          *(v11 + 16) = v85;
          *(v11 + 24) = v86;
          if (v84 < v85)
          {
            *v79 = *v83;
LABEL_178:
            *(v11 + 32) = v85;
            *(v11 + 40) = v86;
            v84 = v85;
          }
        }

        if (*v8 >= v84)
        {
          return result;
        }

        v134 = *(v11 + 40);
        *v83 = *v8;
        *(a2 - 2) = v84;
        *(a2 - 1) = v134;
        v135 = *(v11 + 16);
        if (*(v11 + 32) >= v135)
        {
          return result;
        }

        v136 = *(v11 + 24);
        *v79 = *v83;
        *(v11 + 32) = v135;
        *(v11 + 40) = v136;
LABEL_182:
        v137 = *v11;
        if (*(v11 + 16) < *v11)
        {
          v138 = *(v11 + 8);
          *v11 = *v79;
          *(v11 + 16) = v137;
          *(v11 + 24) = v138;
        }

        return result;
      case 5:
    }

LABEL_10:
    if (v12 <= 23)
    {
      v87 = (v11 + 16);
      v89 = v11 == a2 || v87 == a2;
      if (a4)
      {
        if (!v89)
        {
          v90 = 0;
          v91 = v11;
          do
          {
            v92 = v87;
            v93 = *(v91 + 16);
            if (v93 < *v91)
            {
              v94 = *(v91 + 24);
              v95 = v90;
              while (1)
              {
                *(v11 + v95 + 16) = *(v11 + v95);
                if (!v95)
                {
                  break;
                }

                v96 = *(v11 + v95 - 16);
                v95 -= 16;
                if (v93 >= v96)
                {
                  v97 = v11 + v95 + 16;
                  goto LABEL_128;
                }
              }

              v97 = v11;
LABEL_128:
              *v97 = v93;
              *(v97 + 8) = v94;
            }

            v87 = v92 + 2;
            v90 += 16;
            v91 = v92;
          }

          while (v92 + 2 != a2);
        }
      }

      else if (!v89)
      {
        do
        {
          v129 = v87;
          v130 = *(v7 + 16);
          if (v130 < *v7)
          {
            v131 = *(v7 + 24);
            v132 = v87;
            do
            {
              *v132 = *(v132 - 1);
              v133 = *(v132 - 4);
              v132 -= 2;
            }

            while (v130 < v133);
            *v132 = v130;
            *(v132 + 1) = v131;
          }

          v87 += 2;
          v7 = v129;
        }

        while ((v129 + 16) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 == a2)
      {
        return result;
      }

      v98 = (v12 - 2) >> 1;
      v99 = v98;
      do
      {
        v100 = v99;
        if (v98 >= v99)
        {
          v101 = (2 * v99) | 1;
          v102 = (v11 + 16 * v101);
          if (2 * v100 + 2 < v12 && *v102 < v102[2])
          {
            v102 += 2;
            v101 = 2 * v100 + 2;
          }

          v103 = v11 + 16 * v100;
          v104 = *v103;
          if (*v102 >= *v103)
          {
            v105 = *(v103 + 8);
            do
            {
              v106 = v102;
              *v103 = *v102;
              if (v98 < v101)
              {
                break;
              }

              v107 = 2 * v101;
              v101 = (2 * v101) | 1;
              v102 = (v11 + 16 * v101);
              v108 = v107 + 2;
              if (v108 < v12 && *v102 < v102[2])
              {
                v102 += 2;
                v101 = v108;
              }

              v103 = v106;
            }

            while (*v102 >= v104);
            *v106 = v104;
            *(v106 + 1) = v105;
          }
        }

        v99 = v100 - 1;
      }

      while (v100);
      while (2)
      {
        v109 = 0;
        v110 = a2;
        v112 = *v11;
        v111 = *(v11 + 8);
        v113 = v11;
        do
        {
          v114 = v113;
          v115 = &v113[2 * v109];
          v113 = v115 + 2;
          v116 = 2 * v109;
          v109 = (2 * v109) | 1;
          v117 = v116 + 2;
          if (v117 < v12)
          {
            v119 = v115[4];
            v118 = v115 + 4;
            if (*(v118 - 2) < v119)
            {
              v113 = v118;
              v109 = v117;
            }
          }

          *v114 = *v113;
        }

        while (v109 <= ((v12 - 2) >> 1));
        a2 -= 2;
        if (v113 == v110 - 2)
        {
LABEL_157:
          *v113 = v112;
          *(v113 + 1) = v111;
        }

        else
        {
          *v113 = *a2;
          *(v110 - 2) = v112;
          *(v110 - 1) = v111;
          v120 = (v113 - v11 + 16) >> 4;
          v121 = v120 < 2;
          v122 = v120 - 2;
          if (!v121)
          {
            v123 = v122 >> 1;
            v124 = (v11 + 16 * v123);
            v112 = *v113;
            if (*v124 < *v113)
            {
              v111 = *(v113 + 1);
              v125 = v113;
              do
              {
                v113 = v124;
                *v125 = *v124;
                if (!v123)
                {
                  break;
                }

                v123 = (v123 - 1) >> 1;
                v124 = (v11 + 16 * v123);
                v125 = v113;
              }

              while (*v124 < v112);
              goto LABEL_157;
            }
          }
        }

        v121 = v12-- <= 2;
        if (v121)
        {
          return result;
        }

        continue;
      }
    }

    v13 = v11 + 16 * (v12 >> 1);
    v14 = v13;
    v15 = *v8;
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *v11;
      if (*v13 >= *v11)
      {
        if (v15 < v16)
        {
          v22 = *(v13 + 8);
          *v13 = *v8;
          *(a2 - 2) = v16;
          *(a2 - 1) = v22;
          v23 = *v11;
          if (*v13 < *v11)
          {
            v24 = *(v11 + 8);
            *v11 = *v13;
            *v13 = v23;
            *(v13 + 8) = v24;
          }
        }
      }

      else
      {
        v18 = *(v11 + 8);
        if (v15 < v16)
        {
          *v11 = *v8;
          goto LABEL_27;
        }

        *v11 = *v13;
        *v13 = v17;
        *(v13 + 8) = v18;
        if (*v8 < v17)
        {
          *v13 = *v8;
LABEL_27:
          *(a2 - 2) = v17;
          *(a2 - 1) = v18;
        }
      }

      v28 = (v11 + 16);
      v29 = *(v11 + 16);
      v30 = v13 - 16;
      v31 = *(v13 - 16);
      v32 = *v9;
      if (v31 >= v29)
      {
        if (v32 < v31)
        {
          v34 = *(v13 - 8);
          *v30 = *v9;
          *(a2 - 4) = v31;
          *(a2 - 3) = v34;
          v35 = *v28;
          if (*v30 < *v28)
          {
            v36 = *(v11 + 24);
            *v28 = *v30;
            *v30 = v35;
            *(v13 - 8) = v36;
          }
        }
      }

      else
      {
        v33 = *(v11 + 24);
        if (v32 < v31)
        {
          *v28 = *v9;
          goto LABEL_39;
        }

        *v28 = *v30;
        *v30 = v29;
        *(v13 - 8) = v33;
        if (*v9 < v29)
        {
          *v30 = *v9;
LABEL_39:
          *(a2 - 4) = v29;
          *(a2 - 3) = v33;
        }
      }

      v37 = (v11 + 32);
      v38 = *(v11 + 32);
      v40 = *(v13 + 16);
      v39 = v13 + 16;
      v41 = v40;
      v42 = *v10;
      if (v40 >= v38)
      {
        if (v42 < v41)
        {
          v44 = *(v39 + 8);
          *v39 = *v10;
          *(a2 - 6) = v41;
          *(a2 - 5) = v44;
          v45 = *v37;
          if (*v39 < *v37)
          {
            v46 = *(v11 + 40);
            *v37 = *v39;
            *v39 = v45;
            *(v39 + 8) = v46;
          }
        }
      }

      else
      {
        v43 = *(v11 + 40);
        if (v42 < v41)
        {
          *v37 = *v10;
          goto LABEL_48;
        }

        *v37 = *v39;
        *v39 = v38;
        *(v39 + 8) = v43;
        if (*v10 < v38)
        {
          *v39 = *v10;
LABEL_48:
          *(a2 - 6) = v38;
          *(a2 - 5) = v43;
        }
      }

      v47 = *v14;
      v48 = *v30;
      v49 = *v39;
      if (*v14 >= *v30)
      {
        if (v49 < v47)
        {
          v51 = *(v14 + 8);
          *v14 = *v39;
          *v39 = v47;
          *(v39 + 8) = v51;
          if (*v14 < v48)
          {
            v52 = *(v30 + 8);
            *v30 = *v14;
            *v14 = v48;
            *(v14 + 8) = v52;
          }
        }
      }

      else
      {
        v50 = *(v30 + 8);
        if (v49 < v47)
        {
          *v30 = *v39;
          goto LABEL_57;
        }

        *v30 = *v14;
        *v14 = v48;
        *(v14 + 8) = v50;
        if (v49 < v48)
        {
          *v14 = *v39;
LABEL_57:
          *v39 = v48;
          *(v39 + 8) = v50;
        }
      }

      v53 = *v11;
      *v11 = *v14;
      *v14 = v53;
      goto LABEL_59;
    }

    v19 = *v11;
    v20 = *v13;
    if (*v11 >= *v13)
    {
      if (v15 < v19)
      {
        v25 = *(v11 + 8);
        *v11 = *v8;
        *(a2 - 2) = v19;
        *(a2 - 1) = v25;
        v26 = *v13;
        if (*v11 < *v13)
        {
          v27 = *(v13 + 8);
          *v13 = *v11;
          *v11 = v26;
          *(v11 + 8) = v27;
        }
      }
    }

    else
    {
      v21 = *(v13 + 8);
      if (v15 < v19)
      {
        *v13 = *v8;
LABEL_36:
        *(a2 - 2) = v20;
        *(a2 - 1) = v21;
        goto LABEL_59;
      }

      *v13 = *v11;
      *v11 = v20;
      *(v11 + 8) = v21;
      if (*v8 < v20)
      {
        *v11 = *v8;
        goto LABEL_36;
      }
    }

LABEL_59:
    --a3;
    v54 = *v11;
    if ((a4 & 1) != 0 || *(v11 - 16) < v54)
    {
      v55 = *(v11 + 8);
      v56 = v11;
      do
      {
        v57 = v56;
        v58 = *(v56 + 16);
        v56 += 16;
        v59 = v58;
      }

      while (v58 < v54);
      v60 = a2;
      if (v57 == v11)
      {
        v60 = a2;
        do
        {
          if (v56 >= v60)
          {
            break;
          }

          v62 = *(v60 - 2);
          v60 -= 2;
        }

        while (v62 >= v54);
      }

      else
      {
        do
        {
          v61 = *(v60 - 2);
          v60 -= 2;
        }

        while (v61 >= v54);
      }

      v11 = v56;
      if (v56 < v60)
      {
        v63 = v60;
        do
        {
          v64 = *(v11 + 8);
          *v11 = *v63;
          *v63 = v59;
          *(v63 + 8) = v64;
          do
          {
            v65 = *(v11 + 16);
            v11 += 16;
            v59 = v65;
          }

          while (v65 < v54);
          do
          {
            v66 = *(v63 - 16);
            v63 -= 16;
          }

          while (v66 >= v54);
        }

        while (v11 < v63);
      }

      if (v11 - 16 != v7)
      {
        *v7 = *(v11 - 16);
      }

      *(v11 - 16) = v54;
      *(v11 - 8) = v55;
      if (v56 < v60)
      {
LABEL_80:
        a4 = 0;
      }

      else
      {
        if (result)
        {
          a2 = (v11 - 16);
          if (v67)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v67)
        {
          goto LABEL_80;
        }
      }
    }

    else
    {
      if (v54 >= *v8)
      {
        v69 = v11 + 16;
        do
        {
          v11 = v69;
          if (v69 >= a2)
          {
            break;
          }

          v69 += 16;
        }

        while (v54 >= *v11);
      }

      else
      {
        do
        {
          v68 = *(v11 + 16);
          v11 += 16;
        }

        while (v54 >= v68);
      }

      v70 = a2;
      if (v11 < a2)
      {
        v70 = a2;
        do
        {
          v71 = *(v70 - 2);
          v70 -= 2;
        }

        while (v54 < v71);
      }

      v72 = *(v7 + 8);
      if (v11 < v70)
      {
        v73 = *v11;
        do
        {
          v74 = *(v11 + 8);
          *v11 = *v70;
          *v70 = v73;
          *(v70 + 1) = v74;
          do
          {
            v75 = *(v11 + 16);
            v11 += 16;
            v73 = v75;
          }

          while (v54 >= v75);
          do
          {
            v76 = *(v70 - 2);
            v70 -= 2;
          }

          while (v54 < v76);
        }

        while (v11 < v70);
      }

      if (v11 - 16 != v7)
      {
        *v7 = *(v11 - 16);
      }

      a4 = 0;
      *(v11 - 16) = v54;
      *(v11 - 8) = v72;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_10;
  }

  v77 = *v11;
  if (*v8 < *v11)
  {
    v78 = *(v11 + 8);
    goto LABEL_108;
  }

  return result;
}

uint64_t CA::Display::DisplayLink::pause_timer_locked(uint64_t this)
{
  v1 = *(this + 152);
  if (v1)
  {
    v2 = this;
    pthread_mutex_lock((v1 + 16));
    mk_timer_cancel();
    *(v1 + 200) = 1;
    v3 = *(v1 + 192);
    if (v3)
    {
      v3(v1, 2, *(v1 + 232), *(v1 + 216), *(v1 + 184));
    }

    pthread_mutex_unlock((v1 + 16));
    v4 = *(v2 + 152);
    pthread_mutex_lock((v4 + 16));
    *(v4 + 264) = 0;

    return pthread_mutex_unlock((v4 + 16));
  }

  return this;
}

void CA::Render::anonymous namespace::Compressor::compress_(double **a1, double **a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v8 = 0;
    v9 = *a2;
    do
    {
      if (v9 == a2[1])
      {
        break;
      }

      v10 = *v6;
      v11 = *v9;
      if (*v6 - *v9 <= 0.0)
      {
        ++v6;
        v12 = 1;
      }

      else
      {
        ++v9;
        v12 = 2;
        v10 = v11;
      }

      v13 = v8 ^ v12;
      if (v8 == 1 || v13 == 1)
      {
        v5 = a1[1];
      }

      v8 = v13;
    }

    while (v6 != v5);
  }

  while (v6 != v5)
  {
    v14 = *v6++;
    v5 = a1[1];
  }
}

void CA::anonymous namespace::gaussian_vimage_8(CA::_anonymous_namespace_ *this, unsigned __int8 *a2, int a3, uint64_t a4, unsigned int a5, double a6)
{
  v56 = a4;
  v55 = this;
  v64 = *MEMORY[0x1E69E9840];
  v10 = a5 + 1;
  v54 = 8 * v10;
  if (v54 <= 0x1000)
  {
    MEMORY[0x1EEE9AC00](this);
    v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v12, v11);
    if ((a5 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    v24 = *v12;
    v26 = *v12;
    goto LABEL_15;
  }

  v13 = malloc_type_malloc(8 * v10, 0x4FAEEE0CuLL);
  v12 = v13;
  if ((a5 & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  v14 = 0;
  v15 = 1.0 / (a6 * a6) * -0.5;
  v16 = xmmword_183E20FF0;
  v58 = vdupq_n_s64(2uLL);
  v17 = v10 - 1;
  v18 = 1.0 / a6 * 0.39894228;
  v57 = vdupq_n_s64(v10 - 1);
  do
  {
    v61 = v16;
    v19 = vcgeq_u64(v57, v16);
    *v19.i8 = vmovn_s64(v19);
    v60 = v19;
    *&v20 = exp((v14 * v14) * v15);
    v59 = v20;
    v21 = exp(((v14 + 1) * (v14 + 1)) * v15);
    *&v23.f64[0] = v59;
    v22 = v60.i8[4];
    v23.f64[1] = v21;
    if (v60.i8[0])
    {
      v12[v14] = v18 * *&v59;
    }

    if (v22)
    {
      v12[v14 + 1] = vmuld_lane_f64(v18, v23, 1);
    }

    v14 += 2;
    v16 = vaddq_s64(v61, v58);
  }

  while (((v10 + 1) & 0x1FFFFFFFELL) != v14);
  v24 = *v12;
  if (!a5)
  {
    v28 = 0;
    v29 = 1;
    LOBYTE(v31) = 1;
    v30 = 16384.0 / v24;
    goto LABEL_20;
  }

  v25 = v12 + 1;
  v26 = *v12;
  do
  {
    v27 = *v25++;
    v26 = v26 + v27 * 2.0;
    --v17;
  }

  while (v17);
LABEL_15:
  v28 = 2 * a5;
  v29 = (2 * a5) | 1;
  v30 = 16384.0 / v26;
  if ((2 * v29) > 0x1000)
  {
    v61.i64[0] = 2 * v29;
    v32 = malloc_type_malloc(v61.u64[0], 0x9845A8F2uLL);
    v33 = v32;
    v34 = a5;
    *&v32[2 * a5] = (*v12 * v30);
    if ((a5 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  v31 = a5 >> 31;
LABEL_20:
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v53 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61.i64[0] = v35;
  bzero(v33, v35);
  v34 = a5;
  *&v33[2 * a5] = (v24 * v30);
  if ((v31 & 1) == 0)
  {
LABEL_21:
    v36 = v10 - 1;
    v37 = 2 * v34 - 2;
    v38 = 2 * v34 + 2;
    v39 = v12 + 1;
    do
    {
      v40 = *v39++;
      v41 = (v40 * v30);
      *&v33[v38] = v41;
      *&v33[v37] = v41;
      v37 -= 2;
      v38 += 2;
      --v36;
    }

    while (v36);
  }

LABEL_23:
  v42 = (v28 + a3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v53 = v12;
  if (v42 > 0x1000)
  {
    v43 = malloc_type_malloc(v42, 0xC0247B3EuLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v32);
    v43 = &v53 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v43, v42);
  }

  v44 = v56;
  v45 = malloc_type_malloc((v56 * a3 + 15) & 0xFFFFFFFFFFFFFFF0, 0x100004077774924uLL);
  src.data = v43;
  src.height = 1;
  src.width = (v28 + a3 + 15) & 0xFFFFFFFFFFFFFFF0;
  src.rowBytes = src.width;
  v60.i64[0] = src.width;
  *&v59 = v45;
  dest.data = v45;
  dest.height = 1;
  v46 = a3;
  dest.width = a3;
  dest.rowBytes = a3;
  bzero(v43, v34);
  bzero(&v43[a3 + v34], v34);
  v47 = v44 < 1;
  v48 = a2;
  if (!v47)
  {
    v49 = v55;
    v50 = v56;
    do
    {
      memcpy(&v43[v34], v49, v46);
      vImageConvolve_Planar8(&src, &dest, 0, v34, 0, v33, 1u, v29, 0x4000, 0, 0x14u);
      dest.data = dest.data + v46;
      v49 = (v49 + v48);
      --v50;
    }

    while (v50);
  }

  v51 = v59;
  src.data = v59;
  src.height = v56;
  src.width = v46;
  src.rowBytes = v46;
  dest.data = v55;
  dest.height = v56;
  dest.width = v46;
  dest.rowBytes = v48;
  vImageConvolve_Planar8(&src, &dest, 0, 0, 0, v33, v29, 1u, 0x4000, 0, 0x14u);
  free(v51);
  if (v60.i64[0] > 0x1000uLL)
  {
    free(v43);
  }

  v52 = v53;
  if (v61.i64[0] > 0x1000uLL)
  {
    free(v33);
  }

  if (v54 > 0x1000)
  {
    free(v52);
  }
}

void CA::Render::anonymous namespace::add_point_to_slices(uint64_t a1, double a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (((v2 - *a1) & 8) == 0)
  {
    v5[0] = ceil(a2);
LABEL_4:
    std::vector<double>::push_back[abi:nn200100](a1, v5);
    return;
  }

  v5[0] = floor(a2);
  v4 = *(v2 - 8);
  v3 = v2 - 8;
  if (v5[0] > v4)
  {
    goto LABEL_4;
  }

  *(a1 + 8) = v3;
}

void CA::anonymous namespace::gaussian_blur(CA::_anonymous_namespace_ *this, unsigned __int8 *a2, const unsigned __int8 *a3, const unsigned __int8 *a4, unsigned __int8 *a5, float a6)
{
  v73 = a2;
  v74 = a4;
  v78 = *MEMORY[0x1E69E9840];
  v8 = a6;
  if (v8 > 0.6)
  {
    v10 = a3;
    if (a5 == 1)
    {
      if (a6 <= 8.0)
      {
        v25 = vcvtps_s32_f32(a6 * 2.5);
      }

      else
      {
        LODWORD(v6) = vcvtms_u32_f32((a6 * 0.93999) + -0.5);
        v72 = (v74 + 2 * v6);
        v12 = (a3 + 2 * v6);
        v13 = malloc_type_calloc(v12, v72, 0x100004077774924uLL);
        v14 = &v13[v12 * v6 + v6];
        v15 = v13;
        CGBlt_copyBytes();
        v77[0].data = v15;
        v77[0].height = v72;
        v77[0].width = v12;
        v77[0].rowBytes = v12;
        v76.data = this;
        v76.height = v74;
        v76.width = v10;
        v76.rowBytes = v73;
        v75.data = v14;
        v75.height = v74;
        v75.width = v10;
        v75.rowBytes = v12;
        v16 = vImageBoxConvolve_Planar8(v77, &v76, 0, v6, v6, (2 * v6) | 1, (2 * v6) | 1, 0, 0x84u);
        v17 = vImageBoxConvolve_Planar8(&v76, &v75, 0, 0, 0, (2 * v6) | 1, (2 * v6) | 1, 0, 0x84u);
        if ((v16 & 0x8000000000000000) == 0 && (v17 & 0x8000000000000000) == 0)
        {
          if (v16 <= v17)
          {
            v16 = v17;
          }

          if (v16 > 0x1000)
          {
            v18 = malloc_type_malloc(v16, 0xF4ADAFFuLL);
          }

          else
          {
            MEMORY[0x1EEE9AC00](v17);
            v18 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
            bzero(v18, v16);
          }

          vImageBoxConvolve_Planar8(v77, &v76, v18, v6, v6, (2 * v6) | 1, (2 * v6) | 1, 0, 0x14u);
          vImageBoxConvolve_Planar8(&v76, &v75, v18, 0, 0, (2 * v6) | 1, (2 * v6) | 1, 0, 0x14u);
          vImageBoxConvolve_Planar8(v77, &v76, v18, v6, v6, (2 * v6) | 1, (2 * v6) | 1, 0, 0x14u);
          free(v15);
          if (v16 > 0x1000)
          {
            v62 = v18;
            goto LABEL_54;
          }
        }
      }
    }

    else
    {
      v19 = v74;
      if (a3 > v74)
      {
        v19 = a3;
      }

      v20 = (v19 * a5);
      if (v20 > 0x1000)
      {
        v21 = malloc_type_malloc((v19 * a5), 0xA514522BuLL);
        v23 = malloc_type_malloc(v20, 0x2AB9242AuLL);
      }

      else
      {
        MEMORY[0x1EEE9AC00](this);
        v21 = &v63 - ((v20 + 15) & 0x1FFFFFFF0);
        bzero(v21, v20);
        MEMORY[0x1EEE9AC00](v22);
        v23 = v21;
        bzero(v21, v20);
      }

      if (v21)
      {
        v26 = v23 == 0;
      }

      else
      {
        v26 = 1;
      }

      if (!v26)
      {
        v64 = v20;
        v71 = this;
        v27 = 0;
        *v24.i32 = (a6 * 0.93999) + -0.5;
        v28 = *v24.i32;
        *v24.i32 = *v24.i32 - truncf(*v24.i32);
        v29 = vdupq_lane_s32(v24, 0);
        v30 = xmmword_183E21070;
        v31 = xmmword_183E21080;
        v32 = xmmword_183E21090;
        v33 = xmmword_183E210A0;
        v34.i64[0] = 0x1000000010;
        v34.i64[1] = 0x1000000010;
        do
        {
          v35.i64[0] = 0x3F0000003F000000;
          v35.i64[1] = 0x3F0000003F000000;
          v36.i64[0] = 0x3F0000003F000000;
          v36.i64[1] = 0x3F0000003F000000;
          v37.i64[0] = 0x3F0000003F000000;
          v37.i64[1] = 0x3F0000003F000000;
          v38.i64[0] = 0x3F0000003F000000;
          v38.i64[1] = 0x3F0000003F000000;
          *(&v77[0].data + v27) = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(v38, vcvtq_f32_u32(v33), v29)), vcvtq_s32_f32(vmlaq_f32(v37, vcvtq_f32_u32(v32), v29))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(v36, vcvtq_f32_u32(v31), v29)), vcvtq_s32_f32(vmlaq_f32(v35, vcvtq_f32_u32(v30), v29))));
          v27 += 16;
          v33 = vaddq_s32(v33, v34);
          v32 = vaddq_s32(v32, v34);
          v31 = vaddq_s32(v31, v34);
          v30 = vaddq_s32(v30, v34);
        }

        while (v27 != 256);
        v39 = ((8924200.0 / a6) + 0.5);
        v69 = v21;
        v72 = v23;
        if (v74 >= 1)
        {
          v65 = v21 + 1;
          v67 = a5 - 1;
          v68 = (v23 + 1);
          v40 = v71;
          v70 = v71 + 1;
          v41 = v74;
          do
          {
            v66 = v41;
            for (i = 1; ; ++i)
            {
              v43 = (v28 + 1);
              if (a5 == i)
              {
                break;
              }
            }

            v44 = v67;
            v45 = v68;
            for (j = v65; ; ++j)
            {
              v47 = (v28 + 1);
              if (!v44)
              {
                break;
              }

              --v44;
            }

            v48 = v67;
            v49 = v68;
            for (k = v70; v48; --v48)
            {
            }

            v23 = v72;
            v40 += v73;
            v21 = v69;
            v70 += v73;
            v41 = v66 - 1;
          }

          while (v66 > 1);
        }

        v51 = v71;
        if (v10 >= 1)
        {
          v70 = (v72 + 1);
          v67 = (v21 + 1);
          v68 = a5 - 1;
          v52 = v71 + 1;
          do
          {
            for (m = 1; a5 != m; ++m)
            {
            }

            v71 = v51;
            v55 = v67;
            v54 = v68;
            for (n = v70; ; ++n)
            {
              v57 = (v28 + 1);
              if (!v54)
              {
                break;
              }

              --v54;
            }

            v58 = v68;
            v59 = v52;
            for (ii = v70; v58; --v58)
            {
            }

            v51 = &v71[a5];
            v52 += a5;
            v61 = __OFSUB__(v10, 1);
            LODWORD(v10) = v10 - 1;
            v21 = v69;
          }

          while (!((v10 < 0) ^ v61 | (v10 == 0)));
        }

        LODWORD(v20) = v64;
        v23 = v72;
      }

      if (v20 > 0x1000 && v23)
      {
        free(v23);
      }

      if (v20 > 0x1000 && v21)
      {
        v62 = v21;
LABEL_54:
        free(v62);
      }
    }
  }
}

uint64_t CA::Render::AnimationEvaluator::second_pass(uint64_t this)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*(this + 224) & 2) != 0)
  {
    v1 = this;
    v2 = *(*(this + 16) + 144);
    v3 = *(v2 + 16);
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = *(v2 + 24 + 8 * i);
        if ((*(v5 + 12) & 0x24100) == 0x4100)
        {
          v7 = 0;
          v6 = *v1;
          this = CA::Render::Animation::map_time(v5, &v6, &v7, 0, 0);
          if (this)
          {
            ++*(v5 + 84);
            *(v1 + 224) &= ~0x20u;
            this = (*(*v5 + 120))(v5, v1, v7, 0, v6);
            *(v5 + 92) = *(v5 + 92) & 0xFE | ((*(v1 + 224) & 0x20) != 0);
          }

          v3 = *(v2 + 16);
        }
      }
    }
  }

  return this;
}

uint64_t CA::Render::Layer::get_keypath_object(CA::Render::Layer *this, const CA::Render::Layer **a2, void *const *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v23[0] = this;
  v5 = CA::Render::skip_sublayers(v23, a2, a3);
  if ((v5 & 0x80000000) != 0)
  {
    return 0;
  }

  v6 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (v6)
  {
    v7 = 1;
    if (HIDWORD(v6))
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = *v6;
  }

  if (v7 - v5 != 1)
  {
    return 0;
  }

  if (v6)
  {
    if (v6)
    {
      if (v5 == 1)
      {
        v6 >>= 32;
      }

      else
      {
        LODWORD(v6) = v6 >> 1;
        if (v5)
        {
          LODWORD(v6) = 0;
        }
      }
    }

    else
    {
      if (*v6 <= v5)
      {
        goto LABEL_46;
      }

      LODWORD(v6) = *(v6 + 4 * v5 + 4);
    }

    if (v6 > 159)
    {
      if (v6 <= 644)
      {
        switch(v6)
        {
          case 0xA0:
            v20 = *(v23[0] + 136);
            if (v20)
            {
              return *(v20 + 64);
            }

            return 0;
          case 0x100:
            v22 = *(v23[0] + 136);
            if (v22)
            {
              return *(v22 + 96);
            }

            return 0;
          case 0x203:
            v12 = *(v23[0] + 136);
            if (v12)
            {
              return *(v12 + 112);
            }

            return 0;
        }
      }

      else if (v6 > 693)
      {
        if (v6 == 694)
        {
          return 0;
        }

        if (v6 == 716)
        {
          v14 = *(v23[0] + 136);
          if (v14)
          {
            return *(v14 + 16);
          }

          return 0;
        }
      }

      else
      {
        if (v6 == 645)
        {
          v18 = *(v23[0] + 136);
          if (v18)
          {
            return *(v18 + 120);
          }

          return 0;
        }

        if (v6 == 693)
        {
          v10 = *(v23[0] + 136);
          if (v10)
          {
            return *(v10 + 24);
          }

          return 0;
        }
      }
    }

    else
    {
      if (v6 <= 133)
      {
        switch(v6)
        {
          case 0x40:
            v11 = *(v23[0] + 136);
            if (!v11)
            {
              return 0;
            }

            break;
          case 0x7C:
            v21 = *(v23[0] + 136);
            if (v21)
            {
              return *(v21 + 88);
            }

            return 0;
          case 0x83:
            v11 = v23[0];
            break;
          default:
            goto LABEL_46;
        }

        return *(v11 + 104);
      }

      if (v6 > 153)
      {
        if (v6 == 154)
        {
          v19 = *(v23[0] + 136);
          if (v19)
          {
            return *(v19 + 32);
          }

          return 0;
        }

        if (v6 == 159)
        {
          v13 = *(v23[0] + 136);
          if (v13)
          {
            return *(v13 + 56);
          }

          return 0;
        }
      }

      else
      {
        if (v6 == 134)
        {
          v17 = *(v23[0] + 136);
          if (v17)
          {
            return *(v17 + 48);
          }

          return 0;
        }

        if (v6 == 150)
        {
          v8 = *(v23[0] + 136);
          if (v8)
          {
            return *(v8 + 40);
          }

          return 0;
        }
      }
    }
  }

LABEL_46:
  v15 = *(this + 17);
  if (!v15)
  {
    return 0;
  }

  result = *v15;
  if (*v15)
  {
    v16 = *(*result + 120);

    return v16();
  }

  return result;
}

IMP cons_CAAnimation_kCAValueWeakPointer(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e10_r_v16__0_8l;
    v4 = ___ZL36cons_CAAnimation_kCAValueWeakPointerjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e13_v24__0_8r_v16l;
    v4 = ___ZL36cons_CAAnimation_kCAValueWeakPointerjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

void ___ZL36cons_CAAnimation_kCAValueWeakPointerjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5[0] = a3;
  CAAnimation_setter(a2, v4, 4, v5);
}

void CA::Render::Context::flush_image_queue(CA::Render::Context *this, int a2, unsigned int a3)
{
  os_unfair_lock_lock(&CA::Render::Context::_image_queues_lock);
  v6 = *(this + 45);
  v7 = *(this + 46);
  while (v6 != v7)
  {
    if (*(*v6 + 448) == a2)
    {
      v8 = *(*(*v6 + 16) + 24);
      do
      {
        v9 = *(v8 + 16);
        if (v9 >= a3)
        {
          break;
        }

        v10 = *(v8 + 16);
        atomic_compare_exchange_strong((v8 + 16), &v10, a3);
      }

      while (v10 != v9);
      v7 = *(this + 46);
    }

    v6 += 8;
  }

  os_unfair_lock_unlock(&CA::Render::Context::_image_queues_lock);
}

uint64_t CA::Render::Handle::unlock_context(atomic_uint *this, CA::Render::Context *a2)
{
  result = pthread_mutex_unlock((this + 18));
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    v4 = *(*this + 16);

    return v4(this);
  }

  return result;
}

uint64_t CA::Render::Handle::lock_context(CA::Render::Handle *this)
{
  os_unfair_lock_lock(&CA::Render::Handle::_handle_lock);
  v2 = *(this + 3);
  if (v2)
  {
    if (atomic_fetch_add((v2 + 8), 1u))
    {
      os_unfair_lock_unlock(&CA::Render::Handle::_handle_lock);
      pthread_mutex_lock((v2 + 72));
    }

    else
    {
      atomic_fetch_add((v2 + 8), 0xFFFFFFFF);
      os_unfair_lock_unlock(&CA::Render::Handle::_handle_lock);
      return 0;
    }
  }

  else
  {
    os_unfair_lock_unlock(&CA::Render::Handle::_handle_lock);
  }

  return v2;
}

int *CA::Render::aligned_release(size_t this, void *a2, const void *a3)
{
  munmap(a2, this);
  result = CAGetStatsStruct(0);
  v5 = *(result + 1);
  v6 = *result - this;
  *result = v6;
  if (v6 > v5)
  {
    *(result + 1) = v6;
  }

  return result;
}

double begin_time(_CAStateControllerData *a1)
{
  if (a1)
  {
    return *&a1[1].var0;
  }

  +[CATransaction commitTime];
  if (result == 0.0)
  {
    v2 = mach_absolute_time();

    return CATimeWithHostTime(v2);
  }

  return result;
}

float64_t CA::WindowServer::anonymous namespace::OGLDisplay::round_logical_rect(CA::WindowServer::_anonymous_namespace_::OGLDisplay *this, Rect *a2)
{
  v3 = *(this + 1);
  if ((*(v3 + 904) & 0x10) != 0)
  {
    v9 = *(v3 + 152);
    v8 = *(v3 + 160);
    v10.i64[0] = v8;
    v10.i64[1] = SHIDWORD(v8);
    v11 = vcvtq_f64_s64(v10);
    v13 = *(v3 + 200);
    v12 = *(v3 + 208);
    v10.i64[0] = v12;
    v10.i64[1] = SHIDWORD(v12);
    v14 = vdivq_f64(v11, vcvtq_f64_s64(v10));
    v10.i64[0] = v9;
    v10.i64[1] = SHIDWORD(v9);
    v15 = vcvtq_f64_s64(v10);
    v10.i64[0] = v13;
    v10.i64[1] = SHIDWORD(v13);
    v23 = vmlsq_f64(v15, vcvtq_f64_s64(v10), v14);
    v16 = v14;
    CA::BoundsImpl::scale(a2, v14.f64[0], v14.f64[1]);
    v17 = *&a2[2].top;
    v18 = vaddq_f64(*&a2->top, v23);
    v19 = *&a2[3];
    if (v17.f64[0] <= v19)
    {
      v20 = *&a2[3];
    }

    else
    {
      v20 = *&a2[2];
    }

    if (v20 < 1.79769313e308)
    {
      if (v17.f64[0] < v19)
      {
        v19 = *&a2[2];
      }

      if (v19 > 0.0)
      {
        v21 = vaddq_f64(v18, v17);
        v18 = vrndaq_f64(v18);
        *&a2[2].top = vsubq_f64(vrndaq_f64(v21), v18);
      }
    }

    *&a2->top = vsubq_f64(v18, v23);

    v4.f64[0] = CA::BoundsImpl::scale(a2, 1.0 / v16.f64[0], 1.0 / v16.f64[1]);
  }

  else
  {
    v4 = *&a2[2].top;
    v5 = *&a2[3];
    if (v4.f64[0] <= v5)
    {
      v6 = *&a2[3];
    }

    else
    {
      v6 = *&a2[2];
    }

    if (v6 < 1.79769313e308)
    {
      if (v4.f64[0] < v5)
      {
        v5 = *&a2[2];
      }

      if (v5 > 0.0)
      {
        v7 = vrndaq_f64(*&a2->top);
        v4 = vsubq_f64(vrndaq_f64(vaddq_f64(*&a2->top, v4)), v7);
        *&a2->top = v7;
        *&a2[2].top = v4;
      }
    }
  }

  return v4.f64[0];
}

float64x2_t CA::OGL::clip_detached_rects(float64x2_t *this, Rect *a2, Rect *a3, const Rect *a4, float64x2_t a5, float64x2_t a6, double a7, double a8, double a9, double a10, double a11, int32x4_t a12)
{
  v12 = *&a2->top;
  v13 = *&a2[2].top;
  v14 = vclezq_f64(v13);
  v15 = vorrq_s8(vdupq_laneq_s64(v14, 1), v14).u64[0];
  v16 = v13;
  v17 = *&a2->top;
  if ((v15 & 0x8000000000000000) == 0)
  {
    v18 = vclezq_f64(a6);
    if ((vorrq_s8(vdupq_laneq_s64(v18, 1), v18).u64[0] & 0x8000000000000000) != 0)
    {
      v16 = 0uLL;
      v17 = *&a2->top;
    }

    else
    {
      v19 = vaddq_f64(a5, a6);
      a5 = vmaxnmq_f64(v12, a5);
      v20 = vsubq_f64(vminnmq_f64(vaddq_f64(v12, v13), v19), a5);
      v21 = vclezq_f64(v20);
      v22 = vdupq_laneq_s64(v21, 1);
      v23 = vorrq_s8(v22, v21);
      v22.i64[0] = -1;
      v24 = vdupq_lane_s64(vcgtq_s64(v23, v22).i64[0], 0);
      v17 = vbslq_s8(v24, a5, v12);
      v16 = vandq_s8(v20, v24);
    }
  }

  LODWORD(a5.f64[0]) = 0;
  v25 = vaddq_f64(this[1], *this);
  a12.i32[0] = a3 & 4;
  v26 = vdupq_lane_s32(*&vceqq_s32(a12, a5), 0);
  v27 = vbslq_s8(v26, *this, vextq_s8(v25, *this, 8uLL));
  v28 = vbslq_s8(v26, v25, vextq_s8(*this, v25, 8uLL));
  *v25.i8 = vceqz_s32(vand_s8(vdup_n_s32(a3), 0x100000002));
  v29.i64[0] = v25.i32[0];
  v29.i64[1] = v25.i32[1];
  v30 = vbslq_s8(v29, v28, v27);
  v31 = vbslq_s8(v29, v27, v28);
  v32 = vdivq_f64(vsubq_f64(v30, v31), v13);
  v33 = vsubq_f64(v17, v12);
  v34 = vbslq_s8(vcgtzq_f64(v33), vmlaq_f64(v31, v32, v33), v31);
  v35 = vsubq_f64(vaddq_f64(v13, v12), vaddq_f64(v17, v16));
  v36 = vbslq_s8(vcgtzq_f64(v35), vmlsq_f64(v30, v32, v35), v30);
  v37 = vbslq_s8(v29, v36, v34);
  v38 = vbslq_s8(v29, v34, v36);
  v39 = vbslq_s8(v26, v38, vextq_s8(v38, v37, 8uLL));
  *&a2->top = v17;
  *&a2[2].top = v16;
  result = vsubq_f64(vbslq_s8(v26, v37, vextq_s8(v37, v38, 8uLL)), v39);
  *this = v39;
  this[1] = result;
  return result;
}

void CA_CFDictionarySetFloat(__CFDictionary *a1, const void *a2, float a3)
{
  v7 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t CA::Render::LayerNode::clear_above_and_black_below(CA::Render::LayerNode ***this, int a2, double a3, float a4)
{
  v4 = this;
  do
  {
    v5 = v4;
    v4 = *(v4 + 11);
  }

  while (v4);
  v6 = *(*(v5 + 4) + 152);
  if (v6)
  {
    if ((v7 = this[4][19], *(v7 + 15) == *(v6 + 15)) && *(v7 + 32) == v6[32] && *(v7 + 33) == v6[33] || !a2)
    {
      for (i = *v5; i != v5 && (*(i + 24) & 0x40) != 0; i = *i)
      {
        v11 = *(*(i + 4) + 152);
        if (v11 && (*(v11 + 106) & 0x80) != 0)
        {
          return 0;
        }
      }

      for (j = this[13]; j != this + 12; j = j[1])
      {
        v13 = j[4][19];
        if (v13 && (*(v13 + 106) & 0x80) != 0)
        {
          return 0;
        }
      }

      v14 = this[11];
      if (!v14)
      {
        return 1;
      }

      v15 = this[11];
      v16 = this;
      do
      {
        v17 = v15;
        v18 = (v15 + 12);
        for (k = *(v17 + 13); k != v18 && k != v16; k = *(k + 1))
        {
          v21 = *(k + 4);
          v22 = *(v21 + 152);
          if (v22)
          {
            if ((*(v22 + 106) & 0x80) != 0)
            {
              LOBYTE(a4) = *(v21 + 36);
              a4 = LODWORD(a4) * 0.0039216;
              if (a4 > 0.0)
              {
                return 0;
              }
            }
          }
        }

        v15 = *(v17 + 11);
        v16 = v17;
      }

      while (v15);
      v23 = this;
      while (1)
      {
        v24 = v14;
        v25 = (v14 + 12);
        v26 = v14[13];
        if (v26 != v25)
        {
          break;
        }

LABEL_55:
        v14 = *(v24 + 11);
        v8 = 1;
        v23 = v24;
        if (!v14)
        {
          return v8;
        }
      }

      v27 = 0;
      while (1)
      {
        v27 |= v26 == v23;
        if (v26 != this && (v27 & 1) != 0)
        {
          v28 = *(v26 + 4);
          v29 = v28[9].i64[1];
          if (v29)
          {
            v30 = *(v29 + 104);
            if (v26 == v23)
            {
              if ((v30 & 0x20000000) != 0)
              {
                return 0;
              }

              if (v28[6].i64[1])
              {
                goto LABEL_49;
              }

              if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v28[1], xmmword_183E20E40)))))
              {
                goto LABEL_49;
              }

              v31 = v28[8].i64[1];
              if (v31)
              {
                if (*(v31 + 232) > 0.0 || *(v31 + 240) > 0.0)
                {
                  goto LABEL_49;
                }
              }
            }

            else if ((v30 & 0x400000) != 0)
            {
              return 0;
            }

            if (*(v29 + 120) == v6[30] && *(v29 + 124) == v6[31] && *(v29 + 128) == v6[32] && *(v29 + 132) == v6[33])
            {
              return 1;
            }
          }
        }

LABEL_49:
        v26 = *(v26 + 1);
        if (v26 == v25)
        {
          goto LABEL_55;
        }
      }
    }
  }

  return 0;
}

uint64_t CA::WindowServer::anonymous namespace::OGLDisplay::detach_layer(CA::WindowServer::_anonymous_namespace_::OGLDisplay *this, CA::Render::Handle *a2, uint64_t a3, CA::Render::Texture *a4, CA::WindowServer::Surface *a5, const CA::Rect *a6, const CA::Rect *a7, unsigned int a8, unsigned int *a9)
{
  if (a5)
  {
    v10 = *(this + 1);
    if (*(a5 + 1) != v10)
    {
      CA::WindowServer::Surface::set_display(a5, v10);
    }
  }

  v11 = *(this + 1);
  v12 = *(*v11 + 560);

  return v12(v11);
}

void CA::WindowServer::IOSurface::set_colorspace(CA::WindowServer::IOSurface *this, void *cf, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    if (*(this + 38) != cf || a3 != 0)
    {
      X::CFRef<CGColorSpace *>::operator=(this + 38, cf);
      v7 = *(this + 1);
      if (CAGetColorSpace(6) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(8) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(9) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(20) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(22) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0)
      {
        v8 = 4;
      }

      else if (CAGetColorSpace(11) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(13) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(15) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(18) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(17) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(19) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0)
      {
        v8 = 8;
      }

      else if (CAGetColorSpace(36) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(24) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(25) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(33) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(34) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0)
      {
        v8 = 2;
      }

      else if (v7 && ((*(*v7 + 1888))(v7) & 1) != 0)
      {
        v8 = 16;
      }

      else
      {
        v8 = 1;
      }

      (*(*this + 72))(this, v8, a3);
      if (CAGetColorSpace(20) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(22) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(33) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(34) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(13) == cf || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CAGetColorSpace(15) == cf)
      {
        v9 = 1;
      }

      else
      {
        v9 = CGColorSpaceEqualToColorSpaceIgnoringRange();
      }

      (*(*this + 80))(this, v9);
      if (CADeviceIsVirtualized::once[0] != -1)
      {
        dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
      }

      if (CADeviceIsVirtualized::is_virtualized == 1)
      {
        v10 = CGColorSpaceCopyICCData(cf);
        if (x_log_get_utilities::once != -1)
        {
          dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
        }

        v11 = x_log_get_utilities::log;
        if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEBUG))
        {
          v13[0] = 67109120;
          v13[1] = 2;
          _os_log_debug_impl(&dword_183AA6000, v11, OS_LOG_TYPE_DEBUG, "primaries of value %d received, no matching case", v13, 8u);
          if (!v10)
          {
LABEL_38:
            v12 = CGColorSpaceCopyICCData(cf);
            IOSurfaceSetValue(*(this + 33), *MEMORY[0x1E696CF60], v12);
            if (v12)
            {

              CFRelease(v12);
            }

            return;
          }
        }

        else if (!v10)
        {
          goto LABEL_38;
        }

        CFRelease(v10);
        goto LABEL_38;
      }
    }
  }
}

uint64_t CA::WindowServer::IOSurface::set_color_primaries(uint64_t result, int a2, int a3)
{
  if (*(result + 296) != a2 || a3 != 0)
  {
    *(result + 296) = a2;
    IOSurfaceRemoveValue(*(result + 264), *MEMORY[0x1E696CEC0]);
    return IOSurfaceSetBulkAttachments2();
  }

  return result;
}

unint64_t CA::Render::iosurface_max_init(CA::Render *this)
{
  v1 = getenv("CA_MAX_TEXTURE_SIZE");
  if (v1)
  {
    v2 = atoi(v1);
  }

  else
  {
    v2 = 0;
  }

  CA::Render::iosurface_max_width = MEMORY[0x1865EA1D0](*MEMORY[0x1E696D130]);
  result = MEMORY[0x1865EA1D0](*MEMORY[0x1E696CF58]);
  CA::Render::iosurface_max_height = result;
  if (v2)
  {
    v4 = CA::Render::iosurface_max_width;
    if (CA::Render::iosurface_max_width >= v2)
    {
      v4 = v2;
    }

    CA::Render::iosurface_max_width = v4;
    if (result >= v2)
    {
      v5 = v2;
    }

    else
    {
      v5 = result;
    }

    CA::Render::iosurface_max_height = v5;
  }

  return result;
}

uint64_t CA::WindowServer::AppleDisplay::detachable_layer_impl(uint64_t a1, int *a2, float64x2_t *a3, _DWORD *a4, float64x2_t *a5, float64x2_t *a6, _DWORD *a7)
{
  v198 = *MEMORY[0x1E69E9840];
  CA::ScalerUtil::ScalerLimits::limits(a1);
  if ((*(*a1 + 1576))(a1))
  {
    return 28;
  }

  v191 = a3;
  v15 = a4[16];
  v16 = CA::Render::fourcc_compressed_of_type(v15, 0, 0);
  v17 = *(a1 + 29592);
  result = 9;
  if (v15 > 1530426927)
  {
    if (v15 <= 1952854575)
    {
      if (v15 <= 1647534391)
      {
        if (v15 <= 1534359087)
        {
          if ((v15 - 1530426928) <= 4 && ((1 << (v15 - 48)) & 0x15) != 0)
          {
            goto LABEL_167;
          }

          v18 = -1534354992;
        }

        else
        {
          if ((v15 - 1534359088) <= 4 && ((1 << (v15 - 48)) & 0x15) != 0 || (v15 - 1534617136) <= 4 && ((1 << (v15 - 48)) & 0x15) != 0)
          {
            goto LABEL_167;
          }

          v18 = -1534621232;
        }

        v32 = v15 + v18;
        if (v32 > 4 || ((1 << v32) & 0x15) == 0)
        {
          return result;
        }

LABEL_167:
        if (*(a1 + 29519) != 1)
        {
          return 29;
        }

        if (CADeviceSupportsUniversalCompression::once != -1)
        {
          dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
        }

        if (CADeviceSupportsUniversalCompression::universal)
        {
          return 29;
        }

        goto LABEL_190;
      }

      if (v15 <= 1885746227)
      {
        if (v15 > 1882468913)
        {
          if (v15 <= 1885745711)
          {
            if (v15 != 1882468914)
            {
              v22 = 13364;
LABEL_112:
              v34 = v22 | 0x70340000;
              goto LABEL_180;
            }

LABEL_181:
            if (*(a1 + 29517) != 1)
            {
              return 4;
            }

            goto LABEL_190;
          }

          if (v15 == 1885745712)
          {
            goto LABEL_181;
          }

          v27 = 12850;
LABEL_179:
          v34 = v27 | 0x70660000;
LABEL_180:
          if (v15 != v34)
          {
            return result;
          }

          goto LABEL_181;
        }

        if (v15 == 1647534392)
        {
          if (*(a1 + 29517) != 1 || *(a1 + 29515) != 1)
          {
            return 6;
          }
        }

        else
        {
          if (v15 != 1815162994)
          {
            v22 = 12848;
            goto LABEL_112;
          }

          if (*(a1 + 29520) != 1)
          {
            return 7;
          }
        }

        goto LABEL_159;
      }

      if (((v15 - 1886676528) > 4 || ((1 << (v15 - 48)) & 0x15) == 0) && ((v15 - 1886680624) > 4 || ((1 << (v15 - 48)) & 0x15) == 0))
      {
        v27 = 13364;
        goto LABEL_179;
      }

      if (*(a1 + 29518) != 1)
      {
        return result;
      }

      if (CADeviceSupportsUniversalCompression::once != -1)
      {
        dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
      }

      if ((CADeviceSupportsUniversalCompression::universal & 1) == 0)
      {
        goto LABEL_190;
      }

      return 9;
    }

    if (v15 > 2019963441)
    {
      if (v15 <= 2084075055)
      {
        if (v15 > 2037741157)
        {
          if (v15 <= 2084070959)
          {
            if (v15 != 2037741158)
            {
              v20 = 2037741171;
              goto LABEL_188;
            }

LABEL_189:
            if (*(a1 + 29516) != 1)
            {
              return 39;
            }

            goto LABEL_190;
          }

          if (v15 != 2084070960)
          {
            v35 = 2084070962;
            goto LABEL_195;
          }

LABEL_196:
          if (*(a1 + 29516) != 1)
          {
            return 29;
          }

          if (CADeviceSupportsLossyUniversalCompression::once != -1)
          {
            dispatch_once(&CADeviceSupportsLossyUniversalCompression::once, &__block_literal_global_40);
          }

          if (CADeviceSupportsLossyUniversalCompression::lossy != 1)
          {
            return 29;
          }

          v190 = a6;
          v36 = a2;
          *a7 = 2;
          goto LABEL_201;
        }

        if (v15 == 2019963442 || v15 == 2019963956)
        {
          goto LABEL_189;
        }

        v33 = 13424;
        goto LABEL_185;
      }

      if (v15 > 2088265263)
      {
        if (v15 > 2088269359)
        {
          if (v15 == 2088269360)
          {
            goto LABEL_196;
          }

          v26 = 30258;
        }

        else
        {
          if (v15 == 2088265264)
          {
            goto LABEL_196;
          }

          v26 = 26162;
        }

        v35 = v26 | 0x7C780000;
        goto LABEL_195;
      }

      if (v15 == 2084075056 || v15 == 2084075058)
      {
        goto LABEL_196;
      }

      v25 = 2084718401;
      goto LABEL_99;
    }

    if (v15 > 1999843441)
    {
      if (v15 <= 2016686641)
      {
        if (v15 == 1999843442 || v15 == 1999908961)
        {
          v190 = a6;
          if ((*(*a4 + 200))(a4) != 1.0 && *(a1 + 29532) == 1 && (v17 & 4) != 0)
          {
            *a7 = 2;
            v36 = a2;
            *a2 |= 0x2000000u;
            goto LABEL_191;
          }

          goto LABEL_160;
        }

        v23 = 12848;
      }

      else
      {
        if (v15 > 2016687215)
        {
          if (v15 == 2016687216)
          {
            goto LABEL_189;
          }

          v33 = 12848;
LABEL_185:
          v20 = v33 | 0x78660000;
          goto LABEL_188;
        }

        if (v15 == 2016686642)
        {
          goto LABEL_189;
        }

        v23 = 13364;
      }

      v20 = v23 | 0x78340000;
      goto LABEL_188;
    }

    if (v15 > 1953903151)
    {
      if (v15 != 1953903152 && v15 != 1953903154)
      {
        v28 = 1953903668;
LABEL_106:
        if (v15 != v28)
        {
          return result;
        }
      }
    }

    else if (v15 != 1952854576 && v15 != 1952854578)
    {
      v28 = 1952855092;
      goto LABEL_106;
    }

    if (*(a1 + 29518) != 1)
    {
      return 5;
    }

LABEL_190:
    v190 = a6;
    v36 = a2;
    *a7 = 2;
LABEL_191:
    v37 = 29864;
    goto LABEL_202;
  }

  if (v15 <= 758674993)
  {
    if (v15 <= 645166639)
    {
      if (v15 > 641877824)
      {
        if (v15 <= 644624753)
        {
          if (v15 != 641877825 && v15 != 642934849)
          {
            if (v15 != 643969848)
            {
              return result;
            }

            if (*(a1 + 29515) != 1)
            {
              return 29;
            }

            if (CADeviceSupportsUniversalCompression::once != -1)
            {
              dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
            }

            v24 = CADeviceSupportsUniversalCompression::universal;
LABEL_158:
            if (v24 == 1)
            {
              goto LABEL_159;
            }

            return 29;
          }

LABEL_156:
          if ((*(*a1 + 680))(a1))
          {
            return 29;
          }

          v24 = *(a1 + 29519);
          goto LABEL_158;
        }

        if ((v15 - 645162544) > 4 || ((1 << (v15 - 48)) & 0x15) == 0)
        {
          if (v15 != 644624754)
          {
            return result;
          }

          if ((*(*a1 + 680))(a1))
          {
            return 29;
          }

          v24 = *(a1 + 29520);
          goto LABEL_158;
        }

        goto LABEL_138;
      }

      if ((v15 - 641230384) <= 4 && ((1 << (v15 - 48)) & 0x15) != 0)
      {
        goto LABEL_138;
      }

      v29 = -641234480;
    }

    else
    {
      if (v15 <= 645428783)
      {
        if (v15 > 645346400)
        {
          if ((v15 - 645424688) > 4 || ((1 << (v15 - 48)) & 0x15) == 0)
          {
            v19 = 13409;
LABEL_91:
            if (v15 != (v19 | 0x26770000))
            {
              return result;
            }

            goto LABEL_156;
          }
        }

        else if ((v15 - 645166640) > 4 || ((1 << (v15 - 48)) & 0x15) == 0)
        {
          v19 = 13170;
          goto LABEL_91;
        }

LABEL_138:
        if (*(a1 + 29516) != 1)
        {
          return 29;
        }

        if (CADeviceSupportsUniversalCompression::once != -1)
        {
          dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
        }

        if (CADeviceSupportsUniversalCompression::universal != 1)
        {
          return 29;
        }

        goto LABEL_190;
      }

      if (v15 > 758670895)
      {
        if (v15 != 758670896 && v15 != 758670898)
        {
          v35 = 758674992;
          goto LABEL_195;
        }

        goto LABEL_196;
      }

      v29 = -645428784;
    }

    v30 = v15 + v29;
    if (v30 > 4 || ((1 << v30) & 0x15) == 0)
    {
      return result;
    }

    goto LABEL_138;
  }

  if (v15 <= 796423727)
  {
    if (v15 <= 792225327)
    {
      if (v15 > 762865201)
      {
        if (v15 == 762865202 || v15 == 762869296)
        {
          goto LABEL_196;
        }

        v31 = 30258;
      }

      else
      {
        if (v15 == 758674994)
        {
          goto LABEL_196;
        }

        if (v15 == 759318337)
        {
          goto LABEL_100;
        }

        v31 = 26160;
      }

      v35 = v31 | 0x2D780000;
      goto LABEL_195;
    }

    if (v15 <= 792229425)
    {
      if (v15 != 792225328 && v15 != 792225330)
      {
        v35 = 792229424;
        goto LABEL_195;
      }

      goto LABEL_196;
    }

    if (v15 > 796419631)
    {
      if (v15 == 796419632)
      {
        goto LABEL_196;
      }

      v35 = 796419634;
LABEL_195:
      if (v15 != v35)
      {
        return result;
      }

      goto LABEL_196;
    }

    if (v15 == 792229426)
    {
      goto LABEL_196;
    }

    v25 = 792872769;
LABEL_99:
    if (v15 != v25)
    {
      return result;
    }

LABEL_100:
    if (CADeviceSupportsLossyUniversalCompression::once != -1)
    {
      dispatch_once(&CADeviceSupportsLossyUniversalCompression::once, &__block_literal_global_40);
    }

    v24 = CADeviceSupportsLossyUniversalCompression::lossy;
    goto LABEL_158;
  }

  if (v15 <= 875836533)
  {
    if (v15 <= 875704437)
    {
      if (v15 == 796423728 || v15 == 796423730)
      {
        goto LABEL_196;
      }

      v21 = 12390;
    }

    else
    {
      if (v15 > 875704949)
      {
        if (v15 == 875704950)
        {
          goto LABEL_189;
        }

        v20 = 875836518;
LABEL_188:
        if (v15 != v20)
        {
          return result;
        }

        goto LABEL_189;
      }

      if (v15 == 875704438)
      {
        goto LABEL_189;
      }

      v21 = 12902;
    }

    v20 = v21 | 0x34320000;
    goto LABEL_188;
  }

  if (v15 <= 1380411456)
  {
    if (v15 == 875836534)
    {
      goto LABEL_189;
    }

    if (v15 != 1111970369)
    {
      if (v15 != 1278555701)
      {
        return result;
      }

      if (CADeviceSupportsUniversalCompression::once != -1)
      {
        dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
      }

      if (CADeviceSupportsUniversalCompression::universal)
      {
        return 9;
      }
    }
  }

  else
  {
    if ((v15 - 1530422832) <= 4 && ((1 << (v15 - 48)) & 0x15) != 0)
    {
      goto LABEL_167;
    }

    if (v15 != 1380411457)
    {
      return result;
    }

    if (*(a1 + 29519) != 1 || (*(*a4 + 40))(a4) != 13 && (*(*a4 + 40))(a4) != 8 && !(*(*a1 + 1888))(a1))
    {
      return 7;
    }
  }

LABEL_159:
  v190 = a6;
LABEL_160:
  v36 = a2;
  *a7 = 0;
LABEL_201:
  v37 = 29904;
LABEL_202:
  if (!(*(*a4 + 160))(a4, *(a1 + 29600), *(a1 + 29608)))
  {
    return 10;
  }

  v38 = (*(*a4 + 168))(a4);
  if (v38 && *(a1 + 29632) && v16 != v15 && IOSurfaceGetAllocSize(v38) > *(a1 + 29632))
  {
    return 30;
  }

  v39 = (a1 + v37);
  LODWORD(v40) = a4[14];
  v41 = a4[15];
  if (v40 >= v41)
  {
    v40 = v41;
  }

  else
  {
    v40 = v40;
  }

  if (v39[1] > v40)
  {
    return 11;
  }

  if (!(*(a1 + 904) & 0x100 | *v36 & 0x1000))
  {
    return 34;
  }

  v42 = ((*v36 & 0x1000) == 0) & (*(a1 + 904) >> 8);
  v189 = (*(*a1 + 2448))(a1, v42);
  v186 = (*(*a1 + 2448))(a1, v42);
  v43 = (*(*a1 + 2456))(a1, v42);
  if (!CA::WindowServer::Display::clones_support_detaching(*(a1 + 40)))
  {
    return 12;
  }

  if (((*(*a4 + 56))(a4) & v17) == 0 && (byte_1ED4E983E & 1) == 0)
  {
    if (BYTE1(dword_1EA84FDCC) != 1 || (*(*a4 + 56))(a4) == 1)
    {
      return 13;
    }

    if ((v17 & 4) != 0)
    {
      v44 = 0x1000000;
    }

    else
    {
      if ((v17 & 2) == 0)
      {
        return 13;
      }

      v44 = 0x800000;
    }

    *v36 |= v44;
  }

  v184 = v39;
  v45 = (*(*a4 + 88))(a4);
  if (v45)
  {
    v48 = v45;
    v49 = *(a4 + 59);
    if ((!(*(*a1 + 184))(a1) || !CA::WindowServer::Display::all_clones_support_hlg(*(a1 + 40)) || (v49 & 0x2000000000) == 0) && CGColorSpaceIsHLGBased(v48))
    {
      return 36;
    }

    if ((!(*(*a1 + 176))(a1) || (CA::WindowServer::Display::all_clones_support_pq(*(a1 + 40)) & 1) == 0) && CGColorSpaceIsPQBased(v48))
    {
      return 36;
    }
  }

  v185 = v36;
  v50 = *v36;
  if ((*v36 & 0x40) != 0)
  {
LABEL_471:
    v171 = *(a1 + 40);
    if (v171)
    {
      while (!(*(**(*v171 + 96) + 680))(*(*v171 + 96)) || (*(**(*v171 + 96) + 552))(*(*v171 + 96), *v185) && (*(*v171 + 834) & 1) == 0)
      {
        v171 = v171[1];
        if (!v171)
        {
          goto LABEL_476;
        }
      }

      return 23;
    }

    else
    {
LABEL_476:
      if ((*(*a1 + 1008))(a1) == 0.0)
      {
        return 0;
      }

      else
      {
        *(a1 + 29553) = 1;
        return 32;
      }
    }
  }

  v196 = 0;
  v197 = 0;
  v51 = v43 * v186;
  v195 = 0uLL;
  v193 = 0;
  v194 = 0;
  v192 = 0uLL;
  CA::Bounds::set_both(&v195, &v196, v46, v47, *a5, a5[1]);
  CA::Bounds::set_both(&v192, &v193, v52, v53, *v190, v190[1]);
  v54.i64[0] = v197;
  v55 = v194;
  v56 = *(a1 + 176);
  v57 = *(a1 + 180);
  v58 = v195.i32[3];
  if ((v50 & 4) != 0)
  {
    v59 = v195.i32[3];
  }

  else
  {
    v59 = v195.i32[2];
  }

  v182 = v59;
  v183 = v51;
  if (v51)
  {
    result = 14;
    if (v189 < v192.i32[2] || v192.i32[3] * v192.i32[2] > v51)
    {
      return result;
    }
  }

  if ((v50 & 0x400000) != 0)
  {
    return 35;
  }

  v60 = vcltz_s32(vshl_n_s32(vdup_n_s32((v50 & 4) == 0), 0x1FuLL));
  v61 = vbsl_s8(v60, v192.u64[1], vrev64_s32(v192.u64[1]));
  v62.i64[0] = v61.i32[0];
  v62.i64[1] = v61.i32[1];
  v63 = vcvtq_f64_s64(v62);
  v179 = v192.i64[1];
  v180 = v54;
  v62.i64[0] = v197;
  v62.i64[1] = SHIDWORD(v197);
  v64 = vdivq_f64(v63, vcvtq_f64_s64(v62));
  v65 = vbsl_s8(v60, v194, vrev64_s32(v194));
  v62.i64[0] = v65.i32[0];
  v62.i64[1] = v65.i32[1];
  v66 = vcvtq_f64_s64(v62);
  v62.i64[0] = v195.i32[2];
  v62.i64[1] = v195.i32[3];
  v67 = vdivq_f64(v66, vcvtq_f64_s64(v62));
  v68 = vcgtq_f64(v64, v67);
  v69 = vbslq_s8(v68, v67, v64);
  v181 = v69;
  v178 = v195.i32[2];
  if (CADeviceSupportsDCP::once[0] != -1)
  {
    v188 = v64;
    v175 = v68;
    v177 = v67;
    dispatch_once(CADeviceSupportsDCP::once, &__block_literal_global_341);
    v68 = v175;
    v67 = v177;
    v64 = v188;
    v69.i64[1] = *&v181.f64[1];
  }

  v70 = v185;
  v176 = v58;
  v187 = vbslq_s8(v68, v64, v67);
  v71 = v57 * v56;
  v72 = *&v69.i64[1];
  if (CADeviceSupportsDCP::has_dcp == 1 && ((*(*a4 + 16))(a4) & 0xF00) != 0x700)
  {
    goto LABEL_290;
  }

  v73 = *v185;
  v74 = v191;
  if ((*v185 & 8) != 0 || v189 < v182 || v51 && v176 * v178 > v51)
  {
    goto LABEL_292;
  }

  v75 = v184[2];
  if (v75)
  {
    if (fmin(v181.f64[0], v72) < 1.0 && v75 < v182)
    {
      v70 = v185;
LABEL_291:
      v74 = v191;
      goto LABEL_292;
    }
  }

  if ((byte_1ED4E9887 & 1) != 0 || (*(a1 + 29512) & 1) == 0)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v79.i32[0] = vuzp1_s16(vmovn_s64(vcgtq_f64(v187, _Q0)), *&_Q0.f64[0]).u32[0];
    *&_Q0.f64[0] = vmovn_s64(vcgtq_f64(_Q0, v181));
    v79.i32[1] = vuzp1_s16(*&_Q0, *&_Q0).i32[1];
    v70 = v185;
    v74 = v191;
    if ((vmaxv_u16(v79) & 1) == 0)
    {
      goto LABEL_293;
    }

LABEL_292:
    *v70 = v73 | 0x80;
    goto LABEL_293;
  }

  if ((v73 & 7) == 0)
  {
    _ZF = fmin(v181.f64[0], v72) < 1.0 && *a7 == 2;
    if (!_ZF || *(a1 + 29517) != 1)
    {
      goto LABEL_287;
    }

    if (CADeviceSupportsUniversalCompression::once != -1)
    {
      dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
    }

    if (CADeviceSupportsUniversalCompression::universal)
    {
LABEL_287:
      v70 = v185;
      v74 = v191;
      if ((*(*a1 + 2496))(a1, a5[1].f64[0], a5[1].f64[1], v190[1].f64[0], v190[1].f64[1]))
      {
        goto LABEL_293;
      }

      goto LABEL_288;
    }

    v70 = v185;
LABEL_290:
    v73 = *v70;
    goto LABEL_291;
  }

  v70 = v185;
  v74 = v191;
  if (((*(*a1 + 2472))(a1, v73 & 7, a4) & 1) == 0 && (a4[15] * a4[14]) > v71)
  {
LABEL_288:
    v73 = *v70;
    goto LABEL_292;
  }

LABEL_293:
  is_420 = CA::Render::fourcc_is_420(a4[16]);
  v82 = (v181.f64[0] >= 1.0) & ~is_420;
  if (v72 < 1.0)
  {
    v82 = 0;
  }

  if (v187.f64[0] > 1.0)
  {
    v82 = 0;
  }

  if (v187.f64[1] > 1.0)
  {
    v82 = 0;
  }

  v83 = *(a1 + 29808);
  if (v83)
  {
    if (v182 > v83 && (v82 & 1) == 0)
    {
      v84 = *v70;
      *v70 |= 0x80u;
      if (is_420)
      {
        *v70 = v84 | 0x20000080;
      }
    }
  }

  v85 = a4[16];
  if (CA::Render::fourcc_compressed_of_type(v85, 0, 0) == v85)
  {
    *v70 |= 0x40000000u;
  }

  if (BYTE2(xmmword_1ED4E980C))
  {
    v98 = 0;
    v94 = 0;
    should_enhance = 1;
  }

  else
  {
    v88 = a4[14];
    v89 = a4[15];
    v90 = v187.f64[1] * v89;
    v91 = *v70;
    if ((*v70 & 4) != 0)
    {
      v92 = v90;
    }

    else
    {
      v92 = (v187.f64[0] * v88);
    }

    if ((v91 & 4) != 0)
    {
      v93 = (v187.f64[0] * v88);
    }

    else
    {
      v93 = v90;
    }

    v94 = (v91 & 0x40000000) == 0 && v71 * 1.5 < (v90 * (v187.f64[0] * v88));
    if (v89 < 0x2D1)
    {
      v96 = 0;
    }

    else
    {
      v95 = *(a1 + 176);
      if (v95 >= *(a1 + 180))
      {
        v95 = *(a1 + 180);
      }

      v96 = v95 < 1640;
    }

    v97 = v92 > v189 || v96;
    if (v189)
    {
      v98 = v97;
    }

    else
    {
      v98 = v96;
    }

    should_enhance = CA::ScalerStatistics::should_enhance(v88, v89, v92, v93);
  }

  if (*(a4 + 248) && BYTE2(dword_1EA84FDCC) == 1)
  {
    v86.i64[0] = 1.0;
    v100 = v181.f64[0] > 1.0 ? should_enhance : 0;
    if (v100 == 1 && v72 > 1.0)
    {
      v86.i64[0] = v184[4];
      *v87.i64 = *v86.i64 * *&dword_1EA84FDA8;
      if (v187.f64[0] <= *v87.i64)
      {
        *v87.i64 = *&dword_1EA84FDAC;
        *v86.i64 = *v86.i64 * *&dword_1EA84FDAC;
        if (!((v94 | v98) & 1 | (v187.f64[1] > *v86.i64)) && (BYTE1(xmmword_1ED4E980C) & 1) == 0)
        {
          *v185 |= 0x10000000u;
        }
      }
    }
  }

  __asm { FMOV            V5.2D, #1.0 }

  v102 = v185;
  v103 = *v185;
  v104 = 12;
  if ((*v185 & 0x10000000) == 0)
  {
    v104 = 8;
  }

  v105 = &CA::ScalerUtil::ScalerLimits::limits(void)::limits[v104];
  v107 = *v105;
  v106 = v105[1];
  v108 = 14;
  if ((v103 & 0x10000000) == 0)
  {
    v108 = 10;
  }

  v109 = &CA::ScalerUtil::ScalerLimits::limits(void)::limits[v108];
  v111 = *v109;
  v110 = v109[1];
  v112 = *v109;
  v113 = v110;
  if ((v103 & 0x10000000) != 0)
  {
    v114 = v184;
    if (v187.f64[0] <= v112 && v187.f64[1] <= v113)
    {
      v103 |= 0x80u;
      *v185 = v103;
    }
  }

  else
  {
    v114 = v184;
  }

  *v74 = _Q5;
  v115 = v107;
  v116 = v106;
  if ((v103 & 0x80) != 0 && v181.f64[0] >= v115 && v72 >= v116 && v187.f64[0] <= v112 && v187.f64[1] <= v113)
  {
    goto LABEL_353;
  }

  v125 = v103 & 0xFFFFFF7F;
  *v185 = v103 & 0xFFFFFF7F;
  v126 = *(v114 + 3);
  if (v181.f64[0] < v126)
  {
    if (v126 * v115 > v181.f64[0])
    {
      return 15;
    }

    v127.f64[0] = 0.5;
    if (v107 < 0.5 && v126 * 0.5 > v181.f64[0])
    {
      v127.f64[0] = 0.5;
      do
      {
        v127.f64[0] = v127.f64[0] * 0.5;
      }

      while (v127.f64[0] > v115 && v127.f64[0] * v126 > v181.f64[0]);
    }

    if (v127.f64[0] <= 0.0 || v127.f64[0] >= 1.0)
    {
      return 15;
    }

    v125 = v103 & 0xF7FFFF7F | 0x8000000;
    *v185 = v125;
LABEL_382:
    v191->f64[0] = v127.f64[0];
    v114 = v184;
    goto LABEL_383;
  }

  v130 = *(v114 + 4);
  if (v187.f64[0] > v130 || (v127.f64[0] = 1.0, (v103 & 0x10000000) != 0) && v187.f64[0] > v112)
  {
    if (v130 * v112 < v187.f64[0])
    {
      return 15;
    }

    v131 = 2;
    if (v111 >= 3)
    {
      do
      {
        if (v130 * v131 >= v187.f64[0])
        {
          break;
        }

        v131 *= 2;
      }

      while (v131 < v111);
      if (v131 < 2)
      {
        return 15;
      }
    }

    v125 |= 0x8000000u;
    *v185 = v125;
    v127.f64[0] = v131;
    goto LABEL_382;
  }

LABEL_383:
  if (v72 >= v126)
  {
    v87.i64[0] = v114[4];
    if (v187.f64[1] <= *v87.i64)
    {
      __asm { FMOV            V5.2D, #1.0 }

      _Q5.f64[0] = v127.f64[0];
      if ((v125 & 0x10000000) == 0 || v187.f64[1] <= v113)
      {
        v103 = v125;
        goto LABEL_482;
      }
    }

    if (*v87.i64 * v113 < v187.f64[1])
    {
      return 15;
    }

    v153 = 2;
    if (v110 >= 3)
    {
      do
      {
        if (*v87.i64 * v153 >= v187.f64[1])
        {
          break;
        }

        v153 *= 2;
      }

      while (v153 < v110);
      if (v153 < 2)
      {
        return 15;
      }
    }

    v103 = v125 | 0x8000000;
    *v185 = v125 | 0x8000000;
    *v86.i64 = v153;
  }

  else
  {
    if (v126 * v116 > v72)
    {
      return 15;
    }

    v86.i64[0] = 0.5;
    if (v106 < 0.5 && v126 * 0.5 > v72)
    {
      v86.i64[0] = 0.5;
      do
      {
        *v86.i64 = *v86.i64 * 0.5;
      }

      while (*v86.i64 > v116 && *v86.i64 * v126 > v72);
    }

    v87.i64[0] = 1.0;
    if (*v86.i64 <= 0.0 || *v86.i64 >= 1.0)
    {
      return 15;
    }

    v103 = v125 | 0x8000000;
    *v185 = v125 | 0x8000000;
  }

  *&v191->f64[1] = v86.i64[0];
  *&v127.f64[1] = v86.i64[0];
  _Q5 = v127;
LABEL_482:
  v114 = v184;
  v102 = v185;
LABEL_353:
  v117 = *v114;
  v118 = v180;
  if (*v114)
  {
    v86.i32[0] = 0;
    v119 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32((v103 & 0x80) == 0), 0x1FuLL)), *v180.i8, v55);
    v120 = v103 & 0x8000000;
    v118.i32[0] = v103 & 0x8000000;
    v121 = vdupq_lane_s32(*&vceqq_s32(v118, v86), 0);
    v122.i64[0] = v119.i32[0];
    v122.i64[1] = v119.i32[1];
    v118 = v122;
    v122.i64[0] = v119.u32[0];
    v122.i64[1] = v119.u32[1];
    v87 = vcvtq_u64_f64(vmulq_f64(_Q5, vcvtq_f64_u64(v122)));
    v123 = vbslq_s8(v121, v118, v87);
    v124 = v123.u64[1];
    if (v123.i64[0] < v123.i64[1])
    {
      v124 = v123.i64[0];
    }

    if (v124 < v117)
    {
      return 16;
    }
  }

  else
  {
    v120 = v103 & 0x8000000;
  }

  v135 = *(a4 + 7);
  v136.i64[0] = v135;
  v136.i64[1] = HIDWORD(v135);
  v137 = v136;
  if (v120)
  {
    v137 = vcvtq_u64_f64(vmulq_f64(_Q5, vcvtq_f64_u64(v137)));
    v103 &= ~0x40000000u;
    *v102 = v103;
  }

  v138 = *(a1 + 29640);
  if (v138)
  {
    v87.i32[0] = 0;
    v118.i32[0] = v103 & 0x80;
    v139.i64[0] = v179;
    v139.i64[1] = SHIDWORD(v179);
    v140 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v118, v87), 0), v137, v139);
    v141 = v192.i32[0];
    v142 = v192.i32[1];
    if ((v103 & 0x80) == 0)
    {
      v141 = 0;
    }

    v143 = v140.i64[0] + v141;
    if ((v103 & 0x80) == 0)
    {
      v142 = 0;
    }

    v144 = v140.i64[1] + v142;
    if (v143 <= v144)
    {
      v143 = v144;
    }

    if (v143 > v138)
    {
      return 17;
    }
  }

  result = 18;
  if (v137.i64[0] <= v138 && v137.i64[1] <= v138)
  {
    if ((v103 & 0x8000080) != 0)
    {
      if ((v103 & 0x80) != 0)
      {
        v145 = *(a4 + 7);
        v146.i64[0] = v145;
        v146.i64[1] = HIDWORD(v145);
        v137 = vcvtq_u64_f64(vmulq_f64(v187, vcvtq_f64_u64(v146)));
        if ((v103 & 0x40000000) != 0)
        {
          v147 = vcvtq_u64_f64(v190[1]);
          v148 = vdup_n_s32((v103 & 4) == 0);
          v149.i64[0] = v148.u32[0];
          v149.i64[1] = v148.u32[1];
          v150 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v149, 0x3FuLL)), v147, vextq_s8(v147, v147, 8uLL));
          v137 = vbslq_s8(vcgtq_u64(v137, v150), v150, v137);
        }
      }

      if ((v103 & 4) != 0)
      {
        v151 = v137.u64[1];
      }

      else
      {
        v151 = v137.i64[0];
      }

      if (v189 && v151 > v189 || v183 && v137.i64[1] * v137.i64[0] > v183)
      {
        return 19;
      }
    }

    else
    {
      if (v189 < v182 || v51 && v176 * v178 > v51)
      {
        return 20;
      }

      v151 = v182;
      v152 = v184[2];
      if (v152)
      {
        if (fmin(v181.f64[0], v72) < 1.0 && v152 < v182)
        {
          return 20;
        }
      }
    }

    if (CADeviceUseCompression::once[0] != -1)
    {
      dispatch_once(CADeviceUseCompression::once, &__block_literal_global_17_12639);
    }

    if (CADeviceUseCompression::enable_compression == 1)
    {
      v154 = a4[16];
      if ((*v185 & 0xBF800080) != 0)
      {
        v154 = (*(*a1 + 2480))(a1, a4[16], v151, 2);
      }

      if (v154 && CA::Render::fourcc_compressed_of_type(v154, 0, 0) != v154)
      {
        v173 = *(a1 + 29776);
        if (CA::Render::fourcc_is_420(v154) && *(a1 + 29784))
        {
          v173 = *(a1 + 29784);
        }

        if (v173 && v151 > v173)
        {
          return 31;
        }

        v174 = (*(*a1 + 2480))(a1, v154, v151, 2);
        if (CA::Render::fourcc_compressed_of_type(v174, 0, 0) == v174 && (BYTE3(xmmword_1ED4E980C) & 1) == 0)
        {
          return 31;
        }
      }
    }

    if ((*v185 & 0xBF800080) == 0 || (result = 21, v178 <= dword_1EA84FD78) && v176 <= dword_1EA84FD7C)
    {
      v155 = CA::WindowServer::Display::minmax_clone_scale(a1);
      v157 = v156;
      v159 = v158 * v187.f64[0];
      v161 = v160 * v187.f64[1];
      CA::ScalerUtil::ScalerLimits::limits(v162);
      v163 = 1.0;
      if (v159 > 1.0 || v161 > 1.0)
      {
        LODWORD(v163) = a4[14];
        v172 = v159 * v163;
        if (v172 > dword_1EA84FD88 * 0.75)
        {
          return 22;
        }

        LODWORD(v172) = a4[15];
        if (v161 * *&v172 > dword_1EA84FD8C * 0.75)
        {
          return 22;
        }
      }

      v164 = v155 * v181.f64[0];
      v165 = v157 * v72;
      v166 = fmin(v155 * v181.f64[0], v157 * v72);
      v167 = v166 < 1.0;
      if (v166 < 1.0)
      {
        v168 = *v184;
        if (v164 * v180.i32[0] < v168 || v165 * v180.i32[1] < v168)
        {
          return 38;
        }
      }

      if (v159 == 0.0 || v161 == 0.0 || v164 >= *&xmmword_1EA84FD90 && v165 >= *(&xmmword_1EA84FD90 + 1) && v159 <= *(&xmmword_1EA84FD90 + 2) && v161 <= *(&xmmword_1EA84FD90 + 3))
      {
        if (v167)
        {
          v169 = v164 * v180.i32[0];
          v170 = *v184;
          if (v169 < v170 || v165 * v180.i32[1] < v170)
          {
            return 38;
          }
        }

        goto LABEL_471;
      }

      return 15;
    }
  }

  return result;
}