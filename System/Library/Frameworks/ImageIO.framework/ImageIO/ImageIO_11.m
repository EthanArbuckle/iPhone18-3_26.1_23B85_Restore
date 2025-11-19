uint64_t kd_tile::kd_tile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 104) = 0;
  v10 = a1 + 104;
  *(a1 + 280) = 0;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 244) = 0;
  *a1 = a2;
  *(a1 + 24) = a3;
  if (*(a3 + 16))
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
    (*(*&v13[0] + 16))(v13, "Assert ");
    (*(*&v13[0] + 16))(v13, "tref->tile == NULL");
    (*(*&v13[0] + 16))(v13, " FAILED");
    kdu_error::~kdu_error(v13);
  }

  *(a1 + 12) = a4;
  *(a1 + 8) = HIDWORD(a4) + *(a2 + 224) * a4;
  *(a1 + 184) = 0;
  *(a1 + 288) = 0;
  *(a1 + 32) = 0;
  v11 = *(a2 + 8);
  if (v11 && ((*(**(v11 + 552) + 24))(*(v11 + 552)) & 2) != 0)
  {
    kd_precinct_pointer_server::initialize(v10, *(a2 + 48));
  }

  *(a1 + 212) = a5;
  *(a1 + 220) = a6;
  *(a1 + 236) = 0;
  *(a1 + 328) = 0;
  *(a1 + 287) = 0;
  *(a1 + 320) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  *(a1 + 297) = 0;
  *(a1 + 289) = 0;
  *(a1 + 316) = 0;
  *(a1 + 308) = 0;
  *(a1 + 300) = 0;
  return a1;
}

uint64_t kd_precinct_pointer_server::initialize(uint64_t this, kd_buf_server *a2)
{
  if (*this)
  {
    kd_precinct_pointer_server::initialize();
  }

  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 60) = 0;
  *(this + 72) = 0;
  *this = a2;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void kd_tile::~kd_tile(kd_tile *this)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(*this + 440) == this)
  {
    *&v21 = 0;
    *v19 = 0u;
    v20 = 0u;
    kdu_error::kdu_error(v19, "Kakadu Core Error:\n");
    (*(*v19 + 16))(v19, "Assert ");
    (*(*v19 + 16))(v19, "this != codestream->active_tile");
    (*(*v19 + 16))(v19, " FAILED");
    kdu_error::~kdu_error(v19);
  }

  if (*(this + 288) == 1)
  {
    kd_tile::remove_from_in_progress_list(this);
  }

  v2 = *(this + 10);
  if (v2)
  {
    kd_pp_markers::~kd_pp_markers(v2);
    MEMORY[0x186602850]();
  }

  v3 = *(this + 11);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 3))
  {
    v4 = **this;
    if (!v4 || (*(this + 287) & 1) != 0)
    {
      goto LABEL_17;
    }

    (*(*v4 + 16))(**this, "\n>> New attributes for tile ");
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *v19 = 0u;
    if (*(v4 + 8))
    {
      sprintf(v19, "%x");
    }

    else
    {
      sprintf(v19, "%d");
    }

    (*(*v4 + 16))(v4, v19);
    (*(*v4 + 16))(v4, ":\n");
    kdu_params::textualize_attributes(*(*this + 24), v4, *(this + 2), *(this + 2), 1);
    (*(*v4 + 32))(v4, 0);
    if (*(this + 3))
    {
LABEL_17:
      if ((*(this + 287) & 1) == 0 && (*(this + 290) & 1) == 0)
      {
        for (i = 1; ; ++i)
        {
          v17 = kdu_params::access_cluster(*(*this + 24), i);
          if (!v17)
          {
            break;
          }

          v18 = kdu_params::access_unique(v17, *(this + 2), -1, 0);
          if (v18)
          {
            (*(*v18 + 16))(v18);
          }
        }
      }
    }
  }

  v5 = *(this + 12);
  if (v5)
  {
    MEMORY[0x186602850](v5, 0x1020C40539952E0);
  }

  v6 = *(this + 34);
  if (v6)
  {
    v7 = v6 - 16;
    v8 = *(v6 - 8);
    if (v8)
    {
      v9 = (v6 + 224 * v8 - 224);
      v10 = -224 * v8;
      do
      {
        kd_tile_comp::~kd_tile_comp(v9);
        v9 = (v11 - 224);
        v10 += 224;
      }

      while (v10);
    }

    MEMORY[0x186602830](v7, 0x10A0C802A3299D9);
  }

  v12 = *(this + 32);
  for (*(this + 33) = v12; v12; *(this + 33) = v12)
  {
    *(this + 32) = *(v12 + 7);
    kd_mct_stage::~kd_mct_stage(v12);
    MEMORY[0x186602850]();
    v12 = *(this + 32);
  }

  v13 = *(this + 3);
  if (v13 && *(v13 + 16) != this)
  {
    *&v21 = 0;
    *v19 = 0u;
    v20 = 0u;
    kdu_error::kdu_error(v19, "Kakadu Core Error:\n");
    (*(*v19 + 16))(v19, "Assert ");
    (*(*v19 + 16))(v19, "tile_ref->tile == this");
    (*(*v19 + 16))(v19, " FAILED");
    kdu_error::~kdu_error(v19);
  }

  if (*(this + 290) == 1)
  {
    if (!*(this + 3))
    {
      *&v21 = 0;
      *v19 = 0u;
      v20 = 0u;
      kdu_error::kdu_error(v19, "Kakadu Core Error:\n");
      (*(*v19 + 16))(v19, "Assert ");
      (*(*v19 + 16))(v19, "tile_ref != NULL");
      (*(*v19 + 16))(v19, " FAILED");
      kdu_error::~kdu_error(v19);
    }

    kd_tile::withdraw_from_unloadable_list(this);
    v14 = 0;
    v15 = *(this + 3);
    goto LABEL_39;
  }

  v15 = *(this + 3);
  if (*(this + 287) == 1)
  {
    if (!v15)
    {
      *&v21 = 0;
      *v19 = 0u;
      v20 = 0u;
      kdu_error::kdu_error(v19, "Kakadu Core Error:\n");
      (*(*v19 + 16))(v19, "Assert ");
      (*(*v19 + 16))(v19, "tile_ref != NULL");
      (*(*v19 + 16))(v19, " FAILED");
      kdu_error::~kdu_error(v19);
    }

    v14 = 0;
    goto LABEL_39;
  }

  if (v15)
  {
    v14 = -1;
LABEL_39:
    *(v15 + 16) = v14;
    kd_buf_server::augment_structure_bytes(*(*this + 48), -*(this + 70));
  }

  kd_precinct_pointer_server::disable(this + 13);
}

void sub_185F0ED28(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *kd_tile::remove_from_in_progress_list(uint64_t *this)
{
  if (*(this + 288) == 1)
  {
    v1 = *this;
    v2 = *(*this + 360);
    if (v2 <= 0)
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
      (*(v5 + 16))(&v5, "Assert ");
      (*(v5 + 16))(&v5, "codestream->num_incomplete_tiles > 0");
      (*(v5 + 16))(&v5, " FAILED");
      kdu_error::~kdu_error(&v5);
    }

    *(v1 + 360) = v2 - 1;
    v3 = this[6];
    if (v3)
    {
      v4 = this[5];
      *(v3 + 40) = v4;
      if (v4)
      {
LABEL_6:
        *(v4 + 48) = this[6];
LABEL_13:
        *(this + 288) = 0;
        this[5] = 0;
        this[6] = 0;
        return this;
      }
    }

    else
    {
      if (*(v1 + 336) != this)
      {
        v7 = 0;
        v5 = 0u;
        v6 = 0u;
        kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
        (*(v5 + 16))(&v5, "Assert ");
        (*(v5 + 16))(&v5, "this == codestream->tiles_in_progress_head");
        (*(v5 + 16))(&v5, " FAILED");
        kdu_error::~kdu_error(&v5);
      }

      v4 = this[5];
      *(v1 + 336) = v4;
      if (v4)
      {
        goto LABEL_6;
      }
    }

    if (*(v1 + 344) != this)
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
      (*(v5 + 16))(&v5, "Assert ");
      (*(v5 + 16))(&v5, "this == codestream->tiles_in_progress_tail");
      (*(v5 + 16))(&v5, " FAILED");
      kdu_error::~kdu_error(&v5);
    }

    *(v1 + 344) = this[6];
    goto LABEL_13;
  }

  return this;
}

_BYTE *kdu_message::operator<<(_BYTE *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *v3 = 0u;
  if (a1[8])
  {
    sprintf(v3, "%x");
  }

  else
  {
    sprintf(v3, "%d");
  }

  (*(*a1 + 16))(a1, v3);
  return a1;
}

uint64_t *kd_tile::withdraw_from_unloadable_list(uint64_t *this)
{
  if ((*(this + 290) & 1) == 0)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
    (*(v5 + 16))(&v5, "Assert ");
    (*(v5 + 16))(&v5, "is_unloadable");
    (*(v5 + 16))(&v5, " FAILED");
    kdu_error::~kdu_error(&v5);
  }

  v1 = this[8];
  if (v1)
  {
    v2 = this[7];
    *(v1 + 56) = v2;
    if (v2)
    {
LABEL_5:
      *(v2 + 64) = this[8];
      v3 = *this;
      goto LABEL_12;
    }
  }

  else
  {
    if (*(*this + 480) != this)
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
      (*(v5 + 16))(&v5, "Assert ");
      (*(v5 + 16))(&v5, "codestream->unloadable_tiles_head == this");
      (*(v5 + 16))(&v5, " FAILED");
      kdu_error::~kdu_error(&v5);
    }

    v2 = this[7];
    *(*this + 480) = v2;
    if (v2)
    {
      goto LABEL_5;
    }
  }

  v3 = *this;
  if (*(*this + 488) != this)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
    (*(v5 + 16))(&v5, "Assert ");
    (*(v5 + 16))(&v5, "codestream->unloadable_tiles_tail == this");
    (*(v5 + 16))(&v5, " FAILED");
    kdu_error::~kdu_error(&v5);
  }

  *(v3 + 488) = this[8];
LABEL_12:
  if (*(v3 + 496) == this)
  {
    *(v3 + 496) = this[7];
  }

  this[7] = 0;
  this[8] = 0;
  v4 = *(v3 + 504);
  *(v3 + 504) = v4 - 1;
  if (v4 <= 0)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
    (*(v5 + 16))(&v5, "Assert ");
    (*(v5 + 16))(&v5, "codestream->num_unloadable_tiles >= 0");
    (*(v5 + 16))(&v5, " FAILED");
    kdu_error::~kdu_error(&v5);
  }

  *(this + 290) = 0;
  return this;
}

uint64_t kd_buf_server::augment_structure_bytes(uint64_t this, int a2)
{
  v2 = *(this + 40) + a2;
  *(this + 40) = v2;
  if (v2 < 0)
  {
    kd_buf_server::augment_structure_bytes();
  }

  if (v2 > *(this + 48))
  {
    *(this + 48) = v2;
  }

  return this;
}

uint64_t kd_tile::release(kd_tile *this)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!*(this + 3) || *(*this + 440) == this)
  {
    *&v27 = 0;
    *v25 = 0u;
    v26 = 0u;
    kdu_error::kdu_error(v25, "Kakadu Core Error:\n");
    (*(*v25 + 16))(v25, "Assert ");
    (*(*v25 + 16))(v25, "(tile_ref != NULL) && (this != codestream->active_tile)");
    (*(*v25 + 16))(v25, " FAILED");
    kdu_error::~kdu_error(v25);
  }

  if (*(*this + 8) && (*(this + 287) & 1) == 0 && (*(this + 184) & 1) != 0)
  {
    *(this + 4) = 0;
    v2 = *(this + 10);
    if (v2)
    {
      kd_pp_markers::~kd_pp_markers(v2);
      MEMORY[0x186602850]();
      *(this + 10) = 0;
    }

    v3 = *(this + 11);
    if (v3)
    {
      (*(*v3 + 8))(v3);
      *(this + 11) = 0;
    }

    v4 = *(this + 12);
    if (v4)
    {
      MEMORY[0x186602850](v4, 0x1020C40539952E0);
      *(this + 12) = 0;
    }

    kd_precinct_pointer_server::disable(this + 13);
    v5 = *(this + 47);
    if (v5 >= 1)
    {
      for (i = 0; i < v5; ++i)
      {
        v7 = *(this + 34) + 224 * i;
        v8 = *(v7 + 68);
        if ((v8 & 0x80000000) == 0)
        {
          v9 = 0;
          do
          {
            v10 = *(v7 + 176) + 704 * v9;
            if (*(v10 + 192) * *(v10 + 196) >= 1)
            {
              v11 = 0;
              v12 = 8 * (*(v10 + 192) * *(v10 + 196));
              do
              {
                v13 = *(v10 + 232);
                v14 = *(v13 + v11);
                if (v14)
                {
                  v15 = (*(v13 + v11) & 1) == 0;
                }

                else
                {
                  v15 = 0;
                }

                if (v15)
                {
                  *(v14 + 8) = 0;
                  kd_precinct::closing(v14);
                  kd_precinct_size_class::release(*(v14 + 72), v14);
                }

                *(v13 + v11) = 0;
                v11 += 8;
              }

              while (v12 != v11);
              v8 = *(v7 + 68);
            }
          }

          while (v9++ < v8);
          v5 = *(this + 47);
        }
      }
    }

    v17 = **this;
    v18 = *(this + 287);
    if (v17 && (*(this + 287) & 1) == 0)
    {
      (*(*v17 + 16))(**this, "\n>> New attributes for tile ");
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      *v25 = 0u;
      if (*(v17 + 8))
      {
        sprintf(v25, "%x");
      }

      else
      {
        sprintf(v25, "%d");
      }

      (*(*v17 + 16))(v17, v25);
      (*(*v17 + 16))(v17, ":\n");
      kdu_params::textualize_attributes(*(*this + 24), v17, *(this + 2), *(this + 2), 1);
      (*(*v17 + 32))(v17, 0);
      v18 = *(this + 287);
    }

    if ((v18 & 1) == 0 && (*(this + 290) & 1) == 0)
    {
      v19 = kdu_params::access_cluster(*(*this + 24), 1);
      if (v19)
      {
        v20 = 2;
        do
        {
          v21 = kdu_params::access_unique(v19, *(this + 2), -1, 0);
          if (v21)
          {
            (*(*v21 + 16))(v21);
          }

          v19 = kdu_params::access_cluster(*(*this + 24), v20++);
        }

        while (v19);
      }
    }

    if (*(*(this + 3) + 16) != this)
    {
      *&v27 = 0;
      *v25 = 0u;
      v26 = 0u;
      kdu_error::kdu_error(v25, "Kakadu Core Error:\n");
      (*(*v25 + 16))(v25, "Assert ");
      (*(*v25 + 16))(v25, "tile_ref->tile == this");
      (*(*v25 + 16))(v25, " FAILED");
      kdu_error::~kdu_error(v25);
    }

    if (*(this + 290) == 1)
    {
      kd_tile::withdraw_from_unloadable_list(this);
      v22 = *(this + 3);
    }

    else
    {
      v22 = *(this + 3);
      if (*(this + 287) != 1)
      {
        *(v22 + 16) = -1;
        goto LABEL_52;
      }
    }

    *(v22 + 16) = 0;
LABEL_52:
    result = kd_buf_server::augment_structure_bytes(*(*this + 48), -*(this + 70));
    *(this + 70) = 0;
    *(this + 3) = 0;
    *(this + 2) = -1;
    v24 = *this;
    *(this + 9) = *(*this + 512);
    *(v24 + 512) = this;
    return result;
  }

  kd_tile::~kd_tile(this);
  return MEMORY[0x186602850]();
}

void kd_tile::initialize(kd_tile *this)
{
  if (*(this + 293) == 1)
  {
    v15 = 0;
    *v13 = 0u;
    v14 = 0u;
    kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
    (*(*v13 + 16))(v13, "Assert ");
    (*(*v13 + 16))(v13, "!needs_reinit");
    (*(*v13 + 16))(v13, " FAILED");
    kdu_error::~kdu_error(v13);
  }

  v2 = *this;
  *(this + 47) = *(*this + 168);
  *(this + 300) = 0;
  if (!*(v2 + 8) || (*(this + 292) & 1) != 0 || (*(this + 4) = **(this + 3), (kd_tile::read_tile_part_header(this) & 1) != 0))
  {
    v3 = kdu_params::access_cluster(*(*this + 24), "COD");
    if (!v3)
    {
      v15 = 0;
      *v13 = 0u;
      v14 = 0u;
      kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
      (*(*v13 + 16))(v13, "Assert ");
      (*(*v13 + 16))(v13, "cod != NULL");
      (*(*v13 + 16))(v13, " FAILED");
      kdu_error::~kdu_error(v13);
    }

    v12 = kdu_params::access_relation(v3, *(this + 2), -1, 0, 1);
    v4 = kdu_params::access_cluster(*(*this + 24), "QCD");
    if (!v4)
    {
      v15 = 0;
      *v13 = 0u;
      v14 = 0u;
      kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
      (*(*v13 + 16))(v13, "Assert ");
      (*(*v13 + 16))(v13, "qcd != NULL");
      (*(*v13 + 16))(v13, " FAILED");
      kdu_error::~kdu_error(v13);
    }

    kdu_params::access_relation(v4, *(this + 2), -1, 0, 1);
    v5 = kdu_params::access_cluster(*(*this + 24), "RGN");
    if (!v5)
    {
      v15 = 0;
      *v13 = 0u;
      v14 = 0u;
      kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
      (*(*v13 + 16))(v13, "Assert ");
      (*(*v13 + 16))(v13, "rgn != NULL");
      (*(*v13 + 16))(v13, " FAILED");
      kdu_error::~kdu_error(v13);
    }

    kdu_params::access_relation(v5, *(this + 2), -1, 0, 1);
    v6 = kdu_params::access_cluster(*(*this + 24), "ORG");
    if (!v6)
    {
      v15 = 0;
      *v13 = 0u;
      v14 = 0u;
      kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
      (*(*v13 + 16))(v13, "Assert ");
      (*(*v13 + 16))(v13, "org != NULL");
      (*(*v13 + 16))(v13, " FAILED");
      kdu_error::~kdu_error(v13);
    }

    v7 = kdu_params::access_relation(v6, *(this + 2), -1, 0, 1);
    if (!kdu_params::get(v12, "Cuse_sop", 0, 0, this + 284, 1, 1, 1) || !kdu_params::get(v12, "Cuse_eph", 0, 0, this + 285, 1, 1, 1) || !kdu_params::get(v12, "Cycc", 0, 0, this + 286, 1, 1, 1) || !kdu_params::get(v12, "Calign_blk_last", 0, 0, this + 61, 1, 1, 1) || !kdu_params::get(v12, "Calign_blk_last", 0, 1, this + 62, 1, 1, 1) || (kdu_params::get(v12, "Clayers", 0, 0, this + 48, 1, 1, 1) & 1) == 0)
    {
      v15 = 0;
      *v13 = 0u;
      v14 = 0u;
      kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
      (*(*v13 + 16))(v13, "Corrupt jp2 file: invalid COD parameters ");
      kdu_error::~kdu_error(v13);
    }

    v8 = *(this + 48);
    v9 = *this;
    if (v8 > *(*this + 256))
    {
      *(v9 + 256) = v8;
    }

    if (*(v9 + 16))
    {
      v13[0] = 0;
      if ((kdu_params::get(v7, "ORGtparts", 0, 0, v13, 1, 1, 1) & 1) == 0)
      {
        v13[0] = 0;
      }

      if ((kdu_params::get(v7, "ORGgen_plt", 0, 0, this + 294, 1, 1, 1) & 1) == 0)
      {
        *(this + 294) = 0;
      }

      v10 = v13[0];
      *(this + 295) = v13[0] & 1;
      *(this + 296) = (v10 & 4) != 0;
      *(this + 297) = (v10 & 2) != 0;
    }

    if (*(this + 32))
    {
      v15 = 0;
      *v13 = 0u;
      v14 = 0u;
      kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
      (*(*v13 + 16))(v13, "Assert ");
      (*(*v13 + 16))(v13, "mct_head == NULL");
      (*(*v13 + 16))(v13, " FAILED");
      kdu_error::~kdu_error(v13);
    }

    if (*(*this + 164) == 1)
    {
      kd_mct_stage::create_stages(this + 32, this + 33, *(*this + 24), *(this + 2), *(this + 47), *(*this + 312), *(*this + 176), *(*this + 320));
    }

    v11 = *(this + 47);
    *(this + 49) = *(this + 48);
    is_mul_ok(v11, 0xE0uLL);
    operator new[]();
  }

  v15 = 0;
  *v13 = 0u;
  v14 = 0u;
  kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
  (*(*v13 + 16))(v13, "read_failure in kd_tile::initialize ");
  kdu_error::~kdu_error(v13);
}

uint64_t kd_tile::read_tile_part_header(kd_tile *this)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (!*(*this + 8))
  {
    *&v67 = 0;
    *v65 = 0u;
    v66 = 0u;
    kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
    (*(*v65 + 16))(v65, "Assert ");
    (*(*v65 + 16))(v65, "codestream->in != NULL");
    (*(*v65 + 16))(v65, " FAILED");
    kdu_error::~kdu_error(v65);
  }

  if (*(v2 + 418) == 1)
  {
    if (*(this + 76))
    {
      *&v67 = 0;
      *v65 = 0u;
      v66 = 0u;
      kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
      (*(*v65 + 16))(v65, "Assert ");
      (*(*v65 + 16))(v65, "next_tpart == 0");
      (*(*v65 + 16))(v65, " FAILED");
      kdu_error::~kdu_error(v65);
    }

    if (*(this + 290) == 1)
    {
      kd_tile::withdraw_from_unloadable_list(this);
    }

    kd_codestream::unload_tiles_to_cache_threshold(*this);
    if (kd_compressed_input::set_tileheader_scope(*(*this + 8)))
    {
      v3 = *(*this + 24);
      if (kd_marker::read(*(*this + 32), 0, 0))
      {
        do
        {
          v4 = *(*this + 32);
          v5 = *(v4 + 16);
          if (v5 == 65377)
          {
            *&v67 = 0;
            *v65 = 0u;
            v66 = 0u;
            kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
            (*(*v65 + 16))(v65, "You cannot use PPM or PPT marker segments (packed packet headers) with cached compressed data sources.");
            kdu_error::~kdu_error(v65);
          }

          kdu_params::translate_marker_segment(v3, v5, *(v4 + 20), *(v4 + 32), *(this + 2), 0);
        }

        while ((kd_marker::read(*(*this + 32), 0, 0) & 1) != 0);
      }

      if ((*(*(*this + 8) + 544) & 1) == 0)
      {
        *&v67 = 0;
        *v65 = 0u;
        v66 = 0u;
        kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
        (*(*v65 + 16))(v65, "Found non-marker code while parsing tile header marker segments.  Chances are that a marker segment length field is incorrect!");
        kdu_error::~kdu_error(v65);
      }

      kdu_params::finalize_all(v3, *(this + 2), 1);
    }

    else
    {
      *(this + 287) = 1;
    }

    *(this + 300) = 0x100000001;
    ++*(*this + 460);
    *(this + 328) = 1;
    if (*(this + 291) == 1)
    {
      *&v67 = 0;
      *v65 = 0u;
      v66 = 0u;
      kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
      (*(*v65 + 16))(v65, "Assert ");
      (*(*v65 + 16))(v65, "!closed");
      (*(*v65 + 16))(v65, " FAILED");
      kdu_error::~kdu_error(v65);
    }

    kd_tile::adjust_unloadability(this);
    return 1;
  }

  if (*(this + 328))
  {
LABEL_20:
    if (*(v2 + 440) == this)
    {
      *&v67 = 0;
      *v65 = 0u;
      v66 = 0u;
      kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
      (*(*v65 + 16))(v65, "Assert ");
      (*(*v65 + 16))(v65, "this != codestream->active_tile");
      (*(*v65 + 16))(v65, " FAILED");
      kdu_error::~kdu_error(v65);
    }

    return 0;
  }

  if (*(this + 75) >= 1 && *(this + 76) >= 255)
  {
    kd_tile::finished_reading(this);
    v2 = *this;
    goto LABEL_20;
  }

  v7 = *(v2 + 440);
  while (2)
  {
    if (!v7)
    {
      goto LABEL_45;
    }

    *&v61 = 0;
    v64 = 0;
    if (!*(v7 + 96))
    {
      *&v67 = 0;
      *v65 = 0u;
      v66 = 0u;
      kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
      (*(*v65 + 16))(v65, "Invalid code-stream!\n");
      (*(*v65 + 16))(v65, "\t'active->sequencer' is NULL");
      kdu_error::~kdu_error(v65);
    }

    do
    {
      v8 = kd_packet_sequencer::next_in_sequence(*(v7 + 96), &v61, &v64);
      if (!v8)
      {
        break;
      }

      v9 = *v8;
      if (!*v8)
      {
        v9 = kd_precinct_ref::instantiate_precinct(v8, v61, v64);
        goto LABEL_41;
      }

      if ((v9 & 1) == 0 && (*(v9 + 17) & 1) == 0)
      {
        if (v9 == 3)
        {
          v9 = 0;
        }

        else if (*(v9 + 20) == 1)
        {
          kd_precinct_size_class::withdraw_from_inactive_list(*(v9 + 72), v9);
          kd_precinct::activate(v9);
        }

LABEL_41:
        if (!kd_precinct::desequence_packet(v9))
        {
          break;
        }
      }
    }

    while (v7 == *(*this + 440));
    if (v7 == *(*this + 440))
    {
      *(*this + 440) = 0;
      kd_tile::adjust_unloadability(v7);
    }

LABEL_45:
    if (*(*(this + 3) + 16) != this)
    {
      *&v67 = 0;
      *v65 = 0u;
      v66 = 0u;
      kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
      (*(*v65 + 16))(v65, "Assert ");
      (*(*v65 + 16))(v65, "tile_ref->tile == this");
      (*(*v65 + 16))(v65, " FAILED");
      kdu_error::~kdu_error(v65);
    }

    v10 = *this;
    v11 = *(*this + 72);
    if (!v11)
    {
      if (*(*(v10 + 32) + 16) != -112)
      {
        v13 = *(v10 + 8);
        if ((*(v13 + 544) & 1) == 0)
        {
          if (*(v10 + 448) <= 0)
          {
            *&v67 = 0;
            *v65 = 0u;
            v66 = 0u;
            kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
            (*(*v65 + 16))(v65, "Assert ");
            (*(*v65 + 16))(v65, "codestream->next_sot_address > 0");
            (*(*v65 + 16))(v65, " FAILED");
            kdu_error::~kdu_error(v65);
          }

          if (*(v13 + 608) == 1)
          {
            kd_tile::read_tile_part_header();
          }

          (*(*v13 + 16))(v13, v13 + *(v10 + 448) - (*(v13 + 560) + *(v13 + 528)) + 14);
          kd_marker::read(*(*this + 32), 0, 0);
LABEL_65:
          v10 = *this;
        }
      }

LABEL_66:
      *(v10 + 448) = 0;
      goto LABEL_67;
    }

    v12 = *(this + 4);
    if (v12)
    {
      kd_compressed_input::seek(*(v10 + 8), *v12);
      *(this + 4) = *(*(this + 4) + 8);
      kd_marker::read(*(*this + 32), 0, 0);
      v10 = *this;
      goto LABEL_67;
    }

    if ((*(v11 + 24) & 1) != 0 || (v14 = *(this + 3), *v14) && !v14[1])
    {
      *(this + 75) = *(this + 76);
      kd_tile::finished_reading(this);
      return 0;
    }

    if (*(*(v10 + 32) + 16) == -112 && *(v10 + 224) == 1 && *(v10 + 220) == 1)
    {
      goto LABEL_66;
    }

    v15 = *(v10 + 8);
    v16 = *(v10 + 448);
    if ((*(v15 + 544) & 1) == 0 && v16 >= 1)
    {
      kd_compressed_input::seek(v15, v16);
      kd_marker::read(*(*this + 32), 0, 0);
      goto LABEL_65;
    }

    if (v16 < 0)
    {
      return 0;
    }

LABEL_67:
    if (*(*(v10 + 8) + 544) != 1)
    {
      v17 = *(v10 + 32);
      if (*(v17 + 16) != -112)
      {
        *&v67 = 0;
        *v65 = 0u;
        v66 = 0u;
        kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
        (*(*v65 + 16))(v65, "Invalid marker code found in code-stream!\n");
        (*(*v65 + 16))(v65, "\tExpected SOT marker and got ");
        print_marker_code(*(*(*this + 32) + 16), v65);
        (*(*v65 + 16))(v65, ".");
        kdu_error::~kdu_error(v65);
      }

      if (*(v17 + 20) != 8)
      {
        *&v67 = 0;
        *v65 = 0u;
        v66 = 0u;
        kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
        (*(*v65 + 16))(v65, "Assert ");
        (*(*v65 + 16))(v65, "seg_length == 8");
        (*(*v65 + 16))(v65, " FAILED");
        kdu_error::~kdu_error(v65);
      }

      v18 = *(v17 + 32);
      v19 = __rev16(*v18);
      v20 = *(v18 + 1);
      v21 = *(v18 + 6);
      v22 = *(v18 + 7);
      v23 = *(v10 + 224);
      if (v19 >= *(v10 + 220) * v23)
      {
        *&v67 = 0;
        *v65 = 0u;
        v66 = 0u;
        kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
        (*(*v65 + 16))(v65, "Corrupt SOT marker segment found in codestream: tile-number lies outside the range of available tiles derived from the SIZ marker segment.");
        kdu_error::~kdu_error(v65);
      }

      v24 = (v19 / v23);
      v25 = (v19 % v23);
      v26 = v25 - *(v10 + 232);
      v27 = v24 - *(v10 + 228);
      if (v26 < 0 || v27 < 0 || (v28 = *(v10 + 240), v26 >= v28) || v27 >= *(v10 + 236))
      {
        *&v67 = 0;
        *v65 = 0u;
        v66 = 0u;
        kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
        (*(*v65 + 16))(v65, "Assert ");
        (*(*v65 + 16))(v65, "(rel_sot_idx.x >= 0) && (rel_sot_idx.y >= 0) && (rel_sot_idx.x < codestream->tile_indices.size.x) && (rel_sot_idx.y < codestream->tile_indices.size.y)");
        (*(*v65 + 16))(v65, " FAILED");
        kdu_error::~kdu_error(v65);
      }

      v29 = *(v10 + 8);
      if (*(v29 + 608) == 1)
      {
        kd_tile::read_tile_part_header();
      }

      v30 = bswap32(v20);
      v31 = v28 * v27;
      v32 = v30;
      v33 = *(v10 + 328) + 24 * v26 + 24 * v31;
      v60 = *(v29 + 560) - v29 + *(v29 + 528) - *(*(v10 + 32) + 20) - 18;
      if (!*(v10 + 448))
      {
        *(v10 + 448) = v60 + v30;
        v38 = *(v10 + 72);
        if (v38)
        {
          if ((*(v38 + 24) & 1) == 0 && (!*v33 || *(v33 + 8)))
          {
            kd_tpart_pointer_server::add_tpart(v38, v33, v60);
            if (!v32)
            {
              *(v33 + 8) = 0;
              *(*this + 448) = -1;
            }
          }
        }
      }

      v34 = *(v33 + 16);
      if (v34 == -1)
      {
LABEL_85:
        v35 = *this;
        v36 = *(*this + 40);
        if (v36)
        {
          kd_pp_markers::ignore_tpart(v36);
          v35 = *this;
        }

        v37 = *(v35 + 32);
        *(v37 + 16) = 0;
        *(v37 + 20) = 0;
        *(v37 + 40) = 0;
        goto LABEL_88;
      }

      if (v34)
      {
        if (*(v34 + 328) == 1)
        {
          goto LABEL_85;
        }

        if (*(v34 + 293) == 1)
        {
          if ((*(*this + 408) & 1) == 0)
          {
            *&v67 = 0;
            *v65 = 0u;
            v66 = 0u;
            kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
            (*(*v65 + 16))(v65, "Assert ");
            (*(*v65 + 16))(v65, "codestream->allow_restart");
            (*(*v65 + 16))(v65, " FAILED");
            kdu_error::~kdu_error(v65);
          }

          kd_tile::reinitialize(*(v33 + 16));
          goto LABEL_88;
        }
      }

      if (v34 != this)
      {
        if (*(*this + 72))
        {
          if (v34)
          {
            if (!*(v34 + 32))
            {
              v39 = *(v33 + 8);
              *(v34 + 32) = v39;
              if (!v39)
              {
                *(v34 + 32) = *v33;
                v40 = *(v34 + 304);
                if (v40 >= 2)
                {
                  for (i = 1; i < v40; ++i)
                  {
                    v42 = *(*(v34 + 32) + 8);
                    *(v34 + 32) = v42;
                    if (!v42)
                    {
                      *&v67 = 0;
                      *v65 = 0u;
                      v66 = 0u;
                      kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
                      (*(*v65 + 16))(v65, "Assert ");
                      (*(*v65 + 16))(v65, "active->tpart_ptrs != NULL");
                      (*(*v65 + 16))(v65, " FAILED");
                      kdu_error::~kdu_error(v65);
                    }
                  }
                }
              }
            }
          }

          goto LABEL_88;
        }

        if (!v32)
        {
          kd_tile::finished_reading(this);
          return 0;
        }
      }

      if (v34)
      {
        if (*(v34 + 8) != v19)
        {
          *&v67 = 0;
          *v65 = 0u;
          v66 = 0u;
          kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
          (*(*v65 + 16))(v65, "Assert ");
          (*(*v65 + 16))(v65, "active->t_num == sot_tnum");
          (*(*v65 + 16))(v65, " FAILED");
          kdu_error::~kdu_error(v65);
        }

        if (*(v34 + 304) != v21)
        {
          v63 = 0;
          v61 = 0u;
          v62 = 0u;
          kdu_error::kdu_error(&v61, "Kakadu Core Error:\n");
          (*(v61 + 16))(&v61, "Missing or out-of-sequence tile-parts for tile number ");
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          *v65 = 0u;
          if (BYTE8(v61))
          {
            sprintf(v65, "%x");
          }

          else
          {
            sprintf(v65, "%d");
          }

          (*(v61 + 16))(&v61, v65);
          (*(v61 + 16))(&v61, " in code-stream!");
          kdu_error::~kdu_error(&v61);
        }

        if (v22)
        {
          v43 = *(v34 + 300);
          if (v43)
          {
            if (v43 != v22)
            {
              v63 = 0;
              v61 = 0u;
              v62 = 0u;
              kdu_error::kdu_error(&v61, "Kakadu Core Error:\n");
              (*(v61 + 16))(&v61, "The number of tile-parts for tile number ");
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              *v65 = 0u;
              if (BYTE8(v61))
              {
                sprintf(v65, "%x");
              }

              else
              {
                sprintf(v65, "%d");
              }

              (*(v61 + 16))(&v61, v65);
              (*(v61 + 16))(&v61, " is identified by different non-zero values in different SOT markers for the tile!");
              kdu_error::~kdu_error(&v61);
            }
          }

          else
          {
            *(v34 + 300) = v22;
          }
        }

        if (*(v34 + 290) == 1)
        {
          kd_tile::withdraw_from_unloadable_list(v34);
        }

        kd_codestream::unload_tiles_to_cache_threshold(*this);
        v44 = *(*this + 24);
        v45 = kdu_params::access_cluster(v44, "COD");
        v46 = kdu_params::access_relation(v45, v19, -1, 0, 1);
        if (!v46)
        {
          *&v67 = 0;
          *v65 = 0u;
          v66 = 0u;
          kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
          (*(*v65 + 16))(v65, "Assert ");
          (*(*v65 + 16))(v65, "cod != NULL");
          (*(*v65 + 16))(v65, " FAILED");
          kdu_error::~kdu_error(v65);
        }

        v47 = kdu_params::access_cluster(v44, "POC");
        v48 = kdu_params::access_relation(v47, v19, -1, 0, 1);
        if (!v48)
        {
          *&v67 = 0;
          *v65 = 0u;
          v66 = 0u;
          kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
          (*(*v65 + 16))(v65, "Assert ");
          (*(*v65 + 16))(v65, "poc != NULL");
          (*(*v65 + 16))(v65, " FAILED");
          kdu_error::~kdu_error(v65);
        }

        if (*(v34 + 80))
        {
          *&v67 = 0;
          *v65 = 0u;
          v66 = 0u;
          kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
          (*(*v65 + 16))(v65, "Assert ");
          (*(*v65 + 16))(v65, "active->ppt_markers == NULL");
          (*(*v65 + 16))(v65, " FAILED");
          kdu_error::~kdu_error(v65);
        }

        if (!kd_marker::read(*(*this + 32), 0, 0))
        {
LABEL_174:
          if ((*(*(*this + 8) + 544) & 1) == 0)
          {
            *&v67 = 0;
            *v65 = 0u;
            v66 = 0u;
            kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
            (*(*v65 + 16))(v65, "Found non-marker code while looking for SOD marker to terminate a tile-part header.  Chances are that a marker segment length field is incorrect!");
            kdu_error::~kdu_error(v65);
          }

          return 0;
        }

        do
        {
          v49 = *(*this + 32);
          v50 = *(v49 + 16);
          switch(v50)
          {
            case 65368:
              kd_precinct_pointer_server::add_plt_marker(v34 + 104, v49, v46, v48);
              break;
            case 65377:
              if (!*(*this + 160))
              {
                *&v67 = 0;
                *v65 = 0u;
                v66 = 0u;
                kdu_warning::kdu_warning(v65, "Kakadu Core Warning:\n");
                (*(*v65 + 16))(v65, "Profile violation detected (code-stream is technically illegal).  PPT marker segments may not appear within a Profile-0 code-stream.  You should set Sprofile to 1 or 2.");
                *(*this + 160) = 2;
                kdu_warning::~kdu_warning(v65);
              }

              v51 = *(v34 + 80);
              if (!v51)
              {
                operator new();
              }

              kd_pp_markers::add_marker(v51, *(*this + 32));
            case 65427:
              goto LABEL_152;
            default:
              kdu_params::translate_marker_segment(v44, *(v49 + 16), *(v49 + 20), *(v49 + 32), v19, v21);
              break;
          }
        }

        while ((kd_marker::read(*(*this + 32), 0, 0) & 1) != 0);
        if (!v50)
        {
          goto LABEL_174;
        }

LABEL_152:
        kdu_params::finalize_all(v44, v19, 1);
        v52 = *(*this + 8);
        if (*(v52 + 608) == 1)
        {
          kd_tile::read_tile_part_header();
        }

        v53 = *(v52 + 560);
        v54 = *(v52 + 528);
        v55 = *(*this + 40);
        if (*(v34 + 80))
        {
          if (v55)
          {
            *&v67 = 0;
            *v65 = 0u;
            v66 = 0u;
            kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
            (*(*v65 + 16))(v65, "Use of both PPM and PPT marker segments is illegal!");
            kdu_error::~kdu_error(v65);
          }

          v56 = *(v34 + 88);
          if (!v56)
          {
            operator new();
          }

          kd_pp_markers::transfer_tpart(*(v34 + 80), v56);
          v57 = *(v34 + 80);
          if (v57)
          {
            kd_pp_markers::~kd_pp_markers(v57);
            MEMORY[0x186602850]();
          }

          *(v34 + 80) = 0;
        }

        else if (v55)
        {
          v58 = *(v34 + 88);
          if (!v58)
          {
            operator new();
          }

          kd_pp_markers::transfer_tpart(v55, v58);
        }

        v59 = v53 - v52 + v54 - 14;
        if (v32)
        {
          if (v60 + v32 - v59 < 0)
          {
            *&v67 = 0;
            *v65 = 0u;
            v66 = 0u;
            kdu_error::kdu_error(v65, "Kakadu Core Error:\n");
            (*(*v65 + 16))(v65, "Assert ");
            (*(*v65 + 16))(v65, "tpart_body_length >= 0");
            (*(*v65 + 16))(v65, " FAILED");
            kdu_error::~kdu_error(v65);
          }

          kd_precinct_pointer_server::start_tpart_body((v34 + 104), v59, v60 + v32 - v59, v46, v48, *(v34 + 88) != 0, 0);
        }

        else
        {
          kd_precinct_pointer_server::start_tpart_body((v34 + 104), v59, 0, v46, v48, *(v34 + 88) != 0, 1);
        }

        ++*(v34 + 304);
        *(*this + 440) = v34;
        kd_tile::adjust_unloadability(v34);
        ++*(*this + 460);
      }

      else
      {
        kd_codestream::create_tile(*this, v24 | (v25 << 32));
      }

LABEL_88:
      v7 = *(*this + 440);
      if (v7 == this)
      {
        return 1;
      }

      continue;
    }

    break;
  }

  if (*(v10 + 448))
  {
    return 0;
  }

  result = 0;
  *(v10 + 448) = -1;
  return result;
}

float kd_tile::find_multicomponent_energy_gain(kd_tile *this, int a2, int a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a3 && *(*this + 184))
  {
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    kdu_error::kdu_error(v38, "Kakadu Core Error:\n");
    (*(*v38 + 16))(v38, "Assert ");
    (*(*v38 + 16))(v38, "codestream->component_access_mode == KDU_WANT_OUTPUT_COMPONENTS");
    (*(*v38 + 16))(v38, " FAILED");
    kdu_error::~kdu_error(v38);
  }

  v4 = *(this + 32);
  if (!v4)
  {
    if (a2 > 2 || (*(this + 286) & 1) == 0 || *(this + 47) < 3)
    {
      v23 = (*(*this + 320) + 48 * a2);
      if (!a3 || (v24 = v23[4], v17 = 0.0, (v24 & 0x80000000) == 0) && *(*(this + 34) + 224 * v24 + 185) == 1)
      {
        v17 = 1.0 / (1 << *v23) * (1.0 / (1 << *v23));
      }

      goto LABEL_60;
    }

    memset(v38, 0, 24);
    v21 = *(this + 34);
    if (*(v21 + 224 * a2 + 76) == 1)
    {
      if (a2 == 1)
      {
        *v38 = vdupq_n_s64(0x3FB0000000000000uLL);
        *&v38[4] = 0x3FE2000000000000;
        goto LABEL_54;
      }

      if (a2)
      {
        *&v38[4] = 0x3FB0000000000000;
        _Q0 = xmmword_186205E40;
LABEL_53:
        *v38 = _Q0;
LABEL_54:
        v29 = 0;
        v30 = (*(*this + 320) + 16);
        v17 = 0.0;
        do
        {
          if (!a3 || (*v30 & 0x80000000) == 0 && *(v21 + 224 * *v30 + 185) == 1)
          {
            v31 = 1.0 / (1 << *(v30 - 4));
            v17 = v17 + *&v38[v29] * v31 * v31;
          }

          v29 += 2;
          v30 += 12;
        }

        while (v29 != 6);
        goto LABEL_60;
      }
    }

    else
    {
      if (a2 == 1)
      {
        *&v38[2] = xmmword_186205E20;
        goto LABEL_54;
      }

      if (a2)
      {
        _Q0 = xmmword_186205E30;
        goto LABEL_53;
      }
    }

    *&v38[4] = 0x3FF0000000000000;
    __asm { FMOV            V0.2D, #1.0 }

    goto LABEL_53;
  }

  v5 = 1.0;
  v6 = a2;
  v7 = a2;
  while (1)
  {
    v37 = -1;
    v38[0] = 0;
    v9 = (v4 + 32);
    v8 = *(v4 + 32);
    if (v8 <= 0)
    {
      break;
    }

LABEL_10:
    for (i = 0; i < v8; ++i)
    {
      v11 = *(v4 + 40) + 152 * i;
      if (!a3 || *(v11 + 36))
      {
        v12 = *(v11 + 8);
        if (v12 >= 1)
        {
          for (j = 0; j < v12; ++j)
          {
            if (!a3 || *(*(v11 + 24) + j) == 1)
            {
              v14 = *(*(v11 + 16) + 4 * j);
              if (v14 >= v6 && v14 <= v7)
              {
                v16 = *(v4 + 48);
                if (v16)
                {
                  v5 = *(*(v16 + 24) + 48 * v14 + 44);
                }

                kd_mct_block::analyze_sensitivity(v11, j, v5, v38, &v37, a3);
                v12 = *(v11 + 8);
              }
            }
          }

          v8 = *v9;
        }
      }
    }

    v7 = v37;
    v6 = v38[0];
    v4 = *(v4 + 56);
    if (!v4)
    {
      v17 = 0.0;
      if (v38[0] <= v37)
      {
        v18 = (*(*(this + 33) + 24) + 48 * v38[0] + 44);
        v19 = v37 - v38[0] + 1;
        do
        {
          if ((a3 ^ 1 | *(v18 - 4)))
          {
            v20 = (*v18 / (1 << *(v18 - 11)));
            v17 = v17 + v20 * v20;
          }

          v18 += 12;
          --v19;
        }

        while (v19);
      }

      goto LABEL_60;
    }
  }

  while (1)
  {
    v4 = *(v4 + 56);
    if (!v4)
    {
      break;
    }

    v37 = -1;
    v38[0] = 0;
    v8 = *(v4 + 32);
    if (v8 >= 1)
    {
      v6 = 0;
      v9 = (v4 + 32);
      v7 = -1;
      goto LABEL_10;
    }
  }

  v17 = 0.0;
LABEL_60:
  v32 = (1 << *(*(*this + 312) + 104 * a2 + 16));
  v33 = v17 * (v32 * v32);
  if (v33 < 0.0001)
  {
    return 0.0001;
  }

  return v33;
}

void kd_resolution::build_decomposition_structure(kd_resolution *this, kdu_params *a2, kdu_kernels *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  *v26 = 3;
  memset(v27, 0, 98);
  memset(&v26[2], 0, 98);
  *(this + 222) = 1;
  if (*(this + 24))
  {
    if (a2)
    {
      kdu_params::get(a2, "Cdecomp", *(this + 25) - 1, 0, v26, 1, 1, 1);
      v4 = *v26;
    }

    else
    {
      v4 = 3;
    }

    v5 = cod_params::transpose_decomp(v4);
    *(this + 222) = cod_params::expand_decomp_bands(*v26, v27, v6) - 1;
    cod_params::expand_decomp_bands(v5, &v26[2], v7);
  }

  else
  {
    v27[0] = 0;
  }

  if (*(this + 30))
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    kdu_error::kdu_error(&v23, "Kakadu Core Error:\n");
    (*(v23 + 16))(&v23, "Assert ");
    (*(v23 + 16))(&v23, "subbands == NULL");
    (*(v23 + 16))(&v23, " FAILED");
    kdu_error::~kdu_error(&v23);
  }

  if (*(this + 222) <= 3uLL)
  {
    v8 = this + 256;
    v9 = *(this + 222);
    *(this + 30) = v8;
    if (v9)
    {
      v10 = 0;
      v11 = *(this + 24);
      v12 = this + 306;
      do
      {
        *(v12 - 50) = 0;
        *(v12 - 42) = this;
        *v12 = 1;
        if (v11)
        {
          v13 = v27[v10 + 1];
        }

        else
        {
          v13 = 0;
        }

        v12[5] = v10;
        *(v12 + 1) = v13;
        v12 += 144;
        ++v10;
      }

      while (v9 != v10);
      v14 = 0;
      do
      {
        if (*(this + 24))
        {
          v15 = v26[v14 + 3];
        }

        else
        {
          v15 = 0;
        }

        v16 = 0;
        v17 = __rev16(v15);
        if ((v9 & 0xFE) != 0)
        {
          v18 = v9;
        }

        else
        {
          v18 = 1;
        }

        for (i = 52; *&v8[i] != v17; i += 144)
        {
          if (v18 == ++v16)
          {
            v25 = 0;
            v23 = 0u;
            v24 = 0u;
            kdu_error::kdu_error(&v23, "Kakadu Core Error:\n");
            (*(v23 + 16))(&v23, "Assert ");
            (*(v23 + 16))(&v23, "k < num_subbands");
            (*(v23 + 16))(&v23, " FAILED");
            kdu_error::~kdu_error(&v23);
          }
        }

        v8[144 * v14++ + 56] = v16;
      }

      while (v14 < v9);
    }

    if (*(this + 28))
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      kdu_error::kdu_error(&v23, "Kakadu Core Error:\n");
      (*(v23 + 16))(&v23, "Assert ");
      (*(v23 + 16))(&v23, "intermediate_nodes == NULL");
      (*(v23 + 16))(&v23, " FAILED");
      kdu_error::~kdu_error(&v23);
    }

    v20 = 0;
    v21 = 0;
    *(this + 223) = 0;
    v22 = *v26;
    while (1)
    {
      v20 += 2;
      if (((v22 >> v20) & 3) != 0)
      {
        *(this + 223) = ++v21;
      }

      if (v20 >= 0x1D)
      {
        operator new[]();
      }
    }
  }

  operator new[]();
}

uint64_t check_coding_partition(uint64_t result, unint64_t a2)
{
  v2 = a2;
  if ((result & 0xFFFFFFFEFFFFFFFELL) != 0)
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    kdu_error::kdu_error(&v7, "Kakadu Core Error:\n");
    (*(v7 + 16))(&v7, "Coding partitions (code-blocks and precinct partitions) must have origin coordinates equal to 1 or 0 only!");
    kdu_error::~kdu_error(&v7);
  }

  v3 = HIDWORD(a2);
  if (SHIDWORD(a2) >= 2)
  {
    while ((v3 & 1) == 0)
    {
      LODWORD(v4) = v3 >> 1;
      v5 = v3 > 2;
      LODWORD(v3) = v3 >> 1;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_15;
  }

  v4 = HIDWORD(a2);
LABEL_8:
  if (v4 != 1)
  {
    goto LABEL_15;
  }

  if (a2 >= 2)
  {
    while ((v2 & 1) == 0)
    {
      v6 = v2 >> 1;
      v5 = v2 > 2;
      v2 >>= 1;
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

  v6 = a2;
LABEL_14:
  if (v6 != 1)
  {
LABEL_15:
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    kdu_error::kdu_error(&v7, "Kakadu Core Error:\n");
    (*(v7 + 16))(&v7, "Coding partitions (namely, code-block and precinct partitions) must have exact power-of-2 dimensions!");
    kdu_error::~kdu_error(&v7);
  }

  return result;
}

unint64_t get_partition_indices(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v4 = (HIDWORD(a3) - HIDWORD(a1));
  v5 = a3 - a1;
  v6 = HIDWORD(a2);
  if (!HIDWORD(a2) || !a2)
  {
    goto LABEL_15;
  }

  if (SHIDWORD(a2) <= 1)
  {
    LODWORD(v6) = 1;
  }

  v4 = (v4 & 0x80000000) != 0 ? ~(~v4 / v6) : v4 / v6;
  v7 = a2 <= 1 ? 1 : a2;
  if ((v5 & 0x80000000) != 0)
  {
    v5 = ~(~v5 / v7);
  }

  else
  {
    v5 /= v7;
  }

  if (a3 - a1 + a4 <= 0)
  {
    if ((v4 & 0x80000000) != 0)
    {
LABEL_19:
      exception = __cxa_allocate_exception(4uLL);
      *exception = -50;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }
  }

  else
  {
LABEL_15:
    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_19;
    }
  }

  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  return v5 | (v4 << 32);
}

uint64_t kdu_dims::operator&=(_DWORD *a1, int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3] + v5;
  if (a1[3] + v2 < v6)
  {
    v6 = a1[3] + v2;
  }

  if (a1[2] + *a1 >= a2[2] + *a2)
  {
    v7 = a2[2] + v4;
  }

  else
  {
    v7 = a1[2] + *a1;
  }

  if (v2 < v5)
  {
    a1[1] = v5;
    v2 = v5;
  }

  if (v3 < v4)
  {
    *a1 = v4;
    v3 = v4;
  }

  v8 = (v6 - v2);
  v9 = (v7 - v3);
  *(a1 + 1) = v9 | (v8 << 32);
  if ((v8 & 0x80000000) != 0)
  {
    a1[3] = 0;
    if ((v9 & 0x80000000) == 0)
    {
      return *a1;
    }

LABEL_14:
    a1[2] = 0;
    return *a1;
  }

  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  return *a1;
}

uint64_t kd_resolution::complete_initialization(kd_resolution *this)
{
  v2 = 0;
  *(this + 54) = 0;
  v3 = 1;
  do
  {
    v4 = 0;
    v5 = v3;
    v29 = v2;
    v6 = 1;
    do
    {
      v7 = v6;
      *(this + 100) = *(this + 168);
      *(this + 100) = vmla_s32(*(this + 100), *(this + 108), vadd_s32(*(this + 184), __PAIR64__(v4, v29)));
      result = kdu_dims::operator&=(this + 25, this + 12);
      if (*(this + 28) >= 1 && *(this + 27) >= 1)
      {
        if (*(this + 223))
        {
          v9 = 0;
          v10 = 0;
          do
          {
            v11 = *(this + 28) + v9;
            LODWORD(v12) = *(*v11 + 68);
            LODWORD(v13) = *(*v11 + 72);
            v14 = *(v11 + 48);
            v15 = *(v11 + 49);
            v16 = *(*v11 + 80) + v13;
            v17 = *(*v11 + 76) + v12;
            result = ((v16 - v14 + 1) >> 1);
            if (v14 <= 1)
            {
              v13 = ((v13 - v14 + 1) >> 1);
            }

            else
            {
              v13 = v13;
            }

            if (v14 <= 1)
            {
              v16 = (v16 - v14 + 1) >> 1;
            }

            if (v15 <= 1)
            {
              v12 = ((v12 - v15 + 1) >> 1);
            }

            else
            {
              v12 = v12;
            }

            if (v15 <= 1)
            {
              v17 = (v17 - v15 + 1) >> 1;
            }

            *(v11 + 68) = v12 | (v13 << 32);
            *(v11 + 76) = (v17 - v12) | ((v16 - v13) << 32);
            ++v10;
            v9 += 136;
          }

          while (v10 < *(this + 223));
        }

        if (*(this + 222))
        {
          v18 = 0;
          v19 = 0;
          do
          {
            v20 = *(this + 30) + 144 * v18;
            LODWORD(v21) = *(*v20 + 68);
            LODWORD(v22) = *(*v20 + 72);
            v23 = *(v20 + 48);
            v24 = *(v20 + 49);
            v25 = *(*v20 + 76) + v21;
            if (v23 <= 1)
            {
              v22 = ((v22 - v23 + 1) >> 1);
            }

            else
            {
              v22 = v22;
            }

            if (v24 <= 1)
            {
              v21 = ((v21 - v24 + 1) >> 1);
            }

            else
            {
              v21 = v21;
            }

            if (v24 <= 1)
            {
              v25 = (v25 - v24 + 1) >> 1;
            }

            result = get_partition_indices(*(v20 + 76), *(v20 + 84), v21 | (v22 << 32), v25 - v21);
            v19 += HIDWORD(v26) * v26;
            if (HIDWORD(v26) * v26 >= 2)
            {
              do
              {
                v27 = ((HIDWORD(v26) + 1) >> 1);
                v28 = ((v26 + 1) >> 1);
                v26 = v28 | (v27 << 32);
                LODWORD(v27) = v27 * v28;
                v19 += v27;
              }

              while (v27 > 1);
            }

            ++v18;
          }

          while (v18 < *(this + 222));
        }

        else
        {
          v19 = 0;
        }

        if (v19 > *(this + 54))
        {
          *(this + 54) = v19;
        }
      }

      v6 = 0;
      v4 = 1;
    }

    while ((v7 & 1) != 0);
    v3 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  return result;
}

uint64_t kd_tile::set_elements_of_interest(int **this)
{
  v1 = this;
  v2 = *this;
  if (this[32] && !*(v2 + 2) && !v2[46])
  {
    kd_mct_stage::apply_output_restrictions(this[33], *(v2 + 40), 0, 0);
    v2 = *v1;
  }

  v3 = v2[63];
  if (v3 >= *(v1 + 48))
  {
    v3 = *(v1 + 48);
  }

  *(v1 + 49) = v3;
  v98 = *(v1 + 212);
  result = kdu_dims::operator&=(&v98, v2 + 66);
  *(v1 + 228) = v98;
  if (*(*v1 + 1) && (*(*v1 + 417) & 1) == 0)
  {
    *(v1 + 50) = *(v1 + 49);
    *(v1 + 52) = 0;
    v97 = 1;
  }

  else
  {
    v97 = 0;
  }

  if (*(v1 + 47) >= 1)
  {
    v5 = 0;
    v96 = v1;
    do
    {
      v6 = &v1[34][56 * v5];
      *(v6 + 185) = 1;
      *(v6 + 156) = -1082130432;
      v7 = *v1;
      if (!*(*v1 + 2))
      {
        if (v7[46] == 1)
        {
          v8 = *(*(v7 + 39) + 104 * v5 + 88);
          goto LABEL_19;
        }

        v9 = v1[32];
        if (v9)
        {
          v8 = *(*(v9 + 1) + 4 * v5);
          goto LABEL_19;
        }

        if (v5 > 2 || (*(v1 + 286) & 1) == 0)
        {
          if (v5 >= v7[44])
          {
            v10 = 0;
          }

          else
          {
            v8 = *(*(v7 + 40) + 48 * v5 + 16);
LABEL_19:
            v10 = v8 >= 0;
          }

          *(v6 + 184) = v10;
          goto LABEL_21;
        }

        v93 = 0;
        *(v6 + 184) = 0;
        v94 = 16;
        while (v93 >= v7[44] || (*(*(v7 + 40) + v94) & 0x80000000) != 0)
        {
          ++v93;
          v94 += 48;
          if (v93 == 3)
          {
            goto LABEL_21;
          }
        }
      }

      *(v6 + 184) = 1;
LABEL_21:
      if (!*(v6 + 28))
      {
        v100 = 0;
        v98 = 0u;
        v99 = 0u;
        kdu_error::kdu_error(&v98, "Kakadu Core Error:\n");
        (*(v98 + 16))(&v98, "File corruption: tc->sub_sampling = (0,0)\n");
        kdu_error::~kdu_error(&v98);
      }

      v11 = *(v1 + 57);
      v12 = *(v1 + 58);
      v13 = *(v1 + 59);
      v14 = *(v1 + 60);
      if (*(v6 + 32) <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = *(v6 + 32);
      }

      if (v12 <= 0)
      {
        v16 = -(-v12 / v15);
      }

      else
      {
        v16 = (v12 - 1) / v15 + 1;
      }

      v17 = __OFADD__(v14, v12);
      v18 = v14 + v12;
      if ((v18 < 0) ^ v17 | (v18 == 0))
      {
        v19 = -(-v18 / v15);
      }

      else
      {
        v19 = (v18 - 1) / v15 + 1;
      }

      if (*(v6 + 28) <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = *(v6 + 28);
      }

      if (v11 <= 0)
      {
        v21 = -(-v11 / v20);
      }

      else
      {
        v21 = (v11 - 1) / v20 + 1;
      }

      v95 = v5;
      v17 = __OFADD__(v13, v11);
      v22 = v13 + v11;
      if ((v22 < 0) ^ v17 | (v22 == 0))
      {
        v23 = -(-v22 / v20);
      }

      else
      {
        v23 = (v22 - 1) / v20 + 1;
      }

      *(v6 + 52) = v21 | (v16 << 32);
      *(v6 + 60) = (v23 - v21) | ((v19 - v16) << 32);
      v24 = *(v6 + 68);
      v25 = v24 - (*v1)[61];
      *(v6 + 72) = v25;
      if (v25 >= 0)
      {
        if (!*(v6 + 176))
        {
          v100 = 0;
          v98 = 0u;
          v99 = 0u;
          kdu_error::kdu_error(&v98, "Kakadu Core Error:\n");
          (*(v98 + 16))(&v98, "File corruption: tc->resolutions = NULL\n");
          kdu_error::~kdu_error(&v98);
        }

        if ((v24 & 0x80000000) == 0)
        {
          v26 = v24;
          do
          {
            v27 = *(v6 + 176) + 704 * v26;
            v28 = *(v27 + 32);
            if (v28)
            {
              v29 = *(v28 + 32);
              v30 = *(v28 + 40);
              v31 = *(v27 + 80);
              v32 = *(v27 + 81);
              if (v26 >= *(v6 + 72))
              {
                LODWORD(v30) = v30 + v29;
                v44 = (HIDWORD(v30) + HIDWORD(v29) - v31 + 1) >> 1;
                v45 = v31 > 1;
                if (v31 <= 1)
                {
                  v39 = ((HIDWORD(v29) - v31 + 1) >> 1);
                }

                else
                {
                  v39 = HIDWORD(v29);
                }

                if (v45)
                {
                  v40 = HIDWORD(v30) + HIDWORD(v29);
                }

                else
                {
                  v40 = v44;
                }

                v42 = (v29 - v32 + 1) >> 1;
                v43 = v30 - v32;
              }

              else
              {
                v33 = *(v6 + 136);
                LODWORD(v30) = v30 + v29;
                if (*(v27 + 80))
                {
                  v34 = *(v6 + 148);
                }

                else
                {
                  v34 = *(v6 + 140);
                }

                if (*(v27 + 80))
                {
                  v35 = *(v6 + 144);
                }

                else
                {
                  v35 = *(v6 + 136);
                }

                v36 = (HIDWORD(v29) - (v34 + v31) + 1) >> 1;
                v37 = (HIDWORD(v30) + HIDWORD(v29) - (v35 + v31) + 1) >> 1;
                v38 = v31 > 1;
                if (v31 <= 1)
                {
                  v39 = v36;
                }

                else
                {
                  v39 = HIDWORD(v29);
                }

                if (v38)
                {
                  v40 = HIDWORD(v30) + HIDWORD(v29);
                }

                else
                {
                  v40 = v37;
                }

                if (*(v27 + 81))
                {
                  v41 = *(v6 + 148);
                }

                else
                {
                  v41 = *(v6 + 140);
                }

                if (*(v27 + 81))
                {
                  v33 = *(v6 + 144);
                }

                v42 = (v29 - (v41 + v32) + 1) >> 1;
                v43 = v30 - (v33 + v32);
              }

              v46 = (v43 + 1) >> 1;
              if (v32 <= 1)
              {
                v29 = v42;
              }

              else
              {
                v29 = v29;
              }

              if (v32 <= 1)
              {
                v47 = v46;
              }

              else
              {
                v47 = v30;
              }

              *(v27 + 64) = v29 | (v39 << 32);
              *(v27 + 72) = (v47 - v29) | ((v40 - v39) << 32);
            }

            else
            {
              *(v27 + 64) = *(v6 + 52);
            }

            result = kdu_dims::operator&=((v27 + 64), (v27 + 48));
            *(v27 + 92) = 0;
            *(v27 + 84) = 0;
            if (v26 <= *(v6 + 72) && *(v6 + 184) == 1)
            {
              LODWORD(v48) = *(v27 + 223);
              if (*(v27 + 223))
              {
                v49 = 0;
                v50 = 0;
                do
                {
                  v51 = *(v27 + 224) + v49;
                  LODWORD(v52) = *(*v51 + 32);
                  LODWORD(v53) = *(*v51 + 36);
                  v54 = *(v51 + 48);
                  v55 = *(v51 + 49);
                  v56 = *(v6 + 136);
                  v57 = *(*v51 + 44) + v53;
                  v58 = *(*v51 + 40) + v52;
                  if (*(v51 + 48))
                  {
                    v59 = *(v6 + 148);
                  }

                  else
                  {
                    v59 = *(v6 + 140);
                  }

                  if (*(v51 + 48))
                  {
                    v60 = *(v6 + 144);
                  }

                  else
                  {
                    v60 = *(v6 + 136);
                  }

                  v61 = (v53 - (v59 + v54) + 1) >> 1;
                  v62 = (v57 - (v60 + v54) + 1) >> 1;
                  if (v54 <= 1)
                  {
                    v53 = v61;
                  }

                  else
                  {
                    v53 = v53;
                  }

                  if (v54 <= 1)
                  {
                    v57 = v62;
                  }

                  if (*(v51 + 49))
                  {
                    v63 = *(v6 + 148);
                  }

                  else
                  {
                    v63 = *(v6 + 140);
                  }

                  if (*(v51 + 49))
                  {
                    v56 = *(v6 + 144);
                  }

                  v64 = (v52 - (v63 + v55) + 1) >> 1;
                  v65 = (v58 - (v56 + v55) + 1) >> 1;
                  if (v55 <= 1)
                  {
                    v52 = v64;
                  }

                  else
                  {
                    v52 = v52;
                  }

                  if (v55 <= 1)
                  {
                    v58 = v65;
                  }

                  *(v51 + 32) = v52 | (v53 << 32);
                  *(v51 + 40) = (v58 - v52) | ((v57 - v53) << 32);
                  v66 = v51 + 32;
                  kdu_dims::operator&=(v66, (v66 - 16));
                  ++v50;
                  *(v66 + 28) = 0;
                  *(v66 + 20) = 0;
                  v48 = *(v27 + 223);
                  v49 += 136;
                }

                while (v50 < v48);
              }

              if (*(v27 + 222))
              {
                v67 = 0;
                v68 = 0;
                do
                {
                  v69 = *(v27 + 240);
                  v70 = *(v69 + v67);
                  if (!v70)
                  {
                    v100 = 0;
                    v98 = 0u;
                    v99 = 0u;
                    kdu_error::kdu_error(&v98, "Kakadu Core Error:\n");
                    (*(v98 + 16))(&v98, "corrupt file: band->parent == NULL\n");
                    kdu_error::~kdu_error(&v98);
                  }

                  LODWORD(v71) = v70[8];
                  LODWORD(v72) = v70[9];
                  v73 = v70[10];
                  v74 = v69 + v67;
                  v75 = *(v69 + v67 + 48);
                  v76 = *(v69 + v67 + 49);
                  v77 = *(v6 + 136);
                  v78 = v70[11] + v72;
                  v79 = v73 + v71;
                  if (*(v69 + v67 + 48))
                  {
                    v80 = *(v6 + 148);
                  }

                  else
                  {
                    v80 = *(v6 + 140);
                  }

                  if (*(v69 + v67 + 48))
                  {
                    v81 = *(v6 + 144);
                  }

                  else
                  {
                    v81 = *(v6 + 136);
                  }

                  v82 = (v72 - (v80 + v75) + 1) >> 1;
                  v83 = (v78 - (v81 + v75) + 1) >> 1;
                  if (v75 <= 1)
                  {
                    v72 = v82;
                  }

                  else
                  {
                    v72 = v72;
                  }

                  if (v75 <= 1)
                  {
                    v78 = v83;
                  }

                  if (*(v69 + v67 + 49))
                  {
                    v84 = *(v6 + 148);
                  }

                  else
                  {
                    v84 = *(v6 + 140);
                  }

                  if (*(v69 + v67 + 49))
                  {
                    v77 = *(v6 + 144);
                  }

                  v85 = (v71 - (v84 + v76) + 1) >> 1;
                  v86 = (v79 - (v77 + v76) + 1) >> 1;
                  if (v76 <= 1)
                  {
                    v71 = v85;
                  }

                  else
                  {
                    v71 = v71;
                  }

                  if (v76 <= 1)
                  {
                    v79 = v86;
                  }

                  *(v74 + 32) = v71 | (v72 << 32);
                  *(v74 + 40) = (v79 - v71) | ((v78 - v72) << 32);
                  kdu_dims::operator&=((v74 + 32), (v74 + 16));
                  *(v74 + 108) = get_partition_indices(*(v74 + 76), *(v74 + 84), *(v74 + 32), *(v74 + 40));
                  *(v74 + 116) = v87;
                  if (*(v74 + 44) >= 1 && *(v74 + 40) >= 1)
                  {
                    kd_node::adjust_cover(*(v69 + v67), *(v74 + 32), *(v74 + 40), *(v74 + 48), *(v74 + 49));
                  }

                  ++v68;
                  v67 += 144;
                }

                while (v68 < *(v27 + 222));
                LODWORD(v48) = *(v27 + 223);
              }

              if (v48)
              {
                v88 = v48 + 1;
                v89 = 136 * v48;
                do
                {
                  v90 = *(v27 + 224);
                  v91 = v90 + v89;
                  if (*(v90 + v89 - 92) >= 1 && *(v91 - 96) >= 1)
                  {
                    kd_node::adjust_cover(*(v91 - 136), *(v90 + v89 - 84), *(v90 + v89 - 76), *(v90 + v89 - 88), *(v90 + v89 - 87));
                  }

                  --v88;
                  v89 -= 136;
                }

                while (v88 > 1);
              }

              *(v27 + 200) = get_partition_indices(*(v27 + 168), *(v27 + 176), *(v27 + 84), *(v27 + 92));
              *(v27 + 208) = v92;
              result = kdu_dims::operator&=((v27 + 200), (v27 + 184));
              if (v97)
              {
                v96[52] += *(v27 + 212) * v96[50] * *(v27 + 208);
              }
            }

            else
            {
              *(v27 + 200) = 0;
              *(v27 + 208) = 0;
            }

            v38 = v26-- <= 0;
          }

          while (!v38);
        }
      }

      v1 = v96;
      v5 = v95 + 1;
    }

    while ((v95 + 1) < v96[47]);
  }

  return result;
}

uint64_t kd_tile::finished_reading(kd_tile *this)
{
  if (*(this + 292) != 1)
  {
    return 0;
  }

  if (*(*this + 440) == this)
  {
    if (*(this + 328) == 1)
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      kdu_error::kdu_error(v14, "Kakadu Core Error:\n");
      (*(*&v14[0] + 16))(v14, "Assert ");
      (*(*&v14[0] + 16))(v14, "!exhausted");
      (*(*&v14[0] + 16))(v14, " FAILED");
      kdu_error::~kdu_error(v14);
    }

    *(*this + 440) = 0;
    kd_tile::adjust_unloadability(this);
  }

  else
  {
    kd_tile::adjust_unloadability(this);
    if (*(this + 328))
    {
      return 0;
    }
  }

  *(this + 328) = 1;
  if (*(this + 291))
  {
    if ((*(*this + 408) & 1) == 0)
    {
      kd_tile::release(this);
      return 1;
    }
  }

  else
  {
    v3 = *(this + 47);
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = *(this + 34) + 224 * i;
        v6 = *(v5 + 68);
        if ((v6 & 0x80000000) == 0)
        {
          v7 = 0;
          do
          {
            v8 = *(v5 + 176) + 704 * v7;
            if (*(v8 + 192) * *(v8 + 196) >= 1)
            {
              v9 = 0;
              v10 = 8 * (*(v8 + 192) * *(v8 + 196));
              do
              {
                v11 = *(*(v8 + 232) + v9);
                if (v11)
                {
                  v12 = (*(*(v8 + 232) + v9) & 1) == 0;
                }

                else
                {
                  v12 = 0;
                }

                if (v12)
                {
                  kd_precinct::finished_desequencing(v11);
                }

                v9 += 8;
              }

              while (v10 != v9);
              v6 = *(v5 + 68);
            }
          }

          while (v7++ < v6);
          v3 = *(this + 47);
        }
      }
    }
  }

  return 0;
}

void kd_tile::recycle(kd_tile *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(this + 70))
  {
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    kdu_error::kdu_error(&v82, "Kakadu Core Error:\n");
    (*(v82 + 16))(&v82, "Assert ");
    (*(v82 + 16))(&v82, "structure_bytes == 0");
    (*(v82 + 16))(&v82, " FAILED");
    kdu_error::~kdu_error(&v82);
  }

  if (*(this + 3) || (*(this + 2) & 0x80000000) == 0 || (*(this + 184) & 1) == 0)
  {
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    kdu_error::kdu_error(&v82, "Kakadu Core Error:\n");
    (*(v82 + 16))(&v82, "Assert ");
    (*(v82 + 16))(&v82, "(tile_ref == NULL) && (t_num < 0) && is_typical");
    (*(v82 + 16))(&v82, " FAILED");
    kdu_error::~kdu_error(&v82);
  }

  *(this + 3) = a2;
  *(this + 12) = a3;
  v7 = *this;
  *(this + 2) = HIDWORD(a3) + *(*this + 224) * a3;
  *(this + 184) = 0;
  *(this + 212) = a4;
  *(this + 220) = a5;
  *(this + 236) = 0;
  *(this + 9) = 0;
  if (*(this + 10) || *(this + 11) || *(this + 12) || *(this + 7) || *(this + 8))
  {
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    kdu_error::kdu_error(&v82, "Kakadu Core Error:\n");
    (*(v82 + 16))(&v82, "Assert ");
    (*(v82 + 16))(&v82, "(ppt_markers == NULL) && (packed_headers == NULL) && (sequencer == NULL) && (unloadable_next == NULL) && (unloadable_prev == NULL)");
    (*(v82 + 16))(&v82, " FAILED");
    kdu_error::~kdu_error(&v82);
  }

  *(this + 328) = 0;
  *(this + 287) = 0;
  v8 = this + 308;
  *(this + 80) = 0;
  *(this + 293) = 0;
  *(this + 289) = 0;
  *(this + 316) = 0;
  *(this + 308) = 0;
  *(this + 300) = 0;
  if (*(this + 47) != *(v7 + 168))
  {
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    kdu_error::kdu_error(&v82, "Kakadu Core Error:\n");
    (*(v82 + 16))(&v82, "Assert ");
    (*(v82 + 16))(&v82, "num_components == codestream->num_components");
    (*(v82 + 16))(&v82, " FAILED");
    kdu_error::~kdu_error(&v82);
  }

  if (*(v7 + 8))
  {
    *(this + 4) = **(this + 3);
    v9 = kd_tile::read_tile_part_header(this) ^ 1;
    v7 = *this;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v10 = kdu_params::check_typical_tile(*(v7 + 24), *(this + 2));
  if ((v9 & 1) == 0 && (v10 & 1) == 0)
  {
    v11 = *(this + 34);
    if (v11)
    {
      v12 = v11 - 16;
      v13 = *(v11 - 8);
      if (v13)
      {
        v14 = (v11 + 224 * v13 - 224);
        v15 = -224 * v13;
        do
        {
          kd_tile_comp::~kd_tile_comp(v14);
          v14 = (v16 - 224);
          v15 += 224;
        }

        while (v15);
      }

      MEMORY[0x186602830](v12, 0x10A0C802A3299D9);
    }

    v17 = *(this + 32);
    *(this + 33) = v17;
    for (*(this + 34) = 0; v17; *(this + 33) = v17)
    {
      *(this + 32) = *(v17 + 7);
      kd_mct_stage::~kd_mct_stage(v17);
      MEMORY[0x186602850]();
      v17 = *(this + 32);
    }

    *(this + 292) = 1;
    *(this + 294) = 0;
    kd_tile::initialize(this);
  }

  *(this + 184) = 1;
  v19 = *(this + 47);
  v18 = *(this + 48);
  *(this + 49) = v18;
  v20 = *(this + 34);
  *(this + 51) = 0;
  if (v19 < 1)
  {
    v74 = 0;
  }

  else
  {
    v21 = 0;
    v78 = HIDWORD(a5) + HIDWORD(a4) - 1;
    v79 = a5 + a4;
    v80 = HIDWORD(a5) + HIDWORD(a4);
    v76 = -(HIDWORD(a5) + HIDWORD(a4));
    v77 = a5 + a4 - 1;
    v75 = -(a5 + a4);
    v22 = 336;
    do
    {
      *(v20 + 184) = 257;
      *(v20 + 156) = -1082130432;
      if (*(v20 + 32) <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = *(v20 + 32);
      }

      if (a4 <= 0)
      {
        v24 = -(-HIDWORD(a4) / v23);
      }

      else
      {
        v24 = (HIDWORD(a4) - 1) / v23 + 1;
      }

      if (v80 <= 0)
      {
        v25 = -(v76 / v23);
      }

      else
      {
        v25 = v78 / v23 + 1;
      }

      if (*(v20 + 28) <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = *(v20 + 28);
      }

      if (a4 <= 0)
      {
        v27 = -(-a4 / v26);
      }

      else
      {
        v27 = (a4 - 1) / v26 + 1;
      }

      if (v79 <= 0)
      {
        v28 = -(v75 / v26);
      }

      else
      {
        v28 = v77 / v26 + 1;
      }

      v22 += 224;
      *(v20 + 36) = v27 | (v24 << 32);
      *(v20 + 44) = (v28 - v27) | ((v25 - v24) << 32);
      v29 = *(v20 + 68);
      *(v20 + 72) = v29;
      if ((v29 & 0x80000000) == 0)
      {
        do
        {
          v30 = *(v20 + 176) + 704 * v29;
          if (v29 == *(v20 + 68))
          {
            *(v30 + 48) = *(v20 + 36);
            v31 = *(v30 + 48);
            v32 = *(v30 + 56);
          }

          else
          {
            v33 = *(v30 + 32);
            LODWORD(v34) = v33[4];
            LODWORD(v35) = v33[5];
            v36 = v33[6];
            v37 = *(v30 + 80);
            v38 = *(v30 + 81);
            v39 = v33[7] + v35;
            v40 = v36 + v34;
            if (v37 <= 1)
            {
              v35 = ((v35 - v37 + 1) >> 1);
            }

            else
            {
              v35 = v35;
            }

            if (v37 <= 1)
            {
              v39 = (v39 - v37 + 1) >> 1;
            }

            if (v38 <= 1)
            {
              v34 = ((v34 - v38 + 1) >> 1);
            }

            else
            {
              v34 = v34;
            }

            if (v38 <= 1)
            {
              v40 = (v40 - v38 + 1) >> 1;
            }

            v31 = v34 | (v35 << 32);
            v32 = (v40 - v34) | ((v39 - v35) << 32);
            *(v30 + 48) = v31;
            *(v30 + 56) = v32;
          }

          *(v30 + 16) = 0;
          v41 = *(v30 + 192) * *(v30 + 196);
          *(v30 + 200) = get_partition_indices(*(v30 + 168), *(v30 + 176), v31, v32);
          *(v30 + 208) = v42;
          *(v30 + 184) = *(v30 + 200);
          v43 = *(v30 + 192) * *(v30 + 196);
          if (v41 != v43)
          {
            v44 = *(v30 + 232);
            if (v44)
            {
              v45 = *(v44 - 8);
              if (v45)
              {
                v46 = (v44 + 8 * v45 - 8);
                v47 = -8 * v45;
                do
                {
                  kd_precinct_ref::~kd_precinct_ref(v46);
                  v46 = (v48 - 8);
                  v47 += 8;
                }

                while (v47);
              }

              MEMORY[0x186602830](v44 - 16, 0x1000C8000313F17);
            }

            operator new[]();
          }

          *(this + 51) += v43;
          v49 = *this;
          if (v21 <= 3 && !v29 && *(v49 + 160) <= 1)
          {
            v50 = *(v30 + 8);
            if (*(v50 + 32) * *(v30 + 60) > 128 || *(v50 + 28) * *(v30 + 56) >= 129)
            {
              v84 = 0;
              v82 = 0u;
              v83 = 0u;
              kdu_warning::kdu_warning(&v82, "Kakadu Core Warning:\n");
              (*(v82 + 16))(&v82, "Profile violation detected (code-stream is technically illegal).  Profile-0 and Profile-1 code-streams must have sufficient DWT levels to permit extraction of a low resolution image which is no larger than 128x128.   Try setting a larger value for Clevels or else set Sprofile to 2.");
              *(*this + 160) = 2;
              kdu_warning::~kdu_warning(&v82);
              v49 = *this;
            }
          }

          if (!*(v49 + 160) && *(v30 + 60) <= 128 && *(v30 + 56) <= 128 && *(v30 + 192) * *(v30 + 196) >= 2)
          {
            v84 = 0;
            v82 = 0u;
            v83 = 0u;
            kdu_warning::kdu_warning(&v82, "Kakadu Core Warning:\n");
            (*(v82 + 16))(&v82, "Profile violation detected (code-stream is technically illegal).  Profile-0 code-streams may have multiple precincts only in those tile-component resolutions whose dimensions are greater than 128x128.");
            *(*this + 160) = 2;
            kdu_warning::~kdu_warning(&v82);
          }

          if (*(v30 + 223))
          {
            v51 = 0;
            v52 = 0;
            do
            {
              v53 = *(v30 + 224) + v51;
              LODWORD(v54) = *(*v53 + 16);
              LODWORD(v55) = *(*v53 + 20);
              v56 = *(v53 + 48);
              v57 = *(v53 + 49);
              v58 = *(*v53 + 28) + v55;
              v59 = *(*v53 + 24) + v54;
              if (v56 <= 1)
              {
                v55 = ((v55 - v56 + 1) >> 1);
              }

              else
              {
                v55 = v55;
              }

              if (v56 <= 1)
              {
                v58 = (v58 - v56 + 1) >> 1;
              }

              if (v57 <= 1)
              {
                v54 = ((v54 - v57 + 1) >> 1);
              }

              else
              {
                v54 = v54;
              }

              if (v57 <= 1)
              {
                v59 = (v59 - v57 + 1) >> 1;
              }

              *(v53 + 16) = v54 | (v55 << 32);
              *(v53 + 24) = (v59 - v54) | ((v58 - v55) << 32);
              ++v52;
              v51 += 136;
            }

            while (v52 < *(v30 + 223));
          }

          if (*(v30 + 222))
          {
            v60 = 0;
            v61 = 100;
            do
            {
              v62 = (*(v30 + 240) + v61);
              v63 = *(v62 - 100);
              LODWORD(v64) = v63[4];
              LODWORD(v65) = v63[5];
              v66 = v63[6];
              v67 = *(v62 - 52);
              v68 = *(v62 - 51);
              v69 = v63[7] + v65;
              v70 = v66 + v64;
              if (v67 <= 1)
              {
                v65 = ((v65 - v67 + 1) >> 1);
              }

              else
              {
                v65 = v65;
              }

              if (v67 <= 1)
              {
                v69 = (v69 - v67 + 1) >> 1;
              }

              if (v68 <= 1)
              {
                v64 = ((v64 - v68 + 1) >> 1);
              }

              else
              {
                v64 = v64;
              }

              if (v68 <= 1)
              {
                v70 = (v70 - v68 + 1) >> 1;
              }

              v71 = v64 | (v65 << 32);
              *(v62 - 84) = v71;
              *(v62 - 76) = (v70 - v64) | ((v69 - v65) << 32);
              *(v62 - 1) = get_partition_indices(*(v62 - 3), *(v62 - 2), v71, v70 - v64);
              *v62 = v72;
              ++v60;
              v61 += 144;
            }

            while (v60 < *(v30 + 222));
          }

          v22 += 704 + 8 * v43;
          kd_resolution::complete_initialization(v30);
        }

        while (v29-- > 0);
      }

      ++v21;
      v20 += 224;
    }

    while (v21 < *(this + 47));
    v18 = *(this + 48);
    v74 = *(this + 51);
    v8 = this + 308;
  }

  *(this + 50) = v18;
  *(this + 52) = v74 * v18;
  *(this + 292) = 1;
  *v8 = 0;
  v8[8] = 0;
  if (*(this + 12))
  {
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    kdu_error::kdu_error(&v82, "Kakadu Core Error:\n");
    (*(v82 + 16))(&v82, "Assert ");
    (*(v82 + 16))(&v82, "sequencer == NULL");
    (*(v82 + 16))(&v82, " FAILED");
    kdu_error::~kdu_error(&v82);
  }

  operator new();
}

uint64_t *kd_tile::restart(kd_tile *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = **this;
  if (v2)
  {
    if (*(this + 288) == 1)
    {
      kd_tile::remove_from_in_progress_list(this);
      v2 = **this;
    }

    (*(*v2 + 16))(v2, "\n>> New attributes for tile ");
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *v29 = 0u;
    if (*(v2 + 8))
    {
      sprintf(v29, "%x");
    }

    else
    {
      sprintf(v29, "%d");
    }

    (*(*v2 + 16))(v2, v29);
    (*(*v2 + 16))(v2, ":\n");
    kdu_params::textualize_attributes(*(*this + 24), v2, *(this + 2), *(this + 2), 1);
    (*(*v2 + 32))(v2, 0);
  }

  *(this + 184) = 0;
  *(this + 4) = 0;
  v3 = *(this + 11);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 11) = 0;
  result = kd_precinct_pointer_server::disable(this + 13);
  *(this + 308) = 0;
  *(this + 300) = 0;
  *(this + 291) = 0;
  *(this + 293) = 1;
  v6 = *(this + 47);
  v5 = *(this + 48);
  *(this + 50) = v5;
  v7 = *(this + 51) * v5;
  *(this + 236) = 0;
  *(this + 328) = 0;
  *(this + 52) = v7;
  *(this + 316) = 0;
  *(this + 80) = 0;
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(this + 34) + 224 * v8;
      *(v9 + 184) = 257;
      *(v9 + 156) = -1082130432;
      v10 = *(v9 + 68);
      *(v9 + 72) = v10;
      *(v9 + 52) = *(v9 + 36);
      if ((v10 & 0x80000000) == 0)
      {
        v11 = 0;
        do
        {
          v12 = *(v9 + 176) + 704 * v11;
          *(v12 + 16) = 0;
          v13 = *(v12 + 48);
          *(v12 + 84) = v13;
          *(v12 + 64) = v13;
          *(v12 + 200) = *(v12 + 184);
          if (*(v12 + 223))
          {
            v14 = 0;
            v15 = 0;
            do
            {
              v16 = (*(v12 + 224) + v14);
              v17 = v16[1];
              *(v16 + 52) = v17;
              v16[2] = v17;
              ++v15;
              v14 += 136;
            }

            while (v15 < *(v12 + 223));
          }

          if (*(v12 + 222))
          {
            v18 = 0;
            v19 = 0;
            do
            {
              v20 = (*(v12 + 240) + v18);
              v20[2] = v20[1];
              *(v20 + 108) = *(v20 + 92);
              ++v19;
              v18 += 144;
            }

            while (v19 < *(v12 + 222));
          }

          v21 = *(v12 + 192);
          if (v21 >= 1)
          {
            v22 = 0;
            v23 = *(v12 + 196);
            do
            {
              if (v23 >= 1)
              {
                for (i = 0; i < v23; *(v25 + 8 * i++) = 0)
                {
                  v25 = *(v12 + 232) + 8 * v22 * v23;
                  v26 = *(v25 + 8 * i);
                  if (v26)
                  {
                    v27 = (*(v25 + 8 * i) & 1) == 0;
                  }

                  else
                  {
                    v27 = 0;
                  }

                  if (v27)
                  {
                    *(v26 + 8) = 0;
                    kd_precinct::closing(v26);
                    result = kd_precinct_size_class::release(*(v26 + 72), v26);
                    v23 = *(v12 + 196);
                  }
                }

                v21 = *(v12 + 192);
              }

              ++v22;
            }

            while (v22 < v21);
          }
        }

        while (v11++ < *(v9 + 68));
      }

      ++v8;
    }

    while (v8 < *(this + 47));
  }

  return result;
}

uint64_t kd_tile::reinitialize(kd_tile *this)
{
  if (*(this + 293) != 1 || *(this + 289) == 1)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    kdu_error::kdu_error(&v14, "Kakadu Core Error:\n");
    (*(v14 + 16))(&v14, "Assert ");
    (*(v14 + 16))(&v14, "needs_reinit && !is_open");
    (*(v14 + 16))(&v14, " FAILED");
    kdu_error::~kdu_error(&v14);
  }

  *(this + 293) = 0;
  v2 = *(this + 3);
  if (*(v2 + 16) != this)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    kdu_error::kdu_error(&v14, "Kakadu Core Error:\n");
    (*(v14 + 16))(&v14, "Assert ");
    (*(v14 + 16))(&v14, "tile_ref->tile == this");
    (*(v14 + 16))(&v14, " FAILED");
    kdu_error::~kdu_error(&v14);
  }

  *(this + 4) = *v2;
  v3 = *this;
  if (*(*this + 8))
  {
    if (!kd_tile::read_tile_part_header(this))
    {
      v12 = 1;
      goto LABEL_22;
    }

    v3 = *this;
  }

  if (kdu_params::any_changes(*(v3 + 24)))
  {
    v4 = *(this + 12);
    if (v4)
    {
      MEMORY[0x186602850](v4, 0x1020C40539952E0);
    }

    *(this + 12) = 0;
    v5 = *(this + 34);
    if (v5)
    {
      v6 = v5 - 16;
      v7 = *(v5 - 8);
      if (v7)
      {
        v8 = (v5 + 224 * v7 - 224);
        v9 = -224 * v7;
        do
        {
          kd_tile_comp::~kd_tile_comp(v8);
          v8 = (v10 - 224);
          v9 += 224;
        }

        while (v9);
      }

      MEMORY[0x186602830](v6, 0x10A0C802A3299D9);
    }

    v11 = *(this + 32);
    *(this + 33) = v11;
    for (*(this + 34) = 0; v11; *(this + 33) = v11)
    {
      *(this + 32) = *(v11 + 7);
      kd_mct_stage::~kd_mct_stage(v11);
      MEMORY[0x186602850]();
      v11 = *(this + 32);
    }

    *(this + 294) = 0;
    *(this + 292) = 1;
    kd_buf_server::augment_structure_bytes(*(*this + 48), -*(this + 70));
    *(this + 70) = 0;
    kd_tile::initialize(this);
  }

  v12 = 0;
LABEL_22:
  *(this + 292) = 1;
  kd_packet_sequencer::init(*(this + 12));
  if ((*(*this + 417) & 1) == 0)
  {
    kd_tile::set_elements_of_interest(this);
  }

  if (v12)
  {
    kd_tile::finished_reading(this);
  }

  result = kdu_params::check_typical_tile(*(*this + 24), *(this + 2));
  *(this + 184) = result;
  return result;
}

uint64_t *kd_tile::open(kd_tile *this)
{
  v1 = this;
  if (*(this + 289) == 1)
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    kdu_error::kdu_error(&v42, "Kakadu Core Error:\n");
    (*(v42 + 16))(&v42, "You must close a tile before you can re-open it.");
    kdu_error::~kdu_error(&v42);
  }

  if (!*(this + 34))
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    kdu_error::kdu_error(&v42, "Kakadu Core Error:\n");
    (*(v42 + 16))(&v42, "kd_tile::initialize failed.");
    kdu_error::~kdu_error(&v42);
  }

  v2 = *this;
  if (*(*this + 417) == 1)
  {
    kd_tile::set_elements_of_interest(this);
    v2 = *v1;
  }

  if (*(v2 + 16))
  {
    if ((v1[36] & 1) != 0 || v1[5])
    {
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
      kdu_error::kdu_error(&v42, "Kakadu Core Error:\n");
      (*(v42 + 16))(&v42, "Assert ");
      (*(v42 + 16))(&v42, "(!is_in_progress) && (in_progress_next == NULL)");
      (*(v42 + 16))(&v42, " FAILED");
      kdu_error::~kdu_error(&v42);
    }

    v3 = *(v2 + 344);
    v1[6] = v3;
    v4 = (v3 ? v3 + 40 : v2 + 336);
    *v4 = v1;
    *(v2 + 344) = v1;
    *(v1 + 288) = 1;
    if (*(v1 + 47) >= 1)
    {
      v5 = 0;
      v33 = v1;
      do
      {
        v6 = v1[34] + 224 * v5;
        v7 = *(*v1 + 352) + 88 * v5;
        v8 = *(v6 + 68);
        if ((v8 & 0x80000000) != 0)
        {
LABEL_78:
          v30 = 33 - v8;
          do
          {
            kd_global_rescomp::notify_tile_status(v7, *(v1 + 212), *(v1 + 220), 0);
            v28 = *(v1 + 47);
            v7 += 88 * v28;
            --v30;
          }

          while (v30 > 1);
          goto LABEL_80;
        }

        v32 = v5;
        v36 = 0;
        v34 = v1[34] + 224 * v5;
        do
        {
          v9 = (*(v6 + 176) + 704 * v8);
          v10 = v9[2];
          v36 |= *&v10 != 0;
          if ((v36 & 1) == 0)
          {
            v9[2] = v7;
            kd_global_rescomp::notify_tile_status(v7, *(v1 + 212), *(v1 + 220), 1);
            if (!v9[3].i8[0] || v9[24].i32[1] < 1 || v9[24].i32[0] < 1)
            {
              goto LABEL_73;
            }

            v35 = v8;
            v11 = 0;
            v37 = v9[17];
            v38 = v9[16];
            v12 = v9[23];
            v40 = 0;
            v41 = 0;
            v13 = v9[22];
            v14 = vmla_s32(v9[21], v13, v12);
            while (2)
            {
              if ((v11 & 1) == 0)
              {
                v15 = 0;
                goto LABEL_32;
              }

              v16 = v9[24].i32[1];
              if (v16 >= 2 && *&v38 != 0)
              {
                v15 = v16 - 1;
LABEL_32:
                if (v11 >= 2)
                {
                  v19 = v9[24].i32[0];
                  if (v19 >= 2 && *&v37 != 0)
                  {
                    v18 = v19 - 1;
                    goto LABEL_39;
                  }
                }

                else
                {
                  v18 = 0;
LABEL_39:
                  v40 = vmla_s32(v14, __PAIR64__(v15, v18), v13);
                  v41 = v13;
                  kdu_dims::operator&=(&v40, &v9[6]);
                  if ((!*&v38 || v41.i32[1] == 1 && (v40.i8[4] & 1) == 0) && (!*&v37 || v41.i32[0] == 1 && (v40.i8[0] & 1) == 0))
                  {
                    if (v38)
                    {
                      v39 = 1;
                    }

                    else
                    {
                      if (v15)
                      {
                        v44 = 0;
                        v42 = 0u;
                        v43 = 0u;
                        kdu_error::kdu_error(&v42, "Kakadu Core Error:\n");
                        (*(v42 + 16))(&v42, "Assert ");
                        (*(v42 + 16))(&v42, "p_idx.x == 0");
                        (*(v42 + 16))(&v42, " FAILED");
                        kdu_error::~kdu_error(&v42);
                      }

                      v39 = v9[24].i32[1];
                    }

                    if (v37)
                    {
                      v21 = 1;
LABEL_55:
                      v22 = v15;
                      while (v39 < 1)
                      {
LABEL_69:
                        ++v18;
                        v27 = __OFSUB__(v21--, 1);
                        if ((v21 < 0) ^ v27 | (v21 == 0))
                        {
                          goto LABEL_71;
                        }
                      }

                      v23 = v22;
                      v24 = v39 + 1;
                      while (2)
                      {
                        v25 = (*&v9[29] + 8 * (v23 + v9[24].i32[1] * v18));
                        v26 = *v25;
                        if (!*v25)
                        {
                          goto LABEL_64;
                        }

                        if (v26 == 3)
                        {
                          v26 = 0;
                          goto LABEL_65;
                        }

                        if (v26)
                        {
LABEL_64:
                          v26 = kd_precinct_ref::instantiate_precinct(v25, v9, v18 | (v23 << 32));
                        }

                        else
                        {
                          if (*(v26 + 20) == 1)
                          {
                            kd_precinct_size_class::withdraw_from_inactive_list(*(v26 + 72), v26);
                            goto LABEL_68;
                          }

                          if (*(v26 + 19) == 1)
                          {
LABEL_68:
                            kd_precinct::activate(v26);
                          }
                        }

LABEL_65:
                        kd_global_rescomp::add_ready_precinct(v7, v26);
                        --v24;
                        ++v23;
                        if (v24 <= 1)
                        {
                          goto LABEL_69;
                        }

                        continue;
                      }
                    }

                    if (v18)
                    {
                      v44 = 0;
                      v42 = 0u;
                      v43 = 0u;
                      kdu_error::kdu_error(&v42, "Kakadu Core Error:\n");
                      (*(v42 + 16))(&v42, "Assert ");
                      (*(v42 + 16))(&v42, "p_idx.y == 0");
                      (*(v42 + 16))(&v42, " FAILED");
                      kdu_error::~kdu_error(&v42);
                    }

                    v21 = v9[24].i32[0];
                    if (v21 >= 1)
                    {
                      goto LABEL_55;
                    }
                  }
                }
              }

LABEL_71:
              if (++v11 == 4)
              {
                v1 = v33;
                v6 = v34;
                v8 = v35;
                goto LABEL_73;
              }

              continue;
            }
          }

          if (*&v10 != v7)
          {
            v44 = 0;
            v42 = 0u;
            v43 = 0u;
            kdu_error::kdu_error(&v42, "Kakadu Core Error:\n");
            (*(v42 + 16))(&v42, "Assert ");
            (*(v42 + 16))(&v42, "res->rescomp == rc");
            (*(v42 + 16))(&v42, " FAILED");
            kdu_error::~kdu_error(&v42);
          }

LABEL_73:
          v28 = *(v1 + 47);
          v7 += 88 * v28;
        }

        while (v8-- > 0);
        if (v36)
        {
          v5 = v32;
        }

        else
        {
          LODWORD(v8) = *(v6 + 68);
          v5 = v32;
          if (v8 <= 31)
          {
            goto LABEL_78;
          }
        }

LABEL_80:
        ++v5;
      }

      while (v5 < v28);
    }
  }

  *(v1 + 289) = 1;
  result = kd_tile::adjust_unloadability(v1);
  ++*(*v1 + 260);
  return result;
}

uint64_t *kd_tile::adjust_unloadability(uint64_t *this)
{
  v2 = *this;
  if (*(*this + 417) == 1 && (*(v2 + 72) || (*(v2 + 418) & 1) != 0))
  {
    if ((*(this + 289) & 1) != 0 || *(v2 + 440) == this)
    {
      if (*(this + 290) == 1)
      {

        return kd_tile::withdraw_from_unloadable_list(this);
      }
    }

    else if ((*(this + 290) & 1) == 0)
    {

      return kd_tile::add_to_unloadable_list(this);
    }
  }

  else if (*(this + 290) == 1)
  {
    kd_tile::adjust_unloadability();
  }

  return this;
}

uint64_t kd_node::adjust_cover(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if ((a3 & 0x8000000080000000) == 0)
  {
    if (a4 <= 1)
    {
      v5 = a4 | (2 * HIDWORD(a2));
    }

    else
    {
      v5 = HIDWORD(a2);
    }

    if (a4 <= 1)
    {
      v6 = a4 + 2 * (HIDWORD(a3) + HIDWORD(a2)) - 1;
    }

    else
    {
      v6 = HIDWORD(a3) + HIDWORD(a2);
    }

    if (a5 <= 1)
    {
      v7 = a5 | (2 * a2);
    }

    else
    {
      v7 = a2;
    }

    if (a5 <= 1)
    {
      v8 = a5 + 2 * (a3 + a2) - 1;
    }

    else
    {
      v8 = a3 + a2;
    }

    v9 = *(result + 64);
    if (v9 < 1 || (v10 = *(result + 60), v10 <= 0))
    {
      *(result + 52) = v7 | (v5 << 32);
      *(result + 60) = (v8 - v7) | ((v6 - v5) << 32);
    }

    else
    {
      v11 = *(result + 56) - v5;
      if (v11 < 1)
      {
        LODWORD(v5) = *(result + 56);
      }

      else
      {
        *(result + 56) = v5;
        v9 += v11;
        *(result + 64) = v9;
      }

      v12 = v6 - v5;
      if (v12 > v9)
      {
        *(result + 64) = v12;
      }

      v13 = *(result + 52) - v7;
      if (v13 < 1)
      {
        LODWORD(v7) = *(result + 52);
      }

      else
      {
        *(result + 52) = v7;
        v10 += v13;
        *(result + 60) = v10;
      }

      v14 = v8 - v7;
      if (v14 > v10)
      {
        *(result + 60) = v14;
      }
    }
  }

  return result;
}

uint64_t kd_tile::add_to_unloadable_list(uint64_t this)
{
  v1 = this;
  if (*(this + 290) == 1)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
    (*(v5 + 16))(&v5, "Assert ");
    (*(v5 + 16))(&v5, "!is_unloadable");
    (*(v5 + 16))(&v5, " FAILED");
    kdu_error::~kdu_error(&v5);
  }

  v2 = *this;
  v3 = *(*this + 488);
  *(this + 56) = 0;
  *(this + 64) = v3;
  if (v3)
  {
    v4 = (v3 + 56);
  }

  else
  {
    if (*(v2 + 480))
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
      (*(v5 + 16))(&v5, "Assert ");
      (*(v5 + 16))(&v5, "codestream->unloadable_tiles_head == NULL");
      (*(v5 + 16))(&v5, " FAILED");
      kdu_error::~kdu_error(&v5);
    }

    v4 = (v2 + 480);
  }

  *v4 = this;
  *(v2 + 488) = this;
  ++*(v2 + 504);
  *(this + 290) = 1;
  if (!*(v2 + 496))
  {
    this = kdu_dims::intersects((this + 212), (v2 + 264));
    if ((this & 1) == 0)
    {
      *(*v1 + 496) = v1;
    }
  }

  return this;
}

BOOL kdu_dims::intersects(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v4 = a2[1];
  if (v3 + v2 <= v4)
  {
    return 0;
  }

  v5 = a1[2];
  if (v5 + *a1 <= *a2)
  {
    return 0;
  }

  v6 = a2[3];
  if (v2 >= v6 + v4)
  {
    return 0;
  }

  v7 = a2[2];
  if (*a1 >= v7 + *a2)
  {
    return 0;
  }

  return v3 > 0 && v5 > 0 && v6 > 0 && v7 > 0;
}

uint64_t kd_precinct::desequence_packet(kd_precinct *this)
{
  if ((*(this + 17) & 1) != 0 || *(this + 18) == 1)
  {
    kd_precinct::desequence_packet();
  }

  v2 = *(*(*this + 8) + 8);
  packet = kd_precinct::read_packet(this);
  if (packet)
  {
    v4 = *(this + 7) + 1;
    *(this + 7) = v4;
    if (v4 == *(v2 + 48))
    {
      kd_precinct::finished_desequencing(this);
    }

    ++*(v2 + 78);
    if (*(this + 21) == 1 && *(this + 7) <= *(v2 + 50))
    {
      v5 = *(v2 + 77) + 1;
      *(v2 + 77) = v5;
      if (v5 == *(v2 + 52))
      {
        kd_tile::finished_reading(v2);
      }
    }
  }

  return packet;
}

uint64_t *kd_precinct::finished_desequencing(uint64_t *this)
{
  if ((*(this + 17) & 1) == 0)
  {
    *(this + 17) = 1;
    if (!*(this + 7))
    {
      *(this + 18) = 1;
      this[5] = 0;
    }

    if (!*(this + 9))
    {
      return kd_precinct::release(this);
    }
  }

  return this;
}

unint64_t kd_tile::generate_tile_part(kd_tile *this, int a2, unsigned __int16 *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  if (*(this + 77) == *(this + 52))
  {
    return 0;
  }

  if ((*(this + 288) & 1) == 0)
  {
    *&v64 = 0;
    *v62 = 0u;
    v63 = 0u;
    kdu_error::kdu_error(v62, "Kakadu Core Error:\n");
    (*(*v62 + 16))(v62, "Assert ");
    (*(*v62 + 16))(v62, "is_in_progress");
    (*(*v62 + 16))(v62, " FAILED");
    kdu_error::~kdu_error(v62);
  }

  v4 = *(this + 76);
  if (v4 >= 255)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
    (*(v59 + 16))(&v59, "Too many tile-parts for tile ");
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    *v62 = 0u;
    if (BYTE8(v59))
    {
      sprintf(v62, "%x");
    }

    else
    {
      sprintf(v62, "%d");
    }

    (*(v59 + 16))(&v59, v62);
    (*(v59 + 16))(&v59, ".  No tile may have more than 255 parts.");
    kdu_error::~kdu_error(&v59);
  }

  if (*(*this + 104) >= 1 && *(*this + 108) <= v4)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
    (*(v59 + 16))(&v59, "Too many tile-parts for tile ");
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    *v62 = 0u;
    if (BYTE8(v59))
    {
      sprintf(v62, "%x");
    }

    else
    {
      sprintf(v62, "%d");
    }

    (*(v59 + 16))(&v59, v62);
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    *v62 = 0u;
    if (BYTE8(v59))
    {
      sprintf(v62, "%x");
    }

    else
    {
      sprintf(v62, "%d");
    }

    (*(v59 + 16))(&v59, v62);
    (*(v59 + 16))(&v59, ".");
    kdu_error::~kdu_error(&v59);
  }

  v5 = *this;
  if (*(*this + 364) < a2)
  {
    *&v64 = 0;
    *v62 = 0u;
    v63 = 0u;
    kdu_error::kdu_error(v62, "Kakadu Core Error:\n");
    (*(*v62 + 16))(v62, "Assert ");
    (*(*v62 + 16))(v62, "max_layers <= codestream->num_sized_layers");
    (*(*v62 + 16))(v62, " FAILED");
    kdu_error::~kdu_error(v62);
  }

  v6 = *(this + 76);
  *(this + 76) = v6 + 1;
  marker_segments = kdu_params::generate_marker_segments(*(v5 + 24), 0, *(this + 2), v6);
  bzero(v62, 0x400uLL);
  v8 = *this;
  if (!*(*this + 160))
  {
    v9 = v8[114];
    if ((v9 & 0x80000000) == 0)
    {
      if (v9 != *(this + 2))
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        kdu_warning::kdu_warning(&v59, "Kakadu Core Warning:\n");
        (*(v59 + 16))(&v59, "Profile violation detected (code-stream is technically illegal).  In a Profile-0 code-stream, all first tile-parts of all tiles must appear first, in exactly the same order as their respective tile numbers.");
        *(*this + 160) = 2;
        kdu_warning::~kdu_warning(&v59);
        v8 = *this;
        v9 = *(*this + 456);
      }

      if (v9 + 1 == v8[55] * v8[56])
      {
        v10 = -1;
      }

      else
      {
        v10 = v9 + 1;
      }

      v8[114] = v10;
    }
  }

  v57 = 0;
  v58 = 0;
  kd_packet_sequencer::save_state(*(this + 12));
  v11 = kd_packet_sequencer::next_in_sequence(*(this + 12), &v58, &v57);
  if (!v11)
  {
    goto LABEL_71;
  }

  v12 = 0;
  v13 = marker_segments + 14;
  v14 = 0xFFFFFFFFLL;
  v15 = -1;
  v51 = -1;
  v53 = -1;
  do
  {
    v16 = *v11;
    if (!*v11)
    {
      goto LABEL_35;
    }

    if (v16 == 3)
    {
      goto LABEL_36;
    }

    if (v16)
    {
LABEL_35:
      v16 = kd_precinct_ref::instantiate_precinct(v11, v58, v57);
      if (!v16)
      {
LABEL_36:
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
        (*(v59 + 16))(&v59, "Assert ");
        (*(v59 + 16))(&v59, "precinct != NULL");
        (*(v59 + 16))(&v59, " FAILED");
        kdu_error::~kdu_error(&v59);
      }
    }

    else if (*(v16 + 20) == 1)
    {
      kd_precinct_size_class::withdraw_from_inactive_list(*(v16 + 72), v16);
      kd_precinct::activate(v16);
    }

    else if (*(v16 + 19) == 1)
    {
      kd_precinct::activate(*v11);
    }

    if (*(v16 + 36) > 0)
    {
      break;
    }

    v17 = *(v16 + 28);
    if (v17 >= *(this + 48))
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
      (*(v59 + 16))(&v59, "Assert ");
      (*(v59 + 16))(&v59, "layer_idx < num_layers");
      (*(v59 + 16))(&v59, " FAILED");
      kdu_error::~kdu_error(&v59);
    }

    if (v15 < 0)
    {
      v15 = *(*v16 + 24);
      v51 = *(*(*v16 + 8) + 24);
      v53 = *(v16 + 28);
    }

    if (*(this + 295) == 1 && v15 != *(*v16 + 24) || *(this + 296) == 1 && v51 != *(*(*v16 + 8) + 24) || *(this + 297) == 1 && v53 != v17)
    {
      break;
    }

    v18 = *(v16 + 40);
    if (!v18 || (v19 = *(v18 + 8 * v17)) == 0)
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
      (*(v59 + 16))(&v59, "Attempting to generate tile-part data without first determining packet lengths.  This may be a consequence of incomplete simulation of the packet construction process.");
      kdu_error::~kdu_error(&v59);
    }

    v13 += v19;
    if (*(this + 294) == 1)
    {
      if ((v14 & 0x80000000) != 0)
      {
        v14 = 0;
        *v62 = 5;
      }

      v20 = 1;
      if (v19 >= 128)
      {
        do
        {
          v21 = v19 >> 14;
          v19 = v19 >> 7;
          ++v20;
        }

        while (v21);
      }

      v22 = *&v62[4 * v14];
      *&v62[4 * v14] = v22 + v20;
      if (v22 + v20 >= 65538)
      {
        *&v62[4 * v14] = v22;
        if (v14 >= 0xFF)
        {
          v61 = 0;
          v59 = 0u;
          v60 = 0u;
          kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
          (*(v59 + 16))(&v59, "Cannot satisfy the request to generate PLT marker segments!  There are so many packets in one tile-part that it is beyond the capacity of the maximum 256 marker segments to represent length information for all tile-parts!!");
          kdu_error::~kdu_error(&v59);
        }

        v13 += v22;
        ++v14;
        *&v62[4 * v14] = v20 + 5;
      }
    }

    ++*(v16 + 28);
    ++*(this + 77);
    v11 = kd_packet_sequencer::next_in_sequence(*(this + 12), &v58, &v57);
    ++v12;
  }

  while (v11);
  if (!v12)
  {
LABEL_71:
    --*(this + 76);
    kd_packet_sequencer::restore_state(*(this + 12));
    return 0;
  }

  if ((v14 & 0x80000000) == 0)
  {
    v13 += *&v62[4 * v14];
  }

  v54 = v13;
  if (v13 >= 0x100000000)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
    (*(v59 + 16))(&v59, "Length of current tile-part exceeds the maximum value which can be represented by the 32-bit length field in the SOT marker!  You will have to split the code-stream into smaller tile-parts -- see the ORGtparts parameter attribute.");
    kdu_error::~kdu_error(&v59);
  }

  v23 = *(*this + 16);
  v50 = *(v23 + 65);
  v52 = *(v23 + 68);
  kdu_output::put(v23, 255);
  kdu_output::put(v23, 144);
  kdu_output::put(v23, 0);
  kdu_output::put(v23, 10);
  v24 = *(this + 2);
  kdu_output::put(v23, SBYTE1(v24));
  kdu_output::put(v23, v24);
  kdu_output::put(v23, v13);
  kdu_output::put(v23, *(this + 304) - 1);
  if (*(*this + 104) < 1)
  {
    if (*(this + 77) == *(this + 52))
    {
      v25 = *(this + 76);
    }

    else
    {
      LOBYTE(v25) = 0;
    }
  }

  else
  {
    v25 = *(*this + 108);
  }

  kdu_output::put(v23, v25);
  **(*this + 368) += (kdu_params::generate_marker_segments(*(*this + 24), v23, *(this + 2), (*(this + 76) - 1)) + 12);
  if ((v14 & 0x80000000) == 0)
  {
    if ((*(this + 294) & 1) == 0)
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
      (*(v59 + 16))(&v59, "Assert ");
      (*(v59 + 16))(&v59, "insert_plt_segments");
      (*(v59 + 16))(&v59, " FAILED");
      kdu_error::~kdu_error(&v59);
    }

    kd_packet_sequencer::restore_state(*(this + 12));
    v28 = 0;
    LODWORD(v29) = -1;
    while (1)
    {
      v30 = kd_packet_sequencer::next_in_sequence(*(this + 12), &v58, &v57);
      if (!v30)
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
        (*(v59 + 16))(&v59, "Assert ");
        (*(v59 + 16))(&v59, "p_ref != NULL");
        (*(v59 + 16))(&v59, " FAILED");
        kdu_error::~kdu_error(&v59);
      }

      v31 = *v30;
      if (*v30)
      {
        if (v31 == 3)
        {
          v31 = 0;
          goto LABEL_90;
        }

        if ((v31 & 1) == 0)
        {
          if (*(v31 + 20) == 1)
          {
            kd_precinct_size_class::withdraw_from_inactive_list(*(v31 + 72), *v30);
            kd_precinct::activate(v31);
          }

          else if (*(v31 + 19) == 1)
          {
            kd_precinct::activate(*v30);
          }

          goto LABEL_90;
        }
      }

      v31 = kd_precinct_ref::instantiate_precinct(v30, v58, v57);
LABEL_90:
      if ((v29 & 0x80000000) != 0 || !*&v62[4 * v29])
      {
        kdu_output::put(v23, 255);
        kdu_output::put(v23, 88);
        v29 = v29 + 1;
        v32 = *&v62[4 * v29];
        kdu_output::put(v23, (v32 - 2) >> 8);
        kdu_output::put(v23, v32 - 2);
        kdu_output::put(v23, v29);
        *&v62[4 * v29] = v32 - 5;
      }

      v33 = *(*(v31 + 40) + 8 * *(v31 + 28));
      v34 = -7;
      do
      {
        v34 += 7;
      }

      while (v33 >> v34 > 127);
      do
      {
        kdu_output::put(v23, (v33 >> v34) & 0x7F | ((v34 != 0) << 7));
        --*&v62[4 * v29];
        v35 = v34 <= 6;
        v34 -= 7;
      }

      while (!v35);
      ++*(v31 + 28);
      ++*(this + 77);
      if (++v28 == v12)
      {
        if (*&v62[4 * v29])
        {
          v61 = 0;
          v59 = 0u;
          v60 = 0u;
          kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
          (*(v59 + 16))(&v59, "Assert ");
          (*(v59 + 16))(&v59, "plt_seg_lengths[current_plt_seg] == 0");
          (*(v59 + 16))(&v59, " FAILED");
          kdu_error::~kdu_error(&v59);
        }

        break;
      }
    }
  }

  kdu_output::put(v23, 255);
  kdu_output::put(v23, 147);
  **(*this + 368) += 2;
  kd_packet_sequencer::restore_state(*(this + 12));
  do
  {
    v36 = kd_packet_sequencer::next_in_sequence(*(this + 12), &v58, &v57);
    if (!v36)
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
      (*(v59 + 16))(&v59, "Assert ");
      (*(v59 + 16))(&v59, "p_ref != NULL");
      (*(v59 + 16))(&v59, " FAILED");
      kdu_error::~kdu_error(&v59);
    }

    v37 = *v36;
    if (!*v36)
    {
      goto LABEL_112;
    }

    if (v37 == 3)
    {
      v37 = 0;
      goto LABEL_113;
    }

    if (v37)
    {
LABEL_112:
      v37 = kd_precinct_ref::instantiate_precinct(v36, v58, v57);
    }

    else if (*(v37 + 20) == 1)
    {
      kd_precinct_size_class::withdraw_from_inactive_list(*(v37 + 72), *v36);
      kd_precinct::activate(v37);
    }

    else if (*(v37 + 19) == 1)
    {
      kd_precinct::activate(*v36);
    }

LABEL_113:
    v38 = *(v37 + 28);
    if (v38 < a2)
    {
      v39 = kd_precinct::write_packet(v37, a3[v38], 0);
      v40 = *this;
      v41 = *(*this + 368);
LABEL_116:
      v43 = (v41 + 8 * v38);
      goto LABEL_118;
    }

    v42 = v38 < *(*this + 364);
    v39 = kd_precinct::write_packet(v37, 0, 1);
    v40 = *this;
    v41 = *(*this + 368);
    if (v42)
    {
      goto LABEL_116;
    }

    v43 = (v41 + 8 * *(v40 + 364) - 8);
LABEL_118:
    *v43 += v39;
    --v12;
  }

  while (v12);
  v26 = v54;
  if (v54 != *(v23 + 68) - (v52 + v50) + *(v23 + 65))
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    kdu_error::kdu_error(&v59, "Kakadu Core Error:\n");
    (*(v59 + 16))(&v59, "Assert ");
    (*(v59 + 16))(&v59, "tpart_bytes == (out->get_bytes_written() - start_bytes)");
    (*(v59 + 16))(&v59, " FAILED");
    kdu_error::~kdu_error(&v59);
  }

  v45 = *(v40 + 104);
  v44 = v40 + 104;
  ++*(v44 + 356);
  if (v45 >= 1)
  {
    kd_tlm_generator::add_tpart_length(v44, *(this + 2), v54);
    v26 = v54;
  }

  if (*(this + 77) == *(this + 52))
  {
    if (*(*this + 104) >= 1)
    {
      v46 = *(*this + 108);
      v47 = *(this + 76);
      while (v46 > v47)
      {
        kdu_output::put(v23, 255);
        kdu_output::put(v23, 144);
        kdu_output::put(v23, 0);
        kdu_output::put(v23, 10);
        v48 = *(this + 2);
        kdu_output::put(v23, SBYTE1(v48));
        kdu_output::put(v23, v48);
        kdu_output::put(v23, 12);
        kdu_output::put(v23, *(this + 304));
        kdu_output::put(v23, *(*this + 108));
        kdu_output::put(v23, 255);
        kdu_output::put(v23, 147);
        v49 = *this;
        **(*this + 368) += 14;
        kd_tlm_generator::add_tpart_length(v49 + 104, *(this + 2), 0xEuLL);
        v47 = *(this + 76) + 1;
        *(this + 76) = v47;
        v46 = *(*this + 108);
      }
    }

    kd_tile::remove_from_in_progress_list(this);
    if (*(this + 291) == 1 && (*(*this + 408) & 1) == 0)
    {
      kd_tile::release(this);
    }

    return v54;
  }

  return v26;
}

void sub_185F199F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  kdu_warning::~kdu_warning(va);
  _Unwind_Resume(a1);
}

uint64_t kdu_output::put(kdu_output *this, int a2)
{
  kdu_output::put(this, SHIBYTE(a2));
  kdu_output::put(this, SBYTE2(a2));
  kdu_output::put(this, SBYTE1(a2));
  kdu_output::put(this, a2);
  return 4;
}

uint64_t kdu_output::put(kdu_output *this, char a2)
{
  v4 = *(this + 65);
  if (v4 == *(this + 66))
  {
    (*(*this + 16))(this);
    v4 = *(this + 65);
    if (v4 >= *(this + 66))
    {
      kdu_output::put();
    }
  }

  *(this + 65) = v4 + 1;
  *v4 = a2;
  return 1;
}

uint64_t kd_precinct::write_packet(kd_precinct *this, unsigned int a2, char a3)
{
  v3 = a3;
  v5 = *(*(*this + 8) + 8);
  v6 = *(**this + 16);
  if (a3)
  {
    v7 = 0;
    v35 = 0x700000000;
    v36 = 0;
    v37 = v6;
  }

  else
  {
    if (*(*this + 222))
    {
      v9 = 0;
      v7 = 0;
      do
      {
        v10 = *(this + 6) + 32 * v9;
        if (!*(this + 7))
        {
          kd_block::reset_output_tree(*(v10 + 24), *(v10 + 16));
        }

        v11 = *(v10 + 16) * *(v10 + 20);
        if (v11 >= 1)
        {
          v12 = 0;
          v13 = 40 * v11;
          do
          {
            v7 += kd_block::start_packet((*(v10 + 24) + v12), *(this + 7), a2);
            v12 += 40;
          }

          while (v13 != v12);
        }

        ++v9;
      }

      while (v9 < *(*this + 222));
      v14 = *(*(*this + 8) + 8);
      v3 = a3;
    }

    else
    {
      v7 = 0;
      v14 = *(*(*this + 8) + 8);
    }

    if (*(v14 + 284) == 1)
    {
      kdu_output::put(v6, 255);
      kdu_output::put(v6, 145);
      kdu_output::put(v6, 0);
      kdu_output::put(v6, 4);
      v15 = *(v5 + 308);
      kdu_output::put(v6, SBYTE1(v15));
      kdu_output::put(v6, v15);
      v7 += 6;
    }

    v35 = 0x800000000;
    v36 = 0;
    v37 = v6;
    kd_header_out::put_bit(&v35, 1u);
    v16 = *this;
    if (*(*this + 222))
    {
      v17 = 0;
      do
      {
        v18 = *(this + 6) + 32 * v17;
        v19 = *(v18 + 16) * *(v18 + 20);
        if (v19 >= 1)
        {
          v20 = 0;
          v21 = 40 * v19;
          do
          {
            kd_block::write_packet_header((*(v18 + 24) + v20), &v35, *(this + 7), 0);
            v20 += 40;
          }

          while (v21 != v20);
          v16 = *this;
        }

        ++v17;
      }

      while (v17 < *(v16 + 222));
    }
  }

  v22 = v7 + kd_header_out::finish(&v35);
  if (*(*(*(*this + 8) + 8) + 285) == 1)
  {
    kdu_output::put(v6, 255);
    kdu_output::put(v6, 146);
    v22 += 2;
  }

  if ((v3 & 1) == 0)
  {
    v23 = *this;
    if (*(*this + 222))
    {
      v24 = 0;
      do
      {
        v25 = *(this + 6) + 32 * v24;
        v26 = *(v25 + 16) * *(v25 + 20);
        if (v26 >= 1)
        {
          v27 = 0;
          v28 = 40 * v26;
          do
          {
            kd_block::write_body_bytes((*(v25 + 24) + v27), v6);
            v27 += 40;
          }

          while (v28 != v27);
          v23 = *this;
        }

        ++v24;
      }

      while (v24 < *(v23 + 222));
    }
  }

  v29 = *(this + 7);
  if (v22 != *(*(this + 5) + 8 * v29))
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    kdu_error::kdu_error(v33, "Kakadu Core Error:\n");
    (*(*&v33[0] + 16))(v33, "Assert ");
    (*(*&v33[0] + 16))(v33, "check_bytes == packet_bytes[next_layer_idx]");
    (*(*&v33[0] + 16))(v33, " FAILED");
    kdu_error::~kdu_error(v33);
  }

  v30 = v29 + 1;
  *(this + 7) = v30;
  ++*(v5 + 308);
  if (v30 == *(v5 + 192))
  {
    kd_global_rescomp::close_ready_precinct(*(*this + 16), this);
  }

  return v22;
}

uint64_t *kdu_tile::close(void *a1, kdu_thread_entity *this)
{
  v2 = this;
  if (this)
  {
    kdu_thread_entity::acquire_lock(this, 0, 1);
  }

  v4 = *a1;
  if (*(*a1 + 289) != 1)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    kdu_error::kdu_error(&v24, "Kakadu Core Error:\n");
    (*(v24 + 16))(&v24, "Assert ");
    (*(v24 + 16))(&v24, "0");
    (*(v24 + 16))(&v24, " FAILED");
    kdu_error::~kdu_error(&v24);
  }

  v5 = *v4;
  --*(*v4 + 260);
  *(v4 + 289) = 0;
  if (*(v4 + 291))
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    kdu_error::kdu_error(&v24, "Kakadu Core Error:\n");
    (*(v24 + 16))(&v24, "Assert ");
    (*(v24 + 16))(&v24, "!state->closed");
    (*(v24 + 16))(&v24, " FAILED");
    kdu_error::~kdu_error(&v24);
  }

  if (*(v5 + 8) && *(v4 + 47) >= 1)
  {
    v22 = v2;
    v23 = a1;
    v6 = 0;
    do
    {
      v7 = v4[34] + 224 * v6;
      if (*(v7 + 176))
      {
        v8 = *(v7 + 68);
        if ((v8 & 0x80000000) == 0)
        {
          v9 = 0;
          do
          {
            v10 = *(v7 + 176) + 704 * v9;
            v11 = *(v10 + 208);
            if (v11 >= 1)
            {
              v12 = 0;
              v13 = *(v10 + 200) - *(v10 + 184);
              v14 = *(v10 + 212);
              v15 = 8 * (*(v10 + 204) - *(v10 + 188));
              do
              {
                if (v14 >= 1)
                {
                  v16 = 0;
                  v17 = v15;
                  do
                  {
                    v18 = *(*(v10 + 232) + 8 * v13 * *(v10 + 196) + v17);
                    if (v18)
                    {
                      v19 = (*(*(v10 + 232) + 8 * v13 * *(v10 + 196) + v17) & 1) == 0;
                    }

                    else
                    {
                      v19 = 0;
                    }

                    if (v19)
                    {
                      kd_precinct::release(v18);
                      v14 = *(v10 + 212);
                    }

                    ++v16;
                    v17 += 8;
                  }

                  while (v16 < v14);
                  v11 = *(v10 + 208);
                }

                ++v12;
                ++v13;
              }

              while (v12 < v11);
              v8 = *(v7 + 68);
            }
          }

          while (v9++ < v8);
          a1 = v23;
          v4 = *v23;
        }
      }

      ++v6;
    }

    while (v6 < *(v4 + 47));
    v5 = *v4;
    v2 = v22;
  }

  if ((*(v5 + 417) != 1 || *(v4 + 287) == 1) && ((*(v4 + 291) = 1, *(v5 + 8)) && (v4[41] & 1) != 0 || *(v5 + 16) && *(v4 + 77) == *(v4 + 52)) && (*(v5 + 408) & 1) == 0)
  {
    result = kd_tile::release(v4);
    *a1 = 0;
  }

  else
  {
    result = kd_tile::adjust_unloadability(v4);
  }

  *a1 = 0;
  if (v2)
  {
    return kdu_thread_entity::release_lock(v2, 0);
  }

  return result;
}

uint64_t kdu_thread_entity::acquire_lock(uint64_t this, int a2, int a3)
{
  if (a2 < 0 || (v3 = this, *(this + 48) <= a2) || (v4 = *(this + 56) + 80 * a2, *(v4 + 72) == this))
  {
    kdu_thread_entity::acquire_lock();
  }

  if (a3 && **(this + 40) == 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = *(*(v3 + 40) + 4);
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  if (*(v4 + 64) == 1)
  {
    this = pthread_mutex_lock((*(this + 56) + 80 * a2));
  }

  *(v4 + 72) = v3;
  return this;
}

uint64_t kdu_thread_entity::release_lock(kdu_thread_entity *this, int a2)
{
  if (a2 < 0 || *(this + 12) <= a2 || (result = *(this + 7) + 80 * a2, *(result + 72) != this))
  {
    kdu_thread_entity::release_lock();
  }

  *(result + 72) = 0;
  if (*(result + 64) == 1)
  {

    return pthread_mutex_unlock(result);
  }

  return result;
}

uint64_t *kd_precinct::release(uint64_t *this)
{
  v1 = **this;
  if (!*(v1 + 8))
  {
    kd_precinct::release();
  }

  *(this + 9) = 0;
  *(this + 19) = 1;
  if ((*(this + 18) & 1) != 0 || *(this + 17) == 1 && (*(v1 + 417) & 1) == 0)
  {
    this = this[1];
    v2 = *this;
    if (*this)
    {
      v3 = (*this & 1) == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      kd_precinct::release();
    }

    if ((*(v2 + 20) & 1) == 0)
    {
      *(v2 + 19) = 1;
      if (*(v2 + 18) != 1 || (*(**v2 + 418) & 1) != 0 || (v4 = *(v2 + 8)) != 0 && v4 != *(v2 + 7))
      {

        return kd_precinct_ref::close(this);
      }

      else
      {
        v5 = v2[9];

        return kd_precinct_size_class::move_to_inactive_list(v5, v2);
      }
    }
  }

  return this;
}

uint64_t kdu_tile::get_tile_idx(unsigned __int8 ***this)
{
  LODWORD(v1) = *(*this + 4);
  v2 = **this;
  v3 = v2[409];
  v4 = v2[410];
  v5 = v2[411];
  v6 = v3 == 0;
  if (v3)
  {
    v7 = *(*this + 3);
  }

  else
  {
    v7 = *(*this + 4);
  }

  if (v6)
  {
    LODWORD(v1) = *(*this + 3);
  }

  if (v5)
  {
    v8 = -v7;
  }

  else
  {
    v8 = v7;
  }

  if (v4)
  {
    v1 = -v1;
  }

  else
  {
    v1 = v1;
  }

  return v1 | (v8 << 32);
}

uint64_t kdu_tile::get_ycc(kdu_tile *this)
{
  v1 = *this;
  if (*(*this + 286) != 1)
  {
    return 0;
  }

  if (*(v1 + 188) < 3)
  {
    return 0;
  }

  v2 = *(v1 + 272);
  if (v2[184] != 1 || v2[408] != 1 || v2[632] != 1)
  {
    return 0;
  }

  if (*(*v1 + 184) != 1)
  {
    return 1;
  }

  v3 = 88;
  do
  {
    v4 = *(*(*v1 + 312) + v3);
    if (v4 < 0)
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      kdu_error::kdu_error(v7, "Kakadu Core Error:\n");
      (*(*&v7[0] + 16))(v7, "Assert ");
      (*(*&v7[0] + 16))(v7, "apparent_idx >= 0");
      (*(*&v7[0] + 16))(v7, " FAILED");
      kdu_error::~kdu_error(v7);
    }

    result = *(*(v1 + 272) + 224 * v4 + 185);
    if (result != 1)
    {
      break;
    }

    v6 = v3 == 296;
    v3 += 104;
  }

  while (!v6);
  return result;
}

int64x2_t kdu_tile::set_components_of_interest(uint64_t **this, signed int a2, unsigned int *a3, int64x2_t result)
{
  v4 = a3;
  v5 = *this;
  v6 = **this;
  v7 = *(v6 + 184);
  if (v7 || !v5[32])
  {
    v8 = v5[34];
    v9 = v7 == 1;
    v10 = 180;
    if (v9)
    {
      v10 = 172;
    }

    v11 = *(v6 + v10);
    if (a2)
    {
      if (a3)
      {
        if (v11 >= 1)
        {
          v12 = 0;
          result = vdupq_n_s64(v11 - 1);
          v13 = xmmword_186205E50;
          v14 = xmmword_186205E60;
          v15 = xmmword_186205E70;
          v16 = xmmword_186205E80;
          v17 = xmmword_186205E90;
          v18 = xmmword_186205EA0;
          v19 = xmmword_186205EB0;
          v20 = xmmword_186205EC0;
          v21 = vdupq_n_s64(0x10uLL);
          do
          {
            v22 = vmovn_s64(vcgeq_u64(result, v20));
            if (vuzp1_s8(vuzp1_s16(v22, *result.i8), *result.i8).u8[0])
            {
              v8[v12 + 185] = 0;
            }

            if (vuzp1_s8(vuzp1_s16(v22, *&result), *&result).i8[1])
            {
              v8[v12 + 409] = 0;
            }

            if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v19))), *&result).i8[2])
            {
              v8[v12 + 633] = 0;
              v8[v12 + 857] = 0;
            }

            v23 = vmovn_s64(vcgeq_u64(result, v18));
            if (vuzp1_s8(*&result, vuzp1_s16(v23, *&result)).i32[1])
            {
              v8[v12 + 1081] = 0;
            }

            if (vuzp1_s8(*&result, vuzp1_s16(v23, *&result)).i8[5])
            {
              v8[v12 + 1305] = 0;
            }

            if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v17)))).i8[6])
            {
              v8[v12 + 1529] = 0;
              v8[v12 + 1753] = 0;
            }

            v24 = vmovn_s64(vcgeq_u64(result, v16));
            if (vuzp1_s8(vuzp1_s16(v24, *result.i8), *result.i8).u8[0])
            {
              v8[v12 + 1977] = 0;
            }

            if (vuzp1_s8(vuzp1_s16(v24, *&result), *&result).i8[1])
            {
              v8[v12 + 2201] = 0;
            }

            if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v15))), *&result).i8[2])
            {
              v8[v12 + 2425] = 0;
              v8[v12 + 2649] = 0;
            }

            v25 = vmovn_s64(vcgeq_u64(result, v14));
            if (vuzp1_s8(*&result, vuzp1_s16(v25, *&result)).i32[1])
            {
              v8[v12 + 2873] = 0;
            }

            if (vuzp1_s8(*&result, vuzp1_s16(v25, *&result)).i8[5])
            {
              v8[v12 + 3097] = 0;
            }

            if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v13)))).i8[6])
            {
              v8[v12 + 3321] = 0;
              v8[v12 + 3545] = 0;
            }

            v18 = vaddq_s64(v18, v21);
            v19 = vaddq_s64(v19, v21);
            v20 = vaddq_s64(v20, v21);
            v17 = vaddq_s64(v17, v21);
            v16 = vaddq_s64(v16, v21);
            v15 = vaddq_s64(v15, v21);
            v14 = vaddq_s64(v14, v21);
            v12 += 3584;
            v13 = vaddq_s64(v13, v21);
          }

          while (3584 * ((v11 + 15) >> 4) != v12);
        }

        if (a2 >= 1)
        {
          v26 = a2;
          do
          {
            v28 = *v4++;
            v27 = v28;
            if ((v28 & 0x80000000) == 0 && v27 < v11)
            {
              v8[224 * v27 + 185] = 1;
            }

            --v26;
          }

          while (v26);
        }
      }

      else if (v11 >= 1)
      {
        result = vdupq_n_s64(v11 - 1);
        v45 = -((v11 + 15) & 0xFFFFFFF0);
        v46 = xmmword_186205E50;
        v47 = xmmword_186205E60;
        v48 = xmmword_186205E70;
        v49 = xmmword_186205E80;
        v50 = xmmword_186205E90;
        v51 = xmmword_186205EA0;
        v52 = xmmword_186205EB0;
        v53 = xmmword_186205EC0;
        v54 = 15;
        v55 = vdupq_n_s64(0x10uLL);
        do
        {
          v56 = vmovn_s64(vcgeq_u64(result, v53));
          if (vuzp1_s8(vuzp1_s16(v56, *result.i8), *result.i8).u8[0])
          {
            v8[185] = v54 - 15 < a2;
          }

          if (vuzp1_s8(vuzp1_s16(v56, *&result), *&result).i8[1])
          {
            v8[409] = v54 - 14 < a2;
          }

          if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v52))), *&result).i8[2])
          {
            v8[633] = v54 - 13 < a2;
            v8[857] = v54 - 12 < a2;
          }

          v57 = vmovn_s64(vcgeq_u64(result, v51));
          if (vuzp1_s8(*&result, vuzp1_s16(v57, *&result)).i32[1])
          {
            v8[1081] = v54 - 11 < a2;
          }

          if (vuzp1_s8(*&result, vuzp1_s16(v57, *&result)).i8[5])
          {
            v8[1305] = v54 - 10 < a2;
          }

          if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v50)))).i8[6])
          {
            v8[1529] = v54 - 9 < a2;
            v8[1753] = v54 - 8 < a2;
          }

          v58 = vmovn_s64(vcgeq_u64(result, v49));
          if (vuzp1_s8(vuzp1_s16(v58, *result.i8), *result.i8).u8[0])
          {
            v8[1977] = v54 - 7 < a2;
          }

          if (vuzp1_s8(vuzp1_s16(v58, *&result), *&result).i8[1])
          {
            v8[2201] = v54 - 6 < a2;
          }

          if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v48))), *&result).i8[2])
          {
            v8[2425] = v54 - 5 < a2;
            v8[2649] = v54 - 4 < a2;
          }

          v59 = vmovn_s64(vcgeq_u64(result, v47));
          if (vuzp1_s8(*&result, vuzp1_s16(v59, *&result)).i32[1])
          {
            v8[2873] = v54 - 3 < a2;
          }

          if (vuzp1_s8(*&result, vuzp1_s16(v59, *&result)).i8[5])
          {
            v8[3097] = v54 - 2 < a2;
          }

          if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v46)))).i8[6])
          {
            v8[3321] = v54 - 1 < a2;
            v8[3545] = v54 < a2;
          }

          v51 = vaddq_s64(v51, v55);
          v52 = vaddq_s64(v52, v55);
          v53 = vaddq_s64(v53, v55);
          v50 = vaddq_s64(v50, v55);
          v49 = vaddq_s64(v49, v55);
          v48 = vaddq_s64(v48, v55);
          v47 = vaddq_s64(v47, v55);
          v46 = vaddq_s64(v46, v55);
          v54 += 16;
          v8 += 3584;
        }

        while (v45 + v54 != 15);
      }
    }

    else if (v11 >= 1)
    {
      v30 = 0;
      result = vdupq_n_s64(v11 - 1);
      v31 = 3584 * ((v11 + 15) >> 4);
      v32 = xmmword_186205E50;
      v33 = xmmword_186205E60;
      v34 = xmmword_186205E70;
      v35 = xmmword_186205E80;
      v36 = xmmword_186205E90;
      v37 = xmmword_186205EA0;
      v38 = xmmword_186205EB0;
      v39 = xmmword_186205EC0;
      v40 = vdupq_n_s64(0x10uLL);
      do
      {
        v41 = vmovn_s64(vcgeq_u64(result, v39));
        if (vuzp1_s8(vuzp1_s16(v41, *result.i8), *result.i8).u8[0])
        {
          v8[v30 + 185] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(v41, *&result), *&result).i8[1])
        {
          v8[v30 + 409] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v38))), *&result).i8[2])
        {
          v8[v30 + 633] = 1;
          v8[v30 + 857] = 1;
        }

        v42 = vmovn_s64(vcgeq_u64(result, v37));
        if (vuzp1_s8(*&result, vuzp1_s16(v42, *&result)).i32[1])
        {
          v8[v30 + 1081] = 1;
        }

        if (vuzp1_s8(*&result, vuzp1_s16(v42, *&result)).i8[5])
        {
          v8[v30 + 1305] = 1;
        }

        if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v36)))).i8[6])
        {
          v8[v30 + 1529] = 1;
          v8[v30 + 1753] = 1;
        }

        v43 = vmovn_s64(vcgeq_u64(result, v35));
        if (vuzp1_s8(vuzp1_s16(v43, *result.i8), *result.i8).u8[0])
        {
          v8[v30 + 1977] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(v43, *&result), *&result).i8[1])
        {
          v8[v30 + 2201] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v34))), *&result).i8[2])
        {
          v8[v30 + 2425] = 1;
          v8[v30 + 2649] = 1;
        }

        v44 = vmovn_s64(vcgeq_u64(result, v33));
        if (vuzp1_s8(*&result, vuzp1_s16(v44, *&result)).i32[1])
        {
          v8[v30 + 2873] = 1;
        }

        if (vuzp1_s8(*&result, vuzp1_s16(v44, *&result)).i8[5])
        {
          v8[v30 + 3097] = 1;
        }

        if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(*&result, *&v32)))).i8[6])
        {
          v8[v30 + 3321] = 1;
          v8[v30 + 3545] = 1;
        }

        v37 = vaddq_s64(v37, v40);
        v38 = vaddq_s64(v38, v40);
        v39 = vaddq_s64(v39, v40);
        v36 = vaddq_s64(v36, v40);
        v35 = vaddq_s64(v35, v40);
        v34 = vaddq_s64(v34, v40);
        v33 = vaddq_s64(v33, v40);
        v30 += 3584;
        v32 = vaddq_s64(v32, v40);
      }

      while (v31 != v30);
    }
  }

  else
  {
    kd_mct_stage::apply_output_restrictions(v5[33], *(v6 + 320), a2, a3);
    v5 = *this;
  }

  v60 = *(v5 + 47);
  if (v60 >= 1)
  {
    v61 = v5[34];
    v62 = (v60 + 3) & 0xFFFFFFFC;
    result = xmmword_186205EB0;
    v63 = xmmword_186205EC0;
    v64 = vdupq_n_s64(v60 - 1);
    v65 = vdupq_n_s64(4uLL);
    do
    {
      v66 = vmovn_s64(vcgeq_u64(v64, v63));
      if (vuzp1_s16(v66, *result.i8).u8[0])
      {
        v61[39] = -1082130432;
      }

      if (vuzp1_s16(v66, *&result).i8[2])
      {
        v61[95] = -1082130432;
      }

      if (vuzp1_s16(*&result, vmovn_s64(vcgeq_u64(v64, *&result))).i32[1])
      {
        v61[151] = -1082130432;
        v61[207] = -1082130432;
      }

      result = vaddq_s64(result, v65);
      v63 = vaddq_s64(v63, v65);
      v61 += 224;
      v62 -= 4;
    }

    while (v62);
  }

  return result;
}

uint64_t kdu_tile::get_mct_block_info(uint64_t **this, int a2, int a3, int *a4, int *a5, int *a6, int *a7, unint64_t a8, int *a9, unint64_t a10, int *a11, int *a12)
{
  v16 = a3;
  v18 = a10;
  v109 = *MEMORY[0x1E69E9840];
  v19 = **this;
  v20 = *(v19 + 184);
  if (v20 == 1 || (v21 = (*this)[32]) == 0)
  {
    if (a3 | a2)
    {
      return 0;
    }

    v27 = 172;
    if (v20 != 1)
    {
      v27 = 180;
    }

    v28 = *(v19 + v27);
    *a5 = v28;
    *a7 = v28;
    *a6 = v28;
    *a4 = v28;
    ycc = kdu_tile::get_ycc(this);
    v30 = v20 == 1 || ycc == 0;
    if (v30)
    {
      v107 = -1;
      v108 = -1;
      v43 = a11;
      if (!ycc)
      {
        v41 = 0;
LABEL_55:
        v37 = a10;
        goto LABEL_56;
      }
    }

    else
    {
      v42 = 16;
      v43 = a11;
      while (1)
      {
        v44 = *(*(v19 + 320) + v42);
        if (v44 & 0x80000000) == 0 && (*((*this)[34] + 224 * v44 + 185))
        {
          break;
        }

        v42 += 48;
        if (v42 == 160)
        {
          v41 = 0;
          v107 = -1;
          v108 = -1;
          goto LABEL_55;
        }
      }

      v107 = -1;
      v108 = -1;
    }

    v31 = 0;
    v32 = *this;
    v33 = **this;
    v34 = *a4;
    v35 = (*(v33 + 312) + 88);
    v36 = 16;
    v37 = a10;
    do
    {
      v38 = *v35;
      v35 += 26;
      *(&v107 + v31) = v38;
      if (v38 < 0 || (v39 = *(v33 + 176), v31 > v39))
      {
LABEL_196:
        exception = __cxa_allocate_exception(4uLL);
        *exception = -50;
        __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
      }

      if (v20 != 1)
      {
        if (v31 >= v39)
        {
          goto LABEL_196;
        }

        v40 = *(*(v19 + 320) + v36);
        if ((v40 & 0x80000000) != 0)
        {
          goto LABEL_196;
        }

        if ((*(v32[34] + 224 * v40 + 185) & 1) == 0)
        {
          *a4 = ++v34;
        }
      }

      ++v31;
      v36 += 48;
    }

    while (v31 != 3);
    v41 = 1;
LABEL_56:
    v49 = *a4;
    v50 = *a5;
    if (*a5 >= 1)
    {
      v51 = 0;
      v52 = ((*this)[34] + 185);
      do
      {
        v53 = *v52;
        v52 += 224;
        if ((v53 & 1) == 0)
        {
          --*a4;
          --*a6;
          --*a7;
          v50 = *a5;
        }

        ++v51;
      }

      while (v51 < v50);
    }

    if (a9)
    {
      if (v50 < 1)
      {
        v55 = 0;
      }

      else
      {
        v54 = 0;
        v55 = 0;
        v56 = ((*this)[34] + 185);
        do
        {
          v57 = *v56;
          v56 += 224;
          if (v57 == 1)
          {
            a9[v55++] = v54;
            v50 = *a5;
          }

          ++v54;
        }

        while (v54 < v50);
      }

      if (v55 != *a7)
      {
        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
        (*(v104 + 16))(&v104, "Assert ");
        (*(v104 + 16))(&v104, "k == num_block_outputs");
        (*(v104 + 16))(&v104, " FAILED");
        kdu_error::~kdu_error(&v104);
      }
    }

    if (v37 | v43)
    {
      v58 = *a5;
      if (*a5 >= 1)
      {
        v59 = 0;
        v60 = 0;
        v61 = ((*this)[34] + 185);
        v62 = 20;
        v63 = 96;
        while (1)
        {
          v64 = *v61;
          v61 += 224;
          if (v64 == 1)
          {
            break;
          }

LABEL_86:
          ++v59;
          v62 += 48;
          v63 += 104;
          if (v59 >= v58)
          {
            goto LABEL_89;
          }
        }

        if (v20 == 1)
        {
          v65 = (*(v19 + 312) + v63);
        }

        else
        {
          v65 = (*(v19 + 320) + 48 * *(*(v19 + 320) + v62) + 8);
        }

        v66 = *v65;
        if (*(v66 + 20))
        {
          v67 = 0;
          if (!v43)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v67 = 1 << (*(v66 + 16) - 1);
          if (!v43)
          {
LABEL_83:
            if (v37)
            {
              *(v37 + 4 * v60) = v67;
            }

            ++v60;
            v58 = *a5;
            goto LABEL_86;
          }
        }

        *(v43 + 4 * v60) = v67;
        goto LABEL_83;
      }

      v60 = 0;
LABEL_89:
      if (v60 != *a7)
      {
        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
        (*(v104 + 16))(&v104, "Assert ");
        (*(v104 + 16))(&v104, "k == num_block_outputs");
        (*(v104 + 16))(&v104, " FAILED");
        kdu_error::~kdu_error(&v104);
      }
    }

    if (!(a8 | a12))
    {
      return 1;
    }

    if (v20 != 1)
    {
      v69 = v41 ^ 1;
      if (!a12)
      {
        v69 = 1;
      }

      if ((v69 & 1) == 0)
      {
        *a12 = 0x100000000;
        a12[2] = 2;
      }

      if (v41)
      {
        v70 = 3;
      }

      else
      {
        v70 = 0;
      }

      v71 = *a5;
      if (*a5 < 1)
      {
        v73 = 0;
      }

      else
      {
        v72 = 0;
        v73 = 0;
        v74 = ((*this)[34] + 185);
        v75 = 20;
        do
        {
          v76 = *v74;
          v74 += 224;
          if (v76 == 1)
          {
            v77 = *(*(v19 + 320) + v75);
            if ((v41 & (v77 < 3)) != 0)
            {
              v78 = *(*(v19 + 320) + v75);
            }

            else
            {
              v78 = v70;
            }

            if (a12)
            {
              a12[v78] = v77;
            }

            if (a8)
            {
              *(a8 + 4 * v73) = v78;
            }

            v70 += !(v41 & (v77 < 3));
            ++v73;
            v71 = *a5;
          }

          ++v72;
          v75 += 48;
        }

        while (v72 < v71);
      }

      if (v70 != *a4)
      {
        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
        (*(v104 + 16))(&v104, "Assert ");
        (*(v104 + 16))(&v104, "non_ycc_idx == num_stage_inputs");
        (*(v104 + 16))(&v104, " FAILED");
        kdu_error::~kdu_error(&v104);
      }

      if (v73 != *a6)
      {
        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
        (*(v104 + 16))(&v104, "Assert ");
        (*(v104 + 16))(&v104, "k == num_block_inputs");
        (*(v104 + 16))(&v104, " FAILED");
        kdu_error::~kdu_error(&v104);
      }

      return 1;
    }

    if (v49 < 1)
    {
      v80 = 0;
LABEL_155:
      if (v80 != *a6)
      {
        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
        (*(v104 + 16))(&v104, "Assert ");
        (*(v104 + 16))(&v104, "k == num_block_inputs");
        (*(v104 + 16))(&v104, " FAILED");
        kdu_error::~kdu_error(&v104);
      }

      return 1;
    }

    v79 = 0;
    v80 = 0;
    if (v41)
    {
      v81 = 3;
    }

    else
    {
      v81 = 0;
    }

    v82 = v107;
    v83 = HIDWORD(v107);
    v84 = v108;
    v85 = 185;
    while (1)
    {
      if (v82 == v79)
      {
        v86 = 0;
        if (a12)
        {
          goto LABEL_121;
        }

        goto LABEL_122;
      }

      if (v83 == v79)
      {
        v86 = 1;
        if (a12)
        {
          goto LABEL_121;
        }

        goto LABEL_122;
      }

      if (v84 == v79)
      {
        break;
      }

      if (*((*this)[34] + v85) == 1)
      {
        v86 = v81++;
        if (!a12)
        {
          goto LABEL_122;
        }

LABEL_121:
        a12[v86] = v79;
LABEL_122:
        if (a8)
        {
          *(a8 + 4 * v80) = v86;
        }

        ++v80;
      }

      ++v79;
      v85 += 224;
      if (v49 == v79)
      {
        goto LABEL_155;
      }
    }

    v86 = 2;
    if (a12)
    {
      goto LABEL_121;
    }

    goto LABEL_122;
  }

  if (a2 >= 1)
  {
    do
    {
      v22 = a2;
      v21 = *(v21 + 56);
      --a2;
    }

    while (v22 >= 2 && v21);
    if (!v21)
    {
      return 0;
    }
  }

  *a4 = *(v21 + 4);
  *a5 = *(v21 + 20);
  if (a12)
  {
    if (a2)
    {
      v106 = 0;
      v104 = 0u;
      v105 = 0u;
      kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
      (*(v104 + 16))(&v104, "Assert ");
      (*(v104 + 16))(&v104, "stage_idx == 0");
      (*(v104 + 16))(&v104, " FAILED");
      kdu_error::~kdu_error(&v104);
    }

    v23 = *v21;
    if (*v21 < 1)
    {
      v25 = 0;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      do
      {
        if (v25 >= *(v21 + 4))
        {
          break;
        }

        v26 = *(*(v21 + 8) + 4 * v24);
        if ((v26 & 0x80000000) == 0)
        {
          if (v26 != v25)
          {
            v106 = 0;
            v104 = 0u;
            v105 = 0u;
            kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
            (*(v104 + 16))(&v104, "Assert ");
            (*(v104 + 16))(&v104, "stage->input_required_indices[n] == m");
            (*(v104 + 16))(&v104, " FAILED");
            kdu_error::~kdu_error(&v104);
          }

          a12[v25++] = v24;
          v23 = *v21;
        }

        ++v24;
      }

      while (v24 < v23);
    }

    if (v25 != *(v21 + 4))
    {
      v106 = 0;
      v104 = 0u;
      v105 = 0u;
      kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
      (*(v104 + 16))(&v104, "Assert ");
      (*(v104 + 16))(&v104, "m == stage->num_required_inputs");
      (*(v104 + 16))(&v104, " FAILED");
      kdu_error::~kdu_error(&v104);
    }
  }

  v45 = *(v21 + 32);
  if (v45 <= a3)
  {
    return 0;
  }

  v46 = *(v21 + 40);
  if (v45 >= 1)
  {
    v47 = 0;
    v48 = a8;
    do
    {
      if (*(v46 + 36) >= 1)
      {
        if (!v16)
        {
          goto LABEL_137;
        }

        --v16;
      }

      ++v47;
      v46 += 152;
    }

    while (v45 != v47);
    return 0;
  }

  v47 = 0;
  v48 = a8;
LABEL_137:
  v87 = a11;
  if (v47 == v45)
  {
    return 0;
  }

  *a6 = *(v46 + 12);
  *a7 = *(v46 + 36);
  if (v48)
  {
    v88 = *(v46 + 8);
    if (v88 < 1)
    {
      v90 = 0;
    }

    else
    {
      v89 = 0;
      v90 = 0;
      do
      {
        if (v90 >= *(v46 + 12))
        {
          break;
        }

        if (*(*(v46 + 24) + v89) == 1)
        {
          v91 = *(*(v21 + 8) + 4 * *(*(v46 + 16) + 4 * v89));
          if (v91 < 0)
          {
            v106 = 0;
            v104 = 0u;
            v105 = 0u;
            kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
            (*(v104 + 16))(&v104, "Assert ");
            (*(v104 + 16))(&v104, "stage->input_required_indices[idx] >= 0");
            (*(v104 + 16))(&v104, " FAILED");
            kdu_error::~kdu_error(&v104);
          }

          *(v48 + 4 * v90++) = v91;
          v88 = *(v46 + 8);
        }

        ++v89;
      }

      while (v89 < v88);
    }

    v30 = v90 == *(v46 + 12);
    v87 = a11;
    if (!v30)
    {
      v106 = 0;
      v104 = 0u;
      v105 = 0u;
      kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
      (*(v104 + 16))(&v104, "Assert ");
      (*(v104 + 16))(&v104, "m == block->num_required_inputs");
      (*(v104 + 16))(&v104, " FAILED");
      kdu_error::~kdu_error(&v104);
    }
  }

  if (a9)
  {
    v92 = *(v46 + 32);
    if (v92 < 1)
    {
      v94 = 0;
    }

    else
    {
      v93 = 0;
      v94 = 0;
      do
      {
        if (v94 >= *(v46 + 36))
        {
          break;
        }

        v95 = *(v21 + 24) + 48 * *(*(v46 + 40) + 4 * v93);
        if (*(v95 + 40) == 1)
        {
          a9[v94++] = *(v95 + 16);
          v92 = *(v46 + 32);
        }

        ++v93;
      }

      while (v93 < v92);
    }

    if (v94 != *(v46 + 36))
    {
      v106 = 0;
      v104 = 0u;
      v105 = 0u;
      kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
      (*(v104 + 16))(&v104, "Assert ");
      (*(v104 + 16))(&v104, "m == block->num_apparent_outputs");
      (*(v104 + 16))(&v104, " FAILED");
      kdu_error::~kdu_error(&v104);
    }
  }

  if (*(v46 + 64) && !*(v46 + 80))
  {
    if (a10 | v87)
    {
      v98 = *(v46 + 32);
      if (v98 < 1)
      {
        v100 = 0;
      }

      else
      {
        v99 = 0;
        v100 = 0;
        do
        {
          if (v100 >= *(v46 + 36))
          {
            break;
          }

          if (*(*(v21 + 24) + 48 * *(*(v46 + 40) + 4 * v99) + 40) == 1)
          {
            v101 = v18 != 0;
            LODWORD(v104) = 0;
            kdu_params::get(*(v46 + 64), "Mvector_coeffs", v99, 0, &v104, 1, 1, 1);
            v18 = a10;
            if (v101)
            {
              *(a10 + 4 * v100) = v104;
            }

            if (a11)
            {
              a11[v100] = vcvtmd_s64_f64(*&v104 + 0.5);
            }

            ++v100;
            v98 = *(v46 + 32);
          }

          ++v99;
        }

        while (v99 < v98);
      }

      if (v100 != *(v46 + 36))
      {
        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        kdu_error::kdu_error(&v104, "Kakadu Core Error:\n");
        (*(v104 + 16))(&v104, "Assert ");
        (*(v104 + 16))(&v104, "m == block->num_apparent_outputs");
        (*(v104 + 16))(&v104, " FAILED");
        kdu_error::~kdu_error(&v104);
      }
    }

    return 1;
  }

  if (a10)
  {
    v96 = *(v46 + 36);
    if (v96 >= 1)
    {
      bzero(a10, 4 * v96);
    }
  }

  if (!v87 || *(v46 + 36) < 1)
  {
    return 1;
  }

  v97 = 0;
  result = 1;
  do
  {
    *(v87 + 4 * v97++) = 0;
  }

  while (v97 < *(v46 + 36));
  return result;
}

uint64_t kdu_tile::get_mct_matrix_info(kdu_tile *this, int a2, int a3, float *a4)
{
  if (*(**this + 184))
  {
    return 0;
  }

  v6 = *(*this + 256);
  if (a2 >= 1 && v6)
  {
    do
    {
      v6 = *(v6 + 56);
      if (a2 < 2)
      {
        break;
      }

      --a2;
    }

    while (v6);
  }

  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 32);
  if (v7 <= a3)
  {
    return 0;
  }

  v8 = *(v6 + 40);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*(v8 + 36) >= 1)
      {
        if (!a3)
        {
          goto LABEL_18;
        }

        --a3;
      }

      v8 += 152;
    }

    return 0;
  }

  i = 0;
LABEL_18:
  if (i == v7 || !*(v8 + 72) || (*(v8 + 57) & 1) != 0 || (*(v8 + 56) & 1) != 0)
  {
    return 0;
  }

  if (a4)
  {
    v10 = *(v8 + 32);
    if (v10 < 1)
    {
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = *(v8 + 8);
        if (*(*(v6 + 24) + 48 * *(*(v8 + 40) + 4 * v11) + 40) == 1)
        {
          if (v14 >= 1)
          {
            for (j = 0; j < v14; ++j)
            {
              if (*(*(v8 + 24) + j) == 1)
              {
                LODWORD(v16[0]) = 0;
                kdu_params::get(*(v8 + 72), "Mmatrix_coeffs", v13 + j, 0, v16, 1, 1, 1);
                a4[v12++] = *v16;
                v14 = *(v8 + 8);
              }
            }

            v10 = *(v8 + 32);
            v13 += j;
          }
        }

        else
        {
          v13 += v14;
        }

        ++v11;
      }

      while (v11 < v10);
    }

    if (v12 != *(v8 + 12) * *(v8 + 36))
    {
      v17 = 0;
      memset(v16, 0, sizeof(v16));
      kdu_error::kdu_error(v16, "Kakadu Core Error:\n");
      (*(*&v16[0] + 16))(v16, "Assert ");
      (*(*&v16[0] + 16))(v16, "c_out==(block->num_apparent_outputs*block->num_required_inputs)");
      (*(*&v16[0] + 16))(v16, " FAILED");
      kdu_error::~kdu_error(v16);
    }
  }

  return 1;
}

uint64_t kdu_tile::get_mct_rxform_info(kdu_tile *this, int a2, int a3, int *a4, int *a5)
{
  if (*(**this + 184))
  {
    return 0;
  }

  v8 = *(*this + 256);
  if (a2 >= 1 && v8)
  {
    do
    {
      v8 = *(v8 + 56);
      if (a2 < 2)
      {
        break;
      }

      --a2;
    }

    while (v8);
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 32);
  if (v9 <= a3)
  {
    return 0;
  }

  v10 = *(v8 + 40);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*(v10 + 36) >= 1)
      {
        if (!a3)
        {
          goto LABEL_17;
        }

        --a3;
      }

      v10 += 152;
    }

    return 0;
  }

  i = 0;
LABEL_17:
  if (i == v9 || !*(v10 + 72) || (*(v10 + 57) & 1) != 0 || *(v10 + 56) != 1)
  {
    return 0;
  }

  if (*(v10 + 12) != *(v10 + 8))
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    kdu_error::kdu_error(&v17, "Kakadu Core Error:\n");
    (*(v17 + 16))(&v17, "Assert ");
    (*(v17 + 16))(&v17, "block->num_required_inputs == block->num_inputs");
    (*(v17 + 16))(&v17, " FAILED");
    kdu_error::~kdu_error(&v17);
  }

  if (a4)
  {
    v12 = (*(v10 + 12) + *(v10 + 12) * *(v10 + 12));
    if (v12 >= 1)
    {
      for (j = 0; j != v12; ++j)
      {
        LODWORD(v17) = 0;
        kdu_params::get(*(v10 + 72), "Mmatrix_coeffs", j, 0, &v17, 1, 1, 1);
        a4[j] = vcvtmd_s64_f64(*&v17 + 0.5);
      }
    }
  }

  if (a5)
  {
    v14 = *(v10 + 32);
    if (v14 < 1)
    {
      v16 = 0;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      do
      {
        if (v16 >= *(v10 + 36))
        {
          break;
        }

        if (*(*(v8 + 24) + 48 * *(*(v10 + 40) + 4 * v15) + 40) == 1)
        {
          a5[v16++] = v15;
          v14 = *(v10 + 32);
        }

        ++v15;
      }

      while (v15 < v14);
    }

    if (v16 != *(v10 + 36))
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      kdu_error::kdu_error(&v17, "Kakadu Core Error:\n");
      (*(v17 + 16))(&v17, "Assert ");
      (*(v17 + 16))(&v17, "m == block->num_apparent_outputs");
      (*(v17 + 16))(&v17, " FAILED");
      kdu_error::~kdu_error(&v17);
    }
  }

  return 1;
}

uint64_t kdu_tile::get_mct_dependency_info(kdu_tile *this, int a2, int a3, BOOL *a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, int *a9)
{
  if (*(**this + 184))
  {
    return 0;
  }

  v14 = *(*this + 256);
  if (a2 >= 1 && v14)
  {
    do
    {
      v14 = *(v14 + 56);
      if (a2 < 2)
      {
        break;
      }

      --a2;
    }

    while (v14);
  }

  if (!v14)
  {
    return 0;
  }

  v15 = *(v14 + 32);
  if (v15 <= a3)
  {
    return 0;
  }

  v16 = *(v14 + 40);
  if (v15 >= 1)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*(v16 + 36) >= 1)
      {
        if (!a3)
        {
          goto LABEL_17;
        }

        --a3;
      }

      v16 += 152;
    }

    return 0;
  }

  i = 0;
LABEL_17:
  if (i == v15 || !*(v16 + 80) || (*(v16 + 57) & 1) != 0)
  {
    return 0;
  }

  v18 = *(v16 + 56);
  *a4 = v18;
  if (v18 == 1)
  {
    if (a5 | a6)
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      kdu_error::kdu_error(&v30, "Kakadu Core Error:\n");
      (*(v30 + 16))(&v30, "Assert ");
      (*(v30 + 16))(&v30, "(irrev_coefficients == NULL) && (irrev_offsets == NULL)");
      (*(v30 + 16))(&v30, " FAILED");
      kdu_error::~kdu_error(&v30);
    }

    if (a7)
    {
      v19 = *(v16 + 12) + *(v16 + 12) * *(v16 + 12);
      if (v19 >= 4)
      {
        v20 = 0;
        v21 = (v19 >> 1) - 1;
        do
        {
          LODWORD(v30) = 0;
          kdu_params::get(*(v16 + 80), "Mtriang_coeffs", v20, 0, &v30, 1, 1, 1);
          *(a7 + 4 * v20++) = vcvtmd_s64_f64(*&v30 + 0.5);
        }

        while (v21 != v20);
      }
    }

    if (a8 && *(v16 + 12) >= 1)
    {
      v22 = 0;
      do
      {
        LODWORD(v30) = 0;
        kdu_params::get(*(v16 + 64), "Mvector_coeffs", v22, 0, &v30, 1, 1, 1);
        *(a8 + 4 * v22++) = vcvtmd_s64_f64(*&v30 + 0.5);
      }

      while (v22 < *(v16 + 12));
    }
  }

  else
  {
    if (a7 | a8)
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      kdu_error::kdu_error(&v30, "Kakadu Core Error:\n");
      (*(v30 + 16))(&v30, "Assert ");
      (*(v30 + 16))(&v30, "(rev_coefficients == NULL) && (rev_offsets == NULL)");
      (*(v30 + 16))(&v30, " FAILED");
      kdu_error::~kdu_error(&v30);
    }

    if (a5)
    {
      v23 = (*(v16 + 12) - 1) * *(v16 + 12);
      if (v23 >= 2)
      {
        v24 = 0;
        v25 = v23 >> 1;
        do
        {
          LODWORD(v30) = 0;
          kdu_params::get(*(v16 + 80), "Mtriang_coeffs", v24, 0, &v30, 1, 1, 1);
          *(a5 + 4 * v24++) = v30;
        }

        while (v25 != v24);
      }
    }

    if (a6 && *(v16 + 12) >= 1)
    {
      v26 = 0;
      do
      {
        LODWORD(v30) = 0;
        kdu_params::get(*(v16 + 64), "Mvector_coeffs", v26, 0, &v30, 1, 1, 1);
        *(a6 + 4 * v26++) = v30;
      }

      while (v26 < *(v16 + 12));
    }
  }

  if (a9)
  {
    v27 = *(v16 + 32);
    if (v27 < 1)
    {
      v29 = 0;
    }

    else
    {
      v28 = 0;
      v29 = 0;
      do
      {
        if (v29 >= *(v16 + 36))
        {
          break;
        }

        if (*(*(v14 + 24) + 48 * *(*(v16 + 40) + 4 * v28) + 40) == 1)
        {
          a9[v29++] = v28;
          v27 = *(v16 + 32);
        }

        ++v28;
      }

      while (v28 < v27);
    }

    if (v29 != *(v16 + 36))
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      kdu_error::kdu_error(&v30, "Kakadu Core Error:\n");
      (*(v30 + 16))(&v30, "Assert ");
      (*(v30 + 16))(&v30, "m == block->num_apparent_outputs");
      (*(v30 + 16))(&v30, " FAILED");
      kdu_error::~kdu_error(&v30);
    }
  }

  return 1;
}

uint64_t kdu_tile::get_mct_dwt_info(kdu_tile *this, int a2, int a3, BOOL *a4, int *a5, int *a6, int *a7, int *a8, BOOL *a9, BOOL *a10, const float **a11, int *a12, int *a13)
{
  if (*(**this + 184))
  {
    return 0;
  }

  v14 = *(*this + 256);
  if (a2 >= 1 && v14)
  {
    do
    {
      v14 = *(v14 + 56);
      if (a2 < 2)
      {
        break;
      }

      --a2;
    }

    while (v14);
  }

  if (!v14)
  {
    return 0;
  }

  v15 = *(v14 + 32);
  if (v15 <= a3)
  {
    return 0;
  }

  v16 = *(v14 + 40);
  if (v15 >= 1)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*(v16 + 36) >= 1)
      {
        if (!a3)
        {
          goto LABEL_18;
        }

        --a3;
      }

      v16 += 152;
    }

    return 0;
  }

  i = 0;
LABEL_18:
  if (i == v15)
  {
    return 0;
  }

  if (!*(v16 + 104))
  {
    return 0;
  }

  v18 = *(v16 + 92);
  if (v18 < 1 || (*(v16 + 57) & 1) != 0)
  {
    return 0;
  }

  *a4 = *(v16 + 56);
  *a5 = v18;
  v19 = *(v16 + 96);
  *a6 = v19;
  *a7 = *(v16 + 8) + v19;
  *a8 = *(v16 + 88);
  *a9 = *(v16 + 100);
  *a10 = *(v16 + 101);
  *a11 = *(v16 + 112);
  if (a12)
  {
    v20 = *(v16 + 8);
    if (v20 < 1)
    {
      v22 = 0;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      do
      {
        if (v22 >= *(v16 + 12))
        {
          break;
        }

        if (*(*(v16 + 24) + v21) == 1)
        {
          a12[v22++] = v21;
          v20 = *(v16 + 8);
        }

        ++v21;
      }

      while (v21 < v20);
    }

    if (v22 != *(v16 + 12))
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      kdu_error::kdu_error(&v26, "Kakadu Core Error:\n");
      (*(v26 + 16))(&v26, "Assert ");
      (*(v26 + 16))(&v26, "m == block->num_required_inputs");
      (*(v26 + 16))(&v26, " FAILED");
      kdu_error::~kdu_error(&v26);
    }
  }

  if (a13)
  {
    v23 = *(v16 + 32);
    if (v23 < 1)
    {
      v25 = 0;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      do
      {
        if (v25 >= *(v16 + 36))
        {
          break;
        }

        if (*(*(v14 + 24) + 48 * *(*(v16 + 40) + 4 * v24) + 40) == 1)
        {
          a13[v25++] = v24;
          v23 = *(v16 + 32);
        }

        ++v24;
      }

      while (v24 < v23);
    }

    if (v25 != *(v16 + 36))
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      kdu_error::kdu_error(&v26, "Kakadu Core Error:\n");
      (*(v26 + 16))(&v26, "Assert ");
      (*(v26 + 16))(&v26, "m == block->num_apparent_outputs");
      (*(v26 + 16))(&v26, " FAILED");
      kdu_error::~kdu_error(&v26);
    }
  }

  return *(v16 + 104);
}

uint64_t kdu_tile::access_component(uint64_t **this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = **this;
  if (*(v3 + 172) <= a2)
  {
    return 0;
  }

  v4 = -991146299 * ((*(*(v3 + 312) + 104 * a2 + 96) - *(v3 + 312)) >> 3);
  if (v4 < 0 || *(v2 + 47) <= v4)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    kdu_error::kdu_error(v7, "Kakadu Core Error:\n");
    (*(*&v7[0] + 16))(v7, "Assert ");
    (*(*&v7[0] + 16))(v7, "(true_idx >= 0) && (true_idx < state->num_components)");
    (*(*&v7[0] + 16))(v7, " FAILED");
    kdu_error::~kdu_error(v7);
  }

  v5 = v2[34] + 224 * v4;
  if (*(v5 + 184))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void kd_tile_comp::~kd_tile_comp(kd_tile_comp *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C80451B5BE8);
  }

  v3 = *(this + 13);
  if (v3 && v3 != *(this + 12))
  {
    MEMORY[0x186602830](v3, 0x1000C80451B5BE8);
  }

  v4 = *(this + 14);
  if (v4)
  {
    MEMORY[0x186602830](v4, 0x1000C8052888210);
  }

  v5 = *(this + 15);
  if (v5 && v5 != *(this + 14))
  {
    MEMORY[0x186602830](v5, 0x1000C8052888210);
  }

  v6 = *(this + 22);
  if (v6)
  {
    v7 = v6 - 16;
    v8 = *(v6 - 8);
    if (v8)
    {
      v9 = (v6 + 704 * v8 - 704);
      v10 = -704 * v8;
      do
      {
        kd_resolution::~kd_resolution(v9);
        v9 = (v11 - 704);
        v10 += 704;
      }

      while (v10);
    }

    MEMORY[0x186602830](v7, 0x10A0C80EE9AF17DLL);
  }
}

uint64_t kdu_tile_comp::get_bit_depth(kdu_tile_comp *this, int a2)
{
  v2 = *this;
  result = *(*(*this + 16) + 16);
  if (a2)
  {
    return (*(v2 + 160) + result);
  }

  return result;
}

uint64_t kdu_tile_comp::access_resolution(uint64_t **this, int a2)
{
  if (a2 < 0 || (v2 = *this, *(*this + 18) < a2))
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    kdu_error::kdu_error(&v6, "Kakadu Core Error:\n");
    (*(v6 + 16))(&v6, "Attempting to access a non-existent resolution level within some tile-component.  Problem almost certainly caused by trying to discard more resolution levels than the number of DWT levels used to compress a tile-component.");
    kdu_error::~kdu_error(&v6);
  }

  v3 = v2[22] + 704 * a2;
  if ((*(v3 + 221) & 1) == 0)
  {
    v4 = *v2;
    if ((*(v4 + 410) & 1) != 0 || *(v4 + 411) == 1)
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
      kdu_error::kdu_error(&v6, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(&v6);
    }
  }

  return v3;
}

uint64_t create_child_node(_DWORD *a1, unsigned int a2, char a3, uint64_t a4, _DWORD *a5, uint64_t a6, _DWORD *a7, unsigned int a8, int a9, unsigned int a10, char a11, char a12, int a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17)
{
  if ((a9 - 1) >= 3)
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    kdu_error::kdu_error(&v45, "Kakadu Core Error:\n");
    (*(v45 + 16))();
    (*(v45 + 16))(&v45, "(sub_level >= 1) && (sub_level <= 3)");
    (*(v45 + 16))(&v45, " FAILED");
    kdu_error::~kdu_error(&v45);
  }

  if (a9 == 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = a8 >> 2;
  }

  v18 = a8 & 3;
  if ((a8 & 3) != 0)
  {
    v19 = (*a5)++;
    v20 = a4 + 136 * v19;
    v21 = v20;
  }

  else
  {
    v20 = 0;
    v22 = (*a7)++;
    v21 = a6 + 144 * v22;
  }

  *v21 = a1;
  if (a3)
  {
    *(v21 + 48) = a2 & 1;
    if (a13 >= 3)
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      kdu_error::kdu_error(&v45, "Kakadu Core Error:\n");
      (*(v45 + 16))();
      (*(v45 + 16))(&v45, "num_hor_extra_stages < 3");
      (*(v45 + 16))(&v45, " FAILED");
      kdu_error::~kdu_error(&v45);
    }

    v42 = a13 + 1;
    *(a14 + a13) = (a2 & 1) != 0;
    if (a2)
    {
      v23 = 1;
    }

    else
    {
      v23 = a11;
    }

    if ((a2 & 1) != 0 && a11)
    {
      *(*(v21 + 8) + 221) = 0;
      v39 = 1;
    }

    else
    {
      v39 = v23;
    }
  }

  else
  {
    *(v21 + 48) = 2;
    v39 = a11;
    if (a2)
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      kdu_error::kdu_error(&v45, "Kakadu Core Error:\n");
      (*(v45 + 16))();
      (*(v45 + 16))(&v45, "!(child_idx & 1)");
      (*(v45 + 16))(&v45, " FAILED");
      kdu_error::~kdu_error(&v45);
    }

    v42 = a13;
  }

  v24 = a12;
  if ((a3 & 2) != 0)
  {
    v26 = (a2 >> 1) & 1;
    *(v21 + 49) = (a2 & 2) != 0;
    if (a15 >= 3)
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      kdu_error::kdu_error(&v45, "Kakadu Core Error:\n");
      (*(v45 + 16))();
      (*(v45 + 16))(&v45, "num_vert_extra_stages < 3");
      (*(v45 + 16))(&v45, " FAILED");
      kdu_error::~kdu_error(&v45);
    }

    v25 = a15 + 1;
    *(a16 + a15) = v26 != 0;
    if (v26)
    {
      v27 = 1;
    }

    else
    {
      v27 = a12;
    }

    if (v26 && a12)
    {
      *(*(v21 + 8) + 221) = 0;
      v24 = 1;
    }

    else
    {
      v24 = v27;
    }
  }

  else
  {
    *(v21 + 49) = 2;
    if ((a2 & 2) != 0)
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      kdu_error::kdu_error(&v45, "Kakadu Core Error:\n");
      (*(v45 + 16))();
      (*(v45 + 16))(&v45, "!(child_idx & 2)");
      (*(v45 + 16))(&v45, " FAILED");
      kdu_error::~kdu_error(&v45);
    }

    v25 = a15;
  }

  if (v20)
  {
    if ((a8 & 3) != 0)
    {
      if (a8)
      {
        v28 = *(*(*(v21 + 8) + 8) + 88);
      }

      else
      {
        LOBYTE(v28) = 0;
      }

      *(v20 + 120) = v28;
      if ((a8 & 2) != 0)
      {
        v29 = *(*(*(v21 + 8) + 8) + 88);
      }

      else
      {
        LOBYTE(v29) = 0;
      }

      *(v20 + 121) = v29;
      operator new[]();
    }

    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    kdu_error::kdu_error(&v45, "Kakadu Core Error:\n");
    (*(v45 + 16))();
    (*(v45 + 16))(&v45, "next_branch_mask != 0");
    (*(v45 + 16))(&v45, " FAILED");
    kdu_error::~kdu_error(&v45);
  }

  LODWORD(v30) = a1[4];
  LODWORD(v31) = a1[5];
  v32 = *(v21 + 48);
  v33 = *(v21 + 49);
  v34 = a1[7] + v31;
  v35 = a1[6] + v30;
  if (v32 <= 1)
  {
    v31 = ((v31 - v32 + 1) >> 1);
  }

  else
  {
    v31 = v31;
  }

  if (v32 <= 1)
  {
    v34 = (v34 - v32 + 1) >> 1;
  }

  if (v33 <= 1)
  {
    v30 = ((v30 - v33 + 1) >> 1);
  }

  else
  {
    v30 = v30;
  }

  if (v33 <= 1)
  {
    v35 = (v35 - v33 + 1) >> 1;
  }

  *(v21 + 16) = v30 | (v31 << 32);
  *(v21 + 24) = (v35 - v30) | ((v34 - v31) << 32);
  if ((a8 & 3) != 0)
  {
    for (i = 0; i != 4; ++i)
    {
      if (i == (v18 & i))
      {
        HIDWORD(v38) = v42;
        BYTE1(v38) = v24;
        LOBYTE(v38) = v39;
        *(8 * i + 0x58) = create_child_node(0, i, v18, a4, a5, a6, a7, v17 & 3, __PAIR64__(a10, a9 + 1), v38, a14, v25, a16, a17);
        v17 >>= 2;
      }
    }
  }

  else
  {
    if ((*(v21 + 50) & 1) == 0)
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      kdu_error::kdu_error(&v45, "Kakadu Core Error:\n");
      (*(v45 + 16))();
      (*(v45 + 16))(&v45, "result->is_leaf");
      (*(v45 + 16))(&v45, " FAILED");
      kdu_error::~kdu_error(&v45);
    }

    *(v21 + 54) = a10;
  }

  return v21;
}

uint64_t kdu_resolution::which(kdu_resolution *this)
{
  if (!*this)
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    kdu_error::kdu_error(v2, "Kakadu Core Error:\n");
    (*(*&v2[0] + 16))(v2, "Assert ");
    (*(*&v2[0] + 16))(v2, "state != NULL");
    (*(*&v2[0] + 16))(v2, " FAILED");
    kdu_error::~kdu_error(v2);
  }

  return *(*this + 24);
}

int32x4_t *kdu_resolution::get_dims(int32x4_t **this, int32x4_t *a2)
{
  if (!*this)
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    kdu_error::kdu_error(&v4, "Kakadu Core Error:\n");
    (*(v4 + 16))(&v4, "Assert ");
    (*(v4 + 16))(&v4, "state != NULL");
    (*(v4 + 16))(&v4, " FAILED");
    kdu_error::~kdu_error(&v4);
  }

  *a2 = (*this)[4];
  v2 = (*this)->i64[0];
  if (!v2)
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    kdu_error::kdu_error(&v4, "Kakadu Core Error:\n");
    (*(v4 + 16))(&v4, "Assert ");
    (*(v4 + 16))(&v4, "state->codestream != NULL");
    (*(v4 + 16))(&v4, " FAILED");
    kdu_error::~kdu_error(&v4);
  }

  return kdu_dims::to_apparent(a2, v2[409], v2[410], v2[411]);
}

int32x4_t *kdu_dims::to_apparent(int32x4_t *this, int a2, int a3, int a4)
{
  if (a2)
  {
    *this = vrev64q_s32(*this);
    if (!a4)
    {
LABEL_3:
      if (!a3)
      {
        return this;
      }

LABEL_7:
      this->i32[0] = 1 - (this->i32[0] + this->i32[2]);
      return this;
    }
  }

  else if (!a4)
  {
    goto LABEL_3;
  }

  this->i32[1] = 1 - (this->i32[1] + this->i32[3]);
  if (a3)
  {
    goto LABEL_7;
  }

  return this;
}

uint64_t kd_precinct::load_required_packets(uint64_t this)
{
  if (*(this + 18) == 1)
  {
    v1 = this;
    v2 = *(this + 40);
    if (v2)
    {
      if (!*(this + 32))
      {
        if (*(this + 17) != 1 || *(this + 28) < *(this + 24))
        {
          kd_precinct::load_required_packets();
        }

        this = kd_compressed_input::seek(*(**this + 8), v2);
        do
        {
          if (*(v1 + 32) >= *(v1 + 24))
          {
            break;
          }

          this = kd_precinct::read_packet(v1);
        }

        while ((this & 1) != 0);
      }
    }
  }

  return this;
}

uint64_t kdu_resolution::access_node(kdu_resolution *this)
{
  if (!*this)
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    kdu_error::kdu_error(v2, "Kakadu Core Error:\n");
    (*(*&v2[0] + 16))(v2, "Assert ");
    (*(*&v2[0] + 16))(v2, "state != NULL");
    (*(*&v2[0] + 16))(v2, " FAILED");
    kdu_error::~kdu_error(v2);
  }

  return *this + 32;
}

uint64_t kdu_resolution::access_subband(kdu_resolution *this, int a2)
{
  v2 = *this;
  v3 = a2 - (*(*this + 24) != 0);
  if (v3 < 0 || v3 >= *(v2 + 222))
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    kdu_error::kdu_error(v6, "Kakadu Core Error:\n");
    (*(*&v6[0] + 16))(v6, "Assert ");
    (*(*&v6[0] + 16))(v6, "(band_idx >= 0) && (band_idx < state->num_subbands)");
    (*(*&v6[0] + 16))(v6, " FAILED");
    kdu_error::~kdu_error(v6);
  }

  v4 = *(v2 + 240);
  result = v4 + 144 * v3;
  if (*(*v2 + 409) == 1)
  {
    return v4 + 144 * *(result + 56);
  }

  return result;
}

uint64_t kdu_node::access_child(kdu_node *this, unsigned int a2)
{
  if (a2 >= 4)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    kdu_error::kdu_error(&v10, "Kakadu Core Error:\n");
    (*(v10 + 16))(&v10, "Assert ");
    (*(v10 + 16))(&v10, "(child_idx >= 0) && (child_idx <= 3)");
    (*(v10 + 16))(&v10, " FAILED");
    kdu_error::~kdu_error(&v10);
  }

  v2 = *this;
  if (*(*this + 50))
  {
    return 0;
  }

  v4 = __rbit32(a2) >> 30;
  if (*(**(v2 + 8) + 409))
  {
    v5 = v4;
  }

  else
  {
    v5 = a2;
  }

  v3 = *(v2 + 8 * v5 + 88);
  if (v3)
  {
    v6 = *(v3 + 8);
    if (!*(v6 + 24))
    {
      v7 = v6 + 32;
      if (v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = v3 == v7;
      }

      if (!v8)
      {
        v12 = 0;
        v10 = 0u;
        v11 = 0u;
        kdu_error::kdu_error(&v10, "Kakadu Core Error:\n");
        (*(v10 + 16))(&v10, "Assert ");
        (*(v10 + 16))(&v10, "(child_idx==LL_BAND) && (result==&(result->resolution->node))");
        (*(v10 + 16))(&v10, " FAILED");
        kdu_error::~kdu_error(&v10);
      }

      v3 = *(v3 + 88);
      if ((*(v3 + 50) & 1) == 0)
      {
        v12 = 0;
        v10 = 0u;
        v11 = 0u;
        kdu_error::kdu_error(&v10, "Kakadu Core Error:\n");
        (*(v10 + 16))(&v10, "Assert ");
        (*(v10 + 16))(&v10, "result->is_leaf");
        (*(v10 + 16))(&v10, " FAILED");
        kdu_error::~kdu_error(&v10);
      }
    }
  }

  return v3;
}

uint64_t kdu_node::access_subband(kdu_node *this)
{
  if (*(*this + 50))
  {
    return *this;
  }

  else
  {
    return 0;
  }
}

int32x4_t *kdu_node::get_dims(int32x4_t **this, int32x4_t *a2)
{
  v4 = *(*this)->i64[1];
  *a2 = (*this)[2];
  result = kdu_dims::to_apparent(a2, v4[409], v4[410], v4[411]);
  if ((v4[410] & 1) != 0 || v4[411] == 1)
  {
    v6 = *this;
    if (*this == ((*this)->i64[1] + 32))
    {
      v8 = 0;
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (v4[409])
        {
          v9 = v6[3].u8[1];
        }

        else
        {
          v9 = v6[3].u8[0];
        }

        if (v4[409])
        {
          v10 = v6[3].u8[0];
        }

        else
        {
          v10 = v6[3].u8[1];
        }

        if (v9 == 1 && v4[411] == 1)
        {
          if (v8)
          {
            v14 = 0;
            v12 = 0u;
            v13 = 0u;
            kdu_error::kdu_error(&v12, "Kakadu Core Error:\n");
            (*(v12 + 16))(&v12, "Assert ");
            (*(v12 + 16))(&v12, "!offset.x");
            (*(v12 + 16))(&v12, " FAILED");
            kdu_error::~kdu_error(&v12);
          }

          v8 = 1;
        }

        if (v10 == 1 && v4[410] == 1)
        {
          if (v7)
          {
            v14 = 0;
            v12 = 0u;
            v13 = 0u;
            kdu_error::kdu_error(&v12, "Kakadu Core Error:\n");
            (*(v12 + 16))(&v12, "Assert ");
            (*(v12 + 16))(&v12, "!offset.y");
            (*(v12 + 16))(&v12, " FAILED");
            kdu_error::~kdu_error(&v12);
          }

          v7 = 1;
        }

        v6 = v6->i64[0];
      }

      while (v6 != (v6->i64[1] + 32));
    }

    v11 = a2->i32[1] - v8;
    a2->i32[0] -= v7;
    a2->i32[1] = v11;
  }

  return result;
}

uint64_t kdu_node::get_kernel_info(kdu_node *this, int *a2, float *a3, float *a4, BOOL *a5, BOOL *a6, int *a7, int *a8, int *a9, int *a10, BOOL a11)
{
  v11 = *(*(*this + 8) + 8);
  v12 = 410;
  if (!a11)
  {
    v12 = 411;
  }

  v13 = *(*v11 + v12);
  *a2 = *(v11 + 88);
  *a3 = *(v11 + 128);
  *a4 = *(v11 + 132);
  *a5 = *(v11 + 84);
  *a6 = *(v11 + 85);
  if (v13 == 1)
  {
    *a7 = -*(v11 + 140);
    *a8 = -*(v11 + 136);
    *a9 = -*(v11 + 148);
    v14 = -*(v11 + 144);
    v15 = 104;
  }

  else
  {
    *a7 = *(v11 + 136);
    *a8 = *(v11 + 140);
    *a9 = *(v11 + 144);
    v14 = *(v11 + 148);
    v15 = 96;
  }

  *a10 = v14;
  return *(v11 + v15);
}

uint64_t kdu_node::get_kernel_coefficients(kdu_node *this, int a2)
{
  v2 = *(*(*this + 8) + 8);
  v3 = 410;
  if (!a2)
  {
    v3 = 411;
  }

  v4 = 14;
  if (*(*v2 + v3))
  {
    v4 = 15;
  }

  return v2[v4];
}

uint64_t kdu_node::get_bibo_gains(kdu_node *this, int *a2, unsigned __int8 a3)
{
  v3 = *this;
  v4 = *(**(*this + 8) + 409) ^ a3;
  if (*(*this + 50) == 1)
  {
    *a2 = 0;
    v5 = *v3;
    v6 = *(*v3 + 128);
    if (v4)
    {
      v7 = *(v5 + 121);
    }

    else
    {
      v7 = *(v5 + 120);
    }

    return v6 + 4 * (v7 & 0xFE);
  }

  else if ((*(**(*this + 8) + 409) ^ a3))
  {
    *a2 = *(v3 + 121);
    return v3[16] + 4 * *(v3 + 120) + 4;
  }

  else
  {
    *a2 = *(v3 + 120);
    return v3[16];
  }
}

uint64_t kdu_subband::get_band_idx(kdu_subband *this)
{
  if (*(*(*this + 8) + 24))
  {
    return *(*this + 55) + 1;
  }

  else
  {
    return *(*this + 55);
  }
}

float kdu_subband::get_delta(kdu_subband *this)
{
  result = 0.0;
  if ((*(*(*(*this + 8) + 8) + 76) & 1) == 0)
  {
    return *(*this + 60);
  }

  return result;
}

float kdu_subband::get_msb_wmse(kdu_subband *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  result = 1.0;
  if (!*(*v2 + 8))
  {
    v4 = *(v1 + 60);
    v5 = *(v1 + 59);
    if (v5 < 0x1F)
    {
      v6 = *(v1 + 59);
    }

    else
    {
      do
      {
        v4 = v4 * 1073741820.0;
        v6 = v5 - 30;
        v7 = v5 > 0x3C;
        v5 -= 30;
      }

      while (v7);
    }

    v8 = v4 * (1 << (v6 - 1)) * (v4 * (1 << (v6 - 1))) * *(v1 + 64);
    v9 = *(v2[1] + 152);
    v7 = v9 <= 0.0;
    v10 = v8 * v9;
    if (!v7)
    {
      v8 = v10;
    }

    return v8 * *(v1 + 68) * *(v1 + 68);
  }

  return result;
}

BOOL kdu_subband::get_roi_weight(kdu_subband *this, float *a2)
{
  v2 = *(*this + 72);
  if (v2 >= 0.0)
  {
    *a2 = v2 * v2;
  }

  return v2 >= 0.0;
}

int32x4_t *kdu_subband::get_dims(int32x4_t **this, int32x4_t *a2)
{
  v4 = *(*this)->i64[1];
  *a2 = (*this)[2];
  result = kdu_dims::to_apparent(a2, v4[409], v4[410], v4[411]);
  if ((v4[410] & 1) != 0 || v4[411] == 1)
  {
    v6 = *this;
    if (*this == ((*this)->i64[1] + 32))
    {
      v8 = 0;
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (v4[409])
        {
          v9 = v6[3].u8[1];
        }

        else
        {
          v9 = v6[3].u8[0];
        }

        if (v4[409])
        {
          v10 = v6[3].u8[0];
        }

        else
        {
          v10 = v6[3].u8[1];
        }

        if (v9 == 1 && v4[411] == 1)
        {
          if (v8)
          {
            v14 = 0;
            v12 = 0u;
            v13 = 0u;
            kdu_error::kdu_error(&v12, "Kakadu Core Error:\n");
            (*(v12 + 16))(&v12, "Assert ");
            (*(v12 + 16))(&v12, "!offset.x");
            (*(v12 + 16))(&v12, " FAILED");
            kdu_error::~kdu_error(&v12);
          }

          v8 = 1;
        }

        if (v10 == 1 && v4[410] == 1)
        {
          if (v7)
          {
            v14 = 0;
            v12 = 0u;
            v13 = 0u;
            kdu_error::kdu_error(&v12, "Kakadu Core Error:\n");
            (*(v12 + 16))(&v12, "Assert ");
            (*(v12 + 16))(&v12, "!offset.y");
            (*(v12 + 16))(&v12, " FAILED");
            kdu_error::~kdu_error(&v12);
          }

          v7 = 1;
        }

        v6 = v6->i64[0];
      }

      while (v6 != (v6->i64[1] + 32));
    }

    v11 = a2->i32[1] - v8;
    a2->i32[0] -= v7;
    a2->i32[1] = v11;
  }

  return result;
}

int32x4_t *kdu_subband::get_valid_blocks(kdu_subband *this, int32x4_t *a2)
{
  v2 = **(*this + 8);
  *a2 = *(*this + 108);
  return kdu_dims::to_apparent(a2, v2[409], v2[410], v2[411]);
}

int32x2_t kdu_subband::get_block_size(uint64_t *a1, int32x2_t *a2, int32x2_t *a3)
{
  v5 = **(*a1 + 8);
  *a2 = *(*a1 + 84);
  v6 = *a1;
  v7 = **(*a1 + 8);
  v8 = *(*a1 + 108);
  v9 = *(*a1 + 116);
  v10 = v7[409];
  v11 = v7[410];
  v12 = v7[411];
  v13 = v10 == 1;
  if (v10 == 1)
  {
    v14 = *(*a1 + 112);
  }

  else
  {
    v14 = *(*a1 + 108);
  }

  if (v13)
  {
    v15 = *(*a1 + 120);
  }

  else
  {
    v8 = *(*a1 + 112);
    v15 = *(*a1 + 116);
  }

  if (!v13)
  {
    v9 = *(*a1 + 120);
  }

  v16 = 1 - (v8 + v9);
  if (v12)
  {
    v17 = v16;
  }

  else
  {
    v17 = v8;
  }

  v18 = 1 - (v14 + v15);
  if (!v11)
  {
    v18 = v14;
  }

  if (v5[411])
  {
    v17 = -v17;
  }

  if (v5[410])
  {
    v18 = -v18;
  }

  if (v5[409])
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  if (!v5[409])
  {
    v17 = v18;
  }

  v21 = *(v6 + 76);
  LODWORD(v21) = v21 + DWORD2(v21) * v17;
  DWORD1(v21) += v19 * HIDWORD(v21);
  kdu_dims::operator&=(&v21, (v6 + 32));
  *a3 = *(&v21 + 8);
  if (v5[409] == 1)
  {
    *a2 = vrev64_s32(*a2);
    result = vrev64_s32(*a3);
    *a3 = result;
  }

  return result;
}

uint64_t kdu_subband::open_block(uint64_t *a1, unint64_t a2, _DWORD *a3, uint64_t a4)
{
  v4 = HIDWORD(a2);
  v5 = *a1;
  v6 = *(*a1 + 8);
  v7 = *v6;
  if (*(*v6 + 411))
  {
    LODWORD(v4) = -HIDWORD(a2);
  }

  if (*(*v6 + 410))
  {
    v8 = -a2;
  }

  else
  {
    v8 = a2;
  }

  if (*(*v6 + 409))
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (!*(*v6 + 409))
  {
    LODWORD(v4) = v8;
  }

  v10 = v5[28];
  v11 = v4 - v5[27];
  if (v9 - v10 < 0 || v9 - v10 >= v5[30] || v11 < 0 || v11 >= v5[29])
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    kdu_error::kdu_error(&v47, "Kakadu Core Error:\n");
    (*(v47 + 16))(&v47, "Assert ");
    (*(v47 + 16))(&v47, "(block_idx.x >= 0) && (block_idx.x < state->region_indices.size.x) && (block_idx.y >= 0) && (block_idx.y < state->region_indices.size.y)");
    (*(v47 + 16))(&v47, " FAILED");
    kdu_error::~kdu_error(&v47);
  }

  v12 = *(*(v6 + 8) + 8);
  if ((*(v12 + 289) & 1) == 0)
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    kdu_error::kdu_error(&v47, "Kakadu Core Error:\n");
    (*(v47 + 16))(&v47, "Assert ");
    (*(v47 + 16))(&v47, "tile->is_open");
    (*(v47 + 16))(&v47, " FAILED");
    kdu_error::~kdu_error(&v47);
  }

  v13 = v9;
  v14 = v4;
  v15 = ((v9 >> v5[34]) - *(v6 + 188));
  v16 = ((v4 >> v5[33]) - *(v6 + 184));
  v17 = *(v6 + 196);
  v18 = (v15 + v16 * v17);
  if ((v18 & 0x80000000) != 0 || *(v6 + 192) * v17 <= v18)
  {
    return 0;
  }

  v19 = *(v6 + 232);
  v20 = *(v19 + 8 * v18);
  if (v20)
  {
    v21 = (*(v19 + 8 * v18) & 1) == 0;
  }

  else
  {
    v21 = 0;
  }

  if (v21 && (*(v20 + 20) & 1) == 0 && *(v20 + 19) != 1)
  {
    v22 = 0;
    goto LABEL_39;
  }

  v22 = a4 != 0;
  if (a4)
  {
    kdu_thread_entity::acquire_lock(a4, 0, 1);
    v19 = *(v6 + 232);
    v20 = *(v19 + 8 * v18);
  }

  if (!v20)
  {
    goto LABEL_35;
  }

  if (v20 == 3)
  {
    goto LABEL_37;
  }

  if (v20)
  {
LABEL_35:
    v24 = kd_precinct_ref::instantiate_precinct((v19 + 8 * v18), v6, (v15 << 32) | v16);
    if (v24)
    {
      v20 = v24;
      goto LABEL_39;
    }

LABEL_37:
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    kdu_error::kdu_error(&v47, "Kakadu Core Error:\n");
    (*(v47 + 16))(&v47, "You are permitted to open each code-block only once from an open tile before closing that tile.  If the codestream object is marked as persistent, you may re-open code-blocks only after re-opening their containing tiles.");
    kdu_error::~kdu_error(&v47);
  }

  if (*(v20 + 20) == 1)
  {
    kd_precinct_size_class::withdraw_from_inactive_list(*(v20 + 72), v20);
    kd_precinct::activate(v20);
LABEL_39:
    v25 = a4;
    goto LABEL_40;
  }

  v25 = a4;
  if (*(v20 + 19) == 1)
  {
    kd_precinct::activate(v20);
  }

LABEL_40:
  if (*(v7 + 8) && *(v20 + 32) < *(v20 + 24))
  {
    if (v25)
    {
      v26 = v22;
    }

    else
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      LOBYTE(v22) = 1;
      kdu_thread_entity::acquire_lock(v25, 0, 1);
    }

    if (*(v7 + 418) & 1) != 0 || (*(v12 + 328))
    {
LABEL_49:
      kd_precinct::load_required_packets(v20);
      if (!v22)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    while (1)
    {
      if (*(v20 + 28) >= *(v20 + 24))
      {
        goto LABEL_49;
      }

      if (v12 != *(v7 + 440) && (kd_tile::read_tile_part_header(v12) & 1) == 0)
      {
        if (*(v12 + 291) == 1)
        {
          v49 = 0;
          v47 = 0u;
          v48 = 0u;
          kdu_error::kdu_error(&v47, "Kakadu Core Error:\n");
          (*(v47 + 16))(&v47, "Assert ");
          (*(v47 + 16))(&v47, "!tile->closed");
          (*(v47 + 16))(&v47, " FAILED");
          kdu_error::~kdu_error(&v47);
        }

        kd_tile::finished_reading(v12);
        goto LABEL_49;
      }

      *&v45 = 0;
      v46 = 0;
      v39 = *(v12 + 96);
      if (!v39)
      {
        v49 = 0;
        v47 = 0u;
        v48 = 0u;
        kdu_error::kdu_error(&v47, "Kakadu Core Error:\n");
        (*(v47 + 16))(&v47, "Corrupt jp2 data: tile->sequencer = NULL");
        kdu_error::~kdu_error(&v47);
      }

      v40 = kd_packet_sequencer::next_in_sequence(v39, &v45, &v46);
      if (!v40)
      {
        goto LABEL_88;
      }

      v41 = *v40;
      if (*v40)
      {
        if (v41 & 1) != 0 || (*(v41 + 17))
        {
          goto LABEL_89;
        }

        if (v41 == 3)
        {
          v41 = 0;
        }

        else if (*(v41 + 20) == 1)
        {
          kd_precinct_size_class::withdraw_from_inactive_list(*(v41 + 72), v41);
          kd_precinct::activate(v41);
        }
      }

      else
      {
        v41 = kd_precinct_ref::instantiate_precinct(v40, v45, v46);
      }

      if ((kd_precinct::desequence_packet(v41) & 1) == 0)
      {
LABEL_88:
        kd_tile::read_tile_part_header(v12);
      }

LABEL_89:
      if (*(v12 + 328) == 1)
      {
        goto LABEL_49;
      }
    }
  }

  if (v22)
  {
LABEL_52:
    kdu_thread_entity::release_lock(v25, 0);
  }

LABEL_53:
  v27 = *a1;
  v45 = *(*a1 + 76);
  LODWORD(v45) = v45 + DWORD2(v45) * v14;
  DWORD1(v45) += HIDWORD(v45) * v13;
  kdu_dims::operator&=(&v45, (v27 + 16));
  if (SDWORD2(v45) * SHIDWORD(v45) <= 0)
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    kdu_error::kdu_error(&v47, "Kakadu Core Error:\n");
    (*(v47 + 16))(&v47, "Assert ");
    (*(v47 + 16))(&v47, "band_dims.area() > 0");
    (*(v47 + 16))(&v47, " FAILED");
    kdu_error::~kdu_error(&v47);
  }

  v28 = *(v20 + 48) + 32 * *(*a1 + 55);
  v29 = v13 - *(v28 + 12);
  v30 = v14 - *(v28 + 8);
  if (v29 < 0 || v30 < 0 || v29 >= *(v28 + 20) || v30 >= *(v28 + 16))
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    kdu_error::kdu_error(&v47, "Kakadu Core Error:\n");
    (*(v47 + 16))(&v47, "Assert ");
    (*(v47 + 16))(&v47, "(block_idx.x >= 0) && (block_idx.y >= 0) && (block_idx.x < pband->block_indices.size.x) && (block_idx.y < pband->block_indices.size.y)");
    (*(v47 + 16))(&v47, " FAILED");
    kdu_error::~kdu_error(&v47);
  }

  if (v25)
  {
    v23 = *(v25 + 10) + 144;
  }

  else
  {
    v23 = *(v7 + 56);
  }

  if (*(v23 + 168))
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    kdu_error::kdu_error(&v47, "Kakadu Core Error:\n");
    (*(v47 + 16))(&v47, "Assert ");
    (*(v47 + 16))(&v47, "result->precinct == NULL");
    (*(v47 + 16))(&v47, " FAILED");
    kdu_error::~kdu_error(&v47);
  }

  *(v23 + 168) = v20;
  *(v23 + 176) = *(v28 + 24) + 40 * v29 + 40 * *(v28 + 20) * v30;
  *v23 = *(&v45 + 1);
  v31 = *a1;
  v47 = v45;
  kdu_dims::operator&=(&v47, (v31 + 32));
  v32 = v47;
  v33 = DWORD1(v47);
  *(v23 + 16) = *(&v47 + 1);
  v34 = v33 - DWORD1(v45);
  *(v23 + 8) = v32 - v45;
  *(v23 + 12) = v34;
  v35 = *a1;
  *(v23 + 28) = *(*(*(*a1 + 8) + 8) + 172);
  *(v23 + 32) = *(v35 + 54);
  *(v23 + 40) = *(v35 + 59);
  *(v23 + 25) = *(v7 + 410);
  *(v23 + 24) = *(v7 + 409);
  *(v23 + 36) = *(v7 + 412);
  *(v23 + 37) = *(v7 + 414);
  v36 = *(v23 + 176);
  if (*(v7 + 8))
  {
    v37 = a3;
    if (v36 && kd_block::retrieve_data(v36, v23, *(v20 + 24)))
    {
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
      kdu_error::kdu_error(&v47, "Kakadu Core Error:\n");
      (*(v47 + 16))(&v47, "Corrupt JP2 data");
      goto LABEL_71;
    }
  }

  else
  {
    v37 = a3;
    if (*v36)
    {
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
      kdu_error::kdu_error(&v47, "Kakadu Core Error:\n");
      (*(v47 + 16))(&v47, "Attempting to open the same code-block more than once for writing!");
LABEL_71:
      kdu_error::~kdu_error(&v47);
    }
  }

  if (v37)
  {
    *v37 = *(*(*(*v20 + 8) + 8) + 304) - 1;
  }

  return v23;
}

double kdu_subband::close_block(uint64_t a1, kdu_block *a2, uint64_t a3)
{
  v4 = *(a2 + 21);
  v5 = *(a2 + 22);
  v6 = **(*a1 + 8);
  if (!v4)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    kdu_error::kdu_error(&v14, "Kakadu Core Error:\n");
    (*(v14 + 16))(&v14, "Assert ");
    (*(v14 + 16))(&v14, "precinct != NULL");
    (*(v14 + 16))(&v14, " FAILED");
    kdu_error::~kdu_error(&v14);
  }

  if (a3)
  {
    v7 = *(a3 + 80);
    if (v7 + 36 == a2)
    {
      *(a2 + 21) = 0;
      block_state = kd_thread_env::get_block_state(v7, v6, v4, v5);
      if (!*(v6 + 8))
      {
        kd_block::store_data(block_state, a2, (v7 + 8290));
        if (*(v6 + 64))
        {
          kd_compressed_stats::update_stats((v7 + 82), a2);
        }

        if (!*(v6 + 16))
        {
          kd_thread_env::flush(v7, 1);
        }
      }

      if (v7[8302] >= 6)
      {
        kd_thread_env::flush(v7, 0);
      }

      return result;
    }

LABEL_7:
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    kdu_error::kdu_error(&v14, "Kakadu Core Error:\n");
    (*(v14 + 16))(&v14, "Assert ");
    (*(v14 + 16))(&v14, "((env == NULL) && (result == cs->block)) || ((env != NULL) && (result == &(env->get_state()->block)))");
    (*(v14 + 16))(&v14, " FAILED");
    kdu_error::~kdu_error(&v14);
  }

  if (*(v6 + 56) != a2)
  {
    goto LABEL_7;
  }

  *(a2 + 21) = 0;
  if (v4[9] <= 0)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    kdu_error::kdu_error(&v14, "Kakadu Core Error:\n");
    (*(v14 + 16))(&v14, "Assert ");
    (*(v14 + 16))(&v14, "precinct->num_outstanding_blocks > 0");
    (*(v14 + 16))(&v14, " FAILED");
    kdu_error::~kdu_error(&v14);
  }

  if (*(v6 + 8))
  {
    if ((*(v6 + 417) & 1) == 0)
    {
      kd_block::cleanup(v5, *(v6 + 48));
    }

    v10 = v4[9] - 1;
    v4[9] = v10;
    if (!v10)
    {
      kd_precinct::release(v4);
    }
  }

  else
  {
    v11 = *(v6 + 64);
    if (v11)
    {
      updated = kd_compressed_stats::update_stats(v11, a2);
      kd_compressed_stats::update_quant_slope_thresholds(*(v6 + 64));
    }

    else
    {
      updated = 0;
    }

    if (*v5)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      kdu_error::kdu_error(&v14, "Kakadu Core Error:\n");
      (*(v14 + 16))(&v14, "Assert ");
      (*(v14 + 16))(&v14, "block->empty()");
      (*(v14 + 16))(&v14, " FAILED");
      kdu_error::~kdu_error(&v14);
    }

    kd_block::store_data(v5, a2, *(v6 + 48));
    v13 = v4[9] - 1;
    v4[9] = v13;
    if (updated && (*(v6 + 422) & 1) == 0)
    {
      kd_codestream::trim_compressed_data(v6);
      v13 = v4[9];
    }

    if (!v13)
    {
      *&result = kd_global_rescomp::add_ready_precinct(*(*v4 + 16), v4).n128_u64[0];
    }
  }

  return result;
}

uint64_t kd_thread_env::get_block_state(kd_thread_env *this, kd_codestream *a2, kd_precinct *a3, kd_block *a4)
{
  if (*(this + 8302) == 8)
  {
    kd_thread_env::flush(this, 1);
  }

  *(this + 16) = a2;
  result = this + 33216;
  v9 = 8;
  while (*(result + 40))
  {
    result += 56;
    if (!--v9)
    {
      return 0;
    }
  }

  ++*(this + 8302);
  *(result + 40) = a3;
  *(result + 48) = a4;
  *(*(this + 17) + 88) = 1;
  return result;
}

uint64_t kd_compressed_stats::update_stats(uint64_t a1, int *a2)
{
  v2 = *(a1 + 32) + *a2 * a2[1];
  *(a1 + 32) = v2;
  v3 = a2[12];
  if (v3 >= 1)
  {
    LODWORD(v4) = 0;
    v5 = *(a2 + 7);
    v6 = *(a2 + 8);
    v7 = a1 + 40;
    do
    {
      v8 = *v5++;
      v4 = v8 + v4;
      LODWORD(v8) = *v6++;
      v9 = v8;
      if (v8)
      {
        v10 = v9 >> 4;
        if (*(a1 + 32808) > v10)
        {
          *(a1 + 32808) = v10;
        }

        if (*(a1 + 32812) < v10)
        {
          *(a1 + 32812) = v10;
        }

        v11 = *(v7 + 8 * v10) + v4;
        LODWORD(v4) = 0;
        *(v7 + 8 * v10) = v11;
      }

      --v3;
    }

    while (v3);
  }

  if ((*(a1 + 32824) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 16);
  if (v2 <= v12)
  {
    return 0;
  }

  *(a1 + 16) = v12 + ((*(a1 + 8) + 7) >> 4);
  return 1;
}

uint64_t kd_block::cleanup(uint64_t this, kd_buf_server *a2)
{
  v3 = this;
  v4 = *this;
  for (*(this + 8) = *this; v4; *(v3 + 8) = *v3)
  {
    *v3 = *v4;
    this = kd_buf_server::release(a2, v4);
    v4 = *v3;
  }

  *(v3 + 18) = -1;
  return this;
}

uint64_t kd_compressed_stats::update_quant_slope_thresholds(uint64_t this)
{
  v1 = *(this + 32812);
  v2 = *(this + 32808);
  if (v1 >= v2)
  {
    v3 = 0;
    v4 = *this;
    v5 = v1 + 1;
    v6 = this + 8 * v1;
    v7 = (v6 + 40);
    v8 = *(this + 32812);
    while (1)
    {
      v9 = *v7--;
      v3 += v9;
      if (v3 > (*this * (*(this + 24) + *(this + 32))))
      {
        break;
      }

      --v8;
      if (--v5 <= v2)
      {
        v8 = v2 - 1;
        break;
      }
    }

    v10 = 0;
    *(this + 32816) = v8;
    v11 = v1 + 1;
    v12 = (v6 + 40);
    while (1)
    {
      v13 = *v12--;
      v10 += v13;
      if (v10 > (v4 * *(this + 8)))
      {
        break;
      }

      --v1;
      if (--v11 <= v2)
      {
        v1 = v2 - 1;
        break;
      }
    }
  }

  else
  {
    *(this + 32816) = v1;
  }

  *(this + 32820) = v1;
  return this;
}

uint64_t kdu_subband::get_conservative_slope_threshold(kdu_subband *this)
{
  v1 = **(*this + 8);
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = 16 * *(v2 + 32816);
    v4 = __OFSUB__(v3, 1);
    v5 = v3 - 1;
    if ((v5 < 0) ^ v4 | (v5 == 0))
    {
      LOWORD(v5) = 1;
    }
  }

  else
  {
    LOWORD(v5) = 1;
  }

  v6 = *(v1 + 464);
  if (v6 <= v5)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

uint64_t kd_precinct::initialize(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 47) + HIDWORD(a3);
  v8 = *(v6 + 8);
  v9 = *(a2 + 46) + a3;
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 13) = 0;
  *(a1 + 21) = 1;
  if (*(v5 + 8))
  {
    if ((*(v5 + 417) & 1) == 0)
    {
      if (*(v6 + 72) < *(a2 + 24) || *(v6 + 184) != 1 || (v10 = *(a2 + 51), v7 < v10) || (v11 = *(a2 + 50), v9 < v11) || v7 >= *(a2 + 53) + v10 || v9 >= *(a2 + 52) + v11)
      {
        *(a1 + 21) = 0;
      }
    }
  }

  *(a1 + 24) = *(v8 + 196);
  *(a1 + 36) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *(a2 + 100) = *(a2 + 21);
  v12 = *(a2 + 26) + *(a2 + 28) * v7;
  *(a2 + 25) += *(a2 + 27) * v9;
  *(a2 + 26) = v12;
  result = kdu_dims::operator&=(a2 + 25, a2 + 12);
  if (*(a2 + 28) < 1 || *(a2 + 27) <= 0)
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    kdu_error::kdu_error(v51, "Kakadu Core Error:\n");
    (*(*&v51[0] + 16))(v51, "Assert ");
    (*(*&v51[0] + 16))(v51, "(resolution->node.prec_dims.size.x > 0) && (resolution->node.prec_dims.size.y > 0)");
    (*(*&v51[0] + 16))(v51, " FAILED");
    kdu_error::~kdu_error(v51);
  }

  if ((*(v5 + 417) != 1 || *(v8 + 289) == 1) && *(v6 + 72) >= *(a2 + 24))
  {
    v14 = *(v6 + 184) ^ 1;
  }

  else
  {
    v14 = 1;
  }

  *(a1 + 48) = a1 + 80;
  v15 = *(a2 + 222);
  v50 = a1 + 80 + 32 * v15;
  v47 = v8;
  if (*(a2 + 223))
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = a2[28] + v16;
      LODWORD(v19) = *(*v18 + 68);
      LODWORD(v20) = *(*v18 + 72);
      v21 = *(v18 + 48);
      v22 = *(v18 + 49);
      v23 = *(*v18 + 80) + v20;
      v24 = *(*v18 + 76) + v19;
      result = ((v23 - v21 + 1) >> 1);
      if (v21 <= 1)
      {
        v20 = ((v20 - v21 + 1) >> 1);
      }

      else
      {
        v20 = v20;
      }

      if (v21 <= 1)
      {
        v23 = (v23 - v21 + 1) >> 1;
      }

      if (v22 <= 1)
      {
        v19 = ((v19 - v22 + 1) >> 1);
      }

      else
      {
        v19 = v19;
      }

      if (v22 <= 1)
      {
        v24 = (v24 - v22 + 1) >> 1;
      }

      *(v18 + 68) = v19 | (v20 << 32);
      *(v18 + 76) = (v24 - v19) | ((v23 - v20) << 32);
      ++v17;
      v16 += 136;
    }

    while (v17 < *(a2 + 223));
    LODWORD(v15) = *(a2 + 222);
  }

  if (v15)
  {
    v25 = 0;
    do
    {
      v26 = *(a1 + 48) + 32 * v25;
      v48 = v25;
      v27 = a2[30] + 144 * v25;
      *v26 = v27;
      LODWORD(v25) = *(*v27 + 68);
      LODWORD(v28) = *(*v27 + 72);
      v29 = *(v27 + 48);
      v30 = *(v27 + 49);
      v31 = *(*v27 + 76) + v25;
      if (v29 <= 1)
      {
        v28 = ((v28 - v29 + 1) >> 1);
      }

      else
      {
        v28 = v28;
      }

      if (v30 <= 1)
      {
        v25 = ((v25 - v30 + 1) >> 1);
      }

      else
      {
        v25 = v25;
      }

      if (v30 <= 1)
      {
        v31 = (v31 - v30 + 1) >> 1;
      }

      *(v26 + 8) = get_partition_indices(*(v27 + 76), *(v27 + 84), v25 | (v28 << 32), v31 - v25);
      *(v26 + 16) = v32;
      result = kd_block::build_tree(v32, &v50, *(*(a1 + 72) + 24) + a1 - v50);
      *(v26 + 24) = result;
      v51[0] = 0uLL;
      v51[0] = *(v27 + 76);
      v33 = DWORD2(v51[0]);
      v49 = DWORD1(v51[0]) + *(v26 + 12) * HIDWORD(v51[0]);
      v34 = LODWORD(v51[0]) + *(v26 + 8) * DWORD2(v51[0]);
      v35 = *(v26 + 24);
      if (*(v5 + 8))
      {
        LODWORD(v51[0]) += *(v26 + 8) * DWORD2(v51[0]);
        v36 = *(v26 + 16);
        if (v36 >= 1)
        {
          v37 = 0;
          v38 = *(v26 + 20);
          do
          {
            DWORD1(v51[0]) = v49;
            if (v38 >= 1)
            {
              v39 = 0;
              do
              {
                v40 = *(a2[1] + 172);
                if (v40 >= 0x100)
                {
                  kd_precinct::initialize();
                }

                *(v35 + 25) = v40;
                if ((v14 & 1) != 0 || (result = kdu_dims::intersects(v51, (v27 + 32)), (result & 1) == 0))
                {
                  if ((*(v5 + 417) & 1) == 0)
                  {
                    *(v35 + 18) = -1;
                  }
                }

                else
                {
                  ++*(a1 + 36);
                }

                ++v39;
                DWORD1(v51[0]) += HIDWORD(v51[0]);
                v35 += 40;
                v38 = *(v26 + 20);
              }

              while (v39 < v38);
              v33 = DWORD2(v51[0]);
              v34 = v51[0];
              v36 = *(v26 + 16);
            }

            ++v37;
            v34 += v33;
            LODWORD(v51[0]) = v34;
          }

          while (v37 < v36);
        }
      }

      else
      {
        v41 = *(v26 + 16);
        if (v41 >= 1)
        {
          v42 = 0;
          v43 = *(v26 + 20);
          do
          {
            if (v43 >= 1)
            {
              v44 = *(a2[1] + 172);
              if (v44 > 0xFF)
              {
                *&v51[0] = __PAIR64__(v49, v34);
                __assert_rtn("set_modes", "compressed_local.h", 3522, "modes == (modes & 0xFF)");
              }

              v45 = *(a1 + 36);
              v46 = v43;
              do
              {
                *(v35 + 25) = v44;
                v35 += 40;
                --v46;
              }

              while (v46);
              *(a1 + 36) = v43 + v45;
            }

            ++v42;
            v34 += v33;
          }

          while (v42 != v41);
        }
      }

      v25 = v48 + 1;
    }

    while (v48 + 1 < *(a2 + 222));
  }

  if (!*(a1 + 36) && *(v5 + 8))
  {
    *(a1 + 19) = 1;
  }

  if (*(v47 + 287) == 1)
  {
    *(a1 + 32) = -1;
  }

  return result;
}

unsigned __int8 **kd_precinct::closing(unsigned __int8 **this)
{
  v1 = this;
  if (this[1])
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    kdu_error::kdu_error(v9, "Kakadu Core Error:\n");
    (*(*&v9[0] + 16))(v9, "Assert ");
    (*(*&v9[0] + 16))(v9, "ref == NULL");
    (*(*&v9[0] + 16))(v9, " FAILED");
    kdu_error::~kdu_error(v9);
  }

  v2 = *this;
  if ((*this)[222])
  {
    v3 = 0;
    v4 = *(*v2 + 48);
    do
    {
      v5 = &v1[6][32 * v3];
      if (*(v5 + 24))
      {
        v6 = *(v5 + 16) * *(v5 + 20);
        if (v6 >= 1)
        {
          v7 = 0;
          v8 = 40 * v6;
          do
          {
            this = kd_block::cleanup(*(v5 + 24) + v7, v4);
            v7 += 40;
          }

          while (v8 != v7);
          v2 = *v1;
        }

        *(v5 + 24) = 0;
      }

      ++v3;
    }

    while (v3 < v2[222]);
  }

  if ((*(v1 + 18) & 1) == 0)
  {
    this = v1[5];
    if (this)
    {
      this = MEMORY[0x186602830](this, 0x1000C8000313F17);
      v1[5] = 0;
    }
  }

  return this;
}

uint64_t kd_precinct::activate(uint64_t this)
{
  v1 = this;
  v2 = *this;
  v3 = *(*this + 8);
  v4 = *(v3 + 8);
  if (*(this + 19) != 1 || *(this + 36) || (*(v4 + 289) & 1) == 0)
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    kdu_error::kdu_error(v16, "Kakadu Core Error:\n");
    (*(*&v16[0] + 16))(v16, "Assert ");
    (*(*&v16[0] + 16))(v16, "released && (num_outstanding_blocks == 0) && tile->is_open");
    (*(*&v16[0] + 16))(v16, " FAILED");
    kdu_error::~kdu_error(v16);
  }

  *(this + 19) = 0;
  *(this + 24) = *(v4 + 196);
  if (*(v3 + 72) >= *(v2 + 24) && *(v3 + 184) == 1 && *(v2 + 222))
  {
    v5 = 0;
    do
    {
      v6 = (*(v1 + 48) + 32 * v5);
      v7 = *(v2 + 240) + 144 * v5;
      v16[0] = 0uLL;
      v16[0] = *(v7 + 76);
      v8 = DWORD2(v16[0]);
      v9 = v6[3];
      v10 = LODWORD(v16[0]) + v6[2] * DWORD2(v16[0]);
      LODWORD(v16[0]) = v10;
      v11 = v6[4];
      if (v11 >= 1)
      {
        v12 = 0;
        v13 = DWORD1(v16[0]) + v9 * HIDWORD(v16[0]);
        v14 = v6[5];
        do
        {
          DWORD1(v16[0]) = v13;
          if (v14 >= 1)
          {
            for (i = 0; i < v14; ++i)
            {
              this = kdu_dims::intersects(v16, (v7 + 32));
              if (this)
              {
                ++*(v1 + 36);
              }

              DWORD1(v16[0]) += HIDWORD(v16[0]);
              v14 = v6[5];
            }

            v8 = DWORD2(v16[0]);
            v10 = v16[0];
            v11 = v6[4];
          }

          ++v12;
          v10 += v8;
          LODWORD(v16[0]) = v10;
        }

        while (v12 < v11);
        v2 = *v1;
      }

      ++v5;
    }

    while (v5 < *(v2 + 222));
  }

  return this;
}

uint64_t kd_precinct::read_packet(uint64_t **this)
{
  v2 = *(this + 8);
  if (v2 < 0)
  {
    if ((*(this + 18) & 1) == 0)
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      kdu_error::kdu_error(&v50, "Kakadu Core Error:\n");
      (*(v50 + 16))(&v50, "Assert ");
      (*(v50 + 16))(&v50, "addressable");
      (*(v50 + 16))(&v50, " FAILED");
      kdu_error::~kdu_error(&v50);
    }

    return 0;
  }

  v3 = **this;
  v4 = *((*this)[1] + 8);
  if (v2 >= *(v4 + 192))
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    kdu_error::kdu_error(&v50, "Kakadu Core Error:\n");
    (*(v50 + 16))(&v50, "Assert ");
    (*(v50 + 16))(&v50, "num_packets_read < tile->num_layers");
    (*(v50 + 16))(&v50, " FAILED");
    kdu_error::~kdu_error(&v50);
  }

  if ((*(this + 18) & 1) == 0 && v4 != *(v3 + 440))
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    kdu_error::kdu_error(&v50, "Kakadu Core Error:\n");
    (*(v50 + 16))(&v50, "Assert ");
    (*(v50 + 16))(&v50, "addressable || (tile == codestream->active_tile)");
    (*(v50 + 16))(&v50, " FAILED");
    kdu_error::~kdu_error(&v50);
  }

  v5 = *((*this)[1] + 8);
  v6 = *(v5 + 284);
  if (v6 == 1 && *(v3 + 413) == 1)
  {
    v7 = *(v3 + 412);
  }

  else
  {
    v7 = 0;
  }

  if (this[2])
  {
    return kd_precinct::handle_corrupt_packet(this);
  }

  v8 = *(v5 + 285);
  if (*(v4 + 316) != 1)
  {
    goto LABEL_25;
  }

  v9 = *(v4 + 320);
  if (v9 >= 0x10000)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    kdu_error::kdu_error(&v50, "Kakadu Core Error:\n");
    (*(v50 + 16))(&v50, "Assert ");
    (*(v50 + 16))(&v50, "(sop_num >= 0) && (sop_num < (1<<16))");
    (*(v50 + 16))(&v50, " FAILED");
    kdu_error::~kdu_error(&v50);
  }

  if (v9 != *(v4 + 312))
  {
    return kd_precinct::handle_corrupt_packet(this);
  }

  if (*(v4 + 316))
  {
    v11 = *(v4 + 320);
    if (v11 >= 0x10000)
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      kdu_error::kdu_error(&v50, "Kakadu Core Error:\n");
      (*(v50 + 16))(&v50, "Assert ");
      (*(v50 + 16))(&v50, "(sop_num >= 0) && (sop_num < (1<<16))");
      (*(v50 + 16))(&v50, " FAILED");
      kdu_error::~kdu_error(&v50);
    }

    if (v11 != *(v4 + 312))
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      kdu_error::kdu_error(&v50, "Kakadu Core Error:\n");
      (*(v50 + 16))(&v50, "Assert ");
      (*(v50 + 16))(&v50, "compare_sop_num(tile->next_sop_sequence_num, tile->next_input_packet_num) == 0");
      (*(v50 + 16))(&v50, " FAILED");
      kdu_error::~kdu_error(&v50);
    }

    *(v4 + 316) = 0;
  }

  else
  {
LABEL_25:
    v12 = *(v3 + 32);
    while (kd_marker::read(v12, 1, v7 & 1))
    {
      v12 = *(v3 + 32);
      v13 = *(v12 + 16);
      if (v13 == 65424)
      {
        if (*(*(v3 + 8) + 544) == 1)
        {
          goto LABEL_44;
        }

        *(v3 + 440) = 0;
        kd_tile::adjust_unloadability(v4);
        return 0;
      }

      if (v13 == 65425 && v6 != 0)
      {
        if (*(this + 18))
        {
          break;
        }

        v15 = __rev16(**(v12 + 32));
        if (!compare_sop_num(v15, *(v4 + 312)))
        {
          break;
        }

        if ((*(v3 + 412) & 1) == 0)
        {
          v52 = 0;
          v50 = 0u;
          v51 = 0u;
          kdu_error::kdu_error(&v50, "Kakadu Core Error:\n");
          (*(v50 + 16))(&v50, "Out-of-sequence SOP marker found while attempting to read a packet from the code-stream!\n");
          (*(v50 + 16))(&v50, "\tFound sequence number ");
          v16 = kdu_message::operator<<(&v50);
          (*(*v16 + 16))(v16, ", but expected ");
          v17 = kdu_message::operator<<(v16);
          (*(*v17 + 16))(v17, ".\n");
          (*(v50 + 16))(&v50, "Use the resilient option if you would like to try to recover from this error.");
          kdu_error::~kdu_error(&v50);
        }

        *(v4 + 316) = 1;
        *(v4 + 320) = v15;
        return kd_precinct::handle_corrupt_packet(this);
      }

      if ((v7 & 1) == 0)
      {
        if ((*(v3 + 412) & 1) == 0)
        {
          v52 = 0;
          v50 = 0u;
          v51 = 0u;
          kdu_error::kdu_error(&v50, "Kakadu Core Error:\n");
          (*(v50 + 16))(&v50, "Illegal marker code found while attempting to read a packet from the code-stream!\n");
          (*(v50 + 16))(&v50, "\tIllegal marker code is ");
          print_marker_code(*(*(v3 + 32) + 16), &v50);
          (*(v50 + 16))(&v50, ".\n");
          (*(v50 + 16))(&v50, "Use the resilient option if you would like to try to recover from this error.");
          kdu_error::~kdu_error(&v50);
        }

        return kd_precinct::handle_corrupt_packet(this);
      }
    }
  }

  v18 = *(v3 + 8);
  if (*(v18 + 544))
  {
LABEL_44:
    kd_tile::finished_reading(v4);
    if (!*(this + 8) && *(this + 18) == 1)
    {
      v10 = 0;
      *(this + 8) = -1;
      return v10;
    }

    return 0;
  }

  if (*(v3 + 416) == 1 && (*(this + 8) >= *(this + 6) || (*(this + 21) & 1) == 0))
  {
    v47 = 1;
    kd_compressed_input::set_suspend(v18, 1);
  }

  else
  {
    v47 = 0;
  }

  v19 = *(v4 + 88);
  if (!v19)
  {
    v19 = *(v3 + 8);
  }

  LOBYTE(v20) = 0;
  v49[0] = v19;
  v49[1] = 0;
  if ((*(v3 + 412) & 1) != 0 || (v20 = *(v3 + 414), v20 == 1))
  {
    *(v19 + 547) = v20;
    *(v19 + 545) = 1;
  }

  v46 = v8;
  if (kd_header_in::get_bit(v49) && (v21 = *this, *(*this + 222)))
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = &this[6][4 * v22];
      v25 = *(v24 + 16);
      if (v25 >= 1)
      {
        v26 = *(v24 + 24);
        do
        {
          v27 = *(v24 + 20);
          if (v27 >= 1)
          {
            v28 = v27 + 1;
            do
            {
              v23 += kd_block::parse_packet_header(v26, v49, *(v3 + 48), *(this + 8));
              v26 = (v26 + 40);
              --v28;
            }

            while (v28 > 1);
          }

          v29 = __OFSUB__(v25--, 1);
        }

        while (!((v25 < 0) ^ v29 | (v25 == 0)));
        v21 = *this;
      }

      ++v22;
    }

    while (v22 < *(v21 + 222));
  }

  else
  {
    v23 = 0;
  }

  kd_header_in::finish(v49);
  if (*(v19 + 545) == 1)
  {
    *(v19 + 545) = 0;
    if (*(v19 + 544) == 1)
    {
      *(v19 + 546) = 0;
    }

    else if (*(v19 + 546))
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      kdu_error::kdu_error(&v50, "Kakadu Core Error:\n");
      (*(v50 + 16))(&v50, "Assert ");
      (*(v50 + 16))(&v50, "0");
      (*(v50 + 16))(&v50, " FAILED");
      kdu_error::~kdu_error(&v50);
    }
  }

  if (v46)
  {
    v48 = 0;
    if (kd_input::get(v19, &v48))
    {
      v30 = v48;
    }

    else
    {
      v30 = 0;
    }

    if (kd_input::get(v19, &v48))
    {
      v30 = v48 | (v30 << 8);
    }

    if (*(v19 + 544) == 1)
    {
      v31 = *(v4 + 88);
      if (v19 == v31)
      {
        if ((*(v31 + 544) & 1) == 0)
        {
          v52 = 0;
          v50 = 0u;
          v51 = 0u;
          kdu_error::kdu_error(&v50, "Kakadu Core Error:\n");
          (*(v50 + 16))(&v50, "Assert ");
          (*(v50 + 16))(&v50, "tile->packed_headers->failed()");
          (*(v50 + 16))(&v50, " FAILED");
          kdu_error::~kdu_error(&v50);
        }

        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        kdu_error::kdu_error(&v50, "Kakadu Core Error:\n");
        (*(v50 + 16))(&v50, "Exhausted PPM/PPT marker segment data while attempting to parse a packet header!");
        kdu_error::~kdu_error(&v50);
      }

      if ((*(*(v3 + 8) + 544) & 1) == 0)
      {
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        kdu_error::kdu_error(&v50, "Kakadu Core Error:\n");
        (*(v50 + 16))(&v50, "Assert ");
        (*(v50 + 16))(&v50, "codestream->in->failed()");
        (*(v50 + 16))(&v50, " FAILED");
        kdu_error::~kdu_error(&v50);
      }

      kd_tile::finished_reading(v4);
      if (!*(this + 8) && *(this + 18) == 1)
      {
        *(this + 8) = -1;
      }

      if (v47)
      {
        kd_compressed_input::set_suspend(*(v3 + 8), 0);
      }

      return 0;
    }

    if (v30 != 65426)
    {
      if (*(v3 + 412) != 1 || (v33 = *(v3 + 8), v19 != v33))
      {
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        kdu_error::kdu_error(&v50, "Kakadu Core Error:\n");
        (*(v50 + 16))(&v50, "Expected to find EPH marker following packet header.  Found ");
        print_marker_code(v30, &v50);
        (*(v50 + 16))(&v50, " instead.");
        kdu_error::~kdu_error(&v50);
      }

      if (!v47)
      {
        return kd_precinct::handle_corrupt_packet(this);
      }

      goto LABEL_129;
    }
  }

  if (v23 >= 1)
  {
    if (*(v3 + 412))
    {
      LOBYTE(v34) = 0;
    }

    else
    {
      v34 = *(v3 + 414);
      if (v34 != 1)
      {
        goto LABEL_105;
      }
    }

    v35 = *(v3 + 8);
    *(v35 + 547) = v34;
    *(v35 + 545) = 1;
LABEL_105:
    v36 = *this;
    if (*(*this + 222))
    {
      v37 = 0;
      do
      {
        v38 = &this[6][4 * v37];
        v39 = *(v38 + 16);
        if (v39 >= 1)
        {
          v40 = *(v38 + 24);
          do
          {
            v41 = *(v38 + 20);
            if (v41 >= 1)
            {
              v42 = v41 + 1;
              do
              {
                v43 = *(v3 + 8);
                if (*(v43 + 544) == 1)
                {
                  exception = __cxa_allocate_exception(4uLL);
                  *exception = -1;
                  __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
                }

                kd_block::read_body_bytes(v40, v43, *(v3 + 48));
                v40 += 40;
                --v42;
              }

              while (v42 > 1);
            }

            v29 = __OFSUB__(v39--, 1);
          }

          while (!((v39 < 0) ^ v29 | (v39 == 0)));
          v36 = *this;
        }

        ++v37;
      }

      while (v37 < *(v36 + 222));
    }
  }

  v44 = *(v3 + 8);
  if (v44[545] == 1)
  {
    v44[545] = 0;
    if (v44[544] == 1)
    {
      v44[546] = 0;
    }

    else if (v44[546])
    {
      if (*(v3 + 412) != 1)
      {
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        kdu_error::kdu_error(&v50, "Kakadu Core Error:\n");
        (*(v50 + 16))(&v50, "Packet body terminated with an FF!");
        kdu_error::~kdu_error(&v50);
      }

      kd_input::putback(v44, 255);
      if (!v47)
      {
        return kd_precinct::handle_corrupt_packet(this);
      }

      v33 = *(v3 + 8);
LABEL_129:
      kd_compressed_input::set_suspend(v33, 0);
      return kd_precinct::handle_corrupt_packet(this);
    }
  }

  ++*(this + 8);
  if (v47)
  {
    kd_compressed_input::set_suspend(*(v3 + 8), 0);
  }

  return 1;
}