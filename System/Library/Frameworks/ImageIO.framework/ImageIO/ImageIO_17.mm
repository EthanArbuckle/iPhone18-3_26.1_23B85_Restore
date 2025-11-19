int *step_to_eps_mu(float a1, int *result, int *a3)
{
  v3 = a1;
  if (a1 <= 0.0)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    kdu_error::kdu_error(v7, "Kakadu Core Error:\n");
    (*(*&v7[0] + 16))(v7, "Absolute quantization step sizes must be strictly positive.");
    kdu_error::~kdu_error(v7);
  }

  v4 = 0;
  while (v3 < 1.0)
  {
    v3 = v3 + v3;
    ++v4;
  }

  *result = v4;
  v5 = vcvtms_s32_f32(((v3 + -1.0) * 2048.0) + 0.5);
  *a3 = v5;
  if (v5 < 2048)
  {
    v6 = *result;
  }

  else
  {
    *a3 = 0;
    v6 = *result - 1;
    *result = v6;
  }

  if (v6 >= 32)
  {
    *result = 31;
    *a3 = 0;
    v6 = *result;
  }

  if (v6 < 0)
  {
    *result = 0;
    *a3 = 2047;
  }

  return result;
}

uint64_t qcd_params::check_marker_segment(qcd_params *this, int a2, int a3, unsigned __int8 *a4, int *a5)
{
  if (a2 == 65372)
  {
    v5 = -1;
    goto LABEL_3;
  }

  result = 0;
  if (a2 == 65373 && a3 >= 2)
  {
    v8 = *a4;
    *a5 = v8;
    if (*(this + 8) < 257)
    {
      return 1;
    }

    v5 = a4[1] | (v8 << 8);
LABEL_3:
    *a5 = v5;
    return 1;
  }

  return result;
}

uint64_t qcd_params::read_marker_segment(qcd_params *this, int a2, int a3, unsigned __int8 *a4, int a5)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    return 0;
  }

  v9 = *(this + 5);
  if (v9 < 0)
  {
    v11 = a4;
    if (a2 != 65372)
    {
      return 0;
    }
  }

  else
  {
    if (a2 != 65373)
    {
      return 0;
    }

    v11 = (a4 + 1);
    v10 = *a4;
    if (*(this + 8) >= 257)
    {
      v11 = (a4 + 2);
      v10 = a4[1] | (v10 << 8);
    }

    if (v10 != v9)
    {
      return 0;
    }
  }

  if ((*(this + 4) & 0x80000000) == 0)
  {
    v12 = kdu_params::access_cluster(this, "SIZ");
    if (!v12)
    {
      qcd_params::read_marker_segment();
    }

    v32 = 2;
    kdu_params::get(v12, "Sprofile", 0, 0, &v32, 1, 1, 1);
    if (!v32)
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      kdu_warning::kdu_warning(&v29, "Kakadu Core Warning:\n");
      (*(v29 + 16))(&v29, "Profile violation detected (code-stream is technically illegal).  QCD/QCC marker segments may only appear in the main header of a Profile-0 code-stream.  You should set Sprofile to 1 or 2.  Problem detected in tile ");
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      *v33 = 0u;
      if (BYTE8(v29))
      {
        sprintf(v33, "%x");
      }

      else
      {
        sprintf(v33, "%d");
      }

      (*(v29 + 16))(&v29, v33);
      (*(v29 + 16))(&v29, ".");
      kdu_warning::~kdu_warning(&v29);
    }
  }

  v13 = &a4[a3];
  if (&v13[-v11] <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = v11;
    __cxa_throw(exception, MEMORY[0x1E69E53E8], 0);
  }

  v14 = (v11 + 1);
  v15 = *v11;
  kdu_params::set(this, "Qguard", 0, 0, (v15 >> 5));
  v16 = a3;
  if ((v15 & 0x1F) == 2)
  {
    v22 = 0;
LABEL_29:
    kdu_params::set(this, "Qderived", 0, 0, v22);
    if (v14 < v13 - 1)
    {
      v23 = 0;
      v24 = &a4[v16 + ~v11];
      do
      {
        if (v24 <= 1)
        {
          v25 = __cxa_allocate_exception(8uLL);
          *v25 = v14;
          __cxa_throw(v25, MEMORY[0x1E69E53E8], 0);
        }

        kdu_params::set(this, "Qabs_steps", v23++, 0, ((vcvts_n_f32_u32(v14[1] | ((*v14 & 7) << 8), 0xBuLL) + 1.0) / (1 << (*v14 >> 3))));
        v24 -= 2;
        v14 += 2;
        v18 = v14;
      }

      while (v14 < v13 - 1);
      goto LABEL_33;
    }

LABEL_43:
    v28 = __cxa_allocate_exception(8uLL);
    *v28 = v14;
    __cxa_throw(v28, MEMORY[0x1E69E53E8], 0);
  }

  if ((v15 & 0x1F) == 1)
  {
    v22 = 1;
    goto LABEL_29;
  }

  if ((v15 & 0x1F) != 0)
  {
    *&v35 = 0;
    *v33 = 0u;
    v34 = 0u;
    kdu_error::kdu_error(v33, "Kakadu Core Error:\n");
    (*(*v33 + 16))(v33, "Undefined style byte found in QCD/QCC marker segment!");
    kdu_error::~kdu_error(v33);
  }

  if (v14 >= v13)
  {
    goto LABEL_43;
  }

  v17 = 0;
  v18 = v13;
  v19 = &a4[v16 + ~v11];
  v20 = v19;
  do
  {
    v21 = &v17[v11];
    if (v20 <= 0)
    {
      v26 = __cxa_allocate_exception(8uLL);
      *v26 = v21 + 1;
      __cxa_throw(v26, MEMORY[0x1E69E53E8], 0);
    }

    kdu_params::set(this, "Qabs_ranges", v17++, 0, (v21[1] >> 3));
    --v20;
  }

  while (v19 != v17);
LABEL_33:
  if (v18 != v13)
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    kdu_error::kdu_error(&v29, "Kakadu Core Error:\n");
    (*(v29 + 16))(&v29, "Malformed QCD/QCC marker segment encountered. The final ");
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    *v33 = 0u;
    if (BYTE8(v29))
    {
      sprintf(v33, "%x");
    }

    else
    {
      sprintf(v33, "%d");
    }

    (*(v29 + 16))(&v29, v33);
    (*(v29 + 16))(&v29, " bytes were not consumed!");
    kdu_error::~kdu_error(&v29);
  }

  return 1;
}

void sub_185F761BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  if (v20 == 1)
  {
    __cxa_begin_catch(v19);
    a19 = 0;
    a17 = 0u;
    a18 = 0u;
    kdu_error::kdu_error(&a17, "Kakadu Core Error:\n");
    (*(a17 + 16))(&a17, "Malformed QCD/QCC marker segment encountered. Marker segment is too small.");
    kdu_error::~kdu_error(&a17);
  }

  _Unwind_Resume(v19);
}

kdu_params *qcd_params::finalize(kdu_params *this, char a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v34 = 0;
    *v33 = 0;
    v32 = 0.0;
    v27 = this;
    if ((kdu_params::get(this, "Qguard", 0, 0, v33, 1, 1, 1) & 1) == 0)
    {
      v33[0] = 1;
      kdu_params::set(v27, "Qguard", 0, 0, 1);
    }

    v2 = kdu_params::access_cluster(v27, "COD");
    if (!v2)
    {
      qcd_params::finalize();
    }

    v3 = kdu_params::access_relation(v2, v27[4], v27[5], 0, 1);
    v4 = v3;
    if (!v3)
    {
      qcd_params::finalize();
    }

    v31 = 0;
    *v30 = 0;
    if (!kdu_params::get(v3, "Creversible", 0, 0, &v31, 1, 1, 1) || !kdu_params::get(v4, "Clevels", 0, 0, &v30[1], 1, 1, 1) || (kdu_params::get(v4, "Ckernels", 0, 0, v30, 1, 1, 1) & 1) == 0)
    {
      qcd_params::finalize();
    }

    if (v30[0] == -1)
    {
      v36[0] = 0;
      if ((kdu_params::get(v4, "Catk", 0, 0, v36, 1, 1, 1) & 1) == 0)
      {
        qcd_params::finalize();
      }

      v6 = kdu_params::access_cluster(v27, "ATK");
      if (!v6 || (v5 = kdu_params::access_relation(v6, v27[4], -1, v36[0], 1)) == 0)
      {
        qcd_params::finalize();
      }
    }

    else
    {
      v5 = 0;
    }

    v44 = 0;
    memset(v43, 0, sizeof(v43));
    if (v30[1] < 1)
    {
      v8 = 1;
    }

    else
    {
      v7 = 0;
      v8 = 1;
      do
      {
        kdu_params::get(v4, "Cdecomp", v7, 0, &v34, 1, 1, 1);
        v8 = v8 + cod_params::expand_decomp_bands(v34, v43, v9) - 1;
        ++v7;
      }

      while (v7 < v30[1]);
    }

    v10 = 0;
    do
    {
      v11 = kdu_params::get(v27, "Qabs_steps", v10++, 0, &v32, 1, 1, 0);
    }

    while ((v11 & 1) != 0);
    v12 = 0;
    do
    {
      v13 = kdu_params::get(v27, "Qabs_ranges", v12++, 0, &v33[1], 1, 1, 0);
    }

    while ((v13 & 1) != 0);
    v29 = 0;
    if (v31)
    {
      this = kdu_params::get(v27, "Qderived", 0, 0, &v29, 1, 1, 1);
      if (!this || v29)
      {
        v29 = 0;
        this = kdu_params::set(v27, "Qderived", 0, 0, 0);
      }

      if (v8 + 1 != v12)
      {
        v28 = 0;
        v14 = kdu_params::access_cluster(v27, "SIZ");
        if ((kdu_params::get(v14, "Sprecision", v27[5] & ~(v27[5] >> 31), 0, &v28, 1, 1, 1) & 1) == 0)
        {
          v38 = 0;
          *v36 = 0u;
          v37 = 0u;
          kdu_error::kdu_error(v36, "Kakadu Core Error:\n");
          (*(*v36 + 16))(v36, "Trying to finalize quantization parameter attributes without first providing any information about the image component bit-depths (i.e. Sprecision).");
          kdu_error::~kdu_error(v36);
        }

        v15 = v27[8];
        if (v27[5] < 0)
        {
          if (v15 < 1)
          {
            goto LABEL_52;
          }

          for (i = 0; i < v15; ++i)
          {
            v17 = v28;
            v36[0] = 0;
            v18 = kdu_params::get(v14, "Sprecision", i, 0, v36, 1, 1, 1);
            if (v36[0] == v17)
            {
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }

            if ((v19 & 1) == 0)
            {
              kdu_params::access_relation(v27, v27[4], i, 0, 0);
            }

            v15 = v27[8];
          }
        }

        if (v15 >= 3)
        {
          v20 = ++v28;
          goto LABEL_53;
        }

LABEL_52:
        v20 = v28;
LABEL_53:
        if (v20 <= 4)
        {
          v28 = v20 + 1;
        }

        v46 = 0;
        memset(v45, 0, sizeof(v45));
        v42 = 0;
        *v41 = 0;
        v40 = 0;
        *v39 = 0;
        bzero(v36, 0x288uLL);
        kdu_kernels::clear(v36);
        if (v5)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v35 = 0;
          while (kdu_params::get(v5, "Ksteps", v23, 0, &v35, 1, 1, 1))
          {
            v24 += v35;
            ++v23;
            v22 += 16;
          }

          operator new[]();
        }

        v35 = 0;
        kdu_params::get(v4, "Ckernels", 0, 0, &v35, 1, 1, 1);
        kdu_kernels::init(v36, v35, 1);
      }
    }

    else
    {
      v45[0] = 0.0;
      if (kdu_params::get(v27, "Qstep", 0, 0, v45, 1, 1, 1))
      {
        if (kdu_params::get(v27, "Qabs_steps", 0, 0, &v32, 0, 0, 0))
        {
          v38 = 0;
          *v36 = 0u;
          v37 = 0u;
          kdu_warning::kdu_warning(v36, "Kakadu Core Warning:\n");
          kdu_warning::~kdu_warning(v36);
        }

        if ((kdu_params::get(v27, "Qderived", 0, 0, &v29, 1, 1, 1) & 1) == 0)
        {
          v29 = 0;
          kdu_params::set(v27, "Qderived", 0, 0, 0);
        }

        derive_absolute_steps(v27, v4, v5, v45[0]);
      }

      if (v10 - 1 >= v8)
      {
        if (!kdu_params::get(v27, "Qderived", 0, 0, &v29, 1, 1, 1) || v29)
        {
          v29 = 0;
          kdu_params::set(v27, "Qderived", 0, 0, 0);
        }
      }

      else
      {
        v21 = kdu_params::get(v27, "Qderived", 0, 0, &v29, 1, 1, 1);
        if (v10 != 2)
        {
          if ((v21 & 1) == 0)
          {
            v29 = 0;
            kdu_params::set(v27, "Qderived", 0, 0, 0);
          }

          v45[0] = 0.0039062;
          kdu_params::set(v27, "Qstep", 0, 0, 0.00390625);
          derive_absolute_steps(v27, v4, v5, v45[0]);
        }

        if (!v21 || !v29)
        {
          v29 = 1;
          kdu_params::set(v27, "Qderived", 0, 0, 1);
        }
      }

      if (v29)
      {
        v25 = 1;
      }

      else
      {
        v25 = v8;
      }

      this = kdu_params::get(v27, "Qabs_steps", 0, 0, &v32, 0, 0, 1);
      if (!this)
      {
        v35 = 0;
        v36[0] = 0;
        operator new[]();
      }

      v35 = 0;
      v36[0] = 0;
      if (v25 >= 1)
      {
        for (j = 0; j != v25; ++j)
        {
          if ((kdu_params::get(v27, "Qabs_steps", j, 0, &v32, 1, 1, 1) & 1) == 0)
          {
            qcd_params::finalize();
          }

          step_to_eps_mu(v32, v36, &v35);
          this = kdu_params::set(v27, "Qabs_steps", j, 0, (((v35 * 0.00048828) + 1.0) / (1 << SLOBYTE(v36[0]))));
        }
      }
    }
  }

  return this;
}

void sub_185F77168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  kdu_warning::~kdu_warning(va);
  _Unwind_Resume(a1);
}

void derive_absolute_steps(qcd_params *a1, kdu_params *a2, kdu_params *a3, float a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0;
  *v13 = 0;
  v12 = 0;
  *v11 = 0;
  bzero(v10, 0x288uLL);
  kdu_kernels::clear(v10);
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v9 = 0;
    while (kdu_params::get(a3, "Ksteps", v6, 0, &v9, 1, 1, 1))
    {
      v7 += v9;
      ++v6;
      v5 += 16;
    }

    operator new[]();
  }

  v9 = 0;
  kdu_params::get(a2, "Ckernels", 0, 0, &v9, 1, 1, 1);
  kdu_kernels::init(v10, v9, 0);
}

void sub_185F77740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kdu_kernels::reset(va);
  _Unwind_Resume(a1);
}

void rgn_params::rgn_params(rgn_params *this)
{
  *(this + 1) = "RGN";
  *(this + 8) = 0;
  *(this + 1) = xmmword_186206BB0;
  *(this + 20) = 256;
  *(this + 42) = 0;
  *(this + 6) = this;
  *(this + 7) = 0;
  *(this + 8) = this + 72;
  *(this + 9) = this;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = this;
  *(this + 104) = 0;
  *(this + 9) = 16842753;
  *(this + 14) = 0;
  *this = &unk_1EF4D2F08;
  kdu_params::define_attribute(this, "Rshift", "Region of interest up-shift value.  All subband samples which are involved in the synthesis of any image sample which belongs to the foreground region of an ROI mask will be effectively shifted up (scaled by two the power of this shift value) prior to quantization.  The region geometry is specified independently and is not explicitly signalled through the code-stream; instead, this shift must be sufficiently large to enable the decoder to separate the foreground and background on the basis of the shifted sample amplitudes alone.  You will receive an appropriate error message if the shift value is too small.\n\t\t[Default is 0]", "I");
}

const char *rgn_params::copy_with_xforms(rgn_params *this, kdu_params *a2)
{
  v4 = 0;
  result = kdu_params::get(a2, "Rshift", 0, 0, &v4, 0, 1, 1);
  if (result)
  {
    return kdu_params::set(this, "Rshift", 0, 0, v4);
  }

  return result;
}

uint64_t rgn_params::write_marker_segment(rgn_params *this, kdu_output *a2, kdu_params *a3, int a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a4 || (*(this + 5) & 0x80000000) != 0)
  {
    return 0;
  }

  *v19 = 0;
  if ((kdu_params::get(this, "Rshift", 0, 0, v19, 1, 1, 1) & 1) == 0)
  {
    *v19 = 0;
  }

  if (a3)
  {
    *v20 = 0;
    v9 = kdu_params::get(a3, "Rshift", 0, 0, v20, 1, 1, 1);
    v10 = *v19;
    if (v9)
    {
      v11 = *v20;
    }

    else
    {
      v11 = 0;
    }

    if (*v19 != v11)
    {
      goto LABEL_14;
    }

    return 0;
  }

  v10 = *v19;
  if (!*v19)
  {
    return 0;
  }

LABEL_14:
  if (v10 >= 0x100)
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    kdu_error::kdu_error(v17, "Kakadu Core Error:\n");
    (*(*&v17[0] + 16))(v17, "Illegal ROI up-shift, ");
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    *v20 = 0u;
    if (BYTE8(v17[0]))
    {
      sprintf(v20, "%x");
    }

    else
    {
      sprintf(v20, "%d");
    }

    (*(*&v17[0] + 16))(v17, v20);
    (*(*&v17[0] + 16))(v17, ". Legal range is from 0 to 255!");
    kdu_error::~kdu_error(v17);
  }

  v12 = *(this + 8);
  if (v12 < 257)
  {
    v4 = 7;
  }

  else
  {
    v4 = 8;
  }

  if (a2)
  {
    v13 = v12 < 257;
    kdu_output::put(a2, 255);
    kdu_output::put(a2, 94);
    kdu_output::put(a2, 0);
    kdu_output::put(a2, v4 - 2);
    v14 = *(this + 5);
    if (v13)
    {
      v15 = kdu_output::put(a2, v14) + 4;
    }

    else
    {
      kdu_output::put(a2, SBYTE1(v14));
      kdu_output::put(a2, v14);
      v15 = 6;
    }

    v16 = kdu_output::put(a2, 0);
    if (v4 != v16 + v15 + kdu_output::put(a2, v19[0]))
    {
      rgn_params::write_marker_segment();
    }
  }

  return v4;
}

BOOL rgn_params::check_marker_segment(rgn_params *this, int a2, int a3, unsigned __int8 *a4, int *a5)
{
  result = a2 == 65374 && a3 > 1;
  if (result)
  {
    v8 = *a4;
    *a5 = v8;
    if (*(this + 8) >= 257)
    {
      *a5 = a4[1] | (v8 << 8);
    }
  }

  return result;
}

uint64_t rgn_params::read_marker_segment(rgn_params *this, int a2, int a3, unsigned __int8 *a4, int a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2 != 65374 || a5 != 0)
  {
    return 0;
  }

  v6 = *(this + 5);
  if (v6 < 0)
  {
    return 0;
  }

  v8 = *(this + 8);
  if (v8 <= 256)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 > a3)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = a4;
    __cxa_throw(exception, MEMORY[0x1E69E53E8], 0);
  }

  v11 = a4 + 1;
  v10 = *a4;
  if (v8 >= 257)
  {
    v11 = a4 + 2;
    v10 = a4[1] | (v10 << 8);
  }

  if (v10 != v6)
  {
    return 0;
  }

  v12 = &a4[a3];
  if (v12 - v11 <= 0)
  {
    v16 = __cxa_allocate_exception(8uLL);
    *v16 = v11;
    goto LABEL_29;
  }

  v13 = v11 + 1;
  if (*v11)
  {
    *&v21 = 0;
    *v19 = 0u;
    v20 = 0u;
    kdu_error::kdu_error(v19, "Kakadu Core Error:\n");
    (*(*v19 + 16))(v19, "Encountered non-Part1 RGN marker segment!");
    kdu_error::~kdu_error(v19);
  }

  if (v12 - v13 <= 0)
  {
    v16 = __cxa_allocate_exception(8uLL);
    *v16 = v13;
LABEL_29:
    __cxa_throw(v16, MEMORY[0x1E69E53E8], 0);
  }

  kdu_params::set(this, "Rshift", 0, 0, v11[1]);
  if (v11 + 2 != v12)
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    kdu_error::kdu_error(v17, "Kakadu Core Error:\n");
    (*(*&v17[0] + 16))(v17, "Malformed RGN marker segment encountered. The final ");
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *v19 = 0u;
    if (BYTE8(v17[0]))
    {
      sprintf(v19, "%x");
    }

    else
    {
      sprintf(v19, "%d");
    }

    (*(*&v17[0] + 16))(v17, v19);
    (*(*&v17[0] + 16))(v17, " bytes were not consumed!");
    kdu_error::~kdu_error(v17);
  }

  return 1;
}

void sub_185F77F08(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13)
{
  if (v14 == 1)
  {
    __cxa_begin_catch(v13);
    a13 = 0;
    a11 = 0u;
    a12 = 0u;
    kdu_error::kdu_error(&a11, "Kakadu Core Error:\n");
    (*(a11 + 16))(&a11, "Malformed RGN marker segment encountered. Marker segment is too small.");
    kdu_error::~kdu_error(&a11);
  }

  _Unwind_Resume(v13);
}

void rgn_params::finalize(rgn_params *this, char a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v7 = 0;
    if ((kdu_params::get(this, "Rlevels", 0, 0, &v7, 1, 1, 1) & 1) == 0)
    {
      kdu_params::set(this, "Rlevels", 0, 0, 4);
    }

    v3 = kdu_params::get(this, "Rshift", 0, 0, &v7, 1, 1, 1);
    if (v7 > 37)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 == 1)
    {
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      kdu_warning::kdu_warning(v5, "Kakadu Core Warning:\n");
      (*(*&v5[0] + 16))(v5, "Up-shift values in the RGN marker segment should not need to exceed 37 under any circumstances.  The use of a larger value, ");
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      *v8 = 0u;
      if (BYTE8(v5[0]))
      {
        sprintf(v8, "%x");
      }

      else
      {
        sprintf(v8, "%d");
      }

      (*(*&v5[0] + 16))(v5, v8);
      (*(*&v5[0] + 16))(v5, " in this case, may cause problems.");
      kdu_warning::~kdu_warning(v5);
    }
  }
}

void sub_185F781A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kdu_warning::~kdu_warning(va);
  _Unwind_Resume(a1);
}

void poc_params::poc_params(poc_params *this)
{
  *(this + 1) = "POC";
  *(this + 8) = 0;
  *(this + 1) = xmmword_186206BB0;
  *(this + 20) = 1;
  *(this + 42) = 0;
  *(this + 6) = this;
  *(this + 7) = 0;
  *(this + 8) = this + 72;
  *(this + 9) = this;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = this;
  *(this + 104) = 0;
  *(this + 9) = 65537;
  *(this + 14) = 0;
  *this = &unk_1EF4D2F68;
}

uint64_t poc_params::copy_with_xforms(poc_params *this, kdu_params *a2, int a3)
{
  *v10 = 0;
  *v11 = 0;
  *v9 = 0;
  result = kdu_params::get(a2, "Porder", 0, 0, &v11[1], 0, 1, 1);
  if (result)
  {
    result = kdu_params::get(a2, "Porder", 0, 0, &v11[1], 0, 0, 1);
    if (result)
    {
      v7 = 0;
      do
      {
        result = kdu_params::get(a2, "Porder", v7, 1, v11, 0, 0, 1);
        if (!result)
        {
          break;
        }

        result = kdu_params::get(a2, "Porder", v7, 2, &v10[1], 0, 0, 1);
        if (!result)
        {
          break;
        }

        result = kdu_params::get(a2, "Porder", v7, 3, v10, 0, 0, 1);
        if (!result)
        {
          break;
        }

        result = kdu_params::get(a2, "Porder", v7, 4, &v9[1], 0, 0, 1);
        if (!result)
        {
          break;
        }

        result = kdu_params::get(a2, "Porder", v7, 5, v9, 0, 0, 1);
        if (!result)
        {
          break;
        }

        v11[0] = (v11[0] - a3) & ~((v11[0] - a3) >> 31);
        v8 = v9[1] <= a3;
        v9[1] -= a3;
        if (v8)
        {
          v9[1] = 1;
          v10[1] = 0;
        }

        kdu_params::set(this, "Porder", v7, 0, v11[1]);
        kdu_params::set(this, "Porder", v7, 1, v11[0]);
        kdu_params::set(this, "Porder", v7, 2, v10[1]);
        kdu_params::set(this, "Porder", v7, 3, v10[0]);
        kdu_params::set(this, "Porder", v7, 4, v9[1]);
        kdu_params::set(this, "Porder", v7++, 5, v9[0]);
        result = kdu_params::get(a2, "Porder", v7, 0, &v11[1], 0, 0, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t poc_params::write_marker_segment(poc_params *this, kdu_output *a2, kdu_params *a3, int a4)
{
  v60 = *MEMORY[0x1E69E9840];
  if (*(this + 6) != a4)
  {
    return 0;
  }

  *v53 = 0;
  *v54 = 0;
  *v52 = 0;
  v7 = -1;
  do
  {
    ++v7;
  }

  while ((kdu_params::get(this, "Porder", v7, 0, &v54[4], 0, 1, 1) & 1) != 0);
  if (!v7)
  {
    return 0;
  }

  if (a3)
  {
    v8 = *(a3 + 4);
    v9 = *(this + 4);
    if (v8 != v9)
    {
      if ((v8 & 0x80000000) == 0 || *(this + 6))
      {
        poc_params::write_marker_segment();
      }

      v10 = kdu_params::access_relation(this, v9, *(this + 5), 1, 1);
      if (!v10 || (kdu_params::get(v10, "Porder", 0, 0, &v54[4], 1, 1, 1) & 1) == 0)
      {
        v11 = 0;
        do
        {
          if (!kdu_params::get(this, "Porder", v11, 0, &v54[4], 1, 1, 1) || !kdu_params::get(this, "Porder", v11, 1, v54, 1, 1, 1) || !kdu_params::get(this, "Porder", v11, 2, &v53[4], 1, 1, 1) || !kdu_params::get(this, "Porder", v11, 3, v53, 1, 1, 1) || !kdu_params::get(this, "Porder", v11, 4, &v52[4], 1, 1, 1) || (kdu_params::get(this, "Porder", v11, 5, v52, 1, 1, 1) & 1) == 0)
          {
            *&v57 = 0;
            *v55 = 0u;
            v56 = 0u;
            kdu_error::kdu_error(v55, "Kakadu Core Error:\n");
            (*(*v55 + 16))(v55, "Information required to write POC marker segment is not currently complete!");
            kdu_error::~kdu_error(v55);
          }

          v12 = *&v54[4];
          *v55 = 0;
          v13 = kdu_params::get(a3, "Porder", v11, 0, v55, 1, 1, 1);
          v14 = *v55 == v12 ? v13 : 0;
          if (v14 != 1)
          {
            return 0;
          }

          v15 = *v54;
          *v55 = 0;
          v16 = kdu_params::get(a3, "Porder", v11, 1, v55, 1, 1, 1);
          v17 = *v55 == v15 ? v16 : 0;
          if (v17 != 1)
          {
            return 0;
          }

          v18 = *&v53[4];
          *v55 = 0;
          v19 = kdu_params::get(a3, "Porder", v11, 2, v55, 1, 1, 1);
          v20 = *v55 == v18 ? v19 : 0;
          if (v20 != 1)
          {
            return 0;
          }

          v21 = *v53;
          *v55 = 0;
          v22 = kdu_params::get(a3, "Porder", v11, 3, v55, 1, 1, 1);
          v23 = *v55 == v21 ? v22 : 0;
          if (v23 != 1)
          {
            return 0;
          }

          v24 = *&v52[4];
          *v55 = 0;
          v25 = kdu_params::get(a3, "Porder", v11, 4, v55, 1, 1, 1);
          v26 = *v55 == v24 ? v25 : 0;
          if (v26 != 1)
          {
            return 0;
          }

          v27 = *v52;
          *v55 = 0;
          v28 = kdu_params::get(a3, "Porder", v11, 5, v55, 1, 1, 1);
          v29 = *v55 == v27 ? v28 : 0;
          if ((v29 & 1) == 0)
          {
            return 0;
          }
        }

        while (v7 != ++v11);
      }
    }
  }

  v51 = 0;
  v30 = kdu_params::access_cluster(this, "SIZ");
  if (!v30 || (kdu_params::get(v30, "Scomponents", 0, 0, &v51, 1, 1, 1) & 1) == 0)
  {
    poc_params::write_marker_segment();
  }

  v46 = v51;
  if (v51 >= 257)
  {
    v31 = 0x4000;
  }

  else
  {
    v31 = 256;
  }

  v47 = v31;
  if (v51 >= 257)
  {
    v32 = 9;
  }

  else
  {
    v32 = 7;
  }

  v33 = v32 * v7;
  result = (v32 * v7 + 4);
  if (a2)
  {
    v45 = v32 * v7 + 4;
    kdu_output::put(a2, 255);
    kdu_output::put(a2, 95);
    v35 = v33 + 2;
    kdu_output::put(a2, SHIBYTE(v35));
    kdu_output::put(a2, v35);
    v36 = 0;
    v37 = 4;
    while (1)
    {
      if (!kdu_params::get(this, "Porder", v36, 0, &v54[4], 1, 1, 1) || !kdu_params::get(this, "Porder", v36, 1, v54, 1, 1, 1) || !kdu_params::get(this, "Porder", v36, 2, &v53[4], 1, 1, 1) || !kdu_params::get(this, "Porder", v36, 3, v53, 1, 1, 1) || !kdu_params::get(this, "Porder", v36, 4, &v52[4], 1, 1, 1) || (kdu_params::get(this, "Porder", v36, 5, v52, 1, 1, 1) & 1) == 0)
      {
        *&v57 = 0;
        *v55 = 0u;
        v56 = 0u;
        kdu_error::kdu_error(v55, "Kakadu Core Error:\n");
        (*(*v55 + 16))(v55, "Information required to write POC marker segment is not currently complete!");
        kdu_error::~kdu_error(v55);
      }

      if (*&v54[4] >= 0x21u)
      {
        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        kdu_error::kdu_error(&v48, "Kakadu Core Error:\n");
        (*(v48 + 16))(&v48, "Illegal lower bound, ");
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        *v55 = 0u;
        if (BYTE8(v48))
        {
          sprintf(v55, "%x");
        }

        else
        {
          sprintf(v55, "%d");
        }

        (*(v48 + 16))(&v48, v55);
        (*(v48 + 16))(&v48, ", for resolution level indices in progression order change attribute.  Legal range is from 0 to 32.");
        kdu_error::~kdu_error(&v48);
      }

      if (*v53 > 33 || *v53 <= *&v54[4])
      {
        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        kdu_error::kdu_error(&v48, "Kakadu Core Error:\n");
        (*(v48 + 16))(&v48, "Illegal upper bound (exclusive), ");
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        *v55 = 0u;
        if (BYTE8(v48))
        {
          sprintf(v55, "%x");
        }

        else
        {
          sprintf(v55, "%d");
        }

        (*(v48 + 16))(&v48, v55);
        (*(v48 + 16))(&v48, ", for resolution level indices in progression order change attribute.  Legal range is from the lower bound + 1 to 33.");
        kdu_error::~kdu_error(&v48);
      }

      if ((*v54 & 0x80000000) != 0 || *v54 >= v47)
      {
        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        kdu_error::kdu_error(&v48, "Kakadu Core Error:\n");
        (*(v48 + 16))(&v48, "Illegal lower bound, ");
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        *v55 = 0u;
        if (BYTE8(v48))
        {
          sprintf(v55, "%x");
        }

        else
        {
          sprintf(v55, "%d");
        }

        (*(v48 + 16))(&v48, v55);
        (*(v48 + 16))(&v48, ", for component indices in progression order change attribute.  Legal range is from 0 to ");
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        *v55 = 0u;
        if (BYTE8(v48))
        {
          sprintf(v55, "%x");
        }

        else
        {
          sprintf(v55, "%d");
        }

        (*(v48 + 16))(&v48, v55);
        (*(v48 + 16))(&v48, ".");
        kdu_error::~kdu_error(&v48);
      }

      if (*&v52[4] <= *v54 || *&v52[4] > v47)
      {
        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        kdu_error::kdu_error(&v48, "Kakadu Core Error:\n");
        (*(v48 + 16))(&v48, "Illegal upper bound (exclusive), ");
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        *v55 = 0u;
        if (BYTE8(v48))
        {
          sprintf(v55, "%x");
        }

        else
        {
          sprintf(v55, "%d");
        }

        (*(v48 + 16))(&v48, v55);
        (*(v48 + 16))(&v48, ", for component indices in progression order change attribute.  Legal range is from the lower bound + 1 to ");
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        *v55 = 0u;
        if (BYTE8(v48))
        {
          sprintf(v55, "%x");
        }

        else
        {
          sprintf(v55, "%d");
        }

        (*(v48 + 16))(&v48, v55);
        (*(v48 + 16))(&v48, ".");
        kdu_error::~kdu_error(&v48);
      }

      if (*&v53[4] >= 0x10000u)
      {
        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        kdu_error::kdu_error(&v48, "Kakadu Core Error:\n");
        (*(v48 + 16))(&v48, "Illegal upper bound (exclusive), ");
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        *v55 = 0u;
        if (BYTE8(v48))
        {
          sprintf(v55, "%x");
        }

        else
        {
          sprintf(v55, "%d");
        }

        (*(v48 + 16))(&v48, v55);
        (*(v48 + 16))(&v48, ", for layer indices in progression order change attribute.  Legal range is from 0 to ");
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        *v55 = 0u;
        if (BYTE8(v48))
        {
          sprintf(v55, "%x");
        }

        else
        {
          sprintf(v55, "%d");
        }

        (*(v48 + 16))(&v48, v55);
        (*(v48 + 16))(&v48, ".");
        kdu_error::~kdu_error(&v48);
      }

      if (v46 > 256 || *&v52[4] < v47)
      {
        v38 = kdu_output::put(a2, v54[4]) + v37;
        if (v46 >= 257)
        {
          v40 = v54[0];
          kdu_output::put(a2, v54[1]);
          kdu_output::put(a2, v40);
          v39 = 2;
          goto LABEL_104;
        }
      }

      else
      {
        *&v52[4] = 0;
        v38 = kdu_output::put(a2, v54[4]) + v37;
      }

      v39 = kdu_output::put(a2, v54[0]);
LABEL_104:
      v41 = v53[4];
      kdu_output::put(a2, v53[5]);
      kdu_output::put(a2, v41);
      v42 = kdu_output::put(a2, v53[0]);
      v43 = v52[4];
      if (v46 >= 257)
      {
        kdu_output::put(a2, v52[5]);
        kdu_output::put(a2, v43);
        v44 = 2;
      }

      else
      {
        v44 = kdu_output::put(a2, v52[4]);
      }

      v37 = v38 + v39 + v42 + v44 + kdu_output::put(a2, v52[0]) + 2;
      if (v7 == ++v36)
      {
        result = v45;
        if (v45 != v37)
        {
          poc_params::write_marker_segment();
        }

        return result;
      }
    }
  }

  return result;
}

BOOL poc_params::read_marker_segment(poc_params *this, int a2, int a3, unsigned __int8 *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2 != 65375)
  {
    return a2 == 65375;
  }

  v25 = 0;
  v8 = kdu_params::access_cluster(this, "SIZ");
  if (!v8 || (kdu_params::get(v8, "Scomponents", 0, 0, &v25, 1, 1, 1) & 1) == 0)
  {
    poc_params::read_marker_segment();
  }

  v9 = v25;
  if (v25 < 257)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v11 = a3 / (2 * v10 + 5);
  if (v11 < 1)
  {
LABEL_35:
    exception = __cxa_allocate_exception(8uLL);
    *exception = a4;
    __cxa_throw(exception, MEMORY[0x1E69E53E8], 0);
  }

  v12 = 0;
  v13 = &a4[a3];
  do
  {
    if (v13 - a4 < 1)
    {
      goto LABEL_35;
    }

    v14 = a4 + 1;
    kdu_params::set(this, "Porder", v12, 0, *a4);
    if (v13 - (a4 + 1) < v10 || ((v15 = a4[1], v9 >= 257) ? (v14 = a4 + 3, v15 = (a4[2] | (v15 << 8))) : (v14 = a4 + 2), kdu_params::set(this, "Porder", v12, 1, v15), v13 - v14 < 2))
    {
      a4 = v14;
      goto LABEL_35;
    }

    a4 = v14 + 2;
    kdu_params::set(this, "Porder", v12, 2, __rev16(*v14));
    if (v13 - (v14 + 2) < 1)
    {
      goto LABEL_35;
    }

    kdu_params::set(this, "Porder", v12, 3, v14[2]);
    v16 = v14 + 3;
    if (v13 - (v14 + 3) < v10 || ((v17 = v14[3], v9 >= 257) ? (v16 = v14 + 5, v17 = v14[4] | (v17 << 8)) : (v16 = v14 + 4), !v17 ? (v18 = v9 < 257) : (v18 = 0), !v18 ? (v19 = v17) : (v19 = 256), kdu_params::set(this, "Porder", v12, 4, v19), v13 - v16 < 1))
    {
      v22 = __cxa_allocate_exception(8uLL);
      *v22 = v16;
      __cxa_throw(v22, MEMORY[0x1E69E53E8], 0);
    }

    kdu_params::set(this, "Porder", v12, 5, *v16);
    a4 = v16 + 1;
    ++v12;
  }

  while (v11 != v12);
  if (a4 != v13)
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    kdu_error::kdu_error(v23, "Kakadu Core Error:\n");
    (*(*&v23[0] + 16))(v23, "Malformed POC marker segment encountered. The final ");
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *v26 = 0u;
    if (BYTE8(v23[0]))
    {
      sprintf(v26, "%x");
    }

    else
    {
      sprintf(v26, "%d");
    }

    (*(*&v23[0] + 16))(v23, v26);
    (*(*&v23[0] + 16))(v23, " bytes were not consumed!");
    kdu_error::~kdu_error(v23);
  }

  return a2 == 65375;
}

void sub_185F79774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    a13 = 0;
    a11 = 0u;
    a12 = 0u;
    kdu_error::kdu_error(&a11, "Kakadu Core Error:\n");
    (*(a11 + 16))(&a11, "Malformed POC marker segment encountered. Marker segment is too small.");
    kdu_error::~kdu_error(&a11);
  }

  _Unwind_Resume(a1);
}

void crg_params::crg_params(crg_params *this)
{
  *(this + 8) = 0;
  *(this + 1) = xmmword_186206BB0;
  *(this + 38) = 0;
  *(this + 42) = 0;
  *(this + 6) = this;
  *(this + 7) = 0;
  *(this + 8) = this + 72;
  *(this + 9) = this;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = this;
  *(this + 18) = 1;
  *(this + 104) = 0;
  *(this + 14) = 0;
  *this = &unk_1EF4D2FC8;
  *(this + 1) = "CRG";
}

uint64_t crg_params::copy_with_xforms(crg_params *this, kdu_params *a2, int a3, int a4, int a5, char a6, int a7)
{
  if ((a6 & 1) != 0 || a7)
  {

    return kdu_params::delete_unparsed_attribute(this, "CRGoffset");
  }

  else
  {
    v11 = kdu_params::access_cluster(a2, "SIZ");
    v12 = kdu_params::access_cluster(this, "SIZ");
    if (!v11 || (v13 = v12) == 0)
    {
      crg_params::copy_with_xforms();
    }

    *v28 = 0;
    *v29 = 0;
    *v26 = 0;
    *v27 = 0;
    if (!kdu_params::get(v11, "Ssize", 0, 0, v29, 1, 1, 1) || !kdu_params::get(v11, "Ssize", 0, 1, &v29[1], 1, 1, 1) || !kdu_params::get(v11, "Sorigin", 0, 0, v28, 1, 1, 1) || !kdu_params::get(v11, "Sorigin", 0, 1, &v28[1], 1, 1, 1) || !kdu_params::get(v13, "Ssize", 0, 0, v27, 1, 1, 1) || !kdu_params::get(v13, "Ssize", 0, 1, &v27[1], 1, 1, 1) || !kdu_params::get(v13, "Sorigin", 0, 0, v26, 1, 1, 1) || (kdu_params::get(v13, "Sorigin", 0, 1, &v26[1], 1, 1, 1) & 1) == 0)
    {
      crg_params::copy_with_xforms();
    }

    v14 = vsub_s32(*v29, *v28);
    *v29 = v14;
    v15 = vsub_s32(*v27, *v26);
    *v27 = v15;
    v16 = v14.i32[0];
    if (a5)
    {
      *v29 = vrev64_s32(v14);
      v17 = v14.i32[1];
    }

    else
    {
      v17 = v14.i32[0];
      v16 = v14.i32[1];
    }

    v19 = v16 / v15.i32[1];
    v20 = v17 / v15.i32[0];
    if (v16 / v15.i32[1] < 1 || v20 <= 0)
    {
      crg_params::copy_with_xforms();
    }

    v25 = 0;
    result = kdu_params::get(a2, "CRGoffset", 0, a5, &v25 + 1, 0, 0, 1);
    if (result)
    {
      v22 = 0;
      v23 = v20;
      do
      {
        result = kdu_params::get(a2, "CRGoffset", v22, a5 ^ 1u, &v25, 0, 0, 1);
        if (!result)
        {
          break;
        }

        v24 = *(&v25 + 1) / v23;
        *&v25 = *&v25 / v19;
        *(&v25 + 1) = *(&v25 + 1) / v23;
        if (v22 >= a3)
        {
          kdu_params::set(this, "CRGoffset", v22 - a3, 0, v24);
          kdu_params::set(this, "CRGoffset", v22 - a3, 1, *&v25);
        }

        result = kdu_params::get(a2, "CRGoffset", ++v22, a5, &v25 + 1, 0, 0, 1);
      }

      while ((result & 1) != 0);
      if (v22)
      {
        if (v22 <= a3)
        {
          kdu_params::set(this, "CRGoffset", 0, 0, *(&v25 + 1));
          return kdu_params::set(this, "CRGoffset", 0, 1, *&v25);
        }
      }
    }
  }

  return result;
}

uint64_t crg_params::write_marker_segment(crg_params *this, kdu_output *a2, kdu_params *a3, int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    return 0;
  }

  if ((*(this + 5) & 0x80000000) == 0)
  {
    return 0;
  }

  v22 = 0;
  if (!kdu_params::get(this, "CRGoffset", 0, 0, &v22, 1, 1, 1))
  {
    return 0;
  }

  if (a3)
  {
    crg_params::write_marker_segment();
  }

  v21 = 0;
  v7 = kdu_params::access_cluster(this, "SIZ");
  if (!v7 || (kdu_params::get(v7, "Scomponents", 0, 0, &v21, 1, 1, 1) & 1) == 0)
  {
    crg_params::write_marker_segment();
  }

  v8 = 4 * v21;
  v9 = (4 * v21 + 4);
  if (a2)
  {
    kdu_output::put(a2, 255);
    kdu_output::put(a2, 99);
    kdu_output::put(a2, SHIBYTE(v8));
    kdu_output::put(a2, v8 | 2);
    if (v21 < 1)
    {
      v11 = 4;
    }

    else
    {
      v10 = 0;
      v11 = 4;
      do
      {
        if (!kdu_params::get(this, "CRGoffset", v10, 0, &v22, 1, 1, 1) || (kdu_params::get(this, "CRGoffset", v10, 1, &v22 + 1, 1, 1, 1) & 1) == 0)
        {
          *&v25 = 0;
          *v23 = 0u;
          v24 = 0u;
          kdu_error::kdu_error(v23, "Kakadu Core Error:\n");
          (*(*v23 + 16))(v23, "Component registration information incomplete!");
          kdu_error::~kdu_error(v23);
        }

        v12 = vdupq_lane_s64(__SPAIR64__(v22, HIDWORD(v22)), 0);
        v13.i32[0] = vmovn_s32(vcgeq_f32(v12, xmmword_1862059A0)).u32[0];
        v13.i32[1] = vmovn_s32(vcgtq_f32(xmmword_1862059A0, v12)).i32[1];
        if (vmaxv_u16(v13))
        {
          v20 = 0;
          memset(v19, 0, sizeof(v19));
          kdu_error::kdu_error(v19, "Kakadu Core Error:\n");
          (*(*&v19[0] + 16))(v19, "Illegal component registration offsets, {");
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          *v23 = 0u;
          sprintf(v23, "%f", *&v22);
          (*(*&v19[0] + 16))(v19, v23);
          (*(*&v19[0] + 16))(v19, ",");
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          *v23 = 0u;
          sprintf(v23, "%f", *(&v22 + 1));
          (*(*&v19[0] + 16))(v19, v23);
          (*(*&v19[0] + 16))(v19, "}.  Legal range is from 0.0 to 1.0 (exclusive).");
          kdu_error::~kdu_error(v19);
        }

        v14 = vcvtms_s32_f32((*(&v22 + 1) * 65536.0) + 0.5);
        if (v14 >= 0xFFFF)
        {
          v15 = -1;
        }

        else
        {
          v15 = v14;
        }

        v16 = vcvtms_s32_f32((*&v22 * 65536.0) + 0.5);
        if (v16 >= 0xFFFF)
        {
          v17 = -1;
        }

        else
        {
          v17 = v16;
        }

        kdu_output::put(a2, SHIBYTE(v15));
        kdu_output::put(a2, v15);
        kdu_output::put(a2, SHIBYTE(v17));
        kdu_output::put(a2, v17);
        v11 += 4;
        ++v10;
      }

      while (v10 < v21);
    }

    if (v9 != v11)
    {
      crg_params::write_marker_segment();
    }
  }

  return v9;
}

uint64_t crg_params::read_marker_segment(crg_params *this, int a2, int a3, unsigned __int8 *a4, int a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2 == 65379 && a5 == 0;
  if (!v5 || (*(this + 5) & 0x80000000) == 0)
  {
    return 0;
  }

  v17 = 0;
  v10 = kdu_params::access_cluster(this, "SIZ");
  if (!v10 || !kdu_params::get(v10, "Scomponents", 0, 0, &v17, 1, 1, 1))
  {
    crg_params::read_marker_segment();
  }

  v11 = a4;
  if (v17 >= 1)
  {
    v12 = 0;
    v13 = a3;
    v11 = a4;
    while (1)
    {
      if (v13 < 2)
      {
        goto LABEL_23;
      }

      kdu_params::set(this, "CRGoffset", v12, 1, vcvts_n_f32_u32(__rev16(*v11), 0x10uLL));
      if (v13 - 2 < 2)
      {
        break;
      }

      kdu_params::set(this, "CRGoffset", v12, 0, vcvts_n_f32_u32(__rev16(*(v11 + 1)), 0x10uLL));
      v11 += 4;
      ++v12;
      v13 -= 4;
      if (v12 >= v17)
      {
        goto LABEL_16;
      }
    }

    v11 += 2;
LABEL_23:
    exception = __cxa_allocate_exception(8uLL);
    *exception = v11;
    __cxa_throw(exception, MEMORY[0x1E69E53E8], 0);
  }

LABEL_16:
  if (v11 != &a4[a3])
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    kdu_error::kdu_error(v15, "Kakadu Core Error:\n");
    (*(*&v15[0] + 16))(v15, "Malformed CRG marker segment encountered. The final ");
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    *v18 = 0u;
    if (BYTE8(v15[0]))
    {
      sprintf(v18, "%x");
    }

    else
    {
      sprintf(v18, "%d");
    }

    (*(*&v15[0] + 16))(v15, v18);
    (*(*&v15[0] + 16))(v15, " bytes were not consumed!");
    kdu_error::~kdu_error(v15);
  }

  return 1;
}

void sub_185F7A424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    a13 = 0;
    a11 = 0u;
    a12 = 0u;
    kdu_error::kdu_error(&a11, "Kakadu Core Error:\n");
    (*(a11 + 16))(&a11, "Malformed CRG marker segment encountered. Marker segment is too small.");
    kdu_error::~kdu_error(&a11);
  }

  _Unwind_Resume(a1);
}

void org_params::org_params(org_params *this)
{
  *(this + 1) = "ORG";
  *(this + 8) = 0;
  *(this + 1) = xmmword_186206BB0;
  *(this + 20) = 1;
  *(this + 42) = 0;
  *(this + 6) = this;
  *(this + 7) = 0;
  *(this + 8) = this + 72;
  *(this + 9) = this;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = this;
  *(this + 104) = 0;
  *(this + 9) = 65537;
  *(this + 14) = 0;
  *this = &unk_1EF4D3028;
}

uint64_t org_params::copy_with_xforms(org_params *this, kdu_params *a2)
{
  v6 = 0;
  v5 = 0;
  if (kdu_params::get(a2, "ORGtparts", 0, 0, &v6, 0, 1, 1))
  {
    kdu_params::set(this, "ORGtparts", 0, 0, v6);
  }

  result = kdu_params::get(a2, "ORGgen_plt", 0, 0, &v5, 0, 1, 1);
  if (result)
  {
    return kdu_params::set(this, "ORGgen_plt", 0, 0, v5);
  }

  return result;
}

void siz_params::~siz_params(siz_params *this)
{
  kdu_params::~kdu_params(this);

  JUMPOUT(0x186602850);
}

void mct_params::~mct_params(mct_params *this)
{
  kdu_params::~kdu_params(this);

  JUMPOUT(0x186602850);
}

void mcc_params::~mcc_params(mcc_params *this)
{
  kdu_params::~kdu_params(this);

  JUMPOUT(0x186602850);
}

void mco_params::~mco_params(mco_params *this)
{
  kdu_params::~kdu_params(this);

  JUMPOUT(0x186602850);
}

void atk_params::~atk_params(atk_params *this)
{
  kdu_params::~kdu_params(this);

  JUMPOUT(0x186602850);
}

void cod_params::~cod_params(cod_params *this)
{
  kdu_params::~kdu_params(this);

  JUMPOUT(0x186602850);
}

void ads_params::~ads_params(ads_params *this)
{
  kdu_params::~kdu_params(this);

  JUMPOUT(0x186602850);
}

void dfs_params::~dfs_params(dfs_params *this)
{
  kdu_params::~kdu_params(this);

  JUMPOUT(0x186602850);
}

void qcd_params::~qcd_params(qcd_params *this)
{
  kdu_params::~kdu_params(this);

  JUMPOUT(0x186602850);
}

void rgn_params::~rgn_params(rgn_params *this)
{
  kdu_params::~kdu_params(this);

  JUMPOUT(0x186602850);
}

void poc_params::~poc_params(poc_params *this)
{
  kdu_params::~kdu_params(this);

  JUMPOUT(0x186602850);
}

void crg_params::~crg_params(crg_params *this)
{
  kdu_params::~kdu_params(this);

  JUMPOUT(0x186602850);
}

void org_params::~org_params(org_params *this)
{
  kdu_params::~kdu_params(this);

  JUMPOUT(0x186602850);
}

double _cg_jinit_huff_decoder(uint64_t a1)
{
  v2 = (**(a1 + 8))();
  v3 = v2;
  *(a1 + 624) = v2;
  *v2 = start_pass_huff_decoder;
  *(v2 + 16) = finish_pass_huff_0;
  if (*(a1 + 316))
  {
    v4 = (**(a1 + 8))(a1, 1, *(a1 + 56) << 8);
    *(a1 + 192) = v4;
    if (*(a1 + 56) >= 1)
    {
      v5 = 0;
      *&v6 = -1;
      *(&v6 + 1) = -1;
      do
      {
        v4[14] = v6;
        v4[15] = v6;
        v4[12] = v6;
        v4[13] = v6;
        v4[10] = v6;
        v4[11] = v6;
        v4[8] = v6;
        v4[9] = v6;
        v4[6] = v6;
        v4[7] = v6;
        v4[4] = v6;
        v4[5] = v6;
        v4[2] = v6;
        v4[3] = v6;
        *v4 = v6;
        v4[1] = v6;
        v4 += 16;
        ++v5;
      }

      while (v5 < *(a1 + 56));
    }

    result = 0.0;
    *(v3 + 88) = 0u;
    *(v3 + 72) = 0u;
  }

  else
  {
    result = 0.0;
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 128) = 0u;
  }

  return result;
}

void start_pass_huff_decoder(_DWORD *a1)
{
  v2 = *(a1 + 78);
  v3 = a1[135];
  if (a1[79])
  {
    v4 = a1[136];
    if (v3)
    {
      if (v4 < v3 || v4 > a1[142] || a1[112] != 1)
      {
        goto LABEL_79;
      }
    }

    else if (v4)
    {
      goto LABEL_79;
    }

    v42 = a1[137];
    if (v42)
    {
      v43 = v42 - 1;
      if (v43 != a1[138])
      {
        goto LABEL_79;
      }
    }

    else
    {
      v43 = a1[138];
    }

    if (v43 < 14)
    {
LABEL_80:
      if (a1[112] < 1)
      {
        v54 = 0;
      }

      else
      {
        v45 = 0;
        do
        {
          v46 = *(*&a1[2 * v45 + 114] + 4);
          v47 = *(a1 + 24);
          v48 = a1[135];
          if (v48 && (*(v47 + (v46 << 8)) & 0x80000000) != 0)
          {
            v49 = *a1;
            *(v49 + 40) = 118;
            *(v49 + 48) = v46;
            *(*a1 + 52) = 0;
            (*(*a1 + 8))(a1, 0xFFFFFFFFLL);
            v48 = a1[135];
          }

          if (v48 <= a1[136])
          {
            v50 = v48 - 1;
            v51 = (v47 + (v46 << 8) + 4 * v48);
            do
            {
              if (a1[137] != (*v51 & ~(*v51 >> 31)))
              {
                v52 = *a1;
                *(v52 + 40) = 118;
                *(v52 + 48) = v46;
                *(*a1 + 52) = v48;
                (*(*a1 + 8))(a1, 0xFFFFFFFFLL);
              }

              *v51++ = a1[138];
              ++v50;
              ++v48;
            }

            while (v50 < a1[136]);
          }

          ++v45;
          v53 = a1[112];
        }

        while (v45 < v53);
        v54 = v53 > 0;
      }

      v55 = a1[135];
      v56 = v55 == 0;
      if (v55)
      {
        v57 = decode_mcu_AC_first;
      }

      else
      {
        v57 = decode_mcu_DC_first;
      }

      v58 = decode_mcu_AC_refine;
      if (v56)
      {
        v58 = decode_mcu_DC_refine;
      }

      if (!a1[137])
      {
        v58 = v57;
      }

      *(v2 + 8) = v58;
      if (v54)
      {
        v59 = 0;
        v60 = v2 + 72;
        do
        {
          v61 = *&a1[2 * v59 + 114];
          if (a1[135])
          {
            v62 = *(v61 + 24);
            v63 = (v60 + 8 * v62);
            jpeg_make_d_derived_tbl(a1, 0, v62, v63);
            *(v2 + 104) = *v63;
          }

          else if (!a1[137])
          {
            jpeg_make_d_derived_tbl(a1, 1, *(v61 + 20), (v60 + 8 * *(v61 + 20)));
          }

          *(v2 + 44 + 4 * v59++) = 0;
        }

        while (v59 < a1[112]);
      }

      *(v2 + 40) = 0;
      goto LABEL_108;
    }

LABEL_79:
    v44 = *a1;
    *(v44 + 40) = 17;
    *(v44 + 48) = v3;
    *(*a1 + 52) = a1[136];
    *(*a1 + 56) = a1[137];
    *(*a1 + 60) = a1[138];
    (**a1)(a1);
    goto LABEL_80;
  }

  if (v3 || a1[137] || a1[138] || ((v65 = a1[136], a1[78]) || v65 <= 63) && v65 != a1[142])
  {
    v5 = *a1;
    *(v5 + 40) = 125;
    (*(v5 + 8))(a1, 0xFFFFFFFFLL);
  }

  v6 = decode_mcu_sub;
  if (a1[142] == 63)
  {
    v6 = decode_mcu;
  }

  *(v2 + 8) = v6;
  if (a1[112] >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *&a1[2 * v7 + 114];
      jpeg_make_d_derived_tbl(a1, 1, *(v8 + 20), (v2 + 112 + 8 * *(v8 + 20)));
      if (a1[142])
      {
        jpeg_make_d_derived_tbl(a1, 0, *(v8 + 24), (v2 + 144 + 8 * *(v8 + 24)));
      }

      *(v2 + 44 + 4 * v7++) = 0;
    }

    while (v7 < a1[112]);
  }

  if (a1[124] >= 1)
  {
    v9 = 0;
    v10 = v2 + 336;
    do
    {
      v11 = *&a1[2 * a1[v9 + 125] + 114];
      v12 = v10 + 8 * v9;
      *(v12 - 160) = *(v2 + 112 + 8 * v11[5]);
      v13 = a1[142];
      if (v13)
      {
        v14 = *(v2 + 144 + 8 * v11[6]);
      }

      else
      {
        v14 = 0;
      }

      *(v12 - 80) = v14;
      if (v11[13])
      {
        v17 = v11 + 9;
        v15 = v11[9];
        v16 = v17[1];
        if (v13 > 14)
        {
          if (v13 > 34)
          {
            if (v13 == 35)
            {
              v36 = v16 - 7;
              v37 = v16 - 1;
              v38 = v15 - 7;
              v21 = v15 - 1;
              if (v36 < 0xFFFFFFFA)
              {
                v37 = 5;
              }

              if (v38 < 0xFFFFFFFA)
              {
                v21 = 5;
              }

              v22 = &jpeg_zigzag_order6 + 24 * v37;
            }

            else
            {
              if (v13 != 48)
              {
                goto LABEL_50;
              }

              v27 = v16 - 8;
              v28 = v16 - 1;
              v29 = v15 - 8;
              v21 = v15 - 1;
              if (v27 < 0xFFFFFFF9)
              {
                v28 = 6;
              }

              if (v29 < 0xFFFFFFF9)
              {
                v21 = 6;
              }

              v22 = &jpeg_zigzag_order7 + 28 * v28;
            }
          }

          else if (v13 == 15)
          {
            v33 = v16 - 5;
            v34 = v16 - 1;
            v35 = v15 - 5;
            v21 = v15 - 1;
            if (v33 < 0xFFFFFFFC)
            {
              v34 = 3;
            }

            if (v35 < 0xFFFFFFFC)
            {
              v21 = 3;
            }

            v22 = &jpeg_zigzag_order4 + 16 * v34;
          }

          else
          {
            if (v13 != 24)
            {
              goto LABEL_50;
            }

            v18 = v16 - 6;
            v19 = v16 - 1;
            v20 = v15 - 6;
            v21 = v15 - 1;
            if (v18 < 0xFFFFFFFB)
            {
              v19 = 4;
            }

            if (v20 < 0xFFFFFFFB)
            {
              v21 = 4;
            }

            v22 = &jpeg_zigzag_order5 + 20 * v19;
          }

          goto LABEL_70;
        }

        if (v13)
        {
          if (v13 == 3)
          {
            v39 = v16 - 3;
            v40 = v16 - 1;
            v41 = v15 - 3;
            v21 = v15 - 1;
            if (v39 < 0xFFFFFFFE)
            {
              v40 = 1;
            }

            if (v41 < 0xFFFFFFFE)
            {
              v21 = 1;
            }

            v22 = &jpeg_zigzag_order2 + 8 * v40;
            goto LABEL_70;
          }

          if (v13 == 8)
          {
            v24 = v16 - 4;
            v25 = v16 - 1;
            v26 = v15 - 4;
            v21 = v15 - 1;
            if (v24 < 0xFFFFFFFD)
            {
              v25 = 2;
            }

            if (v26 < 0xFFFFFFFD)
            {
              v21 = 2;
            }

            v22 = &jpeg_zigzag_order3 + 12 * v25;
            goto LABEL_70;
          }

LABEL_50:
          v30 = v16 - 9;
          v31 = v16 - 1;
          v32 = v15 - 9;
          v21 = v15 - 1;
          if (v30 < 0xFFFFFFF8)
          {
            v31 = 7;
          }

          if (v32 < 0xFFFFFFF8)
          {
            v21 = 7;
          }

          v22 = &jpeg_zigzag_order + 32 * v31;
LABEL_70:
          v23 = *&v22[4 * v21] + 1;
          goto LABEL_71;
        }

        v23 = 1;
      }

      else
      {
        v23 = 0;
      }

LABEL_71:
      *(v10 + 4 * v9++) = v23;
    }

    while (v9 < a1[124]);
  }

LABEL_108:
  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  v64 = a1[93];
  *(v2 + 60) = 0;
  *(v2 + 64) = v64;
}

uint64_t finish_pass_huff_0(uint64_t result)
{
  v1 = *(result + 624);
  *(*(result + 616) + 36) += *(v1 + 32) / 8;
  *(v1 + 32) = 0;
  return result;
}

uint64_t decode_mcu_DC_first(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 624);
  v25 = *(a1 + 552);
  if (!*(a1 + 372) || *(v4 + 64) || (result = process_restart(a1), result))
  {
    if (!*(v4 + 60))
    {
      v32 = a1;
      v6 = *(a1 + 40);
      v7 = *v6;
      v8 = v6[1];
      v28 = *v6;
      v29 = v8;
      v9 = *(v4 + 24);
      v10 = *(v4 + 32);
      v26 = *(v4 + 40);
      v27 = *(v4 + 56);
      if (*(a1 + 496) >= 1)
      {
        v11 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          v12 = *(a2 + 8 * v11);
          v13 = *(a1 + 500 + 4 * v11);
          v14 = *(v4 + 72 + 8 * *(*(a1 + 456 + 8 * v13) + 20));
          if (v10 > 7)
          {
            goto LABEL_11;
          }

          result = jpeg_fill_bit_buffer(&v28, v9, v10, 0);
          if (!result)
          {
            return result;
          }

          v9 = v30;
          v10 = v31;
          if (v31 >= 8)
          {
LABEL_11:
            v16 = v9 >> (v10 - 8);
            v17 = *(v14 + 4 * v16 + 288);
            if (v17)
            {
              v10 -= v17;
              v18 = v14 + v16;
              v19 = *(v18 + 1312);
              if (*(v18 + 1312))
              {
                goto LABEL_17;
              }

              goto LABEL_13;
            }

            v15 = 9;
          }

          else
          {
            v15 = 1;
          }

          v21 = jpeg_huff_decode(&v28, v9, v10, v14, v15);
          if (v21 < 0)
          {
            return 0;
          }

          v19 = v21;
          v9 = v30;
          v10 = v31;
          if (v21)
          {
LABEL_17:
            if (v10 < v19)
            {
              result = jpeg_fill_bit_buffer(&v28, v9, v10, v19);
              if (!result)
              {
                return result;
              }

              v9 = v30;
              v10 = v31;
            }

            v10 -= v19;
            v22 = bmask[v19];
            v23 = v22 & (v9 >> v10);
            if (v23 > bmask[v19 - 1])
            {
              v22 = 0;
            }

            v20 = v23 - v22;
            goto LABEL_23;
          }

LABEL_13:
          v20 = 0;
LABEL_23:
          v24 = *(&v26 + v13 + 1) + v20;
          *(&v26 + v13 + 1) = v24;
          *v12 = v24 << v25;
          if (++v11 >= *(a1 + 496))
          {
            v6 = *(a1 + 40);
            v7 = v28;
            v8 = v29;
            break;
          }
        }
      }

      *v6 = v7;
      v6[1] = v8;
      *(v4 + 24) = v9;
      *(v4 + 32) = v10;
      *(v4 + 40) = v26;
      *(v4 + 56) = v27;
    }

    if (*(a1 + 372))
    {
      --*(v4 + 64);
    }

    return 1;
  }

  return result;
}

uint64_t decode_mcu_AC_first(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 624);
  if (*(a1 + 372))
  {
    if (!*(v4 + 64))
    {
      result = process_restart(a1);
      if (!result)
      {
        return result;
      }
    }
  }

  if (*(v4 + 60))
  {
    goto LABEL_31;
  }

  v6 = *(v4 + 40);
  if (v6)
  {
    v7 = v6 - 1;
    goto LABEL_30;
  }

  v34 = a1;
  v8 = *(a1 + 40);
  v10 = *v8;
  v9 = *(v8 + 8);
  v30 = v10;
  v31 = v9;
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  v13 = *(a1 + 544);
  v14 = *(a1 + 540);
  if (v14 > v13)
  {
LABEL_28:
    v7 = 0;
    goto LABEL_29;
  }

  v29 = *(a1 + 552);
  v15 = *(a1 + 560);
  v16 = *a2;
  v17 = *(v4 + 104);
  v32 = 0;
  v33 = 0;
  while (1)
  {
    if (v12 > 7)
    {
      goto LABEL_13;
    }

    result = jpeg_fill_bit_buffer(&v30, v11, v12, 0);
    if (!result)
    {
      return result;
    }

    v11 = v32;
    v12 = v33;
    if (v33 >= 8)
    {
LABEL_13:
      v19 = (v11 >> (v12 - 8));
      v20 = *(v17 + 288 + 4 * v19);
      if (v20)
      {
        v12 -= v20;
        v21 = *(v17 + 1312 + v19);
        goto LABEL_18;
      }

      v18 = 9;
    }

    else
    {
      v18 = 1;
    }

    v21 = jpeg_huff_decode(&v30, v11, v12, v17, v18);
    if ((v21 & 0x80000000) != 0)
    {
      return 0;
    }

    v11 = v32;
    v12 = v33;
LABEL_18:
    v22 = v21 >> 4;
    v23 = v21 & 0xF;
    if ((v21 & 0xF) != 0)
    {
      if (v12 < v23)
      {
        result = jpeg_fill_bit_buffer(&v30, v11, v12, v23);
        if (!result)
        {
          return result;
        }

        v11 = v32;
        v12 = v33;
      }

      v24 = v22 + v14;
      v12 -= v23;
      v25 = bmask[v23];
      v26 = v25 & (v11 >> v12);
      if (v26 > bmask[v23 - 1])
      {
        v25 = 0;
      }

      *(v16 + 2 * *(v15 + 4 * v24)) = (v26 - v25) << v29;
      goto LABEL_27;
    }

    if (v22 != 15)
    {
      break;
    }

    v24 = v14 + 15;
LABEL_27:
    v14 = v24 + 1;
    if (v24 >= v13)
    {
      goto LABEL_28;
    }
  }

  if (v21 < 0x10)
  {
    goto LABEL_28;
  }

  if (v12 >= v22)
  {
    goto LABEL_40;
  }

  result = jpeg_fill_bit_buffer(&v30, v11, v12, v22);
  if (result)
  {
    v11 = v32;
    v12 = v33;
LABEL_40:
    v12 -= v22;
    v7 = (bmask[v22] & (v11 >> v12)) + ~(-1 << v22);
LABEL_29:
    v27 = *(a1 + 40);
    v28 = v31;
    *v27 = v30;
    v27[1] = v28;
    *(v4 + 24) = v11;
    *(v4 + 32) = v12;
LABEL_30:
    *(v4 + 40) = v7;
LABEL_31:
    if (*(a1 + 372))
    {
      --*(v4 + 64);
    }

    return 1;
  }

  return result;
}

uint64_t decode_mcu_DC_refine(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 624);
  if (!*(a1 + 372) || *(v4 + 64) || (result = process_restart(a1), result))
  {
    v17 = a1;
    v6 = *(a1 + 40);
    v7 = *v6;
    v8 = v6[1];
    v13 = *v6;
    v14 = v8;
    v9 = *(v4 + 24);
    v10 = *(v4 + 32);
    if (*(a1 + 496) >= 1)
    {
      v11 = 0;
      v15 = 0;
      v16 = 0;
      v12 = 1 << *(a1 + 552);
      do
      {
        if (v10 <= 0)
        {
          result = jpeg_fill_bit_buffer(&v13, v9, v10, 1);
          if (!result)
          {
            return result;
          }

          v9 = v15;
          v10 = v16;
        }

        if ((v9 >> --v10))
        {
          **(a2 + 8 * v11) |= v12;
        }

        ++v11;
      }

      while (v11 < *(a1 + 496));
      v6 = *(a1 + 40);
      v7 = v13;
      v8 = v14;
    }

    *v6 = v7;
    v6[1] = v8;
    *(v4 + 24) = v9;
    *(v4 + 32) = v10;
    if (*(a1 + 372))
    {
      --*(v4 + 64);
    }

    return 1;
  }

  return result;
}

uint64_t decode_mcu_AC_refine(uint64_t a1, uint64_t *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 624);
  if (*(a1 + 372))
  {
    if (!*(v4 + 64))
    {
      result = process_restart(a1);
      if (!result)
      {
        return result;
      }
    }
  }

  if (*(v4 + 60))
  {
    goto LABEL_23;
  }

  v61 = 0;
  v62 = 0;
  memset(v64, 0, sizeof(v64));
  v6 = *(a1 + 544);
  v7 = 0x10000 << *(a1 + 552);
  v8 = v7 >> 16;
  v55 = *(a1 + 560);
  v63 = a1;
  v9 = *(a1 + 40);
  v11 = *v9;
  v10 = *(v9 + 8);
  v59 = v11;
  v60 = v10;
  v12 = *(v4 + 24);
  v13 = *(v4 + 32);
  v14 = *a2;
  v58 = HIWORD(v7);
  v15 = *(a1 + 540);
  if (*(v4 + 40))
  {
    v56 = *(v4 + 40);
    v54 = 0;
    goto LABEL_7;
  }

  v54 = 0;
  v26 = *(v4 + 104);
  v49 = v26 + 288;
  v47 = v26;
  v46 = v26 + 1312;
  v48 = -v7 >> 16;
  v57 = -HIWORD(v7);
  v50 = HIWORD(v7);
  v51 = v6;
  while (1)
  {
    if (v13 > 7)
    {
      goto LABEL_32;
    }

    if (!jpeg_fill_bit_buffer(&v59, v12, v13, 0))
    {
      goto LABEL_75;
    }

    v12 = v61;
    v13 = v62;
    if (v62 >= 8)
    {
LABEL_32:
      v28 = (v12 >> (v13 - 8));
      v29 = *(v49 + 4 * v28);
      if (v29)
      {
        v30 = v13 - v29;
        v31 = *(v46 + v28);
        goto LABEL_37;
      }

      v27 = 9;
    }

    else
    {
      v27 = 1;
    }

    v31 = jpeg_huff_decode(&v59, v12, v13, v47, v27);
    if ((v31 & 0x80000000) != 0)
    {
      goto LABEL_75;
    }

    v12 = v61;
    v30 = v62;
LABEL_37:
    v32 = v31 >> 4;
    if ((v31 & 0xF) != 0)
    {
      if ((v31 & 0xF) != 1)
      {
        v33 = *a1;
        *(v33 + 40) = 121;
        (*(v33 + 8))(a1, 0xFFFFFFFFLL);
      }

      if (v30 <= 0)
      {
        if (!jpeg_fill_bit_buffer(&v59, v12, v30, 1))
        {
          goto LABEL_75;
        }

        v12 = v61;
        v30 = v62;
      }

      --v30;
      v34 = v48;
      if ((v12 >> v30))
      {
        v34 = v8;
      }

      v53 = v34;
      goto LABEL_48;
    }

    if (v32 != 15)
    {
      break;
    }

    v53 = 0;
LABEL_48:
    if (v15 <= v6)
    {
      v35 = v6;
    }

    else
    {
      v35 = v15;
    }

    v52 = v35 + 1;
    v36 = v35 - v15 + 1;
    v37 = (v55 + 4 * v15);
    v13 = v30;
    do
    {
      v39 = *v37++;
      v38 = v39;
      if (*(v14 + 2 * v39))
      {
        if (v13 <= 0)
        {
          if (!jpeg_fill_bit_buffer(&v59, v12, v13, 1))
          {
            goto LABEL_75;
          }

          v12 = v61;
          v13 = v62;
        }

        if ((v12 >> --v13))
        {
          v40 = *(v14 + 2 * v38);
          if ((v8 & v40) == 0)
          {
            v41 = v58;
            if (v40 < 0)
            {
              v41 = v57;
            }

            *(v14 + 2 * v38) = v40 + v41;
          }
        }
      }

      else
      {
        v42 = __OFSUB__(v32--, 1);
        if (v32 < 0 != v42)
        {
          goto LABEL_64;
        }
      }

      ++v15;
      --v36;
    }

    while (v36);
    v15 = v52;
LABEL_64:
    HIWORD(v7) = v50;
    v6 = v51;
    if (v53)
    {
      v43 = *(v55 + 4 * v15);
      *(v14 + 2 * v43) = v53;
      *(v64 + v54++) = v43;
    }

    if (v15++ >= v51)
    {
      goto LABEL_67;
    }
  }

  v56 = 1 << v32;
  if (v31 < 0x10)
  {
    v13 = v30;
    goto LABEL_7;
  }

  if (v30 >= v32)
  {
LABEL_73:
    v13 = v30 - v32;
    if (!((bmask[v32] & (v12 >> (v30 - v32))) + v56))
    {
LABEL_67:
      v23 = 0;
      goto LABEL_22;
    }

    v56 += bmask[v32] & (v12 >> (v30 - v32));
LABEL_7:
    if (v15 <= v6)
    {
      v16 = v6;
    }

    else
    {
      v16 = v15;
    }

    v17 = (v55 + 4 * v15);
    v18 = v16 - v15 + 1;
    do
    {
      v20 = *v17++;
      v19 = v20;
      if (*(v14 + 2 * v20))
      {
        if (v13 <= 0)
        {
          if (!jpeg_fill_bit_buffer(&v59, v12, v13, 1))
          {
            goto LABEL_75;
          }

          v12 = v61;
          v13 = v62;
        }

        if ((v12 >> --v13))
        {
          v21 = *(v14 + 2 * v19);
          if ((v8 & v21) == 0)
          {
            v22 = v58;
            if (v21 < 0)
            {
              v22 = -HIWORD(v7);
            }

            *(v14 + 2 * v19) = v21 + v22;
          }
        }
      }

      --v18;
    }

    while (v18);
    v23 = v56 - 1;
LABEL_22:
    v24 = *(a1 + 40);
    v25 = v60;
    *v24 = v59;
    v24[1] = v25;
    *(v4 + 24) = v12;
    *(v4 + 32) = v13;
    *(v4 + 40) = v23;
LABEL_23:
    if (*(a1 + 372))
    {
      --*(v4 + 64);
    }

    return 1;
  }

  if (jpeg_fill_bit_buffer(&v59, v12, v30, v32))
  {
    v12 = v61;
    v30 = v62;
    goto LABEL_73;
  }

LABEL_75:
  if (v54)
  {
    v45 = v54;
    do
    {
      *(v14 + 2 * *(&v63 + v45-- + 1)) = 0;
    }

    while (v45);
  }

  return 0;
}

void jpeg_make_d_derived_tbl(uint64_t a1, int a2, unsigned int a3, uint64_t *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  memset(v45, 0, 257);
  if (a3 >= 4)
  {
    v8 = *a1;
    *(v8 + 10) = 52;
    *(v8 + 12) = a3;
    (**a1)(a1);
  }

  v9 = a1 + 232;
  if (!a2)
  {
    v9 = a1 + 264;
  }

  v10 = *(v9 + 8 * a3);
  if (!v10)
  {
    v10 = _cg_jpeg_std_huff_table(a1, a2, a3);
  }

  v43 = a2;
  v11 = *a4;
  if (!*a4)
  {
    v11 = (**(a1 + 8))(a1, 1, 1568);
    *a4 = v11;
  }

  v12 = 0;
  v42 = v11;
  *(v11 + 280) = v10;
  for (i = 1; i != 17; ++i)
  {
    v14 = *(v10 + i);
    if (v12 + v14 >= 257)
    {
      v15 = *a1;
      *(v15 + 10) = 9;
      (*v15)(a1);
    }

    if (v14)
    {
      memset(&v45[v12], i, v14);
      v12 += v14;
    }
  }

  bzero(v44, 0x404uLL);
  v45[v12] = 0;
  v16 = v45[0];
  if (v45[0])
  {
    v17 = 0;
    v18 = 0;
    v19 = v45[0];
    do
    {
      if (v16 == v19)
      {
        v20 = &v44[v18];
        v21 = &v45[v18 + 1];
        do
        {
          *v20++ = v17++;
          v22 = *v21++;
          ++v18;
        }

        while (v16 == v22);
      }

      if (1 << v16 <= v17)
      {
        v23 = *a1;
        *(v23 + 10) = 9;
        (*v23)(a1);
      }

      v17 *= 2;
      ++v16;
      v19 = v45[v18];
    }

    while (v19);
  }

  v24 = 0;
  LODWORD(v25) = 0;
  v26 = v42 + 19;
  v27 = v10 + 1;
  v28 = v43;
  do
  {
    if (*(v27 + v24))
    {
      *v26 = v25 - v44[v25];
      v25 = *(v27 + v24) + v25;
      v29 = v44[v25 - 1];
    }

    else
    {
      v29 = -1;
    }

    *(v26 - 18) = v29;
    ++v26;
    ++v24;
  }

  while (v24 != 16);
  v42[17] = 0xFFFFFLL;
  bzero(v42 + 36, 0x400uLL);
  LODWORD(v30) = 0;
  v31 = (v10 + 17);
  for (j = 1; j != 9; ++j)
  {
    if (*(v10 + j))
    {
      v33 = 1;
      v30 = v30;
      do
      {
        v34 = v44[v30] << (8 - j);
        v35 = v42 + v34 + 72;
        v36 = v42 + v34 + 1312;
        v37 = (1 << (8 - j)) + 1;
        do
        {
          *v35++ = j;
          *v36++ = v31[v30];
          --v37;
        }

        while (v37 > 1);
        ++v30;
      }

      while (v33++ < *(v10 + j));
    }
  }

  if (v28 && v12 >= 1)
  {
    v39 = v12;
    do
    {
      v40 = *v31++;
      if (v40 >= 0x10)
      {
        v41 = *a1;
        *(v41 + 10) = 9;
        (*v41)(a1);
      }

      --v39;
    }

    while (v39);
  }
}

uint64_t decode_mcu_sub(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 624);
  if (*(a1 + 372))
  {
    if (!*(v4 + 64))
    {
      result = process_restart(a1);
      if (!result)
      {
        return result;
      }
    }
  }

  if (!*(v4 + 60))
  {
    v46 = *(a1 + 560);
    v6 = *(a1 + 568);
    v53 = a1;
    v7 = *(a1 + 40);
    v8 = *v7;
    v9 = v7[1];
    v49 = *v7;
    v50 = v9;
    v10 = *(v4 + 24);
    v11 = *(v4 + 32);
    v47 = *(v4 + 40);
    v48 = *(v4 + 56);
    if (*(a1 + 496) < 1)
    {
LABEL_76:
      *v7 = v8;
      v7[1] = v9;
      *(v4 + 24) = v10;
      *(v4 + 32) = v11;
      *(v4 + 40) = v47;
      *(v4 + 56) = v48;
      goto LABEL_5;
    }

    v12 = 0;
    v51 = 0;
    v52 = 0;
    v13 = v4 + 176;
    v44 = a2;
    v45 = v6;
    while (1)
    {
      v14 = *(a2 + 8 * v12);
      v15 = *(v13 + 8 * v12);
      if (v11 <= 7)
      {
        result = jpeg_fill_bit_buffer(&v49, v10, v11, 0);
        if (!result)
        {
          return result;
        }

        v10 = v51;
        v11 = v52;
        if (v52 < 8)
        {
          break;
        }
      }

      v17 = v10 >> (v11 - 8);
      v18 = *(v15 + 4 * v17 + 288);
      if (!v18)
      {
        v16 = 9;
        goto LABEL_18;
      }

      v11 -= v18;
      v19 = *(v15 + v17 + 1312);
LABEL_20:
      v21 = *(v4 + 256 + 8 * v12);
      v22 = *(v4 + 336 + 4 * v12);
      if (v22)
      {
        if (v19)
        {
          if (v11 < v19)
          {
            result = jpeg_fill_bit_buffer(&v49, v10, v11, v19);
            if (!result)
            {
              return result;
            }

            v10 = v51;
            v11 = v52;
          }

          v11 -= v19;
          v23 = bmask[v19];
          v24 = v23 & (v10 >> v11);
          if (v24 > bmask[v19 - 1])
          {
            v23 = 0;
          }

          v25 = v24 - v23;
        }

        else
        {
          v25 = 0;
        }

        v26 = *(a1 + 500 + 4 * v12);
        v27 = *(&v47 + v26 + 1) + v25;
        *v14 = v27;
        *(&v47 + v26 + 1) = v27;
        if (v22 >= 2)
        {
          v28 = 1;
          while (1)
          {
            if (v11 <= 7)
            {
              result = jpeg_fill_bit_buffer(&v49, v10, v11, 0);
              if (!result)
              {
                return result;
              }

              v10 = v51;
              v11 = v52;
              if (v52 < 8)
              {
                break;
              }
            }

            v30 = (v10 >> (v11 - 8));
            v31 = *(v21 + 288 + 4 * v30);
            if (!v31)
            {
              v29 = 9;
              goto LABEL_43;
            }

            v11 -= v31;
            v32 = *(v21 + 1312 + v30);
LABEL_45:
            v33 = v32 >> 4;
            v34 = v32 & 0xF;
            if ((v32 & 0xF) != 0)
            {
              if (v11 < v34)
              {
                result = jpeg_fill_bit_buffer(&v49, v10, v11, v34);
                if (!result)
                {
                  return result;
                }

                v10 = v51;
                v11 = v52;
              }

              v35 = v33 + v28;
              v11 -= v34;
              v36 = bmask[v34];
              v37 = v36 & (v10 >> v11);
              if (v37 > bmask[v34 - 1])
              {
                LOWORD(v36) = 0;
              }

              v14[*(v46 + 4 * v35)] = v37 - v36;
            }

            else
            {
              if (v33 != 15)
              {
                goto LABEL_74;
              }

              v35 = v28 + 15;
            }

            v28 = v35 + 1;
            if (v35 + 1 >= v22)
            {
              goto LABEL_57;
            }
          }

          v29 = 1;
LABEL_43:
          v32 = jpeg_huff_decode(&v49, v10, v11, v21, v29);
          if ((v32 & 0x80000000) != 0)
          {
            return 0;
          }

          v10 = v51;
          v11 = v52;
          goto LABEL_45;
        }
      }

      else if (v19)
      {
        if (v11 < v19)
        {
          result = jpeg_fill_bit_buffer(&v49, v10, v11, v19);
          if (!result)
          {
            return result;
          }

          v10 = v51;
          v11 = v52;
        }

        v11 -= v19;
      }

      v28 = 1;
LABEL_57:
      if (v28 <= v45)
      {
        while (1)
        {
          if (v11 <= 7)
          {
            result = jpeg_fill_bit_buffer(&v49, v10, v11, 0);
            if (!result)
            {
              return result;
            }

            v10 = v51;
            v11 = v52;
            if (v52 < 8)
            {
              break;
            }
          }

          v39 = (v10 >> (v11 - 8));
          v40 = *(v21 + 288 + 4 * v39);
          if (!v40)
          {
            v38 = 9;
            goto LABEL_65;
          }

          v11 -= v40;
          v41 = *(v21 + 1312 + v39);
LABEL_67:
          v42 = v41 >> 4;
          v43 = v41 & 0xF;
          if ((v41 & 0xF) != 0)
          {
            if (v11 < v43)
            {
              result = jpeg_fill_bit_buffer(&v49, v10, v11, v43);
              if (!result)
              {
                return result;
              }

              v10 = v51;
              v11 = v52;
            }

            v11 -= v43;
          }

          else if (v42 != 15)
          {
            goto LABEL_74;
          }

          v28 += v42 + 1;
          if (v28 > v45)
          {
            goto LABEL_74;
          }
        }

        v38 = 1;
LABEL_65:
        v41 = jpeg_huff_decode(&v49, v10, v11, v21, v38);
        if ((v41 & 0x80000000) != 0)
        {
          return 0;
        }

        v10 = v51;
        v11 = v52;
        goto LABEL_67;
      }

LABEL_74:
      ++v12;
      v13 = v4 + 176;
      a2 = v44;
      if (v12 >= *(a1 + 496))
      {
        v7 = *(a1 + 40);
        v8 = v49;
        v9 = v50;
        goto LABEL_76;
      }
    }

    v16 = 1;
LABEL_18:
    v20 = jpeg_huff_decode(&v49, v10, v11, v15, v16);
    if (v20 < 0)
    {
      return 0;
    }

    v19 = v20;
    v10 = v51;
    v11 = v52;
    goto LABEL_20;
  }

LABEL_5:
  if (*(a1 + 372))
  {
    --*(v4 + 64);
  }

  return 1;
}

uint64_t decode_mcu(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 624);
  if (*(a1 + 372))
  {
    if (!*(v4 + 64))
    {
      result = process_restart(a1);
      if (!result)
      {
        return result;
      }
    }
  }

  if (*(v4 + 60))
  {
    goto LABEL_5;
  }

  v52 = a1;
  v6 = *(a1 + 40);
  v7 = *v6;
  v8 = v6[1];
  v48 = *v6;
  v49 = v8;
  v9 = *(v4 + 24);
  v10 = *(v4 + 32);
  v46 = *(v4 + 40);
  v47 = *(v4 + 56);
  if (*(a1 + 496) < 1)
  {
    goto LABEL_76;
  }

  v11 = 0;
  v50 = 0;
  v51 = 0;
  v12 = v4 + 176;
  v13 = v4 + 256;
  v14 = v4 + 336;
  v45 = a2;
  do
  {
    v15 = *(a2 + 8 * v11);
    v16 = *(v12 + 8 * v11);
    if (v10 > 7)
    {
      goto LABEL_15;
    }

    result = jpeg_fill_bit_buffer(&v48, v9, v10, 0);
    if (!result)
    {
      return result;
    }

    v9 = v50;
    v10 = v51;
    if (v51 >= 8)
    {
LABEL_15:
      v18 = v9 >> (v10 - 8);
      v19 = *(v16 + 4 * v18 + 288);
      if (v19)
      {
        v10 -= v19;
        v20 = *(v16 + v18 + 1312);
        goto LABEL_20;
      }

      v17 = 9;
    }

    else
    {
      v17 = 1;
    }

    v21 = jpeg_huff_decode(&v48, v9, v10, v16, v17);
    if (v21 < 0)
    {
      return 0;
    }

    v20 = v21;
    v9 = v50;
    v10 = v51;
LABEL_20:
    v22 = *(v13 + 8 * v11);
    v23 = *(v14 + 4 * v11);
    if (!v23)
    {
      if (v20)
      {
        if (v10 < v20)
        {
          result = jpeg_fill_bit_buffer(&v48, v9, v10, v20);
          if (!result)
          {
            return result;
          }

          v9 = v50;
          v10 = v51;
        }

        v10 -= v20;
      }

LABEL_57:
      v29 = 1;
      while (1)
      {
LABEL_58:
        if (v10 > 7)
        {
          goto LABEL_62;
        }

        result = jpeg_fill_bit_buffer(&v48, v9, v10, 0);
        if (!result)
        {
          return result;
        }

        v9 = v50;
        v10 = v51;
        if (v51 >= 8)
        {
LABEL_62:
          v40 = (v9 >> (v10 - 8));
          v41 = *(v22 + 288 + 4 * v40);
          if (v41)
          {
            v10 -= v41;
            v42 = *(v22 + 1312 + v40);
            goto LABEL_67;
          }

          v39 = 9;
        }

        else
        {
          v39 = 1;
        }

        v42 = jpeg_huff_decode(&v48, v9, v10, v22, v39);
        if ((v42 & 0x80000000) != 0)
        {
          return 0;
        }

        v9 = v50;
        v10 = v51;
LABEL_67:
        v43 = v42 >> 4;
        v44 = v42 & 0xF;
        if ((v42 & 0xF) != 0)
        {
          if (v10 < v44)
          {
            result = jpeg_fill_bit_buffer(&v48, v9, v10, v44);
            if (!result)
            {
              return result;
            }

            v9 = v50;
            v10 = v51;
          }

          v10 -= v44;
        }

        else if (v43 != 15)
        {
          goto LABEL_74;
        }

        v29 += v43 + 1;
        if (v29 >= 64)
        {
          goto LABEL_74;
        }
      }
    }

    if (v20)
    {
      if (v10 < v20)
      {
        result = jpeg_fill_bit_buffer(&v48, v9, v10, v20);
        if (!result)
        {
          return result;
        }

        v9 = v50;
        v10 = v51;
      }

      v10 -= v20;
      v24 = bmask[v20];
      v25 = v24 & (v9 >> v10);
      if (v25 > bmask[v20 - 1])
      {
        v24 = 0;
      }

      v26 = v25 - v24;
    }

    else
    {
      v26 = 0;
    }

    v27 = *(a1 + 500 + 4 * v11);
    v28 = *(&v46 + v27 + 1) + v26;
    *v15 = v28;
    *(&v46 + v27 + 1) = v28;
    if (v23 < 2)
    {
      goto LABEL_57;
    }

    v29 = 1;
    do
    {
      if (v10 > 7)
      {
        goto LABEL_40;
      }

      result = jpeg_fill_bit_buffer(&v48, v9, v10, 0);
      if (!result)
      {
        return result;
      }

      v9 = v50;
      v10 = v51;
      if (v51 >= 8)
      {
LABEL_40:
        v31 = (v9 >> (v10 - 8));
        v32 = *(v22 + 288 + 4 * v31);
        if (v32)
        {
          v10 -= v32;
          v33 = *(v22 + 1312 + v31);
          goto LABEL_45;
        }

        v30 = 9;
      }

      else
      {
        v30 = 1;
      }

      v33 = jpeg_huff_decode(&v48, v9, v10, v22, v30);
      if ((v33 & 0x80000000) != 0)
      {
        return 0;
      }

      v9 = v50;
      v10 = v51;
LABEL_45:
      v34 = v33 >> 4;
      v35 = v33 & 0xF;
      if ((v33 & 0xF) != 0)
      {
        if (v10 < v35)
        {
          result = jpeg_fill_bit_buffer(&v48, v9, v10, v35);
          if (!result)
          {
            return result;
          }

          v9 = v50;
          v10 = v51;
        }

        v36 = v34 + v29;
        v10 -= v35;
        v37 = bmask[v35];
        v38 = v37 & (v9 >> v10);
        if (v38 > bmask[v35 - 1])
        {
          LOWORD(v37) = 0;
        }

        v15[_cg_jpeg_natural_order[v36]] = v38 - v37;
      }

      else
      {
        if (v34 != 15)
        {
          goto LABEL_74;
        }

        v36 = v29 + 15;
      }

      v29 = v36 + 1;
    }

    while (v36 + 1 < v23);
    if (v36 <= 62)
    {
      goto LABEL_58;
    }

LABEL_74:
    ++v11;
    v12 = v4 + 176;
    a2 = v45;
    v14 = v4 + 336;
    v13 = v4 + 256;
  }

  while (v11 < *(a1 + 496));
  v6 = *(a1 + 40);
  v7 = v48;
  v8 = v49;
LABEL_76:
  *v6 = v7;
  v6[1] = v8;
  *(v4 + 24) = v9;
  *(v4 + 32) = v10;
  *(v4 + 40) = v46;
  *(v4 + 56) = v47;
LABEL_5:
  if (*(a1 + 372))
  {
    --*(v4 + 64);
  }

  return 1;
}

uint64_t process_restart(uint64_t a1)
{
  v2 = *(a1 + 624);
  v3 = *(a1 + 616);
  *(v3 + 36) += v2[8] / 8;
  v2[8] = 0;
  result = (*(v3 + 16))();
  if (result)
  {
    if (*(a1 + 448) >= 1)
    {
      v5 = 0;
      do
      {
        v2[v5++ + 11] = 0;
      }

      while (v5 < *(a1 + 448));
    }

    v2[10] = 0;
    v2[16] = *(a1 + 372);
    if (!*(a1 + 572))
    {
      v2[15] = 0;
    }

    return 1;
  }

  return result;
}

uint64_t jpeg_fill_bit_buffer(unsigned __int8 **a1, uint64_t a2, int a3, int a4)
{
  v5 = a3;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[4];
  if (*(v10 + 143))
  {
LABEL_2:
    if (v5 < a4)
    {
      if (!*(*(v10 + 78) + 60))
      {
        v11 = *v10;
        *(v11 + 40) = 120;
        (*(v11 + 8))(v10, 0xFFFFFFFFLL);
        *(*(v10 + 78) + 60) = 1;
      }

      v12 = 25;
      a2 <<= 25 - v5;
      goto LABEL_20;
    }
  }

  else if (a3 <= 24)
  {
    while (1)
    {
      if (!v9)
      {
        result = (*(*(v10 + 5) + 24))(v10);
        if (!result)
        {
          return result;
        }

        v14 = *(v10 + 5);
        v8 = *v14;
        v9 = v14[1];
      }

      --v9;
      v16 = *v8++;
      v15 = v16;
      if (v16 == 255)
      {
        do
        {
          if (!v9)
          {
            result = (*(*(v10 + 5) + 24))(v10);
            if (!result)
            {
              return result;
            }

            v17 = *(v10 + 5);
            v8 = *v17;
            v9 = v17[1];
          }

          --v9;
          v19 = *v8++;
          v18 = v19;
        }

        while (v19 == 255);
        if (v18)
        {
          *(v10 + 143) = v18;
          goto LABEL_2;
        }

        v15 = 255;
      }

      a2 = v15 | (a2 << 8);
      v12 = v5 + 8;
      v20 = v5 < 17;
      v5 += 8;
      if (!v20)
      {
        goto LABEL_20;
      }
    }
  }

  v12 = v5;
LABEL_20:
  *a1 = v8;
  a1[1] = v9;
  a1[2] = a2;
  result = 1;
  *(a1 + 6) = v12;
  return result;
}

uint64_t jpeg_huff_decode(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = a5;
  if (a3 < a5)
  {
    if (!jpeg_fill_bit_buffer(a1, a2, a3, a5))
    {
      return 0xFFFFFFFFLL;
    }

    a2 = *(a1 + 16);
    a3 = *(a1 + 24);
  }

  v8 = a3 - v5;
  v9 = (bmask[v5] & (a2 >> v8));
  v10 = v5;
  if (*(a4 + 8 * v5) >= v9)
  {
    v11 = v5;
  }

  else
  {
    do
    {
      if (v8 <= 0)
      {
        if (!jpeg_fill_bit_buffer(a1, a2, v8, 1))
        {
          return 0xFFFFFFFFLL;
        }

        a2 = *(a1 + 16);
        v8 = *(a1 + 24);
      }

      v9 = (a2 >> --v8) & 1 | (2 * v9);
      v11 = v10 + 1;
      v12 = *(a4 + 8 + 8 * v10++);
    }

    while (v9 > v12);
    v5 = v11;
  }

  *(a1 + 16) = a2;
  *(a1 + 24) = v8;
  if (v5 < 17)
  {
    return *(*(a4 + 280) + *(a4 + 8 * v11 + 144) + v9 + 17);
  }

  v13 = *(a1 + 32);
  v14 = *v13;
  *(v14 + 40) = 121;
  (*(v14 + 8))(v13, 0xFFFFFFFFLL);
  return 0;
}

uint64_t (**_cg_jinit_c_coef_controller(uint64_t a1, int a2))(uint64_t *a1, int a2)
{
  result = (**(a1 + 8))();
  v5 = result;
  *(a1 + 520) = result;
  *result = start_pass_coef;
  if (a2)
  {
    if (*(a1 + 92) >= 1)
    {
      v6 = 0;
      v7 = result + 14;
      v8 = (*(a1 + 104) + 28);
      do
      {
        v9 = *(*(a1 + 8) + 40);
        v10 = _cg_jround_up(*v8, *(v8 - 5));
        v11 = _cg_jround_up(v8[1], *(v8 - 4));
        result = v9(a1, 1, 0, v10, v11, *(v8 - 4));
        v7[v6++] = result;
        v8 += 24;
      }

      while (v6 < *(a1 + 92));
    }
  }

  else
  {
    result = (*(*(a1 + 8) + 8))(a1, 1, 1280);
    v12 = xmmword_186205EC0;
    v13 = 4;
    v14 = vdupq_n_s64(result);
    v15 = vdupq_n_s64(2uLL);
    do
    {
      *&v5[v13] = vaddq_s64(v14, vshlq_n_s64(v12, 7uLL));
      v12 = vaddq_s64(v12, v15);
      v13 += 2;
    }

    while (v13 != 14);
    v5[14] = 0;
  }

  return result;
}

uint64_t start_pass_coef(uint64_t *a1, int a2)
{
  v4 = a1[65];
  *(v4 + 16) = 0;
  result = start_iMCU_row_0(a1);
  switch(a2)
  {
    case 3:
      if (!*(v4 + 112))
      {
        v9 = *a1;
        *(v9 + 40) = 3;
        result = (*v9)(a1);
      }

      v7 = compress_first_pass;
      goto LABEL_13;
    case 2:
      if (!*(v4 + 112))
      {
        v8 = *a1;
        *(v8 + 40) = 3;
        result = (*v8)(a1);
      }

      v7 = compress_output;
      goto LABEL_13;
    case 0:
      if (*(v4 + 112))
      {
        v6 = *a1;
        *(v6 + 40) = 3;
        result = (*v6)(a1);
      }

      v7 = compress_data;
LABEL_13:
      *(v4 + 8) = v7;
      return result;
  }

  v10 = *a1;
  *(v10 + 40) = 3;
  v11 = *v10;

  return v11(a1);
}

uint64_t start_iMCU_row_0(uint64_t result)
{
  v1 = *(result + 520);
  if (*(result + 372) < 2)
  {
    v3 = *(result + 376);
    if (v1[4] >= (*(result + 368) - 1))
    {
      v2 = *(v3 + 76);
    }

    else
    {
      v2 = *(v3 + 12);
    }
  }

  else
  {
    v2 = 1;
  }

  v1[6] = 0;
  v1[7] = v2;
  v1[5] = 0;
  return result;
}

uint64_t compress_data(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 520);
  v3 = v2[7];
  v29 = v2[6];
  if (v29 >= v3)
  {
LABEL_27:
    ++v2[4];
    start_iMCU_row_0(a1);
    return 1;
  }

  else
  {
    v27 = *(a1 + 408) - 1;
    v4 = *(a1 + 368) - 1;
    v26 = a1 + 376;
    v5 = v2 + 8;
    v6 = v2[5];
    while (v6 > v27)
    {
LABEL_26:
      v6 = 0;
      v2[5] = 0;
      if (++v29 >= v3)
      {
        goto LABEL_27;
      }
    }

    while (1)
    {
      v7 = *(a1 + 372);
      if (v7 >= 1)
      {
        v8 = 0;
        v9 = 0;
        v25 = v6;
        do
        {
          v10 = *(v26 + 8 * v8);
          v11 = 18;
          if (v6 < v27)
          {
            v11 = 14;
          }

          if (v10[15] >= 1)
          {
            v12 = 0;
            v13 = v10[v11];
            v14 = *(*(a1 + 552) + 8 * v10[1] + 8);
            v15 = v10[17] * v6;
            v16 = (v10[10] * v29);
            v28 = v8;
            do
            {
              if (v2[4] >= v4 && v12 + v29 >= v10[19])
              {
                bzero(*&v5[2 * v9], v10[14] << 7);
                v17 = v10[14];
                if (v17 >= 1)
                {
                  v20 = &v5[2 * v9];
                  v21 = **(v20 - 1);
                  v22 = v10[14];
                  do
                  {
                    v23 = *v20++;
                    *v23 = v21;
                    --v22;
                  }

                  while (v22);
                }
              }

              else
              {
                v14(a1, v10, *(a2 + 8 * v10[1]), *&v5[2 * v9], v16, v15, v13);
                v17 = v10[14];
                if (v17 > v13)
                {
                  bzero(*&v5[2 * v9 + 2 * v13], (v17 - v13) << 7);
                  v17 = v10[14];
                  if (v13 < v17)
                  {
                    v18 = &v5[2 * v13 + 2 * v9];
                    v19 = v17 - v13;
                    do
                    {
                      **v18 = **(v18 - 1);
                      ++v18;
                      --v19;
                    }

                    while (v19);
                  }
                }
              }

              v9 += v17;
              v16 = (v10[10] + v16);
              ++v12;
            }

            while (v12 < v10[15]);
            v7 = *(a1 + 372);
            v6 = v25;
            v8 = v28;
          }

          ++v8;
        }

        while (v8 < v7);
      }

      result = (*(*(a1 + 560) + 8))();
      if (!result)
      {
        break;
      }

      if (++v6 > v27)
      {
        v3 = v2[7];
        goto LABEL_26;
      }
    }

    v2[5] = v6;
    v2[6] = v29;
  }

  return result;
}

uint64_t compress_first_pass(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a1 + 92) >= 1)
  {
    v3 = 0;
    v41 = *(a1 + 368) - 1;
    v4 = *(a1 + 104);
    v40 = *(a1 + 520);
    v44 = vdupq_n_s64(8uLL);
    do
    {
      v50 = (*(*(v2 + 8) + 64))(v2, *(v40 + 112 + 8 * v3), (v4[3] * *(v40 + 16)), v4[3], 1);
      v5 = *(v40 + 16);
      if (v5 >= v41)
      {
        v7 = v4[3];
        if (v4[8] % v7)
        {
          v6 = v4[8] % v7;
        }

        else
        {
          v6 = v4[3];
        }
      }

      else
      {
        v6 = v4[3];
      }

      v8 = v4[7];
      v9 = v4[2];
      if ((v8 % v9) <= 0)
      {
        v10 = v8 % v9;
      }

      else
      {
        v10 = v9 - v8 % v9;
      }

      v49 = v3;
      if (v6 >= 1)
      {
        v11 = 0;
        v12 = *(*(v2 + 552) + 8 * v3 + 8);
        v42 = v6;
        v13 = v6;
        v45 = vdupq_n_s64(v10 - 1);
        do
        {
          v14 = *(v50 + 8 * v11);
          v12(a1, v4, *(a2 + 8 * v3), v14, (v4[10] * v11), 0, v8);
          if (v10 >= 1)
          {
            v15 = (v14 + (v8 << 7));
            bzero(v15, v10 << 7);
            v16 = (v10 + 7) & 0xFFFFFFF8;
            v17 = *(v15 - 64);
            v18 = xmmword_186205EC0;
            v19 = xmmword_186205EB0;
            v20 = xmmword_186205EA0;
            v21 = xmmword_186205E90;
            do
            {
              v22 = vmovn_s64(vcgeq_u64(v45, v18));
              if (vuzp1_s8(vuzp1_s16(v22, *v18.i8), *v18.i8).u8[0])
              {
                *v15 = v17;
              }

              if (vuzp1_s8(vuzp1_s16(v22, *&v18), *&v18).i8[1])
              {
                v15[64] = v17;
              }

              if (vuzp1_s8(vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v45, *&v19))), *&v18).i8[2])
              {
                v15[128] = v17;
                v15[192] = v17;
              }

              v23 = vmovn_s64(vcgeq_u64(v45, v20));
              if (vuzp1_s8(*&v18, vuzp1_s16(v23, *&v18)).i32[1])
              {
                v15[256] = v17;
              }

              if (vuzp1_s8(*&v18, vuzp1_s16(v23, *&v18)).i8[5])
              {
                v15[320] = v17;
              }

              if (vuzp1_s8(*&v18, vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v45, *&v21)))).i8[6])
              {
                v15[384] = v17;
                v15[448] = v17;
              }

              v20 = vaddq_s64(v20, v44);
              v19 = vaddq_s64(v19, v44);
              v18 = vaddq_s64(v18, v44);
              v15 += 512;
              v21 = vaddq_s64(v21, v44);
              v16 -= 8;
            }

            while (v16);
          }

          ++v11;
        }

        while (v11 != v13);
        v5 = *(v40 + 16);
        v6 = v42;
      }

      if (v5 == v41 && v6 < v4[3])
      {
        v24 = v6;
        v46 = v10 + v8;
        v43 = vdupq_n_s64(v9 - 1);
        do
        {
          v25 = (v50 + 8 * v24);
          v26 = *(v25 - 1);
          v27 = *v25;
          bzero(*v25, (v10 + v8) << 7);
          if (v9 <= v46)
          {
            v28 = 0;
            do
            {
              if (v9 >= 1)
              {
                v29 = *(v26 + ((v9 - 1) << 7));
                v30 = v27;
                v31 = (v9 + 7) & 0xFFFFFFF8;
                v32 = xmmword_186205EC0;
                v33 = xmmword_186205EB0;
                v34 = xmmword_186205EA0;
                v35 = xmmword_186205E90;
                do
                {
                  v36 = vmovn_s64(vcgeq_u64(v43, v32));
                  if (vuzp1_s8(vuzp1_s16(v36, *v32.i8), *v32.i8).u8[0])
                  {
                    *v30 = v29;
                  }

                  if (vuzp1_s8(vuzp1_s16(v36, *&v32), *&v32).i8[1])
                  {
                    v30[64] = v29;
                  }

                  if (vuzp1_s8(vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v43, *&v33))), *&v32).i8[2])
                  {
                    v30[128] = v29;
                    v30[192] = v29;
                  }

                  v37 = vmovn_s64(vcgeq_u64(v43, v34));
                  if (vuzp1_s8(*&v32, vuzp1_s16(v37, *&v32)).i32[1])
                  {
                    v30[256] = v29;
                  }

                  if (vuzp1_s8(*&v32, vuzp1_s16(v37, *&v32)).i8[5])
                  {
                    v30[320] = v29;
                  }

                  if (vuzp1_s8(*&v32, vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v43, *&v35)))).i8[6])
                  {
                    v30[384] = v29;
                    v30[448] = v29;
                  }

                  v38 = vdupq_n_s64(8uLL);
                  v34 = vaddq_s64(v34, v38);
                  v33 = vaddq_s64(v33, v38);
                  v32 = vaddq_s64(v32, v38);
                  v35 = vaddq_s64(v35, v38);
                  v30 += 512;
                  v31 -= 8;
                }

                while (v31);
              }

              v26 += v9 << 7;
              ++v28;
              v27 += 128 * v9;
            }

            while (v28 < v46 / v9);
          }

          ++v24;
        }

        while (v24 < v4[3]);
      }

      v2 = a1;
      v3 = v49 + 1;
      v4 += 24;
    }

    while (v49 + 1 < *(a1 + 92));
  }

  return compress_output(v2);
}

uint64_t compress_output(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 520);
  memset(v20, 0, sizeof(v20));
  if (*(a1 + 372) >= 1)
  {
    v3 = 0;
    do
    {
      *(v20 + v3) = (*(*(a1 + 8) + 64))(a1, *&v2[2 * *(*(a1 + 8 * v3 + 376) + 4) + 28], (*(*(a1 + 8 * v3 + 376) + 12) * v2[4]), *(*(a1 + 8 * v3 + 376) + 12), 0);
      ++v3;
    }

    while (v3 < *(a1 + 372));
  }

  v4 = v2[7];
  v5 = v2[6];
  if (v5 >= v4)
  {
LABEL_20:
    ++v2[4];
    start_iMCU_row_0(a1);
    return 1;
  }

  else
  {
    v6 = v2[5];
    v7 = *(a1 + 408);
    while (v6 >= v7)
    {
LABEL_19:
      v6 = 0;
      v2[5] = 0;
      if (++v5 >= v4)
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      v8 = *(a1 + 372);
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = *(a1 + 376 + 8 * v9);
          v12 = *(v11 + 60);
          if (v12 >= 1)
          {
            v13 = 0;
            v14 = *(v11 + 56);
            v15 = *(v20 + v9) + 8 * v5;
            do
            {
              if (v14 >= 1)
              {
                v16 = *(v15 + 8 * v13) + ((v14 * v6) << 7);
                v17 = &v2[2 * v10 + 8];
                v10 += v14;
                v18 = v14;
                do
                {
                  *v17++ = v16;
                  v16 += 128;
                  --v18;
                }

                while (v18);
              }

              ++v13;
            }

            while (v13 != v12);
          }

          ++v9;
        }

        while (v9 != v8);
      }

      result = (*(*(a1 + 560) + 8))(a1, v2 + 8);
      if (!result)
      {
        break;
      }

      ++v6;
      v7 = *(a1 + 408);
      if (v6 >= v7)
      {
        v4 = v2[7];
        goto LABEL_19;
      }
    }

    v2[5] = v6;
    v2[6] = v5;
  }

  return result;
}

uint64_t _cg_jinit_merged_upsampler(uint64_t a1)
{
  v2 = (**(a1 + 8))();
  v3 = v2;
  *(a1 + 640) = v2;
  *v2 = start_pass_merged_upsample;
  *(v2 + 16) = 0;
  *(v2 + 76) = *(a1 + 144) * *(a1 + 136);
  if (*(a1 + 420) == 2)
  {
    *(v2 + 8) = merged_2v_upsample;
    *(v2 + 24) = h2v2_merged_upsample;
    v4 = (*(*(a1 + 8) + 8))(a1, 1);
  }

  else
  {
    v4 = 0;
    v3[1] = merged_1v_upsample;
    v3[3] = h2v1_merged_upsample;
  }

  v3[8] = v4;
  v5 = *(a1 + 60);
  v6 = *(a1 + 640);
  v6[4] = (**(a1 + 8))(a1, 1, 1024);
  v6[5] = (**(a1 + 8))(a1, 1, 1024);
  v6[6] = (**(a1 + 8))(a1, 1, 2048);
  result = (**(a1 + 8))(a1, 1, 2048);
  v6[7] = result;
  v8 = v6[4];
  v9 = v6[5];
  v10 = v6[6];
  if (v5 == 7)
  {
    v11 = 0;
    v12 = -29696512;
    v13 = -23488896;
    v14 = 5806464;
    v15 = 11981184;
    do
    {
      *(v8 + 4 * v11) = v13 >> 16;
      *(v9 + 4 * v11) = v12 >> 16;
      *(v10 + 8 * v11) = v15;
      *(result + 8 * v11++) = v14;
      v14 -= 45107;
      v15 -= 93603;
      v12 += 232260;
      v13 += 183763;
    }

    while (v11 != 256);
  }

  else
  {
    v16 = 0;
    v17 = -14831872;
    v18 = -11728000;
    v19 = 2919552;
    v20 = 5990656;
    do
    {
      *(v8 + 4 * v16) = v18 >> 16;
      *(v9 + 4 * v16) = v17 >> 16;
      *(v10 + 8 * v16) = v20;
      *(result + 8 * v16++) = v19;
      v19 -= 22553;
      v20 -= 46802;
      v17 += 116130;
      v18 += 91881;
    }

    while (v16 != 256);
  }

  return result;
}

uint64_t start_pass_merged_upsample(uint64_t result)
{
  v1 = *(result + 640);
  *(v1 + 72) = 0;
  *(v1 + 80) = *(result + 140);
  return result;
}

char *merged_2v_upsample(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, _DWORD *a6, int a7)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 640);
  if (*(v9 + 72))
  {
    v10 = 1;
    result = _cg_jcopy_sample_rows((v9 + 64), 0, a5 + 8 * *a6, 0, 1, *(v9 + 76));
    *(v9 + 72) = 0;
  }

  else
  {
    v12 = *(v9 + 80);
    v13 = *a6;
    if (v12 >= a7 - v13)
    {
      v12 = a7 - v13;
    }

    v15 = *(a5 + 8 * v13);
    if (v12 >= 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = v12;
    }

    if (v12 >= 2)
    {
      v14 = *(a5 + 8 * (v13 + 1));
    }

    else
    {
      v14 = *(v9 + 64);
      *(v9 + 72) = 1;
    }

    v16 = v14;
    result = (*(v9 + 24))();
  }

  *a6 += v10;
  *(v9 + 80) -= v10;
  if (!*(v9 + 72))
  {
    ++*a3;
  }

  return result;
}

uint64_t h2v2_merged_upsample(uint64_t result, void *a2, unsigned int a3, uint64_t a4)
{
  v4 = *(result + 640);
  v5 = *(result + 440);
  v7 = v4[4];
  v6 = v4[5];
  v8 = v4[6];
  v9 = v4[7];
  v10 = *(*a2 + 16 * a3);
  v11 = *(*a2 + 8 * ((2 * a3) | 1));
  v12 = *(a2[1] + 8 * a3);
  v13 = *(a2[2] + 8 * a3);
  v15 = *a4;
  v14 = *(a4 + 8);
  v16 = *(result + 136);
  if (v16 >= 2)
  {
    v17 = 0;
    v18 = v16 >> 1;
    do
    {
      v19 = v12[v17];
      v20 = v13[v17];
      v21 = *(v7 + 4 * v20);
      v22 = *v10;
      v23 = *(v6 + 4 * v19);
      v24 = (*(v8 + 8 * v20) + *(v9 + 8 * v19)) >> 16;
      *v15 = *(v5 + v21 + v22);
      v15[1] = *(v5 + v22 + v24);
      v15[2] = *(v5 + v23 + v22);
      v25 = v10[1];
      v15[3] = *(v5 + v21 + v25);
      v15[4] = *(v5 + v25 + v24);
      v15[5] = *(v5 + v23 + v25);
      v26 = *v11;
      *v14 = *(v5 + v21 + v26);
      v14[1] = *(v5 + v26 + v24);
      v14[2] = *(v5 + v23 + v26);
      v27 = v11[1];
      v14[3] = *(v5 + v21 + v27);
      LOBYTE(v21) = *(v5 + v27 + v24);
      v28 = v10 + 2;
      v29 = v11 + 2;
      v14[4] = v21;
      v15 += 6;
      v14[5] = *(v5 + v23 + v27);
      v14 += 6;
      ++v17;
      v11 += 2;
      v10 += 2;
    }

    while (v18 != v17);
    LODWORD(v16) = *(result + 136);
    v13 += v17;
    v12 += v17;
    v10 = v28;
    v11 = v29;
  }

  if (v16)
  {
    v30 = *v13;
    v31 = *(v7 + 4 * v30);
    v32 = *v12;
    v33 = *(v8 + 8 * v30) + *(v9 + 8 * v32);
    v34 = *(v6 + 4 * v32);
    v35 = *v10;
    v33 >>= 16;
    *v15 = *(v5 + v31 + v35);
    v15[1] = *(v5 + v35 + v33);
    v15[2] = *(v5 + v34 + v35);
    v36 = *v11;
    *v14 = *(v5 + v31 + v36);
    v14[1] = *(v5 + v36 + v33);
    v14[2] = *(v5 + v34 + v36);
  }

  return result;
}

uint64_t merged_1v_upsample(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  result = (*(*(a1 + 640) + 24))();
  ++*a6;
  ++*a3;
  return result;
}

uint64_t h2v1_merged_upsample(uint64_t result, void *a2, unsigned int a3, _BYTE **a4)
{
  v4 = *(result + 640);
  v5 = *(result + 440);
  v7 = v4[4];
  v6 = v4[5];
  v8 = v4[6];
  v9 = v4[7];
  v10 = *(*a2 + 8 * a3);
  v11 = *(a2[1] + 8 * a3);
  v12 = *(a2[2] + 8 * a3);
  v13 = *a4;
  v14 = *(result + 136);
  if (v14 < 2)
  {
    if ((v14 & 1) == 0)
    {
      return result;
    }

LABEL_7:
    v25 = *v11;
    v26 = *v12;
    v27 = (*(v8 + 8 * v26) + *(v9 + 8 * v25)) >> 16;
    v28 = *(v6 + 4 * v25);
    v29 = *v10;
    *v13 = *(v5 + *(v7 + 4 * v26) + v29);
    v13[1] = *(v5 + v29 + v27);
    v13[2] = *(v5 + v28 + v29);
    return result;
  }

  v15 = v14 >> 1;
  do
  {
    v17 = *v11++;
    v16 = v17;
    v18 = *v12++;
    v19 = *(v7 + 4 * v18);
    v20 = (*(v8 + 8 * v18) + *(v9 + 8 * v16)) >> 16;
    v21 = *(v6 + 4 * v16);
    v22 = *v10;
    *v13 = *(v5 + v19 + v22);
    v13[1] = *(v5 + v22 + v20);
    v13[2] = *(v5 + v21 + v22);
    v23 = v10 + 2;
    v24 = v10[1];
    v13[3] = *(v5 + v19 + v24);
    v13[4] = *(v5 + v24 + v20);
    v13[5] = *(v5 + v21 + v24);
    v13 += 6;
    v10 = v23;
    --v15;
  }

  while (v15);
  v10 = v23;
  if (*(result + 136))
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t mq_decoder::start(uint64_t this, unsigned __int8 *a2, int a3, int a4)
{
  if (*(this + 38) == 1)
  {
    mq_decoder::start();
  }

  v4 = this;
  if (*(this + 16))
  {
    mq_decoder::start();
  }

  if (!a2 || a3 < 0)
  {
    mq_decoder::start();
  }

  if ((*(this + 39) & 1) == 0)
  {
    v5 = 0;
    v6 = &dword_1EA8E0858;
    do
    {
      v7 = dword_186207020[v5 >> 1];
      this = v5 & 1;
      *(v6 - 4) = this | (mq_decoder::p_bar_table[v7] << 8);
      *(v6 - 1) = &mq_decoder::transition_table + 32 * (this | (2 * v7));
      v8 = dword_1862070DC[v5 >> 1];
      v10 = v5 >> 1 != 46 && mq_decoder::p_bar_table[v5 >> 1] == 22017;
      v11 = this ^ v10;
      *v6 = v11 | (mq_decoder::p_bar_table[v8] << 8);
      *(v6 + 1) = &mq_decoder::transition_table + 32 * (v11 | (2 * v8));
      ++v5;
      v6 += 8;
    }

    while (v5 != 94);
    *(v4 + 39) = 1;
  }

  *(v4 + 38) = 1;
  *(v4 + 37) = a4;
  *(v4 + 16) = a2;
  *(v4 + 24) = a2;
  *(v4 + 40) = a3;
  v12 = &a2[a3];
  *(v4 + 44) = *v12;
  *(v4 + 45) = v12[1];
  *v12 = -1;
  *(v4 + 36) = 0;
  if (a4)
  {
    *(v4 + 32) = 0;
    *(v4 + 8) = 0;
    *(v4 + 4) = 0;
    mq_decoder::fill_lsbs(v4);
    *(v4 + 4) <<= *(v4 + 8);
    this = mq_decoder::fill_lsbs(v4);
    v13 = *(v4 + 4);
    LODWORD(v14) = vshl_n_s32(v13, 7uLL).u32[0];
    HIDWORD(v14) = vadd_s32(v13, 0x600000006).i32[1];
    *(v4 + 4) = v14;
    *v4 = 0x800000;
  }

  else
  {
    *(v4 + 8) = 0;
  }

  return this;
}

uint64_t mq_decoder::fill_lsbs(uint64_t this)
{
  v1 = *(this + 12);
  v2 = *(this + 24);
  *(this + 24) = v2 + 1;
  v3 = *v2;
  if (v1 != 255)
  {
    v4 = 8;
LABEL_6:
    *(this + 8) = v4;
    *(this + 12) = v3;
    goto LABEL_7;
  }

  if (v3 < 0x90)
  {
    v3 *= 2;
    v4 = 7;
    goto LABEL_6;
  }

  *(this + 24) = v2;
  *(this + 8) = 0xFF00000008;
  ++*(this + 32);
  v3 = 255;
LABEL_7:
  *(this + 4) += v3;
  return this;
}

uint64_t mq_decoder::finish(mq_decoder *this, char a2)
{
  if (*(this + 38) != 1 || *(this + 36) == 1)
  {
    mq_decoder::finish();
  }

  if (a2)
  {
    v2 = *(this + 2);
    v3 = *(this + 3);
    v4 = *(this + 10);
    v5 = (v2 + v4);
    if (*(this + 37) == 1)
    {
      if (v3 > v5)
      {
        if (v3 != v5 + 1)
        {
          mq_decoder::finish();
        }

        v6 = *(this + 8);
        v7 = v6 + 1;
        *(this + 8) = v6 + 1;
        v8 = *(this + 2);
        if (!v8)
        {
          v7 = v6 + 2;
          *(this + 8) = v6 + 2;
          LOBYTE(v8) = 8;
          *(this + 2) = 8;
        }

        if ((v7 - 4) >= 0xFFFFFFFE && !(*(this + 1) >> (24 - v8)))
        {
          goto LABEL_13;
        }
      }

LABEL_20:
      v9 = 0;
      goto LABEL_21;
    }

    if (v3 < v5 && *(this + 3) == 255 && !*(this + 2))
    {
      v12 = v3 + 1;
      *(this + 3) = v3 + 1;
      v13 = *v3;
      *(this + 2) = 8;
      *(this + 3) = v13;
      v10 = 42;
      v3 = v12;
    }

    else
    {
      v10 = 85;
    }

    if (v3 != v5 || (*(this + 3) & ~(-1 << *(this + 2))) != v10 >> (8 - *(this + 2)))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v2 = *(this + 2);
    v4 = *(this + 10);
  }

LABEL_13:
  v9 = 1;
LABEL_21:
  *(v2 + v4) = *(this + 44);
  *(*(this + 2) + *(this + 10) + 1) = *(this + 45);
  *(this + 38) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  return v9;
}

void mq_decoder::mq_decode(mq_decode *this, int *a2, uint64_t a3)
{
  if (*(this + 37) != 1 || *(this + 38) != 1 || *(this + 36) == 1)
  {
    mq_decoder::mq_decode();
  }

  v4 = *a3 & 1;
  *a2 = v4;
  v5 = *a3 - v4;
  v6 = *(this + 1);
  v7 = *this - v5;
  *this = v7;
  v8 = __OFSUB__(v6, v5);
  v9 = v6 - v5;
  if (v9 < 0 != v8)
  {
    if (v7 >= v5)
    {
      *a2 = 1 - *a2;
      v10 = (*(a3 + 8) + 16);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    *a3 = *v10;
    *this = v5;
    v12 = *(this + 2);
    do
    {
      if (!v12)
      {
        mq_decoder::fill_lsbs(this);
        v5 = *this;
        v12 = *(this + 2);
      }

      v13 = 2 * *(this + 1);
      *this = 2 * v5;
      *(this + 1) = v13;
      *(this + 2) = --v12;
      v14 = v5 < 0x400000;
      v5 *= 2;
    }

    while (v14);
  }

  else
  {
    *(this + 1) = v9;
    if (v7 < 0x800000)
    {
      if (v7 >= v5)
      {
        v11 = *(a3 + 8);
      }

      else
      {
        *a2 = 1 - *a2;
        v11 = (*(a3 + 8) + 16);
      }

      *a3 = *v11;
      v15 = *(this + 2);
      do
      {
        if (!v15)
        {
          mq_decoder::fill_lsbs(this);
          v15 = *(this + 2);
        }

        v16 = *this;
        *this = vadd_s32(*this, *this);
        *(this + 2) = --v15;
      }

      while (v16 < 0x400000);
    }
  }
}

void mq_decoder::mq_decode_run(mq_decoder *this, int *a2)
{
  if (*(this + 37) != 1 || *(this + 38) != 1 || *(this + 36) == 1)
  {
    mq_decoder::mq_decode_run();
  }

  v5[1] = &unk_1EA8E13C8;
  v4 = 0;
  v5[0] = (dword_1EA8D95FC << 8);
  mq_decoder::mq_decode(this, &v4, v5);
  *a2 = 2 * v4;
  mq_decoder::mq_decode(this, &v4, v5);
  *a2 += v4;
}

uint64_t mq_decoder::raw_decode(uint64_t this, unsigned int *a2)
{
  if ((*(this + 37) & 1) != 0 || *(this + 38) != 1 || *(this + 36) == 1)
  {
    mq_decoder::raw_decode();
  }

  v2 = *(this + 8);
  v3 = *(this + 12);
  if (v2)
  {
    v4 = v2 - 1;
    v5 = *(this + 12);
  }

  else
  {
    v6 = *(this + 24);
    *(this + 24) = v6 + 1;
    v5 = *v6;
    *(this + 12) = v5;
    if (v3 == 255)
    {
      if (v5 < 0x90)
      {
        v4 = 6;
        goto LABEL_11;
      }

      v5 = 255;
      *(this + 12) = 255;
      *(this + 24) = v6;
    }

    v4 = 7;
  }

LABEL_11:
  *(this + 8) = v4;
  *a2 = (v5 >> v4) & 1;
  return this;
}

uint64_t (**_cg_jinit_c_main_controller(int *a1, int a2))(uint64_t result, int a2)
{
  result = (**(a1 + 1))();
  *(a1 + 63) = result;
  *result = start_pass_main_0;
  if (!a1[72])
  {
    if (a2)
    {
      v5 = *a1;
      *(v5 + 40) = 3;
      v6 = *v5;

      return v6(a1);
    }

    else if (a1[23] >= 1)
    {
      v7 = 0;
      v8 = result + 4;
      v9 = (*(a1 + 13) + 40);
      do
      {
        result = (*(*(a1 + 1) + 16))(a1, 1, (*(v9 - 1) * *(v9 - 3)), (*v9 * *(v9 - 7)));
        v8[v7++] = result;
        v9 += 24;
      }

      while (v7 < a1[23]);
    }
  }

  return result;
}

uint64_t start_pass_main_0(uint64_t result, int a2)
{
  if (!*(result + 288))
  {
    v2 = *(result + 504);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 28) = a2;
    if (a2)
    {
      v3 = *result;
      *(v3 + 40) = 3;
      return (*v3)(result);
    }

    else
    {
      *(v2 + 8) = process_data_simple_main_0;
    }
  }

  return result;
}

uint64_t process_data_simple_main_0(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v4 = *(result + 504);
  if (v4[4] < *(result + 368))
  {
    v8 = result;
    v9 = v4[5];
    do
    {
      v10 = *(v8 + 364);
      if (v9 < v10)
      {
        result = (*(*(v8 + 512) + 8))(v8, a2, a3, a4, v4 + 8, v4 + 5);
        v9 = v4[5];
        v10 = *(v8 + 364);
      }

      if (v9 != v10)
      {
        break;
      }

      result = (*(*(v8 + 520) + 8))(v8, v4 + 8);
      v11 = v4[6];
      if (!result)
      {
        if (!v11)
        {
          --*a3;
          v4[6] = 1;
        }

        return result;
      }

      if (v11)
      {
        ++*a3;
        v4[6] = 0;
      }

      v9 = 0;
      v12 = v4[4] + 1;
      *(v4 + 2) = v12;
    }

    while (v12 < *(v8 + 368));
  }

  return result;
}

uint64_t _cg_jpeg_abort(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = result;
    result = (*(v1 + 72))();
    if (*(v2 + 32))
    {
      *(v2 + 36) = 200;
      *(v2 + 408) = 0;
    }

    else
    {
      *(v2 + 36) = 100;
    }
  }

  return result;
}

uint64_t _cg_jpeg_destroy(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2)
  {
    result = (*(v2 + 80))(result);
  }

  *(v1 + 8) = 0;
  *(v1 + 36) = 0;
  return result;
}

uint64_t _cg_jpeg_alloc_quant_table(uint64_t a1)
{
  result = (**(a1 + 8))();
  *(result + 128) = 0;
  return result;
}

uint64_t _cg_jpeg_alloc_huff_table(uint64_t a1)
{
  result = (**(a1 + 8))();
  *(result + 276) = 0;
  return result;
}

uint64_t _cg_jpeg_std_huff_table(uint64_t a1, int a2, unsigned int a3)
{
  v5 = 232;
  if (!a2)
  {
    v5 = 264;
  }

  v6 = 160;
  if (!a2)
  {
    v6 = 192;
  }

  if (*(a1 + 32))
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (a3 == 1)
  {
    v8 = a2 == 0;
    if (a2)
    {
      v9 = &_cg_jpeg_std_huff_table_bits_dc_chrominance;
    }

    else
    {
      v9 = &_cg_jpeg_std_huff_table_bits_ac_chrominance;
    }

    v10 = &_cg_jpeg_std_huff_table_val_dc_chrominance;
    v11 = &_cg_jpeg_std_huff_table_val_ac_chrominance;
  }

  else
  {
    if (a3)
    {
      v21 = *a1;
      *(v21 + 10) = 52;
      *(v21 + 12) = a3;
      (**a1)(a1);
      return 0;
    }

    v8 = a2 == 0;
    if (a2)
    {
      v9 = &_cg_jpeg_std_huff_table_bits_dc_luminance;
    }

    else
    {
      v9 = &_cg_jpeg_std_huff_table_bits_ac_luminance;
    }

    v10 = &_cg_jpeg_std_huff_table_val_dc_luminance;
    v11 = &_cg_jpeg_std_huff_table_val_ac_luminance;
  }

  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = a1 + v7;
  v14 = *(a1 + v7 + 8 * a3);
  if (!v14)
  {
    v14 = (**(a1 + 8))(a1, 0, 280);
    *(v14 + 276) = 0;
    *(v13 + 8 * a3) = v14;
  }

  *v14 = *v9;
  *(v14 + 16) = v9[16];
  v15 = *(v9 + 1);
  v16 = vmovl_high_u8(v15);
  v17 = vmovl_u8(*v15.i8);
  v18 = vaddvq_s32(vaddq_s32(vaddl_u16(*v17.i8, *v16.i8), vaddl_high_u16(v17, v16)));
  v19 = v18;
  if (v18 >= 0x101)
  {
    v20 = *a1;
    *(v20 + 10) = 9;
    (*v20)(a1);
LABEL_26:
    memcpy((v14 + 17), v12, v19);
    goto LABEL_27;
  }

  if (v18)
  {
    goto LABEL_26;
  }

LABEL_27:
  *(v14 + 276) = 0;
  return v14;
}

void KTX2WritePlugin::~KTX2WritePlugin(KTX2WritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t KTX2WritePlugin::writeOne(IIOImageWriteSession **this, IIOImagePixelDataProvider *a2, IIODictionary *a3, IIODictionary *a4)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = 0;
  __nitems = 0;
  if (!IIODictionary::containsKey(a3, @"kCGImagePropertyEncoder"))
  {
    Error = _cg_GifLastError(a2);
    BitmapInfo = IIOImagePixelDataProvider::getBitmapInfo(a2);
    if (Error == 32)
    {
      v13 = 0;
      v10 = 0;
      v12 = 0;
      v17 = (BitmapInfo & 0x100) == 0;
      v18 = 108;
    }

    else
    {
      if (Error != 16)
      {
        if (Error != 8 || (BitmapInfo & 0x100) != 0)
        {
          return 4294967242;
        }

        v13 = 0;
        v10 = 0;
        v12 = 0;
        VkFormat = 43;
        goto LABEL_18;
      }

      v13 = 0;
      v10 = 0;
      v12 = 0;
      v17 = (BitmapInfo & 0x100) == 0;
      v18 = 96;
    }

    if (v17)
    {
      VkFormat = v18;
    }

    else
    {
      VkFormat = v18 + 1;
    }

    goto LABEL_18;
  }

  ObjectForKey = IIODictionary::getObjectForKey(a3, @"kCGImagePropertyEncoder");
  v8 = CFEqual(ObjectForKey, @"kCGImagePropertyPVREncoder");
  v10 = v8 != 0;
  if (v8)
  {
    VkFormat = PVRWritePlugin::GetVkFormat(a3, v9);
    v12 = 0;
    v13 = 0;
    if (!VkFormat)
    {
      return 4294967242;
    }
  }

  else if (CFEqual(ObjectForKey, @"kCGImagePropertyBCEncoder"))
  {
    VkFormat = BCWritePlugin::GetVkFormat(a3, v16);
    v13 = 0;
    v12 = 1;
    if (!VkFormat)
    {
      return 4294967242;
    }
  }

  else
  {
    if (!CFEqual(ObjectForKey, @"kCGImagePropertyASTCEncoder"))
    {
      return 4294967242;
    }

    VkFormat = ASTCWritePlugin::GetVkFormat(a3, v24);
    v12 = 0;
    v13 = 1;
    if (!VkFormat)
    {
      return 4294967242;
    }
  }

LABEL_18:
  *&v31[8] = 0u;
  v28 = 0u;
  DWORD1(v28) = VkFormat;
  v29 = IIOImageSource::count(a2);
  v30 = IIO_Reader::testHeaderSize(a2);
  *v31 = xmmword_186207340;
  *&v31[16] = 1;
  *&v31[20] = 0;
  if (ktxTexture2_Create(&v28, 1, &v34) || (v35[0] = 0x4F496567616D49, ktxHashList_AddKVPair((v34 + 80), "KTXwriter", 8u, v35)) || (strcpy(v27, "rd"), ktxHashList_AddKVPair((v34 + 80), "KTXorientation", 3u, v27)) || (v26 = IIOImagePixelDataProvider::getAlphaInfo(a2) + 48, ktxHashList_AddKVPair((v34 + 80), "AlphaInfo_APPLE", 1u, &v26)))
  {
    v20 = 0;
  }

  else
  {
    if (v10)
    {
      if ((gIIODebugFlags & 0x20000) != 0)
      {
        ImageIOLog("♦️  'KTX2' %d: writeOne saving image [PVR] (%d x %d)\n", 180, v29, v30);
      }

      operator new();
    }

    if (v12)
    {
      if ((gIIODebugFlags & 0x20000) != 0)
      {
        ImageIOLog("♦️  'KTX2' %d: writeOne saving image [BC] (%d x %d)\n", 187, v29, v30);
      }

      operator new();
    }

    if (v13)
    {
      if ((gIIODebugFlags & 0x20000) != 0)
      {
        ImageIOLog("♦️  'KTX2' %d: writeOne saving image [ASTC] (%d x %d)\n", 192, v29, v30);
      }

      operator new();
    }

    if ((gIIODebugFlags & 0x20000) != 0)
    {
      ImageIOLog("♦️  'KTX2' %d: writeOne saving image [uncompressed] (%d x %d)\n", 203, v29, v30);
    }

    BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(a2);
    v23 = IIO_Reader::testHeaderSize(a2) * BytesPerRow;
    v20 = malloc_type_malloc(v23, 0x1BAE29B1uLL);
    if (v20)
    {
      IIOImagePixelDataProvider::getBytes(a2, v20);
      if ((*(*(v34 + 8) + 24))() == v23 && !(*(*(v34 + 8) + 64))())
      {
        free(v20);
        if (!(*(*(v34 + 8) + 96))())
        {
          v19 = IIOImageWriteSession::putBytes(this[2], v33, __nitems);
          v20 = 0;
          if (v19 == __nitems)
          {
            v21 = 0;
          }

          else
          {
            v21 = 4294967246;
          }

          goto LABEL_38;
        }

        v20 = 0;
      }
    }
  }

  v21 = 4294967246;
LABEL_38:
  if (v34)
  {
    (**(v34 + 8))();
  }

  if (v20)
  {
    free(v20);
  }

  return v21;
}

uint64_t KTX2WritePlugin::WriteProc(KTX2WritePlugin *this, IIOImageDestination *a2, void *a3, void *a4, void *a5)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "KTX2WritePlugin::WriteProc", 0, 0, -1, 0);
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  IIOWritePlugin::IIOWritePlugin(v11, this, a2, 1263818802);
  *&v11[0] = &unk_1EF4D31D0;
  v7 = IIOWritePlugin::writeAll(v11);
  _cg_jpeg_mem_term(v11, v8, v9);
  return v7;
}

void sub_185F7F1D8(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _cg_jpeg_mem_term(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185F7F1C0);
}

uint64_t _cg_jpeg_resync_to_restart(_DWORD *a1, int a2)
{
  v4 = a1[143];
  v5 = *a1;
  *(v5 + 40) = 124;
  *(v5 + 48) = v4;
  *(*a1 + 52) = a2;
  (*(*a1 + 8))(a1, 0xFFFFFFFFLL);
  while (1)
  {
    if (v4 >= 192)
    {
      if ((v4 - 216) < 0xFFFFFFF8 || v4 == ((a2 + 1) & 7 | 0xD0) || v4 == ((a2 + 2) & 7 | 0xD0))
      {
        v8 = *a1;
        *(v8 + 40) = 99;
        *(v8 + 48) = v4;
        *(*a1 + 52) = 3;
        (*(*a1 + 8))(a1, 4);
        return 1;
      }

      if (v4 != ((a2 - 1) & 7 | 0xD0) && v4 != ((a2 + 6) & 7 | 0xD0))
      {
        break;
      }
    }

    v6 = *a1;
    *(v6 + 40) = 99;
    *(v6 + 48) = v4;
    *(*a1 + 52) = 2;
    (*(*a1 + 8))(a1, 4);
    if (!next_marker(a1))
    {
      return 0;
    }

    v4 = a1[143];
  }

  v9 = *a1;
  *(v9 + 40) = 99;
  *(v9 + 48) = v4;
  v7 = 1;
  *(*a1 + 52) = 1;
  (*(*a1 + 8))(a1, 4);
  a1[143] = 0;
  return v7;
}

uint64_t next_marker(void *a1)
{
  v2 = a1[5];
  v3 = *v2;
  for (i = v2[1]; i; v2[1] = i)
  {
LABEL_4:
    v6 = *v3++;
    --i;
    if (v6 == 255)
    {
      do
      {
        if (!i)
        {
          result = (v2[3])(a1);
          if (!result)
          {
            return result;
          }

          v3 = *v2;
          i = v2[1];
        }

        --i;
        v10 = *v3++;
        v9 = v10;
      }

      while (v10 == 255);
      if (v9)
      {
        v11 = *(a1[77] + 36);
        if (v11)
        {
          v12 = *a1;
          *(v12 + 40) = 119;
          *(v12 + 48) = v11;
          *(*a1 + 52) = v9;
          (*(*a1 + 8))(a1, 0xFFFFFFFFLL);
          *(a1[77] + 36) = 0;
        }

        *(a1 + 143) = v9;
        result = 1;
        *v2 = v3;
        v2[1] = i;
        return result;
      }

      v7 = a1[77];
      v8 = *(v7 + 36) + 2;
    }

    else
    {
      v7 = a1[77];
      v8 = *(v7 + 36) + 1;
    }

    *(v7 + 36) = v8;
    *v2 = v3;
  }

  result = (v2[3])(a1);
  if (result)
  {
    v3 = *v2;
    i = v2[1];
    goto LABEL_4;
  }

  return result;
}

double _cg_jinit_marker_reader(uint64_t a1)
{
  v2 = (**(a1 + 8))();
  *(a1 + 616) = v2;
  *v2 = reset_marker_reader;
  *(v2 + 8) = read_markers;
  *(v2 + 16) = read_restart_marker;
  *(v2 + 40) = skip_variable;
  *(v2 + 176) = 0;
  memset_pattern16((v2 + 48), off_1EF4D3250, 0x80uLL);
  result = 0.0;
  *(v2 + 180) = 0u;
  *(v2 + 196) = 0u;
  *(v2 + 212) = 0u;
  *(v2 + 228) = 0u;
  *(v2 + 48) = get_interesting_appn;
  *(v2 + 160) = get_interesting_appn;
  v4 = *(a1 + 616);
  *(a1 + 304) = 0;
  *(a1 + 172) = 0;
  *(a1 + 572) = 0;
  *(v4 + 24) = 0;
  *(v4 + 36) = 0;
  *(v4 + 248) = 0;
  return result;
}

uint64_t reset_marker_reader(uint64_t result)
{
  v1 = *(result + 616);
  *(result + 304) = 0;
  *(result + 172) = 0;
  *(result + 572) = 0;
  *(v1 + 24) = 0;
  *(v1 + 36) = 0;
  *(v1 + 248) = 0;
  return result;
}

uint64_t read_markers(uint64_t a1)
{
  v233 = a1 + 200;
  v231 = a1 + 264;
  v239 = *MEMORY[0x1E69E9840];
  v230 = a1 + 232;
  v235 = (a1 + 340);
  v236 = (a1 + 324);
  v2 = (a1 + 356);
  v3 = *(a1 + 572);
  v234 = (a1 + 356);
  if (v3)
  {
    goto LABEL_15;
  }

  while (2)
  {
    if (*(*(a1 + 616) + 24))
    {
      result = next_marker(a1);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 572);
    }

    else
    {
      v5 = *(a1 + 40);
      v6 = v5[1];
      if (!v6)
      {
        result = (v5[3])(a1);
        if (!result)
        {
          return result;
        }

        v6 = v5[1];
      }

      v7 = *v5 + 1;
      v8 = **v5;
      v9 = v6 - 1;
      if (v6 == 1)
      {
        result = (v5[3])(a1);
        if (!result)
        {
          return result;
        }

        v7 = *v5;
        v9 = v5[1];
      }

      v11 = *v7;
      v10 = v7 + 1;
      v3 = v11;
      if (v8 != 255 || v3 != 216)
      {
        v12 = *a1;
        *(v12 + 40) = 55;
        *(v12 + 48) = v8;
        *(*a1 + 52) = v3;
        (**a1)(a1);
      }

      *(a1 + 572) = v3;
      *v5 = v10;
      v5[1] = v9 - 1;
    }

LABEL_15:
    switch(v3)
    {
      case 192:
        v76 = a1;
        v77 = 1;
        goto LABEL_142;
      case 193:
        v76 = a1;
        v77 = 0;
LABEL_142:
        v81 = 0;
        goto LABEL_143;
      case 194:
        v76 = a1;
        v77 = 0;
        v81 = 1;
LABEL_143:
        v101 = 0;
        goto LABEL_210;
      case 195:
      case 197:
      case 198:
      case 199:
      case 200:
      case 203:
      case 205:
      case 206:
      case 207:
        v13 = *a1;
        v14 = 63;
        goto LABEL_20;
      case 196:
        memset(v238, 0, sizeof(v238));
        memset(__src, 0, sizeof(__src));
        v117 = *(a1 + 40);
        v118 = v117[1];
        if (v118)
        {
          goto LABEL_169;
        }

        if (!(v117[3])(a1))
        {
          return 0;
        }

        v118 = v117[1];
        v2 = v234;
LABEL_169:
        v119 = *v117 + 1;
        v120 = **v117;
        v121 = v118 - 1;
        if (v121)
        {
          goto LABEL_172;
        }

        if (!(v117[3])(a1))
        {
          return 0;
        }

        v119 = *v117;
        v121 = v117[1];
        v2 = v234;
LABEL_172:
        v122 = v121 - 1;
        v124 = *v119;
        v123 = v119 + 1;
        v125 = (v120 << 8) | v124;
        v126 = v125 - 2;
        if (v125 < 0x13)
        {
          goto LABEL_205;
        }

        while (2)
        {
          if (v122)
          {
            goto LABEL_176;
          }

          if ((v117[3])(a1))
          {
            v123 = *v117;
            v122 = v117[1];
LABEL_176:
            v128 = *v123++;
            v127 = v128;
            v129 = *a1;
            v129[2].i32[2] = 82;
            v129[3].i32[0] = v128;
            (*(*a1 + 8))(a1, 1);
            LODWORD(v131) = 0;
            v238[0] = 0;
            --v122;
            for (i = 1; i != 17; ++i)
            {
              if (!v122)
              {
                if (!(v117[3])(a1))
                {
                  return 0;
                }

                v123 = *v117;
                v122 = v117[1];
              }

              v133 = *v123++;
              v238[i] = v133;
              v131 = (v131 + v133);
              --v122;
            }

            v134 = v126 - 17;
            v135 = *a1;
            v130.i32[0] = *&v238[1];
            v136 = vmovl_u16(*&vmovl_u8(v130));
            v135[3] = v136;
            v136.i32[0] = *&v238[5];
            v135[4] = vmovl_u16(*&vmovl_u8(*v136.i8));
            v135[2].i32[2] = 88;
            v137 = (v135->i64[1])(a1, 2);
            v138 = *a1;
            v137.n128_u32[0] = *&v238[9];
            v139 = vmovl_u16(*&vmovl_u8(v137.n128_u64[0]));
            v138[3] = v139;
            v139.i32[0] = *&v238[13];
            v138[4] = vmovl_u16(*&vmovl_u8(*v139.i8));
            v138[2].i32[2] = 88;
            (v138->i64[1])(a1, 2);
            if (v131 > 0x100 || v134 < v131)
            {
              v140 = *a1;
              v140[2].i32[2] = 9;
              (v140->i64[0])(a1);
              if (!v131)
              {
                goto LABEL_191;
              }
            }

            else if (!v131)
            {
              goto LABEL_191;
            }

            v141 = __src;
            v142 = v131;
            do
            {
              if (!v122)
              {
                if (!(v117[3])(a1))
                {
                  return 0;
                }

                v123 = *v117;
                v122 = v117[1];
              }

              --v122;
              v143 = *v123++;
              *v141++ = v143;
              --v142;
            }

            while (v142);
LABEL_191:
            if ((v127 & 0x10) != 0)
            {
              if (v127 >= 0x14)
              {
                v146 = *a1;
                v146[2].i32[2] = 12;
                (v146->i64[0])(a1);
              }

              LODWORD(v127) = v127 - 16;
              v145 = (v231 + 8 * v127);
            }

            else
            {
              if (v127 >= 4)
              {
                v144 = *a1;
                v144[2].i32[2] = 12;
                (v144->i64[0])(a1);
              }

              v145 = (v230 + 8 * v127);
            }

            if (v127 >= 4)
            {
              v147 = *a1;
              v147[2].i32[2] = 31;
              v147[3].i32[0] = v127;
              (**a1)(a1);
            }

            v148 = *v145;
            if (!*v145)
            {
              v148 = _cg_jpeg_alloc_huff_table(a1);
              *v145 = v148;
            }

            *v148 = *v238;
            *(v148 + 16) = v238[16];
            v2 = v234;
            if (v131)
            {
              memcpy((*v145 + 17), __src, v131);
            }

            v126 = v134 - v131;
            if (v134 - v131 <= 16)
            {
LABEL_205:
              if (v126)
              {
                v149 = *a1;
                v149[2].i32[2] = 12;
                (v149->i64[0])(a1);
              }

              *v117 = v123;
              v117[1] = v122;
              goto LABEL_279;
            }

            continue;
          }

          return 0;
        }

      case 201:
        v76 = a1;
        v77 = 0;
        v81 = 0;
        goto LABEL_209;
      case 202:
        v76 = a1;
        v77 = 0;
        v81 = 1;
LABEL_209:
        v101 = 1;
LABEL_210:
        result = get_sof(v76, v77, v81, v101);
        if (!result)
        {
          return result;
        }

        goto LABEL_279;
      case 204:
        v82 = *(a1 + 40);
        v102 = v82[1];
        if (v102)
        {
          goto LABEL_148;
        }

        result = (v82[3])(a1);
        if (!result)
        {
          return result;
        }

        v102 = v82[1];
LABEL_148:
        v103 = *v82 + 1;
        v104 = **v82;
        v105 = v102 - 1;
        if (v105)
        {
          goto LABEL_151;
        }

        result = (v82[3])(a1);
        if (!result)
        {
          return result;
        }

        v103 = *v82;
        v105 = v82[1];
LABEL_151:
        v106 = *v103;
        v97 = v103 + 1;
        v107 = (v104 << 8) | v106;
        v96 = v105 - 1;
        if (v107 >= 3)
        {
          while (1)
          {
            if (!v96)
            {
              result = (v82[3])(a1);
              if (!result)
              {
                return result;
              }

              v97 = *v82;
              v96 = v82[1];
            }

            v110 = *v97;
            v108 = v97 + 1;
            v109 = v110;
            v111 = v96 - 1;
            if (!v111)
            {
              result = (v82[3])(a1);
              if (!result)
              {
                return result;
              }

              v108 = *v82;
              v111 = v82[1];
            }

            v112 = *v108;
            v113 = *a1;
            v113[2].i32[2] = 81;
            v113[3].i32[0] = v109;
            *(*a1 + 52) = v112;
            (*(*a1 + 8))(a1, 1);
            if (v109 < 0x20)
            {
              if (v109 < 0x10)
              {
                *(v236 + v109) = v112 & 0xF;
                *(v235 + v109) = v112 >> 4;
                if ((v112 & 0xF) > v112 >> 4)
                {
                  v116 = *a1;
                  v116[2].i32[2] = 30;
                  v116[3].i32[0] = v112;
                  (**a1)(a1);
                }

                goto LABEL_162;
              }
            }

            else
            {
              v114 = *a1;
              v114[2].i32[2] = 29;
              v114[3].i32[0] = v109;
              (**a1)(a1);
            }

            *(v2 + v109 - 16) = v112;
LABEL_162:
            v97 = v108 + 1;
            v96 = v111 - 1;
            v107 -= 2;
            v115 = v107 - 2;
            if (v107 <= 2)
            {
              goto LABEL_273;
            }
          }
        }

        v115 = v107 - 2;
LABEL_273:
        if (v115)
        {
          v178 = *a1;
          v178[2].i32[2] = 12;
          (v178->i64[0])(a1);
        }

LABEL_275:
        *v82 = v97;
        v82[1] = v96;
LABEL_279:
        *(a1 + 572) = 0;
        continue;
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
        goto LABEL_22;
      case 216:
        v78 = *a1;
        v78[2].i32[2] = 104;
        (v78->i64[1])(a1, 1);
        v79 = *(a1 + 616);
        if (*(v79 + 24))
        {
          v80 = *a1;
          v80[2].i32[2] = 64;
          (v80->i64[0])(a1);
          v79 = *(a1 + 616);
        }

        *v236 = 0;
        v236[1] = 0;
        *v235 = 0x101010101010101;
        v235[1] = 0x101010101010101;
        *v2 = 0x505050505050505;
        v2[1] = 0x505050505050505;
        *(a1 + 372) = 0;
        *(a1 + 60) = 0;
        *(a1 + 396) = 0;
        *(a1 + 380) = 257;
        *(a1 + 382) = 0;
        *(a1 + 384) = 65537;
        *(a1 + 392) = 0;
        *(v79 + 24) = 1;
        goto LABEL_279;
      case 217:
        v199 = *a1;
        v199[2].i32[2] = 87;
        (v199->i64[1])(a1, 1);
        *(a1 + 572) = 0;
        return 2;
      case 218:
        v180 = *(a1 + 40);
        v181 = *v180;
        v182 = v180[1];
        if (!*(*(a1 + 616) + 28))
        {
          v183 = *a1;
          v183[2].i32[2] = 60;
          v183[5] = xmmword_186207382;
          v183[6] = unk_186207392;
          v183[7] = xmmword_1862073A2;
          v183[3] = xmmword_186207362;
          v183[4] = unk_186207372;
          (**a1)(a1);
        }

        if (v182)
        {
          goto LABEL_287;
        }

        result = (v180[3])(a1);
        if (!result)
        {
          return result;
        }

        v181 = *v180;
        v182 = v180[1];
LABEL_287:
        v186 = *v181;
        v184 = v181 + 1;
        v185 = v186;
        v187 = v182 - 1;
        if (v182 != 1)
        {
          goto LABEL_290;
        }

        result = (v180[3])(a1);
        if (!result)
        {
          return result;
        }

        v184 = *v180;
        v187 = v180[1];
LABEL_290:
        v190 = *v184;
        v188 = v184 + 1;
        v189 = v190;
        v191 = v187 - 1;
        if (v187 != 1)
        {
          goto LABEL_293;
        }

        result = (v180[3])(a1);
        if (!result)
        {
          return result;
        }

        v188 = *v180;
        v191 = v180[1];
LABEL_293:
        v192 = (v185 << 8) | v189;
        v193 = *v188;
        v194 = *a1;
        v194[2].i32[2] = 105;
        v194[3].i32[0] = v193;
        (*(*a1 + 8))(a1, 1);
        if (v192 != 2 * v193 + 6 || v193 > 4)
        {
          goto LABEL_298;
        }

        if (v193)
        {
          *(a1 + 448) = v193;
          v197 = v188 + 1;
          v198 = v191 - 1;
          goto LABEL_303;
        }

        if (*(a1 + 316))
        {
          *(a1 + 448) = 0;
          v197 = v188 + 1;
          v198 = v191 - 1;
        }

        else
        {
LABEL_298:
          v196 = *a1;
          v196[2].i32[2] = 12;
          (v196->i64[0])(a1);
          *(a1 + 448) = v193;
          v197 = v188 + 1;
          v198 = v191 - 1;
          if (v193)
          {
LABEL_303:
            v200 = 0;
            v201 = (a1 + 456);
            v202 = -1;
            while (1)
            {
              if (!v198)
              {
                result = (v180[3])(a1);
                if (!result)
                {
                  return result;
                }

                v197 = *v180;
                v198 = v180[1];
              }

              v205 = *v197;
              v204 = v197 + 1;
              v203 = v205;
              if (v200)
              {
                v206 = 0;
                while (*v201[v206] != v203)
                {
                  if (v200 == ++v206)
                  {
                    goto LABEL_318;
                  }
                }

                v207 = **v201;
                if (v200 != 1)
                {
                  v208 = (a1 + 464);
                  v209 = v202;
                  do
                  {
                    v210 = *v208++;
                    v211 = *v210;
                    if (*v210 > v207)
                    {
                      v207 = v211;
                    }

                    --v209;
                  }

                  while (v209);
                }

                v203 = v207 + 1;
              }

LABEL_318:
              v212 = *(a1 + 304);
              v213 = *(a1 + 56);
              if (v213 >= 1)
              {
                v214 = &v212[24 * (v213 - 1) + 24];
                do
                {
                  if (v203 == *v212)
                  {
                    goto LABEL_324;
                  }

                  v212 += 24;
                  --v213;
                }

                while (v213);
                v212 = v214;
              }

              v215 = *a1;
              v215[2].i32[2] = 4;
              v215[3].i32[0] = v203;
              (**a1)(a1);
LABEL_324:
              v201[v200] = v212;
              v216 = v198 - 1;
              if (!v216)
              {
                result = (v180[3])(a1);
                if (!result)
                {
                  return result;
                }

                v204 = *v180;
                v216 = v180[1];
              }

              v217 = *v204;
              v197 = v204 + 1;
              v212[5] = v217 >> 4;
              v212[6] = v217 & 0xF;
              v218 = *a1;
              v218[3].i32[0] = *v212;
              v218[3].i32[1] = v212[5];
              v218[3].i32[2] = v212[6];
              v218[2].i32[2] = 106;
              (v218->i64[1])(a1, 1);
              ++v200;
              v198 = v216 - 1;
              ++v202;
              if (v200 == v193)
              {
                v219 = 0;
                goto LABEL_332;
              }
            }
          }
        }

        v219 = 1;
LABEL_332:
        if (v198)
        {
          goto LABEL_335;
        }

        result = (v180[3])(a1);
        if (!result)
        {
          return result;
        }

        v197 = *v180;
        v198 = v180[1];
LABEL_335:
        v221 = *v197;
        v220 = v197 + 1;
        *(a1 + 540) = v221;
        v222 = v198 - 1;
        if (v198 != 1)
        {
          goto LABEL_338;
        }

        result = (v180[3])(a1);
        if (!result)
        {
          return result;
        }

        v220 = *v180;
        v222 = v180[1];
LABEL_338:
        v224 = *v220;
        v223 = v220 + 1;
        *(a1 + 544) = v224;
        v225 = v222 - 1;
        if (v225)
        {
          goto LABEL_341;
        }

        result = (v180[3])(a1);
        if (result)
        {
          v223 = *v180;
          v225 = v180[1];
LABEL_341:
          v226 = v225 - 1;
          v228 = *v223;
          v227 = v223 + 1;
          *(a1 + 548) = v228 >> 4;
          *(a1 + 552) = v228 & 0xF;
          v229 = *a1;
          v229[3].i32[0] = *(a1 + 540);
          v229[3].i32[1] = *(a1 + 544);
          v229[3].i32[2] = *(a1 + 548);
          v229[3].i32[3] = *(a1 + 552);
          v229[2].i32[2] = 107;
          (v229->i64[1])(a1, 1);
          *(*(a1 + 616) + 32) = 0;
          if ((v219 & 1) == 0)
          {
            ++*(a1 + 172);
          }

          *v180 = v227;
          v180[1] = v226;
          result = 1;
          *(a1 + 572) = 0;
        }

        return result;
      case 219:
        v150 = *(a1 + 40);
        v151 = v150[1];
        if (v151)
        {
          goto LABEL_215;
        }

        result = (v150[3])(a1);
        if (!result)
        {
          return result;
        }

        v151 = v150[1];
LABEL_215:
        v152 = *v150 + 1;
        v153 = **v150;
        v154 = v151 - 1;
        if (v154)
        {
          goto LABEL_218;
        }

        result = (v150[3])(a1);
        if (!result)
        {
          return result;
        }

        v152 = *v150;
        v154 = v150[1];
LABEL_218:
        v155 = v154 - 1;
        v157 = *v152;
        v156 = v152 + 1;
        v158 = (v153 << 8) | v157;
        v159 = v158 - 2;
        if (v158 < 3)
        {
          goto LABEL_269;
        }

        while (1)
        {
          if (!v155)
          {
            result = (v150[3])(a1);
            if (!result)
            {
              return result;
            }

            v156 = *v150;
            v155 = v150[1];
          }

          v160 = *v156;
          v161 = v160 & 0xF;
          v162 = *a1;
          v162[2].i32[2] = 83;
          v162[3].i32[0] = v160 & 0xF;
          *(*a1 + 52) = v160 >> 4;
          (*(*a1 + 8))(a1, 1);
          if ((v160 & 0xF) >= 4)
          {
            v163 = *a1;
            v163[2].i32[2] = 32;
            v163[3].i32[0] = v161;
            (**a1)(a1);
          }

          v164 = *(v233 + 8 * v161);
          if (!v164)
          {
            v164 = _cg_jpeg_alloc_quant_table(a1);
            *(v233 + 8 * v161) = v164;
          }

          v165 = v159 - 1;
          v232 = v159 - 1;
          if (v160 >= 0x10)
          {
            if (v159 > 0x80)
            {
LABEL_236:
              v165 = 64;
LABEL_237:
              v166 = &_cg_jpeg_natural_order;
              goto LABEL_238;
            }

            memset_pattern16(v164, &unk_186207410, 0x80uLL);
            v165 >>= 1;
          }

          else
          {
            if (v159 > 0x40)
            {
              goto LABEL_236;
            }

            memset_pattern16(v164, &unk_186207410, 0x80uLL);
          }

          if (v165 > 24)
          {
            switch(v165)
            {
              case 0x19:
                v166 = &jpeg_natural_order5;
                goto LABEL_238;
              case 0x24:
                v166 = &jpeg_natural_order6;
                goto LABEL_238;
              case 0x31:
                v166 = &jpeg_natural_order7;
                goto LABEL_238;
            }

            goto LABEL_237;
          }

          if (v165 == 4)
          {
            v166 = &jpeg_natural_order2;
            goto LABEL_238;
          }

          if (v165 == 9)
          {
            v166 = &jpeg_natural_order3;
            goto LABEL_238;
          }

          if (v165 != 16)
          {
            goto LABEL_237;
          }

          v166 = &jpeg_natural_order4;
LABEL_238:
          --v155;
          ++v156;
          if (v165)
          {
            v167 = v165;
            do
            {
              if (v160 >= 0x10)
              {
                if (!v155)
                {
                  result = (v150[3])(a1);
                  if (!result)
                  {
                    return result;
                  }

                  v156 = *v150;
                  v155 = v150[1];
                }

                v170 = *v156++;
                v169 = v170;
                if (!--v155)
                {
                  result = (v150[3])(a1);
                  if (!result)
                  {
                    return result;
                  }

                  v156 = *v150;
                  v155 = v150[1];
                }

                v168 = (v169 << 8) | *v156;
              }

              else
              {
                if (!v155)
                {
                  result = (v150[3])(a1);
                  if (!result)
                  {
                    return result;
                  }

                  v156 = *v150;
                  v155 = v150[1];
                }

                v168 = *v156;
              }

              v171 = *v166++;
              v164->i16[v171] = v168;
              --v155;
              ++v156;
              --v167;
            }

            while (v167);
          }

          if (*(*a1 + 128) >= 2)
          {
            v172 = v164 + 1;
            v173 = -8;
            do
            {
              v174 = *a1;
              v175 = vmovl_u16(*v172);
              v174[3] = vmovl_u16(v172[-1]);
              v174[4] = v175;
              v174[2].i32[2] = 95;
              (v174->i64[1])(a1, 2);
              v173 += 8;
              v172 += 2;
            }

            while (v173 < 0x38);
          }

          if (v160 >= 0x10)
          {
            v176 = v165;
          }

          else
          {
            v176 = 0;
          }

          v159 = v232 - v165 - v176;
          v2 = v234;
          if (v159 <= 0)
          {
LABEL_269:
            if (v159)
            {
              v177 = *a1;
              v177[2].i32[2] = 12;
              (v177->i64[0])(a1);
            }

            *v150 = v156;
            v150[1] = v155;
            goto LABEL_279;
          }
        }

      case 220:
        result = skip_variable(a1);
        if (!result)
        {
          return result;
        }

        goto LABEL_279;
      case 221:
        v82 = *(a1 + 40);
        v83 = v82[1];
        if (v83)
        {
          goto LABEL_129;
        }

        result = (v82[3])(a1);
        if (!result)
        {
          return result;
        }

        v83 = v82[1];
LABEL_129:
        v84 = *v82 + 1;
        v85 = **v82;
        v86 = v83 - 1;
        if (v83 != 1)
        {
          goto LABEL_132;
        }

        result = (v82[3])(a1);
        if (!result)
        {
          return result;
        }

        v84 = *v82;
        v86 = v82[1];
LABEL_132:
        v88 = *v84;
        v87 = v84 + 1;
        if (((v85 << 8) | v88) != 4)
        {
          v89 = *a1;
          v89[2].i32[2] = 12;
          (v89->i64[0])(a1);
        }

        v90 = v86 - 1;
        if (v86 != 1)
        {
          goto LABEL_137;
        }

        result = (v82[3])(a1);
        if (!result)
        {
          return result;
        }

        v87 = *v82;
        v90 = v82[1];
LABEL_137:
        v93 = *v87;
        v91 = v87 + 1;
        v92 = v93;
        v94 = v90 - 1;
        if (v94)
        {
          goto LABEL_140;
        }

        result = (v82[3])(a1);
        if (!result)
        {
          return result;
        }

        v91 = *v82;
        v94 = v82[1];
LABEL_140:
        v95 = v92 << 8;
        v96 = v94 - 1;
        v98 = *v91;
        v97 = v91 + 1;
        v99 = v95 | v98;
        v100 = *a1;
        v100[2].i32[2] = 84;
        v100[3].i32[0] = v95 | v98;
        (*(*a1 + 8))(a1, 1);
        *(a1 + 372) = v99;
        goto LABEL_275;
      case 222:
      case 223:
      case 240:
      case 241:
      case 242:
      case 243:
      case 244:
      case 245:
      case 246:
      case 247:
      case 249:
      case 250:
      case 251:
      case 252:
      case 253:
        goto LABEL_23;
      case 224:
      case 225:
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 238:
      case 239:
        result = (*(*(a1 + 616) + 8 * (v3 - 224) + 48))(a1);
        goto LABEL_17;
      case 248:
        v16 = *(a1 + 40);
        v18 = *v16;
        v17 = v16[1];
        if (!*(*(a1 + 616) + 28))
        {
          v19 = *a1;
          v19[2].i32[2] = 60;
          v19[5] = xmmword_1862073D3;
          v19[6] = unk_1862073E3;
          v19[7] = xmmword_1862073F3;
          v19[3] = xmmword_1862073B3;
          v19[4] = unk_1862073C3;
          (**a1)(a1);
        }

        if (*(a1 + 56) < 3)
        {
          goto LABEL_277;
        }

        if (v17)
        {
          goto LABEL_30;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v18 = *v16;
        v17 = v16[1];
LABEL_30:
        v22 = *v18;
        v21 = v18 + 1;
        v20 = v22;
        v23 = v17 - 1;
        if (v23)
        {
          goto LABEL_33;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v21 = *v16;
        v23 = v16[1];
LABEL_33:
        v25 = *v21;
        v24 = v21 + 1;
        if (((v20 << 8) | v25) != 0x18)
        {
          v26 = *a1;
          v26[2].i32[2] = 12;
          (v26->i64[0])(a1);
        }

        v27 = v23 - 1;
        if (v27)
        {
          goto LABEL_38;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v24 = *v16;
        v27 = v16[1];
LABEL_38:
        v29 = *v24;
        v28 = v24 + 1;
        if (v29 != 13)
        {
          v30 = *a1;
          v30[2].i32[2] = 70;
          v30[3].i32[0] = *(a1 + 572);
          (**a1)(a1);
        }

        v31 = v27 - 1;
        if (v27 != 1)
        {
          goto LABEL_43;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v28 = *v16;
        v31 = v16[1];
LABEL_43:
        v34 = *v28;
        v33 = v28 + 1;
        v32 = v34;
        v35 = v31 - 1;
        if (v35)
        {
          goto LABEL_46;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v33 = *v16;
        v35 = v16[1];
LABEL_46:
        v36 = v32 << 8;
        v17 = v35 - 1;
        v37 = *v33;
        v18 = v33 + 1;
        if ((v36 | v37) != 0xFF)
        {
          goto LABEL_277;
        }

        if (v35 != 1)
        {
          goto LABEL_50;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v18 = *v16;
        v17 = v16[1];
LABEL_50:
        --v17;
        v38 = *v18++;
        if (v38 != 3)
        {
          goto LABEL_277;
        }

        if (v17)
        {
          goto LABEL_54;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v18 = *v16;
        v17 = v16[1];
LABEL_54:
        --v17;
        v39 = *v18++;
        v40 = *(a1 + 304);
        if (v40[24] != v39)
        {
          goto LABEL_277;
        }

        if (v17)
        {
          goto LABEL_58;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v18 = *v16;
        v17 = v16[1];
        v40 = *(a1 + 304);
LABEL_58:
        --v17;
        v41 = *v18++;
        if (*v40 != v41)
        {
          goto LABEL_277;
        }

        if (v17)
        {
          goto LABEL_62;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v18 = *v16;
        v17 = v16[1];
        v40 = *(a1 + 304);
LABEL_62:
        --v17;
        v42 = *v18++;
        if (v40[48] != v42)
        {
          goto LABEL_277;
        }

        if (v17)
        {
          goto LABEL_66;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v18 = *v16;
        v17 = v16[1];
LABEL_66:
        --v17;
        v43 = *v18++;
        if (v43 != 128)
        {
          goto LABEL_277;
        }

        if (v17)
        {
          goto LABEL_70;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v18 = *v16;
        v17 = v16[1];
LABEL_70:
        v46 = *v18;
        v45 = v18 + 1;
        v44 = v46;
        v47 = v17 - 1;
        if (v17 != 1)
        {
          goto LABEL_73;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v45 = *v16;
        v47 = v16[1];
LABEL_73:
        v17 = v47 - 1;
        v48 = *v45;
        v18 = v45 + 1;
        if ((v44 << 8) | v48)
        {
          goto LABEL_277;
        }

        if (v47 != 1)
        {
          goto LABEL_77;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v18 = *v16;
        v17 = v16[1];
LABEL_77:
        v51 = *v18;
        v50 = v18 + 1;
        v49 = v51;
        v52 = v17 - 1;
        if (v17 != 1)
        {
          goto LABEL_80;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v50 = *v16;
        v52 = v16[1];
LABEL_80:
        v17 = v52 - 1;
        v53 = *v50;
        v18 = v50 + 1;
        if ((v49 << 8) | v53)
        {
          goto LABEL_277;
        }

        if (v52 != 1)
        {
          goto LABEL_84;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v18 = *v16;
        v17 = v16[1];
LABEL_84:
        --v17;
        if (*v18++)
        {
          goto LABEL_277;
        }

        if (v17)
        {
          goto LABEL_88;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v18 = *v16;
        v17 = v16[1];
LABEL_88:
        v57 = *v18;
        v56 = v18 + 1;
        v55 = v57;
        v58 = v17 - 1;
        if (v17 != 1)
        {
          goto LABEL_91;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v56 = *v16;
        v58 = v16[1];
LABEL_91:
        v17 = v58 - 1;
        v59 = *v56;
        v18 = v56 + 1;
        if (((v55 << 8) | v59) != 1)
        {
          goto LABEL_276;
        }

        if (v58 != 1)
        {
          goto LABEL_95;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v18 = *v16;
        v17 = v16[1];
LABEL_95:
        v62 = *v18;
        v61 = v18 + 1;
        v60 = v62;
        v63 = v17 - 1;
        if (v17 != 1)
        {
          goto LABEL_98;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v61 = *v16;
        v63 = v16[1];
LABEL_98:
        v17 = v63 - 1;
        v64 = *v61;
        v18 = v61 + 1;
        if ((v60 << 8) | v64)
        {
          goto LABEL_276;
        }

        if (v63 != 1)
        {
          goto LABEL_102;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v18 = *v16;
        v17 = v16[1];
LABEL_102:
        --v17;
        if (*v18++)
        {
          goto LABEL_276;
        }

        if (v17)
        {
          goto LABEL_106;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v18 = *v16;
        v17 = v16[1];
LABEL_106:
        v68 = *v18;
        v67 = v18 + 1;
        v66 = v68;
        v69 = v17 - 1;
        if (v17 != 1)
        {
          goto LABEL_109;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v67 = *v16;
        v69 = v16[1];
LABEL_109:
        v17 = v69 - 1;
        v70 = *v67;
        v18 = v67 + 1;
        if (((v66 << 8) | v70) != 1)
        {
LABEL_276:
          v2 = v234;
LABEL_277:
          v179 = *a1;
          v179[2].i32[2] = 28;
          (v179->i64[0])(a1);
LABEL_278:
          *(a1 + 396) = 1;
          *v16 = v18;
          v16[1] = v17;
          goto LABEL_279;
        }

        if (v69 != 1)
        {
          goto LABEL_113;
        }

        result = (v16[3])(a1);
        if (!result)
        {
          return result;
        }

        v18 = *v16;
        v17 = v16[1];
LABEL_113:
        v73 = *v18;
        v72 = v18 + 1;
        v71 = v73;
        v74 = v17 - 1;
        if (v17 != 1)
        {
          goto LABEL_116;
        }

        result = (v16[3])(a1);
        if (result)
        {
          v72 = *v16;
          v74 = v16[1];
LABEL_116:
          v17 = v74 - 1;
          v75 = *v72;
          v18 = v72 + 1;
          v2 = v234;
          if (!((v71 << 8) | v75))
          {
            goto LABEL_278;
          }

          goto LABEL_277;
        }

        return result;
      case 254:
        result = (*(*(a1 + 616) + 40))(a1);
LABEL_17:
        if (!result)
        {
          return result;
        }

        goto LABEL_279;
      default:
        if (v3 == 1)
        {
LABEL_22:
          v15 = *a1;
          v15[2].i32[2] = 94;
          v15[3].i32[0] = v3;
          (*(*a1 + 8))(a1, 1);
        }

        else
        {
LABEL_23:
          v13 = *a1;
          v14 = 70;
LABEL_20:
          v13[2].i32[2] = v14;
          v13[3].i32[0] = v3;
          (**a1)(a1);
        }

        goto LABEL_279;
    }
  }
}

uint64_t read_restart_marker(uint64_t *a1)
{
  v2 = *(a1 + 143);
  if (!v2)
  {
    result = next_marker(a1);
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 143);
  }

  v4 = *(a1[77] + 32);
  if (v2 == v4 + 208)
  {
    v5 = *a1;
    *(v5 + 40) = 100;
    *(v5 + 48) = v4;
    (*(*a1 + 8))(a1, 3);
    *(a1 + 143) = 0;
  }

  else
  {
    result = (*(a1[5] + 40))(a1);
    if (!result)
    {
      return result;
    }
  }

  *(a1[77] + 32) = (*(a1[77] + 32) + 1) & 7;
  return 1;
}

uint64_t skip_variable(void *a1)
{
  v2 = a1[5];
  v3 = v2[1];
  if (!v3)
  {
    if (!(v2[3])(a1))
    {
      return 0;
    }

    v3 = v2[1];
  }

  v5 = *v2 + 1;
  v4 = **v2;
  v6 = v3 - 1;
  if (v6)
  {
    goto LABEL_7;
  }

  if (!(v2[3])(a1))
  {
    return 0;
  }

  v5 = *v2;
  v6 = v2[1];
LABEL_7:
  v7 = v6 - 1;
  v8 = (v4 << 8) | *v5;
  v9 = *a1;
  *(v9 + 40) = 93;
  *(v9 + 48) = *(a1 + 143);
  *(*a1 + 52) = v8 - 2;
  v10 = 1;
  (*(*a1 + 8))(a1, 1);
  *v2 = v5 + 1;
  v2[1] = v7;
  if (v8 >= 3)
  {
    (*(a1[5] + 32))(a1, v8 - 2);
  }

  return v10;
}

uint64_t get_interesting_appn(uint64_t a1)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = v2[1];
  if (!v3)
  {
    result = (v2[3])(a1);
    if (!result)
    {
      return result;
    }

    v3 = v2[1];
  }

  v6 = *v2 + 1;
  v5 = **v2;
  v7 = v3 - 1;
  if (!v7)
  {
    result = (v2[3])(a1);
    if (!result)
    {
      return result;
    }

    v6 = *v2;
    v7 = v2[1];
  }

  memset(v22, 0, 14);
  v9 = *v6;
  v8 = v6 + 1;
  v10 = (v5 << 8) | v9;
  v11 = v10 - 2;
  if (v10 <= 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10 - 2;
  }

  if (v10 <= 0xF)
  {
    v13 = v12;
  }

  else
  {
    v13 = 14;
  }

  v14 = v7 - 1;
  if (v13)
  {
    v15 = v22;
    v16 = v13;
    do
    {
      if (!v14)
      {
        result = (v2[3])(a1);
        if (!result)
        {
          return result;
        }

        v8 = *v2;
        v14 = v2[1];
      }

      v17 = *v8++;
      *v15++ = v17;
      --v14;
      --v16;
    }

    while (v16);
    v18 = v13;
  }

  else
  {
    v18 = 0;
  }

  v19 = v11 - v18;
  v20 = *(a1 + 572);
  if (v20 == 238)
  {
    examine_app14(a1, v22, v13, v19);
  }

  else if (v20 == 224)
  {
    examine_app0(a1, v22, v13, v19);
  }

  else
  {
    v21 = *a1;
    *(v21 + 40) = 70;
    *(v21 + 48) = v20;
    (**a1)(a1);
  }

  *v2 = v8;
  v2[1] = v14;
  if (v19 >= 1)
  {
    (*(*(a1 + 40) + 32))(a1, v19);
  }

  return 1;
}

void *_cg_jpeg_save_markers(void *result, int a2, unsigned int a3)
{
  v3 = result[77];
  v4 = *(result[1] + 96) - 32;
  if (v4 >= a3)
  {
    LODWORD(v4) = a3;
  }

  if (v4)
  {
    v5 = save_marker;
    if (a2 == 224 && v4 < 0xE)
    {
      v6 = 14;
LABEL_22:
      *(v3 + 8 * (a2 - 224) + 48) = v5;
      *(v3 + 4 * (a2 - 224) + 180) = v6;
      return result;
    }

    if (v4 <= 0xC)
    {
      v6 = 12;
    }

    else
    {
      v6 = v4;
    }

    if (a2 != 238)
    {
      v6 = v4;
    }

    v5 = save_marker;
  }

  else
  {
    v6 = 0;
    v7 = a2 == 238 || a2 == 224;
    v5 = get_interesting_appn;
    if (!v7)
    {
      v5 = skip_variable;
    }
  }

  if (a2 == 254)
  {
    *(v3 + 40) = v5;
    *(v3 + 176) = v6;
    return result;
  }

  if ((a2 & 0xFFFFFFF0) == 0xE0)
  {
    goto LABEL_22;
  }

  v8 = *result;
  *(v8 + 10) = 70;
  *(v8 + 12) = a2;
  return (**result)(result);
}

uint64_t save_marker(uint64_t a1)
{
  v2 = *(a1 + 616);
  v3 = *(v2 + 248);
  v4 = *(a1 + 40);
  v5 = *v4;
  v6 = v4[1];
  if (v3)
  {
    v7 = *(v2 + 256);
    LODWORD(v8) = *(v3 + 16);
    v9 = *(v3 + 24) + v7;
    goto LABEL_29;
  }

  if (!v6)
  {
    result = (v4[3])(a1);
    if (!result)
    {
      return result;
    }

    v5 = *v4;
    v6 = v4[1];
  }

  v13 = *v5;
  v12 = v5 + 1;
  v11 = v13;
  v14 = v6 - 1;
  if (v6 == 1)
  {
    result = (v4[3])(a1);
    if (!result)
    {
      return result;
    }

    v12 = *v4;
    v14 = v4[1];
  }

  v6 = v14 - 1;
  v15 = *v12;
  v5 = v12 + 1;
  v16 = (v11 << 8) | v15;
  v17 = v16 - 2;
  if (v16 < 2)
  {
    LODWORD(v8) = 0;
    v25 = 0;
  }

  else
  {
    v18 = *(a1 + 572);
    if (v18 == 254)
    {
      v19 = (v2 + 176);
    }

    else
    {
      v19 = (v2 + 4 * v18 - 716);
    }

    v20 = *v19;
    if (v20 >= v17)
    {
      v8 = v17;
    }

    else
    {
      v8 = v20;
    }

    v3 = (*(*(a1 + 8) + 8))(a1, 1, v8 + 32);
    LODWORD(v7) = 0;
    *v3 = 0;
    *(v3 + 8) = *(a1 + 572);
    *(v3 + 12) = v17;
    *(v3 + 16) = v8;
    v9 = v3 + 32;
    *(v3 + 24) = v3 + 32;
    *(v2 + 248) = v3;
    *(v2 + 256) = 0;
LABEL_29:
    while (v7 < v8)
    {
      *v4 = v5;
      v4[1] = v6;
      *(v2 + 256) = v7;
      if (!v6)
      {
        result = (v4[3])(a1);
        if (!result)
        {
          return result;
        }

        v5 = *v4;
        v6 = v4[1];
      }

      if (v7 < v8 && v6)
      {
        v21 = 0;
        do
        {
          v21[v9] = v21[v5];
          v22 = v7 + v21 + 1 >= v8 || v6 - 1 == v21;
          ++v21;
        }

        while (!v22);
        v6 -= v21;
        v5 = &v21[v5];
        v9 += v21;
        LODWORD(v7) = v7 + v21;
      }
    }

    v23 = *(a1 + 408);
    if (v23)
    {
      do
      {
        v24 = v23;
        v23 = *v23;
      }

      while (v23);
    }

    else
    {
      v24 = (a1 + 408);
    }

    *v24 = v3;
    v25 = *(v3 + 24);
    v17 = (*(v3 + 12) - v8);
  }

  *(v2 + 248) = 0;
  v26 = *(a1 + 572);
  if (v26 == 238)
  {
    examine_app14(a1, v25, v8, v17);
  }

  else if (v26 == 224)
  {
    examine_app0(a1, v25, v8, v17);
  }

  else
  {
    v27 = *a1;
    *(v27 + 40) = 93;
    *(v27 + 48) = v26;
    *(*a1 + 52) = v8 + v17;
    (*(*a1 + 8))(a1, 1);
  }

  *v4 = v5;
  v4[1] = v6;
  if (v17 >= 1)
  {
    (*(*(a1 + 40) + 32))(a1, v17);
  }

  return 1;
}

uint64_t get_sof(uint64_t *a1, int a2, int a3, int a4)
{
  v5 = a1[5];
  v7 = *v5;
  v6 = v5[1];
  *(a1 + 78) = a2;
  *(a1 + 79) = a3;
  *(a1 + 80) = a4;
  if (!v6)
  {
    result = (v5[3])(a1);
    if (!result)
    {
      return result;
    }

    v7 = *v5;
    v6 = v5[1];
  }

  v11 = *v7;
  v9 = v7 + 1;
  v10 = v11;
  v12 = v6 - 1;
  if (!v12)
  {
    result = (v5[3])(a1);
    if (!result)
    {
      return result;
    }

    v9 = *v5;
    v12 = v5[1];
  }

  v15 = *v9;
  v13 = v9 + 1;
  v14 = v15;
  v16 = v12 - 1;
  if (!v16)
  {
    result = (v5[3])(a1);
    if (!result)
    {
      return result;
    }

    v13 = *v5;
    v16 = v5[1];
  }

  v18 = *v13;
  v17 = v13 + 1;
  *(a1 + 74) = v18;
  v19 = v16 - 1;
  if (!v19)
  {
    result = (v5[3])(a1);
    if (!result)
    {
      return result;
    }

    v17 = *v5;
    v19 = v5[1];
  }

  v21 = *v17;
  v20 = v17 + 1;
  v22 = v21 << 8;
  *(a1 + 13) = v21 << 8;
  v23 = v19 - 1;
  if (!v23)
  {
    result = (v5[3])(a1);
    if (!result)
    {
      return result;
    }

    v20 = *v5;
    v23 = v5[1];
    v22 = *(a1 + 13);
  }

  v25 = *v20;
  v24 = v20 + 1;
  *(a1 + 13) = v22 + v25;
  v26 = v23 - 1;
  if (!v26)
  {
    result = (v5[3])(a1);
    if (!result)
    {
      return result;
    }

    v24 = *v5;
    v26 = v5[1];
  }

  v28 = *v24;
  v27 = v24 + 1;
  v29 = v28 << 8;
  *(a1 + 12) = v28 << 8;
  v30 = v26 - 1;
  if (!v30)
  {
    result = (v5[3])(a1);
    if (!result)
    {
      return result;
    }

    v27 = *v5;
    v30 = v5[1];
    v29 = *(a1 + 12);
  }

  v32 = *v27;
  v31 = v27 + 1;
  *(a1 + 12) = v29 + v32;
  v33 = v30 - 1;
  if (v30 == 1)
  {
    result = (v5[3])(a1);
    if (!result)
    {
      return result;
    }

    v31 = *v5;
    v33 = v5[1];
  }

  v34 = (v10 << 8) | v14;
  *(a1 + 14) = *v31;
  v35 = *a1;
  *(v35 + 48) = *(a1 + 143);
  *(v35 + 52) = *(a1 + 12);
  *(v35 + 56) = *(a1 + 13);
  *(v35 + 60) = *(a1 + 14);
  *(v35 + 40) = 102;
  (*(v35 + 8))(a1, 1);
  if (*(a1[77] + 28))
  {
    v36 = *a1;
    *(v36 + 40) = 61;
    (*v36)(a1);
  }

  v37 = v34 - 8;
  if (!*(a1 + 13) || !*(a1 + 12) || (v38 = *(a1 + 14), v38 <= 0))
  {
    v39 = *a1;
    *(v39 + 40) = 33;
    (*v39)(a1);
    v38 = *(a1 + 14);
  }

  if (v37 != 3 * v38)
  {
    v40 = *a1;
    *(v40 + 40) = 12;
    (*v40)(a1);
    v38 = *(a1 + 14);
  }

  if (!a1[38])
  {
    a1[38] = (*a1[1])(a1, 1, 96 * v38);
    v38 = *(a1 + 14);
  }

  v41 = v31 + 1;
  v42 = v33 - 1;
  if (v38 >= 1)
  {
    v43 = 0;
    v44 = -1;
    do
    {
      if (!v42)
      {
        result = (v5[3])(a1);
        if (!result)
        {
          return result;
        }

        v41 = *v5;
        v42 = v5[1];
      }

      v47 = *v41;
      v46 = v41 + 1;
      v45 = v47;
      v48 = a1[38];
      if (v43)
      {
        v49 = v43;
        v50 = a1[38];
        while (*v50 != v45)
        {
          v50 += 24;
          if (!--v49)
          {
            v48 = v50;
            goto LABEL_51;
          }
        }

        v52 = *v48;
        v48 += 24;
        v51 = v52;
        if (v43 != 1)
        {
          v53 = v44;
          do
          {
            v55 = *v48;
            v48 += 24;
            v54 = v55;
            if (v55 > v51)
            {
              v51 = v54;
            }

            --v53;
          }

          while (v53);
        }

        v45 = v51 + 1;
      }

LABEL_51:
      *v48 = v45;
      v48[1] = v43;
      v56 = v42 - 1;
      if (!v56)
      {
        result = (v5[3])(a1);
        if (!result)
        {
          return result;
        }

        v46 = *v5;
        v56 = v5[1];
      }

      v58 = *v46;
      v57 = v46 + 1;
      v48[2] = v58 >> 4;
      v48[3] = v58 & 0xF;
      v59 = v56 - 1;
      if (v56 == 1)
      {
        result = (v5[3])(a1);
        if (!result)
        {
          return result;
        }

        v57 = *v5;
        v59 = v5[1];
      }

      v60 = *v57;
      v41 = v57 + 1;
      v48[4] = v60;
      v61 = *a1;
      *(v61 + 48) = *v48;
      *(v61 + 52) = v48[2];
      *(v61 + 56) = v48[3];
      *(v61 + 60) = v48[4];
      *(v61 + 40) = 103;
      (*(v61 + 8))(a1, 1);
      ++v43;
      v42 = v59 - 1;
      ++v44;
    }

    while (v43 < *(a1 + 14));
  }

  result = 1;
  *(a1[77] + 28) = 1;
  *v5 = v41;
  v5[1] = v42;
  return result;
}

uint64_t examine_app0(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a4 + a3;
  if (a3 < 0xE)
  {
    if (a3 < 6 || *a2 != 74)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (*a2 != 74)
  {
    goto LABEL_19;
  }

  if (*(a2 + 1) != 70 || *(a2 + 2) != 73 || *(a2 + 3) != 70 || *(a2 + 4))
  {
LABEL_15:
    if (*(a2 + 1) == 70 && *(a2 + 2) == 88 && *(a2 + 3) == 88 && !*(a2 + 4))
    {
      v21 = *(a2 + 5);
      v18 = *a1;
      switch(v21)
      {
        case 19:
          v19 = 112;
          break;
        case 17:
          v19 = 111;
          break;
        case 16:
          v19 = 110;
          break;
        default:
          *(v18 + 40) = 91;
          *(v18 + 48) = *(a2 + 5);
          *(*a1 + 52) = v6;
          goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_19:
    v18 = *a1;
    v19 = 79;
LABEL_20:
    *(v18 + 40) = v19;
    *(v18 + 48) = v6;
LABEL_21:
    v20 = *(*a1 + 8);

    return v20(a1, 1);
  }

  *(a1 + 94) = 1;
  v7 = *(a2 + 5);
  *(a1 + 380) = v7;
  v8 = *(a2 + 6);
  *(a1 + 381) = v8;
  v9 = *(a2 + 7);
  *(a1 + 382) = v9;
  v10 = bswap32(*(a2 + 8)) >> 16;
  *(a1 + 192) = v10;
  v11 = bswap32(*(a2 + 10)) >> 16;
  *(a1 + 193) = v11;
  if ((v7 - 1) >= 2)
  {
    v12 = *a1;
    *(v12 + 40) = 122;
    *(v12 + 48) = v7;
    *(*a1 + 52) = *(a1 + 381);
    (*(*a1 + 8))(a1, 0xFFFFFFFFLL);
    v7 = *(a1 + 380);
    v8 = *(a1 + 381);
    v10 = *(a1 + 192);
    v11 = *(a1 + 193);
    v9 = *(a1 + 382);
  }

  v13 = *a1;
  *(v13 + 48) = v7;
  *(v13 + 52) = v8;
  *(v13 + 56) = v10;
  *(v13 + 60) = v11;
  *(v13 + 64) = v9;
  *(v13 + 40) = 89;
  result = (*(v13 + 8))(a1, 1);
  v15 = *(a2 + 12);
  v16 = *(a2 + 13);
  if (v16 | v15)
  {
    v17 = *a1;
    *(v17 + 40) = 92;
    *(v17 + 48) = *(a2 + 12);
    *(*a1 + 52) = *(a2 + 13);
    result = (*(*a1 + 8))(a1, 1);
    v15 = *(a2 + 12);
    v16 = *(a2 + 13);
  }

  if (v6 - 14 != 3 * v15 * v16)
  {
    v22 = *a1;
    *(v22 + 40) = 90;
    *(v22 + 48) = v6 - 14;
    goto LABEL_21;
  }

  return result;
}

uint64_t examine_app14(uint64_t *a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a3 >= 0xC && *a2 == 65 && *(a2 + 1) == 100 && *(a2 + 2) == 111 && *(a2 + 3) == 98 && *(a2 + 4) == 101)
  {
    v5 = __rev16(*(a2 + 7));
    v6 = __rev16(*(a2 + 9));
    v7 = *(a2 + 11);
    v8 = *a1;
    *(v8 + 48) = __rev16(*(a2 + 5));
    *(v8 + 52) = v5;
    *(v8 + 56) = v6;
    *(v8 + 60) = v7;
    *(v8 + 40) = 78;
    result = (*(v8 + 8))(a1, 1);
    *(a1 + 97) = 1;
    *(a1 + 392) = v7;
  }

  else
  {
    v10 = *a1;
    *(v10 + 40) = 80;
    *(v10 + 48) = a4 + a3;
    v11 = *(*a1 + 8);

    return v11();
  }

  return result;
}

uint64_t _cg_jpeg_start_compress(uint64_t a1, int a2)
{
  v4 = *(a1 + 36);
  if (v4 != 100)
  {
    v5 = *a1;
    *(v5 + 10) = 21;
    *(v5 + 12) = v4;
    (**a1)(a1);
  }

  if (a2)
  {
    _cg_jpeg_suppress_tables(a1, 0);
  }

  (*(*a1 + 32))(a1);
  (*(*(a1 + 40) + 16))(a1);
  _cg_jinit_compress_master(a1);
  result = (**(a1 + 496))(a1);
  *(a1 + 344) = 0;
  if (*(a1 + 288))
  {
    v7 = 102;
  }

  else
  {
    v7 = 101;
  }

  *(a1 + 36) = v7;
  return result;
}

uint64_t _cg_jpeg_write_scanlines(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 36);
  if (v6 != 101)
  {
    v7 = *a1;
    *(v7 + 10) = 21;
    *(v7 + 12) = v6;
    (**a1)(a1);
  }

  if (*(a1 + 344) >= *(a1 + 52))
  {
    v8 = *a1;
    *(v8 + 10) = 126;
    (v8[1])(a1, 0xFFFFFFFFLL);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 52);
    *(v9 + 8) = *(a1 + 344);
    *(v9 + 16) = v10;
    (*v9)(a1);
  }

  v11 = *(a1 + 496);
  if (*(v11 + 24))
  {
    (*(v11 + 8))(a1);
  }

  v12 = *(a1 + 52) - *(a1 + 344);
  if (v12 >= a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = v12;
  }

  v15 = 0;
  (*(*(a1 + 504) + 8))(a1, a2, &v15, v13);
  result = v15;
  *(a1 + 344) += v15;
  return result;
}

uint64_t _cg_jpeg_write_raw_data(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 36);
  if (v6 != 102)
  {
    v7 = *a1;
    *(v7 + 10) = 21;
    *(v7 + 12) = v6;
    (**a1)(a1);
  }

  v8 = *(a1 + 344);
  v9 = *(a1 + 52);
  if (v8 >= v9)
  {
    v14 = *a1;
    *(v14 + 10) = 126;
    (v14[1])(a1, 0xFFFFFFFFLL);
    return 0;
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    *(v10 + 8) = v8;
    *(v10 + 16) = v9;
    (*v10)(a1);
  }

  v11 = *(a1 + 496);
  if (*(v11 + 24))
  {
    (*(v11 + 8))(a1);
  }

  v12 = (*(a1 + 364) * *(a1 + 356));
  if (v12 > a3)
  {
    v13 = *a1;
    *(v13 + 10) = 24;
    (*v13)(a1);
  }

  if (!(*(*(a1 + 520) + 8))(a1, a2))
  {
    return 0;
  }

  *(a1 + 344) += v12;
  return v12;
}

uint64_t HEIFReadPlugin::IIORecodeHEIF_to_JPEG(HEIFReadPlugin *this, IIOImageDestination *a2, IIOImageSource *a3)
{
  v3 = a3;
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "HEIFReadPlugin::IIORecodeHEIF_to_JPEG", 0, 0, -1, 0);
  }

  v28 = 0;
  *buffer = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  IIODictionary::IIODictionary(v23);
  memset(v22, 0, sizeof(v22));
  IIODictionary::IIODictionary(v22);
  memset(v21, 0, sizeof(v21));
  IIODictionary::IIODictionary(v21);
  v20 = 0;
  IIOImageSource::count(this);
  v18[1] = 0;
  v19 = 0;
  v18[0] = 0;
  IIOColorSpace::IIOColorSpace(v18, *MEMORY[0x1E695F1C0]);
  v6 = IIOImageDestination::resizeSourceImage(this);
  ImageAtIndex = v6;
  if (v6)
  {
    CGImageRetain(v6);
  }

  else
  {
    ColorSpace = IIOReadPlugin::getColorSpace(this);
    ImageAtIndex = CGImageSourceCreateImageAtIndex(ColorSpace, 0, 0);
    if (!ImageAtIndex)
    {
      _cg_jpeg_mem_term("IIORecodeHEIF_to_JPEG", 154, "*** ERROR: cannot get the source image...");
      ImageAtIndex = 0;
      goto LABEL_22;
    }
  }

  space = CGImageGetColorSpace(ImageAtIndex);
  CGColorSpaceGetModel(space);
  if (a2)
  {
    Ref = IIOImageSource::imageReadRef(a2);
    *buffer = Ref;
    if (Ref)
    {
      goto LABEL_8;
    }
  }

  else
  {
    Property = CGImageGetProperty();
    if (Property)
    {
      v30.location = 0;
      v30.length = 8;
      CFDataGetBytes(Property, v30, buffer);
    }

    Ref = *buffer;
    if (*buffer)
    {
LABEL_8:
      v17 = CGImageReadSessionCreate(Ref);
      CGImageSourceGetSource(v17);
      v10 = v3;
      if (a2)
      {
        ImagePropertiesAtIndex = IIOImageSource::getImagePropertiesAtIndex(a2, v3);
        v10 = v3;
      }

      else
      {
        ImagePropertiesAtIndex = 0;
      }

      v13 = IIOImageDestination::getImagePropertiesAtIndex(this, v10);
      if (!v13)
      {
        v13 = IIOImageDestination::getImagePropertiesAtIndex(this, 0);
      }

      if (IIODictionary::containsKey(v13, @"kCGImageSourceTiledDownsamplingMode"))
      {
        IIODictionary::getUint32ForKey(v13, @"kCGImageSourceTiledDownsamplingMode");
      }

      IIOSkipMetadata(ImagePropertiesAtIndex);
      if (v13)
      {
        IIODictionary::getBoolForKey(v13, @"kCGImageSourceCreateThumbnailWithTransform");
      }

      IIOReadPlugin::CreateRecodeProperties(a2, ImagePropertiesAtIndex, this, v13, &v28, v14);
    }
  }

  _cg_jpeg_mem_term("IIORecodeHEIF_to_JPEG", 175, "*** ERROR: cannot get the 'CGImageReadRef' of the source image...");
LABEL_22:
  CGImageRelease(ImageAtIndex);
  CGColorSpaceRelease(0);
  CGColorSpaceRelease(v19);
  CGColorSpaceRelease(0);
  if (v24)
  {
    CFRelease(v24);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  IIOColorSpace::~IIOColorSpace(v18);
  IIODictionary::~IIODictionary(v21);
  IIODictionary::~IIODictionary(v22);
  IIODictionary::~IIODictionary(v23);
  return 4294967246;
}

void sub_185F82BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, CGColorSpaceRef a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32)
{
  IIOColorSpace::~IIOColorSpace(&a25);
  IIODictionary::~IIODictionary(&a29);
  IIODictionary::~IIODictionary(&a32);
  IIODictionary::~IIODictionary((v32 - 176));
  _Unwind_Resume(a1);
}

void IIOColorSpace::~IIOColorSpace(CGColorSpaceRef *this)
{
  *this = &unk_1EF4D3270;
  CGColorSpaceRelease(this[1]);
}

{
  IIOColorSpace::~IIOColorSpace(this);

  JUMPOUT(0x186602850);
}

void *_cg_jinit_color_deconverter(uint64_t a1)
{
  result = (**(a1 + 8))();
  v3 = result;
  *(a1 + 648) = result;
  *result = start_pass_dcolor;
  v4 = *(a1 + 60);
  if (v4 > 7)
  {
    goto LABEL_41;
  }

  if (((1 << v4) & 0xCC) == 0)
  {
    if (((1 << v4) & 0x30) != 0)
    {
      if (*(a1 + 56) == 4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (v4 == 1)
    {
      if (*(a1 + 56) == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

LABEL_41:
    if (*(a1 + 56) > 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (*(a1 + 56) != 3)
  {
LABEL_4:
    v5 = *a1;
    *(v5 + 40) = 11;
    result = (*v5)(a1);
  }

LABEL_5:
  if (*(a1 + 396) && (*(a1 + 60) | 4) != 6)
  {
    v6 = *a1;
    *(v6 + 40) = 28;
    result = (*v6)(a1);
  }

  v7 = *(a1 + 64);
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      *(a1 + 144) = 4;
      v16 = *(a1 + 60);
      if (v16 != 4)
      {
        if (v16 != 5)
        {
          goto LABEL_60;
        }

        v17 = ycck_cmyk_convert;
LABEL_69:
        v3[1] = v17;
        result = build_ycc_rgb_table(a1);
        goto LABEL_64;
      }

LABEL_37:
      v11 = null_convert_0;
      goto LABEL_63;
    }

    if (v7 == 6)
    {
      *(a1 + 144) = 3;
      if (*(a1 + 60) != 6)
      {
        v9 = *a1;
        *(v9 + 40) = 28;
        result = (*v9)(a1);
      }

      goto LABEL_19;
    }

LABEL_25:
    if (v7 != *(a1 + 60))
    {
      v12 = *a1;
      *(v12 + 40) = 28;
      result = (*v12)(a1);
    }

    *(a1 + 144) = *(a1 + 56);
    goto LABEL_37;
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      *(a1 + 144) = 3;
      v8 = *(a1 + 60);
      if (v8 <= 2)
      {
        if (v8 == 1)
        {
          v11 = gray_rgb_convert;
          goto LABEL_63;
        }

        if (v8 != 2)
        {
          goto LABEL_60;
        }

LABEL_19:
        v10 = *(a1 + 396);
        if (v10 == 1)
        {
          v11 = rgb1_rgb_convert;
          goto LABEL_63;
        }

        if (!v10)
        {
          v11 = rgb_convert_0;
LABEL_63:
          v3[1] = v11;
          goto LABEL_64;
        }

LABEL_60:
        v34 = *a1;
        *(v34 + 40) = 28;
        result = (*v34)(a1);
        goto LABEL_64;
      }

      if (v8 != 3)
      {
        if (v8 == 7)
        {
          v3[1] = ycc_rgb_convert;
          v18 = *(a1 + 648);
          v18[2] = (**(a1 + 8))(a1, 1, 1024);
          v18[3] = (**(a1 + 8))(a1, 1, 1024);
          v18[4] = (**(a1 + 8))(a1, 1, 2048);
          result = (**(a1 + 8))(a1, 1, 2048);
          v19 = 0;
          v18[5] = result;
          v20 = v18[2];
          v21 = v18[3];
          v22 = -29696512;
          v23 = -23488896;
          v24 = 5806464;
          v25 = 11981184;
          v26 = v18[4];
          do
          {
            *(v20 + 4 * v19) = v23 >> 16;
            *(v21 + 4 * v19) = v22 >> 16;
            *(v26 + 8 * v19) = v25;
            result[v19++] = v24;
            v24 -= 45107;
            v25 -= 93603;
            v22 += 232260;
            v23 += 183763;
          }

          while (v19 != 256);
          goto LABEL_64;
        }

        goto LABEL_60;
      }

      v17 = ycc_rgb_convert;
      goto LABEL_69;
    }

    goto LABEL_25;
  }

  *(a1 + 144) = 1;
  v13 = *(a1 + 60);
  if (v13 > 2)
  {
    if (v13 != 7 && v13 != 3)
    {
      goto LABEL_60;
    }
  }

  else if (v13 != 1)
  {
    if (v13 != 2)
    {
      goto LABEL_60;
    }

    v14 = *(a1 + 396);
    if (v14 == 1)
    {
      v15 = rgb1_gray_convert;
    }

    else
    {
      if (v14)
      {
        v36 = *a1;
        *(v36 + 40) = 28;
        (*v36)(a1);
LABEL_73:
        v37 = *(a1 + 648);
        result = (**(a1 + 8))(a1, 1, 6144);
        v38 = 0;
        v39 = 0;
        *(v37 + 48) = result;
        v40 = 256;
        v41 = 0x8000;
        do
        {
          *result = v38;
          result[256] = v39;
          result[512] = v41;
          ++result;
          v41 += 7471;
          v39 += 38470;
          v38 += 19595;
          --v40;
        }

        while (v40);
        goto LABEL_64;
      }

      v15 = rgb_gray_convert_0;
    }

    v3[1] = v15;
    goto LABEL_73;
  }

  v3[1] = grayscale_convert_0;
  v27 = *(a1 + 56);
  if (v27 >= 2)
  {
    v28 = 0;
    v29 = vdupq_n_s64(v27 - 2);
    v30 = (v27 + 2) & 0xFFFFFFFC;
    v31 = (*(a1 + 304) + 244);
    do
    {
      v32 = vdupq_n_s64(v28);
      v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v32, xmmword_186205EC0)));
      if (vuzp1_s16(v33, *v29.i8).u8[0])
      {
        *(v31 - 24) = 0;
      }

      if (vuzp1_s16(v33, *&v29).i8[2])
      {
        *v31 = 0;
      }

      if (vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v32, xmmword_186205EB0)))).i32[1])
      {
        v31[24] = 0;
        v31[48] = 0;
      }

      v28 += 4;
      v31 += 96;
    }

    while (v30 != v28);
  }

LABEL_64:
  if (*(a1 + 108))
  {
    v35 = 1;
  }

  else
  {
    v35 = *(a1 + 144);
  }

  *(a1 + 148) = v35;
  return result;
}

uint64_t rgb_gray_convert_0(uint64_t result, void *a2, unsigned int a3, void *a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *(*(result + 648) + 48);
    v6 = *(result + 136);
    do
    {
      v8 = *a4++;
      v7 = v8;
      if (v6)
      {
        v9 = *(*a2 + 8 * a3);
        v10 = *(a2[1] + 8 * a3);
        v11 = *(a2[2] + 8 * a3);
        v12 = v6;
        do
        {
          v14 = *v9++;
          v13 = v14;
          v16 = *v10++;
          v15 = v16;
          v17 = *v11++;
          *v7++ = (*(v5 + 8 * v15 + 2048) + *(v5 + 8 * v13) + *(v5 + 8 * v17 + 4096)) >> 16;
          --v12;
        }

        while (v12);
      }

      ++a3;
    }

    while (a5-- >= 2);
  }

  return result;
}

uint64_t rgb1_gray_convert(uint64_t result, void *a2, unsigned int a3, void *a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *(*(result + 648) + 48);
    v6 = *(result + 136);
    do
    {
      v8 = *a4++;
      v7 = v8;
      if (v6)
      {
        v9 = *(*a2 + 8 * a3);
        v10 = *(a2[1] + 8 * a3);
        v11 = *(a2[2] + 8 * a3);
        v12 = v6;
        do
        {
          v14 = *v9++;
          v13 = v14;
          v16 = *v10++;
          v15 = v16;
          LOBYTE(v16) = *v11++;
          *v7++ = (*(v5 + 8 * v15 + 2048) + *(v5 + 8 * ((v15 + v13) ^ 0x80u)) + *(v5 + 8 * ((v16 + v15) ^ 0x80u) + 4096)) >> 16;
          --v12;
        }

        while (v12);
      }

      ++a3;
    }

    while (a5-- >= 2);
  }

  return result;
}

uint64_t gray_rgb_convert(uint64_t result, void *a2, unsigned int a3, void *a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *(result + 136);
    do
    {
      if (v5)
      {
        v6 = *(*a2 + 8 * a3);
        v7 = (*a4 + 2);
        v8 = v5;
        do
        {
          v9 = *v6++;
          *v7 = v9;
          *(v7 - 1) = v9;
          *(v7 - 2) = v9;
          v7 += 3;
          --v8;
        }

        while (v8);
      }

      ++a3;
      ++a4;
    }

    while (a5-- >= 2);
  }

  return result;
}

uint64_t ycc_rgb_convert(uint64_t result, void *a2, unsigned int a3, _BYTE **a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *(result + 648);
    v6 = *(result + 440);
    v7 = v5[2];
    v8 = v5[3];
    v9 = v5[4];
    v10 = v5[5];
    v11 = *(result + 136);
    do
    {
      if (v11)
      {
        v12 = *(*a2 + 8 * a3);
        v13 = *(a2[1] + 8 * a3);
        v14 = *(a2[2] + 8 * a3);
        v15 = *a4;
        result = v11;
        do
        {
          v17 = *v12++;
          v16 = v17;
          v19 = *v13++;
          v18 = v19;
          v20 = *v14++;
          *v15 = *(v6 + *(v7 + 4 * v20) + v16);
          v15[1] = *(v6 + v16 + ((*(v9 + 8 * v20) + *(v10 + 8 * v18)) >> 16));
          v15[2] = *(v6 + *(v8 + 4 * v18) + v16);
          v15 += 3;
          --result;
        }

        while (result);
      }

      ++a3;
      ++a4;
      v22 = __OFSUB__(a5, 2);
      v21 = a5 - 2 < 0;
      --a5;
    }

    while (v21 == v22);
  }

  return result;
}

uint64_t build_ycc_rgb_table(uint64_t a1)
{
  v2 = *(a1 + 648);
  v2[2] = (**(a1 + 8))();
  v2[3] = (**(a1 + 8))(a1, 1, 1024);
  v2[4] = (**(a1 + 8))(a1, 1, 2048);
  result = (**(a1 + 8))(a1, 1, 2048);
  v4 = 0;
  v2[5] = result;
  v5 = v2[2];
  v6 = v2[3];
  v7 = -11728000;
  v8 = -14831872;
  v9 = 5990656;
  v10 = 2919552;
  v11 = v2[4];
  do
  {
    *(v5 + 4 * v4) = v7 >> 16;
    *(v6 + 4 * v4) = v8 >> 16;
    *(v11 + 8 * v4) = v9;
    *(result + 8 * v4++) = v10;
    v7 += 91881;
    v8 += 116130;
    v9 -= 46802;
    v10 -= 22553;
  }

  while (v4 != 256);
  return result;
}

uint64_t rgb_convert_0(uint64_t result, void *a2, unsigned int a3, _BYTE **a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *(result + 136);
    do
    {
      if (v5)
      {
        v6 = *(*a2 + 8 * a3);
        v7 = *(a2[1] + 8 * a3);
        v8 = *(a2[2] + 8 * a3);
        v9 = *a4;
        v10 = v5;
        do
        {
          v11 = *v6++;
          *v9 = v11;
          v12 = *v7++;
          v9[1] = v12;
          v13 = *v8++;
          v9[2] = v13;
          v9 += 3;
          --v10;
        }

        while (v10);
      }

      ++a3;
      ++a4;
    }

    while (a5-- >= 2);
  }

  return result;
}

uint64_t rgb1_rgb_convert(uint64_t result, void *a2, unsigned int a3, _BYTE **a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *(result + 136);
    do
    {
      if (v5)
      {
        v6 = *(*a2 + 8 * a3);
        v7 = *(a2[1] + 8 * a3);
        v8 = *(a2[2] + 8 * a3);
        v9 = *a4;
        v10 = v5;
        do
        {
          v12 = *v6++;
          v11 = v12;
          v14 = *v7++;
          v13 = v14;
          v15 = *v8++;
          *v9 = (v13 + v11) ^ 0x80;
          v9[1] = v13;
          v9[2] = (v15 + v13) ^ 0x80;
          v9 += 3;
          --v10;
        }

        while (v10);
      }

      ++a3;
      ++a4;
    }

    while (a5-- >= 2);
  }

  return result;
}

uint64_t ycck_cmyk_convert(uint64_t result, void *a2, unsigned int a3, _BYTE **a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *(result + 648);
    v6 = *(result + 440);
    v7 = v5[2];
    v8 = v5[3];
    v9 = v5[4];
    v10 = v5[5];
    v11 = *(result + 136);
    do
    {
      if (v11)
      {
        v12 = *(*a2 + 8 * a3);
        v13 = *(a2[1] + 8 * a3);
        v14 = *(a2[2] + 8 * a3);
        v15 = *(a2[3] + 8 * a3);
        result = v11;
        v16 = *a4;
        do
        {
          v18 = *v12++;
          v17 = v18;
          v20 = *v13++;
          v19 = v20;
          v21 = *v14++;
          v17 ^= 0xFFu;
          *v16 = *(v6 + v17 - *(v7 + 4 * v21));
          v16[1] = *(v6 + (v17 - ((*(v9 + 8 * v21) + *(v10 + 8 * v19)) >> 16)));
          v16[2] = *(v6 + v17 - *(v8 + 4 * v19));
          LOBYTE(v21) = *v15++;
          v16[3] = v21;
          v16 += 4;
          --result;
        }

        while (result);
      }

      ++a3;
      ++a4;
      v23 = __OFSUB__(a5, 2);
      v22 = a5 - 2 < 0;
      --a5;
    }

    while (v22 == v23);
  }

  return result;
}

uint64_t null_convert_0(uint64_t result, uint64_t a2, unsigned int a3, uint64_t *a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *(result + 136);
    v6 = *(result + 56);
    v7 = *(result + 56);
    do
    {
      if (v7 >= 1)
      {
        v8 = 0;
        do
        {
          if (v5)
          {
            v9 = *a4;
            v10 = *(*(a2 + 8 * v8) + 8 * a3);
            v11 = v5;
            do
            {
              v12 = *v10++;
              *(v9 + v8) = v12;
              v9 += v6;
              --v11;
            }

            while (v11);
          }

          ++v8;
        }

        while (v8 != v6);
      }

      ++a3;
      ++a4;
    }

    while (a5-- > 1);
  }

  return result;
}

double _cg_jinit_memory_mgr(void *a1)
{
  a1[1] = 0;
  v2 = _cg_jpeg_mem_init();
  small = _cg_jpeg_get_small(a1, 0xA8uLL);
  if (!small)
  {
    v6 = _cg_jpeg_mem_term(a1, v3, v4);
    v7 = *a1;
    *(v7 + 10) = 56;
    *(v7 + 12) = 0;
    (**a1)(a1, v6);
  }

  *small = alloc_small;
  *(small + 1) = alloc_large;
  *(small + 2) = alloc_sarray;
  *(small + 3) = alloc_barray;
  *(small + 4) = request_virt_sarray;
  *(small + 5) = request_virt_barray;
  *(small + 6) = realize_virt_arrays;
  *(small + 7) = access_virt_sarray;
  *(small + 8) = access_virt_barray;
  *(small + 9) = free_pool;
  *(small + 11) = v2;
  *(small + 12) = 1000000000;
  *(small + 10) = self_destruct;
  result = 0.0;
  *(small + 104) = 0u;
  *(small + 120) = 0u;
  *(small + 136) = 0u;
  *(small + 19) = 168;
  a1[1] = small;
  return result;
}

uint64_t alloc_small(void *a1, signed int a2, unint64_t a3)
{
  v6 = a1[1];
  if (a3 > 0x3B9AC9E8)
  {
    v7 = *a1;
    *(v7 + 10) = 56;
    *(v7 + 12) = 1;
    (**a1)(a1);
  }

  v8 = a3 + 7;
  if (a2 >= 2)
  {
    v9 = *a1;
    *(v9 + 10) = 15;
    *(v9 + 12) = a2;
    (**a1)(a1);
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  v11 = v6 + 8 * a2;
  v14 = *(v11 + 104);
  v13 = (v11 + 104);
  v12 = v14;
  if (v14)
  {
    while (1)
    {
      v15 = v12;
      if (v12[2] >= v10)
      {
        break;
      }

      v12 = *v12;
      if (!*v15)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v15 = 0;
LABEL_10:
    v16 = v10 + 24;
    v17 = &extra_pool_slop;
    if (!v15)
    {
      v17 = &first_pool_slop;
    }

    v18 = v17[a2];
    if (v18 >= 999999976 - v10)
    {
      v19 = 999999976 - v10;
    }

    else
    {
      v19 = v18;
    }

    v20 = v16 + v19;
    for (i = _cg_jpeg_get_small(a1, v16 + v19); !i; i = _cg_jpeg_get_small(a1, v16 + v19))
    {
      if (v19 <= 0x63)
      {
        v22 = *a1;
        *(v22 + 10) = 56;
        *(v22 + 12) = 2;
        (**a1)(a1);
      }

      v19 >>= 1;
      v20 = v16 + v19;
    }

    *(v6 + 152) += v20;
    *i = 0;
    i[1] = 0;
    i[2] = v19 + v10;
    if (v15)
    {
      v23 = v15;
    }

    else
    {
      v23 = v13;
    }

    *v23 = i;
    v15 = i;
  }

  v24 = v15[1];
  v25 = v15[2] - v10;
  v15[1] = v24 + v10;
  v15[2] = v25;
  return v15 + v24 + 24;
}

void *alloc_large(void *a1, unsigned int a2, unint64_t a3)
{
  v6 = a1[1];
  if (a3 >= 0x3B9AC9E9)
  {
    v7 = *a1;
    *(v7 + 10) = 56;
    *(v7 + 12) = 3;
    (**a1)(a1);
  }

  v8 = (a3 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (a2 >= 2)
  {
    v9 = *a1;
    *(v9 + 10) = 15;
    *(v9 + 12) = a2;
    (**a1)(a1);
  }

  large = _cg_jpeg_get_large(a1, v8 + 24);
  if (!large)
  {
    v11 = *a1;
    *(v11 + 10) = 56;
    *(v11 + 12) = 4;
    (**a1)(a1);
  }

  *(v6 + 152) += v8 + 24;
  v12 = v6 + 8 * a2;
  *large = *(v12 + 120);
  large[1] = v8;
  large[2] = 0;
  *(v12 + 120) = large;
  return large + 3;
}