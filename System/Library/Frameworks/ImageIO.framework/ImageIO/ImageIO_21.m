uint64_t kdrc_stream::set_buffer_surface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(&v13 + 1) = a4;
  if ((*(a1 + 909) & 1) == 0)
  {
    kdrc_stream::set_buffer_surface();
  }

  v7 = (a1 + 1012);
  *(a1 + 1040) = a2;
  v8 = *(a1 + 1008) + HIDWORD(a3);
  LODWORD(v13) = *(a1 + 1004) + a3;
  DWORD1(v13) = v8;
  *(a1 + 1012) = v13;
  v9 = (a1 + 1020);
  result = kdu_dims::operator&=(&v13, (a1 + 988));
  v11 = v13 == __PAIR64__(*(a1 + 1024), *v9) && HIDWORD(v13) == *(a1 + 1032) && DWORD2(v13) == *(a1 + 1028);
  *v9 = v13;
  if (a5)
  {
    if (*(a1 + 1068) == 1)
    {
      result = kdu_region_decompressor::finish((a1 + 120));
      *(*(a1 + 1136) + 296) = 0;
      *(a1 + 1068) = 0;
    }

    v7[5] = v7[1];
    v7[6] = 0;
    v12 = *(v7 + 5);
    *(a1 + 1088) = v12;
    *(a1 + 1072) = v12;
    *(a1 + 1124) = 0;
    *(a1 + 1120) = 256;
  }

  else if (!v11)
  {
    if (*(a1 + 1068) == 1)
    {
      kdu_dims::operator&=((a1 + 1072), v9);
      kdu_dims::operator&=((a1 + 1088), v9);
      if ((*(a1 + 1100) < 1 || *(a1 + 1096) <= 0) && *(a1 + 1068) == 1)
      {
        kdu_region_decompressor::finish((a1 + 120));
        *(*(a1 + 1136) + 296) = 0;
        *(a1 + 1068) = 0;
      }
    }

    kdu_dims::operator&=((a1 + 1052), v9);
    return kdrc_stream::update_completion_status(a1);
  }

  return result;
}

uint64_t kdrc_stream::update_completion_status(uint64_t this)
{
  v1 = *(this + 1032);
  if (v1 < 1 || (v2 = *(this + 1028), v2 < 1) || *(this + 1024) == *(this + 1056) && *(this + 1020) == *(this + 1052) && v1 == *(this + 1064) && v2 == *(this + 1060))
  {
    LODWORD(v3) = 0;
    *(this + 1124) = 1;
  }

  else
  {
    *(this + 1124) = 0;
    v4 = v2 * v1;
    v5 = *(this + 1060) * *(this + 1064);
    if (*(this + 1068) == 1)
    {
      v5 = v5 + *(this + 1080) * *(this + 1084) - *(this + 1096) * *(this + 1100);
    }

    v3 = ((v4 - v5) << 8) / v4;
  }

  *(this + 1120) = v3;
  return this;
}

uint64_t kdrc_stream::process(kdrc_stream *this, int a2, int32x2_t *a3, int *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  if (!*(this + 130))
  {
    kdrc_stream::process();
  }

  v8 = this + 972;
  if ((*(this + 1068) & 1) == 0 && *(this + 258) >= 1 && *(this + 257) >= 1)
  {
    *(this + 1052) = *(this + 1020);
    *(this + 1060) = 0;
    v9 = *(this + 1020);
    *(this + 67) = v9;
    *(this + 68) = v9;
    if (*(this + 271) >= 1 && *(this + 270) >= 1)
    {
      v10 = *(this + 142);
      if (*(v10 + 296) == 1)
      {
        kdrc_stream::process();
      }

      *(this + 32) = 8;
      v11 = *(this + 90);
      if (v11 >= 0)
      {
        v12 = 0;
      }

      else
      {
        v12 = (this + 64);
      }

      if ((kdu_region_decompressor::start((this + 120), *(v10 + 288), v12, v11, *(this + 242), *(this + 14), *(this + 134), *(this + 135), *v8, *(this + 980), 0, *(this + 93), 1, *(this + 4), *(this + 5)) & 1) == 0)
      {
        goto LABEL_72;
      }

      *(*(this + 142) + 296) = 1;
      *(this + 1068) = 1;
    }
  }

  a3[1] = 0;
  if (*(this + 1068) == 1)
  {
    v13 = *(this + 130);
    if ((*(v13 + 27) & 1) == 0)
    {
      (*(*v13 + 24))(*(this + 130), 0);
    }

    v14 = *(v13 + 40);
    v15 = *(v13 + 44);
    v16 = *(v13 + 32);
    if (*(this + 9) == 1)
    {
      v38 = *(v13 + 32);
      v17 = kdu_region_decompressor::process(this + 120, &v38, 1u, v14, *(v8 + 5), v15, a2, 0, this + 272, a3, 8, 1);
    }

    else
    {
      if ((*(this + 90) & 0x80000000) == 0 || (v30 = *(this + 139)) == 0 || *(v30 + 232) != 1 || *(this + 17) != *(this + 16))
      {
        if (*(this + 17) > 3)
        {
          v43 = 0u;
          v42 = 0u;
          v38 = v16;
          v39 = v16 + 1;
          v40 = v16 + 2;
          v41 = v16 + 3;
          if (!kdu_region_decompressor::process(this + 120, &v38, 0, v14, *(v8 + 5), v15, a2, 0, this + 272, a3, 8, 1))
          {
            goto LABEL_27;
          }
        }

        else if ((kdu_region_decompressor::process((this + 120), v16, *(v8 + 5), v14, v15, a2, 0, this + 272, a3) & 1) == 0)
        {
LABEL_27:
          *(*(this + 142) + 296) = 0;
          *(this + 1068) = 0;
          if (kdu_region_decompressor::finish((this + 120)))
          {
            min_dwt_levels = kdu_codestream::get_min_dwt_levels((*(this + 142) + 288));
            *(this + 226) = min_dwt_levels;
            if (min_dwt_levels < *(this + 242))
            {
              *(this + 242) = min_dwt_levels;
              *(this + 909) = 0;
              v19 = *a4 | 1;
LABEL_57:
              *a4 = v19;
              kdrc_stream::invalidate_surface(this);
              return 0;
            }

            if ((*(this + 912) & 1) != 0 || *(this + 911) == 1)
            {
              can_flip = kdu_codestream::can_flip((*(this + 142) + 288));
              *(this + 908) = can_flip;
              if ((can_flip & 1) == 0)
              {
                *(this + 909) = 0;
                *(this + 911) = 0;
                v19 = *a4 | 2;
                goto LABEL_57;
              }
            }

            kdu_dims::operator&=(v8 + 20, this + 255);
            kdu_dims::operator&=(this + 268, this + 255);
            v21 = *(this + 266);
            if (v21 < 1 || (v22 = *(v8 + 22), v22 <= 0))
            {
              *(v8 + 5) = *(this + 67);
            }

            else
            {
              v23 = *(v8 + 10);
              v24 = HIDWORD(v23);
              v25 = *(this + 134);
              v26 = v21 + HIDWORD(v23);
              v27 = v22 + v23;
              v28 = *(this + 271) + HIDWORD(v25);
              v29 = *(this + 270) + v25;
              if (HIDWORD(v23) == HIDWORD(v25) && v26 == v28)
              {
                if (v29 >= v23 && v27 >= v25)
                {
                  if (v23 >= v25)
                  {
                    LODWORD(v23) = *(this + 134);
                  }

                  if (v27 <= v29)
                  {
                    v27 = *(this + 270) + v25;
                  }
                }
              }

              else if (v23 == v25 && v27 == v29 && v28 >= SHIDWORD(v23) && v26 >= SHIDWORD(v25))
              {
                v24 = SHIDWORD(v23) >= SHIDWORD(v25) ? HIDWORD(v25) : HIDWORD(v23);
                if (v26 <= v28)
                {
                  v26 = *(this + 271) + HIDWORD(v25);
                }
              }

              *(v8 + 10) = v23 | (v24 << 32);
              *(v8 + 11) = (v27 - v23) | ((v26 - v24) << 32);
            }

            goto LABEL_68;
          }

LABEL_72:
          exception = __cxa_allocate_exception(4uLL);
          *exception = 0;
          __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
        }

LABEL_25:
        if (*(this + 275) >= 1 && *(this + 274) > 0)
        {
LABEL_68:
          *a3 = vsub_s32(*a3, *(v8 + 32));
          goto LABEL_69;
        }

        goto LABEL_27;
      }

      if (*(this + 1048))
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      v32 = v16 + v31;
      if (*(this + 1048))
      {
        v33 = 1;
      }

      else
      {
        v33 = 2;
      }

      v34 = v16 + v33;
      v35 = 3;
      if (*(this + 1048))
      {
        v35 = 0;
      }

      v38 = v32;
      v39 = v34;
      v40 = v16 + v35;
      v17 = kdu_region_decompressor::process(this + 120, &v38, 1u, v14, *(v8 + 5), v15, a2, 0, this + 272, a3, 8, 1);
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_69:
  kdrc_stream::update_completion_status(this);
  return 1;
}

double kdrc_stream::adjust_refresh(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v20 = a2;
  *(&v20 + 1) = a3;
  if ((*(a1 + 909) & 1) == 0)
  {
    kdrc_stream::adjust_refresh();
  }

  v19 = *(a1 + 1020);
  v5 = *(a1 + 1004);
  *&v19 = vsub_s32(*&v19, v5);
  v18 = *(a1 + 1052);
  *&v18 = vsub_s32(*&v18, v5);
  v6 = &v20;
  kdu_dims::operator&=(&v18, &v20);
  v21 = v20;
  kdu_dims::operator&=(&v21, &v19);
  v8 = DWORD2(v21);
  if (SDWORD2(v21) < 1 || SHIDWORD(v21) < 1)
  {
    return kdrc_refresh::add_region(a4, *v6, v6[1]);
  }

  v9 = v21;
  v10 = DWORD1(v21);
  v11 = DWORD1(v20);
  v12 = (DWORD1(v21) - DWORD1(v20));
  if ((v12 & 0x80000000) != 0 || (v13 = HIDWORD(v21) + DWORD1(v21), v14 = (DWORD1(v20) - (HIDWORD(v21) + DWORD1(v21)) + HIDWORD(v20)), (v14 & 0x80000000) != 0) || (v15 = (v21 - v20), (v15 & 0x80000000) != 0) || (v16 = (DWORD2(v21) + v21), v17 = (v20 - v16 + DWORD2(v20)), (v17 & 0x80000000) != 0))
  {
    kdrc_stream::adjust_refresh();
  }

  if (v21 != v20)
  {
    result = kdrc_refresh::add_region(a4, v20, v15 | (HIDWORD(v20) << 32));
  }

  if (v17)
  {
    result = kdrc_refresh::add_region(a4, v16 | (DWORD1(v20) << 32), v17 | (HIDWORD(v20) << 32));
  }

  if (v10 != v11)
  {
    result = kdrc_refresh::add_region(a4, v9 | (DWORD1(v20) << 32), v8 & 0x7FFFFFFF | (v12 << 32));
  }

  if (v14)
  {
    result = kdrc_refresh::add_region(a4, v9 | (v13 << 32), v8 & 0x7FFFFFFF | (v14 << 32));
  }

  if (SHIDWORD(v18) >= 1 && SDWORD2(v18) >= 1)
  {
    v6 = &v18;
    return kdrc_refresh::add_region(a4, *v6, v6[1]);
  }

  return result;
}

double kdrc_refresh::add_region(void *a1, uint64_t a2, uint64_t a3)
{
  *&v25 = a2;
  *(&v25 + 1) = a3;
  if (SHIDWORD(a3) >= 1 && a3 >= 1)
  {
    v5 = a1 + 1;
    v6 = a1[1];
    if (v6)
    {
      v7 = 0;
      do
      {
        while (1)
        {
          v8 = v6;
          v6 = *(v6 + 2);
          v26 = *v8;
          kdu_dims::operator&=(&v26, &v25);
          if (SDWORD2(v26) < 1 || SHIDWORD(v26) < 1)
          {
            goto LABEL_38;
          }

          if (v25 == v26)
          {
            return result;
          }

          v11 = *(v8 + 1);
          if (*v8 != v26)
          {
            break;
          }

          v12 = v7 + 1;
          if (!v7)
          {
            v12 = v5;
          }

          *v12 = v6;
          *(v8 + 2) = *a1;
          *a1 = v8;
          if (!v6)
          {
            goto LABEL_44;
          }
        }

        if (DWORD1(v26) == DWORD1(v25) && HIDWORD(v25) == HIDWORD(v26))
        {
          v13 = DWORD2(v26) + v26;
          v14 = DWORD2(v25) + v25;
          v15 = v26 - v25;
          if (v26 == v25)
          {
            v15 = v14 - v13;
            LODWORD(v25) = DWORD2(v26) + v26;
LABEL_30:
            DWORD2(v25) = v15;
            goto LABEL_38;
          }

          if (v14 == v13)
          {
            goto LABEL_30;
          }
        }

        else if (v26 == v25 && DWORD2(v25) == DWORD2(v26))
        {
          v16 = HIDWORD(v26) + DWORD1(v26);
          v17 = HIDWORD(v25) + DWORD1(v25);
          v18 = DWORD1(v26) - DWORD1(v25);
          if (DWORD1(v26) == DWORD1(v25))
          {
            v18 = v17 - v16;
            DWORD1(v25) = HIDWORD(v26) + DWORD1(v26);
LABEL_37:
            HIDWORD(v25) = v18;
            goto LABEL_38;
          }

          if (v17 == v16)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (DWORD1(v26) != v11)
          {
            v19 = *v8;
LABEL_32:
            if (v19 == v26 && *(v8 + 2) == DWORD2(v26))
            {
              v22 = HIDWORD(v26) + DWORD1(v26);
              v23 = *(v8 + 3) + v11;
              if (DWORD1(v26) == v11)
              {
                *(v8 + 1) = v22;
                *(v8 + 3) = v23 - v22;
              }

              else if (v23 == v22)
              {
                *(v8 + 3) = DWORD1(v26) - v11;
              }
            }

            goto LABEL_38;
          }

          v19 = *v8;
          if (*(v8 + 3) != HIDWORD(v26))
          {
            goto LABEL_32;
          }

          v20 = DWORD2(v26) + v26;
          v21 = *(v8 + 2) + v19;
          if (v26 == v19)
          {
            *v8 = v20;
            *(v8 + 2) = v21 - v20;
          }

          else if (v21 == v20)
          {
            *(v8 + 2) = v26 - v19;
          }
        }

LABEL_38:
        v7 = v8;
      }

      while (v6);
    }

LABEL_44:
    v24 = *a1;
    if (!*a1)
    {
      operator new();
    }

    *a1 = *(v24 + 16);
    *(v24 + 16) = *v5;
    *v5 = v24;
    result = *&v25;
    *v24 = v25;
  }

  return result;
}

uint64_t kdrc_layer::kdrc_layer(uint64_t a1, uint64_t a2)
{
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 60) = 0;
  *(a1 + 52) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  memset_pattern16((a1 + 88), &unk_1862081F0, 0x10uLL);
  *&v3 = 0x100000001;
  *(&v3 + 1) = 0x100000001;
  *(a1 + 104) = v3;
  *(a1 + 234) = 0;
  *(a1 + 232) = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v4 = *(a1 + 36);
  *(a1 + 52) = v4;
  *(a1 + 128) = v4;
  *(a1 + 120) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 144) = 0;
  *(a1 + 236) = -1;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  return a1;
}

void kdrc_layer::~kdrc_layer(kdrc_layer *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    *v2 = 0;
    v2[10] = 0;
    v2[11] = 0;
    v3 = v2[13];
    if (v3)
    {
      v4 = v2[16];
      do
      {
        v5 = v3;
        v3 = *(v3 + 24);
        *(v5 + 24) = v4;
        v4 = v5;
      }

      while (v3);
      v2[13] = 0;
      v2[16] = v5;
    }

    v2[14] = 0;
    v2[15] = 0;
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = *(this + v6 + 9);
    if (v9)
    {
      kdu_region_compositor::remove_stream(*this, v9, 1);
    }

    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  v10 = *(this + 18);
  if (v10)
  {
    if (v10[24] == 1)
    {
      (*(*v10 + 8))(*(this + 18));
    }

    else
    {
      (*(**this + 64))();
    }
  }

  v11 = *(this + 23);
  if (v11)
  {
    if (v11[24] == 1)
    {
      (*(*v11 + 8))(*(this + 23));
    }

    else
    {
      (*(**this + 64))();
    }
  }
}

uint64_t kdu_region_compositor::remove_stream(uint64_t this, kdrc_stream *a2, int a3)
{
  v4 = this;
  *(a2 + 139) = 0;
  v5 = *(a2 + 277);
  if (v5 < 0)
  {
    a3 = 1;
  }

  v7 = *(this + 496);
  if (v7)
  {
    if (v7 == a2)
    {
      v9 = 0;
LABEL_11:
      v10 = (this + 496);
      if (v9)
      {
        v10 = (v9 + 1128);
      }

      *v10 = *(v7 + 1128);
      *(v7 + 1128) = *(this + 504);
      *(this + 504) = v7;
      *(v7 + 1125) = 0;
      this = *(v7 + 1136);
      if (this)
      {
        this = kdrc_codestream::move_to_tail(this, v7);
      }
    }

    else
    {
      v8 = *(this + 496);
      while (1)
      {
        v7 = *(v8 + 1128);
        if (!v7)
        {
          break;
        }

        v9 = v8;
        v8 = *(v8 + 1128);
        if (v7 == a2)
        {
          goto LABEL_11;
        }
      }
    }
  }

  if (a3)
  {
    v11 = *(v4 + 504);
    if (!v11)
    {
      goto LABEL_33;
    }

    if (v11 != a2)
    {
      v12 = *(v4 + 504);
      while (1)
      {
        v11 = *(v12 + 1128);
        if (!v11)
        {
          break;
        }

        v13 = v12;
        v12 = *(v12 + 1128);
        if (v11 == a2)
        {
          goto LABEL_23;
        }
      }

LABEL_33:
      kdu_region_compositor::remove_stream();
    }

    v13 = 0;
LABEL_23:
    v14 = (v4 + 504);
    if (v13)
    {
      v14 = (v13 + 1128);
    }

    *v14 = *(v11 + 141);
    kdrc_stream::~kdrc_stream(v11);
    this = MEMORY[0x186602850]();
    if (v5 < 0)
    {
      if (!*(v4 + 16) || (*(v4 + 158) & 1) == 0)
      {
        kdu_region_compositor::remove_stream();
      }

      return jpx_input_box::close((v4 + 32));
    }
  }

  return this;
}

uint64_t kdrc_layer::init(uint64_t a1, jx_layer_source *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9)
{
  v37 = *MEMORY[0x1E69E9840];
  v31 = a2;
  if (*(a1 + 72) || *(a1 + 80))
  {
    kdrc_layer::init();
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = a2;
  *(a1 + 32) = 0;
  *(a1 + 36) = a3;
  *(a1 + 44) = a4;
  *(a1 + 52) = a5;
  *(a1 + 60) = a6;
  *(a1 + 236) = jpx_layer_source::get_layer_id(&v31);
  *(a1 + 33) = a7;
  *(a1 + 34) = a8;
  *(a1 + 35) = a9;
  *(a1 + 120) = 0;
  result = jpx_layer_source::have_stream_headers(&v31);
  if (result)
  {
    *v29 = 0;
    v30 = jpx_layer_source::access_channels(&v31);
    v28 = 0;
    jp2_channels::get_colour_mapping(&v30, 0, &v29[1], v29, &v28);
    v13 = kdu_region_compositor::add_active_stream(*a1, v28, *(a1 + 236));
    *(a1 + 72) = v13;
    if (!v13)
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      kdu_error::kdu_error(&v25, "Error in Kakadu Region Compositor:\n");
      (*(v25 + 16))(&v25, "Unable to create compositing layer (index, starting from 0, equals ");
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      *v32 = 0u;
      if (BYTE8(v25))
      {
        sprintf(v32, "%x");
      }

      else
      {
        sprintf(v32, "%d");
      }

      (*(v25 + 16))(&v25, v32);
      (*(v25 + 16))(&v25, "), since its primary codestream cannot be opened.");
      kdu_error::~kdu_error(&v25);
    }

    *(v13 + 139) = a1;
    v14 = v28;
    *(a1 + 232) = 0;
    v15 = *(a1 + 72);
    if (*(v15 + 64) <= *(v15 + 68))
    {
      if (jp2_channels::get_num_colours(&v30) >= 1)
      {
        v16 = 0;
        v17 = -1;
        v18 = -1;
        v19 = -1;
        while (jp2_channels::get_opacity_mapping(&v30, v16, &v29[1], v29, &v28) && v28 != v14)
        {
          if (v16)
          {
            if (v28 != v19 || v29[1] != v18 || v29[0] != v17)
            {
              v27 = 0;
              v25 = 0u;
              v26 = 0u;
              kdu_warning::kdu_warning(&v25, "Warning in Kakadu Region Compositor:\n");
              (*(v25 + 16))(&v25, "Unable to render compositing layer (index, starting from 0, equals ");
              v35 = 0u;
              v36 = 0u;
              v33 = 0u;
              v34 = 0u;
              *v32 = 0u;
              if (BYTE8(v25))
              {
                sprintf(v32, "%x");
              }

              else
              {
                sprintf(v32, "%d");
              }

              (*(v25 + 16))(&v25, v32);
              (*(v25 + 16))(&v25, ") with alpha blending, since there are multiple distinct alpha channels for a single set of colour channels.");
              kdu_warning::~kdu_warning(&v25);
              break;
            }
          }

          else
          {
            v17 = v29[0];
            v18 = v29[1];
            v19 = v28;
          }

          if (++v16 >= jp2_channels::get_num_colours(&v30))
          {
            if (v19 < 0)
            {
              goto LABEL_34;
            }

            v20 = kdu_region_compositor::add_active_stream(*a1, v19, *(a1 + 236));
            *(a1 + 80) = v20;
            if (v20)
            {
              *(v20 + 139) = a1;
              *(a1 + 232) = 1;
              *(a1 + 233) = *(*(a1 + 80) + 10);
              goto LABEL_34;
            }

            v27 = 0;
            v25 = 0u;
            v26 = 0u;
            kdu_warning::kdu_warning(&v25, "Warning in Kakadu Region Compositor:\n");
            (*(v25 + 16))(&v25, "Unable to render compositing layer (index, starting from 0, equals ");
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            *v32 = 0u;
            if (BYTE8(v25))
            {
              sprintf(v32, "%x");
            }

            else
            {
              sprintf(v32, "%d");
            }

            (*(v25 + 16))(&v25, v32);
            (*(v25 + 16))(&v25, ") with alpha blending, since the codestream containing the alpha data cannot be opened.");
            kdu_warning::~kdu_warning(&v25);
            break;
          }
        }
      }
    }

    else
    {
      *(a1 + 232) = 1;
      *(a1 + 233) = *(v15 + 10);
    }

    v19 = -1;
LABEL_34:
    *v32 = 0;
    v24 = 0;
    *&v25 = 0;
    result = jpx_layer_source::get_codestream_registration(&v31, 0, v32, &v25, &v24);
    v28 = result;
    if ((result & 0x80000000) == 0)
    {
      v21 = 1;
      do
      {
        if (result == v14)
        {
          v22 = v24;
          *(a1 + 88) = v25;
          *(a1 + 104) = v22;
        }

        else if (result == v19)
        {
          v23 = v24;
          *(a1 + 96) = v25;
          *(a1 + 112) = v23;
        }

        result = jpx_layer_source::get_codestream_registration(&v31, v21++, v32, &v25, &v24);
        v28 = result;
      }

      while ((result & 0x80000000) == 0);
    }
  }

  return result;
}

void sub_185FADF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kdu_warning::~kdu_warning(va);
  _Unwind_Resume(a1);
}

kdrc_stream *kdu_region_compositor::add_active_stream(kdu_region_compositor *this, int a2, int a3)
{
  if (*(this + 1))
  {
    a3 = 0;
  }

  v5 = *(this + 62);
  if (v5)
  {
    v6 = *(this + 62);
    do
    {
      if (*(v6 + 1104) == a2 && (*(v6 + 1108) & 0x80000000) == 0)
      {
        break;
      }

      v6 = *(v6 + 1128);
    }

    while (v6);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(this + 63);
  if (!v7)
  {
    goto LABEL_35;
  }

  v8 = 0;
  v9 = (this + 504);
  v10 = *(this + 63);
  while (1)
  {
    v11 = v10;
    if (*(v10 + 1104) == a2)
    {
      if (!v6)
      {
        if (*(v10 + 1108) < 0)
        {
          v6 = 0;
        }

        else
        {
          v6 = v10;
        }
      }

      if (a3 < 0 || *(v10 + 1108) == a3)
      {
        break;
      }
    }

    v10 = *(v10 + 1128);
    v8 = v11;
    if (!v10)
    {
      v12 = 0;
      while (1)
      {
        v13 = v7;
        if ((*(v7 + 1108) & 0x80000000) != 0 && *(v7 + 1104) == a2)
        {
          break;
        }

        v7 = *(v7 + 1128);
        v12 = v13;
        if (!v7)
        {
          goto LABEL_35;
        }
      }

      if (v12)
      {
        v15 = (v12 + 1128);
      }

      else
      {
        v15 = (this + 504);
      }

      *v15 = *(v7 + 1128);
      kdrc_stream::~kdrc_stream(v7);
      MEMORY[0x186602850]();
LABEL_35:
      operator new();
    }
  }

  if (v8)
  {
    v9 = (v8 + 1128);
  }

  *v9 = *(v10 + 1128);
  *(v10 + 1128) = v5;
  *(this + 62) = v10;
  *(v10 + 1125) = 1;
  v14 = *(v10 + 1136);
  if (!v14)
  {
    v19 = 0;
    *v17 = 0u;
    v18 = 0u;
    kdu_error::kdu_error(v17, "Error in Kakadu Region Compositor:\n");
    (*(*v17 + 16))(v17, "Attempting to open a codestream which has already been found to contain an error.");
    kdu_error::~kdu_error(v17);
  }

  kdrc_codestream::move_to_head(v14, v10);
  kdrc_stream::set_error_level(v11, *(this + 78));
  *(v11 + 14) = *(this + 82);
  return v11;
}

void sub_185FAE2F8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  kdu_region_compositor::remove_stream(v1, v2, 1);
  jpx_input_box::close((v1 + 32));
  JUMPOUT(0x185FAE280);
}

kdrc_stream *kdrc_layer::init(uint64_t a1, mj2_video_source *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) || *(a1 + 80))
  {
    kdrc_layer::init();
  }

  v7 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  *(a1 + 32) = 0;
  *(a1 + 44) = 0;
  *(a1 + 36) = 0;
  *(a1 + 52) = a5;
  *(a1 + 60) = a6;
  *(a1 + 236) = mj2_video_source::get_track_idx(a2) - 1;
  *(a1 + 120) = 0;
  if ((a3 & 0x80000000) != 0 || (*(*a2 + 96))(a2) <= a3)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    kdu_error::kdu_error(&v14, "Error in Kakadu Region Compositor:\n");
    (*(v14 + 16))(&v14, "Unable to create compositing layer for MJ2 track ");
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    *v17 = 0u;
    if (BYTE8(v14))
    {
      sprintf(v17, "%x");
    }

    else
    {
      sprintf(v17, "%d");
    }

    (*(v14 + 16))(&v14, v17);
    (*(v14 + 16))(&v14, ": requested frame index is out of range.");
    kdu_error::~kdu_error(&v14);
  }

  v10 = v7 & 1;
  if (v10 && !(*(*a2 + 80))(a2))
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    kdu_error::kdu_error(&v14, "Error in Kakadu Region Compositor:\n");
    (*(v14 + 16))(&v14, "Unable to create compositing layer for MJ2 track ");
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    *v17 = 0u;
    if (BYTE8(v14))
    {
      sprintf(v17, "%x");
    }

    else
    {
      sprintf(v17, "%d");
    }

    (*(v14 + 16))(&v14, v17);
    (*(v14 + 16))(&v14, ": requested field does not exist (source is progressive, not interlaced).");
    kdu_error::~kdu_error(&v14);
  }

  (*(*a2 + 104))(a2, a3);
  result = mj2_video_source::can_open_stream(a2, v10);
  if (result)
  {
    stream_idx = mj2_video_source::get_stream_idx(a2, v10);
    if (stream_idx < 0)
    {
      kdrc_layer::init();
    }

    result = kdu_region_compositor::add_active_stream(*a1, stream_idx, *(a1 + 236));
    *(a1 + 72) = result;
    if (!result)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      kdu_error::kdu_error(&v14, "Error in Kakadu Region Compositor:\n");
      (*(v14 + 16))(&v14, "Unable to create compositing layer for MJ2 track ");
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      *v17 = 0u;
      if (BYTE8(v14))
      {
        sprintf(v17, "%x");
      }

      else
      {
        sprintf(v17, "%d");
      }

      (*(v14 + 16))(&v14, v17);
      (*(v14 + 16))(&v14, ": codestream cannot be opened.");
      kdu_error::~kdu_error(&v14);
    }

    *(result + 139) = a1;
    *(a1 + 232) = 0;
    v13 = *(a1 + 72);
    if (*(v13 + 64) > *(v13 + 68))
    {
      *(a1 + 232) = 1;
      *(a1 + 233) = *(v13 + 10);
    }

    *(a1 + 104) = 0x100000001;
    *(a1 + 88) = 0x100000001;
  }

  return result;
}

uint64_t kdrc_layer::change_frame(kdrc_layer *this, int a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = this + 72;
  v5 = *(this + 9);
  result = *(this + 2);
  if (v5)
  {
    if (result)
    {
      if (*(this + 6) != a2 || *(this + 32) == 1)
      {
        if (a2 < 0 || (*(*result + 96))(result) <= a2)
        {
          v23 = 0;
          memset(v22, 0, sizeof(v22));
          kdu_error::kdu_error(v22, "Error in Kakadu Region Compositor:\n");
          (*(*&v22[0] + 16))(v22, "Requested frame index for MJ2 track ");
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          *v24 = 0u;
          if (BYTE8(v22[0]))
          {
            sprintf(v24, "%x");
          }

          else
          {
            sprintf(v24, "%d");
          }

          (*(*&v22[0] + 16))(v22, v24);
          (*(*&v22[0] + 16))(v22, " is out of range.");
          kdu_error::~kdu_error(v22);
        }

        v9 = 0;
        *(this + 6) = a2;
        LOBYTE(v10) = 1;
        *(this + 32) = 1;
        do
        {
          while (1)
          {
            v11 = v10;
            v10 = *&v6[8 * v9];
            if (!v10)
            {
              break;
            }

            v12 = *(this + 6);
            v13 = *(this + 7) & 1;
            if (v13 == v9 && *(this + 7) == 3)
            {
              v15 = v12 + 1;
            }

            else
            {
              v15 = v12;
            }

            (*(**(this + 2) + 104))(*(this + 2), v15);
            result = mj2_video_source::can_open_stream(*(this + 2), v13 ^ v9);
            if (!result)
            {
              return result;
            }

            if (a3)
            {
              LOBYTE(v10) = 0;
              v9 = 1;
              if ((v11 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            else
            {
              kdrc_stream::change_frame(*&v6[8 * v9], v15);
              LOBYTE(v10) = 0;
              v9 = 1;
              if ((v11 & 1) == 0)
              {
                goto LABEL_41;
              }
            }
          }

          v9 = 1;
        }

        while ((v11 & 1) != 0);
        if (!a3)
        {
          goto LABEL_41;
        }

LABEL_31:
        v16 = 0;
        v17 = 1;
        do
        {
          v18 = v17;
          if (*&v6[8 * v16])
          {
            v19 = *(this + 6);
            if ((*(this + 7) & 1) == v16 && *(this + 7) == 3)
            {
              v21 = v19 + 1;
            }

            else
            {
              v21 = v19;
            }

            (*(**(this + 2) + 104))(*(this + 2), v21);
            kdrc_stream::change_frame(*&v6[8 * v16], v21);
          }

          v17 = 0;
          v16 = 1;
        }

        while ((v18 & 1) != 0);
LABEL_41:
        *(this + 32) = 0;
      }

      return 1;
    }
  }

  else
  {
    if (result)
    {
      *(this + 6) = a2;
    }

    kdrc_layer::reinit(this);
    return *(this + 9) != 0;
  }

  return result;
}

BOOL kdrc_layer::reinit(kdrc_layer *this)
{
  if (!*(this + 9))
  {
    v2 = *(this + 1);
    if (v2)
    {
      kdrc_layer::init(this, v2, *(this + 36), *(this + 44), *(this + 52), *(this + 60), *(this + 33), *(this + 34), *(this + 35));
    }

    else
    {
      kdrc_layer::init(this, *(this + 2), *(this + 6), *(this + 7), *(this + 52), *(this + 60));
    }
  }

  return *(this + 9) != 0;
}

__n128 *kdrc_layer::activate(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, char a7, char a8, unsigned int a9, int a10)
{
  v15 = a1 + 72;
  if (*(a1 + 72))
  {
    if (*(a1 + 176))
    {
      kdrc_layer::activate();
    }

    v16 = 0;
    v28 = HIDWORD(a2);
    v17 = HIDWORD(a4);
    v18 = 1;
    do
    {
      v19 = v18;
      result = *(v15 + 8 * v16);
      if (result)
      {
        if ((result[70].n128_u8[5] & 1) == 0)
        {
          v21 = kdu_region_compositor::add_active_stream(*a1, result[69].n128_i32[0], result[69].n128_i32[1]);
          result = *(v15 + 8 * v16);
          if (v21 != result)
          {
            kdrc_layer::activate();
          }
        }

        result = kdrc_stream::set_mode(result, 0xFFFFFFFFLL, 0);
        *(*(v15 + 8 * v16) + 1112) = a1;
      }

      v18 = 0;
      v16 = 1;
    }

    while ((v19 & 1) != 0);
    *(a1 + 200) = 0;
    if (*(a1 + 56) != v17 || *(a1 + 52) != a4 || *(a1 + 60) != a5)
    {
      *(a1 + 120) = 0;
    }

    *(a1 + 52) = a4;
    *(a1 + 60) = a5;
    *(a1 + 33) = a6;
    *(a1 + 34) = a7;
    *(a1 + 35) = a8;
    if (*(a1 + 8))
    {
      if (*(a1 + 40) != v28 || *(a1 + 36) != a2 || *(a1 + 44) != a3)
      {
        *(a1 + 120) = 0;
      }

      *(a1 + 36) = a2;
      *(a1 + 44) = a3;
    }

    else if (*(a1 + 28) != a10 || (*(a1 + 24) != a9 || *(a1 + 32) == 1) && (result = kdrc_layer::change_frame(a1, a9, 1), (result & 1) == 0))
    {
      v23 = 0;
      v24 = 1;
      do
      {
        v25 = v24;
        v26 = *(v15 + 8 * v23);
        if (v26)
        {
          kdu_region_compositor::remove_stream(*a1, v26, 1);
        }

        v24 = 0;
        *(v15 + 8 * v23) = 0;
        v23 = 1;
      }

      while ((v25 & 1) != 0);

      return kdrc_layer::reinit(a1);
    }
  }

  else
  {
    v22 = *(a1 + 8);
    if (v22)
    {

      return kdrc_layer::init(a1, v22, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      v27 = *(a1 + 16);

      return kdrc_layer::init(a1, v27, a9, a10, a4, a5);
    }
  }

  return result;
}

uint64_t kdrc_layer::deactivate(uint64_t this)
{
  v1 = this;
  v2 = 0;
  v3 = this + 72;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = *(v3 + 8 * v2);
    if (v6)
    {
      this = kdu_region_compositor::remove_stream(*v1, v6, 0);
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v7 = *(v1 + 176);
  if (v7)
  {
    *v7 = 0;
    v7[10] = 0;
    v7[11] = 0;
    v8 = v7[13];
    if (v8)
    {
      v9 = v7[16];
      do
      {
        v10 = v8;
        v8 = *(v8 + 24);
        *(v10 + 24) = v9;
        v9 = v10;
      }

      while (v8);
      v7[13] = 0;
      v7[16] = v10;
    }

    v7[14] = 0;
    v7[15] = 0;
    *(v1 + 176) = 0;
  }

  *(v1 + 200) = 0;
  *(v1 + 234) = 0;
  v11 = *(v1 + 184);
  if (v11)
  {
    if (v11[24] == 1)
    {
      this = (*(*v11 + 8))(*(v1 + 184));
    }

    else
    {
      this = (*(**v1 + 64))();
    }

    *(v1 + 184) = 0;
  }

  return this;
}

uint64_t kdrc_layer::set_scale(kdrc_layer *this, int a2, int a3, unsigned __int8 a4, float a5, int *a6)
{
  v29 = a3;
  v28 = a4;
  *a6 = 0;
  v6 = this + 72;
  if (!*(this + 9))
  {
    return 0;
  }

  v10 = a3;
  if (*(this + 32) == 1)
  {
    kdrc_layer::change_frame(this, *(this + 6), 0);
  }

  v13 = *(this + 33);
  v14 = *(this + 35);
  if (a2)
  {
    if (*(this + 34))
    {
      v28 = a4 ^ 1;
    }

    if (v14)
    {
      v15 = &v29;
LABEL_13:
      *v15 = v10 ^ 1;
      v10 = v29;
    }
  }

  else
  {
    if (*(this + 34))
    {
      v10 ^= 1u;
      v29 = v10;
    }

    if (v14)
    {
      v15 = &v28;
      LOBYTE(v10) = a4;
      goto LABEL_13;
    }
  }

  v16 = v13 ^ a2;
  if (*(this + 120))
  {
    v17 = v28;
    v18 = *(this + 122) == v10 && *(this + 123) == v28 && *(this + 121) == v16 && *(this + 31) == a5;
  }

  else
  {
    v18 = 0;
    v17 = v28;
  }

  v19 = 0;
  *(this + 120) = 0;
  *(this + 122) = v10;
  *(this + 123) = v17;
  *(this + 121) = v16;
  v20 = 1;
  *(this + 31) = a5;
  while (1)
  {
    v21 = v20;
    v22 = *&v6[8 * v19];
    if (v22)
    {
      v27 = 0uLL;
      *&v27 = kdrc_stream::set_scale(v22, *(this + 36), *(this + 44), *(this + 52), *(this + 60), *(this + v19 + 11), *(this + v19 + 13), v16, a5, v10 & 1, v17 & 1, a6);
      *(&v27 + 1) = v23;
      if (v21)
      {
        *(this + 8) = v27;
      }

      else
      {
        kdu_dims::operator&=(this + 32, &v27);
      }

      if (*(this + 35) < 1 || *(this + 34) <= 0)
      {
        break;
      }
    }

    v20 = 0;
    v19 = 1;
    if ((v21 & 1) == 0)
    {
      *(this + 120) = 1;
      *(this + 26) = 0;
      if (!v18)
      {
        v24 = *(this + 18);
        if (v24)
        {
          if (v24[24] == 1)
          {
            (*(*v24 + 8))(*(this + 18));
          }

          else
          {
            (*(**this + 64))();
          }

          *(this + 18) = 0;
        }

        v26 = *(this + 23);
        if (v26)
        {
          if (v26[24] == 1)
          {
            (*(*v26 + 8))(*(this + 23));
          }

          else
          {
            (*(**this + 64))();
          }

          *(this + 23) = 0;
          *(this + 200) = 0;
        }
      }

      return *(this + 16);
    }
  }

  return 0;
}

uint64_t kdrc_layer::set_buffer_surface(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = result + 72;
  v7 = *(result + 72);
  if (a6)
  {
    v9 = 0;
  }

  else
  {
    v9 = a7;
  }

  *(result + 208) = a6;
  *(result + 216) = a2;
  *(result + 224) = a3;
  if (!v7)
  {
    return result;
  }

  v10 = result;
  if (*(result + 120) != 1)
  {
    return result;
  }

  if (a6)
  {
    v16 = 1;
LABEL_10:
    v31 = v16;
    goto LABEL_11;
  }

  if (*(result + 176))
  {
    v16 = *(result + 234);
    goto LABEL_10;
  }

  v31 = 0;
LABEL_11:
  v17 = *(result + 144);
  v29 = *(result + 160);
  v30 = *(result + 152);
  v32 = a4;
  v33 = a5;
  kdu_dims::operator&=(&v32, (result + 128));
  v18 = v33;
  v10[19] = v32;
  v10[20] = v18;
  v19 = v10[18];
  if (v19 && *(v10 + 43) >= SHIDWORD(v18) && *(v10 + 42) >= v18)
  {
    (*(*v19 + 16))(v19, v31 & 1);
    buffer = v10[18];
  }

  else
  {
    buffer = kdu_region_compositor::internal_allocate_buffer(*v10, v18, v10 + 21);
    v10[18] = buffer;
  }

  if (*(v10 + 232))
  {
    v21 = 0xFFFFFF;
  }

  else
  {
    v21 = -1;
  }

  initialize_buffer_surface(buffer, v10[19], v10[20], 0, 0, 0, v21, v9);
  if (v17 && v17 != v10[18])
  {
    if (v17[24] == 1)
    {
      (*(*v17 + 8))(v17);
    }

    else
    {
      (*(**v10 + 64))(*v10, v17);
    }
  }

  v22 = v10[22];
  if (v22)
  {
    if ((*(v10 + 234) & 1) == 0 && kdrc_overlay::set_buffer_surface(v22, 0, v10[19], v10[20], 0))
    {
      *(v10 + 234) = 1;
      if (!a6)
      {
        if (v31)
        {
          kdrc_layer::set_buffer_surface();
        }

        if (v10[30] || v10[31] || a2 != a4 || a3 != a5 || v10[23])
        {
          kdrc_layer::set_buffer_surface();
        }

        kdu_region_compositor::donate_compositing_buffer(*v10, v10[18], v10[19], v10[20], v10[21]);
        v23 = v10[18];
        v10[26] = v23;
        v10[18] = kdu_region_compositor::internal_allocate_buffer(*v10, v18, v10 + 21);
        if (((*(*v23 + 16))(v23, 1) & 1) == 0)
        {
          initialize_buffer_surface(v23, v10[19], v10[20], 0, 0, 0, -1, 0);
        }

        initialize_buffer_surface(v10[18], v10[19], v10[20], v23, v10[19], v10[20], -1, 0);
      }
    }

    if (v10[22] && *(v10 + 234) == 1)
    {
      v24 = v10[23];
      if (!v24 || *(v10 + 49) < SHIDWORD(v18) || (v25 = v10[23], *(v10 + 48) < v18))
      {
        v25 = kdu_region_compositor::internal_allocate_buffer(*v10, v18, v10 + 24);
        v10[23] = v25;
      }

      initialize_buffer_surface(v25, v10[19], v10[20], v24, v30, v29, 0xFFFFFF, 0);
      if (v24 && v24 != v10[23])
      {
        if (v24[24] == 1)
        {
          (*(*v24 + 8))(v24);
        }

        else
        {
          (*(**v10 + 64))(*v10, v24);
        }
      }

      kdrc_overlay::set_buffer_surface(v10[22], v10[23], v10[19], v10[20], 0);
        ;
      }
    }
  }

  v26 = 0;
  v27 = 1;
  do
  {
    v28 = v27;
    result = *(v8 + 8 * v26);
    if (result)
    {
      result = kdrc_stream::set_buffer_surface(result, v10[18], v10[19], v10[20], 1);
    }

    v27 = 0;
    v26 = 1;
  }

  while ((v28 & 1) != 0);
  return result;
}

uint64_t kdu_region_compositor::internal_allocate_buffer(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(*a1 + 56))(a1);
  if (!result)
  {
    operator new[]();
  }

  *(result + 16) = *a3;
  return result;
}

uint64_t initialize_buffer_surface(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v13 = result;
  v115[0] = a5;
  v115[1] = a6;
  if ((*(result + 27) & 1) == 0)
  {
    result = (*(*result + 24))(result, 0);
  }

  v14 = *(v13 + 40);
  v15 = *(v13 + 44);
  v16 = *(v13 + 32);
  if (!a4)
  {
    goto LABEL_12;
  }

  if ((*(a4 + 27) & 1) == 0)
  {
    result = (*(*a4 + 24))(a4, 0);
  }

  v17 = *(a4 + 32);
  if (v17 && (v18 = *(a4 + 44), v116 = a2, v117 = a3, result = kdu_dims::operator&=(&v116, v115), v19 = v117, v117 >= 1) && (v20 = HIDWORD(v117), v117 > 0))
  {
    v21 = HIDWORD(a2);
    v22 = HIDWORD(v116);
    v23 = HIDWORD(v116) - HIDWORD(a2);
    v24 = v116 - a2;
    v25 = HIDWORD(v115[0]);
    v26 = HIDWORD(v116) - HIDWORD(a2) + HIDWORD(v117);
    result = (v117 + v116 - a2);
    v27 = (v17 + 4 * (HIDWORD(v116) - HIDWORD(v115[0]) + (v116 - LODWORD(v115[0])) * v18));
    v28 = HIDWORD(a3);
    v29 = HIDWORD(a2) + HIDWORD(a3);
    if (v116 - LODWORD(v115[0]) <= v24)
    {
      v40 = v15 * (a3 - 1);
      v41 = &v16[4 * v40];
      v42 = &v27[(v117 - 1) * v18];
      v43 = a3 - result;
      if (a8)
      {
        v41 -= 4 * v43 * v15;
      }

      else if (v43 >= 1)
      {
        v72 = vdupq_n_s64(v28 - 1);
        v73 = &v16[4 * v40 + 8];
        do
        {
          if (SHIDWORD(a3) >= 1)
          {
            v74 = 0;
            v75 = v73;
            do
            {
              v76 = vdupq_n_s64(v74);
              v77 = vmovn_s64(vcgeq_u64(v72, vorrq_s8(v76, xmmword_186205EC0)));
              if (vuzp1_s16(v77, *v72.i8).u8[0])
              {
                *(v75 - 2) = a7;
              }

              if (vuzp1_s16(v77, *&v72).i8[2])
              {
                *(v75 - 1) = a7;
              }

              if (vuzp1_s16(*&v72, vmovn_s64(vcgeq_u64(v72, vorrq_s8(v76, xmmword_186205EB0)))).i32[1])
              {
                *v75 = a7;
                v75[1] = a7;
              }

              v74 += 4;
              v75 += 4;
            }

            while (((HIDWORD(a3) + 3) & 0xFFFFFFFC) != v74);
          }

          v41 -= 4 * v15;
          v73 -= 4 * v15;
          v38 = __OFSUB__(v43--, 1);
        }

        while (!((v43 < 0) ^ v38 | (v43 == 0)));
      }

      v78 = a3 >> 32;
      if (HIDWORD(a3) - v26 < 1)
      {
        v79 = 1;
      }

      else
      {
        v79 = a8;
      }

      if (v23 < 1)
      {
        v80 = 1;
      }

      else
      {
        v80 = a8;
      }

      v81 = v22 - (v23 != 0) - v21;
      v82 = v29 + ~v22 - v20;
      v83 = v82;
      v84 = vdupq_n_s64(v82);
      v85 = v82 & 3;
      v86 = v81 - (v81 & 3) + 4;
      v87 = vdupq_n_s64(v81);
      v88 = &v41[-4 * v15 + 8];
      v89 = v83 - v85 + 4;
      v114 = v21 + v28 - v22 - v20 + 1;
      do
      {
        v90 = v88;
        if (v25 <= v21)
        {
          if (a8)
          {
            v92 = &v41[4 * v23];
          }

          else
          {
            v101 = v23 + 1;
            v92 = v41;
            if (v23 >= 1)
            {
              do
              {
                *v92 = a7;
                v92 += 4;
                --v101;
              }

              while (v101 > 1);
            }
          }

          result = (v92 + 12);
          v102 = v20;
          v103 = v42;
          do
          {
            v104 = result;
            v105 = *v103++;
            *v92 = v105;
            v92 += 4;
            result += 4;
            v38 = __OFSUB__(v102--, 1);
          }

          while (!((v102 < 0) ^ v38 | (v102 == 0)));
          if ((v79 & 1) == 0)
          {
            v106 = 0;
            do
            {
              v107 = vdupq_n_s64(v106);
              v108 = vmovn_s64(vcgeq_u64(v84, vorrq_s8(v107, xmmword_186205EC0)));
              if (vuzp1_s16(v108, 2).u8[0])
              {
                *(v104 - 2) = a7;
              }

              if (vuzp1_s16(v108, 2).i8[2])
              {
                *(v104 - 1) = a7;
              }

              if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v84, vorrq_s8(v107, xmmword_186205EB0)))).i32[1])
              {
                *v104 = a7;
                v104[1] = a7;
              }

              v106 += 4;
              v104 += 4;
            }

            while (v89 != v106);
          }
        }

        else
        {
          if (a8)
          {
            v91 = &v41[4 * v26];
          }

          else
          {
            v91 = &v41[4 * v78];
            if (v28 - v26 >= 1)
            {
              v93 = v114;
              do
              {
                *(v91 - 1) = a7;
                v91 -= 4;
                --v93;
              }

              while (v93 > 1);
            }
          }

          v94 = &v42[v20];
          v95 = (v91 - 12);
          v96 = v20;
          do
          {
            result = v95;
            v97 = *--v94;
            *(v91 - 1) = v97;
            v91 -= 4;
            v95 -= 4;
            v38 = __OFSUB__(v96--, 1);
          }

          while (!((v96 < 0) ^ v38 | (v96 == 0)));
          if ((v80 & 1) == 0)
          {
            v98 = 0;
            do
            {
              v99 = vdupq_n_s64(v98);
              v100 = vmovn_s64(vcgeq_u64(v87, vorrq_s8(v99, xmmword_186205EC0)));
              if (vuzp1_s16(v100, 2).u8[0])
              {
                *(result + 4) = a7;
              }

              if (vuzp1_s16(v100, 2).i8[2])
              {
                *result = a7;
              }

              if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v87, vorrq_s8(v99, xmmword_186205EB0)))).i32[1])
              {
                *(result - 4) = a7;
                *(result - 8) = a7;
              }

              v98 += 4;
              result -= 16;
            }

            while (v86 != v98);
          }
        }

        v41 -= 4 * v15;
        v88 = &v90[-v15];
        v42 -= v18;
        v38 = __OFSUB__(v19--, 1);
      }

      while (!((v19 < 0) ^ v38 | (v19 == 0)));
      if (v24 >= 1 && (a8 & 1) == 0)
      {
        v109 = vdupq_n_s64(v28 - 1);
        do
        {
          if (v28 >= 1)
          {
            v110 = 0;
            v111 = v90;
            do
            {
              v112 = vdupq_n_s64(v110);
              v113 = vmovn_s64(vcgeq_u64(v109, vorrq_s8(v112, xmmword_186205EC0)));
              if (vuzp1_s16(v113, 2).u8[0])
              {
                *(v111 - 2) = a7;
              }

              if (vuzp1_s16(v113, 2).i8[2])
              {
                *(v111 - 1) = a7;
              }

              if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v109, vorrq_s8(v112, xmmword_186205EB0)))).i32[1])
              {
                *v111 = a7;
                v111[1] = a7;
              }

              v110 += 4;
              v111 += 4;
            }

            while (((v28 + 3) & 0xFFFFFFFC) != v110);
          }

          v90 -= v15;
          v38 = __OFSUB__(v24--, 1);
        }

        while (!((v24 < 0) ^ v38 | (v24 == 0)));
      }
    }

    else
    {
      v30 = 4 * v15;
      if (a8)
      {
        v16 += 4 * v15 * v24;
      }

      else if (v24 >= 1)
      {
        v44 = vdupq_n_s64(v28 - 1);
        v45 = v16 + 8;
        do
        {
          if (SHIDWORD(a3) >= 1)
          {
            v46 = 0;
            v47 = v45;
            do
            {
              v48 = vdupq_n_s64(v46);
              v49 = vmovn_s64(vcgeq_u64(v44, vorrq_s8(v48, xmmword_186205EC0)));
              if (vuzp1_s16(v49, *v44.i8).u8[0])
              {
                *(v47 - 2) = a7;
              }

              if (vuzp1_s16(v49, *&v44).i8[2])
              {
                *(v47 - 1) = a7;
              }

              if (vuzp1_s16(*&v44, vmovn_s64(vcgeq_u64(v44, vorrq_s8(v48, xmmword_186205EB0)))).i32[1])
              {
                *v47 = a7;
                v47[1] = a7;
              }

              v46 += 4;
              v47 += 4;
            }

            while (((HIDWORD(a3) + 3) & 0xFFFFFFFC) != v46);
          }

          v16 += 4 * v15;
          v45 = (v45 + v30);
          v38 = __OFSUB__(v24--, 1);
        }

        while (!((v24 < 0) ^ v38 | (v24 == 0)));
      }

      if (v26 >= SHIDWORD(a3))
      {
        v50 = 1;
      }

      else
      {
        v50 = a8;
      }

      v51 = v29 + ~v22 - v20;
      v52 = vdupq_n_s64(v51);
      v53 = &v16[4 * v15 + 8];
      v54 = v51 - (v51 & 3) + 4;
      do
      {
        v55 = v53;
        if (a8)
        {
          v56 = &v16[4 * v23];
        }

        else
        {
          v57 = v23 + 1;
          v56 = v16;
          if (v23 >= 1)
          {
            do
            {
              *v56 = a7;
              v56 += 4;
              --v57;
            }

            while (v57 > 1);
          }
        }

        v58 = v56 + 12;
        v59 = v20;
        v60 = v27;
        do
        {
          v61 = v58;
          v62 = *v60++;
          *v56 = v62;
          v56 += 4;
          ++v58;
          v38 = __OFSUB__(v59--, 1);
        }

        while (!((v59 < 0) ^ v38 | (v59 == 0)));
        if ((v50 & 1) == 0)
        {
          v63 = 0;
          do
          {
            v64 = vdupq_n_s64(v63);
            v65 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v64, xmmword_186205EC0)));
            if (vuzp1_s16(v65, 2).u8[0])
            {
              *(v61 - 2) = a7;
            }

            if (vuzp1_s16(v65, 2).i8[2])
            {
              *(v61 - 1) = a7;
            }

            if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v52, vorrq_s8(v64, xmmword_186205EB0)))).i32[1])
            {
              *v61 = a7;
              v61[1] = a7;
            }

            v63 += 4;
            v61 += 4;
          }

          while (v54 != v63);
        }

        v16 += 4 * v15;
        v53 = &v55[v30 / 4];
        v27 += v18;
        v38 = __OFSUB__(v19--, 1);
      }

      while (!((v19 < 0) ^ v38 | (v19 == 0)));
      if ((a8 & 1) == 0)
      {
        v66 = a3 - result;
        if (a3 - result >= 1)
        {
          v67 = vdupq_n_s64(v28 - 1);
          do
          {
            if (SHIDWORD(a3) >= 1)
            {
              v68 = 0;
              v69 = v55;
              do
              {
                v70 = vdupq_n_s64(v68);
                v71 = vmovn_s64(vcgeq_u64(v67, vorrq_s8(v70, xmmword_186205EC0)));
                if (vuzp1_s16(v71, 2).u8[0])
                {
                  *(v69 - 2) = a7;
                }

                if (vuzp1_s16(v71, 2).i8[2])
                {
                  *(v69 - 1) = a7;
                }

                if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v67, vorrq_s8(v70, xmmword_186205EB0)))).i32[1])
                {
                  *v69 = a7;
                  v69[1] = a7;
                }

                v68 += 4;
                v69 += 4;
              }

              while (((HIDWORD(a3) + 3) & 0xFFFFFFFC) != v68);
            }

            v55 = (v55 + v30);
            v38 = __OFSUB__(v66--, 1);
          }

          while (!((v66 < 0) ^ v38 | (v66 == 0)));
        }
      }
    }
  }

  else
  {
LABEL_12:
    if ((a8 & 1) == 0)
    {
      if (v14 == 4)
      {
        if (a3 >= 1)
        {
          v31 = HIDWORD(a3);
          v32 = vdupq_n_s64(HIDWORD(a3) - 1);
          v33 = v16 + 8;
          do
          {
            if (v31 >= 1)
            {
              v34 = 0;
              v35 = v33;
              do
              {
                v36 = vdupq_n_s64(v34);
                v37 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v36, xmmword_186205EC0)));
                if (vuzp1_s16(v37, *v32.i8).u8[0])
                {
                  *(v35 - 2) = a7;
                }

                if (vuzp1_s16(v37, *&v32).i8[2])
                {
                  *(v35 - 1) = a7;
                }

                if (vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v36, xmmword_186205EB0)))).i32[1])
                {
                  *v35 = a7;
                  v35[1] = a7;
                }

                v34 += 4;
                v35 += 4;
              }

              while (((HIDWORD(a3) + 3) & 0xFFFFFFFC) != v34);
            }

            v33 += v15;
            v38 = __OFSUB__(a3, 1);
            LODWORD(a3) = a3 - 1;
          }

          while (!(((a3 & 0x80000000) != 0) ^ v38 | (a3 == 0)));
        }
      }

      else if (a3 >= 1)
      {
        v39 = a3 + 1;
        do
        {
          result = memset(v16, 255, v14 * HIDWORD(a3));
          --v39;
        }

        while (v39 > 1);
      }
    }
  }

  return result;
}

void *kdu_region_compositor::donate_compositing_buffer(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result[49])
  {
    kdu_region_compositor::donate_compositing_buffer();
  }

  if (result[50] != a3 || result[51] != a4)
  {
    kdu_region_compositor::donate_compositing_buffer();
  }

  v5 = result[59];
  if (!v5 || (*(v5 + 234) & 1) == 0)
  {
    kdu_region_compositor::donate_compositing_buffer();
  }

  result[49] = a2;
  result[52] = a5;
  return result;
}

uint64_t kdrc_layer::configure_overlay(uint64_t this, char a2, int a3, int a4)
{
  v4 = *(this + 72);
  if (v4)
  {
    v5 = this;
    if (*(this + 8))
    {
      if (a2)
      {
        this = *(this + 176);
        if (this)
        {
          goto LABEL_8;
        }

        v8 = *(v4 + 48);
        *(v5 + 176) = v8;
        if (v8)
        {
          *v8 = *v5;
        }

        kdrc_layer::update_overlay(v5, 0, 1);
        this = *(v5 + 176);
        if (this)
        {
LABEL_8:
          this = kdrc_overlay::update_config(this, a3, a4);
          if (this)
          {
            this = *(v5 + 184);
            if (this)
            {
              this = initialize_buffer_surface(this, *(v5 + 152), *(v5 + 160), 0, 0, 0, 0xFFFFFF, 0);
            }

            *(v5 + 200) = 1;
          }
        }
      }

      else
      {
        if (*(this + 234) == 1)
        {
          *(this + 200) = 1;
        }

        v9 = *(this + 176);
        if (v9)
        {
          *v9 = 0;
          v9[10] = 0;
          v9[11] = 0;
          v10 = v9[13];
          if (v10)
          {
            v11 = v9[16];
            do
            {
              v12 = v10;
              v10 = *(v10 + 24);
              *(v12 + 24) = v11;
              v11 = v12;
            }

            while (v10);
            v9[13] = 0;
            v9[16] = v12;
          }

          v9[14] = 0;
          v9[15] = 0;
          *(this + 176) = 0;
        }

        v13 = *(this + 184);
        if (v13)
        {
          if (v13[24] == 1)
          {
            this = (*(*v13 + 8))(*(this + 184));
          }

          else
          {
            this = (*(**this + 64))();
          }

          *(v5 + 184) = 0;
        }
      }
    }
  }

  return this;
}

uint64_t kdrc_layer::update_overlay(uint64_t this, int a2, int a3)
{
  v3 = this + 72;
  if (*(this + 72))
  {
    v4 = this;
    this = *(this + 176);
    if (this)
    {
      if (*(v4 + 120) == 1)
      {
        if (a2)
        {
          *this = 0;
          *(this + 80) = 0;
          *(this + 88) = 0;
          v7 = *(this + 104);
          if (v7)
          {
            v8 = *(this + 128);
            do
            {
              v9 = v7;
              v7 = *(v7 + 24);
              *(v9 + 24) = v8;
              v8 = v9;
            }

            while (v7);
            *(this + 104) = 0;
            *(this + 128) = v9;
          }

          *(this + 112) = 0;
          *(this + 120) = 0;
          this = *(v4 + 176);
          v10 = *(v4 + 184);
          *this = *v4;
          if (v10)
          {
            initialize_buffer_surface(v10, *(v4 + 152), *(v4 + 160), 0, 0, 0, 0xFFFFFF, 0);
            this = *(v4 + 176);
          }
        }

        this = kdrc_overlay::set_buffer_surface(this, *(v4 + 184), *(v4 + 152), *(v4 + 160), 1);
        if (this)
        {
          if ((*(v4 + 234) & 1) == 0)
          {
            *(v4 + 234) = 1;
            if (!*(v4 + 208))
            {
              if (*(v4 + 240) || *(v4 + 248) || *(v4 + 184))
              {
                kdrc_layer::update_overlay();
              }

              kdu_region_compositor::donate_compositing_buffer(*v4, *(v4 + 144), *(v4 + 152), *(v4 + 160), *(v4 + 168));
              *(v4 + 208) = *(v4 + 144);
              *(v4 + 144) = kdu_region_compositor::internal_allocate_buffer(*v4, *(v4 + 160), (v4 + 168));
              v11 = (*(**(v4 + 208) + 16))(*(v4 + 208), 1);
              if ((v11 & 1) == 0)
              {
                initialize_buffer_surface(*(v4 + 208), *(v4 + 152), *(v4 + 160), 0, 0, 0, -1, 0);
              }

              initialize_buffer_surface(*(v4 + 144), *(v4 + 152), *(v4 + 160), *(v4 + 208), *(v4 + 152), *(v4 + 160), -1, 0);
              v12 = 0;
              v13 = 1;
              do
              {
                v14 = v13;
                this = *(v3 + 8 * v12);
                if (this)
                {
                  this = kdrc_stream::set_buffer_surface(this, *(v4 + 144), *(v4 + 152), *(v4 + 160), v11 ^ 1u);
                }

                v13 = 0;
                v12 = 1;
              }

              while ((v14 & 1) != 0);
            }

            if (!*(v4 + 184))
            {
              buffer = kdu_region_compositor::internal_allocate_buffer(*v4, *(v4 + 160), (v4 + 192));
              *(v4 + 184) = buffer;
              initialize_buffer_surface(buffer, *(v4 + 152), *(v4 + 160), 0, 0, 0, 0xFFFFFF, 0);
              this = kdrc_overlay::set_buffer_surface(*(v4 + 176), *(v4 + 184), *(v4 + 152), *(v4 + 160), 0);
            }
          }

          if ((a3 & 1) == 0)
          {
            do
            {
              this = kdrc_overlay::process(*(v4 + 176), &v18);
            }

            while ((this & 1) != 0);
          }
        }

        if (*(v4 + 234) == 1 && a2 != 0 && a3 != 0)
        {
          *(v4 + 200) = 1;
        }
      }
    }
  }

  return this;
}

uint64_t kdrc_layer::process_overlay(kdrc_layer *this, kdu_dims *a2)
{
  if (!*(this + 22))
  {
    if (*(this + 234))
    {
      v4 = *(this + 200);
      *(this + 200) = 0;
      *(this + 234) = 0;
      if (v4 == 1)
      {
        v5 = *(this + 18);
        *a2 = *(this + 152);
        if (*(this + 26) && kdu_region_compositor::retract_compositing_buffer(*this, this + 21))
        {
          v6 = *(this + 26);
          *(this + 18) = v6;
          *(this + 26) = 0;
          if (*(this + 232) == 1)
          {
            kdrc_layer::process_overlay();
          }

          initialize_buffer_surface(v6, *(this + 19), *(this + 20), v5, *(this + 19), *(this + 20), -1, 0);
          (*(**(this + 18) + 16))(*(this + 18), 0);
          v7 = 0;
          v8 = 1;
          do
          {
            v9 = v8;
            v10 = *(this + v7 + 9);
            if (v10)
            {
              kdrc_stream::set_buffer_surface(v10, *(this + 18), *(this + 19), *(this + 20), 0);
            }

            v8 = 0;
            v7 = 1;
          }

          while ((v9 & 1) != 0);
          if (v5[24] == 1)
          {
            (*(*v5 + 8))(v5);
          }

          else
          {
            (*(**this + 64))(*this, v5);
          }
        }

        return 1;
      }
    }

    else
    {
      *(this + 200) = 0;
      *(this + 234) = 0;
    }
  }

  if (*(this + 234) != 1)
  {
    return 0;
  }

  if (*(this + 200) == 1)
  {
      ;
    }

    *a2 = *(this + 152);
    *(this + 200) = 0;
    return 1;
  }

  v12 = *(this + 22);

  return kdrc_overlay::process(v12, a2);
}

uint64_t kdu_region_compositor::retract_compositing_buffer(uint64_t a1, void *a2)
{
  v2 = *(a1 + 472);
  if (!v2)
  {
    kdu_region_compositor::retract_compositing_buffer();
  }

  if (!*(a1 + 392) || *(v2 + 240) || (*(v2 + 232) & 1) != 0 || (*(v2 + 234) & 1) != 0 || *(a1 + 356) >= 1 && *(a1 + 352) > 0)
  {
    return 0;
  }

  *(a1 + 392) = 0;
  *a2 = *(a1 + 416);
  return 1;
}

uint64_t kdrc_layer::update_composition(uint64_t result, unint64_t a2, uint64_t a3, int a4)
{
  v93 = a2;
  v94 = a3;
  v4 = *(result + 208);
  if (v4)
  {
    v5 = result;
    if (*(result + 234) == 1)
    {
      if (*(*result + 472) == result)
      {
        v40 = a3;
        v41 = a2;
        v42 = HIDWORD(a2);
        if ((*(v4 + 27) & 1) == 0)
        {
          (*(*v4 + 24))(*(result + 208), 0);
        }

        v43 = *(v4 + 40);
        v44 = *(v4 + 32);
        v45 = *(v4 + 44) * v43;
        v46 = (v42 - v5[27].i32[1]) * v43 + (v41 - v5[27].i32[0]) * v45;
        if (v43 == 4)
        {
          if (v40 >= 1)
          {
            v47 = v46 + v44 + 8;
            do
            {
              if (SHIDWORD(v94) >= 1)
              {
                v48 = 0;
                v49 = (HIDWORD(v94) + 3) & 0xFFFFFFFC;
                v50 = vdupq_n_s64(HIDWORD(v94) - 1);
                v51 = v47;
                do
                {
                  v52 = vdupq_n_s64(v48);
                  v53 = vmovn_s64(vcgeq_u64(v50, vorrq_s8(v52, xmmword_186205EC0)));
                  if (vuzp1_s16(v53, 2).u8[0])
                  {
                    *(v51 - 2) = a4;
                  }

                  if (vuzp1_s16(v53, 2).i8[2])
                  {
                    *(v51 - 1) = a4;
                  }

                  if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v50, vorrq_s8(v52, xmmword_186205EB0)))).i32[1])
                  {
                    *v51 = a4;
                    v51[1] = a4;
                  }

                  v48 += 4;
                  v51 += 4;
                }

                while (v49 != v48);
              }

              v47 += v45;
              v38 = __OFSUB__(v40, 1);
              LODWORD(v40) = v40 - 1;
            }

            while (!((v40 < 0) ^ v38 | (v40 == 0)));
          }
        }

        else if (v40 >= 1)
        {
          v54 = (v44 + v46);
          v55 = v43 * HIDWORD(v40);
          v56 = v45;
          v57 = v40 + 1;
          do
          {
            memset(v54, 255, v55);
            v54 += v56;
            --v57;
          }

          while (v57 > 1);
        }
      }

      kdu_dims::operator&=(&v93, &v5[19]);
      result = kdu_dims::operator&=(&v93, &v5[27]);
      if (*&v5[9] && SHIDWORD(v94) >= 1 && v94 >= 1)
      {
        if (v5[15].i8[0] != 1 || (v11 = v5[18], !*&v11))
        {
          kdrc_layer::update_composition();
        }

        if (*(*&v11 + 27) != 1 || (*(*&v11 + 26) & 1) == 0)
        {
          result = (*(**&v11 + 24))(*&v5[18], 1);
        }

        v13 = *(*&v11 + 40);
        v12 = *(*&v11 + 44);
        v14 = v12 * v13;
        v16 = v93;
        v15 = HIDWORD(v93);
        v17 = (*(*&v11 + 32) + (HIDWORD(v93) - v5[19].i32[1]) * v13 + (v93 - v5[19].i32[0]) * v14);
        v18 = v5[26];
        if (*(*&v18 + 27) != 1 || (*(*&v18 + 26) & 1) == 0)
        {
          result = (*(**&v18 + 24))(*&v5[26], 1);
          v16 = v93;
          v15 = HIDWORD(v93);
        }

        v20 = *(*&v18 + 40);
        v19 = *(*&v18 + 44);
        v21 = v19 * v20;
        v22 = (*(*&v18 + 32) + (v15 - v5[27].i32[1]) * v20 + (v16 - v5[27].i32[0]) * v21);
        if (v5[29].i8[0])
        {
          v23 = v94;
          if (v5[29].i8[1])
          {
            if (v94 >= 1)
            {
              v6.n128_u64[0] = 0xFFFFFFF0FFFFFFF8;
              v7.n128_u64[0] = 0x1000000008;
              v8.n128_u64[0] = 0xFF000000FFLL;
              v9.n128_u64[0] = 0xFFFFFFF8FFFFFFF0;
              v10 = 0uLL;
              do
              {
                if (SHIDWORD(v94) >= 1)
                {
                  v24 = 0;
                  v25 = HIDWORD(v94) + 1;
                  do
                  {
                    v26 = *&v17[v24];
                    v27 = *&v22[v24];
                    v28 = kdrc_alpha_lut[v26 >> 24];
                    v29 = HIBYTE(*&v17[v24]) + HIBYTE(v27) - ((HIBYTE(v27) * v28) >> 14);
                    v31 = v29 & ~(v29 >> 31);
                    if (v31 >= 255)
                    {
                      v31 = 255;
                    }

                    v30 = *&v22[v24] + v26 - ((*&v22[v24] * v28) >> 14);
                    result = v30 & ~(v30 >> 31);
                    v32 = vand_s8(vshl_u32(__PAIR64__(v27, v26), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL);
                    v34 = vrev64_s32(vand_s8(vshl_u32(__PAIR64__(v27, v26), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL));
                    v33 = vadd_s32(v34, v32);
                    v34.i32[1] = v32.i32[1];
                    v35 = vdup_n_s32(v28);
                    if (result >= 255)
                    {
                      v36 = 255;
                    }

                    else
                    {
                      v36 = result;
                    }

                    v37 = vshl_u32(vmin_s32(vmax_s32(vsub_s32(v33, vshr_n_s32(vmul_s32(v34, v35), 0xEuLL)), 0), 0xFF000000FFLL), 0x1000000008);
                    *&v22[v24] = v37.i32[1] | (v31 << 24) | v37.i32[0] | v36;
                    v24 += 4;
                    --v25;
                  }

                  while (v25 > 1);
                }

                v17 += v12;
                v22 += v19;
                v38 = __OFSUB__(v23--, 1);
              }

              while (!((v23 < 0) ^ v38 | (v23 == 0)));
            }
          }

          else if (v94 >= 1)
          {
            v60 = v13 != 4 || v20 != 4;
            v6.n128_u64[0] = 0xFF000000FFLL;
            v6.n128_u64[1] = 0xFF000000FFLL;
            v7 = 0uLL;
            do
            {
              if (SHIDWORD(v94) >= 1)
              {
                if (v60)
                {
                  kdrc_layer::update_composition();
                }

                v61 = 0;
                v62 = HIDWORD(v94) + 1;
                do
                {
                  result = v22[v61 + 1];
                  LODWORD(v63) = v22[v61 + 2];
                  v64 = *&v17[v61 + 2];
                  v10.n128_u8[0] = v22[v61];
                  v10.n128_u8[2] = v17[v61 + 1];
                  HIDWORD(v63) = v22[v61 + 3];
                  v10.n128_u16[2] = v64;
                  v10.n128_u16[3] = HIBYTE(v64);
                  v9 = vandq_s8(vmovl_u16(v10.n128_u64[0]), v6);
                  v65.i32[0] = 255;
                  v65.i32[1] = v22[v61 + 1];
                  v65.i64[1] = v63;
                  v66 = &kdrc_alpha_lut[v17[v61]];
                  v67 = vsubq_s32(v9, v65);
                  v68 = vld1q_dup_f32(v66);
                  v67.i32[0] = veorq_s8(v9, v6).u32[0];
                  v65.i32[0] = v9.n128_u32[0];
                  v10 = vsraq_n_s32(v65, vmulq_s32(v67, v68), 0xEuLL);
                  v8 = vminq_s32(vmaxq_s32(v10, 0), v6);
                  v8.n128_u64[0] = vuzp1_s8(vmovn_s32(v8), v6.n128_u64[0]);
                  *&v22[v61] = v8.n128_u32[0];
                  v61 += 4;
                  --v62;
                }

                while (v62 > 1);
              }

              v17 += v14;
              v22 += v21;
              v38 = __OFSUB__(v23--, 1);
            }

            while (!((v23 < 0) ^ v38 | (v23 == 0)));
          }
        }

        else if (v94 >= 1)
        {
          v58 = v94 + 1;
          do
          {
            result = memcpy(v22, v17, SHIDWORD(v94) * v13);
            v17 += v14;
            v22 += v21;
            --v58;
          }

          while (v58 > 1);
        }

        v69 = v5[23];
        if (v69)
        {
          if (*(*&v69 + 27) != 1 || (*(*&v69 + 26) & 1) == 0)
          {
            result = (*(**&v69 + 24))(*&v5[23], 1, v6, v7, v8, v9, v10);
          }

          v70 = *(*&v69 + 40);
          v71 = *(*&v69 + 44);
          v72 = *(*&v69 + 32);
          v74 = v93;
          v73 = HIDWORD(v93);
          v76 = v5[19].i32[0];
          v75 = v5[19].i32[1];
          v77 = v5[26];
          if (*(*&v77 + 27) != 1 || (*(*&v77 + 26) & 1) == 0)
          {
            result = (*(**&v77 + 24))(*&v5[26], 1, v6, v7, v8, v9, v10);
          }

          v78 = v94;
          if (v94 >= 1)
          {
            v79 = v72 + (v73 - v75 + (v74 - v76) * v71) * v70;
            v80 = vsub_s32(v93, v5[27]);
            v81 = *(*&v77 + 44);
            v82 = *(*&v77 + 32) + (v80.i32[1] + v80.i32[0] * v81) * *(*&v77 + 40);
            do
            {
              if (SHIDWORD(v94) >= 1)
              {
                v83 = 0;
                v84 = HIDWORD(v94) + 1;
                do
                {
                  v85 = *(v79 + v83);
                  v86 = *(v82 + v83);
                  result = *(kdrc_alpha_lut + ((v85 >> 22) & 0x3FC));
                  v87 = (((HIBYTE(v86) ^ 0xFF) * result) >> 14) + HIBYTE(v86);
                  v89 = v87 & ~(v87 >> 31);
                  if (v89 >= 255)
                  {
                    v89 = 255;
                  }

                  v88 = (((*(v79 + v83) - v86) * result) >> 14) + v86;
                  v90 = v88 & ~(v88 >> 31);
                  if (v90 >= 255)
                  {
                    v90 = 255;
                  }

                  v91 = vand_s8(vshl_u32(vdup_n_s32(v86), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
                  v92 = vshl_u32(vmin_s32(vmax_s32(vsra_n_s32(v91, vmul_s32(vsub_s32(vand_s8(vshl_u32(vdup_n_s32(v85), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), v91), vdup_n_s32(result)), 0xEuLL), 0), 0xFF000000FFLL), 0x800000010);
                  *(v82 + v83) = v92.i32[0] | (v89 << 24) | v90 | v92.i32[1];
                  v83 += 4;
                  --v84;
                }

                while (v84 > 1);
              }

              v79 += v71;
              v82 += v81;
              v38 = __OFSUB__(v78--, 1);
            }

            while (!((v78 < 0) ^ v38 | (v78 == 0)));
          }
        }
      }
    }
  }

  return result;
}

uint64_t kdrc_refresh::adjust(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  v4 = (result + 8);
  v3 = *(result + 8);
  if (v3)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(v3 + 16);
      result = kdu_dims::operator&=(v3, v9);
      if (*(v3 + 12) < 1 || *(v3 + 8) <= 0)
      {
        v8 = (v6 + 16);
        if (!v6)
        {
          v8 = v4;
        }

        *v8 = v7;
        *(v3 + 16) = *v5;
        *v5 = v3;
      }

      else
      {
        v6 = v3;
      }

      v3 = v7;
    }

    while (v7);
  }

  return result;
}

void kdrc_refresh::adjust(kdrc_refresh *this, kdrc_stream *a2)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    do
    {
      v5 = v2[2];
      kdrc_stream::adjust_refresh(a2, *v2, v2[1], this);
      v2[2] = *this;
      *this = v2;
      v2 = v5;
    }

    while (v5);
  }
}

void kdu_region_compositor::kdu_region_compositor(uint64_t a1)
{
  *a1 = &unk_1EF4D3CC0;
  jpx_input_box::jpx_input_box((a1 + 32));
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0;
  kdu_region_compositor::init(a1);
}

void kdu_region_compositor::init(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 316) = 1;
  *(a1 + 320) = 256000;
  *(a1 + 312) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0x101FFFFFFFFLL;
  *(a1 + 324) = 0;
  *(a1 + 328) = 0x10000;
  *(a1 + 334) = 0;
  *(a1 + 332) = 0;
  *(a1 + 336) = 1065353216;
  *(a1 + 432) = 0;
  *(a1 + 436) = 0;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 440) = 1;
  operator new();
}

uint64_t kdu_region_compositor::create(uint64_t this, kdu_compressed_source *a2, int a3)
{
  if (*(this + 8) || *(this + 16) || *(this + 24))
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    kdu_error::kdu_error(v3, "Error in Kakadu Region Compositor:\n");
    kdu_error::~kdu_error(v3);
  }

  *(this + 8) = a2;
  *(this + 316) = a3 >= 0;
  *(this + 320) = a3;
  return this;
}

uint64_t kdu_region_compositor::create(uint64_t this, jpx_source *a2, int a3)
{
  if (*(this + 8) || *(this + 16) || *(this + 24))
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    kdu_error::kdu_error(v3, "Error in Kakadu Region Compositor:\n");
    kdu_error::~kdu_error(v3);
  }

  *(this + 16) = a2;
  *(this + 316) = a3 >= 0;
  *(this + 320) = a3;
  return this;
}

kdrc_queue *kdu_region_compositor::pre_destroy(kdu_region_compositor *this)
{
  kdu_region_compositor::remove_compositing_layer(this, -1, 1);
  while (1)
  {
    v2 = *(this + 62);
    if (!v2)
    {
      break;
    }

    kdu_region_compositor::remove_stream(this, v2, 1);
  }

  while (1)
  {
    v3 = *(this + 63);
    if (!v3)
    {
      break;
    }

    kdu_region_compositor::remove_stream(this, v3, 1);
  }

  v4 = *(this + 49);
  if (v4)
  {
    if (v4[24] == 1)
    {
      (*(*v4 + 8))(*(this + 49));
    }

    else
    {
      (*(*this + 64))(this);
    }

    *(this + 49) = 0;
  }

  v5 = *(this + 64);
  if (v5)
  {
    kdrc_refresh::~kdrc_refresh(v5);
    MEMORY[0x186602850]();
    *(this + 64) = 0;
  }

  kdu_region_compositor::flush_composition_queue(this);
  result = *(this + 58);
  for (*(this + 57) = result; result; *(this + 57) = result)
  {
    *(this + 58) = *(result + 3);
    kdrc_queue::~kdrc_queue(result);
    MEMORY[0x186602850]();
    result = *(this + 58);
  }

  return result;
}

uint64_t kdu_region_compositor::remove_compositing_layer(uint64_t this, int a2, int a3)
{
  v5 = this;
  v6 = *(this + 472);
  if (v6)
  {
    v7 = 0;
    v8 = (this + 472);
    v9 = (this + 480);
    do
    {
      v10 = *(v6 + 240);
      if (a2 < 0 || *(v6 + 236) == a2)
      {
        *(v5 + 429) = 1;
        this = kdrc_layer::deactivate(v6);
        if (v7)
        {
          v11 = (v7 + 240);
        }

        else
        {
          v11 = (v5 + 472);
          if (v6 != *v8)
          {
            kdu_region_compositor::remove_compositing_layer();
          }
        }

        *v11 = v10;
        v12 = *v9;
        if (v10)
        {
          if (v6 == v12)
          {
            kdu_region_compositor::remove_compositing_layer();
          }

          v13 = (v10 + 248);
        }

        else
        {
          v13 = (v5 + 480);
          if (v6 != v12)
          {
            kdu_region_compositor::remove_compositing_layer();
          }
        }

        *v13 = v7;
        *(v6 + 240) = *(v5 + 488);
        *(v6 + 248) = 0;
        *(v5 + 488) = v6;
      }

      else
      {
        v7 = v6;
      }

      v6 = v10;
    }

    while (v10);
  }

  if (a3)
  {
    this = *(v5 + 488);
    if (this)
    {
      v14 = 0;
      do
      {
        v15 = *(this + 240);
        if (a2 < 0 || *(this + 236) == a2)
        {
          v16 = (v14 + 240);
          if (!v14)
          {
            v16 = (v5 + 488);
          }

          *v16 = v15;
          kdrc_layer::~kdrc_layer(this);
          MEMORY[0x186602850]();
        }

        else
        {
          v14 = this;
        }

        this = v15;
      }

      while (v15);
    }
  }

  return this;
}

void *kdu_region_compositor::flush_composition_queue(void *this)
{
  v1 = this[56];
  this[57] = v1;
  if (v1)
  {
    v2 = this;
    v3 = this[58];
    do
    {
      v4 = *(v1 + 24);
      v2[56] = v4;
      *(v1 + 24) = v3;
      v2[58] = v1;
      v5 = *v1;
      if (*v1)
      {
        if (v5[24] == 1)
        {
          this = (*(*v5 + 8))(v5);
        }

        else
        {
          this = (*(*v2 + 64))(v2);
        }

        v1 = v2[58];
        *v1 = 0;
        v4 = v2[56];
      }

      v2[57] = v4;
      v3 = v1;
      v1 = v4;
    }

    while (v4);
  }

  return this;
}

uint64_t kdu_region_compositor::add_compositing_layer(uint64_t a1, int a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8, char a9, unsigned int a10, int a11)
{
  v13 = HIDWORD(a5);
  if (a9)
  {
    LODWORD(v13) = 1 - (HIDWORD(a6) + HIDWORD(a5));
  }

  v14 = 1 - (a6 + a5);
  if (!a8)
  {
    v14 = a5;
  }

  if (a7)
  {
    v15 = HIDWORD(a6);
  }

  else
  {
    v15 = a6;
  }

  if (a7)
  {
    v16 = v14;
  }

  else
  {
    v16 = v13;
  }

  if (a7)
  {
    v17 = v13;
  }

  else
  {
    v17 = v14;
  }

  if (a7)
  {
    v18 = a6;
  }

  else
  {
    v18 = HIDWORD(a6);
  }

  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  if (*(a1 + 8))
  {
    if (a2)
    {
      v47 = 0;
      v45 = 0uLL;
      v46 = 0uLL;
      kdu_error::kdu_error(&v45, "Error in Kakadu Region Compositor:\n");
      kdu_error::~kdu_error(&v45);
    }

    v19 = *(a1 + 496);
    if (v19)
    {
      kdu_region_compositor::remove_stream(a1, v19, 0);
      if (*(a1 + 496))
      {
        kdu_region_compositor::add_compositing_layer();
      }
    }

    kdu_region_compositor::add_active_stream(a1, 0, 0);
    kdrc_stream::set_mode(*(a1 + 496), 0xFFFFFFFFLL, 0);
    result = 1;
    *(a1 + 429) = 1;
    return result;
  }

  v21 = a8;
  v22 = a7;
  v24 = *(a1 + 16);
  if (v24)
  {
    v41 = v17;
    v42 = v16;
    v44 = 0;
    v25 = jpx_source::count_compositing_layers(v24, &v44);
    if (!jpx_source::access_layer(*(a1 + 16), a2, 1))
    {
      if (a2 < 0 || ((v44 <= a2) & v25) == 1)
      {
        v47 = 0;
        v45 = 0u;
        v46 = 0u;
        kdu_error::kdu_error(&v45, "Error in Kakadu Region Compositor:\n");
        goto LABEL_32;
      }

      return 0;
    }
  }

  else
  {
    v26 = *(a1 + 24);
    if (!v26)
    {
      kdu_region_compositor::add_compositing_layer();
    }

    track_type = mj2_source::get_track_type(v26, a2 + 1);
    if (track_type == -1)
    {
      return 0;
    }

    v41 = v17;
    v42 = v16;
    if (track_type != 1)
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      kdu_error::kdu_error(&v45, "Error in Kakadu Region Compositor:\n");
LABEL_32:
      kdu_error::~kdu_error(&v45);
    }
  }

  v28 = (a1 + 472);
  while (1)
  {
    v29 = *(a1 + 496);
    if (!v29 || *v28)
    {
      break;
    }

    kdu_region_compositor::remove_stream(a1, v29, 0);
  }

  jpx_input_box::close((a1 + 32));
  v30 = *(a1 + 472);
  if (v30)
  {
    if (*(v30 + 236) == a2)
    {
      v31 = 0;
      v32 = *(a1 + 472);
LABEL_43:
      if (v31)
      {
        v34 = *(v32 + 240);
        *(v31 + 240) = v34;
      }

      else
      {
        if (v32 != v30)
        {
          kdu_region_compositor::add_compositing_layer();
        }

        v34 = *(v32 + 240);
        *v28 = v34;
      }

      v36 = *(a1 + 480);
      if (v34)
      {
        if (v32 == v36)
        {
          kdu_region_compositor::add_compositing_layer();
        }

        *(v34 + 248) = *(v32 + 248);
      }

      else
      {
        if (v32 != v36)
        {
          kdu_region_compositor::add_compositing_layer();
        }

        *(a1 + 480) = v31;
      }

      goto LABEL_64;
    }

    v33 = *(a1 + 472);
    while (1)
    {
      v32 = *(v33 + 240);
      if (!v32)
      {
        break;
      }

      v31 = v33;
      v33 = *(v33 + 240);
      if (*(v32 + 236) == a2)
      {
        goto LABEL_43;
      }
    }
  }

  v32 = *(a1 + 488);
  if (!v32)
  {
LABEL_65:
    operator new();
  }

  if (*(v32 + 236) != a2)
  {
    v37 = *(a1 + 488);
    while (1)
    {
      v32 = *(v37 + 240);
      if (!v32)
      {
        goto LABEL_65;
      }

      v35 = v37;
      v37 = *(v37 + 240);
      if (*(v32 + 236) == a2)
      {
        goto LABEL_60;
      }
    }
  }

  v35 = 0;
LABEL_60:
  if (v35)
  {
    v38 = (v35 + 240);
  }

  else
  {
    v38 = (a1 + 488);
  }

  *v38 = *(v32 + 240);
LABEL_64:
  *(v32 + 240) = 0;
  *(v32 + 248) = 0;
  v39 = *(a1 + 480);
  if (v39)
  {
    *(v32 + 248) = v39;
    v40 = (v39 + 240);
    v28 = (a1 + 480);
  }

  else
  {
    v40 = (a1 + 480);
    if (*v28)
    {
      kdu_region_compositor::add_compositing_layer();
    }
  }

  *v40 = v32;
  *v28 = v32;
  *(a1 + 429) = 1;
  kdrc_layer::activate(v32, a3, a4, v41 | (v42 << 32), v15 | (v18 << 32), v22, v21, a9, a10, a11);
  return 1;
}

uint64_t kdu_region_compositor::set_single_component(kdu_region_compositor *this, int a2, uint64_t a3, unsigned __int32 a4)
{
  v26 = *MEMORY[0x1E69E9840];
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 429) = 1;
  for (i = *(this + 59); i; i = *(this + 59))
  {
    kdu_region_compositor::remove_compositing_layer(this, *(i + 236), 0);
  }

  if (*(this + 60))
  {
    kdu_region_compositor::set_single_component();
  }

  while (1)
  {
    v9 = *(this + 62);
    if (!v9)
    {
      break;
    }

    kdu_region_compositor::remove_stream(this, v9, 0);
  }

  if (*(this + 1))
  {
    if (a2)
    {
      *&v23 = 0;
      *v21 = 0u;
      v22 = 0u;
      kdu_error::kdu_error(v21, "Error in Kakadu Region Compositor:\n");
      kdu_error::~kdu_error(v21);
    }

    goto LABEL_21;
  }

  v10 = *(this + 2);
  if (!v10)
  {
    v12 = *(this + 3);
    if (!v12)
    {
      kdu_region_compositor::set_single_component();
    }

    v17[0] = 0;
    *v20 = 0;
    if (mj2_source::find_stream(v12, a2, v17, &v20[1], v20))
    {
      if (!v17[0])
      {
        *&v23 = 0;
        *v21 = 0u;
        v22 = 0u;
        kdu_error::kdu_error(v21, "Error in Kakadu Region Compositor:\n");
        kdu_error::~kdu_error(v21);
      }

      v13 = mj2_source::access_video_track(*(this + 3), v17[0]);
      v14 = v13;
      if (v13)
      {
        (*(*v13 + 104))(v13, v20[1]);
        if (mj2_video_source::can_open_stream(v14, v20[0]))
        {
          goto LABEL_21;
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  v17[0] = 0;
  v11 = jpx_source::count_codestreams(v10, v17);
  if (!jpx_source::access_codestream(*(this + 2), a2, 1))
  {
    if (a2 < 0 || ((v17[0] <= a2) & v11) == 1)
    {
      *&v23 = 0;
      *v21 = 0u;
      v22 = 0u;
      kdu_error::kdu_error(v21, "Error in Kakadu Region Compositor:\n");
      kdu_error::~kdu_error(v21);
    }

    return 0xFFFFFFFFLL;
  }

LABEL_21:
  if (!kdu_region_compositor::add_active_stream(this, a2, -1))
  {
    v19 = 0;
    *v17 = 0u;
    v18 = 0u;
    kdu_error::kdu_error(v17, "Error in Kakadu Region Compositor:\n");
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    *v21 = 0u;
    if (LOBYTE(v17[2]))
    {
      sprintf(v21, "%x");
    }

    else
    {
      sprintf(v21, "%d");
    }

    (*(*v17 + 16))(v17, v21);
    (*(*v17 + 16))(v17, ") cannot be opened.");
    kdu_error::~kdu_error(v17);
  }

  v15 = *(this + 62);
  if (v15[69].n128_u32[0] != a2)
  {
    kdu_region_compositor::set_single_component();
  }

  return kdrc_stream::set_mode(v15, a3, a4);
}

uint64_t kdu_region_compositor::set_scale(uint64_t this, int a2, int a3, int a4, float a5)
{
  *(this + 340) = 0;
  if (*(this + 324) != 1 || *(this + 334) != a2 || *(this + 332) != a3 || *(this + 333) != a4)
  {
    *(this + 334) = a2;
    *(this + 332) = a3;
    *(this + 333) = a4;
    *(this + 336) = a5;
    *(this + 324) = 1;
    *(this + 429) = 1;
LABEL_10:
    *(this + 408) = 0;
    v6 = *(this + 512);
    v7 = v6[1];
    if (v7)
    {
      v8 = *v6;
      do
      {
        v9 = v7;
        v7 = *(v7 + 16);
        *(v9 + 16) = v8;
        v8 = v9;
      }

      while (v7);
      *v6 = v9;
      v6[1] = 0;
    }

    return this;
  }

  v5 = *(this + 336);
  if ((*(this + 429) & 1) != 0 || v5 != a5)
  {
    *(this + 334) = a2;
    *(this + 332) = a3;
    *(this + 333) = a4;
    *(this + 336) = a5;
    *(this + 324) = 1;
    *(this + 429) = 1;
    if (v5 != a5)
    {
      goto LABEL_10;
    }
  }

  return this;
}

void kdu_region_compositor::set_buffer_surface(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = (a1 + 400);
  if (*(a1 + 400) != a2 || *(a1 + 408) != a3 || *(a1 + 424) != a4)
  {
    kdu_region_compositor::flush_composition_queue(a1);
  }

  v9 = *(a1 + 392);
  if (!v9)
  {
    *(a1 + 424) = a4;
    if ((*(a1 + 429) & 1) == 0)
    {
      v12 = *(a1 + 400);
      v13 = *(a1 + 408);
      *&v44 = a2;
      *(&v44 + 1) = a3;
      v16 = (a1 + 408);
      kdu_dims::operator&=(&v44, (a1 + 376));
      v11 = 0;
      *(a1 + 400) = v44;
      goto LABEL_20;
    }

LABEL_13:
    *(a1 + 400) = a2;
    *(a1 + 408) = a3;
    return;
  }

  v10 = *(a1 + 424);
  v11 = v10 != a4;
  *(a1 + 424) = a4;
  if (*(a1 + 429) == 1)
  {
    goto LABEL_13;
  }

  v12 = *(a1 + 400);
  v13 = *(a1 + 408);
  *&v44 = a2;
  *(&v44 + 1) = a3;
  kdu_dims::operator&=(&v44, (a1 + 376));
  v14 = *(&v44 + 1);
  *(a1 + 400) = v44;
  *(a1 + 408) = v14;
  v15 = (a1 + 416);
  if (*(a1 + 420) < SHIDWORD(v14) || *v15 < v14)
  {
    *(a1 + 392) = kdu_region_compositor::internal_allocate_buffer(a1, v14, v15);
  }

  v16 = (a1 + 408);
  if (v10 == a4)
  {
    v17 = v9;
    v18 = v12;
    v19 = v13;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  initialize_buffer_surface(*(a1 + 392), *(a1 + 400), *(a1 + 408), v17, v18, v19, *(a1 + 424), 0);
  if (v9 != *(a1 + 392))
  {
    if (v9[24] == 1)
    {
      (*(*v9 + 8))(v9);
    }

    else
    {
      (*(*a1 + 64))(a1, v9);
    }
  }

LABEL_20:
  if (*(a1 + 472))
  {
    kdu_region_compositor::set_layer_buffer_surfaces(a1);
  }

  else
  {
    v20 = *(a1 + 496);
    if (!v20 || *(v20 + 1128) || (v21 = *(a1 + 392)) == 0)
    {
      kdu_region_compositor::set_buffer_surface();
    }

    kdrc_stream::set_buffer_surface(v20, v21, *(a1 + 400), *(a1 + 408), 0);
    *(a1 + 428) = 0;
  }

  *&v44 = v12;
  *(&v44 + 1) = v13;
  kdu_dims::operator&=(&v44, v8);
  if (v11 || (v29 = DWORD2(v44), v30 = HIDWORD(*(&v44 + 1)), SHIDWORD(v44) < 1) || *(&v44 + 4) <= 0)
  {
    v22 = *(a1 + 512);
    v23 = v22[1];
    if (v23)
    {
      v24 = *v22;
      do
      {
        v25 = v23;
        v23 = *(v23 + 16);
        *(v25 + 16) = v24;
        v24 = v25;
      }

      while (v23);
      *v22 = v25;
      v22[1] = 0;
    }

    v26 = *(a1 + 400);
    v27 = *(a1 + 408);
  }

  else
  {
    v31 = v16;
    v32 = v44;
    kdrc_refresh::adjust(*(a1 + 512), *(a1 + 400), *(a1 + 408));
    v33 = *(a1 + 400);
    v34 = (HIDWORD(v32) - HIDWORD(v33));
    if ((v34 & 0x80000000) != 0 || (v35 = (v30 + HIDWORD(v32)), v36 = (*(a1 + 412) - v35 + HIDWORD(v33)), (v36 & 0x80000000) != 0) || (v37 = (v32 - v33), (v37 & 0x80000000) != 0) || (v43 = v29 + v32, v38 = (v33 - (v29 + v32) + *(a1 + 408)), (v38 & 0x80000000) != 0))
    {
      kdu_region_compositor::set_buffer_surface();
    }

    v39 = v29 & 0x7FFFFFFF;
    v40 = *v31;
    if (HIDWORD(v32) != HIDWORD(v33))
    {
      kdrc_refresh::add_region(*(a1 + 512), v33 & 0xFFFFFFFF00000000 | v32, v39 | (v34 << 32));
    }

    if (v36)
    {
      kdrc_refresh::add_region(*(a1 + 512), (v35 << 32) | v32, v39 | (v36 << 32));
    }

    v41 = v40 & 0xFFFFFFFF00000000;
    v42 = HIDWORD(v40);
    if (v42 >= 1 && v32 != v33)
    {
      kdrc_refresh::add_region(*(a1 + 512), v33, v41 | v37);
    }

    if (v42 < 1 || !v38)
    {
      goto LABEL_33;
    }

    v22 = *(a1 + 512);
    v27 = v41 | v38;
    v26 = v33 & 0xFFFFFFFF00000000 | v43;
  }

  kdrc_refresh::add_region(v22, v26, v27);
LABEL_33:
  for (i = *(a1 + 496); i; i = *(i + 141))
  {
    kdrc_refresh::adjust(*(a1 + 512), i);
  }
}

uint64_t kdu_region_compositor::set_layer_buffer_surfaces(uint64_t this)
{
  v1 = *(this + 480);
  if (v1)
  {
    v2 = this;
    v3 = *(this + 408);
    v4 = *(this + 404);
    v5 = *(this + 400);
    v6 = v3 + v5;
    v7 = HIDWORD(v3) + v4;
    do
    {
      this = kdrc_layer::set_buffer_surface(v1, *(v2 + 400), *(v2 + 408), v5 | (v4 << 32), v3, *(v2 + 392), *(v2 + 431));
      *(v2 + 428) = 0;
      if ((*(v1 + 232) & 1) == 0)
      {
        v9 = *(v1 + 152);
        v8 = *(v1 + 156);
        v10 = *(v1 + 164) + v8;
        v11 = *(v1 + 160) + v9;
        if (v4 == v8 && v7 == v10)
        {
          v20 = v6 <= v9 || v6 > v11;
          if (v5 <= v11)
          {
            v21 = *(v1 + 160) + v9;
          }

          else
          {
            v21 = v5;
          }

          if (v5 < v9)
          {
            v21 = v5;
          }

          v22 = !v20;
          if (v20)
          {
            v23 = v21;
          }

          else
          {
            v23 = v5;
          }

          if (!v22)
          {
            v9 = v6;
          }

          if (v23 <= *(v2 + 400))
          {
            v5 = *(v2 + 400);
          }

          else
          {
            v5 = v23;
          }

          if (v9 <= v5)
          {
            v6 = v5;
          }

          else
          {
            v6 = v9;
          }

          v3 = v3 & 0xFFFFFFFF00000000 | (v6 - v5);
        }

        else if (v5 == v9 && v6 == v11)
        {
          v15 = v7 <= v8 || v7 > v10;
          if (v4 > v10)
          {
            v10 = v4;
          }

          if (v4 < v8)
          {
            v10 = v4;
          }

          v16 = !v15;
          if (v15)
          {
            v17 = v10;
          }

          else
          {
            v17 = v4;
          }

          if (!v16)
          {
            v8 = v7;
          }

          v18 = *(v2 + 404);
          if (v17 <= v18)
          {
            v4 = v18;
          }

          else
          {
            v4 = v17;
          }

          if (v8 <= v4)
          {
            v7 = v4;
          }

          else
          {
            v7 = v8;
          }

          v3 = v3 | ((v7 - v4) << 32);
        }
      }

      v1 = *(v1 + 248);
    }

    while (v1);
  }

  return this;
}

uint64_t kdu_region_compositor::get_total_composition_dims(kdu_region_compositor *this, kdu_dims *a2)
{
  if (*(this + 429) != 1 || (result = kdu_region_compositor::update_composition(this), result))
  {
    *a2 = *(this + 376);
    return 1;
  }

  return result;
}

uint64_t kdu_region_compositor::update_composition(kdu_region_compositor *this)
{
  *(this + 85) = 0;
  if (*(this + 324) != 1)
  {
    return 0;
  }

  v2 = (this + 340);
  v3 = *(this + 62);
  v4 = *(this + 59);
  if (!v3)
  {
    if (v4)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (!v4)
  {
    if (*(v3 + 1128))
    {
      kdu_region_compositor::update_composition();
    }

    *(this + 47) = kdrc_stream::set_scale(v3, 0, 0, 0, 0, 0, 0x100000001uLL, *(this + 334), *(this + 84), *(this + 166), HIBYTE(*(this + 166)), v2);
    *(this + 48) = v5;
    if (SHIDWORD(v5) < 1 || v5 <= 0)
    {
LABEL_10:
      result = 0;
      *(this + 324) = 0;
      return result;
    }

    v33 = (this + 376);
    goto LABEL_57;
  }

LABEL_12:
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  do
  {
    if (v4 != *(this + 59) || (*(v4 + 232) & 1) != 0 || *(v4 + 234) == 1)
    {
      v8 = 1;
    }

    if (*(v4 + 72))
    {
      v13 = kdrc_layer::set_scale(v4, *(this + 334), *(this + 332), *(this + 333), *(this + 84), v2);
      if (v14 < 1 || v15 < 1)
      {
        goto LABEL_10;
      }

      if (v9 == v12 && v10 == v11)
      {
        v12 = v15 + HIDWORD(v13);
        v11 = v14 + v13;
        v10 = v13;
        v9 = HIDWORD(v13);
      }

      else
      {
        if (v9 >= SHIDWORD(v13))
        {
          v9 = HIDWORD(v13);
        }

        else
        {
          v9 = v9;
        }

        if (v10 >= v13)
        {
          v10 = v13;
        }

        if (v15 + HIDWORD(v13) > v12)
        {
          v12 = v15 + HIDWORD(v13);
        }

        if (v11 <= v14 + v13)
        {
          v11 = v14 + v13;
        }
      }
    }

    v4 = *(v4 + 240);
  }

  while (v4);
  v33 = (this + 376);
  v17 = (v12 - v9);
  v18 = (v11 - v10);
  *(this + 47) = v10 | (v9 << 32);
  *(this + 48) = v18 | (v17 << 32);
  if (v17 < 1 || v18 < 1 || *(this + 89) > 0 && *(this + 88) >= 1)
  {
    v19 = *(this + 89);
    if (v19 < 1 || (v20 = *(this + 88), v20 <= 0))
    {
      v21 = *(this + 90);
      v22 = *(this + 91);
      v23 = *(this + 93) - v22;
      v20 = *(this + 92);
    }

    else
    {
      v21 = *(this + 86);
      v22 = *(this + 87);
      v23 = v19 - v22;
    }

    v24 = v20 - v21;
    v25 = *(this + 84);
    v26 = vcvtmd_s64_f64(v22 * v25);
    LODWORD(v27) = vcvtmd_s64_f64(v21 * v25);
    v28 = (vcvtpd_s64_f64(v25 * v24) - v27) | ((vcvtpd_s64_f64(v25 * v23) - v26) << 32);
    v29 = __ROR8__(v28, 32);
    if (*(this + 334))
    {
      v30 = v26;
    }

    else
    {
      v30 = v27;
    }

    if (*(this + 334))
    {
      v31 = v29;
    }

    else
    {
      LODWORD(v27) = v26;
      v31 = v28;
    }

    if (*(this + 333))
    {
      v27 = (1 - v27 - HIDWORD(v31));
    }

    else
    {
      v27 = v27;
    }

    LODWORD(v32) = 1 - v30 - v31;
    if (*(this + 332))
    {
      v32 = v32;
    }

    else
    {
      v32 = v30;
    }

    *(this + 47) = v32 | (v27 << 32);
    *(this + 48) = v31;
LABEL_57:
    kdu_dims::operator&=(this + 100, v33);
    goto LABEL_58;
  }

  kdu_dims::operator&=(this + 100, v33);
  if ((v8 & 1) == 0)
  {
    v37 = *(this + 49);
    if (v37)
    {
      if (v37[24] == 1)
      {
        (*(*v37 + 8))(*(this + 49));
      }

      else
      {
        (*(*this + 64))(this);
      }

      *(this + 49) = 0;
      *(this + 52) = 0;
    }

    goto LABEL_71;
  }

LABEL_58:
  v34 = *(this + 102);
  v35 = *(this + 103);
  buffer = *(this + 49);
  if (buffer)
  {
    if (v35 <= *(this + 105) && v34 <= *(this + 104))
    {
      goto LABEL_70;
    }

    if (buffer[24] == 1)
    {
      (*(*buffer + 8))(*(this + 49));
    }

    else
    {
      (*(*this + 64))(this, *(this + 49));
    }

    *(this + 49) = 0;
  }

  buffer = kdu_region_compositor::internal_allocate_buffer(this, v34 | (v35 << 32), this + 52);
  *(this + 49) = buffer;
LABEL_70:
  initialize_buffer_surface(buffer, *(this + 50), *(this + 51), 0, 0, 0, *(this + 106), 0);
LABEL_71:
  if (*(this + 59))
  {
    kdu_region_compositor::set_layer_buffer_surfaces(this);
    for (i = *(this + 59); i; i = *(i + 240))
    {
      kdrc_layer::configure_overlay(i, *(this + 430), *(this + 110), *(this + 109));
    }
  }

  else
  {
    kdrc_stream::set_buffer_surface(*(this + 62), *(this + 49), *(this + 50), *(this + 51), 1);
  }

  v39 = *(this + 64);
  v40 = v39[1];
  if (v40)
  {
    v41 = *v39;
    do
    {
      v42 = v40;
      v40 = *(v40 + 16);
      *(v42 + 16) = v41;
      v41 = v42;
    }

    while (v40);
    *v39 = v42;
    v39[1] = 0;
  }

  kdrc_refresh::add_region(v39, *(this + 50), *(this + 51));
  for (j = *(this + 62); j; j = *(j + 141))
  {
    kdrc_refresh::adjust(*(this + 64), j);
  }

  *(this + 214) = 0;
  return 1;
}

uint64_t kdu_region_compositor::set_thread_env(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (*(a2 + 32))
    {
      v4 = a2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  if (v4 != a1[65] || v5 != a1[66])
  {
    for (i = a1[62]; i; i = *(i + 1128))
    {
      kdrc_stream::set_thread_env(i, v4, v5);
    }

    for (j = a1[63]; j; j = *(j + 1128))
    {
      kdrc_stream::set_thread_env(j, v4, v5);
    }
  }

  result = a1[65];
  a1[65] = v4;
  a1[66] = v5;
  return result;
}

uint64_t kdu_region_compositor::process(kdu_region_compositor *this, int a2, kdu_dims *a3)
{
  *(this + 85) = 0;
  if (*(this + 429) == 1)
  {
    result = kdu_region_compositor::update_composition(this);
    if (!result)
    {
      return result;
    }
  }

  if (*(this + 428))
  {
    return 0;
  }

  *(this + 428) = 1;
  v7 = *(this + 64);
  v8 = v7[1];
  if (v8)
  {
    v9 = *(v8 + 16);
    *(v8 + 16) = *v7;
    *v7 = v8;
    v7[1] = v9;
    *a3 = *v8;
LABEL_6:
    *(this + 428) = 0;
    goto LABEL_7;
  }

  v11 = *(this + 62);
  if (!v11)
  {
    goto LABEL_30;
  }

  v12 = 0;
  do
  {
    if ((*(v11 + 1124) & 1) == 0 && ((*(v11 + 1068) & 1) != 0 || (*(*(v11 + 1136) + 296) & 1) == 0) && (!v12 || *(v11 + 1120) > *(v12 + 1120)))
    {
      v12 = v11;
    }

    v11 = *(v11 + 1128);
  }

  while (v11);
  if (!v12)
  {
LABEL_30:
    v13 = *(this + 59);
    if (!v13)
    {
      goto LABEL_7;
    }

    while (*(v13 + 234) != 1 || (kdrc_layer::process_overlay(v13, a3) & 1) == 0)
    {
      v13 = *(v13 + 240);
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  if (*(v12 + 1124) == 1)
  {
    kdu_region_compositor::process();
  }

  *(this + 428) = 0;
  if ((kdrc_stream::process(v12, a2, a3, this + 85) & 1) == 0)
  {
    if (!*(this + 85))
    {
      kdu_region_compositor::process();
    }

    result = 0;
    *(this + 324) = 0;
    *(this + 429) = 1;
    return result;
  }

LABEL_7:
  if (*(this + 428))
  {
    return 0;
  }

  if (!*(this + 49))
  {
    return 1;
  }

  v10 = *(this + 59);
  result = 1;
  if (v10 && *(a3 + 3) >= 1 && *(a3 + 2) >= 1)
  {
    do
    {
      kdrc_layer::update_composition(v10, *a3, *(a3 + 1), *(this + 106));
      v10 = *(v10 + 240);
    }

    while (v10);
    return 1;
  }

  return result;
}

void *kdu_region_compositor::reset(void *this)
{
  for (i = this[62]; i; i = *(i + 1128))
  {
    *(i + 1124) = 0;
  }

  if (this[49])
  {
    this[51] = 0;
  }

  return this;
}

uint64_t kdu_region_compositor::get_next_codestream(kdu_region_compositor *this, kdrc_stream *a2, char a3, int a4)
{
  if (a2 && (*(a2 + 1125) & 1) == 0)
  {
    v7 = a2 + 1128;
    goto LABEL_9;
  }

  v4 = a3 ^ 1;
  v5 = this + 496;
  if (a2)
  {
    v5 = a2 + 1128;
  }

  v6 = *v5;
  if (!v6 && (a3 & 1) == 0)
  {
    v7 = this + 504;
LABEL_9:
    v4 = 0;
    v6 = *v7;
  }

  if (v6)
  {
    v8 = v6;
    while (a4)
    {
      if (*(*(v8 + 1136) + 320) == v8)
      {
        return v8;
      }

      v8 = *(v8 + 1128);
      if (((v8 == 0) & v4) == 1)
      {
        v4 = 0;
        v8 = *(this + 63);
      }

      if (!v8)
      {
        return 0;
      }
    }
  }

  return v6;
}

uint64_t kdu_region_compositor::access_codestream(kdu_region_compositor *this, kdrc_stream *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a2 + 142);
  v4 = *(v3 + 320);
  if (v4)
  {
    do
    {
      if (*(v4 + 1068) == 1)
      {
        kdu_region_decompressor::finish((v4 + 120));
        *(*(v4 + 1136) + 296) = 0;
        *(v4 + 1068) = 0;
      }

      v4 = *(v4 + 1144);
    }

    while (v4);
    v3 = *(a2 + 142);
  }

  return *(v3 + 288);
}

uint64_t kdu_region_compositor::paint_overlay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, int a11, int a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v103[0] = a3;
  v103[1] = a4;
  v102 = a8;
  num_regions = jpx_metanode::get_num_regions(&v102);
  result = jpx_metanode::get_regions(&v102);
  if (num_regions >= 1)
  {
    v22 = result;
    v23 = a10;
    if (a12 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = a12;
    }

    if (a11 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = a11;
    }

    v26 = a16 >> 32;
    if (a17 >> 32 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = a17 >> 32;
    }

    LODWORD(result) = a16;
    if (a17 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = a17;
    }

    v29 = (a9 >> 7) & 0xFFFFFF00 | a9;
    if (v29 >= 2)
    {
      v29 = 2;
    }

    if (v29 <= -2)
    {
      v29 = -2;
    }

    v30 = a6 * SHIDWORD(a6);
    if ((a9 & 0x100) != 0)
    {
      v31 = 0;
    }

    else
    {
      v31 = 0xFFFFFF;
    }

    v95 = v31;
    v99 = ((a9 >> 8) % 6);
    v94 = v29 << 29;
    v97 = v25;
    v98 = v24;
    v96 = v27;
    do
    {
      v32 = *v22;
      v33 = (*v22 & 0xFFFFFFFF00000000) + v23;
      v34 = HIDWORD(v33);
      if (v33 <= 0)
      {
        v35 = -(-HIDWORD(v33) / v24);
      }

      else
      {
        v35 = (HIDWORD(v33) - 1) / v24 + 1;
      }

      v36 = v32 + v23;
      if (v32 + v23 <= 0)
      {
        v37 = -(-v36 / v25);
      }

      else
      {
        v37 = (v36 - 1) / v25 + 1;
      }

      v38 = *(v22 + 12);
      v39 = __OFADD__(v34, v38);
      v40 = v34 + v38;
      if ((v40 < 0) ^ v39 | (v40 == 0))
      {
        v41 = -(-v40 / v24);
      }

      else
      {
        v41 = (v40 - 1) / v24 + 1;
      }

      v42 = *(v22 + 8) + v36;
      if (v42 <= 0)
      {
        v43 = -(-v42 / v25);
      }

      else
      {
        v43 = (v42 - 1) / v25 + 1;
      }

      v44 = (v43 - v37) | ((v41 - v35) << 32);
      v45 = __ROR8__(v44, 32);
      if (a13)
      {
        v46 = v35;
      }

      else
      {
        v46 = v37;
      }

      if (a13)
      {
        v35 = v37;
        v44 = v45;
      }

      if (a15)
      {
        v47 = 1 - v35 - HIDWORD(v44);
      }

      else
      {
        v47 = v35;
      }

      if (a14)
      {
        v48 = 1 - v46 - v44;
      }

      else
      {
        v48 = v46;
      }

      v49 = v26 * v47;
      if ((v49 & 0x8000000000000000) != 0)
      {
        v51 = ~v49 / v27;
        if (v51 >> 31)
        {
          kdrc_overlay::map_from_compositing_grid();
        }

        v50 = ~v51;
      }

      else
      {
        v50 = v49 / v27;
        if (v50 >> 31)
        {
          kdrc_overlay::map_from_compositing_grid();
        }
      }

      v52 = result * v48;
      if ((v52 & 0x8000000000000000) != 0)
      {
        v53 = ~v52 / v28;
        if (v53 >> 31)
        {
          kdrc_overlay::map_from_compositing_grid();
        }

        LODWORD(v53) = ~v53;
      }

      else
      {
        v53 = v52 / v28;
        if (v53 >> 31)
        {
          kdrc_overlay::map_from_compositing_grid();
        }
      }

      v54 = v26 * (v47 + HIDWORD(v44));
      if (v54 <= 0)
      {
        v56 = -v54 / v27;
        if (v56 >= 0x80000001)
        {
          goto LABEL_109;
        }

        v55 = -v56;
      }

      else
      {
        v55 = (v54 - 1) / v27;
        if (v55 >= 0x7FFFFFFF)
        {
          goto LABEL_109;
        }

        LODWORD(v55) = v55 + 1;
      }

      v57 = result * (v48 + v44);
      if (v57 <= 0)
      {
        v59 = -v57 / v28;
        if (v59 >= 0x80000001)
        {
LABEL_109:
          exception = __cxa_allocate_exception(4uLL);
          *exception = -50;
          __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
        }

        v58 = -v59;
      }

      else
      {
        v58 = (v57 - 1) / v28;
        if (v58 >= 0x7FFFFFFF)
        {
          goto LABEL_109;
        }

        LODWORD(v58) = v58 + 1;
      }

      v60 = v95;
      if (v30 > 63)
      {
        v60 = 0;
      }

      if (v30 >= 64 && v99 <= 5)
      {
        v60 = dword_186208650[v99];
      }

      v61 = v55 - v50;
      v62 = v58 - v53;
      v63 = v50 - HIDWORD(a18);
      v64 = v53 - a18;
      v65 = v60 - v94;
      v100 = (v53 - a18) | ((v50 - HIDWORD(a18)) << 32);
      v101 = (v58 - v53) | ((v55 - v50) << 32);
      kdu_dims::operator&=(&v100, v103);
      v100 = vsub_s32(v100, v103[0]);
      v67 = xmmword_186205EC0;
      v66 = xmmword_186205EB0;
      if (SHIDWORD(v101) >= 1)
      {
        v68 = v101;
        if (v101 >= 1)
        {
          if ((*(a2 + 27) & 1) != 0 || ((*(*a2 + 24))(a2, 0), v67 = xmmword_186205EC0, v66 = xmmword_186205EB0, v68 = v101, v101 >= 1))
          {
            v69 = v65 - 1090519040;
            v70 = *(a2 + 44);
            v71 = *(a2 + 32) + 4 * (HIDWORD(v100) + v100 * v70) + 8;
            v72 = 4 * v70;
            do
            {
              if (SHIDWORD(v101) >= 1)
              {
                v73 = 0;
                v74 = (HIDWORD(v101) + 3) & 0xFFFFFFFC;
                v75 = vdupq_n_s64(HIDWORD(v101) - 1);
                v76 = v71;
                do
                {
                  v77 = vdupq_n_s64(v73);
                  v78 = vmovn_s64(vcgeq_u64(v75, vorrq_s8(v77, v67)));
                  if (vuzp1_s16(v78, *v75.i8).u8[0])
                  {
                    *(v76 - 2) = v69;
                  }

                  if (vuzp1_s16(v78, *&v75).i8[2])
                  {
                    *(v76 - 1) = v69;
                  }

                  if (vuzp1_s16(*&v75, vmovn_s64(vcgeq_u64(v75, vorrq_s8(v77, v66)))).i32[1])
                  {
                    *v76 = v69;
                    v76[1] = v69;
                  }

                  v73 += 4;
                  v76 += 4;
                }

                while (v74 != v73);
              }

              v71 += v72;
              v39 = __OFSUB__(v68--, 1);
            }

            while (!((v68 < 0) ^ v39 | (v68 == 0)));
          }
        }
      }

      LODWORD(v100) = v64 + 3;
      HIDWORD(v100) = v63 + 3;
      LODWORD(v101) = v62 - 6;
      HIDWORD(v101) = v61 - 6;
      kdu_dims::operator&=(&v100, v103);
      v80 = xmmword_186205EC0;
      v79 = xmmword_186205EB0;
      v100 = vsub_s32(v100, v103[0]);
      v81 = v101;
      if (SHIDWORD(v101) >= 1 && v101 >= 1)
      {
        if ((*(a2 + 27) & 1) != 0 || ((*(*a2 + 24))(a2, 0), v80 = xmmword_186205EC0, v79 = xmmword_186205EB0, v81 = v101, v101 >= 1))
        {
          v83 = v65 + 1610612736;
          v84 = *(a2 + 44);
          v85 = *(a2 + 32) + 4 * (HIDWORD(v100) + v100 * v84) + 8;
          v86 = 4 * v84;
          do
          {
            if (SHIDWORD(v101) >= 1)
            {
              v87 = 0;
              v88 = (HIDWORD(v101) + 3) & 0xFFFFFFFC;
              v89 = vdupq_n_s64(HIDWORD(v101) - 1);
              v90 = v85;
              do
              {
                v91 = vdupq_n_s64(v87);
                v92 = vmovn_s64(vcgeq_u64(v89, vorrq_s8(v91, v80)));
                if (vuzp1_s16(v92, *v89.i8).u8[0])
                {
                  *(v90 - 2) = v83;
                }

                if (vuzp1_s16(v92, *&v89).i8[2])
                {
                  *(v90 - 1) = v83;
                }

                if (vuzp1_s16(*&v89, vmovn_s64(vcgeq_u64(v89, vorrq_s8(v91, v79)))).i32[1])
                {
                  *v90 = v83;
                  v90[1] = v83;
                }

                v87 += 4;
                v90 += 4;
              }

              while (v88 != v87);
            }

            v85 += v86;
            v39 = __OFSUB__(v81--, 1);
          }

          while (!((v81 < 0) ^ v39 | (v81 == 0)));
        }
      }

      v22 += 20;
      v39 = __OFSUB__(num_regions--, 1);
      v23 = a10;
      v25 = v97;
      v24 = v98;
      v27 = v96;
      LODWORD(v26) = HIDWORD(a16);
      result = a16;
    }

    while (!((num_regions < 0) ^ v39 | (num_regions == 0)));
  }

  return result;
}

void kdrc_codestream::~kdrc_codestream(kdrc_codestream *this)
{
  if (*(this + 40))
  {
    __assert_rtn("~kdrc_codestream", "region_compositor_local.h", 217, "head == NULL");
  }

  if (*(this + 36))
  {
    kdu_codestream::destroy(this + 36);
  }

  jpx_input_box::~jpx_input_box((this + 8));
}

void kdrc_refresh::~kdrc_refresh(kdrc_refresh *this)
{
  for (i = *(this + 1); i; i = *(this + 1))
  {
    *(this + 1) = *(i + 16);
    MEMORY[0x186602850]();
  }

  while (*this)
  {
    *this = *(*this + 16);
    MEMORY[0x186602850]();
  }
}

void kdrc_queue::~kdrc_queue(kdrc_queue *this)
{
  if (*this)
  {
    __assert_rtn("~kdrc_queue", "region_compositor_local.h", 59, "composition_buffer == NULL");
  }
}

uint64_t _cg_jpeg_idct_ifast(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 440);
  v6 = (a3 + 64);
  v7 = v70;
  v8 = 9;
  memset(v70, 0, sizeof(v70));
  v9 = *(a2 + 88);
  do
  {
    v10 = *(v6 - 16);
    if (*(v6 - 24) | v10)
    {
      goto LABEL_9;
    }

    if (*(v6 - 8) || *v6 || v6[8] || v6[16] || v6[24])
    {
      v10 = 0;
LABEL_9:
      v11 = *v9 * *(v6 - 32);
      v12 = v9[16] * v10;
      v13 = v9[32] * *v6;
      v14 = v9[48] * v6[16];
      v15 = v13 + v11;
      v16 = v11 - v13;
      v17 = v14 + v12;
      v18 = ((362 * (v12 - v14)) >> 8) - (v14 + v12);
      v19 = v17 + v15;
      v20 = v15 - v17;
      v21 = v18 + v16;
      v22 = v16 - v18;
      v23 = v9[8] * *(v6 - 24);
      v24 = v9[24] * *(v6 - 8);
      v25 = v9[40] * v6[8];
      v26 = v9[56] * v6[24];
      v27 = v25 + v24;
      v28 = v25 - v24;
      v29 = v26 + v23;
      v30 = v23 - v26;
      v31 = v29 + v27;
      v32 = (362 * (v29 - v27)) >> 8;
      *v7 = v31 + v19;
      v33 = (473 * (v30 + v28)) >> 8;
      v34 = v33 - (v31 + ((669 * v28) >> 8));
      LODWORD(v32) = v32 - v34;
      v7[56] = v19 - v31;
      v7[8] = v34 + v21;
      v35 = v33 - ((277 * v30) >> 8) - v32;
      v7[48] = v21 - v34;
      v7[16] = v32 + v22;
      v7[40] = v22 - v32;
      v7[24] = v35 + v20;
      v36 = v20 - v35;
      v37 = 32;
      goto LABEL_10;
    }

    v36 = *v9 * *(v6 - 32);
    *v7 = v36;
    v7[8] = v36;
    v7[16] = v36;
    v7[24] = v36;
    v7[32] = v36;
    v7[40] = v36;
    v7[48] = v36;
    v37 = 56;
LABEL_10:
    v7[v37] = v36;
    ++v7;
    ++v9;
    --v8;
    ++v6;
  }

  while (v8 > 1);
  v38 = 0;
  v39 = v5 - 384;
  v40 = a5;
  do
  {
    v41 = &v70[v38];
    v42 = (*a4 + v40);
    v43 = DWORD1(v70[v38]);
    v44 = (LODWORD(v70[v38]) + 16400);
    v45 = DWORD2(v70[v38]);
    if (*(&v70[v38] + 4))
    {
      goto LABEL_20;
    }

    if (v41[3] || LODWORD(v70[v38 + 1]) || DWORD1(v70[v38 + 1]) || DWORD2(v70[v38 + 1]) || HIDWORD(v70[v38 + 1]))
    {
      v45 = 0;
LABEL_20:
      v47 = v41[3];
      v46 = v41[4];
      v48 = v46 + v44;
      v49 = v44 - v46;
      v51 = v41[5];
      v50 = v41[6];
      v52 = v50 + v45;
      v53 = ((362 * (v45 - v50)) >> 8) - (v50 + v45);
      v54 = v52 + v48;
      v55 = v48 - v52;
      v56 = v53 + v49;
      v57 = v49 - v53;
      v58 = v47 + v51;
      v59 = v51 - v47;
      v60 = v41[7];
      v61 = v60 + v43;
      v62 = v43 - v60;
      v63 = v61 + v58;
      v64 = (362 * (v61 - v58)) >> 8;
      *v42 = *(v39 + (((v63 + v54) >> 5) & 0x3FF));
      v65 = (473 * (v62 + v59)) >> 8;
      v66 = v65 - (v63 + ((669 * v59) >> 8));
      v42[7] = *(v39 + (((v54 - v63) >> 5) & 0x3FF));
      v42[1] = *(v39 + (((v66 + v56) >> 5) & 0x3FF));
      LODWORD(v64) = v64 - v66;
      v42[6] = *(v39 + (((v56 - v66) >> 5) & 0x3FF));
      v42[2] = *(v39 + (((v64 + v57) >> 5) & 0x3FF));
      v67 = v65 - ((277 * v62) >> 8) - v64;
      v42[5] = *(v39 + (((v57 - v64) >> 5) & 0x3FF));
      v42[3] = *(v39 + (((v67 + v55) >> 5) & 0x3FF));
      result = *(v39 + (((v55 - v67) >> 5) & 0x3FF));
      v69 = 4;
      goto LABEL_21;
    }

    result = *(v39 + ((v44 >> 5) & 0x3FF));
    *v42 = vdup_n_s8(result).u32[0];
    v42[4] = result;
    v42[5] = result;
    v42[6] = result;
    v69 = 7;
LABEL_21:
    v42[v69] = result;
    ++a4;
    v38 += 2;
  }

  while (v38 != 16);
  return result;
}

uint64_t kdu_convert_rgb_to_ycc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*a2 != *a1 || *a3 != v3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 6);
  v6 = *(a2 + 6);
  if ((v5 ^ v6))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a3 + 6);
  if ((v5 ^ v7))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 8);
  if ((v5 & 2) == 0 && v8)
  {
    if ((v7 & 2) == 0)
    {
      result = 0xFFFFFFFFLL;
      if ((v6 & 2) == 0)
      {
        v10 = *(a2 + 8);
        if (v10)
        {
          v11 = *(a3 + 8);
          if (v11)
          {
            if (v5)
            {
              if (v3 >= 1)
              {
                v12 = v3 + 1;
                do
                {
                  result = 0;
                  v13 = *v11 - *v10;
                  v14 = *v8 - *v10;
                  *v8 = (*v8 + 2 * *v10 + *v11) >> 2;
                  v8 += 2;
                  *v10++ = v13;
                  *v11++ = v14;
                  --v12;
                }

                while (v12 > 1);
                return result;
              }

              return 0;
            }

            if (v3 < 1)
            {
              return 0;
            }

            v25 = v3 + 1;
            do
            {
              result = 0;
              v26 = *v8;
              v27 = *v11;
              v28 = *v10 * 0.587 + v26 * 0.299 + v27 * 0.114;
              v29 = (v27 - v28) * 0.564334086;
              v30 = v26 - v28;
              *&v28 = v28;
              *v8 = LODWORD(v28);
              v8 += 2;
              *&v28 = v29;
              *v10++ = LODWORD(v28);
              *&v30 = v30 * 0.713266762;
              *v11++ = LODWORD(v30);
              --v25;
            }

            while (v25 > 1);
          }
        }
      }

      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if ((v7 & 2) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (v8)
  {
    if ((v6 & 2) != 0)
    {
      v15 = *(a2 + 8);
      if (v15)
      {
        v16 = *(a3 + 8);
        if (v16)
        {
          if (v5)
          {
            if (v3 < 1)
            {
              return 0;
            }

            v17 = v3 + 1;
            do
            {
              result = 0;
              v18 = *v8;
              v19 = *v15;
              v20 = *v16;
              *v8++ = (v18 + 2 * v19 + v20) >> 2;
              *v15++ = v20 - v19;
              *v16++ = v18 - v19;
              --v17;
            }

            while (v17 > 1);
          }

          else
          {
            if (v3 < 1)
            {
              return 0;
            }

            v21 = v3 + 1;
            do
            {
              result = 0;
              v22 = *v8;
              v23 = *v16;
              v24 = 9617 * *v15 + 4899 * v22 + 1868 * v23 + 0x2000;
              *v8++ = v24 >> 14;
              *v15++ = (9246 * (v23 - (v24 >> 14)) + 0x2000) >> 14;
              *v16++ = (11686 * (v22 - (v24 >> 14)) + 0x2000) >> 14;
              --v21;
            }

            while (v21 > 1);
          }
        }
      }
    }
  }

  return result;
}

uint64_t kdu_convert_ycc_to_rgb(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 0)
  {
    v4 = a4;
  }

  else
  {
    v4 = *a1;
  }

  if (*a1 < v4 || *a2 < v4 || *a3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 6);
  v8 = *(a2 + 6);
  if ((v7 ^ v8))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a3 + 6);
  if ((v7 ^ v9))
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 8);
  if ((v7 & 2) == 0 && v10)
  {
    if ((v9 & 2) == 0)
    {
      result = 0xFFFFFFFFLL;
      if ((v8 & 2) == 0)
      {
        v12 = *(a2 + 8);
        if (v12)
        {
          v13 = *(a3 + 8);
          if (v13)
          {
            if (v7)
            {
              if (v4 >= 1)
              {
                v14 = v4 + 1;
                do
                {
                  result = 0;
                  v15 = *v10 - ((*v13 + *v12) >> 2);
                  v16 = v15 + *v12;
                  *v10++ = v15 + *v13;
                  *v12++ = v15;
                  *v13++ = v16;
                  --v14;
                }

                while (v14 > 1);
                return result;
              }

              return 0;
            }

            if (v4 < 1)
            {
              return 0;
            }

            v27 = v4 + 1;
            do
            {
              result = 0;
              v28 = *v10;
              v29 = *v12;
              v30 = *v13;
              v31 = v28 + v30 * 1.402;
              *v10++ = v31;
              *&v30 = v28 + v30 * -0.714136286 + v29 * -0.344136286;
              *v12++ = LODWORD(v30);
              *&v28 = v28 + v29 * 1.772;
              *v13++ = *&v28;
              --v27;
            }

            while (v27 > 1);
          }
        }
      }

      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if ((v9 & 2) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (v10)
  {
    if ((v8 & 2) != 0)
    {
      v17 = *(a2 + 8);
      if (v17)
      {
        v18 = *(a3 + 8);
        if (v18)
        {
          if (v7)
          {
            if (v4 < 1)
            {
              return 0;
            }

            v19 = v4 + 1;
            do
            {
              result = 0;
              v20 = *v17;
              v21 = *v18;
              v22 = *v10 - ((v21 + v20) >> 2);
              *v10 = *v10 - ((v21 + v20) >> 2) + v21;
              v10 = (v10 + 2);
              *v17++ = v22;
              *v18++ = v22 + v20;
              --v19;
            }

            while (v19 > 1);
          }

          else
          {
            if (v4 < 1)
            {
              return 0;
            }

            v23 = v4 + 1;
            do
            {
              result = 0;
              v24 = *v17;
              v25 = *v18;
              v26 = (*v10 << 14) | 0x2000;
              *v10 = (v26 + 22970 * v25) >> 14;
              v10 = (v10 + 2);
              *v17++ = (v26 + 1073736186 * v24 + 1073730124 * v25) >> 14;
              *v18++ = (v26 + 29032 * v24) >> 14;
              --v23;
            }

            while (v23 > 1);
          }
        }
      }
    }
  }

  return result;
}

uint64_t jpeg_core_output_dimensions(uint64_t a1)
{
  v2 = *(a1 + 556);
  v3 = *(a1 + 72);
  v4 = v2 * *(a1 + 68);
  if (v4 <= v3)
  {
    *(a1 + 136) = jdiv_round_up(*(a1 + 48), v2);
    result = jdiv_round_up(*(a1 + 52), *(a1 + 556));
    *(a1 + 140) = result;
    *(a1 + 424) = 0x100000001;
    v8 = 1;
  }

  else if (v4 <= 2 * v3)
  {
    *(a1 + 136) = jdiv_round_up(2 * *(a1 + 48), v2);
    result = jdiv_round_up(2 * *(a1 + 52), *(a1 + 556));
    *(a1 + 140) = result;
    *(a1 + 424) = 0x200000002;
    v8 = 2;
  }

  else if (v4 <= 3 * v3)
  {
    *(a1 + 136) = jdiv_round_up(3 * *(a1 + 48), v2);
    result = jdiv_round_up(3 * *(a1 + 52), *(a1 + 556));
    *(a1 + 140) = result;
    *(a1 + 424) = 0x300000003;
    v8 = 3;
  }

  else if (v4 <= 4 * v3)
  {
    *(a1 + 136) = jdiv_round_up(4 * *(a1 + 48), v2);
    result = jdiv_round_up(4 * *(a1 + 52), *(a1 + 556));
    *(a1 + 140) = result;
    *(a1 + 424) = 0x400000004;
    v8 = 4;
  }

  else if (v4 <= 5 * v3)
  {
    *(a1 + 136) = jdiv_round_up(5 * *(a1 + 48), v2);
    result = jdiv_round_up(5 * *(a1 + 52), *(a1 + 556));
    *(a1 + 140) = result;
    *(a1 + 424) = 0x500000005;
    v8 = 5;
  }

  else if (v4 <= 6 * v3)
  {
    *(a1 + 136) = jdiv_round_up(6 * *(a1 + 48), v2);
    result = jdiv_round_up(6 * *(a1 + 52), *(a1 + 556));
    *(a1 + 140) = result;
    *(a1 + 424) = 0x600000006;
    v8 = 6;
  }

  else if (v4 <= 7 * v3)
  {
    *(a1 + 136) = jdiv_round_up(7 * *(a1 + 48), v2);
    result = jdiv_round_up(7 * *(a1 + 52), *(a1 + 556));
    *(a1 + 140) = result;
    *(a1 + 424) = 0x700000007;
    v8 = 7;
  }

  else if (v4 <= 8 * v3)
  {
    *(a1 + 136) = jdiv_round_up(8 * *(a1 + 48), v2);
    result = jdiv_round_up(8 * *(a1 + 52), *(a1 + 556));
    *(a1 + 140) = result;
    *(a1 + 424) = 0x800000008;
    v8 = 8;
  }

  else if (v4 <= 9 * v3)
  {
    *(a1 + 136) = jdiv_round_up(9 * *(a1 + 48), v2);
    result = jdiv_round_up(9 * *(a1 + 52), *(a1 + 556));
    *(a1 + 140) = result;
    *(a1 + 424) = 0x900000009;
    v8 = 9;
  }

  else if (v4 <= 10 * v3)
  {
    *(a1 + 136) = jdiv_round_up(10 * *(a1 + 48), v2);
    result = jdiv_round_up(10 * *(a1 + 52), *(a1 + 556));
    *(a1 + 140) = result;
    *(a1 + 424) = 0xA0000000ALL;
    v8 = 10;
  }

  else if (v4 <= 11 * v3)
  {
    v8 = 11;
    *(a1 + 136) = jdiv_round_up(11 * *(a1 + 48), v2);
    result = jdiv_round_up(11 * *(a1 + 52), *(a1 + 556));
    *(a1 + 140) = result;
    *(a1 + 424) = 0xB0000000BLL;
  }

  else if (v4 <= 12 * v3)
  {
    *(a1 + 136) = jdiv_round_up(12 * *(a1 + 48), v2);
    result = jdiv_round_up(12 * *(a1 + 52), *(a1 + 556));
    *(a1 + 140) = result;
    *(a1 + 424) = 0xC0000000CLL;
    v8 = 12;
  }

  else if (v4 <= 13 * v3)
  {
    v8 = 13;
    *(a1 + 136) = jdiv_round_up(13 * *(a1 + 48), v2);
    result = jdiv_round_up(13 * *(a1 + 52), *(a1 + 556));
    *(a1 + 140) = result;
    *(a1 + 424) = 0xD0000000DLL;
  }

  else if (v4 <= 14 * v3)
  {
    *(a1 + 136) = jdiv_round_up(14 * *(a1 + 48), v2);
    result = jdiv_round_up(14 * *(a1 + 52), *(a1 + 556));
    *(a1 + 140) = result;
    *(a1 + 424) = 0xE0000000ELL;
    v8 = 14;
  }

  else
  {
    v5 = 15 * v3;
    v6 = *(a1 + 48);
    if (v4 <= v5)
    {
      *(a1 + 136) = jdiv_round_up(15 * v6, v2);
      result = jdiv_round_up(15 * *(a1 + 52), *(a1 + 556));
      *(a1 + 140) = result;
      *(a1 + 424) = 0xF0000000FLL;
      v8 = 15;
    }

    else
    {
      *(a1 + 136) = jdiv_round_up(16 * v6, v2);
      result = jdiv_round_up(16 * *(a1 + 52), *(a1 + 556));
      *(a1 + 140) = result;
      *(a1 + 424) = 0x1000000010;
      v8 = 16;
    }
  }

  v9 = *(a1 + 56);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 304) + 40);
    do
    {
      *(v10 - 1) = v8;
      *v10 = v8;
      v10 += 24;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t _cg_jinit_input_controller(uint64_t a1)
{
  result = (**(a1 + 8))();
  *(a1 + 608) = result;
  *result = consume_markers;
  *(result + 8) = reset_input_controller;
  *(result + 16) = start_input_pass_0;
  *(result + 24) = finish_input_pass;
  *(result + 32) = 0;
  *(result + 40) = 1;
  return result;
}

uint64_t consume_markers(uint64_t *a1)
{
  v1 = a1[76];
  v2 = 2;
  if (v1[9])
  {
    return v2;
  }

  while (1)
  {
    v5 = (*(a1[77] + 8))(a1);
    if (v5 != 1)
    {
      break;
    }

    v7 = v1[10];
    if (v7)
    {
      if (v7 != 1)
      {
        if (*(a1 + 112))
        {
          goto LABEL_86;
        }

        goto LABEL_37;
      }

      if (*(a1 + 13) > 0xFFDCu || *(a1 + 12) >= 0xFFDDu)
      {
        v8 = *a1;
        *(v8 + 10) = 42;
        *(v8 + 12) = 65500;
        (**a1)(a1);
      }

      v9 = *(a1 + 74);
      if ((v9 - 13) <= 0xFFFFFFFA)
      {
        v10 = *a1;
        *(v10 + 10) = 16;
        *(v10 + 12) = v9;
        (**a1)(a1);
      }

      v11 = *(a1 + 14);
      if (v11 >= 11)
      {
        v12 = *a1;
        *(v12 + 10) = 27;
        *(v12 + 12) = v11;
        *(*a1 + 52) = 10;
        (**a1)(a1);
        v11 = *(a1 + 14);
      }

      a1[52] = 0x100000001;
      if (v11 >= 1)
      {
        v13 = 0;
        v14 = a1[38] + 8;
        v6.n128_u64[0] = 0x100000001;
        do
        {
          if ((*v14 - 5) >= 0xFFFFFFFC && (*(v14 + 4) - 5) > 0xFFFFFFFB)
          {
            v16 = *v14;
          }

          else
          {
            v15 = *a1;
            *(v15 + 40) = 19;
            (*v15)(a1, v6);
            v6.n128_u64[0] = a1[52];
            v16 = *v14;
            v11 = *(a1 + 14);
          }

          v6.n128_u64[0] = vmax_s32(v6.n128_u64[0], v16);
          a1[52] = v6.n128_u64[0];
          ++v13;
          v14 += 96;
        }

        while (v13 < v11);
      }

      if (*(a1 + 78) || *(a1 + 79) && *(a1 + 112))
      {
LABEL_21:
        v17 = 8;
LABEL_22:
        *(a1 + 139) = v17;
        a1[70] = &_cg_jpeg_natural_order;
        *(a1 + 142) = 63;
        goto LABEL_23;
      }

      v24 = *(a1 + 136);
      if (v24 > 79)
      {
        if (v24 > 167)
        {
          if (v24 > 223)
          {
            if (v24 == 224)
            {
              v17 = 15;
              goto LABEL_22;
            }

            if (v24 == 255)
            {
              v17 = 16;
              goto LABEL_22;
            }
          }

          else
          {
            if (v24 == 168)
            {
              v17 = 13;
              goto LABEL_22;
            }

            if (v24 == 195)
            {
              v17 = 14;
              goto LABEL_22;
            }
          }
        }

        else if (v24 > 119)
        {
          if (v24 == 120)
          {
            v17 = 11;
            goto LABEL_22;
          }

          if (v24 == 143)
          {
            v17 = 12;
            goto LABEL_22;
          }
        }

        else
        {
          if (v24 == 80)
          {
            v17 = 9;
            goto LABEL_22;
          }

          if (v24 == 99)
          {
            v17 = 10;
            goto LABEL_22;
          }
        }
      }

      else if (v24 > 23)
      {
        if (v24 > 47)
        {
          if (v24 == 48)
          {
            v17 = 7;
            *(a1 + 139) = 7;
            a1[70] = &jpeg_natural_order7;
            v25 = 48;
            goto LABEL_78;
          }

          if (v24 == 63)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v24 == 24)
          {
            v17 = 5;
            *(a1 + 139) = 5;
            a1[70] = &jpeg_natural_order5;
            v25 = 24;
            goto LABEL_78;
          }

          if (v24 == 35)
          {
            v17 = 6;
            *(a1 + 139) = 6;
            a1[70] = &jpeg_natural_order6;
            v25 = 35;
            goto LABEL_78;
          }
        }
      }

      else if (v24 > 7)
      {
        if (v24 == 8)
        {
          v17 = 3;
          *(a1 + 139) = 3;
          a1[70] = &jpeg_natural_order3;
          v25 = 8;
          goto LABEL_78;
        }

        if (v24 == 15)
        {
          v17 = 4;
          *(a1 + 139) = 4;
          a1[70] = &jpeg_natural_order4;
          v25 = 15;
          goto LABEL_78;
        }
      }

      else
      {
        if (!v24)
        {
          v17 = 1;
          *(a1 + 139) = 1;
          a1[70] = &_cg_jpeg_natural_order;
          *(a1 + 142) = 0;
          goto LABEL_23;
        }

        if (v24 == 3)
        {
          v17 = 2;
          *(a1 + 139) = 2;
          a1[70] = &jpeg_natural_order2;
          v25 = 3;
LABEL_78:
          *(a1 + 142) = v25;
          goto LABEL_23;
        }
      }

      v26 = *a1;
      *(v26 + 40) = 17;
      *(v26 + 48) = *(a1 + 135);
      *(*a1 + 52) = *(a1 + 136);
      *(*a1 + 56) = *(a1 + 137);
      *(*a1 + 60) = *(a1 + 138);
      (**a1)(a1);
      v17 = *(a1 + 139);
      v11 = *(a1 + 14);
LABEL_23:
      *(a1 + 106) = v17;
      *(a1 + 107) = v17;
      if (v11 >= 1)
      {
        v18 = 0;
        v19 = a1[38] + 40;
        do
        {
          v20 = *(a1 + 139);
          *(v19 - 4) = v20;
          *v19 = v20;
          *(v19 - 12) = jdiv_round_up(*(v19 - 32) * *(a1 + 12), *(a1 + 104) * v20);
          *(v19 - 8) = jdiv_round_up(*(v19 - 28) * *(a1 + 13), *(a1 + 139) * *(a1 + 105));
          *(v19 + 4) = jdiv_round_up(*(v19 - 32) * *(a1 + 12), *(a1 + 104));
          *(v19 + 8) = jdiv_round_up(*(v19 - 28) * *(a1 + 13), *(a1 + 105));
          *(v19 + 12) = 1;
          *(v19 + 40) = 0;
          ++v18;
          v19 += 96;
        }

        while (v18 < *(a1 + 14));
        v17 = *(a1 + 139);
      }

      *(a1 + 108) = jdiv_round_up(*(a1 + 13), *(a1 + 105) * v17);
      v21 = *(a1 + 112);
      v22 = v21 < *(a1 + 14) || *(a1 + 79) != 0;
      *(a1[76] + 32) = v22;
      if (v21)
      {
LABEL_86:
        v1[10] = 0;
        return 1;
      }

LABEL_37:
      v1[10] = 2;
    }

    else
    {
      if (!v1[8])
      {
        v23 = *a1;
        *(v23 + 40) = 36;
        (*v23)(a1);
      }

      if (*(a1 + 112))
      {
        start_input_pass_0(a1);
        return 1;
      }
    }
  }

  if (v5 != 2)
  {
    return v5;
  }

  v1[9] = 1;
  if (v1[10])
  {
    if (*(a1[77] + 28))
    {
      v27 = *a1;
      *(v27 + 40) = 62;
      (*v27)(a1);
    }
  }

  else
  {
    v28 = *(a1 + 43);
    if (*(a1 + 45) > v28)
    {
      *(a1 + 45) = v28;
    }
  }

  return 2;
}

uint64_t reset_input_controller(uint64_t a1)
{
  v2 = *(a1 + 608);
  *v2 = consume_markers;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  (*(*a1 + 32))(a1);
  result = (**(a1 + 616))(a1);
  *(a1 + 192) = 0;
  return result;
}

uint64_t start_input_pass_0(uint64_t *a1)
{
  v2 = *(a1 + 112);
  if (v2 == 1)
  {
    v3 = a1[57];
    v4 = *(v3 + 32);
    *(a1 + 122) = *(v3 + 28);
    *(a1 + 123) = v4;
    *(v3 + 56) = 0x100000001;
    LODWORD(v5) = 1;
    v6 = *(v3 + 36);
    *(v3 + 64) = 1;
    *(v3 + 68) = v6;
    v7 = v4 % *(v3 + 12);
    if (!v7)
    {
      v7 = *(v3 + 12);
    }

    *(v3 + 72) = 1;
    *(v3 + 76) = v7;
    a1[62] = 1;
LABEL_20:
    v20 = 0;
    v21 = a1 + 25;
    do
    {
      v22 = a1[v20 + 57];
      if (!*(v22 + 80))
      {
        v23 = *(v22 + 16);
        if (v23 > 3 || !v21[v23])
        {
          v24 = *a1;
          *(v24 + 10) = 54;
          *(v24 + 12) = v23;
          (**a1)(a1);
        }

        v25 = (*a1[1])(a1, 1, 132);
        v5 = v21[v23];
        *v25 = *v5;
        v26 = *(v5 + 16);
        v27 = *(v5 + 32);
        v28 = *(v5 + 64);
        *(v25 + 48) = *(v5 + 48);
        *(v25 + 64) = v28;
        *(v25 + 16) = v26;
        *(v25 + 32) = v27;
        v29 = *(v5 + 80);
        v30 = *(v5 + 96);
        v31 = *(v5 + 112);
        *(v25 + 128) = *(v5 + 128);
        *(v25 + 96) = v30;
        *(v25 + 112) = v31;
        *(v25 + 80) = v29;
        *(v22 + 80) = v25;
        LODWORD(v5) = *(a1 + 112);
      }

      ++v20;
    }

    while (v20 < v5);
    goto LABEL_27;
  }

  if ((v2 - 5) <= 0xFFFFFFFB)
  {
    v8 = *a1;
    *(v8 + 10) = 27;
    *(v8 + 12) = v2;
    *(*a1 + 52) = 4;
    (**a1)(a1);
  }

  *(a1 + 122) = jdiv_round_up(*(a1 + 12), *(a1 + 139) * *(a1 + 104));
  *(a1 + 123) = jdiv_round_up(*(a1 + 13), *(a1 + 139) * *(a1 + 105));
  *(a1 + 124) = 0;
  if (*(a1 + 112) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = a1[v9 + 57];
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
      if (*(a1 + 124) + v13 >= 11)
      {
        v17 = *a1;
        *(v17 + 40) = 14;
        (*v17)(a1);
      }

      if (v13 >= 1)
      {
        v18 = v13 + 1;
        do
        {
          v19 = *(a1 + 124);
          *(a1 + 124) = v19 + 1;
          *(a1 + v19 + 125) = v9;
          --v18;
        }

        while (v18 > 1);
      }

      ++v9;
      v5 = *(a1 + 112);
    }

    while (v9 < v5);
    if (v5 >= 1)
    {
      goto LABEL_20;
    }
  }

LABEL_27:
  (*a1[78])(a1);
  result = (*a1[74])(a1);
  *a1[76] = *(a1[74] + 8);
  return result;
}

uint64_t finish_input_pass(uint64_t a1)
{
  result = (*(*(a1 + 624) + 16))();
  **(a1 + 608) = consume_markers;
  return result;
}

uint64_t jx_fragment_list::init(jx_fragment_list *this, jp2_input_box *a2)
{
  if (*(a2 + 12) != 1718383476)
  {
    jx_fragment_list::init();
  }

  *(this + 2) = 0;
  *(this + 1) = 0;
  v11 = 0;
  if (!jp2_input_box::read(a2, &v11))
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    kdu_error::kdu_error(&v8, "Error in Kakadu File Format Support:\n");
    (*(v8 + 16))(&v8, "Error encountered reading fragment list (flst) box.  Unable to read the initial fragment count.");
    kdu_error::~kdu_error(&v8);
  }

  for (*&v7[1] = this; v11; --v11)
  {
    v7[0] = 0;
    v6 = 0;
    *v5 = 0;
    if (!jp2_input_box::read(a2, &v6) || !jp2_input_box::read(a2, &v5[1]) || !jp2_input_box::read(a2, v5) || !jp2_input_box::read(a2, v7))
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
      kdu_error::kdu_error(&v8, "Error in Kakadu File Format Support:\n");
      (*(v8 + 16))(&v8, "Error encountered reading fragment list (flst) box.  Contents of box terminated prematurely.");
      kdu_error::~kdu_error(&v8);
    }

    jpx_fragment_list::add_fragment(&v7[1], v7[0], v5[1] | (v6 << 32), v5[0]);
  }

  return (*(*a2 + 16))(a2);
}

uint64_t *jpx_fragment_list::add_fragment(uint64_t *this, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *this;
  v5 = *(*this + 4);
  if (v5 == **this)
  {
    v6 = 2 * v5 + 8;
    *v4 = v6;
    is_mul_ok(v6, 0x18uLL);
    operator new[]();
  }

  v7 = *(v4 + 8);
  v8 = v7 + 24 * v5;
  if (v8 - 24 >= v7 && *(v8 - 8) == a2 && (v9 = *(v8 - 16), v9 + *(v8 - 24) == a3))
  {
    *(v8 - 16) = v9 + a4;
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *(v8 + 16) = a2;
    *v8 = a3;
    *(v8 + 8) = a4;
  }

  *(v4 + 16) += a4;
  return this;
}

void jpx_input_box::jpx_input_box(jpx_input_box *this)
{
  jp2_input_box::jp2_input_box(this);
  *v1 = &unk_1EF4D3D28;
  *(v1 + 184) = 0;
  *(v1 + 192) = 0;
  *(v1 + 240) = -1;
  *(v1 + 200) = -1;
  *(v1 + 272) = 0;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  *(v1 + 264) = 0;
}

uint64_t jpx_input_box::open_next(jpx_input_box *this)
{
  if (*(this + 32))
  {
    return 0;
  }

  else
  {
    return jp2_input_box::open_next(this);
  }
}

uint64_t jpx_input_box::open_as(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 126) == 1)
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    kdu_error::kdu_error(&v7, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v7);
  }

  if (!a4)
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    kdu_error::kdu_error(&v7, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v7);
  }

  *(a1 + 184) = a2;
  *(a1 + 256) = a4;
  if (!*(a4 + 32))
  {
    *(a1 + 192) = a3;
  }

  *(a1 + 8) = xmmword_1862067D0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a5;
  if (a2)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 56) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 128) = 3;
  *(a1 + 88) = v5;
  *(a1 + 96) = -1;
  *(a1 + 104) = -1;
  *(a1 + 112) = -1;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0x10000;
  *(a1 + 136) = 0;
  *(a1 + 144) = -1;
  *(a1 + 176) = 0;
  *(a1 + 200) = -1;
  *(a1 + 240) = -1;
  *(a1 + 248) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  return 1;
}

uint64_t jpx_input_box::close(jpx_input_box *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    fclose(v2);
    *(this + 29) = 0;
  }

  v3 = *(this + 34);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8077774924);
    *(this + 34) = 0;
  }

  *(this + 66) = 0;
  *(this + 50) = -1;
  *(this + 60) = -1;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 26) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;

  return jp2_input_box::close(this);
}

uint64_t jpx_input_box::seek(jpx_input_box *this, uint64_t a2)
{
  if (*(this + 32))
  {
    if (*(this + 10))
    {
      jpx_input_box::seek();
    }

    v3 = *(this + 17);
    if (v3 != a2)
    {
      if (a2 < 0)
      {
        v4 = 0;
      }

      else
      {
        v4 = *(this + 11);
        if (v4 >= a2)
        {
          v4 = a2;
        }
      }

      *(this + 17) = v4;
      if ((*(this + 50) & 0x80000000) != 0 || v4 < *(this + 26) || v4 >= *(this + 27))
      {
        *(this + 50) = -1;
        *(this + 27) = 0;
        *(this + 28) = 0;
        *(this + 26) = 0;
      }

      else
      {
        *(this + 28) += v4 - v3;
      }
    }

    return 1;
  }

  else
  {

    return jp2_input_box::seek(this, a2);
  }
}

size_t jpx_input_box::read(jpx_input_box *this, unsigned __int8 *a2, size_t a3)
{
  v3 = a3;
  v4 = a2;
  if (*(this + 32))
  {
    if (a3 >= 1)
    {
      v6 = 0;
      v7 = *(this + 17);
      while (1)
      {
        if ((*(this + 50) & 0x80000000) != 0 || v7 >= *(this + 27))
        {
          if (v7 < 0)
          {
            goto LABEL_49;
          }

          v8 = *(this + 23);
          v9 = *(v8 + 4);
          if (v9 < 1)
          {
            goto LABEL_49;
          }

          v10 = 0;
          v11 = *(v8 + 8) + 8;
          v12 = v7;
          while (1)
          {
            v13 = v12 - *v11;
            if (v13 < 0)
            {
              break;
            }

            ++v10;
            v11 += 24;
            v12 = v13;
            if (v9 == v10)
            {
              goto LABEL_49;
            }
          }

          *(this + 50) = v10;
          if (v9 <= v10)
          {
LABEL_49:
            *(this + 50) = -1;
            return v6;
          }

          v14 = *(v11 + 8);
          v15 = *(v11 - 8);
          *(this + 28) = v15;
          v16 = *v11;
          *(this + 28) = v15 + v12;
          v17 = v7 - v12;
          *(this + 26) = v17;
          *(this + 27) = v16 + v17;
          if (v14 != *(this + 60))
          {
            v18 = *(this + 29);
            if (v18)
            {
              fclose(v18);
              *(this + 29) = 0;
              *(this + 60) = -1;
            }

            if (v14)
            {
              if (!*(this + 24))
              {
                goto LABEL_49;
              }

              url = jp2_data_references::get_url((this + 192), v14);
              if (!url)
              {
                goto LABEL_49;
              }

              if (*url)
              {
                v20 = jpx_input_box::url_fopen(this, url);
                *(this + 29) = v20;
                if (!v20)
                {
                  goto LABEL_49;
                }
              }
            }

            *(this + 31) = 0;
            *(this + 60) = v14;
          }
        }

        v21 = *(this + 28);
        v22 = *(this + 29);
        if (v21 != *(this + 31))
        {
          if (v22)
          {
            fseek(*(this + 29), v21, 0);
            v21 = *(this + 28);
            v22 = *(this + 29);
          }

          *(this + 31) = v21;
        }

        v23 = *(this + 17);
        v24 = v23 + v3;
        v25 = *(this + 27);
        v26 = v25 - v23;
        if (v24 <= v25)
        {
          v27 = v3;
        }

        else
        {
          v27 = v26;
        }

        if (v22)
        {
          LODWORD(v27) = fread(v4, 1uLL, v27, v22);
          if (!v27)
          {
            return v6;
          }
        }

        else
        {
          v28 = *(this + 32);
          if (v28[4])
          {
            return v6;
          }

          (*(*v28 + 16))(v28);
          v29 = *(this + 32);
          v30 = *(this + 17);
          if (v29[5] != v30)
          {
            v31 = v29[2];
            if (v31)
            {
              fseek(v31, v30, 0);
            }

            else
            {
              v32 = v29[3];
              if (v32)
              {
                (*(*v32 + 40))(v32);
              }
            }
          }

          v33 = *(this + 32);
          v34 = *(v33 + 16);
          if (v34)
          {
            LODWORD(v27) = fread(v4, 1uLL, v27, v34);
          }

          else
          {
            v35 = *(v33 + 24);
            if (v35)
            {
              LODWORD(v27) = (*(*v35 + 32))(v35, v4, v27);
            }
          }

          v36 = *(this + 32);
          v36[5] = *(this + 17) + v27;
          (*(*v36 + 24))(v36);
          if (!v27)
          {
            return v6;
          }
        }

        v6 = (v27 + v6);
        v4 += v27;
        v7 = *(this + 17) + v27;
        *(this + 17) = v7;
        *(this + 28) += v27;
        *(this + 31) += v27;
        v37 = __OFSUB__(v3, v27);
        v3 -= v27;
        if ((v3 < 0) ^ v37 | (v3 == 0))
        {
          return v6;
        }
      }
    }

    return 0;
  }

  else
  {

    return jp2_input_box::read(this, a2, a3);
  }
}

FILE *jpx_input_box::url_fopen(jpx_input_box *this, const char *__s)
{
  v2 = __s;
  v4 = *__s;
  if (!*__s || v4 != 47 && v4 != 92 && (__s[1] != 58 || (v5 = *(__s + 2), v5 != 47) && v5 != 92))
  {
    v6 = *(*(this + 32) + 8);
    if (v6)
    {
      v7 = strlen(__s);
      v8 = strlen(v6) + v7 + 2;
      v9 = *(this + 66);
      if (v8 > v9)
      {
        *(this + 66) = v8 + v9;
        v10 = *(this + 34);
        if (v10)
        {
          MEMORY[0x186602830](v10, 0x1000C8077774924);
        }

        operator new[]();
      }

      strcpy(*(this + 34), v6);
      v11 = *(this + 34);
      v12 = &v11[strlen(v11)];
      do
      {
        v13 = v12;
        if (v12 <= v11)
        {
          break;
        }

        --v12;
        v14 = *(v13 - 1);
        if (v14 == 92)
        {
          break;
        }
      }

      while (v14 != 47);
      strcpy(v13, v2);
      v2 = *(this + 34);
    }
  }

  return fopen(v2, "rb");
}

uint64_t jx_compatibility::init_ftyp(jx_compatibility *this, jp2_input_box *a2)
{
  if (*(a2 + 12) != 1718909296)
  {
    jx_compatibility::init_ftyp();
  }

  *v13 = 0;
  v12 = 0;
  jp2_input_box::read(a2, &v13[1]);
  jp2_input_box::read(a2, v13);
  LOBYTE(v4) = 0;
  LOBYTE(v5) = 0;
  v6 = 0;
  if (jp2_input_box::read(a2, &v12))
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
    do
    {
      if (v12 == 1785755680)
      {
        v7 = 1;
      }

      else
      {
        v7 = v4;
      }

      if (v12 == 1785755746)
      {
        v7 = 1;
        v8 = 1;
      }

      else
      {
        v8 = v5;
      }

      if (v12 == 1785737760)
      {
        v6 = 1;
      }

      else
      {
        v4 = v7;
        v5 = v8;
      }
    }

    while (jp2_input_box::read(a2, &v12));
  }

  if (((*(*a2 + 16))(a2) & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    kdu_error::kdu_error(v10, "Error in Kakadu File Format Support:\n");
    (*(*&v10[0] + 16))(v10, "JP2-family data source contains a malformed file type box.");
    kdu_error::~kdu_error(v10);
  }

  if ((v6 | v4))
  {
    *this = v13[1] == 1785737760 || (v4 & 1) == 0;
    *(this + 1) = v6 & 1;
    *(this + 2) = v5 & 1;
    *(this + 3) = 0;
  }

  return (v6 | v4) & 1;
}

void jx_compatibility::init_rreq(jx_compatibility *this, jp2_input_box *a2)
{
  if (*(a2 + 12) == 1920099697)
  {
    v16 = 0;
    (*(*a2 + 32))(a2, &v16, 1);
    if (v16)
    {
      v4 = 0;
      v5 = 0;
      v6 = 24;
      do
      {
        if (v6 >= 0)
        {
          v7 = v6;
        }

        else
        {
          v7 = 24;
        }

        v5 += v6 >> 31;
        (*(*a2 + 32))(a2, &v16 + 1, 1);
        *(this + v5 + 10) |= HIBYTE(v16) << v7;
        if (v4 > 0x1E)
        {
          break;
        }

        ++v4;
        v6 = v7 - 8;
      }

      while (v4 < v16);
      if (v16)
      {
        v8 = 0;
        v9 = 0;
        v10 = 24;
        do
        {
          if (v10 >= 0)
          {
            v11 = v10;
          }

          else
          {
            v11 = 24;
          }

          v9 += v10 >> 31;
          (*(*a2 + 32))(a2, &v16 + 1, 1);
          *(this + v9 + 18) |= HIBYTE(v16) << v11;
          if (v8 > 0x1E)
          {
            break;
          }

          ++v8;
          v10 = v11 - 8;
        }

        while (v8 < v16);
      }
    }

    v15 = 0;
    if (!jp2_input_box::read(a2, &v15))
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      kdu_error::kdu_error(v13, "Error in Kakadu File Format Support:\n");
      (*(*&v13[0] + 16))(v13, "Malformed reader requirements (rreq) box found in JPX data source.  Box terminated unexpectedly.");
      kdu_error::~kdu_error(v13);
    }

    *(this + 3) = 1;
    v12 = v15;
    *(this + 3) = v15;
    *(this + 4) = v12;
    operator new[]();
  }

  jx_compatibility::init_rreq();
}

void jx_composition::add_frame(jx_composition *this)
{
  v1 = *(this + 60);
  if (v1)
  {
    if (*(v1 + 16) == 1)
    {
      *(this + 61) = v1;
    }

    operator new();
  }

  operator new();
}

void jx_composition::donate_composition_box(jx_composition *this, jp2_input_box *a2, jx_source *a3)
{
  if (*(this + 214) == 1)
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    kdu_warning::kdu_warning(v5, "Warning in Kakadu File Format Support:\n");
    (*(*&v5[0] + 16))(v5, "JPX data source appears to contain multiple composition boxes!! This is illegal.  All but first will be ignored.");
    kdu_warning::~kdu_warning(v5);
  }

  else
  {
    jp2_input_box::transplant((this + 88), a2);
    *(this + 114) = 0;

    jx_composition::finish(this, a3);
  }
}

uint64_t jx_composition::finish(jx_composition *this, jx_source *a2)
{
  if ((*this & 1) == 0)
  {
    do
    {
      v5 = *(this + 214);
      if (v5)
      {
        goto LABEL_8;
      }

      if (*(a2 + 216))
      {
        goto LABEL_7;
      }
    }

    while ((jx_source::parse_next_top_level_box(a2, 0) & 1) != 0);
    v5 = *(this + 214);
LABEL_7:
    if ((v5 & 1) == 0)
    {
      v2 = *(a2 + 216);
      return v2 & 1;
    }

LABEL_8:
    if (*(this + 34) != 1668246896)
    {
      jx_composition::finish();
    }

    if (!jp2_input_box::is_complete((this + 88)))
    {
LABEL_74:
      v2 = 0;
      return v2 & 1;
    }

    while (1)
    {
      while (1)
      {
        if ((*(this + 398) & 1) == 0 && !jp2_input_box::open((this + 272), (this + 88)))
        {
          jp2_input_box::close((this + 88));
          v2 = 1;
          *this = 1;
          jx_composition::assign_layer_indices(this);
          jx_composition::remove_invisible_instructions(this);
          return v2 & 1;
        }

        v6 = *(this + 80);
        if (v6 == 1768846196)
        {
          break;
        }

        if (v6 != 1668247668)
        {
          goto LABEL_72;
        }

        if (!jp2_input_box::is_complete((this + 272)))
        {
          goto LABEL_74;
        }

        *v36 = 0;
        LOBYTE(v32) = 0;
        if (!jp2_input_box::read((this + 272), &v36[1]) || !jp2_input_box::read((this + 272), v36) || ((v7 = (*(*(this + 34) + 32))(this + 272, &v32, 1), v8 = v36[1], v7 == 1) ? (v9 = v36[1] == 0) : (v9 = 1), !v9 ? (v10 = v36[0] == 0) : (v10 = 1), v10))
        {
          v35 = 0;
          v33 = 0u;
          v34 = 0u;
          kdu_error::kdu_error(&v33, "Error in Kakadu File Format Support:\n");
          (*(v33 + 16))(&v33, "Malformed Composition Options (copt) box found in JPX data source.  Insufficient or illegal field values encountered.  The height and width parameters must also be non-zero.");
          kdu_error::~kdu_error(&v33);
        }

        *(this + 117) = v36[0];
        *(this + 116) = v8;
        if (v32 == 255)
        {
          v11 = 0;
        }

        else
        {
          v11 = v32 + 1;
        }

        *(this + 115) = v11;
LABEL_72:
        jp2_input_box::close((this + 272));
      }

      if (!jp2_input_box::is_complete((this + 272)))
      {
        goto LABEL_74;
      }

      LOWORD(v36[0]) = 0;
      v32 = 0;
      v36[1] = 0;
      if (!jp2_input_box::read((this + 272), v36) || !jp2_input_box::read((this + 272), &v32) || !jp2_input_box::read((this + 272), &v36[1]))
      {
        v35 = 0;
        v33 = 0u;
        v34 = 0u;
        kdu_error::kdu_error(&v33, "Error in Kakadu File Format Support:\n");
        (*(v33 + 16))(&v33, "Malformed Instruction Set (inst) box found in JPX data source.  Insufficient fields encountered.");
        kdu_error::~kdu_error(&v33);
      }

      v12 = LOWORD(v36[0]);
      if ((v36[0] & 0x27) != 0)
      {
        break;
      }

      jp2_input_box::close((this + 272));
      ++*(this + 114);
    }

    v31 = *(this + 51) - (*(this + 44) + *(this + 112));
    v13 = v32;
    while (1)
    {
      v14 = *(this + 60);
      if (v14)
      {
        v15 = *(v14 + 32);
      }

      else
      {
        v15 = 0;
      }

      if (jx_composition::parse_instruction(this, v12 & 1, (v12 >> 1) & 1, (v12 >> 2) & 1, (v12 >> 5) & 1))
      {
        v16 = 0;
        do
        {
          v17 = *(*(this + 60) + 32);
          v18 = v16 + 1;
          *(v17 + 16) = *(this + 114);
          *(v17 + 20) = v16;
          v19 = jx_composition::parse_instruction(this, v12 & 1, (v12 >> 1) & 1, (v12 >> 2) & 1, (v12 >> 5) & 1);
          v16 = v18;
        }

        while (v19);
      }

      if ((*(this + 397) & 1) == 0 && *(this + 45) - *(this + 51) + *(this + 112) >= 1)
      {
        v35 = 0;
        v33 = 0u;
        v34 = 0u;
        kdu_error::kdu_error(&v33, "Error in Kakadu File Format Support:\n");
        (*(v33 + 16))(&v33, "Malformed Instruction Set (inst) box encountered in JPX data source.  Box appears to be too long.");
        kdu_error::~kdu_error(&v33);
      }

      jp2_input_box::seek((this + 272), v31);
      if (v13 < 2)
      {
        goto LABEL_69;
      }

      v20 = *(this + 60);
      if (v20 == v14 || !*v20)
      {
        goto LABEL_69;
      }

      if (v14)
      {
        if (v20 != *(v14 + 48) || *(v14 + 32) != v15)
        {
          goto LABEL_69;
        }
      }

      else if (v20 != *(this + 59))
      {
        goto LABEL_69;
      }

      v21 = *(this + 125);
      v22 = *(v20 + 12);
      if (v21 < v22)
      {
        v23 = 0x7FFFFFFF;
LABEL_57:
        v25 = *(v20 + 24);
        if (v25)
        {
          v26 = 0;
          v27 = *(v20 + 12);
          do
          {
            v28 = *(v25 + 8);
            if (v28 == v22)
            {
              ++v26;
            }

            else if (v28)
            {
              goto LABEL_69;
            }

            --v27;
            v25 = *(v25 + 56);
          }

          while (v25);
          if (v27)
          {
LABEL_78:
            jx_composition::finish();
          }
        }

        else if (v22)
        {
          goto LABEL_78;
        }

        if ((v23 & 0x80000000) != 0)
        {
          jx_composition::finish();
        }

        if (v23 >= 2)
        {
          jx_composition::add_frame(this);
        }

        goto LABEL_69;
      }

      v24 = v21 / v22;
      v23 = v24 - 1;
      if (v24 != 1)
      {
        goto LABEL_57;
      }

LABEL_69:
      if (v13-- <= 0)
      {
        ++*(this + 114);
        goto LABEL_72;
      }
    }
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t jx_source::parse_next_top_level_box(jx_source *this, int a2)
{
  if ((*(this + 216) & 1) != 0 || *(this + 17) == 1)
  {
    if (a2)
    {
      jx_source::parse_next_top_level_box();
    }

    return 0;
  }

  if (a2)
  {
    goto LABEL_9;
  }

  if (*(this + 158) == 1)
  {
    jx_source::parse_next_top_level_box();
  }

  if (jp2_input_box::open_next((this + 32)))
  {
LABEL_9:
    *(this + 17) = 1;
    v4 = *(this + 20);
    if (v4 > 1785737826)
    {
      if (v4 > 1785750375)
      {
        if (v4 == 1785750376)
        {
          v10 = *(this + 138);
          if (!v10)
          {
            operator new();
          }

          v11 = *(this + 140);
          if (v11)
          {
            v10 = *(v11 + 856);
            if (!v10)
            {
              operator new();
            }
          }

          *(this + 140) = v10;
          jx_codestream_source::donate_chdr_box(v10, (this + 32));
          if (*(this + 158) == 1)
          {
            v14 = 0;
            v12 = 0u;
            v13 = 0u;
            kdu_error::kdu_error(&v12, "Error in Kakadu File Format Support:\n");
            (*(v12 + 16))(&v12, "top-level JP2 header box is still open, parsing failed.");
            kdu_error::~kdu_error(&v12);
          }

          goto LABEL_60;
        }

        if (v4 == 1785752680 && (*(this + 16) & 1) == 0)
        {
          operator new();
        }

        goto LABEL_35;
      }

      if (v4 != 1785737827)
      {
        if (v4 == 1785737832)
        {
          if (*(this + 408) == 1)
          {
            v14 = 0;
            v12 = 0u;
            v13 = 0u;
            kdu_error::kdu_error(&v12, "Error in Kakadu File Format Support:\n");
            (*(v12 + 16))(&v12, "JP2-family data source contains more than one top-level JP2 header (jp2h) box.");
            kdu_error::~kdu_error(&v12);
          }

          *(this + 408) = 1;
          jp2_input_box::transplant((this + 224), (this + 32));
          jx_source::finish_jp2_header_box(this);
          goto LABEL_60;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v4 <= 1685348971)
      {
        if (v4 == 1634955107)
        {
          goto LABEL_41;
        }

        if (v4 == 1668246896)
        {
          jx_composition::donate_composition_box((this + 1336), (this + 32), this);
          if (*(this + 158) == 1)
          {
            v14 = 0;
            v12 = 0u;
            v13 = 0u;
            kdu_error::kdu_error(&v12, "Error in Kakadu File Format Support:\n");
            (*(v12 + 16))(&v12, "top-level JP2 header box is still open, parsing failed.");
            kdu_error::~kdu_error(&v12);
          }

          goto LABEL_60;
        }

LABEL_35:
        v7 = *(this + 569);
        if (v7)
        {
          if (v7 < 1)
          {
LABEL_40:
            jp2_input_box::close((this + 32));
LABEL_60:
            *(this + 17) = 0;
            if (*(this + 16) != 1 || *(this + 6) || *(this + 5) < 1)
            {
              return 1;
            }

            if (!*(this + 139))
            {
              operator new();
            }

            return 0;
          }

          v8 = *(this + 285);
          while (1)
          {
            v9 = *v8++;
            if (v9 == v4)
            {
              break;
            }

            if (!--v7)
            {
              goto LABEL_40;
            }
          }
        }

LABEL_41:
        operator new();
      }

      if (v4 == 1685348972)
      {
        if (*(this + 672) == 1)
        {
          v14 = 0;
          v12 = 0u;
          v13 = 0u;
          kdu_error::kdu_error(&v12, "Error in Kakadu File Format Support:\n");
          (*(v12 + 16))(&v12, "JP2-family data source appears to contain more than one data reference (dtbl) box.  At most one should be found in the file.");
          kdu_error::~kdu_error(&v12);
        }

        *(this + 672) = 1;
        jp2_input_box::transplant((this + 680), (this + 32));
        if (jp2_input_box::is_complete((this + 680)))
        {
          j2_data_references::init((this + 656), (this + 680));
          if (*(this + 806) == 1)
          {
            jx_source::parse_next_top_level_box();
          }
        }

        goto LABEL_60;
      }

      if (v4 != 1718903404)
      {
        goto LABEL_35;
      }
    }

    v5 = *(this + 138);
    if (!v5)
    {
      operator new();
    }

    v6 = *(this + 141);
    if (v6)
    {
      v5 = *(v6 + 856);
      if (!v5)
      {
        operator new();
      }
    }

    *(this + 141) = v5;
    jx_codestream_source::donate_codestream_box(v5, (this + 32));
    if (*(this + 158) == 1)
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
      kdu_error::kdu_error(&v12, "Error in Kakadu File Format Support:\n");
      (*(v12 + 16))(&v12, "top-level JP2 header box is still open, parsing failed.");
      kdu_error::~kdu_error(&v12);
    }

    goto LABEL_60;
  }

  result = jp2_family_src::is_top_level_complete(*this);
  if (result)
  {
    if ((jp2_input_box::open_next((this + 32)) & 1) == 0)
    {
      *(this + 216) = 1;
      if (!*(this + 6) && *(this + 5) >= 1)
      {
        operator new();
      }

      return 0;
    }

    goto LABEL_9;
  }

  return result;
}

BOOL jx_composition::parse_instruction(jx_composition *this, int a2, int a3, int a4, int a5)
{
  if ((a2 & 1) == 0 && (a3 & 1) == 0 && (a4 & 1) == 0 && !a5)
  {
    return 0;
  }

  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_18;
    }

LABEL_14:
    *v17 = 0;
    if (!jp2_input_box::read((this + 272), &v17[1]) && !a2)
    {
      return 0;
    }

    if (!jp2_input_box::read((this + 272), v17))
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      kdu_error::kdu_error(&v14, "Error in Kakadu File Format Support:\n");
      (*(v14 + 16))(&v14, "Malformed Instruction Set (inst) box found in JPX data source.  Terminated unexpectedly.");
      kdu_error::~kdu_error(&v14);
    }

LABEL_18:
    *v17 = 0;
    if (a4)
    {
      if (!jp2_input_box::read((this + 272), &v17[1]) && (a2 & 1) == 0 && !a3)
      {
        return 0;
      }

      if (!jp2_input_box::read((this + 272), v17))
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
        kdu_error::kdu_error(&v14, "Error in Kakadu File Format Support:\n");
        (*(v14 + 16))(&v14, "Malformed Instruction Set (inst) box found in JPX data source.  Terminated unexpectedly.");
        kdu_error::~kdu_error(&v14);
      }

      if ((v17[1] & 0x80000000) == 0)
      {
        if (!a5)
        {
          goto LABEL_37;
        }

        goto LABEL_29;
      }

      v17[1] &= ~0x80000000;
    }

    if (!a5)
    {
      goto LABEL_37;
    }

LABEL_29:
    *v12 = 0;
    *v13 = 0;
    if (jp2_input_box::read((this + 272), &v13[1]) || (a2 & 1) != 0 || (a3 & 1) != 0 || a4)
    {
      if (!jp2_input_box::read((this + 272), v13) || !jp2_input_box::read((this + 272), &v12[1]) || !jp2_input_box::read((this + 272), v12))
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
        kdu_error::kdu_error(&v14, "Error in Kakadu File Format Support:\n");
        (*(v14 + 16))(&v14, "Malformed Instruction Set (inst) box found in JPX data source.  Terminated unexpectedly.");
        kdu_error::~kdu_error(&v14);
      }

LABEL_37:
      v11 = *(this + 60);
      if (v11)
      {
        if (!*v11)
        {
          jx_frame::add_instruction(v11);
        }
      }

      jx_composition::add_frame(this);
    }

    return 0;
  }

  *v17 = 0;
  result = jp2_input_box::read((this + 272), &v17[1]);
  if (result)
  {
    if (!jp2_input_box::read((this + 272), v17))
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      kdu_error::kdu_error(&v14, "Error in Kakadu File Format Support:\n");
      (*(v14 + 16))(&v14, "Malformed Instruction Set (inst) box found in JPX data source.  Terminated unexpectedly.");
      kdu_error::~kdu_error(&v14);
    }

    if (!a3)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t jx_composition::assign_layer_indices(uint64_t this)
{
  v1 = *(this + 472);
  if (v1)
  {
    v2 = 0;
    do
    {
      for (i = *(v1 + 24); i; i = *(i + 56))
      {
        if ((*i & 0x80000000) != 0)
        {
          *i = v2++;
        }

        v4 = *(i + 8);
        if (v4 >= 1)
        {
          v5 = v1;
          v6 = i;
          do
          {
            v6 = *(v6 + 56);
            if (!v6)
            {
              v7 = *(v5 + 4);
              if (v7 >= 1 && v1 != v5)
              {
                v4 -= *(v5 + 12) * v7;
                if (v4 <= 0)
                {
                  v12 = 0;
                  memset(v11, 0, sizeof(v11));
                  kdu_error::kdu_error(v11, "Error in Kakadu File Format Support:\n");
                  (*(*&v11[0] + 16))(v11, "Illegal re-use count found in a compositing instruction within the JPX composition box.  The specified re-use counts found in the box lead to multiple conflicting definitions for the compositing layer which should be used by a particular instruction.");
                  kdu_error::~kdu_error(v11);
                }
              }

              v5 = *(v5 + 48);
              if (!v5)
              {
                goto LABEL_25;
              }

              v6 = *(v5 + 24);
            }

            v9 = __OFSUB__(v4--, 1);
          }

          while (!((v4 < 0) ^ v9 | (v4 == 0)));
          if (v6)
          {
            v10 = v4 == 0;
          }

          else
          {
            v10 = 0;
          }

          if (v10)
          {
            *v6 = *i;
          }
        }

LABEL_25:
        ;
      }

      v1 = *(v1 + 48);
    }

    while (v1);
  }

  return this;
}

uint64_t jx_composition::remove_invisible_instructions(uint64_t this)
{
  v1 = *(this + 472);
  if (v1)
  {
    v2 = this;
    v3 = (this + 480);
    do
    {
      v4 = (v1 + 24);
      this = *(v1 + 24);
      v5 = *(v1 + 48);
      if (this)
      {
        do
        {
          v6 = *(this + 56);
          if ((*(this + 12) & 1) == 0)
          {
            --*(v1 + 12);
            v7 = *(this + 64);
            if (v7)
            {
              v8 = (v7 + 56);
            }

            else
            {
              v8 = (v1 + 24);
              if (*v4 != this)
              {
                jx_composition::remove_invisible_instructions();
              }
            }

            *v8 = v6;
            if (v6)
            {
              v9 = (v6 + 64);
            }

            else
            {
              v9 = (v1 + 32);
              if (*(v1 + 32) != this)
              {
                jx_composition::remove_invisible_instructions();
              }
            }

            *v9 = v7;
            MEMORY[0x186602850]();
          }

          this = v6;
        }

        while (v6);
        if (*v4)
        {
          goto LABEL_22;
        }
      }

      if (*(v1 + 12))
      {
        jx_composition::remove_invisible_instructions();
      }

      v10 = *(v1 + 56);
      if (v10)
      {
        *(v10 + 48) = v5;
        *v10 += *v1;
        if (!v5)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (*(v2 + 472) != v1)
        {
          jx_composition::remove_invisible_instructions();
        }

        *(v2 + 472) = v5;
        if (!v5)
        {
LABEL_20:
          v11 = v3;
          if (*v3 != v1)
          {
            jx_composition::remove_invisible_instructions();
          }

          goto LABEL_21;
        }
      }

      v11 = (v5 + 56);
LABEL_21:
      *v11 = v10;
      jx_frame::reset(v1);
      this = MEMORY[0x186602850](v1, 0x1020C406ACA6742);
LABEL_22:
      v1 = v5;
    }

    while (v5);
  }

  return this;
}

uint64_t jpx_source::count_compositing_layers(jpx_source *this, int *a2)
{
  v4 = *(this + 1);
  if (v4 && (*(v4 + 15) & 1) != 0)
  {
    if ((*(v4 + 16) & 1) == 0)
    {
      while (1)
      {
        v4 = *(this + 1);
        if (*(v4 + 216))
        {
          break;
        }

        if ((jx_source::parse_next_top_level_box(v4, 0) & 1) == 0)
        {
          v4 = *(this + 1);
          break;
        }
      }
    }

    v5 = *(v4 + 24);
    *a2 = v5;
    if (v5 <= 0 && *(v4 + 16) == 1)
    {
      *a2 = 1;
    }

    if (*(v4 + 216))
    {
      v6 = 1;
    }

    else
    {
      v6 = *(v4 + 16);
    }
  }

  else
  {
    v6 = 0;
    *a2 = 0;
  }

  return v6 & 1;
}

uint64_t jpx_source::access_layer(jpx_source *this, int a2, int a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v4 = a2;
  v5 = 0;
  if (a2 & 0x80000000) == 0 && (*(v3 + 15))
  {
    if (a2 && (*(v3 + 16) & 1) != 0)
    {
      return 0;
    }

    while (1)
    {
      v8 = *(this + 1);
      v9 = *(v8 + 24);
      if (v9 > v4 || (*(v8 + 216) & 1) != 0)
      {
        break;
      }

      if ((jx_source::parse_next_top_level_box(v8, 0) & 1) == 0)
      {
        v8 = *(this + 1);
        v9 = *(v8 + 24);
        break;
      }
    }

    if (v9 <= v4)
    {
      return 0;
    }

    v5 = *(v8 + 1112);
    if (v4 >= 1)
    {
      do
      {
        v5 = *(v5 + 800);
        --v4;
      }

      while (v4);
    }

    if ((jx_layer_source::finish(v5) & 1) == 0 || a3 && (*(v5 + 13) & 1) == 0 && !jx_layer_source::check_stream_headers(v5))
    {
      return 0;
    }
  }

  return v5;
}

uint64_t jpx_layer_source::access_channels(jpx_layer_source *this)
{
  v1 = *this;
  if (!*this || (*(v1 + 12) & 1) == 0)
  {
    jpx_layer_source::access_channels();
  }

  return v1 + 608;
}

void jx_numlist::~jx_numlist(jx_numlist *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2 == this + 8;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    MEMORY[0x186602830]();
  }

  v4 = *(this + 5);
  if (v4)
  {
    v5 = v4 == this + 32;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    MEMORY[0x186602830]();
  }
}

unsigned int *jx_numlist::add_codestream(unsigned int *this, unsigned int a2)
{
  LODWORD(v2) = *this;
  if (*this < 1)
  {
    v6 = 0;
    if (v2)
    {
LABEL_9:
      v8 = this[1];
      if (v2 >= v8)
      {
        this[1] = v8 + 8;
        operator new[]();
      }

      v7 = *(this + 2);
    }

    else
    {
LABEL_6:
      v2 = *(this + 2);
      if (v2)
      {
        jx_numlist::add_codestream();
      }

      this[1] = 1;
      v7 = this + 2;
      *(this + 2) = this + 2;
    }

    *this = v2 + 1;
    v7[v6] = a2;
  }

  else
  {
    v3 = *(this + 2);
    v4 = *this;
    while (1)
    {
      v5 = *v3++;
      if (v5 == a2)
      {
        break;
      }

      if (!--v4)
      {
        v6 = *this;
        if (v2)
        {
          goto LABEL_9;
        }

        goto LABEL_6;
      }
    }
  }

  return this;
}

uint64_t jx_numlist::add_compositing_layer(uint64_t this, int a2)
{
  LODWORD(v2) = *(this + 24);
  if (v2 < 1)
  {
    v6 = 0;
    if (v2)
    {
LABEL_9:
      v8 = *(this + 28);
      if (v2 >= v8)
      {
        *(this + 28) = v8 + 8;
        operator new[]();
      }

      v7 = *(this + 40);
    }

    else
    {
      v2 = *(this + 40);
      if (v2)
      {
        jx_numlist::add_compositing_layer();
      }

      *(this + 28) = 1;
      v7 = this + 32;
      *(this + 40) = this + 32;
    }

    *(this + 24) = v2 + 1;
    *(v7 + 4 * v6) = a2;
  }

  else
  {
    v3 = *(this + 40);
    v4 = *(this + 24);
    while (1)
    {
      v5 = *v3++;
      if (v5 == a2)
      {
        break;
      }

      if (!--v4)
      {
        v6 = *(this + 24);
        goto LABEL_9;
      }
    }
  }

  return this;
}

uint64_t jx_regions::set_num_regions(uint64_t this, int a2)
{
  v2 = a2 & ~(a2 >> 31);
  v3 = *(this + 4);
  if (v2 <= v3)
  {
    *this = v2;
  }

  else
  {
    if (a2 != 1)
    {
      *(this + 4) = v3 + v2;
      is_mul_ok(v3 + v2, 0x14uLL);
      operator new[]();
    }

    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(this + 32) == 0;
    }

    if (!v4)
    {
      jx_regions::set_num_regions();
    }

    *this = 0x100000001;
    *(this + 32) = this + 8;
  }

  return this;
}

void jx_metanode::~jx_metanode(jx_metanode *this)
{
  v2 = *(this + 15);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v7 = *(this + 2);
      if (!v7)
      {
        goto LABEL_20;
      }

      v8 = *(v7 + 32);
      if (v8)
      {
        v9 = v8 == v7 + 8;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        MEMORY[0x186602830]();
      }

      v5 = 0x1020C40ED299F00;
      v4 = v7;
      goto LABEL_19;
    }

    if (v2 == 3)
    {
      v6 = *(this + 2);
      if (v6)
      {
        MEMORY[0x186602830](v6, 0x1000C8077774924);
      }
    }
  }

  else
  {
    if (!*(this + 15))
    {
      v4 = *(this + 2);
      if (!v4)
      {
        goto LABEL_20;
      }

      v5 = 0x10A0C409059F215;
      goto LABEL_19;
    }

    if (v2 == 1)
    {
      v3 = *(this + 2);
      if (v3)
      {
        jx_numlist::~jx_numlist(v3);
        v5 = 0x1010C40B2C1990FLL;
LABEL_19:
        MEMORY[0x186602850](v4, v5);
      }
    }
  }

LABEL_20:
  v10 = *(this + 3);
  if (*(this + 14) == 1)
  {
    if (!v10)
    {
      goto LABEL_26;
    }

    jp2_input_box::~jp2_input_box((v10 + 184));
    jp2_input_box::~jp2_input_box(v10);
    v11 = 0x10A0C40BA7D9750;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_26;
    }

    jp2_output_box::~jp2_output_box((v10 + 80));
    jp2_output_box::~jp2_output_box(v10);
    v11 = 0x10B0C40C8E48792;
  }

  MEMORY[0x186602850](v10, v11);
LABEL_26:
  v12 = *(this + 7);
  if (v12)
  {
    v13 = *(this + 11);
    if (v13)
    {
      v14 = *(this + 10);
      *(v13 + 80) = v14;
      if (v14)
      {
LABEL_29:
        v15 = (v14 + 88);
LABEL_36:
        *v15 = v13;
        *(this + 7) = 0;
        *(this + 10) = 0;
        *(this + 11) = 0;
        goto LABEL_37;
      }
    }

    else
    {
      if (*(v12 + 64) != this)
      {
        v16 = "this == parent->head";
        v17 = 2676;
        goto LABEL_46;
      }

      v14 = *(this + 10);
      *(v12 + 64) = v14;
      if (v14)
      {
        goto LABEL_29;
      }
    }

    v18 = *(v12 + 72);
    v15 = (v12 + 72);
    if (v18 == this)
    {
      goto LABEL_36;
    }

    v16 = "this == parent->tail";
    v17 = 2683;
LABEL_46:
    __assert_rtn("~jx_metanode", "jpx.cpp", v17, v16);
  }

  if (*(this + 10) || *(this + 11))
  {
    v16 = "(next_sibling == NULL) && (prev_sibling == NULL)";
    v17 = 2691;
    goto LABEL_46;
  }

LABEL_37:
  v19 = *(this + 12);
  if (v19)
  {
    jx_metagroup::unlink(v19, this);
  }

  if (*(this + 13) || *(this + 14) || *(this + 12))
  {
    v16 = "(next_link == NULL) && (prev_link == NULL) && (metagroup == NULL)";
    v17 = 2695;
    goto LABEL_46;
  }

  for (i = *(this + 8); i; i = *(this + 8))
  {
    jx_metanode::~jx_metanode(i);
    MEMORY[0x186602850]();
  }
}

uint64_t jx_metagroup::unlink(uint64_t this, jx_metanode *a2)
{
  if (*(a2 + 12) != this)
  {
    jx_metagroup::unlink();
  }

  v2 = *(a2 + 14);
  if (v2)
  {
    v3 = *(a2 + 13);
    *(v2 + 104) = v3;
    if (v3)
    {
LABEL_4:
      v4 = (v3 + 112);
      goto LABEL_8;
    }
  }

  else
  {
    if (*this != a2)
    {
      jx_metagroup::unlink();
    }

    v3 = *(a2 + 13);
    *this = v3;
    if (v3)
    {
      goto LABEL_4;
    }
  }

  v4 = (this + 8);
  if (*(this + 8) != a2)
  {
    jx_metagroup::unlink();
  }

LABEL_8:
  *v4 = v2;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  if (!*this)
  {
    v5 = *(this + 16);
    if (v5)
    {
      if (*(v5 + 16))
      {
        jx_metagroup::unlink();
      }

      v6 = 0xAAAAAAAAAAAAAAABLL * ((this - v5 - 128) >> 3);
      if ((v6 & 0xFFFFFFC0) != 0)
      {
        jx_metagroup::unlink();
      }

      v7 = *(this + 16);

      return jx_roigroup::delete_child(v7, (v6 >> 3) & 7 | ((v6 & 7) << 32));
    }
  }

  return this;
}

jx_metanode **jx_meta_manager::link(jx_metanode **this, jx_metanode *a2)
{
  v2 = a2;
  this[42] = a2;
  v3 = *(a2 + 15);
  if (v3 == 2)
  {
    v6 = *(a2 + 2);
    v8 = v6[2];
    v7 = v6[3];
    if (v6[5] <= v6[4])
    {
      v9 = v6[4];
    }

    else
    {
      v9 = v6[5];
    }

    v10 = -1;
    v11 = 9;
    do
    {
      ++v10;
      ++v11;
    }

    while (v10 <= 0x1E && v9 > 8 << v10);
    v12 = this[v11];
    if (!v12)
    {
      operator new();
    }

    if (v7 >= v12[9] || v8 >= v12[8])
    {
      operator new();
    }

    v14 = v7 - v12[7];
    if (v14 < 0 || (v15 = v8 - v12[6], v15 < 0))
    {
LABEL_30:
      exception = __cxa_allocate_exception(4uLL);
      *exception = -50;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }

    while (1)
    {
      v16 = v14 / v12[11];
      if (v16 > 7 || (v17 = v15 / v12[10], v17 >= 8))
      {
        jx_meta_manager::link();
      }

      v18 = v12 + 32;
      v19 = 8 * v17;
      if (v12[4] < 1)
      {
        break;
      }

      v20 = *&v18[2 * v19 + 2 * v16];
      if (!v20)
      {
        operator new();
      }

      v14 = v7 - v20[7];
      if ((v14 & 0x80000000) == 0)
      {
        v15 = v8 - v20[6];
        v12 = v20;
        if ((v15 & 0x80000000) == 0)
        {
          continue;
        }
      }

      goto LABEL_30;
    }

    v4 = &v18[6 * v19 + 6 * v16];
    v4[2] = v12;
    v2 = a2;
    *(a2 + 12) = v4;
    v5 = v4 + 1;
  }

  else if (v3 == 1)
  {
    v4 = this + 7;
    *(a2 + 12) = this + 7;
    v5 = this + 8;
  }

  else
  {
    if (*(a2 + 2) == 1718773093)
    {
      return this;
    }

    v13 = a2;
    while (1)
    {
      v13 = *(v13 + 7);
      if (!v13)
      {
        break;
      }

      if (*(v13 + 15) - 1 < 2)
      {
        return this;
      }
    }

    v4 = this + 4;
    *(a2 + 12) = this + 4;
    v5 = this + 5;
  }

  v22 = *v5;
  *(v2 + 13) = 0;
  *(v2 + 14) = v22;
  if (v22)
  {
    v4 = (v22 + 104);
  }

  *v4 = v2;
  *v5 = v2;
  return this;
}

uint64_t jx_metanode::update_completed_descendants(jx_metanode *this)
{
  if (*(this + 13) != 1 || *(this + 12) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = *(this + 7); i; this = v2)
  {
    v2 = i;
    if (*(this + 13) != 1 || *(this + 13) != *(this + 12))
    {
      break;
    }

    v3 = *(i + 52);
    if (v3 >= *(v2 + 48))
    {
      return 0xFFFFFFFFLL;
    }

    *(v2 + 52) = v3 + 1;
    i = *(v2 + 56);
  }

  return 0;
}

void jx_metanode::donate_input_box(jx_metanode *this, jp2_input_box *a2)
{
  if (!*(this + 3) && (*(this + 12) & 1) == 0 && *(this + 13) != 1)
  {
    *(this + 14) = 1;
    operator new();
  }

  jx_metanode::donate_input_box();
}

uint64_t jx_metanode::finish_reading(jx_metanode *this)
{
  if (*(this + 14) != 1)
  {
    return 1;
  }

  v2 = *(this + 3);
  if (!v2)
  {
    if (!*(this + 12) || (*(this + 13) & 1) == 0)
    {
      jx_metanode::finish_reading();
    }

    return 1;
  }

  if (*(this + 12))
  {
    if ((*(this + 13) & 1) == 0)
    {
      do
      {
        v3 = *(this + 3);
        v4 = *(v3 + 368);
        if (v4)
        {
          if ((jx_codestream_source::finish(v4, 0) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v5 = *(v3 + 376);
          if (v5)
          {
            if ((jx_layer_source::finish(v5) & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            if ((*(v3 + 126) & 1) == 0)
            {
              memset(v16, 0, 40);
              kdu_error::kdu_error(v16, "Error in Kakadu File Format Support:\n");
              (*(v16[0] + 16))(v16, "ASOC box not found");
              kdu_error::~kdu_error(v16);
            }

            if (*(v3 + 310) == 1)
            {
              jx_metanode::finish_reading();
            }

            if (jp2_input_box::open((v3 + 184), v3))
            {
              v6 = *(this + 3);
              v7 = *(v6 + 232);
              if (v7 == 1634955107)
              {
                goto LABEL_24;
              }

              v8 = *(*this + 436);
              if (!v8)
              {
                goto LABEL_24;
              }

              if (v8 >= 1)
              {
                v9 = *(*this + 440);
                while (1)
                {
                  v10 = *v9++;
                  if (v10 == v7)
                  {
                    break;
                  }

                  if (!--v8)
                  {
                    goto LABEL_21;
                  }
                }

LABEL_24:
                operator new();
              }

LABEL_21:
              jp2_input_box::close((v6 + 184));
            }

            else
            {
              result = jp2_input_box::is_complete(*(this + 3));
              if (!result)
              {
                return result;
              }

              *(this + 13) = 1;
              jx_metanode::update_completed_descendants(this);
            }
          }
        }
      }

      while (*(this + 13) != 1);
    }

    v12 = *(this + 3);
    if (v12)
    {
      jp2_input_box::~jp2_input_box((v12 + 184));
      jp2_input_box::~jp2_input_box(v12);
      MEMORY[0x186602850]();
    }

    *(this + 3) = 0;
    return 1;
  }

  if ((*(v2 + 310) & 1) == 0)
  {
    if ((*(v2 + 126) & 1) == 0)
    {
      jx_metanode::finish_reading();
    }

    jp2_input_box::open((v2 + 184), v2);
    v2 = *(this + 3);
    if (*(v2 + 310) != 1)
    {
      return 0;
    }

    *(this + 2) = *(v2 + 232);
  }

  result = jp2_input_box::is_complete((v2 + 184));
  *(this + 12) = result;
  if (result)
  {
    v13 = *(this + 3);
    if (*(v13 + 309))
    {
      LODWORD(v14) = -1;
    }

    else
    {
      v14 = *(v13 + 272) - *(v13 + 320) + *(v13 + 360);
    }

    v15 = *(this + 2);
    if (v15 == 1852601204)
    {
      *(this + 15) = 1;
      operator new();
    }

    if (v15 == 1919904100 && v14 >= 2)
    {
      *(this + 15) = 2;
      operator new();
    }

    if (v15 == 1818389536 && (v14 - 1) <= 0x1FFE)
    {
      *(this + 15) = 3;
      operator new[]();
    }

    *(this + 15) = 0;
    if (v15 == 1970628964)
    {
      *(this + 5) = 0;
      *(this + 4) = 0;
      jp2_input_box::read((v13 + 184), this + 32, 0x10uLL);
    }

    operator new();
  }

  return result;
}

uint64_t jx_codestream_source::finish(jx_codestream_source *this, int a2)
{
  if (*(this + 20) == 1)
  {
    if (a2)
    {
      v4 = *(this + 69);
      if (v4 < 0)
      {
        if (!*(this + 68))
        {
          goto LABEL_8;
        }
      }

      else if (!v4 && !*(this + 140))
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  do
  {
LABEL_8:
    v5 = *(this + 65);
    if (v5 < 0)
    {
      if (!*(this + 64))
      {
        continue;
      }
    }

    else if (!v5 && !*(this + 132))
    {
      continue;
    }

    if (!a2)
    {
      break;
    }

    v6 = *(this + 69);
    if (v6 < 0)
    {
      if (*(this + 68))
      {
        break;
      }

      continue;
    }

    if (v6 || *(this + 140))
    {
      break;
    }
  }

  while ((*(this + 23) & 1) == 0 && (*(*this + 216) & 1) == 0 && (jx_source::parse_next_top_level_box(*this, 0) & 1) != 0);
  if (*(this + 150) != 1)
  {
    goto LABEL_61;
  }

  is_complete = jp2_input_box::is_complete((this + 24));
  while ((*(this + 334) & 1) != 0 || jp2_input_box::open((this + 208), (this + 24)))
  {
    result = jp2_input_box::is_complete((this + 208));
    v8 = *(this + 64);
    if (v8 > 1768449137)
    {
      if (v8 == 1885564018)
      {
        if (result)
        {
          j2_palette::init((this + 440), (this + 208));
        }

        return result;
      }

      if (v8 == 1768449138)
      {
        if (result)
        {
          j2_dimensions::init((this + 392), (this + 208));
        }

        return result;
      }
    }

    else
    {
      if (v8 == 1651532643)
      {
        if (!result)
        {
          return result;
        }

        j2_dimensions::process_bpcc_box((this + 392), (this + 208));
        *(this + 432) = 1;
        continue;
      }

      if (v8 == 1668112752)
      {
        if (result)
        {
          j2_component_map::init((this + 472), (this + 208));
        }

        return result;
      }
    }

    v9 = *this;
    if (v8 == 1634955107)
    {
      goto LABEL_46;
    }

    v10 = *(v9 + 2276);
    if (!v10)
    {
      goto LABEL_46;
    }

    if (v10 >= 1)
    {
      v11 = *(v9 + 2280);
      while (1)
      {
        v12 = *v11++;
        if (v12 == v8)
        {
          break;
        }

        if (!--v10)
        {
          goto LABEL_41;
        }
      }

LABEL_46:
      if (!*(this + 67))
      {
        jx_metanode::add_numlist(*(v9 + 1864), 1, this + 4, 0, 0);
      }

      operator new();
    }

LABEL_41:
    jp2_input_box::close((this + 208));
  }

  if (is_complete)
  {
    jp2_input_box::close((this + 24));
    v13 = *(this + 67);
    if (v13)
    {
      *(v13 + 13) = 1;
      jx_metanode::update_completed_descendants(v13);
      v14 = *(this + 67);
      v15 = *(v14 + 24);
      if (v15)
      {
        jp2_input_box::~jp2_input_box((v15 + 184));
        jp2_input_box::~jp2_input_box(v15);
        MEMORY[0x186602850]();
        v14 = *(this + 67);
      }

      *(v14 + 24) = 0;
    }
  }

  else if ((*(this + 100) & 0x80000000) == 0 && *(this + 432) == 1 && *(this + 440) == 1 && *(this + 125) >= 1)
  {
    v16 = *(this + 67);
    if (!v16)
    {
      jx_metanode::add_numlist(*(*this + 1864), 1, this + 4, 0, 0);
    }

    *(*(v16 + 24) + 368) = 0;
    jp2_input_box::transplant(*(v16 + 24), (this + 24));
    if (*(this + 150) == 1)
    {
      jx_codestream_source::finish();
    }
  }

LABEL_61:
  if (*(this + 150))
  {
    return 0;
  }

  if ((*(this + 23) & 1) == 0)
  {
    v17 = *(this + 65);
    if (v17 < 0)
    {
      if (!*(this + 64))
      {
LABEL_69:
        if (*(*this + 216) != 1)
        {
          return 0;
        }
      }
    }

    else if (!v17 && !*(this + 132))
    {
      goto LABEL_69;
    }
  }

  if (*(this + 20))
  {
    goto LABEL_90;
  }

  if ((*(this + 100) & 0x80000000) != 0)
  {
    v18 = *this;
    if ((*(*this + 600) & 1) != 0 || (result = jx_source::finish_jp2_header_box(*this), result))
    {
      if ((*(v18 + 616) & 0x80000000) != 0)
      {
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        kdu_error::kdu_error(v23, "Error in Kakadu File Format Support:\n");
        (*(*&v23[0] + 16))(v23, "JPX source contains no image header box for a codestream.  The image header (ihdr) box cannot be found in a codestream header (chdr) box, and does not exist within a default JP2 header (jp2h) box.");
        kdu_error::~kdu_error(v23);
      }

      j2_dimensions::copy((this + 392), (v18 + 608));
    }

    return result;
  }

  if ((*(this + 440) & 1) == 0)
  {
    v19 = *this;
    if ((*(*this + 600) & 1) == 0)
    {
      result = jx_source::finish_jp2_header_box(*this);
      if (!result)
      {
        return result;
      }
    }

    if (*(v19 + 864) == 1)
    {
      j2_palette::copy((this + 440), (v19 + 864));
    }
  }

  if (*(this + 440) != 1 || *(this + 125) > 0)
  {
    j2_dimensions::finalize(this + 392);
    j2_palette::finalize(this + 440);
    j2_component_map::finalize(this + 472, (this + 392), (this + 440));
    *(this + 20) = 1;
LABEL_90:
    if (a2)
    {
      v21 = *(this + 69);
      if (v21 < 0)
      {
        if (!*(this + 68))
        {
          return 0;
        }
      }

      else if (!v21 && !*(this + 140))
      {
        return 0;
      }
    }

    return 1;
  }

  v20 = *this;
  if ((*(*this + 600) & 1) != 0 || (result = jx_source::finish_jp2_header_box(*this), result))
  {
    if (*(v20 + 924) <= 0)
    {
      j2_component_map::init_missing_cmap(v20 + 896, this + 392);
    }

    j2_component_map::copy(this + 472, v20 + 896);
  }

  return result;
}

uint64_t jx_layer_source::finish(jx_layer_source *this)
{
  if (*(this + 12))
  {
    return 1;
  }

  do
  {
    v3 = *(this + 72);
    if (v3 < 0)
    {
      if (*(this + 71))
      {
        break;
      }

      goto LABEL_8;
    }

    if (v3 || *(this + 146))
    {
      break;
    }

LABEL_8:
    v4 = *this;
  }

  while ((*(*this + 216) & 1) == 0 && (*(v4 + 16) & 1) == 0 && (jx_source::parse_next_top_level_box(v4, 0) & 1) != 0);
  if (*(this + 142) != 1)
  {
    goto LABEL_68;
  }

  is_complete = jp2_input_box::is_complete((this + 16));
  if (*(this + 326))
  {
    v5 = (this + 200);
  }

  else
  {
    v5 = (this + 16);
  }

  v51 = (this + 592);
  while (1)
  {
    if ((*(this + 510) & 1) == 0 && (jp2_input_box::open((this + 384), v5) & 1) == 0)
    {
      if (v5 != (this + 200))
      {
        break;
      }

      if (!jp2_input_box::is_complete((this + 200)))
      {
        break;
      }

      if (!jp2_input_box::close((this + 200)))
      {
        break;
      }

      v5 = (this + 16);
      if (!jp2_input_box::open((this + 384), (this + 16)))
      {
        break;
      }
    }

    if (*(this + 108) == 1667723888)
    {
      if (*(this + 326) != 1)
      {
        jp2_input_box::transplant((this + 200), (this + 384));
        v5 = (this + 200);
        continue;
      }

      goto LABEL_24;
    }

    result = jp2_input_box::is_complete((this + 384));
    v6 = *(this + 108);
    if (v6 <= 1668441446)
    {
      if (v6 == 1667523942)
      {
        goto LABEL_40;
      }

      if (v6 != 1668246642)
      {
LABEL_44:
        v9 = *this;
        if (v6 == 1634955107)
        {
          goto LABEL_51;
        }

        v10 = *(v9 + 2276);
        if (!v10)
        {
          goto LABEL_51;
        }

        if (v10 >= 1)
        {
          v11 = *(v9 + 2280);
          while (1)
          {
            v12 = *v11++;
            if (v12 == v6)
            {
              break;
            }

            if (!--v10)
            {
              goto LABEL_24;
            }
          }

LABEL_51:
          if (!*(this + 99))
          {
            jx_metanode::add_numlist(*(v9 + 1864), 0, 0, 1, this + 2);
          }

          operator new();
        }

LABEL_24:
        jp2_input_box::close((this + 384));
        continue;
      }

      if (!result)
      {
        return result;
      }

      v7 = (this + 648);
      if (*(this + 326) != 1)
      {
        v54 = 0;
        v52 = 0u;
        v53 = 0u;
        kdu_warning::kdu_warning(&v52, "Warning in Kakadu File Format Support:\n");
        (*(v52 + 16))(&v52, "Colour description (colr) box found inside a compositing layer header (jplh) box, but not wrapped by a colour group (cgrp) box.  This is technically a violation of the JPX standard, but we will parse the box anyway.");
        kdu_warning::~kdu_warning(&v52);
        v7 = (this + 648);
      }

      do
      {
        v8 = v7;
        v7 = *(v7 + 13);
      }

      while (v7);
      if (*v8 == 1)
      {
        operator new();
      }

      j2_colour::init(v8, (this + 384));
    }

    else
    {
      if (v6 == 1668441447)
      {
        if (result)
        {
          jx_registration::init((this + 760), (this + 384));
        }

        return result;
      }

      if (v6 == 1869636468)
      {
LABEL_40:
        if (!result)
        {
          return result;
        }

        j2_channels::init((this + 608), (this + 384));
        continue;
      }

      if (v6 != 1919251232)
      {
        goto LABEL_44;
      }

      if (!result)
      {
        return result;
      }

      j2_resolution::init(v51, (this + 384));
    }
  }

  if (is_complete)
  {
    jp2_input_box::close((this + 16));
    v13 = *(this + 99);
    if (v13)
    {
      *(v13 + 13) = 1;
      jx_metanode::update_completed_descendants(v13);
      v14 = *(this + 99);
      v15 = *(v14 + 24);
      if (v15)
      {
        jp2_input_box::~jp2_input_box((v15 + 184));
        jp2_input_box::~jp2_input_box(v15);
        MEMORY[0x186602850]();
        v14 = *(this + 99);
      }

      *(v14 + 24) = 0;
    }
  }

  else if (*(this + 648) == 1 && (*(this + 326) & 1) == 0 && *(this + 153) && *v51 > 0.0 && *(this + 191) >= 1)
  {
    v16 = *(this + 99);
    if (!v16)
    {
      jx_metanode::add_numlist(*(*this + 1864), 0, 0, 1, this + 2);
    }

    *(*(v16 + 24) + 376) = 0;
    jp2_input_box::transplant(*(v16 + 24), (this + 16));
    if (*(this + 142) == 1)
    {
      jx_layer_source::finish();
    }
  }

LABEL_68:
  if (*(this + 142))
  {
    return 0;
  }

  v17 = *(this + 72);
  if (v17 < 0)
  {
    if (!*(this + 71))
    {
LABEL_75:
      if ((*(*this + 216) & 1) == 0 && *(*this + 16) != 1)
      {
        return 0;
      }
    }
  }

  else if (!v17 && !*(this + 146))
  {
    goto LABEL_75;
  }

  jx_registration::finalize(this + 95);
  if (*(this + 191) < 1)
  {
    v22 = 0;
    goto LABEL_84;
  }

  v18 = 0;
  v19 = 0;
  do
  {
    codestream = jx_source::get_codestream(*this, *(*(this + 96) + v18));
    if (!codestream)
    {
      if (*(*this + 216) == 1)
      {
        v54 = 0;
        v52 = 0u;
        v53 = 0u;
        kdu_error::kdu_error(&v52, "Error in Kakadu File Format Support:\n");
        (*(v52 + 16))(&v52, "Encountered a JPX compositing layer box which utilizes a non-existent codestream!");
        kdu_error::~kdu_error(&v52);
      }

      return 0;
    }

    if ((jx_codestream_source::finish(codestream, 1) & 1) == 0)
    {
      return 0;
    }

    ++v19;
    v21 = *(this + 191);
    v18 += 20;
  }

  while (v19 < v21);
  v22 = v21 > 0;
LABEL_84:
  if (*(this + 197) && *(this + 196))
  {
    goto LABEL_113;
  }

  *(this + 98) = 0;
  if (!v22)
  {
    v30 = 0;
    v31 = 0;
    v32 = *(this + 195);
    if (v32 <= 1)
    {
      v32 = 1;
    }

    goto LABEL_106;
  }

  v23 = 0;
  v24 = 0;
  v25 = *(this + 96);
  while (2)
  {
    v26 = jx_source::get_codestream(*this, *(v25 + v23));
    if (!v26 || (*(v26 + 20) & 1) == 0)
    {
      jx_layer_source::finish();
    }

    *&v52 = v26 + 392;
    size = jp2_dimensions::get_size(&v52);
    v25 = *(this + 96);
    v28 = *(v25 + v23 + 8) + *(v25 + v23 + 16) * HIDWORD(size);
    v29 = *(v25 + v23 + 4) + *(v25 + v23 + 12) * size;
    if (!v23)
    {
      *(this + 197) = v28;
      v30 = v28;
LABEL_96:
      *(this + 196) = v29;
      v31 = v29;
      goto LABEL_97;
    }

    v30 = *(this + 197);
    if (v28 < v30)
    {
      *(this + 197) = v28;
      v30 = v28;
    }

    v31 = *(this + 196);
    if (v29 < v31)
    {
      goto LABEL_96;
    }

LABEL_97:
    ++v24;
    v23 += 20;
    if (v24 < *(this + 191))
    {
      continue;
    }

    break;
  }

  v32 = *(this + 195);
  if (v32 <= 1)
  {
    v32 = 1;
  }

  if (v30 > 0)
  {
    v33 = (v30 - 1) / v32 + 1;
    goto LABEL_107;
  }

LABEL_106:
  v33 = -(-v30 / v32);
LABEL_107:
  *(this + 197) = v33;
  v34 = *(this + 194);
  if (v34 <= 1)
  {
    v34 = 1;
  }

  if (v31 <= 0)
  {
    v35 = -(-v31 / v34);
  }

  else
  {
    v35 = (v31 - 1) / v34 + 1;
  }

  *(this + 196) = v35;
LABEL_113:
  v36 = (this + 648);
  if (*(this + 648))
  {
LABEL_121:
    if (!*(this + 153))
    {
      v40 = *this;
      if ((*(*this + 600) & 1) == 0)
      {
        result = jx_source::finish_jp2_header_box(*this);
        if (!result)
        {
          return result;
        }
      }

      if (*(v40 + 940))
      {
        j2_channels::copy((this + 608), (v40 + 936));
      }
    }

    if (*(this + 148) <= 0.0)
    {
      v41 = *this;
      if ((*(*this + 600) & 1) == 0)
      {
        result = jx_source::finish_jp2_header_box(*this);
        if (!result)
        {
          return result;
        }
      }

      v42 = *(v41 + 1088);
      if (v42 > 0.0)
      {
        *(this + 148) = v42;
        *(this + 149) = *(v41 + 1092);
        *(this + 75) = *(v41 + 1096);
      }
    }

    v43 = this + 648;
    do
    {
      v44 = *(v43 + 2);
      v43 = *(v43 + 13);
      if (v43)
      {
        v45 = v44 == 0;
      }

      else
      {
        v45 = 0;
      }
    }

    while (v45);
    j2_channels::finalize(this + 152, v44, 0);
    if (*(this + 191) >= 1)
    {
      v46 = 0;
      v47 = 0;
      do
      {
        v48 = *(*(this + 96) + v46);
        v49 = jx_source::get_codestream(*this, v48);
        if (!v49)
        {
          jx_layer_source::finish();
        }

        j2_channels::find_cmap_channels(this + 152, (v49 + 472), v48);
        ++v47;
        v46 += 20;
      }

      while (v47 < *(this + 191));
    }

    if (!j2_channels::all_cmap_channels_found((this + 608)))
    {
      v54 = 0;
      v52 = 0u;
      v53 = 0u;
      kdu_error::kdu_error(&v52, "Error in Kakadu File Format Support:\n");
      (*(v52 + 16))(&v52, "JP2/JPX source is internally inconsistent.  Either an explicit channel mapping box, or the set of channels implicitly identified by a colour space box, cannot all be associated with available code-stream image components.");
      kdu_error::~kdu_error(&v52);
    }

    do
    {
      j2_colour::finalize(v36, (this + 608));
      v36 = *(v36 + 13);
    }

    while (v36);
    result = 1;
    *(this + 12) = 1;
  }

  else
  {
    v37 = *this;
    if ((*(*this + 600) & 1) != 0 || (result = jx_source::finish_jp2_header_box(*this), result))
    {
      v38 = (v37 + 976);
      v39 = (this + 648);
      do
      {
        if (*v38 != 1)
        {
          break;
        }

        if (*v39 == 1)
        {
          operator new();
        }

        j2_colour::copy(v39, v38);
        v38 = *(v38 + 13);
      }

      while (v38);
      goto LABEL_121;
    }
  }

  return result;
}