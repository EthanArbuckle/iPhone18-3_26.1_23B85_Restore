uint64_t CA::WindowServer::IOMFBDisplay::swap_wait_timeout(os_unfair_lock_s *this, int a2, char a3, int a4, double *a5)
{
  if (a5)
  {
    v10 = 0.001 - *a5;
  }

  else
  {
    v10 = 0.001;
  }

  v11 = mach_absolute_time();
  v12 = CATimeWithHostTime(v11);
  while (1)
  {
    v13 = CA::WindowServer::IOMFBDisplay::swap_wait(this, a2, a3, a4);
    v14 = mach_absolute_time();
    v15 = CATimeWithHostTime(v14) - v12;
    if (!v13 || v15 > v10)
    {
      break;
    }

    usleep(0x64u);
  }

  if (a5)
  {
    *a5 = *a5 + v15;
  }

  return v13;
}

uint64_t CA::WindowServer::IOMFBDisplay::swap_wait(os_unfair_lock_s *this, int a2, char a3, int a4)
{
  if ((a3 & 1) != 0 && a4 && (byte_1ED4E98A3 & 1) == 0)
  {
    os_unfair_lock_lock(this + 6518);
    v6 = *&this[6520]._os_unfair_lock_opaque;
    v7 = *&this[6522]._os_unfair_lock_opaque;
    if (v6 != v7)
    {
      while (**v6 != a2)
      {
        v6 += 8;
        if (v6 == v7)
        {
          goto LABEL_13;
        }
      }
    }

    if (v6 == v7)
    {
LABEL_13:
      kdebug_trace();
      os_unfair_lock_unlock(this + 6518);
    }

    else
    {
      v8 = *(*v6 + 200);
      kdebug_trace();
      os_unfair_lock_unlock(this + 6518);
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

LABEL_10:

  return CA::IOMobileFramebuffer::swap_wait(&this[6424]);
}

void CA::OGL::MetalContext::delete_fence(int8x8_t *this, unint64_t a2)
{
  v3 = this + 417;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(&this[417], a2);
  if (v4)
  {
    v5 = this[418];
    v6 = v4[1];
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      if (v6 >= *&v5)
      {
        v6 %= *&v5;
      }
    }

    else
    {
      v6 &= *&v5 - 1;
    }

    v8 = *(*v3 + 8 * v6);
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8 != v4);
    if (v9 == &this[419])
    {
      goto LABEL_20;
    }

    v10 = v9[1];
    if (v7.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v6)
    {
LABEL_20:
      if (!*v4)
      {
        goto LABEL_21;
      }

      v11 = *(*v4 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v6)
      {
LABEL_21:
        *(*v3 + 8 * v6) = 0;
      }
    }

    v12 = *v4;
    if (*v4)
    {
      v13 = *(*&v12 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }
      }

      else
      {
        v13 &= *&v5 - 1;
      }

      if (v13 != v6)
      {
        *(*v3 + 8 * v13) = v9;
        v12 = *v4;
      }
    }

    *v9 = v12;
    *v4 = 0;
    --*&this[420];

    operator delete(v4);
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::display_timings_shmem(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 6576);
  CA::WindowServer::IOMFBDisplay::initialize_timings(this);
  v2 = *&this[6578]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this + 6576);
  return v2;
}

void CA::Transaction::flush(CA::Transaction *this)
{
  v1 = *(this + 15);
  if ((*(v1 + 204) & 1) != 0 && !*(this + 32))
  {
    if (*v1 < 2u)
    {
      CA::Transaction::commit(this);
    }

    else
    {
      *(v1 + 204) |= 2u;
    }
  }
}

uint64_t CA::Layer::collect_animations_(uint64_t a1, double *a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v7 = *a4.i64;
  v64[1] = *MEMORY[0x1E69E9840];
  v9 = *(*a3 + 112);
  if ((v9 & 0x80000000) != 0 || (v10 = a1 + 4 * v9, (v11 = *(v10 + 272)) == 0))
  {
    v12 = CA::Layer::thread_flags_(a1, *a3);
    v11 = *v12;
  }

  else
  {
    v12 = (v10 + 272);
  }

  *v12 = v11 | *(a1 + 4) & 0x800;
  v13 = *(a3 + 12);
  if ((v11 & 0x80000) != 0)
  {
    *(a3 + 12) = ++v13;
  }

  if (!v13 && (*(v12 + 1) & 8) == 0)
  {
    LOBYTE(v14) = 0;
    return v14 & 1;
  }

  v15 = *(a3 + 8);
  v63 = v7;
  v59 = v12;
  if (*(a1 + 58))
  {
    CA::Layer::render_timing(v64, a1, *a3);
    v16 = v64[0];
    if (v64[0])
    {
      v63 = fmin(fmax(v7, *(v64[0] + 5)), CA::Render::Timing::end_time(v64[0]));
      CA::Render::Timing::map_time(v16, &v63, 0);
      *a4.i32 = *(v16 + 4) * *(a3 + 8);
      *(a3 + 8) = a4.i32[0];
      v17 = v63;
      goto LABEL_16;
    }

    a4.i32[0] = *(a3 + 8);
  }

  else
  {
    v16 = 0;
    *a4.i32 = v15;
  }

  v17 = v7;
LABEL_16:
  v62 = 0.0;
  *a4.i64 = *a4.i32;
  a5.i64[0] = 0x7FF0000000000000;
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v61 = vbslq_s8(vnegq_f64(v18), a5, a4);
  v19 = *(a1 + 280);
  v64[0] = v19;
  v14 = v19 != 0;
  if (!v19)
  {
    goto LABEL_110;
  }

  if ((*(a1 + 4) & 0x1800000) != 0)
  {
    atomic_fetch_and((a1 + 4), 0xFE7FFFFF);
    v19 = v64[0];
    if (!v64[0])
    {
      v60 = 0;
      v42 = 0;
      v41 = *(a1 + 4);
      goto LABEL_89;
    }
  }

  v57 = a2;
  v58 = v16;
  v20 = 0;
  v21 = 0;
  v60 = 0;
  v22 = v64;
  do
  {
    v23 = v22;
    v22 = v19;
    while (*(v22 + 57) == 1)
    {
      v24 = v22[4];
      if (!v24 || (*(v22 + 59) & 1) != 0)
      {
        break;
      }

      v25 = v24[5];
      v26 = CA::Render::Timing::end_time(v24);
      v27 = *(v22[4] + 3);
      v28 = *(a3 + 8);
      if (v28 == 0.0)
      {
        v32 = v26 > v17 || (*(v22[4] + 3) & 0x200) != 0;
        if (v25 > v17)
        {
          v32 = (*(v22[4] + 3) & 0x400) != 0;
        }

        goto LABEL_66;
      }

      v29 = (v27 >> 10) & 1;
      v30 = (v27 >> 9) & 1;
      if (v28 < 0.0)
      {
        v31 = v26;
      }

      else
      {
        v31 = v25;
      }

      if (v28 < 0.0)
      {
        v32 = (v27 >> 9) & 1;
      }

      else
      {
        v25 = v26;
        v32 = (v27 >> 10) & 1;
      }

      if (v28 < 0.0)
      {
        v33 = v29;
      }

      else
      {
        v33 = v30;
      }

      v34 = v31 > v17;
      if (v28 <= 0.0)
      {
        v34 = v31 < v17;
      }

      if (v34)
      {
        if (*(v22 + 68) & 1) != 0 || (*(v22 + 63))
        {
          v25 = v31;
          goto LABEL_58;
        }

        if ((*(v22 + 69) & 1) == 0 && !v22[6])
        {
LABEL_60:
          v37 = v61;
          v25 = *v61.i64;
LABEL_61:
          v38 = v25 < *v37.i64;
          if (*(a3 + 8) <= 0.0)
          {
            v38 = v25 > *v37.i64;
          }

          if (v38)
          {
            *v37.i64 = v25;
          }

          v61 = v37;
LABEL_66:
          if (*(v22 + 63) == 1 && v32)
          {
            v21 |= *(v22 + 65);
            v20 |= *(v22 + 66);
          }

          break;
        }

LABEL_58:
        v37 = v61;
        goto LABEL_61;
      }

      v35 = v25 > v17;
      if (v28 <= 0.0)
      {
        v35 = v25 < v17;
      }

      if (v35)
      {
        schedule_start_callback(v22, &animation_state);
        if ((*(v22 + 69) & 1) == 0 && !v22[6])
        {
          v32 = 1;
          goto LABEL_60;
        }

        v32 = 1;
        goto LABEL_58;
      }

      *(v22[1] + 4) |= 2u;
      schedule_stop_callback(v22, &animation_state);
      if ((v22[7] & 1) == 0)
      {
        v32 = v33;
        goto LABEL_60;
      }

      *v23 = *v22;
      *v22 = qword_1ED4E4E00;
      qword_1ED4E4E00 = v22;
      v22 = *v23;
      if (!*v23)
      {
        goto LABEL_79;
      }
    }

    if (v22[3] == kContentsStringHash)
    {
      v39 = [(CA::Render::Timing *)v22[2] isEqualToString:@"contents"];
      v40 = v60;
      if (v39)
      {
        v40 = v22;
      }

      v60 = v40;
    }

    v19 = *v22;
  }

  while (*v22);
LABEL_79:
  v41 = *(a1 + 4);
  if ((v21 & 1) == 0)
  {
    if (v20)
    {
      v42 = 0x2000;
      goto LABEL_84;
    }

    v42 = 0;
    a2 = v57;
    v16 = v58;
LABEL_89:
    v43 = v41 & 0x3000;
    if (v42 == v43)
    {
      if (!v42)
      {
        goto LABEL_109;
      }

      goto LABEL_91;
    }

LABEL_94:
    v44 = *(a1 + 16);
    atomic_fetch_or((a1 + 4), v42 & ~v43);
    atomic_fetch_and((a1 + 4), v42 | ~v43);
    if (!v42)
    {
      [v44 _cancelAnimationTimer];
      if ((v41 & 0x1000) != 0)
      {
        [v44 setNeedsLayout];
      }

      if ((v41 & 0x2000) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_108;
    }

    goto LABEL_95;
  }

  atomic_fetch_or((a1 + 4), 0x1000000u);
  if (v20)
  {
    v42 = 12288;
LABEL_84:
    a2 = v57;
    v16 = v58;
    atomic_fetch_or((a1 + 4), 0x800000u);
    goto LABEL_89;
  }

  v43 = v41 & 0x3000;
  v42 = 4096;
  a2 = v57;
  v16 = v58;
  if (v43 != 4096)
  {
    goto LABEL_94;
  }

LABEL_91:
  if (*(a3 + 8) == 0.0 && !*(a3 + 12))
  {
    goto LABEL_109;
  }

  v44 = *(a1 + 16);
LABEL_95:
  if ([v44 _scheduleAnimationTimer])
  {
    if ((v42 & 0x1000) != 0)
    {
      [v44 setNeedsLayout];
    }

    if ((v42 & 0x2000) == 0)
    {
      *v61.i64 = v17;
      goto LABEL_109;
    }

    if (v60)
    {
      [v44 performSelectorOnMainThread:sel_removeAnimationForKey_ withObject:@"contents" waitUntilDone:0];
    }

    *v61.i64 = v17;
LABEL_108:
    [v44 setNeedsDisplay];
    *(a1 + 52) |= 0x80000000;
  }

LABEL_109:
  CA::Layer::set_animations(a1, v64[0]);
LABEL_110:
  v62 = *v61.i64;
  v45 = *(a1 + 24);
  if (!v45)
  {
    goto LABEL_118;
  }

  v46 = (v45 + 1);
  v47 = v45[2];
  if (v47 != 1)
  {
    if (!v47)
    {
      goto LABEL_118;
    }

    goto LABEL_115;
  }

  if (v45[3])
  {
LABEL_115:
    v46 = *v46;
  }

  v48 = v63;
  do
  {
    v14 |= CA::Layer::collect_animations_((*v46++)[2], &v62, a3, v48);
    --v47;
  }

  while (v47);
LABEL_118:
  v49 = *(a1 + 32);
  if (v49)
  {
    LOBYTE(v14) = CA::Layer::collect_animations_(*(v49 + 16), &v62, a3, v63) | v14;
  }

  v50 = v62;
  if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v16)
    {
      CA::Render::Timing::inverse_map_time(v16, &v62, v7);
      v50 = v62;
    }

    v51 = v50 < *a2;
    v53 = v50 > *a2 && v15 < 0.0;
    if (v15 <= 0.0)
    {
      v51 = v53;
    }

    if (v51)
    {
      *a2 = v50;
    }
  }

  *(a3 + 8) = v15;
  v54 = (a1 + 4);
  if (v14)
  {
    atomic_fetch_or(v54, 0x800u);
    if ((*v59 & 0x80000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_137;
  }

  atomic_fetch_and(v54, 0xFFFFF7FF);
  v55 = *v59 & 0xFFFFF7FF;
  *v59 = v55;
  if ((v55 & 0x80000) != 0)
  {
LABEL_137:
    --*(a3 + 12);
  }

LABEL_138:
  if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v16 + 16))(v16);
  }

  return v14 & 1;
}

uint64_t CA::Render::Layer::set_transform(uint64_t this, CA::Render::Vector *a2)
{
  v2 = a2;
  if (a2 || *(this + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(this);
    this = v3[2];
    if (this != v2)
    {
      if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
      {
        this = (*(*this + 16))(this);
      }

      if (v2)
      {
        v4 = (v2 + 8);
        if (!atomic_fetch_add(v2 + 2, 1u))
        {
          v2 = 0;
          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }

      v3[2] = v2;
    }
  }

  return this;
}

uint64_t CA::Render::fourcc_has_alpha(CA::Render *this)
{
  v1 = CA::Render::fourcc_compressed_of_type(this, 0, 0);
  result = 1;
  if (v1 > 1380401728)
  {
    if (v1 <= 1949327730)
    {
      if (v1 > 1815162993)
      {
        if (v1 > 1932550514)
        {
          if (v1 > 1932812658)
          {
            if (v1 == 1932812659)
            {
              return result;
            }

            v3 = 1932866865;
          }

          else
          {
            if (v1 == 1932550515)
            {
              return result;
            }

            v3 = 1932681587;
          }

          goto LABEL_86;
        }

        if (v1 == 1815162994 || v1 == 1815491698)
        {
          return result;
        }

        v3 = 1916022840;
      }

      else
      {
        if (v1 > 1395864161)
        {
          if (v1 > 1647534391)
          {
            if (v1 == 1647534392)
            {
              return result;
            }

            v3 = 1647719521;
          }

          else
          {
            if (v1 == 1395864162)
            {
              return result;
            }

            v3 = 1647522401;
          }

          goto LABEL_86;
        }

        if (v1 == 1380401729 || v1 == 1380410945)
        {
          return result;
        }

        v3 = 1380411457;
      }
    }

    else
    {
      if (v1 > 1999908960)
      {
        if (v1 > 2016567666)
        {
          if (v1 > 2016698738)
          {
            if (v1 == 2016698739)
            {
              return result;
            }

            v3 = 2033463606;
          }

          else
          {
            if (v1 == 2016567667)
            {
              return result;
            }

            v3 = 2016698680;
          }
        }

        else if (v1 > 2016436594)
        {
          if (v1 == 2016436595)
          {
            return result;
          }

          v3 = 2016567608;
        }

        else
        {
          if (v1 == 1999908961)
          {
            return result;
          }

          v3 = 2016436536;
        }

        goto LABEL_86;
      }

      if (v1 > 1982882103)
      {
        if (v1 > 1983131703)
        {
          if (v1 == 1983131704)
          {
            return result;
          }

          v3 = 1983144248;
        }

        else
        {
          if (v1 == 1982882104)
          {
            return result;
          }

          v3 = 1983013176;
        }

        goto LABEL_86;
      }

      if (v1 == 1949327731 || v1 == 1949458803)
      {
        return result;
      }

      v3 = 1949589875;
    }

LABEL_86:
    if (v1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (v1 <= 645410871)
  {
    if (v1 > 645148786)
    {
      if (v1 > 645279799)
      {
        if (v1 > 645280823)
        {
          if (v1 == 645280824)
          {
            return result;
          }

          v3 = 645346401;
        }

        else
        {
          if (v1 == 645279800)
          {
            return result;
          }

          v3 = 645280312;
        }

        goto LABEL_86;
      }

      if (v1 == 645148787 || v1 == 645149299)
      {
        return result;
      }

      v3 = 645149811;
    }

    else
    {
      if (v1 > 643969847)
      {
        if (v1 > 645083762)
        {
          if (v1 == 645083763)
          {
            return result;
          }

          v4 = 13427;
        }

        else
        {
          if (v1 == 643969848)
          {
            return result;
          }

          v4 = 12403;
        }

        v3 = v4 | 0x26730000;
        goto LABEL_86;
      }

      if (v1 == 32 || v1 == 641877825)
      {
        return result;
      }

      v3 = 642934849;
    }

    goto LABEL_86;
  }

  if (v1 > 843264309)
  {
    if (v1 > 1094862673)
    {
      if (v1 > 1279340599)
      {
        if (v1 == 1279340600)
        {
          return result;
        }

        v3 = 1279342648;
      }

      else
      {
        if (v1 == 1094862674)
        {
          return result;
        }

        v3 = 1111970369;
      }
    }

    else if (v1 > 892679472)
    {
      if (v1 == 892679473)
      {
        return result;
      }

      v3 = 1093677112;
    }

    else
    {
      if (v1 == 843264310)
      {
        return result;
      }

      v3 = 875836468;
    }

    goto LABEL_86;
  }

  if (v1 > 645411442)
  {
    if (v1 > 645411954)
    {
      if (v1 == 645411955)
      {
        return result;
      }

      v3 = 843264104;
      goto LABEL_86;
    }

    if (v1 == 645411443)
    {
      return result;
    }

    v5 = 13368;
    goto LABEL_49;
  }

  if (v1 != 645410872 && v1 != 645410931)
  {
    v5 = 12856;
LABEL_49:
    v3 = v5 | 0x26780000;
    goto LABEL_86;
  }

  return result;
}

BOOL CAShmemImageQueueCopyImageInfo(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char *a7, unsigned int *a8, double a9, float a10, float64x2_t a11)
{
  v177 = a8;
  v185 = a5;
  v184 = a4;
  v12 = a3;
  v174 = a1;
  v209 = *MEMORY[0x1E69E9840];
  v16 = atomic_load((a3 + 8));
  v172 = *(a3 + 88);
  if ((v16 & 0x800) != 0)
  {
    v17 = v16 & 0xFFFFFFFFFFFFBFFFLL;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v17 >> 7) & 3;
  v176 = a7;
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = (v17 & 0x800) == 0;
      v24 = v185;
      *(v185 + 128) = 0;
      v24[6] = 0u;
      v24[7] = 0u;
      v24[4] = 0u;
      v24[5] = 0u;
      v24[2] = 0u;
      v24[3] = 0u;
      *v24 = 0u;
      v24[1] = 0u;
      v26 = (a3 + 16);
      v25 = *(a3 + 16);
      if (*(a3 + 300) != v25)
      {
        v21 = 0;
        v20 = 1;
        v22 = INFINITY;
        v28 = -INFINITY;
        goto LABEL_26;
      }

      v27 = *(a3 + 304);
      v20 = 1;
      v22 = INFINITY;
      v28 = -INFINITY;
      goto LABEL_21;
    }

    v19 = (v17 & 0x800) == 0;
    goto LABEL_16;
  }

  if (v18)
  {
    v20 = 0;
    v19 = (v17 & 0x800) == 0;
    goto LABEL_13;
  }

  v19 = (v17 & 0x800) == 0;
  v20 = a10 < 0.0;
  if (a10 > 0.0)
  {
LABEL_13:
    v21 = 1;
    v22 = -INFINITY;
    *&v23 = INFINITY;
    goto LABEL_14;
  }

  if (a10 < 0.0)
  {
    v21 = 0;
    v20 = 1;
    v22 = INFINITY;
    *&v23 = -INFINITY;
LABEL_14:
    v28 = *&v23;
    goto LABEL_17;
  }

LABEL_16:
  v21 = 0;
  v20 = 0;
  v28 = INFINITY;
  v22 = INFINITY;
LABEL_17:
  v29 = v185;
  *(v185 + 128) = 0;
  v29[6] = 0u;
  v29[7] = 0u;
  v29[4] = 0u;
  v29[5] = 0u;
  v29[2] = 0u;
  v29[3] = 0u;
  *v29 = 0u;
  v29[1] = 0u;
  v26 = (v12 + 16);
  v25 = *(v12 + 16);
  if (*(v12 + 300) == v25)
  {
    v27 = *(v12 + 304);
    if (v21)
    {
      v21 = 1;
      if (v27 >= a9)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

LABEL_21:
    v21 = 0;
    if (!v20 || v27 <= a9)
    {
      goto LABEL_26;
    }

    v20 = 1;
LABEL_24:
    *(v185 + 116) = 1;
  }

LABEL_26:
  v30 = atomic_load((v12 + 8));
  if ((v30 & 0x1000000000000000) != 0)
  {
    if (!a2)
    {
      goto LABEL_47;
    }

    v31 = 0;
    v32 = 0.0;
    v33 = v12 + 472;
    v34 = a2;
    do
    {
      if (*(v33 + 68) && (*(v33 + 60) == 286331153 || *(v33 + 60) == 572662306) && *(v33 + 100) > v31)
      {
        v35 = *(v33 + 16);
        if (v35 < *v33)
        {
          v35 = *v33;
        }

        if (v32 < v35)
        {
          v32 = v35;
        }

        v31 = *(v33 + 100);
      }

      v33 += 160;
      --v34;
    }

    while (v34);
    v36 = 0;
    v37 = 0;
    v38 = (v12 + 540);
    v39 = -1;
    v40 = -1;
    do
    {
      if (*v38)
      {
        v37 += v38[1] >> 31;
        if (v38[8] > v31 && v38[8] < v39)
        {
          v40 = v36;
          v39 = v38[8];
        }
      }

      ++v36;
      v38 += 40;
    }

    while (a2 != v36);
    if (v40 != -1)
    {
      v41 = v12 + 472 + 160 * v40;
      if ((*(v41 + 72) & 0x80000000) != 0)
      {
        if ((*(v41 + 72) & 0x4000000) == 0)
        {
          *v41 = *v41 + v32;
        }

        atomic_fetch_and((v41 + 72), 0xFBFFFFFF);
        atomic_fetch_and((v41 + 72), 0x7FFFFFFFu);
        if (v37 != 1)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }
    }

    if (!v37)
    {
LABEL_47:
      atomic_fetch_and((v12 + 8), 0xEFFFFFFFFFFFFFFFLL);
    }
  }

LABEL_48:
  v42 = 0.0;
  v181 = v25;
  v183 = v17;
  v182 = v21;
  LODWORD(v180.f64[0]) = v20;
  if (a2 >= 2)
  {
    v43 = v19;
    v44 = 8 * a2;
    if (8 * a2 > 0x1000)
    {
      v45 = malloc_type_malloc(8 * a2, 0xB4BF0FBEuLL);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v25);
      v45 = (&v168 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v45, 8 * a2);
    }

    v46 = 0;
    v47 = v12 + 472;
    v48 = a2;
    do
    {
      if (*(v47 + 68) && *(v47 + 64) == *v26)
      {
        v45[v46++] = v47;
      }

      v47 += 160;
      --v48;
    }

    while (v48);
    v42 = 0.0;
    if (v46 >= 2)
    {
      std::__introsort<std::_ClassicAlgPolicy,CAShmemImageQueueCopyImageInfo::$_0 &,_CAShmemImageQueueImage **,false>(v45, &v45[v46], 126 - 2 * __clz(v46), 1);
      v49 = v45 + 1;
      v50 = **v45;
      v51 = v46 - 1;
      v42 = INFINITY;
      do
      {
        v52 = *v49++;
        v53 = *v52;
        v54 = *v52 - v50;
        if (v54 < v42)
        {
          v42 = v54;
        }

        v50 = v53;
        --v51;
      }

      while (v51);
    }

    if (v44 > 0x1000)
    {
      free(v45);
    }

    LODWORD(v25) = v181;
    v19 = v43;
    v17 = v183;
    v21 = v182;
    v20 = LODWORD(v180.f64[0]);
  }

  v179 = a6;
  v206 = 0;
  v207 = 0;
  v55 = &CADisplayTimerGetTypeID::type;
  v208 = 0;
  if (!a2)
  {
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v88 = -1;
    v64 = v28;
    v86 = -1;
    v87 = v176;
    goto LABEL_149;
  }

  v170 = v19;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v169 = v12 + 472;
  v61 = v20 | v21;
  v62 = xmmword_183E21120;
  v173 = -1;
  v63 = v12;
  v171 = v12;
  v175 = -1;
  v64 = v28;
  v168 = v25;
  do
  {
    if (!*(v63 + 540))
    {
      goto LABEL_92;
    }

    v65 = *(v63 + 536);
    if (v59 <= 2)
    {
      v66 = &v206 + v59;
      *v66 = *(v63 + 528);
      *(v66 + 1) = *(v63 + 532);
      ++v59;
    }

    if (*(v55 + 2071) == 1)
    {
      v85 = v57;
      v178 = v62;
      kdebug_trace();
      v62 = v178;
      v57 = v85;
      v55 = &CADisplayTimerGetTypeID::type;
      v20 = LODWORD(v180.f64[0]);
      v21 = v182;
      v17 = v183;
      LODWORD(v25) = v181;
    }

    v67 = v65 - v25;
    v68 = *(v63 + 532);
    if (v68 > 572662305)
    {
      if (v68 == 572662306 || v68 == 858993459)
      {
        if (v60 <= *(v63 + 568))
        {
          v60 = *(v63 + 568);
        }

        goto LABEL_92;
      }

      goto LABEL_95;
    }

    if (v68)
    {
      if (v68 != 286331153)
      {
        goto LABEL_95;
      }

      v69 = (*(v63 + 544) & 0x1000000) == 0 && (v17 & 0x20000000000000) == 0;
      v70 = v69 ? 280 : 276;
      if (*(v184 + v70) - *(v63 + 560) < 0)
      {
        goto LABEL_95;
      }

      v71 = 286331153;
      atomic_compare_exchange_strong((v63 + 532), &v71, 0);
      if (v71 != 286331153)
      {
        goto LABEL_93;
      }
    }

    v72 = v62.i32[2];
    if (v62.i32[2] <= v62.i32[3])
    {
      v72 = v62.i32[3];
    }

    if (v67 < 0)
    {
      if (v72 >= 0x3FFFFFFF)
      {
        v75 = *(v63 + 584);
        v76 = v75;
        if (v75 <= SHIDWORD(v75))
        {
          v76 = HIDWORD(v75);
        }

        if (v76 <= 1073741822)
        {
          v62 = *(v63 + 576);
        }
      }

      v77 = 0;
      atomic_compare_exchange_strong((v63 + 532), &v77, 0x33333333u);
      if (!v77)
      {
        v60 = *(v184 + 272);
        *(v63 + 568) = v60;
LABEL_92:
        ++v58;
        goto LABEL_93;
      }

      goto LABEL_93;
    }

    if (v72 <= 1073741822)
    {
      v73 = v57;
      v178 = v62;
      CA::BoundsImpl::Union((v63 + 576), *v62.i8, *&vextq_s8(v62, v62, 8uLL));
      v62 = v178;
      v57 = v73;
      v55 = &CADisplayTimerGetTypeID::type;
      v20 = LODWORD(v180.f64[0]);
      v21 = v182;
      v17 = v183;
      LODWORD(v25) = v181;
    }

LABEL_95:
    if ((*(v63 + 544) & 0x80000000) != 0)
    {
      goto LABEL_93;
    }

    if ((v67 & 0x80000000) == 0)
    {
      v74 = *(v63 + 472);
      if (v21)
      {
        if (v74 > a9)
        {
          if (v65 != v25)
          {
            goto LABEL_118;
          }

          if (v74 < v64)
          {
            goto LABEL_117;
          }

          if (v74 <= v64 || v74 >= v28)
          {
            goto LABEL_118;
          }

          goto LABEL_119;
        }

        if (v74 > v22)
        {
LABEL_121:
          if (v65 == v25)
          {
            v79 = v61 ^ 1;
            if (v175 == -1)
            {
              v79 = 1;
            }

            if ((v79 & 1) == 0)
            {
              v80 = v169 + 160 * v175;
              v82 = *(v80 + 60);
              v81 = (v80 + 60);
              if (!v82)
              {
                if (v179)
                {
                  *v81 = 572662306;
                  v60 = *(v184 + 272);
                  *(v63 + 568) = v60;
                }
              }
            }

            v175 = v56;
            v22 = v74;
          }

          goto LABEL_93;
        }
      }

      else
      {
        if (v74 < a9 && v20)
        {
          if (v65 != v25)
          {
            goto LABEL_118;
          }

          if (v74 > v64)
          {
LABEL_117:
            v64 = *(v63 + 472);
            v173 = v56;
            goto LABEL_118;
          }

          if (v74 >= v64 || v74 <= v28)
          {
LABEL_118:
            v74 = v28;
          }

LABEL_119:
          ++v57;
          v28 = v74;
          goto LABEL_93;
        }

        if (v20)
        {
          if (v74 < v22)
          {
            goto LABEL_121;
          }
        }

        else if (vabdd_f64(v74, a9) < vabdd_f64(v22, a9))
        {
          goto LABEL_121;
        }
      }
    }

    v83 = v61 ^ 1;
    if (v65 != v25)
    {
      v83 = 1;
    }

    if ((v83 & 1) == 0 && !*(v63 + 532))
    {
      if (v179)
      {
        v84 = 0;
        atomic_compare_exchange_strong((v63 + 532), &v84, 0x22222222u);
        if (!v84)
        {
          v60 = *(v184 + 272);
          *(v63 + 568) = v60;
        }
      }
    }

LABEL_93:
    ++v56;
    v63 += 160;
  }

  while (a2 != v56);
  v86 = v175;
  v87 = v176;
  if (v175 == -1)
  {
    v12 = v171;
    v19 = v170;
    v88 = v173;
    if ((v17 & 2) != 0 && v57)
    {
      --v57;
      *(v185 + 116) = 1;
      v86 = v88;
      v22 = v64;
    }
  }

  else
  {
    v12 = v171;
    v19 = v170;
    v88 = v173;
  }

LABEL_149:
  if ((v17 & 0x4000) != 0 && v86 != -1 && v88 != -1 && a10 != 0.0 && v86 != v88)
  {
    v89 = *(v184 + 120) * 0.6;
    v90 = vabdd_f64(v64, a9);
    if (*(v12 + 160 * v86 + 556) && v90 < v89)
    {
      v28 = v28 - v89;
      --v57;
      v86 = v88;
      v22 = v64;
    }
  }

  if (v58 <= *(v12 + 95) || (v92 = atomic_load((v12 + 8)), (v92 & 0x1000000000000000) != 0))
  {
    ++v57;
  }

  v93 = v179;
  if (v87)
  {
    if (v57)
    {
      v94 = a10 == 0.0;
    }

    else
    {
      v94 = 1;
    }

    v95 = !v94;
    *v87 = v95;
  }

  if (v177)
  {
    *v177 = v60;
  }

  if (v86 == -1)
  {
    return v86 != -1;
  }

  if (v19 || !v20 || v88 == -1)
  {
    v96 = v64;
    v97 = v86;
    v64 = v22;
  }

  else
  {
    v96 = v22;
    v97 = v88;
    v88 = v86;
  }

  v98 = v12 + 472;
  v99 = v12 + 472 + 160 * v97;
  v100 = *(v99 + 60);
  if (v93)
  {
    v101 = v12;
    v102 = v12;
    v103 = v12 + 472 + 160 * v97;
    v104 = v98;
    v105 = v19;
    v106 = v93;
    v107 = v86;
    v108 = v88;
    update_image_sample(v174, v101, v103, v184, a9);
    v88 = v108;
    v86 = v107;
    v93 = v106;
    v19 = v105;
    v98 = v104;
    v99 = v103;
    v12 = v102;
    v21 = v182;
    v17 = v183;
  }

  v109 = v88 == -1 || v19;
  if ((v109 & 1) == 0)
  {
    v110 = v185;
    *(v185 + 32) = *(v99 + 8);
    *(v110 + 40) = v64;
    v99 = v98 + 160 * v88;
    update_image_sample(v174, v12, v99, v184, a9);
    v21 = v182;
    v17 = v183;
  }

  *(v185 + 80) = *(v12 + 144);
  if (v100)
  {
    v111 = 1;
  }

  else
  {
    v111 = *(v99 + 60) != 286331153;
  }

  if (byte_1ED4E9860 == 1)
  {
    a11.f64[0] = *(v99 + 128);
    if (a11.f64[0] != 0.0 && !v111)
    {
      v123 = INFINITY;
      if (a11.f64[0] != 1.79769313e308)
      {
        v124 = *(v184 + 856);
        if (v124)
        {
          v125 = *(v124 + 16);
          v126 = *(v99 + 128);
          v180 = a11;
          v127 = v125(v124, v17, v21, v126);
          a11.f64[0] = v180.f64[0];
          LODWORD(v21) = v182;
          LODWORD(v17) = v183;
          v123 = v127 + v180.f64[0];
        }
      }

      a11.f64[1] = v123;
      *(v184 + 824) = vbslq_s8(vcgtq_f64(a11, *(v184 + 824)), *(v184 + 824), a11);
    }
  }

  if (v21)
  {
    if (v96 <= v64)
    {
      goto LABEL_194;
    }

LABEL_193:
    v28 = v96;
  }

  else if (v64 > v96)
  {
    goto LABEL_193;
  }

LABEL_194:
  v112 = 0;
  v113 = *(v12 + 312);
  v114 = *(v12 + 320);
  if ((v93 & WORD1(v17)) == 1 && (BYTE1(xmmword_1ED4E982C) & 1) == 0)
  {
    v112 = 0;
    if (v19 && (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      if (v114 >= a9)
      {
        v115 = a9;
      }

      else
      {
        v115 = *(v12 + 320);
      }

      if (v113 > v115)
      {
        v115 = *(v12 + 312);
      }

      if (v115 != a9)
      {
        goto LABEL_210;
      }

      if (v114 >= v28)
      {
        v116 = v28;
      }

      else
      {
        v116 = *(v12 + 320);
      }

      if (v113 > v116)
      {
        v116 = *(v12 + 312);
      }

      if (v116 == v28)
      {
        v112 = 1;
      }

      else
      {
LABEL_210:
        v112 = 0;
      }
    }
  }

  v117 = v185;
  *v185 = *(v99 + 68);
  *(v117 + 8) = *(v99 + 72);
  *(v117 + 12) = *(v99 + 76);
  *(v117 + 20) = *(v99 + 120);
  *(v117 + 24) = *(v99 + 84);
  *(v117 + 48) = *(v99 + 8);
  *(v117 + 4) = *(v99 + 64);
  if (v19)
  {
    v118 = v64;
  }

  else
  {
    v118 = v96;
  }

  *(v117 + 56) = v118;
  *(v117 + 120) = *(v99 + 104);
  *(v117 + 64) = v28;
  *(v117 + 72) = v42;
  *(v117 + 96) = *(v99 + 136);
  *(v117 + 112) = -858993459 * ((v99 - v98) >> 5);
  *(v117 + 117) = v112;
  *(v117 + 88) = 0;
  if (*(v12 + 464) == 1)
  {
    atomic_fetch_add((v99 + 152), 1u);
  }

  v119 = *(v99 + 56);
  if (v119)
  {
    v120 = IOSurfaceLookup(v119);
    *(v185 + 88) = IOSurfaceGetIndexedTimestamp();
    if (v120)
    {
      CFRelease(v120);
    }
  }

  v121 = &CADisplayTimerGetTypeID::type;
  if ((v112 & BYTE11(xmmword_1ED4E980C)) == 1)
  {
    kdebug_trace();
    v121 = &CADisplayTimerGetTypeID::type;
    if (!v19)
    {
      goto LABEL_221;
    }

    goto LABEL_240;
  }

  if (v19)
  {
    goto LABEL_240;
  }

LABEL_221:
  if (!*(v185 + 32) || !*(v185 + 48))
  {
LABEL_240:
    if (v64 != 0.0)
    {
      v122 = *(v185 + 8);
      if ((v122 & 0x20) == 0)
      {
        if (byte_1ED4E98A1 != 1)
        {
          goto LABEL_243;
        }

        v128 = atomic_load((v12 + 8));
        v122 = *(v185 + 8);
        if ((v128 & 0x10000000000000) == 0 || (v122 & 0x400000) == 0)
        {
          goto LABEL_243;
        }
      }
    }

    goto LABEL_249;
  }

  if (*(v185 + 40) == 0.0 || *(v185 + 56) == 0.0)
  {
LABEL_375:
    if (v93)
    {
      goto LABEL_250;
    }

    return v86 != -1;
  }

  if ((byte_1ED4E98A1 & 1) == 0)
  {
    v122 = *(v185 + 8);
    goto LABEL_227;
  }

  v166 = atomic_load((v12 + 8));
  v122 = *(v185 + 8);
  if ((v166 & 0x10000000000000) != 0)
  {
    v93 = v179;
    v121 = &CADisplayTimerGetTypeID::type;
    if ((v122 & 0x400000) != 0)
    {
      goto LABEL_375;
    }
  }

  else
  {
    v93 = v179;
    v121 = &CADisplayTimerGetTypeID::type;
  }

LABEL_227:
  if ((v122 & 0x20) != 0)
  {
    goto LABEL_375;
  }

LABEL_243:
  if (a10 == 0.0 || (v122 & 0x80) != 0)
  {
LABEL_249:
    if (v93)
    {
      goto LABEL_250;
    }

    return v86 != -1;
  }

  *(v184 + 304) |= 0x800uLL;
  if (!v93)
  {
    return v86 != -1;
  }

LABEL_250:
  if (*(v121 + 2071) == 1)
  {
    kdebug_trace();
    kdebug_trace();
  }

  if (CADeviceSupportsAPT::once != -1)
  {
    dispatch_once(&CADeviceSupportsAPT::once, &__block_literal_global_46);
  }

  if (x_log_get_image_queue(void)::once != -1)
  {
    dispatch_once(&x_log_get_image_queue(void)::once, &__block_literal_global_15202);
  }

  v129 = x_log_get_image_queue(void)::log;
  if (v59 > 1)
  {
    if (v59 != 2)
    {
      if (v59 != 3)
      {
        return v86 != -1;
      }

      if (a2 >= 4)
      {
        if (!v172 || !os_signpost_enabled(x_log_get_image_queue(void)::log))
        {
          return v86 != -1;
        }

        if (SHIDWORD(v206) > 572662305)
        {
          if (HIDWORD(v206) != 572662306)
          {
            v134 = v181;
            if (HIDWORD(v206) == 858993459)
            {
              v135 = "flushed";
              goto LABEL_327;
            }

            goto LABEL_321;
          }

          v135 = "consumed";
        }

        else
        {
          if (HIDWORD(v206))
          {
            v134 = v181;
            if (HIDWORD(v206) == 286331153)
            {
              v135 = "displayed";
              goto LABEL_327;
            }

LABEL_321:
            v135 = "<unknown>";
            goto LABEL_327;
          }

          v135 = "unconsumed";
        }

        v134 = v181;
LABEL_327:
        if (SHIDWORD(v207) > 572662305)
        {
          if (HIDWORD(v207) != 572662306)
          {
            if (HIDWORD(v207) == 858993459)
            {
              v152 = "flushed";
              goto LABEL_347;
            }

            goto LABEL_334;
          }

          v152 = "consumed";
        }

        else
        {
          if (HIDWORD(v207))
          {
            if (HIDWORD(v207) == 286331153)
            {
              v152 = "displayed";
              goto LABEL_347;
            }

LABEL_334:
            v152 = "<unknown>";
            goto LABEL_347;
          }

          v152 = "unconsumed";
        }

LABEL_347:
        v154 = *(v99 + 56);
        v155 = *(v184 + 272);
        v156 = *v135;
        v157 = *v152;
        if (SHIDWORD(v208) > 572662305)
        {
          if (HIDWORD(v208) == 572662306)
          {
            v158 = "consumed";
            goto LABEL_367;
          }

          if (HIDWORD(v208) == 858993459)
          {
            v158 = "flushed";
            goto LABEL_367;
          }
        }

        else
        {
          if (!HIDWORD(v208))
          {
            v158 = "unconsumed";
            goto LABEL_367;
          }

          if (HIDWORD(v208) == 286331153)
          {
            v158 = "displayed";
LABEL_367:
            v164 = *v158;
            *buf = 67242496;
            v187 = v154;
            v188 = 2050;
            v189 = a9;
            v190 = 1026;
            v191 = v155;
            v192 = 1026;
            v193 = v134;
            v194 = 1026;
            v195 = v206;
            v196 = 1026;
            v197 = v156;
            v198 = 1026;
            v199 = v207;
            v200 = 1026;
            v201 = v157;
            v202 = 1026;
            v203 = v208;
            v204 = 1026;
            v205 = v164;
            v138 = "ID is queue ID. surfaceID=%{public, name=surfaceID}#x serverSamplingTime=%{public, name=serverSamplingTime}f updateSeed=%{public, name=updateSeed}#x queueGeneration=%{public, name=queueGeneration}u samples=[(%{public, name=sample0Surface}#x, %{public, name=sample0State}c), (%{public, name=sample1Surface}#x, %{public, name=sample1State}c), (%{public, name=sample2Surface}#x, %{public, name=sample2State}c), ...]";
LABEL_371:
            v139 = v129;
            v140 = v172;
            v141 = 66;
            goto LABEL_372;
          }
        }

        v158 = "<unknown>";
        goto LABEL_367;
      }

      if (!v172 || !os_signpost_enabled(x_log_get_image_queue(void)::log))
      {
        return v86 != -1;
      }

      if (SHIDWORD(v206) > 572662305)
      {
        if (HIDWORD(v206) != 572662306)
        {
          v144 = v181;
          if (HIDWORD(v206) == 858993459)
          {
            v145 = "flushed";
            goto LABEL_337;
          }

          goto LABEL_322;
        }

        v145 = "consumed";
      }

      else
      {
        if (HIDWORD(v206))
        {
          v144 = v181;
          if (HIDWORD(v206) == 286331153)
          {
            v145 = "displayed";
            goto LABEL_337;
          }

LABEL_322:
          v145 = "<unknown>";
          goto LABEL_337;
        }

        v145 = "unconsumed";
      }

      v144 = v181;
LABEL_337:
      if (SHIDWORD(v207) > 572662305)
      {
        if (HIDWORD(v207) != 572662306)
        {
          if (HIDWORD(v207) == 858993459)
          {
            v153 = "flushed";
            goto LABEL_357;
          }

          goto LABEL_344;
        }

        v153 = "consumed";
      }

      else
      {
        if (HIDWORD(v207))
        {
          if (HIDWORD(v207) == 286331153)
          {
            v153 = "displayed";
            goto LABEL_357;
          }

LABEL_344:
          v153 = "<unknown>";
          goto LABEL_357;
        }

        v153 = "unconsumed";
      }

LABEL_357:
      v159 = *(v99 + 56);
      v160 = *(v184 + 272);
      v161 = *v145;
      v162 = *v153;
      if (SHIDWORD(v208) > 572662305)
      {
        if (HIDWORD(v208) == 572662306)
        {
          v163 = "consumed";
          goto LABEL_370;
        }

        if (HIDWORD(v208) == 858993459)
        {
          v163 = "flushed";
          goto LABEL_370;
        }
      }

      else
      {
        if (!HIDWORD(v208))
        {
          v163 = "unconsumed";
          goto LABEL_370;
        }

        if (HIDWORD(v208) == 286331153)
        {
          v163 = "displayed";
LABEL_370:
          v165 = *v163;
          *buf = 67242496;
          v187 = v159;
          v188 = 2050;
          v189 = a9;
          v190 = 1026;
          v191 = v160;
          v192 = 1026;
          v193 = v144;
          v194 = 1026;
          v195 = v206;
          v196 = 1026;
          v197 = v161;
          v198 = 1026;
          v199 = v207;
          v200 = 1026;
          v201 = v162;
          v202 = 1026;
          v203 = v208;
          v204 = 1026;
          v205 = v165;
          v138 = "ID is queue ID. surfaceID=%{public, name=surfaceID}#x serverSamplingTime=%{public, name=serverSamplingTime}f updateSeed=%{public, name=updateSeed}#x queueGeneration=%{public, name=queueGeneration}u samples=[(%{public, name=sample0Surface}#x, %{public, name=sample0State}c), (%{public, name=sample1Surface}#x, %{public, name=sample1State}c), (%{public, name=sample2Surface}#x, %{public, name=sample2State}c)]";
          goto LABEL_371;
        }
      }

      v163 = "<unknown>";
      goto LABEL_370;
    }

    if (!v172 || !os_signpost_enabled(x_log_get_image_queue(void)::log))
    {
      return v86 != -1;
    }

    if (SHIDWORD(v206) > 572662305)
    {
      if (HIDWORD(v206) != 572662306)
      {
        v142 = v181;
        if (HIDWORD(v206) == 858993459)
        {
          v143 = "flushed";
          goto LABEL_310;
        }

        goto LABEL_302;
      }

      v143 = "consumed";
    }

    else
    {
      if (HIDWORD(v206))
      {
        v142 = v181;
        if (HIDWORD(v206) == 286331153)
        {
          v143 = "displayed";
          goto LABEL_310;
        }

LABEL_302:
        v143 = "<unknown>";
        goto LABEL_310;
      }

      v143 = "unconsumed";
    }

    v142 = v181;
LABEL_310:
    v147 = *(v99 + 56);
    v148 = *(v184 + 272);
    v149 = *v143;
    if (SHIDWORD(v207) > 572662305)
    {
      if (HIDWORD(v207) == 572662306)
      {
        v150 = "consumed";
        goto LABEL_320;
      }

      if (HIDWORD(v207) == 858993459)
      {
        v150 = "flushed";
        goto LABEL_320;
      }
    }

    else
    {
      if (!HIDWORD(v207))
      {
        v150 = "unconsumed";
        goto LABEL_320;
      }

      if (HIDWORD(v207) == 286331153)
      {
        v150 = "displayed";
LABEL_320:
        v151 = *v150;
        *buf = 67241984;
        v187 = v147;
        v188 = 2050;
        v189 = a9;
        v190 = 1026;
        v191 = v148;
        v192 = 1026;
        v193 = v142;
        v194 = 1026;
        v195 = v206;
        v196 = 1026;
        v197 = v149;
        v198 = 1026;
        v199 = v207;
        v200 = 1026;
        v201 = v151;
        v138 = "ID is queue ID. surfaceID=%{public, name=surfaceID}#x serverSamplingTime=%{public, name=serverSamplingTime}f updateSeed=%{public, name=updateSeed}#x queueGeneration=%{public, name=queueGeneration}u samples=[(%{public, name=sample0Surface}#x, %{public, name=sample0State}c), (%{public, name=sample1Surface}#x, %{public, name=sample1State}c)]";
        v139 = v129;
        v140 = v172;
        v141 = 54;
        goto LABEL_372;
      }
    }

    v150 = "<unknown>";
    goto LABEL_320;
  }

  if (v59)
  {
    if (v59 == 1 && v172 && os_signpost_enabled(x_log_get_image_queue(void)::log))
    {
      v130 = *(v99 + 56);
      v131 = *(v184 + 272);
      if (SHIDWORD(v206) <= 572662305)
      {
        if (HIDWORD(v206))
        {
          v132 = v181;
          if (HIDWORD(v206) == 286331153)
          {
            v133 = "displayed";
            goto LABEL_306;
          }

LABEL_301:
          v133 = "<unknown>";
          goto LABEL_306;
        }

        v133 = "unconsumed";
LABEL_305:
        v132 = v181;
        goto LABEL_306;
      }

      if (HIDWORD(v206) == 572662306)
      {
        v133 = "consumed";
        goto LABEL_305;
      }

      v132 = v181;
      if (HIDWORD(v206) != 858993459)
      {
        goto LABEL_301;
      }

      v133 = "flushed";
LABEL_306:
      v146 = *v133;
      *buf = 67241472;
      v187 = v130;
      v188 = 2050;
      v189 = a9;
      v190 = 1026;
      v191 = v131;
      v192 = 1026;
      v193 = v132;
      v194 = 1026;
      v195 = v206;
      v196 = 1026;
      v197 = v146;
      v138 = "ID is queue ID. surfaceID=%{public, name=surfaceID}#x serverSamplingTime=%{public, name=serverSamplingTime}f updateSeed=%{public, name=updateSeed}#x queueGeneration=%{public, name=queueGeneration}u samples=[(%{public, name=sample0Surface}#x, %{public, name=sample0State}c)]";
      v139 = v129;
      v140 = v172;
      v141 = 42;
LABEL_372:
      _os_signpost_emit_with_name_impl(&dword_183AA6000, v139, OS_SIGNPOST_EVENT, v140, "ImageQueueSample", v138, buf, v141);
    }
  }

  else if (v172 && os_signpost_enabled(x_log_get_image_queue(void)::log))
  {
    v136 = *(v99 + 56);
    v137 = *(v184 + 272);
    *buf = 67240960;
    v187 = v136;
    v188 = 2050;
    v189 = a9;
    v190 = 1026;
    v191 = v137;
    v192 = 1026;
    v193 = v181;
    v138 = "ID is queue ID. surfaceID=%{public, name=surfaceID}#x serverSamplingTime=%{public, name=serverSamplingTime}f updateSeed=%{public, name=updateSeed}#x queueGeneration=%{public, name=queueGeneration}u samples=none";
    v139 = v129;
    v140 = v172;
    v141 = 30;
    goto LABEL_372;
  }

  return v86 != -1;
}

void CAShmemImageQueueUpdate(uint64_t a1, int a2, int a3, unint64_t a4, void *a5, unint64_t a6, int a7, uint64_t a8, float a9, double a10)
{
  v12 = a10;
  v52[1] = *MEMORY[0x1E69E9840];
  v50 = a2;
  LODWORD(v51) = a7;
  if (!a6)
  {
    v19 = CAHostTimeWithTime(a10);
    goto LABEL_7;
  }

  v18 = *(a6 + 64);
  if ((v18 & 2) == 0)
  {
    v19 = CAHostTimeWithTime(a10);
    if ((v18 & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v20 = 0.0166666667;
    goto LABEL_9;
  }

  v19 = *(a6 + 16);
  if ((v18 & 8) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v20 = *(a6 + 32) / *(a6 + 4);
LABEL_9:
  v21 = CAHostTimeWithTime(v20);
  v22 = v21;
  if (a5)
  {
    v49 = v19;
    v23 = a8;
    v24 = a4;
    v25 = -1;
    v26 = a5;
    do
    {
      v27 = v25;
      v26 = v26[1];
      ++v25;
    }

    while (v26);
    v28 = v27 + 2;
    if (v27 == -2)
    {
      v30 = 0;
    }

    else
    {
      if (8 * v28 > 0x1000)
      {
        v30 = malloc_type_malloc(8 * v28, 0x2004093837F09uLL);
        if (!v30)
        {
          return;
        }
      }

      else
      {
        MEMORY[0x1EEE9AC00](v21);
        v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v30, v29);
      }

      do
      {
        *&v30[8 * v25] = *a5;
        a5 = a5[1];
        --v25;
      }

      while (v25 != -1);
    }

    a4 = v24;
    a8 = v23;
    v19 = v49;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = v50;
  v49 = a6;
  v52[0] = 0.0;
  atomic_fetch_add(a1, 1u);
  __dmb(0xBu);
  *(a1 + 20) = v31;
  if (*(a1 + 24) != a3)
  {
    *(a1 + 24) = a3;
    v32 = atomic_load((a1 + 8));
    if ((v32 & 0x20000000000000) != 0)
    {
      if (a8)
      {
        v33 = *(a1 + 56);
        if (v33)
        {
          CA::MachPortUtil::call_with_timeout<int (*)(unsigned int,unsigned int,unsigned int),unsigned int>(a8, 0, "IQDidChangeDisplay", _CACImageQueueDidChangeDisplay, v33);
        }
      }
    }
  }

  atomic_store(a4, (a1 + 104));
  v34 = 0;
  *(a1 + 112) = mach_absolute_time();
  if ((v51 & 0x10) != 0)
  {
    v35 = 0;
  }

  else
  {
    v35 = v22;
  }

  if ((v51 & 0x10) == 0)
  {
    v12 = v20 + v12;
  }

  v36 = v35 + v19;
  v51 = a1;
  v37 = a1 + 336;
  do
  {
    if (v28 != 1 || (v38 = *v30, v39 = *(*v30 + 48) + (v12 - *(*v30 + 40)) * *(*v30 + 16), v52[0] = v39, v39 < 0.0) || v39 >= *(v38 + 32))
    {
      v52[0] = v12;
      v40 = v12 < 0.0 || v28 == 0;
      v39 = v12;
      if (!v40)
      {
        v41 = v30;
        v42 = 1;
        while ((CA::Render::Timing::map_time(*v41, v52, 0) & 1) != 0)
        {
          v39 = v52[0];
          v43 = v52[0] < 0.0 || v42++ >= v28;
          ++v41;
          if (v43)
          {
            goto LABEL_47;
          }
        }

        v52[0] = -1.0;
        v39 = -1.0;
      }
    }

LABEL_47:
    v44 = v37 + 24 * v34;
    *(v44 + 8) = v39;
    *v44 = v36;
    *(v44 + 16) = a9;
    ++v34;
    v12 = v12 + v20;
    v36 += v22;
  }

  while (v34 != 4);
  v45 = v51;
  *(v51 + 60) = 4;
  v46 = v49;
  if (v49)
  {
    *(v45 + 296) = *(v49 + 4);
    v47 = v46[8];
    if (v47)
    {
      *(v45 + 280) = v46[1];
      if ((v47 & 8) == 0)
      {
LABEL_51:
        if ((v47 & 0x10) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }
    }

    else if ((v47 & 8) == 0)
    {
      goto LABEL_51;
    }

    *(v45 + 288) = v46[4];
    if ((v47 & 0x10) != 0)
    {
LABEL_52:
      *(v45 + 272) = v46[3];
    }
  }

LABEL_53:
  __dmb(0xBu);
  atomic_fetch_add((v45 + 4), 1u);
  if (8 * v28 > 0x1000)
  {
    if (v30)
    {
      free(v30);
    }
  }
}

uint64_t update_image_sample(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = result;
  *(a3 + 60) = 286331153;
  v8 = *(a4 + 272);
  v9 = *(a3 + 84);
  *(a3 + 84) = v9 + 1;
  *(a3 + 88) = v8;
  if (!v9)
  {
    v12 = *(a3 + 56);
    if (v12)
    {
      v13 = IOSurfaceLookup(v12);
      if (v13)
      {
        v14 = v13;
        IOSurfaceInitDetachModeCode();
        IOSurfaceSetDetachModeCode();
        CFRelease(v14);
      }

      *(a3 + 123) = 0;
      v8 = *(a4 + 272);
    }

    *(a3 + 16) = a5;
    *(a3 + 92) = v8;
    *(a2 + 40) = *(a3 + 100);
    *(a2 + 136) = *a3;
    v15 = *(a4 + 80);
    *(a2 + 144) = v15;
    v16 = *(a4 + 168);
    if (v16)
    {
      result = *(v16 + 16);
    }

    else
    {
      result = CAHostTimeWithTime(v15);
    }

    *(a3 + 24) = result;
    *(a3 + 32) = *(a4 + 120);
    v17 = atomic_load((a2 + 8));
    if (v17 < 0 && v7)
    {
      v18 = *(a4 + 968);
      if (!v18)
      {
        goto LABEL_19;
      }

      v19 = a4 + 968;
      do
      {
        v20 = *(v18 + 32);
        v21 = v20 >= v7;
        v22 = v20 < v7;
        if (v21)
        {
          v19 = v18;
        }

        v18 = *(v18 + 8 * v22);
      }

      while (v18);
      if (v19 == a4 + 968 || *(v19 + 32) > v7)
      {
LABEL_19:
        result = std::__tree<CA::Render::Object *>::__emplace_unique_key_args<CA::Render::Object *,CA::Render::Object * const&>(a4 + 960, v7);
        if (!atomic_fetch_add((v7 + 8), 1u))
        {
          atomic_fetch_add((v7 + 8), 0xFFFFFFFF);
        }
      }
    }
  }

  v23 = atomic_load((a2 + 8));
  if ((v23 & 0x2000000000000000) != 0 && v7)
  {
    result = *(a4 + 888);
    if (!result)
    {
      operator new();
    }

    v24 = *(result + 8);
    if (!v24)
    {
      goto LABEL_34;
    }

    v25 = result + 8;
    do
    {
      v26 = *(v24 + 32);
      v21 = v26 >= v7;
      v27 = v26 < v7;
      if (v21)
      {
        v25 = v24;
      }

      v24 = *(v24 + 8 * v27);
    }

    while (v24);
    if (v25 == result + 8 || *(v25 + 32) > v7)
    {
LABEL_34:
      result = std::__tree<CA::Render::Object *>::__emplace_unique_key_args<CA::Render::Object *,CA::Render::Object * const&>(result, v7);
      if (!atomic_fetch_add((v7 + 8), 1u))
      {
        atomic_fetch_add((v7 + 8), 0xFFFFFFFF);
      }
    }
  }

  return result;
}

uint64_t std::__tree<CA::Render::Object *>::__emplace_unique_key_args<CA::Render::Object *,CA::Render::Object * const&>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void CA::Render::update_texture_flags(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v8 = atomic_load((a2 + 8));
  if ((a3 & 1) != 0 || (*(*a1 + 120))(a1))
  {
    v9 = 16;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3 & 8 | (((v8 >> 3) & 1) << 6) & 0xFFFFFEFF | (32 * ((v8 >> 4) & 1)) & 0xFFFFFEFF | (((v8 >> 6) & 1) << 8) | (v8 >> 1) & 0x200 | v9;
  if ((v8 & 0x2000) != 0)
  {
    v11 = v10 | 0x800;
  }

  else
  {
    if (CADeviceSupportsASTC::once != -1)
    {
      dispatch_once(&CADeviceSupportsASTC::once, &__block_literal_global_193);
    }

    if (CADeviceSupportsASTC::supports_astc)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 | 0x800;
    }
  }

  v12 = a4 & 7 | (((a4 >> 3) & 1) << 13) | v11;
  v13 = *(a1 + 12);
  if (((v13 >> 8) & 0x97F) != v12)
  {
    v13 = v13 & 0xFFF680FF | (v12 << 8);
    *(a1 + 12) = v13;
  }

  if ((v8 & 0x1000000000000) != 0 && v13 == 57)
  {
    if ((v8 & 0x40000000000000) != 0)
    {
      v14 = 655360;
    }

    else
    {
      v13 &= 0xF7FFFF39;
      v14 = 0x20000;
    }

    v13 |= (v14 | (a3 >> 9) & 0x40000) << 8;
    *(a1 + 12) = v13;
  }

  if ((a3 & 0x2000000) != 0 || (v15 = atomic_load((a2 + 8)), v13 = *(a1 + 12), (v15 & 0x20000000000000) != 0))
  {
    v13 |= 0x10000000u;
    *(a1 + 12) = v13;
  }

  if (v13 == 57)
  {
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    v16 = *&dword_1ED4E96D0;
    if (!*&dword_1ED4E96D0)
    {
      LOBYTE(v16) = *(a2 + 94);
    }

    *(a1 + 360) = v16;
  }
}

void CARecordCurrentDisplay::CARecordCurrentDisplay(CARecordCurrentDisplay *this, int a2)
{
  *this = a2;
  if (CARecordCurrentDisplayPush::once[0] != -1)
  {
    dispatch_once(CARecordCurrentDisplayPush::once, &__block_literal_global_377);
  }

  v3 = pthread_getspecific(current_display_slot);
  if (!v3)
  {
    operator new();
  }

  v4 = *v3;
  if (v4 <= 2)
  {
    v3[v4 + 1] = a2;
  }

  *v3 = v4 + 1;
}

uint64_t CA::CAPSEProcessor::needs_processing(CA::CAPSEProcessor *this)
{
  if (CA::CAPSEProcessor::needs_processing(void)::once != -1)
  {
    dispatch_once(&CA::CAPSEProcessor::needs_processing(void)::once, &__block_literal_global_10405);
  }

  if (CA::CAPSEProcessor::needs_processing(void)::has_class != 1)
  {
    return 0;
  }

  v2 = MEMORY[0x1E69C49D0];

  return [v2 needsProcessing];
}

double CA::CAWorkInterval::release_workgroup(CA::CAWorkInterval *this)
{
  v3 = (this + 48);
  v2 = *(this + 6);
  if (v2)
  {
    os_workgroup_leave(v2, (this + 56));
    os_release(*(this + 6));
    result = 0.0;
    v3[1] = 0u;
    v3[2] = 0u;
    *v3 = 0u;
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::protection_options(CA::WindowServer::IOMFBDisplay *this)
{
  if ((*(this + 336) & 0x1C00) == 0x800)
  {
    goto LABEL_5;
  }

  if (CADeviceIsVirtualized::once[0] != -1)
  {
    dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
  }

  if (CADeviceIsVirtualized::is_virtualized == 1)
  {
LABEL_5:
    IOMobileFramebufferGetProtectionOptions();
    return 0;
  }

  else if ((*(this + 336) & 0x1C00) != 0)
  {
    for (i = 5; ; --i)
    {
      ProtectionOptions = IOMobileFramebufferGetProtectionOptions();
      if (!ProtectionOptions || i == 0)
      {
        break;
      }

      usleep(0x186A0u);
    }

    if (ProtectionOptions)
    {
      if (CADeviceSupportsUniversalCompression::once != -1)
      {
        dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
      }

      if (CADeviceSupportsUniversalCompression::universal)
      {
        return 7;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return (*(this + 336) & 0x1C00) == 1024;
    }
  }

  else
  {
    return 7;
  }
}

BOOL CA::WindowServer::IOMFBDisplay::needs_visible_shape_tracking(CA::WindowServer::IOMFBDisplay *this)
{
  pthread_mutex_lock((this + 25848));
  v2 = this + 48 * *(this + 6459);
  v4 = *(v2 + 3241) && (v3 = *(v2 + 3240)) != 0 && (*(v3 + 68) & 4) == 0;
  pthread_mutex_unlock((this + 25848));
  return v4;
}

void *CA::WindowServer::IOMFBDisplay::begin_work_interval(void *this, double a2, double a3, uint64_t a4, int a5, int a6)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = this[3208];
  if (v6)
  {
    v8 = this;
    *(v6 + 8) = a4;
    v9 = CA::WindowServer::IOMFBDisplay::work_interval_deadline(this, a2, a3, a5);
    v10 = v8[3208];
    *(v10 + 16) = v9;
    v11 = *(v8 + 6);
    if (v11 >= 9)
    {
      LOBYTE(v11) = 9;
    }

    *v10 = (((1 << (v11 - 1)) & 0x1FFLL) << 49) | a6;
    if (CADeviceSupportsWorkgroupIntervals::once != -1)
    {
      dispatch_once(&CADeviceSupportsWorkgroupIntervals::once, &__block_literal_global_503);
    }

    if (CADeviceSupportsWorkgroupIntervals::b == 1)
    {
      if (initialized[0] != -1)
      {
        dispatch_once_f(initialized, 0, init_debug);
      }

      v12 = byte_1ED4E98A9 ^ 1;
    }

    else
    {
      v12 = 0;
    }

    *(v10 + 96) = *(v10 + 96) & 0xFE | v12 & 1;
    mach_absolute_time();
    if (*(v10 + 96))
    {
      CA::CAWorkInterval::release_work_interval(v10);
      if (!*(v10 + 48))
      {
        memset(&data[4], 0, 60);
        *data = 799564724;
        os_workgroup_attr_set_interval_type();
        v13 = os_workgroup_interval_create_with_workload_id();
        *(v10 + 48) = v13;
        if (!v13)
        {
          __assert_rtn("create_workgroup", "CAWorkInterval.cpp", 47, "_workgroup_interval != nullptr");
        }

        if (os_workgroup_join(v13, (v10 + 56)))
        {
          __assert_rtn("create_workgroup", "CAWorkInterval.cpp", 50, "ret == 0");
        }
      }

      memset(&data[4], 0, 56);
      *data = 1386695757;
      os_workgroup_interval_data_set_complexity();
      os_workgroup_interval_start(*(v10 + 48), *(v10 + 8), *(v10 + 16), data);
    }

    else
    {
      CA::CAWorkInterval::release_workgroup(v10);
      if (!*(v10 + 40))
      {
        if (work_interval_create() == -1)
        {
          this = *(v10 + 40);
          if (!this)
          {
            return this;
          }
        }

        else
        {
          this = work_interval_instance_alloc();
          *(v10 + 40) = this;
          if (!this)
          {
            return this;
          }
        }
      }

      work_interval_instance_clear();
      work_interval_instance_set_start();
      work_interval_instance_set_deadline();
      work_interval_instance_set_complexity();
      work_interval_instance_start();
    }

    return kdebug_trace();
  }

  return this;
}

double CA::WindowServer::IOMFBDisplay::dynamic_refresh_rate(CA::WindowServer::IOMFBDisplay *this)
{
  v2 = *this;
  if ((*(this + 160) & 0x100) != 0)
  {
    v5 = (*(v2 + 144))(this);
    if (!v5)
    {
      v5 = (*(*this + 800))(this);
    }

    return (*(*this + 776))(this) * v5;
  }

  else
  {
    v3 = *(v2 + 760);

    v3();
  }

  return result;
}

__n128 CA::WindowServer::IOMFBDisplay::accessibility_display_bounds@<Q0>(CA::WindowServer::IOMFBDisplay *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 27176);
  *a2 = result;
  return result;
}

uint64_t CA::WindowServer::AppleInternalDisplay::tracks_velocity(CA::WindowServer::AppleInternalDisplay *this)
{
  if (byte_1ED4E9851)
  {
    return 0;
  }

  else
  {
    return (*(this + 160) >> 8) & 1;
  }
}

uint64_t CA::WindowServer::Display::display_attributes(CA::WindowServer::Display *this, uint64_t *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 12) = xmmword_183E20F10;
  *(this + 7) = 1065353216;
  *(this + 40) = xmmword_183E20F20;
  *(this + 7) = 0;
  *(this + 63) = 0;
  *(this + 68) = 0x100000001;
  *(this + 76) = 0u;
  v4 = this + 76;
  *(this + 92) = 0u;
  *(this + 108) = 0;
  *(this + 28) = 1065353216;
  *(this + 124) = 0;
  *(this + 116) = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  (*(*a2 + 1216))(&v37, a2);
  *this = v37;
  *(this + 2) = v39;
  *(this + 33) = (*(*a2 + 1232))(a2);
  v5 = (*(a2 + 336) >> 10) & 7;
  *(this + 61) = v5 == 2;
  if (v5 == 2)
  {
    is_hdr = CA::WindowServer::Display::Mode::is_hdr((a2 + 82));
    v7 = 100.0;
    if (is_hdr)
    {
      v7 = 1000.0;
    }

    *(this + 1) = v7;
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v8 = *&dword_1ED4E968C;
  if (*&dword_1ED4E968C == 0.0)
  {
    v9 = a2[88];
    if (v9)
    {
      v10 = atomic_load(v9);
      v8 = *&v10;
    }

    else
    {
      v8 = 1.0;
    }
  }

  *(this + 5) = v8;
  *(this + 7) = (*(*a2 + 1096))(a2);
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v11 = dword_1ED4E96B4;
  if (*&dword_1ED4E96B4 != 0.0 || (v11 = v38, *&v38 > 0.0))
  {
    *(this + 3) = v11;
  }

  v12 = *&dword_1ED4E96B8;
  v13 = *a2;
  if (*&dword_1ED4E96B8 == 0.0)
  {
    v12 = *(&v38 + 1);
  }

  *(this + 4) = v12;
  *(this + 8) = (*(v13 + 1304))(a2);
  *(this + 5) = (*(*a2 + 24))(a2);
  *(this + 6) = (*(*a2 + 32))(a2);
  *(this + 56) = (*(*a2 + 1264))(a2);
  *(this + 57) = (*(*a2 + 1272))(a2) > 0.0;
  v14 = *(a2 + 226);
  *(this + 59) = (v14 & 0x1000) != 0;
  *(this + 64) = (*(*a2 + 1896))(a2) & (*(a2 + 25562) ^ 1);
  *(this + 65) = (*(*a2 + 1952))(a2);
  v15 = CA::WindowServer::Display::Mode::hdr_type(a2[82]);
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      if ((v14 & 0x1000) != 0)
      {
        v17 = 5;
      }

      else
      {
        v17 = 2;
      }
    }

    else if (v15 == 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = 3;
    }

    *(this + 17) = v17;
    goto LABEL_41;
  }

  if (v15 == 1)
  {
    v16.n128_u32[1] = 2;
    *(this + 68) = 0x200000001;
    goto LABEL_41;
  }

  v18 = a2[88];
  if (!v18)
  {
    v20 = v5 == 0;
LABEL_34:
    v21 = 0;
    goto LABEL_35;
  }

  v19 = COERCE_FLOAT(atomic_load((v18 + 4)));
  v20 = v5 == 0;
  if (v5 || v19 <= 8.0)
  {
    goto LABEL_34;
  }

  v20 = 1;
  v21 = 6;
LABEL_35:
  *(this + 17) = v21;
  if (CADeviceHasHeadroomDependentGamma::once != -1)
  {
    dispatch_once(&CADeviceHasHeadroomDependentGamma::once, &__block_literal_global_150);
  }

  if ((v20 & CADeviceHasHeadroomDependentGamma::supports_hdr_gamma) == 1)
  {
    v22 = 3;
  }

  else
  {
    v22 = 2;
  }

  *(this + 18) = v22;
LABEL_41:
  if (CADeviceIsVirtualized::once[0] != -1)
  {
    dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
  }

  if (CADeviceIsVirtualized::is_virtualized == 1 && CA::WindowServer::Display::Mode::hdr_type(a2[82]) == 3)
  {
    *(this + 68) = 0x100000005;
    *this = 0x447A000000000000;
    v16 = xmmword_183E211B0;
    *(this + 12) = xmmword_183E211B0;
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v16.n128_u32[0] = dword_1ED4E96D4;
  if (*&dword_1ED4E96D4 != 0.0)
  {
    v23 = *(this + 3);
    v24 = *(this + 5);
    if (*&dword_1ED4E96D4 >= v24)
    {
      v16.n128_u32[0] = *(this + 5);
    }

    *(this + 5) = v16.n128_u32[0];
    v16.n128_f32[0] = (v16.n128_f32[0] * v23) / v24;
    *(this + 3) = v16.n128_u32[0];
  }

  v25 = *(a2 + 226);
  *(this + 62) = (v25 & 0x20000) != 0;
  if ((v25 & 0x20000) != 0)
  {
    *(this + 18) = 1;
  }

  (*(*a2 + 1368))(v40, a2, v16);
  v26 = v40[1];
  *v4 = v40[0];
  *(v4 + 1) = v26;
  v4[32] = v41;
  v27 = (*(*a2 + 1240))(a2);
  if (v27)
  {
    v28 = *(this + 3);
    v29 = *v27;
    v30 = **v27;
    v31 = 1.0;
    if (v30 < v28)
    {
      v32 = *(v27 + 32);
      if (v29[v32 - 1] <= v28)
      {
        v31 = *(*(v27 + 8) + 4 * (v32 - 1));
      }

      else if (*(v27 + 44) == v28)
      {
        v31 = *(v27 + 40);
      }

      else
      {
        if (v32 < 2)
        {
LABEL_64:
          v34 = 0;
          v33 = 1;
        }

        else
        {
          v33 = 1;
          while (v29[v33] < v28)
          {
            if (v32 == ++v33)
            {
              goto LABEL_64;
            }
          }

          v34 = v33 - 1;
          v30 = v29[v33 - 1];
        }

        v31 = (((*(*(v27 + 8) + 4 * v33) - *(*(v27 + 8) + 4 * v34)) * (v28 - v30)) / (v29[v33] - v30)) + *(*(v27 + 8) + 4 * v34);
        *(v27 + 40) = v31;
        *(v27 + 44) = v28;
        v30 = *v29;
      }
    }

    *(this + 28) = v31;
    *&v35 = *(v27 + 16);
    DWORD2(v35) = *(v27 + 24);
    *(&v35 + 3) = v30;
    *(this + 116) = v35;
  }

  result = (*(*a2 + 80))(a2);
  *(this + 63) = result;
  return result;
}

uint64_t CA::WindowServer::Display::reconciled_display_attributes(CA::WindowServer::Display *this, uint64_t a2)
{
  *(this + 16) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  result = CA::WindowServer::Display::display_attributes(this, a2);
  if ((*(a2 + 640) & 4) != 0 && (*(a2 + 906) & 2) == 0 && (byte_1ED4E9864 & 1) == 0)
  {
    result = CA::WindowServer::Display::all_clones_are_screen_recording(a2);
    if ((result & 1) == 0)
    {
      *(this + 17) = 1;
      *(this + 58) = 1;
      *(this + 5) = 1065353216;
    }
  }

  return result;
}

__n128 CA::WindowServer::IOMFBDisplay::luminance@<Q0>(CA::WindowServer::IOMFBDisplay *this@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u64[0] = *(this + 3317);
  result = *(this + 26520);
  *a2 = result;
  return result;
}

BOOL CA::Render::DisplayAttributes::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24) || *(a1 + 28) != *(a2 + 28) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56) || *(a1 + 57) != *(a2 + 57) || *(a1 + 58) != *(a2 + 58) || *(a1 + 59) != *(a2 + 59) || *(a1 + 60) != *(a2 + 60) || *(a1 + 61) != *(a2 + 61) || *(a1 + 62) != *(a2 + 62))
  {
    return 0;
  }

  if (*(a1 + 68) != *(a2 + 68) || *(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  result = CA::Render::Chromaticity::operator==(a1 + 76, a2 + 76);
  if (!result)
  {
    return result;
  }

  return *(a1 + 112) == *(a2 + 112) && *(a1 + 116) == *(a2 + 116) && *(a1 + 120) == *(a2 + 120) && *(a1 + 124) == *(a2 + 124) && *(a1 + 128) == *(a2 + 128) && *(a1 + 132) == *(a2 + 132);
}

CA::Render::Fence::BatchWaitLock *CA::Render::Fence::BatchWaitLock::BatchWaitLock(CA::Render::Fence::BatchWaitLock *this)
{
  *this = 0;
  *(this + 8) = 0;
  pthread_mutex_lock(&CA::Render::Fence::_bwait_mutex);
  v2 = pthread_self();
  if (pthread_threadid_np(v2, this))
  {
    __assert_rtn("BatchWaitLock", "render-fence.cpp", 1914, "r == noErr");
  }

  v3 = *this;
  if (!*this)
  {
    __assert_rtn("BatchWaitLock", "render-fence.cpp", 1915, "_tid != 0");
  }

  while (1)
  {
    if (CA::Render::Fence::_bwait_writer_active)
    {
      goto LABEL_7;
    }

    v4 = CA::Render::Fence::_bwait_readers_by_tid;
    if (CA::Render::Fence::_bwait_writer_pending != 1)
    {
      break;
    }

    if (CA::Render::Fence::_bwait_readers_by_tid && std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(CA::Render::Fence::_bwait_readers_by_tid, v3))
    {
      goto LABEL_10;
    }

LABEL_7:
    pthread_cond_wait(&CA::Render::Fence::_bwait_cond_reader, &CA::Render::Fence::_bwait_mutex);
    v3 = *this;
  }

  if (!CA::Render::Fence::_bwait_readers_by_tid)
  {
    operator new();
  }

LABEL_10:
  v5 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(v4, v3);
  if (v5)
  {
    v6 = *(v5 + 6);
    if (v6 == -1)
    {
      __assert_rtn("BatchWaitLock", "render-fence.cpp", 1927, "ri->second < UINT32_MAX");
    }

    v7 = v6 + 1;
  }

  else
  {
    v7 = 1;
  }

  *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v4, v3) + 6) = v7;
  pthread_mutex_unlock(&CA::Render::Fence::_bwait_mutex);
  return this;
}

__n128 CA::WindowServer::IOMFBDisplay::chromaticity@<Q0>(CA::WindowServer::IOMFBDisplay *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 26548);
  v3 = *(this + 26564);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(this + 6645);
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

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
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

BOOL CA::Shape::equal(uint64_t this, const CA::Bounds *a2)
{
  if (this)
  {
    if (this == 1)
    {
      goto LABEL_7;
    }

    v3 = this >> 48;
    v4 = this << 16 >> 48;
    v5 = this >> 17;
    v6 = (this >> 2) & 0x7FFF;
  }

  else
  {
    v2 = *(this + 4);
    if (v2 != 12)
    {
      if (v2 != 6)
      {
        return 0;
      }

LABEL_7:
      v7 = *(a2 + 2);
      if (v7 >= *(a2 + 3))
      {
        v7 = *(a2 + 3);
      }

      return v7 < 1;
    }

    LODWORD(v4) = *(this + 20);
    LODWORD(v3) = *(this + 28);
    v5 = *(this + 32) - v3;
    v6 = *(this + 36) - v4;
  }

  if (*a2 != v3 || *(a2 + 1) != v4 || *(a2 + 2) != v5)
  {
    return 0;
  }

  return *(a2 + 3) == v6;
}

CALayer *CA::Layer::mask(CA::Layer *this)
{
  v2 = *(this + 1) & 0x60000;
  if (!v2)
  {
    return *(this + 4);
  }

  v3 = CA::Transaction::ensure_compat(this);
  result = CA::Layer::model_layer(this, v3);
  if (result)
  {
    result = *&result->_wantsDynamicContentScaling;
    if (v2 == 0x20000 && result != 0)
    {
      layer = result->_attr.layer;

      return CA::Layer::presentation_layer(layer, v3);
    }
  }

  return result;
}

char *CALayerArrayRemoveValue(char *result, uint64_t a2)
{
  v2 = result + 8;
  if (result[40] == 1)
  {
    abort();
  }

  v3 = *(result + 2);
  if (v3 + ~a2)
  {
    result = memmove((*v2 + 8 * a2), (*v2 + 8 * a2 + 8), 8 * (v3 + ~a2));
    v3 = v2[1];
  }

  v2[1] = v3 - 1;
  ++v2[3];
  return result;
}

uint64_t CA::Render::Layer::gravity_from_string(const __CFString *this, const __CFString *a2)
{
  if (this == @"resize")
  {
    return 9;
  }

  v2 = CAInternAtom(this, 0);
  if (v2 == 712)
  {
    v3 = 5;
  }

  else
  {
    v3 = v2 == 711;
  }

  if (v2 == 713)
  {
    v4 = 6;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 611)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (v2 == 608)
  {
    v6 = 11;
  }

  else
  {
    v6 = v5;
  }

  if (v2 == 607)
  {
    v7 = 10;
  }

  else
  {
    v7 = v6;
  }

  if (v2 <= 710)
  {
    v4 = v7;
  }

  if (v2 == 606)
  {
    v8 = 9;
  }

  else
  {
    v8 = 0;
  }

  if (v2 == 469)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  if (v2 == 81)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  if (v2 == 80)
  {
    v11 = 7;
  }

  else
  {
    v11 = 0;
  }

  if (v2 == 79)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11;
  }

  if (v2 <= 80)
  {
    v10 = v12;
  }

  if (v2 <= 606)
  {
    return v10;
  }

  else
  {
    return v4;
  }
}

CFTimeInterval CACurrentMediaTime(void)
{
  v0 = mach_absolute_time();

  return CATimeWithHostTime(v0);
}

void CA::Layer::set_commit_needed(CA::Layer *this, CA::Transaction *a2, int a3)
{
  if ((*(this + 1) & 0x60000) == 0)
  {
    v6 = *(a2 + 29);
    *(a2 + 29) = v6 + 1;
    if (!v6)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    if (a3)
    {
      v7 = 1032;
    }

    else
    {
      v7 = 8;
    }

    *(this + 10) |= a3 & 0xFFFFFFFE;
    CA::Layer::mark(this, a2, v7, 16);

    CA::Transaction::unlock(a2);
  }
}

int *CA::Layer::retain_context(CA::Layer *this)
{
  if ((*(this + 55) & 0x10) == 0)
  {
    return 0;
  }

  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(this);
  }

  v3 = CA::Layer::ancestor_context_id(this, v2);
  if (!v3)
  {
    return 0;
  }

  return CA::Context::retain_context_with_id(v3);
}

void CA_CFDictionarySetLongLong(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = a3;
  v5 = CFNumberCreate(0, kCFNumberLongLongType, v6);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void ___ZL18shared_server_initPv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = [a4 state];
  v5 = [v4 taskState];
  if (v5 == 4)
  {
    if ([objc_msgSend(v4 "endowmentNamespaces")])
    {
      CA::Render::post_notification(0x2Au, 0, 0, 0);
    }
  }

  else if ((v5 - 3) > 1)
  {
    return;
  }

  CA::Render::post_notification(0x2Bu, 0, 0, 0);

  CA::Render::post_notification(0x2Du, 0, 0, 0);
}

uint64_t CA::WindowServer::IOMFBServer::post_max_rate_power_log(CA::WindowServer::IOMFBServer *this, CA::Render::Object *a2, void *a3, void *a4)
{
  pthread_mutex_lock((a2 + 856));
  v5 = *(a2 + 12);
  v6 = mach_absolute_time();
  v7 = 0;
  v8 = v5 + 25616;
  while (!*(v8 + v7))
  {
    v7 += 4;
    if (v7 == 40)
    {
      goto LABEL_9;
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CA_CFDictionarySetLongLong(Mutable, @"mach_absolute_time", v6);
  for (i = 0; i != 10; ++i)
  {
    CA_CFDictionarySetInt(Mutable, CA::WindowServer::power_log_dr_keys[i], *(v8 + 4 * i));
    *(v8 + 4 * i) = 0;
  }

  PLLogTimeSensitiveRegisteredEvent();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_9:

  return pthread_mutex_unlock((a2 + 856));
}

void CA_CFDictionarySetInt(__CFDictionary *a1, const void *a2, int a3)
{
  v7 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t CA::WindowServer::IOMFBServer::post_frame_rate_power_log(CA::WindowServer::IOMFBServer *this, CA::Render::Object *a2, void *a3, void *a4)
{
  pthread_mutex_lock((a2 + 856));
  v5 = *(a2 + 12);
  if ((*(v5 + 640) & 0x100) != 0)
  {
    os_unfair_lock_lock((v5 + 28328));
    if (*(v5 + 28360) && (v6 = mach_absolute_time(), v7 = CATimeWithHostTime(v6), v7 - *(v5 + 28376) >= 1.0))
    {
      *(v5 + 28376) = v7;
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v9 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v10 = *(v5 + 28352);
      if (v10)
      {
        v11 = MEMORY[0x1E695E9C0];
        do
        {
          v12 = CFArrayCreateMutable(0, 0, v11);
          CA_CFArrayAppendInt(v12, *(v10 + 4));
          CA_CFArrayAppendInt(v12, *(v10 + 8));
          CA_CFArrayAppendInt(v12, *(v10 + 7));
          CA_CFArrayAppendInt(v12, *(v10 + 6));
          CA_CFArrayAppendInt(v12, *(v10 + 5));
          CA_CFArrayAppendInt(v12, *(v10 + 9));
          CFArrayAppendValue(v9, v12);
          if (v12)
          {
            CFRelease(v12);
          }

          v10 = *v10;
        }

        while (v10);
      }

      CFDictionarySetValue(Mutable, @"data", v9);
      if (*(v5 + 28360))
      {
        v13 = *(v5 + 28352);
        if (v13)
        {
          do
          {
            v14 = *v13;
            operator delete(v13);
            v13 = v14;
          }

          while (v14);
        }

        *(v5 + 28352) = 0;
        v15 = *(v5 + 28344);
        if (v15)
        {
          for (i = 0; i != v15; ++i)
          {
            *(*(v5 + 28336) + 8 * i) = 0;
          }
        }

        *(v5 + 28360) = 0;
      }

      if (v9)
      {
        CFRelease(v9);
      }

      os_unfair_lock_unlock((v5 + 28328));
      if (CA::WindowServer::IOMFBDisplay::post_frame_rate_power_log(void)::once[0] != -1)
      {
        dispatch_once(CA::WindowServer::IOMFBDisplay::post_frame_rate_power_log(void)::once, &__block_literal_global_408);
      }

      if (CA::WindowServer::IOMFBDisplay::post_frame_rate_power_log(void)::frame_count_id)
      {
        pps_send_telemetry();
      }

      PLLogTimeSensitiveRegisteredEvent();
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      os_unfair_lock_unlock((v5 + 28328));
    }
  }

  return pthread_mutex_unlock((a2 + 856));
}

void CA_CFArrayAppendInt(__CFArray *a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFArrayAppendValue(a1, v3);
  CFRelease(v3);
}

uint64_t CA::WindowServer::IOMFBServer::post_render_statistics_power_log(CA::WindowServer::IOMFBServer *this, CA::Render::Object *a2, void *a3, void *a4)
{
  v4 = a2;
  pthread_mutex_lock((a2 + 856));
  v5 = *(v4 + 12);
  os_unfair_lock_lock((v5 + 28392));
  if (*(v5 + 28396) == 1)
  {
    v29 = v4;
    v6 = clock_gettime_nsec_np(_CLOCK_REALTIME);
    v7 = (v5 + 28400);
    v8 = MEMORY[0x1E695E9D8];
    v9 = MEMORY[0x1E695E9E8];
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = CFDictionaryCreateMutable(0, 0, v8, v9);
    v12 = CFDictionaryCreateMutable(0, 0, v8, v9);
    v13 = v8;
    v14 = v6;
    v27 = CFDictionaryCreateMutable(0, 0, v13, v9);
    CA_CFDictionarySetInt(Mutable, @"bucket_size", 10);
    CA_CFDictionarySetInt(Mutable, @"bucket_count", 10);
    CA_CFDictionarySetLongLong(Mutable, @"start_time", *(v5 + 28456));
    CA_CFDictionarySetLongLong(Mutable, @"end_time", v6);
    v15 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    for (i = 0; i != 40; i += 4)
    {
      CA_CFArrayAppendInt(v15, *(v7 + i));
    }

    v17 = (v5 + 28464);
    CFDictionarySetValue(Mutable, @"data", v15);
    *(v5 + 28432) = 0;
    *v7 = 0u;
    *(v5 + 28416) = 0u;
    CA_CFDictionarySetInt(v11, @"bucket_size", 200);
    CA_CFDictionarySetInt(v11, @"bucket_count", 10);
    CA_CFDictionarySetLongLong(v11, @"start_time", *(v5 + 28504));
    CA_CFDictionarySetLongLong(v11, @"end_time", v14);
    v18 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    for (j = 0; j != 40; j += 4)
    {
      CA_CFArrayAppendInt(v18, *(v17 + j));
    }

    v28 = v11;
    CFDictionarySetValue(v11, @"data", v18);
    *(v5 + 28496) = 0;
    *v17 = 0u;
    *(v5 + 28480) = 0u;
    v20 = (v5 + 28512);
    CA_CFDictionarySetLongLong(v12, @"start_time", *(v5 + 28560));
    v21 = v14;
    CA_CFDictionarySetLongLong(v12, @"end_time", v14);
    for (k = 0; k != 12; ++k)
    {
      v23 = *(v20 + k);
      if (v23 >= 1)
      {
        v24 = CFStringCreateWithCString(0, *(&CA::WindowServer::IOMFBDisplay::offscreen_reason_string + k), 0x8000100u);
        if (v24)
        {
          v25 = v24;
          CA_CFDictionarySetInt(v12, v24, v23);
          CFRelease(v25);
        }
      }
    }

    *(v5 + 28528) = 0u;
    *(v5 + 28544) = 0u;
    *v20 = 0u;
    CA_CFDictionarySetLongLong(v27, @"start_time", *(v5 + 28560));
    CA_CFDictionarySetLongLong(v27, @"end_time", v21);
    CA_CFDictionarySetInt(v27, @"max_glass_count", *(v5 + 28440));
    CA_CFDictionarySetInt(v27, @"glass_invalidation_count", *(v5 + 28448));
    *(v5 + 28440) = 0;
    *(v5 + 28448) = 0;
    *(v5 + 28396) = 0;
    if (v18)
    {
      CFRelease(v18);
    }

    v4 = v29;
    if (v15)
    {
      CFRelease(v15);
    }

    os_unfair_lock_unlock((v5 + 28392));
    if (CA::WindowServer::IOMFBDisplay::post_render_statistics_power_log(void)::once != -1)
    {
      dispatch_once(&CA::WindowServer::IOMFBDisplay::post_render_statistics_power_log(void)::once, &__block_literal_global_437);
    }

    if (CA::WindowServer::IOMFBDisplay::post_render_statistics_power_log(void)::render_pass_id)
    {
      pps_send_telemetry();
    }

    if (CA::WindowServer::IOMFBDisplay::post_render_statistics_power_log(void)::layer_count_id)
    {
      pps_send_telemetry();
    }

    if (CA::WindowServer::IOMFBDisplay::post_render_statistics_power_log(void)::offscreen_reasons_id)
    {
      pps_send_telemetry();
    }

    if (CA::WindowServer::IOMFBDisplay::post_render_statistics_power_log(void)::glass_counts_id)
    {
      pps_send_telemetry();
    }

    if (v27)
    {
      CFRelease(v27);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    os_unfair_lock_unlock((v5 + 28392));
  }

  return pthread_mutex_unlock((v4 + 856));
}

double CA::Render::TimingFunction::evaluate(CA::Render::TimingFunction *this, const double *a2, double a3, double a4)
{
  v4 = *this * 3.0;
  v5 = (*(this + 2) - *this) * 3.0;
  v6 = v5 - v4;
  v7 = 1.0 - v5;
  v8 = 8;
  v9 = a3;
  while (1)
  {
    v10 = -(a3 - (v4 + (v6 + v9 * v7) * v9) * v9);
    if (fabs(v10) < a4)
    {
      break;
    }

    v11 = v4 + (v6 + v6 + v7 * 3.0 * v9) * v9;
    if (fabs(v11) >= 0.000001)
    {
      v9 = v9 - v10 / v11;
      if (--v8)
      {
        continue;
      }
    }

    v9 = 0.0;
    if (a3 >= 0.0)
    {
      v9 = 1.0;
      if (a3 <= 1.0)
      {
        v12 = 0.0;
        v13 = 1.0;
        v14 = -1025;
        v9 = a3;
        do
        {
          if (__CFADD__(v14++, 1))
          {
            break;
          }

          v16 = -(a3 - (v4 + (v6 + v9 * v7) * v9) * v9);
          if (fabs(v16) < a4)
          {
            break;
          }

          if (v16 >= 0.0)
          {
            v13 = v9;
          }

          else
          {
            v12 = v9;
          }

          v9 = v12 + (v13 - v12) * 0.5;
        }

        while (v12 < v13);
      }
    }

    return (*(this + 1) * 3.0 + ((*(this + 3) - *(this + 1)) * 3.0 - *(this + 1) * 3.0 + v9 * (1.0 - (*(this + 3) - *(this + 1)) * 3.0)) * v9) * v9;
  }

  return (*(this + 1) * 3.0 + ((*(this + 3) - *(this + 1)) * 3.0 - *(this + 1) * 3.0 + v9 * (1.0 - (*(this + 3) - *(this + 1)) * 3.0)) * v9) * v9;
}

double CA::WindowServer::IOMFBServer::set_low_latency_threshold(CA::WindowServer::IOMFBServer *this, double a2)
{
  v4 = (*(*this + 48))(this);
  result = CATimeWithHostTime(v4) + a2;
  *(this + 165) = result;
  return result;
}

void CA::Transaction::observer_callback(CA::Transaction *this, __CFRunLoopObserver *a2, unint64_t a3, void *a4)
{
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v5)
  {
    if (v5[8] == this)
    {
      CA::Transaction::flush_as_runloop_observer(v5, 1);
    }
  }
}

void CA::Transaction::flush_as_runloop_observer(CA::Transaction *this, int a2)
{
  v3 = *(this + 15);
  if (v3)
  {
    if (*v3)
    {
      v4 = *(v3 + 204);
      if ((v4 & 1) != 0 && a2 != (v4 & 8) >> 3)
      {
        v5 = objc_autoreleasePoolPush();
        if (dyld_program_sdk_at_least())
        {
          CA::Transaction::flush(this);
        }

        else
        {
          CA::Transaction::commit(this);
          CA::Transaction::reset_animators(this);
        }

        objc_autoreleasePoolPop(v5);
      }
    }
  }

  if (*(this + 132))
  {
    os_unfair_lock_lock(&CA::callback_lock);
    v6 = CA::active_timers;
    if (CA::callback_timer)
    {
      v7 = CA::active_timers == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      while (*v6 != CA::callback_timer)
      {
        v6 = v6[1];
        if (!v6)
        {
          goto LABEL_19;
        }
      }

      CFRunLoopTimerInvalidate(CA::callback_timer);
      CFRelease(CA::callback_timer);
      CA::callback_timer = 0;
      CA::update_timer(v8);
    }

LABEL_19:

    os_unfair_lock_unlock(&CA::callback_lock);
  }
}

void CA::Transaction::Level::~Level(CA::Transaction::Level *this, const void *a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    CA::Transaction::Continuation::unref(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    CA::AttrList::free(v4, a2);
  }
}

void CA::Transaction::cf_release(CFTypeRef cf, const void *a2)
{
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v3)
  {
    CA::Transaction::release_object(v3, cf);
  }

  else
  {
    CFRelease(cf);
  }
}

NSArray *CAObject_valueForKeyPath(void *a1, void *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = [a2 rangeOfString:@"."];
  if (!v5)
  {

    return [a1 valueForKey:a2];
  }

  v6 = v4;
  v7 = [a2 substringToIndex:v4];
  v8 = [a2 substringFromIndex:v6 + 1];
  result = [a1 valueForKey:v7];
  if (!result)
  {
    return result;
  }

  v10 = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 rangeOfString:@"."];
    if (v12)
    {
      v13 = v11;
      v14 = [v8 substringToIndex:v11];
      v15 = [v8 substringFromIndex:v13 + 1];
      v16 = objectForKey(v10, v14, 0);

      return [v16 valueForKeyPath:v15];
    }

    else
    {

      return objectForKey(v10, v8, 0);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return [(NSArray *)v10 valueForKeyPath:v8];
    }

    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    *&v66 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    [(NSArray *)v10 transformStruct];
    CA::Mat2Impl::mat2_get_unmatrix(&v54, &v62);
    if ([v8 isEqualToString:@"rotation"])
    {
      v19 = MEMORY[0x1E696AD98];
      v20 = *&v64;
      return [v19 numberWithDouble:v20];
    }

    if (![v8 isEqualToString:@"scale"])
    {
      if (![v8 isEqualToString:@"scale.x"])
      {
        if (![v8 isEqualToString:@"scale.y"])
        {
          if ([v8 isEqualToString:@"translation"])
          {
            v43 = MEMORY[0x1E696B098];
            v45 = *(&v63 + 1);
            v44 = *&v63;
            return [v43 valueWithSize:{v44, v45}];
          }

          if (![v8 isEqualToString:@"translation.x"])
          {
            if ([v8 isEqualToString:@"translation.y"])
            {
              v19 = MEMORY[0x1E696AD98];
              v20 = *(&v63 + 1);
              return [v19 numberWithDouble:v20];
            }

            return [(NSArray *)v10 valueForKeyPath:v8];
          }

LABEL_62:
          v19 = MEMORY[0x1E696AD98];
          v20 = *&v63;
          return [v19 numberWithDouble:v20];
        }

LABEL_44:
        v19 = MEMORY[0x1E696AD98];
        v20 = *(&v62 + 1);
        return [v19 numberWithDouble:v20];
      }

LABEL_35:
      v19 = MEMORY[0x1E696AD98];
      v20 = *&v62;
      return [v19 numberWithDouble:v20];
    }

LABEL_28:
    v19 = MEMORY[0x1E696AD98];
    v21 = *(&v62 + 1) + *&v62;
    v22 = 0.5;
LABEL_29:
    v20 = v21 * v22;
    return [v19 numberWithDouble:v20];
  }

  v17 = [(NSArray *)v10 objCType];
  if (!v17)
  {
    return [(NSArray *)v10 valueForKeyPath:v8];
  }

  v18 = v17;
  if (!strcmp(v17, "{CGPoint=dd}"))
  {
    [(NSArray *)v10 pointValue];
    v24 = v23;
    v26 = v25;
    if ([v8 isEqualToString:@"x"])
    {
      goto LABEL_33;
    }

    v27 = @"y";
LABEL_41:
    if (![v8 isEqualToString:v27])
    {
      return [(NSArray *)v10 valueForKeyPath:v8];
    }

    v30 = MEMORY[0x1E696AD98];
    v31 = v26;
    goto LABEL_58;
  }

  if (!strcmp(v18, "{CGSize=dd}"))
  {
    [(NSArray *)v10 sizeValue];
    v24 = v28;
    v26 = v29;
    if ([v8 isEqualToString:@"width"])
    {
      goto LABEL_33;
    }

    v27 = @"height";
    goto LABEL_41;
  }

  if (strcmp(v18, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    if (strcmp(v18, "{CAPoint3D=ddd}"))
    {
      if (strcmp(v18, "{CATransform3D=dddddddddddddddd}"))
      {
        return [(NSArray *)v10 valueForKeyPath:v8];
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v62 = 0u;
      [(NSArray *)v10 CATransform3DValue];
      v54 = v46;
      v55 = v47;
      v56 = v48;
      v57 = v49;
      v58 = v50;
      v59 = v51;
      v60 = v52;
      v61 = v53;
      CA::Mat4Impl::mat4_get_unmatrix(&v54, &v62, 0);
      if (([v8 isEqualToString:@"rotation"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"rotation.z"))
      {
        v19 = MEMORY[0x1E696AD98];
        v20 = *(&v69 + 1);
        return [v19 numberWithDouble:v20];
      }

      if ([v8 isEqualToString:@"rotation.x"])
      {
        v19 = MEMORY[0x1E696AD98];
        v20 = *(&v68 + 1);
        return [v19 numberWithDouble:v20];
      }

      if ([v8 isEqualToString:@"rotation.y"])
      {
        v19 = MEMORY[0x1E696AD98];
        v20 = *&v69;
        return [v19 numberWithDouble:v20];
      }

      if ([v8 isEqualToString:@"scale"])
      {
        v19 = MEMORY[0x1E696AD98];
        v21 = *(&v62 + 1) + *&v62 + *&v63;
        v22 = 0.333333333;
        goto LABEL_29;
      }

      if (![v8 isEqualToString:@"scale.xy"])
      {
        if (![v8 isEqualToString:@"scale.x"])
        {
          if (![v8 isEqualToString:@"scale.y"])
          {
            if (![v8 isEqualToString:@"scale.z"])
            {
              if ([v8 isEqualToString:@"translation"])
              {
                v43 = MEMORY[0x1E696B098];
                v45 = *(&v65 + 1);
                v44 = *&v65;
                return [v43 valueWithSize:{v44, v45}];
              }

              if ([v8 isEqualToString:@"translation.x"])
              {
                v19 = MEMORY[0x1E696AD98];
                v20 = *&v65;
                return [v19 numberWithDouble:v20];
              }

              if ([v8 isEqualToString:@"translation.y"])
              {
                v19 = MEMORY[0x1E696AD98];
                v20 = *(&v65 + 1);
                return [v19 numberWithDouble:v20];
              }

              if ([v8 isEqualToString:@"translation.z"])
              {
                v19 = MEMORY[0x1E696AD98];
                v20 = *&v66;
                return [v19 numberWithDouble:v20];
              }

              return [(NSArray *)v10 valueForKeyPath:v8];
            }

            goto LABEL_62;
          }

          goto LABEL_44;
        }

        goto LABEL_35;
      }

      goto LABEL_28;
    }

    [(NSArray *)v10 CAPoint3DValue];
    v35 = v39;
    v24 = v40;
    v26 = v41;
    if ([v8 isEqualToString:@"x"])
    {
LABEL_46:
      v30 = MEMORY[0x1E696AD98];
      v31 = v35;
      goto LABEL_58;
    }

    if (![v8 isEqualToString:@"y"])
    {
      v27 = @"z";
      goto LABEL_41;
    }

LABEL_33:
    v30 = MEMORY[0x1E696AD98];
    v31 = v24;
LABEL_58:

    return [v30 numberWithDouble:v31];
  }

  [(NSArray *)v10 rectValue];
  v33 = v32;
  v35 = v34;
  v24 = v36;
  v26 = v37;
  if ([v8 isEqualToString:@"origin"])
  {
    v38 = MEMORY[0x1E696B098];

    return [v38 valueWithPoint:{v33, v35}];
  }

  else
  {
    if (![v8 isEqualToString:@"size"])
    {
      if ([v8 isEqualToString:@"origin.x"])
      {
        v30 = MEMORY[0x1E696AD98];
        v31 = v33;
        goto LABEL_58;
      }

      if ([v8 isEqualToString:@"origin.y"])
      {
        goto LABEL_46;
      }

      if (![v8 isEqualToString:@"size.width"])
      {
        v27 = @"size.height";
        goto LABEL_41;
      }

      goto LABEL_33;
    }

    v42 = MEMORY[0x1E696B098];

    return [v42 valueWithSize:{v24, v26}];
  }
}

id CAObject_valueForKey(void *a1, objc_class *a2, const __CFString *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = classDescription(v6);
  v8 = propertyInfoForKey(v7, a3, 0);
  if (v8 && (v9 = *(v8 + 2)) != 0 && (v10 = *(v8 + 2), *(v8 + 2)))
  {

    return CA_valueForKey(a1, v9, v10);
  }

  else
  {
    v12.receiver = a1;
    v12.super_class = a2;
    return objc_msgSendSuper(&v12, sel_valueForKey_, a3);
  }
}

char *propertyInfoForKey(uint64_t **a1, const __CFString *a2, uint64_t ***a3)
{
  v5 = CAInternAtom(a2, 1);
  if (!v5)
  {
    return 0;
  }

  return propertyInfoForAtom(a1, v5, a3);
}

uint64_t CA::Render::SpringAnimation::State::update(uint64_t this, double a2, double a3, double a4, double a5, int a6)
{
  v6 = sqrt(a3 / a2);
  v7 = sqrt(a3 * a2);
  v8 = a4 / (v7 + v7);
  *this = v6;
  *(this + 8) = v8;
  *(this + 40) = a6;
  if (v8 >= 1.0)
  {
    if (v8 <= 1.0 || a6 == 0)
    {
      *(this + 24) = 0x3FF0000000000000;
      v10 = v6 - a5;
    }

    else
    {
      v12 = sqrt(v8 * v8 + -1.0) * v6;
      v13 = a5 + v8 * v6;
      *(this + 16) = v12;
      *(this + 24) = (v13 + v12) / (v12 + v12);
      v10 = (v12 - v13) / (v12 + v12);
    }
  }

  else
  {
    v9 = sqrt(-(v8 * v8 + -1.0)) * v6;
    *(this + 16) = v9;
    *(this + 24) = 0x3FF0000000000000;
    v10 = -(a5 - v8 * v6) / v9;
  }

  *(this + 32) = v10;
  return this;
}

void CAObject_setValueForKeyPath_(void *a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v112 = *MEMORY[0x1E69E9840];
  v10 = [a1 valueForKey:?];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ((a5 & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v11 = [(NSArray *)v11 mutableCopy];
            [a1 setValue:v11 forKey:a3];

            if (!v11)
            {
              return;
            }
          }
        }

        goto LABEL_113;
      }

      memset(v108, 0, 40);
      *v106 = 0u;
      v107 = 0u;
      [(NSArray *)v11 transformStruct];
      v98 = v90;
      v99 = v91;
      v100 = v92;
      CA::Mat2Impl::mat2_get_unmatrix(&v98, v106);
      if ([a4 isEqualToString:@"rotation"])
      {
        [a2 doubleValue];
        *&v108[0] = v28;
      }

      else if ([a4 isEqualToString:@"scale"])
      {
        [a2 doubleValue];
        v106[0] = v32;
        v106[1] = v32;
      }

      else if ([a4 isEqualToString:@"scale.x"])
      {
        [a2 doubleValue];
        v106[0] = v43;
      }

      else if ([a4 isEqualToString:@"scale.y"])
      {
        [a2 doubleValue];
        v106[1] = v57;
      }

      else if ([a4 isEqualToString:@"translation"])
      {
        [a2 sizeValue];
        *&v107 = v67;
        *(&v107 + 1) = v68;
      }

      else if ([a4 isEqualToString:@"translation.x"])
      {
        [a2 doubleValue];
        *&v107 = v71;
      }

      else
      {
        if (([a4 isEqualToString:@"translation.y"] & 1) == 0)
        {
          goto LABEL_113;
        }

        [a2 doubleValue];
        *(&v107 + 1) = v75;
      }

      v98 = *(v108 + 8);
      v99 = *(&v108[1] + 8);
      v100 = v107;
      if (*v108 != 0.0)
      {
        CA::Mat2Impl::mat2_rotate(&v98, v27, *v108);
      }

      if (*v106 != 1.0 || *&v106[1] != 1.0)
      {
        v98 = vmulq_n_f64(v98, *v106);
        v99 = vmulq_n_f64(v99, *&v106[1]);
      }

      v76 = [MEMORY[0x1E696AA98] transform];
      v89[0] = v98;
      v89[1] = v99;
      v89[2] = v100;
      [v76 setTransformStruct:v89];
      v26 = a1;
      v25 = v76;
      goto LABEL_83;
    }

    v20 = [(NSArray *)v11 objCType];
    if (v20)
    {
      v21 = v20;
      if (!strcmp(v20, "{CGPoint=dd}"))
      {
        [(NSArray *)v11 pointValue];
        v34 = v33;
        v36 = v35;
        if ([a4 isEqualToString:@"x"])
        {
          [a2 doubleValue];
          v34 = v37;
        }

        else
        {
          if (![a4 isEqualToString:@"y"])
          {
            goto LABEL_113;
          }

          [a2 doubleValue];
          v36 = v44;
        }

        v45 = [MEMORY[0x1E696B098] valueWithPoint:{v34, v36}];
      }

      else if (!strcmp(v21, "{CGSize=dd}"))
      {
        [(NSArray *)v11 sizeValue];
        v39 = v38;
        v41 = v40;
        if ([a4 isEqualToString:@"width"])
        {
          [a2 doubleValue];
          v39 = v42;
        }

        else
        {
          if (![a4 isEqualToString:@"height"])
          {
            goto LABEL_113;
          }

          [a2 doubleValue];
          v41 = v56;
        }

        v45 = [MEMORY[0x1E696B098] valueWithSize:{v39, v41}];
      }

      else if (!strcmp(v21, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
      {
        [(NSArray *)v11 rectValue];
        v47 = v46;
        v49 = v48;
        v51 = v50;
        v53 = v52;
        if ([a4 isEqualToString:@"origin"])
        {
          [a2 pointValue];
          v47 = v54;
          v49 = v55;
        }

        else if ([a4 isEqualToString:@"size"])
        {
          [a2 sizeValue];
          v51 = v65;
          v53 = v66;
        }

        else if ([a4 isEqualToString:@"origin.x"])
        {
          [a2 doubleValue];
          v47 = v70;
        }

        else if ([a4 isEqualToString:@"origin.y"])
        {
          [a2 doubleValue];
          v49 = v73;
        }

        else if ([a4 isEqualToString:@"size.width"])
        {
          [a2 doubleValue];
          v51 = v77;
        }

        else
        {
          if (![a4 isEqualToString:@"size.height"])
          {
            goto LABEL_113;
          }

          [a2 doubleValue];
          v53 = v79;
        }

        v45 = [MEMORY[0x1E696B098] valueWithRect:{v47, v49, v51, v53}];
      }

      else
      {
        if (strcmp(v21, "{CAPoint3D=ddd}"))
        {
          if (!strcmp(v21, "{CATransform3D=dddddddddddddddd}"))
          {
            v110 = 0u;
            v111 = 0u;
            v109 = 0u;
            v107 = 0u;
            memset(v108, 0, sizeof(v108));
            *v106 = 0u;
            [(NSArray *)v11 CATransform3DValue];
            v98 = v90;
            v99 = v91;
            v100 = v92;
            v101 = v93;
            v102 = v94;
            v103 = v95;
            v104 = v96;
            v105 = v97;
            CA::Mat4Impl::mat4_get_unmatrix(&v98, v106, 0);
            if (([a4 isEqualToString:@"rotation"] & 1) != 0 || objc_msgSend(a4, "isEqualToString:", @"rotation.z"))
            {
              [a2 doubleValue];
              *(&v110 + 1) = v24;
LABEL_18:
              v25 = [MEMORY[0x1E696B098] valueWithBytes:&v98 objCType:{"{CATransform3D=dddddddddddddddd}", CA::Mat4Impl::mat4_set_unmatrix(&v98, v106, v22, v23).f64[0]}];
              v26 = a1;
LABEL_83:
              [v26 setValue:v25 forKey:a3];
              return;
            }

            if ([a4 isEqualToString:@"rotation.x"])
            {
              [a2 doubleValue];
              *(&v109 + 1) = v74;
              goto LABEL_18;
            }

            if ([a4 isEqualToString:@"rotation.y"])
            {
              [a2 doubleValue];
              *&v110 = v78;
              goto LABEL_18;
            }

            if ([a4 isEqualToString:@"scale"])
            {
              [a2 doubleValue];
              *&v107 = v80;
LABEL_98:
              v106[0] = v80;
              v106[1] = v80;
              goto LABEL_18;
            }

            if ([a4 isEqualToString:@"scale.xy"])
            {
              [a2 doubleValue];
              goto LABEL_98;
            }

            if ([a4 isEqualToString:@"scale.x"])
            {
              [a2 doubleValue];
              v106[0] = v81;
              goto LABEL_18;
            }

            if ([a4 isEqualToString:@"scale.y"])
            {
              [a2 doubleValue];
              v106[1] = v82;
              goto LABEL_18;
            }

            if ([a4 isEqualToString:@"scale.z"])
            {
              [a2 doubleValue];
              *&v107 = v83;
              goto LABEL_18;
            }

            if ([a4 isEqualToString:@"translation"])
            {
              [a2 sizeValue];
              *&v108[1] = v84;
              *(&v108[1] + 1) = v85;
              goto LABEL_18;
            }

            if ([a4 isEqualToString:@"translation.x"])
            {
              [a2 doubleValue];
              *&v108[1] = v86;
              goto LABEL_18;
            }

            if ([a4 isEqualToString:@"translation.y"])
            {
              [a2 doubleValue];
              *(&v108[1] + 1) = v87;
              goto LABEL_18;
            }

            if ([a4 isEqualToString:@"translation.z"])
            {
              [a2 doubleValue];
              *&v108[2] = v88;
              goto LABEL_18;
            }
          }

          goto LABEL_113;
        }

        [(NSArray *)v11 CAPoint3DValue];
        v59 = v58;
        v61 = v60;
        v63 = v62;
        if ([a4 isEqualToString:@"x"])
        {
          [a2 doubleValue];
          v59 = v64;
        }

        else if ([a4 isEqualToString:@"y"])
        {
          [a2 doubleValue];
          v61 = v69;
        }

        else
        {
          if (![a4 isEqualToString:@"z"])
          {
            goto LABEL_113;
          }

          [a2 doubleValue];
          v63 = v72;
        }

        v45 = [MEMORY[0x1E696B098] valueWithCAPoint3D:{v59, v61, v63}];
      }

      [a1 setValue:v45 forKey:a3];
      return;
    }

LABEL_113:
    [a1 willChangeValueForKey:a3];
    v31 = v11;
    goto LABEL_114;
  }

  v106[0] = 0;
  v12 = [a4 rangeOfString:@"."];
  if (!v13)
  {
    if (!objectForKey(v11, a4, v106))
    {
      return;
    }

    v19 = [(NSArray *)v11 mutableCopy];
    [v19 replaceObjectAtIndex:v106[0] withObject:a2];
    goto LABEL_24;
  }

  v14 = v12;
  v15 = [a4 substringToIndex:v12];
  a4 = [a4 substringFromIndex:v14 + 1];
  v16 = objectForKey(v11, v15, v106);
  if (!v16)
  {
    return;
  }

  v17 = v16;
  if (!a5 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    [a1 willChangeValueForKey:a3];
    v31 = v17;
LABEL_114:
    [(NSArray *)v31 setValue:a2 forKeyPath:a4];
    [a1 didChangeValueForKey:a3];
    return;
  }

  v18 = [(NSArray *)v17 mutableCopy];
  [v18 setValue:a2 forKeyPath:a4];
  v19 = [(NSArray *)v11 mutableCopy];
  [v19 replaceObjectAtIndex:v106[0] withObject:v18];

LABEL_24:
  v29 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v29)
  {
    v30 = v29 + 104;
    while (1)
    {
      v30 = *v30;
      if (!v30)
      {
        break;
      }

      if (v30[28])
      {
        if (v30[24])
        {
          goto LABEL_36;
        }

        break;
      }
    }

    CA::Transaction::set_BOOL_value(v29, 1, 0);
    [a1 setValue:v19 forKey:a3];
    CA::Transaction::set_BOOL_value(v29, 0, 0);
  }

  else
  {
LABEL_36:
    [a1 setValue:v19 forKey:a3];
  }
}

id objectForKey(NSArray *a1, NSString *a2, unint64_t *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [(NSArray *)a1 count];
  v7 = [(NSString *)a2 length];
  if ((v7 & 0xFFFFFFF8) == 0)
  {
    goto LABEL_12;
  }

  v8 = (v7 - 1);
  if ([(NSString *)a2 characterAtIndex:v8]!= 41 || ![(NSString *)a2 hasPrefix:@"@index(")]
  {
    goto LABEL_12;
  }

  v14 = 0;
  v9 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:a2];
  [v9 setScanLocation:7];
  if (![v9 scanInt:&v14] || objc_msgSend(v9, "scanLocation") != v8)
  {
    v14 = -1;
  }

  if ((v14 & 0x80000000) != 0)
  {
LABEL_12:
    if (v6)
    {
      v11 = 0;
      while (1)
      {
        v10 = [(NSArray *)a1 objectAtIndex:v11];
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          break;
        }

        v12 = [v10 name];
        if (v12 && [v12 isEqualToString:a2])
        {
          if (a3)
          {
            *a3 = v11;
          }

          return v10;
        }

        if (v6 == ++v11)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  if (v6 <= v14)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = v14;
  }

  return [(NSArray *)a1 objectAtIndex:?];
}

void CAObject_setValueForKey(void *a1, objc_class *a2, void *a3, const __CFString *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = objc_opt_class();
  v9 = classDescription(v8);
  v10 = propertyInfoForKey(v9, a4, 0);
  if (v10 && (v11 = *(v10 + 1)) != 0 && (v12 = *(v10 + 2), *(v10 + 2)))
  {

    CA_setValueForKey(a1, v11, v12, a3);
  }

  else if (a2)
  {
    v13.receiver = a1;
    v13.super_class = a2;
    objc_msgSendSuper(&v13, sel_setValue_forKey_, a3, a4);
  }
}

void CA_setValueForKey(void *a1, const char *a2, int a3, void *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      v6 = a1;
      switch(a3)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
          goto LABEL_26;
        case 6:
          [a4 BOOLValue];
          goto LABEL_33;
        case 7:
          [a4 charValue];
          goto LABEL_33;
        case 8:
          [a4 unsignedCharValue];
          goto LABEL_33;
        case 9:
          [a4 shortValue];
          goto LABEL_33;
        case 10:
          [a4 unsignedShortValue];
          goto LABEL_33;
        case 11:
          [a4 intValue];
          goto LABEL_33;
        case 12:
          [a4 unsignedIntValue];
LABEL_33:
          a1 = v6;
          a2 = v4;

          goto LABEL_6;
        case 13:
          [a4 longValue];
          goto LABEL_25;
        case 14:
          [a4 unsignedLongValue];
          goto LABEL_25;
        case 15:
          [a4 longLongValue];
          goto LABEL_25;
        case 16:
          [a4 unsignedLongLongValue];
LABEL_25:
          a1 = v6;
          a2 = v4;
LABEL_26:

          goto LABEL_6;
        case 17:
          [a4 floatValue];
          a1 = v6;
          a2 = v4;

          goto LABEL_6;
        case 18:
          [a4 doubleValue];
          a1 = v6;
          a2 = v4;

          goto LABEL_6;
        case 19:
          [a4 pointValue];
          goto LABEL_39;
        case 20:
          [a4 sizeValue];
LABEL_39:
          a1 = v6;
          a2 = v4;

          goto LABEL_6;
        case 21:
          [a4 rectValue];
          a1 = v6;
          a2 = v4;

          goto LABEL_6;
        case 22:
          if (a4)
          {
            [a4 CATransform3DValue];
            goto LABEL_54;
          }

          v8 = 0uLL;
          memset(&v9[4], 0, 64);
          goto LABEL_51;
        case 23:
          if (a4)
          {
            [a4 CA_CGAffineTransformValue];
            goto LABEL_54;
          }

          v8 = 0uLL;
          goto LABEL_53;
        case 24:
          [a4 CAPoint3DValue];
          a1 = v6;
          a2 = v4;

LABEL_6:
          [a1 a2];
          return;
        case 25:
          if (a4)
          {
            [a4 CACornerRadiiValue];
          }

          else
          {
            v8 = 0uLL;
LABEL_51:
            v9[3] = v8;
LABEL_53:
            v9[1] = v8;
            v9[2] = v8;
            v9[0] = v8;
          }

LABEL_54:
          [v6 v4];
          break;
        default:
          if (x_log_get_api::once[0] != -1)
          {
            dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
          }

          v7 = x_log_get_api::log;
          if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v9[0]) = 67109120;
            DWORD1(v9[0]) = a3;
            _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, "unhandled setter type: %d", v9, 8u);
          }

          return;
      }
    }
  }
}

unint64_t hash_cf(const void *a1)
{
  v1 = CFHash(a1);
  v2 = (v1 + ~(v1 << 32)) ^ ((v1 + ~(v1 << 32)) >> 22);
  v3 = 9 * ((v2 + ~(v2 << 13)) ^ ((v2 + ~(v2 << 13)) >> 8));
  v4 = (v3 ^ (v3 >> 15)) + ~((v3 ^ (v3 >> 15)) << 27);
  return v4 ^ (v4 >> 31);
}

uint64_t CARenderServerGetFrameCounterByIndex(mach_port_name_t a1, unsigned int a2)
{
  v2 = CARenderServerCopyDictionaryByIndex(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Value = CFDictionaryGetValue(v2, @"kCADisplayFrameCount");
  if (Value)
  {
    v5 = CA_CFIntValue(Value);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v3);
  return v5;
}

CFTypeRef CARenderServerCopyDictionaryByIndex(mach_port_name_t a1, unsigned int a2)
{
  v3 = CARenderServerCopyDictionaries(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFArrayGetCount(v3) <= a2)
  {
    v6 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, a2);
    v6 = CFRetain(ValueAtIndex);
  }

  CFRelease(v4);
  return v6;
}

CFPropertyListRef CARenderServerCopyDictionaries(mach_port_name_t a1)
{
  length_4[1] = *MEMORY[0x1E69E9840];
  ServerPort = a1;
  if (!a1)
  {
    ServerPort = CARenderServerGetServerPort(0);
    if (!ServerPort)
    {
      return 0;
    }
  }

  length_4[0] = 0;
  length = 0;
  v3 = _CASGetDisplays(ServerPort, length_4, &length);
  v4 = v3;
  CAVerifyServerReturn(v3);
  if (!a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], ServerPort);
    if (!v4)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

LABEL_7:
  v5 = *MEMORY[0x1E695E490];
  v6 = length_4[0];
  v7 = length;
  v8 = CFDataCreate(*MEMORY[0x1E695E490], length_4[0], length);
  mach_vm_deallocate(*MEMORY[0x1E69E9A60], v6, v7);
  if (!v8)
  {
    return 0;
  }

  v9 = CFPropertyListCreateWithData(v5, v8, 0, 0, 0);
  CFRelease(v8);
  return v9;
}

uint64_t CARenderServerGetServerPort(char *service_name)
{
  v28 = *MEMORY[0x1E69E9840];
  if (force_local_server(void)::once[0] != -1)
  {
    dispatch_once(force_local_server(void)::once, &__block_literal_global_8136);
  }

  if (force_local_server(void)::_force_local_server != 1)
  {
    if (service_name)
    {
      v2 = *MEMORY[0x1E69E99F8];
      if ((*MEMORY[0x1E69E99F8] - 1) > 0xFFFFFFFD)
      {
        return 0;
      }

      sp = 0;
      if (bootstrap_look_up(v2, service_name, &sp))
      {
        return 0;
      }

      else
      {
        return sp;
      }
    }

    os_unfair_lock_lock(&_CARenderServerGetCachedDefaultServerPort(void)::default_server_port_lock);
    v4 = MEMORY[0x1E69E9A60];
    if (_CARenderServerGetCachedDefaultServerPort(void)::default_server_port[0])
    {
      ptype = 0;
      v5 = mach_port_type(*MEMORY[0x1E69E9A60], _CARenderServerGetCachedDefaultServerPort(void)::default_server_port[0], &ptype);
      if (v5)
      {
        v20 = v5;
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v21 = x_log_get_render(void)::log;
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
        {
          v22 = mach_error_string(v20);
          sp = 67109378;
          *v25 = v20;
          *&v25[4] = 2080;
          *&v25[6] = v22;
          _os_log_error_impl(&dword_183AA6000, v21, OS_LOG_TYPE_ERROR, "CoreAnimation: Failed to get server port type (%x) - %s", &sp, 0x12u);
        }

        abort();
      }

      if ((ptype & 0x100000) != 0)
      {
        mach_port_deallocate(*v4, _CARenderServerGetCachedDefaultServerPort(void)::default_server_port[0]);
        _CARenderServerGetCachedDefaultServerPort(void)::default_server_port[0] = 0;
        _CARenderServerGetCachedDefaultServerPort(void)::default_server_port_initialized = 0;
      }
    }

    if (_CARenderServerGetCachedDefaultServerPort(void)::default_server_port_initialized)
    {
      goto LABEL_14;
    }

    v6 = MEMORY[0x1E69E99F8];
    if ((*MEMORY[0x1E69E99F8] - 1) >= 0xFFFFFFFE)
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v14 = x_log_get_render(void)::log;
      if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v16 = *v6;
      sp = 67109120;
      *v25 = v16;
      v11 = "Invalid bootstrap port (%d)";
      v12 = v14;
      v13 = 8;
    }

    else
    {
      if (CADeviceIsSystemSessionClient::once != -1)
      {
        dispatch_once(&CADeviceIsSystemSessionClient::once, &__block_literal_global_421);
      }

      if (CADeviceIsSystemSessionClient::enabled == 1 && xpc_user_sessions_enabled())
      {
        ptype = 0;
        xpc_user_sessions_get_foreground_uid();
        if (ptype)
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v17 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
          {
            v18 = ptype;
            v19 = xpc_strerror();
            sp = 67109378;
            *v25 = v18;
            *&v25[4] = 2080;
            *&v25[6] = v19;
            _os_log_error_impl(&dword_183AA6000, v17, OS_LOG_TYPE_ERROR, "Failed to obtain foreground uid %d (%s)", &sp, 0x12u);
          }
        }

        v7 = bootstrap_look_up_per_user();
      }

      else
      {
        v7 = bootstrap_look_up(*v6, "com.apple.CARenderServer", _CARenderServerGetCachedDefaultServerPort(void)::default_server_port);
      }

      v8 = v7;
      if (!v7)
      {
        _CARenderServerGetCachedDefaultServerPort(void)::default_server_port_initialized = 1;
LABEL_14:
        mach_port_mod_refs(*v4, _CARenderServerGetCachedDefaultServerPort(void)::default_server_port[0], 0, 1);
        v3 = _CARenderServerGetCachedDefaultServerPort(void)::default_server_port[0];
LABEL_30:
        os_unfair_lock_unlock(&_CARenderServerGetCachedDefaultServerPort(void)::default_server_port_lock);
        return v3;
      }

      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v9 = x_log_get_render(void)::log;
      if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
LABEL_29:
        v3 = 0;
        goto LABEL_30;
      }

      v10 = bootstrap_strerror(v8);
      sp = 136315650;
      *v25 = "com.apple.CARenderServer";
      *&v25[8] = 1024;
      *&v25[10] = v8;
      v26 = 2080;
      v27 = v10;
      v11 = "Service %s failed bootstrap look up (%x) - %s";
      v12 = v9;
      v13 = 28;
    }

    _os_log_error_impl(&dword_183AA6000, v12, OS_LOG_TYPE_ERROR, v11, &sp, v13);
    goto LABEL_29;
  }

  v3 = CA::Render::Server::server_port(service_name);
  if (v3)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], v3, 0, 1);
  }

  return v3;
}

void _XGetDisplays(_DWORD *a1, uint64_t a2)
{
  propertyList[1] = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    v3 = -304;
  }

  else if (a1[9] || a1[10] <= 0x1Fu)
  {
    v3 = -309;
  }

  else
  {
    *(a2 + 36) = 16777473;
    if (!a1[8])
    {
      v4 = *MEMORY[0x1E695E490];
      propertyList[0] = CFArrayCreateMutable(*MEMORY[0x1E695E490], 0, MEMORY[0x1E695E9C0]);
      CA::Render::post_notification(0x1Au, 0, propertyList, 0);
      address = 0;
      Data = CFPropertyListCreateData(v4, propertyList[0], kCFPropertyListBinaryFormat_v1_0, 0, 0);
      if (Data)
      {
        v6 = Data;
        Length = CFDataGetLength(Data);
        vm_allocate(*MEMORY[0x1E69E9A60], &address, (Length + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 1);
        v8 = address;
        if (address)
        {
          BytePtr = CFDataGetBytePtr(v6);
          memcpy(v8, BytePtr, Length);
        }

        CFRelease(v6);
      }

      else
      {
        LODWORD(Length) = 0;
      }

      CFRelease(propertyList[0]);
      v10 = address;
      *(a2 + 28) = address;
      v11 = v10 ? Length : 0;
      *(a2 + 52) = v11;
      if (v10)
      {
        *(a2 + 40) = v11;
        *(a2 + 44) = *MEMORY[0x1E69E99E0];
        *a2 |= 0x80000000;
        *(a2 + 4) = 56;
        *(a2 + 24) = 1;
        return;
      }
    }

    v3 = 5;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

uint64_t _CASGetDisplays(int a1, void *a2, _DWORD *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(&msg_4[16], 0, 44);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  reply_port = mig_get_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x9D2700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v7 = *&msg_4[8];
  }

  else
  {
    v7 = reply_port;
  }

  v8 = mach_msg(&msg, 3, 0x24u, 0x40u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg_4[8]);
  }

  else
  {
    if (!v8)
    {
      if (*&msg_4[16] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg_4[16] == 40331)
      {
        if (msg < 0)
        {
          v9 = 4294966996;
          if (*&msg_4[20] == 1 && *msg_4 == 56 && !*&msg_4[4] && msg_4[35] == 1)
          {
            v10 = *&msg_4[36];
            if (*&msg_4[36] == *&msg_4[48])
            {
              v9 = 0;
              *a2 = *&msg_4[24];
              *a3 = v10;
              return v9;
            }
          }
        }

        else if (*msg_4 == 36)
        {
          v9 = 4294966996;
          if (*&msg_4[28])
          {
            if (*&msg_4[4])
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&msg_4[28];
            }
          }
        }

        else
        {
          v9 = 4294966996;
        }
      }

      else
      {
        v9 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v9;
    }

    mig_dealloc_reply_port(*&msg_4[8]);
  }

  return v9;
}

void CA::WindowServer::Server::get_displays(CA::WindowServer::Server *this, CA::Render::Object *a2, CFMutableArrayRef *a3, void *a4)
{
  keys[8] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 12);
  v6 = *(a2 + 13);
  v7 = (v5 + 24576);
  keys[0] = @"kCADisplayName";
  keys[1] = @"kCADisplayDeviceName";
  keys[2] = @"kCADisplayId";
  keys[3] = @"kCADisplayFrameCount";
  keys[4] = @"kCADisplaySkippedFrameCount";
  keys[5] = @"kCADisplayClonedFrameCount";
  keys[6] = @"kCADisplaySkippedClonedFrameCount";
  keys[7] = @"kCADisplayDirtyFrameCount";
  v8 = *(v5 + 8);
  values[0] = v6;
  values[1] = v8;
  valuePtr = *(v5 + 24);
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  valuePtr = v7[239];
  v13 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  valuePtr = v7[240];
  v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  valuePtr = v7[241];
  v15 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  valuePtr = v7[242];
  v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  valuePtr = v7[243];
  v17 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v9 = CFDictionaryCreate(0, keys, values, 8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFArrayAppendValue(*a3, v9);
  CFRelease(v9);
  CFRelease(cf);
  CFRelease(v13);
  CFRelease(v14);
  CFRelease(v15);
  CFRelease(v16);
  CFRelease(v17);
}

uint64_t CAVerifyServerReturn(uint64_t result)
{
  v3 = *MEMORY[0x1E69E9840];
  if (result == -81182719)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v1 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v2 = 0;
      _os_log_error_impl(&dword_183AA6000, v1, OS_LOG_TYPE_ERROR, "CoreAnimation: Unentitled call to server!", v2, 2u);
    }

    abort();
  }

  return result;
}

id CALayerGetContext(uint64_t a1)
{
  v1 = CA::Layer::retain_context(*(a1 + 16));
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (*(v1 + 88) == 1)
  {
    Weak = objc_loadWeak(v1 + 10);
  }

  else
  {
    Weak = *(v1 + 10);
  }

  CA::Context::unref(v2, 0);
  return Weak;
}

int *CA::Context::retain_context_with_id(CA::Context *this)
{
  v1 = this;
  os_unfair_lock_lock(&CA::Context::_lock);
  if (CA::all_contexts(void)::contexts_data_initialized)
  {
    for (i = CA::all_contexts(void)::contexts_data; ; ++i)
    {
      if (i == *(&CA::all_contexts(void)::contexts_data + 1))
      {
        v3 = 0;
        goto LABEL_9;
      }

      v3 = *i;
      v4 = **i;
      if (v4)
      {
        if (v3[2] == v1)
        {
          break;
        }
      }
    }

    *v3 = v4 + 1;
  }

  else
  {
    v3 = 0;
    CA::all_contexts(void)::contexts_data = 0uLL;
    qword_1ED4E9310 = 0;
    CA::all_contexts(void)::contexts_data_initialized = 1;
  }

LABEL_9:
  os_unfair_lock_unlock(&CA::Context::_lock);
  return v3;
}

void CA::Context::unref(CA::Context *this, int a2)
{
  os_unfair_lock_lock(&CA::Context::_lock);
  v4 = *this - 1;
  *this = v4;
  v5 = (this + 257);
  v6 = *(this + 257);
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2 == 0;
  }

  if (v7)
  {
    goto LABEL_16;
  }

  if ((v6 & 4) == 0)
  {
    if (CA::all_contexts(void)::contexts_data_initialized)
    {
      if (*(&CA::all_contexts(void)::contexts_data + 1) != CA::all_contexts(void)::contexts_data)
      {
        v8 = 0;
        v9 = (*(&CA::all_contexts(void)::contexts_data + 1) - CA::all_contexts(void)::contexts_data) >> 3;
        if (v9 <= 1)
        {
          v9 = 1;
        }

        while (*(CA::all_contexts(void)::contexts_data + 8 * v8) != this)
        {
          if (v9 == ++v8)
          {
            goto LABEL_15;
          }
        }

        v10 = *(&CA::all_contexts(void)::contexts_data + 1) - 8;
        *(CA::all_contexts(void)::contexts_data + 8 * v8) = *(*(&CA::all_contexts(void)::contexts_data + 1) - 8);
        *(&CA::all_contexts(void)::contexts_data + 1) = v10;
        v6 = *v5;
      }
    }

    else
    {
      CA::all_contexts(void)::contexts_data = 0uLL;
      qword_1ED4E9310 = 0;
      CA::all_contexts(void)::contexts_data_initialized = 1;
    }

LABEL_15:
    v6 |= 4u;
    *v5 = v6;
    --CA::Context::_context_count;
LABEL_16:
    os_unfair_lock_unlock(&CA::Context::_lock);
    if (v4)
    {
      return;
    }

    goto LABEL_17;
  }

  os_unfair_lock_unlock(&CA::Context::_lock);
LABEL_17:
  if (a2)
  {
    CA::Context::destroy(this);
    v11 = *(this + 15);
    if (v11)
    {
      CFRelease(v11);
    }

    CGColorSpaceRelease(*(this + 14));
    v12 = *(this + 31);
    if (v12)
    {
      CFRelease(v12);
    }

    pthread_mutex_destroy((this + 16));
    v13 = *(this + 19);
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = (this + 80);
    if (*(this + 10))
    {
      if (*(this + 88) == 1)
      {
        objc_storeWeakOrNil(v14, 0);
      }

      else
      {
        *v14 = 0;
      }
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v15 = malloc_zone;

    malloc_zone_free(v15, this);
  }

  else if ((v6 & 8) == 0)
  {

    CA::Context::invalidate(this);
  }
}

void sub_183B51914(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 152);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = (v1 + 80);
  if (*(v1 + 80))
  {
    if (*(v1 + 88) == 1)
    {
      objc_storeWeakOrNil(v4, 0);
    }

    else
    {
      *v4 = 0;
    }
  }

  _Unwind_Resume(exception_object);
}

void CA::Layer::clear_flags_(CA::Layer *this, CA::Layer *a2, CA::Transaction *a3, CA::Transaction *a4)
{
  v5 = a2;
  v7 = *(a3 + 29);
  *(a3 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v8 = *(a3 + 28);
  if ((v8 & 0x80000000) != 0 || (v9 = this + 4 * v8, (v10 = *(v9 + 68)) == 0))
  {
    v11 = CA::Layer::thread_flags_(this, a3);
    v10 = *v11;
  }

  else
  {
    v11 = (v9 + 272);
  }

  *v11 = v10 & ~v5;

  CA::Transaction::unlock(a3);
}

CA::Layer *CA::Layer::collect_layers_(CA::Layer *result, uint64_t *a2)
{
  v3 = result;
  v4 = a2[3];
  v5 = v4[28];
  if ((v5 & 0x80000000) != 0 || (v6 = result + 4 * v5, (v7 = *(v6 + 68)) == 0))
  {
    result = CA::Layer::thread_flags_(result, v4);
    v8 = result;
    v7 = *result;
  }

  else
  {
    v8 = (v6 + 272);
  }

  _ZF = ((*(a2 + 11) | *(a2 + 10)) & v7) == 0;
  atomic_fetch_and(v3 + 1, ~((*(a2 + 11) | *(a2 + 10)) & v7));
  if (_ZF)
  {
    return result;
  }

  v10 = *(a2 + 12);
  if (v10)
  {
    *v8 |= v10;
    result = a2[4];
    v11 = *(result + 2);
    v12 = v11 - 16;
    if (v11 >= 0x10)
    {
      v13 = *(result + 1);
      *(result + 1) = v13 + 2;
      *(result + 2) = v12;
    }

    else
    {
      result = x_heap_malloc_small_(result, 0x10uLL);
      v13 = result;
    }

    v14 = a2[1];
    *v13 = v3;
    v13[1] = v14;
    a2[1] = v13;
  }

  v15 = *(a2 + 11);
  if ((v15 & v7) != 0)
  {
    *v8 &= ~v15;
    v16 = *(v3 + 3);
    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = v16 + 1;
    v18 = v16[2];
    if (v18 == 1)
    {
      if (!v16[3])
      {
        do
        {
LABEL_18:
          v19 = *v17++;
          _X0 = *(v19 + 16);
          __asm { PRFM            #0, [X0,#0x110] }

          result = CA::Layer::collect_layers_();
          --v18;
        }

        while (v18);
LABEL_19:
        v25 = *(v3 + 4);
        if (v25)
        {
          _X0 = *(v25 + 16);
          __asm { PRFM            #0, [X0,#0x110] }

          result = CA::Layer::collect_layers_();
        }

        goto LABEL_21;
      }
    }

    else if (!v18)
    {
      goto LABEL_19;
    }

    v17 = *v17;
    goto LABEL_18;
  }

LABEL_21:
  v28 = *(a2 + 10);
  if ((v28 & v7) != 0)
  {
    if (*(a2 + 52) == 1)
    {
      *v8 &= ~v28;
    }

    result = a2[4];
    v29 = *(result + 2);
    v30 = v29 - 16;
    if (v29 >= 0x10)
    {
      v31 = *(result + 1);
      *(result + 1) = v31 + 2;
      *(result + 2) = v30;
    }

    else
    {
      result = x_heap_malloc_small_(result, 0x10uLL);
      v31 = result;
    }

    v32 = *a2;
    *v31 = v3;
    v31[1] = v32;
    *a2 = v31;
    ++a2[2];
  }

  return result;
}

id CA::Layer::layer_being_drawn(CA::Layer *this, CA::Transaction *a2, int a3)
{
  v3 = *(this + 2);
  if ((*(this + 1) & a3) != 0 && (*(this + 1) & 0x60000) != 0x40000 && *(this + 35))
  {
    v6 = *(a2 + 29);
    *(a2 + 29) = v6 + 1;
    if (!v6)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    v7 = *(a2 + 15);
    v8 = v7[29];
    v9 = v8;
    if (v8 == 0.0)
    {
      CA::Transaction::Shared::time(v7);
      v9 = v10 + 0.025;
    }

    v3 = CA::Layer::layer_at_time(this, a2, v9, v8 == 0.0, 1);
    CA::Transaction::unlock(a2);
  }

  return v3;
}

BOOL CAFrameRateRangeIsValid(float a1, float a2, float a3)
{
  if (!dyld_program_sdk_at_least() && a1 == a3 && a1 == a2)
  {
    return 1;
  }

  if (a1 == 0.0 && a2 == 0.0 && a3 == 0.0)
  {
    return 1;
  }

  if (a1 <= 0.0)
  {
    return 0;
  }

  return a1 <= a3 && a3 <= a2 || a3 == 0.0 && a1 <= a2;
}

uint64_t CA::Layer::style_value(CA::Layer *this, unsigned int a2, objc_object **a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*(this + 58) & 2) == 0)
  {
    return 0;
  }

  v11 = 0;
  v5 = *(this + 9);
  if (!v5 || (CA::AttrList::get(v5, 692, 1, &v11) & 1) == 0)
  {
    v6 = objc_opt_class();
    CAObject_defaultValueForAtom(v6, 692, 1, &v11);
  }

  if (!v11)
  {
    return 0;
  }

  String = CAAtomGetString(a2);
  result = v11;
  if (v11)
  {
    while (1)
    {
      v9 = [result objectForKey:{String, v11, v12}];
      if (v9)
      {
        break;
      }

      result = [v11 objectForKey:@"style"];
      v11 = result;
      if (!result)
      {
        return result;
      }
    }

    if (v9 == *MEMORY[0x1E695E738])
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    *a3 = v10;
    return 1;
  }

  return result;
}

void CA::Layer::set_sublayers(CALayerArray **this, CALayerArray *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = CA::Transaction::ensure_compat(this);
  if ((*(this + 1) & 0x60000) != 0)
  {
    [MEMORY[0x1E695DF30] raise:@"CALayerInvalidTree" format:{@"expecting model layer not copy: %@", this[2]}];
  }

  if (this[3] != a2)
  {
    v6 = *(v5 + 29);
    *(v5 + 29) = v6 + 1;
    if (v6)
    {
      if (!a2)
      {
        goto LABEL_28;
      }
    }

    else
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
      if (!a2)
      {
        goto LABEL_28;
      }
    }

    Count = CFArrayGetCount(a2);
    v8 = Count;
    if (Count)
    {
      v9 = 8 * Count;
      if ((8 * Count) <= 0x1000)
      {
        MEMORY[0x1EEE9AC00](Count);
        v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v10, 8 * v8);
        goto LABEL_12;
      }

      v10 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
      if (v10)
      {
LABEL_12:
        v25.location = 0;
        v25.length = v8;
        CFArrayGetValues(a2, v25, v10);
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = *&v10[8 * v12];
          v14 = CA::Layer::retain_parent(*(v13 + 16), v5);
          if (v14)
          {
            v17 = v14;
            if (v14 != this || this[4] == v13)
            {
              CA::Layer::remove_sublayer(v14, v5, v13, v15, v16);
              MEMORY[0x1EEE9AC00](v18);
              v22[0] = v13;
              v22[1] = v11;
              v11 = v22;
            }

            while (1)
            {
              v19 = *v17;
              if (!*v17)
              {
                break;
              }

              v20 = *v17;
              atomic_compare_exchange_strong(v17, &v20, v19 - 1);
              if (v20 == v19)
              {
                if (v19 == 1)
                {
                  CA::Layer::destroy(v17);
                  CA::Layer::~Layer(v17);
                  if (x_malloc_get_zone::once != -1)
                  {
                    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                  }

                  malloc_zone_free(malloc_zone, v17);
                }

                break;
              }
            }
          }

          else
          {
            CA::Layer::remove_from_context(*(v13 + 16));
          }

          ++v12;
        }

        while (v12 != v8);
        a2 = objc_alloc_init(CALayerArray);
        CALayerArrayInsertValues(a2, 0, v10, v8);
        if (v9 > 0x1000)
        {
          free(v10);
        }

        goto LABEL_29;
      }
    }

    a2 = 0;
LABEL_28:
    v11 = 0;
LABEL_29:
    v23.isa = 0;
    CA::Layer::begin_change(this, v5, @"sublayers", &v23, v4);
    v21 = this[3];
    CA::Layer::update_sublayers(this, v5, v21, a2);
    this[3] = a2;
    CA::Layer::end_change(this, v5, 694, @"sublayers", v23.isa);
    CA::Transaction::unlock(v5);
    if (v21)
    {
      CA::Transaction::release_object(v5, v21);
    }

    while (v11)
    {
      CA::Transaction::release_object(v5, *v11);
      v11 = v11[1];
    }
  }
}

void CA::Layer::update_sublayers(CA::Layer *this, CA::Transaction *a2, CALayerArray *a3, CALayerArray *a4)
{
  v38[1] = *MEMORY[0x1E69E9840];
  if (a3 == a4)
  {
    return;
  }

  v38[0] = 0;
  if (!a3)
  {
    var0 = 0;
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  var0 = a3->_ivars.var0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_4:
  v9 = a4->_ivars.var0;
LABEL_7:
  v10 = 8 * var0;
  if (var0 < 1)
  {
    v12 = v38;
  }

  else
  {
    if ((v10 + 8) > 0x1000)
    {
      v12 = malloc_type_malloc(v10 + 8, 0x80040B8603338uLL);
    }

    else
    {
      MEMORY[0x1EEE9AC00](this);
      v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v12, v11);
    }

    p_ivars = &a3->_ivars;
    if (a3->_ivars.var0 != 1 || a3->_ivars.capacity)
    {
      p_ivars = p_ivars->layers;
    }

    memcpy(v12, p_ivars, 8 * var0);
    qsort(v12, var0, 8uLL, compare_pointer);
    v12[var0] = 0;
  }

  v14 = 8 * v9;
  v37 = v10;
  if (v9 < 1)
  {
    v16 = v38;
  }

  else
  {
    if ((v14 + 8) > 0x1000)
    {
      v16 = malloc_type_malloc(v14 + 8, 0x80040B8603338uLL);
    }

    else
    {
      MEMORY[0x1EEE9AC00](this);
      v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v16, v15);
    }

    v17 = &a4->_ivars;
    if (a4->_ivars.var0 != 1 || a4->_ivars.capacity)
    {
      v17 = v17->layers;
    }

    memcpy(v16, v17, 8 * v9);
    qsort(v16, v9, 8uLL, compare_pointer);
    v16[v9] = 0;
  }

  v18 = CA::Layer::ancestor_context_id(this, a2);
  v19 = 0;
  v36 = v12;
  v20 = v12 + 1;
  v21 = *v12;
  v22 = v16 + 1;
  v23 = *v16;
  if (v21 && v23)
  {
    v19 = 0;
    while (v21 != v23)
    {
      if (v21 >= v23)
      {
        CFRetain(v23);
        CA::Layer::update_added_sublayer(v23[2], a2, this, v18);
        v26 = v23[2];
        v27 = *(a2 + 28);
        if ((v27 & 0x80000000) != 0 || (v28 = *(v26 + v27 + 68)) == 0)
        {
          v28 = *CA::Layer::thread_flags_(v26, a2);
        }

        v19 |= v28;
        goto LABEL_36;
      }

      CA::Layer::update_removed_sublayer(v21[2], a2, v18);
      CA::Transaction::release_object(a2, v21);
      v24 = *v20++;
      v21 = v24;
LABEL_37:
      if (v21)
      {
        v30 = v23 == 0;
      }

      else
      {
        v30 = 1;
      }

      if (v30)
      {
        goto LABEL_42;
      }
    }

    v25 = *v20++;
    v21 = v25;
LABEL_36:
    v29 = *v22++;
    v23 = v29;
    goto LABEL_37;
  }

LABEL_42:
  if (v21)
  {
    do
    {
      CA::Layer::update_removed_sublayer(v21[2], a2, v18);
      CA::Transaction::release_object(a2, v21);
      v31 = *v20++;
      v21 = v31;
    }

    while (v31);
  }

  if (v23)
  {
    do
    {
      CFRetain(v23);
      CA::Layer::update_added_sublayer(v23[2], a2, this, v18);
      v32 = v23[2];
      v33 = *(a2 + 28);
      if ((v33 & 0x80000000) != 0 || (v34 = *(v32 + v33 + 68)) == 0)
      {
        v34 = *CA::Layer::thread_flags_(v32, a2);
      }

      v19 |= v34;
      v35 = *v22++;
      v23 = v35;
    }

    while (v35);
  }

  CA::Layer::update_for_changed_sublayers(this, a2, v19);
  if ((v37 - 4089) <= 0xFFFFFFFFFFFFEFFELL)
  {
    free(v36);
  }

  if ((v14 - 4089) <= 0xFFFFFFFFFFFFEFFELL)
  {
    free(v16);
  }
}

CATransform3D *__cdecl CATransform3DRotate(CATransform3D *__return_ptr retstr, CATransform3D *t, CGFloat angle, CGFloat x, CGFloat y, CGFloat z)
{
  v15[16] = *MEMORY[0x1E69E9840];
  CA::Mat4Impl::mat4_set_rotation(v15, v6, angle, x, y, z);
  CA::Mat4Impl::mat4_concat(t, v15, &t->m11, v9);
  v11 = *&t->m33;
  *&retstr->m31 = *&t->m31;
  *&retstr->m33 = v11;
  v12 = *&t->m43;
  *&retstr->m41 = *&t->m41;
  *&retstr->m43 = v12;
  v13 = *&t->m13;
  *&retstr->m11 = *&t->m11;
  *&retstr->m13 = v13;
  v14 = *&t->m23;
  *&retstr->m21 = *&t->m21;
  *&retstr->m23 = v14;
  return result;
}

void CA::Mat4Impl::mat4_set_rotation(CA::Mat4Impl *this, double *a2, double a3, double a4, double a5, double a6)
{
  *this = xmmword_183E20E00;
  *(this + 1) = 0u;
  *(this + 2) = xmmword_183E20E60;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = xmmword_183E20E00;
  *(this + 6) = 0u;
  *(this + 7) = xmmword_183E20E60;
  v12 = __sincos_stret(a3);
  *v11.i64 = v12.__cosval;
  *v10.i64 = v12.__sinval;
  if (fabs(v12.__sinval) >= 0.0000001)
  {
    if (fabs(v12.__cosval) < 0.0000001)
    {
      v11.i64[0] = 1.0;
      v14.f64[0] = NAN;
      v14.f64[1] = NAN;
      v10.i64[0] = vbslq_s8(vnegq_f64(v14), v11, v10).u64[0];
      v11.i64[0] = 0;
    }
  }

  else
  {
    v10.i64[0] = 1.0;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v11.i64[0] = vbslq_s8(vnegq_f64(v13), v10, v11).u64[0];
    v10.i64[0] = 0;
  }

  if (a4 == 0.0 && a5 == 0.0 && a6 == 1.0)
  {
    *this = v11.i64[0];
    *(this + 1) = v10.i64[0];
    *(this + 4) = -*v10.i64;
    *(this + 5) = v11.i64[0];
  }

  else if (a4 == 0.0 && a5 == 1.0 && a6 == 0.0)
  {
    *this = v11.i64[0];
    *(this + 2) = -*v10.i64;
    *(this + 8) = v10.i64[0];
    *(this + 10) = v11.i64[0];
  }

  else if (a4 == 1.0 && a5 == 0.0 && a6 == 0.0)
  {
    *(this + 5) = v11.i64[0];
    *(this + 6) = v10.i64[0];
    *(this + 9) = -*v10.i64;
    *(this + 10) = v11.i64[0];
  }

  else
  {
    v15 = a4 * a4;
    v16 = a5 * a5;
    v17 = a6 * a6;
    v18 = sqrt(a5 * a5 + a4 * a4 + a6 * a6);
    if (fabs(v18) >= 0.000001)
    {
      if (v18 != 1.0)
      {
        a4 = 1.0 / v18 * a4;
        a5 = 1.0 / v18 * a5;
        a6 = 1.0 / v18 * a6;
        v15 = a4 * a4;
        v16 = a5 * a5;
        v17 = a6 * a6;
      }

      v19 = a5 * (1.0 - *v11.i64);
      v20 = v19 * a4;
      v21 = v19 * a6;
      v22 = a6 * a4 * (1.0 - *v11.i64);
      v23 = a4 * *v10.i64;
      v24 = a5 * *v10.i64;
      v25 = a6 * *v10.i64;
      *this = v15 + (1.0 - v15) * *v11.i64;
      *(this + 1) = v20 + v25;
      *(this + 2) = v22 - v24;
      *(this + 4) = v20 - v25;
      *(this + 5) = v16 + (1.0 - v16) * *v11.i64;
      *(this + 6) = v21 + v23;
      *(this + 8) = v22 + v24;
      *(this + 9) = v21 - v23;
      *(this + 10) = v17 + (1.0 - v17) * *v11.i64;
    }
  }
}

uint64_t CALayerGetRenderId(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
    {
      dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
    }

    if (v1)
    {
      return CA::Render::_render_id_slide + v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL CAHostingTokenDataIsValid(_DWORD *a1)
{
  if (!a1[2])
  {
    return 0;
  }

  v1 = a1[3];
  if (v1 == 561541219)
  {
    v3 = a1[1];
    return v3 > -2 && v3 != 0;
  }

  else if (v1 == 1886351988)
  {
    return a1[1] > 0;
  }

  else
  {
    if (v1 != 1818454372 || *a1)
    {
      return 0;
    }

    return a1[1] == -1;
  }
}

void CA::Layer::layout_and_display_if_needed(CA::Layer *this, CA::Transaction *a2)
{
  v2 = MEMORY[0x1EEE9AC00](this);
  v4 = v3;
  v5 = v2;
  v6 = 0;
  v28[508] = *MEMORY[0x1E69E9840];
  v19 = v2 + 272;
  while (1)
  {
    if (BYTE12(xmmword_1ED4E980C) == 1)
    {
      *(v4 + 84) = v6;
    }

    CA::Layer::update_if_needed_(v5);
    v7 = *(v4 + 112);
    if ((v7 & 0x80000000) != 0 || (v8 = (v19 + 4 * v7), (v9 = *v8) == 0))
    {
      v8 = CA::Layer::thread_flags_(v5, v4);
      v9 = *v8;
    }

    if ((v9 & 0x300) == 0)
    {
      break;
    }

    v20 = v6;
    kdebug_trace();
    v10 = 0;
    v11 = 0;
    while ((*(v8 + 1) & 3) != 0)
    {
      *&buf[0] = 0;
      *(&buf[0] + 1) = v28;
      buf[1] = xmmword_183E214F0;
      v12 = *(v4 + 116);
      *(v4 + 116) = v12 + 1;
      if (!v12)
      {
        os_unfair_lock_lock(&CA::Transaction::transaction_lock);
      }

      v22 = 0;
      v26 = 0x100000000;
      v21 = 0u;
      v23 = v4;
      v24 = buf;
      v25 = 0x20000000100;
      CA::Layer::collect_layers_(v5, &v21);
      v13 = v22;
      v14 = v21;
      CA::Transaction::unlock(v4);
      if (v13)
      {
        v10 += v13;
        if (v14)
        {
          do
          {
            v15 = *v14;
            v16 = CA::Layer::signpost_name(*v14);
            CA::Transaction::ktrace_value_from_string(v4, 348782616, v16, 0);
            kdebug_trace();
            [v15[2] display];
            kdebug_trace();
            v14 = *(v14 + 8);
          }

          while (v14);
          v11 = 1;
        }

        else
        {
          v11 = 1;
        }
      }

      x_heap_free(buf);
    }

    kdebug_trace();
    if ((v11 & 1) == 0)
    {
      break;
    }

    v6 = v20 + 1;
    if (v20 >= 0x65)
    {
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v17 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        v18 = [objc_msgSend(v5[2] "debugDescription")];
        LODWORD(buf[0]) = 136315138;
        *(buf + 4) = v18;
        _os_log_error_impl(&dword_183AA6000, v17, OS_LOG_TYPE_ERROR, "Layer (%s) took over 100 attempts to update and display – this typically implies a client error. Breaking the loop!", buf, 0xCu);
      }

      return;
    }
  }
}

void CA::Render::anonymous namespace::cg_image_deleted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(&CA::Render::image_cache_lock);
  v5 = x_hash_table_remove(CA::Render::image_cache, a4);
  if (v5)
  {
    v6 = v5;
    if (*(v5 + 32) > 0.0)
    {
      v8 = *v5;
      v7 = *(v5 + 8);
      *(v8 + 8) = v7;
      *v7 = v8;
      *v5 = v5;
      *(v5 + 8) = v5;
    }

    os_unfair_lock_unlock(&CA::Render::image_cache_lock);
    v9 = v6[3];
    if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v9 + 16))(v9);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v10 = malloc_zone;

    malloc_zone_free(v10, v6);
  }

  else
  {

    os_unfair_lock_unlock(&CA::Render::image_cache_lock);
  }
}

_OWORD *CA::Transaction::create(CA::Transaction *this)
{
  if (CA::Render::memory_once != -1)
  {
    dispatch_once_f(&CA::Render::memory_once, 0, CA::Render::init_memory_warnings_);
  }

  v1 = malloc_type_malloc(0x2000uLL, 0x1020040F20EB193uLL);
  v2 = v1;
  if (v1)
  {
    v1[22] = 0u;
    v1[23] = 0u;
    v1[20] = 0u;
    v1[21] = 0u;
    v1[18] = 0u;
    v1[19] = 0u;
    v1[16] = 0u;
    v1[17] = 0u;
    v1[14] = 0u;
    v1[15] = 0u;
    v1[12] = 0u;
    v1[13] = 0u;
    v1[10] = 0u;
    v1[11] = 0u;
    v1[8] = 0u;
    v1[9] = 0u;
    v1[6] = 0u;
    v1[7] = 0u;
    v1[4] = 0u;
    v1[5] = 0u;
    v1[2] = 0u;
    v1[3] = 0u;
    *v1 = 0u;
    v1[1] = 0u;
    if (CA::Transaction::create(void)::once[0] != -1)
    {
      dispatch_once_f(CA::Transaction::create(void)::once, 0, CA::Transaction::init);
    }

    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576) = v2;
    v3 = pthread_main_np();
    v4 = *(v2 + 132) & 0xFE;
    if (v3)
    {
      ++v4;
    }

    *(v2 + 132) = v4;
    *(v2 + 15) = v2 + 136;
    if (dyld_program_sdk_at_least())
    {
      v5 = 0;
    }

    else
    {
      v5 = 16;
    }

    *(v2 + 132) = *(v2 + 132) & 0xEF | v5;
    if (dyld_program_sdk_at_least())
    {
      v6 = 0;
    }

    else
    {
      v6 = 32;
    }

    *(v2 + 132) = *(v2 + 132) & 0xDF | v6;
    *(*(v2 + 15) + 4) = -1;
    add = atomic_fetch_add(CA::Transaction::next_transaction_seed, 1u);
    v8 = *(v2 + 15);
    *(v8 + 200) = add + 1;
    *(v2 + 28) = -1;
    *(v8 + 56) = -1;
  }

  return v2;
}

void ___ZL27cons_CALayer_kCAValueDoublejb_block_invoke_2(uint64_t a1, uint64_t a2, double a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4[0] = a3;
  CA::Layer::setter(*(a2 + 16), v3, 0x12, v4);
}

uint64_t CAInternAtomWithCString(const char *a1)
{
  v2 = _CAInternAtomWithCString(a1);
  if (!v2)
  {
    v3 = CFStringCreateWithCString(0, a1, 0x8000100u);
    if (v3)
    {
      v4 = v3;
      os_unfair_lock_lock(&atomLock);
      v5 = atomDict;
      if (!atomDict)
      {
        initAtoms();
        v5 = atomDict;
      }

      v2 = x_hash_table_lookup(v5, v4, 0);
      if (!v2)
      {
        v2 = nextAtom++;
        insertAtom(v2, v4);
      }

      os_unfair_lock_unlock(&atomLock);
      CFRelease(v4);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void CA::Layer::prepare_commit(CA::Layer *this, CA::Transaction *a2)
{
  v2 = MEMORY[0x1EEE9AC00](this);
  v4 = v3;
  v5 = v2;
  v22[508] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v20[1] = v22;
  v21 = xmmword_183E214F0;
  v6 = *(v3 + 29);
  *(v3 + 29) = v6 + 1;
  if (!v6)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v15 = 0;
  v19 = 0x100000000;
  v14 = 0u;
  v16 = v4;
  v17 = v20;
  v18 = 0x400000002;
  CA::Layer::collect_layers_(v5, &v14);
  v7 = v15;
  v8 = v14;
  CA::Transaction::unlock(v4);
  if (v7)
  {
    kdebug_trace();
    for (; v8; v8 = v8[1])
    {
      v10 = *v8;
      v11 = *(*v8 + 16);
      if (v11)
      {
        CA::Layer::prepare_contents(v11, v4, v9);
      }

      v12 = *(v10 + 280);
      if (v12)
      {
        v13 = *(v4 + 29);
        *(v4 + 29) = v13 + 1;
        if (v13 || (os_unfair_lock_lock(&CA::Transaction::transaction_lock), (v12 = *(v10 + 280)) != 0))
        {
          do
          {
            if ((*(v12 + 57) & 1) == 0 && (*(v12 + 58) & 1) == 0 && (*(v12 + 61) & 1) == 0 && (*(v12 + 62) & 1) == 0)
            {
              [v12[1] CA_prepareRenderValue];
            }

            v12 = *v12;
          }

          while (v12);
        }

        CA::Transaction::unlock(v4);
      }
    }

    kdebug_trace();
  }

  x_heap_free(v20);
}

void CA::Layer::destroy(CA::Layer *this)
{
  v2 = CA::Transaction::ensure_compat(this);
  v3 = *(v2 + 29);
  *(v2 + 29) = v3 + 1;
  if (!v3)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  if ((*(this + 1) & 0x60000) != 0)
  {
    v4 = *(*(v2 + 15) + 224);
    if (v4)
    {
      x_hash_table_remove(v4, this);
    }
  }

  else
  {
    v5 = *(this + 3);
    if (v5)
    {
      CA::Layer::update_sublayers(this, v2, v5, 0);
    }

    v6 = *(this + 4);
    if (v6)
    {
      v7 = *(v6 + 16);
      v8 = CA::Layer::ancestor_context_id(this, v2);
      CA::Layer::update_removed_sublayer(v7, v2, v8);
    }

    v9 = *(this + 35);
    if (v9)
    {
      if ((*(this + 55) & 0x10) == 0 && non_visible_animating_layers)
      {
        CFSetRemoveValue(non_visible_animating_layers, this);
      }

      do
      {
        v10 = *v9;
        schedule_stop_callback(v9, &animation_state);
        free_non_deferred_animation(v9, 1);
        v9 = v10;
      }

      while (v10);
      CA::Layer::set_animations(this, 0);
    }

    if (*(this + 66))
    {
      if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
      {
        dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
      }

      if (this)
      {
        v11 = this + CA::Render::_render_id_slide;
      }

      else
      {
        v11 = 0;
      }

      CA::Transaction::add_deleted_id(*(v2 + 15), v11, *(this + 66), 0);
    }
  }

  v12 = *(this + 3);
  if (v12)
  {
    CA::Transaction::release_object(v2, v12);
    *(this + 3) = 0;
  }

  v13 = *(this + 4);
  if (v13)
  {
    CA::Transaction::release_object(v2, v13);
    *(this + 4) = 0;
  }

  v14 = *(this + 36);
  if (v14)
  {
    CA::Transaction::release_object(v2, v14);
    *(this + 36) = 0;
  }

  CA::Transaction::unlock(v2);
}

void schedule_stop_callback(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 68) == 1)
  {
    schedule_start_callback(a1, a2);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CA::Transaction::Continuation::unref(v4);
    *(a1 + 48) = 0;
  }

  if (*(a1 + 69) == 1)
  {
    *a2 = x_list_prepend(*a2, *(a1 + 8));
    CFRetain(*(a1 + 8));
    *(a1 + 69) = 0;
  }
}

CA::AttrList *CA::Transaction::set_value(CA::Transaction *this, const void *a2, int a3, unsigned __int8 *a4)
{
  if (!**(this + 15))
  {
    CA::Transaction::ensure_implicit(this, 1);
  }

  v8 = *(this + 13);
  if (!v8)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v8 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x20uLL, 0xDEEC3011uLL);
    *(this + 13) = v8;
  }

  v9 = *(v8 + 2);
  if (!v9)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v9 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  }

  result = CA::AttrList::set(v9, a2, a3, a4);
  *(*(this + 13) + 16) = result;
  return result;
}

double ___ZL27cons_CALayer_kCAValueDoublejb_block_invoke(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = 0;
  CA::Layer::getter(*(a2 + 16), v2, 0x12, v4);
  return *v4;
}

double CATransform3DGetDecomposition_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  memset(v13, 0, sizeof(v13));
  CA::Mat4Impl::mat4_get_unmatrix(a6, v13, 0);
  if (a1)
  {
    *a1 = v13[0];
    result = *&v13[1];
    *(a1 + 16) = *&v13[1];
  }

  if (a2)
  {
    *a2 = *(&v15[2] + 8);
    result = *(&v15[3] + 1);
    *(a2 + 16) = *(&v15[3] + 1);
  }

  if (a3)
  {
    *a3 = v14;
    result = *v15;
    *(a3 + 16) = *&v15[0];
  }

  if (a4)
  {
    *a4 = *(&v13[1] + 8);
    result = *(&v13[2] + 1);
    *(a4 + 16) = *(&v13[2] + 1);
  }

  if (a5)
  {
    result = *(v15 + 1);
    v12 = *(&v15[1] + 8);
    *a5 = *(v15 + 8);
    a5[1] = v12;
  }

  return result;
}

void CA::Mat4Impl::mat4_get_unmatrix(uint64_t a1, uint64_t a2, const double *a3)
{
  v3 = a3;
  v78 = *MEMORY[0x1E69E9840];
  if (*(a1 + 120) != 0.0)
  {
    _Q18 = *a1;
    v6 = *(a1 + 16);
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v10 = *(a1 + 64);
    v9 = *(a1 + 80);
    v11 = *(a1 + 96);
    v12 = *(a1 + 112);
    v75[0] = *a1;
    v75[1] = *&v6.f64[0];
    v75[2] = v7;
    v75[3] = v8.u64[0];
    v75[4] = v10;
    v75[5] = v9.u64[0];
    v75[6] = v11;
    v76 = v12.f64[0];
    v77 = 0x3FF0000000000000;
    if (v6.f64[1] != 0.0 || (v13 = vmovn_s64(vmvnq_s8(vceqzq_f64(vzip2q_s64(v9, v8)))), (v13.i8[4] & 1) != 0) || (v13.i8[0] & 1) != 0)
    {
      v63 = v11;
      v64 = v12;
      v65 = v7;
      v66 = v8;
      v67 = v10;
      v68 = v9;
      __x = _Q18;
      v71 = v6;
      if (CA::Mat4Impl::mat4_invert(v74, v75, a3))
      {
        CA::Mat4Impl::mat4_transpose(v73, v74, v14);
        v6.f64[0] = v71.f64[0];
        v8.i64[0] = *&v66.f64[0];
        v9.i64[0] = *&v68.f64[0];
        v12.f64[0] = v64.f64[0];
        v15 = vmlaq_laneq_f64(vmlaq_laneq_f64(vmlaq_laneq_f64(vmulq_laneq_f64(v73[1], v71, 1), v73[3], v66, 1), v73[5], v68, 1), v73[7], v64, 1);
        *(a2 + 72) = vmlaq_laneq_f64(vmlaq_laneq_f64(vmlaq_laneq_f64(vmulq_laneq_f64(v73[0], v71, 1), v73[2], v66, 1), v73[4], v68, 1), v73[6], v64, 1);
        *(a2 + 88) = v15;
      }

      else
      {
        *(a2 + 72) = 0;
        *(a2 + 80) = 0;
        *(a2 + 88) = 0;
        *(a2 + 96) = 0x3FF0000000000000;
        v6.f64[0] = v71.f64[0];
        v9.i64[0] = *&v68.f64[0];
        v8.i64[0] = *&v66.f64[0];
        v12.f64[0] = v64.f64[0];
      }

      v6.f64[1] = 0.0;
      _Q18 = __x;
      v10 = v67;
      v7 = v65;
      v11 = v63;
    }

    else
    {
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0x3FF0000000000000;
    }

    *(a2 + 48) = v11;
    *(a2 + 64) = v12.f64[0];
    _D8 = _Q18.f64[1];
    __asm { FMLA            D0, D8, V18.D[1] }

    v22 = sqrt(_D0 + vmulq_f64(v6, v6).f64[0]);
    *a2 = v22;
    if (v22 != 0.0)
    {
      _Q18.f64[0] = 1.0 / v22 * _Q18.f64[0];
      _D8 = 1.0 / v22 * _Q18.f64[1];
      v6.f64[0] = 1.0 / v22 * v6.f64[0];
    }

    v23 = v6.f64[0] * *v8.i64 + _D8 * v7.f64[1] + _Q18.f64[0] * v7.f64[0];
    v24 = v7.f64[0] - v23 * _Q18.f64[0];
    v25 = v7.f64[1] - v23 * _D8;
    v26 = *v8.i64 - v23 * v6.f64[0];
    v27 = sqrt(v24 * v24 + v25 * v25 + v26 * v26);
    *(a2 + 8) = v27;
    v28 = 0.0;
    if (v27 == 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v24 = 1.0 / v27 * v24;
      v25 = 1.0 / v27 * v25;
      v26 = 1.0 / v27 * v26;
      v29 = 1.0 / v27 * v23;
    }

    v30 = v6.f64[0] * *v9.i64 + _D8 * v10.f64[1] + _Q18.f64[0] * v10.f64[0];
    v31 = v10.f64[0] - v30 * _Q18.f64[0];
    v32 = v10.f64[1] - v30 * _D8;
    v33 = *v9.i64 - v30 * v6.f64[0];
    v34 = v26 * v33 + v25 * v32 + v24 * v31;
    v35 = v31 - v34 * v24;
    v36 = v32 - v34 * v25;
    v37 = v33 - v34 * v26;
    v38 = sqrt(v35 * v35 + v36 * v36 + v37 * v37);
    *(a2 + 16) = v38;
    *(a2 + 24) = v29;
    if (v38 == 0.0)
    {
      v39 = 0.0;
    }

    else
    {
      v35 = 1.0 / v38 * v35;
      v36 = 1.0 / v38 * v36;
      v37 = 1.0 / v38 * v37;
      v28 = 1.0 / v38 * v30;
      v39 = 1.0 / v38 * v34;
    }

    *(a2 + 32) = v28;
    *(a2 + 40) = v39;
    if (-(v36 * v26 - v37 * v25) * _Q18.f64[0] + -(v37 * v24 - v35 * v26) * _D8 + -(v35 * v25 - v36 * v24) * v6.f64[0] < 0.0)
    {
      *a2 = -v22;
      *(a2 + 8) = -v27;
      _Q18.f64[0] = -_Q18.f64[0];
      *(a2 + 16) = -v38;
      _D8 = -_D8;
      v6.f64[0] = -v6.f64[0];
      v24 = -v24;
      v25 = -v25;
      v26 = -v26;
      v35 = -v35;
      v36 = -v36;
      v37 = -v37;
    }

    if (v3)
    {
      v40 = v37 + 1.0 + _Q18.f64[0] + v25;
      if (v40 <= 0.0001)
      {
        if (_Q18.f64[0] <= v25 || _Q18.f64[0] <= v37)
        {
          v50 = sqrt(v37 + 1.0 - (_Q18.f64[0] + v25));
          v51 = 1.0 / (v50 + v50);
          v52 = (v6.f64[0] + v35) * v51;
          v53 = v26 + v36;
          v54 = v53 * v51;
          v55 = v50 * 0.5;
          v56 = (v24 - _D8) * v51;
          v57 = sqrt(v25 + 1.0 - (v37 + _Q18.f64[0]));
          v58 = 1.0 / (v57 + v57);
          v59 = (_D8 + v24) * v58;
          v60 = v57 * 0.5;
          v61 = v53 * v58;
          v62 = (v6.f64[0] - v35) * v58;
          if (v25 > v37)
          {
            v43 = v59;
          }

          else
          {
            v43 = v52;
          }

          if (v25 > v37)
          {
            v44 = v60;
          }

          else
          {
            v44 = v54;
          }

          if (v25 > v37)
          {
            v45 = v61;
          }

          else
          {
            v45 = v55;
          }

          if (v25 > v37)
          {
            v42 = v62;
          }

          else
          {
            v42 = v56;
          }
        }

        else
        {
          v47 = sqrt(1.0 - (v37 + v25) + _Q18.f64[0]);
          v43 = v47 * 0.5;
          v48 = 1.0 / (v47 + v47);
          v44 = (_D8 + v24) * v48;
          v45 = (v6.f64[0] + v35) * v48;
          v42 = (v36 - v26) * v48;
        }
      }

      else
      {
        v41 = 0.5 / sqrt(v40);
        v42 = 0.25 / v41;
        v43 = v41 * (v36 - v26);
        v44 = v41 * (v6.f64[0] - v35);
        v45 = v41 * (v24 - _D8);
      }

      *(a2 + 104) = v43;
      *(a2 + 112) = v44;
      v49 = 128;
      *(a2 + 120) = v45;
      goto LABEL_50;
    }

    __xa = _Q18.f64[0];
    v72 = v6.f64[0];
    v46 = asin(-v6.f64[0]);
    *(a2 + 112) = v46;
    if (fabs(v72) >= 1.0)
    {
      *(a2 + 104) = atan2(v24, v25);
    }

    else
    {
      if (v37 >= 0.0 || v26 != 0.0 || _D8 != 0.0 || __xa >= 0.0)
      {
        *(a2 + 104) = atan2(v26, v37);
        v42 = atan2(_D8, __xa);
        goto LABEL_36;
      }

      *(a2 + 112) = dbl_183E21140[v72 <= 0.0] - v46;
      *(a2 + 104) = 0;
    }

    v42 = 0.0;
LABEL_36:
    v49 = 120;
LABEL_50:
    *(a2 + v49) = v42;
    goto LABEL_51;
  }

  *(a2 + 128) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
LABEL_51:
  *(a2 + 136) = v3;
}

void free_non_deferred_animation(_BYTE *ptr, int a2)
{
  if (ptr[59] == 1)
  {
    ptr[60] |= a2;
  }

  else
  {
    if (*(ptr + 18) != -892679478)
    {
      __assert_rtn("free_non_deferred_animation", "CALayer.mm", 7319, "la->canary == LayerAnimation::CANARY_VALUE");
    }

    v4 = *(ptr + 1);
    if (v4)
    {
      v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
      if (!v5)
      {
        v5 = CA::Transaction::create(0);
        v4 = *(ptr + 1);
      }

      CA::Transaction::release_object(v5, v4);
    }

    v6 = *(ptr + 4);
    if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v6 + 16))(v6);
    }

    v7 = *(ptr + 2);
    if (v7)
    {
      CFRelease(v7);
    }

    if (a2)
    {
      *&v8 = 0x3333333333333333;
      *(&v8 + 1) = 0x3333333333333333;
      *(ptr + 3) = v8;
      *(ptr + 4) = v8;
      *(ptr + 1) = v8;
      *(ptr + 2) = v8;
      *ptr = v8;
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v9 = malloc_zone;

      malloc_zone_free(v9, ptr);
    }
  }
}

void CA::Layer::~Layer(CA::AttrList **this)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 576);
  if (!v3)
  {
    v3 = CA::Transaction::create(this);
  }

  v4 = this[32];
  if (v4)
  {
    CA::Transaction::release_object(v3, v4);
  }

  v5 = this[23];
  if (v5)
  {
    v6 = *(v3 + 29);
    *(v3 + 29) = v6 + 1;
    if (v6 || (os_unfair_lock_lock(&CA::Transaction::transaction_lock), (v5 = this[23]) != 0))
    {
      CA::AttrList::free(v5, v4);
    }

    CA::Transaction::unlock(v3);
  }

  v7 = (this + 30);
  if (this[30])
  {
    if (*(this + 248) == 1)
    {
      v7 = objc_storeWeakOrNil(v7, 0);
    }

    else
    {
      *v7 = 0;
    }
  }

  v8 = *(StatusReg + 576);
  if (!v8)
  {
    v8 = CA::Transaction::create(v7);
  }

  v9 = this[18];
  if (v9)
  {
    CA::Transaction::release_object(v8, v9);
  }

  v10 = this[9];
  if (v10)
  {
    v11 = *(v8 + 29);
    *(v8 + 29) = v11 + 1;
    if (v11 || (os_unfair_lock_lock(&CA::Transaction::transaction_lock), (v10 = this[9]) != 0))
    {
      CA::AttrList::free(v10, v9);
    }

    CA::Transaction::unlock(v8);
  }

  v12 = (this + 16);
  if (this[16])
  {
    if (*(this + 136) == 1)
    {
      objc_storeWeakOrNil(v12, 0);
    }

    else
    {
      *v12 = 0;
    }
  }
}

void sub_183B54E10(_Unwind_Exception *exception_object)
{
  v3 = (v1 + 128);
  if (*(v1 + 128))
  {
    if (*(v1 + 136) == 1)
    {
      objc_storeWeakOrNil(v3, 0);
    }

    else
    {
      *v3 = 0;
    }
  }

  _Unwind_Resume(exception_object);
}

void CA::Display::Display::~Display(CFTypeRef *this)
{
  CA::Display::Display::~Display(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF1F3E28;
  CFRelease(this[11]);
  CFRelease(this[12]);
  v2 = this[16];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = this[17];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = this[18];
  if (v4)
  {
    CFRelease(v4);
  }

  _Block_release(this[14]);
  _Block_release(this[92]);
  CA::MachPortUtil::ClientIPC::destroy((this + 93));
  CA::Display::DisplayTimingsControl::~DisplayTimingsControl((this + 58));
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table((this + 25));
  std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(this[23]);
  v5 = this[19];
  if (v5)
  {
    this[20] = v5;
    operator delete(v5);
  }
}

void sub_183B55018(_Unwind_Exception *a1)
{
  CA::Display::DisplayTimingsControl::~DisplayTimingsControl((v1 + 464));
  CA::WindowServer::Display::ModeSet::~ModeSet((v1 + 152));
  _Unwind_Resume(a1);
}

void CA::Display::DisplayTimingsControl::~DisplayTimingsControl(CA::Display::DisplayTimingsControl *this)
{
  *this = &unk_1EF1F3E08;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  *(this + 3) = 0;
  _Block_release(*(this + 24));
  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 16))(v5);
    }
  }
}

{
  CA::Display::DisplayTimingsControl::~DisplayTimingsControl(this);

  JUMPOUT(0x1865EA9A0);
}

void sub_183B55124(_Unwind_Exception *exception_object)
{
  v3 = v1[20];
  if (v3)
  {
    v1[21] = v3;
    operator delete(v3);
  }

  v4 = v1[14];
  if (v4)
  {
    v1[15] = v4;
    operator delete(v4);
  }

  v5 = v1[2];
  if (v5)
  {
    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 16))(v5);
    }
  }

  _Unwind_Resume(exception_object);
}

void CA::MachPortUtil::ClientIPC::destroy(CA::MachPortUtil::ClientIPC *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    dispatch_activate(v2);
    dispatch_source_cancel(*(this + 2));
    dispatch_release(*(this + 2));
    *(this + 2) = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    dispatch_release(v3);
    *(this + 1) = 0;
  }

  *this = 0;
}

void CA::Display::DisplayLink::dispatch_deferred_display_links(CA::Display::DisplayLink *this)
{
  v1 = this;
  v15[1] = *MEMORY[0x1E69E9840];
  kdebug_trace();
  os_unfair_lock_lock(&CA::Display::DisplayLink::_list_lock);
  v3 = CA::Display::DisplayLink::_list;
  if (CA::Display::DisplayLink::_list)
  {
    v4 = 0;
    v5 = CA::Display::DisplayLink::_list;
    do
    {
      if (*(v5 + 200) == 1 && (v1 == -1 || *(*(v5 + 8) + 104) == v1))
      {
        ++v4;
      }

      v5 = *(v5 + 48);
    }

    while (v5);
    if (v4)
    {
      v6 = 8 * v4;
      if ((8 * v4) > 0x1000)
      {
        v7 = malloc_type_malloc(8 * v4, 0xC1360398uLL);
        v3 = CA::Display::DisplayLink::_list;
        if (CA::Display::DisplayLink::_list)
        {
LABEL_11:
          v8 = 0;
          do
          {
            if (*(v3 + 200) == 1 && (v1 == -1 || *(*(v3 + 8) + 104) == v1))
            {
              while (1)
              {
                v9 = *(v3 + 40);
                if (!v9)
                {
                  break;
                }

                v10 = *(v3 + 40);
                atomic_compare_exchange_strong((v3 + 40), &v10, v9 + 1);
                if (v10 == v9)
                {
                  v7[v8++] = v3;
                  break;
                }
              }
            }

            v3 = *(v3 + 48);
          }

          while (v3);
          os_unfair_lock_unlock(&CA::Display::DisplayLink::_list_lock);
          if (v8)
          {
            v11 = v7;
            v12 = v8;
            do
            {
              v13 = *v11++;
              CA::Display::DisplayLink::callback(*(v13 + 208), *(v13 + 216), *(v13 + 224), 0, v13);
              --v12;
            }

            while (v12);
            v14 = v7;
            do
            {
              if (*v14)
              {
                CA::Display::DisplayLink::unref(*v14);
              }

              ++v14;
              --v8;
            }

            while (v8);
          }

          goto LABEL_32;
        }
      }

      else
      {
        MEMORY[0x1EEE9AC00](v2);
        v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v7, v6);
        if (v3)
        {
          goto LABEL_11;
        }
      }

      os_unfair_lock_unlock(&CA::Display::DisplayLink::_list_lock);
LABEL_32:
      if (v6 > 0x1000)
      {
        free(v7);
      }

      return;
    }
  }

  os_unfair_lock_unlock(&CA::Display::DisplayLink::_list_lock);
}

uint64_t CA::Display::DisplayTimingsControl::compat_quanta_mode(CA::Display::DisplayTimingsControl *this)
{
  if (*(this + 14) < 2u)
  {
    return 0;
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  result = *&dword_1ED4E9714 == 1;
  if (!*&dword_1ED4E9714)
  {
    if ((*(this + 241) & 2) != 0)
    {
      return dyld_program_sdk_at_least() ^ 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t CA::Display::DisplayTimingsControl::server_frame_interval(CA::Display::DisplayTimingsControl *this, uint64_t a2)
{
  if ((*(this + 241) & 4) == 0)
  {
    return 0;
  }

  os_unfair_lock_lock(this + 3);
  v5 = *(this + 3);
  if (v5)
  {
    do
    {
      do
      {
        explicit = atomic_load_explicit((v5 + 28), memory_order_acquire);
        v7 = *(v5 + 32);
        v8 = *(v5 + 52);
        v9 = *(v5 + 56);
        __dmb(9u);
      }

      while ((explicit & 1) != 0);
    }

    while (explicit != *(v5 + 28));
    if (!a2)
    {
      a2 = mach_absolute_time();
    }

    if (v7 - 1 >= a2)
    {
      v2 = v8;
    }

    else
    {
      v2 = v9;
    }
  }

  else
  {
    v2 = 0;
  }

  os_unfair_lock_unlock(this + 3);
  return v2;
}

uint64_t CA::Display::DisplayTimingsControl::server_compat_quanta_mode(os_unfair_lock_s *this, uint64_t a2)
{
  if ((this[60]._os_unfair_lock_opaque & 0x400) != 0)
  {
    os_unfair_lock_lock(this + 3);
    v5 = *&this[6]._os_unfair_lock_opaque;
    if (v5)
    {
      do
      {
        do
        {
          explicit = atomic_load_explicit((v5 + 28), memory_order_acquire);
          v7 = *(v5 + 32);
          v8 = *(v5 + 40);
          v9 = *(v5 + 41);
          __dmb(9u);
        }

        while ((explicit & 1) != 0);
      }

      while (explicit != *(v5 + 28));
      if (!a2)
      {
        a2 = mach_absolute_time();
      }

      if (v7 - 1 < a2)
      {
        v2 = v9;
      }

      else
      {
        v2 = v8;
      }
    }

    else
    {
      v2 = 0;
    }

    os_unfair_lock_unlock(this + 3);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t CA::Transaction::set_frame_input_time(uint64_t this, double a2)
{
  v3 = *(this + 192);
  if (v3 == 0.0 || v3 > a2)
  {
    *(this + 192) = a2;
    if ((*(this + 204) & 0x20) == 0)
    {
      CAHostTimeWithTime(a2);

      return kdebug_trace();
    }
  }

  return this;
}

void *CA::Transaction::run_commit_handlers(uint64_t a1, unsigned int a2)
{
  result = CA::Transaction::commit_handlers_for_phase(*(a1 + 120), a2);
  if (*result)
  {
    v5 = result;
    kdebug_trace();
    *(*(a1 + 120) + 56) = a2;
    v6 = *v5;
    if (*v5)
    {
      v7 = 0;
      do
      {
        (*(*v6 + 16))();
        _Block_release(*v6);
        v6 = v6[1];
        ++v7;
      }

      while (v6);
      v8 = *v5;
      if (*v5)
      {
        do
        {
          v9 = v8[1];
          free(v8);
          v8 = v9;
        }

        while (v9);
      }
    }

    *v5 = 0;
    *(*(a1 + 120) + 56) = -1;

    return kdebug_trace();
  }

  return result;
}

void x_hash_table_remove_if (uint64_t a1, unsigned int (*a2)(void, void, uint64_t), uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = 0;
    v7 = 1 << *a1;
    do
    {
      v8 = (*(a1 + 16) + 8 * v6);
      while (1)
      {
        v9 = *v8;
        if (!*v8)
        {
          break;
        }

        if (a2(v9[2], v9[3], a3))
        {
          *v8 = *v9;
          v10 = v9[3];
          v11 = *(a1 + 48);
          if (v11)
          {
            v11(v9[2]);
          }

          v12 = *(a1 + 56);
          if (v12)
          {
            v12(v10);
          }

          v13 = *(a1 + 72);
          if (v13)
          {
            *v9 = *(v13 + 8);
            *(v13 + 8) = v9;
          }

          else
          {
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            malloc_zone_free(malloc_zone, v9);
          }

          --*(a1 + 24);
        }

        else
        {
          v8 = *v8;
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }
}

uint64_t CA::release_root_if_unused(CA *this, CA::Layer *a2, CA::Layer *a3, void *a4)
{
  if (*(this + 2))
  {
    return 0;
  }

  while (1)
  {
    v6 = *this;
    if (!*this)
    {
      break;
    }

    v7 = *this;
    atomic_compare_exchange_strong(this, &v7, v6 - 1);
    if (v7 == v6)
    {
      if (v6 == 1)
      {
        CA::Layer::destroy(this);
        CA::Layer::~Layer(this);
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, this);
      }

      return 1;
    }
  }

  return 1;
}

void *CA::Context::retain_all_contexts(CA::Context *this, void *a2, size_t *a3, unint64_t *a4, const __CFArray *a5)
{
  v8 = this;
  v33 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&CA::Context::_lock);
  if (a4)
  {
    v9 = [a4 count];
    if (CA::all_contexts(void)::contexts_data_initialized)
    {
      v11 = *(&CA::all_contexts(void)::contexts_data + 1);
      for (i = CA::all_contexts(void)::contexts_data; ; ++i)
      {
        if (i == v11)
        {
          goto LABEL_23;
        }

        v12 = *i;
        v13 = **i;
        if (!v13 && (v8 & 1) != 0)
        {
          break;
        }

        if (v13)
        {
          if (*(v12 + 88) == 1)
          {
            if (!objc_loadWeak(v12 + 10))
            {
              break;
            }
          }

          else if (!v12[10])
          {
            break;
          }
        }

LABEL_13:
        ;
      }

      ++v9;
      goto LABEL_13;
    }

    CA::all_contexts(void)::contexts_data = 0uLL;
    qword_1ED4E9310 = 0;
    CA::all_contexts(void)::contexts_data_initialized = 1;
    goto LABEL_23;
  }

  if (v8)
  {
    if (CA::all_contexts(void)::contexts_data_initialized)
    {
      v9 = (*(&CA::all_contexts(void)::contexts_data + 1) - CA::all_contexts(void)::contexts_data) >> 3;
      goto LABEL_23;
    }

LABEL_65:
    CA::all_contexts(void)::contexts_data = 0uLL;
    qword_1ED4E9310 = 0;
    CA::all_contexts(void)::contexts_data_initialized = 1;
    if (a2)
    {
      goto LABEL_29;
    }

LABEL_66:
    v16 = 0;
    goto LABEL_67;
  }

  if ((CA::all_contexts(void)::contexts_data_initialized & 1) == 0)
  {
    goto LABEL_65;
  }

  v14 = CA::all_contexts(void)::contexts_data;
  if (CA::all_contexts(void)::contexts_data == *(&CA::all_contexts(void)::contexts_data + 1))
  {
    goto LABEL_28;
  }

  v9 = 0;
  do
  {
    v15 = *v14++;
    if (*v15)
    {
      ++v9;
    }
  }

  while (v14 != *(&CA::all_contexts(void)::contexts_data + 1));
LABEL_23:
  if (v9 > *a3)
  {
    if (v9 >> 61)
    {
      v16 = 0;
      a2 = 0;
      goto LABEL_67;
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    a2 = malloc_type_zone_malloc(malloc_zone, 8 * v9, 0x2004093837F09uLL);
  }

LABEL_28:
  if (!a2)
  {
    goto LABEL_66;
  }

LABEL_29:
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = 0;
  v17 = 0;
  v18 = [a4 countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v18)
  {
    v19 = *v30;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(a4);
        }

        v21 = [*(*(&v29 + 1) + 8 * j) contextImpl];
        a2[v16] = v21;
        ++*v21;
        v17 = v17 || v21[35] != 0;
        ++v16;
      }

      v18 = [a4 countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v18);
  }

  if (CA::all_contexts(void)::contexts_data_initialized)
  {
    v23 = *(&CA::all_contexts(void)::contexts_data + 1);
    v22 = CA::all_contexts(void)::contexts_data;
    if (CA::all_contexts(void)::contexts_data != *(&CA::all_contexts(void)::contexts_data + 1))
    {
      v24 = v16;
      do
      {
        v25 = *v22;
        v26 = **v22;
        if (a4)
        {
          if (!v26 && (v8 & 1) != 0)
          {
            v26 = 0;
            goto LABEL_55;
          }

          if (v26)
          {
            if (*(v25 + 88) == 1)
            {
              if (!objc_loadWeak(v25 + 10))
              {
                goto LABEL_54;
              }
            }

            else if (!*(v25 + 10))
            {
LABEL_54:
              v26 = *v25;
LABEL_55:
              v16 = v24 + 1;
              a2[v24] = v25;
              *v25 = v26 + 1;
              v17 = v17 || v25[35] != 0;
              goto LABEL_58;
            }
          }
        }

        else if ((v8 & 1) != 0 || v26)
        {
          goto LABEL_55;
        }

        v16 = v24;
LABEL_58:
        ++v22;
        v24 = v16;
      }

      while (v22 != v23);
    }
  }

  else
  {
    CA::all_contexts(void)::contexts_data = 0uLL;
    qword_1ED4E9310 = 0;
    CA::all_contexts(void)::contexts_data_initialized = 1;
  }

  if (v16 >= 2 && v17)
  {
    qsort(a2, v16, 8uLL, CA::compare_contexts);
  }

LABEL_67:
  *a3 = v16;
  os_unfair_lock_unlock(&CA::Context::_lock);
  return a2;
}

uint64_t CA::compare_contexts(CA *this, const void *a2, const void *a3)
{
  v3 = *this;
  v4 = *(*this + 140);
  v5 = *(*a2 + 140);
  result = (v5 - v4);
  if (v5 == v4)
  {
    return (*(*a2 + 8) - *(v3 + 8));
  }

  return result;
}

void sub_183B5692C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  CACGContextEvaluator::~CACGContextEvaluator(va);
  _Unwind_Resume(a1);
}

uint64_t CA::Render::Layer::contents_format_from_string(__CFString *cf1, const __CFString *a2)
{
  result = 0;
  if (cf1 && cf1 != @"RGBA8")
  {
    if (CFEqual(cf1, @"RGBA8"))
    {
      return 0;
    }

    else if (CFEqual(cf1, @"Automatic"))
    {
      return 5;
    }

    else if (CFEqual(cf1, @"RGBAh"))
    {
      return 1;
    }

    else if (CFEqual(cf1, @"RGBA10XR"))
    {
      return 2;
    }

    else if (CFEqual(cf1, @"A8"))
    {
      return 3;
    }

    else
    {
      return 4 * (CFEqual(cf1, @"Gray8") != 0);
    }
  }

  return result;
}

uint64_t image_format_for_contents_format(int a1, int a2)
{
  if (a2)
  {
    v2 = 10;
  }

  else
  {
    v2 = 18;
  }

  if (a1 == 5)
  {
    v3 = 36;
  }

  else
  {
    v3 = 1;
  }

  if (a1 != 4)
  {
    v2 = v3;
  }

  if (a1 == 3)
  {
    v4 = 9;
  }

  else
  {
    v4 = v2;
  }

  if (a2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  if (a2)
  {
    v6 = 17;
  }

  else
  {
    v6 = 13;
  }

  if (a2)
  {
    v7 = 33;
  }

  else
  {
    v7 = 35;
  }

  if (a1 == 2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (a1 == 1)
  {
    v8 = v6;
  }

  if (!a1)
  {
    v8 = v5;
  }

  if (a1 <= 2)
  {
    return v8;
  }

  else
  {
    return v4;
  }
}

void CA::Display::DisplayTimingsControl::timing_reference(CA::Display::DisplayTimingsControl *this, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 241);
  if ((v5 & 0x10) != 0)
  {
    *this = *(a2 + 72);
    v18 = (v5 & 8) == 0;
    v19 = 64;
    if (v18)
    {
      v19 = 48;
    }

    *(this + 2) = CAHostTimeWithTime(*(a2 + v19));
  }

  else
  {
    v6 = *(a2 + 192);
    if (v6)
    {
      v32 = 0;
      v33 = 0;
      v31 = 1;
      v7 = (*(v6 + 16))(v6, &v31);
      v8 = v33;
      if (v33)
      {
        v9 = v7;
      }

      else
      {
        v9 = 0;
      }

      if (v9 != 1)
      {
        goto LABEL_21;
      }

      v10 = *(a2 + 208);
      v11 = v32;
      if (v10 - 1 >= v32)
      {
        *(a2 + 200) = 0;
        *(a2 + 208) = v11;
        v10 = v11;
      }

      v12 = *(a2 + 241);
      v13 = 64;
      if ((v12 & 8) == 0)
      {
        v13 = 48;
      }

      v14 = CAHostTimeWithTime(*(a2 + v13));
      if (!v14)
      {
        v16 = *(a2 + 200);
        goto LABEL_20;
      }

      v15 = vcvtad_u64_f64((v11 - v10) / v14);
      v16 = *(a2 + 200) + v15;
      *(a2 + 200) = v16;
      *(a2 + 208) = v11;
      if (v15 && (v12 & 1) != 0 && *(a2 + 48) != *(a2 + 32))
      {
        if ((v16 & 1) == 0)
        {
LABEL_18:
          *(a2 + 240) = 10;
          goto LABEL_19;
        }

        v17 = *(a2 + 240) - 1;
        *(a2 + 240) = v17;
        if (!v17)
        {
          *(a2 + 200) = ++v16;
          goto LABEL_18;
        }
      }

LABEL_19:
      v10 = v11;
LABEL_20:
      *(a2 + 216) = v16;
      *(a2 + 224) = v10;
      *(a2 + 232) = v8;
LABEL_21:
      *this = *(a2 + 216);
      *(this + 2) = *(a2 + 232);
      return;
    }

    os_unfair_lock_lock((a2 + 12));
    v21 = *(a2 + 24);
    if (v21)
    {
      *this = 0;
      *(this + 1) = 0;
      *(this + 2) = 0;
      v22 = atomic_load((v21 + 16));
      *(this + 2) = v22;
      v23 = *(a2 + 24);
      if ((*(a2 + 241) & 4) != 0)
      {
        do
        {
          do
          {
            explicit = atomic_load_explicit((v23 + 28), memory_order_acquire);
            v27 = *(v23 + 32);
            v28 = *(v23 + 72);
            v29 = *(v23 + 80);
            *this = *(v23 + 64);
            *(this + 1) = v29;
            __dmb(9u);
          }

          while ((explicit & 1) != 0);
        }

        while (explicit != *(v23 + 28));
        if (!a3)
        {
          a3 = mach_absolute_time();
        }

        if (v27 - 1 < a3)
        {
          *this = v28;
        }
      }

      else
      {
        do
        {
          do
          {
            v24 = atomic_load_explicit((v23 + 28), memory_order_acquire);
            v25 = *(v23 + 80);
            *this = *(v23 + 64);
            *(this + 1) = v25;
            __dmb(9u);
          }

          while ((v24 & 1) != 0);
        }

        while (v24 != *(v23 + 28));
      }
    }

    else
    {
      *this = 0;
      *(this + 1) = 0;
      v30 = 64;
      if ((*(a2 + 241) & 8) == 0)
      {
        v30 = 48;
      }

      *(this + 2) = CAHostTimeWithTime(*(a2 + v30));
    }

    os_unfair_lock_unlock((a2 + 12));
  }
}

uint64_t CA::Display::DisplayTimingsControl::server_low_latency_eligible_pid(CA::Display::DisplayTimingsControl *this, uint64_t a2)
{
  if ((*(this + 241) & 4) == 0)
  {
    return 0;
  }

  os_unfair_lock_lock(this + 3);
  v5 = *(this + 3);
  if (v5)
  {
    do
    {
      do
      {
        explicit = atomic_load_explicit((v5 + 28), memory_order_acquire);
        v7 = *(v5 + 32);
        v8 = *(v5 + 44);
        v9 = *(v5 + 48);
        __dmb(9u);
      }

      while ((explicit & 1) != 0);
    }

    while (explicit != *(v5 + 28));
    if (!a2)
    {
      a2 = mach_absolute_time();
    }

    if (v7 - 1 >= a2)
    {
      v2 = v8;
    }

    else
    {
      v2 = v9;
    }
  }

  else
  {
    v2 = 0;
  }

  os_unfair_lock_unlock(this + 3);
  return v2;
}

void CA::Display::DisplayLink::callback(unint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    return;
  }

  if ((CA::Display::DisplayTimingsControl::power_state((*(a5 + 8) + 464)) & 1) == 0 && (*(*(a5 + 8) + 768) & 0x400) == 0)
  {
    CA::Display::DisplayLink::set_display_active(a5, 0);
    pthread_mutex_lock((a5 + 56));
    CA::Display::DisplayLink::pause_timer_locked(a5);

    pthread_mutex_unlock((a5 + 56));
    return;
  }

  pthread_mutex_lock((a5 + 56));
  v10 = CA::Display::DisplayLink::align_phase_locked(a5);
  pthread_mutex_unlock((a5 + 56));
  v11 = CA::Display::DisplayTimingsControl::compat_quanta_mode((*(a5 + 8) + 464));
  pthread_mutex_lock((a5 + 56));
  v12 = mach_absolute_time();
  v13 = *(a5 + 120);
  v14 = *(a5 + 128);
  if (v13 == v14)
  {
LABEL_17:
    v18 = 0;
  }

  else
  {
    while (1)
    {
      v15 = *v13;
      if (*(*v13 + 112) != *(a5 + 176))
      {
        break;
      }

      v16 = *(v15 + 104);
      if ((v11 & 1) == 0 && *(a5 + 180) != *(v15 + 128))
      {
        break;
      }

      if (v16 && v16 < v12)
      {
        break;
      }

      if (++v13 == v14)
      {
        goto LABEL_17;
      }
    }

    v18 = 1;
  }

  pthread_mutex_unlock((a5 + 56));
  v19 = CA::Display::DisplayTimingsControl::server_frame_interval((*(a5 + 8) + 464), 0);
  v20 = CA::Display::DisplayTimingsControl::server_compat_quanta_mode((*(a5 + 8) + 464), 0);
  if (*(a5 + 176) != v19)
  {
    *(a5 + 176) = v19;
    v18 = 1;
  }

  if (*(a5 + 180) != v20)
  {
    *(a5 + 180) = v20;
    v18 = 1;
  }

  CA::Display::DisplayLink::update_timer(a5, v18);
  v21 = *(a5 + 8);
  v22 = CA::Display::DisplayTimingsControl::server_low_latency_eligible_pid((v21 + 464), 0);
  v23 = getpid();
  if ((v22 == v23) != (*(v21 + 648) & 1))
  {
    v24 = v23;
    os_unfair_lock_lock((v21 + 556));
    v25 = *(v21 + 648) & 0xFE;
    if (v22 == v24)
    {
      ++v25;
    }

    *(v21 + 648) = v25;
    CA::Display::DisplayTimingsControl::update_frame_interval_request((v21 + 464));
    os_unfair_lock_unlock((v21 + 556));
  }

  v26 = v10 + a3;
  pthread_mutex_lock((a5 + 56));
  v27 = *(a5 + 160);
  pthread_mutex_unlock((a5 + 56));
  v28 = CAHostTimeWithTime(v27);
  if (v28)
  {
    v40[1] = v28;
    v41 = 0;
    v40[0] = a1;
    LODWORD(v41) = *(*(a5 + 8) + 104);
    if (*(a5 + 240))
    {
      pthread_mutex_lock((a5 + 56));
      if (*(a5 + 120) == *(a5 + 128))
      {
        pthread_mutex_unlock((a5 + 56));
      }

      else
      {
        v31 = (*(*(a5 + 240) + 16))(*(a5 + 240), v40, v29, v30);
        pthread_mutex_unlock((a5 + 56));
        if (v31)
        {
LABEL_32:
          *(a5 + 200) = 1;
          *(a5 + 208) = a1;
          *(a5 + 216) = a2;
          *(a5 + 224) = v26;

          kdebug_trace();
          return;
        }
      }
    }

    else if (a4 && _CFRunLoopCurrentIsMain() && CA::Display::DisplayLink::_will_fire_handler_external && (*(CA::Display::DisplayLink::_will_fire_handler_external + 16))(CA::Display::DisplayLink::_will_fire_handler_external, v40, v32, v33) != 1)
    {
      goto LABEL_32;
    }
  }

  *(a5 + 200) = 0;
  v34 = *(a5 + 8);
  v35 = (v34 + 464);
  v36 = (*(v34 + 705) & 8) == 0;
  v37 = 64;
  if (v36)
  {
    v37 = 48;
  }

  v38 = CAHostTimeWithTime(*(v35 + v37));
  v39 = CA::Display::DisplayTimingsControl::granularity(v35, v38);

  CA::Display::DisplayLink::dispatch_items(a5, v26, a1, v39);
}

uint64_t draw_glyphs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  TextDrawingMode = CGGStateGetTextDrawingMode();
  Info = CGContextDelegateGetInfo();
  CGGStateGetStyle();
  Color = CGStyleGetColor();
  CompositeOperation = CGGStateGetCompositeOperation();
  CACGContextEvaluator::update_with_color(Info, Color, CompositeOperation, a3);
  if ((TextDrawingMode & 0xFFFFFFF9) == 0)
  {
    FillColor = CGGStateGetFillColor();
    v18 = CGGStateGetCompositeOperation();
    CACGContextEvaluator::update_with_color(Info, FillColor, v18, a3);
  }

  if (((TextDrawingMode - 1) & 0xFFFFFFFA) == 0)
  {
    StrokeColor = CGGStateGetStrokeColor();
    v20 = CGGStateGetCompositeOperation();
    CACGContextEvaluator::update_with_color(Info, StrokeColor, v20, a3);
  }

  FontSmoothingBackgroundColor = CGGStateGetFontSmoothingBackgroundColor();
  v22 = CGGStateGetCompositeOperation();
  CACGContextEvaluator::update_with_color(Info, FontSmoothingBackgroundColor, v22, a3);
  LODWORD(FontSmoothingBackgroundColor) = CGGStateGetFontRenderingStyle();
  if ((FontSmoothingBackgroundColor & CGRenderingStateGetFontRenderingStyle() & 2) != 0)
  {
    Info[77] = 1;
    Info[75] = 1;
  }

  Info[78] |= CGGStateGetStyle() != 0;
  v23 = *(CGContextDelegateGetInfo() + 48);

  return MEMORY[0x1EEDB9360](v23, a2, a3, a4, a5, a6, a7);
}

uint64_t CACGContextEvaluator::update_with_color_components(CACGContextEvaluator *this, CGColorSpaceRef space, const double *a3)
{
  v4 = space;
  v15 = *MEMORY[0x1E69E9840];
  if (CGColorSpaceGetModel(space) == kCGColorSpaceModelPattern || (result = CGColorSpaceGetModel(v4), result == 5))
  {
    result = CGColorSpaceGetBaseColorSpace(v4);
    v4 = result;
  }

  if (v4)
  {
    v7 = *(this + 3);
    memset(v14, 0, sizeof(v14));
    if (CARequiresColorMatching(v4, v7, 0))
    {
      result = CARetainColorTransform(v7);
      if (!result)
      {
LABEL_18:
        *(this + 79) = 257;
        return result;
      }

      if (CGColorTransformConvertColorComponents())
      {
        a3 = v14;
      }

      result = CGColorTransformRelease();
    }

    else
    {
      result = CGColorSpaceGetModel(v4);
      if (!result)
      {
        return result;
      }
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = a3[v8];
      v12 = v11 < -0.7549;
      if (v11 > 1.2549)
      {
        v12 = 1;
      }

      v10 |= v12;
      v13 = v11 < -0.0039216;
      if (v11 > 1.0039)
      {
        v13 = 1;
      }

      v9 |= v13;
      ++v8;
    }

    while (v8 != 3);
    if (v10)
    {
      goto LABEL_18;
    }

    if (v9)
    {
      *(this + 79) = 1;
    }
  }

  return result;
}

uint64_t CA::Display::DisplayTimingsControl::power_state(CA::Display::DisplayTimingsControl *this)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = *(this + 24);
  if (v2)
  {
    v7[1] = 0;
    v7[2] = 0;
    v7[0] = 1;
    v3 = (*(v2 + 16))(v2, v7);
    v4 = v3 ^ 1 | BYTE4(v7[0]);
  }

  else
  {
    os_unfair_lock_lock(this + 3);
    v5 = *(this + 3);
    if (v5)
    {
      v4 = atomic_load((v5 + 1));
    }

    else
    {
      v4 = 1;
    }

    os_unfair_lock_unlock(this + 3);
  }

  return v4 & 1;
}

uint64_t CA::Display::DisplayLink::update_timer(CA::Display::DisplayLink *this, int a2)
{
  pthread_mutex_lock((this + 56));
  CA::Display::DisplayLink::update_timer_locked(this, a2);

  return pthread_mutex_unlock((this + 56));
}

unint64_t CA::Render::format_rowbytes(CA::Render *this, unsigned int a2)
{
  if (this > 0x25)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_183E22690[this];
  }

  {
  }

  result = v3 * a2;
  {
    {
    }

    else
    {
    }
  }

  return result;
}

CGColorSpaceRef CAColorSpaceCreateExtended(CGColorSpace *a1)
{
  if (CAGetColorSpace(36) == a1 || CAGetColorSpace(35) == a1)
  {
    v5 = CAGetColorSpace(35);

    return CGColorSpaceRetain(v5);
  }

  else
  {
    os_unfair_lock_lock(&CAColorSpaceCreateExtended::lock);
    Extended = CAColorSpaceCreateExtended::extended;
    if (CAColorSpaceCreateExtended::base != a1)
    {
      CGColorSpaceRelease(CAColorSpaceCreateExtended::extended);
      CAColorSpaceCreateExtended::base = a1;
      Extended = CGColorSpaceCreateExtended(a1);
      CAColorSpaceCreateExtended::extended = Extended;
      if (!Extended)
      {
        Extended = CGColorSpaceRetain(a1);
        CAColorSpaceCreateExtended::extended = Extended;
      }
    }

    v3 = CGColorSpaceRetain(Extended);
    os_unfair_lock_unlock(&CAColorSpaceCreateExtended::lock);
    return v3;
  }
}

uint64_t CACGContextEvaluator::update_with_color_space(uint64_t this, CGColorSpace *a2, int a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = this;
    while (1)
    {
      this = CGColorSpaceGetProcessColorModel();
      if (this == 1)
      {
        break;
      }

      if (!this)
      {
        v5[74] = 1;
        return this;
      }

      if (CGColorSpaceGetModel(v4) != kCGColorSpaceModelPattern)
      {
        this = CGColorSpaceGetModel(v4);
        if (this != 5)
        {
          v5[76] = 1;
          return this;
        }
      }

      this = CGColorSpaceGetBaseColorSpace(v4);
      v4 = this;
      if (!this)
      {
        return this;
      }
    }

    v5[75] = 1;
    if (a3)
    {
      this = CGColorSpaceIsWideGamutRGB(v4);
      if (this)
      {
        CAGetColorSpace(6);
        this = CGColorSpaceEqualToColorSpace();
        if (this)
        {
          v5[79] = 1;
        }

        else
        {
          v5[80] = 1;
        }
      }
    }
  }

  return this;
}

void CACGContextEvaluator::~CACGContextEvaluator(CGColorSpaceRef *this)
{
  CGColorSpaceRelease(this[3]);
  CGDisplayListRelease();
  CGContextRelease(this[5]);
  CGColorRelease(this[8]);
  CGContextGetDelegate();
  for (i = 0; i != 384; i += 16)
  {
    CGContextDelegateSetCallback();
  }

  CGContextRelease(this[7]);
}

_DWORD *CA::Render::Shmem::new_bitmap(CA::Render::Shmem *this, unsigned int a2, unsigned int a3, unsigned int a4, int a5, unsigned int a6)
{
  v47 = *MEMORY[0x1E69E9840];
  {
    v38 = a2;
    a2 = v38;
  }

  v10 = a3;
  {
    v13 = 36;
    if (a6)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

  {
    v11 = dword_183E22690[this];
  }

  v12 = v11 + 35;
  if ((v11 & (v11 - 1)) != 0)
  {
    v13 = v12 / v11 * v11;
    if (a6)
    {
      goto LABEL_11;
    }

LABEL_27:
    v15 = 0;
LABEL_28:
    if (__CFADD__(v13, v15) || (v13 + v15) >= 0xFFFFFFFF)
    {
      v35 = a2;
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v36 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218752;
        *v42 = v13 + v15;
        *&v42[8] = 1024;
        *v43 = v35;
        *&v43[4] = 1024;
        v44 = v10;
        v45 = 1024;
        v46 = a6;
        v22 = "Layer backing store allocation too large size:%ld width:%d height:%d levels:%d";
        v23 = v36;
        v24 = 30;
LABEL_48:
        _os_log_error_impl(&dword_183AA6000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
      }
    }

    else
    {
      v25 = a2;
      v26 = CA::Render::Shmem::new_shmem((v13 + v15));
      v20 = v26;
      if (!v26)
      {
        return v20;
      }

      v27 = *(v26 + 3);
      if (v27)
      {
        v28 = v10;
        v26[3] |= 0x2800u;
        v29 = *(v26 + 2);
        v30 = CAGetStatsStruct(0);
        v31 = *(v30 + 1);
        v32 = *v30 + v29;
        *v30 = v32;
        if (v32 > v31)
        {
          *(v30 + 1) = v32;
        }

        v33 = a4;
        if (!a4)
        {
          v33 = v25;
        }

        v27[2] = v13;
        v27[3] = this;
        if (a5)
        {
          v34 = a5;
        }

        else
        {
          v34 = v28;
        }

        v27[4] = v25;
        v27[5] = v28;
        v27[6] = v33;
        v27[7] = v34;
        v27[8] = a6;
        return v20;
      }

      if (atomic_fetch_add(v26 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v26 + 16))(v26);
      }
    }

    return 0;
  }

  v13 = v12 & -v11;
  if (!a6)
  {
    goto LABEL_27;
  }

LABEL_11:
  v14 = a5;
  v15 = 0;
  v16 = a6;
  v17 = a3;
  v39 = a2;
  v18 = a2;
  while (1)
  {
    v19 = CA::Render::format_rowbytes(this, v18);
    v20 = 0;
    if (!is_mul_ok(v19, v10) || !(v19 * v10))
    {
      return v20;
    }

    v15 += v19 * v10;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 >>= 1;
    }

    if (v10 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 >>= 1;
    }

    if (!--v16)
    {
      a5 = v14;
      a2 = v39;
      LODWORD(v10) = v17;
      if (a6 < 0x21)
      {
        goto LABEL_28;
      }

      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v21 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        *v42 = v39;
        *&v42[4] = 1024;
        *&v42[6] = v17;
        *v43 = 1024;
        *&v43[2] = a6;
        v22 = "Invalid bitmap: [%u x %u], %u levels";
        v23 = v21;
        v24 = 20;
        goto LABEL_48;
      }

      return 0;
    }
  }
}