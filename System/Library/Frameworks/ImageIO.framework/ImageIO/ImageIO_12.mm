uint64_t compare_sop_num(unsigned int a1, int a2)
{
  if (a1 >= 0x10000)
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    kdu_error::kdu_error(v5, "Kakadu Core Error:\n");
    (*(*&v5[0] + 16))(v5, "Assert ");
    (*(*&v5[0] + 16))(v5, "(sop_num >= 0) && (sop_num < (1<<16))");
    (*(*&v5[0] + 16))(v5, " FAILED");
    kdu_error::~kdu_error(v5);
  }

  v2 = a1 - a2;
  if (a1 == a2)
  {
    return 0;
  }

  if ((a1 - a2) >= 0x8001u && (a1 - a2) <= 0)
  {
    return v2 - 0x10000;
  }

  else
  {
    return v2;
  }
}

uint64_t kd_precinct::handle_corrupt_packet(kd_precinct *this)
{
  if (*(this + 18) == 1)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    kdu_error::kdu_error(&v25, "Kakadu Core Error:\n");
    (*(v25 + 16))(&v25, "Encountered a corrupted packet while using packet length information to access the compressed data source in a random access fashion.  To process corrupted code-streams in an error resilient manner, you must disable seeking on the compressed data source (i.e., force sequential access) as well as enabling the resilient parsing mode.");
    kdu_error::~kdu_error(&v25);
  }

  v2 = *(*(*this + 8) + 8);
  v3 = *v2;
  v4 = *(*v2 + 413) ^ 1;
  *(this + 16) = 1;
  v5 = v4;
  if ((*(v2 + 316) & 1) == 0)
  {
    goto LABEL_35;
  }

  v6 = *(v2 + 80);
  v7 = *(v2 + 78);
  if (v6 >= 0x10000)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    kdu_error::kdu_error(&v25, "Kakadu Core Error:\n");
    (*(v25 + 16))(&v25, "Assert ");
    (*(v25 + 16))(&v25, "(sop_num >= 0) && (sop_num < (1<<16))");
    (*(v25 + 16))(&v25, " FAILED");
    kdu_error::~kdu_error(&v25);
  }

LABEL_6:
  v8 = v6 - v7;
  v9 = v4;
  if (v6 == v7)
  {
    goto LABEL_42;
  }

  if ((v6 - v7) >= 0x8001u && v8 <= 0)
  {
    v8 -= 0x10000;
  }

  v9 = v4;
  if (v8 < 1)
  {
LABEL_42:
    *(v2 + 316) = 0;
    v5 = v9;
    goto LABEL_35;
  }

  v11 = *(v2 + 80);
  v12 = *(v2 + 78);
  if (v11 >= 0x10000)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    kdu_error::kdu_error(&v25, "Kakadu Core Error:\n");
    (*(v25 + 16))(&v25, "Assert ");
    (*(v25 + 16))(&v25, "(sop_num >= 0) && (sop_num < (1<<16))");
    (*(v25 + 16))(&v25, " FAILED");
    kdu_error::~kdu_error(&v25);
  }

  v13 = v11 - v12;
  if (v11 != v12)
  {
    if ((v11 - v12) >= 0x8001u && v13 <= 0)
    {
      v13 -= 0x10000;
    }

    if (!((v13 < 4) | v5 & 1))
    {
      v9 = 1;
      goto LABEL_42;
    }
  }

  v15 = *(v2 + 80);
  v16 = *(v2 + 48) * *(v2 + 51);
  if (v15 >= 0x10000)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    kdu_error::kdu_error(&v25, "Kakadu Core Error:\n");
    (*(v25 + 16))(&v25, "Assert ");
    (*(v25 + 16))(&v25, "(sop_num >= 0) && (sop_num < (1<<16))");
    (*(v25 + 16))(&v25, " FAILED");
    kdu_error::~kdu_error(&v25);
  }

  v17 = v15 - v16;
  v9 = v4;
  if (v15 == v16)
  {
    goto LABEL_42;
  }

  if ((v15 - v16) >= 0x8001u && v17 <= 0)
  {
    v17 -= 0x10000;
  }

  v9 = v4;
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  if (*(v2 + 316))
  {
    v24 = *(this + 8);
    if (v24 >= *(v2 + 48))
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      kdu_error::kdu_error(&v25, "Kakadu Core Error:\n");
      (*(v25 + 16))(&v25, "Assert ");
      (*(v25 + 16))(&v25, "num_packets_read < tile->num_layers");
      (*(v25 + 16))(&v25, " FAILED");
      kdu_error::~kdu_error(&v25);
    }

    *(this + 8) = v24 + 1;
    return 1;
  }

LABEL_35:
  v19 = v3[4];
  while ((kd_marker::read(v19, 1, 1) & 1) != 0)
  {
    v19 = v3[4];
    v20 = *(v19 + 16);
    if (v20 == 65425)
    {
      v21 = *(v19 + 32);
      v22 = *v21;
      *(v2 + 80) = v22 << 8;
      v6 = v21[1] | (v22 << 8);
      *(v2 + 80) = v6;
      *(v2 + 316) = 1;
      v7 = *(v2 + 78);
      goto LABEL_6;
    }

    if (v20 == 65424)
    {
      v3[55] = 0;
      kd_tile::adjust_unloadability(v2);
      return 0;
    }
  }

  if ((*(v3[1] + 544) & 1) == 0)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    kdu_error::kdu_error(&v25, "Kakadu Core Error:\n");
    (*(v25 + 16))(&v25, "Assert ");
    (*(v25 + 16))(&v25, "codestream->in->failed()");
    (*(v25 + 16))(&v25, " FAILED");
    kdu_error::~kdu_error(&v25);
  }

  kd_tile::finished_reading(v2);
  return 0;
}

uint64_t kd_compressed_input::set_suspend(uint64_t this, int a2)
{
  if ((*(this + 608) & 1) == 0)
  {
    v2 = *(this + 592);
    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = a2 == 0;
    }

    if (v3)
    {
      if (v2)
      {
        if ((a2 & 1) == 0)
        {
          v4 = *(this + 528);
          v5 = v4 - v2 + *(this + 584);
          *(this + 584) = v5;
          *(this + 592) = 0;
          v6 = *(this + 568) + v5 - *(this + 560);
          v7 = *(this + 536);
          v8 = v7 - this - 14;
          v9 = v6 < v8;
          v10 = v6 - v8;
          if (v9)
          {
            *(this + 600) = v7;
            v11 = v7 + v10;
            *(this + 536) = v11;
            if (v11 < v4)
            {
              *(this + 544) = 1;
              *(this + 584) = v5 - v4 + v11;
              *(this + 536) = v4;
            }
          }
        }
      }
    }

    else
    {
      *(this + 592) = *(this + 528);
      v12 = *(this + 600);
      if (v12)
      {
        if (v12 <= *(this + 536))
        {
          kd_compressed_input::set_suspend();
        }

        *(this + 536) = v12;
        *(this + 600) = 0;
      }
    }
  }

  return this;
}

uint64_t kd_header_in::get_bit(kd_header_in *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    if (*(this + 8) == 255)
    {
      v3 = 7;
    }

    else
    {
      v3 = 8;
    }

    *(this + 3) = v3;
    if (!kd_input::get(*this, this + 8))
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = this;
    }

    v2 = *(this + 3);
  }

  v4 = v2 - 1;
  *(this + 3) = v4;
  return (*(this + 8) >> v4) & 1;
}

uint64_t kd_header_in::finish(uint64_t this)
{
  if (!*(this + 12))
  {
    v1 = this;
    if (*(this + 8) == 255)
    {
      *(this + 12) = 7;
      this = kd_input::get(*this, (this + 8));
      if ((this & 1) == 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = v1;
      }
    }
  }

  return this;
}

uint64_t kd_input::get(kd_input *this, unsigned __int8 *a2)
{
  if (*(this + 544))
  {
    return 0;
  }

  v5 = *(this + 66);
  if (v5 == *(this + 67))
  {
    result = (*(*this + 24))(this);
    if (!result)
    {
      return result;
    }

    v5 = *(this + 66);
  }

  *(this + 66) = v5 + 1;
  v6 = *v5;
  *a2 = v6;
  if (*(this + 545) == 1)
  {
    if (*(this + 546) == 1 && v6 >= 0x90)
    {
      kd_input::process_unexpected_marker(this, v6);
      v6 = *a2;
    }

    *(this + 546) = v6 == 255;
  }

  return 1;
}

uint64_t kd_input::putback(uint64_t this, char a2)
{
  if (*(this + 544) == 1)
  {
    kd_input::putback();
  }

  if (*(this + 545) == 1)
  {
    kd_input::putback();
  }

  v2 = *(this + 528);
  if (v2 <= this + 8)
  {
    kd_input::putback();
  }

  *(this + 528) = v2 - 1;
  *(v2 - 1) = a2;
  return this;
}

uint64_t kd_precinct::simulate_packet(kd_precinct *this, uint64_t *a2, int a3, unsigned int a4, int a5, char a6, uint64_t a7, int a8)
{
  v10 = a2;
  v12 = *(this + 6);
  v50 = *(*(*this + 8) + 8);
  if (v12 != *(v50 + 192))
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    kdu_error::kdu_error(&v57, "Kakadu Core Error:\n");
    (*(v57 + 16))(&v57, "Assert ");
    (*(v57 + 16))(&v57, "required_layers == tile->num_layers");
    (*(v57 + 16))(&v57, " FAILED");
    kdu_error::~kdu_error(&v57);
  }

  v13 = *(**this + 48);
  if (v12 <= a3)
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    kdu_error::kdu_error(&v57, "Kakadu Core Error:\n");
    (*(v57 + 16))(&v57, "Assert ");
    (*(v57 + 16))(&v57, "layer_idx < required_layers");
    (*(v57 + 16))(&v57, " FAILED");
    kdu_error::~kdu_error(&v57);
  }

  if (*(this + 9))
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    kdu_error::kdu_error(&v57, "Kakadu Core Error:\n");
    (*(v57 + 16))(&v57, "You may not currently flush compressed code-stream data without completing the compression of all code-blocks in all precincts of all tiles.");
    kdu_error::~kdu_error(&v57);
  }

  v14 = *(this + 5);
  if (!v14)
  {
    if (a3)
    {
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      kdu_error::kdu_error(&v57, "Kakadu Core Error:\n");
      (*(v57 + 16))(&v57, "Assert ");
      (*(v57 + 16))(&v57, "layer_idx == 0");
      (*(v57 + 16))(&v57, " FAILED");
      kdu_error::~kdu_error(&v57);
    }

    operator new[]();
  }

  if (!a3)
  {
    v15 = *(this + 6);
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = 3;
      if (!*(v50 + 285))
      {
        v17 = 1;
      }

      v18 = 8 * v15;
      do
      {
        *(*(this + 5) + v16) = v17;
        v16 += 8;
      }

      while (v18 != v16);
      v14 = *(this + 5);
    }
  }

  *(v14 + 8 * a3) = 0;
  if (a8)
  {
    if (!a5 || (a6 & 1) == 0)
    {
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      kdu_error::kdu_error(&v57, "Kakadu Core Error:\n");
      (*(v57 + 16))(&v57, "Assert ");
      (*(v57 + 16))(&v57, "last_layer && finalize_layer");
      (*(v57 + 16))(&v57, " FAILED");
      kdu_error::~kdu_error(&v57);
    }

    v19 = *this;
    if (*(*this + 222))
    {
      v20 = 0;
      do
      {
        v21 = *(this + 6) + 32 * v20;
        v22 = *(v21 + 16) * *(v21 + 20);
        if (v22 >= 1)
        {
          v23 = 0;
          v24 = 40 * v22;
          do
          {
            kd_block::trim_data((*(v21 + 24) + v23), a4, v13);
            v23 += 40;
          }

          while (v24 != v23);
          v19 = *this;
        }

        ++v20;
      }

      while (v20 < *(v19 + 222));
      v25 = *(v19 + 222);
      v10 = a2;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = *(*this + 222);
  }

  v26 = 0;
  while (1)
  {
    v27 = 7;
    if (!*(v50 + 284))
    {
      v27 = 1;
    }

    *v10 = v27;
    if (*(v50 + 285) == 1)
    {
      *v10 = v27 + 2;
    }

    v51 = v25;
    if (*(*this + 222))
    {
      break;
    }

    v29 = 0;
LABEL_58:
    v56[0] = 0x800000000;
    v56[1] = 0;
    v56[2] = 0;
    kd_header_out::put_bit(v56, 1u);
    v39 = *this;
    if (*(*this + 222))
    {
      v40 = 0;
      do
      {
        v41 = *(this + 6) + 32 * v40;
        v42 = *(v41 + 16) * *(v41 + 20);
        if (v42 >= 1)
        {
          v43 = 0;
          v44 = 40 * v42;
          do
          {
            kd_block::write_packet_header((*(v41 + 24) + v43), v56, a3, 1);
            v43 += 40;
          }

          while (v44 != v43);
          v39 = *this;
        }

        ++v40;
      }

      while (v40 < *(v39 + 222));
    }

    v10 = a2;
    v45 = *a2 + (kd_header_out::finish(v56) - 1);
    *a2 = v45;
    result = v45 + v29;
    if (v45 + v29 <= a7)
    {
      v25 = v51;
      if (!a5 || !*(*this + 222))
      {
        goto LABEL_80;
      }

      v47 = 0;
      v48 = 0;
      do
      {
        kd_block::save_output_tree(*(*(this + 6) + v47 + 24), *(*(this + 6) + v47 + 16));
        ++v48;
        v47 += 32;
      }

      while (v48 < *(*this + 222));
    }

    else
    {
      v25 = v51;
      if (!a5)
      {
        return result;
      }

      if (!a8)
      {
        v59 = 0;
        v57 = 0u;
        v58 = 0u;
        kdu_error::kdu_error(&v57, "Kakadu Core Error:\n");
        (*(v57 + 16))(&v57, "Assert ");
        (*(v57 + 16))(&v57, "trim_to_limit");
        (*(v57 + 16))(&v57, " FAILED");
        kdu_error::~kdu_error(&v57);
      }

      do
      {
        while (1)
        {
          v46 = *(this + 6) + 32 * v25;
          if (v26)
          {
            break;
          }

          if (v25 <= 0)
          {
            v59 = 0;
            v57 = 0u;
            v58 = 0u;
            kdu_error::kdu_error(&v57, "Kakadu Core Error:\n");
            (*(v57 + 16))(&v57, "Assert ");
            (*(v57 + 16))(&v57, "last_trimmed_subband >= 0");
            (*(v57 + 16))(&v57, " FAILED");
            kdu_error::~kdu_error(&v57);
          }

          v25 = (v25 - 1);
          v26 = *(v46 - 16) * *(v46 - 12);
        }

        --v26;
      }

      while ((kd_block::trim_data((*(v46 + 24) + 40 * v26), (a4 + 1), v13) & 1) == 0);
    }

    v10 = a2;
LABEL_80:
    v49 = *v10 + v29;
    if (v49 <= a7)
    {
      *(*(this + 5) + 8 * a3) = v49;
      return *v10 + v29;
    }
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    v30 = *(this + 6) + 32 * v28;
    v32 = *(v30 + 16);
    v31 = *(v30 + 24);
    if (a3)
    {
      kd_block::restore_output_tree(v31, v32);
    }

    else
    {
      kd_block::reset_output_tree(v31, v32);
    }

    v33 = *(v30 + 16) * *(v30 + 20);
    if (v33 >= 1)
    {
      v34 = 0;
      v35 = 40 * v33;
      do
      {
        v29 += kd_block::start_packet((*(v30 + 24) + v34), a3, a4);
        v34 += 40;
      }

      while (v35 != v34);
    }

    result = *a2 + v29;
    v37 = a5 ^ 1;
    if (result <= a7)
    {
      v37 = 1;
    }

    if ((v37 & 1) == 0 && (a8 & 1) == 0)
    {
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      kdu_error::kdu_error(&v57, "Kakadu Core Error:\n");
      (*(v57 + 16))(&v57, "Assert ");
      (*(v57 + 16))(&v57, "trim_to_limit");
      (*(v57 + 16))(&v57, " FAILED");
      kdu_error::~kdu_error(&v57);
    }

    if (result > a7 && a5 == 0)
    {
      return result;
    }

    if (++v28 >= *(*this + 222))
    {
      goto LABEL_58;
    }
  }
}

unsigned __int8 *kd_header_out::put_bit(unsigned __int8 *this, unsigned int a2)
{
  if (a2 >= 2)
  {
    kd_header_out::put_bit();
  }

  v2 = a2;
  v3 = this;
  v4 = *(this + 1);
  if (v4)
  {
    v5 = 2 * *this;
  }

  else
  {
    this = *(this + 2);
    if (this)
    {
      this = kdu_output::put(this, *v3);
    }

    v5 = 0;
    ++*(v3 + 2);
    if (*v3 == 255)
    {
      v4 = 7;
    }

    else
    {
      v4 = 8;
    }
  }

  *v3 = v5 | v2;
  *(v3 + 1) = v4 - 1;
  return this;
}

uint64_t kd_header_out::finish(kd_header_out *this)
{
  v2 = *(this + 1);
  if (v2 >= 8)
  {
    return *(this + 2);
  }

  v3 = *this << v2;
  *this = v3;
  v4 = *(this + 2);
  if (v4)
  {
    kdu_output::put(v4, v3);
    LOBYTE(v3) = *this;
  }

  result = (*(this + 2) + 1);
  *(this + 2) = result;
  if (v3 == 0xFF)
  {
    if (*(this + 2))
    {
      kdu_output::put(*(this + 2), 0);
      LODWORD(result) = *(this + 2);
    }

    result = (result + 1);
    *(this + 2) = result;
  }

  return result;
}

uint64_t *kd_precinct_ref::close(uint64_t *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = (*this & 1) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v3 = this;
    if (*(v1 + 8) != this)
    {
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      kdu_error::kdu_error(v5, "Kakadu Core Error:\n");
      (*(*&v5[0] + 16))(v5, "Assert ");
      (*(*&v5[0] + 16))(v5, "precinct->ref == this");
      (*(*&v5[0] + 16))(v5, " FAILED");
      kdu_error::~kdu_error(v5);
    }

    *(v1 + 8) = 0;
    kd_precinct::closing(v1);
    if (*(v1 + 18) == 1)
    {
      v4 = (2 * *(v1 + 40)) | 1;
    }

    else
    {
      v4 = 3;
    }

    *v3 = v4;
    return kd_precinct_size_class::release(*(v1 + 72), v1);
  }

  return this;
}

void *kd_precinct_size_class::augment_free_list(kd_precinct_size_class *this)
{
  v2 = *(this + 6);
  if (v2 < 0)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
    (*(v5 + 16))(&v5, "Heap exhausted.  Unable to allocate memory for code-block state information.");
    kdu_error::~kdu_error(&v5);
  }

  result = malloc_type_malloc(v2, 0x103204094352379uLL);
  if (!result)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
    (*(v5 + 16))(&v5, "Heap exhausted.  Unable to allocate sufficient memory for code-block state information.");
    kdu_error::~kdu_error(&v5);
  }

  result[9] = this;
  result[7] = *(this + 4);
  *(this + 4) = result;
  v4 = *(this + 6);
  ++*(this + 7);
  *(*this + 8) += v4;
  return result;
}

uint64_t *kd_precinct_size_class::move_to_inactive_list(uint64_t *this, kd_precinct *a2)
{
  if (*(a2 + 8) || *(a2 + 7) || *(a2 + 20) == 1)
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    kdu_error::kdu_error(v5, "Kakadu Core Error:\n");
    (*(*&v5[0] + 16))(v5, "Assert ");
    (*(*&v5[0] + 16))(v5, "(precinct->prev == NULL) && (precinct->next == NULL) && !precinct->inactive");
    (*(*&v5[0] + 16))(v5, " FAILED");
    kdu_error::~kdu_error(v5);
  }

  *(a2 + 20) = 1;
  v2 = *this;
  v3 = *(*this + 24);
  *(a2 + 8) = v3;
  if (v3)
  {
    v4 = (v3 + 56);
  }

  else
  {
    v4 = (v2 + 16);
  }

  *v4 = a2;
  *(v2 + 24) = a2;
  return this;
}

uint64_t kd_precinct_size_class::withdraw_from_inactive_list(uint64_t this, kd_precinct *a2)
{
  if ((*(a2 + 20) & 1) == 0)
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    kdu_error::kdu_error(&v4, "Kakadu Core Error:\n");
    (*(v4 + 16))(&v4, "Assert ");
    (*(v4 + 16))(&v4, "precinct->inactive");
    (*(v4 + 16))(&v4, " FAILED");
    kdu_error::~kdu_error(&v4);
  }

  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = *(a2 + 7);
    *(v2 + 56) = v3;
    if (v3)
    {
LABEL_5:
      *(v3 + 64) = *(a2 + 8);
      goto LABEL_12;
    }
  }

  else
  {
    if (*(*this + 16) != a2)
    {
      v6 = 0;
      v4 = 0u;
      v5 = 0u;
      kdu_error::kdu_error(&v4, "Kakadu Core Error:\n");
      (*(v4 + 16))(&v4, "Assert ");
      (*(v4 + 16))(&v4, "precinct == server->inactive_head");
      (*(v4 + 16))(&v4, " FAILED");
      kdu_error::~kdu_error(&v4);
    }

    v3 = *(a2 + 7);
    *(*this + 16) = v3;
    if (v3)
    {
      goto LABEL_5;
    }
  }

  if (*(*this + 24) != a2)
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    kdu_error::kdu_error(&v4, "Kakadu Core Error:\n");
    (*(v4 + 16))(&v4, "Assert ");
    (*(v4 + 16))(&v4, "precinct == server->inactive_tail");
    (*(v4 + 16))(&v4, " FAILED");
    kdu_error::~kdu_error(&v4);
  }

  *(*this + 24) = *(a2 + 8);
LABEL_12:
  *(a2 + 20) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  return this;
}

uint64_t kd_precinct_server::get(kd_precinct_server *this, int a2, int a3)
{
  v4 = *this;
  if (!*this)
  {
LABEL_5:
    operator new();
  }

  while (*(v4 + 16) != a2 || *(v4 + 20) != a3)
  {
    v4 = *(v4 + 40);
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  for (i = *(this + 2); i; i = *(this + 2))
  {
    if (*(*(this + 4) + 56) >= *(*(this + 4) + 40) + 220 * *(*(this + 4) + 24))
    {
      break;
    }

    if (*(i + 19) != 1 || (*(i + 20) & 1) == 0)
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      kdu_error::kdu_error(v7, "Kakadu Core Error:\n");
      (*(*&v7[0] + 16))(v7, "Assert ");
      (*(*&v7[0] + 16))(v7, "tmp->released && tmp->inactive");
      (*(*&v7[0] + 16))(v7, " FAILED");
      kdu_error::~kdu_error(v7);
    }

    kd_precinct_ref::close(*(i + 8));
  }

  return kd_precinct_size_class::get(v4);
}

uint64_t kd_precinct_size_class::get(kd_precinct_size_class *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    kd_precinct_size_class::augment_free_list(this);
    v2 = *(this + 4);
  }

  *(this + 4) = *(v2 + 56);
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  kd_buf_server::augment_structure_bytes(*(this + 1), *(this + 6));
  return v2;
}

uint64_t kd_precinct_ref::instantiate_precinct(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = kd_precinct_server::get(*(*a2 + 80), *(a2 + 216), *(a2 + 222));
  kd_precinct::initialize(v6, a2, a3);
  *(v6 + 8) = a1;
  v7 = *a1;
  if (*a1)
  {
    *(v6 + 18) = 1;
    *(v6 + 40) = v7 >> 1;
    *a1 = v6;
    if (v6)
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
      (*(v16 + 16))(&v16, "Assert ");
      (*(v16 + 16))(&v16, "!(state & 1)");
      (*(v16 + 16))(&v16, " FAILED");
      kdu_error::~kdu_error(&v16);
    }

    if ((*(*a2 + 415) & 1) == 0)
    {
      if (*(v6 + 36) <= 0)
      {
        v18 = 0;
        v16 = 0u;
        v17 = 0u;
        kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
        (*(v16 + 16))(&v16, "Assert ");
        (*(v16 + 16))(&v16, "result->num_outstanding_blocks > 0");
        (*(v16 + 16))(&v16, " FAILED");
        kdu_error::~kdu_error(&v16);
      }

      *(v6 + 17) = 1;
      v10 = *(*(a2 + 8) + 8);
      goto LABEL_19;
    }
  }

  else
  {
    if (v7)
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
      (*(v16 + 16))(&v16, "Assert ");
      (*(v16 + 16))(&v16, "state == 0");
      (*(v16 + 16))(&v16, " FAILED");
      kdu_error::~kdu_error(&v16);
    }

    *a1 = v6;
    if (v6)
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
      (*(v16 + 16))(&v16, "Assert ");
      (*(v16 + 16))(&v16, "!(state & 1)");
      (*(v16 + 16))(&v16, " FAILED");
      kdu_error::~kdu_error(&v16);
    }

    v8 = *a2;
    if ((*(*a2 + 418) & 1) != 0 || *(v8 + 415) == 1)
    {
      v9 = *(a2 + 8);
      v10 = *(v9 + 8);
      v11 = HIDWORD(a3) + *(a2 + 196) * a3;
      if (*(a2 + 24))
      {
        v12 = 704 * *(a2 + 24);
        v13 = (a2 - v12 + 196);
        do
        {
          v11 += *(v13 - 1) * *v13;
          v13 += 176;
          v12 -= 704;
        }

        while (v12);
      }

      v14 = v10[2] + (*(v9 + 24) + v11 * v10[47]) * *(v8 + 224) * *(v8 + 220);
      *(v6 + 18) = 1;
      *(v6 + 40) = ~v14;
      if ((*(*a2 + 415) & 1) == 0)
      {
        *(v6 + 17) = 1;
LABEL_19:
        *(v6 + 28) = v10[48];
      }
    }
  }

  return v6;
}

uint64_t kd_precinct_size_class::release(kd_precinct_size_class *this, kd_precinct *a2)
{
  if (*(a2 + 20) == 1)
  {
    kd_precinct_size_class::withdraw_from_inactive_list(this, a2);
  }

  *(a2 + 7) = *(this + 4);
  *(this + 4) = a2;
  v4 = *(this + 1);
  v5 = -*(this + 6);

  return kd_buf_server::augment_structure_bytes(v4, v5);
}

BOOL kd_precinct_ref::set_address(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 <= 0)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    kdu_error::kdu_error(&v14, "Kakadu Core Error:\n");
    (*(v14 + 16))(&v14, "Assert ");
    (*(v14 + 16))(&v14, "seek_address > 0");
    (*(v14 + 16))(&v14, " FAILED");
    kdu_error::~kdu_error(&v14);
  }

  v4 = *(a2 + 8);
  v5 = *(v4 + 8);
  v6 = *a1;
  if (*a1)
  {
    v7 = (*a1 & 1) == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = *v5;
    *a1 = (2 * a4) | 1;
    if ((*(v8 + 417) & 1) == 0)
    {
      if (*(v4 + 72) < *(a2 + 24))
      {
        return *(v5 + 77) != *(v5 + 52) || (kd_tile::finished_reading(v5) & 1) == 0;
      }

      if (*(v4 + 184) != 1)
      {
        return *(v5 + 77) != *(v5 + 52) || (kd_tile::finished_reading(v5) & 1) == 0;
      }

      v9 = *(a2 + 188) + HIDWORD(a3);
      v10 = *(a2 + 204);
      if (v9 < v10)
      {
        return *(v5 + 77) != *(v5 + 52) || (kd_tile::finished_reading(v5) & 1) == 0;
      }

      v11 = *(a2 + 184) + a3;
      v12 = *(a2 + 200);
      if (v11 < v12 || v9 >= *(a2 + 212) + v10 || v11 >= *(a2 + 208) + v12)
      {
        return *(v5 + 77) != *(v5 + 52) || (kd_tile::finished_reading(v5) & 1) == 0;
      }
    }

LABEL_18:
    *(v5 + 77) += *(v5 + 50);
    return *(v5 + 77) != *(v5 + 52) || (kd_tile::finished_reading(v5) & 1) == 0;
  }

  if (*(v6 + 28))
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    kdu_error::kdu_error(&v14, "Kakadu Core Error:\n");
    (*(v14 + 16))(&v14, "Assert ");
    (*(v14 + 16))(&v14, "precinct->next_layer_idx == 0");
    (*(v14 + 16))(&v14, " FAILED");
    kdu_error::~kdu_error(&v14);
  }

  *(v6 + 28) = *(v5 + 48);
  *(v6 + 18) = 1;
  *(v6 + 40) = a4;
  kd_precinct::finished_desequencing(v6);
  if (*(v6 + 21))
  {
    goto LABEL_18;
  }

  return *(v5 + 77) != *(v5 + 52) || (kd_tile::finished_reading(v5) & 1) == 0;
}

uint64_t *kd_precinct_pointer_server::disable(uint64_t *this)
{
  if (*this)
  {
    for (i = this; ; this = kd_buf_server::release(*i, v2))
    {
      v2 = i[1];
      i[2] = v2;
      if (!v2)
      {
        break;
      }

      i[1] = *v2;
    }

    *i = 0;
  }

  return this;
}

void kd_mct_stage::~kd_mct_stage(kd_mct_stage *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C8052888210);
  }

  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1020C806B39A6A2);
  }

  v4 = *(this + 5);
  if (v4)
  {
    v5 = v4 - 16;
    v6 = *(v4 - 8);
    if (v6)
    {
      v7 = (v4 + 152 * v6 - 152);
      v8 = -152 * v6;
      do
      {
        kd_mct_block::~kd_mct_block(v7);
        v7 = (v9 - 152);
        v8 += 152;
      }

      while (v8);
    }

    MEMORY[0x186602830](v5, 0x10B0C80C861A3ACLL);
  }
}

void kd_mct_block::~kd_mct_block(kd_mct_block *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C8052888210);
  }

  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8077774924);
  }

  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x186602830](v4, 0x1000C8052888210);
  }

  v5 = *(this + 13);
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x1000C80451B5BE8);
  }

  v6 = *(this + 14);
  if (v6)
  {
    MEMORY[0x186602830](v6, 0x1000C8052888210);
  }

  v7 = *(this + 18);
  if (v7)
  {
    MEMORY[0x186602830](v7, 0x1000C8052888210);
  }

  v8 = *(this + 6);
  if (v8)
  {
    v11 = *(v8 - 8);
    v10 = v8 - 8;
    v9 = v11;
    if (v11)
    {
      v12 = 24 * v9;
      do
      {
        v13 = *(v10 + v12);
        if (v13)
        {
          MEMORY[0x186602830](v13, 0x1000C8052888210);
        }

        v12 -= 24;
      }

      while (v12);
    }

    MEMORY[0x186602830](v10 - 8, 0x1080C80C4643742);
  }
}

void kd_resolution::~kd_resolution(kd_resolution *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C8052888210);
  }

  v3 = *(this + 223);
  if (*(this + 223))
  {
    v4 = 0;
    v5 = 128;
    do
    {
      v6 = *(*(this + 28) + v5);
      if (v6)
      {
        MEMORY[0x186602830](v6, 0x1000C8052888210);
        v3 = *(this + 223);
      }

      ++v4;
      v5 += 136;
    }

    while (v4 < v3);
  }

  v7 = *(this + 29);
  if (v7)
  {
    v8 = v7 - 16;
    v9 = *(v7 - 8);
    if (v9)
    {
      v10 = (v7 + 8 * v9 - 8);
      v11 = -8 * v9;
      do
      {
        kd_precinct_ref::~kd_precinct_ref(v10);
        v10 = (v12 - 8);
        v11 += 8;
      }

      while (v11);
    }

    MEMORY[0x186602830](v8, 0x1000C8000313F17);
  }

  v13 = *(this + 31);
  if (v13)
  {
    MEMORY[0x186602830](v13, 0x1020C8068AD3B9FLL);
  }

  v14 = *(this + 28);
  if (v14)
  {
    MEMORY[0x186602830](v14, 0x10A0C80A1ACF372);
  }
}

void kd_precinct_ref::~kd_precinct_ref(kd_precinct_ref *this)
{
  if (*this)
  {
    v1 = (*this & 1) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    kd_precinct_ref::close(this);
  }
}

void sub_185F250A0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185F25090);
}

void *_cg_JP2TearDownJP2Storage(void *result)
{
  v1 = result[7];
  if (v1)
  {
    v2 = v1[1];
    if (v2)
    {
      jp2_family_src::close(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    if (*v1)
    {
      (*(**v1 + 8))(*v1);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    result = v1[1];
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

uint64_t JP2SetOptimalScalingFactor(void *a1)
{
  v2 = a1[7];
  v3 = 1.0;
  kdu_region_compositor::set_scale(*(v2 + 24), 0, 0, 0, 1.0);
  v12 = 0uLL;
  kdu_region_compositor::get_total_composition_dims(*(v2 + 24), &v12);
  v4 = a1[20];
  v5 = a1[21];
  if (v5 >= 2)
  {
    do
    {
      v3 = v3 * 0.5;
      v6 = v5 > 3;
      v5 >>= 1;
    }

    while (v6);
  }

  if (v4 >= 0x10)
  {
    v7 = v4;
    while ((v3 * SHIDWORD(v12)) * 0.5 >= v7 || (v3 * SDWORD2(v12)) * 0.5 >= v7)
    {
      v3 = v3 * 0.5;
    }
  }

  v9 = 0.015625;
  if (v3 >= 0.015625)
  {
    v9 = v3;
  }

  *(v2 + 48) = v9;
  while (1)
  {
    kdu_region_compositor::set_scale(*(v2 + 24), 0, 0, 0, v9);
    total_composition_dims = kdu_region_compositor::get_total_composition_dims(*(v2 + 24), (v2 + 32));
    if (total_composition_dims)
    {
      break;
    }

    v9 = *(v2 + 48) + *(v2 + 48);
    *(v2 + 48) = v9;
    if (v9 > 1.0)
    {
      *(v2 + 32) = v12;
      fwrite("get_total_composition_dims never succeeded\n", 0x2BuLL, 1uLL, *MEMORY[0x1E69E9848]);
      return total_composition_dims;
    }
  }

  return total_composition_dims;
}

void sub_185F258BC(void *a1)
{
  __cxa_begin_catch(a1);
  jp2_family_src::close(*(v1 + 8));
  __cxa_end_catch();
  JUMPOUT(0x185F25884);
}

uint64_t _cg_JP2DecompressBlock(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v10 = *(a1 + 56);
  BytePtr = *(a1 + 152);
  if (!BytePtr)
  {
    v22 = *(a1 + 144);
    if (!v22)
    {
      goto LABEL_20;
    }

    BytePtr = CFDataGetBytePtr(v22);
    if (!BytePtr)
    {
      goto LABEL_20;
    }
  }

  v12 = *(a1 + 128);
  v24[0] = 0;
  v24[1] = 0;
  if ((a2 & 0x80000000) != 0 || (v13 = *(a1 + 64), v13 < a4 + a2))
  {
    v15 = "origin_x >= 0 && origin_x + size_x <= info->width";
    v16 = 692;
    goto LABEL_25;
  }

  if ((a3 & 0x80000000) != 0 || (v14 = *(a1 + 72), v14 < (a5 + a3)))
  {
    v15 = "origin_y >= 0 && origin_y + size_y <= info->height";
    v16 = 693;
    goto LABEL_25;
  }

  v15 = "size_x > 0 && size_x <= info->width";
  v16 = 694;
  if (a4 < 1 || v13 < a4)
  {
LABEL_25:
    __assert_rtn("_cg_JP2DecompressBlock", "JP2LibDecompress.cpp", v16, v15);
  }

  if (a5 < 1 || v14 < a5)
  {
    v15 = "size_y > 0 && size_y <= info->height";
    v16 = 695;
    goto LABEL_25;
  }

  if (!v10)
  {
    abort();
  }

  v17 = v12 >> 3;
  v18 = *(v10 + 24);
  *(v18 + 536) = BytePtr;
  *(v18 + 548) = a4;
  *(v18 + 544) = v17;
  kdu_region_compositor::set_buffer_surface(v18, a3 | (a2 << 32), a5 | (a4 << 32), -1);
  *(a1 + 184) = 0;
  *(a1 + 48) = 0;
  v19 = (v17 * a5 * a4);
  while (1)
  {
    v20 = *(v10 + 24);
    if (v20[428] == 1 && v20[429] != 1)
    {
      break;
    }

    if (((*(*v20 + 32))(v20, v19, v24) & 1) == 0)
    {
      break;
    }

    if (*(a1 + 178) == 1 && *(a1 + 48))
    {
      v21 = 0xFFFFFFFFLL;
      goto LABEL_21;
    }
  }

LABEL_20:
  v21 = 0;
LABEL_21:
  kdu_region_compositor::reset(*(v10 + 24));
  *(*(v10 + 24) + 536) = 0u;
  return v21;
}

void sub_185F25B08(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185F25A6CLL);
}

void _cg_JP2TearDownDecompressor(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    _cg_JP2TearDownJP2Storage(a1);
    free(v2);
  }

  v3 = a1[18];
  if (v3)
  {

    CFRelease(v3);
  }
}

void *_cg_JP2GetPalette(uint64_t a1, int a2, _DWORD *a3, int *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 179) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 56);
  if (!v4)
  {
    return 0;
  }

  v15 = jpx_source::access_codestream(*(v4 + 16), 0, 1);
  if (!v15)
  {
    return 0;
  }

  v14 = jpx_codestream_source::access_palette(&v15);
  if (!v14)
  {
    return 0;
  }

  num_entries = jp2_palette::get_num_entries(&v14);
  num_luts = jp2_palette::get_num_luts(&v14);
  if (num_luts >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = num_luts;
  }

  if (v10 >= 1)
  {
    v11 = 0;
    while (jp2_palette::get_bit_depth(&v14, v11) <= 8)
    {
      if (v10 == ++v11)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

LABEL_13:
  *a3 = num_entries;
  *a4 = v10;
  v12 = malloc_type_malloc(v10 * num_entries, 0x100004077774924uLL);
  if (v12)
  {
    operator new[]();
  }

  return v12;
}

void MyJP2Source::~MyJP2Source(MyJP2Source *this)
{
  *this = &unk_1EF4D2658;
}

{
  *this = &unk_1EF4D2658;
  JUMPOUT(0x186602850);
}

uint64_t MyJP2Source::read(MyJP2Source *this, unsigned __int8 *a2, int a3)
{
  v5 = *(this + 1);
  *(this + 2) += a3;
  result = (*(v5 + 24))(*v5, a2, a3);
  if (result < a3)
  {
    *(*(this + 1) + 48) = -1;
  }

  return result;
}

uint64_t MyJP2Source::seek(MyJP2Source *this, uint64_t a2)
{
  *(this + 2) = a2;
  (*(*(this + 1) + 32))(**(this + 1), *(*(this + 1) + 16) + a2);
  return 1;
}

void jp2_family_src::~jp2_family_src(jp2_family_src *this)
{
  jp2_family_src::~jp2_family_src(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4D26B0;
  jp2_family_src::close(this);
}

void MyRegionCompositor::~MyRegionCompositor(MyRegionCompositor *this)
{
  MyRegionCompositor::~MyRegionCompositor(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4D26F0;
  kdu_region_compositor::pre_destroy(this);
  *(this + 536) = 0u;

  kdu_region_compositor::~kdu_region_compositor(this);
}

uint64_t MyRegionCompositor::allocate_buffer(uint64_t a1)
{
  if (*(a1 + 536))
  {
    operator new();
  }

  return 0;
}

uint64_t MyRegionCompositor::delete_buffer(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void kdu_region_compositor::~kdu_region_compositor(kdu_region_compositor *this)
{
  *this = &unk_1EF4D3CC0;
  off_1EF4D3CD0(this);
  jpx_input_box::~jpx_input_box((this + 32));
}

{
  kdu_region_compositor::~kdu_region_compositor(this);

  JUMPOUT(0x186602850);
}

void jpx_input_box::~jpx_input_box(jpx_input_box *this)
{
  *this = &unk_1EF4D3D28;
  off_1EF4D3D38(this);

  jp2_input_box::~jp2_input_box(this);
}

{
  jpx_input_box::~jpx_input_box(this);

  JUMPOUT(0x186602850);
}

void MyCompositorBuf::~MyCompositorBuf(MyCompositorBuf *this)
{
  *(this + 4) = 0;
  *this = &unk_1EF4D27B8;
}

{
  *(this + 4) = 0;
  *this = &unk_1EF4D27B8;
  JUMPOUT(0x186602850);
}

uint64_t kdu_compositor_buf::lock_buf(uint64_t this, char a2)
{
  *(this + 26) = 1;
  *(this + 27) = a2;
  return this;
}

void kdu_compositor_buf::~kdu_compositor_buf(kdu_compositor_buf *this)
{
  *this = &unk_1EF4D27B8;
  v1 = *(this + 4);
  if (v1)
  {
    MEMORY[0x186602830](v1, 0x1000C8077774924);
  }
}

{
  *this = &unk_1EF4D27B8;
  v1 = *(this + 4);
  if (v1)
  {
    MEMORY[0x186602830](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x186602850);
}

double kd_thread_group::get_queue(kd_thread_group *this)
{
  v2 = *(this + 801);
  if (v2)
  {
    v3 = *(v2 + 7);
  }

  else
  {
    v4 = malloc_type_malloc(0x34087uLL, 0x2004093837F09uLL);
    *v4 = *(this + 802);
    *(this + 802) = v4;
    bzero(v4 + 1, 0x3407FuLL);
    v5 = -(v4 + 8) & 0x7F;
    v6 = v4 + v5 + 8;
    v7 = *(this + 801);
    v8 = v5 ^ 0x35A7F;
    v2 = v4 + v5 - 6648;
    do
    {
      v3 = v7;
      *(v2 + 839) = v7;
      v7 = v6;
      v6 += 6656;
      v8 -= 6656;
      v2 += 6656;
    }

    while (v8 >> 10 > 0xC);
  }

  *(this + 801) = v3;
  *(v2 + 7) = 0;
  *(v2 + 2) = this;
  result = NAN;
  *(v2 + 47) = -1;
  *(v2 + 24) = -1;
  return result;
}

double kd_thread_group::release_queues(kd_thread_group *a1, uint64_t a2, char a3)
{
  for (i = *(a2 + 48); i; i = *(a2 + 48))
  {
    *(a2 + 48) = *(i + 4);
    kd_thread_group::release_queues(a1, i, 0);
  }

  if ((a3 & 1) == 0)
  {
    result = 0.0;
    *(a2 + 352) = 0u;
    *(a2 + 368) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 56) = *(a1 + 801);
    *(a1 + 801) = a2;
  }

  return result;
}

kdu_thread_queue *kdu_thread_queue::find_unassigned_job(kdu_thread_queue *this, int a2)
{
  v2 = this;
  v3 = *(this + 27);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = this;
    do
    {
      v8 = *(v7 + 116);
      if (*(v7 + 112) > v5)
      {
        v6 = v7;
        v5 = *(v7 + 112);
      }

      if (v8 < 1)
      {
LABEL_9:
        this = *(v7 + 24);
        if (this)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v9 = (v7 + 132);
        while (1)
        {
          v10 = *v9;
          v9 += 8;
          if (v10 == a2)
          {
            break;
          }

          if (!--v8)
          {
            goto LABEL_9;
          }
        }
      }

      if (*(v7 + 104) < 1)
      {
        if (v6)
        {
          if (v6[25] <= 0)
          {
            kdu_thread_queue::find_unassigned_job();
          }

          return kdu_thread_queue::make_secondary_job_runnable(v6);
        }

        else
        {
          if (*(v7 + 100))
          {
            kdu_thread_queue::find_unassigned_job();
          }

          return 0;
        }
      }

      kdu_thread_queue::make_primary_jobs_runnable(v7);
      this = v2;
LABEL_12:
      v3 = *(this + 27);
      v7 = this;
    }

    while (!v3);
  }

LABEL_21:
  while (v3 > *(this + 22))
  {
    this = *(this + 6);
    if (!this)
    {
      goto LABEL_32;
    }

    v11 = 0;
    do
    {
      v3 = *(this + 27);
      if (v3 >= 1)
      {
        v11 = this;
        if (!*(this + 19))
        {
          goto LABEL_21;
        }
      }

      this = *(this + 4);
    }

    while (this);
    if (!v11)
    {
LABEL_32:
      kdu_thread_queue::find_unassigned_job();
    }

    v3 = *(v11 + 27);
    this = v11;
  }

  return this;
}

uint64_t kdu_thread_queue::make_primary_jobs_runnable(uint64_t this)
{
  v1 = this;
  v2 = *(this + 84);
  if (*(this + 104) > v2)
  {
    v3 = *(this + 48);
    if (v3)
    {
      do
      {
        if (*(v3 + 104) >= 1)
        {
          this = kdu_thread_queue::make_primary_jobs_runnable(v3);
        }

        v3 = *(v3 + 32);
      }

      while (v3);
      v2 = v1[21];
    }
  }

  if (v2 >= 1)
  {
    v4 = v1[22] + v2;
    v1[21] = 0;
    v1[22] = v4;
    v5 = v1;
    do
    {
      v6 = v5[27] + v2;
      v5[26] -= v2;
      v5[27] = v6;
      v5 = *(v5 + 3);
    }

    while (v5);
  }

  if (v1[26])
  {
    kdu_thread_queue::make_primary_jobs_runnable();
  }

  return this;
}

kdu_thread_queue *kdu_thread_queue::make_secondary_job_runnable(kdu_thread_queue *this)
{
  v1 = *(this + 25);
  if (v1 < 1 || (v2 = this, !*(this + 28)) || *(this + 27) || *(this + 26))
  {
    kdu_thread_queue::make_secondary_job_runnable();
  }

  if (v1 == *(this + 20))
  {
    if (!*(this + 18))
    {
      kdu_thread_queue::make_secondary_job_runnable();
    }

    v3 = *(this + 22) + 1;
    *(this + 22) = v3;
    if (v3 == v1)
    {
      *(this + 18) = 0;
    }

    v4 = this;
    do
    {
      v5 = *(v4 + 26);
      v6 = *(v4 + 27) + 1;
      *(v4 + 27) = v6;
      if (v5 + v6 == *(v4 + 25))
      {
        *(v4 + 28) = 0;
      }

      v4 = *(v4 + 3);
    }

    while (v4);
  }

  else
  {
    v7 = *(this + 6);
    if (!v7)
    {
      goto LABEL_56;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(v7 + 112);
      if (v11)
      {
        if (*(v7 + 100))
        {
          if (*(v7 + 108) || *(v7 + 104) || *(v7 + 88) || *(v7 + 84))
          {
            kdu_thread_queue::make_secondary_job_runnable();
          }

          if (v11 <= v9)
          {
            v12 = v9;
          }

          else
          {
            v12 = *(v7 + 112);
          }

          if (v8)
          {
            v13 = v10;
          }

          else
          {
            v13 = *(v7 + 112);
          }

          if (v8)
          {
            v14 = v8;
          }

          else
          {
            v12 = v10;
            v14 = v7;
          }

          v15 = v11 > v10;
          if (v11 <= v10)
          {
            v9 = v12;
          }

          else
          {
            v9 = v10;
          }

          if (v11 <= v10)
          {
            v10 = v13;
          }

          else
          {
            v10 = *(v7 + 112);
          }

          if (v15)
          {
            v8 = v7;
          }

          else
          {
            v8 = v14;
          }
        }

        else
        {
          *(v7 + 112) = 0;
        }
      }

      v7 = *(v7 + 32);
    }

    while (v7);
    if (!v8)
    {
LABEL_56:
      kdu_thread_queue::make_secondary_job_runnable();
    }

    secondary_job_runnable = kdu_thread_queue::make_secondary_job_runnable(v8);
    v17 = *(v8 + 28);
    if (v9 > v17)
    {
      v17 = v9;
    }

    v18 = *(v2 + 18);
    if (v18)
    {
      if (*(v2 + 20) <= *(v2 + 21) + *(v2 + 22))
      {
        kdu_thread_queue::make_secondary_job_runnable();
      }

      if (v18 > v17)
      {
        v17 = *(v2 + 18);
      }
    }

    *(v2 + 28) = v17;
    v2 = secondary_job_runnable;
    if (!secondary_job_runnable)
    {
      kdu_thread_queue::make_secondary_job_runnable();
    }
  }

  return v2;
}

uint64_t kdu_thread_queue::make_subtree_jobs_runnable(uint64_t this)
{
  v1 = this;
  v2 = *(this + 80);
  v3 = *(this + 88);
  v4 = v2 - v3;
  if (*(this + 100) - *(this + 108) > v2 - v3)
  {
    v5 = *(this + 48);
    if (v5)
    {
      do
      {
        if (*(v5 + 100) > *(v5 + 108))
        {
          this = kdu_thread_queue::make_subtree_jobs_runnable(v5);
        }

        v5 = *(v5 + 32);
      }

      while (v5);
      v2 = v1[20];
      v3 = v1[22];
      v4 = v2 - v3;
    }
  }

  if (v4 >= 1)
  {
    v6 = v1[21];
    v1[21] = 0;
    v1[22] = v2;
    v7 = v1;
    v1[18] = 0;
    do
    {
      v8 = v7[27] + v4;
      v9 = v7[25];
      v10 = v7[26] - v6;
      v7[26] = v10;
      v7[27] = v8;
      if (v10 + v8 == v9)
      {
        v7[28] = 0;
      }

      v7 = *(v7 + 3);
    }

    while (v7);
    v3 = v2;
  }

  v11 = v1[27] == v1[25] && v3 == v2;
  if (!v11 || v1[26])
  {
    kdu_thread_queue::make_subtree_jobs_runnable();
  }

  return this;
}

uint64_t kdu_thread_queue::install_synchronization_point(kdu_thread_queue *this, kdu_worker *a2, char a3, int a4)
{
  if (*(this + 27) < *(this + 25))
  {
    kdu_thread_queue::make_subtree_jobs_runnable(this);
  }

  v8 = *(this + 29);
  if (v8 >= 8)
  {
    kdu_thread_queue::install_synchronization_point();
  }

  v9 = this + 32 * v8;
  *(this + 29) = v8 + 1;
  v11 = *(this + 19);
  v10 = *(this + 20);
  *(v9 + 30) = v10 + *(this + 23);
  v12 = v9 + 120;
  *(v12 + 4) = (v11 + v10);
  *(v12 + 3) = a4;
  *(v12 + 2) = a2;
  v12[24] = a3;
  v12[25] = 0;
  result = 1;
  if (!v8 && v11 + v10 <= 0)
  {
    v14 = *(this + 6);
    if (!v14)
    {
      goto LABEL_12;
    }

    do
    {
      if (kdu_thread_queue::install_synchronization_point(v14, 0, 0, -1))
      {
        ++*(v12 + 2);
      }

      v14 = *(v14 + 4);
    }

    while (v14);
    if (*(v12 + 2) > 0)
    {
      return 1;
    }

    else
    {
LABEL_12:
      result = 0;
      *(this + 29) = 0;
    }
  }

  return result;
}

BOOL kdu_event::set(kdu_event *this)
{
  v1 = 1;
  if ((*(this + 48) & 1) == 0)
  {
    *(this + 48) = 1;
    if (*(this + 49) == 1)
    {
      v2 = pthread_cond_broadcast(this);
    }

    else
    {
      v2 = pthread_cond_signal(this);
    }

    return v2 == 0;
  }

  return v1;
}

uint64_t kdu_thread_entity::terminate(kdu_thread_entity *this, kdu_thread_queue *a2, char a3, int *a4)
{
  v6 = a2;
  kdu_thread_entity::synchronize(this, a2);
  v8 = *(this + 5);
  v9 = *v8;
  if (a4 && *v8)
  {
    *a4 = *(v8 + 1);
  }

  if (!v6)
  {
    v10 = *(this + 4);
    if (!*(v10 + 1224))
    {
      return v9 ^ 1u;
    }

    v6 = (v10 + 1176);
    a3 = 1;
  }

  if (*(v6 + 20) != *(v6 + 25))
  {
    kdu_thread_entity::terminate();
  }

  v11 = *(this + 4);
  if (*(v11 + 2160) == 1)
  {
    pthread_mutex_lock((v11 + 2096));
    v11 = *(this + 4);
  }

  v12 = *(v11 + 128);
  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      v14 = *(v11 + 136 + 8 * i);
      v15 = *(v14 + 64);
      if (v15 == v6)
      {
        v16 = a3;
      }

      else
      {
        v16 = 0;
      }

      if (v15 && (v16 & 1) == 0)
      {
        if (v15 == v6)
        {
          goto LABEL_24;
        }

        do
        {
          v15 = *(v15 + 3);
          if (v15)
          {
            v17 = v15 == v6;
          }

          else
          {
            v17 = 1;
          }
        }

        while (!v17);
        if (v15)
        {
LABEL_24:
          *(v14 + 64) = 0;
        }
      }
    }
  }

  if ((a3 & 1) == 0)
  {
    if (*(v6 + 20))
    {
      kdu_thread_entity::terminate();
    }

    v18 = *(v6 + 5);
    if (!v18)
    {
      v30 = *(v6 + 3);
      if (*(v30 + 48) != v6)
      {
        kdu_thread_entity::terminate();
      }

      v19 = *(v6 + 4);
      *(v30 + 48) = v19;
      if (!v19)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v19 = *(v6 + 4);
    *(v18 + 32) = v19;
    if (v19)
    {
LABEL_30:
      *(v19 + 40) = v18;
    }
  }

LABEL_31:
  if (*(v11 + 2160) == 1)
  {
    pthread_mutex_unlock((v11 + 2096));
    v11 = *(this + 4);
  }

  v20 = kd_thread_group::release_queues(v11, v6, a3);
  v21 = *(this + 4);
  if (!*(v21 + 1224))
  {
    if (*(this + 2) || *(v21 + 1168))
    {
      kdu_thread_entity::terminate();
    }

    (*(*this + 56))(this, **(this + 5), v20);
    v22 = 1;
    *(this + 72) = 1;
    v23 = *(this + 4);
    if (*(v23 + 2160) == 1)
    {
      pthread_mutex_lock((v23 + 2096));
      v23 = *(this + 4);
    }

    *(v23 + 1168) = 1;
    *(v23 + 2088) = 1;
    LODWORD(v24) = *(v23 + 128);
    if (v24 >= 2)
    {
      v25 = 1;
      v26 = 2224;
      do
      {
        kdu_event::set((v23 + v26));
        ++v25;
        v23 = *(this + 4);
        v24 = *(v23 + 128);
        v26 += 56;
      }

      while (v25 < v24);
      v22 = *(v23 + 1168);
    }

    if (v22 < v24)
    {
      do
      {
        kdu_event::wait((v23 + 2168), (v23 + 2096));
        v23 = *(this + 4);
        LODWORD(v24) = *(v23 + 128);
      }

      while (*(v23 + 1168) < v24);
    }

    if (*(v23 + 1560))
    {
      kdu_thread_entity::terminate();
    }

    *(v23 + 2088) = 0;
    *(v23 + 1168) = 0;
    if (v24 >= 1)
    {
      v27 = v23 + 136;
      v24 = v24;
      do
      {
        if ((*(*v27 + 72) & 1) == 0)
        {
          kdu_thread_entity::terminate();
        }

        *(*v27 + 72) = 0;
        v27 += 8;
        --v24;
      }

      while (v24);
    }

    v28 = *(this + 5);
    *v28 = 0;
    *(v28 + 4) = -1;
    if (*(v23 + 2160) == 1)
    {
      pthread_mutex_unlock((v23 + 2096));
    }
  }

  return v9 ^ 1u;
}

uint64_t kdu_thread_entity::get_num_threads(kdu_thread_entity *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    return *(v1 + 128);
  }

  else
  {
    return 0;
  }
}

uint64_t kdu_thread_entity::add_queue(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    return 0;
  }

  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v5 + 1176;
  }

  kd_thread_group::get_queue(v5);
  v10 = v9;
  *v9 = *v8 + 1;
  *(v9 + 8) = a4;
  *(v9 + 64) = a2;
  *(v9 + 24) = v8;
  v11 = *(a1 + 32);
  if (*(v11 + 2160) == 1)
  {
    pthread_mutex_lock((v11 + 2096));
  }

  v12 = *(v8 + 6);
  *(v10 + 32) = v12;
  if (v12)
  {
    *(v12 + 40) = v10;
  }

  *(v8 + 6) = v10;
  v13 = *(a1 + 32);
  if (*(v13 + 2160) == 1)
  {
    pthread_mutex_unlock((v13 + 2096));
  }

  return v10;
}

uint64_t kdu_thread_entity::add_jobs(uint64_t this, kdu_thread_queue *a2, int a3, int a4)
{
  if (a3 < 0)
  {
    kdu_thread_entity::add_jobs();
  }

  v7 = this;
  v8 = *(this + 32);
  if (*(v8 + 2160) == 1)
  {
    this = pthread_mutex_lock((v8 + 2096));
  }

  if (**(v7 + 40) == 1)
  {
    kdu_mutex::unlock((*(v7 + 32) + 2096));
    exception = __cxa_allocate_exception(4uLL);
    *exception = *(*(v7 + 40) + 4);
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v9 = *(a2 + 20);
  v10 = *(a2 + 21);
  v11 = *(a2 + 22);
  v12 = v9 - (v10 + v11);
  if (v12 < 0)
  {
    kdu_thread_entity::add_jobs();
  }

  if (!(v12 | a3))
  {
    v18 = *(v7 + 32);
    if ((*(v18 + 2160) & 1) == 0)
    {
      return this;
    }

    goto LABEL_64;
  }

  if (a4)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0;
  }

  if (a4)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  v15 = v12 + v14;
  v16 = v9 + a3;
  v17 = v12 + v14 + v10;
  *(a2 + 20) = v16;
  *(a2 + 21) = v17;
  v18 = *(v7 + 32);
  v19 = *(v18 + 648);
  if (v19 < 1 || v16 < 1)
  {
    v21 = 0;
    if (!v13)
    {
LABEL_31:
      if (v17 + v11 != v16)
      {
        kdu_thread_entity::add_jobs();
      }

      *(a2 + 18) = 0;
      v26 = a2;
      do
      {
        v27 = *(v26 + 25) + a3;
        v28 = *(v26 + 26) + v15;
        *(v26 + 25) = v27;
        *(v26 + 26) = v28;
        v29 = *(v26 + 27) + v21;
        *(v26 + 27) = v29;
        if (v29 + v28 == v27)
        {
          *(v26 + 28) = 0;
        }

        v26 = *(v26 + 3);
      }

      while (v26);
      goto LABEL_36;
    }
  }

  else
  {
    *(a2 + 21) = 0;
    if (!v17)
    {
      if (!v13)
      {
        kdu_thread_entity::add_jobs();
      }

      --v13;
      v17 = 1;
    }

    v21 = v17;
    v15 = -v10;
    v11 += v17;
    *(a2 + 22) = v11;
    v17 = 0;
    if (!v13)
    {
      goto LABEL_31;
    }
  }

  if (!a4)
  {
    kdu_thread_entity::add_jobs();
  }

  v22 = -a4;
  *(a2 + 18) = v22;
  v23 = a2;
  do
  {
    v24 = *(v23 + 26) + v15;
    *(v23 + 25) += a3;
    *(v23 + 26) = v24;
    v25 = *(v23 + 28);
    *(v23 + 27) += v21;
    if (v25 < v22)
    {
      *(v23 + 28) = v22;
      v25 = v22;
    }

    v23 = *(v23 + 3);
    v22 = v25;
  }

  while (v23);
LABEL_36:
  if (v19 >= 1)
  {
    v30 = v11 - 1;
    if (v11 >= 1 && !*(a2 + 19) && (*(a2 + 24) & 0x80000000) != 0)
    {
      v31 = *(v18 + 128);
      if (v31 < 1)
      {
        goto LABEL_72;
      }

      v32 = 0;
      v33 = v18 + 656;
      v34 = v18 + 136;
      v35 = -1;
      v36 = 0x7FFFFFFF;
      do
      {
        if (!*(v33 + 8 * v32))
        {
          v37 = *(*(v34 + 8 * v32) + 64);
          if (v37)
          {
            v38 = *v37;
            v39 = *a2;
            if (*a2 <= *v37)
            {
              v40 = 0;
              v41 = a2;
            }

            else
            {
              v40 = 0;
              v41 = a2;
              do
              {
                ++v40;
                v41 = *(v41 + 3);
                v39 = *v41;
              }

              while (*v41 > v38);
            }

            while (v38 > v39)
            {
              ++v40;
              v37 = *(v37 + 3);
              v38 = *v37;
            }

            while (v41 != v37)
            {
              v40 += 2;
              v41 = *(v41 + 3);
              v37 = *(v37 + 3);
            }
          }

          else
          {
            v40 = 0;
          }

          if (v40 < v36)
          {
            v35 = v32;
            v36 = v40;
          }
        }

        ++v32;
      }

      while (v32 != v31);
      if (v35 < 1 || *(v33 + 8 * v35))
      {
LABEL_72:
        kdu_thread_entity::add_jobs();
      }

      *(a2 + 19) = 1;
      *(a2 + 20) = v16 - 1;
      *(a2 + 22) = v30;
      v42 = a2;
      do
      {
        --*(v42 + 25);
        --*(v42 + 27);
        v42 = *(v42 + 3);
      }

      while (v42);
      v43 = *(a2 + 23);
      *(a2 + 23) = v43 + 1;
      *(a2 + 24) = v43;
      *(v33 + 8 * v35) = a2;
      v44 = *(v7 + 32);
      --*(v44 + 648);
      this = kdu_event::set((v44 + 56 * v35 + 2168));
      v18 = *(v7 + 32);
    }
  }

  if (*(v18 + 2160) == 1)
  {
LABEL_64:

    return pthread_mutex_unlock((v18 + 2096));
  }

  return this;
}

uint64_t kdu_thread_entity::synchronize(kdu_thread_entity *this, kdu_thread_queue *a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    if (*(v2 + 5752) >= 1)
    {
      v5 = 0;
      v6 = 72;
      do
      {
        if (*(*(v2 + 5760) + v6) == this)
        {
          (*(*this + 32))(this, 0);
          v2 = *(this + 4);
        }

        ++v5;
        v6 += 80;
      }

      while (v5 < *(v2 + 5752));
    }

    if (!a2)
    {
      if (!*(v2 + 1224))
      {
LABEL_32:
        v17 = **(this + 5) ^ 1;
        return v17 & 1;
      }

      a2 = (v2 + 1176);
    }

    if (*(v2 + 2160) == 1)
    {
      pthread_mutex_lock((v2 + 2096));
    }

    if (!*(a2 + 6) && *(a2 + 20) + *(a2 + 23))
    {
      kdu_thread_entity::synchronize();
    }

    if (kdu_thread_queue::install_synchronization_point(a2, 0, 0, *(this + 2)))
    {
      v7 = *(this + 4);
      if (*(v7 + 2160) == 1)
      {
        pthread_mutex_unlock((v7 + 2096));
      }

      v8 = kdu_thread_entity::process_jobs(this, a2, 1, 0);
      v9 = *(this + 4);
      if (*(v9 + 2160) == 1)
      {
        pthread_mutex_lock((v9 + 2096));
      }

      v10 = *(a2 + 29);
      if (v8)
      {
        if (v10 < 1 || (v11 = *(a2 + 33), v11 != *(this + 2)) || !kdu_thread_queue::check_condition(a2, 1, v11))
        {
          kdu_thread_entity::synchronize();
        }

        v12 = *(a2 + 29);
        v13 = v12 - 1;
        *(a2 + 29) = v12 - 1;
        if (v12 >= 2)
        {
          v14 = 0;
          v15 = (a2 + 152);
          do
          {
            ++v14;
            v16 = v15[1];
            *(v15 - 2) = *v15;
            *(v15 - 1) = v16;
            v15 += 2;
          }

          while (v14 < v13);
          kdu_thread_entity::process_outstanding_sync_points(this, a2);
        }
      }

      else if (v10 && *(a2 + 33) == *(this + 2))
      {
        kdu_thread_entity::synchronize();
      }
    }

    v18 = *(this + 4);
    if (*(v18 + 2160) == 1)
    {
      pthread_mutex_unlock((v18 + 2096));
    }

    goto LABEL_32;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t kdu_thread_entity::process_jobs(kdu_thread_entity *this, kdu_thread_queue *a2, int a3, int a4)
{
  v8 = *(this + 4);
  if (!a2 && v8 && !*(this + 2))
  {
    kdu_thread_entity::process_jobs();
  }

  if (*(v8 + 2160) == 1)
  {
    pthread_mutex_lock((v8 + 2096));
  }

  if (a2)
  {
    if ((a3 & 1) == 0)
    {
      v9 = *(a2 + 21);
      if (v9 >= 1)
      {
        v10 = *(a2 + 22) + v9;
        *(a2 + 21) = 0;
        *(a2 + 22) = v10;
        v11 = a2;
        do
        {
          v12 = *(v11 + 27) + v9;
          *(v11 + 26) -= v9;
          *(v11 + 27) = v12;
          v11 = *(v11 + 3);
        }

        while (v11);
      }
    }
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = v13 ? v13 : a2;
    if (!v15)
    {
      v15 = *(this + 8);
      if (!v15)
      {
        break;
      }
    }

    if (!v14)
    {
      goto LABEL_64;
    }

LABEL_18:
    if (**(this + 5) == 1 && (a4 & 1) != 0)
    {
LABEL_179:
      kdu_mutex::unlock((*(this + 4) + 2096));
      goto LABEL_180;
    }

    if (a2 || (v24 = *(this + 4), v25 = *(v24 + 1560), v25 < 1) || *(v24 + 8 * *(this + 2) + 656) != 1)
    {
      if (!v14)
      {
        goto LABEL_156;
      }

      v16 = *(this + 4);
      v17 = *(this + 2);
      if (*(v16 + 656 + 8 * v17) == v14)
      {
        v23 = *(v14 + 24);
        if (v23 < 0)
        {
          kdu_thread_entity::process_jobs();
        }

        *(v14 + 24) = -1;
        *(v16 + 656 + 8 * v17) = 1;
        v16 = *(this + 4);
      }

      else
      {
        v18 = *(v14 + 20);
        v19 = __OFSUB__(v18, 1);
        v20 = v18 - 1;
        if (v20 < 0 != v19 || (v21 = *(v14 + 22), v21 <= 0))
        {
          kdu_thread_entity::process_jobs();
        }

        *(v14 + 20) = v20;
        *(v14 + 22) = v21 - 1;
        v22 = v14;
        do
        {
          --*(v22 + 25);
          --*(v22 + 27);
          v22 = *(v22 + 3);
        }

        while (v22);
        ++*(v14 + 19);
        v23 = *(v14 + 23);
        *(v14 + 23) = v23 + 1;
      }

      if (*(v16 + 2160) == 1)
      {
        pthread_mutex_unlock((v16 + 2096));
      }

      (*(**(v14 + 8) + 16))();
      v28 = *(this + 4);
      if (*(v28 + 2160) == 1)
      {
        pthread_mutex_lock((v28 + 2096));
      }

      v29 = *(v14 + 19);
      if (**(this + 5) == 1)
      {
        if (v29)
        {
          kdu_thread_entity::process_jobs();
        }

LABEL_41:
        v13 = 0;
        v14 = 0;
        if (a4)
        {
          goto LABEL_179;
        }
      }

      else
      {
        if (v29 <= 0)
        {
          kdu_thread_entity::process_jobs();
        }

        if (*(v14 + 6))
        {
          goto LABEL_45;
        }

        v52 = *(v14 + 3);
        if (!v52 || !*(v52 + 108))
        {
          goto LABEL_45;
        }

        if (*(v14 + 29) < 1)
        {
          goto LABEL_102;
        }

        v53 = *(v14 + 30);
        if (v23 >= v53)
        {
          goto LABEL_102;
        }

        if (*(v52 + 116) < 1 || *(v52 + 128) <= 0)
        {
          kdu_thread_entity::process_jobs();
        }

        if (*(v14 + 22) > 0)
        {
          if (*(v14 + 23) >= v53)
          {
LABEL_45:
            if (((*(*this + 48))(this) & 1) == 0)
            {
              v32 = 0;
              v29 = *(v14 + 19);
              goto LABEL_103;
            }

            v30 = *(this + 4);
            if (*(v30 + 2160) == 1)
            {
              pthread_mutex_unlock((v30 + 2096));
            }

            (*(*this + 40))(this, **(this + 5));
            v31 = *(this + 4);
            if (*(v31 + 2160) == 1)
            {
              pthread_mutex_lock((v31 + 2096));
            }

            v29 = *(v14 + 19);
            if (**(this + 5) == 1)
            {
              if (v29)
              {
                kdu_thread_entity::process_jobs();
              }

              goto LABEL_41;
            }
          }

LABEL_102:
          v32 = 0;
          goto LABEL_103;
        }

        v32 = *(v52 + 48);
        if (!v32)
        {
          goto LABEL_45;
        }

        while (*(v32 + 29) < 1 || *(v32 + 22) < 1 || *(v32 + 23) >= *(v32 + 30))
        {
          v32 = *(v32 + 4);
          if (!v32)
          {
            goto LABEL_45;
          }
        }

LABEL_103:
        *(v14 + 19) = v29 - 1;
        if (*(v14 + 29) >= 1)
        {
          v54 = 0;
          do
          {
            v55 = (v14 + 32 * v54 + 120);
            if (v23 < *v55)
            {
              v56 = v55[1];
              if (v56 <= 0)
              {
                kdu_thread_entity::process_jobs();
              }

              v57 = v56 - 1;
              v55[1] = v57;
              if (!v54)
              {
                if (v57)
                {
                  goto LABEL_109;
                }

                if (v55[2])
                {
                  kdu_thread_entity::process_jobs();
                }

                v58 = *(v14 + 6);
                if (!v58)
                {
                  goto LABEL_116;
                }

                do
                {
                  if (kdu_thread_queue::install_synchronization_point(v58, 0, 0, -1))
                  {
                    ++v55[2];
                  }

                  v58 = *(v58 + 4);
                }

                while (v58);
                if (v55[2])
                {
LABEL_109:
                  v54 = 0;
                }

                else
                {
LABEL_116:
                  v54 = (kdu_thread_entity::process_outstanding_sync_points(this, v14) << 31) >> 31;
                }
              }
            }

            ++v54;
          }

          while (v54 < *(v14 + 29));
        }

        v59 = *(v14 + 95);
        if ((v59 & 0x80000000) == 0)
        {
          if (*(v14 + 21))
          {
            kdu_thread_entity::process_jobs();
          }

          if (!(*(v14 + 22) + *(v14 + 19)))
          {
            if (v59 == *(this + 2))
            {
              kdu_thread_entity::process_jobs();
            }

            kdu_event::set((*(this + 4) + 56 * v59 + 2168));
          }
        }

        if (a2 && kdu_thread_queue::check_condition(a2, a3, *(this + 2)))
        {
          if (v32)
          {
            kdu_thread_entity::process_jobs();
          }

          goto LABEL_156;
        }

        if (!v32)
        {
          if (*(v14 + 22) <= 0)
          {
            v32 = 0;
          }

          else
          {
            v32 = v14;
          }
        }

        *(this + 8) = v14;
        v13 = v14;
        v14 = v32;
      }
    }

    else
    {
      if (*(v24 + 128) <= 1)
      {
        kdu_thread_entity::process_jobs();
      }

      v26 = *(v24 + 1568);
      if (v25 == 1)
      {
        v27 = 0;
      }

      else
      {
        v60 = 0;
        do
        {
          *(v24 + 8 * v60 + 1568) = *(v24 + 8 * v60 + 1576);
          v24 = *(this + 4);
          v61 = *(v24 + 1560);
          v62 = v60 + 2;
          ++v60;
        }

        while (v62 < v61);
        v27 = v61 - 1;
      }

      *(v24 + 1560) = v27;
      if (*(v24 + 2160) == 1)
      {
        pthread_mutex_unlock((v24 + 2096));
      }

      if ((*(*this + 48))(this))
      {
        (*(*this + 40))(this, **(this + 5));
      }

      (*(*v26 + 16))(v26, this, 0xFFFFFFFFLL);
      v13 = 0;
      v14 = 0;
      v63 = *(this + 4);
      if (*(v63 + 2160) == 1)
      {
        pthread_mutex_lock((v63 + 2096));
        v13 = 0;
        v14 = 0;
      }
    }
  }

  v15 = (*(this + 4) + 1176);
  if (v14)
  {
    goto LABEL_18;
  }

  while (1)
  {
LABEL_64:
    if (!a2)
    {
      if (*(*(this + 4) + 1560))
      {
        v14 = 0;
        goto LABEL_18;
      }

      goto LABEL_68;
    }

    if (kdu_thread_queue::check_condition(a2, a3, *(this + 2)))
    {
      break;
    }

LABEL_68:
    unassigned_job = kdu_thread_queue::find_unassigned_job(v15, *(this + 2));
    if (unassigned_job)
    {
      v14 = unassigned_job;
      goto LABEL_18;
    }

    v37 = *(this + 4);
    if ((*(v37 + 2089) & 1) != 0 || ((v33 = **(this + 5), v33 == 1) ? (v38 = a4 == 0) : (v38 = 1), !v38))
    {
      if (*(v37 + 2160) == 1)
      {
        pthread_mutex_unlock((v37 + 2096));
      }

      if (!a4)
      {
        return 0;
      }

LABEL_180:
      exception = __cxa_allocate_exception(4uLL);
      *exception = *(*(this + 5) + 4);
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }

    if (a2)
    {
      if (a3)
      {
        if (*(a2 + 29) < 1 || (v39 = *(a2 + 33), v39 != *(this + 2)))
        {
          kdu_thread_entity::process_jobs();
        }

        *(a2 + 94) = v39;
        v40 = v37 + 56 * v39;
        *(v40 + 2216) = 0;
        kdu_event::wait((v40 + 2168), (v37 + 2096));
        *(a2 + 94) = -1;
      }

      else
      {
        v50 = *(this + 2);
        *(a2 + 95) = v50;
        v51 = v37 + 56 * v50;
        *(v51 + 2216) = 0;
        kdu_event::wait((v51 + 2168), (v37 + 2096));
        *(a2 + 95) = -1;
      }
    }

    else if (*(v37 + 2088) == 1 && (*(this + 72) & 1) == 0)
    {
      if (*(v37 + 2160) == 1)
      {
        pthread_mutex_unlock((v37 + 2096));
        LOBYTE(v33) = **(this + 5);
      }

      (*(*this + 56))(this, v33 & 1);
      v34 = *(this + 4);
      if (*(v34 + 2160) == 1)
      {
        pthread_mutex_lock((v34 + 2096));
        v34 = *(this + 4);
      }

      *(this + 72) = 1;
      v35 = *(v34 + 1168) + 1;
      *(v34 + 1168) = v35;
      if (v35 == *(v34 + 128))
      {
        kdu_event::set((v34 + 2168));
        v34 = *(this + 4);
      }

      v15 = (v34 + 1176);
    }

    else
    {
      v41 = *(this + 2);
      if (!v41)
      {
        kdu_thread_entity::process_jobs();
      }

      if (!*(v37 + 656 + 8 * v41))
      {
        kdu_thread_entity::process_jobs();
      }

      ++*(v37 + 648);
      *(v37 + 656 + 8 * v41) = 0;
      v42 = *(this + 4);
      v43 = v42 + 56 * v41;
      *(v43 + 2216) = 0;
      kdu_event::wait((v43 + 2168), (v42 + 2096));
      v44 = *(this + 4);
      v45 = v44 + 656;
      v46 = *(this + 2);
      v14 = *(v44 + 656 + 8 * v46);
      if (v14)
      {
        if (v14 == 1)
        {
          kdu_thread_entity::process_jobs();
        }

        if (v14 != (v44 + 1176))
        {
          if ((*(v14 + 24) & 0x80000000) != 0)
          {
            kdu_thread_entity::process_jobs();
          }

          goto LABEL_18;
        }

        *(v45 + 8 * v46) = 1;
      }

      else
      {
        if (*(v44 + 648) <= 0)
        {
          kdu_thread_entity::process_jobs();
        }

        *(v45 + 8 * v46) = 1;
        v47 = *(this + 4);
        --*(v47 + 648);
        v48 = *(v47 + 2088);
        v49 = (v47 + 1176);
        if (v48)
        {
          v15 = v49;
        }
      }
    }
  }

  if (**(this + 5) == 1 && a4 != 0)
  {
    goto LABEL_179;
  }

LABEL_156:
  v66 = *(this + 4);
  if (*(v66 + 2160) == 1)
  {
    pthread_mutex_unlock((v66 + 2096));
  }

  if ((*(*this + 48))(this))
  {
    (*(*this + 40))(this, **(this + 5));
  }

  return 1;
}

BOOL kdu_thread_queue::check_condition(kdu_thread_queue *this, int a2, int a3)
{
  if (a2)
  {
    if (*(this + 29) <= 0)
    {
      kdu_thread_queue::check_condition();
    }

    if (*(this + 33) != a3 || *(this + 31))
    {
      return 0;
    }

    return *(this + 32) == 0;
  }

  else
  {
    if (*(this + 21))
    {
      kdu_thread_entity::process_jobs();
    }

    return *(this + 22) + *(this + 19) == 0;
  }
}

uint64_t kdu_thread_entity::process_outstanding_sync_points(kdu_thread_entity *this, kdu_thread_queue *a2)
{
  v2 = *(a2 + 29);
  if (v2 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    while (*(a2 + 31) <= 0 && *(a2 + 32) <= 0)
    {
      v6 = *(a2 + 33);
      v7 = *(a2 + 17);
      if ((v6 & 0x80000000) == 0)
      {
        if (v7)
        {
          kdu_thread_entity::process_outstanding_sync_points();
        }

        if (v6 == *(a2 + 94))
        {
          kdu_event::set((*(this + 4) + 56 * v6 + 2168));
        }

        return v5 & 1;
      }

      if (v7)
      {
        if (*(a2 + 145))
        {
          return v5 & 1;
        }

        v8 = *(this + 4);
        if (*(a2 + 144) == 1 && *(v8 + 128) >= 2 && (v9 = *(v8 + 1560), v9 <= 63))
        {
          *(v8 + 1560) = v9 + 1;
          *(v8 + 8 * v9 + 1568) = v7;
          v10 = *(this + 4);
          v11 = *(v10 + 648);
          v12 = __OFSUB__(v11, 1);
          v13 = v11 - 1;
          if (v13 < 0 == v12)
          {
            v14 = *(v10 + 128);
            if (v14 < 2)
            {
LABEL_44:
              kdu_thread_entity::process_outstanding_sync_points();
            }

            v15 = (v10 + 664);
            v16 = 56 * v14;
            v17 = -2224;
            while (*v15)
            {
              v17 -= 56;
              ++v15;
              if (v16 + v17 == -2168)
              {
                goto LABEL_44;
              }
            }

            *(v10 + 648) = v13;
            *v15 = v10 + 1176;
            kdu_event::set((*(this + 4) - v17));
          }
        }

        else
        {
          *(a2 + 145) = 1;
          if (*(v8 + 2160) == 1)
          {
            pthread_mutex_unlock((v8 + 2096));
            v7 = *(a2 + 17);
          }

          (*(*v7 + 16))(v7, this, 0xFFFFFFFFLL);
          if ((*(*this + 48))(this))
          {
            (*(*this + 40))(this, **(this + 5));
          }

          v18 = *(this + 4);
          if (*(v18 + 2160) == 1)
          {
            pthread_mutex_lock((v18 + 2096));
          }

          *(a2 + 145) = 0;
        }

        v19 = 0;
        *(a2 + 17) = 0;
        v2 = *(a2 + 29);
      }

      else
      {
        v19 = *(a2 + 3) != 0;
      }

      v20 = v2--;
      *(a2 + 29) = v2;
      if (v20 >= 2)
      {
        memmove(a2 + 120, a2 + 152, 32 * v2);
      }

      if (v19)
      {
        v21 = *(a2 + 3);
        if (v21[29] < 1 || (v22 = v21[32], v22 < 1) || v21[31])
        {
          kdu_thread_entity::process_outstanding_sync_points();
        }

        v23 = v22 - 1;
        v21[32] = v23;
        if (!v23)
        {
          kdu_thread_entity::process_outstanding_sync_points(this, v21);
          v2 = *(a2 + 29);
        }
      }

      v5 = 1;
      if (v2 <= 0)
      {
        return v5 & 1;
      }
    }
  }

  return v5 & 1;
}

uint64_t kdu_event::wait(pthread_cond_t *this, pthread_mutex_t *a2)
{
  if (this[1].__sig)
  {
    return 1;
  }

  while (BYTE2(this[1].__sig) == 1 && !pthread_cond_wait(this, a2))
  {
    if (LOBYTE(this[1].__sig) == 1)
    {
      result = 1;
      goto LABEL_8;
    }
  }

  result = 0;
LABEL_8:
  if ((this[1].__sig & 0x100) == 0)
  {
    LOBYTE(this[1].__sig) = 0;
  }

  return result;
}

void kdu_channel_mapping::kdu_channel_mapping(kdu_channel_mapping *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  kdu_channel_mapping::clear(this);
}

j2_colour_converter *kdu_channel_mapping::clear(kdu_channel_mapping *this)
{
  if (*(this + 5))
  {
    v2 = *this;
    if (*this < 1)
    {
      goto LABEL_8;
    }

    v3 = 0;
    do
    {
      v4 = *(*(this + 5) + 8 * v3);
      if (v4)
      {
        MEMORY[0x186602830](v4, 0x1000C80BDFB0063);
        v2 = *this;
      }

      ++v3;
    }

    while (v3 < v2);
    if (*(this + 5))
    {
LABEL_8:
      MEMORY[0x186602830]();
    }
  }

  *(this + 5) = 0;
  v5 = *(this + 1);
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x1000C8052888210);
  }

  *(this + 1) = 0;
  v6 = *(this + 2);
  if (v6)
  {
    MEMORY[0x186602830](v6, 0x1000C8052888210);
  }

  *(this + 2) = 0;
  v7 = *(this + 3);
  if (v7)
  {
    MEMORY[0x186602830](v7, 0x1000C8077774924);
  }

  *(this + 3) = 0;
  *this = 0;
  *(this + 8) = 0;

  return jp2_colour_converter::clear(this + 6);
}

_DWORD *kdu_channel_mapping::set_num_channels(_DWORD *this, int a2)
{
  if (a2 < 0)
  {
    kdu_channel_mapping::set_num_channels();
  }

  if (*this < a2)
  {
    operator new[]();
  }

  *this = a2;
  return this;
}

uint64_t kdu_channel_mapping::configure(kdu_channel_mapping *a1, kd_codestream *a2)
{
  v9 = a2;
  kdu_channel_mapping::clear(a1);
  if (kdu_codestream::get_num_components(&v9, 1) < 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  kdu_channel_mapping::set_num_channels(a1, v3);
  v8 = 0;
  kdu_codestream::get_subsampling(&v9, 0, &v8, 1);
  if (*a1 < 1)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      *(*(a1 + 1) + 4 * v4) = v4;
      *(*(a1 + 2) + 4 * v4) = kdu_codestream::get_bit_depth(&v9, v4, 1);
      *(*(a1 + 3) + v4) = kdu_codestream::get_signed(&v9, v4, 1);
      v7 = 0;
      kdu_codestream::get_subsampling(&v9, v4, &v7, 1);
      if (v7 != v8)
      {
        break;
      }

      ++v4;
    }

    while (v4 < *a1);
  }

  v5 = *a1;
  if (v4 < *a1)
  {
    v5 = 1;
    *a1 = 1;
  }

  *(a1 + 1) = v5;
  return 1;
}

void kdu_channel_mapping::configure(j2_colour_converter **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v7 = a6;
  v8 = a5;
  kdu_channel_mapping::clear(a1);
  jp2_colour_converter::init(a1 + 6);
}

uint64_t kdu_channel_mapping::add_alpha_to_configuration(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v27 = a4;
  v28 = a2;
  v26 = a5;
  num_colours = jp2_channels::get_num_colours(&v28);
  kdu_channel_mapping::set_num_channels(a1, *(a1 + 4));
  if (num_colours < 1)
  {
    return 0;
  }

  v10 = 0;
  v11 = -1;
  v12 = -1;
  do
  {
    v13 = v12;
    *v25 = 0;
    v14 = v11;
    v24 = 0;
    v12 = -1;
    if (jp2_channels::get_opacity_mapping(&v28, v10, v25, &v25[1], &v24))
    {
      v11 = -1;
      if (v24 == a3)
      {
        v12 = v25[0];
        if (v10)
        {
          v15 = v13 == v25[0] || v14 == v25[1];
          if (v15)
          {
            v12 = v13;
          }

          else
          {
            v12 = -1;
          }

          if (v15)
          {
            v11 = v14;
          }

          else
          {
            v11 = -1;
          }
        }

        else
        {
          v11 = v25[1];
        }
      }
    }

    else
    {
      v11 = -1;
    }

    ++v10;
  }

  while (num_colours != v10);
  if (v12 < 0 && (a6 & 1) == 0)
  {
    for (i = 0; i != num_colours; ++i)
    {
      *v25 = 0;
      v24 = 0;
      v17 = -1;
      if (jp2_channels::get_premult_mapping(&v28, i, v25, &v25[1], &v24))
      {
        v18 = -1;
        if (v24 == a3)
        {
          v17 = v25[0];
          if (i)
          {
            v19 = v12 == v25[0] || v11 == v25[1];
            if (v19)
            {
              v17 = v12;
            }

            else
            {
              v17 = -1;
            }

            if (v19)
            {
              v18 = v11;
            }

            else
            {
              v18 = -1;
            }
          }

          else
          {
            v18 = v25[1];
          }
        }
      }

      else
      {
        v18 = -1;
      }

      v11 = v18;
      v12 = v17;
    }

    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    return 0;
  }

  v17 = v12;
  v18 = v11;
  if (v12 < 0)
  {
    return 0;
  }

LABEL_37:
  kdu_channel_mapping::set_num_channels(a1, *(a1 + 4) + 1);
  v20 = *(a1 + 4);
  *(*(a1 + 8) + 4 * v20) = v17;
  if ((v18 & 0x80000000) == 0)
  {
    num_entries = jp2_palette::get_num_entries(&v27);
    if (num_entries <= 1024)
    {
      v22 = 0;
      do
      {
        ++v22;
      }

      while (1 << v22 < num_entries);
      *(a1 + 32) = v22;
      if (!*(*(a1 + 40) + 8 * v20))
      {
        operator new[]();
      }

      kdu_channel_mapping::add_alpha_to_configuration();
    }

    kdu_channel_mapping::add_alpha_to_configuration();
  }

  *(*(a1 + 16) + 4 * v20) = jp2_dimensions::get_bit_depth(&v26, v17);
  *(*(a1 + 24) + v20) = jp2_dimensions::get_signed(&v26, v17);
  return 1;
}

void kdu_region_decompressor::kdu_region_decompressor(kdu_region_decompressor *this)
{
  *this = &unk_1EF4D27E8;
  *(this + 4) = 0;
  *(this + 13) = 0;
  *(this + 44) = 0;
  *(this + 40) = 1;
  *(this + 14) = 0;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 120) = 0;
  *(this + 55) = 0;
  *(this + 188) = 0;
  *(this + 29) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 79) = 0;
  *(this + 84) = 0;
  *(this + 100) = 0;
  *(this + 92) = 0;
  *(this + 168) = 0u;
  *(this + 156) = 0u;
  *(this + 140) = 0u;
  *(this + 124) = 0u;
  *(this + 25) = 0;
  *(this + 26) = 0;
}

void kdu_region_decompressor::~kdu_region_decompressor(kdu_region_decompressor *this)
{
  *this = &unk_1EF4D27E8;
  *(this + 80) = 1;
  kdu_region_decompressor::finish(this);
  v2 = *(this + 25);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1020C809FEE3416);
  }

  v3 = *(this + 26);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8052888210);
  }

  v4 = *(this + 21);
  if (v4)
  {
    MEMORY[0x186602830](v4, 0x1020C80E3042B83);
  }

  v5 = *(this + 29);
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x10C80436913F5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    MEMORY[0x186602830](v6, 0x1000C8077774924);
  }
}

{
  kdu_region_decompressor::~kdu_region_decompressor(this);

  JUMPOUT(0x186602850);
}

uint64_t kdu_region_decompressor::finish(kdu_region_decompressor *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 3);
    if (v3)
    {
      kdu_thread_entity::terminate(v2, v3, 0, 0);
    }
  }

  *(this + 3) = 0;
  if (*(this + 80))
  {
    v4 = 0;
  }

  else
  {
    if (*(this + 120) == 1)
    {
      kdu_tile::close(this + 14, *(this + 2));
    }

    v4 = 1;
  }

  v5 = *(this + 4);
  *(this + 120) = 0;
  *(this + 80) = 0;
  *(this + 2) = 0;
  if (v5)
  {
    kdu_multi_synthesis::destroy(this + 4);
  }

  if (*(this + 48) >= 1)
  {
    v6 = 0;
    v7 = 32;
    do
    {
      v8 = *(this + 25) + v7;
      *(v8 - 8) = 0;
      *v8 = 0;
      *(v8 + 6) = 0;
      *(v8 + 8) = 0;
      v9 = *(this + 25) + v7;
      *(v9 + 16) = 0;
      *(v9 + 22) = 0;
      *(v9 + 24) = 0;
      ++v6;
      v7 += 112;
    }

    while (v6 < *(this + 48));
  }

  if (*(this + 40) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = 3;
      v13 = v10;
      do
      {
        v14 = *(this + 21) + v13;
        *(v14 + 8) = 0;
        *(v14 + 14) = 0;
        *(v14 + 16) = 0;
        v13 += 16;
        --v12;
      }

      while (v12);
      v15 = *(this + 21) + 96 * v11++;
      *(v15 + 72) = 0uLL;
      *(v15 + 56) = 0uLL;
      v10 += 96;
    }

    while (v11 < *(this + 40));
  }

  *(this + 9) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 40) = 1;
  *(this + 48) = 0;
  *(this + 148) = 0;
  *(this + 140) = 0;
  return v4;
}

uint64_t kdu_region_decompressor::set_num_channels(uint64_t this, int a2)
{
  v2 = this;
  if (*(this + 156) < a2)
  {
    *(this + 156) = a2;
    v3 = *(this + 168);
    v4 = a2;
    if (v3)
    {
      MEMORY[0x186602830](v3, 0x1020C80E3042B83);
      v4 = *(v2 + 156);
    }

    is_mul_ok(v4, 0x60uLL);
    operator new[]();
  }

  *(this + 160) = a2;
  *(this + 164) = a2;
  if (a2 >= 1)
  {
    v5 = a2;
    v6 = (*(this + 168) + 92);
    do
    {
      *(v6 - 92) = 0;
      *(v6 - 12) = 0;
      *(v6 - 1) = 0;
      *v6 = 0;
      v6 += 96;
      --v5;
    }

    while (v5);
  }

  return this;
}

uint64_t kdu_region_decompressor::add_component(kdu_region_decompressor *this, int a2)
{
  v2 = *(this + 48);
  if (v2 < 1)
  {
LABEL_5:
    if (v2 == *(this + 47))
    {
      v6 = (2 * v2) | 1;
      *(this + 47) = v6;
      is_mul_ok(v6, 0x70uLL);
      operator new[]();
    }

    *(this + 48) = v2 + 1;
    v8 = *(this + 25);
    *(*(this + 26) + 4 * v2) = a2;
    result = v8 + 112 * v2;
    *result = v2;
    *(result + 8) = 0;
    *(result + 17) = 0;
  }

  else
  {
    v3 = 0;
    v4 = *(this + 26);
    while (1)
    {
      v5 = *v4++;
      if (v5 == a2)
      {
        return *(this + 25) - v3;
      }

      v3 -= 112;
      if (!(112 * v2 + v3))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

unint64_t find_render_dims(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 >> 32;
  v5 = (a3 >> 32) - 1;
  v6 = SHIDWORD(a3) * SHIDWORD(a1) - (v5 >> 1);
  if (a4 >> 32 <= 1)
  {
    v4 = 1;
  }

  if (v6 <= 0)
  {
    v8 = ((v5 >> 1) - SHIDWORD(a3) * SHIDWORD(a1)) / v4;
    if (v8 >= 0x80000001)
    {
      goto LABEL_24;
    }

    v7 = -v8;
  }

  else
  {
    v7 = (v6 - 1) / v4;
    if (v7 >= 0x7FFFFFFF)
    {
      goto LABEL_24;
    }

    LODWORD(v7) = v7 + 1;
  }

  v9 = v5 >> 1;
  v10 = (((a2 & 0xFFFFFFFF00000000) + a1) >> 32) * SHIDWORD(a3);
  v11 = v10 <= v9;
  v12 = v10 - v9;
  if (v11)
  {
    if (-v12 / v4 >= 0x80000001)
    {
      goto LABEL_24;
    }
  }

  else if ((v12 - 1) / v4 >= 0x7FFFFFFF)
  {
    goto LABEL_24;
  }

  v13 = a4;
  v14 = a3 - 1;
  v15 = a3 * a1 - (v14 >> 1);
  if (a4 <= 1)
  {
    v13 = 1;
  }

  if (v15 <= 0)
  {
    v17 = ((v14 >> 1) - a3 * a1) / v13;
    if (v17 >= 0x80000001)
    {
      goto LABEL_24;
    }

    v16 = -v17;
  }

  else
  {
    v16 = (v15 - 1) / v13;
    if (v16 >= 0x7FFFFFFF)
    {
      goto LABEL_24;
    }

    LODWORD(v16) = v16 + 1;
  }

  v18 = v14 >> 1;
  v19 = (a2 + a1) * a3;
  v11 = v19 <= v18;
  v20 = v19 - v18;
  if (!v11)
  {
    if ((v20 - 1) / v13 < 0x7FFFFFFF)
    {
      return v16 | (v7 << 32);
    }

LABEL_24:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  if (-v20 / v13 >= 0x80000001)
  {
    goto LABEL_24;
  }

  return v16 | (v7 << 32);
}

uint64_t kdu_region_decompressor::start(kdu_region_decompressor *this, kd_codestream *a2, int *a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, char a13, uint64_t a14, char *a15)
{
  v21 = a14;
  *(&v94 + 1) = a8;
  v95[0] = a2;
  *&v94 = a7;
  *(this + 2) = a14;
  if (a14)
  {
    v21 = kdu_thread_entity::add_queue(a14, 0, a15, "region decompressor");
  }

  *(this + 140) = 0;
  v22 = (this + 140);
  *(this + 3) = v21;
  *(this + 9) = a2;
  *(this + 81) = a11;
  *(this + 82) = a13;
  *(this + 80) = 0;
  *(this + 120) = 0;
  *(this + 54) = a5;
  *(this + 48) = 0;
  *(this + 92) = 0;
  *(this + 22) = 0;
  *(this + 148) = 0;
  if (a3)
  {
    if (*a3 <= 0)
    {
      v93 = 0;
      v91 = 0u;
      v92 = 0u;
      kdu_error::kdu_error(&v91, "Error in Kakadu Region Decompressor:\n");
      kdu_error::~kdu_error(&v91);
    }

    kdu_region_decompressor::set_num_channels(this, *a3);
    v23 = a3[1];
    *(this + 41) = v23;
    if (v23 > *(this + 40))
    {
      v93 = 0;
      v91 = 0u;
      v92 = 0u;
      kdu_error::kdu_error(&v91, "Error in Kakadu Region Decompressor:\n");
      kdu_error::~kdu_error(&v91);
    }

    v24 = *(a3 + 6);
    *(this + 22) = a3 + 12;
    if (v24 && jp2_colour_converter::is_non_trivial((a3 + 12)))
    {
      v25 = *(this + 22) != 0;
    }

    else
    {
      v25 = 0;
      *(this + 22) = 0;
    }

    *(this + 184) = v25;
    if (*a3 >= 1)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        v28 = kdu_region_decompressor::add_component(this, *(*(a3 + 1) + 4 * v27));
        v29 = *(this + 21);
        *(v29 + v26) = v28;
        v30 = a3[8];
        if (v30 <= 0)
        {
          *(v29 + v26 + 80) = 0;
        }

        else
        {
          v31 = *(*(a3 + 5) + 8 * v27);
          *(v29 + v26 + 80) = v31;
          if (v31)
          {
            *(v28 + 8) = v30;
          }
        }

        v32 = v29 + v26;
        *(v32 + 88) = *(*(a3 + 2) + 4 * v27);
        *(v32 + 92) = *(*(a3 + 3) + v27++);
        *(v32 + 64) = 0;
        *(v32 + 72) = 0;
        *(v32 + 56) = 0;
        v26 += 96;
      }

      while (v27 < *a3);
    }
  }

  else
  {
    kdu_region_decompressor::set_num_channels(this, 1);
    v33 = kdu_region_decompressor::add_component(this, a4);
    v34 = *(this + 21);
    *v34 = v33;
    v34[10] = 0;
  }

  if (SHIDWORD(a10) < 1 || a10 <= 0)
  {
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    kdu_error::kdu_error(&v91, "Error in Kakadu Region Decompressor:\n");
    kdu_error::~kdu_error(&v91);
  }

  if (SHIDWORD(a9) < SHIDWORD(a10) || a9 < a10)
  {
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    kdu_error::kdu_error(&v91, "Error in Kakadu Region Decompressor:\n");
    kdu_error::~kdu_error(&v91);
  }

  v35 = a12;
  kdu_codestream::apply_input_restrictions(v95, *(this + 48), *(this + 26), a5, a6, 0, a12);
  v36 = **(this + 21);
  v89 = 0;
  v90 = 0;
  kdu_codestream::get_subsampling(v95, v36->i32[0], &v90, 1);
  v37 = v90;
  v38 = HIDWORD(v90);
  LODWORD(v39) = *(this + 48);
  if (v39 >= 1)
  {
    v83 = v36;
    v84 = a5;
    v40 = 0;
    v41 = 104;
    do
    {
      v42 = *(this + 25);
      v43 = v42 + v41;
      *(v42 + v41 - 100) = kdu_codestream::get_bit_depth(v95, *(v42 + v41 - 104), 1);
      v44 = kdu_codestream::get_signed(v95, *(v42 + v41 - 104), 1);
      v45 = v42 + v41;
      *(v45 - 88) = v44;
      *(v45 - 92) = 0;
      kdu_codestream::get_subsampling(v95, *(v42 + v41 - 104), &v89, 1);
      if (SHIDWORD(v89) > v38)
      {
        v38 = HIDWORD(v89);
      }

      v86 = SHIDWORD(a10) * SHIDWORD(v90);
      if (v89 > v37)
      {
        v37 = v89;
      }

      v87 = a9 * v89;
      v88 = SHIDWORD(a9) * SHIDWORD(v89);
      v85 = a10 * v90;
      if ((reduce_ratio_to_ints(&v88, &v86) & 1) == 0 || (reduce_ratio_to_ints(&v87, &v85) & 1) == 0)
      {
        v93 = 0;
        v91 = 0u;
        v92 = 0u;
        kdu_error::kdu_error(&v91, "Error in Kakadu Region Decompressor:\n");
        (*(v91 + 16))(&v91, "Unable to represent all component expansion factors as rational numbers whose numerator and denominator can both be expressed as 32-bit signed integers.  This is a very unusual condition.");
        kdu_error::~kdu_error(&v91);
      }

      v46 = v88;
      v47 = v86;
      if (v88 < v86 || v87 < v85)
      {
        v93 = 0;
        v91 = 0u;
        v92 = 0u;
        kdu_error::kdu_error(&v91, "Error in Kakadu Region Decompressor:\n");
        kdu_error::~kdu_error(&v91);
      }

      v48 = v88 / v86;
      if (!(v88 % v86))
      {
        v88 /= v86;
        v86 = 1;
        v47 = 1;
        v46 = v48;
      }

      v49 = v87;
      v50 = v85;
      v51 = v87 / v85;
      if (!(v87 % v85))
      {
        v87 /= v85;
        v85 = 1;
        v50 = 1;
        v49 = v51;
      }

      v52 = (v42 + v41);
      *(v52 - 6) = v49;
      *(v52 - 5) = v46;
      *(v52 - 4) = v50;
      *(v52 - 3) = v47;
      *(v52 - 1) = 0;
      kdu_codestream::get_registration(v95, *(v43 - 104), *(v52 - 2), v52, 1);
      if (v41 != 104 && (*(this + 184) & 1) != 0)
      {
        v53 = *(this + 25);
        if (*(v52 - 6) != v53[20] || *(v52 - 4) != v53[22] || *v52 != v53[26])
        {
          *(this + 92) = 256;
        }
      }

      ++v40;
      v39 = *(this + 48);
      v41 += 112;
    }

    while (v40 < v39);
    a5 = v84;
    v22 = (this + 140);
    v35 = a12;
    v36 = v83;
  }

  v54 = *(this + 40);
  if (v54 >= 1)
  {
    v55 = *(this + 21) + 88;
    v56 = *(this + 40);
    do
    {
      if (!*v55)
      {
        v57 = *(v55 - 88);
        *v55 = *(v57 + 4);
        *(v55 + 4) = *(v57 + 16);
      }

      v55 += 96;
      --v56;
    }

    while (v56);
    v58 = (*(this + 21) + 94);
    do
    {
      v59 = *(v58 - 47);
      ++*(v59 + 12);
      *v58 = 0;
      if (!*(v58 - 7))
      {
        v60 = *(this + 2);
        if (v60 >= 16)
        {
          v60 = 16;
        }

        v61 = *(v59 + 4);
        v62 = __OFSUB__(v60, v61);
        v63 = v60 - v61;
        if (!((v63 < 0) ^ v62 | (v63 == 0)))
        {
          *v58 = ((0x10000 << v63) - 0x10000) / ((-1 << v63) + (1 << v60));
        }
      }

      v58 += 48;
      --v54;
    }

    while (v54);
  }

  kdu_codestream::apply_input_restrictions(v95, v39, *(this + 26), a5, a6, 0, v35);
  kdu_codestream::get_dims(v95, v36->i32[0], v36 + 4, 1);
  *(this + 140) = find_render_dims(v36[4].i64[0], v36[4].i64[1], v36[5].i64[0], v36[5].i64[1]);
  *(this + 148) = v64;
  v91 = *v22;
  kdu_dims::operator&=(&v91, &v94);
  if (v94 != v91)
  {
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    kdu_error::kdu_error(&v91, "Error in Kakadu Region Decompressor:\n");
    kdu_error::~kdu_error(&v91);
  }

  v65 = v36[5].i32[3];
  LODWORD(v66) = v36[5].i32[1];
  v67 = SDWORD1(v94) * v65;
  if (v66 <= 1)
  {
    v66 = 1;
  }

  else
  {
    v66 = v66;
  }

  if ((v67 & 0x8000000000000000) != 0)
  {
    v68 = ~v67 / v66;
    if (v68 >> 31)
    {
      goto LABEL_92;
    }

    LODWORD(v68) = ~v68;
  }

  else
  {
    v68 = v67 / v66;
    if (v68 >> 31)
    {
      goto LABEL_83;
    }
  }

  v69 = v65 * (HIDWORD(v91) + DWORD1(v94));
  if (v69 <= 0)
  {
    v71 = -v69 / v66;
    if (v71 > 0x80000000)
    {
      goto LABEL_94;
    }

    v70 = -v71;
  }

  else
  {
    v70 = (v69 - 1) / v66;
    if (v70 > 0x7FFFFFFE)
    {
      goto LABEL_94;
    }

    LODWORD(v70) = v70 + 1;
  }

  v72 = v36[5].i32[2];
  LODWORD(v73) = v36[5].i32[0];
  v74 = v94 * v72;
  if (v73 <= 1)
  {
    v73 = 1;
  }

  else
  {
    v73 = v73;
  }

  if ((v74 & 0x8000000000000000) != 0)
  {
    v75 = ~v74 / v73;
    if (!(v75 >> 31))
    {
      LODWORD(v75) = ~v75;
      goto LABEL_86;
    }

LABEL_92:
    v76 = "(num >= (kdu_long) KDU_INT32_MIN)";
    v77 = 254;
LABEL_93:
    __assert_rtn("long_floor_ratio", "kdu_utils.h", v77, v76);
  }

  v75 = v74 / v73;
  if (v75 >> 31)
  {
LABEL_83:
    v76 = "(num <= (kdu_long) KDU_INT32_MAX)";
    v77 = 259;
    goto LABEL_93;
  }

LABEL_86:
  v78 = v72 * (DWORD2(v91) + v94);
  if (v78 <= 0)
  {
    v80 = -v78 / v73;
    if (v80 <= 0x80000000)
    {
      v79 = -v80;
      goto LABEL_91;
    }

LABEL_94:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v79 = (v78 - 1) / v73;
  if (v79 >= 0x7FFFFFFF)
  {
    goto LABEL_94;
  }

  LODWORD(v79) = v79 + 1;
LABEL_91:
  v91 = 0uLL;
  kdu_codestream::map_region(v95, v36->i32[0], (v75 - 2 * v37 / v90) | ((v68 - 2 * v38 / SHIDWORD(v90)) << 32), (2 * v37 / v90 - (v75 - 2 * v37 / v90) + v79) | ((2 * v38 / SHIDWORD(v90) - (v68 - 2 * v38 / SHIDWORD(v90)) + v70) << 32), &v91, 1);
  kdu_codestream::apply_input_restrictions(v95, *(this + 48), *(this + 26), a5, a6, &v91, v35);
  kdu_codestream::get_valid_tiles(v95, (this + 84));
  *(this + 100) = *(this + 84);
  *(this + 120) = 0;
  return 1;
}

void sub_185F29E6C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (v24 == 1)
  {
    v26 = __cxa_begin_catch(v25);
    if (a9)
    {
      (*(*a9 + 32))(a9, *v26);
    }

    kdu_region_decompressor::finish(v23);
    __cxa_end_catch();
    JUMPOUT(0x185F29DF4);
  }

  _Unwind_Resume(v25);
}

uint64_t reduce_ratio_to_ints(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 < 1)
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 < 1)
  {
    return 0;
  }

  if (!(v2 % v3))
  {
    *a1 = v2 / v3;
    v3 = 1;
    *a2 = 1;
    v2 = *a1;
  }

  if (v2 <= 0x7FFFFFFF && !(v3 >> 31))
  {
    return 1;
  }

  v5 = 2;
  while (1)
  {
    if (v2 >= v3)
    {
      v6 = v3;
    }

    else
    {
      v6 = v2;
    }

    while (v2 % v5 || v3 % v5)
    {
      if (++v5 >= v6)
      {
        return 0;
      }
    }

    *a1 = v2 / v5;
    v3 = *a2 / v5;
    *a2 = v3;
    v2 = *a1;
    if (*a1 <= 0x7FFFFFFF)
    {
      v4 = 1;
      if (v3 <= 0x7FFFFFFF)
      {
        break;
      }
    }
  }

  return v4;
}

uint64_t *kdu_region_decompressor::open_tile(kdu_region_decompressor *this)
{
  if (*(this + 120) == 1)
  {
    kdu_region_decompressor::open_tile();
  }

  if (*(this + 25) - *(this + 21) >= *(this + 23) || *(this + 26) - *(this + 22) >= *(this + 24))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v2 = *(this + 100);
  *(this + 14) = kdu_codestream::open_tile(this + 9, v2, *(this + 2));
  if (kdu_codestream::get_min_dwt_levels((this + 72)) >= *(this + 54) && (kdu_codestream::can_flip((this + 72)) & 1) != 0)
  {
    *(this + 120) = 1;
    v3 = *(this + 26) + 1;
    *(this + 26) = v3;
    v4 = *(this + 22);
    if (v3 - v4 >= *(this + 24))
    {
      ++*(this + 25);
      *(this + 26) = v4;
    }

    if (*(this + 48) >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = (*(this + 25) + v5);
        v7[1].i64[1] = 0;
        v7[1].i8[1] = *(this + 81) ^ 1;
        v7[1].i8[3] = 0;
        kdu_codestream::get_tile_dims(this + 9, v2, v7->i32[0], v7 + 4, 1);
        ++v6;
        v5 += 112;
      }

      while (v6 < *(this + 48));
    }

    kdu_multi_synthesis::create();
  }

  v8 = *(this + 2);

  return kdu_tile::close(this + 14, v8);
}

uint64_t kdu_line_buf::pre_create(kdu_line_buf *this, kdu_sample_allocator *a2, int a3, char a4, int a5, unsigned __int8 a6, char a7)
{
  if ((*(this + 7) & 1) != 0 || *(this + 1))
  {
    kdu_line_buf::pre_create();
  }

  *this = a3;
  if (a5)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  *(this + 6) = v11 | a4;
  *(this + 1) = a2;
  *(this + 4) = a6;
  if (a5)
  {
    v12 = 7;
  }

  else
  {
    v12 = 3;
  }

  v13 = (v12 & -a7) + a7;
  *(this + 5) = v13;
  kdu_sample_allocator::pre_alloc(a2, a5, a6, a3 + v13, 1);
  result = kdu_sample_allocator::pre_alloc(a2, a5, *(this + 4), *(this + 5) + a3, 1);
  *(this + 7) = 1;
  return result;
}

uint64_t kdu_sample_allocator::finalize(uint64_t this)
{
  if ((*this & 1) == 0)
  {
    kdu_sample_allocator::finalize();
  }

  *this = 0;
  v1 = *(this + 4);
  if (v1 > *(this + 12))
  {
    *(this + 12) = v1;
    v2 = *(this + 24);
    if (v2)
    {
      MEMORY[0x186602830](v2, 0x1000C8077774924);
    }

    operator new[]();
  }

  if (v1 && !*(this + 16))
  {
    kdu_sample_allocator::finalize();
  }

  return this;
}

uint64_t kdu_line_buf::create(uint64_t this)
{
  if (*(this + 7) == 1)
  {
    v1 = this;
    *(this + 7) = 0;
    v2 = *(this + 6);
    v3 = *(this + 8);
    v4 = *(v1 + 4);
    v5 = *v1 + *(v1 + 5);
    if ((v2 & 2) != 0)
    {
      this = kdu_sample_allocator::alloc16(v3, v4, v5);
    }

    else
    {
      this = kdu_sample_allocator::alloc32(v3, v4, v5);
    }

    *(v1 + 8) = this;
  }

  return this;
}

uint64_t *kdu_region_decompressor::close_tile(kdu_region_decompressor *this)
{
  if ((*(this + 120) & 1) == 0)
  {
    kdu_region_decompressor::close_tile();
  }

  v2 = *(this + 2);
  if (v2 && *(this + 3))
  {
    kdu_thread_entity::terminate(*(this + 2), *(this + 3), 1, 0);
    v2 = *(this + 2);
  }

  *(this + 120) = 0;
  kdu_tile::close(this + 14, v2);
  result = (this + 32);
  if (*(this + 4))
  {
    result = kdu_multi_synthesis::destroy(result);
  }

  if (*(this + 48) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(this + 25) + v4;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 54) = 0;
      *(v6 + 56) = 0;
      ++v5;
      *(v6 + 38) = 0;
      *(v6 + 44) = 0;
      v4 += 112;
    }

    while (v5 < *(this + 48));
  }

  if (*(this + 40) >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 3;
      v10 = v7;
      do
      {
        v11 = *(this + 21) + v10;
        *(v11 + 8) = 0;
        *(v11 + 14) = 0;
        *(v11 + 16) = 0;
        v10 += 16;
        --v9;
      }

      while (v9);
      v12 = (*(this + 21) + 96 * v8++);
      v12[7] = 0;
      v12[8] = 0;
      v12[9] = 0;
      v7 += 96;
    }

    while (v8 < *(this + 40));
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 40) = 1;
  return result;
}

uint64_t kdu_multi_synthesis::destroy(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    (*(*result + 16))(result);
    result = *a1;
    if (*a1)
    {
      result = (*(*result + 8))(result);
    }
  }

  *a1 = 0;
  return result;
}

uint64_t kdu_region_decompressor::process(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4, uint64_t a5, int a6, int a7, int a8, int *a9, uint64_t a10, int a11, char a12)
{
  if (((*(a1 + 164) == 1) & a3) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 + *(a1 + 160);
  *(a1 + 224) = v13;
  if (v13 > *(a1 + 220))
  {
    *(a1 + 220) = v13;
    v14 = *(a1 + 232);
    if (v14)
    {
      MEMORY[0x186602830](v14, 0x10C80436913F5);
    }

    operator new[]();
  }

  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      *(*(a1 + 232) + v15) = *(a2 + v15);
      v15 += 8;
    }

    while (8 * v13 != v15);
    if (v13 >= 5)
    {
      v16 = 8 * v13;
      v17 = 32;
      do
      {
        *(*(a1 + 232) + v17) = 0;
        v17 += 8;
      }

      while (v16 != v17);
    }
  }

  if (a12)
  {
    v18 = a4;
  }

  else
  {
    v18 = 1;
  }

  return kdu_region_decompressor::process_generic(a1, 1, a4, a5, v18 * a6, a7, a8, a9, a10, a11, 0);
}

uint64_t kdu_region_decompressor::process_generic(kdu_region_decompressor *this, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int *a8, uint64_t a9, int a10, unsigned __int8 a11)
{
  v11 = a9;
  *(a9 + 8) = 0;
  if (*(this + 80))
  {
    return 0;
  }

  v13 = a8[3] < 1 || a8[2] < 1;
  if (v13)
  {
    return 0;
  }

  if ((*(this + 120) & 1) == 0)
  {
    kdu_region_decompressor::open_tile(this);
    if ((*(this + 120) & 1) == 0)
    {
      return 0;
    }
  }

  v522[0] = *(this + 124);
  kdu_dims::operator&=(v522, a8);
  v21 = *(&v522[0] + 1);
  if (SDWORD2(v522[0]) >= 1)
  {
    v22 = HIDWORD(*(&v522[0] + 1));
    if (*(&v522[0] + 1) > 0)
    {
      v513 = v522[0];
      v23 = HIDWORD(*&v522[0]);
      v510 = a8[3] + a8[1];
      v511 = HIDWORD(v522[0]) + DWORD1(v522[0]);
      if (HIDWORD(v522[0]) + DWORD1(v522[0]) != v510 && *(this + 26) == *(this + 22))
      {
        __assert_rtn("process_generic", "kdu_region_decompressor.cpp", 2650, "last_tile_in_row || (next_tile_idx.x != valid_tiles.pos.x)");
      }

      v24 = DWORD2(v522[0]) + LODWORD(v522[0]);
      *a9 = *&v522[0];
      *(a9 + 8) = v21;
      v512 = v21;
      *(a9 + 8) = 0;
      v509 = a8;
      if ((a5 || (v25 = v21, a6 >= 1)) && (v25 = *(**(this + 21) + 84) * a6 * *(**(this + 21) + 80) / (v22 * *(**(this + 21) + 92) * *(**(this + 21) + 88)) + 1, a5))
      {
        v26 = *(this + 31);
        v27 = v26 + v25;
        v28 = v24 - v26;
        if (v27 <= v24)
        {
          v29 = v25;
        }

        else
        {
          v29 = v28;
        }

        if (v29 > 0)
        {
          v30 = *(this + 56);
          v515 = v29;
          if (v30 < 1)
          {
            v36 = a3;
            v32 = v23;
          }

          else
          {
            v31 = 0;
            v32 = v23;
            v33 = ((v23 - HIDWORD(a4)) * a3 + (v513 - a4) * a5) * a2;
            do
            {
              v34 = *(this + 29);
              v35 = *(v34 + v31);
              if (v35)
              {
                *(v34 + v31) = v35 + v33;
              }

              v31 += 8;
            }

            while (8 * v30 != v31);
            v36 = a3;
          }

          goto LABEL_42;
        }
      }

      else
      {
        if (!(a7 / v22))
        {
          v523 = 0;
          memset(v522, 0, sizeof(v522));
          kdu_error::kdu_error(v522, "Error in Kakadu Region Decompressor:\n");
          (*(*&v522[0] + 16))();
          kdu_error::~kdu_error(v522);
        }

        if (v25 >= a7 / v22)
        {
          v41 = a7 / v22;
        }

        else
        {
          v41 = v25;
        }

        v42 = *(this + 31);
        v43 = v42 + v41;
        v44 = v24 - v42;
        if (v43 > v24)
        {
          v41 = v44;
        }

        v11 = a9;
        if (v41 >= 1)
        {
          v515 = v41;
          v36 = a3;
          a5 = *(a9 + 12) * a3;
          LODWORD(v30) = *(this + 56);
          v32 = *(a9 + 4);
LABEL_42:
          v520 = v32;
          v519 = *(this + 32);
          v518 = v32 - v519;
          v45 = *(v11 + 12);
          v46 = a5 * a2;
          v47 = v36;
          v516 = v46;
          v517 = (v30 - a11);
          v521 = vdupq_n_s64(v45 - 1);
          v48 = *(this + 48);
          v508 = "(dp != NULL) && indices.is_absolute() && (indices.get_width() >= i)";
          while (1)
          {
            if (v48 >= 1)
            {
              for (i = 0; i < *(this + 48); ++i)
              {
                v50 = (*(this + 25) + 112 * i);
                if (v50[18] <= 0)
                {
                  if (!*(v50 + 3))
                  {
                    v53 = v50[8];
                    *(v50 + 3) = v50 + 8;
                    v54 = *(v50 + 5);
                    if ((*(v50 + 38) & 2) == 0 && v54)
                    {
LABEL_853:
                      exception = __cxa_allocate_exception(4uLL);
                      *exception = -50;
                      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
                    }

                    if (v53)
                    {
                      bzero(v54, 2 * v53);
                    }

                    *(v50 + 19) = 1;
                  }

                  continue;
                }

                v51 = v50[24];
                v52 = *(v50 + 3);
                if (v51 <= 0)
                {
                  if (v52)
                  {
                    v50[24] = v50[20] + v51;
                    *(v50 + 3) = 0;
                  }
                }

                else if (v52)
                {
                  continue;
                }

                v55 = (*(**(this + 4) + 32))(*(this + 4), *v50, *(this + 2));
                *(v50 + 3) = v55;
                if (!v55)
                {
                  goto LABEL_853;
                }

                v56 = v50[2];
                if (v56 >= 1)
                {
                  if ((*(v50 + 54) & 2) == 0)
                  {
                    v57 = 218;
                    goto LABEL_840;
                  }

                  v57 = 218;
                  if ((*(v50 + 54) & 1) == 0)
                  {
                    goto LABEL_840;
                  }

                  v58 = *v55;
                  v59 = *(v50 + 7);
                  if (!v59 || v50[12] < v58)
                  {
                    goto LABEL_840;
                  }

                  v61 = v50[1];
                  v62 = *(v55 + 8);
                  if ((*(v55 + 6) & 2) != 0)
                  {
                    if (*(v55 + 6))
                    {
                      if (!v62)
                      {
LABEL_860:
                        v57 = 249;
LABEL_861:
                        v503 = "0";
LABEL_839:
                        v508 = v503;
LABEL_840:
                        __assert_rtn("convert_samples_to_palette_indices", "kdu_region_decompressor.cpp", v57, v508);
                      }

                      if (v58 >= 1)
                      {
                        v87 = (0x8000 << v61) >> 16;
                        if (*(v50 + 16))
                        {
                          v88 = 0;
                        }

                        else
                        {
                          v88 = v87;
                        }

                        v89 = -65536 << v56;
                        v90 = -65536 << v56 >> 16;
                        v91 = ~(v89 >> 16);
                        v92 = v58 + 1;
                        do
                        {
                          v93 = *v62++;
                          v94 = v93 + v88;
                          v95 = (v93 + v88);
                          if (v95 >= 0)
                          {
                            v96 = v91;
                          }

                          else
                          {
                            v96 = 0;
                          }

                          if ((v90 & v95) != 0)
                          {
                            v94 = v96;
                          }

                          *v59++ = v94;
                          --v92;
                        }

                        while (v92 > 1);
                      }
                    }

                    else
                    {
                      if (!v62)
                      {
LABEL_859:
                        v57 = 281;
                        goto LABEL_861;
                      }

                      if (v56 > 0xC)
                      {
                        v57 = 256;
                        v503 = "downshift > 0";
                        goto LABEL_839;
                      }

                      if (v58 >= 1)
                      {
                        v70 = 13 - v56;
                        if (*(v50 + 16))
                        {
                          v71 = 0;
                        }

                        else
                        {
                          v71 = 0x10000000;
                        }

                        v72 = (v71 + (0x8000 << v70)) >> 16;
                        v73 = -65536 << v56;
                        v74 = -65536 << v56 >> 16;
                        v75 = ~(v73 >> 16);
                        v76 = v58 + 1;
                        do
                        {
                          v77 = *v62++;
                          v78 = (v72 + v77) >> v70;
                          if ((v78 & 0x8000u) == 0)
                          {
                            v79 = v75;
                          }

                          else
                          {
                            v79 = 0;
                          }

                          if ((v78 & v74) != 0)
                          {
                            LOWORD(v78) = v79;
                          }

                          *v59++ = v78;
                          --v76;
                        }

                        while (v76 > 1);
                      }
                    }
                  }

                  else if (*(v55 + 6))
                  {
                    if (!v62)
                    {
                      goto LABEL_860;
                    }

                    v80 = 1 << v61 >> 1;
                    if (*(v50 + 16))
                    {
                      v81 = 0;
                    }

                    else
                    {
                      v81 = v80;
                    }

                    if (v58 >= 1)
                    {
                      v82 = -1 << v56;
                      v83 = v58 + 1;
                      do
                      {
                        v84 = *v62;
                        v62 += 2;
                        v85 = v84 + v81;
                        if (v84 + v81 < 0 != __OFADD__(v84, v81))
                        {
                          v86 = 0;
                        }

                        else
                        {
                          v86 = ~v82;
                        }

                        if ((v85 & v82) != 0)
                        {
                          LOWORD(v85) = v86;
                        }

                        *v59++ = v85;
                        --v83;
                      }

                      while (v83 > 1);
                    }
                  }

                  else
                  {
                    if (!v62)
                    {
                      goto LABEL_859;
                    }

                    v63 = vcvts_n_f32_s32(1 << v56, 1uLL) + 0.5;
                    if (*(v50 + 16))
                    {
                      v63 = 0.5;
                    }

                    if (v58 >= 1)
                    {
                      v64 = (1 << v56);
                      v65 = -1 << v56;
                      v66 = v58 + 1;
                      do
                      {
                        v67 = *v62;
                        v62 += 2;
                        v68 = (v63 + (v67 * v64));
                        if (v68 >= 0)
                        {
                          v69 = ~v65;
                        }

                        else
                        {
                          v69 = 0;
                        }

                        if ((v65 & v68) != 0)
                        {
                          LOWORD(v68) = v69;
                        }

                        *v59++ = v68;
                        --v66;
                      }

                      while (v66 > 1);
                    }
                  }
                }

                *(v50 + 19) = 1;
                --v50[18];
                ++v50[16];
              }
            }

            if (*(this + 40) < 1)
            {
              goto LABEL_695;
            }

            v97 = 0;
            v98 = 0;
            do
            {
              v99 = *(this + 21) + 96 * v97;
              v100 = *v99;
              if (*(*v99 + 19) != 1)
              {
                goto LABEL_688;
              }

              v101 = *(v100 + 18) == 1 && v520 == v519;
              if (v101 && (v102 = *(v100 + 24), v45 <= *v102))
              {
                *(v99 + 64) = v102;
              }

              else
              {
                v103 = *(v99 + 64);
                v104 = v99 + 8;
                if (v99 + 8 == v103)
                {
                  v104 = v99 + 24;
                }

                *(v99 + 56) = v103;
                *(v99 + 64) = v104;
                if (!v103)
                {
                  *(v99 + 56) = v104;
                }

                v105 = *(v99 + 80);
                if (v105)
                {
                  if ((*(v104 + 6) & 2) == 0)
                  {
                    v106 = 314;
LABEL_857:
                    v108 = "interpolate_and_map";
                    v109 = "(dp != NULL) && !dst->is_absolute()";
                    goto LABEL_847;
                  }

                  v106 = 314;
                  if (*(v104 + 6))
                  {
                    goto LABEL_857;
                  }

                  v107 = *(v104 + 8);
                  v108 = "interpolate_and_map";
                  v109 = "(dp != NULL) && !dst->is_absolute()";
                  if (!v107)
                  {
                    goto LABEL_847;
                  }

                  v110 = *(v100 + 48);
                  if (v110)
                  {
                    v111 = *(v100 + 100);
                    v112 = *(v100 + 84);
                    v113 = *(v100 + 92);
                    v114 = v111 - v113 * v518;
                    if (v113 == 1)
                    {
                      if (v114 <= 0)
                      {
                        v115 = 0;
                        do
                        {
                          v114 += v112;
                          ++v115;
                        }

                        while (v114 < 1);
                        v110 -= v115;
LABEL_199:
                        if (v110 <= 1)
                        {
                          v145 = 1;
                        }

                        else
                        {
                          v145 = v110;
                        }

                        if (v110 <= 0)
                        {
                          v146 = v110 - 1;
                        }

                        else
                        {
                          v146 = 0;
                        }

                        if ((*(v100 + 54) & 2) == 0 || (v147 = *(v100 + 56)) == 0)
                        {
                          v106 = 360;
                          v108 = "interpolate_and_map";
                          v109 = "sp != NULL";
                          goto LABEL_847;
                        }

                        v148 = (v147 + 2 * (v146 + v115));
                        v150 = *v148;
                        v149 = v148 + 1;
                        v151 = v105[v150];
                        v152 = v145 - 1;
                        if (v113 == 1)
                        {
                          if (v45 < 1 || v114 < 1)
                          {
                            v153 = v45;
                          }

                          else
                          {
                            v153 = v45;
                            do
                            {
                              v154 = v153;
                              *v107++ = v151;
                              --v153;
                              if (v154 < 2)
                              {
                                break;
                              }

                              v13 = v114-- > 1;
                            }

                            while (v13);
                          }

                          v159 = v153 / v112;
                          if (v153 / v112 >= v152)
                          {
                            v160 = v145 - 1;
                          }

                          else
                          {
                            v160 = v153 / v112;
                          }

                          if (v112 == 1)
                          {
                            if (v160 >= 1)
                            {
                              v164 = v160 + 1;
                              do
                              {
                                v165 = *v149++;
                                *v107++ = v105[v165];
                                --v164;
                              }

                              while (v164 > 1);
                            }
                          }

                          else if (v112 == 2)
                          {
                            if (v160 >= 1)
                            {
                              v161 = v160 + 1;
                              do
                              {
                                v162 = *v149++;
                                v163 = v105[v162];
                                *v107 = v163;
                                v107[1] = v163;
                                v107 += 2;
                                --v161;
                              }

                              while (v161 > 1);
                            }
                          }

                          else if (v160 >= 1)
                          {
                            v166 = v160;
                            do
                            {
                              v167 = v105[*v149];
                              v168 = v112;
                              do
                              {
                                *v107++ = v167;
                                --v168;
                              }

                              while (v168);
                              ++v149;
                              v38 = __OFSUB__(v166--, 1);
                            }

                            while (!((v166 < 0) ^ v38 | (v166 == 0)));
                          }

                          v169 = v153 - v160 * v112;
                          if (v159 < v152)
                          {
                            v170 = 0;
                          }

                          else
                          {
                            v170 = -1;
                          }

                          if (v169 >= 1)
                          {
                            v171 = v169 + 1;
                            do
                            {
                              *v107++ = v105[v149[v170]];
                              --v171;
                            }

                            while (v171 > 1);
                          }
                        }

                        else if (v45 >= 1)
                        {
                          v155 = v45 + 1;
                          v156 = v151;
                          while (1)
                          {
                            if (v114 < 1 && v152 >= 1)
                            {
                              v114 += v112;
                              if (v114 < 1)
                              {
                                v106 = 408;
                                v108 = "interpolate_and_map";
                                goto LABEL_846;
                              }

                              v157 = *v149++;
                              v156 = v151;
                              v151 = v105[v157];
                              --v152;
                            }

                            v158 = (v151 + v156) >> 1;
                            if (v114 >= (3 * v112) >> 2)
                            {
                              v158 = v156 + ((v151 - v156 + 2) >> 2);
                            }

                            if (v114 <= v112 >> 1)
                            {
                              v158 = v151 + ((v156 - v151 + 2) >> 2);
                            }

                            if (v114 <= v112 >> 2)
                            {
                              LOWORD(v158) = v151;
                            }

                            *v107++ = v158;
                            v114 -= v113;
                            if (--v155 <= 1)
                            {
                              goto LABEL_676;
                            }
                          }
                        }

                        goto LABEL_676;
                      }
                    }

                    else if (v114 <= -v112)
                    {
                      v139 = v112 + v111 - v113 * v518;
                      v140 = 1 - v112;
                      if (v139 <= 1 - v112)
                      {
                        v141 = 1 - v112;
                      }

                      else
                      {
                        v141 = v139;
                      }

                      v142 = v141 - v139 - (v139 < v140);
                      if (v112 <= 1)
                      {
                        v143 = 1;
                      }

                      else
                      {
                        v143 = *(v100 + 84);
                      }

                      if (v139 >= v140)
                      {
                        v144 = v142 / v143;
                      }

                      else
                      {
                        v144 = v142 / v143 + 1;
                      }

                      v115 = v144 + 1;
                      v114 += (v144 + 1) * v112;
                      v110 += ~v144;
                      goto LABEL_199;
                    }

                    v115 = 0;
                    goto LABEL_199;
                  }

                  if (v45 >= 1)
                  {
                    v130 = 0;
                    v131 = *v105;
                    v132 = v107 + 4;
                    do
                    {
                      v133 = vdupq_n_s64(v130);
                      v134 = vmovn_s64(vcgeq_u64(v521, vorrq_s8(v133, xmmword_186205EC0)));
                      if (vuzp1_s8(vuzp1_s16(v134, *v133.i8), *v133.i8).u8[0])
                      {
                        *(v132 - 4) = v131;
                      }

                      if (vuzp1_s8(vuzp1_s16(v134, *&v133), *&v133).i8[1])
                      {
                        *(v132 - 3) = v131;
                      }

                      if (vuzp1_s8(vuzp1_s16(*&v133, vmovn_s64(vcgeq_u64(v521, vorrq_s8(v133, xmmword_186205EB0)))), *&v133).i8[2])
                      {
                        *(v132 - 2) = v131;
                        *(v132 - 1) = v131;
                      }

                      v135 = vmovn_s64(vcgeq_u64(v521, vorrq_s8(v133, xmmword_186205EA0)));
                      if (vuzp1_s8(*&v133, vuzp1_s16(v135, *&v133)).i32[1])
                      {
                        *v132 = v131;
                      }

                      if (vuzp1_s8(*&v133, vuzp1_s16(v135, *&v133)).i8[5])
                      {
                        v132[1] = v131;
                      }

                      v136 = vmovn_s64(vcgeq_u64(v521, vorrq_s8(v133, xmmword_186205E90)));
                      if (vuzp1_s8(*&v136, vuzp1_s16(v136, v136)).i8[6])
                      {
                        v132[2] = v131;
                      }

                      v137 = vuzp1_s16(v136, v136);
                      if (vuzp1_s8(v137, v137).i8[7])
                      {
                        v132[3] = v131;
                      }

                      v130 += 8;
                      v132 += 8;
                    }

                    while (((v45 + 7) & 0xFFFFFFF8) != v130);
                  }
                }

                else
                {
                  v116 = *(v100 + 24);
                  v117 = *(v116 + 6);
                  if ((v117 & 2) != 0)
                  {
                    v118 = *(v116 + 8);
                  }

                  else
                  {
                    v118 = 0;
                  }

                  if ((*(v116 + 6) & 2) != 0)
                  {
                    v119 = 0;
                  }

                  else
                  {
                    v119 = *(v116 + 8);
                  }

                  v120 = *(v104 + 6);
                  v121 = *(v104 + 8);
                  if ((v120 & 2) != 0)
                  {
                    v122 = v121;
                  }

                  else
                  {
                    v122 = 0;
                  }

                  if ((v120 & 2) != 0)
                  {
                    v123 = 0;
                  }

                  else
                  {
                    v123 = v121;
                  }

                  if (v120)
                  {
                    v106 = 448;
                    v108 = "interpolate_and_convert";
                    v109 = "!dst->is_absolute()";
                    goto LABEL_847;
                  }

                  v124 = *v116;
                  if (*v116)
                  {
                    v125 = *(v100 + 100);
                    v126 = *(v100 + 84);
                    v127 = *(v100 + 92);
                    v128 = v125 - v127 * v518;
                    if (v127 == 1)
                    {
                      if (v128 <= 0)
                      {
                        v129 = 0;
                        do
                        {
                          v128 += v126;
                          ++v129;
                        }

                        while (v128 < 1);
                        v124 -= v129;
                        goto LABEL_264;
                      }

LABEL_188:
                      v129 = 0;
                    }

                    else
                    {
                      if (v128 > -v126)
                      {
                        goto LABEL_188;
                      }

                      v172 = v126 + v125 - v127 * v518;
                      v173 = 1 - v126;
                      if (v172 <= 1 - v126)
                      {
                        v174 = 1 - v126;
                      }

                      else
                      {
                        v174 = v172;
                      }

                      v175 = v174 - v172 - (v172 < v173);
                      if (v126 <= 1)
                      {
                        v176 = 1;
                      }

                      else
                      {
                        v176 = *(v100 + 84);
                      }

                      v13 = v172 < v173;
                      v177 = v175 / v176;
                      if (v13)
                      {
                        ++v177;
                      }

                      v129 = v177 + 1;
                      v128 += (v177 + 1) * v126;
                      v124 += ~v177;
                    }

LABEL_264:
                    v178 = (3 * v126) >> 2;
                    v179 = v126 >> 1;
                    v180 = v126 >> 2;
                    if (v124 <= 1)
                    {
                      v181 = 1;
                    }

                    else
                    {
                      v181 = v124;
                    }

                    if (v124 <= 0)
                    {
                      v182 = v124 - 1;
                    }

                    else
                    {
                      v182 = 0;
                    }

                    v183 = v182 + v129;
                    if (v117)
                    {
                      v191 = *(v100 + 4);
                      v192 = v191 - 13;
                      v193 = 13 - v191;
                      if (!v118)
                      {
                        if (v119 && v122)
                        {
                          v211 = (v119 + 4 * v183);
                          v213 = *v211;
                          v212 = v211 + 1;
                          v214 = v181 - 1;
                          v215 = v213 << v193;
                          v216 = v213 >> v192;
                          if (v191 < 13)
                          {
                            v216 = v215;
                          }

                          if (v127 == 1)
                          {
                            if (v45 < 1 || v128 < 1)
                            {
                              v217 = v45;
                            }

                            else
                            {
                              v217 = v45;
                              do
                              {
                                v218 = v217;
                                *v121++ = v216;
                                --v217;
                                if (v218 < 2)
                                {
                                  break;
                                }

                                v13 = v128-- > 1;
                              }

                              while (v13);
                            }

                            v337 = v217 / v126;
                            if (v217 / v126 >= v214)
                            {
                              v338 = v181 - 1;
                            }

                            else
                            {
                              v338 = v217 / v126;
                            }

                            if (v126 == 1 && v191 <= 12)
                            {
                              if (v338 >= 1)
                              {
                                v339 = v338 + 1;
                                do
                                {
                                  v340 = *v212++;
                                  *v121++ = v340 << v193;
                                  --v339;
                                }

                                while (v339 > 1);
                              }
                            }

                            else if (v126 == 1)
                            {
                              if (v338 >= 1)
                              {
                                v341 = v338 + 1;
                                do
                                {
                                  v342 = *v212++;
                                  *v121++ = v342 >> v192;
                                  --v341;
                                }

                                while (v341 > 1);
                              }
                            }

                            else if (v126 == 2)
                            {
                              if (v338 >= 1)
                              {
                                v388 = v338 + 1;
                                do
                                {
                                  v389 = *v212++;
                                  v390 = v389 << v193;
                                  v391 = v389 >> v192;
                                  if (v191 < 13)
                                  {
                                    LOWORD(v391) = v390;
                                  }

                                  *v121 = v391;
                                  v121[1] = v391;
                                  v121 += 2;
                                  --v388;
                                }

                                while (v388 > 1);
                              }
                            }

                            else
                            {
                              v396 = v338;
                              if (v338 >= 1)
                              {
                                do
                                {
                                  v397 = *v212 >> v192;
                                  if (v191 < 13)
                                  {
                                    LOWORD(v397) = *v212 << v193;
                                  }

                                  v398 = v126;
                                  do
                                  {
                                    *v121++ = v397;
                                    --v398;
                                  }

                                  while (v398);
                                  ++v212;
                                  v38 = __OFSUB__(v396--, 1);
                                }

                                while (!((v396 < 0) ^ v38 | (v396 == 0)));
                              }
                            }

                            v399 = v217 - v338 * v126;
                            if (v337 < v214)
                            {
                              v400 = 0;
                            }

                            else
                            {
                              v400 = -1;
                            }

                            if (v399 >= 1)
                            {
                              v401 = v399 + 1;
                              do
                              {
                                v402 = v212[v400];
                                v403 = v402 << v193;
                                v404 = v402 >> v192;
                                if (v191 < 13)
                                {
                                  LOWORD(v404) = v403;
                                }

                                *v121++ = v404;
                                --v401;
                              }

                              while (v401 > 1);
                            }
                          }

                          else
                          {
                            v279 = v45 + 1;
                            v280 = v216;
                            if (v45 >= 1)
                            {
                              do
                              {
                                if (v128 < 1)
                                {
                                  v281 = v214 - 1;
                                  if (v214 >= 1)
                                  {
                                    v128 += v126;
                                    if (v128 < 1)
                                    {
                                      v106 = 652;
                                      goto LABEL_845;
                                    }

                                    v282 = *v212++;
                                    v283 = v282 << v193;
                                    v284 = v282 >> v192;
                                    v280 = v216;
                                    if (v191 >= 13)
                                    {
                                      v216 = v284;
                                    }

                                    else
                                    {
                                      v216 = v283;
                                    }

                                    v214 = v281;
                                  }
                                }

                                v285 = v280 + ((v216 - v280 + 2) >> 2);
                                if (v128 < v178)
                                {
                                  v285 = (v216 + v280) >> 1;
                                }

                                if (v128 <= v179)
                                {
                                  v285 = v216 + ((v280 - v216 + 2) >> 2);
                                }

                                if (v128 <= v180)
                                {
                                  LOWORD(v285) = v216;
                                }

                                *v121++ = v285;
                                v128 -= v127;
                                --v279;
                              }

                              while (v279 > 1);
                            }
                          }
                        }

                        else
                        {
                          v106 = 750;
                          if (!v119)
                          {
LABEL_866:
                            v108 = "interpolate_and_convert";
                            v109 = "0";
                            goto LABEL_847;
                          }

                          v108 = "interpolate_and_convert";
                          v109 = "0";
                          if (!v123)
                          {
                            goto LABEL_847;
                          }

                          v239 = v191 - 29;
                          v240 = 29 - v191;
                          v241 = (v119 + 4 * v183);
                          v243 = *v241;
                          v242 = v241 + 1;
                          v244 = v181 - 1;
                          v245 = v243 << v240;
                          v246 = v243 >> v239;
                          if (v240 > 0)
                          {
                            v246 = v245;
                          }

                          if (v127 == 1)
                          {
                            if (v45 < 1 || v128 < 1)
                            {
                              v247 = v45;
                            }

                            else
                            {
                              v247 = v45;
                              do
                              {
                                v248 = v247;
                                *v121 = v246;
                                v121 += 2;
                                --v247;
                                if (v248 < 2)
                                {
                                  break;
                                }

                                v13 = v128-- > 1;
                              }

                              while (v13);
                            }

                            v350 = v247 / v126;
                            if (v247 / v126 >= v244)
                            {
                              v351 = v181 - 1;
                            }

                            else
                            {
                              v351 = v247 / v126;
                            }

                            if (v126 == 1 && v240 >= 1)
                            {
                              if (v351 >= 1)
                              {
                                v352 = v351 + 1;
                                do
                                {
                                  v353 = *v242++;
                                  *v121 = v353 << v240;
                                  v121 += 2;
                                  --v352;
                                }

                                while (v352 > 1);
                              }
                            }

                            else if (v126 == 1)
                            {
                              if (v351 >= 1)
                              {
                                v354 = v351 + 1;
                                do
                                {
                                  v355 = *v242++;
                                  *v121 = v355 >> v239;
                                  v121 += 2;
                                  --v354;
                                }

                                while (v354 > 1);
                              }
                            }

                            else if (v126 == 2)
                            {
                              if (v351 >= 1)
                              {
                                v392 = v351 + 1;
                                do
                                {
                                  v393 = *v242++;
                                  v394 = v393 << v240;
                                  v395 = v393 >> v239;
                                  if (v240 > 0)
                                  {
                                    v395 = v394;
                                  }

                                  *v121 = v395;
                                  *(v121 + 1) = v395;
                                  v121 += 4;
                                  --v392;
                                }

                                while (v392 > 1);
                              }
                            }

                            else
                            {
                              v405 = v351;
                              if (v351 >= 1)
                              {
                                do
                                {
                                  v406 = *v242++;
                                  v407 = v406 << v240;
                                  v408 = v406 >> v239;
                                  if (v240 > 0)
                                  {
                                    v408 = v407;
                                  }

                                  v409 = v126;
                                  do
                                  {
                                    *v121 = v408;
                                    v121 += 2;
                                    --v409;
                                  }

                                  while (v409);
                                  v38 = __OFSUB__(v405--, 1);
                                }

                                while (!((v405 < 0) ^ v38 | (v405 == 0)));
                              }
                            }

                            v410 = v247 - v351 * v126;
                            if (v350 < v244)
                            {
                              v411 = 0;
                            }

                            else
                            {
                              v411 = -1;
                            }

                            if (v410 >= 1)
                            {
                              v412 = v410 + 1;
                              do
                              {
                                v413 = v242[v411];
                                v414 = v413 << v240;
                                v415 = v413 >> v239;
                                if (v240 > 0)
                                {
                                  v415 = v414;
                                }

                                *v121 = v415;
                                v121 += 2;
                                --v412;
                              }

                              while (v412 > 1);
                            }
                          }

                          else
                          {
                            v293 = v45 + 1;
                            v294 = v246;
                            if (v45 >= 1)
                            {
                              do
                              {
                                if (v128 < 1)
                                {
                                  v295 = v244 - 1;
                                  if (v244 >= 1)
                                  {
                                    v128 += v126;
                                    if (v128 < 1)
                                    {
                                      v106 = 728;
                                      goto LABEL_845;
                                    }

                                    v296 = *v242++;
                                    v297 = v296 << v240;
                                    v298 = v296 >> v239;
                                    v294 = v246;
                                    if (v240 <= 0)
                                    {
                                      v246 = v298;
                                    }

                                    else
                                    {
                                      v246 = v297;
                                    }

                                    v244 = v295;
                                  }
                                }

                                v299 = v294 + ((v246 - v294 + 2) >> 2);
                                if (v128 < v178)
                                {
                                  v299 = (v246 + v294) >> 1;
                                }

                                if (v128 <= v179)
                                {
                                  v299 = v246 + ((v294 - v246 + 2) >> 2);
                                }

                                if (v128 <= v180)
                                {
                                  v299 = v246;
                                }

                                *v121 = v299;
                                v121 += 2;
                                v128 -= v127;
                                --v293;
                              }

                              while (v293 > 1);
                            }
                          }
                        }

                        goto LABEL_676;
                      }

                      if (!v122)
                      {
                        v106 = 502;
LABEL_850:
                        v108 = "interpolate_and_convert";
                        v109 = "dp16 != NULL";
                        goto LABEL_847;
                      }

                      v194 = (v118 + 2 * v183);
                      v196 = *v194;
                      v195 = (v194 + 1);
                      v197 = v181 - 1;
                      v198 = v196 << v193;
                      v199 = v196 >> v192;
                      if (v191 < 13)
                      {
                        v199 = v198;
                      }

                      if (v127 != 1)
                      {
                        if (v45 >= 1)
                        {
                          v223 = v45 + 1;
                          v224 = v199;
                          while (1)
                          {
                            if (v128 < 1)
                            {
                              v225 = v197 - 1;
                              if (v197 >= 1)
                              {
                                v128 += v126;
                                if (v128 < 1)
                                {
                                  v106 = 578;
LABEL_845:
                                  v108 = "interpolate_and_convert";
LABEL_846:
                                  v109 = "expand_counter > 0";
LABEL_847:
                                  __assert_rtn(v108, "kdu_region_decompressor.cpp", v106, v109);
                                }

                                v226 = *v195++;
                                v227 = v226 << v193;
                                v228 = v226 >> v192;
                                v224 = v199;
                                if (v191 >= 13)
                                {
                                  v199 = v228;
                                }

                                else
                                {
                                  v199 = v227;
                                }

                                v197 = v225;
                              }
                            }

                            v229 = (v199 + v224) >> 1;
                            if (v128 >= v178)
                            {
                              v229 = v224 + ((v199 - v224 + 2) >> 2);
                            }

                            if (v128 <= v179)
                            {
                              v229 = v199 + ((v224 - v199 + 2) >> 2);
                            }

                            if (v128 <= v180)
                            {
                              LOWORD(v229) = v199;
                            }

                            *v121++ = v229;
                            v128 -= v127;
                            if (--v223 <= 1)
                            {
                              goto LABEL_676;
                            }
                          }
                        }

                        goto LABEL_676;
                      }

                      if (v45 < 1 || v128 < 1)
                      {
                        v200 = v45;
                      }

                      else
                      {
                        v200 = v45;
                        do
                        {
                          v201 = v200;
                          *v121++ = v199;
                          --v200;
                          if (v201 < 2)
                          {
                            break;
                          }

                          v13 = v128-- > 1;
                        }

                        while (v13);
                      }

                      if (v200 / v126 >= v197)
                      {
                        v252 = v181 - 1;
                      }

                      else
                      {
                        v252 = v200 / v126;
                      }

                      if (v126 != 1)
                      {
                        if (v126 == 2)
                        {
                          if (v252 >= 1)
                          {
                            v253 = v252 + 1;
                            do
                            {
                              v254 = *v195++;
                              v255 = v254 << v193;
                              v256 = v254 >> v192;
                              if (v191 < 13)
                              {
                                LOWORD(v256) = v255;
                              }

                              *v121 = v256;
                              v121[1] = v256;
                              v121 += 2;
                              --v253;
                            }

                            while (v253 > 1);
                            goto LABEL_502;
                          }

LABEL_503:
                          v267 = v252;
                        }

                        else
                        {
                          v266 = v252;
                          v267 = v252;
                          if (v252 >= 1)
                          {
                            do
                            {
                              v268 = *v195;
                              v269 = v268 << v193;
                              v270 = v268 >> v192;
                              if (v191 < 13)
                              {
                                LOWORD(v270) = v269;
                              }

                              v271 = v126;
                              do
                              {
                                *v121++ = v270;
                                --v271;
                              }

                              while (v271);
                              ++v195;
                              v38 = __OFSUB__(v266--, 1);
                            }

                            while (!((v266 < 0) ^ v38 | (v266 == 0)));
LABEL_502:
                            v267 = 0;
                          }
                        }

                        v315 = v252 * v126;
                        if (v200 > v252 * v126)
                        {
                          v316 = 0;
                          v317 = &v195[v267];
                          v318 = v267 * v126;
                          if (v200 / v126 < v197)
                          {
                            v319 = 0;
                          }

                          else
                          {
                            v319 = -1;
                          }

                          v320 = v317[v319];
                          v321 = v320 << v193;
                          v322 = v320 >> v192;
                          if (v191 < 13)
                          {
                            LOWORD(v322) = v321;
                          }

                          v323 = (v200 + ~v315);
                          v324 = vdupq_n_s64(v323);
                          v325 = (v323 + 8) & 0x1FFFFFFF8;
                          v326 = &v121[v318 + 4];
                          do
                          {
                            v327 = vdupq_n_s64(v316);
                            v328 = vmovn_s64(vcgeq_u64(v324, vorrq_s8(v327, xmmword_186205EC0)));
                            if (vuzp1_s8(vuzp1_s16(v328, *v324.i8), *v324.i8).u8[0])
                            {
                              *(v326 - 4) = v322;
                            }

                            if (vuzp1_s8(vuzp1_s16(v328, *&v324), *&v324).i8[1])
                            {
                              *(v326 - 3) = v322;
                            }

                            if (vuzp1_s8(vuzp1_s16(*&v324, vmovn_s64(vcgeq_u64(v324, vorrq_s8(v327, xmmword_186205EB0)))), *&v324).i8[2])
                            {
                              *(v326 - 2) = v322;
                              *(v326 - 1) = v322;
                            }

                            v329 = vmovn_s64(vcgeq_u64(v324, vorrq_s8(v327, xmmword_186205EA0)));
                            if (vuzp1_s8(*&v324, vuzp1_s16(v329, *&v324)).i32[1])
                            {
                              *v326 = v322;
                            }

                            if (vuzp1_s8(*&v324, vuzp1_s16(v329, *&v324)).i8[5])
                            {
                              v326[1] = v322;
                            }

                            if (vuzp1_s8(*&v324, vuzp1_s16(*&v324, vmovn_s64(vcgeq_u64(v324, vorrq_s8(v327, xmmword_186205E90))))).i8[6])
                            {
                              v326[2] = v322;
                              v326[3] = v322;
                            }

                            v316 += 8;
                            v326 += 8;
                          }

                          while (v325 != v316);
                        }

                        goto LABEL_676;
                      }

                      if (v191 >= 13)
                      {
                        if (v252 >= 1)
                        {
                          v313 = v252 + 1;
                          do
                          {
                            v314 = *v195++;
                            *v121++ = v314 >> v192;
                            --v313;
                          }

                          while (v313 > 1);
                          goto LABEL_502;
                        }
                      }

                      else if (v252 >= 1)
                      {
                        v259 = v252 + 1;
                        do
                        {
                          v260 = *v195++;
                          *v121++ = v260 << v193;
                          --v259;
                        }

                        while (v259 > 1);
                        goto LABEL_502;
                      }

                      goto LABEL_503;
                    }

                    if (!v118)
                    {
                      if (v119 && v122)
                      {
                        v202 = (v119 + 4 * v183);
                        v204 = *v202;
                        v203 = v202 + 1;
                        v205 = v181 - 1;
                        v206 = (0.5 - (v204 * 8192.0));
                        v207 = ((v204 * 8192.0) + 0.5);
                        if ((v204 * 8192.0) < 0.0)
                        {
                          v208 = -v206;
                        }

                        else
                        {
                          LOWORD(v208) = v207;
                        }

                        if (v127 == 1)
                        {
                          if (v45 < 1 || v128 < 1)
                          {
                            v209 = v45;
                          }

                          else
                          {
                            v209 = v45;
                            do
                            {
                              v210 = v209;
                              *v121++ = v208;
                              --v209;
                              if (v210 < 2)
                              {
                                break;
                              }

                              v13 = v128-- > 1;
                            }

                            while (v13);
                          }

                          v330 = v209 / v126;
                          if (v209 / v126 >= v205)
                          {
                            v331 = v181 - 1;
                          }

                          else
                          {
                            v331 = v209 / v126;
                          }

                          if (v126 == 1)
                          {
                            if (v331 >= 1)
                            {
                              v356 = v331 + 1;
                              do
                              {
                                v357 = *v203++;
                                v358 = (0.5 - (v357 * 8192.0));
                                v359 = ((v357 * 8192.0) + 0.5);
                                if ((v357 * 8192.0) < 0.0)
                                {
                                  v360 = -v358;
                                }

                                else
                                {
                                  LOWORD(v360) = v359;
                                }

                                *v121++ = v360;
                                --v356;
                              }

                              while (v356 > 1);
                            }
                          }

                          else if (v126 == 2)
                          {
                            if (v331 >= 1)
                            {
                              v332 = v331 + 1;
                              do
                              {
                                v333 = *v203++;
                                v334 = (0.5 - (v333 * 8192.0));
                                v335 = ((v333 * 8192.0) + 0.5);
                                if ((v333 * 8192.0) < 0.0)
                                {
                                  v336 = -v334;
                                }

                                else
                                {
                                  LOWORD(v336) = v335;
                                }

                                *v121 = v336;
                                v121[1] = v336;
                                v121 += 2;
                                --v332;
                              }

                              while (v332 > 1);
                            }
                          }

                          else
                          {
                            v361 = v331;
                            if (v331 >= 1)
                            {
                              do
                              {
                                v362 = *v203++;
                                v363 = (0.5 - (v362 * 8192.0));
                                v364 = ((v362 * 8192.0) + 0.5);
                                if ((v362 * 8192.0) < 0.0)
                                {
                                  v365 = -v363;
                                }

                                else
                                {
                                  LOWORD(v365) = v364;
                                }

                                v366 = v126;
                                do
                                {
                                  *v121++ = v365;
                                  --v366;
                                }

                                while (v366);
                                v38 = __OFSUB__(v361--, 1);
                              }

                              while (!((v361 < 0) ^ v38 | (v361 == 0)));
                            }
                          }

                          v367 = v209 - v331 * v126;
                          if (v330 < v205)
                          {
                            v368 = 0;
                          }

                          else
                          {
                            v368 = -1;
                          }

                          if (v367 >= 1)
                          {
                            v369 = v367 + 1;
                            do
                            {
                              v370 = v203[v368] * 8192.0;
                              if (v370 < 0.0)
                              {
                                v371 = -(0.5 - v370);
                              }

                              else
                              {
                                LOWORD(v371) = (v370 + 0.5);
                              }

                              *v121++ = v371;
                              --v369;
                            }

                            while (v369 > 1);
                          }
                        }

                        else
                        {
                          v272 = v45 + 1;
                          v273 = v208;
                          if (v45 >= 1)
                          {
                            do
                            {
                              if (v128 < 1)
                              {
                                v274 = v205 - 1;
                                if (v205 >= 1)
                                {
                                  v128 += v126;
                                  if (v128 < 1)
                                  {
                                    v106 = 899;
                                    goto LABEL_845;
                                  }

                                  v275 = *v203++;
                                  v276 = (0.5 - (v275 * 8192.0));
                                  v277 = ((v275 * 8192.0) + 0.5);
                                  v273 = v208;
                                  if ((v275 * 8192.0) < 0.0)
                                  {
                                    v208 = -v276;
                                  }

                                  else
                                  {
                                    LOWORD(v208) = v277;
                                  }

                                  v205 = v274;
                                }
                              }

                              v278 = (v208 + v273) >> 1;
                              if (v128 >= v178)
                              {
                                LOWORD(v278) = v273 + ((v208 - v273 + 2) >> 2);
                              }

                              if (v128 <= v179)
                              {
                                LOWORD(v278) = v208 + ((v273 - v208 + 2) >> 2);
                              }

                              if (v128 <= v180)
                              {
                                LOWORD(v278) = v208;
                              }

                              *v121++ = v278;
                              v128 -= v127;
                              --v272;
                            }

                            while (v272 > 1);
                          }
                        }
                      }

                      else
                      {
                        v106 = 1006;
                        if (!v119)
                        {
                          goto LABEL_866;
                        }

                        v108 = "interpolate_and_convert";
                        v109 = "0";
                        if (!v123)
                        {
                          goto LABEL_847;
                        }

                        v230 = (v119 + 4 * v183);
                        v232 = *v230;
                        v231 = v230 + 1;
                        v233 = v181 - 1;
                        v234 = (0.5 - (v232 * 536870000.0));
                        v235 = ((v232 * 536870000.0) + 0.5);
                        if ((v232 * 536870000.0) < 0.0)
                        {
                          v236 = -v234;
                        }

                        else
                        {
                          v236 = v235;
                        }

                        if (v127 == 1)
                        {
                          if (v45 < 1 || v128 < 1)
                          {
                            v237 = v45;
                          }

                          else
                          {
                            v237 = v45;
                            do
                            {
                              v238 = v237;
                              *v121 = v236;
                              v121 += 2;
                              --v237;
                              if (v238 < 2)
                              {
                                break;
                              }

                              v13 = v128-- > 1;
                            }

                            while (v13);
                          }

                          v343 = v237 / v126;
                          if (v237 / v126 >= v233)
                          {
                            v344 = v181 - 1;
                          }

                          else
                          {
                            v344 = v237 / v126;
                          }

                          if (v126 == 1)
                          {
                            if (v344 >= 1)
                            {
                              v372 = v344 + 1;
                              do
                              {
                                v373 = *v231++;
                                v374 = (0.5 - (v373 * 536870000.0));
                                v375 = ((v373 * 536870000.0) + 0.5);
                                if ((v373 * 536870000.0) < 0.0)
                                {
                                  v376 = -v374;
                                }

                                else
                                {
                                  v376 = v375;
                                }

                                *v121 = v376;
                                v121 += 2;
                                --v372;
                              }

                              while (v372 > 1);
                            }
                          }

                          else if (v126 == 2)
                          {
                            if (v344 >= 1)
                            {
                              v345 = v344 + 1;
                              do
                              {
                                v346 = *v231++;
                                v347 = (0.5 - (v346 * 536870000.0));
                                v348 = ((v346 * 536870000.0) + 0.5);
                                if ((v346 * 536870000.0) < 0.0)
                                {
                                  v349 = -v347;
                                }

                                else
                                {
                                  v349 = v348;
                                }

                                *v121 = v349;
                                *(v121 + 1) = v349;
                                v121 += 4;
                                --v345;
                              }

                              while (v345 > 1);
                            }
                          }

                          else
                          {
                            v377 = v344;
                            if (v344 >= 1)
                            {
                              do
                              {
                                v378 = *v231++;
                                v379 = (0.5 - (v378 * 536870000.0));
                                v380 = ((v378 * 536870000.0) + 0.5);
                                if ((v378 * 536870000.0) < 0.0)
                                {
                                  v381 = -v379;
                                }

                                else
                                {
                                  v381 = v380;
                                }

                                v382 = v126;
                                do
                                {
                                  *v121 = v381;
                                  v121 += 2;
                                  --v382;
                                }

                                while (v382);
                                v38 = __OFSUB__(v377--, 1);
                              }

                              while (!((v377 < 0) ^ v38 | (v377 == 0)));
                            }
                          }

                          v383 = v237 - v344 * v126;
                          if (v343 < v233)
                          {
                            v384 = 0;
                          }

                          else
                          {
                            v384 = -1;
                          }

                          if (v383 >= 1)
                          {
                            v385 = v383 + 1;
                            do
                            {
                              v386 = v231[v384] * 536870000.0;
                              if (v386 < 0.0)
                              {
                                v387 = -(0.5 - v386);
                              }

                              else
                              {
                                v387 = (v386 + 0.5);
                              }

                              *v121 = v387;
                              v121 += 2;
                              --v385;
                            }

                            while (v385 > 1);
                          }
                        }

                        else
                        {
                          v286 = v45 + 1;
                          v287 = v236;
                          if (v45 >= 1)
                          {
                            do
                            {
                              if (v128 < 1)
                              {
                                v288 = v233 - 1;
                                if (v233 >= 1)
                                {
                                  v128 += v126;
                                  if (v128 < 1)
                                  {
                                    v106 = 983;
                                    goto LABEL_845;
                                  }

                                  v289 = *v231++;
                                  v290 = (0.5 - (v289 * 536870000.0));
                                  v291 = ((v289 * 536870000.0) + 0.5);
                                  v287 = v236;
                                  if ((v289 * 536870000.0) < 0.0)
                                  {
                                    v236 = -v290;
                                  }

                                  else
                                  {
                                    v236 = v291;
                                  }

                                  v233 = v288;
                                }
                              }

                              v292 = v287 + ((v236 - v287 + 2) >> 2);
                              if (v128 < v178)
                              {
                                v292 = (v236 + v287) >> 1;
                              }

                              if (v128 <= v179)
                              {
                                v292 = v236 + ((v287 - v236 + 2) >> 2);
                              }

                              if (v128 <= v180)
                              {
                                v292 = v236;
                              }

                              *v121 = v292;
                              v121 += 2;
                              v128 -= v127;
                              --v286;
                            }

                            while (v286 > 1);
                          }
                        }
                      }

                      goto LABEL_676;
                    }

                    if (!v122)
                    {
                      v106 = 756;
                      goto LABEL_850;
                    }

                    v184 = (v118 + 2 * v183);
                    v187 = *v184;
                    v185 = v184 + 1;
                    v186 = v187;
                    v188 = v181 - 1;
                    if (v127 != 1)
                    {
                      v219 = v45 + 1;
                      v220 = v186;
                      if (v45 >= 1)
                      {
                        while (1)
                        {
                          if (v128 < 1 && v188 >= 1)
                          {
                            v128 += v126;
                            if (v128 < 1)
                            {
                              v106 = 817;
                              goto LABEL_845;
                            }

                            v220 = v186;
                            v221 = *v185++;
                            v186 = v221;
                            --v188;
                          }

                          v222 = (v186 + v220) >> 1;
                          if (v128 >= v178)
                          {
                            LOWORD(v222) = v220 + ((v186 - v220 + 2) >> 2);
                          }

                          if (v128 <= v179)
                          {
                            LOWORD(v222) = v186 + ((v220 - v186 + 2) >> 2);
                          }

                          if (v128 <= v180)
                          {
                            LOWORD(v222) = v186;
                          }

                          *v121++ = v222;
                          v128 -= v127;
                          if (--v219 <= 1)
                          {
                            goto LABEL_676;
                          }
                        }
                      }

                      goto LABEL_676;
                    }

                    if (v45 < 1 || v128 < 1)
                    {
                      v189 = v45;
                    }

                    else
                    {
                      v189 = v45;
                      do
                      {
                        v190 = v189;
                        *v121++ = v186;
                        --v189;
                        if (v190 < 2)
                        {
                          break;
                        }

                        v13 = v128-- > 1;
                      }

                      while (v13);
                    }

                    if (v189 / v126 >= v188)
                    {
                      v249 = v181 - 1;
                    }

                    else
                    {
                      v249 = v189 / v126;
                    }

                    if (v126 == 1)
                    {
                      if (v249 < 1)
                      {
                        goto LABEL_479;
                      }

                      v257 = v249 + 1;
                      do
                      {
                        v258 = *v185++;
                        *v121++ = v258;
                        --v257;
                      }

                      while (v257 > 1);
                    }

                    else
                    {
                      if (v126 == 2)
                      {
                        if (v249 >= 1)
                        {
                          v250 = v249 + 1;
                          do
                          {
                            v251 = *v185++;
                            *v121 = v251;
                            v121[1] = v251;
                            v121 += 2;
                            --v250;
                          }

                          while (v250 > 1);
                          goto LABEL_406;
                        }

LABEL_479:
                        v262 = v249;
LABEL_480:
                        v300 = v249 * v126;
                        if (v189 > v249 * v126)
                        {
                          v301 = 0;
                          v302 = &v185[v262];
                          v303 = v262 * v126;
                          if (v189 / v126 < v188)
                          {
                            v304 = 0;
                          }

                          else
                          {
                            v304 = -1;
                          }

                          v305 = v302[v304];
                          v306 = (v189 + ~v300);
                          v307 = vdupq_n_s64(v306);
                          v308 = (v306 + 8) & 0x1FFFFFFF8;
                          v309 = &v121[v303 + 4];
                          do
                          {
                            v310 = vdupq_n_s64(v301);
                            v311 = vmovn_s64(vcgeq_u64(v307, vorrq_s8(v310, xmmword_186205EC0)));
                            if (vuzp1_s8(vuzp1_s16(v311, *v307.i8), *v307.i8).u8[0])
                            {
                              *(v309 - 4) = v305;
                            }

                            if (vuzp1_s8(vuzp1_s16(v311, *&v307), *&v307).i8[1])
                            {
                              *(v309 - 3) = v305;
                            }

                            if (vuzp1_s8(vuzp1_s16(*&v307, vmovn_s64(vcgeq_u64(v307, vorrq_s8(v310, xmmword_186205EB0)))), *&v307).i8[2])
                            {
                              *(v309 - 2) = v305;
                              *(v309 - 1) = v305;
                            }

                            v312 = vmovn_s64(vcgeq_u64(v307, vorrq_s8(v310, xmmword_186205EA0)));
                            if (vuzp1_s8(*&v307, vuzp1_s16(v312, *&v307)).i32[1])
                            {
                              *v309 = v305;
                            }

                            if (vuzp1_s8(*&v307, vuzp1_s16(v312, *&v307)).i8[5])
                            {
                              v309[1] = v305;
                            }

                            if (vuzp1_s8(*&v307, vuzp1_s16(*&v307, vmovn_s64(vcgeq_u64(v307, vorrq_s8(v310, xmmword_186205E90))))).i8[6])
                            {
                              v309[2] = v305;
                              v309[3] = v305;
                            }

                            v301 += 8;
                            v309 += 8;
                          }

                          while (v308 != v301);
                        }

                        goto LABEL_676;
                      }

                      v261 = v249;
                      v262 = v249;
                      if (v249 < 1)
                      {
                        goto LABEL_480;
                      }

                      do
                      {
                        v264 = *v185++;
                        v263 = v264;
                        v265 = v126;
                        do
                        {
                          *v121++ = v263;
                          --v265;
                        }

                        while (v265);
                        v38 = __OFSUB__(v261--, 1);
                      }

                      while (!((v261 < 0) ^ v38 | (v261 == 0)));
                    }

LABEL_406:
                    v262 = 0;
                    goto LABEL_480;
                  }

                  if (v122)
                  {
                    if (v45 >= 1)
                    {
                      v123 = v122;
                      v138 = (2 * v45);
LABEL_293:
                      bzero(v123, v138);
                    }
                  }

                  else if (v45 >= 1)
                  {
                    v138 = 4 * v45;
                    goto LABEL_293;
                  }
                }
              }

LABEL_676:
              v416 = *(v99 + 94);
              if (*(v99 + 94))
              {
                v417 = *(v99 + 64);
                if (*v417 < v45)
                {
                  v106 = 1018;
                  v108 = "apply_white_stretch";
                  v109 = "num_cols <= line->get_width()";
                  goto LABEL_847;
                }

                v418 = *(v417 + 6);
                v419 = *(v417 + 8);
                if ((v418 & 2) != 0 && v419)
                {
                  if (v45 >= 1)
                  {
                    v420 = v45 + 1;
                    do
                    {
                      *v419 = *v419 - ((-4096 * v416) >> 16) + ((*v419 * v416) >> 16);
                      ++v419;
                      --v420;
                    }

                    while (v420 > 1);
                  }
                }

                else if (v45 >= 1)
                {
                  v421 = v45 + 1;
                  do
                  {
                    *v419 += ((*v419 >> 16) + 4096) * v416;
                    v419 += 2;
                    --v421;
                  }

                  while (v421 > 1);
                }
              }

              v98 = 1;
LABEL_688:
              ++v97;
            }

            while (v97 < *(this + 40));
            if (*(this + 184) & v98)
            {
              v422 = *(this + 41);
              if (v422 > 2)
              {
                v424 = *(this + 21);
                v423 = *(this + 22);
                v425 = v424[8];
                v426 = v424[20];
                v427 = v424[32];
                if (v422 == 3)
                {
                  jp2_colour_converter::convert_rgb(v423, v425, v426, v427, v45);
                }

                else
                {
                  jp2_colour_converter::convert_rgb4(v423, v425, v426, v427, v424[44], v45);
                }
              }

              else
              {
                jp2_colour_converter::convert_lum(*(this + 22), *(*(this + 21) + 64), v45);
              }
            }

LABEL_695:
            v48 = *(this + 48);
            if (v48 < 1)
            {
              goto LABEL_701;
            }

            v428 = (*(this + 25) + 72);
            v429 = 1;
            v430 = *(this + 48);
            do
            {
              *(v428 - 53) = 0;
              if (v428[6] <= 0)
              {
                v429 &= *v428 < 1;
              }

              v428 += 28;
              --v430;
            }

            while (v430);
            if (v429)
            {
LABEL_701:
              if (*(this + 31) == v513)
              {
                if (*(this + 40) >= 1)
                {
                  for (j = 0; j < *(this + 40); ++j)
                  {
                    v432 = *(this + 21) + 96 * j;
                    v433 = *v432;
                    if (*(*v432 + 88) == 1)
                    {
                      if ((*(this + 185) & 1) != 0 && (v433[24] > 1 || v433[18] < 1))
                      {
                        *(v432 + 72) = v432 + 40;
                        if ((*(v432 + 46) & 2) != 0)
                        {
                          v444 = *(v432 + 48);
                        }

                        else
                        {
                          v444 = 0;
                        }

                        v454 = *(v432 + 64);
                        if ((*(v454 + 6) & 2) != 0)
                        {
                          v455 = *(v454 + 8);
                          if (!v444)
                          {
                            goto LABEL_743;
                          }

LABEL_741:
                          v456 = 2 * v45;
                        }

                        else
                        {
                          v455 = 0;
                          if (v444)
                          {
                            goto LABEL_741;
                          }

LABEL_743:
                          if ((*(v432 + 46) & 2) != 0)
                          {
                            v444 = 0;
                            if ((*(v454 + 6) & 2) == 0)
                            {
                              goto LABEL_773;
                            }

LABEL_745:
                            v455 = 0;
                          }

                          else
                          {
                            v444 = *(v432 + 48);
                            if ((*(v454 + 6) & 2) != 0)
                            {
                              goto LABEL_745;
                            }

LABEL_773:
                            v455 = *(v454 + 8);
                          }

                          v456 = 4 * v45;
                        }

                        memcpy(v444, v455, v456);
                        continue;
                      }

                      *(v432 + 72) = *(v432 + 64);
                    }

                    else
                    {
                      *(v432 + 72) = v432 + 40;
                      v434 = *(v432 + 56);
                      if (!v434 || (v435 = *(v432 + 64)) == 0)
                      {
                        v505 = __cxa_allocate_exception(4uLL);
                        *v505 = -50;
                        __cxa_throw(v505, MEMORY[0x1E69E5478], 0);
                      }

                      v436 = v433[24];
                      v437 = v433[20];
                      v438 = (3 * v437) >> 2;
                      v439 = v437 >> 1;
                      v440 = v437 >> 2;
                      if ((*(v432 + 46) & 2) != 0 && (v441 = *(v432 + 48)) != 0)
                      {
                        if ((*(v434 + 6) & 2) != 0)
                        {
                          v442 = *(v434 + 8);
                        }

                        else
                        {
                          v442 = 0;
                        }

                        if ((*(v435 + 6) & 2) == 0)
                        {
                          v446 = 1069;
LABEL_863:
                          __assert_rtn("interpolate_between_lines", "kdu_region_decompressor.cpp", v446, "(sp1 != NULL) && (sp2 != NULL) && (dp != NULL)");
                        }

                        v446 = 1069;
                        if (!v442)
                        {
                          goto LABEL_863;
                        }

                        v461 = *(v435 + 8);
                        if (!v461)
                        {
                          goto LABEL_863;
                        }

                        if (v440 >= v436)
                        {
                          if (v45 >= 1)
                          {
                            v466 = v45 + 1;
                            do
                            {
                              v467 = *v461++;
                              *v441++ = v467;
                              --v466;
                            }

                            while (v466 > 1);
                          }
                        }

                        else if (v439 >= v436)
                        {
                          if (v45 >= 1)
                          {
                            v472 = v45 + 1;
                            do
                            {
                              v474 = *v461++;
                              v473 = v474;
                              v475 = *v442++;
                              *v441++ = v473 + ((v475 - v473 + 2) >> 2);
                              --v472;
                            }

                            while (v472 > 1);
                          }
                        }

                        else if (v438 <= v436)
                        {
                          v476 = v45 + 1;
                          if (v45 >= 1)
                          {
                            do
                            {
                              v478 = *v442++;
                              v477 = v478;
                              v479 = *v461++;
                              *v441++ = v477 + ((v479 - v477 + 2) >> 2);
                              --v476;
                            }

                            while (v476 > 1);
                          }
                        }

                        else if (v45 >= 1)
                        {
                          v462 = v45 + 1;
                          do
                          {
                            v464 = *v461++;
                            v463 = v464;
                            v465 = *v442++;
                            *v441++ = (v465 + v463) >> 1;
                            --v462;
                          }

                          while (v462 > 1);
                        }
                      }

                      else
                      {
                        if ((*(v434 + 6) & 2) != 0)
                        {
                          v443 = 0;
                        }

                        else
                        {
                          v443 = *(v434 + 8);
                        }

                        if ((*(v435 + 6) & 2) != 0)
                        {
                          v445 = 0;
                        }

                        else
                        {
                          v445 = *(v435 + 8);
                        }

                        v446 = 1096;
                        if ((*(v432 + 46) & 2) != 0)
                        {
                          goto LABEL_863;
                        }

                        if (!v443)
                        {
                          goto LABEL_863;
                        }

                        if (!v445)
                        {
                          goto LABEL_863;
                        }

                        v447 = *(v432 + 48);
                        if (!v447)
                        {
                          goto LABEL_863;
                        }

                        if (v440 >= v436)
                        {
                          if (v45 >= 1)
                          {
                            v452 = v45 + 1;
                            do
                            {
                              v453 = *v445++;
                              *v447++ = v453;
                              --v452;
                            }

                            while (v452 > 1);
                          }
                        }

                        else if (v439 >= v436)
                        {
                          if (v45 >= 1)
                          {
                            v457 = v45 + 1;
                            do
                            {
                              v459 = *v445++;
                              v458 = v459;
                              v460 = *v443++;
                              *v447++ = v458 + ((v460 - v458 + 2) >> 2);
                              --v457;
                            }

                            while (v457 > 1);
                          }
                        }

                        else if (v438 <= v436)
                        {
                          v468 = v45 + 1;
                          if (v45 >= 1)
                          {
                            do
                            {
                              v470 = *v443++;
                              v469 = v470;
                              v471 = *v445++;
                              *v447++ = v469 + ((v471 - v469 + 2) >> 2);
                              --v468;
                            }

                            while (v468 > 1);
                          }
                        }

                        else if (v45 >= 1)
                        {
                          v448 = v45 + 1;
                          do
                          {
                            v450 = *v445++;
                            v449 = v450;
                            v451 = *v443++;
                            *v447++ = (v451 + v449) >> 1;
                            --v448;
                          }

                          while (v448 > 1);
                        }
                      }
                    }
                  }
                }

                if (*(this + 185) == 1)
                {
                  v480 = *(this + 41);
                  if (v480 > 2)
                  {
                    v482 = *(this + 21);
                    v481 = *(this + 22);
                    v483 = v482[9];
                    v484 = v482[21];
                    v485 = v482[33];
                    if (v480 == 3)
                    {
                      jp2_colour_converter::convert_rgb(v481, v483, v484, v485, v45);
                    }

                    else
                    {
                      jp2_colour_converter::convert_rgb4(v481, v483, v484, v485, v482[45], v45);
                    }
                  }

                  else
                  {
                    jp2_colour_converter::convert_lum(*(this + 22), *(*(this + 21) + 72), v45);
                  }
                }

                if (*(this + 56) >= 1)
                {
                  v486 = 0;
                  while (1)
                  {
                    v487 = *(*(this + 29) + 8 * v486);
                    if (v487)
                    {
                      v488 = *(this + 21);
                      if (v486)
                      {
                        if (v486 >= *(this + 40))
                        {
                          v489 = 0;
                        }

                        else
                        {
                          v489 = v486;
                        }

                        v488 += 96 * v489;
                      }

                      if (v486 >= v517 && a11)
                      {
                        if (a2 != 1)
                        {
                          __assert_rtn("process_generic", "kdu_region_decompressor.cpp", 2976, "sample_bytes == 1");
                        }

                        v490 = v45 + 1;
                        if (v45 >= 1)
                        {
                          do
                          {
                            *v487 = -1;
                            v487 = (v487 + v47);
                            --v490;
                          }

                          while (v490 > 1);
                        }

                        goto LABEL_812;
                      }

                      if (a10)
                      {
                        v491 = 0;
                        if (a2 != 1)
                        {
                          v492 = a10;
                          if (a2 != 2)
                          {
                            v506 = 3007;
                            goto LABEL_865;
                          }

                          goto LABEL_811;
                        }

                        v493 = a10;
                      }

                      else
                      {
                        if (a2 == 2)
                        {
                          v492 = *(v488 + 88);
                          v491 = *(v488 + 92);
LABEL_811:
                          transfer_fixed_point(*(v488 + 72), v45, a3, v487, v492, v491 & 1);
                          goto LABEL_812;
                        }

                        if (a2 != 1)
                        {
                          v506 = 2993;
LABEL_865:
                          __assert_rtn("process_generic", "kdu_region_decompressor.cpp", v506, "0");
                        }

                        v493 = *(v488 + 88);
                        v491 = *(v488 + 92);
                      }

                      transfer_fixed_point(*(v488 + 72), v45, a3, v487, v493, v491 & 1);
                    }

LABEL_812:
                    ++v486;
                    v494 = *(this + 56);
                    if (v486 >= v494)
                    {
                      if (v494 >= 1)
                      {
                        v495 = 0;
                        v496 = 8 * v494;
                        do
                        {
                          v497 = *(this + 29);
                          v498 = *(v497 + v495);
                          if (v498)
                          {
                            *(v497 + v495) = v498 + v516;
                          }

                          v495 += 8;
                        }

                        while (v496 != v495);
                      }

                      break;
                    }
                  }
                }

                v512 = (v512 - 1) | v512 & 0xFFFFFFFF00000000;
                ++v513;
                ++*(a9 + 8);
                if (v511 == v510)
                {
                  v499 = *(this + 31) + 1;
                  v500 = v499 - *v509;
                  if (v499 <= *v509)
                  {
                    __assert_rtn("process_generic", "kdu_region_decompressor.cpp", 3021, "y > 0");
                  }

                  *v509 = v499;
                  v509[2] -= v500;
                }
              }

              v48 = *(this + 48);
              if (v48 >= 1)
              {
                v501 = (*(this + 25) + 96);
                v502 = *(this + 48);
                do
                {
                  *v501 -= *(v501 - 2);
                  v501 += 28;
                  --v502;
                }

                while (v502);
              }

              ++*(this + 31);
              --*(this + 33);
            }

            v13 = v515-- <= 1;
            if (v13)
            {
              if (SHIDWORD(v512) < 1 || v512 <= 0)
              {
                goto LABEL_829;
              }

              return 1;
            }
          }
        }
      }

      v507 = __cxa_allocate_exception(4uLL);
      *v507 = -1;
      __cxa_throw(v507, MEMORY[0x1E69E5478], 0);
    }
  }

  if (*(this + 26) == *(this + 22))
  {
    v37 = *(this + 33) + *(this + 31);
    v38 = __OFSUB__(v37, *a8);
    v39 = v37 - *a8;
    if (!((v39 < 0) ^ v38 | (v39 == 0)))
    {
      v40 = a8[2];
      if (v39 >= v40)
      {
        v39 = a8[2];
      }

      *a8 += v39;
      a8[2] = v40 - v39;
    }
  }

LABEL_829:
  kdu_region_decompressor::close_tile(this);
  return 1;
}

void sub_185F2CFE4()
{
  if (v2 == 1)
  {
    v3 = *__cxa_begin_catch(v1);
    *(v0 + 80) = 1;
    v4 = *(v0 + 16);
    if (v4)
    {
      (*(*v4 + 32))(v4, v3);
    }

    __cxa_end_catch();
    JUMPOUT(0x185F2AB1CLL);
  }

  _Unwind_Resume(v1);
}

uint64_t kdu_region_decompressor::process(kdu_region_decompressor *this, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int *a8, uint64_t a9)
{
  v9 = a2;
  v10 = *(this + 41);
  if (v10 == 2)
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    kdu_error::kdu_error(v18, "Error in Kakadu Region Decompressor:\n");
    kdu_error::~kdu_error(v18);
  }

  if (v10 == 1)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10 + 1;
  }

  *(this + 56) = v11;
  if (*(this + 55) < v11)
  {
    *(this + 55) = v11;
    v12 = *(this + 29);
    if (v12)
    {
      MEMORY[0x186602830](v12, 0x10C80436913F5);
    }

    operator new[]();
  }

  if (a4 == 4)
  {
    **(this + 29) = a2;
    *(*(this + 29) + 8) = a2 + 1;
    *(*(this + 29) + 16) = a2 + 2;
    *(*(this + 29) + 24) = a2 + 3;
    v13 = *(this + 40) == *(this + 41);
  }

  else
  {
    v14 = *(this + 40);
    if (v14 < 1)
    {
      LODWORD(v14) = 0;
    }

    else
    {
      v15 = 0;
      do
      {
        *(*(this + 29) + v15) = v9;
        v15 += 8;
        ++v9;
      }

      while (8 * v14 != v15);
    }

    v16 = *(this + 56);
    if (v14 < v16)
    {
      v14 = v14;
      do
      {
        *(*(this + 29) + 8 * v14++) = 0;
      }

      while (v16 != v14);
    }

    v13 = 0;
  }

  return kdu_region_decompressor::process_generic(this, 1, a4, a3, a5 * a4, a6, a7, a8, a9, 8, v13);
}

uint64_t transfer_fixed_point(uint64_t result, int a2, int a3, _BYTE *a4, int a5, int a6)
{
  if (*result < a2)
  {
    transfer_fixed_point();
  }

  v6 = *(result + 8);
  if ((*(result + 6) & 2) == 0)
  {
    if ((*(result + 6) & 1) == 0 && v6)
    {
      if (a5 > 8)
      {
        v19 = a5 - 29;
        if (a5 < 0x1D)
        {
          v19 = 0;
        }

        v20 = 29 - a5;
        if (a5 > 0x1D)
        {
          v20 = 0;
        }

        v21 = (1 << v20) >> 1;
        v22 = -128 >> v19;
        if (a6)
        {
          v23 = 127;
        }

        else
        {
          v22 = 0;
          v23 = 255;
        }

        if (!a6)
        {
          v21 += 4096;
        }

        if (a2 >= 1)
        {
          v24 = v23 >> v19;
          v25 = a2 + 1;
          do
          {
            v26 = *v6;
            v6 += 2;
            v27 = (v26 + v21) >> v20;
            if (v27 >= v24)
            {
              v28 = v24;
            }

            else
            {
              v28 = v27;
            }

            if (v27 >= v22)
            {
              v29 = v28;
            }

            else
            {
              v29 = v22;
            }

            *a4 = v29 << v19;
            a4 += a3;
            --v25;
          }

          while (v25 > 1);
        }
      }

      else
      {
        v7 = 29 - a5;
        v8 = (1 << (29 - a5) >> 1) + 0x10000000;
        v9 = -1 << a5;
        if (a6)
        {
          if (a2 >= 1)
          {
            v10 = a2 + 1;
            do
            {
              v11 = *v6;
              v6 += 2;
              v12 = (v11 + v8) >> v7;
              if (v12 >= 0)
              {
                v13 = ~v9;
              }

              else
              {
                v13 = 0;
              }

              if ((v12 & v9) != 0)
              {
                LOBYTE(v12) = v13;
              }

              *a4 = v12 - ((1 << a5) >> 1);
              a4 += a3;
              --v10;
            }

            while (v10 > 1);
          }
        }

        else if (a2 >= 1)
        {
          v39 = a2 + 1;
          do
          {
            v40 = *v6;
            v6 += 2;
            v41 = (v40 + v8) >> v7;
            if (v41 >= 0)
            {
              v42 = ~v9;
            }

            else
            {
              v42 = 0;
            }

            if ((v41 & v9) != 0)
            {
              LOBYTE(v41) = v42;
            }

            *a4 = v41;
            a4 += a3;
            --v39;
          }

          while (v39 > 1);
        }
      }

      return result;
    }

LABEL_85:
    transfer_fixed_point();
  }

  if (!v6)
  {
    goto LABEL_85;
  }

  if (*(result + 6))
  {
    transfer_fixed_point();
  }

  if (a5 > 8)
  {
    v30 = a5 - 13;
    if (a5 < 0xD)
    {
      v30 = 0;
    }

    v31 = 13 - a5;
    if (a5 > 0xD)
    {
      v31 = 0;
    }

    v32 = (1 << v31) >> 1;
    v33 = -128 >> v30;
    if (a6)
    {
      v34 = 127;
    }

    else
    {
      v33 = 0;
      v34 = 255;
    }

    if (!a6)
    {
      v32 += 4096;
    }

    if (a2 >= 1)
    {
      v35 = v34 >> v30;
      v36 = a2 + 1;
      do
      {
        v37 = *v6++;
        v38 = (v32 + v37) >> v31;
        result = v38;
        if (result > v35)
        {
          v38 = v35;
        }

        if (result < v33)
        {
          v38 = v33;
        }

        *a4 = v38 << v30;
        a4 += a3;
        --v36;
      }

      while (v36 > 1);
    }
  }

  else
  {
    v14 = 13 - a5;
    v15 = ((0x8000 << (13 - a5)) >> 16) + 4096;
    if (a6)
    {
      if (a2 >= 1)
      {
        v16 = a2 + 1;
        do
        {
          v17 = *v6++;
          v18 = (v17 + v15) >> v14;
          if ((v18 & 0x8000u) == 0)
          {
            result = ~(-65536 << a5 >> 16);
          }

          else
          {
            result = 0;
          }

          if ((v18 & (-65536 << a5 >> 16)) != 0)
          {
            LOBYTE(v18) = result;
          }

          *a4 = v18 - ((0x8000 << a5) >> 16);
          a4 += a3;
          --v16;
        }

        while (v16 > 1);
      }
    }

    else if (a2 >= 1)
    {
      v43 = a2 + 1;
      do
      {
        v44 = *v6++;
        v45 = (v44 + v15) >> v14;
        if ((v45 & 0x8000u) == 0)
        {
          v46 = ~(-65536 << a5 >> 16);
        }

        else
        {
          v46 = 0;
        }

        if ((v45 & (-65536 << a5 >> 16)) != 0)
        {
          LOBYTE(v45) = v46;
        }

        *a4 = v45;
        a4 += a3;
        --v43;
      }

      while (v43 > 1);
    }
  }

  return result;
}

uint64_t transfer_fixed_point(uint64_t result, int a2, int a3, _WORD *a4, int a5, int a6)
{
  if (*result < a2)
  {
    transfer_fixed_point();
  }

  v6 = *(result + 8);
  if ((*(result + 6) & 2) == 0)
  {
    if ((*(result + 6) & 1) == 0 && v6)
    {
      if (a5 > 16)
      {
        v20 = a5 - 29;
        if (a5 < 0x1D)
        {
          v20 = 0;
        }

        v21 = 29 - a5;
        if (a5 > 0x1D)
        {
          v21 = 0;
        }

        v22 = (1 << v21) >> 1;
        v23 = -32768 >> v20;
        if (a6)
        {
          v24 = 0x7FFF;
        }

        else
        {
          v23 = 0;
          v24 = 0xFFFF;
        }

        if (!a6)
        {
          v22 += 4096;
        }

        if (a2 >= 1)
        {
          v25 = v24 >> v20;
          v26 = a2 + 1;
          do
          {
            v27 = *v6;
            v6 += 2;
            v28 = (v27 + v22) >> v21;
            if (v28 >= v25)
            {
              v29 = v25;
            }

            else
            {
              v29 = v28;
            }

            if (v28 >= v23)
            {
              v30 = v29;
            }

            else
            {
              v30 = v23;
            }

            *a4 = (v30 << v20);
            --v26;
            a4 += a3;
          }

          while (v26 > 1);
        }
      }

      else
      {
        v7 = 29 - a5;
        v8 = (1 << (29 - a5) >> 1) + 0x10000000;
        v9 = -1 << a5;
        if (a6)
        {
          if (a2 >= 1)
          {
            v10 = a2 + 1;
            do
            {
              v11 = *v6;
              v6 += 2;
              v12 = (v11 + v8) >> v7;
              if (v12 >= 0)
              {
                v13 = ~v9;
              }

              else
              {
                v13 = 0;
              }

              if ((v12 & v9) != 0)
              {
                LOWORD(v12) = v13;
              }

              *a4 = v12 - ((1 << a5) >> 1);
              --v10;
              a4 += a3;
            }

            while (v10 > 1);
          }
        }

        else if (a2 >= 1)
        {
          v34 = a2 + 1;
          do
          {
            v35 = *v6;
            v6 += 2;
            v36 = (v35 + v8) >> v7;
            if (v36 >= 0)
            {
              v37 = ~v9;
            }

            else
            {
              v37 = 0;
            }

            if ((v36 & v9) != 0)
            {
              LOWORD(v36) = v37;
            }

            *a4 = v36;
            --v34;
            a4 += a3;
          }

          while (v34 > 1);
        }
      }

      return result;
    }

LABEL_98:
    transfer_fixed_point();
  }

  if (!v6)
  {
    goto LABEL_98;
  }

  if (*(result + 6))
  {
    transfer_fixed_point();
  }

  v14 = a5 - 13;
  if (a5 > 13)
  {
    if (a5 > 0x10)
    {
      v42 = -32768 >> v14;
      if (a6)
      {
        v43 = 0x7FFF;
      }

      else
      {
        v42 = 0;
        v43 = 0xFFFF;
      }

      if (a6)
      {
        v44 = 0;
      }

      else
      {
        v44 = 4096;
      }

      if (a2 >= 1)
      {
        v45 = v43 >> v14;
        v46 = a2 + 1;
        do
        {
          v47 = *v6++;
          v48 = v44 + v47;
          if (v44 + v47 >= v45)
          {
            v49 = v45;
          }

          else
          {
            v49 = v48;
          }

          if (v48 >= v42)
          {
            v50 = v49;
          }

          else
          {
            v50 = v42;
          }

          *a4 = v50 << v14;
          --v46;
          a4 += a3;
        }

        while (v46 > 1);
      }
    }

    else if (a6)
    {
      if (a2 >= 1)
      {
        v31 = a2 + 1;
        do
        {
          v32 = *v6++;
          v33 = (v32 + 4096) & ~((v32 + 4096) >> 31);
          if (v33 >= 0x1FFF)
          {
            v33 = 0x1FFF;
          }

          *a4 = (v33 + 61440) << v14;
          --v31;
          a4 += a3;
        }

        while (v31 > 1);
      }
    }

    else if (a2 >= 1)
    {
      v51 = a2 + 1;
      do
      {
        v52 = *v6++;
        v53 = (v52 + 4096) & ~((v52 + 4096) >> 31);
        if (v53 >= 0x1FFF)
        {
          v53 = 0x1FFF;
        }

        *a4 = v53 << v14;
        --v51;
        a4 += a3;
      }

      while (v51 > 1);
    }
  }

  else
  {
    v15 = 13 - a5;
    v16 = ((0x8000 << (13 - a5)) >> 16) + 4096;
    if (a6)
    {
      if (a2 >= 1)
      {
        v17 = a2 + 1;
        do
        {
          v18 = *v6++;
          v19 = (v18 + v16) >> v15;
          if ((v19 & 0x8000u) == 0)
          {
            result = ~(-65536 << a5 >> 16);
          }

          else
          {
            result = 0;
          }

          if ((v19 & (-65536 << a5 >> 16)) != 0)
          {
            LOWORD(v19) = result;
          }

          *a4 = v19 - ((0x8000 << a5) >> 16);
          --v17;
          a4 += a3;
        }

        while (v17 > 1);
      }
    }

    else if (a2 >= 1)
    {
      v38 = a2 + 1;
      do
      {
        v39 = *v6++;
        v40 = (v39 + v16) >> v15;
        if ((v40 & 0x8000u) == 0)
        {
          v41 = ~((-65536 << a5) >> 16);
        }

        else
        {
          v41 = 0;
        }

        if ((v40 & (-65536 << a5 >> 16)) != 0)
        {
          LOWORD(v40) = v41;
        }

        *a4 = v40;
        --v38;
        a4 += a3;
      }

      while (v38 > 1);
    }
  }

  return result;
}

uint64_t kdu_sample_allocator::pre_alloc(uint64_t this, int a2, int a3, int a4, int a5)
{
  if ((*this & 1) == 0)
  {
    kdu_sample_allocator::pre_alloc();
  }

  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  *(this + 4) += ((((a4 << v5) + 15) & 0xFFFFFFF0) + (((a3 << v5) + 15) & 0xFFFFFFF0)) * a5;
  return this;
}

uint64_t kdu_sample_allocator::alloc16(kdu_sample_allocator *this, int a2, int a3)
{
  if (*this == 1)
  {
    kdu_sample_allocator::alloc16();
  }

  v3 = (a2 + 7) & 0xFFFFFFF8;
  v4 = *(this + 2);
  v5 = *(this + 1);
  v6 = *(this + 2);
  v7 = v6 + 2 * (((a3 + 7) & 0x7FFFFFF8) + v3);
  *(this + 2) = v7;
  if (v7 > v5)
  {
    kdu_sample_allocator::alloc16();
  }

  return v4 + v6 + 2 * v3;
}

uint64_t kdu_sample_allocator::alloc32(kdu_sample_allocator *this, int a2, int a3)
{
  if (*this == 1)
  {
    kdu_sample_allocator::alloc32();
  }

  v3 = (a2 + 3) & 0xFFFFFFFC;
  v4 = *(this + 2);
  v5 = *(this + 1);
  v6 = *(this + 2);
  v7 = v6 + 4 * (((a3 + 3) & 0x3FFFFFFC) + v3);
  *(this + 2) = v7;
  if (v7 > v5)
  {
    kdu_sample_allocator::alloc32();
  }

  return v4 + v6 + 4 * v3;
}

void kdu_block::kdu_block(kdu_block *this)
{
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 18) = 0;
  *(this + 18) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 23) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 60) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 20) = 0;
}

void kdu_block::~kdu_block(kdu_block *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C8052888210);
  }

  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C80BDFB0063);
  }

  v4 = *(this + 9);
  if (v4)
  {
    MEMORY[0x186602830](v4 - 1, 0x1000C8077774924);
  }

  v5 = *(this + 16);
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x1000C8052888210);
  }

  v6 = *(this + 13);
  if (v6)
  {
    MEMORY[0x186602830](v6, 0x1000C8052888210);
  }
}

uint64_t kdu_block::set_max_passes(uint64_t this, int a2, int a3)
{
  v3 = *(this + 88);
  if (v3 < a2)
  {
    v4 = this;
    if (v3)
    {
      v5 = a3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      operator new[]();
    }

    v6 = *(this + 56);
    if (v6)
    {
      MEMORY[0x186602830](v6, 0x1000C8052888210);
    }

    v7 = *(v4 + 64);
    if (v7)
    {
      MEMORY[0x186602830](v7, 0x1000C80BDFB0063);
    }

    operator new[]();
  }

  return this;
}

uint64_t kdu_block::set_max_bytes(uint64_t this, int a2, int a3)
{
  v3 = *(this + 92);
  if (v3 < a2)
  {
    if (v3)
    {
      v4 = a3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      operator new[]();
    }

    v5 = *(this + 72);
    if (v5)
    {
      MEMORY[0x186602830](v5 - 1, 0x1000C8077774924);
    }

    operator new[]();
  }

  return this;
}

uint64_t kdu_block::set_max_samples(uint64_t this, int a2)
{
  if (*(this + 112) < a2)
  {
    v2 = *(this + 128);
    if (v2)
    {
      MEMORY[0x186602830](v2, 0x1000C8052888210);
    }

    operator new[]();
  }

  return this;
}

uint64_t kdu_block::set_max_contexts(uint64_t this, int a2)
{
  if (*(this + 116) < a2)
  {
    v2 = *(this + 104);
    if (v2)
    {
      MEMORY[0x186602830](v2, 0x1000C8052888210);
    }

    operator new[]();
  }

  return this;
}

uint64_t kd_block::parse_packet_header(kd_block *this, kd_header_in *a2, kd_buf_server *a3, unsigned __int16 a4)
{
  *(this + 13) = 0;
  if (*(this + 24))
  {
    result = kd_header_in::get_bit(a2);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    if (*(this + 11) != *(this + 10))
    {
      exception = __cxa_allocate_exception(4uLL);
      v51 = 999;
LABEL_99:
      *exception = v51;
      v50 = MEMORY[0x1E69E5478];
      goto LABEL_94;
    }

    v8 = *(this + 4);
    if (v8)
    {
      v9 = 0;
      v10 = this;
      do
      {
        v11 = v10;
        v10 = v8;
        *(v11 + 4) = v9;
        v8 = *(v8 + 4);
        v9 = v11;
      }

      while (v8);
    }

    else
    {
      v11 = 0;
      v10 = this;
    }

    v12 = 0;
    v13 = 0;
    *(v10 + 4) = v11;
    v14 = (a4 + 1);
    do
    {
      v15 = v10;
      v16 = *(v10 + 11);
      if (v16 >= v13)
      {
        v17 = *(v15 + 10);
        LOWORD(v13) = v16;
      }

      else
      {
        *(v15 + 11) = v13;
        *(v15 + 10) = v13;
        v17 = v13;
      }

      if (v13 == v17 && v14 > v13)
      {
        LOWORD(v17) = v13;
        do
        {
          *(v15 + 11) = v17 + 1;
          bit = kd_header_in::get_bit(a2);
          v17 = *(v15 + 10);
          if (!bit)
          {
            v17 = (v17 + 1);
            *(v15 + 10) = v17;
          }

          v20 = *(v15 + 11);
        }

        while (v20 == v17 && v14 > v20);
      }

      v10 = *(v15 + 4);
      *(v15 + 4) = v12;
      v12 = v15;
      v13 = v17;
    }

    while (v10);
    v22 = *(this + 11);
    v23 = *(this + 10);
    if (v22 != v23 && v23 != a4)
    {
      exception = __cxa_allocate_exception(2uLL);
      v49 = 21;
      goto LABEL_93;
    }

    if (v22 == v23)
    {
      return 0;
    }
  }

  v24 = *(this + 18);
  if (*(this + 24))
  {
    if (v24 != 255)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  if (*(this + 17))
  {
    goto LABEL_53;
  }

  do
  {
    v25 = *(this + 4);
    if (v25)
    {
      v26 = 0;
      v27 = this;
      do
      {
        v28 = v27;
        v27 = v25;
        *(v28 + 4) = v26;
        v25 = *(v25 + 4);
        v26 = v28;
      }

      while (v25);
    }

    else
    {
      v28 = 0;
      v27 = this;
    }

    v29 = 0;
    v30 = 0;
    *(v27 + 4) = v28;
    v31 = *(this + 24) + 1;
    do
    {
      if (*(v27 + 24) >= v29)
      {
        v32 = *(v27 + 17);
        LOBYTE(v29) = *(v27 + 24);
      }

      else
      {
        *(v27 + 24) = v29;
        *(v27 + 17) = v29;
        v32 = v29;
      }

      if (v32 == v29 && v29 < v31)
      {
        LOBYTE(v32) = v29;
        while (1)
        {
          *(v27 + 24) = v32 + 1;
          v33 = kd_header_in::get_bit(a2);
          v32 = *(v27 + 17);
          if (!v33)
          {
            v32 = (v32 + 1);
            *(v27 + 17) = v32;
            if (v32 >= 0x4Bu)
            {
              break;
            }
          }

          v34 = *(v27 + 24);
          if (v34 != v32 || v34 >= v31)
          {
            goto LABEL_51;
          }
        }

        *(this + 24) = 0;
        *(this + 18) = 0;
        exception = __cxa_allocate_exception(2uLL);
        v49 = 74;
LABEL_93:
        *exception = v49;
        v50 = MEMORY[0x1E69E54A0];
LABEL_94:
        __cxa_throw(exception, v50, 0);
      }

LABEL_51:
      v35 = *(v27 + 4);
      *(v27 + 4) = v30;
      v29 = v32;
      v30 = v27;
      v27 = v35;
    }

    while (v35);
  }

  while (*(this + 17) == *(this + 24));
LABEL_53:
  *(this + 11) = 0;
  *(this + 24) = 3;
  if (*(this + 19))
  {
    exception = __cxa_allocate_exception(4uLL);
    v51 = 998;
    goto LABEL_99;
  }

  if (v24 != 255)
  {
    kd_block::start_buffering(this, a3);
LABEL_56:
    kd_block::put_byte(this, SHIBYTE(a4), a3);
    kd_block::put_byte(this, a4, a3);
  }

LABEL_57:
  v36 = kd_header_in::get_bit(a2);
  v37 = v36 + 1;
  if (v36 >= 1)
  {
    v37 += kd_header_in::get_bit(a2);
    if (v37 >= 3)
    {
      v37 += kd_header_in::get_bits(a2, 2);
      if (v37 >= 6)
      {
        v37 += kd_header_in::get_bits(a2, 5);
        if (v37 >= 37)
        {
          v37 += kd_header_in::get_bits(a2, 7);
        }
      }
    }
  }

  while (kd_header_in::get_bit(a2))
  {
    v38 = *(this + 24);
    if (v38 == 255)
    {
      goto LABEL_95;
    }

    *(this + 24) = v38 + 1;
  }

  v39 = *(this + 19);
  if (v37 >= 1)
  {
    v40 = *(this + 25);
    while (1)
    {
      if ((v40 & 4) != 0)
      {
        v41 = 1;
      }

      else
      {
        v41 = v37;
      }

      if ((((v40 & 4) == 0) & v40) != 0)
      {
        if ((-1431655765 * (v39 - 10)) >= 0x55555556)
        {
          v42 = 1;
        }

        else
        {
          v42 = 2;
        }

        if (v39 <= 9)
        {
          v42 = 10 - v39;
        }

        if (v42 >= v37)
        {
          v41 = v37;
        }

        else
        {
          v41 = v42;
        }
      }

      v43 = -2;
      do
      {
        v44 = 1 << (v43++ + 2);
      }

      while (v44 <= v41);
      bits = kd_header_in::get_bits(a2, *(this + 24) + v43);
      if (bits >= 0x8000)
      {
        break;
      }

      v46 = *(this + 13);
      if (bits >= 0x10000 - v46)
      {
        break;
      }

      *(this + 13) = v46 + bits;
      v37 -= v41;
      if (v24 != 255)
      {
        if (v37 <= 0)
        {
          v47 = bits;
        }

        else
        {
          v47 = bits | 0x8000;
        }

        kd_block::put_byte(this, SHIBYTE(v47), a3);
        kd_block::put_byte(this, v47, a3);
        kd_block::put_byte(this, v41, a3);
      }

      v39 += v41;
      if (v37 <= 0)
      {
        goto LABEL_89;
      }
    }

LABEL_95:
    exception = __cxa_allocate_exception(2uLL);
    v49 = 13;
    goto LABEL_93;
  }

LABEL_89:
  *(this + 19) = v39;
  if (v24 != 255)
  {
    *(this + 18) = v39;
  }

  return *(this + 13);
}