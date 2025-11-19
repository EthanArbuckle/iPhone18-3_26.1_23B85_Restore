uint64_t kd_compressed_stats::update_stats(kd_compressed_stats *this, kd_compressed_stats *a2)
{
  *(this + 4) += *(a2 + 4);
  *(a2 + 4) = 0;
  v2 = *(a2 + 8202);
  if (v2 < *(this + 8202))
  {
    *(this + 8202) = v2;
  }

  v3 = *(a2 + 8203);
  if (v3 > *(this + 8203))
  {
    *(this + 8203) = v3;
    v3 = *(a2 + 8203);
  }

  v4 = *(a2 + 8202);
  if (v4 <= v3)
  {
    v5 = 8 * v4 + 40;
    v6 = (a2 + v5);
    v7 = (this + v5);
    v8 = v3 - v4 + 1;
    do
    {
      *v7++ += *v6;
      *v6++ = 0;
      --v8;
    }

    while (v8);
  }

  *(a2 + 4101) = 4095;
  if ((*(this + 32824) & 1) == 0)
  {
    return 0;
  }

  v9 = *(this + 2);
  if (*(this + 4) <= v9)
  {
    return 0;
  }

  *(this + 2) = v9 + ((*(this + 1) + 7) >> 4);
  return 1;
}

uint64_t kdu_thread_entity::try_lock(kdu_thread_entity *this, int a2, int a3)
{
  if (a2 < 0 || *(this + 12) <= a2 || (v4 = *(this + 7) + 80 * a2, *(v4 + 72) == this))
  {
    kdu_thread_entity::try_lock();
  }

  if (a3 && **(this + 5) == 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = *(*(this + 5) + 4);
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  if (*(v4 + 64) != 1 || pthread_mutex_trylock((*(this + 7) + 80 * a2)))
  {
    return 0;
  }

  *(v4 + 72) = this;
  return 1;
}

__n128 kd_global_rescomp::add_ready_precinct(uint64_t a1, void *a2)
{
  if (a2[8] || a2[7] || (v3 = (a1 + 48), *(a1 + 48) == a2))
  {
    kd_global_rescomp::add_ready_precinct();
  }

  v4 = *(a1 + 56);
  a2[8] = v4;
  if (v4)
  {
    v3 = (v4 + 56);
  }

  *v3 = a2;
  *(a1 + 56) = a2;
  v5 = *a2;
  v6 = (a2[1] - *(*a2 + 232)) >> 3;
  v7 = *(*a2 + 196);
  v8 = v6 / v7;
  v9 = *(*a2 + 184);
  LODWORD(v6) = *(*a2 + 188) - v6 / v7 * v7 + v6;
  v15 = *(*a2 + 168);
  LODWORD(v15) = v15 + DWORD2(v15) * (v9 + v8);
  DWORD1(v15) += HIDWORD(v15) * v6;
  kdu_dims::operator&=(&v15, (v5 + 48));
  *(a1 + 64) += SDWORD2(v15) * SHIDWORD(v15);
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 72) = result;
  return result;
}

uint64_t kd_codestream::trim_compressed_data(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    v2 = 16 * *(v1 + 32820);
    v3 = v2 < 2 ? 1 : v2 - 1;
    if (v2 >= 2)
    {
      v4 = this;
      v5 = *(this + 168);
      v6 = *(this + 352) + 2816 * v5;
      v7 = 32;
      do
      {
        v8 = v7;
        if (v5 >= 1)
        {
          for (i = 0; i < v5; ++i)
          {
            v10 = *(v6 + 48);
            if (v10)
            {
              do
              {
                v11 = *v10;
                if (*(*v10 + 222))
                {
                  v12 = 0;
                  do
                  {
                    v13 = v10[6] + 32 * v12;
                    if (*(v13 + 16) * *(v13 + 20) >= 1)
                    {
                      v14 = 0;
                      v15 = 0;
                      do
                      {
                        this = kd_block::trim_data((*(v13 + 24) + v14), v3, *(v4 + 48));
                        ++v15;
                        v14 += 40;
                      }

                      while (v15 < *(v13 + 16) * *(v13 + 20));
                      v11 = *v10;
                    }

                    ++v12;
                  }

                  while (v12 < *(v11 + 222));
                }

                v10 = v10[7];
              }

              while (v10);
              v5 = *(v4 + 168);
            }

            v6 += 88;
          }
        }

        v7 = v8 - 1;
        v6 -= 176 * v5;
      }

      while (v8);
    }
  }

  return this;
}

uint64_t kd_packet_sequencer::init(kd_packet_sequencer *this)
{
  v1 = *this;
  if ((*(*this + 292) & 1) == 0)
  {
    kd_packet_sequencer::init();
  }

  *(this + 2) = 0;
  *(this + 12) = 1;
  if (*(v1 + 188) >= 1)
  {
    v2 = 0;
    v3 = *this;
    v4 = *(*this + 188);
    v5 = *(this + 2);
    while (1)
    {
      v6 = *(v1 + 272) + 224 * v2;
      v7 = *(v6 + 68);
      if (v7 > v5)
      {
        *(this + 2) = v7;
        v5 = v7;
      }

      v8 = *(v6 + 32);
      if (v8 >= 2)
      {
        break;
      }

      v10 = *(v6 + 32);
LABEL_12:
      if (v10 != 1)
      {
        goto LABEL_19;
      }

      v12 = *(v6 + 28);
      if (v12 >= 2)
      {
        while ((v12 & 1) == 0)
        {
          v13 = v12 >> 1;
          v11 = v12 > 2;
          v12 >>= 1;
          if (!v11)
          {
            goto LABEL_18;
          }
        }

LABEL_19:
        *(this + 12) = 0;
        goto LABEL_20;
      }

      v13 = *(v6 + 28);
LABEL_18:
      if (v13 != 1)
      {
        goto LABEL_19;
      }

LABEL_20:
      if ((v7 & 0x80000000) == 0)
      {
        v14 = 0;
        v15 = v7 + 1;
        v16 = (*(v6 + 176) + 176);
        while (1)
        {
          v17 = v16[1] << *(v16 - 150);
          v18 = v17 * v8;
          if (v14)
          {
            v19 = *(v6 + 200);
            if (v18 < v19)
            {
              *(v6 + 200) = v18;
              v19 = v18;
            }

            v20 = (*v16 << *(v16 - 149)) * *(v6 + 28);
            if (v20 >= *(v6 + 196))
            {
              goto LABEL_29;
            }
          }

          else
          {
            *(v6 + 200) = v18;
            v20 = (*v16 << *(v16 - 149)) * *(v6 + 28);
            v19 = v17 * v8;
          }

          *(v6 + 196) = v20;
LABEL_29:
          ++v14;
          v16 += 176;
          if (v15 == v14)
          {
            goto LABEL_32;
          }
        }
      }

      v19 = *(v6 + 200);
LABEL_32:
      v21 = *(v1 + 212);
      v22 = *(v1 + 216);
      v24 = v1 + 244;
      v23 = *(v1 + 244);
      v25 = v22 - *(v24 + 4);
      if (v19 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v19;
      }

      if ((v25 & 0x80000000) != 0)
      {
        v27 = ~(~v25 / v26);
      }

      else
      {
        v27 = v25 / v26;
      }

      v28 = v21 - v23;
      v29 = v27 * v19;
      *(v6 + 192) = v27 * v19;
      v30 = *(v6 + 196);
      if (v30 <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = *(v6 + 196);
      }

      if ((v28 & 0x80000000) != 0)
      {
        v32 = ~(~v28 / v31);
      }

      else
      {
        v32 = v28 / v31;
      }

      v33 = v32 * v30;
      *(v6 + 188) = v33;
      v34 = *(v3 + 248);
      *(v6 + 188) = *(v3 + 244) + v33;
      *(v6 + 192) = v29 + v34;
      ++v2;
      v1 = v3;
      if (v2 >= v4)
      {
        v1 = v3;
        goto LABEL_46;
      }
    }

    v9 = *(v6 + 32);
    while ((v9 & 1) == 0)
    {
      v10 = v9 >> 1;
      v11 = v9 > 2;
      v9 >>= 1;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_19;
  }

LABEL_46:
  *(this + 2) = (*(v1 + 220) + *(v1 + 212)) | ((*(v1 + 224) + *(v1 + 216)) << 32);
  *(this + 24) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;

  return kd_packet_sequencer::next_progression(this);
}

uint64_t kd_packet_sequencer::next_progression(kd_packet_sequencer *this)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = *(this + 13);
  if (v2)
  {
LABEL_2:
    v3 = kdu_params::get(v2, "Porder", *(this + 28), 0, this + 9, 1, 1, 1);
    v4 = *(this + 13);
    if (v3)
    {
      v5 = *(this + 28);
LABEL_4:
      kdu_params::get(v4, "Porder", v5, 1, this + 10, 1, 1, 1);
      kdu_params::get(*(this + 13), "Porder", *(this + 28), 2, this + 11, 1, 1, 1);
      kdu_params::get(*(this + 13), "Porder", *(this + 28), 3, this + 12, 1, 1, 1);
      kdu_params::get(*(this + 13), "Porder", *(this + 28), 4, this + 13, 1, 1, 1);
      kdu_params::get(*(this + 13), "Porder", *(this + 28), 5, this + 8, 1, 1, 1);
      if ((*(this + 10) || *(this + 9)) && !*(this + 28) && !*(*(this + 13) + 24) && !*(**this + 160))
      {
        *&v39 = 0;
        *v37 = 0u;
        v38 = 0u;
        kdu_warning::kdu_warning(v37, "Kakadu Core Warning:\n");
        (*(*v37 + 16))(v37, "Profile violation detected (code-stream is technically illegal).  In a Profile-0 code-stream, the first progression specification found in the first POC marker segment of the main or any tile header may not describe a progression which starts from resolution or component indices other than 0.");
        *(**this + 160) = 2;
        kdu_warning::~kdu_warning(v37);
      }

      ++*(this + 28);
      v6 = *this;
      v7 = *(*this + 192);
      if (*(this + 11) > v7)
      {
        *(this + 11) = v7;
      }

      goto LABEL_30;
    }

    v10 = *(v4 + 6) + 1;
    v11 = kdu_params::access_relation(*(this + 13), *(*this + 8), -1, v10, 1);
    if (v11 && (v4 = v11, (kdu_params::get(v11, "Porder", 0, 0, this + 9, 1, 1, 1) & 1) != 0))
    {
      if (v10 < *(*this + 304))
      {
        v5 = 0;
        *(this + 13) = v4;
        *(this + 28) = 0;
        goto LABEL_4;
      }
    }

    else if (!*(**this + 8))
    {
      v36 = 0;
      memset(v35, 0, sizeof(v35));
      kdu_error::kdu_error(v35, "Kakadu Core Error:\n");
      (*(*&v35[0] + 16))(v35, "Supplied progression order attributes for tile ");
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      *v37 = 0u;
      if (BYTE8(v35[0]))
      {
        sprintf(v37, "%x");
      }

      else
      {
        sprintf(v37, "%d");
      }

      (*(*&v35[0] + 16))(v35, v37);
      (*(*&v35[0] + 16))(v35, " are insuffient to cover all packets for the tile!");
      kdu_error::~kdu_error(v35);
    }

    return 0;
  }

  v8 = kdu_params::access_cluster(*(**this + 24), "POC");
  *(this + 13) = v8;
  if (!v8)
  {
    kd_packet_sequencer::next_progression();
  }

  v9 = kdu_params::access_relation(v8, *(*this + 8), -1, 0, 1);
  *(this + 13) = v9;
  if (!v9)
  {
    kd_packet_sequencer::next_progression();
  }

  if (kdu_params::get(v9, "Porder", 0, 0, this + 9, 1, 1, 1))
  {
    v2 = *(this + 13);
    if (v2)
    {
      goto LABEL_2;
    }
  }

  else
  {
    *(this + 13) = 0;
  }

  v13 = kdu_params::access_cluster(*(**this + 24), "COD");
  v14 = kdu_params::access_relation(v13, *(*this + 8), -1, 0, 1);
  if ((kdu_params::get(v14, "Corder", 0, 0, this + 8, 1, 1, 1) & 1) == 0)
  {
    kd_packet_sequencer::next_progression();
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  v6 = *this;
  *(this + 11) = *(*this + 192);
  v15 = *(v6 + 188);
  *(this + 12) = *(this + 2) + 1;
  *(this + 13) = v15;
LABEL_30:
  v16 = *(this + 13);
  v17 = *(v6 + 188);
  if (v16 > v17)
  {
    *(this + 13) = v17;
    v16 = v17;
  }

  v18 = *(this + 2);
  if (*(this + 12) > v18)
  {
    *(this + 12) = v18 + 1;
  }

  v19 = *(this + 9);
  v20 = *(this + 10);
  *(this + 14) = 0;
  *(this + 15) = v20;
  *(this + 17) = 0;
  *(this + 18) = 0;
  v21 = *(this + 8);
  *(this + 16) = v19;
  if ((v21 - 2) < 2)
  {
    if ((*(this + 12) & 1) == 0)
    {
      *&v39 = 0;
      *v37 = 0u;
      v38 = 0u;
      kdu_error::kdu_error(v37, "Kakadu Core Error:\n");
      (*(*v37 + 16))(v37, "Attempting to use a spatially progressive packet sequence where position order dominates component order. This is illegal when the component sub-sampling factors are not exact powers of 2!");
      kdu_error::~kdu_error(v37);
    }

    if (v17 >= 1)
    {
      v22 = 0;
      v23 = (*(v6 + 272) + 200);
      do
      {
        v24 = *v23;
        if (v22)
        {
          if (v24 < *(this + 22))
          {
            *(this + 22) = v24;
            *(this + 20) = *(v23 - 2);
          }

          v25 = *(v23 - 1);
          if (v25 >= *(this + 21))
          {
            goto LABEL_46;
          }
        }

        else
        {
          *(this + 22) = v24;
          *(this + 20) = *(v23 - 2);
          v25 = *(v23 - 1);
        }

        *(this + 21) = v25;
        *(this + 19) = *(v23 - 3);
LABEL_46:
        ++v22;
        v23 += 56;
      }

      while (v17 != v22);
    }

    v26 = *(this + 76);
    goto LABEL_51;
  }

  if (v21 == 4 && v20 < v16)
  {
    v26 = *(*(v6 + 272) + 224 * v20 + 188);
    *(this + 76) = v26;
    *(this + 84) = *(*(v6 + 272) + 224 * v20 + 196);
LABEL_51:
    *(this + 92) = v26;
    v27 = *(v6 + 188);
    if (v27 >= 1)
    {
      v28 = 0;
      v29 = *(v6 + 272);
      do
      {
        v30 = v29 + 224 * v28;
        v31 = *(v30 + 68);
        if ((v31 & 0x80000000) == 0)
        {
          v32 = *(v30 + 176);
          v33 = v31 + 1;
          v34 = (v32 + 688);
          do
          {
            *v34 = 0;
            v34 += 88;
            --v33;
          }

          while (v33);
        }

        ++v28;
      }

      while (v28 != v27);
    }
  }

  return 1;
}

void sub_185F3DF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  kdu_warning::~kdu_warning(va);
  _Unwind_Resume(a1);
}

_BYTE *kd_packet_sequencer::save_state(_BYTE *this)
{
  v1 = *(this + 3);
  *(this + 120) = *(this + 2);
  *(this + 136) = v1;
  v2 = *(this + 5);
  *(this + 184) = *(this + 6);
  v3 = *(this + 4);
  *(this + 168) = v2;
  *(this + 50) = *(this + 28);
  *(this + 152) = v3;
  v4 = *this;
  *(v4 + 324) = *(*this + 308);
  if (*(v4 + 188) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 272) + 224 * v5;
      *(v6 + 204) = *(v6 + 188);
      if ((*(v6 + 68) & 0x80000000) == 0)
      {
        v7 = 0;
        do
        {
          v8 = *(v6 + 176) + 704 * v7;
          *(v8 + 696) = *(v8 + 688);
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
                *(v11 + 32) = *(v11 + 28);
              }

              v9 += 8;
            }

            while (v10 != v9);
          }
        }

        while (v7++ < *(v6 + 68));
      }

      ++v5;
      v4 = *this;
    }

    while (v5 < *(*this + 188));
  }

  this[24] = 1;
  return this;
}

uint64_t *kd_packet_sequencer::restore_state(uint64_t *this)
{
  if ((this[3] & 1) == 0)
  {
    kd_packet_sequencer::restore_state();
  }

  v1 = *(this + 17);
  *(this + 2) = *(this + 15);
  *(this + 3) = v1;
  *(this + 28) = *(this + 50);
  v2 = *(this + 23);
  v3 = *(this + 19);
  *(this + 5) = *(this + 21);
  *(this + 6) = v2;
  *(this + 4) = v3;
  v4 = *this;
  *(v4 + 308) = *(*this + 324);
  if (*(v4 + 188) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 272) + 224 * v5;
      *(v6 + 188) = *(v6 + 204);
      if ((*(v6 + 68) & 0x80000000) == 0)
      {
        v7 = 0;
        do
        {
          v8 = *(v6 + 176) + 704 * v7;
          *(v8 + 688) = *(v8 + 696);
          v9 = (*(v8 + 192) * *(v8 + 196));
          if (v9 >= 1)
          {
            v10 = *(v8 + 232);
            do
            {
              v12 = *v10++;
              v11 = v12;
              v13 = v12 & 1;
              if (v12)
              {
                v14 = v13 == 0;
              }

              else
              {
                v14 = 0;
              }

              if (v14)
              {
                *(v11 + 28) = *(v11 + 32);
              }

              --v9;
            }

            while (v9);
          }
        }

        while (v7++ < *(v6 + 68));
      }

      ++v5;
      v4 = *this;
    }

    while (v5 < *(*this + 188));
  }

  return this;
}

uint64_t *kd_packet_sequencer::next_in_sequence(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (*(*a1 + 308) == *(*a1 + 208))
  {
    return 0;
  }

  while (1)
  {
    v6 = *(a1 + 8);
    if (v6 <= 1)
    {
      if (v6)
      {
        if (v6 != 1)
        {
LABEL_29:
          kd_packet_sequencer::next_in_sequence();
        }

        v7 = kd_packet_sequencer::next_in_rlcp(a1, a2, a3);
      }

      else
      {
        v7 = kd_packet_sequencer::next_in_lrcp(a1, a2, a3);
      }
    }

    else
    {
      switch(v6)
      {
        case 2:
          v7 = kd_packet_sequencer::next_in_rpcl(a1, a2, a3);
          break;
        case 3:
          v7 = kd_packet_sequencer::next_in_pcrl(a1, a2, a3);
          break;
        case 4:
          v7 = kd_packet_sequencer::next_in_cprl(a1, a2, a3);
          break;
        default:
          goto LABEL_29;
      }
    }

    v8 = v7;
    if (v7)
    {
      break;
    }

    if ((kd_packet_sequencer::next_progression(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v7;
  if (*v7)
  {
    v10 = 0;
  }

  v11 = *a1;
  if (*(**a1 + 8) && (!v10 || !*(v10 + 28)))
  {
    v13 = *(v11 + 104);
    v12 = (v11 + 104);
    if (v13)
    {
      v14 = kd_precinct_pointer_server::pop_address(v12);
      if (v14 >= 1)
      {
        if (!kd_precinct_ref::set_address(v8, *a2, *a3, v14))
        {
          return 0;
        }

        return v8;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        return v8;
      }

      return 0;
    }
  }

  return v8;
}

uint64_t *kd_packet_sequencer::next_in_lrcp(_DWORD *a1, uint64_t *a2, void *a3)
{
  v3 = a1[11];
  v4 = a1[14];
  if (v4 >= v3)
  {
    return 0;
  }

  v5 = a1[12];
  v6 = a1[16];
  while (v6 >= v5)
  {
LABEL_25:
    a1[14] = ++v4;
    v6 = a1[9];
    a1[16] = v6;
    if (v4 == v3)
    {
      return 0;
    }
  }

  v7 = a1[13];
  LODWORD(v8) = a1[15];
  v9 = v6;
  while (v8 >= v7)
  {
LABEL_24:
    ++v9;
    LODWORD(v8) = a1[10];
    a1[15] = v8;
    a1[16] = v9;
    if (v5 == v9)
    {
      goto LABEL_25;
    }
  }

  v10 = *(*a1 + 272);
  v8 = v8;
  while (1)
  {
    v11 = v10 + 224 * v8;
    if (v9 <= *(v11 + 68))
    {
      v12 = *(v11 + 176) + 704 * v9;
      v13 = *(v12 + 192);
      v14 = a1[17];
      if (v14 < v13)
      {
        break;
      }
    }

LABEL_23:
    a1[15] = ++v8;
    a1[17] = 0;
    if (v7 == v8)
    {
      goto LABEL_24;
    }
  }

  v15 = *(v12 + 196);
  v16 = a1[18];
  v17 = 8 * v14 * v15;
  while (1)
  {
    v18 = v15 - v16;
    if (v15 > v16)
    {
      break;
    }

LABEL_22:
    v16 = 0;
    *(a1 + 17) = ++v14;
    v17 += 8 * v15;
    if (v13 == v14)
    {
      goto LABEL_23;
    }
  }

  v19 = (*(v12 + 232) + v17 + 8 * v16);
  v20 = v16 + 1;
  while (1)
  {
    v21 = *v19;
    if (!*v19)
    {
      break;
    }

    if ((v21 & 1) == 0 && (*(v21 + 17) & 1) == 0)
    {
      v22 = *(v21 + 28);
      if (v22 < v4 && v4 != 0)
      {
        goto LABEL_30;
      }

      if (v22 == v4)
      {
        goto LABEL_28;
      }
    }

    a1[18] = v20;
    ++v19;
    ++v20;
    if (!--v18)
    {
      goto LABEL_22;
    }
  }

  if (v4)
  {
LABEL_30:
    kd_packet_sequencer::next_in_lrcp();
  }

LABEL_28:
  *a2 = v12;
  *a3 = *(a1 + 17);
  return v19;
}

uint64_t *kd_packet_sequencer::next_in_rlcp(_DWORD *a1, uint64_t *a2, void *a3)
{
  v3 = a1[12];
  v4 = a1[16];
  if (v4 >= v3)
  {
    return 0;
  }

  v5 = a1[11];
  v6 = a1[14];
  while (v6 >= v5)
  {
LABEL_25:
    v6 = 0;
    a1[16] = ++v4;
    a1[14] = 0;
    if (v3 == v4)
    {
      return 0;
    }
  }

  v7 = a1[13];
  v8 = a1[15];
  while (v8 >= v7)
  {
LABEL_24:
    ++v6;
    v8 = a1[10];
    a1[14] = v6;
    a1[15] = v8;
    if (v6 == v5)
    {
      goto LABEL_25;
    }
  }

  v9 = *(*a1 + 272);
  v10 = v8;
  while (1)
  {
    v11 = v9 + 224 * v10;
    if (v4 <= *(v11 + 68))
    {
      v12 = *(v11 + 176) + 704 * v4;
      v13 = *(v12 + 192);
      v14 = a1[17];
      if (v14 < v13)
      {
        break;
      }
    }

LABEL_23:
    a1[15] = ++v10;
    a1[17] = 0;
    if (v7 == v10)
    {
      goto LABEL_24;
    }
  }

  v15 = *(v12 + 196);
  v16 = a1[18];
  v17 = 8 * v14 * v15;
  while (1)
  {
    v18 = v15 - v16;
    if (v15 > v16)
    {
      break;
    }

LABEL_22:
    v16 = 0;
    *(a1 + 17) = ++v14;
    v17 += 8 * v15;
    if (v13 == v14)
    {
      goto LABEL_23;
    }
  }

  v19 = (*(v12 + 232) + v17 + 8 * v16);
  v20 = v16 + 1;
  while (1)
  {
    v21 = *v19;
    if (!*v19)
    {
      break;
    }

    if ((v21 & 1) == 0 && (*(v21 + 17) & 1) == 0)
    {
      v22 = *(v21 + 28);
      if (v22 < v6 && v6 != 0)
      {
        goto LABEL_30;
      }

      if (v22 == v6)
      {
        goto LABEL_28;
      }
    }

    a1[18] = v20;
    ++v19;
    ++v20;
    if (!--v18)
    {
      goto LABEL_22;
    }
  }

  if (v6)
  {
LABEL_30:
    kd_packet_sequencer::next_in_rlcp();
  }

LABEL_28:
  *a2 = v12;
  *a3 = *(a1 + 17);
  return v19;
}

uint64_t kd_packet_sequencer::next_in_rpcl(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (*(a1 + 11) >= 1)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 12);
    if (v3 < v4)
    {
      v5 = *(a1 + 23);
      v6 = *(a1 + 4);
      while (1)
      {
        if (v5 < v6)
        {
          v7 = *(a1 + 24);
          v8 = *(a1 + 5);
          do
          {
            if (v7 < v8)
            {
              v9 = *(a1 + 15);
              v10 = *(a1 + 13);
              do
              {
                if (v9 < v10)
                {
                  while (1)
                  {
                    v11 = *a1;
                    v12 = *(*a1 + 272) + 224 * v9;
                    v13 = *(a1 + 16);
                    if (v13 <= *(v12 + 68))
                    {
                      v14 = *(v12 + 176) + 704 * v13;
                      v15 = *(v14 + 688);
                      *(a1 + 68) = v15;
                      v16 = HIDWORD(v15);
                      v17 = *(v14 + 196);
                      if (v17 > SHIDWORD(v15) && *(v14 + 192) > v15)
                      {
                        v18 = *(v14 + 232) + 8 * (v15 >> 32);
                        v19 = v17 * v15;
                        v20 = *(v18 + 8 * v17 * v15);
                        if (v20 && ((v20 & 1) != 0 || (*(v20 + 17) & 1) != 0 || *(v20 + 28) >= *(a1 + 11)))
                        {
                          *(a1 + 18) = HIDWORD(v15) + 1;
                          if (HIDWORD(v15) + 1 >= v17)
                          {
                            *(a1 + 68) = (v15 + 1);
                          }

                          *(v14 + 688) = *(a1 + 68);
                          v9 = *(a1 + 15);
                          v10 = *(a1 + 13);
                        }

                        else
                        {
                          v21 = *(v11 + 244) + (((*(v14 + 184) + v15) * *(v14 + 176)) << *(v14 + 27)) * *(v12 + 28);
                          if (v21 < *(a1 + 19) || v21 == *(a1 + 23))
                          {
                            v22 = *(v11 + 248) + (((*(v14 + 188) + v16) * *(v14 + 180)) << *(v14 + 26)) * *(v12 + 32);
                            if (v22 < *(a1 + 20) || v22 == *(a1 + 24))
                            {
                              v23 = v18 + 8 * v19;
                              *a2 = v14;
                              *a3 = *(a1 + 68);
                              return v23;
                            }
                          }
                        }
                      }
                    }

                    *(a1 + 15) = ++v9;
                    if (v9 >= v10)
                    {
                      v7 = *(a1 + 24);
                      v8 = *(a1 + 5);
                      break;
                    }
                  }
                }

                v7 += *(a1 + 22);
                *(a1 + 24) = v7;
                v9 = *(a1 + 10);
                *(a1 + 15) = v9;
              }

              while (v7 < v8);
              v5 = *(a1 + 23);
              v6 = *(a1 + 4);
            }

            v7 = *(a1 + 20);
            v5 += *(a1 + 21);
            *(a1 + 23) = v5;
            *(a1 + 24) = v7;
          }

          while (v5 < v6);
          v3 = *(a1 + 16);
          v4 = *(a1 + 12);
        }

        v23 = 0;
        *(a1 + 16) = ++v3;
        v5 = *(a1 + 19);
        *(a1 + 23) = v5;
        if (v3 >= v4)
        {
          return v23;
        }
      }
    }
  }

  return 0;
}

uint64_t kd_packet_sequencer::next_in_pcrl(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (*(a1 + 11) >= 1)
  {
    v3 = *(a1 + 23);
    v4 = *(a1 + 4);
    if (v3 < v4)
    {
      v5 = *(a1 + 24);
      v6 = *(a1 + 5);
      while (1)
      {
        if (v5 < v6)
        {
          v7 = *(a1 + 15);
          v8 = *(a1 + 13);
          do
          {
            if (v7 < v8)
            {
              v9 = *(a1 + 16);
              v10 = *(a1 + 12);
              do
              {
                if (v9 < v10)
                {
                  v11 = *a1;
                  v7 = *(a1 + 15);
                  v12 = *(*a1 + 272) + 224 * v7;
                  if (v9 <= *(v12 + 68))
                  {
                    do
                    {
                      v13 = *(v12 + 176) + 704 * v9;
                      v14 = *(v13 + 688);
                      *(a1 + 68) = v14;
                      v15 = HIDWORD(v14);
                      v16 = *(v13 + 196);
                      if (v16 > SHIDWORD(v14) && *(v13 + 192) > v14)
                      {
                        v17 = *(v13 + 232) + 8 * (v14 >> 32);
                        v18 = v16 * v14;
                        v19 = *(v17 + 8 * v16 * v14);
                        if (v19 && ((v19 & 1) != 0 || (*(v19 + 17) & 1) != 0 || *(v19 + 28) >= *(a1 + 11)))
                        {
                          *(a1 + 18) = HIDWORD(v14) + 1;
                          if (HIDWORD(v14) + 1 >= v16)
                          {
                            *(a1 + 68) = (v14 + 1);
                          }

                          *(v13 + 688) = *(a1 + 68);
                          v9 = *(a1 + 16);
                          v10 = *(a1 + 12);
                        }

                        else
                        {
                          v20 = *(v11 + 244) + (((*(v13 + 184) + v14) * *(v13 + 176)) << *(v13 + 27)) * *(v12 + 28);
                          if (v20 < *(a1 + 19) || v20 == *(a1 + 23))
                          {
                            v21 = *(v11 + 248) + (((*(v13 + 188) + v15) * *(v13 + 180)) << *(v13 + 26)) * *(v12 + 32);
                            if (v21 < *(a1 + 20) || v21 == *(a1 + 24))
                            {
                              v23 = v17 + 8 * v18;
                              *a2 = v13;
                              *a3 = *(a1 + 68);
                              return v23;
                            }
                          }
                        }
                      }

                      *(a1 + 16) = v9 + 1;
                      if (v9 + 1 >= v10)
                      {
                        v7 = *(a1 + 15);
                        break;
                      }

                      v11 = *a1;
                      v7 = *(a1 + 15);
                      v12 = *(*a1 + 272) + 224 * v7;
                    }

                    while (v9++ < *(v12 + 68));
                  }

                  v8 = *(a1 + 13);
                }

                ++v7;
                v9 = *(a1 + 9);
                *(a1 + 15) = v7;
                *(a1 + 16) = v9;
              }

              while (v7 < v8);
              v5 = *(a1 + 24);
              v6 = *(a1 + 5);
            }

            v5 += *(a1 + 22);
            *(a1 + 24) = v5;
            v7 = *(a1 + 10);
            *(a1 + 15) = v7;
          }

          while (v5 < v6);
          v3 = *(a1 + 23);
          v4 = *(a1 + 4);
        }

        v23 = 0;
        v5 = *(a1 + 20);
        v3 += *(a1 + 21);
        *(a1 + 23) = v3;
        *(a1 + 24) = v5;
        if (v3 >= v4)
        {
          return v23;
        }
      }
    }
  }

  return 0;
}

uint64_t kd_packet_sequencer::next_in_cprl(uint64_t a1, uint64_t *a2, void *a3)
{
  if (*(a1 + 44) >= 1)
  {
    v3 = *(a1 + 60);
    v4 = *(a1 + 52);
    if (v3 < v4)
    {
      LODWORD(v5) = *(a1 + 92);
      v6 = *(a1 + 16);
      while (1)
      {
        if (v5 < v6)
        {
          v7 = *(*a1 + 272) + 224 * v3;
          v8 = *(a1 + 96);
          v9 = *(a1 + 20);
          do
          {
            if (v8 < v9)
            {
              v10 = *(a1 + 64);
              v11 = *(a1 + 48);
              do
              {
                if (v10 < v11)
                {
                  if (v10 <= *(v7 + 68))
                  {
                    while (1)
                    {
                      v12 = *(v7 + 176) + 704 * v10;
                      v13 = *(v12 + 688);
                      *(a1 + 68) = v13;
                      v14 = *(v12 + 196);
                      if (v14 > SHIDWORD(v13) && *(v12 + 192) > v13)
                      {
                        v15 = *(v12 + 232) + 8 * (v13 >> 32);
                        v16 = v14 * v13;
                        v17 = *(v15 + 8 * v14 * v13);
                        if (v17 && ((v17 & 1) != 0 || (*(v17 + 17) & 1) != 0 || *(v17 + 28) >= *(a1 + 44)))
                        {
                          *(a1 + 72) = HIDWORD(v13) + 1;
                          if (HIDWORD(v13) + 1 >= v14)
                          {
                            *(a1 + 68) = (v13 + 1);
                          }

                          *(v12 + 688) = *(a1 + 68);
                          v10 = *(a1 + 64);
                          v11 = *(a1 + 48);
                        }

                        else
                        {
                          v18 = *(*a1 + 244) + (((*(v12 + 184) + v13) * *(v12 + 176)) << *(v12 + 27)) * *(v7 + 28);
                          if (v18 < *(a1 + 76) || v18 == *(a1 + 92))
                          {
                            v19 = *(*a1 + 248) + (((*(v12 + 188) + HIDWORD(v13)) * *(v12 + 180)) << *(v12 + 26)) * *(v7 + 32);
                            if (v19 < *(a1 + 80) || v19 == *(a1 + 96))
                            {
                              v22 = v15 + 8 * v16;
                              *a2 = v12;
                              *a3 = *(a1 + 68);
                              return v22;
                            }
                          }
                        }
                      }

                      *(a1 + 64) = v10 + 1;
                      if (v10 + 1 < v11 && v10++ < *(v7 + 68))
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v8 = *(a1 + 96);
                  v9 = *(a1 + 20);
                }

                v8 += *(a1 + 88);
                *(a1 + 96) = v8;
                v10 = *(a1 + 36);
                *(a1 + 64) = v10;
              }

              while (v8 < v9);
              LODWORD(v5) = *(a1 + 92);
              v6 = *(a1 + 16);
            }

            v8 = *(a1 + 80);
            LODWORD(v5) = v5 + *(a1 + 84);
            *(a1 + 92) = v5;
            *(a1 + 96) = v8;
          }

          while (v5 < v6);
          v3 = *(a1 + 60);
          v4 = *(a1 + 52);
        }

        *(a1 + 60) = ++v3;
        if (v3 >= v4)
        {
          break;
        }

        v21 = *(*a1 + 272) + 224 * v3;
        v5 = *(v21 + 188);
        *(a1 + 76) = v5;
        *(a1 + 84) = *(v21 + 196);
        *(a1 + 92) = v5;
      }
    }
  }

  return 0;
}

uint64_t *kd_global_rescomp::close_all(uint64_t *this)
{
  v1 = this[6];
  this[7] = v1;
  if (v1)
  {
    v2 = this;
    do
    {
      v2[6] = *(v1 + 56);
      *(v1 + 56) = 0;
      *(v1 + 64) = 0;
      this = kd_precinct_ref::close(*(v1 + 8));
      v1 = v2[6];
      v2[7] = v1;
    }

    while (v1);
  }

  return this;
}

__n128 kd_global_rescomp::initialize(kd_global_rescomp *this, kd_codestream *a2, int a3, int a4)
{
  kd_global_rescomp::close_all(this);
  *this = a2;
  *(this + 2) = a3;
  *(this + 3) = a4;
  v8 = *(a2 + 66);
  v9 = *(a2 + 67);
  v10 = (*(a2 + 39) + 104 * a4);
  if (v10[1] <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10[1];
  }

  if (v9 <= 0)
  {
    v12 = ~(-v9 / v11);
  }

  else
  {
    v12 = (v9 - 1) / v11;
  }

  v13 = *(a2 + 69) + v9;
  if (*v10 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = *v10;
  }

  if (v8 <= 0)
  {
    v15 = ~(-v8 / v14);
  }

  else
  {
    v15 = (v8 - 1) / v14;
  }

  v16 = *(a2 + 68) + v8;
  if (v13 <= 0)
  {
    v17 = ~(-v13 / v11);
  }

  else
  {
    v17 = (v13 - 1) / v11;
  }

  if (v16 <= 0)
  {
    v18 = ~(-v16 / v14);
  }

  else
  {
    v18 = (v16 - 1) / v14;
  }

  v19 = ((v18 >> *(v10 + a3 + 54)) - (v15 >> *(v10 + a3 + 54))) * ((v17 >> *(v10 + a3 + 21)) - (v12 >> *(v10 + a3 + 21)));
  *(this + 2) = v19;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = v19;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 72) = result;
  return result;
}

__n128 kd_global_rescomp::notify_tile_status(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = (*(*a1 + 312) + 104 * *(a1 + 12));
  if (v4[1] <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4[1];
  }

  if (a2 <= 0)
  {
    v6 = ~(-HIDWORD(a2) / v5);
  }

  else
  {
    v6 = (HIDWORD(a2) - 1) / v5;
  }

  v7 = HIDWORD(a3) + HIDWORD(a2);
  if (*v4 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = *v4;
  }

  if (a2 <= 0)
  {
    v9 = ~(-a2 / v8);
  }

  else
  {
    v9 = (a2 - 1) / v8;
  }

  v10 = a3 + a2;
  if (v7 <= 0)
  {
    v11 = ~(-v7 / v5);
  }

  else
  {
    v11 = (v7 - 1) / v5;
  }

  if (v10 <= 0)
  {
    v12 = ~(-v10 / v8);
  }

  else
  {
    v12 = (v10 - 1) / v8;
  }

  v13 = v4 + *(a1 + 8);
  v14 = ((v12 >> v13[54]) - (v9 >> v13[54])) * ((v11 >> v13[21]) - (v6 >> v13[21]));
  v15 = *(a1 + 32) + v14;
  *(a1 + 32) = v15;
  if (a4)
  {
    *(a1 + 24) += v14;
  }

  else
  {
    *(a1 + 40) -= v14;
  }

  if (v15 > *(a1 + 16) || (*(a1 + 40) & 0x8000000000000000) != 0)
  {
    kd_global_rescomp::notify_tile_status();
  }

  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 72) = result;
  return result;
}

uint64_t *kd_global_rescomp::close_ready_precinct(kd_global_rescomp *this, kd_precinct *a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 7);
    *(v4 + 56) = v5;
    if (v5)
    {
LABEL_3:
      v6 = (v5 + 64);
      goto LABEL_7;
    }
  }

  else
  {
    if (*(this + 6) != a2)
    {
      kd_global_rescomp::close_ready_precinct();
    }

    v5 = *(a2 + 7);
    *(this + 6) = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = (this + 56);
  if (*(this + 7) != a2)
  {
    kd_global_rescomp::close_ready_precinct();
  }

LABEL_7:
  *v6 = v4;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v7 = *a2;
  v8 = (*(a2 + 1) - *(*a2 + 232)) >> 3;
  v9 = *(*a2 + 196);
  v10 = v8 / v9;
  v11 = *(*a2 + 184);
  LODWORD(v8) = *(*a2 + 188) - v8 / v9 * v9 + v8;
  v20 = *(*a2 + 168);
  LODWORD(v20) = v20 + DWORD2(v20) * (v11 + v10);
  DWORD1(v20) += HIDWORD(v20) * v8;
  kdu_dims::operator&=(&v20, (v7 + 48));
  v13 = DWORD2(v20);
  v12 = HIDWORD(v20);
  *(this + 8) -= SDWORD2(v20) * SHIDWORD(v20);
  *(this + 5) -= v13 * v12;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 72) = _Q0;
  return kd_precinct_ref::close(*(a2 + 1));
}

_BYTE *kd_codestream_comment::set_text(_BYTE *this, int a2, unsigned __int8 *a3)
{
  if (*this == 1)
  {
    kd_codestream_comment::set_text();
  }

  v4 = this;
  *this = 1;
  if (a2 >= 1)
  {
    if (*(this + 1) < a2)
    {
      *(this + 1) = a2;
      v5 = *(this + 2);
      if (v5)
      {
        MEMORY[0x186602830](v5, 0x1000C8077774924);
      }

      operator new[]();
    }

    v6 = *(this + 2);
    v4[2] = a2;
    this = memcpy(v6, a3, a2);
    v7 = (*(v4 + 2) + a2);
    if (*(v7 - 1))
    {
      *v7 = 0;
    }

    else
    {
      --v4[2];
    }
  }

  return this;
}

uint64_t kd_codestream_comment::write_marker(kd_codestream_comment *this, kdu_output *a2, int a3)
{
  *this = 1;
  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      return (v8 + *(this + 2) + 6);
    }

    goto LABEL_10;
  }

  if (a3 <= 6)
  {
    v5 = 6;
  }

  else
  {
    v5 = a3;
  }

  v6 = v5 - 6;
  v7 = *(this + 2);
  v8 = v6 - v7;
  if (v6 < v7)
  {
    v8 = 0;
    *(this + 2) = v6;
    *(*(this + 2) + v6) = 0;
  }

  if (a2)
  {
LABEL_10:
    kdu_output::put(a2, 255);
    kdu_output::put(a2, 100);
    v9 = v8 + *(this + 2) + 4;
    kdu_output::put(a2, (v8 + *(this + 4) + 4) >> 8);
    kdu_output::put(a2, v9);
    kdu_output::put(a2, 0);
    kdu_output::put(a2, 1);
    kdu_output::write(a2, *(this + 2), *(this + 2));
    if (v8 >= 1)
    {
      v10 = v8;
      do
      {
        kdu_output::put(a2, 0);
        --v10;
      }

      while (v10);
    }
  }

  return (v8 + *(this + 2) + 6);
}

uint64_t kdu_codestream_comment::put_text(kdu_codestream_comment *this, const char *__s)
{
  v2 = *this;
  if (!*this || (*v2 & 1) != 0)
  {
    return 0;
  }

  v5 = *(v2 + 8) + strlen(__s);
  v6 = *(v2 + 4);
  if (v5 > v6)
  {
    *(v2 + 4) = v5 + v6 + 80;
    operator new[]();
  }

  *(v2 + 8) = v5;
  strcat(*(v2 + 16), __s);
  return 1;
}

void kd_mct_stage::create_stages(void *a1, uint64_t *a2, kdu_params *this, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v40 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  *a1 = 0;
  v9 = kdu_params::access_cluster(this, "MCO");
  v34 = 0;
  if (v9)
  {
    v24 = kdu_params::access_relation(v9, a4, -1, 0, 1);
    if (v24)
    {
      v10 = kdu_params::get(v24, "Mnum_stages", 0, 0, &v34, 1, 1, 1);
      v11 = v34 ? v10 : 0;
      if (v11 == 1)
      {
        v27 = kdu_params::access_cluster(this, "MCC");
        kdu_params::access_cluster(this, "MCT");
        if (v34 >= 1)
        {
          __asm { FMOV            V8.2S, #1.0 }

          v32 = 0;
          v33 = 0;
          if ((kdu_params::get(v24, "Mstages", 0, 0, &v33, 1, 1, 1) & (v27 != 0)) != 1 || (v17 = kdu_params::access_relation(v27, a4, -1, v33, 1), (v18 = v17) == 0) || !kdu_params::get(v17, "Mstage_collections", 0, 0, &v32, 1, 1, 1) || (kdu_params::get(v18, "Mstage_collections", 0, 1, &v32, 1, 1, 1) & 1) == 0)
          {
            v31 = 0;
            memset(v30, 0, sizeof(v30));
            kdu_error::kdu_error(v30, "Kakadu Core Error:\n");
            (*(*&v30[0] + 16))(v30, "Unable to access the description of stage ");
            v38 = 0u;
            v39 = 0u;
            v37 = 0u;
            *v35 = 0u;
            v36 = 0u;
            if (BYTE8(v30[0]))
            {
              sprintf(v35, "%x");
            }

            else
            {
              sprintf(v35, "%d");
            }

            (*(*&v30[0] + 16))(v30, v35);
            kdu_error::~kdu_error(v30);
          }

          operator new();
        }

        v19 = *a2;
        v20 = *(*a2 + 16);
        if (v20 > a7)
        {
          *&v37 = 0;
          *v35 = 0u;
          v36 = 0u;
          kdu_error::kdu_error(v35, "Kakadu Core Error:\n");
          kdu_error::~kdu_error(v35);
        }

        if (v20 >= 1)
        {
          v21 = 0;
          v22 = 0;
          do
          {
            v23 = *(v19 + 24) + v21;
            *(v23 + 4) = *(a8 + v21 + 4);
            *v23 = *(a8 + v21);
            if (a4 < 0 && !*(v23 + 8))
            {
              *&v37 = 0;
              *v35 = 0u;
              v36 = 0u;
              kdu_error::kdu_error(v35, "Kakadu Core Error:\n");
              (*(*v35 + 16))(v35, "Although not strictly illegal, the present Part-2 codestream contains insufficient information to determine the dimensions of all image components output by the multi-component transform, based on main header marker segments.  The fact that this is not illegal is almost certainly an oversight in the development of the Part-2 syntax, but Kakadu cannot work with such codestreams.");
              kdu_error::~kdu_error(v35);
            }

            ++v22;
            v21 += 48;
          }

          while (v22 < *(v19 + 16));
        }

        kd_mct_stage::apply_output_restrictions(v19, a8, 0, 0);
      }
    }
  }
}

void kd_mct_stage::apply_output_restrictions(int *a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v5 = a3;
  do
  {
    a1[5] = 0;
    v6 = *(a1 + 7);
    if (v6)
    {
      if (a2 || (v7 = a1[4], v7 != *v6))
      {
        kd_mct_stage::apply_output_restrictions();
      }

      if (v7 < 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = *(a1 + 3);
        v11 = *(v6 + 8);
        v12 = (v10 + 40);
        do
        {
          *(v12 - 5) = 0;
          if ((*(v11 + 4 * v9) & 0x80000000) != 0)
          {
            *(v12 - 6) = -1;
            *v12 = 0;
          }

          else
          {
            *(v10 + 48 * v8 + 20) = v9;
            *(v12 - 6) = v8;
            a1[5] = v8 + 1;
            *v12 = 1;
            if (*(v11 + 4 * v9) != v8++)
            {
              kd_mct_stage::apply_output_restrictions();
            }
          }

          ++v9;
          v12 += 48;
        }

        while (v7 != v9);
      }

      if (v8 != *(v6 + 4))
      {
        kd_mct_stage::apply_output_restrictions();
      }

      goto LABEL_35;
    }

    if (!a2)
    {
      kd_mct_stage::apply_output_restrictions();
    }

    v14 = a1[4];
    if (v14 < 1)
    {
      v15 = 0;
      if (!a4)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }

    v15 = 0;
    v16 = (a2 + 16);
    v17 = (*(a1 + 3) + 40);
    do
    {
      v18 = *v16;
      *(v17 - 3) = *v16;
      *v17 = 0;
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_22;
      }

      a1[5] = ++v15;
      if (v5)
      {
        if (a4)
        {
          goto LABEL_22;
        }

        v19 = v18 < v5;
      }

      else
      {
        v19 = 1;
      }

      *v17 = v19;
LABEL_22:
      v16 += 6;
      v17 += 48;
      --v14;
    }

    while (v14);
    if (!a4)
    {
      goto LABEL_35;
    }

LABEL_29:
    if (v5 >= 1)
    {
      do
      {
        v21 = *a4++;
        v20 = v21;
        if ((v21 & 0x80000000) == 0 && v20 < v15)
        {
          v22 = *(a1 + 3) + 48 * *(*(a1 + 3) + 48 * v20 + 20);
          if (*(v22 + 16) != v20)
          {
            kd_mct_stage::apply_output_restrictions();
          }

          *(v22 + 40) = 1;
        }

        --v5;
      }

      while (v5);
    }

LABEL_35:
    a1[1] = 0;
    if (*a1 >= 1)
    {
      v23 = 0;
      v24 = *(a1 + 1);
      do
      {
        *(v24 + 4 * v23++) = -1;
      }

      while (v23 < *a1);
    }

    if (a1[8] >= 1)
    {
      v25 = 0;
      while (1)
      {
        v26 = *(a1 + 5) + 152 * v25;
        *(v26 + 12) = 0;
        v27 = *(v26 + 8);
        if (v27 >= 1)
        {
          bzero(*(v26 + 24), *(v26 + 8));
        }

        *(v26 + 36) = 0;
        v28 = *(v26 + 32);
        if (v28 < 1)
        {
          goto LABEL_58;
        }

        v29 = 0;
        v30 = *(a1 + 3);
        v31 = *(v26 + 40);
        v32 = *(v26 + 32);
        do
        {
          v33 = *v31++;
          v34 = v30 + 48 * v33;
          if (*(v34 + 40) == 1)
          {
            if ((*(v34 + 16) & 0x80000000) != 0 || *(v34 + 24) != v26)
            {
              kd_mct_stage::apply_output_restrictions();
            }

            *(v34 + 36) = v29++;
            *(v26 + 36) = v29;
          }

          --v32;
        }

        while (v32);
        if (!v29)
        {
          goto LABEL_58;
        }

        if (v29 != v27 && !*(v26 + 72))
        {
          break;
        }

        if (v27 >= 1)
        {
          memset(*(v26 + 24), 1, v27);
          *(v26 + 12) = v27;
LABEL_54:
          v35 = 0;
          v36 = *(v26 + 24);
          do
          {
            if (*(v36 + v35) == 1)
            {
              *(*(a1 + 1) + 4 * *(*(v26 + 16) + 4 * v35)) = 0;
              LODWORD(v27) = *(v26 + 8);
            }

            ++v35;
          }

          while (v35 < v27);
        }

LABEL_58:
        if (++v25 >= a1[8])
        {
          goto LABEL_129;
        }
      }

      if (*(v26 + 80))
      {
        v37 = 0;
        v38 = *(a1 + 3);
        v39 = *(v26 + 40);
        v40 = 1;
        do
        {
          v41 = *v39++;
          if (*(v38 + 48 * v41 + 40) == 1)
          {
            *(v26 + 12) = v40;
            v37 = v40;
          }

          ++v40;
          --v28;
        }

        while (v28);
        if (v37 >= 1)
        {
          memset(*(v26 + 24), 1, v37);
        }
      }

      else if (*(v26 + 57) == 1)
      {
        v42 = 0;
        for (i = 0; i != v28; ++i)
        {
          if (i < v27 && *(*(a1 + 3) + 48 * *(*(v26 + 40) + 4 * i) + 40) == 1)
          {
            *(*(v26 + 24) + i) = 1;
            *(v26 + 12) = ++v42;
          }
        }
      }

      else
      {
        v44 = *(v26 + 144);
        if (!v44)
        {
          operator new[]();
        }

        if (v27 >= 1)
        {
          v45 = *(a1 + 3);
          v46 = *(v26 + 40);
          v47 = v27;
          v48 = *(v26 + 144);
          do
          {
            v49 = *v46++;
            *v48++ = *(v45 + 48 * v49 + 40);
            --v47;
          }

          while (v47);
        }

        v51 = *(v26 + 92);
        v50 = *(v26 + 96);
        v52 = v50 + v27;
        if (v51 >= 1)
        {
          v53 = 0;
          v54 = &v44[v27];
          v88 = v54;
          v89 = v54;
          v91 = v44;
          v90 = *(v26 + 92);
          do
          {
            v55 = v50;
            v56 = &v54[-v50];
            if (v50 < v52)
            {
              v57 = &v44[-v50];
              v92 = v53;
              bzero(v54, (v52 + ~v50) + 1);
              v54 = v89;
              v53 = v92;
              v51 = v90;
              v44 = v91;
              v58 = v55;
              do
              {
                if (v57[v58] == 1)
                {
                  v59 = ((v58 - *(v26 + 124)) & 1) + v58 - *(v26 + 124);
                  v60 = (v58 - *(v26 + 120)) & 0xFFFFFFFE;
                  while (v59 <= v60)
                  {
                    v61 = v59 < v55;
                    if (v59 < v55 || (v62 = v59, v59 >= v52))
                    {
                      v62 = v59;
                      do
                      {
                        if (v61)
                        {
                          v63 = 2 * v55;
                        }

                        else
                        {
                          v63 = 2 * v52 - 2;
                        }

                        v62 = v63 - v62;
                        v61 = v62 < v55;
                      }

                      while (v62 < v55 || v62 >= v52);
                    }

                    v56[v62] = 1;
                    v59 += 2;
                  }

                  v65 = (v58 - *(v26 + 132)) | 1;
                  v66 = (__PAIR64__(v58 - *(v26 + 128), (v58 - *(v26 + 128)) & 1) - 1) >> 32;
                  while (v65 <= v66)
                  {
                    v67 = v65 < v55;
                    if (v65 < v55 || (v68 = v65, v65 >= v52))
                    {
                      v68 = v65;
                      do
                      {
                        if (v67)
                        {
                          v69 = 2 * v55;
                        }

                        else
                        {
                          v69 = 2 * v52 - 2;
                        }

                        v68 = v69 - v68;
                        v67 = v68 < v55;
                      }

                      while (v68 < v55 || v68 >= v52);
                    }

                    v56[v68] = 1;
                    v65 += 2;
                  }
                }

                ++v58;
              }

              while (v58 != v52);
            }

            LODWORD(v71) = v52 + (~v52 | 0xFFFFFFFE);
            if (v71 >= (v55 | 1))
            {
              v71 = v71;
              v72 = v27 - 1;
              do
              {
                if (v27 <= 0)
                {
                  kd_mct_stage::apply_output_restrictions();
                }

                v73 = v56[v71];
                *(*(v26 + 24) + v72) = v73;
                *(v26 + 12) += v73;
                v71 -= 2;
                LODWORD(v27) = v27 - 1;
                --v72;
              }

              while (v71 >= (v55 | 1));
            }

            v50 = (v55 + 1) >> 1;
            v52 = (v52 + 1) >> 1;
            if (v50 < v52)
            {
              v74 = &v88[2 * v50 - v55];
              v75 = v44;
              v76 = v52 - v50;
              do
              {
                v77 = *v74;
                v74 += 2;
                *v75++ = v77;
                --v76;
              }

              while (v76);
            }

            ++v53;
          }

          while (v53 != v51);
        }

        if (v52 > v50)
        {
          v78 = v50;
          v79 = -v50;
          v80 = v52;
          v81 = v27 - 1;
          v82 = &v44[v79 - 1];
          do
          {
            if (v27 <= 0)
            {
              kd_mct_stage::apply_output_restrictions();
            }

            v83 = *(v82 + v80);
            *(*(v26 + 24) + v81) = v83;
            *(v26 + 12) += v83;
            LODWORD(v27) = v27 - 1;
            --v81;
            --v80;
          }

          while (v80 > v78);
        }

        if (v27)
        {
          kd_mct_stage::apply_output_restrictions();
        }

        LODWORD(v27) = *(v26 + 8);
      }

      if (v27 < 1)
      {
        goto LABEL_58;
      }

      goto LABEL_54;
    }

LABEL_129:
    if (a1[1])
    {
      kd_mct_stage::apply_output_restrictions();
    }

    v84 = *a1;
    if (*a1 >= 1)
    {
      v85 = 0;
      v86 = *(a1 + 1);
      do
      {
        if ((*(v86 + 4 * v85) & 0x80000000) == 0)
        {
          v87 = a1[1];
          a1[1] = v87 + 1;
          *(v86 + 4 * v85) = v87;
          v84 = *a1;
        }

        ++v85;
      }

      while (v85 < v84);
    }

    a2 = 0;
    v5 = 0;
    a4 = 0;
    a1 = *(a1 + 6);
  }

  while (a1);
}

uint64_t kd_mct_block::analyze_sensitivity(uint64_t this, int a2, float a3, int *a4, int *a5, int a6)
{
  if (*(this + 57) == 1)
  {
    v9 = *(*(this + 40) + 4 * a2);
    v10 = *(*this + 24);
    v11 = v10 + 48 * v9;
    if (!a6 || (*(v11 + 40) & 1) != 0)
    {
      v12 = *a4;
      v13 = *a5;
      if (v12 <= *a5)
      {
        if (v12 > v9)
        {
          v29 = (v10 + 48 * v12 - 4);
          do
          {
            --v12;
            *v29 = 0;
            v29 -= 12;
          }

          while (v12 > v9);
          *a4 = v12;
          v13 = *a5;
        }

        if (v13 < v9)
        {
          v30 = 0;
          v31 = v9 - v13;
          v32 = vdupq_n_s64(v31 - 1);
          v33 = (v10 + 48 * v13 + 140);
          do
          {
            v34 = vdupq_n_s64(v30);
            v35 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v34, xmmword_186205EC0)));
            if (vuzp1_s16(v35, *v32.i8).u8[0])
            {
              *(v33 - 12) = 0;
            }

            if (vuzp1_s16(v35, *&v32).i8[2])
            {
              *v33 = 0;
            }

            if (vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v34, xmmword_186205EB0)))).i32[1])
            {
              v33[12] = 0;
              v33[24] = 0;
            }

            v30 += 4;
            v33 += 48;
          }

          while (((v31 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v30);
          *a5 = v9;
        }
      }

      else
      {
        *a5 = v9;
        *a4 = v9;
        *(v11 + 44) = 0;
      }

      *(v11 + 44) = *(v11 + 44) + a3;
    }
  }

  else
  {
    if (!*(this + 48))
    {
      is_mul_ok(*(this + 8), 0x18uLL);
      operator new[]();
    }

    v14 = (*(this + 48) + 24 * a2);
    v15 = v14[1];
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = *(this + 40) + 4 * *v14;
      v18 = *(*this + 24);
      do
      {
        this = *(v17 + 4 * v16);
        v19 = v18 + 48 * this;
        if ((a6 ^ 1 | *(v19 + 40)))
        {
          v20 = *a4;
          v21 = *a5;
          if (v20 <= *a5)
          {
            if (v20 > this)
            {
              v22 = (v18 - 4 + 48 * v20);
              do
              {
                --v20;
                *v22 = 0;
                v22 -= 12;
              }

              while (v20 > this);
              *a4 = v20;
              v21 = *a5;
            }

            if (v21 < this)
            {
              v23 = 0;
              v24 = this - v21;
              v25 = vdupq_n_s64(v24 - 1);
              v26 = (v18 + 140 + 48 * v21);
              do
              {
                v27 = vdupq_n_s64(v23);
                v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_186205EC0)));
                if (vuzp1_s16(v28, 2).u8[0])
                {
                  *(v26 - 12) = 0;
                }

                if (vuzp1_s16(v28, 2).i8[2])
                {
                  *v26 = 0;
                }

                if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_186205EB0)))).i32[1])
                {
                  v26[12] = 0;
                  v26[24] = 0;
                }

                v23 += 4;
                v26 += 48;
              }

              while (((v24 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v23);
              *a5 = this;
            }
          }

          else
          {
            *a5 = this;
            *a4 = this;
            *(v19 + 44) = 0;
          }

          this = *(v14 + 1);
          *(v19 + 44) = *(v19 + 44) + (a3 * *(this + 4 * v16));
        }

        ++v16;
      }

      while (v16 != v15);
    }
  }

  return this;
}

void kd_mct_block::create_rxform_ss_model(kd_mct_block *this)
{
  if (*(this + 2) == *(this + 8))
  {
    operator new[]();
  }

  kd_mct_block::create_rxform_ss_model();
}

void kd_mct_block::create_dependency_ss_model(kd_mct_block *this)
{
  if (*(this + 2) == *(this + 8))
  {
    operator new[]();
  }

  kd_mct_block::create_dependency_ss_model();
}

float *kd_mct_block::create_dwt_ss_model(kd_mct_block *this)
{
  v89 = *MEMORY[0x1E69E9840];
  v67 = *(this + 2);
  if (v67 != *(this + 8))
  {
    kd_mct_block::create_dwt_ss_model();
  }

  v1 = this;
  result = *(this + 18);
  if (!result)
  {
    operator new[]();
  }

  v70 = *(v1 + 23);
  if (v70 >= 1)
  {
    v71 = 0;
    v3 = &result[-*(v1 + 24)];
    v68 = v67 - 1;
    result = (v1 + 136);
    v77 = (v1 + 136);
    v78 = v1;
    while (1)
    {
      v4 = v70 != *(v1 + 23);
      v5 = v70 - 1;
      do
      {
        v6 = v4;
        v69 = v4 << v5;
        v7 = *(v1 + 24) + ~(v4 << v5);
        v8 = (v7 + v67) >> v70;
        v66 = v7 >> v70;
        if (v7 >> v70 < v8)
        {
          v9 = (4 * v6) ^ 4;
          v73 = &v85 + v9;
          v74 = &v87[-2] + v9;
          v79 = v6;
          v10 = ((v66 + 1) << v70) + v69;
          v3[v10] = 1.0;
          v11 = *(v1 + 24);
          v12 = v11 - 1;
          v72 = v11;
          v13 = v68 + v11;
          v14 = v70 - 1;
          LODWORD(v15) = v10;
          v75 = v68 + v11;
          v76 = v11 - 1;
          while (1)
          {
            v16 = ((v12 >> v14) + 1) << v14;
            v17 = v13 & (-1 << v14);
            v18 = v10 >= v16 && v15 <= v17;
            if (!v18)
            {
              kd_mct_block::create_dwt_ss_model();
            }

            if (v16 == v17)
            {
              if (v10 != v15)
              {
                kd_mct_block::create_dwt_ss_model();
              }

              if (v6 && v14 == v5)
              {
                v3[v10] = v3[v10] * 0.5;
              }

              LODWORD(v15) = v10;
              goto LABEL_94;
            }

            v19 = 1 << v14;
            v88[0] = (v16 & (1 << v14)) + v16;
            v88[1] = v16 | (1 << v14);
            v87[0] = v17 - (v17 & (1 << v14));
            v87[1] = v17 - v19 + (v17 & v19);
            v85 = 0;
            v86 = 0;
            v20 = 2 << v14;
            if (v14 == v5)
            {
              if (v10 != v15)
              {
                kd_mct_block::create_dwt_ss_model();
              }

              v3[v10] = result[v6] * v3[v10];
              *(&v85 + v6) = v10;
              v87[v6 - 2] = v10;
              v22 = v73;
              v21 = v74;
            }

            else
            {
              if ((v19 & (v10 | v15)) != 0)
              {
                kd_mct_block::create_dwt_ss_model();
              }

              if (v10 <= v15)
              {
                v23 = v10;
                do
                {
                  v3[v23] = *result * v3[v23];
                  v23 += v20;
                }

                while (v23 <= v15);
              }

              v24 = v19 + v10;
              if (v19 + v10 < v15)
              {
                v25 = 0;
                v26 = v20 + v24;
                v27 = v15;
                if (v26 >= v15)
                {
                  v28 = 1;
                }

                else
                {
                  v28 = 2;
                }

                if (v26 >= v15)
                {
                  v27 = v20 + v24;
                }

                v29 = v28 + (v27 - (v26 < v15) - v26) / v20;
                v30 = vdupq_n_s64(v29 - 1);
                v31 = &v3[v24];
                do
                {
                  v32 = vdupq_n_s64(v25);
                  v33 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_186205EC0)));
                  if (vuzp1_s16(v33, *v30.i8).u8[0])
                  {
                    *v31 = 0.0;
                  }

                  if (vuzp1_s16(v33, *&v30).i8[2])
                  {
                    v31[v20] = 0.0;
                  }

                  if (vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_186205EB0)))).i32[1])
                  {
                    v31[2 * v20] = 0.0;
                    v31[3 * v20] = 0.0;
                  }

                  v25 += 4;
                  v31 += 4 * v20;
                }

                while (((v29 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v25);
              }

              LODWORD(v86) = v10;
              LODWORD(v85) = v15;
              v22 = &v85 + 1;
              v21 = &v86 + 1;
            }

            *v21 = 0;
            *v22 = -1;
            v34 = *(v1 + 22);
            if (v34 >= 1)
            {
              break;
            }

LABEL_94:
            v18 = v14-- <= 0;
            if (v18)
            {
              v65 = (*(v1 + 6) + 24 * v71);
              *v65 = v10 - v72;
              v65[1] = v15 - v10 + 1;
              operator new[]();
            }
          }

          v35 = *(v1 + 13);
          v36 = *(v1 + 14);
          v37 = *(v1 + 22);
          v80 = v36;
          do
          {
            v38 = *v35;
            v35 += 4;
            v36 += v38;
            --v37;
          }

          while (v37);
          v39 = *(v1 + 13);
          v83 = v14 + 1;
          v84 = ((v12 >> v14) + 1) << v14;
          v82 = 2 * v16;
          v40 = *(v1 + 101);
          v81 = 2 * v17;
          while (2)
          {
            v41 = v34 - 1;
            v42 = (v39 + 16 * (v34 - 1));
            v43 = *v42;
            v36 -= v43;
            if ((v34 - 1))
            {
              v44 = 1 << v14;
            }

            else
            {
              v44 = -v19;
            }

            v45 = *(&v86 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v41 & 1)));
            v46 = *(&v85 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v41 & 1)));
            if (v45 <= v46)
            {
              v47 = v42[1];
              v48 = (v47 << v83) + v44;
              v49 = ((v43 + v47 - 1) << v83) + v44;
              LODWORD(v50) = v45 - v49;
              v51 = v88[!((v34 - 1) & 1)];
              if (v45 - v49 < v51 || v82 - v51 - v48 >= v45)
              {
                LODWORD(v50) = v88[!((v34 - 1) & 1)];
              }

              v52 = v46 - v48;
              v53 = v87[!((v34 - 1) & 1)];
              if (v46 - v48 > v53 || v81 - v53 - v49 <= v46)
              {
                v52 = v87[!((v34 - 1) & 1)];
              }

              v54 = v87[!((v34 - 1) & 1) - 2];
              v55 = *(&v85 + !((v34 - 1) & 1));
              if (v54 > v55)
              {
                v87[!((v34 - 1) & 1) - 2] = v50;
                goto LABEL_58;
              }

              if (v50 >= v54)
              {
                if (v52 > v55)
                {
LABEL_58:
                  *(&v85 + !((v34 - 1) & 1)) = v52;
                }
              }

              else
              {
                v87[!((v34 - 1) & 1) - 2] = v50;
              }

              for (; v10 > v50; v10 -= v19)
              {
                v3[v10 - v19] = 0.0;
              }

              if (v15 < v52)
              {
                v56 = v15;
                do
                {
                  v15 = v56 + v19;
                  v3[v19 + v56] = 0.0;
                  v56 = v15;
                }

                while (v15 < v52);
              }

              v58 = v13 & (-1 << v14);
              v57 = v84;
              if ((v40 & 1) == 0)
              {
                v57 = v88[v41 & 1];
                v58 = v87[v41 & 1];
              }

              if (v50 <= v52)
              {
                v50 = v50;
                do
                {
                  if (v48 <= v49)
                  {
                    v59 = v48;
                    v60 = v36;
                    do
                    {
                      v61 = v59 + v50;
                      v62 = v59 + v50 < v57;
                      if (v59 + v50 < v57 || v61 > v58)
                      {
                        do
                        {
                          if (v40)
                          {
                            v64 = 2 * v58 - v61;
                            v61 = 2 * v57 - v61;
                            if (!v62)
                            {
                              v61 = v64;
                            }
                          }

                          else if (v62)
                          {
                            v61 = v57;
                          }

                          else
                          {
                            v61 = v58;
                          }

                          v62 = v61 < v57;
                        }

                        while (v61 < v57 || v61 > v58);
                      }

                      if (v61 >= v45 && v61 <= v46)
                      {
                        v3[v50] = v3[v50] - (v3[v61] * *v60);
                      }

                      v59 += v20;
                      ++v60;
                    }

                    while (v59 <= v49);
                  }

                  v50 += v20;
                }

                while (v50 <= v52);
              }
            }

            v18 = v34-- <= 1;
            if (v18)
            {
              v6 = v79;
              result = v77;
              v1 = v78;
              v5 = v70 - 1;
              v13 = v75;
              v12 = v76;
              if (v36 != v80)
              {
                kd_mct_block::create_dwt_ss_model();
              }

              goto LABEL_94;
            }

            continue;
          }
        }

        v71 = v71 - v66 + v8;
        v4 = 1;
      }

      while (!v6);
      v18 = v70-- <= 1;
      if (v18)
      {
        goto LABEL_102;
      }
    }
  }

  v71 = 0;
LABEL_102:
  if (v71 != *(v1 + 2))
  {
    kd_mct_block::create_dwt_ss_model();
  }

  return result;
}

void kd_codestream::construct_common(kd_codestream *this)
{
  *(this + 281) = 257;
  *(this + 420) = 0;
  *(this + 36) = 0x3FF0000000000000;
  (*(**(this + 3) + 72))(*(this + 3), *(this + 2) == 0);
  if (kdu_params::get(*(this + 3), "Sprofile", 0, 0, this + 40, 1, 1, 1) && kdu_params::get(*(this + 3), "Scomponents", 0, 0, this + 42, 1, 1, 1) && kdu_params::get(*(this + 3), "Ssize", 0, 0, this + 49, 1, 1, 1) && kdu_params::get(*(this + 3), "Ssize", 0, 1, this + 50, 1, 1, 1) && kdu_params::get(*(this + 3), "Sorigin", 0, 0, this + 47, 1, 1, 1) && kdu_params::get(*(this + 3), "Sorigin", 0, 1, this + 48, 1, 1, 1) && kdu_params::get(*(this + 3), "Stiles", 0, 0, this + 53, 1, 1, 1) && kdu_params::get(*(this + 3), "Stiles", 0, 1, this + 54, 1, 1, 1) && kdu_params::get(*(this + 3), "Stile_origin", 0, 0, this + 51, 1, 1, 1) && (kdu_params::get(*(this + 3), "Stile_origin", 0, 1, this + 52, 1, 1, 1) & 1) != 0)
  {
    if (*(this + 40))
    {
      v2 = -1;
    }

    else
    {
      v2 = 0;
    }

    *(this + 114) = v2;
    v3 = *(this + 47);
    v4 = *(this + 48);
    v5 = *(this + 50) - v4;
    v6 = *(this + 49) - v3;
    *(this + 49) = v6;
    *(this + 50) = v5;
    if (v6 >= 1 && v5 >= 1)
    {
      v7 = *(this + 52);
      if (v7 <= v4)
      {
        v8 = *(this + 51);
        if (v8 <= v3 && *(this + 54) + v7 > v4 && *(this + 53) + v8 > v3)
        {
          is_mul_ok(*(this + 42), 0x68uLL);
          operator new[]();
        }
      }
    }

    v10 = 0;
    memset(v9, 0, sizeof(v9));
    kdu_error::kdu_error(v9, "Kakadu Core Error:\n");
    (*(*&v9[0] + 16))(v9, "Illegal canvas coordinates: the first tile is required to have a non-empty intersection with the image on the high resolution grid.");
    kdu_error::~kdu_error(v9);
  }

  kd_codestream::construct_common();
}

void kd_codestream::read_main_header(kd_codestream *this)
{
  if (*(this + 1))
  {
    v2 = 0;
    v3 = *(this + 4);
    while ((kd_marker::read(v3, 0, 0) & 1) != 0)
    {
      v4 = *(this + 4);
      v5 = *(v4 + 16);
      switch(v5)
      {
        case 65365:
          v8 = *(this + 9);
          if (v8)
          {
            kd_tpart_pointer_server::add_tlm_marker(v8, v4);
          }

          v2 = 1;
          break;
        case 65380:
          if (*(v4 + 20) >= 3)
          {
            v7 = *(v4 + 32);
            if (!*v7 && v7[1] == 1)
            {
              operator new();
            }
          }

          break;
        case 65376:
          if (*(this + 418) == 1)
          {
            v18 = 0;
            v16 = 0u;
            v17 = 0u;
            kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
            (*(v16 + 16))(&v16, "You cannot use PPM or PPT marker segments (packed packet headers) with cached compressed data sources.");
            kdu_error::~kdu_error(&v16);
          }

          if (!*(this + 40))
          {
            v18 = 0;
            v16 = 0u;
            v17 = 0u;
            kdu_warning::kdu_warning(&v16, "Kakadu Core Warning:\n");
            (*(v16 + 16))(&v16, "Profile violation detected (code-stream is technically illegal).  PPM marker segments may not appear within a Profile-0 code-stream.  You should set Sprofile to 1 or 2.");
            *(this + 40) = 2;
            kdu_warning::~kdu_warning(&v16);
          }

          v6 = *(this + 5);
          if (!v6)
          {
            operator new();
          }

          kd_pp_markers::add_marker(v6, *(this + 4));
        default:
          kdu_params::translate_marker_segment(*(this + 3), *(v4 + 16), *(v4 + 20), *(v4 + 32), -1, 0);
          break;
      }

      v3 = *(this + 4);
      if (v3[8] == -112)
      {
        goto LABEL_25;
      }
    }

    if ((*(*(this + 1) + 544) & 1) == 0)
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      kdu_error::kdu_error(&v16, "Kakadu Core Error:\n");
      (*(v16 + 16))(&v16, "Main code-stream header appears corrupt!");
      kdu_error::~kdu_error(&v16);
    }

LABEL_25:
    kdu_params::finalize_all(*(this + 3), -1, 1);
    v9 = *(this + 9);
    if (v9)
    {
      if (*(this + 5))
      {
        kd_tpart_pointer_server::~kd_tpart_pointer_server(v9);
        MEMORY[0x186602850]();
        *(this + 9) = 0;
        if (v2)
        {
          v18 = 0;
          v16 = 0u;
          v17 = 0u;
          kdu_warning::kdu_warning(&v16, "Kakadu Core Warning:\n");
          (*(v16 + 16))(&v16, "Dynamic indexing of tile-parts, whether by TLM (tile-part length) marker segments or otherwise, cannot be used by the current implementation when PPM (packed packet header) marker segments are also used.");
          kdu_warning::~kdu_warning(&v16);
        }
      }

      else
      {
        v10 = *(this + 56);
        if (v10 != *(this + 60) || (v11 = *(this + 55), v11 != *(this + 59)))
        {
          kd_codestream::read_main_header();
        }

        v12 = *(this + 1);
        if (*(v12 + 608))
        {
          v13 = -12;
        }

        else
        {
          v14 = ~(v12 + 14) + *(v12 + 528) + *(v12 + 560);
          v15 = *(v12 + 576);
          if (v14 > v15)
          {
            *(v12 + 576) = v14;
            v15 = v14;
          }

          v13 = v15 - 11;
        }

        kd_tpart_pointer_server::translate_markers(v9, v13, v11 * v10, *(this + 41));
      }
    }

    kd_codestream::finalize_construction(this);
  }
}

void sub_185F433E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kdu_warning::~kdu_warning(va);
  _Unwind_Resume(a1);
}

void kd_codestream::construct_output_comp_info(kd_codestream *this)
{
  if (!*(this + 40))
  {
    v7 = 0;
    kdu_params::get(*(this + 3), "Sextensions", 0, 0, &v7, 1, 1, 1);
    *(this + 164) = BYTE1(v7) & 1;
    v2 = 0;
    if (kdu_params::get(*(this + 3), "Mcomponents", 0, 0, this + 44, 1, 1, 1))
    {
      v2 = *(this + 44) > 0;
    }

    if (*(this + 164) != v2)
    {
      v6 = 0;
      v4 = 0u;
      v5 = 0u;
      kdu_error::kdu_error(&v4, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(&v4);
    }

    if (v2)
    {
      v3 = *(this + 44);
    }

    else
    {
      v3 = *(this + 42);
      *(this + 44) = v3;
    }

    if (v3 >= 17)
    {
      v6 = 0;
      v4 = 0u;
      v5 = 0u;
      kdu_error::kdu_error(&v4, "Kakadu Core Error:\n");
      (*(v4 + 16))(&v4, "num_output_components too big.");
      kdu_error::~kdu_error(&v4);
    }

    *(this + 45) = v3;
    is_mul_ok(v3, 0x30uLL);
    operator new[]();
  }

  kd_codestream::construct_output_comp_info();
}

void kd_codestream::finalize_construction(kd_codestream *this)
{
  if (!*(this + 40))
  {
    kd_codestream::construct_output_comp_info(this);
  }

  if ((*(this + 420) & 1) == 0)
  {
    *(this + 420) = 1;
    v2 = kdu_params::access_cluster(*(this + 3), "CRG");
    if (*(this + 42) >= 1)
    {
      v3 = v2;
      v4 = 0;
      v5 = 8;
      do
      {
        v6 = *(this + 39);
        if (!v3 || !kdu_params::get(v3, "CRGoffset", v4, 0, (v6 + v5 + 4), 1, 1, 1) || (kdu_params::get(v3, "CRGoffset", v4, 1, (v6 + v5), 1, 1, 1) & 1) == 0)
        {
          *(v6 + v5) = 0;
        }

        ++v4;
        v5 += 104;
      }

      while (v4 < *(this + 42));
    }

    v7 = kdu_params::access_cluster(*(this + 3), "COD");
    v8 = *(this + 42);
    if (v8 >= 1)
    {
      v9 = v7;
      v10 = 0;
      v11 = 55;
      do
      {
        v12 = *(this + 39);
        v13 = kdu_params::access_relation(v9, -1, v10, 0, 1);
        v14 = 0;
        v15 = v12 + v11;
        do
        {
          v25 = 3;
          kdu_params::get(v13, "Cdecomp", v14, 0, &v25, 1, 1, 1);
          v16 = (v15 + v14);
          *(v16 - 33) = (v25 & 1) + *(v15 + v14 - 34);
          *v16 = ((v25 & 2) != 0) + *(v15 + v14++ - 1);
        }

        while (v14 != 32);
        ++v10;
        v8 = *(this + 42);
        v11 += 104;
      }

      while (v10 < v8);
    }

    if (*(this + 2))
    {
      v17 = *(this + 44);
      if (!v17)
      {
        is_mul_ok(33 * v8, 0x58uLL);
        operator new[]();
      }

      for (i = 0; i != 33; ++i)
      {
        if (v8 >= 1)
        {
          v19 = 0;
          do
          {
            kd_global_rescomp::initialize(v17, this, i, v19++);
            v17 = (v17 + 88);
            v8 = *(this + 42);
          }

          while (v19 < v8);
        }
      }
    }

    if (*(this + 164) == 1)
    {
      kd_mct_stage::create_stages(this + 18, this + 19, *(this + 3), -1, v8, *(this + 39), *(this + 44), *(this + 40));
      v20 = *(this + 19);
      if (v20)
      {
        v21 = *(this + 44);
        if (v21 >= 1)
        {
          v22 = (*(v20 + 24) + 8);
          v23 = (*(this + 40) + 8);
          do
          {
            v24 = *v22;
            v22 += 6;
            *v23 = v24;
            v23 += 6;
            --v21;
          }

          while (v21);
        }
      }
    }
  }
}

uint64_t kd_codestream::restrict_to_fragment(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *&v31 = a2;
  *(&v31 + 1) = a3;
  if (!*(a1 + 16))
  {
    kd_codestream::restrict_to_fragment();
  }

  result = kdu_dims::operator&=(&v31, (a1 + 188));
  v10 = DWORD2(v31);
  v9 = HIDWORD(v31);
  *(a1 + 288) = (SDWORD2(v31) * SHIDWORD(v31)) / (*(a1 + 196) * *(a1 + 200));
  *(a1 + 296) = a4;
  *(a1 + 304) = a5;
  v11 = *(a1 + 212);
  v12 = *(a1 + 216);
  v13 = DWORD1(v31) - *(a1 + 208);
  v14 = v31 - *(a1 + 204);
  v15 = (v13 / v12);
  v16 = (v14 / v11);
  v17 = (v9 + v13) / v12;
  v18 = (v14 + v10) / v11;
  if (v13 != v15 * v12 || v14 != v16 * v11 || v17 * v12 != v9 + v13 || v18 * v11 != v14 + v10)
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    kdu_error::kdu_error(&v28, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(&v28);
  }

  v19 = __OFSUB__(v17, v15);
  v20 = (v17 - v15);
  if ((v20 < 0) ^ v19 | (v20 == 0) || v18 <= v16)
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    kdu_error::kdu_error(&v28, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(&v28);
  }

  v21 = (v18 - v16);
  v22 = v21 * v20;
  if (v21 * v20 <= 0)
  {
    kd_codestream::restrict_to_fragment();
  }

  v23 = *(a1 + 220) * *(a1 + 224);
  v24 = v22 + a4;
  if (v23 < v22 + a4)
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    kdu_error::kdu_error(&v28, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(&v28);
  }

  *(a1 + 281) = a4 == 0;
  *(a1 + 282) = v23 == v24;
  if (v20 != *(a1 + 240) || v21 != *(a1 + 236))
  {
    v25 = v20 << 32;
    v26 = *(a1 + 328);
    if (v26)
    {
      MEMORY[0x186602830](v26, 0x20C80960023A9);
    }

    *(a1 + 328) = 0;
    *(a1 + 228) = v16 | (v15 << 32);
    *(a1 + 236) = v25 | v21;
    v27 = v31;
    *(a1 + 188) = v31;
    *(a1 + 264) = v27;
    operator new[]();
  }

  if (__PAIR64__(v15, v16) != *(a1 + 228) || *(a1 + 188) != v31 || *(a1 + 200) != HIDWORD(v31) || a4 || v23 != v24 || *(a1 + 196) != DWORD2(v31))
  {
    kd_codestream::restrict_to_fragment();
  }

  return result;
}

void kd_codestream::restart(kd_codestream *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    kd_pp_markers::~kd_pp_markers(v2);
    MEMORY[0x186602850]();
  }

  *(this + 5) = 0;
  v3 = *(this + 9);
  if (v3)
  {
    kd_tpart_pointer_server::~kd_tpart_pointer_server(v3);
    MEMORY[0x186602850]();
  }

  *(this + 9) = 0;
  v4 = *(this + 8);
  if (v4)
  {
    MEMORY[0x186602850](v4, 0x1000C404E6BD753);
  }

  *(this + 8) = 0;
  *(this + 29) = 0;
  *(this + 13) = 0;
  *(this + 16) = 0;
  v5 = *(this + 17);
  if (v5)
  {
    MEMORY[0x186602830](v5, 0x1000C80CE7E837CLL);
  }

  *(this + 420) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  v6 = *(this + 46);
  if (v6)
  {
    MEMORY[0x186602830](v6, 0x1000C8000313F17);
  }

  v7 = *(this + 47);
  if (v7)
  {
    MEMORY[0x186602830](v7, 0x1000C8000313F17);
  }

  v8 = *(this + 48);
  if (v8)
  {
    MEMORY[0x186602830](v8, 0x1000C80BDFB0063);
  }

  *(this + 97) = 0;
  *(this + 372) = 0;
  *(this + 364) = 0;
  *(this + 380) = 0;
  v9 = *(this + 40);
  if (v9)
  {
    MEMORY[0x186602830](v9, 0x1020C806B39A6A2);
  }

  *(this + 40) = 0;
  *(this + 22) = 0;
  v10 = *(this + 41);
  if (!v10)
  {
    kd_codestream::restart();
  }

  v11 = *(this + 59);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(this + 60);
    do
    {
      if (v13 >= 1)
      {
        for (i = 0; i < v13; ++i)
        {
          *v10 = 0;
          v10[1] = 0;
          v15 = v10[2];
          if (v15)
          {
            if (v15 == -1)
            {
              kd_codestream::restart();
            }

            if (*(v15 + 289) == 1)
            {
              v20 = 0;
              memset(v19, 0, sizeof(v19));
              kdu_error::kdu_error(v19, "Kakadu Core Error:\n");
              kdu_error::~kdu_error(v19);
            }

            kd_tile::restart(v15);
            v13 = *(this + 60);
          }

          v10 += 3;
        }

        v11 = *(this + 59);
      }

      ++v12;
    }

    while (v12 < v11);
  }

  for (j = *(this + 64); j; j = *(this + 64))
  {
    *(this + 64) = *(j + 9);
    if (*(j + 3))
    {
      kd_codestream::restart();
    }

    kd_tile::~kd_tile(j);
    MEMORY[0x186602850]();
  }

  v17 = *(this + 11);
  for (*(this + 12) = v17; v17; *(this + 12) = v17)
  {
    v18 = *(v17 + 16);
    *(this + 11) = *(v17 + 24);
    if (v18)
    {
      MEMORY[0x186602830](v18, 0x1000C8077774924);
    }

    MEMORY[0x186602850](v17, 0x1030C40D4B01E93);
    v17 = *(this + 11);
  }

  *(this + 421) = 0;
  *(this + 53) = 0;
  kdu_params::clear_marks(*(this + 3));
  if (*(this + 1))
  {
    kd_codestream::read_main_header(this);
  }

  if (!*(this + 40))
  {
    kd_codestream::construct_output_comp_info(this);
  }

  *(this + 419) = 0;
  *(this + 65) = 0;
  *this = 0;
  *(this + 56) = 0;
  *(this + 57) = 0;
  *(this + 55) = 0;
}

uint64_t kd_codestream::set_reserved_layer_info_bytes(uint64_t this, int a2)
{
  v3 = this;
  v5 = (this + 88);
  v4 = *(this + 88);
  if (v4)
  {
    v6 = *(v4 + 16);
    v7 = v6 == 0;
    if (v6)
    {
      v8 = *(v4 + 16);
    }

    else
    {
      v8 = "";
    }

    this = strncmp(v8, "Kdu-Layer-Info: ", 0x10uLL);
    if (this)
    {
      while (1)
      {
        v9 = v4;
        v4 = *(v4 + 24);
        if (!v4)
        {
          break;
        }

        v6 = *(v4 + 16);
        v7 = v6 == 0;
        if (v6)
        {
          v10 = *(v4 + 16);
        }

        else
        {
          v10 = "";
        }

        this = strncmp(v10, "Kdu-Layer-Info: ", 0x10uLL);
        if (!this)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v9 = 0;
LABEL_13:
      v11 = (v9 + 24);
      if (!v9)
      {
        v11 = v5;
      }

      *v11 = *(v4 + 24);
      if (!v7)
      {
        MEMORY[0x186602830](v6, 0x1000C8077774924);
      }

      this = MEMORY[0x186602850](v4, 0x1030C40D4B01E93);
      if (v4 == *(v3 + 96))
      {
        *(v3 + 96) = v9;
      }
    }
  }

  *(v3 + 432) = 17 * a2 + 74;
  return this;
}

uint64_t kd_codestream::gen_layer_info_comment(uint64_t this, int a2, uint64_t *a3, unsigned __int16 *a4)
{
  if (*(this + 432))
  {
    operator new();
  }

  return this;
}

uint64_t kd_codestream::freeze_comments(uint64_t this)
{
  if ((*(this + 421) & 1) == 0)
  {
    v1 = this;
    v2 = *(this + 88);
    if (!v2)
    {
LABEL_8:
      operator new();
    }

    while (1)
    {
      v3 = *(v2 + 16) ? *(v2 + 16) : "";
      this = strcmp(v3, "Kakadu-v5.2.1");
      if (!this)
      {
        break;
      }

      v2 = *(v2 + 24);
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    *(v1 + 421) = 1;
  }

  return this;
}

void kd_codestream::~kd_codestream(kd_codestream *this)
{
  v2 = *(this + 39);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1020C8091F5070ALL);
  }

  v3 = *(this + 40);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1020C806B39A6A2);
  }

  v4 = *(this + 44);
  if (v4)
  {
    v5 = *(v4 - 8);
    if (v5)
    {
      v6 = (v4 + 88 * v5 - 88);
      v7 = -88 * v5;
      do
      {
        kd_global_rescomp::close_all(v6);
        v6 -= 11;
        v7 += 88;
      }

      while (v7);
    }

    MEMORY[0x186602830](v4 - 16, 0x1020C8067899110);
  }

  *(this + 55) = 0;
  v8 = *(this + 41);
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = *(this + 59);
  if (v9 < 1)
  {
    goto LABEL_23;
  }

  v10 = 0;
  v11 = *(this + 60);
  v12 = "abs_idx == tref->tile->t_idx";
  v13 = "codestream.cpp";
  v14 = "~kd_codestream";
  do
  {
    if (v11 < 1)
    {
      goto LABEL_21;
    }

    for (i = 0; i < v11; ++i)
    {
      v16 = *(v8 + 16);
      if (v16 + 1 >= 2)
      {
        if (i + *(this + 58) != *(v16 + 4) || *(this + 57) + v10 != *(v16 + 3))
        {
          v38 = 4732;
          goto LABEL_69;
        }

        kd_tile::~kd_tile(v16);
        MEMORY[0x186602850]();
        if ((*(v8 + 16) + 1) > 1)
        {
          v38 = 4735;
          v12 = "(tref->tile == NULL) || (tref->tile == KD_EXPIRED_TILE)";
          goto LABEL_69;
        }
      }

      v8 += 24;
      v11 = *(this + 60);
    }

    v9 = *(this + 59);
LABEL_21:
    ++v10;
  }

  while (v10 < v9);
  v8 = *(this + 41);
  if (v8)
  {
LABEL_23:
    MEMORY[0x186602830](v8, 0x20C80960023A9);
  }

LABEL_24:
  v17 = *(this + 64);
  if (v17)
  {
    v12 = "typ->tile_ref == NULL";
    v13 = "codestream.cpp";
    v14 = "~kd_codestream";
    while (1)
    {
      *(this + 64) = *(v17 + 9);
      if (*(v17 + 3))
      {
        break;
      }

      kd_tile::~kd_tile(v17);
      MEMORY[0x186602850]();
      v17 = *(this + 64);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    v38 = 4745;
LABEL_69:
    __assert_rtn(v14, v13, v38, v12);
  }

LABEL_28:
  v18 = *(this + 1);
  if (v18)
  {
    (*(*v18 + 8))(v18);
    *(this + 1) = 0;
  }

  v19 = *(this + 2);
  if (v19)
  {
    (*(*v19 + 8))(v19);
    *(this + 2) = 0;
  }

  v20 = *(this + 3);
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  v21 = *(this + 4);
  if (v21)
  {
    v22 = *(v21 + 32);
    if (v22)
    {
      MEMORY[0x186602830](v22, 0x1000C8077774924);
    }

    MEMORY[0x186602850](v21, 0x1030C40051CB91CLL);
  }

  v23 = *(this + 5);
  if (v23)
  {
    kd_pp_markers::~kd_pp_markers(v23);
    MEMORY[0x186602850]();
  }

  v24 = *(this + 10);
  if (v24)
  {
    kd_precinct_server::~kd_precinct_server(v24);
    MEMORY[0x186602850]();
  }

  v25 = *(this + 7);
  if (v25)
  {
    kdu_block::~kdu_block(v25);
    MEMORY[0x186602850]();
  }

  v26 = *(this + 8);
  if (v26)
  {
    MEMORY[0x186602850](v26, 0x1000C404E6BD753);
  }

  v27 = *(this + 9);
  if (v27)
  {
    kd_tpart_pointer_server::~kd_tpart_pointer_server(v27);
    MEMORY[0x186602850]();
  }

  v28 = *(this + 11);
  for (*(this + 12) = v28; v28; *(this + 12) = v28)
  {
    v29 = *(v28 + 16);
    *(this + 11) = *(v28 + 24);
    if (v29)
    {
      MEMORY[0x186602830](v29, 0x1000C8077774924);
    }

    MEMORY[0x186602850](v28, 0x1030C40D4B01E93);
    v28 = *(this + 11);
  }

  v30 = *(this + 46);
  if (v30)
  {
    MEMORY[0x186602830](v30, 0x1000C8000313F17);
  }

  v31 = *(this + 47);
  if (v31)
  {
    MEMORY[0x186602830](v31, 0x1000C8000313F17);
  }

  v32 = *(this + 48);
  if (v32)
  {
    MEMORY[0x186602830](v32, 0x1000C80BDFB0063);
  }

  v33 = *(this + 6);
  if (v33)
  {
    v34 = *(v33 + 16);
    if (v34 <= 0)
    {
      v12 = "num_users > 0";
      v38 = 216;
      v13 = "compressed_local.h";
      v14 = "detach";
      goto LABEL_69;
    }

    v35 = v34 - 1;
    *(v33 + 16) = v35;
    if (!v35)
    {
      kd_buf_server::~kd_buf_server(v33);
      MEMORY[0x186602850]();
    }
  }

  v36 = *(this + 18);
  for (*(this + 19) = v36; v36; *(this + 19) = v36)
  {
    *(this + 18) = *(v36 + 7);
    kd_mct_stage::~kd_mct_stage(v36);
    MEMORY[0x186602850]();
    v36 = *(this + 18);
  }

  v37 = *(this + 17);
  if (v37)
  {
    MEMORY[0x186602830](v37, 0x1000C80CE7E837CLL);
  }
}

uint64_t kd_codestream::create_tile(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(a2) - *(a1 + 232);
  if (v2 < 0 || (v5 = a2 - *(a1 + 228), v5 < 0) || (v6 = *(a1 + 240), v6 <= v2) || *(a1 + 236) <= v5)
  {
    kd_codestream::create_tile();
  }

  v7 = *(a1 + 328) + 24 * v2 + 24 * (v6 * v5);
  if (*(v7 + 16))
  {
    kd_codestream::create_tile();
  }

  v11 = *(a1 + 204);
  LODWORD(v11) = v11 + DWORD2(v11) * a2;
  DWORD1(v11) += HIDWORD(v11) * HIDWORD(a2);
  kdu_dims::operator&=(&v11, (a1 + 188));
  if (SHIDWORD(v11) < 1 || *(&v11 + 4) <= 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  if (!*(a1 + 8) || (*(a1 + 417) & 1) != 0 || (*(a1 + 408) & 1) != 0 || kdu_dims::intersects(&v11, (a1 + 264)))
  {
    v8 = *(a1 + 512);
    if (v8)
    {
      *(v7 + 16) = v8;
      *(a1 + 512) = *(v8 + 9);
      kd_tile::recycle(v8, v7, a2, v11, *(&v11 + 1));
    }

    operator new();
  }

  result = -1;
  *(v7 + 16) = -1;
  return result;
}

uint64_t kd_codestream::simulate_output(kdu_params **this, uint64_t *a2, int a3, unsigned int a4, int a5, int a6, uint64_t a7, uint64_t *a8)
{
  v12 = 0;
  *a2 = 0;
  if (a3)
  {
    if (!a6)
    {
      goto LABEL_18;
    }
  }

  else if (*(this + 281) == 1 && (*(this + 422) & 1) == 0)
  {
    v48 = (kdu_params::generate_marker_segments(this[3], 0, -1, 0) + 2);
    *a2 = v48;
    if ((*(this + 421) & 1) == 0)
    {
      kd_codestream::freeze_comments(this);
      v48 = *a2;
    }

    v49 = this[11];
    if (v49)
    {
      do
      {
        *v49 = 1;
        v48 += *(v49 + 2) + 6;
        v49 = *(v49 + 3);
      }

      while (v49);
      *a2 = v48;
    }

    v12 = v48 + *(this + 108);
    *a2 = v12;
  }

  else
  {
    v12 = 0;
  }

  for (i = this[42]; i; i = *(i + 5))
  {
    if (a3)
    {
      v14 = 0;
    }

    else
    {
      v14 = (kdu_params::generate_marker_segments(this[3], 0, *(i + 2), *(i + 76)) + 14);
    }

    if (a6)
    {
      v15 = *(i + 48);
      if (v15 > a3 + 1)
      {
        v16 = *(i + 51) * (v15 + ~a3);
        if (*(i + 285))
        {
          v17 = 3;
        }

        else
        {
          v17 = 1;
        }

        v14 += v16 * v17;
      }
    }

    *a2 += v14;
    v12 += v14;
  }

LABEL_18:
  if (v12 <= a7)
  {
    v52 = this;
    v53 = a2;
    v19 = *(this + 42);
    v20 = this[44] + 2816 * v19;
    v21 = 32;
    __asm { FMOV            V0.2D, #1.0 }

    v51 = _Q0;
    v27 = a8;
    while (1)
    {
      v50 = v21;
      if (v19 >= 1)
      {
        break;
      }

LABEL_80:
      v21 = v50 - 1;
      v20 -= 176 * v19;
      if (!v50)
      {
        return v12;
      }
    }

    v28 = 0;
    while (1)
    {
      v29 = *(v20 + 48);
      if (v29)
      {
        break;
      }

LABEL_79:
      ++v28;
      v20 += 88;
      if (v28 >= v19)
      {
        goto LABEL_80;
      }
    }

    v30 = *(v20 + 40);
    v31 = *(v20 + 64);
    v32 = *(v20 + 72);
    if (v32 < 0.0)
    {
      v33 = v30 < 1 || v30 < v31;
      if (v33)
      {
        kd_codestream::simulate_output();
      }

      if (v30 != v31)
      {
        v35 = *(v20 + 32);
        v36 = *(v20 + 16) - v35;
        if (v36 < 1)
        {
          v37 = v30;
        }

        else
        {
          if (v36 > v31 + v30)
          {
            kd_codestream::simulate_output();
          }

          v37 = v36 * *(v20 + 24) / v35 + (v30 - v36);
        }

        v32 = v31 / v37;
        if (v32 > 1.0)
        {
          v32 = 1.0;
        }

        *(v20 + 72) = v32;
        *(v20 + 80) = 1.0 / v32;
        if (a8)
        {
          goto LABEL_33;
        }

        goto LABEL_41;
      }

      *(v20 + 72) = v51;
      v32 = 1.0;
    }

    if (a8)
    {
LABEL_33:
      v34 = *a8;
LABEL_42:
      v38 = 0;
      v39 = 0;
      v40 = (v32 * v34);
      if (v40 <= 1)
      {
        v40 = 1;
      }

      v55 = v31;
      v56 = v30;
      if (v30 == v31)
      {
        v41 = a7 - v12;
      }

      else
      {
        v41 = (v32 * (a7 - v12));
      }

      if (v30 == v31)
      {
        v42 = v34;
      }

      else
      {
        v42 = v40 - 1;
      }

      v63[0] = 0;
      v54 = v42;
      while (1)
      {
        if (*(v29 + 28))
        {
          v62 = 0;
          memset(v61, 0, sizeof(v61));
          kdu_error::kdu_error(v61, "Kakadu Core Error:\n");
          (*(*&v61[0] + 16))(v61, "Attempting to run rate-control simulation on a precinct for which one or more packets have already been written to the code-stream.  Problem is most likely caused by trying to use the incremental code-stream flushing feature with one of the progression orders, LRCP or RLCP.");
          kdu_error::~kdu_error(v61);
        }

        if (*(*(*(*v29 + 8) + 8) + 192) > a3)
        {
          v63[0] = 0;
          if (v27)
          {
            v43 = a5 & a6;
            if (v42 < 0)
            {
              v43 = 0;
            }

            if ((v43 & 1) == 0)
            {
              kd_codestream::simulate_output();
            }

            if (a4 == 0xFFFF)
            {
              kd_codestream::simulate_output();
            }

            v44 = kd_precinct::simulate_packet(v29, v63, a3, (a4 + 1), 0, 1, 0x10000000000000, 0);
            if (v44 + v42 >= v41 - v38)
            {
              v45 = v41 - v38;
            }

            else
            {
              v45 = v44 + v42;
            }

            if (v41 - v38 < v44)
            {
              kd_codestream::simulate_output();
            }

            v46 = kd_precinct::simulate_packet(v29, v63, a3, a4, 1, 1, v45, 1);
            v33 = v45 < v46;
            v42 = v45 - v46;
            if (v33)
            {
              kd_codestream::simulate_output();
            }
          }

          else
          {
            v46 = kd_precinct::simulate_packet(v29, v63, a3, a4, a5, a6, v41 - v38, 0);
          }

          v38 += v46;
          v39 += v63[0];
          if (v38 > v41)
          {
            break;
          }
        }

        v29 = *(v29 + 56);
        if (!v29)
        {
          goto LABEL_71;
        }
      }

      if (a5)
      {
        kd_codestream::simulate_output();
      }

LABEL_71:
      if (v56 == v55)
      {
        *v53 += v39;
        a8 = v27;
        if (!v27)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v47 = *(v20 + 80);
        *v53 += (v47 * v39) + 1;
        v38 = (v47 * v38) + 1;
        a8 = v27;
        if (!v27)
        {
LABEL_77:
          v12 += v38;
          if (v12 > a7)
          {
            return v12;
          }

          v19 = *(v52 + 42);
          goto LABEL_79;
        }

        v42 = (*v27 + ~(v47 * (v54 - v42))) & ~((*v27 + ~(v47 * (v54 - v42))) >> 63);
      }

      *a8 = v42;
      goto LABEL_77;
    }

LABEL_41:
    v34 = 0;
    goto LABEL_42;
  }

  if (a5)
  {
    kd_codestream::simulate_output();
  }

  return v12;
}

double kd_codestream::calculate_min_header_cost(kd_codestream *this)
{
  if (*(this + 49))
  {
    kd_codestream::calculate_min_header_cost();
  }

  *(this + 49) = 0;
  *(this + 50) = 0;
  if (*(this + 281) == 1)
  {
    *(this + 49) += (kdu_params::generate_marker_segments(*(this + 3), 0, -1, 0) + 2);
  }

  if ((*(this + 421) & 1) == 0)
  {
    kd_codestream::freeze_comments(this);
  }

  if (*(this + 281) == 1)
  {
    v3 = *(this + 11);
    for (i = *(this + 49); v3; v3 = *(v3 + 24))
    {
      *v3 = 1;
      i += *(v3 + 8) + 6;
    }

    *(this + 49) = i + *(this + 108);
  }

  v5 = *(this + 59);
  if (v5 < 1)
  {
    if (((*(this + 49) * *(this + 50)) & 0x8000000000000000) == 0)
    {
      return result;
    }

LABEL_32:
    kd_codestream::calculate_min_header_cost();
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *(this + 41);
  v10 = *(this + 60);
  do
  {
    if (v10 >= 1)
    {
      for (j = 0; j < v10; ++j)
      {
        v12 = *(this + 58);
        v13 = *(this + 56);
        if (j + v12 >= v13 || (v14 = *(this + 57), v14 + v8 >= *(this + 55)))
        {
          kd_codestream::calculate_min_header_cost();
        }

        *(this + 49) += (kdu_params::generate_marker_segments(*(this + 3), 0, j + v12 + v13 * (v8 + v14), 0) + 14);
        v15 = *(v9 + 16);
        if ((v15 + 1) >= 2)
        {
          v6 += *(v15 + 220) * *(v15 + 224);
          v16 = *(v15 + 204);
          if (*(v15 + 285))
          {
            v17 = 2 * v16;
          }

          else
          {
            v17 = 0;
          }

          v7 += v16 + v17;
          if (*(v15 + 284) == 1)
          {
            v7 += 6 * v16;
          }
        }

        v9 += 24;
        v10 = *(this + 60);
      }

      v5 = *(this + 59);
    }

    ++v8;
  }

  while (v8 < v5);
  v18 = *(this + 49) * *(this + 50);
  if (v18 < v6)
  {
    goto LABEL_32;
  }

  if (v6 >= 1)
  {
    result = v18 / v6 * v7;
    *(this + 50) = result;
  }

  return result;
}

void kd_codestream::pcrd_opt(kd_codestream *this, int a2, double a3)
{
  if (a3 <= 0.5)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0.5;
  }

  if (!*(this + 49))
  {
    kd_codestream::calculate_min_header_cost(this);
  }

  v58 = 0;
  v5 = *(this + 91);
  if (*(*(this + 47) + 8 * v5 - 8))
  {
    v53 = 0;
  }

  else
  {
    v53 = kd_codestream::simulate_output(this, &v58, 0, 0, 0, 0, 0x10000000000000, 0);
    LODWORD(v5) = *(this + 91);
  }

  v6 = v5 - 1;
  if (v5 < 1)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = 0;
    while (*(*(this + 47) + 8 * v7))
    {
      if (v5 == ++v7)
      {
        goto LABEL_44;
      }
    }
  }

  if (v7 < v6)
  {
    v8 = *(this + 47);
    v9 = *v8;
    if (*v8)
    {
      v10 = 0;
      v11 = v8 + 1;
      do
      {
        ++v10;
        v12 = *(this + 49) + v9 + *(this + 50) * v10;
        *(v11 - 1) = v12;
        v13 = *v11++;
        v9 = v13;
      }

      while (v13);
    }

    else
    {
      v12 = 0;
      LODWORD(v10) = 0;
    }

    if (v10 < v6)
    {
      v14 = v6;
      v15 = v8 + 1;
      v55 = v8;
      do
      {
        while (1)
        {
          v16 = v8[v10];
          if (!v16)
          {
            break;
          }

          LODWORD(v10) = v10 + 1;
          v12 = v16;
          if (v10 >= v6)
          {
            goto LABEL_44;
          }
        }

        v17 = 0;
        v18 = v10;
        v19 = v10;
        do
        {
          v20 = v17;
          v21 = v15[v19];
          if (v21)
          {
            v22 = v10 - v17;
            goto LABEL_30;
          }

          ++v19;
          --v17;
        }

        while (v19 < v14);
        v22 = v5 - 2;
        v21 = v53;
        if (1 - v5 + v10 != v17)
        {
          kd_codestream::pcrd_opt();
        }

LABEL_30:
        v23 = *(this + 49);
        v24 = *(this + 50);
        v25 = v21 - (v23 + v24 * (v22 + 2));
        if (v25 <= 1)
        {
          v25 = 1;
        }

        v26 = v25;
        if (v12)
        {
          v27 = (v12 - (v23 + v24 * v10));
        }

        else
        {
          if (v10)
          {
            kd_codestream::pcrd_opt();
          }

          v27 = exp2((2 - v20) * -0.5) * v26;
        }

        if (v27 <= 0.0)
        {
          kd_codestream::pcrd_opt();
        }

        v28 = log(v27);
        v29 = log(v26);
        if (v10 <= v22)
        {
          v30 = v29;
          v31 = (2 - v20);
          LODWORD(v10) = v22 + 1;
          v32 = v22 - v18 + 1;
          v33 = &v55[v18];
          v34 = v18 + 1;
          v35 = 1;
          do
          {
            *v33++ = *(this + 49) + exp(v30 * (v35 / v31) + (1.0 - v35 / v31) * v28) + *(this + 50) * v34;
            ++v35;
            ++v34;
            --v32;
          }

          while (v32);
          v6 = v5 - 1;
        }

        v8 = v55;
      }

      while (v10 < v6);
    }
  }

LABEL_44:
  if (v5 < 1)
  {
    return;
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = *(this + 47);
  v40 = 0x10000;
  do
  {
    v41 = (v5 - 1);
    v37 += *(*(this + 46) + 8 * v36);
    v42 = *(v39 + 8 * v36);
    v56 = v38;
    if (v42)
    {
      if (*(this + 282))
      {
        v42 -= 2;
      }

      v43 = *(this + 50);
      if (!v36)
      {
        v43 = v43 + *(this + 49);
      }

      if (v37 >= 1 && v4 > 0.0 && v37 < v42)
      {
        v43 = v43 - (v37 / v42 * v43);
      }

      v44 = v42 - v38 - v37;
      if (v4 <= 0.0 || v44 <= v43)
      {
        v45 = v42 - v38 - v37;
      }

      else
      {
        v45 = v44 - (v4 * (v44 - v43));
      }
    }

    else
    {
      if (v36 != v41)
      {
        kd_codestream::pcrd_opt();
      }

      v44 = 0x10000000000000;
      v40 = 1;
      v45 = 0x10000000000000;
    }

    v46 = 0;
    if (v40 <= 1)
    {
      v47 = 1;
    }

    else
    {
      v47 = v40;
    }

    v48 = v47 - 1;
    while (1)
    {
      v40 = (v47 + v46) >> 1;
      if (v40 >= 0x10000)
      {
        kd_codestream::pcrd_opt();
      }

      v49 = kd_codestream::simulate_output(this, &v58, v36, ((v47 + v46) >> 1), 0, v36 == v41, v44, 0);
      if (v49 <= v44)
      {
        break;
      }

      v46 = v40 + 1;
LABEL_70:
      if (v47 <= v46)
      {
        v40 = v48;
        goto LABEL_73;
      }
    }

    if (v49 < v45)
    {
      v47 = (v47 + v46) >> 1;
      v48 = v40;
      goto LABEL_70;
    }

    LOWORD(v48) = (v47 + v46) >> 1;
LABEL_73:
    v50 = v44 - kd_codestream::simulate_output(this, &v58, v36, v48, 0, v36 == v41, 0x10000000000000, 0);
    v57 = v50;
    if (v40 >= 1 && v36 == v41 && v50 >= 1 && a2)
    {
      v51 = kd_codestream::simulate_output(this, &v58, v36, (v40 - 1), 1, 1, v44, &v57);
      LOWORD(v48) = v40 - 1;
    }

    else
    {
      v51 = kd_codestream::simulate_output(this, &v58, v36, v48, 1, v36 == v41, 0x10000000000000, 0);
      ++v40;
    }

    v39 = *(this + 47);
    *(*(this + 48) + 2 * v36) = v48;
    v38 = v51 + v56;
    if (!*(v39 + 8 * v36))
    {
      if (v36 != v41)
      {
        kd_codestream::pcrd_opt();
      }

      v52 = 2;
      if (!*(this + 282))
      {
        v52 = 0;
      }

      *(v39 + 8 * v36) = v38 + v37 + v52;
    }

    ++v36;
    v5 = *(this + 91);
  }

  while (v36 < v5);
}

BOOL kd_codestream::generate_codestream(kd_codestream *this, int a2)
{
  if (!*(this + 2))
  {
    kd_codestream::generate_codestream();
  }

  if (!*(this + 46) || !*(this + 48))
  {
    kd_codestream::generate_codestream();
  }

  if (*(this + 91) < a2)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    kdu_error::kdu_error(&v20, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(&v20);
  }

  if ((*(this + 422) & 1) == 0)
  {
    *(this + 422) = 1;
    if (*(this + 281) == 1)
    {
      v4 = *(this + 2);
      kdu_output::put(v4, 255);
      kdu_output::put(v4, 79);
      **(this + 46) += 2;
      **(this + 46) += kdu_params::generate_marker_segments(*(this + 3), *(this + 2), -1, 0);
      if ((*(this + 421) & 1) == 0)
      {
        kd_codestream::freeze_comments(this);
      }

      for (i = *(this + 11); i; i = *(i + 3))
      {
        **(this + 46) += kd_codestream_comment::write_marker(i, *(this + 2), 0);
      }
    }

    if (*(this + 26))
    {
      kd_codestream::generate_codestream();
    }

    v6 = kdu_params::access_cluster(*(this + 3), "ORG");
    if (!v6)
    {
      kd_codestream::generate_codestream();
    }

    v19 = 0;
    if (!kdu_params::get(v6, "ORGgen_tlm", 0, 0, &v19, 1, 1, 1) || v19 < 1)
    {
      goto LABEL_25;
    }

    if (v19 >= 0x100)
    {
      v19 = 255;
    }

    v7 = *(this + 2);
    (*(*v7 + 16))(v7);
    v8 = v7[67];
    if ((*(*v8 + 24))(v8, 0))
    {
      (*(*v8 + 32))(v8);
      if (kd_tlm_generator::init((this + 104), *(this + 55) * *(this + 56), v19))
      {
        if (*(this + 281) == 1)
        {
          kd_tlm_generator::write_dummy_tlms(this + 26, *(this + 2));
        }

        goto LABEL_25;
      }

      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      kdu_warning::kdu_warning(&v20, "Kakadu Core Warning:\n");
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      kdu_warning::kdu_warning(&v20, "Kakadu Core Warning:\n");
    }

    kdu_warning::~kdu_warning(&v20);
LABEL_25:
    if (*(this + 53))
    {
      kd_codestream::generate_codestream();
    }

    v9 = *(*(this + 2) + 544) - *(this + 2) + *(*(this + 2) + 520) - 8;
    *(this + 53) = v9;
    if ((*(this + 281) & 1) == 0 && v9)
    {
      kd_codestream::generate_codestream();
    }

    goto LABEL_28;
  }

  do
  {
LABEL_28:
    v10 = *(this + 42);
    if (!v10)
    {
      break;
    }

    v11 = 1;
    do
    {
      v12 = *(v10 + 5);
      v13 = *(v10 + 3);
      tile_part = kd_tile::generate_tile_part(v10, a2, *(this + 48));
      v16 = *(v13 + 16) == -1 || tile_part < 1;
      v11 &= v16;
      v10 = v12;
    }

    while (v12);
  }

  while ((v11 & 1) == 0);
  if (*(this + 90))
  {
    return 0;
  }

  v18 = *(this + 2);
  if (*(this + 26) >= 1)
  {
    (*(*v18 + 2))(*(this + 2));
    kd_tlm_generator::write_tlms(this + 104, v18[67], *(this + 74), *(this + 38));
    v18 = *(this + 2);
  }

  if (*(this + 282) == 1)
  {
    kdu_output::put(v18, 255);
    kdu_output::put(v18, 217);
    **(this + 46) += 2;
    v18 = *(this + 2);
  }

  (*(*v18 + 2))(v18);
  return *(this + 90) == 0;
}

void sub_185F45C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kdu_warning::~kdu_warning(va);
  _Unwind_Resume(a1);
}

uint64_t kd_codestream::unload_tiles_to_cache_threshold(uint64_t this)
{
  v1 = *(this + 504);
  if (v1 >= 1)
  {
    v2 = this;
    do
    {
      if (v1 <= *(v2 + 508) && *(*(v2 + 48) + 56) >= *(*(v2 + 48) + 40) + 220 * *(*(v2 + 48) + 24))
      {
        break;
      }

      v3 = *(v2 + 496);
      if (!v3)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v4 = kdu_dims::intersects((v3 + 212), (v2 + 264));
        v5 = *(v2 + 496);
        if (!v4)
        {
          break;
        }

        v3 = *(v5 + 56);
        *(v2 + 496) = v3;
        if (!v3)
        {
          goto LABEL_12;
        }
      }

      if (v5)
      {
        if ((*(v5 + 290) & 1) == 0)
        {
          kd_codestream::unload_tiles_to_cache_threshold();
        }
      }

      else
      {
LABEL_12:
        v5 = *(v2 + 480);
      }

      this = kd_tile::release(v5);
      v1 = *(v2 + 504);
    }

    while (v1 > 0);
  }

  return this;
}

void kdu_codestream::create(kdu_codestream *this, siz_params *a2, kdu_compressed_target *a3, kdu_dims *a4)
{
  if (a3)
  {
    if (!*this)
    {
      operator new();
    }
  }

  kdu_codestream::create();
}

void kdu_codestream::create(kdu_codestream *this, kdu_compressed_source *a2)
{
  if (!*this)
  {
    operator new();
  }

  kdu_codestream::create();
}

void kdu_codestream::restart(kdu_codestream *this, kdu_compressed_source *a2)
{
  if ((*(*this + 408) & 1) == 0)
  {
    *&v5 = 0;
    v3 = 0u;
    v4 = 0u;
    kdu_error::kdu_error(&v3, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(&v3);
  }

  v2 = *(*this + 8);
  if (!v2)
  {
    *&v5 = 0;
    v3 = 0u;
    v4 = 0u;
    kdu_error::kdu_error(&v3, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(&v3);
  }

  (*(*v2 + 8))(v2, a2);
  operator new();
}

uint64_t kdu_codestream::destroy(kd_codestream **this)
{
  v2 = *this;
  if (!v2)
  {
    kdu_codestream::destroy();
  }

  kd_codestream::~kd_codestream(v2);
  result = MEMORY[0x186602850]();
  *this = 0;
  return result;
}

uint64_t kdu_codestream::augment_cache_threshold(kdu_codestream *this, int a2)
{
  v2 = *(*this + 48);
  result = *(v2 + 56) + a2;
  *(v2 + 56) = result;
  return result;
}

uint64_t *kdu_codestream::enable_restart(uint64_t *this)
{
  v1 = *this;
  if ((*(*this + 408) & 1) == 0)
  {
    if (*(v1 + 419) == 1)
    {
      v3 = 0;
      memset(v2, 0, sizeof(v2));
      kdu_error::kdu_error(v2, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(v2);
    }

    *(v1 + 408) = 1;
  }

  return this;
}

uint64_t *kdu_codestream::set_persistent(uint64_t *this)
{
  v1 = *this;
  if (*(*this + 8))
  {
    if (*(v1 + 419) == 1)
    {
      v3 = 0;
      memset(v2, 0, sizeof(v2));
      kdu_error::kdu_error(v2, "Kakadu Core Error:\n");
      (*(*&v2[0] + 16))(v2, "You may only set the codestream object into its persistent mode prior to opening the first tile.");
      kdu_error::~kdu_error(v2);
    }

    *(v1 + 417) = 1;
  }

  return this;
}

uint64_t kdu_codestream::set_max_bytes(kdu_codestream *this, uint64_t a2, char a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *this;
  if (*(*this + 419) == 1)
  {
    kdu_codestream::set_max_bytes();
  }

  result = *(v3 + 8);
  if (result)
  {
    *(v3 + 416) = a3;
    result = kd_compressed_input::set_max_bytes(result, a2);
    if (*(*(*this + 8) + 544) == 1)
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      kdu_error::kdu_error(v8, "Kakadu Core Error:\n");
      (*(*&v8[0] + 16))(v8, "Attempting to impose too small a limit on the number of code-stream bytes. ");
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      *v10 = 0u;
      if (BYTE8(v8[0]))
      {
        sprintf(v10, "%x");
      }

      else
      {
        sprintf(v10, "%d");
      }

      (*(*&v8[0] + 16))(v8, v10);
      (*(*&v8[0] + 16))(v8, " bytes is insufficient to accomodate even the main header!");
      kdu_error::~kdu_error(v8);
    }
  }

  else if (*(v3 + 16))
  {
    if (*(v3 + 64))
    {
      *&v12 = 0;
      *v10 = 0u;
      v11 = 0u;
      kdu_error::kdu_error(v10, "Kakadu Core Error:\n");
      (*(*v10 + 16))(v10, "kdu_codestream::set_max_bytes may not be called multiple times.");
      kdu_error::~kdu_error(v10);
    }

    if (*(v3 + 168) >= 1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        memset(v10, 0, sizeof(v10));
        kdu_codestream::get_dims(this, v6, v10, 0);
        v7 += *&v10[8] * *&v10[12];
        ++v6;
      }

      while (v6 < *(*this + 168));
    }

    operator new();
  }

  return result;
}

int32x4_t *kdu_codestream::get_dims(kdu_codestream *this, unsigned int a2, int32x4_t *a3, int a4)
{
  v6 = *this;
  if ((a2 & 0x80000000) != 0)
  {
    *a3 = *(v6 + 264);
  }

  else
  {
    if ((*(v6 + 420) & 1) == 0)
    {
      kd_codestream::finalize_construction(v6);
      v6 = *this;
    }

    if (a4 && !*(v6 + 184))
    {
      v9 = (*(v6 + 320) + 48 * *(*(v6 + 320) + 48 * a2 + 20) + 8);
    }

    else
    {
      v9 = (*(v6 + 312) + 104 * a2 + 96);
    }

    v10 = *v9;
    v11 = *(v6 + 268);
    v12 = *(v6 + 276) + v11;
    v13 = v10 + *(v6 + 244);
    v14 = v13[54];
    v15 = *v10;
    v16 = v10[1] << v13[21];
    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    if (v11 <= 0)
    {
      v18 = -(-v11 / v17);
    }

    else
    {
      v18 = (v11 - 1) / v17 + 1;
    }

    v19 = *(v6 + 264);
    v20 = v15 << v14;
    if (v12 <= 0)
    {
      v21 = -(-v12 / v17);
    }

    else
    {
      v21 = (v12 - 1) / v17 + 1;
    }

    v22 = *(v6 + 272) + v19;
    if (v20 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v20;
    }

    if (v19 <= 0)
    {
      v24 = -(-v19 / v23);
    }

    else
    {
      v24 = (v19 - 1) / v23 + 1;
    }

    if (v22 <= 0)
    {
      v25 = -(-v22 / v23);
    }

    else
    {
      v25 = (v22 - 1) / v23 + 1;
    }

    a3->i64[0] = v24 | (v18 << 32);
    a3->i64[1] = (v25 - v24) | ((v21 - v18) << 32);
  }

  v26 = *(*this + 409);
  v27 = *(*this + 410);
  v28 = *(*this + 411);

  return kdu_dims::to_apparent(a3, v26, v27, v28);
}

void *kdu_codestream::set_resilient(void *this, char a2)
{
  v2 = *this;
  v2[412] = 1;
  v2[413] = a2;
  v2[414] = 0;
  return this;
}

uint64_t *kdu_codestream::set_fussy(uint64_t *this)
{
  v1 = *this;
  *(v1 + 412) = 0;
  *(v1 + 414) = 1;
  return this;
}

uint64_t *kdu_codestream::set_fast(uint64_t *this)
{
  v1 = *this;
  *(v1 + 412) = 0;
  *(v1 + 414) = 0;
  return this;
}

uint64_t kdu_codestream::apply_input_restrictions(uint64_t result, int a2, int a3, int a4, int a5, int *a6, int a7)
{
  v10 = result;
  v11 = *result;
  if (*(*result + 16))
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    kdu_error::kdu_error(&v38, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(&v38);
  }

  if (*(v11 + 419) == 1)
  {
    if (*(v11 + 260))
    {
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      kdu_error::kdu_error(&v38, "Kakadu Core Error:\n");
      (*(v38 + 16))(&v38, "You may apply restrictions to the resolution or number of image components only after closing all open tiles.");
      kdu_error::~kdu_error(&v38);
    }

    if ((*(v11 + 417) & 1) == 0)
    {
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      kdu_error::kdu_error(&v38, "Kakadu Core Error:\n");
      (*(v38 + 16))(&v38, "You may not apply restrictions to the resolution or number of image components after the first tile access, unless the codestream object is set up to be persistent.");
      kdu_error::~kdu_error(&v38);
    }
  }

  *(v11 + 244) = a4;
  if (a5 >= 1)
  {
    v12 = a5;
  }

  else
  {
    v12 = 0xFFFF;
  }

  *(v11 + 252) = v12;
  *(v11 + 264) = *(v11 + 188);
  if (a6)
  {
    result = kdu_dims::operator&=((*result + 264), a6);
  }

  v13 = *v10;
  *(v13 + 496) = *(*v10 + 480);
  *(v13 + 184) = a7;
  if (a7)
  {
    if (a7 != 1)
    {
      kdu_codestream::apply_input_restrictions();
    }

    if (a2 < 0 || (v14 = *(v13 + 168), v14 <= a2))
    {
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      kdu_error::kdu_error(&v38, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(&v38);
    }

    *(v13 + 180) = 0;
    v15 = v14 - a2;
    if (v15 >= a3)
    {
      v16 = a3;
    }

    else
    {
      v16 = v15;
    }

    if (a3 > 0)
    {
      v15 = v16;
    }

    *(v13 + 172) = v15;
    v17 = *v10;
    if (*(*v10 + 168) >= 1)
    {
      v18 = 0;
      v19 = -a2;
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = *(v17 + 312) + v20;
        if (v19 >= *(v17 + 172))
        {
          v23 = -1;
        }

        else
        {
          v23 = v19;
        }

        *(v22 + 88) = v23;
        *(v22 + 96) = 0;
        v17 = *v10;
        if ((v23 & 0x80000000) == 0)
        {
          v24 = *(v17 + 312) + 104 * v18++;
          *(v24 + 96) = v22;
        }

        ++v21;
        ++v19;
        v20 += 104;
      }

      while (v21 < *(v17 + 168));
    }
  }

  else
  {
    v25 = *(v13 + 168);
    *(v13 + 172) = v25;
    if (v25 >= 1)
    {
      v26 = 0;
      v27 = *(v13 + 312);
      do
      {
        *(v27 + 88) = v26;
        *(v27 + 96) = v27;
        ++v26;
        v27 += 104;
      }

      while (v25 != v26);
    }

    if (a2 < 0 || (v28 = *(v13 + 176), v28 <= a2))
    {
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      kdu_error::kdu_error(&v38, "Kakadu Core Error:\n");
      kdu_error::~kdu_error(&v38);
    }

    v29 = v28 - a2;
    if (v29 >= a3)
    {
      v30 = a3;
    }

    else
    {
      v30 = v29;
    }

    if (a3 > 0)
    {
      v29 = v30;
    }

    *(v13 + 180) = v29;
    v31 = *v10;
    if (*(*v10 + 176) >= 1)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      do
      {
        v35 = *(v31 + 320) + v32;
        if (v34 - a2 >= *(v31 + 180))
        {
          v36 = -1;
        }

        else
        {
          v36 = v34 - a2;
        }

        *(v35 + 16) = v36;
        *(v35 + 20) = 0;
        v31 = *v10;
        if ((v36 & 0x80000000) == 0)
        {
          v37 = *(v31 + 320) + 48 * v33++;
          *(v37 + 20) = v34;
        }

        ++v34;
        v32 += 48;
      }

      while (v34 < *(v31 + 176));
    }
  }

  return result;
}

uint64_t kdu_codestream::apply_input_restrictions(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int *a6, int a7)
{
  result = kdu_codestream::apply_input_restrictions(a1, 0, 0, a4, a5, a6, a7);
  if (a7 == 1)
  {
    v23 = *a1;
    v24 = *(*a1 + 168);
    if (v24 >= 1)
    {
      v25 = (*(v23 + 312) + 96);
      v26 = *(*a1 + 168);
      do
      {
        *v25 = 0;
        *(v25 - 2) = -1;
        v25 += 13;
        --v26;
      }

      while (v26);
    }

    *(v23 + 172) = a2;
    if (a2 >= 1)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        if (v27 < v24)
        {
          v29 = *(a3 + 4 * v27);
          if (v29 < v24)
          {
            v30 = *(v23 + 312);
            v31 = v30 + 104 * v29;
            v33 = *(v31 + 88);
            v32 = (v31 + 88);
            result = v33;
            if ((v33 & 0x80000000) != 0)
            {
              *v32 = v28;
              *(v30 + 104 * v28++ + 96) = v30 + 104 * v29;
            }
          }
        }

        ++v27;
      }

      while (a2 != v27);
    }
  }

  else
  {
    if (a7)
    {
      kdu_codestream::apply_input_restrictions();
    }

    v12 = *a1;
    v13 = *(*a1 + 176);
    if (v13 >= 1)
    {
      v14 = (*(v12 + 320) + 16);
      v15 = *(*a1 + 176);
      do
      {
        *v14 = 0xFFFFFFFFLL;
        v14 += 6;
        --v15;
      }

      while (v15);
    }

    *(v12 + 180) = a2;
    if (a2 >= 1)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        if (v16 < v13)
        {
          v18 = *(a3 + 4 * v16);
          if (v18 < v13)
          {
            v19 = *(v12 + 320);
            v20 = v19 + 48 * v18;
            v22 = *(v20 + 16);
            v21 = (v20 + 16);
            result = v22;
            if ((v22 & 0x80000000) != 0)
            {
              *v21 = v17;
              *(v19 + 48 * v17++ + 20) = v18;
            }
          }
        }

        ++v16;
      }

      while (a2 != v16);
    }
  }

  return result;
}

uint64_t *kdu_codestream::change_appearance(uint64_t *this, char a2, char a3, char a4)
{
  v4 = *this;
  if (*(*this + 419) == 1)
  {
    if (*(v4 + 260))
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
      (*(v5 + 16))(&v5, "You may change the apparent geometry of the code-stream only after closing all open tiles.");
      kdu_error::~kdu_error(&v5);
    }

    if ((*(v4 + 417) & 1) == 0)
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
      (*(v5 + 16))(&v5, "You may not change the apparent geometry of the code-stream after the first tile access, unless the codestream object is set up to be persistent.");
      kdu_error::~kdu_error(&v5);
    }
  }

  *(v4 + 409) = a2;
  *(v4 + 410) = a3;
  *(v4 + 411) = a4;
  return this;
}

int32x4_t *kdu_codestream::get_tile_dims(uint64_t *a1, uint64_t a2, unsigned int a3, int32x4_t *a4, int a5)
{
  v5 = *a1;
  if (*(*a1 + 411))
  {
    v6 = -HIDWORD(a2);
  }

  else
  {
    v6 = HIDWORD(a2);
  }

  if (*(*a1 + 410))
  {
    v7 = -a2;
  }

  else
  {
    v7 = a2;
  }

  if (*(*a1 + 409))
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (*(*a1 + 409))
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v8 < 0 || v8 >= *(v5 + 224) || v9 < 0 || v9 >= *(v5 + 220))
  {
    kdu_codestream::get_tile_dims();
  }

  *a4 = *(v5 + 204);
  v14 = a4->i32[1] + a4->i32[3] * v8;
  a4->i32[0] += a4->i32[2] * v9;
  a4->i32[1] = v14;
  kdu_dims::operator&=(a4, (*a1 + 188));
  if (!*(*a1 + 16))
  {
    kdu_dims::operator&=(a4, (*a1 + 264));
  }

  v15 = a4->i32[0];
  v16 = a4->i32[1];
  v17 = a4->i32[2];
  v18 = a4->i32[3];
  if ((a3 & 0x80000000) != 0)
  {
    v24 = 1;
    v25 = 1;
  }

  else
  {
    v19 = *a1;
    if ((*(*a1 + 420) & 1) == 0)
    {
      kd_codestream::finalize_construction(v19);
      v19 = *a1;
    }

    if (a5 && !*(v19 + 184))
    {
      v20 = (*(v19 + 320) + 48 * *(*(v19 + 320) + 48 * a3 + 20) + 8);
    }

    else
    {
      v20 = (*(v19 + 312) + 104 * a3 + 96);
    }

    v21 = *v20;
    v22 = *v21;
    v23 = v21 + *(v19 + 244);
    v24 = v21[1] << v23[21];
    v25 = v22 << v23[54];
  }

  if (v24 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v24;
  }

  if (v16 <= 0)
  {
    v27 = -(-v16 / v26);
  }

  else
  {
    v27 = (v16 - 1) / v26 + 1;
  }

  v28 = v18 + v16;
  if (v25 <= 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = v25;
  }

  if (v15 <= 0)
  {
    v30 = -(-v15 / v29);
  }

  else
  {
    v30 = (v15 - 1) / v29 + 1;
  }

  v31 = v17 + v15;
  if (v28 <= 0)
  {
    v32 = -(-v28 / v26);
  }

  else
  {
    v32 = (v28 - 1) / v26 + 1;
  }

  if (v31 <= 0)
  {
    v33 = -(-v31 / v29);
  }

  else
  {
    v33 = (v31 - 1) / v29 + 1;
  }

  a4->i64[0] = v30 | (v27 << 32);
  a4->i64[1] = (v33 - v30) | ((v32 - v27) << 32);
  v34 = *(*a1 + 409);
  v35 = *(*a1 + 410);
  v36 = *(*a1 + 411);

  return kdu_dims::to_apparent(a4, v34, v35, v36);
}

uint64_t kdu_codestream::get_num_components(kdu_codestream *this, int a2)
{
  v2 = *this;
  if (a2 && !*(v2 + 184))
  {
    v3 = 180;
  }

  else
  {
    v3 = 172;
  }

  return *(v2 + v3);
}

uint64_t kdu_codestream::get_bit_depth(kdu_codestream *this, unsigned int a2, int a3)
{
  if ((a2 & 0x80000000) == 0)
  {
    v3 = *this;
    if (a3 && !*(v3 + 184))
    {
      if (*(v3 + 180) > a2)
      {
        v4 = (*(v3 + 320) + 48 * *(*(v3 + 320) + 48 * a2 + 20));
        return *v4;
      }
    }

    else if (*(v3 + 172) > a2)
    {
      v4 = (*(*(v3 + 312) + 104 * a2 + 96) + 16);
      return *v4;
    }
  }

  return 0;
}

uint64_t kdu_codestream::get_signed(kdu_codestream *this, unsigned int a2, int a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_9;
  }

  v3 = *this;
  if (a3 && !*(v3 + 184))
  {
    if (*(v3 + 180) > a2)
    {
      v4 = (*(v3 + 320) + 48 * *(*(v3 + 320) + 48 * a2 + 20) + 4);
      goto LABEL_6;
    }

LABEL_9:
    v5 = 0;
    return v5 & 1;
  }

  if (*(v3 + 172) <= a2)
  {
    goto LABEL_9;
  }

  v4 = (*(*(v3 + 312) + 104 * a2 + 96) + 20);
LABEL_6:
  v5 = *v4;
  return v5 & 1;
}

void kdu_codestream::get_subsampling(kd_codestream **a1, int a2, uint64_t a3, int a4)
{
  v8 = *a1;
  if ((*(v8 + 420) & 1) == 0)
  {
    kd_codestream::finalize_construction(v8);
  }

  if (a2 < 0)
  {
    goto LABEL_13;
  }

  v9 = *a1;
  if (!a4 || *(v9 + 46))
  {
    if (*(v9 + 43) > a2)
    {
      v10 = (*(v9 + 39) + 104 * a2 + 96);
      goto LABEL_8;
    }

LABEL_13:
    *a3 = 0;
    return;
  }

  v17 = *(v9 + 45);
  if (v17 >= 5 || v17 <= a2)
  {
    goto LABEL_13;
  }

  v10 = (*(v9 + 40) + 48 * *(*(v9 + 40) + 48 * a2 + 20) + 8);
LABEL_8:
  v11 = *v10;
  v12 = *v11;
  *a3 = *v11;
  v13 = *a1;
  v14 = v11 + *(*a1 + 61);
  v15 = HIDWORD(v12) << v14[21];
  *(a3 + 4) = v15;
  v16 = v12 << v14[54];
  *a3 = v16;
  if (*(v13 + 409) == 1)
  {
    *a3 = v15;
    *(a3 + 4) = v16;
  }
}

void kdu_codestream::get_registration(kd_codestream **a1, unsigned int a2, unint64_t a3, uint64_t a4, int a5)
{
  v10 = *a1;
  if ((*(v10 + 420) & 1) == 0)
  {
    kd_codestream::finalize_construction(v10);
  }

  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  v11 = *a1;
  if (a5 && !*(v11 + 46))
  {
    if (*(v11 + 45) > a2)
    {
      v12 = (*(v11 + 40) + 48 * *(*(v11 + 40) + 48 * a2 + 20) + 8);
      goto LABEL_8;
    }

LABEL_27:
    *a4 = 0;
    return;
  }

  if (*(v11 + 43) <= a2)
  {
    goto LABEL_27;
  }

  v12 = (*(v11 + 39) + 104 * a2 + 96);
LABEL_8:
  v13 = HIDWORD(a3);
  v14 = *v12;
  v15 = *(v11 + 409) == 0;
  if (*(v11 + 409))
  {
    v16 = a3;
  }

  else
  {
    v16 = HIDWORD(a3);
  }

  v17 = *(v14 + 12);
  v18 = vcvtmd_s64_f64((*(v14 + 8) * v16) + 0.5);
  if (!*(v11 + 409))
  {
    LODWORD(v13) = a3;
  }

  v19 = vcvtmd_s64_f64((v17 * v13) + 0.5);
  v20 = *(v11 + 410);
  v21 = *(v11 + 411);
  if (v15)
  {
    v22 = v19;
  }

  else
  {
    v22 = v18;
  }

  if (!v15)
  {
    v18 = v19;
  }

  if (v21)
  {
    v23 = -v18;
  }

  else
  {
    v23 = v18;
  }

  if (v20)
  {
    v24 = -v22;
  }

  else
  {
    v24 = v22;
  }

  *a4 = v24;
  *(a4 + 4) = v23;
}

uint64_t kdu_codestream::get_min_dwt_levels(kdu_codestream *this)
{
  v2 = *this;
  result = *(*this + 248);
  if (result >= 33)
  {
    v8 = 0;
    v4 = kdu_params::access_cluster(*(v2 + 24), "COD");
    v5 = kdu_params::get(v4, "Clevels", 0, 0, &v8, 1, 1, 1);
    v6 = *this;
    if (v5)
    {
      v7 = v8;
      result = *(v6 + 248);
      if (v8 < result)
      {
        *(v6 + 248) = v8;
        result = v7;
      }
    }

    else
    {
      result = *(v6 + 248);
    }

    if (result >= 33)
    {
      result = 32;
      *(v6 + 248) = 32;
    }
  }

  return result;
}

uint64_t kdu_codestream::can_flip(kdu_codestream *this)
{
  v1 = *this;
  if (*(*this + 280) == 1)
  {
    if (*(v1 + 411))
    {
      v2 = 0;
    }

    else
    {
      v2 = *(v1 + 410) ^ 1;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t kdu_codestream::map_region(void *a1, unsigned int a2, unint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v8 = HIDWORD(a3);
  v9 = HIDWORD(a4);
  v10 = *a1;
  v11 = *(v10 + 409);
  if (*(v10 + 411))
  {
    LODWORD(v8) = 1 - (HIDWORD(a4) + HIDWORD(a3));
  }

  if (*(v10 + 410))
  {
    v12 = 1 - (a4 + a3);
  }

  else
  {
    v12 = a3;
  }

  v13 = v11 == 1;
  if (v11 == 1)
  {
    v14 = a4;
  }

  else
  {
    v14 = HIDWORD(a4);
  }

  if (v13)
  {
    v15 = v12;
  }

  else
  {
    LODWORD(v9) = a4;
    v15 = v8;
  }

  if (v13)
  {
    v16 = v8;
  }

  else
  {
    v16 = v12;
  }

  v17 = v15 + v14;
  v18 = v16 + v9;
  if ((a2 & 0x80000000) == 0)
  {
    if ((*(v10 + 420) & 1) == 0)
    {
      kd_codestream::finalize_construction(v10);
      v10 = *a1;
    }

    if (a6 && !*(v10 + 184))
    {
      v21 = (*(v10 + 320) + 48 * *(*(v10 + 320) + 48 * a2 + 20) + 8);
    }

    else
    {
      v21 = (*(v10 + 312) + 104 * a2 + 96);
    }

    v22 = *v21;
    v23 = v22 + *(v10 + 244);
    v24 = v22[1] << v23[21];
    v15 = (v24 * v15);
    LODWORD(v22) = *v22 << v23[54];
    v16 *= v22;
    v17 *= v24;
    v18 *= v22;
  }

  *a5 = v16 | (v15 << 32);
  *(a5 + 8) = (v18 - v16) | ((v17 - v15) << 32);
  v25 = (*a1 + 188);

  return kdu_dims::operator&=(a5, v25);
}

int32x4_t *kdu_codestream::get_valid_tiles(kdu_codestream *this, int32x4_t *a2)
{
  v2 = *(*this + 268) - *(*this + 208);
  v3 = *(*this + 264) - *(*this + 204);
  v4 = *(*this + 276);
  v5 = v4 + v2;
  v6 = *(*this + 216);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  if ((v2 & 0x80000000) != 0)
  {
    v7 = ~(~v2 / v6);
  }

  else
  {
    v7 = v2 / v6;
  }

  v8 = *(*this + 272);
  a2->i32[1] = v7;
  if (v5 <= 0)
  {
    v9 = -(-v5 / v6);
  }

  else
  {
    v9 = (v5 - 1) / v6 + 1;
  }

  v10 = v8 + v3;
  v11 = v9 - v7;
  if (v4 <= 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  a2->i32[3] = v12;
  v13 = *(*this + 212);
  if (v13 <= 1)
  {
    v13 = 1;
  }

  if ((v3 & 0x80000000) != 0)
  {
    v14 = ~(~v3 / v13);
  }

  else
  {
    v14 = v3 / v13;
  }

  a2->i32[0] = v14;
  if (v10 <= 0)
  {
    v15 = -(-v10 / v13);
  }

  else
  {
    v15 = (v10 - 1) / v13 + 1;
  }

  v16 = v15 - v14;
  if (v8 <= 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  a2->i32[2] = v17;
  return kdu_dims::to_apparent(a2, *(*this + 409), *(*this + 410), *(*this + 411));
}

uint64_t kdu_codestream::open_tile(uint64_t *a1, unint64_t a2, kdu_thread_entity *this)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  if (this)
  {
    kdu_thread_entity::acquire_lock(this, 0, 1);
  }

  v7 = *a1;
  *(v7 + 419) = 1;
  if ((*(v7 + 420) & 1) == 0)
  {
    kd_codestream::finalize_construction(v7);
    v7 = *a1;
  }

  if (*(v7 + 411))
  {
    v8 = -v6;
  }

  else
  {
    v8 = v6;
  }

  if (*(v7 + 410))
  {
    LODWORD(v9) = -v4;
  }

  else
  {
    LODWORD(v9) = v4;
  }

  if (*(v7 + 409))
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (*(v7 + 409))
  {
    v9 = v8;
  }

  else
  {
    v9 = v9;
  }

  if ((v10 & 0x80000000) != 0 || v10 >= *(v7 + 224) || (v9 & 0x80000000) != 0 || v9 >= *(v7 + 220))
  {
    kdu_codestream::open_tile();
  }

  v11 = v10 - *(v7 + 232);
  if ((v11 & 0x80000000) != 0 || (v12 = v9 - *(v7 + 228), v12 < 0) || (v13 = *(v7 + 240), v13 <= v11) || *(v7 + 236) <= v12)
  {
    kdu_codestream::open_tile();
  }

  v14 = *(v7 + 328) + 24 * v11 + 24 * (v13 * v12);
  tile = *(v14 + 16);
  if (tile == -1)
  {
    goto LABEL_34;
  }

  if (tile)
  {
    if (*(tile + 293) == 1)
    {
      if (*(v7 + 408) != 1 || *v14)
      {
        kdu_codestream::open_tile();
      }

      kd_tile::reinitialize(*(v14 + 16));
    }
  }

  else
  {
    tile = kd_codestream::create_tile(v7, v9 | (v10 << 32));
  }

  if (tile == -1 || *(tile + 291) == 1)
  {
LABEL_34:
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    kdu_error::kdu_error(v17, "Kakadu Core Error:\n");
    (*(*&v17[0] + 16))(v17, "Attempting to access a tile which has already been discarded or closed!");
    kdu_error::~kdu_error(v17);
  }

  if (*(tile + 24) != v14)
  {
    kdu_codestream::open_tile();
  }

  kd_tile::open(tile);
  if (this)
  {
    kdu_thread_entity::release_lock(this, 0);
  }

  return tile;
}

void kdu_codestream::flush(uint64_t *a1, void *a2, unsigned int a3, __int16 *a4, int a5, int a6, kdu_thread_entity *this, double a8)
{
  v8 = this;
  if (this)
  {
    kdu_thread_entity::acquire_lock(this, 0, 1);
  }

  v16 = a3 - 1;
  if (a3 < 1 || (v17 = *a1, !*(*a1 + 16)))
  {
    kdu_codestream::flush();
  }

  if ((*(v17 + 420) & 1) == 0)
  {
    kd_codestream::finalize_construction(v17);
    v17 = *a1;
  }

  v18 = *(v17 + 384);
  if (!*(v17 + 376))
  {
    if (!v18 && !*(v17 + 368))
    {
      *(v17 + 364) = a3;
      operator new[]();
    }

    kdu_codestream::flush();
  }

  if (!v18 || !*(v17 + 368))
  {
    kdu_codestream::flush();
  }

  if (*(v17 + 364) != a3)
  {
    v48 = 0;
    *v46 = 0u;
    v47 = 0u;
    kdu_error::kdu_error(v46, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(v46);
  }

  v19 = *v18;
  if (*v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(*(v17 + 376) + 8 * v16) == 0;
  }

  v21 = !v20;
  if (a4 && *v18 && *a4)
  {
    v22 = a3;
    v23 = a4;
    do
    {
      v24 = *v23++;
      *v18++ = v24;
      --v22;
    }

    while (v22);
  }

  *(v17 + 432) = 0;
  if (a6 && (*(v17 + 422) & 1) == 0 && *(v17 + 281) == 1)
  {
    kd_codestream::set_reserved_layer_info_bytes(v17, a3);
  }

  v45 = v16;
  if (v19)
  {
    v25 = v8;
    v26 = v21;
    v27 = 0;
    v28 = 0;
    v46[0] = 0;
    v29 = *a1;
    do
    {
      v28 += kd_codestream::simulate_output(v29, v46, v27, *(*(v29 + 384) + 2 * v27), 1, a3 - 1 == v27, 0x10000000000000, 0);
      v29 = *a1;
      *(*(*a1 + 376) + 8 * v27++) = v28;
    }

    while (a3 != v27);
    v21 = v26;
    v8 = v25;
  }

  else
  {
    v30 = *a1;
    if (a5)
    {
      v31 = *(v30 + 168);
      if (v31 < 1)
      {
        v36 = 1;
      }

      else
      {
        v32 = 33 * v31;
        v33 = (*(v30 + 352) + 64);
        do
        {
          v34 = *v33;
          v35 = *(v33 - 3);
          v36 = *v33 >= v35;
          if (v32 < 2)
          {
            break;
          }

          --v32;
          v33 += 11;
        }

        while (v34 >= v35);
      }
    }

    else
    {
      v36 = 0;
    }

    kd_codestream::pcrd_opt(v30, v36, a8);
  }

  v37 = *a1;
  if (*(*a1 + 432) && *(v37 + 281) == 1 && (*(v37 + 422) & 1) == 0)
  {
    kd_codestream::gen_layer_info_comment(v37, a3, *(v37 + 376), *(v37 + 384));
    v37 = *a1;
  }

  kd_codestream::generate_codestream(v37, a3);
  v38 = a3;
  if (a4)
  {
    v39 = *(*a1 + 384);
    v40 = a3;
    do
    {
      v41 = *v39++;
      *a4++ = v41;
      --v40;
    }

    while (v40);
  }

  if (a2)
  {
    v42 = 0;
    v43 = *(*a1 + 368);
    do
    {
      v44 = *v43++;
      v42 += v44;
      *a2++ = v42;
      --v38;
    }

    while (v38);
  }

  if (!v19)
  {
    bzero(*(*a1 + 384), 2 * a3);
    if ((v21 & 1) == 0)
    {
      *(*(*a1 + 376) + 8 * v45) = 0;
    }
  }

  if (v8)
  {
    kdu_thread_entity::release_lock(v8, 0);
  }
}

uint64_t kdu_codestream::ready_for_flush(uint64_t *a1, kdu_thread_entity *this)
{
  v2 = *a1;
  if (!*a1 || !*(v2 + 16))
  {
    return 0;
  }

  if (this)
  {
    kdu_thread_entity::acquire_lock(this, 0, 1);
    v2 = *a1;
  }

  v5 = *(v2 + 336);
  if (!v5)
  {
LABEL_18:
    if (this)
    {
      kdu_thread_entity::release_lock(this, 0);
    }

    return 0;
  }

  while (1)
  {
    v9 = 0;
    v10 = 0;
    v6 = kd_packet_sequencer::next_in_sequence(*(v5 + 96), &v10, &v9);
    if (v6)
    {
      break;
    }

LABEL_14:
    v5 = *(v5 + 40);
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  v7 = *v6;
  if (!*v6)
  {
    goto LABEL_12;
  }

  if (v7 == 3)
  {
    goto LABEL_24;
  }

  if (v7)
  {
LABEL_12:
    v7 = kd_precinct_ref::instantiate_precinct(v6, v10, v9);
    if (!v7)
    {
LABEL_24:
      kdu_codestream::ready_for_flush();
    }
  }

  else
  {
    if (*(v7 + 20) == 1)
    {
      kd_precinct_size_class::withdraw_from_inactive_list(*(v7 + 72), v7);
    }

    else if ((*(v7 + 19) & 1) == 0)
    {
      goto LABEL_13;
    }

    kd_precinct::activate(v7);
  }

LABEL_13:
  if (*(v7 + 36))
  {
    goto LABEL_14;
  }

  if (this)
  {
    kdu_thread_entity::release_lock(this, 0);
  }

  return 1;
}

void kd_compressed_input::~kd_compressed_input(kd_compressed_input *this)
{
  *this = &unk_1EF4D2860;
}

{
  *this = &unk_1EF4D2860;
  JUMPOUT(0x186602850);
}

void kd_compressed_output::~kd_compressed_output(kd_compressed_output *this)
{
  kd_compressed_output::~kd_compressed_output(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4D2900;
  kd_compressed_output::flush_buf(this);
  *this = &unk_1EF4D25B0;
}

uint64_t kd_compressed_output::flush_buf(uint64_t this)
{
  v1 = this;
  v2 = *(this + 520);
  v3 = this + 8;
  if (v2 > this + 8)
  {
    this = (*(**(this + 536) + 40))(*(this + 536), v3, (v2 - v3));
    v2 = *(v1 + 520);
  }

  *(v1 + 544) += v2 - v3;
  *(v1 + 520) = v3;
  return this;
}

void kd_precinct_server::~kd_precinct_server(kd_precinct_size_class **this)
{
  v2 = *this;
  if (v2)
  {
    do
    {
      *this = *(v2 + 5);
      kd_precinct_size_class::~kd_precinct_size_class(v2);
      MEMORY[0x186602850]();
      v2 = *this;
    }

    while (*this);
  }
}

void kd_precinct_size_class::~kd_precinct_size_class(kd_precinct_size_class *this)
{
  for (i = *(this + 4); i; i = *(this + 4))
  {
    *(this + 4) = i[7];
    free(i);
    --*(this + 7);
  }
}

void _cg_jinit_d_coef_controller(uint64_t a1, int a2)
{
  v4 = (**(a1 + 8))();
  *(a1 + 592) = v4;
  *v4 = start_input_pass;
  v4[2] = start_output_pass;
  v4[27] = 0;
  if (a2)
  {
    if (*(a1 + 56) >= 1)
    {
      v5 = 0;
      v6 = (*(a1 + 304) + 28);
      do
      {
        v7 = *(v6 - 4);
        if (*(a1 + 316))
        {
          v8 = 3 * v7;
        }

        else
        {
          v8 = v7;
        }

        v9 = *(*(a1 + 8) + 40);
        v10 = _cg_jround_up(*v6, *(v6 - 5));
        v11 = _cg_jround_up(v6[1], *(v6 - 4));
        v4[v5++ + 17] = v9(a1, 1, 1, v10, v11, v8);
        v6 += 24;
      }

      while (v5 < *(a1 + 56));
    }

    v4[1] = consume_data;
    v4[3] = decompress_data;
    v12 = (v4 + 17);
  }

  else
  {
    v13 = (*(*(a1 + 8) + 8))(a1, 1, 1280);
    v14 = 0;
    v15 = xmmword_186205EC0;
    v16 = vdupq_n_s64(v13);
    v17 = vdupq_n_s64(2uLL);
    do
    {
      *&v4[v14 + 7] = vaddq_s64(v16, vshlq_n_s64(v15, 7uLL));
      v15 = vaddq_s64(v15, v17);
      v14 += 2;
    }

    while (v14 != 10);
    if (!*(a1 + 568))
    {
      bzero(v13, 0x500uLL);
    }

    v12 = 0;
    v4[1] = dummy_consume_data;
    v4[3] = decompress_onepass;
  }

  v4[4] = v12;
}

uint64_t start_output_pass(uint64_t result)
{
  v1 = result;
  v2 = *(result + 592);
  if (v2[4])
  {
    if (*(result + 104) && *(result + 316) && *(result + 192))
    {
      result = v2[27];
      if (!result)
      {
        result = (**(v1 + 8))(v1, 1, 24 * *(v1 + 56));
        v2[27] = result;
      }

      if (*(v1 + 56) >= 1)
      {
        v3 = 0;
        v4 = 0;
        v5 = 0;
        v6 = *(v1 + 304);
        while (1)
        {
          v7 = *(v6 + 80);
          if (!v7)
          {
            break;
          }

          if (!*v7)
          {
            break;
          }

          if (!v7[1])
          {
            break;
          }

          if (!v7[8])
          {
            break;
          }

          if (!v7[16])
          {
            break;
          }

          if (!v7[9])
          {
            break;
          }

          if (!v7[2])
          {
            break;
          }

          v8 = *(v1 + 192);
          if ((*(v8 + (v4 << 8)) & 0x80000000) != 0)
          {
            break;
          }

          v9 = v8 + v3;
          for (i = 4; i != 24; i += 4)
          {
            v11 = *(v9 + i);
            *(result + i) = v11;
            if (v11)
            {
              v5 = 1;
            }
          }

          result += 24;
          ++v4;
          v6 += 96;
          v3 += 256;
          if (v4 >= *(v1 + 56))
          {
            v12 = decompress_smooth_data;
            if (v5)
            {
              goto LABEL_24;
            }

            break;
          }
        }
      }
    }

    v12 = decompress_data;
LABEL_24:
    v2[3] = v12;
  }

  *(v1 + 184) = 0;
  return result;
}

uint64_t consume_data(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 592);
  memset(v21, 0, sizeof(v21));
  if (*(a1 + 448) >= 1)
  {
    v3 = 0;
    do
    {
      *(v21 + v3) = (*(*(a1 + 8) + 64))(a1, *&v2[2 * *(*(a1 + 8 * v3 + 456) + 4) + 34], (*(*(a1 + 8 * v3 + 456) + 12) * *(a1 + 176)), *(*(a1 + 8 * v3 + 456) + 12), 1);
      ++v3;
    }

    while (v3 < *(a1 + 448));
  }

  v4 = v2[12];
  v5 = v2[11];
  if (v5 >= v4)
  {
LABEL_20:
    v20 = *(a1 + 176) + 1;
    *(a1 + 176) = v20;
    if (v20 >= *(a1 + 432))
    {
      (*(*(a1 + 608) + 24))(a1);
      return 4;
    }

    else
    {
      start_iMCU_row(a1);
      return 3;
    }
  }

  else
  {
    v6 = v2[10];
    v7 = *(a1 + 488);
    while (v6 >= v7)
    {
LABEL_19:
      v6 = 0;
      v2[10] = 0;
      if (++v5 >= v4)
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      v8 = *(a1 + 448);
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = *(a1 + 456 + 8 * v9);
          v12 = *(v11 + 60);
          if (v12 >= 1)
          {
            v13 = 0;
            v14 = *(v11 + 56);
            v15 = *(v21 + v9) + 8 * v5;
            do
            {
              if (v14 >= 1)
              {
                v16 = *(v15 + 8 * v13) + ((v14 * v6) << 7);
                v17 = &v2[2 * v10 + 14];
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

      result = (*(*(a1 + 624) + 8))(a1, v2 + 14);
      if (!result)
      {
        break;
      }

      ++v6;
      v7 = *(a1 + 488);
      if (v6 >= v7)
      {
        v4 = v2[12];
        goto LABEL_19;
      }
    }

    v2[10] = v6;
    v2[11] = v5;
  }

  return result;
}

uint64_t decompress_data(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 592);
  v20 = *(a1 + 432) - 1;
  while (1)
  {
    v4 = *(a1 + 172);
    v5 = *(a1 + 180);
    if (v4 >= v5 && (v4 != v5 || *(a1 + 176) > *(a1 + 184)))
    {
      break;
    }

    result = (**(a1 + 608))(a1);
    if (!result)
    {
      return result;
    }
  }

  if (*(a1 + 56) >= 1)
  {
    v21 = 0;
    v7 = *(a1 + 304);
    v19 = v3 + 136;
    do
    {
      if (v7[13])
      {
        v8 = (*(*(a1 + 8) + 64))(a1, *(v19 + 8 * v21), (v7[3] * *(a1 + 184)), v7[3], 0);
        if (*(a1 + 184) >= v20)
        {
          v9 = v7[8] == (v7[8] / v7[3]) * v7[3] ? v7[3] : v7[8] - (v7[8] / v7[3]) * v7[3];
        }

        else
        {
          v9 = v7[3];
        }

        if (v9 >= 1)
        {
          v10 = 0;
          v11 = *(*(a1 + 632) + 8 * v21 + 8);
          v12 = *(a2 + 8 * v21);
          v13 = v7[7];
          do
          {
            if (v13)
            {
              v14 = 0;
              v15 = 0;
              v16 = *(v8 + 8 * v10);
              do
              {
                v11(a1, v7, v16, v12, v14);
                v16 += 128;
                v14 = (v7[9] + v14);
                ++v15;
                v13 = v7[7];
              }

              while (v15 < v13);
            }

            v12 += 8 * v7[10];
            ++v10;
          }

          while (v10 != v9);
        }
      }

      v7 += 24;
      ++v21;
    }

    while (v21 < *(a1 + 56));
  }

  v17 = *(a1 + 184) + 1;
  *(a1 + 184) = v17;
  if (v17 < *(a1 + 432))
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t decompress_onepass(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 592);
  v4 = *(a1 + 432);
  v5 = v3[12];
  v36 = v3[11];
  if (v36 < v5)
  {
    v34 = *(a1 + 488) - 1;
    v39 = v4 - 1;
    v6 = (v3 + 14);
    v7 = a1 + 456;
    v8 = v3[10];
    v30 = *(a1 + 592);
    v31 = a1 + 456;
    while (1)
    {
      if (v8 > v34)
      {
        goto LABEL_33;
      }

      do
      {
        if (*(a1 + 568))
        {
          bzero(*v6, *(a1 + 496) << 7);
        }

        result = (*(*(a1 + 624) + 8))(a1, v6);
        if (!result)
        {
          v30[10] = v8;
          v30[11] = v36;
          return result;
        }

        v10 = *(a1 + 448);
        if (v10 >= 1)
        {
          v11 = 0;
          v12 = 0;
          v33 = v8;
          while (1)
          {
            v13 = *(v7 + 8 * v11);
            if (v13[13])
            {
              break;
            }

            v12 += v13[16];
LABEL_30:
            if (++v11 >= v10)
            {
              goto LABEL_31;
            }
          }

          v14 = v13[15];
          if (v14 < 1)
          {
            goto LABEL_30;
          }

          v35 = v11;
          v15 = 0;
          v16 = v13[1];
          v17 = *(*(a1 + 632) + 8 * v16 + 8);
          v18 = 18;
          if (v8 < v34)
          {
            v18 = 14;
          }

          v19 = v13[v18];
          v38 = v13[17] * v8;
          v20 = v13[10];
          v21 = *(a2 + 8 * v16) + 8 * v20 * v36;
          v40 = v19;
          if (v19 <= 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = v19;
          }

          v37 = v22;
          while (2)
          {
            if (*(a1 + 176) >= v39)
            {
              if (v15 + v36 < v13[19] && v40 >= 1)
              {
                goto LABEL_24;
              }
            }

            else
            {
              if (v40 < 1)
              {
                goto LABEL_27;
              }

LABEL_24:
              v24 = v6;
              v25 = &v6[v12];
              v26 = v37;
              v27 = v38;
              do
              {
                v28 = *v25++;
                v17(a1, v13, v28, v21, v27);
                v27 = (v13[9] + v27);
                --v26;
              }

              while (v26);
              v20 = v13[10];
              v14 = v13[15];
              v6 = v24;
            }

LABEL_27:
            v12 += v13[14];
            v21 += 8 * v20;
            if (++v15 >= v14)
            {
              v10 = *(a1 + 448);
              v7 = v31;
              v8 = v33;
              v11 = v35;
              goto LABEL_30;
            }

            continue;
          }
        }

LABEL_31:
        ++v8;
      }

      while (v8 <= v34);
      v3 = v30;
      v5 = v30[12];
LABEL_33:
      v8 = 0;
      v3[10] = 0;
      if (++v36 >= v5)
      {
        v4 = *(a1 + 432);
        break;
      }
    }
  }

  ++*(a1 + 184);
  v29 = *(a1 + 176) + 1;
  *(a1 + 176) = v29;
  if (v29 >= v4)
  {
    (*(*(a1 + 608) + 24))(a1);
    return 4;
  }

  else
  {
    start_iMCU_row(a1);
    return 3;
  }
}

uint64_t start_iMCU_row(uint64_t result)
{
  v1 = *(result + 592);
  if (*(result + 448) < 2)
  {
    v3 = *(result + 456);
    if (*(result + 176) >= (*(result + 432) - 1))
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

  *(v1 + 48) = v2;
  *(v1 + 40) = 0;
  return result;
}

uint64_t decompress_smooth_data(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v110 = *MEMORY[0x1E69E9840];
  v69 = *(a1 + 592);
  v76 = *(a1 + 432) - 1;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  __dst = 0u;
  v103 = 0u;
  while (1)
  {
    v3 = *(v2 + 172);
    v4 = *(v2 + 180);
    if (v3 > v4)
    {
      break;
    }

    v5 = *(v2 + 608);
    if (*(v5 + 36))
    {
      break;
    }

    if (v3 == v4)
    {
      v6 = *(v2 + 184);
      if (!*(v2 + 540))
      {
        ++v6;
      }

      if (*(v2 + 176) > v6)
      {
        break;
      }
    }

    result = (*v5)(v2);
    if (!result)
    {
      return result;
    }
  }

  if (*(v2 + 56) >= 1)
  {
    v8 = *(v2 + 304);
    v70 = v69 + 136;
    v71 = 0;
    v89 = v2;
    while (!*(v8 + 52))
    {
LABEL_116:
      v8 += 96;
      if (++v71 >= *(v2 + 56))
      {
        goto LABEL_117;
      }
    }

    v9 = *(v2 + 184);
    if (v9 < v76)
    {
      v10 = *(v8 + 12);
      v13 = 2 * v10;
      LODWORD(v12) = v10;
      if (v9)
      {
LABEL_18:
        v75 = (*(*(v2 + 8) + 64))(v2, *(v70 + 8 * v71), v10 * (v9 - 1), v10 + v13, 0) + 8 * *(v8 + 12);
        goto LABEL_21;
      }
    }

    else
    {
      v10 = *(v8 + 12);
      v11 = *(v8 + 32) % v10;
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }

      v13 = v12;
      if (v9)
      {
        goto LABEL_18;
      }
    }

    v75 = (*(*(v2 + 8) + 64))(v2, *(v70 + 8 * v71), 0, v13, 0);
LABEL_21:
    v72 = (v12 - 1);
    if (v12 >= 1)
    {
      v14 = 0;
      v95 = *(a2 + 8 * v71);
      v93 = *(*(v2 + 632) + 8 * v71 + 8);
      v15 = *(v8 + 80);
      v16 = v15[2];
      v17 = v15[9];
      v18 = v15[16];
      v19 = v15[8];
      v20 = v15[1];
      LODWORD(v15) = *v15;
      v92 = 9 * v15;
      v91 = 36 * v15;
      v87 = v20 << 8;
      v88 = v20 << 7;
      v85 = v19 << 8;
      v86 = v19 << 7;
      v83 = v18 << 8;
      v84 = v18 << 7;
      v81 = v17 << 7;
      v82 = 5 * v15;
      v79 = v16 << 7;
      v80 = v17 << 8;
      v78 = v16 << 8;
      v73 = v12;
      v94 = v8;
      v74 = v9;
      v90 = (*(v69 + 216) + 24 * v71);
      do
      {
        v21 = *(v75 + 8 * v14);
        v22 = v75 + 8 * v14;
        v23 = v21;
        if (v9 | v14)
        {
          v23 = *(v22 - 8);
        }

        if (v9 < v76 || (v24 = *(v75 + 8 * v14), v14 != v72))
        {
          v24 = *(v22 + 8);
        }

        v77 = v14;
        v25 = 0;
        v26 = 0;
        v29 = *v23;
        v27 = v23 + 64;
        v28 = v29;
        v32 = *v24;
        v30 = v24 + 64;
        v31 = v32;
        v33 = *(v8 + 28) - 1;
        v34 = v32;
        v99 = *v21;
        v101 = v99;
        v98 = v28;
        v100 = v28;
        do
        {
          v97 = v100;
          v35 = v101;
          v100 = v98;
          v101 = v99;
          v96 = v34;
          v34 = v31;
          _cg_jcopy_block_row(v21, &__dst, 1u);
          if (v26 < v33)
          {
            v98 = *v27;
            v99 = v21[64];
            v31 = *v30;
          }

          v36 = v90[1];
          if (v36)
          {
            v37 = WORD1(__dst) == 0;
          }

          else
          {
            v37 = 0;
          }

          if (v37)
          {
            v38 = v91 * (v35 - v99);
            v39 = (v88 - v38) / v87;
            if (1 << v36 <= v39)
            {
              v40 = (1 << v36) - 1;
            }

            else
            {
              v40 = (v88 - v38) / v87;
            }

            if (v36 > 0)
            {
              LODWORD(v39) = v40;
            }

            if (1 << v36 <= ((v38 + v88) / v87))
            {
              v41 = (1 << v36) - 1;
            }

            else
            {
              LOWORD(v41) = (v38 + v88) / v87;
            }

            if (v36 >= 1)
            {
              LOWORD(v42) = v41;
            }

            else
            {
              LOWORD(v42) = (v38 + v88) / v87;
            }

            if (v38 < 0)
            {
              v42 = -v39;
            }

            WORD1(__dst) = v42;
          }

          v43 = v90[2];
          if (v43 && !v103)
          {
            v44 = v91 * (v100 - v34);
            v45 = (v86 - v44) / v85;
            if (1 << v43 <= v45)
            {
              v46 = (1 << v43) - 1;
            }

            else
            {
              v46 = (v86 - v44) / v85;
            }

            if (v43 > 0)
            {
              LODWORD(v45) = v46;
            }

            if (1 << v43 <= ((v44 + v86) / v85))
            {
              v47 = (1 << v43) - 1;
            }

            else
            {
              LOWORD(v47) = (v44 + v86) / v85;
            }

            if (v43 >= 1)
            {
              LOWORD(v48) = v47;
            }

            else
            {
              LOWORD(v48) = (v44 + v86) / v85;
            }

            if (v44 < 0)
            {
              v48 = -v45;
            }

            LOWORD(v103) = v48;
          }

          v49 = v90[3];
          if (v49 && !v104)
          {
            v50 = v92 * (v100 - 2 * v101 + v34);
            v51 = (v84 - v50) / v83;
            if (1 << v49 <= v51)
            {
              v52 = (1 << v49) - 1;
            }

            else
            {
              v52 = (v84 - v50) / v83;
            }

            if (v49 > 0)
            {
              LODWORD(v51) = v52;
            }

            if (1 << v49 <= ((v50 + v84) / v83))
            {
              v53 = (1 << v49) - 1;
            }

            else
            {
              LOWORD(v53) = (v50 + v84) / v83;
            }

            if (v49 >= 1)
            {
              LOWORD(v54) = v53;
            }

            else
            {
              LOWORD(v54) = (v50 + v84) / v83;
            }

            if (v50 < 0)
            {
              v54 = -v51;
            }

            LOWORD(v104) = v54;
          }

          v55 = v90[4];
          if (v55 && !WORD1(v103))
          {
            v56 = v82 * (v97 - (v96 + v98) + v31);
            v57 = (v81 - v56) / v80;
            if (1 << v55 <= v57)
            {
              v58 = (1 << v55) - 1;
            }

            else
            {
              v58 = (v81 - v56) / v80;
            }

            if (v55 > 0)
            {
              LODWORD(v57) = v58;
            }

            if (1 << v55 <= ((v56 + v81) / v80))
            {
              v59 = (1 << v55) - 1;
            }

            else
            {
              LOWORD(v59) = (v56 + v81) / v80;
            }

            if (v55 >= 1)
            {
              LOWORD(v60) = v59;
            }

            else
            {
              LOWORD(v60) = (v56 + v81) / v80;
            }

            if (v56 < 0)
            {
              v60 = -v57;
            }

            WORD1(v103) = v60;
          }

          v61 = v90[5];
          if (v61 && !WORD2(__dst))
          {
            v62 = v92 * (v35 - 2 * v101 + v99);
            v63 = (v79 - v62) / v78;
            if (1 << v61 <= v63)
            {
              v64 = (1 << v61) - 1;
            }

            else
            {
              v64 = (v79 - v62) / v78;
            }

            if (v61 > 0)
            {
              LODWORD(v63) = v64;
            }

            if (1 << v61 <= ((v62 + v79) / v78))
            {
              v65 = (1 << v61) - 1;
            }

            else
            {
              LOWORD(v65) = (v62 + v79) / v78;
            }

            if (v61 >= 1)
            {
              LOWORD(v66) = v65;
            }

            else
            {
              LOWORD(v66) = (v62 + v79) / v78;
            }

            if (v62 < 0)
            {
              v66 = -v63;
            }

            WORD2(__dst) = v66;
          }

          v2 = v89;
          v93(v89, v94, &__dst, v95, v25);
          v21 += 64;
          v25 = (*(v94 + 36) + v25);
          ++v26;
          v30 += 64;
          v27 += 64;
        }

        while (v26 <= v33);
        v8 = v94;
        v95 += 8 * *(v94 + 40);
        v14 = v77 + 1;
        v9 = v74;
      }

      while (v77 + 1 != v73);
    }

    goto LABEL_116;
  }

LABEL_117:
  v67 = *(v2 + 184) + 1;
  *(v2 + 184) = v67;
  if (v67 < *(v2 + 432))
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t kdu_kernels::clear(uint64_t this)
{
  *this = -1;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 32) = _D0;
  *(this + 48) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 120) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 144) = 0xFFFFFFFF00000004;
  v6 = (this + 416);
  *(this + 152) = 0;
  *(this + 160) = 0;
  v7 = 15;
  do
  {
    *(v6 - 62) = -1;
    *(v6 - 30) = 0;
    *(v6 - 2) = -1;
    *v6 = 0;
    v6 += 2;
    --v7;
  }

  while (v7);
  return this;
}

uint64_t kdu_kernels::reset(kdu_kernels *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x1000C80451B5BE8);
  }

  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8052888210);
  }

  v4 = *(this + 7);
  if (v4)
  {
    MEMORY[0x186602830](v4 - 4 * *(this + 10), 0x1000C8052888210);
  }

  v5 = *(this + 10);
  if (v5)
  {
    MEMORY[0x186602830](v5 - 4 * *(this + 16), 0x1000C8052888210);
  }

  v6 = *(this + 13);
  if (v6)
  {
    MEMORY[0x186602830](v6 - 4 * *(this + 22), 0x1000C8052888210);
  }

  v7 = *(this + 16);
  if (v7)
  {
    MEMORY[0x186602830](v7 - 4 * *(this + 28), 0x1000C8052888210);
  }

  v8 = *(this + 19);
  if (v8)
  {
    MEMORY[0x186602830](v8 - 4 * *(this + 37), 0x1000C8052888210);
  }

  v9 = *(this + 20);
  if (v9)
  {
    MEMORY[0x186602830](v9 - 4 * *(this + 37), 0x1000C8052888210);
  }

  v10 = *(this + 17);
  if (v10)
  {
    MEMORY[0x186602830](v10, 0x1000C8000313F17);
  }

  return kdu_kernels::clear(this);
}

uint64_t kdu_kernels::enlarge_work_buffers(uint64_t this, int a2)
{
  if (*(this + 148) < a2)
  {
    operator new[]();
  }

  return this;
}

uint64_t kdu_kernels::expand_and_convolve(kdu_kernels *this, float **a2, int a3, float *a4, int a5, float **a6)
{
  v12 = (a5 + 2 * a3);
  kdu_kernels::enlarge_work_buffers(this, a5 + 2 * a3);
  v13 = *a2;
  v14 = *a6;
  v15 = *(this + 19);
  if (v13 != v15 && v13 != *(this + 20))
  {
    kdu_kernels::expand_and_convolve();
  }

  if (v14 != v15 && v14 != *(this + 20))
  {
    kdu_kernels::expand_and_convolve();
  }

  if (v12 > *(this + 37))
  {
    kdu_kernels::expand_and_convolve();
  }

  if ((v12 & 0x80000000) == 0)
  {
    bzero((v14 + 4 * -v12), 4 * (v12 + a5 + 2 * a3) + 4);
  }

  if ((a3 & 0x80000000) == 0)
  {
    v16 = -a3;
    v17 = -a5;
    v18 = &a4[v17];
    v19 = (v14 + v17 * 4 - 8 * a3);
    do
    {
      if ((a5 & 0x80000000) == 0)
      {
        v20 = *(v13 + 4 * v16);
        v21 = (2 * a5) | 1;
        v22 = v19;
        v23 = v18;
        do
        {
          v24 = *v23++;
          *v22 = *v22 + (v20 * v24);
          ++v22;
          --v21;
        }

        while (v21);
      }

      ++v16;
      v19 += 2;
    }

    while (a3 + 1 != v16);
  }

  return v12;
}

void kdu_kernels::init(kdu_kernels *this, int a2, char a3)
{
  kdu_kernels::reset(this);
  *this = a2;
  *(this + 4) = a3;
  *(this + 5) = 257;
  if (a2)
  {
    if (a2 == 1)
    {
      *(this + 1) = 0x200000002;
      operator new[]();
    }

    v7 = 0;
    memset(v6, 0, sizeof(v6));
    kdu_error::kdu_error(v6, "Kakadu Core Error:\n");
    kdu_error::~kdu_error(v6);
  }

  *(this + 1) = 0x200000004;
  operator new[]();
}

void kdu_kernels::init(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  kdu_kernels::reset(a1);
  *a1 = -1;
  *(a1 + 4) = a7;
  *(a1 + 5) = a5;
  *(a1 + 6) = a6;
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  operator new[]();
}

uint64_t kdu_kernels::get_impulse_response(_DWORD *a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      if (a4)
      {
        *a4 = a1[11];
      }

      v5 = 14;
      v6 = 10;
      if (a5)
      {
        v7 = 12;
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (a2 == 1)
    {
      if (a4)
      {
        *a4 = a1[17];
      }

      v5 = 20;
      v6 = 16;
      if (a5)
      {
        v7 = 18;
LABEL_22:
        *a5 = a1[v7];
        goto LABEL_23;
      }

      goto LABEL_23;
    }

LABEL_24:
    kdu_kernels::get_impulse_response();
  }

  if (a2 == 2)
  {
    if (a4)
    {
      *a4 = a1[23];
    }

    v5 = 26;
    v6 = 22;
    if (a5)
    {
      v7 = 24;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (a2 != 3)
  {
    goto LABEL_24;
  }

  if (a4)
  {
    *a4 = a1[29];
  }

  v5 = 32;
  v6 = 28;
  if (a5)
  {
    v7 = 30;
    goto LABEL_22;
  }

LABEL_23:
  *a3 = a1[v6];
  return *&a1[v5];
}

double kdu_kernels::get_energy_gain(kdu_kernels *this, int a2, unsigned int a3, BOOL *a4)
{
  if (a3 >= 4)
  {
    kdu_kernels::get_energy_gain();
  }

  v4 = a2;
  v6 = ~(-1 << a3);
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (a4[i])
      {
        v8 = 1 << i;
      }

      else
      {
        v8 = 0;
      }

      v6 += v8;
    }
  }

  v9 = *(this + 36);
  v10 = 1.0;
  if (v9 < a2)
  {
    do
    {
      --v4;
      v10 = v10 + v10;
    }

    while (v4 > v9);
    v4 = *(this + 36);
  }

  v11 = (this + 16 * v6);
  if (v6 <= 14 && *(v11 + 42) == v4)
  {
    v12 = v11[22];
  }

  else
  {
    v28 = this + 16 * v6;
    v13 = (this + 152);
    v14 = (this + 160);
    **(this + 19) = 1065353216;
    v15 = 0;
    if (a3)
    {
      v16 = a3 + 1;
      v17 = &a4[a3 - 1];
      v18 = (this + 152);
      do
      {
        v13 = v14;
        v19 = *v17--;
        v20 = 104;
        if (v19)
        {
          v20 = 128;
          v21 = 112;
        }

        else
        {
          v21 = 88;
        }

        v15 = kdu_kernels::expand_and_convolve(this, v18, v15, *(this + v20), *(this + v21), v13);
        --v16;
        v14 = v18;
        v18 = v13;
      }

      while (v16 > 1);
    }

    if (v4 < 1)
    {
      v23 = v13;
    }

    else
    {
      v22 = v4 + 1;
      do
      {
        v23 = v14;
        v15 = kdu_kernels::expand_and_convolve(this, v13, v15, *(this + 13), *(this + 22), v14);
        --v22;
        v14 = v13;
        v13 = v23;
      }

      while (v22 > 1);
    }

    if (v15 > *(this + 37))
    {
      kdu_kernels::get_energy_gain();
    }

    if (v15 < 0)
    {
      v12 = 0.0;
    }

    else
    {
      v24 = &(*v23)[-v15];
      v25 = (2 * v15) | 1;
      v12 = 0.0;
      do
      {
        v26 = *v24++;
        v12 = v12 + v26 * v26;
        --v25;
      }

      while (v25);
    }

    if (v6 <= 14 && *(v28 + 42) < v4)
    {
      *(v28 + 42) = v4;
      *(v28 + 22) = v12;
    }
  }

  return v10 * v12;
}

double kdu_kernels::get_bibo_gain(kdu_kernels *this, int a2, unsigned int a3, BOOL *a4)
{
  if (a3 >= 4)
  {
    kdu_kernels::get_bibo_gain();
  }

  v5 = ~(-1 << a3);
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (a4[i])
      {
        v7 = 1 << i;
      }

      else
      {
        v7 = 0;
      }

      v5 += v7;
    }

    v8 = this + 16 * v5 + 408;
    if (*(this + 36) >= a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = *(this + 36);
    }

    if (v5 > 14)
    {
      v10 = 0;
      v11 = 1;
      goto LABEL_20;
    }

    v10 = (this + 16 * v5 + 408);
  }

  else
  {
    v10 = (this + 16 * v5 + 408);
    if (*(this + 36) >= a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = *(this + 36);
    }
  }

  if (*v10 == v9)
  {
    return v10[1];
  }

  v11 = 0;
  v8 = v10;
LABEL_20:
  v15 = 0.0;
  v16 = 0.0;
  if (a3)
  {
    v13 = a3 - 1;
    kdu_kernels::get_bibo_gains(this, v9, a3 - 1, a4, &v16, &v15);
    if (a4[v13])
    {
      result = v15;
      if ((v11 & 1) == 0)
      {
        if (*v10 < v9)
        {
          *v10 = v9;
          v10[1] = result;
        }

        v8 = &v10[-2 * (1 << v13)];
        if (*v8 < v9)
        {
          *v8 = v9;
          v14 = v16;
LABEL_36:
          *(v8 + 1) = v14;
          return result;
        }

        if (*v8 == v9 && *(v8 + 1) != v16)
        {
          kdu_kernels::get_bibo_gain();
        }
      }
    }

    else
    {
      result = v16;
      if ((v11 & 1) == 0)
      {
        if (*v10 < v9)
        {
          *v10 = v9;
          v10[1] = result;
        }

        v8 = &v10[2 * (1 << v13)];
        if (*v8 < v9)
        {
          *v8 = v9;
          v14 = v15;
          goto LABEL_36;
        }

        if (*v8 == v9 && *(v8 + 1) != v15)
        {
          kdu_kernels::get_bibo_gain();
        }
      }
    }
  }

  else if (v9 < 1)
  {
    return 1.0;
  }

  else
  {
    kdu_kernels::get_bibo_gains(this, v9 - 1, 0, 0, &v16, &v15);
    if (v5)
    {
      kdu_kernels::get_bibo_gain();
    }

    v14 = v16;
    if (*v8 < v9)
    {
      *v8 = v9;
      result = v14;
      goto LABEL_36;
    }

    return v16;
  }

  return result;
}

uint64_t kdu_kernels::get_bibo_gains(kdu_kernels *this, int a2, int a3, BOOL *a4, double *a5, double *a6)
{
  if (*(this + 36) >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = *(this + 36);
  }

  kdu_kernels::enlarge_work_buffers(this, 1);
  v11 = *(this + 19);
  v12 = *(this + 20);
  *v11 = 1065353216;
  *a6 = 1.0;
  *a5 = 1.0;
  if (v10 + a3 >= 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v92 = ~v10;
    v94 = (v10 + a3 + 1);
    v95 = v10;
    v18 = 1.0;
    v19 = 1;
    do
    {
      if (v13 > v95 && a4[v13 + v92])
      {
        if (v16 <= v15)
        {
          v20 = (v12 + 4 * v16);
          v21 = &v11[v16];
          v22 = v15 - v16 + 1;
          do
          {
            v23 = *v20++;
            *v21++ = v23;
            --v22;
          }

          while (v22);
        }

        *a5 = *a6;
        v17 = v15;
        v14 = v16;
      }

      else
      {
        if (v14 <= v17)
        {
          v24 = &v11[v14];
          v25 = (v12 + 4 * v14);
          v26 = v17 - v14 + 1;
          do
          {
            v27 = *v24++;
            *v25++ = v27;
            --v26;
          }

          while (v26);
        }

        *a6 = v18;
      }

      v96 = v13;
      if ((v14 + v17 < 0) ^ __OFADD__(v14, v17) | (v14 + v17 == 0))
      {
        v28 = -v14;
      }

      else
      {
        v28 = v17;
      }

      v29 = *(this + 2);
      v30 = v28 + *(this + 3) * v19 * v29;
      if (v30 > *(this + 37))
      {
        kdu_kernels::enlarge_work_buffers(this, v30);
        v11 = *(this + 19);
        v12 = *(this + 20);
        v29 = *(this + 2);
      }

      if (v29 < 1)
      {
        v16 = v14;
        v15 = v17;
      }

      else
      {
        v31 = 0;
        v32 = 4 * v19;
        v33 = 8 * v19;
        v15 = v17;
        v16 = v14;
        do
        {
          if (v14 <= v17)
          {
            v34 = *(this + 3);
            v35 = (*(this + 2) + 16 * v31);
            v36 = *v35;
            v37 = v35[1];
            v38 = v14 + (2 * v37 - 1) * v19;
            if (v38 < v16)
            {
              v39 = *(this + 37);
              v16 = v16;
              do
              {
                v40 = v16 - 1;
                if (v16 - 1 < 0)
                {
                  v40 = 1 - v16;
                }

                if (v40 > v39)
                {
                  goto LABEL_90;
                }

                v41 = v16 - 1;
                *(v12 - 4 + 4 * v16) = 0;
                v16 = v41;
              }

              while (v41 > v38);
              v16 = v41;
            }

            v42 = v37 + v36 - 1;
            v43 = v17 + (2 * v42 - 1) * v19;
            if (v43 > v15)
            {
              v44 = *(this + 37);
              v45 = v15 - v43;
              v46 = v15 + 1;
              v47 = (v12 + 4 + 4 * v15);
              do
              {
                if (v46 >= 0)
                {
                  v48 = v46;
                }

                else
                {
                  v48 = -v46;
                }

                if (v48 > v44)
                {
                  goto LABEL_90;
                }

                *v47++ = 0;
                ++v46;
                v49 = __CFADD__(v45++, 1);
              }

              while (!v49);
              v15 = (v17 + (2 * v42 - 1) * v19);
            }

            if (v37 <= v42)
            {
              v50 = (v34 + 4 * v31);
              v51 = v36 + v37;
              v52 = (v12 + v32 * (2 * v37 - 1) + 4 * v14);
              do
              {
                v53 = v17 - v14 + 1;
                v54 = &v11[v14];
                v55 = v52;
                do
                {
                  v56 = *v54++;
                  *v55 = *v55 + (v56 * *v50);
                  ++v55;
                  --v53;
                }

                while (v53);
                ++v37;
                v50 += v29;
                v52 = (v52 + v33);
              }

              while (v51 != v37);
            }

            *a6 = 0.0;
            v57 = 0.0;
            if (v16 <= v15)
            {
              v58 = (v12 + 4 * v16);
              v59 = ~v15 + v16;
              do
              {
                v60 = *v58++;
                v57 = v57 + fabsf(v60);
                v49 = __CFADD__(v59++, 1);
              }

              while (!v49);
              *a6 = v57;
            }

            *(*(this + 17) + 8 * v31) = v57;
          }

          if (v16 <= v15)
          {
            v61 = v31 | 1;
            if ((v31 | 1uLL) < v29)
            {
              v62 = *(this + 3);
              v63 = (*(this + 2) + 16 * v61);
              v64 = *v63;
              v65 = v63[1];
              v66 = v16 + ((2 * v65) | 1) * v19;
              if (v66 < v14)
              {
                v67 = v14;
                while (1)
                {
                  v68 = v67 >= 0 ? v67 : -v67;
                  if (v68 >= v30)
                  {
                    break;
                  }

                  v14 = v67 - 1;
                  v11[v67 - 1] = 0;
                  v67 = v14;
                  if (v14 <= v66)
                  {
                    goto LABEL_60;
                  }
                }

LABEL_90:
                exception = __cxa_allocate_exception(4uLL);
                *exception = -1;
                __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
              }

LABEL_60:
              v69 = v65 + v64 - 1;
              v70 = v15 + ((2 * v69) | 1) * v19;
              if (v70 > v17)
              {
                v71 = *(this + 37);
                if (v17 > v71)
                {
                  v71 = v17;
                }

                v72 = v71 - v17;
                v73 = v17 - v70;
                v74 = &v11[v17 + 1];
                do
                {
                  if (!v72)
                  {
                    goto LABEL_90;
                  }

                  *v74++ = 0;
                  --v72;
                  v49 = __CFADD__(v73++, 1);
                }

                while (!v49);
                v17 = v15 + ((2 * v69) | 1) * v19;
              }

              if (v65 <= v69)
              {
                v75 = (v62 + 4 * v61);
                v76 = v64 + v65;
                v77 = (&v11[v16] + v32 * ((2 * v65) | 1));
                do
                {
                  v78 = v15 - v16 + 1;
                  v79 = (v12 + 4 * v16);
                  v80 = v77;
                  do
                  {
                    v81 = *v79++;
                    *v80 = *v80 + (v81 * *v75);
                    ++v80;
                    --v78;
                  }

                  while (v78);
                  ++v65;
                  v75 += v29;
                  v77 = (v77 + v33);
                }

                while (v76 != v65);
              }

              *a5 = 0.0;
              v82 = 0.0;
              if (v14 <= v17)
              {
                v83 = &v11[v14];
                v84 = ~v17 + v14;
                do
                {
                  v85 = *v83++;
                  v82 = v82 + fabsf(v85);
                  v49 = __CFADD__(v84++, 1);
                }

                while (!v49);
                *a5 = v82;
              }

              *(*(this + 17) + 8 * v61) = v82;
            }
          }

          v31 += 2;
        }

        while (v29 > v31);
      }

      if (v16 <= v15)
      {
        v86 = (v12 + 4 * v16);
        v87 = v15 - v16 + 1;
        do
        {
          *v86 = *(this + 9) * *v86;
          ++v86;
          --v87;
        }

        while (v87);
      }

      *a6 = *a6 * *(this + 9);
      if (v14 <= v17)
      {
        v88 = &v11[v14];
        v89 = v17 - v14 + 1;
        do
        {
          *v88 = *(this + 8) * *v88;
          ++v88;
          --v89;
        }

        while (v89);
      }

      v18 = *a5 * *(this + 8);
      *a5 = v18;
      v13 = v96 + 1;
      v19 *= 2;
    }

    while (v96 + 1 != v94);
  }

  return *(this + 17);
}

float32x4_t *_cg_jpeg_fdct_float(float32x4_t *result, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v4 = a3;
  do
  {
    f32 = result[v3].f32;
    v6 = (*(a2 + v3 * 4) + v4);
    v7 = *v6;
    v8 = v6[7];
    v9 = v8 + v7;
    v10 = v7 - v8;
    v11 = v6[1];
    v12 = v6[6];
    v13 = v12 + v11;
    v14 = v6[2];
    v15 = v11 - v12;
    v16 = v6[5];
    v17 = v16 + v14;
    v18 = v14 - v16;
    v19 = v6[3];
    LODWORD(v6) = v6[4];
    v20 = v6 + v19 + v9;
    v21 = v9 - (v6 + v19);
    v22 = v10;
    LODWORD(v6) = v19 - v6 + v18;
    v23 = (v13 - v17 + v21) * 0.70711;
    v24 = v15 + v10;
    v25 = v23 + v21;
    v26 = v21 - v23;
    v27 = (v6 - v24) * 0.38268;
    v28 = v27 + (v6 * 0.5412);
    v29 = v27 + (v24 * 1.3066);
    v30 = (v18 + v15) * 0.70711;
    v31 = v30 + v22;
    v32 = v22 - v30;
    *f32 = (v20 + v17 + v13 - 1024);
    f32[1] = v31 + v29;
    f32[4] = (v20 - (v17 + v13));
    f32[5] = v32 + v28;
    f32[2] = v25;
    f32[3] = v32 - v28;
    f32[6] = v26;
    f32[7] = v31 - v29;
    v3 += 2;
  }

  while (v3 != 16);
  v33 = result + 8;
  v34 = 8;
  v35 = vdupq_n_s32(0x3F3504F3u);
  v36 = vdupq_n_s32(0x3EC3EF15u);
  v37 = vdupq_n_s32(0x3F0A8BD4u);
  v38 = vdupq_n_s32(0x3FA73D75u);
  do
  {
    v39 = v33[-8];
    v40 = v33[6];
    v41 = vaddq_f32(v39, v40);
    v42 = vsubq_f32(v39, v40);
    v43 = v33[-6];
    v44 = v33[4];
    v45 = vaddq_f32(v43, v44);
    v46 = vsubq_f32(v43, v44);
    v47 = v33[-4];
    v48 = v33[2];
    v49 = vaddq_f32(v47, v48);
    v50 = vsubq_f32(v47, v48);
    v51 = v33[-2];
    v52 = vaddq_f32(v51, *v33);
    v53 = vsubq_f32(v51, *v33);
    v54 = vaddq_f32(v41, v52);
    v55 = vsubq_f32(v41, v52);
    v56 = vaddq_f32(v45, v49);
    v33[-8] = vaddq_f32(v56, v54);
    *v33 = vsubq_f32(v54, v56);
    v57 = vmulq_f32(vaddq_f32(vsubq_f32(v45, v49), v55), v35);
    v33[-4] = vaddq_f32(v55, v57);
    v33[4] = vsubq_f32(v55, v57);
    v58 = vaddq_f32(v50, v53);
    v59 = vaddq_f32(v46, v50);
    v60 = vaddq_f32(v42, v46);
    v61 = vmulq_f32(vsubq_f32(v58, v60), v36);
    v62 = vmlaq_f32(v61, v37, v58);
    v63 = vmlaq_f32(v61, v38, v60);
    v64 = vmulq_f32(v59, v35);
    v65 = vaddq_f32(v42, v64);
    v66 = vsubq_f32(v42, v64);
    v33[2] = vaddq_f32(v66, v62);
    v33[-2] = vsubq_f32(v66, v62);
    v33[-6] = vaddq_f32(v65, v63);
    v33[6] = vsubq_f32(v65, v63);
    ++v33;
    v34 -= 4;
  }

  while (v34);
  return result;
}

uint64_t jp2_family_src::open(jp2_family_src *this, kdu_compressed_source *a2)
{
  if (*(this + 1) != 0 || *(this + 4))
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v5);
  }

  if (*(this + 1))
  {
    jp2_family_src::open();
  }

  ++*(this + 18);
  result = (*(*a2 + 24))(a2);
  if ((result & 1) == 0)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v5);
  }

  *(this + 3) = a2;
  *(this + 5) = 0;
  *(this + 6) = -1;
  *(this + 7) = -1;
  *(this + 16) = -1;
  *(this + 68) = (result & 2) != 0;
  return result;
}

uint64_t jp2_family_src::close(jp2_family_src *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    fclose(v2);
  }

  *(this + 2) = 0;
  result = *(this + 1);
  if (result)
  {
    result = MEMORY[0x186602830](result, 0x1000C8077774924);
  }

  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = -1;
  *(this + 6) = -1;
  *(this + 7) = -1;
  *(this + 16) = -1;
  return result;
}

void jp2_input_box::jp2_input_box(jp2_input_box *this)
{
  *this = &unk_1EF4D2940;
  *(this + 8) = xmmword_1862067D0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = -1;
  *(this + 13) = -1;
  *(this + 14) = -1;
  *(this + 30) = -1;
  *(this + 125) = 0;
  *(this + 32) = 0;
  *(this + 136) = xmmword_1862067D0;
  *(this + 44) = 0;
}

void jp2_input_box::~jp2_input_box(jp2_input_box *this)
{
  *this = &unk_1EF4D2940;
  jp2_input_box::close(this);
  *this = &unk_1EF4D2658;
}

{
  jp2_input_box::~jp2_input_box(this);

  JUMPOUT(0x186602850);
}

uint64_t jp2_input_box::read_box_header(jp2_input_box *this, int a2)
{
  v4 = -1;
  *(this + 13) = -1;
  v5 = (this + 104);
  *(this + 12) = 0;
  *(this + 125) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 18) = -1;
  *(this + 14) = -1;
  v6 = *(this + 1);
  *(this + 124) = v6 >= 0;
  if (*(*(this + 5) + 32))
  {
    v6 = *(this + 6);
    v4 = *(this + 2);
    v7 = 4;
  }

  else
  {
    v7 = -1;
  }

  *(this + 17) = v6;
  *(this + 12) = v4;
  *(this + 30) = v7;
  *(this + 126) = 1;
  *(this + 10) = v6;
  *(this + 11) = 0x7FFFFFFFFFFFFFFFLL;
  v8 = *(this + 4);
  if (v8 && (*(v8 + 125) & 1) == 0)
  {
    *(this + 11) = *(v8 + 88);
  }

  *(this + 44) = 0;
  v9 = this + 152;
  if ((*(*this + 32))(this, this + 152, 8) < 8)
  {
    goto LABEL_8;
  }

  v11 = 0;
  v12 = 5;
  v13 = 152;
  do
  {
    v11 = *(this + v13) | (v11 << 8);
    --v12;
    ++v13;
  }

  while (v12 > 1);
  v14 = 0;
  *(this + 7) = v11;
  v15 = 5;
  v16 = 156;
  do
  {
    v14 = *(this + v16) | (v14 << 8);
    --v15;
    ++v16;
  }

  while (v15 > 1);
  *(this + 12) = v14;
  if (v14 == 1885891684)
  {
    *(this + 11) = 0x7FFFFFFFFFFFFFFFLL;
    v17 = *(this + 4);
    if (v17)
    {
      *(v17 + 88) = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v11 < 28)
    {
      *(this + 12) = 0;
      *(this + 125) = 0;
      *(this + 9) = 0;
      *(this + 7) = 0;
      *(this + 18) = -1;
      *v5 = -1;
      v5[1] = -1;
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      kdu_error::kdu_error(&v60, "Error in Kakadu File Format Support:\n");
      (*(v60 + 16))(&v60, "Illegal placeholder box encountered.  Placeholders must not use the extended length field and must have a length of at least 28 bytes!");
      kdu_error::~kdu_error(&v60);
    }

    v18 = 8;
    *(this + 8) = 8;
  }

  else
  {
    v18 = 8;
    *(this + 8) = 8;
    if (v11 == 1)
    {
      *(this + 8) = 16;
      if ((*(*this + 32))(this, this + 152, 8) < 8)
      {
        goto LABEL_8;
      }

      v11 = 0;
      v19 = 9;
      v20 = this + 152;
      do
      {
        v21 = *v20++;
        v11 = v21 | (v11 << 8);
        --v19;
      }

      while (v19 > 1);
      *(this + 7) = v11;
      v18 = *(this + 8);
    }
  }

  *(this + 125) = v11 == 0;
  v22 = v11 - v18;
  if (v11 && v22 < 0)
  {
    *(this + 12) = 0;
    *(this + 125) = 0;
    *(this + 9) = 0;
    *(this + 7) = 0;
    *(this + 18) = -1;
    *v5 = -1;
    v5[1] = -1;
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    kdu_error::kdu_error(&v60, "Error in Kakadu File Format Support:\n");
    (*(v60 + 16))(&v60, "Illegal box length field encountered in JP2 file.");
    kdu_error::~kdu_error(&v60);
  }

  *(this + 9) = v11;
  if (v11 || *(this + 12))
  {
    if (v14 != 1885891684)
    {
      v51 = *(this + 17);
      v52 = v51 + v22;
      if (v22 < 0)
      {
        v52 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *(this + 10) = v51;
      *(this + 11) = v52;
      return 1;
    }

    if ((*(*this + 32))(this, this + 152, 20) >= 20)
    {
      v23 = 0;
      v24 = *(this + 155);
      v25 = 9;
      v26 = 156;
      do
      {
        v23 = *(this + v26) | (v23 << 8);
        --v25;
        ++v26;
      }

      while (v25 > 1);
      v27 = 0;
      v28 = 5;
      v29 = 164;
      do
      {
        v27 = *(this + v29) | (v27 << 8);
        --v28;
        ++v29;
      }

      while (v28 > 1);
      v30 = 0;
      *(this + 7) = v27;
      v31 = 5;
      v32 = 168;
      do
      {
        v30 = *(this + v32) | (v30 << 8);
        --v31;
        ++v32;
      }

      while (v31 > 1);
      *(this + 12) = v30;
      v33 = 8;
      *(this + 8) = 8;
      if (v27 == 1)
      {
        *(this + 8) = 16;
        if ((*(*this + 32))(this, this + 152, 8) < 8)
        {
          goto LABEL_8;
        }

        v27 = 0;
        v34 = 9;
        v35 = this + 152;
        do
        {
          v36 = *v35++;
          v27 = v36 | (v27 << 8);
          --v34;
        }

        while (v34 > 1);
        *(this + 7) = v27;
        v33 = *(this + 8);
      }

      *(this + 125) = v27 == 0;
      v37 = v27 - v33;
      if (v27 && v37 < 0)
      {
        *(this + 12) = 0;
        *(this + 125) = 0;
        *(this + 9) = 0;
        *(this + 7) = 0;
        *(this + 18) = -1;
        *v5 = -1;
        v5[1] = -1;
        v62 = 0;
        v60 = 0u;
        v61 = 0u;
        kdu_error::kdu_error(&v60, "Error in Kakadu File Format Support:\n");
        (*(v60 + 16))(&v60, "Illegal box length field encountered in JP2 file.");
        kdu_error::~kdu_error(&v60);
      }

      if ((a2 & v24 & 1) != 0 || (v24 & 6) == 0)
      {
        *(this + 12) = v23;
        *(this + 17) = 0;
        *(this + 10) = 0;
        if ((v24 & 1) == 0)
        {
          *(this + 12) = 0;
          *(this + 11) = 0;
          return 1;
        }

        v53 = 0x7FFFFFFFFFFFFFFFLL;
        if (v37 >= 0)
        {
          v53 = v37;
        }

LABEL_80:
        *(this + 11) = v53;
        return 1;
      }

      *(this + 124) = 0;
      if ((*(*this + 32))(this, this + 152, 16) >= 16)
      {
        v38 = 0;
        v39 = 9;
        v40 = 152;
        do
        {
          v38 = *(this + v40) | (v38 << 8);
          --v39;
          ++v40;
        }

        while (v39 > 1);
        v41 = 0;
        v42 = 5;
        v43 = 160;
        do
        {
          v41 = *(this + v43) | (v41 << 8);
          --v42;
          ++v43;
        }

        while (v42 > 1);
        v44 = 0;
        v45 = 5;
        v46 = 164;
        do
        {
          v44 = *(this + v46) | (v44 << 8);
          --v45;
          ++v46;
        }

        while (v45 > 1);
        *(this + 12) = v44;
        if (v41 == 1)
        {
          if ((*(*this + 32))(this, this + 152, 8) < 8)
          {
            goto LABEL_8;
          }

          v41 = 0;
          v47 = 9;
          v48 = this + 152;
          do
          {
            v49 = *v48++;
            v41 = v49 | (v41 << 8);
            --v47;
          }

          while (v47 > 1);
          v50 = v41 - 16;
        }

        else
        {
          v50 = v41 - 8;
        }

        if ((v24 & 2) != 0)
        {
          if (v41 && (v50 & 0x8000000000000000) != 0)
          {
            *(this + 12) = 0;
            *(this + 125) = 0;
            *(this + 9) = 0;
            *(this + 7) = 0;
            *(this + 18) = -1;
            *v5 = -1;
            v5[1] = -1;
            v62 = 0;
            v60 = 0u;
            v61 = 0u;
            kdu_error::kdu_error(&v60, "Error in Kakadu File Format Support:\n");
            (*(v60 + 16))(&v60, "Illegal box length field encountered in stream equivalent box header embedded within a JP2 placeholder box.");
            kdu_error::~kdu_error(&v60);
          }
        }

        else
        {
          *(this + 12) = 0;
        }

        if ((v24 & 4) == 0)
        {
          *(this + 12) = v38;
          *(this + 17) = 0;
          v53 = 0x7FFFFFFFFFFFFFFFLL;
          if (v50 < 0x7FFFFFFFFFFFFFFFLL)
          {
            v53 = v50;
          }

          *(this + 10) = 0;
          goto LABEL_80;
        }

        if ((*(*this + 32))(this, this + 152, 8) >= 8)
        {
          v54 = 0;
          v55 = 9;
          v56 = 152;
          do
          {
            v54 = *(this + v56) | (v54 << 8);
            --v55;
            ++v56;
          }

          while (v55 > 1);
          *(this + 13) = v54;
          *(this + 14) = v54 + 1;
          if ((v24 & 8) == 0)
          {
            goto LABEL_89;
          }

          if ((*(*this + 32))(this, this + 152, 4) > 3)
          {
            v57 = 0;
            v54 = *v5;
            for (i = 5; i > 1; --i)
            {
              v59 = *v9++;
              v57 = v59 | (v57 << 8);
            }

            *(this + 14) = v54 + v57;
LABEL_89:
            *(this + 12) = 1785737827;
            *(this + 30) = 3;
            *(this + 12) = 0;
            *(this + 17) = 0;
            *(this + 18) = v54;
            *(this + 5) = xmmword_1862067E0;
            return 1;
          }
        }
      }
    }

LABEL_8:
    result = 0;
    *(this + 12) = 0;
    *(this + 125) = 0;
    *(this + 9) = 0;
    *(this + 7) = 0;
    *(this + 18) = -1;
    *v5 = -1;
    v5[1] = -1;
    return result;
  }

  return 0;
}

uint64_t jp2_input_box::open(jp2_input_box *this, uint64_t a2, __int128 *a3)
{
  if (*(this + 126) == 1)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    kdu_error::kdu_error(&v14, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v14);
  }

  *(this + 127) = 0;
  v5 = *a3;
  *(this + 6) = *(a3 + 4);
  *(this + 8) = v5;
  *(this + 4) = 0;
  *(this + 5) = a2;
  if (!*(a2 + 32) || (*(this + 2) & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v9 = *(this + 1);
  if (v9 < 0)
  {
    jp2_input_box::open();
  }

  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  if (v9)
  {
    while (1)
    {
      result = jp2_input_box::read_box_header(this, 1);
      if (!result)
      {
        break;
      }

      *(this + 126) = 0;
      v10 = *(this + 1);
      v11 = *(this + 7);
      v12 = v11 + v10;
      if (v9 >= v11 + v10)
      {
        if (v11 <= 0)
        {
          v16 = 0;
          v14 = 0u;
          v15 = 0u;
          kdu_error::kdu_error(&v14, "Error in Kakadu File Format Support:\n");
          kdu_error::~kdu_error(&v14);
        }

        *(this + 1) = v12;
        *(this + 6) += *(this + 18);
      }

      else
      {
        v12 = *(this + 8) + v10;
        if (v9 < v12)
        {
          v16 = 0;
          v14 = 0u;
          v15 = 0u;
          kdu_error::kdu_error(&v14, "Error in Kakadu File Format Support:\n");
          kdu_error::~kdu_error(&v14);
        }

        v13 = *(this + 12);
        *(this + 1) = v12;
        *(this + 2) = v13;
        *(this + 6) = *(this + 10);
        if (!*(this + 12) || (*(this + 124) & 1) == 0)
        {
          v16 = 0;
          v14 = 0u;
          v15 = 0u;
          kdu_error::kdu_error(&v14, "Error in Kakadu File Format Support:\n");
          kdu_error::~kdu_error(&v14);
        }
      }

      if (v12 == v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = jp2_input_box::read_box_header(this, 0);
    if (result)
    {
      if (!*(this + 12))
      {
        *(this + 126) = 0;
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
        kdu_error::kdu_error(&v14, "Error in Kakadu File Format Support:\n");
        kdu_error::~kdu_error(&v14);
      }

      if (*(a2 + 32) && *(this + 12) == 1785737827)
      {
        v7 = 6;
        v8 = 4;
      }

      else
      {
        v7 = 3;
        v8 = 1;
      }

      *(this + 32) = v8;
      if (*(a2 + 68) == 1)
      {
        *(this + 32) = v7;
      }

      return 1;
    }
  }

  return result;
}

uint64_t jp2_input_box::open(jp2_input_box *this, jp2_input_box *a2)
{
  if (*(this + 126) == 1)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    kdu_error::kdu_error(&v11, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(&v11);
  }

  if ((*(a2 + 127) & 1) != 0 || (*(a2 + 126) & 1) == 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    kdu_error::kdu_error(&v11, "Error in Kakadu File Format Support:\n");
    (*(v11 + 16))(&v11, "Attempting to open a sub-box of a box which is not itself open, or which has already been locked by another open sub-box which has not yet been closed.");
    kdu_error::~kdu_error(&v11);
  }

  *(this + 4) = a2;
  *(this + 5) = *(a2 + 5);
  v4 = -1;
  if (*(a2 + 124) == 1)
  {
    v4 = *(a2 + 8) + *(a2 + 1) + *(a2 + 17) - *(a2 + 10);
  }

  *(this + 1) = v4;
  while (1)
  {
    if (*(*(this + 5) + 32))
    {
      if (*(a2 + 30) != 4)
      {
        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        kdu_error::kdu_error(&v11, "Error in Kakadu File Format Support:\n");
        (*(v11 + 16))(&v11, "Attempting to open a sub-box of a contiguous codestream box (may be a stream equivalent contiguous codestream for a real original box, which might have had sub-boxes), but you should have checked.");
        kdu_error::~kdu_error(&v11);
      }

      *(this + 2) = *(a2 + 12);
      v5 = *(a2 + 34);
    }

    else
    {
      *(this + 2) = -1;
      v5 = -1;
    }

    *(this + 6) = v5;
    box_header = jp2_input_box::read_box_header(this, 0);
    if (!box_header)
    {
      break;
    }

    if (!*(this + 12))
    {
      (*(*this + 16))(this);
      if (v4 != *(this + 1) && !*(this + 12))
      {
        continue;
      }
    }

    v7 = *(this + 5);
    if (*(v7 + 32) && *(this + 12) == 1785737827)
    {
      v8 = 6;
      v9 = 4;
    }

    else
    {
      v8 = 3;
      v9 = 1;
    }

    *(this + 32) = v9;
    if (*(v7 + 68) == 1)
    {
      *(this + 32) = v8;
    }

    *(a2 + 127) = 1;
    return box_header;
  }

  return box_header;
}

uint64_t jp2_input_box::open_next(jp2_input_box *this)
{
  if (!*(this + 5) || *(this + 126) == 1)
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    kdu_error::kdu_error(v8, "Error in Kakadu File Format Support:\n");
    kdu_error::~kdu_error(v8);
  }

  if (*(this + 4))
  {
    return (*(*this + 80))(this);
  }

  do
  {
    if (*(this + 125))
    {
      return 0;
    }

    v3 = *(this + 1);
    if ((v3 & 0x8000000000000000) == 0)
    {
      *(this + 1) = *(this + 7) + v3;
    }

    if (*(*(this + 5) + 32))
    {
      if ((*(this + 2) & 0x8000000000000000) != 0)
      {
        jp2_input_box::open_next();
      }

      *(this + 6) += *(this + 18);
    }

    result = jp2_input_box::read_box_header(this, 0);
    if (!result)
    {
      return result;
    }

    v4 = *(this + 12);
    if (v4)
    {
      break;
    }

    (*(*this + 16))(this);
    v4 = *(this + 12);
  }

  while (!v4);
  v5 = *(this + 5);
  if (*(v5 + 32))
  {
    v6 = v4 == 1785737827;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  *(this + 32) = v7;
  if (*(v5 + 68) == 1)
  {
    *(this + 32) = v7 | 2;
  }

  return 1;
}