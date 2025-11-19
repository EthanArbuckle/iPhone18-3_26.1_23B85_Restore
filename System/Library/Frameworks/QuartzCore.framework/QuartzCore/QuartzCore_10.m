uint64_t CA::WindowServer::IOMFBDisplay::finish_update_(_DWORD *a1, _DWORD *a2, uint64_t a3, unsigned int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a1 + 6383;
  v17 = a4;
  if (a1[6460] == 1)
  {
    a2[6] = 0;
  }

  *a2 = *(a3 + 272);
  if ((*(*a1 + 2312))(a1) && !v7[134])
  {
    v7[134] = a2[6];
  }

  v8 = v7[75];
  v7[76] = v8;
  if (v8 + 1 == v7[77])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 + 1;
  }

  v7[75] = v9;
  (*(*a1 + 2376))(a1, (*(a3 + 304) >> 5) & 1);
  updated = CA::WindowServer::Display::update_clones(a1, a3, &v17);
  *(v7 + 3962) = 0;
  *(v7 + 3976) = 0;
  ++*v7;
  if ((v7[1006] & 1) == 0)
  {
    ++v7[4];
  }

  *(v7 + 4024) = 0;
  v11 = *(a1 + 3353);
  if (v11 && ((a1[160] & 4) == 0 || (*(a3 + 1380) & 0x80) == 0))
  {
    CA::WindowServer::Surface::unref(v11);
    *(a1 + 3353) = 0;
  }

  v12 = *(a1 + 3286);
  if (v12)
  {
    v13 = *(a3 + 320);
    v14 = (a1 + 6572);
    do
    {
      if (*(v12 + 8) || (v15 = *(v12 + 32)) == 0 || (v15[239] & 4) != 0 || (*(*v15 + 232))(v15) == v13 && (*(*(v12 + 32) + 239) & 0x10) == 0)
      {
        v14 = v12;
      }

      else
      {
        *v14 = *v12;
        CA::WindowServer::IOMFBDisplay::release_buffer(v12);
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v12);
      }

      v12 = *v14;
    }

    while (*v14);
  }

  CA::WindowServer::Display::purge_surfaces(a1, 0);
  return updated;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_dpb_enabled(uint64_t this, int a2)
{
  if (*(this + 29509) != a2)
  {
    *(this + 29509) = a2;
    return IOMobileFramebufferEnableDisableVideoPowerSavings();
  }

  return this;
}

uint64_t *std::__tree<CA::Render::Object *>::swap(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = result + 1;
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

uint64_t CA::WindowServer::Display::update_clones(CA::WindowServer::Display *this, CA::Render::Update *a2, unsigned int *a3)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v4 = *(this + 5);
  if (v4)
  {
    v6 = 0;
    do
    {
      v7 = *v4;
      LODWORD(v35[0]) = 0;
      CARecordCurrentDisplay::CARecordCurrentDisplay(v35, *(*(v7 + 96) + 24));
      v8 = *(v7 + 96);
      if (pthread_mutex_trylock(v8 + 8))
      {
        v9 = -17;
      }

      else
      {
        pthread_mutex_lock((v7 + 24));
        v10 = *(v7 + 96);
        if ((v10[56] & 0x20) != 0)
        {
          v11 = mach_absolute_time();
          v12 = CATimeWithHostTime(v11);
          if (CA::WindowServer::Server::replay_render(v7, v12, this, &v34))
          {
            v9 = -18;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = (*(*v10 + 656))(v10, v7, this, a2, a3, &v34);
        }

        pthread_mutex_unlock((v7 + 24));
        pthread_mutex_unlock(v8 + 8);
      }

      v13 = pthread_getspecific(current_display_slot);
      if (v13 && *v13)
      {
        --*v13;
      }

      v14 = &CA::WindowServer::Display::update_clones(CA::Render::Update *,unsigned int &)::no_retry_statuses;
      v15 = 7;
      while (*v14 != v9)
      {
        ++v14;
        if (!--v15)
        {
          v14 = &unk_183E2417F;
          break;
        }
      }

      v6 |= v14 == &unk_183E2417F;
      v4 = v4[1];
    }

    while (v4);
    v16 = (this + 640);
    v17 = *(this + 160);
    if (v34)
    {
      if ((v17 & 4) == 0)
      {
        atomic_fetch_or(v16, 4u);
LABEL_27:
        v18 = 1;
        goto LABEL_28;
      }

LABEL_25:
      v18 = 0;
      goto LABEL_28;
    }

    if ((v17 & 4) == 0)
    {
      goto LABEL_25;
    }

LABEL_26:
    atomic_fetch_and(v16, 0xFFFFFFFB);
    goto LABEL_27;
  }

  v6 = 0;
  v18 = 0;
  v16 = (this + 640);
  if ((*(this + 160) & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_28:
  v19 = (*(*this + 680))(this, a2);
  v20 = *(this + 160);
  if (!v19)
  {
    if ((v20 & 0x80) != 0)
    {
      atomic_fetch_and(v16, 0xFFFFFF7F);
      goto LABEL_35;
    }

LABEL_32:
    if (!v18)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if ((v20 & 0x80) != 0)
  {
    goto LABEL_32;
  }

  atomic_fetch_or(v16, 0x80u);
LABEL_35:
  CA::WindowServer::Display::post_display_changed(this);
LABEL_36:
  v21 = this + 24576;
  if ((*(this + 160) & 4) != 0 && (v22 = *(this + 5)) != 0)
  {
    while (1)
    {
      v35[0] = *(*(*v22 + 96) + 656);
      if (CA::WindowServer::Display::Mode::is_hdr(v35))
      {
        break;
      }

      v22 = v22[1];
      if (!v22)
      {
        goto LABEL_40;
      }
    }

    v23 = 1;
  }

  else
  {
LABEL_40:
    v23 = 0;
  }

  *(this + 25559) = v23;
  if (((*(this + 160) & 4) != 0 || (*(this + 160) & 0x80) != 0) && (v24 = *(this + 5)) != 0)
  {
    while (1)
    {
      if (*v24)
      {
        v25 = *(*v24 + 96);
        if ((*(v25 + 672) & 0x1C00) == 0x800)
        {
          v35[0] = *(v25 + 656);
          if (CA::WindowServer::Display::Mode::is_hdr(v35))
          {
            break;
          }
        }
      }

      v24 = v24[1];
      if (!v24)
      {
        goto LABEL_48;
      }
    }

    v26 = 1;
  }

  else
  {
LABEL_48:
    v26 = 0;
  }

  *(this + 25560) = v26;
  if (((*(this + 160) & 4) != 0 || (*(this + 160) & 0x80) != 0) && (v27 = *(this + 5)) != 0)
  {
    while (!(*(**(*v27 + 96) + 728))(*(*v27 + 96)))
    {
      v27 = v27[1];
      if (!v27)
      {
        goto LABEL_54;
      }
    }

    v28 = 1;
  }

  else
  {
LABEL_54:
    v28 = 0;
  }

  *(this + 25561) = v28;
  if (((*(this + 160) & 4) != 0 || (*(this + 160) & 0x80) != 0) && (v29 = *(this + 5)) != 0)
  {
    while (1)
    {
      v30 = *v29;
      if (((*(**(*v29 + 96) + 720))(*(*v29 + 96)) & 1) != 0 || (*(**(v30 + 96) + 736))(*(v30 + 96)))
      {
        break;
      }

      v29 = v29[1];
      if (!v29)
      {
        goto LABEL_62;
      }
    }

    v31 = 1;
  }

  else
  {
LABEL_62:
    v31 = 0;
  }

  v21[986] = v31;
  return v6 & 1;
}

BOOL CA::WindowServer::Display::purge_surfaces(os_unfair_lock_s *this, char a2)
{
  os_unfair_lock_lock(this + 56);
  v5 = *&this[64]._os_unfair_lock_opaque;
  v4 = *&this[66]._os_unfair_lock_opaque;
  if (v5 == v4)
  {
    v11 = 0;
    goto LABEL_31;
  }

  v6 = *&this[66]._os_unfair_lock_opaque;
  while (1)
  {
    v7 = *v5;
    if ((*(*v5 + 239) & 4) == 0)
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = [*(v8 + 32) signaledValue] + 1;
        v7 = *v5;
        if (*(v8 + 64) - 1 >= v9)
        {
          if (!CA::CASharedEvent::is_complete_with_timeout(*(v7 + 16)))
          {
            goto LABEL_10;
          }

          v7 = *v5;
        }
      }

      if (a2)
      {
        goto LABEL_14;
      }

      v10 = *(v7 + 238) - 1;
      *(v7 + 238) = *(v7 + 238) - 1;
      if (!v10)
      {
        break;
      }
    }

LABEL_10:
    if (++v5 == v4)
    {
      goto LABEL_29;
    }
  }

  v7 = *v5;
LABEL_14:
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (v5 != v4)
  {
    v12 = v5 + 1;
    v6 = v5;
    while (v12 != v4)
    {
      v13 = *v12;
      if ((*(*v12 + 239) & 4) != 0 || (v14 = *(v13 + 16)) != 0 && (v15 = [*(v14 + 32) signaledValue] + 1, v13 = *v12, *(v14 + 64) - 1 >= v15) && (is_complete_with_timeout = CA::CASharedEvent::is_complete_with_timeout(*(v13 + 16)), v13 = *v12, !is_complete_with_timeout) || (a2 & 1) == 0 && (v17 = *(v13 + 238) - 1, *(v13 + 238) = *(v13 + 238) - 1, v13 = *v12, v17))
      {
        *v6++ = v13;
      }

      else if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      ++v12;
    }
  }

LABEL_29:
  v18 = *&this[66]._os_unfair_lock_opaque;
  v11 = v6 != v18;
  if (v6 != v18)
  {
    *&this[66]._os_unfair_lock_opaque = v6;
    v11 = 1;
  }

LABEL_31:
  os_unfair_lock_unlock(this + 56);
  return v11;
}

void CA::OGL::MetalContext::flush(CA::OGL::MetalContext *this, int a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = *(this + 595);
  v5 = atomic_load(this + 594);
  CA::OGL::MetalBufferPool::pool_flush(v4, v5, 1);
  if (a2)
  {
    v6 = (*(this + 875) & 0x10) == 0;
  }

  else
  {
    v6 = 0;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (*(this + 441))
  {
    CA::OGL::MetalContext::stop_encoders(this);
    v7 = *(this + 483);
    if (v7)
    {
      v7(*(this + 484), *(this + 441));
    }

    v8 = *(this + 1294);
    handler = 0;
    v40 = 0;
    mach_get_times();
    v9 = handler;
    v10 = v40;
    v11 = *(this + 159);
    v12 = pthread_self();
    handler = 0;
    pthread_threadid_np(v12, &handler);
    v13 = handler;
    if (x_log_get_metal_perf(void)::once != -1)
    {
      dispatch_once(&x_log_get_metal_perf(void)::once, &__block_literal_global_10_8314);
    }

    v14 = v10 - v9;
    v15 = x_log_get_metal_perf(void)::log;
    v16 = *(this + 1968);
    if ((v16 & 0x80) != 0)
    {
      v17 = *(this + 648);
      *(this + 648) = 0;
      *(this + 1968) = v16 & 0xFF3F;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(this + 441);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = ___ZN2CA3OGL12MetalContext5flushEb_block_invoke;
    v32[3] = &unk_1E6DEDF60;
    v32[4] = v15;
    v32[5] = this;
    v33 = v11;
    v34 = v8;
    v32[6] = v14;
    v32[7] = v13;
    v32[8] = v17;
    [v18 addCompletedHandler:v32];
    if (byte_1ED4E985F == 1)
    {
      v26 = *(this + 441);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = ___ZN2CA3OGL12MetalContext5flushEb_block_invoke_78;
      v29[3] = &unk_1E6DEDF88;
      v29[4] = v15;
      v29[5] = this;
      v30 = v11;
      v31 = v8;
      v29[6] = v13;
      v29[7] = v14;
      [v26 addScheduledHandler:v29];
    }

    if (BYTE6(xmmword_1ED4E97EC) == 1)
    {
      v27 = *(this + 441);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = ___ZN2CA3OGL12MetalContext5flushEb_block_invoke_79;
      v28[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
      v28[4] = this;
      [v27 addCompletedHandler:v28];
    }

    if (v6)
    {
      if ((*(this + 1968) & 0x200) != 0)
      {
        BMMonitorBlockExecutionWithSignature();
      }

      else
      {
        v19 = [*(this + 441) commitAndWaitUntilSubmitted];
        *(v36 + 24) = v19;
      }
    }

    if (*(v36 + 24) == 1)
    {
      v20 = *(this + 452);
      v21 = *(this + 453);
      if (v20 != v21)
      {
        do
        {
          v22 = *v20;
          (*(*v20 + 16))(*v20);
          _Block_release(v22);
          ++v20;
        }

        while (v20 != v21);
        v20 = *(this + 452);
      }

      *(this + 453) = v20;
    }

    else
    {
      CA::OGL::MetalContext::copy_submitted_callbacks(this, *(this + 441));
    }

    if (!v6)
    {
      [*(this + 441) commit];
    }

    *(this + 440) = *(this + 441);
    *(this + 441) = 0;
    *(this + 483) = 0;
    *(this + 484) = 0;
  }

  if (v6 && (v36[3] & 1) == 0)
  {
    [*(this + 440) waitUntilScheduled];
  }

  v23 = mach_absolute_time();
  *(this + 591) = CATimeWithHostTime(v23);
  os_unfair_lock_lock(this + 818);
  if (!*(this + 592))
  {
    v24 = dispatch_source_create(MEMORY[0x1E69E9710], 1uLL, 0, *(this + 590));
    *(this + 592) = v24;
    if (v24)
    {
      dispatch_source_set_timer(v24, 0, 0x3B9ACA00uLL, 0x1DCD6500uLL);
      v25 = *(this + 592);
      handler = MEMORY[0x1E69E9820];
      v40 = 3221225472;
      v41 = ___ZN2CA3OGL12MetalContext24start_idle_collect_timerEv_block_invoke;
      v42 = &__block_descriptor_40_e5_v8__0l;
      v43 = this;
      dispatch_source_set_event_handler(v25, &handler);
      dispatch_resume(*(this + 592));
    }
  }

  os_unfair_lock_unlock(this + 818);
  _Block_object_dispose(&v35, 8);
}

uint64_t CA::WindowServer::IOSurface::set_premultiplied(uint64_t this, int a2)
{
  if (*(this + 313) != a2)
  {
    v2 = a2;
    v3 = this;
    this = IOSurfaceSetBulkAttachments2();
    *(v3 + 313) = v2;
  }

  return this;
}

unint64_t CA::OGL::MetalContext::set_fence(CA::OGL::MetalContext *this)
{
  v1 = *(this + 422) + 1;
  *(this + 422) = v1;
  v2 = atomic_load(this + 593);
  v3 = *(this + 3344);
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v1;
    if (v1 >= *&v3)
    {
      v5 = v1 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v1;
  }

  v6 = *(*(this + 417) + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v1)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v1)
  {
    goto LABEL_17;
  }

  v7[3] = v2;
  return v1;
}

uint64_t ___ZN2CA3OGL12MetalContext5flushEb_block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) commitAndWaitUntilSubmitted];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::cloning_active_status(CA::WindowServer::IOMFBDisplay *this)
{
  if (*(this + 82))
  {
    v1 = *(this + 6);
    if (!v1 || (*(*(v1 + 96) + 906) & 8) != 0)
    {
      LOBYTE(v5) = -21;
    }

    else
    {
      v2 = atomic_load((*(this + 96) + 1));
      if (v2 == 1 && (v3 = atomic_load((*(this + 96) + 3))) != 0)
      {
        v4 = atomic_load((*(this + 96) + 5));
        if (v4 == 1)
        {
          return ((*(this + 905) << 28 >> 31) & 0xFFFFFFFB);
        }

        else
        {
          LOBYTE(v5) = -23;
        }
      }

      else
      {
        LOBYTE(v5) = -1;
      }
    }
  }

  else
  {
    LOBYTE(v5) = -2;
  }

  return v5;
}

void X::small_vector_base<void({block_pointer})(__CFDictionary const*)>::move(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    v6 = *a1;
    if (v6 != *(a1 + 16))
    {
      free(v6);
    }

    *(a1 + 16) = a3;
    if (*a2 == *(a2 + 16))
    {
      *a1 = a3;
      v8 = *a2;
      *(a1 + 8) = a3 + *(a2 + 8) - *a2;
      v9 = *(a2 + 8);
      while (v8 != v9)
      {
        v10 = *v8++;
        *a3++ = v10;
      }
    }

    else
    {
      v7 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v7;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    *(a1 + 24) = *(a2 + 24);
  }
}

uint64_t std::vector<std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>>::push_back[abi:nn200100](uint64_t result, uint64_t *a2)
{
  v3 = result;
  v17[5] = *MEMORY[0x1E69E9840];
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v17[4] = v3;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Display::DisplayLinkItem *>>(v12);
    }

    v13 = (8 * (v9 >> 3));
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v15 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v16 = v3[2];
    v3[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>>::~__split_buffer(v17);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

uint64_t CA::WindowServer::IOMFBServer::update_vbl_threshold(uint64_t this, unint64_t a2)
{
  if (*(this + 1344) < a2)
  {
    *(this + 1344) = a2;
  }

  return this;
}

void CA::WindowServer::Server::set_needs_global_light(os_unfair_lock_s *this, uint64_t a2)
{
  v4 = this + 84;
  os_unfair_lock_lock(this + 84);
  if (BYTE2(this[209]._os_unfair_lock_opaque) != a2)
  {
    BYTE2(this[209]._os_unfair_lock_opaque) = a2;
    os_unfair_lock_unlock(v4);
    v4 = this + 83;
    os_unfair_lock_lock(this + 83);
    v5 = *&this[70]._os_unfair_lock_opaque;
    if (v5)
    {
      (*(v5 + 16))(v5, *(*&this[24]._os_unfair_lock_opaque + 24), a2);
    }
  }

  os_unfair_lock_unlock(v4);
}

uint64_t CA::Render::HitTestTree::append_layer_node(CA::Render::HitTestTree *this, const CA::Render::LayerNode *a2, int a3, unsigned int a4, int a5, unsigned __int16 *a6)
{
  v101 = *MEMORY[0x1E69E9840];
  v100 = a4;
  v10 = *(a2 + 3);
  v11 = *(a2 + 4);
  v12 = (a5 & 8) == 0;
  if ((v10 & 0x18) == 0)
  {
    v12 = 0;
  }

  v13 = v12 | a5;
  v14 = (v12 | a5) & 1;
  if (*(a2 + 29))
  {
    v15 = (*(a2 + 3) & 0x200) == 0;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v17 = (v10 & 0x400000) == 0;
    if (!v14)
    {
      v17 = (*(v11 + 48) & 0x10) == 0;
    }

    v16 = (*(v11 + 48) & 0x10) == 0 || v17;
  }

  else
  {
    v16 = 1;
  }

  v18 = *(v11 + 152);
  if (!a4)
  {
    v19 = v18 ? (*(v18 + 107) & 4 | v13 & 0x40) == 0 : (v13 & 0x40) == 0;
    v20 = v19;
    if (v20 & v16)
    {
      return 0;
    }
  }

  v23 = *(this + 1);
  v22 = *(this + 2);
  if (v23 + 264 <= v22)
  {
    v26 = *(this + 2);
  }

  else
  {
    v24 = (2 * v22);
    *(this + 2) = v24;
    v25 = v12 | a5;
    v26 = malloc_type_realloc(*(this + 2), v24, 0x100004077774924uLL);
    v13 = v25;
    *(this + 2) = v26;
  }

  v27 = *(v11 + 12);
  v28 = &v26[v23];
  *(v28 + 10) = 0;
  *(v28 + 3) = 0u;
  *(v28 + 4) = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  *v28 = 0u;
  *v28 = v23 - a3;
  v29 = 0x10000000000;
  if (!v16)
  {
    v29 = 0;
  }

  v30 = v29 | (*(a2 + 29) << 24);
  *(v28 + 1) = v30;
  v31 = v30 & 0xFFFFFDFFFFFFFFFFLL | (((*(v11 + 40) >> 40) & 1) << 41);
  *(v28 + 1) = v31;
  v32 = v31 & 0xFFFFF7FFFFFFFFFFLL | ((((*(v11 + 48) & 0x4000) >> 14) & 1) << 43);
  *(v28 + 1) = v32;
  v33 = (v14 << 45) | ((*(a2 + 3) & 1) << 44) | v32;
  *(v28 + 1) = v33;
  v34 = v33 | ((*(a2 + 16) != 0) << 47);
  *(v28 + 1) = v34;
  if ((*(v11 + 50) & 2) != 0)
  {
    v35 = 0x1000000000000;
  }

  else
  {
    v35 = *(v11 + 136);
    if (v35)
    {
      v35 = (*(v35 + 80) != 0) << 48;
    }
  }

  v36 = v27;
  v37 = v35 | v34;
  *(v28 + 1) = v37;
  v38 = *(v11 + 104);
  v39 = v37 | ((v38 != 0) << 49);
  *(v28 + 1) = v39;
  if (v38)
  {
    if ((*(v11 + 40) & 0xF000) != 0x9000 || (*(v11 + 48) & 0x40) != 0)
    {
      v38 = 0;
    }

    else
    {
      v40 = *(v11 + 136);
      if (v40)
      {
        v38 = (*(v40 + 32) == 0) << 50;
      }

      else
      {
        v38 = 0x4000000000000;
      }
    }
  }

  v41 = v38 | v39;
  *(v28 + 1) = v41;
  v42 = *(v11 + 136);
  if (v42)
  {
    v42 = *(v42 + 96);
    if (v42)
    {
      v43 = *(v42 + 16);
      if (v43)
      {
        v44 = (v42 + 24);
        v45 = 8 * v43 - 8;
        do
        {
          v46 = *v44++;
          v47 = *(v46 + 24);
          v48 = v47 != 110 || v45 == 0;
          v45 -= 8;
        }

        while (!v48);
        v42 = (v47 != 110) << 46;
      }

      else
      {
        v42 = 0;
      }
    }
  }

  v49 = v41 & 0xFFFFBFFFFFFFFFFFLL | v42;
  *(v28 + 1) = v49;
  v50 = (*(a2 + 3) << 33) & 0x800000000000000 | v49;
  *(v28 + 1) = v50;
  *(v28 + 8) = a4;
  *(v28 + 1) = v50 | ((*(v11 + 48) & 0x20) << 57);
  if ((v36 & 0x400) != 0 && v18)
  {
    *(v28 + 9) = *(v18 + 92);
  }

  if ((*(a2 + 28) & 4) != 0 && v18)
  {
    v51 = v13;
    v52 = *(v18 + 72);
    os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
    v53 = x_hash_table_lookup(CA::Render::FlattenManager::flattened_cache, v52, 0);
    if (v53)
    {
      v54 = *(v53 + 192);
      if (v54)
      {
        atomic_fetch_add(v54, 1u);
      }
    }

    else
    {
      v54 = 0;
    }

    os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
    *(v28 + 3) = v54;
    v13 = v51;
  }

  *(v28 + 40) = *(a2 + 11);
  *(v28 + 56) = *(a2 + 12);
  *(v28 + 72) = *(v11 + 88);
  if (*(a2 + 7))
  {
    *(v28 + 1) |= 0x8000000000000uLL;
    v55 = *(a2 + 7);
    v56 = *v55;
    v57 = v55[1];
    v58 = v55[2];
    *(v28 + 136) = v55[3];
    *(v28 + 120) = v58;
    *(v28 + 104) = v57;
    *(v28 + 88) = v56;
    v59 = v55[4];
    v60 = v55[5];
    v61 = v55[6];
    *(v28 + 200) = v55[7];
    *(v28 + 184) = v61;
    *(v28 + 168) = v60;
    *(v28 + 152) = v59;
    v62 = 16;
  }

  else if (*(a2 + 8) == 0.0 && *(a2 + 9) == 0.0)
  {
    v62 = 0;
  }

  else
  {
    *(v28 + 1) |= 0x10000000000000uLL;
    *(v28 + 88) = *(a2 + 4);
    v62 = 2;
  }

  v100 = 0;
  v63 = *(v11 + 136);
  if (!v63)
  {
    goto LABEL_81;
  }

  if (*(v63 + 60) > 0.0 && ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(v63 + 244))))) & 1) != 0 || v63[16]))
  {
    v64 = *(v28 + 1);
    *(v28 + 1) = v64 | 0x20000000000000;
    v63 = *(v11 + 136);
    v65 = &v28[8 * v62];
    if (!v63)
    {
      v68 = 0;
      v62 |= 1u;
      *(v65 + 11) = 0;
      goto LABEL_82;
    }

    v66 = *(v63 + 59);
    v67 = v62 | 1;
    *(v65 + 11) = *(v63 + 60);
    if (v66 == 0.0)
    {
      v62 |= 1u;
    }

    else
    {
      *(v28 + 1) = v64 | 0x60000000000000;
      v62 += 2;
      v63 = *(v11 + 136);
      *&v28[8 * v67 + 88] = v66;
      if (!v63)
      {
        goto LABEL_81;
      }
    }
  }

  v69 = *(v63 + 58);
  if (v69 > 0.0)
  {
    *(v28 + 1) |= 0x80000000000000uLL;
    v70 = &v28[8 * v62++];
    *(v70 + 11) = v69;
    v63 = *(v11 + 136);
    if (!v63)
    {
      goto LABEL_81;
    }
  }

  v71 = *v63;
  if (!v71)
  {
    goto LABEL_81;
  }

  v72 = *(v71 + 12);
  if (v72 == 42)
  {
    v68 = *(v71 + 40);
    v100 = v68;
    v89 = *(v71 + 56);
    if (!v89 || (v90 = *(v89 + 12), v13 = (v90 >> 8) & 4 | v13 & 0xFFFFFFFB, (v90 & 0x800) == 0))
    {
LABEL_141:
      if (!v68)
      {
        goto LABEL_82;
      }

      goto LABEL_142;
    }

LABEL_140:
    v93 = v13;
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(this + 3, v68);
    LOWORD(v13) = v93;
    goto LABEL_141;
  }

  if (v72 != 31)
  {
LABEL_81:
    v68 = 0;
    goto LABEL_82;
  }

  if (*(v71 + 33) == 1 && (*(v71 + 24) + 1) < 2)
  {
    v68 = 0;
  }

  else
  {
    v68 = *(v71 + 28);
  }

  v100 = v68;
  v91 = *(v71 + 88);
  if (v91)
  {
    v92 = *(v91 + 584);
    v13 = (v92 >> 1) & 4 | v13 & 0xFFFFFFFB;
    if ((v92 & 0x10) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_140;
  }

  LOWORD(v13) = v13 & 0xFFFB;
  if (v68)
  {
LABEL_142:
    LOWORD(v13) = v13 & 0xFF7F | ((std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(this + 3, v68) != 0) << 7);
  }

LABEL_82:
  v73 = v13;
  if ((v13 & 0x80) != 0)
  {
    *(v28 + 1) |= 0x2000000000000000uLL;
  }

  if ((v13 & 4) != 0)
  {
    if ((*(v11 + 43) & 2) != 0 || (v74 = *v28, v74) && (v28[-v74 + 15] & 2) != 0)
    {
      *(v28 + 1) |= 0x200000000000000uLL;
    }
  }

  if ((*(a2 + 29) & 2) != 0)
  {
    *(v28 + 1) |= 0x8000000000000000;
  }

  if (*(v11 + 72) == 0.0)
  {
    v75 = *(v28 + 1);
    if (*(v11 + 80) == 0.0)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v75 = *(v28 + 1);
  }

  v75 |= 0x100000000000000uLL;
  *(v28 + 1) = v75;
  v76 = v62 + 1;
  *&v28[8 * v62 + 88] = *(v11 + 72);
  v62 += 2;
  *&v28[8 * v76 + 88] = *(v11 + 80);
LABEL_95:
  if ((*(a2 + 26) & 4) != 0)
  {
    v75 |= 0x40000000000uLL;
    *(v28 + 1) = v75;
    v77 = &v28[8 * v62++];
    *(v77 + 11) = *(a2 + 5);
  }

  v99 = 0;
  *(v28 + 1) = v75 & 0xFFFFFF00FFFFFFFFLL | ((((8 * v62 + 88) >> 3) & 0x7F) << 33);
  *(this + 1) += 8 * v62 + 88;
  if (v28[13] < 0 && (CA::Render::HitTestTree::append_layer_node(this, *(a2 + 16), v23, v68, v13, &v99) & 1) == 0)
  {
    if ((*(v11 + 45) & 2) == 0)
    {
      result = 0;
      *(this + 1) -= 8 * v62 + 88;
      return result;
    }

    *(v28 + 1) &= ~0x800000000000uLL;
  }

  v78 = *(a2 + 13);
  if (v78 == (a2 + 96))
  {
    v80 = 0;
  }

  else
  {
    v79 = 0;
    do
    {
      if (*(*(v78 + 32) + 152) || (*(v78 + 27) & 4) != 0)
      {
        v79 += CA::Render::HitTestTree::append_layer_node(this, v78, v23, v68, v73, &v99);
      }

      v78 = *(v78 + 8);
    }

    while (v78 != (a2 + 96));
    v80 = *&v79 & 0xFFFFFFLL;
  }

  v81 = *(this + 2) + v23;
  *(v81 + 4) = *(this + 1) - v23;
  v82 = *(v81 + 8);
  *(v81 + 8) = v82 & 0xFFFFFFFFFF000000 | v80;
  v83 = *(v11 + 136);
  if (v83 && *v83 || (v73 & 2) != 0 || ((v82 & 0x6000000000000) != 0x2000000000000 ? (v84 = (v36 & 0x400) == 0) : (v84 = 0), !v84 || (*(v11 + 45) & 2) != 0 || (v85 = v99, (v99 & 0x20) != 0) || (v82 & 0x8020000000000000) != 0))
  {
    v86 = (v11 + 8);
    if (!atomic_fetch_add((v11 + 8), 1u))
    {
      v11 = 0;
      atomic_fetch_add(v86, 0xFFFFFFFF);
    }

    *(v81 + 16) = v11;
    v85 = v99;
    if ((v99 & 0x20) == 0)
    {
      goto LABEL_122;
    }

LABEL_128:
    *a6 |= 0x20u;
    v87 = *(v81 + 8);
    if ((v87 & 0x800000000000) != 0)
    {
      v94 = v81 + ((v87 >> 30) & 0x3FC);
      if (!*(v94 + 16))
      {
        v95 = *(a2 + 16);
        if (v95)
        {
          v96 = *(v95 + 32);
          if (v96)
          {
            v97 = (v96 + 8);
            if (!atomic_fetch_add((v96 + 8), 1u))
            {
              v96 = 0;
              atomic_fetch_add(v97, 0xFFFFFFFF);
            }

            *(v94 + 16) = v96;
          }
        }
      }
    }

    goto LABEL_129;
  }

  if ((v99 & 0x20) != 0)
  {
    goto LABEL_128;
  }

LABEL_122:
  if (*(this + 6) && std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(this + 3, *(v81 + 32)))
  {
    *a6 |= 0x20u;
  }

LABEL_129:
  v88 = *(v81 + 8);
  if ((v85 & 0x10) != 0 || (v88 & 0x200000000000000) != 0)
  {
    *(v81 + 8) = v88 | 0x400000000000000;
    *a6 |= 0x10u;
  }

  return 1;
}

char *CA::Render::Update::build_hit_test_tree(CA::Render::Update *this, const CA::Render::LayerNode *a2, CA::Render::LayerNode *a3, double a4)
{
  v22 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v7 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x40uLL, 0xDEEC3011uLL);
  *v7 = 0;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 14) = 1065353216;
  os_unfair_lock_lock(&CA::Render::HitTestTree::storage_cache_lock);
  v8 = &CA::Render::HitTestTree::storage_cache;
  v9 = CA::Render::HitTestTree::storage_cache;
  v10 = MEMORY[0x1E69E9AC8];
  if (CA::Render::HitTestTree::storage_cache || (v8 = &qword_1EA8506F0, (v9 = qword_1EA8506F0) != 0))
  {
    *v8 = 0;
    os_unfair_lock_unlock(&CA::Render::HitTestTree::storage_cache_lock);
  }

  else
  {
    os_unfair_lock_unlock(&CA::Render::HitTestTree::storage_cache_lock);
    v9 = malloc_type_malloc(4 * *v10, 0x100004077774924uLL);
  }

  v11 = 0;
  *v7 = 1;
  v12 = 4 * *v10;
  *(v7 + 1) = 0;
  *(v7 + 2) = v12;
  *(v7 + 2) = v9;
  v9[26] = 0;
  *(v9 + 11) = 0u;
  *(v9 + 12) = 0u;
  *(v9 + 9) = 0u;
  *(v9 + 10) = 0u;
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *v9 = 0u;
  *(v7 + 1) += 216;
  v21 = 0;
  if (BYTE4(xmmword_1ED4E982C) == 1)
  {
    v11 = 2;
    if (a2)
    {
LABEL_8:
      v13 = *(a2 + 5);
      if (v13 && (v14 = *(v13 + 24)) != 0)
      {
        v15 = *(v14 + 16);
      }

      else
      {
        v15 = 0;
      }

      CA::Render::HitTestTree::append_root_node(v7, a2, v15, v11, &v21);
      goto LABEL_18;
    }
  }

  else if (a2)
  {
    goto LABEL_8;
  }

  v16 = (this + 240);
  v17 = *(this + 31);
  if (v17 != (this + 240))
  {
    v18 = this + 232;
    do
    {
      v18 = *v18;
      CA::Render::HitTestTree::append_root_node(v7, v17, *(v18 + 2), v11, &v21);
      v17 = *(v17 + 1);
    }

    while (v17 != v16);
  }

LABEL_18:
  v19 = *(v7 + 2);
  *(v19 + 8) = *(v19 + 8) & 0xFFFFFF0000000000 | v21 | 0x80036FF000000;
  *(v19 + 88) = xmmword_183E20E00;
  *(v19 + 104) = 0u;
  *(v19 + 120) = xmmword_183E20E60;
  *(v19 + 136) = 0u;
  *(v19 + 152) = 0u;
  *(v19 + 168) = xmmword_183E20E00;
  *(v19 + 184) = 0u;
  *(v19 + 200) = xmmword_183E20E60;
  *(v19 + 88) = a4;
  *(v19 + 128) = a4;
  *(v19 + 168) = 0x3FF0000000000000;
  kdebug_trace();
  return v7;
}

void CA::Render::HitTestTree::unref(CA::Render::HitTestTree *this)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (this && add == 1)
  {
    v4 = *(this + 1);
    if (v4)
    {
      v5 = *(this + 2);
      v6 = v5 + v4;
      do
      {
        v7 = *(v5 + 16);
        if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v7 + 16))(v7);
        }

        v8 = *(v5 + 24);
        if (v8)
        {
          CA::Render::HitTestTree::unref(v8);
        }

        v5 += 4 * *(v5 + 12);
      }

      while (v5 < v6);
    }

    if (*(this + 2) == 4 * *MEMORY[0x1E69E9AC8])
    {
      os_unfair_lock_lock(&CA::Render::HitTestTree::storage_cache_lock);
      v9 = &CA::Render::HitTestTree::storage_cache;
      v10 = 16;
      while (*v9)
      {
        ++v9;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_18;
        }
      }

      *v9 = *(this + 2);
      *(this + 2) = 0;
LABEL_18:
      os_unfair_lock_unlock(&CA::Render::HitTestTree::storage_cache_lock);
    }

    free(*(this + 2));
    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 24);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v11 = malloc_zone;

    malloc_zone_free(v11, this);
  }
}

CATimingFramePacingLatency *CA::WindowServer::IOMFBDisplay::set_client_preferred_latency(CATimingFramePacingLatency *this, CATimingFramePacingLatency a2)
{
  if ((byte_1ED4E9880 & 1) == 0)
  {
    this[1791] = a2;
  }

  return this;
}

void CA::WindowServer::IOMFBDisplay::set_low_latency_eligible_pid(os_unfair_lock_s *this, uint32_t a2)
{
  if (this[7168]._os_unfair_lock_opaque != a2)
  {
    this[7168]._os_unfair_lock_opaque = a2;
    os_unfair_lock_lock(this + 7061);
    CA::WindowServer::IOMFBDisplay::recompute_server_frame_interval_locked(this);

    os_unfair_lock_unlock(this + 7061);
  }
}

void CA::Render::Update::~Update(CA::Render::Update *this, CA::Render::LayerNode *a2)
{
  v3 = this + 240;
  v4 = *(this + 31);
  if (v4 != v3)
  {
    do
    {
      v5 = *v4;
      v6 = *(v4 + 1);
      *(v5 + 8) = v6;
      *v6 = v5;
      *v4 = v4;
      *(v4 + 1) = v4;
      if (atomic_fetch_add(v4 + 4, 0xFFFFFFFF) == 1)
      {
        CA::Render::LayerNode::delete_node(v4, a2);
      }

      v4 = v6;
    }

    while (v6 != v3);
  }

  CA::Shape::unref(*(this + 2));
  v7 = *(this + 3);
  if (v7)
  {
    CA::Shape::unref(v7);
  }

  CA::Shape::unref(*(this + 4));
  CA::Shape::unref(*(this + 5));
  CA::Shape::unref(*(this + 6));
  CA::Shape::unref(*(this + 7));
  CA::Shape::unref(*(this + 8));
  CA::Shape::unref(*(this + 9));
  v9 = *(this + 1);
  if (v9)
  {
    CA::Shape::unref(v9);
  }

  v10 = *(this + 79);
  if (v10)
  {
    do
    {
      v11 = *v10;
      if (atomic_fetch_add(*v10 + 4, 0xFFFFFFFF) == 1)
      {
        CA::Render::LayerNode::delete_node(v11, v8);
      }

      v10 = v10[1];
    }

    while (v10);
    v12 = *(this + 79);
    if (v12)
    {
      do
      {
        v13 = v12[1];
        free(v12);
        v12 = v13;
      }

      while (v13);
    }
  }

  if (*(this + 80))
  {
    os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
    for (i = *(this + 80); i; i = i[1])
    {
      v16 = *i;
      v17 = *(*i + 152);
      v18 = *(v17 + 248) - 1;
      *(v17 + 248) = v18;
      if (!v18 && (*(v17 + 240) & 2) != 0)
      {
        CA::Render::FlattenManager::add_free_surface_to_pool(*(v17 + 200));
        CA::Render::FlattenedCacheEntry::~FlattenedCacheEntry(v17);
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v17);
      }

      *(v16 + 152) = 0;
      *(v16 + 24) &= 0xFFFFFFF3FFFFFFFFLL;
      if (atomic_fetch_add((v16 + 16), 0xFFFFFFFF) == 1)
      {
        CA::Render::LayerNode::delete_node(v16, v14);
      }
    }

    os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
    v19 = *(this + 80);
    if (v19)
    {
      do
      {
        v20 = v19[1];
        free(v19);
        v19 = v20;
      }

      while (v20);
    }

    *(this + 80) = 0;
  }

  v21 = *(this + 81);
  if (v21)
  {
    do
    {
      (*(**v21 + 24))();
      v22 = *v21;
      add = atomic_fetch_add((*v21 + 8), 0xFFFFFFFF);
      if (v22)
      {
        v24 = add == 1;
      }

      else
      {
        v24 = 0;
      }

      if (v24)
      {
        (*(*v22 + 8))(v22);
      }

      v21 = v21[1];
    }

    while (v21);
    v25 = *(this + 81);
    if (v25)
    {
      do
      {
        v26 = v25[1];
        free(v25);
        v25 = v26;
      }

      while (v26);
    }
  }

  CA::Render::Update::release_objects(this);
  for (j = *(this + 46); j; j = *j)
  {
    v29 = *(this + 172);
    if ((v29 & 0x10) == 0 && (v29 & 1) == 0)
    {
      v30 = j[1];
      v31 = *(j + 6);
      os_unfair_lock_lock(v30 + 13);
      if (v30[17]._os_unfair_lock_opaque < v31)
      {
        v30[17]._os_unfair_lock_opaque = v31;
        CA::Render::Context::check_sync_reqs(v30, 0.0);
      }

      os_unfair_lock_unlock(v30 + 13);
    }

    v32 = j[1];
    if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v32 + 16))(v32);
    }

    CGColorSpaceRelease(j[2]);
  }

  CA::Render::Update::pop_dependence_group(this, v27);
  for (k = *(this + 68); k; k = *k)
  {
    v34 = *(this + 68);
    v35 = k[1][32];
    os_unfair_lock_lock((v35 + 52));
    v36 = *(v35 + 56);
    os_unfair_lock_lock((v36 + 40));
    if (*(v36 + 56) == v34)
    {
      v37 = *(v36 + 488);
      if (v37 == v34 || v37 == 0)
      {
        v39 = *(v36 + 72);
        v40 = *(v36 + 80);
        while (v39 != v40)
        {
          *(v39 + 24) = 0;
          *(v39 + 181) = 0;
          v39 += 192;
        }

        *(v36 + 488) = 0;
      }

      v41 = *(v36 + 48);
      if (v41)
      {
        v42 = *(v36 + 568);
        if (v42 >= *(v36 + 576))
        {
          v42 = *(v36 + 576);
        }

        if (v42 <= 0.0)
        {
          (*(*v41 + 8))(v41);
          *(v36 + 48) = 0;
        }
      }

      *(v36 + 56) = 0;
      v43 = *(v36 + 632);
      if (v43)
      {
        if (atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v43 + 16))(v43);
        }

        *(v36 + 632) = 0;
      }
    }

    os_unfair_lock_unlock((v36 + 40));
    os_unfair_lock_unlock((v35 + 52));
    v45 = k[1];
    if (atomic_fetch_add(v45 + 4, 0xFFFFFFFF) == 1)
    {
      CA::Render::LayerNode::delete_node(v45, v44);
    }

    CA::Shape::unref(k[5]);
    v46 = k[11];
    if (v46)
    {
      do
      {
        v47 = v46[1];
        (**v46)(v46);
        v46 = v47;
      }

      while (v47);
    }
  }

  for (m = *(this + 73); m; m = *m)
  {
    v49 = m[2];
    if (v49)
    {
      CA::Shape::unref(v49);
    }
  }

  v50 = *(this + 74);
  v51 = *(this + 75);
  if (v50 != v51)
  {
    do
    {
      v52 = *v50;
      if (!*(*v50 + 8))
      {
        __assert_rtn("unref_group_list_isolated", "render-backdrop-layer.cpp", 692, "!g->is_finalizing ()");
      }

      if ((*(v52 + 13) & 2) != 0)
      {
        os_unfair_lock_lock((v52 + 40));
        v53 = *(v52 + 48);
        if (v53)
        {
          (*(*v53 + 8))(v53);
          *(v52 + 48) = 0;
        }

        os_unfair_lock_unlock((v52 + 40));
      }

      ++v50;
    }

    while (v50 != v51);
    v54 = *(this + 74);
    for (n = *(this + 75); v54 != n; ++v54)
    {
      v56 = *v54;
      if (atomic_fetch_add((*v54 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v56 + 16))(v56);
      }
    }
  }

  if ((*(this + 1377) & 0x40) == 0)
  {
    CA::Render::BackdropState::collect(*(this + 68));
  }

  v57 = *(this + 72);
  if (v57)
  {
    v58 = *(this + 138);
    if (v58)
    {
      for (ii = 0; ii < v58; ++ii)
      {
        v60 = *(*(this + 72) + 8 * ii);
        if (v60)
        {
          CA::Shape::unref(v60);
          v58 = *(this + 138);
        }
      }

      v57 = *(this + 72);
    }

    free(v57);
  }

  v61 = *(this + 70);
  if (v61)
  {
    CA::Shape::unref(v61);
  }

  v62 = *(this + 71);
  if (v62)
  {
    CA::Shape::unref(v62);
  }

  for (jj = *(this + 144); jj; jj = *jj)
  {
    v64 = jj[1];
    if (atomic_fetch_add(v64 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v64 + 16))(v64);
    }
  }

  v65 = *(this + 111);
  if (v65)
  {
    v66 = *v65;
    if (*v65 == v65 + 8)
    {
      goto LABEL_117;
    }

    do
    {
      v67 = v66[4];
      if (*(v67 + 12) != 25)
      {
        __assert_rtn("~Update", "render-updater.cpp", 11703, "obj->type () == Render::kTypeImageQueue");
      }

      if (atomic_fetch_add((v67 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v67 + 16))(v67);
      }

      v68 = v66[1];
      if (v68)
      {
        do
        {
          v69 = v68;
          v68 = *v68;
        }

        while (v68);
      }

      else
      {
        do
        {
          v69 = v66[2];
          v24 = *v69 == v66;
          v66 = v69;
        }

        while (!v24);
      }

      v66 = v69;
    }

    while (v69 != (v65 + 8));
    v65 = *(this + 111);
    if (v65)
    {
LABEL_117:
      std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(*(v65 + 8));
      MEMORY[0x1865EA9A0](v65, 0x1020C4062D53EE8);
    }
  }

  if (*(this + 122))
  {
    v70 = *(this + 120);
    if (v70 != (this + 968))
    {
      do
      {
        v71 = *(v70 + 4);
        if (*(v71 + 12) != 25)
        {
          __assert_rtn("~Update", "render-updater.cpp", 11725, "obj->type () == Render::kTypeImageQueue");
        }

        CA::Render::ImageQueue::did_display(*(v70 + 4), *(this + 68), 0.0, 0.0, 0.0);
        if (atomic_fetch_add((v71 + 8), 0xFFFFFFFF) == 1)
        {
          (*(*v71 + 16))(v71);
        }

        v72 = *(v70 + 1);
        if (v72)
        {
          do
          {
            v73 = v72;
            v72 = *v72;
          }

          while (v72);
        }

        else
        {
          do
          {
            v73 = *(v70 + 2);
            v24 = *v73 == v70;
            v70 = v73;
          }

          while (!v24);
        }

        v70 = v73;
      }

      while (v73 != (this + 968));
    }
  }

  std::__tree<CA::Render::Update::ContextInfo>::destroy(*(this + 118));
  *(this + 117) = this + 944;
  *(this + 59) = 0u;
  for (kk = *(this + 140); kk; kk = *kk)
  {
    v75 = kk[1];
    if (v75)
    {
      CFRelease(v75);
    }
  }

  *(this + 129) = *(this + 128);

  _Block_release(*(this + 107));
  x_heap_free(*this);
  v76 = *(this + 152);
  if (v76 != *(this + 154))
  {
    free(v76);
  }

  v77 = *(this + 141);
  if (v77)
  {
    *(this + 142) = v77;
    operator delete(v77);
  }

  v78 = *(this + 128);
  if (v78 != *(this + 130))
  {
    free(v78);
  }

  v79 = *(this + 127);
  if (v79)
  {
    CFRelease(v79);
  }

  v80 = *(this + 126);
  if (v80)
  {
    CFRelease(v80);
  }

  v81 = *(this + 125);
  if (v81)
  {
    CFRelease(v81);
  }

  std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(*(this + 121));
  std::__tree<CA::Render::Update::ContextInfo>::destroy(*(this + 118));
  v82 = *(this + 114);
  if (v82)
  {
    do
    {
      v83 = *v82;
      operator delete(v82);
      v82 = v83;
    }

    while (v83);
  }

  v84 = *(this + 112);
  *(this + 112) = 0;
  if (v84)
  {
    operator delete(v84);
  }

  v85 = *(this + 108);
  if (v85)
  {
    v86 = *(this + 109);
    v87 = *(this + 108);
    if (v86 != v85)
    {
      do
      {
        v86 = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v86 - 40);
      }

      while (v86 != v85);
      v87 = *(this + 108);
    }

    *(this + 109) = v85;
    operator delete(v87);
  }

  v88 = *(this + 74);
  if (v88 != *(this + 76))
  {
    free(v88);
  }
}

void CA::Render::Updater::FilterOp::~FilterOp(CA::Render::Updater::FilterOp *this)
{
  *this = &unk_1EF1F8248;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 4);
    if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
    }

    v3 = *(this + 5);
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
      }
    }
  }
}

{
  CA::Render::Updater::FilterOp::~FilterOp(this);

  JUMPOUT(0x1865EA9A0);
}

void CA::WindowServer::IOMFBDisplay::complete_display_state_transition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = atomic_load(*(a1 + 768));
  if (v6 == a2)
  {
    v7 = atomic_load((*(a1 + 768) + 2));
    if (v7 == a3)
    {
      return;
    }
  }

  v8 = (a1 + 26424);
  v9 = atomic_load((*(a1 + 768) + 2));
  if (!a3 && v9)
  {
    v10 = *(a1 + 29502);
    if (v10 == (*(*a1 + 864))(a1))
    {
      v11 = 0;
    }

    else
    {
      *(a1 + 29502) = (*(*a1 + 864))(a1);
      v11 = 16;
    }

    v12 = *v8;
    if (v12 != (*(*a1 + 936))(a1))
    {
      *v8 = (*(*a1 + 936))(a1);
      v11 |= 0x20u;
    }

    v13 = *(a1 + 26516);
    if (v13 != (*(*a1 + 1016))(a1))
    {
      *(a1 + 26516) = (*(*a1 + 1016))(a1);
      v11 |= 0x100u;
    }

    *(a1 + 29508) = 1;
    CA::WindowServer::IOMFBDisplay::update_framebuffer_color_properties(a1, v11);
    *(a1 + 29492) = 0;
  }

  v14 = atomic_load(*(a1 + 768));
  if (a2 == 1 && v14 != 1)
  {
    v15 = *(a1 + 26748);
    if (v15)
    {
      pthread_mutex_lock((a1 + 576));
      CA::WindowServer::IOMFBDisplay::update_framebuffer_locked(a1, v15);
      pthread_mutex_unlock((a1 + 576));
    }
  }

  os_unfair_lock_lock((a1 + 756));
  v16 = *(a1 + 768);
  v17 = atomic_load(v16);
  if (v17 != a2)
  {
    if ((*(a1 + 640) & 0x40) == 0)
    {
      goto LABEL_39;
    }

    if (a2 < 2)
    {
      v19 = 0;
LABEL_38:
      CA::WindowServer::FlipBook::transition_to_state(*(a1 + 336), v19, 1);
LABEL_39:
      if (a2 == 1)
      {
        v23 = mach_absolute_time();
        atomic_store(COERCE_UNSIGNED_INT64(CATimeWithHostTime(v23)), (a1 + 28384));
        v24 = mach_absolute_time();
        v25 = CATimeWithHostTime(v24);
        if (arc4random_uniform(0x64u) <= 0x54)
        {
          *&CATailspinMinimumTimestamp = v25 + 10.0;
        }

        CA::WindowServer::IOMFBDisplay::enable_hotplug_info(a1);
        *(a1 + 29582) = 0;
        goto LABEL_47;
      }

      *(a1 + 712) = 0u;
      if (a2 != 3)
      {
        if (a2)
        {
LABEL_47:
          (*(*a1 + 2224))(a1, a2);
          atomic_store(a2, v16);
          if (x_log_get_display_state(void)::once != -1)
          {
            dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
          }

          v26 = x_log_get_display_state(void)::log;
          if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v27 = *(a1 + 24);
            if ((a2 - 1) > 0xA)
            {
              v28 = "off";
            }

            else
            {
              v28 = off_1E6DED748[(a2 - 1)];
            }

            v34 = 67109378;
            v35 = v27;
            v36 = 2080;
            v37 = v28;
            _os_log_impl(&dword_183AA6000, v26, OS_LOG_TYPE_DEFAULT, "IOMFBDisplay::complete_display_state_transition display_id=%u, current_state=%s", &v34, 0x12u);
          }

          kdebug_trace();
          CA::WindowServer::Display::DisplayStateTransitionReply::_send((a1 + 776), "send", a2, *(a1 + 808) != a2);
          goto LABEL_55;
        }

        (*(*a1 + 2336))(a1);
        (*(*a1 + 2328))(a1);
      }

      CA::WindowServer::IOMFBDisplay::set_all_layers_to_null(a1, 1);
      *(a1 + 29508) = 1;
      goto LABEL_47;
    }

    if (a2 != 2)
    {
      if (a2 != 3)
      {
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v33 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
        {
          v34 = 67109120;
          v35 = a2;
          _os_log_error_impl(&dword_183AA6000, v33, OS_LOG_TYPE_ERROR, "CoreAnimation: Unrecognized display state: %u", &v34, 8u);
        }

        abort();
      }

      if (x_log_get_flipbook(void)::once != -1)
      {
        dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
      }

      v18 = x_log_get_flipbook(void)::log;
      if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        v19 = 2;
        _os_log_impl(&dword_183AA6000, v18, OS_LOG_TYPE_DEFAULT, "entering suppression", &v34, 2u);
      }

      else
      {
        v19 = 2;
      }

      goto LABEL_38;
    }

    v20 = *(a1 + 25760);
    if (v20)
    {
      if (*v20)
      {
LABEL_31:
        CA::WindowServer::SILMgr::turn_off_all_regions(v20, 0, 0, 0);
        IOMobileFramebufferSwapSetIndicatorBrightness();
        CA::WindowServer::IOMFBDisplay::post_secure_indicator_statistics_power_log(a1);
        goto LABEL_32;
      }

      v21 = sil_mgr_instance(0, 0xFFFFFFFFLL);
      *v20 = v21;
      if (v21)
      {
        v20 = *(a1 + 25760);
        goto LABEL_31;
      }
    }

LABEL_32:
    if (x_log_get_flipbook(void)::once != -1)
    {
      dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
    }

    v22 = x_log_get_flipbook(void)::log;
    if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&dword_183AA6000, v22, OS_LOG_TYPE_DEFAULT, "entering flipbook", &v34, 2u);
    }

    v19 = 1;
    goto LABEL_38;
  }

LABEL_55:
  v29 = atomic_load(v16 + 2);
  if (v29 != a3)
  {
    atomic_store(a3, v16 + 2);
    if (x_log_get_display_state(void)::once != -1)
    {
      dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
    }

    v30 = x_log_get_display_state(void)::log;
    if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 24);
      if ((a3 - 1) > 2)
      {
        v32 = "off";
      }

      else
      {
        v32 = off_1E6DED7A0[(a3 - 1)];
      }

      v34 = 67109378;
      v35 = v31;
      v36 = 2080;
      v37 = v32;
      _os_log_impl(&dword_183AA6000, v30, OS_LOG_TYPE_DEFAULT, "IOMFBDisplay::complete_display_state_transition display_id=%u, current_cloning_state=%s", &v34, 0x12u);
    }

    CA::WindowServer::Display::DisplayStateTransitionReply::_send((a1 + 824), "send", a3, *(a1 + 856) != a3);
  }

  os_unfair_lock_unlock((a1 + 756));
}

void CA::Render::BackdropState::collect(CA::Render::BackdropState *this)
{
  v1 = this;
  v28 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&CA::Render::BackdropState::_list_lock);
  v2 = CA::Render::BackdropState::_list;
  v3 = qword_1EA84E8A0;
  if (CA::Render::BackdropState::_list == qword_1EA84E8A0)
  {
    os_unfair_lock_unlock(&CA::Render::BackdropState::_list_lock);
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v2;
      if (*(*v2 + 8))
      {
        os_unfair_lock_lock((v5 + 52));
        if ((*(v5 + 153) & 1) == 0)
        {
          v6 = *(v5 + 56);
          if (v6)
          {
            if (!*(v6 + 56))
            {
              *(v6 + 616) = v1;
            }
          }
        }

        v8 = (v5 + 144);
        v7 = *(v5 + 144);
        if (v7)
        {
          do
          {
            if (*(v7 + 24) == v1)
            {
              v8 = v7;
            }

            else
            {
              *v8 = *v7;
              *v7 = v4;
              v4 = v7;
            }

            v7 = *v8;
          }

          while (*v8);
        }

        os_unfair_lock_unlock((v5 + 52));
      }

      v2 += 8;
    }

    while (v2 != v3);
    os_unfair_lock_unlock(&CA::Render::BackdropState::_list_lock);
    if (v4)
    {
      do
      {
        v9 = *v4;
        v10 = v4[4];
        if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v10 + 16))(v10);
        }

        MEMORY[0x1865EA9A0](v4, 0x1020C400F943929);
        v4 = v9;
      }

      while (v9);
    }
  }

  os_unfair_lock_lock(&CA::Render::BackdropGroup::_list_lock);
  v11 = CA::Render::BackdropGroup::_list;
  v12 = qword_1EA84E8E0;
  if (CA::Render::BackdropGroup::_list == qword_1EA84E8E0)
  {

    os_unfair_lock_unlock(&CA::Render::BackdropGroup::_list_lock);
  }

  else
  {
    v13 = 0;
    v14 = &unk_1EA851000;
    v15 = &unk_1EA851000;
    do
    {
      v16 = *v11;
      if (*(*v11 + 8) && *(v16 + 616) != v1 && !*(v16 + 56))
      {
        os_unfair_lock_lock((v16 + 40));
        v17 = *(v16 + 48);
        if (v17 && *(v16 + 616) != v1 && !*(v16 + 56))
        {
          if (BYTE11(xmmword_1ED4E97DC) == 1)
          {
            v18 = v14[262];
            v19 = v11;
            if (v18 != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v20 = *(v15 + 255);
            v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
            v17 = *(v16 + 48);
            if (v21)
            {
              *buf = 134218240;
              v25 = v16;
              v26 = 2048;
              v27 = v17;
              _os_log_impl(&dword_183AA6000, v20, OS_LOG_TYPE_DEFAULT, "collected backdrop group %p buffer %p\n", buf, 0x16u);
              v17 = *(v16 + 48);
            }

            v11 = v19;
            v14 = &unk_1EA851000;
            v15 = &unk_1EA851000;
          }

          v13 = x_list_prepend(v13, v17);
          *(v16 + 48) = 0;
          X::small_vector_base<CA::Render::BackdropGroup::Item>::resize(v16 + 72, 0);
        }

        os_unfair_lock_unlock((v16 + 40));
      }

      v11 += 8;
    }

    while (v11 != v12);
    os_unfair_lock_unlock(&CA::Render::BackdropGroup::_list_lock);
    if (v13)
    {
      v22 = v13;
      do
      {
        if (*v22)
        {
          (*(**v22 + 8))(*v22);
        }

        v22 = v22[1];
      }

      while (v22);
      do
      {
        v23 = v13[1];
        free(v13);
        v13 = v23;
      }

      while (v23);
    }
  }
}

void CA::WindowServer::IOMFBServer::register_libedr_callbacks(CA::WindowServer::IOMFBServer *this)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(this + 1446) & 4) != 0 && *(*(this + 12) + 29568) == 1)
  {
    CA::WindowServer::IOMFBServer::unregister_libedr_callbacks(this);
  }

  if (CA::WindowServer::IOMFBServer::edr_client(this))
  {
    v2 = *(this + 12);
    if ((*(v2 + 29568) & 1) == 0)
    {
      v3 = CA::WindowServer::IOMFBServer::edr_client(this);
      pthread_mutex_lock(v3);
      v4 = *(v3 + 152);
      pthread_mutex_unlock(v3);
      CA::WindowServer::Display::initialize_edr_state(v2);
      v5 = *(v2 + 704);
      if (v5)
      {
        atomic_store(v4, (v5 + 4));
      }

      if ((*(this + 1446) & 4) == 0)
      {
        CA::WindowServer::IOMFBServer::unregister_libedr_callbacks(this);
        v6 = CA::WindowServer::IOMFBServer::edr_client(this);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 0x40000000;
        v10[2] = ___ZN2CA12WindowServer11IOMFBServer25register_libedr_callbacksEv_block_invoke;
        v10[3] = &__block_descriptor_tmp_81;
        v10[4] = this;
        if (CADeviceHasBacklight::once != -1)
        {
          dispatch_once(&CADeviceHasBacklight::once, &__block_literal_global_132);
        }

        if (CADeviceHasBacklight::has_backlight == 1)
        {
          if (CA::EDRClient::client(v6))
          {
            pthread_mutex_lock(v6 + 1);
            if (v6[2].__opaque[11] == 1)
            {
              pthread_mutex_unlock(v6 + 1);
              CA::EDRClient::unregister_callback(v6);
              pthread_mutex_lock(v6 + 1);
            }

            if (x_log_get_utilities::once != -1)
            {
              dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
            }

            v7 = x_log_get_utilities::log;
            if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_183AA6000, v7, OS_LOG_TYPE_DEBUG, "registering libEDR callback\n", buf, 2u);
            }

            CA::EDRClient::client(v6);
            *buf = MEMORY[0x1E69E9820];
            v12 = 0x40000000;
            v13 = ___ZN2CA9EDRClient17register_callbackEU13block_pointerFvbfffE_block_invoke;
            v14 = &unk_1E6DF9798;
            v15 = v10;
            v16 = v6;
            EDRRegisterCallbackBlockOnQueue();
            v6[2].__opaque[11] = 1;
            pthread_mutex_unlock(v6 + 1);
            v8 = 4;
            goto LABEL_25;
          }

          if (x_log_get_utilities::once != -1)
          {
            dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
          }

          v9 = x_log_get_utilities::log;
          if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_183AA6000, v9, OS_LOG_TYPE_DEBUG, "cannot register libEDR callback\n", buf, 2u);
          }
        }

        v8 = 0;
LABEL_25:
        *(this + 1446) = *(this + 1446) & 0xFB | v8;
      }
    }
  }
}

uint64_t CA::Render::HitTestTree::append_root_node(CA::Render::HitTestTree *this, const CA::Render::LayerNode *a2, unsigned int a3, int a4, unsigned int *a5)
{
  v6 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v10 = *(a2 + 5);
  if (v10)
  {
    v11 = *(v10 + 24);
    if (v11)
    {
      v12 = *(v11 + 584);
      v6 = (v12 >> 1) & 4 | a4;
      if ((v12 & 0x10) != 0)
      {
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(this + 3, a3);
      }
    }
  }

  v13 = *(a2 + 14) & 0x40;
  v15 = 0;
  result = CA::Render::HitTestTree::append_layer_node(this, a2, 0, a3, v13 | v6, &v15);
  if (result)
  {
    ++*a5;
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBServer::complete_display_state_transition(uint64_t a1, int a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 856));
  v6 = *(*(a1 + 96) + 768);
  if (!atomic_load(v6 + 1))
  {
    (*(*a1 + 512))(a1, 0, 1, 0, 1.0);
  }

  if (a2 == 1 && (v8 = atomic_load(v6 + 5), !a3) && v8 == 1)
  {
    (*(**(a1 + 96) + 224))(*(a1 + 96), 1, 0);
  }

  else
  {
    CA::WindowServer::IOMFBServer::remove_vsync_source(a1);
    CA::WindowServer::IOMFBServer::remove_power_log_timer(a1);
    CA::WindowServer::IOMFBDisplay::post_power_log(*(a1 + 96));
    CA::WindowServer::Server::complete_display_state_transition(a1, a2);
  }

  v10 = atomic_load(v6);
  if (v10 == 1)
  {
    v11 = atomic_load(v6 + 5);
    if (v11 == 1 && !atomic_load(v6 + 3))
    {
      CA::WindowServer::IOMFBServer::add_vsync_source(a1, v9);
      if (!*(a1 + 1120))
      {
        v15.version = 0;
        memset(&v15.retain, 0, 24);
        v15.info = a1;
        Current = CFAbsoluteTimeGetCurrent();
        *(a1 + 1120) = CFRunLoopTimerCreate(0, Current + 300.0, 300.0, 0, 0, CA::WindowServer::IOMFBServer::add_power_log_timer(void)::$_0::__invoke, &v15);
        CA::WindowServer::IOMFBServer::add_runloop_source(a1, 0, 0);
        CFRunLoopAddTimer(*(a1 + 1080), *(a1 + 1120), *MEMORY[0x1E695E8E0]);
      }

      if ((*(**(a1 + 96) + 216))(*(a1 + 96)))
      {
        CA::WindowServer::IOMFBServer::register_libedr_callbacks(a1);
      }
    }
  }

  return pthread_mutex_unlock((a1 + 856));
}

void CA::WindowServer::IOMFBServer::add_vsync_source(CA::WindowServer::IOMFBServer *this, float *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(this + 1446) & 2) != 0)
  {
    if (*(this + 137))
    {
      return;
    }

    if (CA::WindowServer::Display::benchmark_mode(0, a2))
    {
      return;
    }

    VSyncRunLoopSource = IOMobileFramebufferGetVSyncRunLoopSource();
    *(this + 137) = VSyncRunLoopSource;
    if (!VSyncRunLoopSource)
    {
      return;
    }

    CA::WindowServer::IOMFBServer::add_runloop_source(this, VSyncRunLoopSource, 0);
  }

  else
  {
    if (*(this + 139) || (CA::WindowServer::Display::benchmark_mode(0, a2) & 1) != 0)
    {
      return;
    }

    CA::WindowServer::IOMFBServer::add_runloop_source(this, 0, 0);
    v12 = 0;
    v13 = 0;
    v11 = this;
    (*(**(this + 12) + 760))();
    v4 = *(this + 12);
    if ((v4[160] & 0x100) != 0)
    {
      v3 = (*(*v4 + 776))(v4);
    }

    v5 = v3;
    v6 = mach_absolute_time();
    v7 = CATimeWithHostTime(v6);
    v8 = CADisplayTimerCreate(CA::WindowServer::IOMFBServer::timer_callback, &v11, 0, v7, v5);
    *(this + 139) = v8;
    pthread_mutex_lock((v8 + 16));
    *(v8 + 201) = 1;
    pthread_mutex_unlock((v8 + 16));
    CA::WindowServer::IOMFBServer::refresh_timer_interval(this);
  }

  if (*(this + 360))
  {
    CA::WindowServer::IOMFBServer::set_vsync_enabled(this);
  }

  v10 = *(this + 12);
  if (*(v10 + 29568) == 1 && (*(v10 + 672) & 0x1C00) != 0)
  {
    IOMobileFramebufferSetBrightnessControlCallback();
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::needs_update(CA::WindowServer::IOMFBDisplay *this)
{
  v16 = *MEMORY[0x1E69E9840];
  if (CA::WindowServer::IOMFBDisplay::needs_harmony_update(this))
  {
    return 0x10000000;
  }

  if (*(this + 29513) != 1 || (*(*this + 1504))(this))
  {
    v3 = atomic_load((*(this + 96) + 4));
    if ((v3 || (v4 = atomic_load((*(this + 96) + 5))) != 0) && *(this + 27172) != 1)
    {
      return 0x4000000000000000;
    }
  }

  if (CADeviceNeedsLumaBoost::once != -1)
  {
    dispatch_once(&CADeviceNeedsLumaBoost::once, &__block_literal_global_67);
  }

  if (CADeviceNeedsLumaBoost::needs_luma_bost == 1 && CA::WindowServer::Display::is_enabled_for_vsync_render(this) && ((*(this + 29551) & 1) != 0 || *(this + 6712)))
  {
    return 0x800000000;
  }

  if (*(this + 3348) != 0.0)
  {
    if (xmmword_1ED4E988C != 1)
    {
      return 8;
    }

    if (x_log_get_CADebug(void)::once != -1)
    {
      dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
    }

    v5 = x_log_get_CADebug(void)::log;
    if (!os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      return 8;
    }

    *buf = 0;
    v6 = "kUpdateReasonDisplayBrightness brightness_deadline";
    v7 = buf;
LABEL_53:
    _os_log_impl(&dword_183AA6000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    return 8;
  }

  if (((*(this + 29568) & 1) != 0 || CA::WindowServer::Display::Mode::is_hdr((this + 656))) && (*(*this + 992))(this))
  {
    if (xmmword_1ED4E988C != 1)
    {
      return 8;
    }

    if (x_log_get_CADebug(void)::once != -1)
    {
      dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
    }

    v5 = x_log_get_CADebug(void)::log;
    if (!os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      return 8;
    }

    v14 = 0;
    v6 = "kUpdateReasonDisplayBrightness needs_brightness_update";
    v7 = &v14;
    goto LABEL_53;
  }

  pthread_mutex_lock((this + 25848));
  v8 = *(this + 6 * *(this + 6459) + 3240);
  if (v8 && *(v8 + 24))
  {
    v2 = 0x2000000000;
  }

  else
  {
    v9 = *(this + 5);
    if (v9)
    {
      v2 = 0x80000;
      while (!(*(**(*v9 + 96) + 320))(*(*v9 + 96)))
      {
        v9 = v9[1];
        if (!v9)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
LABEL_34:
      if (*(this + 29561) & 1) != 0 || (*(this + 29562) & 1) != 0 || (*(this + 29563) & 1) != 0 || (*(this + 29564))
      {
        v2 = 16;
      }

      else if (*(this + 25768) == 3 && (v11 = *(this + 3220)) != 0 && (*v11 || (v12 = sil_mgr_instance(0, 0xFFFFFFFFLL), (*v11 = v12) != 0)) && ((v13 = mach_absolute_time(), CATimeWithHostTime(v13) < *(this + 3349)) || CA::WindowServer::SILMgr::needs_soft_boundary_update(*(this + 3220), *(this + 6514))))
      {
        v2 = 0x40000000000;
      }

      else
      {
        v2 = 0;
      }
    }
  }

  pthread_mutex_unlock((this + 25848));
  return v2;
}

void CA::OGL::anonymous namespace::prepare_blur_mipmap(CA::OGL::_anonymous_namespace_ *this, CA::OGL::Renderer *a2, CA::Render::BackdropGroup *a3, const CA::Render::BackdropLayer *a4, CA::OGL::BackdropBuffer *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 6);
  if (v5)
  {
    if (*(v5 + 40))
    {
      if (*(v5 + 44))
      {
        v6 = *(a2 + 170);
        if (v6 != 0.0)
        {
          v9 = *(a2 + 169);
          v10 = *(v5 + 48);
          v24 = v10;
          v11 = *(*(this + 82) + 24);
          if ((*(v11 + 144) & 0x10) != 0)
          {
            v12 = vaddvq_f64(vmulq_f64(*v11, *v11));
            v13 = vaddvq_f64(vmulq_f64(*(v11 + 32), *(v11 + 32)));
            v14 = *(v11 + 120);
            if (v14 != 1.0)
            {
              v15 = 1.0 / (v14 * v14);
              v12 = v15 * v12;
              v13 = v15 * v13;
            }

            v16 = v12 != 1.0;
            if (v13 != 1.0)
            {
              v16 = 1;
            }

            v17 = sqrt(v12);
            v18 = sqrt(v13);
            if (v16)
            {
              v13 = v18;
              v12 = v17;
            }
          }

          else
          {
            v12 = *(v11 + 128);
            v13 = v12;
          }

          if (v12 <= v13)
          {
            v12 = v13;
          }

          v19 = v12 * *(a3 + 6);
          memset(v23, 0, 72);
          CA::OGL::compute_variable_blur_parameters(v23, DWORD2(v10), HIDWORD(v10), &v24, v9 * v19, v6 * v19);
          v21[0] = *(&v23[2] + 8);
          v21[1] = *(&v23[3] + 8);
          v22 = *(&v23[1] + 4);
          v20 = (*(*this + 944))(this, v5, &v22, v21, DWORD2(v23[0]), HIDWORD(v23[0]), 0, 1, 0.0, 256);
          if (v20)
          {
            *(a3 + 6) = v20;
            if ((*(v20 + 148) & 0x80) != 0)
            {
              *(a3 + 7) = *(a3 + 7) * 0.5;
            }

            CA::OGL::Context::release_surface(this, v5);
            *(a3 + 224) |= 4u;
          }
        }
      }
    }
  }
}

uint64_t CA::OGL::MetalContext::start_compute_encoder(CA::OGL::MetalContext *this, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (*(this + 455))
    {
      v4 = *(this + 441);
      if (v4)
      {
        if ([v4 protectionOptions])
        {
          CA::OGL::MetalContext::flush(this, 0);
        }
      }
    }
  }

  if (*(this + 444))
  {
    return 1;
  }

  CA::OGL::MetalContext::stop_encoders(this);
  result = CA::OGL::MetalContext::start_command_buffer(this, a2, v5);
  if (!result)
  {
    return result;
  }

  CA::OGL::MetalContext::SharedEvent::encode_all((this + 2776), this, v7);
  v8 = [*(this + 441) computeCommandEncoderWithDispatchType:0];
  *(this + 444) = v8;
  if (v8)
  {
    if (byte_1ED4E9879 == 1)
    {
      v9 = mach_continuous_time();
    }

    else
    {
      v9 = 0;
    }

    *(this + 457) = v9;
    return 1;
  }

  if (x_log_get_ogl_metal(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
  }

  v10 = x_log_get_ogl_metal(void)::log;
  result = os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *v11 = 0;
    _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, "Unable to start compute command encoder\n", v11, 2u);
    return 0;
  }

  return result;
}

uint64_t CA::OGL::MetalContext::get_compute_pipeline(uint64_t a1, unsigned int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1 + 3192;
  result = *(a1 + 3192 + 8 * a2);
  if (!result)
  {
    v16 = 0;
    v6 = CA::OGL::MetalContext::get_compute_pipeline(CA::OGL::MetalContext::ComputeShaderType)::compute_fct_names[a2];
    shader_function = CA::OGL::MetalContext::load_shader_function(a1, *(a1 + 3944), v6, 0, 0, 0, &v16);
    if (!shader_function)
    {
      if (x_log_get_ogl_metal(void)::once == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    v8 = shader_function;
    v9 = objc_opt_new();
    [v9 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"com.apple.coreanimation.%@", v6)}];
    [v9 setComputeFunction:v8];
    if (*(a1 + 3952))
    {
      v17 = *(a1 + 3952);
      [v9 setBinaryArchives:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v17, 1)}];
    }

    *(v3 + 8 * a2) = [*(a1 + 3504) newComputePipelineStateWithDescriptor:v9 error:&v16];

    result = *(v3 + 8 * a2);
    if (!result)
    {
      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v13 = x_log_get_ogl_metal(void)::log;
      if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
      {
        v14 = [(__CFString *)v6 UTF8String];
        v15 = [objc_msgSend(v16 "localizedDescription")];
        *buf = 136315394;
        v19 = v14;
        v20 = 2080;
        v21 = v15;
        _os_log_error_impl(&dword_183AA6000, v13, OS_LOG_TYPE_ERROR, "Metal failed to build compute pipeline\nfunction=%s\n%s", buf, 0x16u);
      }

      while (1)
      {
        bzero(buf, 0x7FFuLL);
        v6 = [(__CFString *)v6 UTF8String];
        snprintf(buf, 0x800uLL, "function=%s\n%s", v6, [objc_msgSend(v16 "localizedDescription")]);
        v22 = 0;
        strlen(buf);
        abort_with_payload();
LABEL_16:
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
LABEL_8:
        v10 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
        {
          v11 = [(__CFString *)v6 UTF8String];
          v12 = [objc_msgSend(v16 "localizedDescription")];
          *buf = 136315394;
          v19 = v11;
          v20 = 2080;
          v21 = v12;
          _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, "Metal failed to load compute shader\nfunction=%s\n%s", buf, 0x16u);
        }
      }
    }
  }

  return result;
}

uint64_t CA::Transaction::ensure_implicit(CA::Transaction *this, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (BYTE7(ca_debug_options) == 1)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v9 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      v11 = pthread_self();
      _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "Started implicit transaction for thread %p\n", &v10, 0xCu);
    }
  }

  Current = *(this + 7);
  if (!Current)
  {
    Current = CFRunLoopGetCurrent();
    *(this + 7) = Current;
  }

  if (!*(this + 8))
  {
    v7 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 2000000, CA::Transaction::observer_callback, 0);
    *(this + 8) = v7;
    if (!v7)
    {
      goto LABEL_16;
    }

    CFRunLoopAddObserver(*(this + 7), v7, *MEMORY[0x1E695E8D0]);
    if (!*(this + 8))
    {
      goto LABEL_16;
    }

    Current = *(this + 7);
  }

  v5 = CFRunLoopCopyCurrentMode(Current);
  if (v5)
  {
    v6 = v5;
    if (v5 != *MEMORY[0x1E695E8E0])
    {
      if (!CA::Transaction::ensure_implicit(BOOL)::tracking_mode && CFEqual(v5, @"UITrackingRunLoopMode"))
      {
        CA::Transaction::ensure_implicit(BOOL)::tracking_mode = CFRetain(v6);
        CFRunLoopAddObserver(*(this + 7), *(this + 8), v6);
      }

      if (v6 != CA::Transaction::ensure_implicit(BOOL)::tracking_mode)
      {
        CFRunLoopAddObserver(*(this + 7), *(this + 8), v6);
      }
    }

    CFRelease(v6);
  }

LABEL_16:
  CA::Transaction::push(this, 1, a2);
  *(*(this + 15) + 204) |= 1u;
  result = *(*(this + 15) + 112);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t CA::Transaction::push(CA::Transaction *this, BOOL a2, int a3)
{
  v4 = *(this + 15);
  if (atomic_fetch_add(v4, 1u))
  {
    if (!*(this + 13))
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      *(this + 13) = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x20uLL, 0xDEEC3011uLL);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x20uLL, 0xDEEC3011uLL);
    *result = *(this + 13);
    *(this + 13) = result;
    return result;
  }

  *(v4 + 204) &= 0xFCu;
  *(v4 + 144) = 0;
  v7 = mach_absolute_time();
  *(v4 + 152) = CATimeWithHostTime(v7);
  *(v4 + 232) = 0;
  *(this + 48) = 0;
  *(this + 49) = this + 416;
  *(this + 25) = xmmword_183E213C0;
  *(v4 + 128) = this + 384;
  os_unfair_lock_lock(&CA::Transaction::slot_lock);
  if (CA::Transaction::slot_mask)
  {
    if ((CA::Transaction::slot_mask & 2) != 0)
    {
      os_unfair_lock_unlock(&CA::Transaction::slot_lock);
      result = x_hash_table_new_(0, 0, 0, 0, 0, 0);
      *(v4 + 8) = result;
      v8 = *(v4 + 4);
      goto LABEL_15;
    }

    v9 = 2;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  CA::Transaction::slot_mask |= v9;
  os_unfair_lock_unlock(&CA::Transaction::slot_lock);
  *(v4 + 4) = v8;
  result = *(v4 + 8);
LABEL_15:
  *(this + 28) = v8;
  *this = result;
  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    result = kdebug_trace();
  }

  if (CA::Transaction::_debug_transactions == 1)
  {
    v10 = malloc_type_malloc(0x1000uLL, 0x80040B8603338uLL);
    *(v4 + 240) = v10;
    result = backtrace(v10, 512);
    *(v4 + 206) = result;
  }

  if (CA::Transaction::_assert_transactions == 1)
  {
    if (a3)
    {
      result = pthread_main_np();
      if (!result && (*(this + 132) & 8) == 0)
      {
        CA::CA_ABORT_ON_NON_MAIN_THREAD_TRANSACTION_PUSH(result);
      }
    }
  }

  return result;
}

int8x16_t CA::Mat4Impl::mat4_unapply_inverse_to_rect(float64x2_t *this, int8x16_t *a2, double *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *a2[1].i64;
  result.i64[0] = a2[1].i64[1];
  if (v4 <= *result.i64)
  {
    v5 = *&a2[1].i64[1];
  }

  else
  {
    v5 = *a2[1].i64;
  }

  if (v5 < 1.79769313e308)
  {
    v8 = 0;
    v9 = *&a2->i64[1];
    *&v18.f64[0] = a2->i64[0];
    v18.f64[1] = v9;
    v19.f64[0] = v4 + v18.f64[0];
    v19.f64[1] = v9;
    v20.f64[0] = v4 + v18.f64[0];
    v20.f64[1] = *result.i64 + v9;
    v21.i64[0] = *&v18.f64[0];
    *&v21.i64[1] = *result.i64 + v9;
    do
    {
      CA::Mat4Impl::mat4_unapply_inverse_to_point2(this, &v18.f64[v8], a3);
      v8 += 2;
    }

    while (v8 != 8);
    v10 = vbslq_s8(vcgtq_f64(v19, v18), v18, v19);
    v11 = vbslq_s8(vcgtq_f64(v21, v20), v20, v21);
    v12 = vbslq_s8(vcgtq_f64(v11, v10), v10, v11);
    v13 = vbslq_s8(vcgtq_f64(v18, v19), v18, v19);
    v14 = vbslq_s8(vcgtq_f64(v20, v21), v20, v21);
    v15 = vcgtq_f64(v13, v14);
    v16 = vsubq_f64(vbslq_s8(v15, v13, v14), v12);
    *&v14.f64[0] = COERCE_UNSIGNED_INT64(vaddvq_f64(v16)) & 0x7FFFFFFFFFFFFFFFLL;
    v15.i64[0] = 0x7FF0000000000000;
    v17 = vdupq_lane_s64(vcgtq_s64(v15, v14).i64[0], 0);
    result = vbslq_s8(v17, v16, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL));
    *a2 = vbslq_s8(v17, v12, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL));
    a2[1] = result;
  }

  return result;
}

uint64_t CA::Transaction::get_value(uint64_t result, int a2, const CGAffineTransform *a3, CA::Mat4Impl *this)
{
  if (result)
  {
    v7 = result;
    while (1)
    {
      v8 = v7[2];
      if (v8)
      {
        if (CA::AttrList::get(v8, a2, a3, this))
        {
          break;
        }
      }

      v7 = *v7;
      if (!v7)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t CAAtomIndexInArray(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a1 - 1;
  if ((a1 - 1) < 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = a1 - 1;
    do
    {
      result = v4 + (v5 >> 1);
      if (a3 - *(a2 + 2 * result) <= 0)
      {
        v3 = v4 + (v5 >> 1);
        if (((a3 - *(a2 + 2 * result)) & 0x80000000) == 0)
        {
          return result;
        }
      }

      else
      {
        v4 += v5 >> 1;
      }

      v5 = v3 - v4;
    }

    while (v3 - v4 > 8);
    if (v3 < v4)
    {
      return -1;
    }
  }

  result = v4;
  while (*(a2 + 2 * result) != a3)
  {
    if (++result > v3)
    {
      return -1;
    }
  }

  return result;
}

unint64_t CA::FrameRateArbitrator::arbitrate(unsigned int **a1, uint64_t a2)
{
  v86 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v4 = v3 - v2;
  if (v4 == 12)
  {
    v6 = *v2;
    v5 = v2[1];
    return v6 | (v5 << 32);
  }

  v8 = v4 >> 2;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v9 = &CADeviceNeedsDisplayStateControlDependencyWorkaround::b;
  if (initialized[0] != -1)
  {
    v48 = a2;
    dispatch_once_f(initialized, 0, init_debug);
    v9 = &CADeviceNeedsDisplayStateControlDependencyWorkaround::b;
    a2 = v48;
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * v8;
  v11 = &CADisplayTimerGetTypeID::type;
  if (byte_1ED4E9846 == 1)
  {
    v71 = 0;
    v72 = 0;
    v73 = 0;
  }

  v12 = 0;
  v6 = 0;
  if (v10 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * v8;
  }

  v5 = 0xFFFFFFFFLL;
  v14 = -1;
  v15 = v13;
  v16 = initialized;
  do
  {
    v17 = &(*a1)[v12];
    v18 = *v17;
    v19 = v17[1];
    v20 = *v17;
    if (*v17 >> 34 != 0 && *v17 < 4)
    {
      v21 = 2;
    }

    else
    {
      v21 = *v17;
    }

    v22 = v21 == 4 && v20 >> 33 > 2;
    v23 = HIDWORD(v20);
    if (v22)
    {
      v24 = 3;
    }

    else
    {
      v24 = v21;
    }

    if (*v17 >> 34 != 0 && v17[2] == 2)
    {
      v25 = 3;
    }

    else
    {
      v25 = v23;
    }

    if (v14 != -1)
    {
      v65 = a2;
      v60 = v10;
      v61 = *v17;
      dispatch_once_f(v16, 0, init_debug);
      v18 = v61;
      v16 = initialized;
      v11 = &CADisplayTimerGetTypeID::type;
      v9 = &CADeviceNeedsDisplayStateControlDependencyWorkaround::b;
      v10 = v60;
      a2 = v65;
    }

    if (*(v11 + 2118) == 1)
    {
      v58 = v17[1];
      v59 = v17[2];
      v57 = *v17;
      v66 = a2;
      v27 = v10;
      v62 = v18;
      X::Stream::printf(&v71, "  candidate: %u %u %u\n", v57, v58, v59);
      v18 = v62;
      v16 = initialized;
      v11 = &CADisplayTimerGetTypeID::type;
      v9 = &CADeviceNeedsDisplayStateControlDependencyWorkaround::b;
      v10 = v27;
      a2 = v66;
    }

    if (v6 > v24)
    {
      v24 = v6;
    }

    if (v5 >= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v5;
    }

    if (v24 > v26)
    {
      break;
    }

    if (*(v9 + 42) != -1)
    {
      v67 = a2;
      v28 = v10;
      v29 = v9;
      v30 = v16;
      v63 = v18;
      dispatch_once_f(v16, 0, init_debug);
      v18 = v63;
      v16 = v30;
      v11 = &CADisplayTimerGetTypeID::type;
      v9 = v29;
      v10 = v28;
      a2 = v67;
    }

    if (*(v11 + 2118) == 1)
    {
      v68 = a2;
      v31 = v10;
      v32 = v9;
      v33 = v11;
      v64 = v18;
      X::Stream::printf(&v71, "    update result: %u %u\n", v24, v26);
      v18 = v64;
      v16 = initialized;
      v11 = v33;
      v9 = v32;
      v10 = v31;
      a2 = v68;
      v14 = *(v32 + 42);
    }

    else
    {
      v14 = -1;
    }

    v12 += 3;
    v6 = v24;
    v5 = v26;
    --v15;
  }

  while (v15);
  v35 = v18 == 4 && v19 == 5;
  if (v5 == -1 && !v6)
  {
LABEL_5:
    v5 = 0;
    return v6 | (v5 << 32);
  }

  v36 = 0;
  v37 = 2;
  do
  {
    v38 = (*a1)[v37];
    if (v38 >= v6 && v38 <= v5 && v36 - 1 >= v38)
    {
      if (*(v9 + 42) != -1)
      {
        v69 = a2;
        v41 = v10;
        v42 = v9;
        dispatch_once_f(initialized, 0, init_debug);
        v11 = &CADisplayTimerGetTypeID::type;
        v9 = v42;
        v10 = v41;
        a2 = v69;
      }

      if (*(v11 + 2118) == 1)
      {
        v70 = a2;
        v43 = v10;
        v44 = v9;
        X::Stream::printf(&v71, "  explicit preference for %u\n", v38);
        v11 = &CADisplayTimerGetTypeID::type;
        v9 = v44;
        v10 = v43;
        a2 = v70;
      }

      v36 = v38;
    }

    v37 += 3;
    --v13;
  }

  while (v13);
  if (v35)
  {
    v45 = v6 == 3 && v36 == 0;
    v46 = v45;
    if (v36 == 3 || v46)
    {
      v36 = 2;
      v5 = 2;
      v6 = 2;
    }
  }

  if (*(v9 + 42) != -1)
  {
    v49 = v11;
    v50 = a2;
    v51 = v10;
    dispatch_once_f(initialized, 0, init_debug);
    v11 = v49;
    v10 = v51;
    a2 = v50;
  }

  if (*(v11 + 2118) == 1)
  {
    v52 = v10;
    v53 = a2;
    v54 = x_stream_finish(&v71);
    if (v54)
    {
      v55 = v54;
      if (x_log_get_frame_rate(void)::once != -1)
      {
        dispatch_once(&x_log_get_frame_rate(void)::once, &__block_literal_global_20391);
      }

      v56 = x_log_get_frame_rate(void)::log;
      if (os_log_type_enabled(x_log_get_frame_rate(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v75 = v53;
        v76 = 2048;
        v77 = v52;
        v78 = 1024;
        v79 = v6;
        v80 = 1024;
        v81 = v5;
        v82 = 1024;
        v83 = v36;
        v84 = 2080;
        v85 = v55;
        _os_log_impl(&dword_183AA6000, v56, OS_LOG_TYPE_DEFAULT, "%sarbitration among %ld clients yields min:%u max:%u preferred:%u\n%s", buf, 0x32u);
      }

      free(v55);
    }
  }

  return v6 | (v5 << 32);
}

uint64_t x_hash_table_lookup(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 24))
  {
    v6 = (*(a1 + 32))(a2);
    v7 = *(*(a1 + 16) + 8 * (*(a1 + 8) & v6));
    if ((*(a1 + 80) & 2) != 0)
    {
      if (v7)
      {
        while (1)
        {
          v9 = v7[2];
          if (v9 == a2)
          {
            break;
          }

          v7 = *v7;
          if (!v7)
          {
            goto LABEL_12;
          }
        }

        if (!a3)
        {
          return v7[3];
        }

        goto LABEL_18;
      }
    }

    else if (v7)
    {
      v8 = v6;
      while (v7[1] != v8 || (*(a1 + 40))(v7[2], a2))
      {
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      if (!a3)
      {
        return v7[3];
      }

      v9 = v7[2];
LABEL_18:
      *a3 = v9;
      return v7[3];
    }
  }

LABEL_12:
  result = 0;
  if (a3)
  {
    *a3 = 0;
  }

  return result;
}

unint64_t x_pointer_hash(uint64_t a1)
{
  v1 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
  v2 = 9 * ((v1 + ~(v1 << 13)) ^ ((v1 + ~(v1 << 13)) >> 8));
  v3 = (v2 ^ (v2 >> 15)) + ~((v2 ^ (v2 >> 15)) << 27);
  return v3 ^ (v3 >> 31);
}

void CA::Transaction::unlock(CA::Transaction *this)
{
  v1 = *(this + 29);
  if (v1)
  {
    v3 = v1 - 1;
    *(this + 29) = v3;
    if (!v3)
    {
      os_unfair_lock_unlock(&CA::Transaction::transaction_lock);
      v4 = *(this + 4);
      if (v4)
      {
        *(this + 4) = 0;

        CA::release_objects(v4);
      }
    }
  }
}

uint64_t CALayerRetain(uint64_t a1)
{
  v1 = a1;
  do
  {
    v2 = *(a1 + 8);
    if ((v2 - 1) > 0xFFFFFFFD)
    {
      return 0;
    }

    v3 = *(a1 + 8);
    atomic_compare_exchange_strong((a1 + 8), &v3, v2 + 1);
  }

  while (v3 != v2);
  if (*MEMORY[0x1E695E0C0] == 1)
  {
    NSRecordAllocationEvent();
  }

  return v1;
}

_DWORD *CA::Layer::thread_flags_(CA::Layer *this, CA::Transaction *a2)
{
  if (!**(a2 + 15))
  {
    CA::Transaction::ensure_implicit(a2, 1);
  }

  v4 = *(a2 + 29);
  *(a2 + 29) = v4 + 1;
  if (!v4)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v5 = *(a2 + 28);
  if ((v5 & 0x80000000) != 0)
  {
    v8 = x_hash_table_lookup(*a2, this, 0);
    if (v8)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  else
  {
    v6 = this + 4 * v5;
    if (*(v6 + 68))
    {
      v7 = v6 + 272;
LABEL_10:
      CA::Transaction::unlock(a2);
      return v7;
    }
  }

  v9 = *(this + 2);
  if (v9 && (v10 = *(a2 + 15), CALayerRetain(v9)))
  {
    do
    {
      v11 = *this;
      if (!*this)
      {
        break;
      }

      v12 = *this;
      atomic_compare_exchange_strong(this, &v12, v11 + 1);
    }

    while (v12 != v11);
    v13 = *(a2 + 28);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = *(v10 + 128);
      v15 = v14[2];
      v16 = v15 >= 8;
      v17 = v15 - 8;
      if (v16)
      {
        v7 = v14[1];
        v14[1] = (v7 + 2);
        v14[2] = v17;
      }

      else
      {
        v7 = x_heap_malloc_small_(v14, 8uLL);
      }

      hash_table_modify(*a2, this, v7, 0);
    }

    else
    {
      v7 = (this + 4 * v13 + 272);
    }

    v18 = *(v10 + 128);
    v19 = v18[2];
    v20 = v19 - 16;
    if (v19 >= 0x10)
    {
      v21 = v18[1];
      v18[1] = (v21 + 2);
      v18[2] = v20;
    }

    else
    {
      v21 = x_heap_malloc_small_(v18, 0x10uLL);
    }

    v22 = *(v10 + 208);
    *v21 = this;
    v21[1] = v22;
    *(v10 + 208) = v21;
    CA::Transaction::unlock(a2);
    if ((*(a2 + 132) & 4) != 0)
    {
      *v7 = *(this + 1) & 0xEFDFF480 | 1;
    }

    else
    {
      do
      {
        v23 = *(this + 1);
        if ((v23 & 0xEFFFFED7) == v23)
        {
          break;
        }

        v24 = *(this + 1);
        atomic_compare_exchange_strong(this + 1, &v24, v23 & 0xEFFFFED7);
      }

      while (v24 != v23);
      *v7 = v23 | 1;
      if ((v23 & 0x18) != 0)
      {
        v25 = (4 * ((v23 & 6) != 0)) | 0x10;
      }

      else
      {
        v25 = 4 * ((v23 & 6) != 0);
      }

      if ((v23 & 0x10000060) != 0)
      {
        v25 |= 0x40u;
      }

      if ((v23 & 0x300) != 0)
      {
        v26 = v25 | 0x200;
      }

      else
      {
        v26 = v25;
      }

      v27 = CA::Layer::retain_parent(this, a2);
      if (v27)
      {
        v28 = v27;
        while (1)
        {
          v29 = *(a2 + 28);
          if ((v29 & 0x80000000) != 0 || (v30 = v28 + 4 * v29, (v31 = *(v30 + 68)) == 0))
          {
            v32 = CA::Layer::thread_flags_(v28, a2);
            v31 = *v32;
          }

          else
          {
            v32 = (v30 + 272);
          }

          if ((v26 & ~v31) == 0)
          {
            break;
          }

          *v32 = v31 | v26;
          v38 = CA::Layer::retain_parent(v28, a2);
          while (1)
          {
            v33 = *v28;
            if (!*v28)
            {
              break;
            }

            v34 = *v28;
            atomic_compare_exchange_strong(v28, &v34, v33 - 1);
            if (v34 == v33)
            {
              if (v33 == 1)
              {
                CA::Layer::destroy(v28);
                CA::Layer::~Layer(v28);
                if (x_malloc_get_zone::once != -1)
                {
                  dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                }

                malloc_zone_free(malloc_zone, v28);
              }

              break;
            }
          }

          v28 = v38;
          if (!v38)
          {
            return v7;
          }
        }

        while (1)
        {
          v36 = *v28;
          if (!*v28)
          {
            break;
          }

          v35 = *v28;
          atomic_compare_exchange_strong(v28, &v35, v36 - 1);
          if (v35 == v36)
          {
            if (v36 == 1)
            {
              CA::Layer::destroy(v28);
              CA::Layer::~Layer(v28);
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              malloc_zone_free(malloc_zone, v28);
            }

            return v7;
          }
        }
      }
    }
  }

  else
  {
    CA::Transaction::unlock(a2);
    return (this + 4);
  }

  return v7;
}

CA::Transaction *CA::Transaction::ensure_compat(CA::Transaction *this)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v1)
  {
    v1 = CA::Transaction::create(this);
  }

  if ((*(v1 + 132) & 0x10) != 0 && !**(v1 + 15))
  {
    CA::Transaction::ensure_implicit(v1, 1);
  }

  return v1;
}

atomic_uint *CA::Layer::retain_parent(CA::Layer *this, CA::Transaction *a2)
{
  v4 = *(a2 + 29);
  *(a2 + 29) = v4 + 1;
  if (!v4)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v5 = *(this + 1);
  if (v5)
  {
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v7 = *v5;
      atomic_compare_exchange_strong(v5, &v7, v6 + 1);
      if (v7 == v6)
      {
        goto LABEL_8;
      }
    }

    v5 = 0;
  }

LABEL_8:
  CA::Transaction::unlock(a2);
  return v5;
}

uint64_t CALayerRelease(uint64_t result)
{
  v1 = result;
  do
  {
    v2 = *(result + 8);
    if (!v2)
    {
      if (*(result + 12))
      {
        return result;
      }

      result = dyld_program_sdk_at_least();
      if (!result)
      {
        return result;
      }

      goto LABEL_11;
    }

    v3 = *(result + 8);
    atomic_compare_exchange_strong((result + 8), &v3, v2 - 1);
  }

  while (v3 != v2);
  if (*MEMORY[0x1E695E0C0] == 1)
  {
    result = NSRecordAllocationEvent();
  }

  if (v2 == 1)
  {
    v4 = v1[2];
    if (v4)
    {
      *(v4 + 16) = 0;
      atomic_fetch_and((v4 + 4), 0xFFFF7FFF);
    }

LABEL_11:

    return [v1 _dealloc];
  }

  return result;
}

void CA::Layer::map_geometry(CA::Transaction *a1, CALayer *a2, void (*a3)(uint64_t, __int128 *), void (*a4)(void, void), uint64_t a5)
{
  v9 = a1;
  v54 = *MEMORY[0x1E69E9840];
  v10 = CA::Transaction::ensure_compat(a1);
  v11 = *(v10 + 29);
  *(v10 + 29) = v11 + 1;
  if (!v11)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v12 = [v9 ancestorSharedWithLayer:a2];
  v13 = v12;
  if (v12 != v9)
  {
    v35 = a4;
    v14 = 0;
    v15 = 0;
    v16 = 0.0;
    v46 = xmmword_183E20E00;
    v47 = 0u;
    v17 = 0.0;
    v48 = xmmword_183E20E60;
    v49 = 0u;
    v50 = 0u;
    v51 = xmmword_183E20E00;
    v36 = xmmword_183E20E60;
    v37 = xmmword_183E20E00;
    v52 = 0u;
    v53 = xmmword_183E20E60;
    while (v9 != v13)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      CA::Layer::get_frame_transform(v9[2], &v38, 0, 0, 0, v16, v17);
      v20 = *(v9[2] + 4);
      if (v15)
      {
        if (((v14 | ((v20 & 0x10000) >> 16)) & 1) != 0 || CA::Mat4Impl::mat4_is_affine(&v38, v18))
        {
          CA::Mat4Impl::mat4_concat(&v46, &v46, &v38, v19);
          v15 = 1;
        }

        else
        {
          a3(a5, &v46);
          a3(a5, &v38);
          v15 = 0;
          v46 = v37;
          v47 = 0u;
          v49 = 0u;
          v50 = 0u;
          v48 = v36;
          v51 = v37;
          v52 = 0u;
          v53 = v36;
        }
      }

      else
      {
        v46 = v38;
        v47 = v39;
        v48 = v40;
        v49 = v41;
        v50 = v42;
        v51 = v43;
        v15 = 1;
        v52 = v44;
        v53 = v45;
      }

      v14 = HIWORD(v20) & 1;
      v12 = CA::Layer::superlayer(v9[2], v10);
      v9 = v12;
    }

    if (v15)
    {
      v12 = (a3)(a5, &v46);
    }

    a4 = v35;
  }

  if (v13 != a2)
  {
    do
    {
      MEMORY[0x1EEE9AC00](v12);
      v21 = &v34 - 2;
      *(&v34 - 2) = a2;
      *(&v34 - 1) = v22;
      if (a2)
      {
        v12 = CA::Layer::superlayer(a2->_attr.layer, v10);
        a2 = v12;
      }
    }

    while (a2 != v13);
    v23 = 0;
    v24 = 0;
    v25 = 0.0;
    v46 = xmmword_183E20E00;
    v47 = 0u;
    v26 = 0.0;
    v48 = xmmword_183E20E60;
    v49 = 0u;
    v50 = 0u;
    v51 = xmmword_183E20E00;
    v36 = xmmword_183E20E60;
    v37 = xmmword_183E20E00;
    v52 = 0u;
    v53 = xmmword_183E20E60;
    while (1)
    {
      v27 = *v21;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      CA::Layer::get_frame_transform(*(v27 + 16), &v38, 0, 0, 0, v25, v26);
      v31 = *(*(v27 + 16) + 4);
      if ((v24 & 1) == 0)
      {
        break;
      }

      if (((v23 | ((v31 & 0x10000) >> 16)) & 1) != 0 || CA::Mat4Impl::mat4_is_affine(&v38, v28))
      {
        CA::Mat4Impl::mat4_concat(&v46, &v38, &v46, v30);
LABEL_26:
        v23 = HIWORD(v31) & 1;
        v21 = v21[1];
        v24 = 1;
        if (!v21)
        {
          CA::Mat4Impl::mat4_invert(&v46, &v46, v29);
          a4(a5, &v46);
          goto LABEL_29;
        }
      }

      else
      {
        CA::Mat4Impl::mat4_invert(&v46, &v46, v32);
        a4(a5, &v46);
        CA::Mat4Impl::mat4_invert(&v38, &v38, v33);
        a4(a5, &v38);
        v23 = 0;
        v24 = 0;
        v26 = *&v36;
        v25 = 0.0;
        v46 = v37;
        v47 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = v36;
        v51 = v37;
        v52 = 0u;
        v53 = v36;
        v21 = v21[1];
        if (!v21)
        {
          goto LABEL_29;
        }
      }
    }

    v46 = v38;
    v47 = v39;
    v48 = v40;
    v49 = v41;
    v25 = *&v43;
    v26 = *&v44;
    v50 = v42;
    v51 = v43;
    v52 = v44;
    v53 = v45;
    goto LABEL_26;
  }

LABEL_29:
  CA::Transaction::unlock(v10);
}

CALayer *CA::Layer::superlayer(CA::Layer *this, CA::Transaction *a2)
{
  v4 = *(this + 1) & 0x60000;
  v5 = *(a2 + 29);
  *(a2 + 29) = v5 + 1;
  if (!v5)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:
    v7 = *(this + 1);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = CA::Layer::model_layer(this, a2);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = *(v6 + 1);
  if (!v7)
  {
    goto LABEL_10;
  }

  if (v4 != 0x20000)
  {
LABEL_9:
    v8 = *(v7 + 2);
    goto LABEL_11;
  }

  v8 = CA::Layer::presentation_layer(v7, a2);
LABEL_11:
  CA::Transaction::unlock(a2);
  return v8;
}

float64x2_t CA::Layer::get_frame_transform(uint64_t a1, float64x2_t *a2, char a3, const double *a4, float64x2_t result, float64_t a6, double a7)
{
  v91 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 16);
  if (!v8)
  {
    result.f64[0] = 1.0;
    *a2 = xmmword_183E20E00;
    a2[1] = 0u;
    a2[2] = xmmword_183E20E60;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[5] = xmmword_183E20E00;
    a2[6] = 0u;
    a2[7] = xmmword_183E20E60;
    return result;
  }

  v11 = a1;
  v12 = *(a1 + 56);
  if ((v12 & 0x1000) != 0)
  {
    a1 = [*(a1 + 16) anchorPoint];
    v12 = *(v11 + 56);
    _Q0.f64[1] = a6;
  }

  else
  {
    __asm { FMOV            V0.2D, #0.5 }
  }

  v70 = _Q0;
  v19 = *(v11 + 112);
  v68 = v19;
  v18 = 0.0;
  v19.f64[0] = 0.0;
  if ((v12 & 0x4000) != 0)
  {
    a1 = [v8 anchorPointZ];
    v18 = 0.0;
    v12 = *(v11 + 56);
  }

  v73 = v19;
  if ((v12 & 0x8000) != 0)
  {
    a1 = [v8 zPosition];
    v18 = v20;
    v12 = *(v11 + 56);
  }

  v21 = vmulq_f64(v68, v70);
  if ((v12 & 0x20) == 0)
  {
    *a2 = xmmword_183E20E00;
    a2[1] = 0u;
    a2[2] = xmmword_183E20E60;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[5] = xmmword_183E20E00;
    a2[6] = 0u;
    a2[7] = xmmword_183E20E60;
    a2[6] = vsubq_f64(*(v11 + 80), v21);
    result.f64[1] = v73.f64[1];
    result.f64[0] = v18 - v73.f64[0];
    a2[7].f64[0] = v18 - v73.f64[0];
    if (a3)
    {
      goto LABEL_29;
    }

LABEL_14:
    v33 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v33)
    {
      v33 = CA::Transaction::create(a1);
    }

    v34 = CA::Layer::superlayer(v8[2], v33);
    if (v34)
    {
      v36 = v34;
      layer = v34->_attr.layer;
      v38 = *(layer + 14);
      if (a4 || (v38 & 0x40) != 0)
      {
        if ((v38 & 0x1000) != 0)
        {
          [(CALayer *)v34 anchorPoint];
          v38 = *(layer + 14);
          result.f64[1] = v39;
        }

        else
        {
          __asm { FMOV            V0.2D, #0.5 }
        }

        v74 = vmlaq_f64(*(layer + 6), result, *(layer + 7));
        result.f64[0] = 0.0;
        if ((v38 & 0x4000) != 0)
        {
          [(CALayer *)v36 anchorPointZ];
        }

        v72 = result.f64[0];
        v40 = a2[1];
        v41 = a2[3];
        v42 = a2[5];
        v43 = a2[7];
        v44 = vmlsq_laneq_f64(a2[2], v74, v41, 1);
        v45 = vmlsq_laneq_f64(a2[4], v74, v42, 1);
        v46 = vmlsq_laneq_f64(a2[6], v74, v43, 1);
        *a2 = vmlsq_laneq_f64(*a2, v74, v40, 1);
        a2[1] = vmlaq_laneq_f64(v40, COERCE_UNSIGNED_INT64(-result.f64[0]), v40, 1);
        a2[2] = v44;
        a2[3] = vmlaq_laneq_f64(v41, COERCE_UNSIGNED_INT64(-result.f64[0]), v41, 1);
        a2[4] = v45;
        a2[5] = vmlaq_laneq_f64(v42, COERCE_UNSIGNED_INT64(-result.f64[0]), v42, 1);
        a2[6] = v46;
        a2[7] = vmlaq_laneq_f64(v43, COERCE_UNSIGNED_INT64(-result.f64[0]), v43, 1);
        if ((*(layer + 56) & 0x40) != 0)
        {
          [(CALayer *)v36 sublayerTransform];
          v83 = v75;
          v84 = v76;
          v85 = v77;
          v86 = v78;
          v87 = v79;
          v88 = v80;
          v89 = v81;
          v90 = v82;
          CA::Mat4Impl::mat4_concat(a2, a2->f64, v83.f64, v47);
        }

        if (a4)
        {
          CA::Mat4Impl::mat4_concat(a2, a2->f64, a4, v35);
        }

        result.f64[0] = v72;
        v48 = a2[1];
        v49 = a2[3];
        v50 = a2[5];
        v51 = a2[7];
        v52 = vmlaq_laneq_f64(a2[2], v74, v49, 1);
        v53 = vmlaq_laneq_f64(a2[4], v74, v50, 1);
        v54 = vmlaq_laneq_f64(a2[6], v74, v51, 1);
        *a2 = vmlaq_laneq_f64(*a2, v74, v48, 1);
        a2[1] = vmlaq_laneq_f64(v48, *&v72, v48, 1);
        a2[2] = v52;
        a2[3] = vmlaq_laneq_f64(v49, *&v72, v49, 1);
        a2[4] = v53;
        a2[5] = vmlaq_laneq_f64(v50, *&v72, v50, 1);
        a2[6] = v54;
        a2[7] = vmlaq_laneq_f64(v51, *&v72, v51, 1);
      }
    }

    goto LABEL_29;
  }

  v69 = v21;
  v71 = v18;
  a1 = [v8 transform];
  v22 = v83;
  v23 = v84;
  v24 = v85;
  v25 = v86;
  *a2 = v83;
  a2[1] = v23;
  a2[2] = v24;
  a2[3] = v25;
  v26 = v87;
  v27 = v88;
  v28 = v89;
  v29 = v90;
  a2[4] = v87;
  a2[5] = v27;
  v30 = vmlsq_lane_f64(vmlsq_lane_f64(vmlsq_lane_f64(v28, v22, v69.f64[0], 0), v24, v69.f64[1], 0), v26, v73.f64[0], 0);
  v31 = vmlsq_lane_f64(vmlsq_lane_f64(vmlsq_lane_f64(v29, v23, v69.f64[0], 0), v25, v69.f64[1], 0), v27, v73.f64[0], 0);
  a2[6] = v30;
  a2[7] = v31;
  v32 = *(v11 + 80);
  result = vmlaq_laneq_f64(v22, v32, v23, 1);
  *a2 = result;
  a2[1] = vmlaq_laneq_f64(v23, *&v71, v23, 1);
  a2[2] = vmlaq_laneq_f64(v24, v32, v25, 1);
  a2[3] = vmlaq_laneq_f64(v25, *&v71, v25, 1);
  a2[4] = vmlaq_laneq_f64(v26, v32, v27, 1);
  a2[5] = vmlaq_laneq_f64(v27, *&v71, v27, 1);
  a2[6] = vmlaq_laneq_f64(v30, v32, v31, 1);
  a2[7] = vmlaq_laneq_f64(v31, *&v71, v31, 1);
  if ((a3 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_29:
  if ((*(v11 + 49) & 0x20) != 0)
  {
    v55 = *(v11 + 120);
    v56 = a2[2];
    v57 = a2[3];
    v58 = vmlaq_f64(vmlaq_n_f64(vmlaq_f64(a2[7], 0, a2[1]), v57, v55), 0, a2[5]);
    a2[6] = vmlaq_f64(vmlaq_n_f64(vmlaq_f64(a2[6], 0, *a2), v56, v55), 0, a2[4]);
    a2[7] = v58;
    result = vnegq_f64(v56);
    a2[2] = result;
    a2[3] = vnegq_f64(v57);
  }

  if (*(v11 + 52))
  {
    v64 = *(v11 + 112);
    v65 = a2[1];
    v66 = vnegq_f64(*a2);
    v67 = vmlaq_n_f64(a2[7], v65, v64);
    a2[6] = vmlaq_n_f64(a2[6], *a2, v64);
    a2[7] = v67;
    result = vnegq_f64(v65);
    *a2 = v66;
    a2[1] = result;
  }

  if ((*(v11 + 56) & 8) != 0)
  {
    v59 = *(v11 + 96);
    v60 = *(v11 + 104);
    v61 = vmlsq_lane_f64(vmlsq_lane_f64(a2[6], *a2, v59, 0), a2[2], v60, 0);
    v62 = vmlsq_lane_f64(vmlsq_lane_f64(a2[7], a2[1], v59, 0), a2[3], v60, 0);
    result = a2[4];
    v63 = vmlaq_f64(v62, 0, a2[5]);
    a2[6] = vmlaq_f64(v61, 0, result);
    a2[7] = v63;
  }

  return result;
}

uint64_t classDescription(objc_class *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 584);
  if (!v3 || *(v3 + 8) != a1)
  {
    pthread_mutex_lock(&class_table_lock);
    if (!class_table)
    {
      v4 = x_hash_table_new_(0, 0, 0, 0, 0, 0);
      class_table = v4;
      v5 = objc_opt_class();
      hash_table_modify(v4, v5, 0, 0);
      pthread_key_init_np();
      v6 = getenv("CA_LOG_CLASS_DESCRIPTIONS");
      if (v6)
      {
        log_class_descriptions = atoi(v6) != 0;
      }
    }

    v9[0] = 0;
    v7 = x_hash_table_lookup(class_table, a1, v9);
    if (!v9[0])
    {
      v7 = classDescription_locked(a1);
    }

    v3 = v7;
    *(StatusReg + 584) = v7;
    pthread_mutex_unlock(&class_table_lock);
  }

  return v3;
}

char *CA::Layer::class_state(CA::Layer *this, objc_class *a2)
{
  v35[1] = *MEMORY[0x1E69E9840];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v3 = classDescription(this);
    if (v3)
    {
      v4 = *(v3 + 128);
      if (v4)
      {
        return v4;
      }
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v5 = malloc_type_zone_malloc(malloc_zone, 0x70uLL, 0x165299FDuLL);
    v4 = v5;
    if (v5)
    {
      v6 = 0;
      *(v5 + 13) = 0;
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      *v5 = 0;
      *(v5 + 6) = 0;
      *(v5 + 2) = 0u;
      *(v5 + 3) = 0u;
      *(v5 + 4) = 0u;
      *(v5 + 5) = 0u;
      v7 = 0x10000;
      v8 = 32712;
      v5[96] = 0;
    }

    else
    {
      v7 = MEMORY[0x10] | 0x10000;
      v8 = MEMORY[4] & 0x3C000000 | 0x7FC8;
      v6 = MEMORY[8];
    }

    *(v5 + 1) = v8;
    *(v5 + 4) = v7;
    if (LINKED_DEFAULT_CONTINUOUS_CORNERS == 1)
    {
      v6 = v6 & 0xFFFFFFF9 | 2;
      *(v5 + 2) = v6;
    }

    *(v5 + 2) = v6 & 0xFFFFFF87;
    v9 = &BOOL_bits;
    v10 = 52;
    do
    {
      if (*(v9 + 24) == 1)
      {
        *&v5[4 * (*v9 >> 5) + 4] |= 1 << *v9;
      }

      v9 += 8;
      --v10;
    }

    while (v10);
    v11 = classDescription(this);
    if (v11 && (*(v11 + 138) & 1) != 0)
    {
      *(v4 + 4) |= 0x80000u;
    }

    v12 = classDescription(this);
    if (v12 && *(v12 + 137) == 1)
    {
      *(v4 + 4) |= 0x100000u;
    }

    v13 = *(StatusReg + 576);
    if (!v13)
    {
      v13 = CA::Transaction::create(v12);
    }

    *v4 |= CA::Layer::State::fetch_defaults(v4, v13, fetchDefault, this);
    v14 = objc_opt_class();
    if (v14 == this)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0;
      for (i = 0; i != 14; ++i)
      {
        v17 = &CA::Layer::changed_flags_for_class(objc_class *)::changed_flags + 16 * i;
        v18 = *(v17 + 1);
        if (*v18)
        {
          while (1)
          {
            v19 = sel_registerName(v18);
            if (v19)
            {
              v20 = [(CA::Layer *)v14 instanceMethodForSelector:v19];
              if ([(CA::Layer *)this instanceMethodForSelector:v19]!= v20)
              {
                break;
              }
            }

            v21 = &v18[strlen(v18)];
            v22 = *(v21 + 1);
            v18 = v21 + 1;
            if (!v22)
            {
              goto LABEL_31;
            }
          }

          v15 |= *v17;
        }

LABEL_31:
        ;
      }
    }

    v23 = [(CA::Layer *)this _hasRenderLayerSubclass];
    v24 = v15 | 0x10000;
    if (!v23)
    {
      v24 = v15;
    }

    v25 = *v4 | v24;
    *v4 = v25;
    if ((v25 & 0x8000) == 0)
    {
      v35[0] = 0;
      CAObject_defaultValueForAtom(this, 62, 1, v35);
      if (!v35[0])
      {
        CAObject_defaultValueForAtom(this, 74, 1, v35);
        if (!v35[0])
        {
          if ((*v4 & 0x2000) != 0)
          {
            goto LABEL_43;
          }

          goto LABEL_41;
        }
      }

      v25 = *v4 | 0x8000;
      *v4 = v25;
    }

    if ((v25 & 0x2000) != 0)
    {
      goto LABEL_43;
    }

LABEL_41:
    v35[0] = 0;
    CAObject_defaultValueForAtom(this, 638, 1, v35);
    if (v35[0])
    {
      *v4 |= 0x2000u;
    }

LABEL_43:
    v26 = classDescription(this);
    if (v26)
    {
      while (1)
      {
        v27 = v26[16];
        if (v27)
        {
          break;
        }

        atomic_compare_exchange_strong(v26 + 16, &v27, v4);
        if (!v27)
        {
          return v4;
        }
      }
    }

    v28 = *(StatusReg + 576);
    if (!v28)
    {
      v28 = CA::Transaction::create(v26);
    }

    v29 = *(v4 + 13);
    if (v29)
    {
      CA::Transaction::release_object(v28, v29);
    }

    v30 = *(v4 + 4);
    if (v30)
    {
      v31 = *(v28 + 29);
      *(v28 + 29) = v31 + 1;
      if (v31 || (os_unfair_lock_lock(&CA::Transaction::transaction_lock), (v30 = *(v4 + 4)) != 0))
      {
        CA::AttrList::free(v30, v29);
      }

      CA::Transaction::unlock(v28);
    }

    v32 = (v4 + 88);
    if (*(v4 + 11))
    {
      if (v4[96] == 1)
      {
        objc_storeWeakOrNil(v32, 0);
      }

      else
      {
        *v32 = 0;
      }
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v4);
  }
}

void sub_183B355A0(_Unwind_Exception *exception_object)
{
  v3 = (v1 + 88);
  if (*(v1 + 88))
  {
    if (*(v1 + 96) == 1)
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

uint64_t CA::Layer::State::State(uint64_t a1, uint64_t a2, CA::Transaction *a3)
{
  *a1 = *a2;
  *(a1 + 32) = 0;
  v6 = *(a2 + 40);
  *(a1 + 88) = 0;
  v7 = (a1 + 88);
  *(a1 + 40) = v6;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a2 + 88));
    if (WeakRetained)
    {
      v9 = WeakRetained;
      X::WeakDetails::Ptr::set(v7, WeakRetained, 1);
    }
  }

  else
  {
    X::WeakDetails::Ptr::set((a1 + 88), *(a2 + 88), 0);
  }

  v10 = *(a2 + 104);
  if (v10)
  {
    v10 = CFRetain(v10);
  }

  *(a1 + 104) = v10;
  v11 = *(a2 + 32);
  if (v11)
  {
    v12 = *(a3 + 29);
    *(a3 + 29) = v12 + 1;
    if (v12 || (os_unfair_lock_lock(&CA::Transaction::transaction_lock), (v11 = *(a2 + 32)) != 0))
    {
      v13 = *(v11 + 1) & 7;
      if (v13 == 7)
      {
        v11 = CA::AttrList::copy_(v11);
      }

      else
      {
        *(v11 + 1) = *(v11 + 1) & 0xFFFFFFFFFFFFFFF8 | (v13 + 1);
      }
    }

    *(a1 + 32) = v11;
    CA::Transaction::unlock(a3);
  }

  for (i = 4; i != 28; i += 4)
  {
    *(a1 + i) = *(a2 + i);
  }

  return a1;
}

void sub_183B3589C(_Unwind_Exception *exception_object)
{
  if (*v2)
  {
    if (*(v1 + 96) == 1)
    {
      objc_storeWeakOrNil(v2, 0);
    }

    else
    {
      *v2 = 0;
    }
  }

  _Unwind_Resume(exception_object);
}

id *X::WeakDetails::Ptr::set(id *location, id obj, int a3)
{
  v3 = location;
  if (obj)
  {
    if ((location[1] & 1) == 0)
    {
      *location = 0;
    }

    if (a3 && (location = objc_storeWeakOrNil(location, obj)) != 0)
    {
      *(v3 + 8) = 1;
    }

    else
    {
      if (*v3)
      {
        if (*(v3 + 8) == 1)
        {
          location = objc_storeWeakOrNil(v3, 0);
        }
      }

      *(v3 + 8) = 0;
      *v3 = obj;
    }
  }

  else if (*location)
  {
    if (*(location + 8) == 1)
    {

      return objc_storeWeakOrNil(location, 0);
    }

    else
    {
      *location = 0;
    }
  }

  return location;
}

void CA::Layer::set_position(double *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = CA::Transaction::ensure_compat(a1);
  v6 = *(v5 + 29);
  *(v5 + 29) = v6 + 1;
  if (!v6)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  if (a1[10] == *a2 && a1[11] == *(a2 + 8))
  {
    v7 = (a1 + 5);
  }

  else
  {
    v9[0].isa = 0;
    CA::Layer::begin_change(a1, v5, @"position", v9, v4);
    v7 = CA::Layer::writable_state(a1, v5);
    *(v7 + 40) = *a2;
    CA::Layer::end_change(a1, v5, 569, @"position", v9[0].isa);
  }

  if ((v7[19] & 0x10) == 0)
  {
    v8 = CA::Layer::writable_state(a1, v5);
    *(v8 + 4) |= 0x10000000u;
  }

  CA::Transaction::unlock(v5);
}

void CA::Layer::begin_change(CA::Layer *this, CA::Transaction *a2, void *a3, objc_object *a4, objc_object **a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!**(a2 + 15))
  {
    CA::Transaction::ensure_implicit(a2, 1);
  }

  if (xmmword_1ED4E97EC == 1)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v12 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [a3 UTF8String];
      isa = a4->isa;
      *buf = 134218754;
      v16 = a2;
      v17 = 2048;
      v18 = this;
      v19 = 2080;
      v20 = v13;
      v21 = 2048;
      v22 = isa;
      _os_log_impl(&dword_183AA6000, v12, OS_LOG_TYPE_DEFAULT, "Began transaction (%p) change on layer %p for %s, %p", buf, 0x2Au);
    }
  }

  if ((*(this + 1) & 0x8000) != 0)
  {
    [MEMORY[0x1E695DF30] raise:@"CALayerReadOnly" format:{@"attempting to modify read-only layer %@", *(this + 2)}];
  }

  if ((*(this + 1) & 0x60000) != 0)
  {
    a4->isa = 0;
  }

  else
  {
    v9 = *(this + 2);
    v10 = a2 + 104;
    do
    {
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    while ((v10[28] & 1) == 0);
    if ((v10[24] & 1) == 0)
    {
LABEL_12:
      v11 = [v9 actionForKey:a3];
      goto LABEL_14;
    }

    v11 = 0;
LABEL_14:
    a4->isa = v11;
    [v9 willChangeValueForKey:a3];
  }
}

void CA::Layer::end_change(id *this, CA::Transaction *a2, int a3, objc_object *a4, objc_object *a5)
{
  CA::Layer::property_did_change(this, a2, a3);
  if ((*(this + 1) & 0x60000) != 0)
  {
    if (!a5)
    {
      return;
    }
  }

  else
  {
    [this[2] didChangeValueForKey:a4];
    if (!a5)
    {
      return;
    }
  }

  v8 = this[2];

  [(objc_object *)a5 runActionForKey:a4 object:v8 arguments:0];
}

char *CA::Layer::writable_state(CA::Layer *this, CA::Transaction *a2)
{
  v3 = *(this + 1);
  if ((v3 & 0x100000) != 0)
  {
    return this + 40;
  }

  if (*(this + 32))
  {
    CA::Transaction::release_object(a2, *(this + 32));
  }

  v4 = *(this + 18);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *(this + 32) = v4;
  v5 = *(this + 23);
  if (v5)
  {
    CA::AttrList::free(v5, a2);
  }

  v6 = *(this + 9);
  if (v6)
  {
    v7 = *(v6 + 1) & 7;
    if (v7 == 7)
    {
      v6 = CA::AttrList::copy_(v6);
    }

    else
    {
      *(v6 + 1) = *(v6 + 1) & 0xFFFFFFFFFFFFFFF8 | (v7 + 1);
    }
  }

  v8 = this + 40;
  *(this + 23) = v6;
  if (*(this + 56))
  {
    if (*(this + 136) == 1)
    {
      Weak = objc_loadWeak(this + 16);
      v10 = *(this + 136);
    }

    else
    {
      v10 = 0;
      Weak = *(this + 16);
    }

    X::WeakDetails::Ptr::set(this + 30, Weak, v10 & 1);
    *(this + 14) &= ~1u;
  }

  v11 = (this + 156);
  v12 = 6;
  do
  {
    *v11 = *(v11 - 28);
    ++v11;
    --v12;
  }

  while (v12);
  *(this + 38) = *(this + 10);
  v13 = *(this + 6);
  *(this + 12) = *(this + 5);
  *(this + 13) = v13;
  *(this + 14) = *(this + 7);
  *(this + 1) = v3 | 0x100000;
  return v8;
}

void CA::Layer::set_bounds(CA::Layer *this, const CA::Rect *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = CA::Transaction::ensure_compat(this);
  v6 = *(v5 + 29);
  *(v5 + 29) = v6 + 1;
  if (!v6)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  if (*(this + 12) == *a2 && *(this + 13) == *(a2 + 1) && *(this + 14) == *(a2 + 2) && *(this + 15) == *(a2 + 3))
  {
    v8 = this + 40;
  }

  else
  {
    v13[0].isa = 0;
    CA::Layer::begin_change(this, v5, @"bounds", v13, v4);
    v7 = CA::Layer::writable_state(this, v5);
    v8 = v7;
    v9 = *a2;
    *(v7 + 56) = *a2;
    *(v7 + 72) = *(a2 + 1);
    if (*(a2 + 1) == 0.0 && *&v9 == 0.0)
    {
      v11 = 0;
    }

    else
    {
      v11 = 8;
    }

    *(v7 + 4) = *(v7 + 4) & 0xFFFFFFF7 | v11;
    CA::Layer::end_change(this, v5, 82, @"bounds", v13[0].isa);
  }

  if ((v8[19] & 0x20) == 0)
  {
    v12 = CA::Layer::writable_state(this, v5);
    *(v12 + 4) |= 0x20000000u;
  }

  CA::Transaction::unlock(v5);
}

void CA::Layer::set_needs_update_(CA::Layer *this, int a2)
{
  if ((*(this + 1) & 0x60000) == 0)
  {
    v4 = CA::Transaction::ensure_compat(this);
    v5 = v4[29];
    v4[29] = v5 + 1;
    if (!v5)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    if (BYTE12(xmmword_1ED4E980C) == 1)
    {
      v20 = CA::Layer::signpost_name(this);
      CA::Transaction::ktrace_value_from_string(v4, 835322352, v20, a2 & 0x10000020);
      kdebug_trace();
      if (BYTE13(xmmword_1ED4E980C) == 1)
      {
        getppid();
      }
    }

    v6 = v4[28];
    if ((v6 & 0x80000000) != 0 || (v7 = this + 4 * v6, (v8 = *(v7 + 68)) == 0))
    {
      v9 = CA::Layer::thread_flags_(this, v4);
      v8 = *v9;
    }

    else
    {
      v9 = (v7 + 272);
    }

    if ((v8 & a2) == 0)
    {
      *v9 = v8 | a2;
      CA::Layer::invalidate_layout(this);
      v10 = CA::Layer::retain_parent(this, v4);
      if (v10)
      {
        v11 = v10;
        while (1)
        {
          v12 = v4[28];
          if ((v12 & 0x80000000) != 0 || (v13 = v11 + 4 * v12, (v14 = *(v13 + 68)) == 0))
          {
            v15 = CA::Layer::thread_flags_(v11, v4);
            v14 = *v15;
          }

          else
          {
            v15 = (v13 + 272);
          }

          if ((v14 & 0x40) != 0)
          {
            break;
          }

          *v15 = v14 | 0x40;
          CA::Layer::invalidate_layout(v11);
          v21 = CA::Layer::retain_parent(v11, v4);
          while (1)
          {
            v16 = *v11;
            if (!*v11)
            {
              break;
            }

            v17 = *v11;
            atomic_compare_exchange_strong(v11, &v17, v16 - 1);
            if (v17 == v16)
            {
              if (v16 == 1)
              {
                CA::Layer::destroy(v11);
                CA::Layer::~Layer(v11);
                if (x_malloc_get_zone::once != -1)
                {
                  dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                }

                malloc_zone_free(malloc_zone, v11);
              }

              break;
            }
          }

          v11 = v21;
          if (!v21)
          {
            goto LABEL_10;
          }
        }

        while (1)
        {
          v19 = *v11;
          if (!*v11)
          {
            break;
          }

          v18 = *v11;
          atomic_compare_exchange_strong(v11, &v18, v19 - 1);
          if (v18 == v19)
          {
            if (v19 == 1)
            {
              CA::Layer::destroy(v11);
              CA::Layer::~Layer(v11);
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              malloc_zone_free(malloc_zone, v11);
            }

            break;
          }
        }
      }
    }

LABEL_10:
    if (BYTE12(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
    }

    CA::Transaction::unlock(v4);
  }
}

void CA::Layer::property_did_change(id *this, CA::Transaction *a2, int a3)
{
  v86 = *MEMORY[0x1E69E9840];
  v70 = CA::Layer::writable_state(this, a2);
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  v78 = 0u;
  v79 = 0u;
  v77 = 0u;
  memset(&v76, 0, sizeof(v76));
  v74 = 0u;
  v75 = 0u;
  v73 = 0.0;
  v5 = 0x8000;
  v72 = 0.0;
  v6 = &stru_1EF20BE80;
  v7 = xmmword_1ED4E97EC;
  if (a3 > 278)
  {
    if (a3 <= 589)
    {
      if (a3 > 505)
      {
        if (a3 > 540)
        {
          if (a3 > 576)
          {
            if (a3 == 577)
            {
              goto LABEL_173;
            }

            if (a3 == 579)
            {
              v5 = 0x4000;
              goto LABEL_173;
            }

            if (a3 != 585)
            {
              goto LABEL_180;
            }

            goto LABEL_110;
          }

          if (a3 == 541)
          {
            goto LABEL_173;
          }

          if (a3 != 569)
          {
            if (a3 == 572)
            {
              goto LABEL_173;
            }

            goto LABEL_180;
          }
        }

        else
        {
          if (a3 <= 518)
          {
            switch(a3)
            {
              case 506:
LABEL_149:
                v5 = 16;
                break;
              case 515:
                v5 = 0x40000;
                break;
              case 518:
                v18 = [this[2] minificationFilter];
                if (v18 != @"linear")
                {
                  v19 = v18;
                  if (CAInternAtom(v18, 0) == 466)
                  {
                    CA::Layer::ensure_mipmaps(this);
                  }

                  if (((CAInternAtom(v19, 0) - 466) & 0xFFFFFEFF) == 0)
                  {
                    CA::Layer::prevent_subtextures(this);
                  }

                  v6 = &stru_1EF20BE80;
                }

                break;
              default:
                goto LABEL_180;
            }

            goto LABEL_173;
          }

          if (a3 == 519)
          {
            goto LABEL_173;
          }

          if (a3 == 527)
          {
            v23 = 0;
            v24 = 0;
            goto LABEL_199;
          }

          if (a3 != 539)
          {
            goto LABEL_180;
          }

          CA::Layer::getter(this, 0x21Bu, 0x11, &v72);
          v22 = v72;
          *(v70 + 4) = *(v70 + 4) & 0xFFFFFFEF | (16 * (v72 != 1.0));
          if (v7)
          {
            v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@" to %f", v22];
            goto LABEL_106;
          }
        }

LABEL_114:
        v23 = 0;
        v24 = 0;
        v5 = 8;
        goto LABEL_199;
      }

      if (a3 > 449)
      {
        if (a3 > 499)
        {
          if (a3 == 500)
          {
            goto LABEL_173;
          }

          if (a3 != 503)
          {
            if (a3 == 505)
            {
              goto LABEL_173;
            }

            goto LABEL_180;
          }
        }

        else if (a3 != 450)
        {
          if (a3 == 451)
          {
            goto LABEL_110;
          }

          if (a3 == 489)
          {
            goto LABEL_173;
          }

          goto LABEL_180;
        }

        v5 = 4;
        goto LABEL_173;
      }

      if (a3 > 301)
      {
        if ((a3 - 302) < 2)
        {
          goto LABEL_173;
        }

        if (a3 == 309)
        {
          v5 = 0x100000;
          goto LABEL_173;
        }

        if (a3 == 315)
        {
          goto LABEL_173;
        }

        goto LABEL_180;
      }

      if (a3 == 279)
      {
        goto LABEL_173;
      }

      if (a3 != 282)
      {
        if (a3 != 296)
        {
          goto LABEL_180;
        }

        goto LABEL_114;
      }
    }

    else
    {
      if (a3 <= 659)
      {
        v8 = a3 - 78;
        if ((a3 - 590) > 0x3D)
        {
LABEL_8:
          if (a3 != 656)
          {
            goto LABEL_180;
          }

LABEL_173:
          v40 = *(this + 1);
          if ((v40 & 0x10000) != 0)
          {
            if (x_log_get_api::once[0] != -1)
            {
              dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
            }

            v41 = x_log_get_api::log;
            if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_DEFAULT))
            {
              v42 = this[2];
              String = CAAtomGetString(a3);
              LODWORD(v85.a) = 138412546;
              *(&v85.a + 4) = v42;
              WORD2(v85.b) = 2112;
              *(&v85.b + 6) = String;
              _os_log_impl(&dword_183AA6000, v41, OS_LOG_TYPE_DEFAULT, "%@ - changing property %@ in transform-only layer, will have no effect", &v85, 0x16u);
            }
          }

          v24 = 0;
          v23 = 0;
          if (!v7)
          {
            goto LABEL_207;
          }

          goto LABEL_200;
        }

        if (((1 << v8) & 0x3E1000003C00000) == 0)
        {
          if (((1 << v8) & 0x380000400000000FLL) != 0)
          {
            goto LABEL_173;
          }

          if (((1 << v8) & 0xC000) == 0)
          {
            goto LABEL_8;
          }

LABEL_133:
          *(v70 + 4) |= 0x10000u;
          CAMediaTimingInvalidate(this[2]);
          v23 = 0;
          v24 = 0;
          v5 = 4096;
          goto LABEL_199;
        }

LABEL_110:
        v5 = 0x2000;
        goto LABEL_173;
      }

      if (a3 <= 708)
      {
        if (a3 > 691)
        {
          if (a3 > 693)
          {
            if (a3 == 694)
            {
              v23 = 0;
              v24 = 32;
              v5 = 2;
              goto LABEL_199;
            }

            if (a3 != 705)
            {
              goto LABEL_180;
            }

            goto LABEL_133;
          }

          if (a3 == 692)
          {
            *(v70 + 4) |= 0x20000u;
            CA::Layer::fetch_defaults(this);
            v23 = 0;
            v24 = 0;
            v5 = 0x1FFFFF;
            goto LABEL_199;
          }

          CA::Layer::getter(this, 0x2B5u, 0x16, &v77);
          v16 = v77;
          if (*&v77 == 1.0)
          {
            v44 = 1;
            while (v44 != 16)
            {
              v45 = v44;
              v46 = *(&v77 + v44);
              v47 = *(&CATransform3DIdentity.m11 + v44++);
              if (v46 != v47)
              {
                if ((v45 - 1) < 0xF)
                {
                  goto LABEL_35;
                }

                break;
              }
            }

            v17 = 0;
          }

          else
          {
LABEL_35:
            v17 = 64;
          }

          *(v70 + 4) = *(v70 + 4) & 0xFFFFFFBF | v17;
          if (v7)
          {
            v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" to [%f %f %f %f; %f %f %f %f; %f %f %f %f; %f %f %f %f]", v16, *(&v77 + 1), v78, v79, v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, *(&v83 + 1), v84, *(&v84 + 1)];
            v23 = 0;
            v24 = 0;
            v5 = 64;
            goto LABEL_199;
          }

          v23 = 0;
          v24 = 0;
          v5 = 64;
LABEL_198:
          v6 = &stru_1EF20BE80;
          goto LABEL_199;
        }

        if (a3 == 660)
        {
          goto LABEL_110;
        }

        if (a3 != 661)
        {
          if (a3 == 671)
          {
            goto LABEL_133;
          }

          goto LABEL_180;
        }

        goto LABEL_165;
      }

      if (a3 <= 730)
      {
        if ((a3 - 709) < 2)
        {
          goto LABEL_173;
        }

        if (a3 == 716)
        {
          CA::Layer::getter(this, 0x2CCu, 0x16, &v77);
          v28 = v77;
          if (*&v77 == 1.0)
          {
            v48 = 1;
            while (v48 != 16)
            {
              v49 = v48;
              v50 = *(&v77 + v48);
              v51 = *(&CATransform3DIdentity.m11 + v48++);
              if (v50 != v51)
              {
                if ((v49 - 1) < 0xF)
                {
                  goto LABEL_138;
                }

                break;
              }
            }

            v29 = 0;
          }

          else
          {
LABEL_138:
            v29 = 32;
          }

          v24 = 64;
          *(v70 + 4) = *(v70 + 4) & 0xFFFFFFDF | v29;
          if (v7)
          {
            v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" to [%f %f %f %f; %f %f %f %f; %f %f %f %f; %f %f %f %f]", v28, *(&v77 + 1), v78, v79, v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, *(&v83 + 1), v84, *(&v84 + 1)];
            v23 = 0;
            v5 = 32;
            goto LABEL_199;
          }

          v23 = 0;
          v5 = 32;
          goto LABEL_198;
        }

        if (a3 != 721)
        {
          goto LABEL_180;
        }

LABEL_126:
        [this[2] setContentsChanged];
        goto LABEL_173;
      }

      if (a3 != 731)
      {
        if (a3 == 751)
        {
          goto LABEL_173;
        }

        if (a3 != 764)
        {
          goto LABEL_180;
        }

        CA::Layer::getter(this, 0x2FCu, 0x12, &v73);
        v20 = v73;
        *(v70 + 4) = *(v70 + 4) & 0xFFFF7FFF | ((v73 != 0.0) << 15);
        if (v7)
        {
          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@" to %f", *&v20];
LABEL_106:
          v6 = v21;
          goto LABEL_114;
        }

        goto LABEL_114;
      }
    }

LABEL_165:
    v23 = 0;
    v24 = 0;
    goto LABEL_166;
  }

  if (a3 > 130)
  {
    if (a3 <= 202)
    {
      switch(a3)
      {
        case 131:
          goto LABEL_140;
        case 132:
        case 133:
        case 135:
        case 137:
        case 138:
        case 144:
        case 145:
        case 146:
        case 147:
        case 161:
        case 162:
        case 164:
        case 165:
        case 181:
        case 199:
          goto LABEL_173;
        case 134:
          CA::Layer::getter(this, 0x86u, 0x15, &v74);
          v9 = v74;
          v10 = v75;
          __asm { FMOV            V2.2D, #1.0 }

          *(v70 + 4) = *(v70 + 4) & 0xFFFFFF7F | ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v74), vceqq_f64(v75, _Q2))))) & 1) << 7);
          if (v7)
          {
            v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" to (%f, %f, %f, %f)", *&v9, *&v10];
          }

          v5 = 0x20000;
          goto LABEL_173;
        case 136:
          *(v70 + 4) |= 0x40000u;
LABEL_140:
          v5 = 1;
          goto LABEL_173;
        case 149:
          goto LABEL_149;
        case 150:
          CA::Layer::getter(this, 0x96u, 0x15, &v74);
          v35 = v74;
          v36 = v75;
          __asm { FMOV            V2.2D, #1.0 }

          *(v70 + 4) = *(v70 + 4) & 0xFFFFFEFF | ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v74), vceqq_f64(v75, _Q2))))) & 1) << 8);
          if (v7)
          {
            v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" to (%f, %f, %f, %f)", *&v35, *&v36];
          }

          v5 = 256;
          goto LABEL_173;
        case 151:
          if (xmmword_1ED4E97EC)
          {
            [this[2] contentsScale];
            v73 = *&v31;
            v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" to %f", v31];
          }

          goto LABEL_149;
        case 152:
          v38 = [this[2] contentsScaling];
          if (v38 != @"stretch" && (v38 == @"repeat" || [(__CFString *)v38 isEqualToString:@"repeat"]))
          {
            CA::Layer::prevent_subtextures(this);
          }

          goto LABEL_173;
        case 153:
          goto LABEL_126;
        case 154:
          CA::Layer::getter(this, 0x9Au, 0x17, &v76);
          v85 = v76;
          if (CGAffineTransformIsIdentity(&v85))
          {
            v30 = 0;
          }

          else
          {
            v30 = 1024;
          }

          *(v70 + 4) = *(v70 + 4) & 0xFFFFFBFF | v30;
          if (v7)
          {
            v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" to [%f %f %f %f %f %f]", *&v76.a, *&v76.c, *&v76.tx];
          }

          v5 = 128;
          goto LABEL_173;
        case 159:
          goto LABEL_154;
        case 160:
          CA::Layer::getter(this, 0xA0u, 0x15, &v74);
          v33 = v74;
          v32 = v75;
          __asm { FMOV            V2.2D, #0.5 }

          *(v70 + 4) = *(v70 + 4) & 0xFFFFF7FF | ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v74, _Q2), vceqzq_f64(v75))))) & 1) << 11);
          if (v7)
          {
            v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" to (%f, %f, %f, %f)", *&v33, *&v32];
          }

LABEL_154:
          v5 = 0x80000;
          break;
        case 163:
          *(v70 + 5) |= 4u;
          goto LABEL_173;
        case 182:
          v5 = 0;
          *(v70 + 4) |= 1u;
          goto LABEL_181;
        default:
          goto LABEL_180;
      }

      goto LABEL_173;
    }

    if (a3 <= 249)
    {
      if (a3 > 210)
      {
        if (a3 == 211)
        {
          goto LABEL_133;
        }

        if (a3 == 214)
        {
          goto LABEL_173;
        }
      }

      else if (a3 == 203 || a3 == 206)
      {
        goto LABEL_173;
      }

      goto LABEL_180;
    }

    if (a3 <= 258)
    {
      if (a3 != 250)
      {
        if (a3 != 256)
        {
          goto LABEL_180;
        }

        v5 = 512;
        goto LABEL_173;
      }

      goto LABEL_133;
    }

    if (a3 != 259)
    {
      if (a3 != 276)
      {
        goto LABEL_180;
      }

      v5 = 0x400000;
      goto LABEL_173;
    }

    goto LABEL_165;
  }

  if (a3 <= 33)
  {
    if (a3 <= 15)
    {
      if (a3 <= 12)
      {
        if (a3 == 9)
        {
          goto LABEL_173;
        }

        if (a3 != 12)
        {
          goto LABEL_180;
        }
      }

      else
      {
        if (a3 == 13)
        {
          goto LABEL_110;
        }

        if (a3 == 14)
        {
          goto LABEL_173;
        }
      }

      goto LABEL_126;
    }

    if (a3 <= 22)
    {
      if ((a3 - 19) < 3 || a3 == 16)
      {
        goto LABEL_173;
      }

      goto LABEL_180;
    }

    if (a3 == 23)
    {
      goto LABEL_173;
    }

    if (a3 != 33)
    {
      goto LABEL_180;
    }

    if (!xmmword_1ED4E97EC)
    {
      goto LABEL_165;
    }

    [this[2] anchorPoint];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@" to (%f, %f)", v25, v26];
LABEL_164:
    v6 = v27;
    goto LABEL_165;
  }

  if (a3 <= 73)
  {
    if (a3 > 61)
    {
      if ((a3 - 62) < 2)
      {
        goto LABEL_173;
      }

      if (a3 == 64)
      {
        v5 = 1024;
        goto LABEL_173;
      }

      if (a3 == 65)
      {
        goto LABEL_133;
      }

      goto LABEL_180;
    }

    if (a3 != 34)
    {
      if (a3 != 56)
      {
        goto LABEL_180;
      }

      goto LABEL_133;
    }

    CA::Layer::getter(this, 0x22u, 0x12, &v73);
    v39 = v73;
    *(v70 + 4) = *(v70 + 4) & 0xFFFFBFFF | ((v73 != 0.0) << 14);
    if (!v7)
    {
      goto LABEL_165;
    }

    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@" to %f", *&v39];
    goto LABEL_164;
  }

  if (a3 > 76)
  {
    if (a3 == 77)
    {
      goto LABEL_173;
    }

    if (a3 != 82)
    {
      if (a3 != 124)
      {
        goto LABEL_180;
      }

      v5 = 2048;
      goto LABEL_173;
    }

    v23 = 0;
    v24 = 96;
LABEL_166:
    v5 = 16;
    goto LABEL_199;
  }

  if ((a3 - 74) < 2)
  {
    goto LABEL_173;
  }

  if (a3 == 76)
  {
    goto LABEL_110;
  }

LABEL_180:
  v5 = 0;
LABEL_181:
  v24 = 0;
  v23 = 1;
LABEL_199:
  v40 = *(this + 1);
  if (v7)
  {
LABEL_200:
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v52 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_DEFAULT))
    {
      if (v23)
      {
        v53 = "NOT";
      }

      else
      {
        v53 = [(__CFString *)CAAtomGetString(a3) UTF8String];
      }

      v54 = COERCE_DOUBLE([(__CFString *)v6 UTF8String]);
      LODWORD(v85.a) = 134218498;
      *(&v85.a + 4) = a2;
      WORD2(v85.b) = 2080;
      *(&v85.b + 6) = v53;
      HIWORD(v85.c) = 2080;
      v85.d = v54;
      _os_log_impl(&dword_183AA6000, v52, OS_LOG_TYPE_DEFAULT, "Transaction (%p) property %s changed %s", &v85, 0x20u);
    }
  }

LABEL_207:
  if ((v40 & 0x60000) != 0)
  {
    return;
  }

  if (v23)
  {
    v55 = *(a2 + 28);
    if ((v55 & 0x80000000) != 0 || !*(this + v55 + 68))
    {
      CA::Layer::thread_flags_(this, a2);
    }
  }

  else
  {
    if (v5)
    {
      v56 = 1032;
    }

    else
    {
      v56 = 8;
    }

    *(this + 10) |= v5 & 0x7FFFFE;
    CA::Layer::mark(this, a2, v56, 16);
  }

  if ((v5 & 2) != 0)
  {
    v57 = *(*(a2 + 15) + 216);
    if (v57)
    {
      v58 = x_hash_table_lookup(v57, this, 0);
      if (v58)
      {
        v59 = *(v58 + 16);
        v60 = *(v59 + 24);
        if (v60)
        {
          CA::Transaction::release_object(a2, v60);
          *(v59 + 24) = 0;
        }
      }
    }
  }

  if ((v24 & 0x40) != 0)
  {
    v61 = CA::Layer::retain_parent(this, a2);
    *&v85.a = v61;
    if (v61)
    {
      v62 = v61;
      if (!CA::Layer::layout_is_active(v61, a2, 1))
      {
        v63 = *(v62 + 2);
        if ([v63 needsLayoutOnGeometryChange])
        {
          [v63 setNeedsLayout];
        }
      }

      while (1)
      {
        v64 = *v62;
        if (!*v62)
        {
          break;
        }

        v65 = *v62;
        atomic_compare_exchange_strong(v62, &v65, v64 - 1);
        if (v65 == v64)
        {
          if (v64 == 1)
          {
            CA::Layer::destroy(v62);
            CA::Layer::~Layer(v62);
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            malloc_zone_free(malloc_zone, v62);
          }

          break;
        }
      }
    }
  }

  if (v70[18] & 0x10) != 0 && (v66 = objc_opt_class(), (CAObject_needsLayoutForKey(v66, a3)) || (v24 & 0x20) != 0 && [this[2] needsLayoutOnGeometryChange])
  {
    if (!CA::Layer::layout_is_active(this, a2, 1))
    {
      [this[2] setNeedsLayout];
    }
  }

  if ((v70[18] & 8) != 0)
  {
    v67 = objc_opt_class();
    if (CAObject_needsDisplayForKey(v67, a3))
    {
      goto LABEL_248;
    }
  }

  if (a3 == 82)
  {
    if (![this[2] needsDisplayOnBoundsChange])
    {
      return;
    }

    goto LABEL_248;
  }

  if (a3 == 139)
  {
    v68 = *(v70 + 13);
    if (v68)
    {
      v69 = CFGetTypeID(v68);
      if (CABackingStoreGetTypeID::once[0] != -1)
      {
        dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
      }

      if (v69 == CABackingStoreGetTypeID::type)
      {
LABEL_248:
        [this[2] setNeedsDisplay];
      }
    }
  }
}

void CA::Layer::mark(CA::Layer *this, CA::Transaction *a2, int a3, int a4)
{
  v8 = *(a2 + 28);
  if ((v8 & 0x80000000) != 0 || (v9 = this + 4 * v8, (v10 = *(v9 + 68)) == 0))
  {
    v11 = CA::Layer::thread_flags_(this, a2);
    v10 = *v11;
  }

  else
  {
    v11 = (v9 + 272);
  }

  if ((a3 & ~v10) != 0)
  {
    *v11 = v10 | a3;
    while (1)
    {
      v12 = *this;
      if (!*this)
      {
        break;
      }

      v13 = *this;
      atomic_compare_exchange_strong(this, &v13, v12 + 1);
      if (v13 == v12)
      {
        v14 = this;
        goto LABEL_11;
      }
    }

    v14 = 0;
LABEL_11:
    v39 = v14;
    v15 = CA::Layer::retain_parent(this, a2);
    v38 = v15;
    if (v15)
    {
      _X23 = v15;
      while (1)
      {
        __asm { PRFM            #0, [X23,#0x110] }

        v22 = *(a2 + 28);
        if ((v22 & 0x80000000) != 0 || (v23 = (_X23 + 4 * v22 + 272), (v24 = *v23) == 0))
        {
          v23 = CA::Layer::thread_flags_(_X23, a2);
          v24 = *v23;
        }

        if ((a4 & ~v24) == 0)
        {
          break;
        }

        *v23 = v24 | a4;
        if (v39 == _X23)
        {
          v38 = CA::Layer::retain_parent(_X23, a2);
          goto LABEL_34;
        }

        if (v39)
        {
          while (1)
          {
            v25 = *v39;
            if (!*v39)
            {
              break;
            }

            v26 = *v39;
            atomic_compare_exchange_strong(v39, &v26, v25 - 1);
            if (v26 == v25)
            {
              if (v25 == 1)
              {
                CA::Layer::destroy(v39);
                CA::Layer::~Layer(v39);
                if (x_malloc_get_zone::once != -1)
                {
                  dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                }

                malloc_zone_free(malloc_zone, v39);
              }

              break;
            }
          }

          _X23 = v38;
          if (v38)
          {
            goto LABEL_26;
          }

          v29 = 0;
        }

        else
        {
LABEL_26:
          while (1)
          {
            v27 = *_X23;
            if (!*_X23)
            {
              break;
            }

            v28 = *_X23;
            atomic_compare_exchange_strong(_X23, &v28, v27 + 1);
            if (v28 == v27)
            {
              goto LABEL_31;
            }
          }

          _X23 = 0;
LABEL_31:
          v29 = _X23;
          _X23 = v38;
        }

        v39 = v29;
        v30 = CA::Layer::retain_parent(_X23, a2);
        v38 = v30;
        if (_X23)
        {
LABEL_34:
          while (1)
          {
            v31 = *_X23;
            if (!*_X23)
            {
              break;
            }

            v32 = *_X23;
            atomic_compare_exchange_strong(_X23, &v32, v31 - 1);
            if (v32 == v31)
            {
              if (v31 == 1)
              {
                CA::Layer::destroy(_X23);
                CA::Layer::~Layer(_X23);
                if (x_malloc_get_zone::once != -1)
                {
                  dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                }

                malloc_zone_free(malloc_zone, _X23);
              }

              break;
            }
          }

          _X23 = v38;
          if (!v38)
          {
            goto LABEL_47;
          }
        }

        else
        {
          _X23 = v30;
          if (!v30)
          {
            goto LABEL_47;
          }
        }
      }

      while (1)
      {
        v34 = *_X23;
        if (!*_X23)
        {
          break;
        }

        v33 = *_X23;
        atomic_compare_exchange_strong(_X23, &v33, v34 - 1);
        if (v33 == v34)
        {
          if (v34 == 1)
          {
            CA::Layer::destroy(_X23);
            CA::Layer::~Layer(_X23);
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            malloc_zone_free(malloc_zone, _X23);
          }

          break;
        }
      }
    }

    else
    {
LABEL_47:
      if ((a3 & 8) != 0)
      {
        v35 = v39;
        if (!v39[67])
        {
          goto LABEL_55;
        }

        CA::Transaction::add_root(a2, v39);
      }
    }

    v35 = v39;
    if (v39)
    {
LABEL_55:
      while (1)
      {
        v36 = *v35;
        if (!*v35)
        {
          break;
        }

        v37 = *v35;
        atomic_compare_exchange_strong(v35, &v37, v36 - 1);
        if (v37 == v36)
        {
          if (v36 == 1)
          {
            CA::Layer::destroy(v35);
            CA::Layer::~Layer(v35);
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            malloc_zone_free(malloc_zone, v35);
          }

          return;
        }
      }
    }
  }
}

void sub_183B37988(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, atomic_uint *);
  X::Ref<CA::Layer>::~Ref(va);
  X::Ref<CA::Layer>::~Ref(va1);
  _Unwind_Resume(a1);
}

BOOL CA::Layer::layout_is_active(CA::Layer *this, CA::Transaction *a2, int a3)
{
  v6 = *(a2 + 28);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = this + 4 * v6;
    if (*(v7 + 68))
    {
      v8 = v7 + 272;
      if (!a3)
      {
        goto LABEL_7;
      }

LABEL_6:
      if ((*v8 & 0x20) != 0)
      {
        return 1;
      }

      goto LABEL_7;
    }
  }

  v8 = CA::Layer::thread_flags_(this, a2);
  if (a3)
  {
    goto LABEL_6;
  }

LABEL_7:
  v9 = *(a2 + 9);
  if (!v9)
  {
    return 0;
  }

  if ((*(v9 + 32) & 1) == 0)
  {
    while (1)
    {
      v11 = *(v9 + 16);
      if (v11)
      {
        break;
      }

LABEL_16:
      result = 0;
      v9 = *(v9 + 8);
      if (!v9)
      {
        return result;
      }
    }

    v12 = *(v9 + 24);
    while (*v11 != this)
    {
      if (*v11 != v12)
      {
        v11 = v11[1];
        if (v11)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    while (1)
    {
      v13 = *v12;
      if (!*v12)
      {
        return 0;
      }

      v14 = *v12;
      atomic_compare_exchange_strong(v12, &v14, v13 + 1);
      if (v14 == v13)
      {
        while (v12 != this)
        {
          v19 = CA::Layer::retain_parent(v12, a2);
          while (1)
          {
            v15 = *v12;
            if (!*v12)
            {
              break;
            }

            v16 = *v12;
            atomic_compare_exchange_strong(v12, &v16, v15 - 1);
            if (v16 == v15)
            {
              if (v15 == 1)
              {
                CA::Layer::destroy(v12);
                CA::Layer::~Layer(v12);
                if (x_malloc_get_zone::once != -1)
                {
                  dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                }

                malloc_zone_free(malloc_zone, v12);
              }

              break;
            }
          }

          v12 = v19;
          if (!v19)
          {
            return 0;
          }
        }

        while (1)
        {
          v18 = *v12;
          if (!*v12)
          {
            break;
          }

          v17 = *v12;
          atomic_compare_exchange_strong(v12, &v17, v18 - 1);
          if (v17 == v18)
          {
            if (v18 == 1)
            {
              CA::Layer::destroy(v12);
              CA::Layer::~Layer(v12);
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              malloc_zone_free(malloc_zone, v12);
            }

            return 1;
          }
        }

        return 1;
      }
    }
  }

  return (*v8 & 0x80) != 0;
}

uint64_t CA::Layer::invalidate_layout(uint64_t this)
{
  v1 = *(this + 72);
  if (v1)
  {
    while (1)
    {
      v1 = *v1;
      if (!v1)
      {
        break;
      }

      if ((v1[1] & 0xFFFFFF) == 0x28F)
      {
        return [*(this + 16) setSizeRequisition:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
      }
    }
  }

  return this;
}

void CA::Layer::insert_sublayer(CA::Layer *this, CA::Transaction *a2, CALayer *a3, unint64_t a4)
{
  __src[1] = *MEMORY[0x1E69E9840];
  v7 = *(this + 3);
  if (v7)
  {
    var0 = v7->_ivars.var0;
  }

  else
  {
    var0 = 0;
  }

  if (var0 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = var0;
  }

  v10 = CA::Layer::retain_parent(a3->_attr.layer, a2);
  v13 = v10;
  v30 = v10;
  if (v10 == this)
  {
    if (*(this + 4) == a3)
    {
      CA::Layer::remove_sublayer(this, a2, a3, v11, v12);
      while (1)
      {
        v18 = *v13;
        if (!*v13)
        {
          goto LABEL_26;
        }

        v19 = *v13;
        atomic_compare_exchange_strong(v13, &v19, v18 - 1);
        if (v19 == v18)
        {
          if (v18 == 1)
          {
            CA::Layer::destroy(v13);
            CA::Layer::~Layer(v13);
            if (x_malloc_get_zone::once != -1)
            {
LABEL_56:
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

LABEL_25:
            malloc_zone_free(malloc_zone, v13);
          }

          goto LABEL_26;
        }
      }
    }

    p_ivars = &v7->_ivars;
    v17 = v7->_ivars.var0;
    if (v17 == 1)
    {
      if (!v7->_ivars.capacity)
      {
LABEL_50:
        v20 = 0;
        while (*(&p_ivars->layers + v20) != a3)
        {
          if (v17 == ++v20)
          {
            goto LABEL_53;
          }
        }

LABEL_54:
        if (v20 == v9)
        {
          goto LABEL_38;
        }

        goto LABEL_28;
      }
    }

    else if (!v17)
    {
LABEL_53:
      v20 = -1;
      goto LABEL_54;
    }

    p_ivars = p_ivars->layers;
    goto LABEL_50;
  }

  if (v10)
  {
    CA::Layer::remove_sublayer(v10, a2, a3, v11, v12);
    while (1)
    {
      v14 = *v13;
      if (!*v13)
      {
        break;
      }

      v15 = *v13;
      atomic_compare_exchange_strong(v13, &v15, v14 - 1);
      if (v15 == v14)
      {
        if (v14 != 1)
        {
          break;
        }

        CA::Layer::destroy(v13);
        CA::Layer::~Layer(v13);
        if (x_malloc_get_zone::once != -1)
        {
          goto LABEL_56;
        }

        goto LABEL_25;
      }
    }

LABEL_26:
    v13 = 0;
    v30 = 0;
    goto LABEL_27;
  }

  CFRetain(a3);
  CA::Layer::remove_from_context(a3->_attr.layer);
  v13 = 0;
LABEL_27:
  v20 = -1;
LABEL_28:
  v29 = 0;
  CA::Layer::begin_change(this, a2, @"sublayers", &v29, v12);
  if (v20 != -1)
  {
    CALayerArrayRemoveValue(v7, v20);
    v9 = (__PAIR128__(v9, v20) - v9) >> 64;
  }

  if (!v7)
  {
    v7 = objc_alloc_init(CALayerArray);
    *(this + 3) = v7;
  }

  __src[0] = a3;
  CALayerArrayInsertValues(v7, v9, __src, 1);
  if (!v13)
  {
    layer = a3->_attr.layer;
    v22 = CA::Layer::ancestor_context_id(this, a2);
    CA::Layer::update_added_sublayer(layer, a2, this, v22);
    v23 = a3->_attr.layer;
    v24 = *(a2 + 28);
    if ((v24 & 0x80000000) != 0 || (v25 = *(v23 + v24 + 68)) == 0)
    {
      v25 = *CA::Layer::thread_flags_(v23, a2);
    }

    CA::Layer::update_for_changed_sublayers(this, a2, v25);
  }

  CA::Layer::end_change(this, a2, 694, @"sublayers", v29);
LABEL_38:
  if (v13)
  {
    while (1)
    {
      v26 = *v13;
      if (!*v13)
      {
        break;
      }

      v27 = *v13;
      atomic_compare_exchange_strong(v13, &v27, v26 - 1);
      if (v27 == v26)
      {
        if (v26 == 1)
        {
          CA::Layer::destroy(v13);
          CA::Layer::~Layer(v13);
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          v28 = malloc_zone;

          malloc_zone_free(v28, v13);
        }

        return;
      }
    }
  }
}

void sub_183B38060(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  X::Ref<CA::Layer>::~Ref(va);
  _Unwind_Resume(a1);
}

void CA::Layer::remove_from_context(CA::Layer *this)
{
  if ((*(this + 55) & 0x10) != 0)
  {
    v2 = CA::Layer::retain_context(this);
    if (v2)
    {
      v3 = v2;
      if (*(v2 + 12) == *(this + 2))
      {
        v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
        if (!v4)
        {
          v4 = CA::Transaction::create(v2);
        }

        CA::Transaction::unlock(v4);
        CA::Context::set_layer(v3, 0);
        v5 = *(v4 + 29);
        *(v4 + 29) = v5 + 1;
        if (!v5)
        {
          os_unfair_lock_lock(&CA::Transaction::transaction_lock);
        }
      }

      CA::Context::unref(v3, 0);
    }
  }
}

void sub_183B38124(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 116);
  *(v1 + 116) = v3 + 1;
  if (!v3)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::Layer::ancestor_context_id(CA::Layer *this, CA::Transaction *a2)
{
  v4 = *(a2 + 29);
  *(a2 + 29) = v4 + 1;
  if (!v4)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v5 = *(this + 67);
  v6 = CA::Layer::retain_parent(this, a2);
  if (v6)
  {
    v7 = v6;
    do
    {
      v5 = v7[67];
      v11 = CA::Layer::retain_parent(v7, a2);
      while (1)
      {
        v8 = *v7;
        if (!*v7)
        {
          break;
        }

        v9 = *v7;
        atomic_compare_exchange_strong(v7, &v9, v8 - 1);
        if (v9 == v8)
        {
          if (v8 == 1)
          {
            CA::Layer::destroy(v7);
            CA::Layer::~Layer(v7);
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            malloc_zone_free(malloc_zone, v7);
          }

          break;
        }
      }

      v7 = v11;
    }

    while (v11);
  }

  CA::Transaction::unlock(a2);
  return v5;
}

void sub_183B382A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_uint *a9)
{
  X::Ref<CA::Layer>::~Ref(&a9);
  CA::Transaction::unlock(v9);
  _Unwind_Resume(a1);
}

void CALayerArrayInsertValues(uint64_t a1, uint64_t a2, void **__src, uint64_t a4)
{
  v4 = (a1 + 8);
  if (*(a1 + 40) == 1)
  {
    abort();
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = (v7 + a4);
  if (v7 + a4 == 1 && v8 == 0)
  {
    *v4 = *__src;
LABEL_27:
    v4[1] = v9;
    v4[3] = v4[3] + 1;
    return;
  }

  if (v9 <= v8)
  {
    if (v7 != a2)
    {
      memmove(*v4 + 8 * a2 + 8 * a4, *v4 + 8 * a2, 8 * (v7 - a2));
    }

    if (a4 == 1)
    {
      *(*v4 + a2) = *__src;
    }

    else
    {
      memcpy(*v4 + 8 * a2, __src, 8 * a4);
    }

    goto LABEL_27;
  }

  v12 = a4 + v8 + 7;
  if (!(v12 >> 61))
  {
    v14 = v12 & 0xFFFFFFFFFFFFFFF8;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v15 = malloc_type_zone_malloc(malloc_zone, 8 * v14, 0x80040B8603338uLL);
    if (v15)
    {
      __dst = v15;
      if (a2)
      {
        v16 = (a1 + 8);
        if (*(a1 + 16) != 1 || *(a1 + 24))
        {
          v16 = *v16;
        }

        memcpy(v15, v16, 8 * a2);
        v15 = __dst;
      }

      v20 = v14;
      v17 = &v15[8 * a2];
      memcpy(v17, __src, 8 * a4);
      if (v7 != a2)
      {
        v18 = (a1 + 8);
        if (*(a1 + 16) != 1 || *(a1 + 24))
        {
          v18 = *v18;
        }

        memcpy(&v17[8 * a4], &v18[a2], 8 * (v7 - a2));
      }

      if (v8)
      {
        v19 = *v4;
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v19);
      }

      *v4 = __dst;
      v4[2] = v20;
      goto LABEL_27;
    }
  }
}

CA::Layer *CA::Layer::update_added_sublayer(CA::Layer *this, CA::Transaction *a2, CA::Layer *a3, int a4)
{
  v8 = *(this + 67);
  v9 = *(a2 + 29);
  *(a2 + 29) = v9 + 1;
  if (!v9)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  *(this + 1) = a3;
  *(this + 67) = 0;
  CA::Transaction::unlock(a2);
  CA::Layer::mark_visible(this, a2, (*(a3 + 13) >> 28) & 1);
  CA::Transaction::remove_root(a2, this);
  if (v8 && v8 != a4)
  {
    CA::Layer::mark_context_changed(this, a2);
  }

  if (((*(a3 + 1) ^ (*(this + 12) << 9) ^ *(this + 1)) & 0x400000) != 0)
  {
    CA::Layer::toggle_flipped(this, a2);
  }

  result = dyld_program_sdk_at_least();
  if (result)
  {

    return CA::Layer::ensure_transaction_recursively(this, a2);
  }

  return result;
}

uint64_t x_hash_table_remove_ptr(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v4 = (*(a1 + 16) + 8 * (*(a1 + 8) & (*(a1 + 32))(a2)));
    while (1)
    {
      v5 = v4;
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (v4[2] == a2)
      {
        *v5 = *v4;
        v6 = v4[3];
        v7 = *(a1 + 48);
        if (v7)
        {
          v7(v4[2]);
        }

        v8 = *(a1 + 56);
        if (v8)
        {
          v8(v6);
        }

        v9 = *(a1 + 72);
        if (v9)
        {
          *v4 = *(v9 + 8);
          *(v9 + 8) = v4;
        }

        else
        {
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v4);
        }

        --*(a1 + 24);
        return v6;
      }
    }
  }

  return 0;
}

void CA::Transaction::remove_root(CA::Transaction *this, atomic_uint *a2)
{
  v2 = *(this + 6);
  if (v2 && x_hash_table_remove_ptr(v2, a2))
  {
    while (1)
    {
      v4 = *a2;
      if (!*a2)
      {
        break;
      }

      v5 = *a2;
      atomic_compare_exchange_strong(a2, &v5, v4 - 1);
      if (v5 == v4)
      {
        if (v4 == 1)
        {
          CA::Layer::destroy(a2);
          CA::Layer::~Layer(a2);
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          v6 = malloc_zone;

          malloc_zone_free(v6, a2);
        }

        return;
      }
    }
  }
}

void CA::Layer::mark_visible(CA::Layer *this, CA::Transaction *a2, _BOOL8 a3)
{
  v3 = *(this + 13);
  if (a3 == (v3 & 0x10000000u) >> 28)
  {
    return;
  }

  v7 = v3 & 0xEFFFFFFF;
  if (a3)
  {
    v8 = 0x10000000;
  }

  else
  {
    v8 = 0;
  }

  *(this + 13) = v7 | v8;
  if (*(this + 35))
  {
    if (a3)
    {
      if (non_visible_animating_layers)
      {
        CFSetRemoveValue(non_visible_animating_layers, this);
      }
    }

    else
    {
      add_non_visible_animating_layer(this);
    }

    CA::Layer::mark(this, a2, 2099208, 2064);
    if (!**(a2 + 15))
    {
      CA::Transaction::ensure_implicit(a2, 1);
    }
  }

  v9 = *(this + 2);
  if ([v9 _defersDidBecomeVisiblePostCommit])
  {
    v11 = *(a2 + 12);
    if (v11)
    {
      while (*v11 != this)
      {
        v11 = *(v11 + 8);
        if (!v11)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      do
      {
LABEL_18:
        v13 = *this;
        if (!*this)
        {
          break;
        }

        v12 = *this;
        atomic_compare_exchange_strong(this, &v12, v13 + 1);
      }

      while (v12 != v13);
      *(a2 + 12) = x_list_prepend(*(a2 + 12), this);
    }
  }

  else
  {
    [v9 layerDidBecomeVisible:a3];
  }

  v14 = *(this + 3);
  if (v14)
  {
    v15 = v14 + 1;
    v16 = v14[2];
    if (v16 == 1)
    {
      if (!v14[3])
      {
        do
        {
LABEL_27:
          v17 = *v15++;
          CA::Layer::mark_visible(*(v17 + 16), a2, a3, v10);
          --v16;
        }

        while (v16);
        goto LABEL_28;
      }
    }

    else if (!v16)
    {
      goto LABEL_28;
    }

    v15 = *v15;
    goto LABEL_27;
  }

LABEL_28:
  v18 = *(this + 4);
  if (v18)
  {
    CA::Layer::mark_visible(*(v18 + 16), a2, a3, v10);
  }

  v19 = *(this + 2);
  if (v19)
  {
    v20 = [*(this + 2) contents];
    if (v20)
    {
      v21 = v20;
      v22 = CFGetTypeID(v20);
      if (CABackingStoreGetTypeID::once[0] != -1)
      {
        dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
      }

      if (v22 == CABackingStoreGetTypeID::type)
      {
        v23 = *(v21 + 492);
        if ((CABackingStoreSetVolatile(v21, a3 ^ 1) & 1) != 0 || !a3)
        {
          if (!a3 || (v23 & 0x100) != 0)
          {
            CA::Layer::mark(this, a2, 1032, 16);
          }
        }

        else
        {
          [v19 setNeedsDisplay];
        }

        if (a3)
        {
          v24 = [*(this + 2) _retainColorSpace];
          if (CABackingStoreSetColorSpace(v21, v24))
          {
            [v19 setNeedsDisplay];
          }

          CGColorSpaceRelease(v24);
        }
      }

      else if (v22 == CGImageGetTypeID() && a3)
      {
        [v19 setContentsChanged];
      }
    }
  }

  if (a3)
  {
    v25 = @"onOrderIn";
  }

  else
  {
    v25 = @"onOrderOut";
  }

  v26 = a2 + 104;
  while (1)
  {
    v26 = *v26;
    if (!v26)
    {
      break;
    }

    if (v26[28])
    {
      if (v26[24])
      {
        return;
      }

      break;
    }
  }

  v27 = [v9 actionForKey:v25];
  if (v27)
  {

    [v27 runActionForKey:v25 object:v9 arguments:0];
  }
}

void CA::Layer::update_for_changed_sublayers(atomic_uint *this, CA::Transaction *a2, int a3)
{
  if (a3)
  {
    v4 = this;
    if ((a3 & 0x18) != 0)
    {
      v5 = (4 * ((a3 & 6) != 0)) | 0x10;
    }

    else
    {
      v5 = 4 * ((a3 & 6) != 0);
    }

    if ((a3 & 0x10000060) != 0)
    {
      v5 |= 0x40u;
    }

    if ((a3 & 0x300) != 0)
    {
      v5 |= 0x200u;
    }

    v6 = v5 | a3 & 0x800;
    while (1)
    {
      v7 = *this;
      if (!*this)
      {
        break;
      }

      v8 = *this;
      atomic_compare_exchange_strong(this, &v8, v7 + 1);
      if (v8 == v7)
      {
        v18 = this;
        while (1)
        {
          v9 = *(a2 + 28);
          if ((v9 & 0x80000000) != 0 || (v10 = v4 + 4 * v9, (v11 = *(v10 + 68)) == 0))
          {
            v12 = CA::Layer::thread_flags_(v4, a2);
            v11 = *v12;
            v4 = v18;
          }

          else
          {
            v12 = (v10 + 272);
          }

          if ((v6 & ~v11) == 0)
          {
            break;
          }

          *v12 = v11 | v6;
          v13 = CA::Layer::retain_parent(v4, a2);
          v18 = v13;
          if (v4)
          {
            while (1)
            {
              v14 = *v4;
              if (!*v4)
              {
                break;
              }

              v15 = *v4;
              atomic_compare_exchange_strong(v4, &v15, v14 - 1);
              if (v15 == v14)
              {
                if (v14 == 1)
                {
                  CA::Layer::destroy(v4);
                  CA::Layer::~Layer(v4);
                  if (x_malloc_get_zone::once != -1)
                  {
                    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                  }

                  malloc_zone_free(malloc_zone, v4);
                }

                break;
              }
            }

            v4 = v18;
            if (!v18)
            {
              return;
            }
          }

          else
          {
            v4 = v13;
            if (!v13)
            {
              return;
            }
          }
        }

        if (v4)
        {
          while (1)
          {
            v16 = *v4;
            if (!*v4)
            {
              break;
            }

            v17 = *v4;
            atomic_compare_exchange_strong(v4, &v17, v16 - 1);
            if (v17 == v16)
            {
              if (v16 == 1)
              {
                CA::Layer::destroy(v4);
                CA::Layer::~Layer(v4);
                if (x_malloc_get_zone::once != -1)
                {
                  dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                }

                malloc_zone_free(malloc_zone, v4);
              }

              return;
            }
          }
        }

        return;
      }
    }
  }
}

CA::Layer *CA::Layer::ensure_transaction_recursively(CA::Layer *this, CA::Transaction *a2)
{
  v3 = this;
  v4 = *(a2 + 28);
  if ((v4 & 0x80000000) != 0 || !*(this + v4 + 68))
  {
    this = CA::Layer::thread_flags_(this, a2);
  }

  v5 = *(v3 + 14);
  if ((v5 & 4) != 0)
  {
    this = [MEMORY[0x1E695DF30] raise:@"CALayerInvalid" format:{@"layer %@ is a part of cycle in its layer tree", *(v3 + 2)}];
    v5 = *(v3 + 14);
  }

  *(v3 + 14) = v5 | 4;
  v6 = *(v3 + 3);
  if (v6)
  {
    v7 = v6 + 1;
    v8 = v6[2];
    if (v8 == 1)
    {
      if (!v6[3])
      {
        do
        {
LABEL_12:
          v9 = *v7++;
          this = CA::Layer::ensure_transaction_recursively(*(v9 + 16), a2);
          --v8;
        }

        while (v8);
        goto LABEL_13;
      }
    }

    else if (!v8)
    {
      goto LABEL_13;
    }

    v7 = *v7;
    goto LABEL_12;
  }

LABEL_13:
  v10 = *(v3 + 4);
  if (v10)
  {
    this = CA::Layer::ensure_transaction_recursively(*(v10 + 16), a2);
  }

  *(v3 + 14) &= ~4u;
  return this;
}

CA::Transaction *CALayerGetSuperlayer(CA::Transaction *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v2)
    {
      v2 = CA::Transaction::create(a1);
    }

    v3 = *(v2 + 29);
    *(v2 + 29) = v3 + 1;
    if (!v3)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    v4 = *(*(v1 + 2) + 8);
    if (v4)
    {
      v1 = *(v4 + 16);
    }

    else
    {
      v1 = 0;
    }

    CA::Transaction::unlock(v2);
  }

  return v1;
}

uint64_t CADevicePrefers60HzAPT()
{
  if (CADeviceSupportsOddQuantaFrameRates::once[0] != -1)
  {
    dispatch_once(CADeviceSupportsOddQuantaFrameRates::once, &__block_literal_global_314);
  }

  if (CADeviceSupportsOddQuantaFrameRates::enabled == 1)
  {
    if (CADeviceIsPhone::once != -1)
    {
      dispatch_once(&CADeviceIsPhone::once, &__block_literal_global_227);
    }

    if (CADeviceIsPhone::phone == 1)
    {
      if (CADeviceSupportsAPT::once != -1)
      {
        dispatch_once(&CADeviceSupportsAPT::once, &__block_literal_global_46);
      }

      v0 = &CADeviceSupportsAPT::supports_apt;
    }

    else
    {
      if (CADevicePrefers60HzAPT::once != -1)
      {
        dispatch_once(&CADevicePrefers60HzAPT::once, &__block_literal_global_317);
      }

      v0 = &CADevicePrefers60HzAPT::enabled;
    }

    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

__CFString *CAAtomGetString(unsigned int a1)
{
  if (!a1)
  {
    return @"<nil>";
  }

  os_unfair_lock_lock(&atomLock);
  if (!atomArray)
  {
    initAtoms();
  }

  if (a1 >= 0x300)
  {
    v2 = a1;
  }

  else
  {
    v2 = a1;
    if (!*(atomArray + 8 * a1))
    {
      v3 = &wordlist;
      v4 = 2441;
      while (v3[1] != a1)
      {
        v3 += 2;
        if (!--v4)
        {
          goto LABEL_12;
        }
      }

      *(atomArray + 8 * a1) = CFStringCreateWithCStringNoCopy(0, &stringpool_contents[*v3], 0x8000100u, *MEMORY[0x1E695E498]);
    }
  }

LABEL_12:
  if (atomArraySize <= v2)
  {
    v5 = @"<unknown>";
  }

  else
  {
    v5 = *(atomArray + 8 * v2);
  }

  os_unfair_lock_unlock(&atomLock);
  return v5;
}

CA::AttrList *CA::AttrList::set(CA::AttrList *this, const void *a2, int a3, unsigned __int8 *a4)
{
  v6 = a2;
  v7 = this;
  v8 = *(this + 2) & 7;
  if (v8)
  {
    do
    {
      v9 = CA::AttrList::copy_(v7);
      *(v7 + 1) = *(v7 + 1) & 0xFFFFFFFFFFFFFFF8 | (v8 - 1);
      v7 = v9;
      v8 = *(v9 + 2) & 7;
    }

    while (v8);
  }

  else
  {
    v9 = this;
  }

  v10 = *v9;
  if (!*v9)
  {
LABEL_16:
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v10 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x10E2040FD5748B5uLL);
    *(v10 + 2) = v6 & 0xFFFFFF;
    v10[2] = 0;
    *v10 = *v9;
    *v9 = v10;
    goto LABEL_19;
  }

  v11 = *(v10 + 2);
  if ((v11 & 0xFFFFFF) != v6)
  {
    v12 = 0;
    v14 = *v9;
    while (1)
    {
      v10 = *v14;
      if (!*v14)
      {
        goto LABEL_16;
      }

      v12 |= v11 < 0;
      v11 = *(v10 + 2);
      v13 = v14;
      v14 = *v14;
      if ((v11 & 0xFFFFFF) == v6)
      {
        goto LABEL_11;
      }
    }
  }

  v12 = 0;
  v13 = v9;
LABEL_11:
  if ((v12 & 1) != 0 || v11 < 0)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v15 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x10E2040FD5748B5uLL);
    v15[2] = v6;
    *(v15 + 2) = 0;
    *v13 = *v10;
    *v15 = *v9;
    *v9 = v15;
    CA::AttrList::splice_shared_node(v9, v10);
    v10 = v15;
  }

LABEL_19:
  if ((*(v10 + 11) & 0x7F) != a3)
  {
    CA::AttrList::Node::free_memory(v10, a2);
    CA::AttrList::Node::alloc_memory(v10, a3);
  }

  switch(a3)
  {
    case 1:
      *v10[2] = *a4;
      return v9;
    case 2:
      v36 = *a4;
      v37 = v10[2];
      if (v37 != v36)
      {
        if (v37)
        {
          CA::Transaction::cf_release(v37, a2);
        }

        if (v36)
        {
          v26 = CFRetain(v36);
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_60;
      }

      return v9;
    case 3:
      v27 = *a4;
      v28 = v10[2];
      if (v28 != v27)
      {
        if (v28)
        {
          CA::Transaction::cf_release(v28, a2);
        }

        v26 = CAValueCopyPointer(v27);
        goto LABEL_60;
      }

      return v9;
    case 4:
      X::WeakDetails::Ptr::set(v10[2], *a4, 1);
      return v9;
    case 5:
      v24 = *a4;
      v25 = v10[2];
      if (v24 != v25)
      {
        if (v25)
        {
          _Block_release(v25);
        }

        if (v24)
        {
          v26 = _Block_copy(v24);
LABEL_60:
          v10[2] = v26;
        }

        else
        {
          v10[2] = 0;
        }
      }

      return v9;
    case 6:
    case 8:
      v16 = *a4;
      goto LABEL_52;
    case 7:
      v16 = *a4;
      goto LABEL_52;
    case 9:
      v16 = *a4;
      goto LABEL_52;
    case 10:
      v16 = *a4;
      goto LABEL_52;
    case 11:
      v16 = *a4;
      goto LABEL_52;
    case 12:
      v16 = *a4;
      goto LABEL_52;
    case 13:
    case 14:
    case 15:
    case 16:
      v16 = *a4;
LABEL_52:
      v10[2] = v16;
      return v9;
    case 17:
      v19 = *a4;
      goto LABEL_43;
    case 18:
      v19 = *a4;
LABEL_43:
      *(v10 + 2) = v19;
      return v9;
    case 19:
    case 20:
      v17 = v10[2];
      v18 = *a4;
      goto LABEL_57;
    case 21:
      v20 = v10[2];
      v21 = *a4;
      v22 = *(a4 + 1);
      goto LABEL_55;
    case 22:
      v29 = v10[2];
      v30 = *(a4 + 1);
      v31 = *(a4 + 2);
      v32 = *(a4 + 3);
      *v29 = *a4;
      v29[1] = v30;
      v29[2] = v31;
      v29[3] = v32;
      v33 = *(a4 + 5);
      v34 = *(a4 + 6);
      v35 = *(a4 + 7);
      v29[4] = *(a4 + 4);
      v29[5] = v33;
      v29[6] = v34;
      v29[7] = v35;
      return v9;
    case 23:
      v20 = v10[2];
      v21 = *a4;
      v22 = *(a4 + 1);
      v23 = *(a4 + 2);
      goto LABEL_54;
    case 24:
      v17 = v10[2];
      v18 = *a4;
      v17[2] = *(a4 + 2);
LABEL_57:
      *v17 = v18;
      break;
    case 25:
      v20 = v10[2];
      v21 = *a4;
      v22 = *(a4 + 1);
      v23 = *(a4 + 2);
      v20[3] = *(a4 + 3);
LABEL_54:
      v20[2] = v23;
LABEL_55:
      *v20 = v21;
      v20[1] = v22;
      break;
    default:
      return v9;
  }

  return v9;
}

void CA::AttrList::Node::free_memory(CA::AttrList::Node *this, const void *a2)
{
  v3 = *(this + 11) & 0x7F;
  if (v3 > 0x13)
  {
    if ((*(this + 11) & 0x7Fu) > 0x16)
    {
      switch(v3)
      {
        case 0x17u:
          v5 = *(this + 2);
          if (x_malloc_get_zone::once == -1)
          {
            goto LABEL_42;
          }

          break;
        case 0x18u:
          v5 = *(this + 2);
          if (x_malloc_get_zone::once == -1)
          {
            goto LABEL_42;
          }

          break;
        case 0x19u:
          v5 = *(this + 2);
          if (x_malloc_get_zone::once == -1)
          {
            goto LABEL_42;
          }

          break;
        default:
          goto LABEL_43;
      }
    }

    else
    {
      switch(v3)
      {
        case 0x14u:
          v5 = *(this + 2);
          if (x_malloc_get_zone::once == -1)
          {
            goto LABEL_42;
          }

          break;
        case 0x15u:
          v5 = *(this + 2);
          if (x_malloc_get_zone::once == -1)
          {
            goto LABEL_42;
          }

          break;
        case 0x16u:
          v5 = *(this + 2);
          if (x_malloc_get_zone::once == -1)
          {
            goto LABEL_42;
          }

          break;
        default:
          goto LABEL_43;
      }
    }

    goto LABEL_44;
  }

  if ((*(this + 11) & 0x7Fu) <= 3)
  {
    if (v3 - 2 < 2)
    {
      v4 = *(this + 2);
      if (v4)
      {
        CA::Transaction::cf_release(v4, a2);
      }

      goto LABEL_43;
    }

    if (v3 != 1)
    {
      goto LABEL_43;
    }

    v5 = *(this + 2);
    if (!v5)
    {
      goto LABEL_43;
    }

    if (x_malloc_get_zone::once == -1)
    {
LABEL_42:
      malloc_zone_free(malloc_zone, v5);
      goto LABEL_43;
    }

LABEL_44:
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    goto LABEL_42;
  }

  if (v3 == 4)
  {
    v5 = *(this + 2);
    if (!v5)
    {
      goto LABEL_43;
    }

    if (*v5)
    {
      if (v5[8] == 1)
      {
        objc_storeWeakOrNil(*(this + 2), 0);
      }

      else
      {
        *v5 = 0;
      }
    }

    if (x_malloc_get_zone::once == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

  if (v3 != 5)
  {
    if (v3 != 19)
    {
      goto LABEL_43;
    }

    v5 = *(this + 2);
    if (x_malloc_get_zone::once == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

  v6 = *(this + 2);
  if (v6)
  {
    _Block_release(v6);
  }

LABEL_43:
  *(this + 2) &= 0x80FFFFFF;
}

_BYTE *CA::AttrList::Node::alloc_memory(_BYTE *result, int a2)
{
  v2 = a2;
  v3 = result;
  if (a2 <= 20)
  {
    if (a2 <= 18)
    {
      if (a2 == 1)
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        result = malloc_type_zone_malloc(malloc_zone, 8uLL, 0x165299FDuLL);
        if (result)
        {
          *result = 0;
        }

        goto LABEL_39;
      }

      if (a2 == 4)
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        result = malloc_type_zone_malloc(malloc_zone, 0x10uLL, 0x165299FDuLL);
        if (result)
        {
          *result = 0;
          result[8] = 0;
        }

        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (a2 == 19)
    {
      if (x_malloc_get_zone::once == -1)
      {
LABEL_28:
        v4 = malloc_zone;
        v5 = 0x1000040451B5BE8;
        v6 = 16;
LABEL_38:
        result = malloc_type_zone_malloc(v4, v6, v5);
LABEL_39:
        *(v3 + 2) = result;
        goto LABEL_40;
      }
    }

    else if (x_malloc_get_zone::once == -1)
    {
      goto LABEL_28;
    }

    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    goto LABEL_28;
  }

  if (a2 <= 22)
  {
    if (a2 == 21)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v4 = malloc_zone;
      v5 = 0x1000040E0EAB150;
      v6 = 32;
    }

    else
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v4 = malloc_zone;
      v5 = 0x1000040AE2C30F4;
      v6 = 128;
    }

    goto LABEL_38;
  }

  switch(a2)
  {
    case 23:
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v4 = malloc_zone;
      v5 = 0x1000040EED21634;
      v6 = 48;
      goto LABEL_38;
    case 24:
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v4 = malloc_zone;
      v5 = 0x1000040504FFAC1;
      v6 = 24;
      goto LABEL_38;
    case 25:
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v4 = malloc_zone;
      v5 = 0x1000040FA0F61DDLL;
      v6 = 64;
      goto LABEL_38;
  }

LABEL_40:
  *(v3 + 2) = *(v3 + 2) & 0x80FFFFFF | ((v2 & 0x7F) << 24);
  return result;
}

uint64_t CAValueCopyPointer(void *a1)
{
  if (objc_opt_respondsToSelector())
  {

    return [a1 copy];
  }

  else
  {
    if (a1)
    {
      CFRetain(a1);
    }

    return a1;
  }
}

uint64_t CA::AttrList::get(uint64_t result, int a2, const CGAffineTransform *a3, CA::Mat4Impl *this)
{
  while (1)
  {
    result = *result;
    if (!result)
    {
      return result;
    }

    v5 = *(result + 8);
    if ((v5 & 0xFFFFFF) == a2)
    {
      if (!this)
      {
        return 1;
      }

      switch(HIBYTE(v5) & 0x7F)
      {
        case 1:
          if ((a3 - 1) > 3)
          {
            goto LABEL_40;
          }

          v8 = **(result + 16);
          goto LABEL_16;
        case 2:
        case 3:
          if ((a3 - 1) > 3)
          {
            goto LABEL_40;
          }

          goto LABEL_15;
        case 4:
          if ((a3 - 1) > 3)
          {
            goto LABEL_40;
          }

          v13 = *(result + 16);
          if (*(v13 + 8) == 1)
          {
            Weak = objc_loadWeak(v13);
          }

          else
          {
            Weak = *v13;
          }

          *this = Weak;
          return 1;
        case 5:
          if (a3 != 5)
          {
            goto LABEL_40;
          }

LABEL_15:
          v8 = *(result + 16);
LABEL_16:
          *this = v8;
          return 1;
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xD:
        case 0xE:
          switch(a3)
          {
            case 6:
              goto LABEL_41;
            case 7:
            case 8:
              goto LABEL_6;
            case 9:
            case 10:
              goto LABEL_8;
            case 11:
            case 12:
              goto LABEL_13;
            case 13:
            case 14:
            case 15:
            case 16:
              goto LABEL_15;
            case 17:
              v26 = *(result + 16);
              goto LABEL_47;
            case 18:
              v6 = *(result + 16);
              goto LABEL_49;
            default:
              goto LABEL_40;
          }

        case 0xF:
        case 0x10:
          switch(a3)
          {
            case 6:
LABEL_41:
              v25 = *(result + 16) == 0;
              goto LABEL_42;
            case 7:
            case 8:
LABEL_6:
              *this = *(result + 16);
              return 1;
            case 9:
            case 10:
LABEL_8:
              *this = *(result + 16);
              return 1;
            case 11:
            case 12:
LABEL_13:
              *this = *(result + 16);
              return 1;
            case 13:
            case 14:
            case 15:
            case 16:
              goto LABEL_15;
            case 17:
              v26 = *(result + 16);
              goto LABEL_47;
            case 18:
              v6 = *(result + 16);
              goto LABEL_49;
            default:
              goto LABEL_40;
          }

        case 0x11:
        case 0x12:
          v6 = *(result + 16);
          switch(a3)
          {
            case 6:
              v25 = v6 == 0.0;
LABEL_42:
              LOBYTE(v7) = !v25;
              goto LABEL_45;
            case 7:
            case 8:
              v7 = v6;
LABEL_45:
              *this = v7;
              return 1;
            case 9:
            case 10:
              *this = v6;
              return 1;
            case 11:
              v27 = v6;
              goto LABEL_62;
            case 12:
              v27 = v6;
LABEL_62:
              *this = v27;
              break;
            case 13:
            case 15:
              v8 = v6;
              goto LABEL_16;
            case 14:
            case 16:
              v8 = v6;
              goto LABEL_16;
            case 17:
              v26 = v6;
LABEL_47:
              *this = v26;
              return 1;
            case 18:
LABEL_49:
              *this = v6;
              return 1;
            default:
              goto LABEL_40;
          }

          return 1;
        case 0x13:
          if (a3 != 19)
          {
            goto LABEL_40;
          }

          goto LABEL_36;
        case 0x14:
          if (a3 != 20)
          {
            goto LABEL_40;
          }

LABEL_36:
          v10 = **(result + 16);
          goto LABEL_39;
        case 0x15:
          if (a3 != 21)
          {
            goto LABEL_40;
          }

          v15 = *(result + 16);
          v10 = *v15;
          v11 = v15[1];
          goto LABEL_34;
        case 0x16:
          if (a3 == 23)
          {
            CA::Mat4Impl::mat4_set_transform(this, *(result + 16), a3);
            return 1;
          }

          if (a3 == 22)
          {
            v16 = *(result + 16);
            v17 = v16[1];
            v18 = v16[2];
            v19 = v16[3];
            *this = *v16;
            *(this + 1) = v17;
            *(this + 2) = v18;
            *(this + 3) = v19;
            v20 = v16[5];
            v21 = v16[6];
            v22 = v16[7];
            *(this + 4) = v16[4];
            *(this + 5) = v20;
            *(this + 6) = v21;
            *(this + 7) = v22;
            return 1;
          }

LABEL_40:
          result = 0;
          break;
        case 0x17:
          if (a3 != 23)
          {
            goto LABEL_40;
          }

          v23 = *(result + 16);
          v10 = *v23;
          v11 = v23[1];
          v12 = v23[2];
          goto LABEL_33;
        case 0x18:
          if (a3 != 24)
          {
            goto LABEL_40;
          }

          v24 = *(result + 16);
          v10 = *v24;
          *(this + 2) = *(v24 + 2);
          goto LABEL_39;
        case 0x19:
          if (a3 != 25)
          {
            goto LABEL_40;
          }

          v9 = *(result + 16);
          v10 = *v9;
          v11 = v9[1];
          v12 = v9[2];
          *(this + 3) = v9[3];
LABEL_33:
          *(this + 2) = v12;
LABEL_34:
          *(this + 1) = v11;
LABEL_39:
          *this = v10;
          return 1;
        default:
          goto LABEL_40;
      }

      return result;
    }
  }
}

uint64_t CAObject_defaultValueForAtom(objc_class *a1, int a2, const CGAffineTransform *a3, uint64_t a4)
{
  result = classDescription(a1);
  if (result)
  {
    v8 = result;
    while (1)
    {
      result = v8[(a2 & 7) + 6];
      if (result)
      {
        result = CA::AttrList::get(result, a2, a3, a4);
        if (result)
        {
          break;
        }
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    switch(a3)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 13:
      case 14:
      case 15:
      case 16:
      case 18:
        *a4 = 0;
        return result;
      case 6:
      case 7:
      case 8:
        *a4 = 0;
        return result;
      case 9:
      case 10:
        *a4 = 0;
        return result;
      case 11:
      case 12:
      case 17:
        *a4 = 0;
        return result;
      case 19:
        v11 = MEMORY[0x1E695EFF8];
        goto LABEL_18;
      case 20:
        v11 = MEMORY[0x1E695F060];
LABEL_18:
        v9 = *v11;
        goto LABEL_19;
      case 21:
        v9 = *MEMORY[0x1E695F050];
        v10 = *(MEMORY[0x1E695F050] + 16);
        goto LABEL_16;
      case 22:
        *a4 = CATransform3DIdentity;
        return result;
      case 23:
        v9 = *MEMORY[0x1E695EFD0];
        v10 = *(MEMORY[0x1E695EFD0] + 16);
        *(a4 + 32) = *(MEMORY[0x1E695EFD0] + 32);
LABEL_16:
        *(a4 + 16) = v10;
        goto LABEL_19;
      case 24:
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        return result;
      case 25:
        v9 = 0uLL;
        *(a4 + 32) = 0u;
        *(a4 + 48) = 0u;
        *(a4 + 16) = 0u;
LABEL_19:
        *a4 = v9;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t CA::Transaction::add_root(CA::Transaction *this, atomic_uint *a2)
{
  v4 = *(this + 6);
  if (!v4)
  {
    v4 = x_hash_table_new_(0, 0, 0, 0, 0, 0);
    *(this + 6) = v4;
  }

  result = hash_table_modify(v4, a2, a2, 0);
  if (result)
  {
    do
    {
      v6 = *a2;
      if (!*a2)
      {
        break;
      }

      v7 = *a2;
      atomic_compare_exchange_strong(a2, &v7, v6 + 1);
    }

    while (v7 != v6);
    if ((*(this + 132) & 0x20) != 0)
    {
      v8 = *(this + 28);
      if ((v8 & 0x80000000) != 0 || !a2[v8 + 68])
      {

        return CA::Layer::thread_flags_(a2, this);
      }
    }
  }

  return result;
}

uint64_t hash_table_modify(int *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = (*(a1 + 4))(a2);
  v9 = *(*(a1 + 2) + 8 * (*(a1 + 1) & v8));
  if (!v9)
  {
LABEL_5:
    v10 = *a1;
    if (*a1 > 0x1E || *(a1 + 3) + 1 <= (4 << *a1))
    {
      goto LABEL_41;
    }

    v12 = *(a1 + 2);
    *a1 = v10 + 1;
    v13 = *(a1 + 8);
    if (v13)
    {
      if ((2 << v10) < 0x101)
      {
        v20 = x_heap_malloc_small_(*(a1 + 8), 8 * (2 << v10));
        if (!v20)
        {
          v19 = *a1;
LABEL_40:
          *a1 = v19 - 1;
LABEL_41:
          v27 = *(a1 + 9);
          if (v27)
          {
            v28 = v27[1];
            if (v28)
            {
              v27[1] = *v28;
            }

            else
            {
              v29 = v27[2];
              v30 = *(v27 + 6);
              v31 = v29 * v30 + 8;
              v32 = v27[4];
              if (v32)
              {
                v33 = x_heap_malloc(v32, v29 * v30 + 8);
              }

              else
              {
                if (x_malloc_get_zone::once != -1)
                {
                  dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                }

                v33 = malloc_type_zone_malloc(malloc_zone, v31, 0x102204002CF993AuLL);
              }

              v34 = v33;
              if (v33)
              {
                v28 = (v33 + 8);
                v35 = *(v27 + 6);
                v36 = v34 + 1;
                if (v35 >= 2)
                {
                  v37 = v27[2];
                  v38 = v35 - 1;
                  v39 = v34 + 1;
                  do
                  {
                    v36 = (v39 + v37);
                    *v39 = v39 + v37;
                    v39 = (v39 + v37);
                    --v38;
                  }

                  while (v38);
                }

                v40 = *v27;
                *v36 = v27[1];
                v27[1] = v34[1];
                *v34 = v40;
                *v27 = v34;
              }

              else
              {
                v28 = 0;
              }
            }
          }

          else
          {
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            v28 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x10A004062D90B2CuLL);
          }

          v28[2] = a2;
          v28[3] = a3;
          v41 = *(a1 + 2);
          v42 = *(a1 + 1) & v8;
          *v28 = *(v41 + 8 * v42);
          v28[1] = v8;
          *(v41 + 8 * v42) = v28;
          ++*(a1 + 3);
          return 1;
        }

        v14 = v20;
        bzero(v20, 8 * (2 << v10));
        v19 = *a1;
LABEL_26:
        v21 = 0;
        v22 = ~(-1 << v19);
        *(a1 + 1) = v22;
        do
        {
          v23 = v12[v21];
          if (v23)
          {
            do
            {
              v24 = *v23;
              v25 = v23[1] & v22;
              *v23 = v14[v25];
              v14[v25] = v23;
              v23 = v24;
            }

            while (v24);
          }

          ++v21;
        }

        while (v21 != 1 << v10);
        *(a1 + 2) = v14;
        if (!*(a1 + 8))
        {
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v12);
        }

        goto LABEL_41;
      }

      v14 = malloc_type_calloc(1uLL, 8 * (2 << v10), 0x89337390uLL);
      *v13 = x_list_prepend(*v13, v14);
    }

    else
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v14 = malloc_type_zone_calloc(malloc_zone, 1uLL, 8 * (2 << v10), 0x2004093837F09uLL);
    }

    v19 = *a1;
    if (!v14)
    {
      goto LABEL_40;
    }

    goto LABEL_26;
  }

  while (v9[1] != v8 || (*(a1 + 5))(v9[2], a2))
  {
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  v15 = v9[3];
  v16 = *(a1 + 6);
  if (a4)
  {
    if (v16)
    {
      v16(v9[2]);
    }

    v17 = *(a1 + 7);
    if (v17)
    {
      v17(v15);
    }

    result = 0;
    v9[2] = a2;
    v9[3] = a3;
  }

  else
  {
    if (v16)
    {
      v16(a2);
    }

    v26 = *(a1 + 7);
    if (v26)
    {
      v26(v15);
    }

    result = 0;
    v9[3] = a3;
  }

  return result;
}

CA::Layer *CA::Layer::model_layer(CA::Layer *this, CA::Transaction *a2)
{
  if (!*(this + 2))
  {
    return 0;
  }

  v2 = this;
  if ((*(this + 1) & 0x60000) != 0)
  {
    v4 = *(a2 + 29);
    *(a2 + 29) = v4 + 1;
    if (!v4)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    v5 = *(*(a2 + 15) + 224);
    if (v5)
    {
      v2 = x_hash_table_lookup(v5, v2, 0);
    }

    CA::Transaction::unlock(a2);
  }

  return v2;
}

uint64_t CAInternAtom(const __CFString *a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  memset(v9, 0, sizeof(v9));
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!CStringPtr && (CStringPtr = v9, !CFStringGetCString(a1, v9, 64, 0x8000100u)) || (v5 = _CAInternAtomWithCString(CStringPtr), !v5))
  {
    os_unfair_lock_lock(&atomLock);
    v6 = atomDict;
    if (!atomDict)
    {
      initAtoms();
      v6 = atomDict;
    }

    v5 = x_hash_table_lookup(v6, a1, 0);
    if (!v5 && a2)
    {
      v5 = nextAtom++;
      Copy = CFStringCreateCopy(0, a1);
      insertAtom(v5, Copy);
      CFRelease(Copy);
    }

    os_unfair_lock_unlock(&atomLock);
  }

  return v5;
}

const char *_CAInternAtomWithCString(const char *__s)
{
  if (__s)
  {
    v1 = __s;
    v2 = *__s;
    if (!*__s)
    {
      return 0;
    }

    v3 = strlen(__s);
    if ((v3 - 1) > 0x2D)
    {
      return 0;
    }

    if (v3 <= 5)
    {
      if ((v3 - 2) < 3)
      {
        v6 = v3;
LABEL_17:
        v10 = v6 + hash_asso_values[*(v1 + 1)];
LABEL_18:
        v11 = v10 + hash_asso_values[v2] + hash_asso_values[v1[v3 - 1]];
        if (v11 <= 0x988)
        {
          v12 = &wordlist[2 * v11];
          v13 = *v12;
          if ((v13 & 0x8000000000000000) == 0)
          {
            v14 = &stringpool_contents[v13];
            if (v2 == *v14 && !strcmp(v1 + 1, v14 + 1))
            {
              return v12[1];
            }
          }
        }

        return 0;
      }

      if (v3 == 1)
      {
        v10 = 1;
        goto LABEL_18;
      }

      if (v3 == 5)
      {
        v9 = 5;
        goto LABEL_16;
      }
    }

    else
    {
      if (v3 <= 0x18)
      {
        if (((1 << v3) & 0x1FF0000) != 0)
        {
          v4 = v3;
LABEL_8:
          v5 = v4 + hash_asso_values[*(v1 + 15)];
LABEL_13:
          v7 = v5 + hash_asso_values[*(v1 + 10)];
LABEL_14:
          v8 = v7 + hash_asso_values[*(v1 + 8)];
LABEL_15:
          v9 = v8 + hash_asso_values[*(v1 + 5) + 1];
LABEL_16:
          v6 = v9 + hash_asso_values[*(v1 + 4)];
          goto LABEL_17;
        }

        if (((1 << v3) & 0xF800) != 0)
        {
          v5 = v3;
          goto LABEL_13;
        }

        if (((1 << v3) & 0x600) != 0)
        {
          v7 = v3;
          goto LABEL_14;
        }
      }

      if ((v3 - 6) < 3)
      {
        v8 = v3;
        goto LABEL_15;
      }
    }

    v4 = hash_asso_values[*(v1 + 24)] + v3;
    goto LABEL_8;
  }

  return __s;
}

void CA::Display::DisplayTimingsControl::_unregister_frame_interval_range(CA::Display::DisplayTimingsControl *this, CAFrameIntervalRange a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2.var0)
  {
    v3 = *(this + 15);
    v4 = *(this + 14);
    if (v4 != v3)
    {
      v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2);
      do
      {
        v6 = v5 >> 1;
        v7 = &v4[3 * (v5 >> 1)];
        if (*v7 < a2.var0 || *v7 == a2.var0 && ((v8 = v7[1], v8 < a2.var1) || v8 == a2.var1 && v7[2] < a2.var2))
        {
          v6 = v5 + ~v6;
          v4 = v7 + 3;
        }

        v5 = v6;
      }

      while (v6);
      if (v4 != v3 && *v4 == a2.var0 && *(v4 + 1) == *&a2.var1)
      {
        v9 = v3 - (v4 + 3);
        if (v3 != (v4 + 3))
        {
          memmove(v4, v4 + 3, v3 - (v4 + 3));
        }

        *(this + 15) = v4 + v9;
      }
    }
  }

  else
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v10 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, "CAFrameIntervalRange.minimum = 0 should not be unregistered.", &v11, 2u);
    }
  }
}

void CA::Display::DisplayLinkItem::invalidate(CA::Display::DisplayLinkItem *this)
{
  *(this + 80) = 1;
  pthread_mutex_lock((this + 136));
  v2 = *(this + 34);
  *(this + 34) = 0;
  while (1)
  {
    v3 = *(this + 31);
    if (!v3 || v3 == pthread_self())
    {
      break;
    }

    pthread_cond_wait((this + 200), (this + 136));
  }

  v4 = *(this + 33);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  pthread_mutex_unlock((this + 136));
  if (v5)
  {

    CA::Display::DisplayLinkItem::update_link(this, v5);
  }
}

void CA::Display::anonymous namespace::delete_mode_list(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = a1;
    do
    {
      CFRelease(*v2);
      v2 = v2[1];
    }

    while (v2);
    do
    {
      v3 = v1[1];
      free(v1);
      v1 = v3;
    }

    while (v3);
  }
}

void CA::Display::DisplayLinkItem::unregister_frame_interval_range(CA::Display::DisplayLinkItem *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*(this + 324) & 4) != 0 && *(this + 33))
  {
    if (*(this + 129) == 1)
    {
      __assert_rtn("unregister_frame_interval_range", "CADisplay.mm", 6821, "!_has_deferred_unregister_frame_interval_range");
    }

    if (byte_1ED4E9846 == 1)
    {
      if (x_log_get_frame_rate(void)::once != -1)
      {
        dispatch_once(&x_log_get_frame_rate(void)::once, &__block_literal_global_20391);
      }

      v2 = x_log_get_frame_rate(void)::log;
      if (os_log_type_enabled(x_log_get_frame_rate(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(this + 16);
        v4 = *(this + 17);
        v5 = *(this + 18);
        v6[0] = 67109632;
        v6[1] = v3;
        v7 = 1024;
        v8 = v4;
        v9 = 1024;
        v10 = v5;
        _os_log_impl(&dword_183AA6000, v2, OS_LOG_TYPE_DEFAULT, "CAFrameRateClient: unregister %u %u %u", v6, 0x14u);
      }
    }

    if (*(this + 31))
    {
      *(this + 129) = 1;
      *(this + 116) = *(this + 8);
      *(this + 31) = *(this + 18);
    }

    else
    {
      CA::Display::DisplayTimingsControl::unregister_frame_interval_range((*(this + 2) + 464), *(this + 64));
      CA::Display::DisplayTimingsControl::register_frame_interval_reasons((*(this + 2) + 464), this, 0, 0);
    }

    *(this + 324) &= ~4u;
  }
}