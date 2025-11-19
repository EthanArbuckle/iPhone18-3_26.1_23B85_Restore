void CA::Display::DisplayTimingsControl::unregister_frame_interval_range(os_unfair_lock_s *this, CAFrameIntervalRange a2)
{
  if ((this[60]._os_unfair_lock_opaque & 0x200) != 0)
  {
    var2 = a2.var2;
    v3 = *&a2.var0;
    os_unfair_lock_lock(this + 23);
    v6.var2 = var2;
    *&v6.var0 = v3;
    CA::Display::DisplayTimingsControl::_unregister_frame_interval_range(this, v6);
    CA::Display::DisplayTimingsControl::update_frame_interval_request(this);

    os_unfair_lock_unlock(this + 23);
  }
}

void CA::Display::DisplayLinkItem::~DisplayLinkItem(CA::Display::DisplayLinkItem *this)
{
  CA::Display::DisplayLinkItem::~DisplayLinkItem(this);

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF1F3EB8;
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    CFRelease(v3);
  }

  pthread_cond_destroy((this + 200));
  pthread_mutex_destroy((this + 136));
  v4 = *(this + 33);
  if (v4)
  {
    CA::Display::DisplayLink::unref(v4);
  }
}

void sub_183B3AF0C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 264);
  if (v3)
  {
    CA::Display::DisplayLink::unref(v3);
  }

  _Unwind_Resume(exception_object);
}

void CA::Display::DisplayTimingsControl::update_frame_interval_request(unsigned int **this)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = CA::FrameRateArbitrator::arbitrate(this + 14, "CAFrameRateClient: ");
  v3 = v2;
  LODWORD(v5) = v4;
  v6 = HIDWORD(v2);
  if (CADeviceSupportsOddQuantaFrameRates::once[0] != -1)
  {
    dispatch_once(CADeviceSupportsOddQuantaFrameRates::once, &__block_literal_global_314);
  }

  if (CADeviceSupportsOddQuantaFrameRates::enabled == 1 && (CADevicePrefers60HzAPT() & 1) == 0 && (this[23] & 1) == 0 && v3)
  {
    LODWORD(v5) = 2;
    v6 = 2;
    v3 = 2;
  }

  if (this[23])
  {
    v7 = this[14];
    v8 = this[15];
    if (v7 != v8)
    {
      while (1)
      {
        v9 = v7[1];
        if (*v7 == 10 && v9 == 10)
        {
          v14 = v7[2];
          if (v14)
          {
            v15 = v14 == 10;
          }

          else
          {
            v15 = 1;
          }

          if (v15)
          {
            break;
          }
        }

        else if (*v7 == 6 && v9 == 6)
        {
          v12 = v7[2];
          if (!v12 || v12 == 6)
          {
            break;
          }
        }

        v7 += 3;
        if (v7 == v8)
        {
          goto LABEL_36;
        }
      }
    }

    if (v7 != v8)
    {
      if (*v7 == 10)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }

      v6 = v5;
      v3 = v5;
    }
  }

LABEL_36:
  if (*(this + 24) != v3 || *(this + 25) != v6 || *(this + 26) != v5)
  {
    if (byte_1ED4E9846 == 1)
    {
      if (x_log_get_frame_rate(void)::once != -1)
      {
        dispatch_once(&x_log_get_frame_rate(void)::once, &__block_literal_global_20391);
      }

      v30 = x_log_get_frame_rate(void)::log;
      if (os_log_type_enabled(x_log_get_frame_rate(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        *&v31 = __PAIR64__(getpid(), 67109888);
        WORD4(v31) = 1024;
        *(&v31 + 10) = v3;
        HIWORD(v31) = 1024;
        LODWORD(v32) = v6;
        WORD2(v32) = 1024;
        *(&v32 + 6) = v5;
        _os_log_impl(&dword_183AA6000, v30, OS_LOG_TYPE_DEFAULT, "CAFrameRateClient: pid %i register to server %u %u %u", &v31, 0x1Au);
      }
    }

    this[12] = (v3 | (v6 << 32));
    *(this + 26) = v5;
    v16 = CA::Display::DisplayTimingsControl::compat_quanta_mode(this);
    if (CADeviceIsAppleBundle::once != -1)
    {
      dispatch_once(&CADeviceIsAppleBundle::once, &__block_literal_global_404);
    }

    if ((CADeviceIsAppleBundle::apple_bundle & 1) == 0)
    {
      v17 = this[14];
      v18 = this[15];
      if (v17 != v18)
      {
        while (1)
        {
          v19 = *v17;
          v20 = *v17 == 8 || v19 == 4;
          if (v20 && v19 == v17[1])
          {
            v21 = v17[2];
            if (v19 == v21 || v21 == 0)
            {
              break;
            }
          }

          v17 += 3;
          if (v17 == v18)
          {
            v17 = this[15];
            break;
          }
        }
      }

      if (v17 != v18)
      {
        v16 = 1;
      }
    }

    ServerPort = CARenderServerGetServerPort(0);
    v24 = *(this + 2);
    v25 = getpid();
    *(&v32 + 1) = *MEMORY[0x1E69E99E0];
    v33 = v24;
    v34 = v25;
    v35 = v3;
    v36 = v6;
    v37 = v5;
    v38 = v16;
    v39 = 0;
    v40 = 0;
    reply_port = mig_get_reply_port();
    *&v31 = 5395;
    *(&v31 + 1) = __PAIR64__(reply_port, ServerPort);
    *&v32 = 0x9D5400000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v31);
      v27 = HIDWORD(v31);
    }

    else
    {
      v27 = reply_port;
    }

    v28 = mach_msg(&v31, 3, 0x38u, 0x2Cu, v27, 0, 0);
    if ((v28 - 268435458) <= 0xE && ((1 << (v28 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(HIDWORD(v31));
    }

    else if (v28)
    {
      mig_dealloc_reply_port(HIDWORD(v31));
    }

    else
    {
      if (DWORD1(v32) == 40376 && (v31 & 0x80000000) == 0 && *(&v31 + 4) == 36 && !v33)
      {
        return;
      }

      mach_msg_destroy(&v31);
    }

    if (x_log_get_frame_rate(void)::once != -1)
    {
      dispatch_once(&x_log_get_frame_rate(void)::once, &__block_literal_global_20391);
    }

    v29 = x_log_get_frame_rate(void)::log;
    if (os_log_type_enabled(x_log_get_frame_rate(void)::log, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v31) = 0;
      _os_log_error_impl(&dword_183AA6000, v29, OS_LOG_TYPE_ERROR, "CAFrameRateClient: registration failed", &v31, 2u);
    }
  }
}

void CA::Display::DisplayLinkItem::update_link(CA::Display::DisplayLinkItem *this, __CFRunLoop *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 136));
  *(this + 324) |= 2u;
  while (1)
  {
    v4 = *(this + 31);
    if (!v4)
    {
      break;
    }

    if (v4 == pthread_self())
    {

      pthread_mutex_unlock((this + 136));
      return;
    }

    pthread_cond_wait((this + 200), (this + 136));
  }

  (*(*this + 40))(buf, this, a2, *(this + 34));
  v5 = *buf;
  v6 = *(this + 33);
  if (v6 == *buf)
  {
    v10 = 0;
    v11 = *buf;
  }

  else
  {
    if (v6)
    {
      pthread_mutex_lock((v6 + 56));
      if ((*(this + 324) & 1) == 0)
      {
        CA::Display::DisplayLinkItem::unregister_frame_interval_range(this);
      }

      v8 = *(v6 + 120);
      v7 = *(v6 + 128);
      if (v8 == v7)
      {
        v7 = *(v6 + 120);
      }

      else
      {
        v9 = *(v6 + 120);
        while (*v9 != this)
        {
          if (++v9 == v7)
          {
            goto LABEL_23;
          }
        }

        v12 = v7 - (v9 + 1);
        if (v12)
        {
          memmove(v9, v9 + 1, v12);
          v8 = *(v6 + 120);
        }

        v7 = (v9 + v12);
        *(v6 + 128) = v7;
      }

LABEL_23:
      CA::Display::DisplayLink::compute_firing_rate_multiplier_locked(v6);
      CA::Display::DisplayLink::update_paused_locked(v6);
      pthread_mutex_unlock((v6 + 56));
      if (v7 == v8)
      {
        for (i = *(v6 + 24); i; i = *(i + 8))
        {
          v14 = *i;
          pthread_mutex_lock((v6 + 56));
          v15 = *(v6 + 152);
          if (v15)
          {
            CADisplayTimerRemoveFromRunLoop(v15, *(v6 + 16), v14);
          }

          pthread_mutex_unlock((v6 + 56));
        }
      }
    }

    else
    {
      CFRetain(*(this + 32));
    }

    v11 = *(this + 33);
    *(this + 33) = v5;
    if (v5)
    {
      v29 = this;
      pthread_mutex_lock((v5 + 56));
      v16 = *(v5 + 120);
      v17 = *(v5 + 128);
      if (v17 == v16)
      {
LABEL_33:
        v18 = *(v5 + 128);
      }

      else
      {
        v18 = *(v5 + 120);
        while (*(*v18 + 48) >= *(this + 6))
        {
          v18 += 8;
          if (v18 == v17)
          {
            goto LABEL_33;
          }
        }
      }

      std::vector<CA::Display::DisplayLinkItem *>::insert(v5 + 120, v18, &v29);
      v19 = v29;
      if ((*(v29 + 324) & 1) == 0)
      {
        if ((*(*(v29 + 2) + 705) & 2) != 0 && (*(v29 + 324) & 4) == 0 && *(v29 + 33))
        {
          if (byte_1ED4E9846 == 1)
          {
            if (x_log_get_frame_rate(void)::once != -1)
            {
              dispatch_once(&x_log_get_frame_rate(void)::once, &__block_literal_global_20391);
            }

            v25 = x_log_get_frame_rate(void)::log;
            if (os_log_type_enabled(x_log_get_frame_rate(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v26 = *(v19 + 16);
              v27 = *(v19 + 17);
              v28 = *(v19 + 18);
              *buf = 67109632;
              *&buf[4] = v26;
              v31 = 1024;
              v32 = v27;
              v33 = 1024;
              v34 = v28;
              _os_log_impl(&dword_183AA6000, v25, OS_LOG_TYPE_DEFAULT, "CAFrameRateClient: register %u %u %u", buf, 0x14u);
            }
          }

          if (*(v19 + 129) == 1)
          {
            CA::Display::DisplayLinkItem::run_deferred_unregister_frame_interval_range(v19);
          }

          CA::Display::DisplayTimingsControl::register_frame_interval_range((*(v19 + 2) + 464), *(v19 + 64));
          CA::Display::DisplayTimingsControl::register_frame_interval_reasons((*(v19 + 2) + 464), v19, v19 + 22, 4u);
          *(v19 + 324) |= 4u;
          v19 = v29;
        }

        CA::Display::DisplayLinkItem::set_preferred_fps_range_locked(v19, *(v19 + 76), 0);
        CA::Display::DisplayLink::compute_firing_rate_multiplier_locked(v5);
        CA::Display::DisplayLinkItem::set_display_active(v29, *(v5 + 172));
      }

      CA::Display::DisplayLink::update_paused_locked(v5);
      pthread_mutex_unlock((v5 + 56));
      if (v17 == v16)
      {
        for (j = *(v5 + 24); j; j = *(j + 8))
        {
          v21 = *j;
          pthread_mutex_lock((v5 + 56));
          v22 = *(v5 + 152);
          if (v22)
          {
            CADisplayTimerAddToRunLoop(v22, *(v5 + 16), v21);
          }

          pthread_mutex_unlock((v5 + 56));
        }
      }

      v10 = 0;
    }

    else
    {
      v10 = 1;
    }
  }

  if (*(this + 80))
  {
    v23 = *(this + 3);
    *(this + 3) = 0;
    v24 = *(this + 5);
    *(this + 5) = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  *(this + 324) &= ~2u;
  pthread_mutex_unlock((this + 136));
  if (v23)
  {
    CFRelease(v23);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v10)
  {
    CFRelease(*(this + 32));
  }

  if (v11)
  {
    CA::Display::DisplayLink::unref(v11);
  }
}

void sub_183B3B7E4(_Unwind_Exception *a1)
{
  pthread_mutex_unlock((v1 + 136));
  if (v2)
  {
    CA::Display::DisplayLink::unref(v2);
  }

  _Unwind_Resume(a1);
}

void CA::Display::DisplayLinkItem::get_link(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN2CA7Display15DisplayLinkItem8get_linkEP11__CFRunLoopPKN1X4ListIPK10__CFStringEE_block_invoke;
  v5[3] = &__block_descriptor_40_e5_Q8__0l;
  v5[4] = a1;
  if (*(a1 + 312))
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  CA::Display::DisplayLink::get_link(a4, *(a1 + 16), a2, a3, 0, 0, 0, v4);
}

void CA::Display::DisplayLink::get_link(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    v13 = dyld_program_sdk_at_least();
    os_unfair_lock_lock(&CA::Display::DisplayLink::_list_lock);
    if (a8 || a6 || !v13 || (v14 = CA::Display::DisplayLink::_list) == 0)
    {
LABEL_26:
      operator new();
    }

    while (1)
    {
      if (!*(v14 + 240) && !*(v14 + 256) && *(v14 + 8) == a2 && *(v14 + 16) == a3)
      {
        v15 = *(v14 + 24);
        if (v15)
        {
          v16 = 0;
          v17 = *(v14 + 24);
          do
          {
            ++v16;
            v17 = *(v17 + 8);
          }

          while (v17);
        }

        else
        {
          v16 = 0;
        }

        v18 = 0;
        v19 = a4;
        do
        {
          ++v18;
          v19 = *(v19 + 8);
        }

        while (v19);
        if (v16 == v18)
        {
          break;
        }
      }

LABEL_25:
      v14 = *(v14 + 48);
      if (!v14)
      {
        goto LABEL_26;
      }
    }

    for (; v15; v15 = *(v15 + 8))
    {
      v20 = a4;
      while (!CFEqual(*v15, *v20))
      {
        v20 = *(v20 + 8);
        if (!v20)
        {
          goto LABEL_25;
        }
      }
    }

    do
    {
      v22 = *(v14 + 40);
      if (!v22)
      {
        break;
      }

      v21 = *(v14 + 40);
      atomic_compare_exchange_strong((v14 + 40), &v21, v22 + 1);
    }

    while (v21 != v22);
    *a1 = v14;

    os_unfair_lock_unlock(&CA::Display::DisplayLink::_list_lock);
  }

  else
  {
    *a1 = 0;
  }
}

uint64_t CA::Display::DisplayLink::compute_firing_rate_multiplier_locked(uint64_t this)
{
  v1 = *(this + 128);
  v2 = *(this + 120);
  if (v2 != v1)
  {
    v3 = 0;
    do
    {
      if ((*(*v2 + 324) & 1) == 0)
      {
        v4 = *(*v2 + 56);
        if (v3)
        {
          if (v4)
          {
            v5 = v3;
            do
            {
              v3 = v4;
              v4 = v5 % v4;
              v5 = v3;
            }

            while (v4);
          }
        }

        else
        {
          v3 = *(*v2 + 56);
        }
      }

      v2 += 8;
    }

    while (v2 != v1);
    if (v3)
    {
      *(this + 168) = v3;
    }
  }

  return this;
}

uint64_t CA::Display::DisplayLink::update_paused_locked(uint64_t this)
{
  v1 = this;
  *(this + 144) = 0;
  v2 = *(this + 120);
  v3 = *(this + 128);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    LODWORD(v4) = 0;
    v5 = *(this + 120);
    do
    {
      if (*(*v5 + 324))
      {
        LODWORD(v4) = v4 + 1;
        *(this + 144) = v4;
      }

      v5 += 8;
    }

    while (v5 != v3);
    v4 = v4;
  }

  if (v4 < (v3 - v2) >> 3)
  {
    if (*(this + 152))
    {
      v6 = *(this + 148);
      this = CA::Display::DisplayLink::update_timer_locked(this, 0);
      if (!v6)
      {
        if (this)
        {
          this = CA::Display::DisplayLink::start_timer_locked(v1);
        }

        else
        {
          *(v1 + 192) = 1;
        }
      }
    }

    else
    {
      this = CA::Display::DisplayLink::update_timer_locked(this, 0);
    }

    *(v1 + 148) = 5;
  }

  return this;
}

uint64_t CA::Display::DisplayLink::update_timer_locked(CA::Display::DisplayLink *this, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(this + 23);
  if (v4 && v4 != pthread_self())
  {
    return 0;
  }

  *(this + 23) = pthread_self();
  v6 = *(this + 1);
  v7 = 64;
  if ((*(v6 + 705) & 8) == 0)
  {
    v7 = 48;
  }

  v8 = *(v6 + v7 + 464);
  if (v8 <= 0.0)
  {
    v14 = (this + 152);
    v13 = *(this + 19);
    if (v13)
    {
      CADisplayTimerInvalidate(v13);
      CFRelease(*v14);
      *v14 = 0;
      *(this + 20) = 0;
    }
  }

  else
  {
    if (a2)
    {
      CA::Display::DisplayLink::refresh_item_properties_locked(this);
      CA::Display::DisplayLink::compute_firing_rate_multiplier_locked(this);
    }

    v9 = *(this + 19);
    if (v9)
    {
      v10 = *(this + 42);
      v11 = v8 * v10;
      if (*(this + 20) != v11)
      {
        *(this + 20) = v11;
        v12 = CAHostTimeWithTime(v8);
        CADisplayTimerSetInterval(v9, v12, v10);
      }
    }

    else
    {
      *&v19 = this;
      *(&v19 + 1) = CA::Display::DisplayLink::update_timer_locked(BOOL)::$_0::__invoke;
      v20 = CA::Display::DisplayLink::update_timer_locked(BOOL)::$_1::__invoke;
      v21 = 0;
      v18 = 0uLL;
      if (CFRunLoopGetMain() == *(this + 2) && !*(*(this + 1) + 448))
      {
        *&v18 = this;
        *(&v18 + 1) = CA::Display::DisplayLink::timer_status_callback;
      }

      *(this + 20) = v8 * *(this + 42);
      v15 = mach_absolute_time();
      v16 = CATimeWithHostTime(v15);
      *(this + 19) = CADisplayTimerCreate(CA::Display::DisplayLink::callback, &v19, &v18, v16, *(this + 20));
      CA::Display::DisplayLink::align_phase_locked(this);
      if (*(this + 19))
      {
        for (i = *(this + 3); i; i = *(i + 8))
        {
          CADisplayTimerAddToRunLoop(*(this + 19), *(this + 2), *i);
        }
      }
    }
  }

  *(this + 23) = 0;
  if (*(this + 192) == 1)
  {
    *(this + 192) = 0;
    CA::Display::DisplayLink::start_timer_locked(this);
  }

  return 1;
}

void CA::Display::DisplayTimingsControl::register_frame_interval_reasons(CA::Display::DisplayTimingsControl *this, uint64_t a2, const unsigned int *a3, unsigned int a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if ((*(this + 241) & 2) != 0)
  {
    os_unfair_lock_lock(this + 34);
    v8 = *(this + 20);
    v9 = *(this + 21);
    v10 = v8;
    if (v8 != v9)
    {
      v10 = *(this + 20);
      while (*v10 != a2)
      {
        v10 += 24;
        if (v10 == v9)
        {
          goto LABEL_10;
        }
      }
    }

    if (v10 != v9)
    {
      if (!a4)
      {
        goto LABEL_36;
      }

      goto LABEL_27;
    }

LABEL_10:
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
    if (v11 < 8)
    {
      if (a4 && *a3)
      {
        v13 = *(this + 22);
        if (v9 >= v13)
        {
          v14 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3);
          if (2 * v14 <= v11 + 1)
          {
            v15 = v11 + 1;
          }

          else
          {
            v15 = 2 * v14;
          }

          if (v14 >= 0x555555555555555)
          {
            v16 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v16 = v15;
          }

          if (v16 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
        }

        *(v9 + 1) = 0;
        *(v9 + 2) = 0;
        *v9 = a2;
        v9 += 24;
        *(this + 21) = v9;
        v10 = v9 - 24;
LABEL_27:
        if (*a3)
        {
          v17 = 0;
          *(v10 + 1) = 0;
          *(v10 + 2) = 0;
          v18 = v10 + 8;
          if (a4 >= 4)
          {
            v19 = 4;
          }

          else
          {
            v19 = a4;
          }

          do
          {
            v21 = *a3++;
            v20 = v21;
            if (v21)
            {
              *(v18 + v17++) = v20;
            }

            --v19;
          }

          while (v19);
          v22 = *(this + 21);
LABEL_39:
          v40 = 0uLL;
          v27 = *(this + 20);
          if (v27 == v22)
          {
            LODWORD(v28) = 0;
          }

          else
          {
            v28 = 0;
            do
            {
              v29 = 8;
              v30 = v28;
              while (1)
              {
                v31 = *&v27[v29];
                if (!v31 || v30 == 4)
                {
                  break;
                }

                v28 = (v30 + 1);
                *(&v40 + v30) = v31;
                v29 += 4;
                v30 = v28;
                if (v29 == 24)
                {
                  goto LABEL_49;
                }
              }

              v28 = v30;
LABEL_49:
              if (v28 == 4)
              {
                break;
              }

              v27 += 24;
            }

            while (v27 != v22);
          }

          if (*(this + 140) != v40 || *(this + 148) != *(&v40 + 1))
          {
            *(this + 140) = v40;
            ServerPort = CARenderServerGetServerPort(0);
            v35 = *(this + 2);
            v36 = getpid();
            v42 = 1;
            v43 = &v40;
            v44 = 16777472;
            v45 = 4 * v28;
            v46 = *MEMORY[0x1E69E99E0];
            v47 = v35;
            v48 = v36;
            v49 = v28;
            reply_port = mig_get_reply_port();
            *&buf.msgh_bits = 2147489043;
            buf.msgh_remote_port = ServerPort;
            buf.msgh_local_port = reply_port;
            *&buf.msgh_voucher_port = 0x9D5500000000;
            if (MEMORY[0x1EEE9AC50])
            {
              voucher_mach_msg_set(&buf);
              msgh_local_port = buf.msgh_local_port;
            }

            else
            {
              msgh_local_port = reply_port;
            }

            v39 = mach_msg(&buf, 3, 0x40u, 0x2Cu, msgh_local_port, 0, 0);
            if ((v39 - 268435458) <= 0xE && ((1 << (v39 - 2)) & 0x4003) != 0)
            {
              mig_put_reply_port(buf.msgh_local_port);
            }

            else if (v39)
            {
              mig_dealloc_reply_port(buf.msgh_local_port);
            }

            else if (buf.msgh_id != 40377 || (buf.msgh_bits & 0x80000000) != 0 || buf.msgh_size != 36 || buf.msgh_remote_port || HIDWORD(v43))
            {
              mach_msg_destroy(&buf);
            }
          }

          goto LABEL_71;
        }

        v8 = *(this + 20);
LABEL_36:
        v23 = (v10 - v8);
        v24 = &v23[v8];
        v25 = &v23[v8 + 24];
        v26 = v9 - v25;
        if (v9 != v25)
        {
          memmove(&v23[v8], v25, v9 - v25);
        }

        v22 = &v24[v26];
        *(this + 21) = &v24[v26];
        goto LABEL_39;
      }
    }

    else
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v12 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.msgh_bits) = 0;
        _os_log_impl(&dword_183AA6000, v12, OS_LOG_TYPE_DEFAULT, "CADisplayTimingsControl too many reasons.", &buf, 2u);
      }
    }

LABEL_71:
    os_unfair_lock_unlock(this + 34);
  }
}

void CA::Display::DisplayLink::unref(atomic_uint *this)
{
  os_unfair_lock_lock(&CA::Display::DisplayLink::_list_lock);
  add = atomic_fetch_add(this + 10, 0xFFFFFFFF);
  if (this && add == 1)
  {
    (*(*this + 8))(this);
  }

  os_unfair_lock_unlock(&CA::Display::DisplayLink::_list_lock);
}

void CAAnimation_getter(CA::Transaction *a1, int a2, const CGAffineTransform *a3, CA::Mat4Impl *this)
{
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v8)
  {
    v8 = CA::Transaction::create(a1);
  }

  v9 = *(v8 + 29);
  *(v8 + 29) = v9 + 1;
  if (!v9)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v10 = *(a1 + 1);
  if (v10)
  {
    v11 = CA::AttrList::get(v10, a2, a3, this);
    CA::Transaction::unlock(v8);
    if (v11)
    {
      return;
    }
  }

  else
  {
    CA::Transaction::unlock(v8);
  }

  Class = object_getClass(a1);

  CAObject_defaultValueForAtom(Class, a2, a3, this);
}

void CAAnimation_setter(uint64_t a1, const void *a2, int a3, unsigned __int8 *a4)
{
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v8)
  {
    v8 = CA::Transaction::create(a1);
  }

  if (*(a1 + 16))
  {
    [MEMORY[0x1E695DF30] raise:@"CAAnimationImmutable" format:{@"attempting to modify read-only animation %@", a1}];
  }

  String = CAAtomGetString(a2);
  [a1 willChangeValueForKey:String];
  v10 = *(v8 + 29);
  *(v8 + 29) = v10 + 1;
  if (!v10)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v11 = *(a1 + 8);
  if (!v11)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v11 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  }

  *(a1 + 8) = CA::AttrList::set(v11, a2, a3, a4);
  CA::Transaction::unlock(v8);
  [a1 didChangeValueForKey:String];
  if (a2 > 603)
  {
    if ((a2 - 604) >= 2 && a2 != 705 && a2 != 671)
    {
      return;
    }
  }

  else if (a2 > 210)
  {
    if (a2 != 211 && a2 != 250)
    {
      return;
    }
  }

  else if (a2 != 56 && a2 != 65)
  {
    return;
  }

  CAMediaTimingInvalidate(a1);
}

void CAMediaTimingInvalidate(uint64_t a1)
{
  if (a1 && timing_cache)
  {
    os_unfair_lock_lock(&timing_lock);
    x_hash_table_remove(timing_cache, a1 ^ 0x8000000000000000);

    os_unfair_lock_unlock(&timing_lock);
  }
}

uint64_t x_hash_table_remove(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  if ((*(a1 + 80) & 2) != 0)
  {

    return x_hash_table_remove_ptr(a1, a2);
  }

  v4 = (*(a1 + 32))(a2);
  v5 = (*(a1 + 16) + 8 * (*(a1 + 8) & v4));
  v6 = *v5;
  if (!*v5)
  {
    return 0;
  }

  v7 = v4;
  while (v6[1] != v7)
  {
LABEL_8:
    v5 = v6;
    v6 = *v6;
    if (!v6)
    {
      return 0;
    }
  }

  if ((*(a1 + 40))(v6[2], a2))
  {
    v6 = *v5;
    goto LABEL_8;
  }

  *v5 = *v6;
  v8 = v6[3];
  v10 = *(a1 + 48);
  if (v10)
  {
    v10(v6[2]);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    v11(v8);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    *v6 = *(v12 + 8);
    *(v12 + 8) = v6;
  }

  else
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v6);
  }

  --*(a1 + 24);
  return v8;
}

void CA::Layer::add_animation(atomic_uint *this, CAAnimation *a2, __CFString *a3)
{
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v6)
  {
    v6 = CA::Transaction::create(this);
  }

  a2->_flags |= 1u;
  v7 = v6[29];
  v6[29] = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v27 = *(this + 35);
  v8 = v27;
  v9 = [(__CFString *)a3 hash];
  v10 = 0;
  if (v27)
  {
    v11 = &v27;
    do
    {
      if (*(v8 + 3) == v9 && [*(v8 + 2) isEqualToString:a3])
      {
        if ((v8[57] & 1) == 0 && (v8[68] & 1) == 0 && (v8[69] & 1) == 0 && !*(v8 + 6))
        {
          *v11 = *v8;
          schedule_stop_callback(v8, &animation_state);
          free_non_deferred_animation(v8, 0);
          v10 = 1;
          goto LABEL_18;
        }

        v10 = 1;
        v8[61] = 1;
      }

      v11 = v8;
      v8 = *v8;
    }

    while (v8);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v8 = malloc_type_zone_malloc(malloc_zone, 0x50uLL, 0x165299FDuLL);
LABEL_18:
  *(v8 + 1) = CFRetain(a2);
  if (a3)
  {
    v12 = CFRetain(a3);
  }

  else
  {
    v12 = 0;
  }

  *(v8 + 2) = v12;
  *(v8 + 3) = v9;
  *(v8 + 4) = 0;
  *(v8 + 10) = atomic_fetch_add(CA::Layer::add_animation(CAAnimation *,__CFString const*)::counter, 1u) + 1;
  v8[56] = [(CAAnimation *)a2 isRemovedOnCompletion];
  *(v8 + 57) = 0;
  v8[61] = 0;
  v8[62] = v10 & 1;
  *(v8 + 18) = -892679478;
  v13 = [*(v8 + 1) _propertyFlagsForLayer:*(this + 2)];
  v8[64] = v13 & 1;
  v8[63] = (v13 & 2) != 0;
  v8[65] = (v13 & 4) != 0;
  v8[66] = (v13 & 8) != 0;
  v8[67] = (v13 & 0x10) != 0;
  if (((v13 >> 1) & 1) == 0)
  {
    goto LABEL_28;
  }

  if ((v13 & 4) != 0)
  {
    atomic_fetch_or(this + 1, 0x1000000u);
    if ((v8[63] & 1) == 0 || (v8[66] & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if ((v13 & 8) == 0)
  {
    goto LABEL_28;
  }

  atomic_fetch_or(this + 1, 0x800000u);
LABEL_28:
  v14 = [(CAAnimation *)a2 delegate];
  if (v14)
  {
    v15 = lookup_delegate_methods(v6, v14);
    v8[68] = (v15 & 0x40) != 0;
    v8[69] = v15 < 0;
  }

  else
  {
    *(v8 + 34) = 0;
  }

  v16 = v6 + 26;
  v17 = v6 + 26;
  while (1)
  {
    v17 = *v17;
    if (!v17)
    {
      break;
    }

    if (*(v17 + 1))
    {
      while (1)
      {
        v16 = *v16;
        if (!v16)
        {
          break;
        }

        v17 = v16[1];
        if (v17)
        {
          goto LABEL_38;
        }
      }

      v17 = 0;
LABEL_38:
      atomic_fetch_add(v17, 1u);
      break;
    }
  }

  *(v8 + 6) = v17;
  v18 = v27;
  if (!v27)
  {
    v27 = v8;
    *v8 = 0;
    goto LABEL_62;
  }

  v19 = CAMediaTimingCopyRenderTiming(a2);
  v20 = &v27;
  while (1)
  {
    v21 = v18;
    v22 = CAMediaTimingCopyRenderTiming(*(v18 + 8));
    v23 = 0.0;
    v24 = 0.0;
    if (v19)
    {
      v24 = *(v19 + 40);
    }

    if (v22)
    {
      v23 = *(v22 + 40);
    }

    if (v24 >= v23)
    {
      if (v24 <= v23)
      {
        v25 = *(v8 + 10) < *(v18 + 40);
        if (!v22)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v25 = 0;
        if (!v22)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      v25 = 1;
      if (!v22)
      {
        goto LABEL_54;
      }
    }

    if (atomic_fetch_add((v22 + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v22 + 16))(v22);
    }

LABEL_54:
    if (v25)
    {
      break;
    }

    v18 = *v21;
    v20 = v21;
    if (!*v21)
    {
      v26 = 0;
      goto LABEL_59;
    }
  }

  v26 = *v20;
  v21 = v20;
LABEL_59:
  *v8 = v26;
  *v21 = v8;
  if (v19 && atomic_fetch_add((v19 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v19 + 16))(v19);
  }

LABEL_62:
  CA::Layer::set_animations(this, v27);
  CA::Layer::mark_animations(this, v6, 1);

  CA::Transaction::unlock(v6);
}

void CA::Layer::mark_animations(CA::Layer *this, CA::Transaction *a2, int a3)
{
  v4 = a3 == 0;
  if (a3)
  {
    v5 = 2099210;
  }

  else
  {
    v5 = 2099208;
  }

  if (v4)
  {
    v6 = 2064;
  }

  else
  {
    v6 = 2068;
  }

  CA::Layer::mark(this, a2, v5, v6);
  if (!**(a2 + 15))
  {

    CA::Transaction::ensure_implicit(a2, 1);
  }
}

void CA::Layer::set_animations(void *value, uint64_t a2)
{
  if ((*(value + 55) & 0x10) == 0)
  {
    v4 = value[35];
    if (!a2 || v4)
    {
      if (!a2 && v4 && non_visible_animating_layers)
      {
        CFSetRemoveValue(non_visible_animating_layers, value);
      }
    }

    else
    {
      add_non_visible_animating_layer(value);
    }
  }

  value[35] = a2;
}

uint64_t CAObject_needsDisplayForKey(objc_class *a1, int a2)
{
  result = classDescription(a1);
  if (result)
  {
    return *(result + 30) && CAAtomIndexInArray(*(result + 30), *(result + 40), a2) != -1;
  }

  return result;
}

uint64_t CAObject_needsLayoutForKey(objc_class *a1, int a2)
{
  result = classDescription(a1);
  if (result)
  {
    return *(result + 28) && CAAtomIndexInArray(*(result + 28), *(result + 32), a2) != -1;
  }

  return result;
}

uint64_t animation_property_flags(__CFString *a1, CALayer *a2)
{
  AtomInKeyPath = CAInternFirstAtomInKeyPath(a1);
  if (!AtomInKeyPath)
  {
    return 0;
  }

  v5 = AtomInKeyPath;
  if ([(CALayer *)a2 _renderLayerDefinesProperty:AtomInKeyPath])
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  Class = object_getClass(a2);
  if (CAObject_needsLayoutForKey(Class, v5))
  {
    v6 |= 4u;
  }

  if (CAObject_needsDisplayForKey(Class, v5))
  {
    v8 = v6 | 8;
  }

  else
  {
    v8 = v6;
  }

  if (v5 == 694)
  {
    [(__CFString *)a1 rangeOfString:@"."];
    if (v9)
    {
      return v8;
    }

    else
    {
      return v8 | 0x10;
    }
  }

  return v8;
}

uint64_t CAInternFirstAtomInKeyPath(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFStringFind(a1, @".", 0);
  if (v2.length >= 1)
  {
    v8.length = v2.location;
    v8.location = 0;
    v3 = CFStringCreateWithSubstring(0, a1, v8);
    if (v3)
    {
      v4 = v3;
      v5 = CAInternAtom(v3, 0);
      CFRelease(v4);
      return v5;
    }

    return 0;
  }

  return CAInternAtom(a1, 0);
}

_DWORD *CA::Transaction::set_BOOL_value(CA::Transaction *this, int a2, unsigned int a3)
{
  if (a3 >= 0x20)
  {
    __assert_rtn("set_BOOL_value", "CATransactionInternal.mm", 1362, "key < (CHAR_BIT * sizeof (Level::_BOOL_values))");
  }

  v3 = a3;
  if (!**(this + 15))
  {
    CA::Transaction::ensure_implicit(this, 1);
  }

  result = *(this + 13);
  if (!result)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x20uLL, 0xDEEC3011uLL);
    *(this + 13) = result;
  }

  v7 = 1 << v3;
  if (a2)
  {
    v8 = result[6] | v7;
  }

  else
  {
    v8 = result[6] & ~v7;
  }

  result[6] = v8;
  result[7] |= v7;
  return result;
}

void CA::Layer::set_delegate(CA::Layer *this, objc_object *a2, int a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = CA::Transaction::ensure_compat(this);
  v7 = *(v6 + 29);
  *(v6 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  if (X::Weak<objc_object *>::operator==(this + 128, a2))
  {
    v9 = this + 40;
  }

  else
  {
    v11[0] = 0;
    CA::Layer::begin_change(this, v6, @"delegate", v11, v8);
    v9 = CA::Layer::writable_state(this, v6);
    CA::Layer::State::set_delegate(v9, v6, a2, a3);
    CA::Layer::end_change(this, v6, 182, @"delegate", v11[0]);
  }

  if ((v9[19] & 0x40) == 0)
  {
    v10 = CA::Layer::writable_state(this, v6);
    *(v10 + 4) |= 0x40000000u;
  }

  CA::Transaction::unlock(v6);
}

BOOL X::Weak<objc_object *>::operator==(uint64_t a1, id a2)
{
  if (*(a1 + 8) == 1)
  {
    WeakRetained = objc_loadWeakRetained(a1);
  }

  else
  {
    WeakRetained = *a1;
  }

  v4 = WeakRetained == a2;

  return v4;
}

uint64_t CA::Layer::State::set_delegate(id *this, CA::Transaction *a2, objc_object *a3, int a4)
{
  result = X::Weak<objc_object *>::operator==((this + 11), a3);
  if ((result & 1) == 0)
  {
    result = X::WeakDetails::Ptr::set(this + 11, a3, a4);
    if (a3)
    {
      result = lookup_delegate_methods(a2, a3);
      if ((result & 0x100) != 0)
      {
        v9 = this[2] & 0xF81FFFFF | ((result & 0x3F) << 21) | 0x8000000;
      }

      else
      {
        v9 = this[2] & 0xF01FFFFF | ((result & 0x3F) << 21) & 0xF7FFFFFF;
      }
    }

    else
    {
      v9 = this[2] & 0xF01FFFFF;
    }

    *(this + 4) = v9;
  }

  return result;
}

uint64_t lookup_delegate_methods(CA::Transaction *a1, objc_object *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = *(a1 + 29);
  *(a1 + 29) = v5 + 1;
  if (!v5)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v6 = lookup_delegate_methods(CA::Transaction *,objc_object *)::table;
  if (!lookup_delegate_methods(CA::Transaction *,objc_object *)::table)
  {
    lookup_delegate_methods(CA::Transaction *,objc_object *)::table = x_hash_table_new_(0, 0, 0, 0, 0, 0);
    v7 = "actionForLayer:forKey:";
    v8 = &lookup_delegate_methods(CA::Transaction *,objc_object *)::selectors;
    do
    {
      *v8++ = sel_registerName(v7);
      v9 = &v7[strlen(v7)];
      v10 = *(v9 + 1);
      v7 = v9 + 1;
    }

    while (v10);
    v6 = lookup_delegate_methods(CA::Transaction *,objc_object *)::table;
  }

  v17[0] = 0;
  v11 = x_hash_table_lookup(v6, v4, v17);
  if (!v17[0] || (v12 = v11, (v11 & 0x200) != (v4 == a2) << 9))
  {
    v13 = 0;
    v14 = 1;
    LODWORD(v12) = (v4 == a2) << 9;
    do
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v12 = v15 | v12;
      v14 *= 2;
      v13 += 8;
    }

    while (v13 != 72);
    hash_table_modify(lookup_delegate_methods(CA::Transaction *,objc_object *)::table, v4, v12, 0);
  }

  CA::Transaction::unlock(a1);
  return v12;
}

void CA::Layer::set_bit(CA::Transaction *a1, unsigned int a2, int a3, int a4, int a5, unint64_t a6, uint64_t a7)
{
  v30 = *MEMORY[0x1E69E9840];
  v14 = CA::Transaction::ensure_compat(a1);
  v15 = *(v14 + 29);
  *(v14 + 29) = v15 + 1;
  if (!v15)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v16 = a3 >> 5;
  v17 = *(a1 + (a3 >> 5) + 11);
  v18 = 1 << a3;
  if (((v17 & v18) != 0) == a5)
  {
    v20 = a1 + 40;
  }

  else
  {
    v29.isa = 0;
    String = CAAtomGetString(a2);
    CA::Layer::begin_change(a1, v14, String, &v29, v19);
    v20 = CA::Layer::writable_state(a1, v14);
    v21 = &v20[4 * v16];
    if (a5)
    {
      v22 = *(v21 + 1) | v18;
    }

    else
    {
      v22 = *(v21 + 1) & ~v18;
    }

    *(v21 + 1) = v22;
    if (a7 & 1 | a6)
    {
      v23 = (a1 + (a7 >> 1));
      if (a7)
      {
        a6 = *(*v23 + a6);
      }

      (a6)(v23, v14);
    }

    CA::Layer::end_change(a1, v14, a2, String, v29.isa);
  }

  v24 = a4 >> 5;
  v25 = *&v20[4 * (a4 >> 5) + 4];
  v26 = 1 << a4;
  if ((v25 & v26) == 0)
  {
    v27 = CA::Layer::writable_state(a1, v14);
    *&v27[4 * v24 + 4] |= v26;
  }

  CA::Transaction::unlock(v14);
}

void CA::Layer::getter(CA::Transaction *a1, unsigned int a2, const CGAffineTransform *a3, id *a4)
{
  v8 = CA::Transaction::ensure_compat(a1);
  v9 = *(v8 + 29);
  *(v8 + 29) = v9 + 1;
  if (!v9)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v10 = *(a1 + 9);
  if (v10 && CA::AttrList::get(v10, a2, a3, a4))
  {
    if ((a3 & 0xFFFFFFFE) == 2)
    {
      v11 = *a4;
    }
  }

  else
  {
    CA::Layer::default_value(a1, a2, a3, a4);
  }

  CA::Transaction::unlock(v8);
}

void CA::Layer::remove_from_superlayer(CALayer **this)
{
  v2 = CA::Transaction::ensure_compat(this);
  if ((*(this + 1) & 0x60000) != 0)
  {
    [MEMORY[0x1E695DF30] raise:@"CALayerInvalidTree" format:{@"expecting model layer not copy: %@", this[2]}];
  }

  v3 = this[2];
  v4 = *(v2 + 29);
  *(v2 + 29) = v4 + 1;
  if (!v4)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v5 = CA::Layer::retain_parent(this, v2);
  v8 = v5;
  if (v5)
  {
    CA::Layer::remove_sublayer(v5, v2, v3, v6, v7);
  }

  CA::Transaction::unlock(v2);
  if (v8)
  {
    CA::Transaction::release_object(v2, v3);
    while (1)
    {
      v9 = *v8;
      if (!*v8)
      {
        break;
      }

      v10 = *v8;
      atomic_compare_exchange_strong(v8, &v10, v9 - 1);
      if (v10 == v9)
      {
        if (v9 == 1)
        {
          CA::Layer::destroy(v8);
          CA::Layer::~Layer(v8);
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          v11 = malloc_zone;

          malloc_zone_free(v11, v8);
        }

        return;
      }
    }
  }
}

void sub_183B3DE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  X::Ref<CA::Layer>::~Ref(va);
  _Unwind_Resume(a1);
}

CA::Layer *CA::Layer::sublayers(CA::Layer *this)
{
  while (1)
  {
    v1 = this;
    v12[1] = *MEMORY[0x1E69E9840];
    if ((*(this + 1) & 0x60000) == 0)
    {
      return *(v1 + 3);
    }

    if ((*(this + 1) & 0x60000) == 0x20000)
    {
      break;
    }

    v7 = CA::Transaction::ensure_compat(this);
    this = CA::Layer::model_layer(v1, v7);
    if (!this)
    {
      return this;
    }
  }

  this = *(this + 3);
  if (!this)
  {
    v2 = CA::Transaction::ensure_compat(0);
    this = CA::Layer::model_layer(v1, v2);
    if (this)
    {
      v3 = *(this + 3);
      if (!v3)
      {
        return 0;
      }

      v4 = v3[2];
      v5 = 8 * v4;
      if ((8 * v4) > 0x1000)
      {
        v6 = malloc_type_malloc(8 * v4, 0x80040B8603338uLL);
        if (!v6)
        {
          return *(v1 + 3);
        }
      }

      else
      {
        MEMORY[0x1EEE9AC00](this);
        v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v6, 8 * v4);
      }

      if (v4)
      {
        v8 = 0;
        v9 = 0;
        do
        {
          v10 = v3 + 1;
          if (v3[2] != 1 || v3[3])
          {
            v10 = *v10;
          }

          v11 = CA::Layer::presentation_layer(*(v10[v8] + 16), v2);
          if (v11)
          {
            *&v6[8 * v9++] = v11;
          }

          ++v8;
        }

        while (v4 != v8);
      }

      else
      {
        v9 = 0;
      }

      *(v1 + 3) = [[CALayerArray alloc] initWithLayers:v6 count:v9 retain:1];
      if (v5 > 0x1000)
      {
        free(v6);
      }

      return *(v1 + 3);
    }
  }

  return this;
}

BOOL CA::Layer::thread_flags_match_(CA::Layer *this, int a2)
{
  v4 = CA::Transaction::ensure_compat(this);
  v5 = v4[28];
  if ((v5 & 0x80000000) != 0 || (v6 = *(this + v5 + 68)) == 0)
  {
    v6 = *CA::Layer::thread_flags_(this, v4);
  }

  return (v6 & a2) != 0;
}

uint64_t CA::Transaction::add_commit_handler(uint64_t a1, const void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v3 = a3;
  v6 = *(*(a1 + 120) + 56);
  v7 = a3 + 1;
  if ((a3 + 1) > 6)
  {
    v8 = -1;
  }

  else
  {
    v8 = dword_183E37978[v7];
  }

  if ((v6 + 1) >= 7)
  {
    goto LABEL_32;
  }

  if (v6 == 2)
  {
    if (v7 < 7)
    {
      if (a3 != 2)
      {
        if (a3 != 5)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      goto LABEL_17;
    }

LABEL_32:
    __assert_rtn("order_of_phase", "CATransactionInternal.mm", 1678, "phase_is_valid (phase)");
  }

  if (dword_183E24830[(v6 + 1)] <= v8)
  {
LABEL_16:
    v9 = 1;
    goto LABEL_28;
  }

  if (a3 == -1 || a3 == 5)
  {
LABEL_15:
    [MEMORY[0x1E695DF30] raise:@"CATransaction" format:{@"cannot add handler to %i from %i", a3, v6}];
    v9 = 0;
LABEL_28:
    v13 = *(a1 + 116);
    *(a1 + 116) = v13 + 1;
    if (!v13)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    v14 = CA::Transaction::commit_handlers_for_phase(*(a1 + 120), v3);
    v15 = *v14;
    v16 = _Block_copy(a2);
    *v14 = x_list_prepend(v15, v16);
    CA::Transaction::unlock(a1);
    return v9;
  }

LABEL_17:
  if (x_log_get_api::once[0] != -1)
  {
    dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
  }

  v10 = x_log_get_api::log;
  if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
  {
    *keyExistsAndHasValidFormat = 67109376;
    v19 = v3;
    v20 = 1024;
    v21 = v6;
    _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, "cannot add handler to %i from %i - dropping", keyExistsAndHasValidFormat, 0xEu);
  }

  keyExistsAndHasValidFormat[0] = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CADebugTxHandlers", @"com.apple.coreanimation", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0] && AppBooleanValue)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v12 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_FAULT))
    {
      *keyExistsAndHasValidFormat = 67109376;
      v19 = v3;
      v20 = 1024;
      v21 = v6;
      _os_log_fault_impl(&dword_183AA6000, v12, OS_LOG_TYPE_FAULT, "CoreAnimation: cannot add handler to %i from %i", keyExistsAndHasValidFormat, 0xEu);
    }
  }

  v9 = 0;
  if (v6 != v3)
  {
    goto LABEL_28;
  }

  return v9;
}

uint64_t CA::Transaction::commit_handlers_for_phase(uint64_t a1, unsigned int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2 >= 6)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v4 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "invalid commit handler phase! Defaulting to pre-commit.\n", v6, 2u);
    }

    v3 = 80;
  }

  else
  {
    v3 = qword_183E24800[a2];
  }

  return a1 + v3;
}

void *x_list_prepend(uint64_t a1, uint64_t a2)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0x10uLL, 0xA0040BD48D6D6uLL);
  *result = a2;
  result[1] = a1;
  return result;
}

double CA::Layer::default_value(id *this, unsigned int a2, const CGAffineTransform *a3, uint64_t a4)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a2 != 692 && (this[7] & 0x20000) != 0 && (v11[0] = 0, CA::Layer::style_value(this, a2, v11)))
  {
    v10 = v11[0];

    return CAValueObjCUnbox(v10, a3, a4);
  }

  else
  {
    Class = object_getClass(this[2]);

    CAObject_defaultValueForAtom(Class, a2, a3, a4);
  }

  return result;
}

void CA::Layer::set_bit_int(CA::Layer *this, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v12 = CA::Transaction::ensure_compat(this);
  v13 = *(v12 + 29);
  *(v12 + 29) = v13 + 1;
  if (!v13)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v14 = a6 & a5;
  v15 = a3 >> 5;
  if (((*(this + v15 + 11) >> a3) & a5) == (a6 & a5))
  {
    v16 = this + 40;
  }

  else
  {
    v22[0] = 0;
    String = CAAtomGetString(a2);
    CA::Layer::begin_change(this, v12, String, v22, v18);
    v16 = CA::Layer::writable_state(this, v12);
    *&v16[4 * v15 + 4] = *&v16[4 * v15 + 4] & ~(a5 << (a3 & 0x1F)) | (v14 << (a3 & 0x1F));
    CA::Layer::end_change(this, v12, a2, String, v22[0]);
  }

  v19 = a4 >> 5;
  v20 = 1 << a4;
  if ((*&v16[4 * v19 + 4] & v20) == 0)
  {
    v21 = CA::Layer::writable_state(this, v12);
    *&v21[4 * v19 + 4] |= v20;
  }

  CA::Transaction::unlock(v12);
}

void CA::Layer::remove_sublayer(CA::Layer *this, CA::Transaction *a2, CALayer *a3, uint64_t a4, objc_object **a5)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (*(this + 4) == a3)
  {
    v21[0] = 0;
    CA::Layer::begin_change(this, a2, @"mask", v21, a5);
    layer = a3->_attr.layer;
    v13 = CA::Layer::ancestor_context_id(this, a2);
    CA::Layer::update_removed_sublayer(layer, a2, v13);
    *(this + 4) = 0;
    v14 = v21[0];
    v15 = this;
    v16 = a2;
    v17 = 503;
    v18 = @"mask";
  }

  else
  {
    v8 = *(this + 3);
    if (!v8)
    {
      return;
    }

    v21[0] = 0;
    CA::Layer::begin_change(this, a2, @"sublayers", v21, a5);
    v9 = a3->_attr.layer;
    v10 = CA::Layer::ancestor_context_id(this, a2);
    CA::Layer::update_removed_sublayer(v9, a2, v10);
    v11 = v8[2];
    if (v11 == 1)
    {
      CA::Transaction::release_object(a2, v8);
      *(this + 3) = 0;
    }

    else
    {
      if (v11)
      {
        v19 = 0;
        while (*(v8[1] + 8 * v19) != a3)
        {
          if (v11 == ++v19)
          {
            LODWORD(v19) = -1;
            break;
          }
        }

        v20 = v19;
      }

      else
      {
        v20 = 0xFFFFFFFFLL;
      }

      CALayerArrayRemoveValue(v8, v20);
    }

    v14 = v21[0];
    v18 = @"sublayers";
    v15 = this;
    v16 = a2;
    v17 = 694;
  }

  CA::Layer::end_change(v15, v16, v17, v18, v14);
}

uint64_t CA::Layer::update_removed_sublayer(CA::Layer *this, CA::Transaction *a2, int a3)
{
  v6 = *(a2 + 29);
  *(a2 + 29) = v6 + 1;
  if (!v6)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  *(this + 1) = 0;
  *(this + 67) = a3;
  CA::Transaction::unlock(a2);
  CA::Layer::mark_visible(this, a2, 0);
  result = CA::Transaction::add_root(a2, this);
  if (((*(this + 1) ^ (*(this + 12) << 9)) & 0x400000) != 0)
  {

    return CA::Layer::toggle_flipped(this, a2);
  }

  return result;
}

void CA::Transaction::release_object(CA::Transaction *this, CFTypeRef cf)
{
  if (*(this + 29))
  {
    *(this + 4) = x_list_prepend(*(this + 4), cf);
  }

  else
  {

    CFRelease(cf);
  }
}

void CA::release_objects(void *a1)
{
  v1 = a1;
  v2 = a1;
  do
  {
    CFRelease(*v2);
    v2 = v2[1];
  }

  while (v2);
  if (v1)
  {
    do
    {
      v3 = v1[1];
      free(v1);
      v1 = v3;
    }

    while (v3);
  }
}

CA::AttrList *CA::AttrList::remove(CA::AttrList *this, const void *a2)
{
  v2 = a2;
  v3 = this;
  v4 = *(this + 2) & 7;
  if (v4)
  {
    do
    {
      v5 = CA::AttrList::copy_(v3);
      *(v3 + 1) = *(v3 + 1) & 0xFFFFFFFFFFFFFFF8 | (v4 - 1);
      v3 = v5;
      v4 = *(v5 + 2) & 7;
    }

    while (v4);
  }

  else
  {
    v5 = this;
  }

  v6 = *v5;
  if (!*v5)
  {
    goto LABEL_18;
  }

  v7 = *(v6 + 2);
  if ((v7 & 0xFFFFFF) == v2)
  {
    *v5 = *v6;
LABEL_8:
    if ((*(v6 + 2) & 0x80000000) != 0)
    {
LABEL_16:
      CA::AttrList::splice_shared_node(v5, v6);
    }

    else
    {
      CA::AttrList::Node::free_memory(v6, a2);
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v6);
    }
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = v6;
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      v8 |= v7 < 0;
      v7 = *(v6 + 2);
      if ((v7 & 0xFFFFFF) == v2)
      {
        *v9 = *v6;
        if ((v8 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }
    }
  }

  if (!*v5)
  {
LABEL_18:
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v5);
    return 0;
  }

  return v5;
}

unint64_t CADisplayTimerAlignPhase(uint64_t a1, void *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a2[2];
  if (!a2[1])
  {
    if (v4)
    {
      v14 = 0;
      *(a1 + 256) = v4;
      return v14;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 16));
  v7 = *(a1 + 256);
  v8 = *(a1 + 264);
  v9 = a2[1];
  v10 = vcvtad_u64_f64((v9 - v8) / v7) % 0xF0;
  v11 = *a2 % 0xF0uLL;
  v12 = v11 + 240;
  if (v10 <= v11)
  {
    v12 = *a2 % 0xF0uLL;
  }

  v13 = v12 - v10;
  if (v10 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v9 - v8) % v7);
  v16 = v7 - v15;
  if (v15 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = a2[2];
  if (!v8 || v17 >= v18 >> 7 || *(a1 + 248) != a3 || v14)
  {
    v19 = vcvtad_u64_f64(*(a1 + 208) / v18);
    v20 = *(a1 + 216);
    if (v19)
    {
      *(a1 + 216) = v18 * v19;
      *(a1 + 256) = v18;
      *(a1 + 264) = v9 - v11 * v18;
      *(a1 + 248) = a3;
    }

    else
    {
      v33 = a2[2];
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v31 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 208);
        *buf = 134218240;
        *&buf[4] = v32;
        *&buf[12] = 2048;
        *&buf[14] = v33;
        _os_log_error_impl(&dword_183AA6000, v31, OS_LOG_TYPE_ERROR, "CADisplayTimerAlignPhase: unexpected state (interval:%llx, heartbeat:%llx)", buf, 0x16u);
      }
    }

    v21 = *(a1 + 216);
    if (BYTE11(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
      v21 = *(a1 + 216);
    }

    v22 = *(a1 + 232) - v20 + (v21 >> 1);
    v23 = mach_absolute_time();
    if (v22 <= v23)
    {
      v22 = v23;
    }

    v24 = *(a1 + 264);
    v25 = *(a1 + 216);
    *buf = 0;
    *&buf[8] = v24;
    *&buf[16] = v25;
    v34 = 0;
    phase = get_phase(buf, v22, &v34);
    v27 = v22 - phase + v34;
    if (!phase)
    {
      v27 = v22;
    }

    *(a1 + 232) = v27;
    mk_timer_cancel();
    *(a1 + 200) = 1;
    v28 = *(a1 + 248);
    if (*(a1 + 232) <= v28)
    {
      v28 = 0;
    }

    *(a1 + 240) = v28;
    mk_timer_arm_leeway();
    *(a1 + 200) = 0;
    v29 = *(a1 + 192);
    if (v29)
    {
      v29(a1, 1, *(a1 + 232), *(a1 + 216), *(a1 + 184));
    }
  }

  pthread_mutex_unlock((a1 + 16));
  return v14;
}

unint64_t get_phase(unint64_t *a1, unint64_t a2, unint64_t *a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v3 = 0;
  }

  v6 = 240 * (v3 / 0xF0);
  v7 = v3 % 0xF0;
  v8 = a1[2];
  *a1 = v6;
  a1[1] = v4 - v8 * v7;
  v9 = *a3;
  if (!*a3)
  {
    goto LABEL_10;
  }

  v10 = round(v9 / v8) * v8;
  v8 = v10;
  v11 = v10 - v9;
  if (v9 >= v10)
  {
    v11 = v9 - v10;
  }

  if (v11 <= v9 >> 5)
  {
LABEL_10:
    *a3 = v8;
    v12 = a1[1];
    v13 = a2 - v12;
    if (v12 >= a2)
    {
      v13 = v12 - a2;
    }

    v14 = v13 % v8;
    if (v14)
    {
      v15 = v8 - v14;
      if (v12 >= a2)
      {
        return v15;
      }

      else
      {
        return v14;
      }
    }

    else
    {
      return 0;
    }
  }

  return a2;
}

uint64_t CA::WindowServer::IOMFBServer::timer_callback(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v22[3] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    CA::WindowServer::IOMFBDisplay::timing_reference(v22, *(a5 + 96), 1);
    if (*(*(a5 + 96) + 29529) == 1)
    {
      v9 = 0;
      if ((*(*(a5 + 96) + 29583) & 1) == 0 && (byte_1ED4E98A4 & 1) == 0)
      {
        v9 = CAHostTimeWithTime(0.0005);
      }
    }

    else
    {
      v9 = 0;
    }

    a4 += CADisplayTimerAlignPhase(a1, v22, v9);
  }

  v10 = CA::WindowServer::IOMFBDisplay::timing_granularity(*(a5 + 96), 1);
  v11 = (*(**(a5 + 96) + 784))(*(a5 + 96));
  result = *(a5 + 96);
  if ((*(result + 640) & 0x100) != 0)
  {
    v13 = (*(*result + 144))(result);
    if (!v13)
    {
      v13 = (*(**(a5 + 96) + 800))(*(a5 + 96));
    }

    if (v13 != *(a5 + 1372))
    {
      pthread_mutex_lock((a5 + 856));
      CA::WindowServer::IOMFBServer::refresh_timer_interval(a5);
      pthread_mutex_unlock((a5 + 856));
    }

    v14 = *(a5 + 96);
    v15 = CATimeWithHostTime(a2);
    os_unfair_lock_lock((v14 + 29076));
    v16 = *(v14 + 29080);
    v17 = v14 + 29088 + 16 * v16;
    if (*v17 == 0.0 || *(v17 + 8) != v13)
    {
      v18 = (v16 + 1) % 3uLL;
      *(v14 + 29080) = v18;
      v19 = v14 + 29088 + 16 * v18;
      *v19 = v15;
      *(v19 + 8) = v13;
    }

    os_unfair_lock_unlock((v14 + 29076));
    result = *(a5 + 96);
  }

  if ((*(result + 640) & 0x100) == 0)
  {
    goto LABEL_18;
  }

  result = (*(*result + 144))(result);
  if (!result)
  {
    if (CAPrefers60HzAPT(void)::once != -1)
    {
      dispatch_once(&CAPrefers60HzAPT(void)::once, &__block_literal_global_3);
    }

    if (CAPrefers60HzAPT(void)::enabled != 1)
    {
LABEL_18:
      v20 = ++CA::WindowServer::IOMFBServer::timer_callback(_CADisplayTimer *,unsigned long long,unsigned long long,unsigned long long,void *)::serial;
LABEL_27:

      return CA::WindowServer::IOMFBServer::vsync_callback(result, v20, a2, v11 * v10, a5);
    }

    result = 4;
  }

  v21 = result;
  if (byte_1ED4E9847 == 1)
  {
    result = kdebug_trace();
  }

  v20 = ++CA::WindowServer::IOMFBServer::timer_callback(_CADisplayTimer *,unsigned long long,unsigned long long,unsigned long long,void *)::serial;
  if (!(a4 % v21))
  {
    goto LABEL_27;
  }

  return result;
}

unint64_t CA::WindowServer::IOMFBDisplay::timing_granularity(os_unfair_lock_s *this, int a2)
{
  os_unfair_lock_lock(this + 6576);
  v4 = *&this[6580]._os_unfair_lock_opaque;
  if (v4 && ((v5 = atomic_load(v4), !a2) || (v5 & 1) != 0))
  {
    v7 = atomic_load((*&this[6580]._os_unfair_lock_opaque + 16));
  }

  else
  {
    v6 = (*(*&this->_os_unfair_lock_opaque + 776))(this);
    v7 = CAHostTimeWithTime(v6);
  }

  os_unfair_lock_unlock(this + 6576);
  return v7;
}

void CA::WindowServer::IOMFBDisplay::emit_server_timing_info(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 6576);
  CA::WindowServer::IOMFBDisplay::initialize_timings(this);
  v2 = *&this[6580]._os_unfair_lock_opaque;
  if (v2)
  {
    v3 = atomic_load(v2);
    if (v3)
    {
      atomic_load((*&this[6580]._os_unfair_lock_opaque + 52));
      atomic_load((*&this[6580]._os_unfair_lock_opaque + 64));
      atomic_load((*&this[6580]._os_unfair_lock_opaque + 80));
      v4 = atomic_load((*&this[6580]._os_unfair_lock_opaque + 32));
      if (v4 && v4 < mach_absolute_time())
      {
        atomic_load((*&this[6580]._os_unfair_lock_opaque + 56));
        atomic_load((*&this[6580]._os_unfair_lock_opaque + 72));
      }

      kdebug_trace();
    }
  }

  os_unfair_lock_unlock(this + 6576);
}

void CA::WindowServer::IOMFBDisplay::timing_reference(CA::WindowServer::IOMFBDisplay *this, uint64_t a2, int a3)
{
  os_unfair_lock_lock((a2 + 26304));
  v6 = *(a2 + 26320);
  if (v6 && ((v7 = atomic_load(v6), !a3) || (v7 & 1) != 0))
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    v8 = atomic_load((*(a2 + 26320) + 16));
    *(this + 2) = v8;
    v9 = (*(*a2 + 136))(a2);
    v10 = *(a2 + 26320);
    if (v9)
    {
      v11 = v10[4];
      v12 = v10[8];
      v13 = v10[9];
      v14 = v10[10];
      *this = v12;
      *(this + 1) = v14;
      if (v11 && v11 < mach_absolute_time())
      {
        *this = v13;
      }
    }

    else
    {
      v15 = v10[8];
      v16 = v10[10];
      *this = v15;
      *(this + 1) = v16;
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  os_unfair_lock_unlock((a2 + 26304));
}

uint64_t CA::WindowServer::IOMFBDisplay::timing_server_frame_interval(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 6576);
  v2 = *&this[6580]._os_unfair_lock_opaque;
  if (v2 && (v3 = atomic_load(v2), (v3 & 1) != 0))
  {
    v4 = atomic_load((*&this[6580]._os_unfair_lock_opaque + 32));
    if (v4 && v4 < mach_absolute_time())
    {
      v5 = 56;
    }

    else
    {
      v5 = 52;
    }

    v6 = atomic_load((*&this[6580]._os_unfair_lock_opaque + v5));
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(this + 6576);
  return v6;
}

uint64_t CA::WindowServer::IOMFBDisplay::wait_for_relbuf_info(CA::WindowServer::IOMFBDisplay *this, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  result = mach_absolute_time();
  v5 = a2 - result;
  if (a2 > result)
  {
    pthread_mutex_lock((this + 29352));
    v6 = CAHostTimeWithTime(0.00075);
    v7 = atomic_load(this + 3683);
    if (v7 + v6 <= a2)
    {
      v8.tv_sec = 0;
      v8.tv_nsec = (CATimeWithHostTime(v5) * 1000000000.0);
      pthread_cond_timedwait_relative_np((this + 29416), (this + 29352), &v8);
    }

    return pthread_mutex_unlock((this + 29352));
  }

  return result;
}

unint64_t CA::WindowServer::IOMFBServer::vbl_delta(CA::WindowServer::IOMFBServer *this)
{
  v2 = *(this + 12);
  v3 = *v2;
  if ((v2[80] & 0x100) != 0)
  {
    v6 = (*(v3 + 776))();
    v7 = CAHostTimeWithTime(v6);
    v8 = (*(**(this + 12) + 144))(*(this + 12));
    if (!v8)
    {
      v8 = (*(**(this + 12) + 800))(*(this + 12));
    }

    return v7 * v8;
  }

  else
  {
    (*(v3 + 760))();

    return CAHostTimeWithTime(v4);
  }
}

void CA::Transaction::pop(CA::Transaction *this, const void *a2)
{
  v2 = *(this + 15);
  if (!*v2)
  {
    return;
  }

  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    *v2 = 1;
LABEL_4:

    CA::Transaction::commit(this);
    return;
  }

  v4 = *(this + 13);
  *(this + 13) = *v4;
  CA::Transaction::Level::~Level(v4, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(malloc_zone, v4);
  if (*v2 == 1 && (*(v2 + 204) & 2) != 0 && *(this + 15) == (this + 136))
  {
    goto LABEL_4;
  }
}

double CA::Render::SpringAnimation::State::eval(CA::Render::SpringAnimation::State *this, double a2)
{
  v4 = *(this + 1);
  if (v4 < 1.0)
  {
    v5 = exp(-(a2 * v4) * *this);
    v6 = *(this + 3);
    v7 = __sincos_stret(*(this + 2) * a2);
    v8 = v7.__sinval * *(this + 4) + v7.__cosval * v6;
LABEL_7:
    v14 = v8 * v5;
    return 1.0 - v14;
  }

  if (v4 <= 1.0 || *(this + 40) != 1)
  {
    v5 = *(this + 3) + *(this + 4) * a2;
    v8 = exp(-(a2 * *this));
    goto LABEL_7;
  }

  v10 = *(this + 2);
  v9 = *(this + 3);
  v11 = *this * v4;
  v12 = exp(-(a2 * (v11 + v10)));
  v13 = *(this + 4);
  v14 = exp((v10 - v11) * a2) * v13 + v12 * v9;
  return 1.0 - v14;
}

CA::Transaction *CA::Transaction::begin_transaction(CA::Transaction *this)
{
  result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (result || (result = CA::Transaction::create(0), v1 = vars8, result))
  {

    return CA::Transaction::push(result, 0, 0);
  }

  return result;
}

void CA::WindowServer::IOMFBServer::relbuf_info_callback(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(*(a5 + 96) + 29549) == 1)
  {
    mach_get_times();
  }

  kdebug_trace();
  v9 = *(a5 + 96);
  os_unfair_lock_lock((v9 + 26072));
  for (i = *(v9 + 26080); i != *(v9 + 26088); ++i)
  {
    v11 = *i;
    if (**i == a2)
    {
      *(v11 + 25) = a3;
      *(v11 + 26) = a4;
      break;
    }
  }

  pthread_mutex_lock((v9 + 29352));
  atomic_store(a3, (v9 + 29464));
  pthread_cond_signal((v9 + 29416));
  pthread_mutex_unlock((v9 + 29352));

  os_unfair_lock_unlock((v9 + 26072));
}

uint64_t CA::Transaction::set_frame_begin_time(uint64_t this, double a2)
{
  v3 = *(this + 176);
  if (v3 == 0.0 || v3 > a2)
  {
    *(this + 176) = a2;
    if ((*(this + 204) & 0x20) == 0)
    {
      CAHostTimeWithTime(a2);

      return kdebug_trace();
    }
  }

  return this;
}

uint64_t CA::WindowServer::IOMFBServer::set_next_update(uint64_t a1, __int128 *a2, double a3)
{
  v15 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 856));
  v6 = *(a1 + 96);
  if (!*(v6 + 82) || !CA::WindowServer::Display::is_enabled_for_vsync_render(v6))
  {
    goto LABEL_19;
  }

  if ((*(a1 + 1446) & 2) != 0)
  {
    if (*(a1 + 1096))
    {
      goto LABEL_5;
    }

LABEL_19:
    v13 = *a2;
    v11.n128_u64[1] = *(&v13 + 1);
    v14 = *(a2 + 2);
    v11.n128_f64[0] = a3;
    CA::WindowServer::Server::set_next_update(a1, &v13, v11);
    goto LABEL_20;
  }

  if (!*(a1 + 1112))
  {
    goto LABEL_19;
  }

LABEL_5:
  if (*a2 < *(a1 + 1184) && (*a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    if (!*(a1 + 1440))
    {
      CA::WindowServer::IOMFBServer::set_vsync_enabled(a1);
    }

    *(a1 + 1440) = 3 * (*(**(a1 + 96) + 784))(*(a1 + 96));
  }

  pthread_mutex_lock((a1 + 1208));
  v8 = *a2;
  v9 = *(a2 + 1);
  *(a1 + 1200) |= *(a2 + 2);
  v10 = *(a1 + 1184);
  if (v10 >= v8)
  {
    if (v8 == 0.0 || v10 <= v8)
    {
      v9 |= *(a1 + 1192);
    }

    *(a1 + 1192) = v9;
    *(a1 + 1184) = v8;
  }

  pthread_cond_signal((a1 + 1272));
  pthread_mutex_unlock((a1 + 1208));
LABEL_20:

  return pthread_mutex_unlock((a1 + 856));
}

uint64_t CA::Render::Context::drain_deferred(uint64_t this, double a2)
{
  v2 = this;
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = *(this + 768);
  if (v3 < a2)
  {
    *(this + 768) = a2;
    v3 = a2;
  }

  v4 = *(this + 720);
  if (v4 && (*(this + 13) & 4) == 0)
  {
    v5 = 0;
    do
    {
      if (v4[2] > v3)
      {
        break;
      }

      v6 = *(v4 + 1);
      if (v6)
      {
        if (*(v6 + 24))
        {
          break;
        }
      }

      ++v5;
      v4 = *v4;
    }

    while (v4);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](this);
      v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v8, v7);
      for (i = 0; i != v5; ++i)
      {
        v10 = *(v2 + 90);
        v11 = v10[1];
        *(v2 + 90) = *v10;
        v8[i] = v10[3];
        if (v11)
        {
          v12 = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v11);
          MEMORY[0x1865EA9A0](v12, 0x10A0C408EF24B1CLL);
        }

        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v10);
      }

      CA::Render::Context::apply_streams(v2, v8, v5);
      do
      {
        this = *v8;
        if (*v8)
        {
          this = (*(*this + 8))(this);
        }

        ++v8;
        --v5;
      }

      while (v5);
    }
  }

  return this;
}

uint64_t CA::Render::Server::CmdStreamMsg::defer(uint64_t this)
{
  if (!*(this + 4168))
  {
    __assert_rtn("defer", "render-server.cpp", 1578, "is_valid ()");
  }

  v1 = this;
  v2 = this + 4096;
  if (*(this + 4176) == 1)
  {
    __assert_rtn("defer", "render-server.cpp", 1579, "!_did_run");
  }

  if ((*(this + 4177) & 1) == 0)
  {
    v3 = malloc_type_calloc(1uLL, *(*(this + 16) + 4), 0x100004027586B93uLL);
    if (!v3)
    {
      __assert_rtn("defer", "render-server.cpp", 1585, "msg");
    }

    v4 = v3;
    *(v2 + 81) = 1;
    this = memcpy(v3, *(v1 + 16), *(*(v1 + 16) + 4));
    v5 = *(v1 + 16);
    v6 = *(v1 + 24) - v5;
    *(v1 + 24) = &v4[v6];
    v7 = *(v1 + 32);
    if (v7)
    {
      *(v1 + 32) = &v4[v7 - v5];
    }

    else
    {
      v8 = *(v1 + 4168);
      if (v8)
      {
        (*(*v8 + 8))(v8);
        v5 = *(v1 + 16);
      }

      v9 = *(v5 + 4);
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v10 = malloc_type_zone_malloc(malloc_zone, 0x58uLL, 0x165299FDuLL);
      if (!v10)
      {
        *(v1 + 4168) = 0;
        __assert_rtn("defer", "render-server.cpp", 1604, "_decoder");
      }

      this = CA::Render::Decoder::Decoder(v10, *(v1 + 48), *(v1 + 8), *(v1 + 24), v9 - v6);
      *(v1 + 4168) = this;
    }

    v11 = *(v1 + 40);
    if (v11)
    {
      *(v1 + 40) = &v4[v11 - *(v1 + 16)];
    }

    *(v1 + 16) = v4;
  }

  return this;
}

uint64_t CA::Render::Server::add_callback(int a1, uint64_t a2, uint64_t a3, double a4)
{
  os_unfair_lock_lock(&CA::Render::Server::_callback_lock);
  if (!a1)
  {
    if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_23:
      os_unfair_lock_unlock(&CA::Render::Server::_callback_lock);
      CA::Render::Server::kick_server(v14);
      return 1;
    }

LABEL_16:
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v10 = malloc_type_zone_malloc(malloc_zone, 0x28uLL, 0x10A00407034790EuLL);
    *(v10 + 3) = a2;
    *(v10 + 4) = a3;
LABEL_19:
    v10[1] = a4;
    v11 = mach_absolute_time();
    v10[2] = CATimeWithHostTime(v11);
    v12 = &CA::Render::Server::_callback_list;
    do
    {
      v13 = v12;
      v12 = *v12;
    }

    while (v12 && *(v12 + 1) <= v10[1]);
    *v10 = v12;
    *v13 = v10;
    goto LABEL_23;
  }

  v8 = CA::Render::Server::_callback_list;
  if (!CA::Render::Server::_callback_list)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v9 = &CA::Render::Server::_callback_list;
  while (1)
  {
    v10 = v8;
    if (*(v8 + 24) == a2 && *(v8 + 32) == a3)
    {
      break;
    }

    v8 = *v8;
    v9 = v10;
    if (!*v10)
    {
      goto LABEL_7;
    }
  }

  if (a1 != 1 && (a1 != 3 || *(v8 + 8) >= a4))
  {
    *v9 = *v8;
LABEL_8:
    if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v10)
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v10);
      }

      goto LABEL_23;
    }

    if (v10)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  os_unfair_lock_unlock(&CA::Render::Server::_callback_lock);
  return 0;
}

void CA::Render::Server::kick_server(CA::Render::Server *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((CA::Render::Server::_kicked & 1) == 0)
  {
    v1 = pthread_self();
    if (v1 != CA::Render::Server::_thread)
    {
      v2 = CA::Render::Server::server_port(v1);
      if (v2)
      {
        CA::Render::Server::_kicked = 1;
        v6 = 0x1C00000013;
        v7 = v2;
        v8 = xmmword_183E213F0;
        v3 = mach_msg(&v6, 17, 0x1Cu, 0, 0, 0, 0);
        if (v3)
        {
          v4 = v3;
          CA::Render::Server::_kicked = 0;
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v5 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v10 = v4;
            _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "Server kick failed with error %u", buf, 8u);
          }
        }
      }
    }
  }
}

void CA::Render::Context::enqueue_command_stream(CA::Render::Context::CommandStream *)::$_0::__invoke(os_unfair_lock_s *a1, double a2)
{
  os_unfair_lock_lock(a1 + 178);
  CA::Render::Context::drain_deferred(a1, a2);
  os_unfair_lock_unlock(a1 + 178);
  if (atomic_fetch_add(&a1[2], 0xFFFFFFFF) == 1)
  {
    v4 = *(*&a1->_os_unfair_lock_opaque + 16);

    v4(a1);
  }
}

unint64_t CA::Display::DisplayLink::align_phase_locked(CA::Display::DisplayLink *this)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!*(this + 19))
  {
    return 0;
  }

  v11 = 0uLL;
  v12 = 0;
  CA::Display::DisplayTimingsControl::timing_reference(&v11, *(this + 1) + 464, 0);
  v2 = *(this + 31);
  if (v2 && *(this + 15) != *(this + 16))
  {
    (*(v2 + 16))(v2, &v11);
LABEL_15:
    v3 = 0;
    goto LABEL_16;
  }

  if (*(this + 193) == 1)
  {
    v3 = CA::Display::DisplayLink::_early_wakeup_offset;
    if (initialized[0] != -1)
    {
      v8 = CA::Display::DisplayLink::_early_wakeup_offset;
      dispatch_once_f(initialized, 0, init_debug);
      v3 = v8;
    }

    if (*&dword_1ED4E9764 == 0.0)
    {
      goto LABEL_16;
    }

    v4 = CAHostTimeWithTime(*&dword_1ED4E9764);
  }

  else
  {
    v6 = *(this + 32);
    if (!v6 || *(this + 15) == *(this + 16))
    {
      goto LABEL_15;
    }

    v4 = (*(v6 + 16))();
  }

  v3 = v4;
LABEL_16:
  v7 = *(this + 19);
  v9 = v11;
  v10 = v12;
  return CADisplayTimerAlignPhase(v7, &v9, v3);
}

void CA::Transaction::commit(CA::Transaction *this)
{
  v82 = *MEMORY[0x1E69E9840];
  if (*(this + 15) != (this + 136))
  {
    return;
  }

  v2 = 0;
  atomic_compare_exchange_strong(this + 32, &v2, 1u);
  if (v2)
  {
    return;
  }

  v3 = *(this + 15);
  v4 = mach_absolute_time();
  v5 = CATimeWithHostTime(v4);
  if (*(v3 + 176) == 0.0)
  {
    v6 = *(v3 + 184);
    if (v6 == 0.0)
    {
      v6 = *(v3 + 152);
      if (v6 == 0.0)
      {
        v6 = v5;
      }
    }

    CA::Transaction::set_frame_begin_time(*(this + 15), v6);
  }

  v75 = *(*(this + 15) + 204);
  if ((v75 & 0x20) == 0)
  {
    CAHostTimeWithTime(*(v3 + 184));
    CAHostTimeWithTime(*(v3 + 176));
    CAHostTimeWithTime(*(v3 + 192));
    kdebug_trace();
  }

  v76 = 1;
  v77 = v3;
  while (2)
  {
    *(this + 132) &= ~2u;
    CA::Transaction::run_commit_handlers(this, 4u);
    v10 = 0;
    v11 = *(this + 6);
    while (1)
    {
      if (v11)
      {
        if (v10)
        {
          v12 = 0;
          v13 = 1 << *v11;
          do
          {
            for (i = *(*(v11 + 2) + 8 * v12); i; i = *i)
            {
              CA::move_root(i[2], i[3], v10, v8);
            }

            ++v12;
          }

          while (v12 != v13);
          x_hash_table_remove_all(*(this + 6));
          v3 = v77;
        }

        else
        {
          *(this + 6) = 0;
          v10 = v11;
        }
      }

      else if (!v10)
      {
        break;
      }

      x_hash_table_remove_if (v10, CA::release_root_if_unused, this);
      v11 = *(this + 6);
      if (!v11)
      {
        break;
      }

      if (!*(v11 + 3))
      {
        *(this + 6) = v10;
        x_hash_table_free(v11);
        goto LABEL_26;
      }
    }

    *(this + 6) = v10;
LABEL_26:
    if (*(v3 + 24))
    {
      *(this + 3) = *(v3 + 24);
      *(v3 + 24) = 0;
    }

    while (1)
    {
      v20 = CA::Transaction::global_deleted[0];
      if (!CA::Transaction::global_deleted[0])
      {
        break;
      }

      v15 = CA::Transaction::global_deleted[0];
      atomic_compare_exchange_strong(CA::Transaction::global_deleted, &v15, 0);
      v16 = v20;
      if (v15 == v20)
      {
        do
        {
          v17 = *v16;
          *buf = v17;
          if (v17)
          {
            do
            {
              v18 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            v18 = buf;
          }

          *v18 = *(this + 3);
          *(this + 3) = *buf;
          v16 = v16[1];
        }

        while (v16);
        do
        {
          v19 = v20[1];
          free(v20);
          v20 = v19;
        }

        while (v19);
      }
    }

    v79 = 0.0;
    CA::Context::commit_transaction(this, &v79, v5, v7, v8, v9);
    CAHostTimeWithTime(v79);
    CAHostTimeWithTime(*(v3 + 152));
    CAHostTimeWithTime(*(v3 + 168));
    v22 = *(this + 3);
    if (v22)
    {
      do
      {
        v23 = *v22;
        free(v22);
        v22 = v23;
      }

      while (v23);
      *(this + 3) = 0;
    }

    v24 = *(this + 6);
    if (v24)
    {
      v25 = 0;
      *(this + 6) = 0;
      v26 = 1 << *v24;
      do
      {
        for (j = *(v24[2] + 8 * v25); j; j = *j)
        {
          CA::release_root(j[2], j[3], this, v21);
        }

        ++v25;
      }

      while (v25 != v26);
      x_hash_table_free(v24);
    }

    v28 = *(this + 2);
    if (v28)
    {
      CA::Transaction::free_command_list(v28);
      *(this + 2) = 0;
    }

    while (1)
    {
      v29 = *(v77 + 32);
      if (!v29)
      {
        break;
      }

      *(v77 + 32) = *v29;
      [v29[1] invalidate];

      while (1)
      {
        v30 = v29[2];
        if (!v30)
        {
          break;
        }

        v29[2] = *v30;
        v31 = v30[2];
        if (v31)
        {
          do
          {
            _Block_release(*v31);
            v31 = v31[1];
          }

          while (v31);
          v32 = v30[2];
          if (v32)
          {
            do
            {
              v33 = v32[1];
              free(v32);
              v32 = v33;
            }

            while (v33);
          }
        }

        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v30);
      }

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v29);
    }

    *(v77 + 40) = 0;
    v34 = *(v77 + 120);
    if (v34)
    {
      CFRelease(v34);
      *(v77 + 120) = 0;
    }

LABEL_62:
    v35 = *(this + 15);
    v35[28] = 0;
    v36 = v35[27];
    if (v36)
    {
      v37 = 0;
      v38 = 1 << *v36;
      do
      {
        for (k = *(*(v36 + 16) + 8 * v37); k; k = *k)
        {
          release_presentation_layer(k[2], k[3]);
        }

        ++v37;
      }

      while (v37 != v38);
      v35[27] = 0;
    }

    v40 = v35[26];
    if (v40)
    {
      v35[26] = 0;
      v41 = *(this + 29);
      *(this + 29) = v41 + 1;
      v42 = v40;
      if (!v41)
      {
        os_unfair_lock_lock(&CA::Transaction::transaction_lock);
        v42 = v40;
      }

      while (1)
      {
        v46 = *v42;
        v47 = *(this + 28);
        if ((v47 & 0x80000000) != 0)
        {
          break;
        }

        v48 = v46 + 4 * v47;
        v43 = *(v48 + 272);
        *(v48 + 272) = 0;
        if ((v43 & 0x400) != 0)
        {
          goto LABEL_86;
        }

LABEL_87:
        v49 = *(v46 + 256);
        if (v49)
        {
          CA::Transaction::release_object(this, v49);
          *(v46 + 256) = 0;
        }

        v50 = *(v46 + 184);
        if (v50)
        {
          CA::AttrList::free(v50, v49);
        }

        *(v46 + 184) = 0;
        atomic_fetch_and((v46 + 4), 0xFFEFFFFF);
        v51 = v43 & 0x10204B7E;
        if ((v43 & 0x60000) == 0 && v51 != 0)
        {
          atomic_fetch_or((v46 + 4), v51);
          if ((v43 & 0x18) != 0)
          {
            v44 = (4 * ((v43 & 6) != 0)) | 0x10;
          }

          else
          {
            v44 = 4 * ((v43 & 6) != 0);
          }

          if ((v43 & 0x10000060) != 0)
          {
            v44 |= 0x40u;
          }

          if ((v43 & 0x300) != 0)
          {
            v44 |= 0x200u;
          }

          for (m = *(v46 + 8); m; m = *(m + 8))
          {
            if ((v44 & ~*(m + 4)) == 0)
            {
              break;
            }

            atomic_fetch_or((m + 4), v44);
          }
        }

        v42 = v42[1];
        if (!v42)
        {
          CA::Transaction::unlock(this);
          do
          {
            v53 = *v40;
            v54 = *(*v40 + 16);
            if (v54)
            {
              CALayerRelease(v54);
              v53 = *v40;
            }

            while (1)
            {
              v55 = *v53;
              if (!*v53)
              {
                break;
              }

              v56 = *v53;
              atomic_compare_exchange_strong(v53, &v56, v55 - 1);
              if (v56 == v55)
              {
                if (v55 == 1)
                {
                  CA::Layer::destroy(v53);
                  CA::Layer::~Layer(v53);
                  if (x_malloc_get_zone::once != -1)
                  {
                    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                  }

                  malloc_zone_free(malloc_zone, v53);
                }

                break;
              }
            }

            v40 = v40[1];
          }

          while (v40);
          goto LABEL_62;
        }
      }

      v43 = *x_hash_table_lookup(*this, *v42, 0);
      if ((v43 & 0x400) == 0)
      {
        goto LABEL_87;
      }

LABEL_86:
      *(v46 + 40) |= 1u;
      goto LABEL_87;
    }

    v3 = v77;
    if ((v76 & 1) != 0 && (*(v77 + 24) || *(v77 + 16)))
    {
      v76 = 0;
      continue;
    }

    break;
  }

  if (*this)
  {
    x_hash_table_free(*(v77 + 8));
    *(v77 + 8) = 0;
    *this = 0;
  }

  else
  {
    os_unfair_lock_lock(&CA::Transaction::slot_lock);
    CA::Transaction::slot_mask &= ~(1 << *(this + 28));
    *(v77 + 4) = -1;
    *(this + 28) = -1;
    os_unfair_lock_unlock(&CA::Transaction::slot_lock);
  }

  v57 = *(v77 + 204);
  *v77 = 0;
  *(v77 + 144) = 0;
  *(v77 + 152) = 0;
  if (!*(v77 + 160))
  {
    *(v77 + 184) = 0u;
    *(v77 + 168) = 0u;
  }

  x_heap_free(*(v77 + 128));
  *(v77 + 128) = 0;
  *(v77 + 136) = 0;
  v59 = *(this + 11);
  if (v59)
  {
    v60 = 0;
    *buf = &unk_1EF1F9FD8;
    v81 = buf;
    v61 = 1 << *v59;
    do
    {
      for (n = *(*(v59 + 16) + 8 * v60); n; n = *n)
      {
        X::HashTable<unsigned int,CA::KTraceEntry *>::foreach(std::function<void ()(unsigned int,CA::KTraceEntry *)>)::{lambda(void *,void *,void *)#1}::__invoke(n[2], n[3], buf);
      }

      ++v60;
    }

    while (v60 != v61);
    if (v81 == buf)
    {
      (*(*v81 + 32))(v81);
      v3 = v77;
    }

    else
    {
      v3 = v77;
      if (v81)
      {
        (*(*v81 + 40))();
      }
    }

    x_hash_table_free(*(this + 11));
    *(this + 11) = 0;
  }

  *(v3 + 206) = 0;
  v63 = *(v3 + 240);
  if (v63)
  {
    free(v63);
    *(v3 + 240) = 0;
  }

  *(v3 + 204) = (*(v3 + 204) >> 1) & 8 | *(v3 + 204) & 0x93;
  add = atomic_fetch_add(CA::Transaction::next_transaction_seed, 1u);
  *(v3 + 200) = add + 1;
  if (add == -1)
  {
    *(v3 + 200) = atomic_fetch_add(CA::Transaction::next_transaction_seed, 1u) + 1;
  }

  *(this + 32) = 0;
  *(this + 132) &= 0xF9u;
  v65 = *(this + 13);
  if (v65)
  {
    *(this + 13) = 0;
    do
    {
      v66 = *v65;
      CA::Transaction::Level::~Level(v65, v58);
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v65);
      v65 = v66;
    }

    while (v66);
  }

  v67 = mach_absolute_time();
  v68 = CATimeWithHostTime(v67);
  if (CADeviceSupportsAPT::once != -1)
  {
    v78 = v68;
    dispatch_once(&CADeviceSupportsAPT::once, &__block_literal_global_46);
    v68 = v78;
  }

  if (CADeviceSupportsAPT::supports_apt)
  {
    v69 = 0.0085;
  }

  else
  {
    v69 = 0.017;
  }

  v70 = v68 - v5;
  *buf = 0;
  *&buf[8] = 0;
  mach_get_times();
  v71 = *&buf[8] - *buf;
  v72 = CAHostTimeWithTime(v5) + v71;
  v73 = *(*(this + 15) + 200);
  if (v70 >= v69)
  {
    if (x_log_get_transaction_stalls(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_transaction_stalls(void)::once, &__block_literal_global_4_7113);
    }

    v74 = x_log_get_transaction_stalls(void)::log;
    if (os_signpost_enabled(x_log_get_transaction_stalls(void)::log))
    {
      *buf = 134349312;
      *&buf[4] = v72;
      *&buf[12] = 1026;
      *&buf[14] = v73;
      _os_signpost_emit_with_name_impl(&dword_183AA6000, v74, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Commit", "%{public, signpost.description:begin_time}llu seed=%{public, name=transaction_seed}#x", buf, 0x12u);
    }
  }

  else if ((v57 & 0x20) == 0)
  {
    if (x_log_get_transaction(void)::once != -1)
    {
      dispatch_once(&x_log_get_transaction(void)::once, &__block_literal_global_7109);
    }

    if (os_signpost_enabled(x_log_get_transaction(void)::log))
    {
      *buf = 134349312;
      *&buf[4] = v72;
      *&buf[12] = 1026;
      *&buf[14] = v73;
      _os_signpost_emit_unreliably_with_name_impl();
    }
  }

  if ((v75 & 0x20) == 0)
  {
    kdebug_trace();
  }
}

void sub_183B4140C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a10 & 0x20) == 0)
  {
    kdebug_trace();
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::Transaction::start_frame(uint64_t a1, unsigned int a2, double a3, double a4, double a5)
{
  v7 = *(a1 + 160);
  v6 = *(a1 + 168);
  v8 = vadd_s32(v7, 0x100000001);
  *(a1 + 160) = v8;
  if (v7.i32[0] && v6 == 0.0)
  {
    __assert_rtn("start_frame", "CATransactionInternal.mm", 2042, "!nested || s->_frame_commit_deadline != 0");
  }

  if (v6 == 0.0 || v6 > a5)
  {
    *(a1 + 168) = a5;
  }

  v10 = *(a1 + 176);
  if (v7.i32[0] && v10 == 0.0)
  {
    __assert_rtn("start_frame", "CATransactionInternal.mm", 2045, "!nested || s->_frame_begin_time != 0");
  }

  if (v10 == 0.0 || v10 > a3)
  {
    *(a1 + 176) = a3;
  }

  v12 = *(a1 + 184);
  if (v7.i32[0])
  {
    if (v12 == 0.0)
    {
      __assert_rtn("start_frame", "CATransactionInternal.mm", 2048, "!nested || s->_frame_start_time != 0");
    }
  }

  else if (v12 == 0.0)
  {
    *(a1 + 184) = a4;
  }

  v13 = a2 | (v8.i32[1] << 8);
  if ((*(a1 + 204) & 0x20) == 0)
  {
    CAHostTimeWithTime(a3);
    CAHostTimeWithTime(a5);
    kdebug_trace();
  }

  return v13;
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (v18 && (v18[3] & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (v23[3] & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  v7[1] = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = v7[2];
  v24[2] = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  v7[2] = v24;
  v23 = v7;
LABEL_68:
  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

void CA::Display::DisplayLink::dispatch_items(CA::Display::DisplayLink *this, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v61 = a3;
  v66 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  v63 = 1.79769313e308;
  while (1)
  {
    v8 = *(this + 10);
    if (!v8)
    {
      break;
    }

    v9 = *(this + 10);
    atomic_compare_exchange_strong(this + 10, &v9, v8 + 1);
    if (v9 == v8)
    {
      v10 = this;
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = pthread_mutex_lock((this + 56));
  v13 = *(this + 15);
  v12 = *(this + 16);
  v14 = v12 - v13;
  if (v12 == v13)
  {
    pthread_mutex_unlock((this + 56));
  }

  else
  {
    v15 = 2 * v14;
    v58 = v10;
    v59 = v7;
    if ((2 * v14) > 0x1000)
    {
      v16 = malloc_type_malloc(2 * v14, 0x8D08B491uLL);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v11);
      v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v16, 2 * v14);
    }

    v17 = 0;
    if ((v14 >> 3) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v14 >> 3;
    }

    v60 = v16;
    v19 = v16 + 8;
    do
    {
      v20 = *(*(this + 15) + 8 * v17);
      *(v19 - 1) = v20;
      *v19 = 0;
      CFRetain(*(v20 + 256));
      ++v17;
      v19 += 16;
    }

    while (v18 != v17);
    v57 = v15;
    pthread_mutex_unlock((this + 56));
    v21 = v63;
    v22 = v60 + 8;
    v23 = v18;
    do
    {
      v24 = *(v22 - 1);
      pthread_mutex_lock((v24 + 136));
      if (*(v24 + 264) == this)
      {
        v25 = *(v24 + 280);
        v26 = *(v24 + 56);
        v27 = *(v24 + 60);
        *(v24 + 60) = 0;
        if ((*(v24 + 324) & 1) == 0 && (!(a2 % v26) || v27 && !(a2 % v27) || (v26 * a4) * 1.485 <= (v61 - v25)))
        {
          *(v24 + 248) = pthread_self();
          *(v24 + 296) = a4;
          *(v24 + 280) = v61;
          v28 = (*(*v24 + 24))(v24);
          v29 = v28 + v61;
          *(v24 + 288) = v29;
          v30 = *(this + 1);
          if (*(v30 + 705))
          {
            v31 = 2;
          }

          else
          {
            v31 = 1;
          }

          if (v31 <= *(v30 + 520))
          {
            v31 = *(v30 + 520);
          }

          LODWORD(v30) = *(v30 + 552);
          if (v31 <= v30)
          {
            v30 = v30;
          }

          else
          {
            v30 = v31;
          }

          *(v24 + 304) = v30 * a4;
          *v22 = 1;
          v32 = CATimeWithHostTime(v29);
          if (v21 >= v32)
          {
            v21 = v32;
          }
        }
      }

      pthread_mutex_unlock((v24 + 136));
      v22 += 16;
      --v23;
    }

    while (v23);
    v63 = v21;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v34 = v60;
    do
    {
      if (v34[8] == 1)
      {
        v35 = *v34;
        v36 = CATimeWithHostTime(*(*v34 + 280));
        v37 = mach_absolute_time();
        v38 = CATimeWithHostTime(v37);
        v39 = CATimeWithHostTime(*(v35 + 288));
        v40 = *(StatusReg + 576);
        if (v40)
        {
          started = CA::Transaction::start_frame(v40[15], 4u, v36, v38, v39);
        }

        else
        {
          started = 0;
        }

        if (!*(v35 + 320))
        {
          v65 = BYTE11(xmmword_1ED4E980C);
          if (BYTE11(xmmword_1ED4E980C) == 1)
          {
            kdebug_trace();
          }

          memset(v64, 0, sizeof(v64));
          (*(*v35 + 48))(v35, v64);
          *&v64[0] = *(v35 + 288) - *(v35 + 280);
          if (v65 == 1)
          {
            kdebug_trace();
          }
        }

        if (!started)
        {
          v40 = *(StatusReg + 576);
          if (v40 && (v42 = v40[15], *v42))
          {
            started = CA::Transaction::start_frame(v42, 4u, v36, v38, v39);
          }

          else
          {
            started = 0;
          }
        }

        pthread_mutex_lock((v35 + 136));
        *(v35 + 248) = 0;
        pthread_cond_broadcast((v35 + 200));
        v43 = *(v35 + 324);
        v44 = (*(*v35 + 32))(v35);
        if (*(v35 + 129))
        {
          CA::Display::DisplayLinkItem::run_deferred_unregister_frame_interval_range(v35);
        }

        pthread_mutex_unlock((v35 + 136));
        if (v44 | ((v43 & 2) >> 1))
        {
          Current = CFRunLoopGetCurrent();
          CA::Display::DisplayLinkItem::update_link(v35, Current);
        }

        if (started)
        {
          CA::Transaction::finish_frame(v40);
        }
      }

      CFRelease(*(*v34 + 256));
      v34 += 16;
      --v18;
    }

    while (v18);
    v10 = v58;
    v7 = v59;
    if (v57 > 0x1000 && v60)
    {
      free(v60);
    }
  }

  pthread_mutex_lock((this + 56));
  if (*(this + 36) == (*(this + 16) - *(this + 15)) >> 3)
  {
    v46 = *(this + 37);
    if (!v46 || (v47 = v46 - 1, (*(this + 37) = v47) == 0))
    {
      CA::Display::DisplayLink::pause_timer_locked(this);
    }
  }

  pthread_mutex_unlock((this + 56));
  v48 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v49 = *(v48 + 576);
  if (v49)
  {
    v50 = v63;
    if (**(v49 + 120) && v63 != 1.79769313e308)
    {
      *&v64[0] = 0;
      if ((CA::Transaction::get_value(*(v49 + 104), 213, 0x12, v64) & 1) == 0)
      {
        v52 = CATimeWithHostTime(v61) + 0.001;
        *v64 = v52;
        v53 = mach_absolute_time();
        if (v52 > CATimeWithHostTime(v53))
        {
          CA::Transaction::set_value(v49, 0xD5, 18, v64);
        }
      }

      v62 = 0.0;
      if (CA::Transaction::get_value(*(v49 + 104), 727, 0x12, &v62))
      {
        v54 = v62;
        if (v50 < v62)
        {
          v54 = v50;
        }

        v63 = v54;
      }

      CA::Transaction::set_value(v49, 0x2D7, 18, &v63);
    }
  }

  if (v10)
  {
    CA::Display::DisplayLink::unref(v10);
  }

  objc_autoreleasePoolPop(v7);
  if ((CA::Transaction::_update_cycle_support_enabled & 1) == 0)
  {
    v55 = *(v48 + 576);
    if (v55)
    {
      if (**(v55 + 15))
      {
        CA::Transaction::flush(v55);
      }
    }
  }
}

void sub_183B41F94(_Unwind_Exception *a1)
{
  objc_end_catch();
  v3 = *(v1 - 200);
  if (*(v1 - 208))
  {
    CA::Display::DisplayLink::unref(*(v1 - 208));
  }

  objc_autoreleasePoolPop(v3);
  _Unwind_Resume(a1);
}

void sub_183B41FB4(_Unwind_Exception *a1)
{
  pthread_mutex_unlock((v1 + 56));
  v4 = *(v2 - 200);
  if (*(v2 - 208))
  {
    CA::Display::DisplayLink::unref(*(v2 - 208));
  }

  objc_autoreleasePoolPop(v4);
  _Unwind_Resume(a1);
}

void CA::Layer::set_next_animation_time(CA::Layer *this, CA::Transaction *a2, double a3, double a4, void *a5)
{
  v19[256] = *MEMORY[0x1E69E9840];
  v8 = non_visible_animating_layers;
  if (non_visible_animating_layers && (*(this + 132) & 4) == 0)
  {
    v9 = *(this + 29);
    *(this + 29) = v9 + 1;
    if (v9 || (os_unfair_lock_lock(&CA::Transaction::transaction_lock), (v8 = non_visible_animating_layers) != 0))
    {
      context = v19;
      v16 = v19;
      v17 = v19;
      v18 = 256;
      CFSetApplyFunction(v8, CA::Layer::collect_non_visible_callback, &context);
      v10 = context;
      v11 = v16;
      while (v10 != v11)
      {
        CFSetRemoveValue(non_visible_animating_layers, *v10++);
      }

      if (!CFSetGetCount(non_visible_animating_layers))
      {
        CFRelease(non_visible_animating_layers);
        non_visible_animating_layers = 0;
      }

      if (context != v17)
      {
        free(context);
      }
    }

    CA::Transaction::unlock(this);
  }

  if (a4 != INFINITY && (*(this + 132) & 4) == 0)
  {
    v12 = a3 + 0.0166666667;
    if (a3 + 0.0166666667 <= a4)
    {
      v12 = a4;
    }

    CA::call_at_time(CA::Layer::animation_heart_beat, 0, v12, a5);
  }

  if (qword_1ED4E4E00)
  {
    v13 = 0;
  }

  else
  {
    v13 = animation_state == 0;
  }

  if (!v13 || *(&animation_state + 1) != 0)
  {
    operator new();
  }
}

void sub_183B422BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12)
{
  if (a10 != a12)
  {
    free(a10);
  }

  CA::Transaction::unlock(v12);
  _Unwind_Resume(a1);
}

uint64_t x_pool_new_(uint64_t *a1)
{
  if (a1)
  {
    v2 = x_heap_malloc_small_(a1, 0x28uLL);
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = a1;
  }

  else
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v2 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x28uLL, 0x102004011F8D34FuLL);
  }

  if (!pool_construct(x_pool_struct *,unsigned long)::choices)
  {
    pool_construct(x_pool_struct *,unsigned long)::choices = malloc_good_size(0x3F0uLL) - 8;
    pool_construct(x_pool_struct *,unsigned long)::choices = malloc_good_size(0x7F0uLL) - 8;
    malloc_good_size(0xBF0uLL);
    malloc_good_size(0xFF0uLL);
  }

  *(v2 + 16) = 32;
  *(v2 + 24) = pool_construct(x_pool_struct *,unsigned long)::choices >> 5;
  return v2;
}

uint64_t CA::Layer::apply_modifiers_to_layer(CA::Layer *this, CALayer *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [(CA::Layer *)this countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(this);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [v8 value];
        v10 = [v8 keyPath];
        if ([v8 additive])
        {
          v9 = [-[CALayer valueForKeyPath:](a2 valueForKeyPath:{v10), "CA_addValue:multipliedBy:", v9, 1}];
        }

        [(CALayer *)a2 setValue:v9 forKeyPath:v10];
        ++v7;
      }

      while (v5 != v7);
      result = [(CA::Layer *)this countByEnumeratingWithState:&v12 objects:v11 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t CA::Layer::convert_time(CA::Layer *this, CA::Transaction *a2, CALayer *a3, CALayer *a4, CALayer *a5)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (a3 == a4)
  {
    return 1;
  }

  p_isa = &a4->super.isa;
  v6 = &a3->super.isa;
  v9 = *(this + 29);
  *(this + 29) = v9 + 1;
  if (!v9)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v10 = [v6 ancestorSharedWithLayer:p_isa];
  v11 = v10;
  while (v6 != v11)
  {
    v19[0] = 0;
    CA::Layer::render_timing(v19, v6[2], this);
    v12 = v19[0];
    if (v19[0])
    {
      CA::Render::Timing::inverse_map_time(v19[0], a2, 0.0);
      if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v12 + 16))(v12);
      }
    }

    v10 = CA::Layer::superlayer(v6[2], this);
    v6 = &v10->super.isa;
  }

  if (v11 == p_isa)
  {
LABEL_19:
    v17 = 1;
  }

  else
  {
    do
    {
      v10 = MEMORY[0x1EEE9AC00](v10);
      v13 = &v19[-2];
      v19[-2] = p_isa;
      v19[-1] = v14;
      if (p_isa)
      {
        v10 = CA::Layer::superlayer(p_isa[2], this);
        p_isa = &v10->super.isa;
      }
    }

    while (p_isa != v11);
    while (1)
    {
      v19[0] = 0;
      CA::Layer::render_timing(v19, *(*v13 + 2), this);
      v15 = v19[0];
      if (v19[0])
      {
        v16 = CA::Render::Timing::map_time(v19[0], a2, 0);
        if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v15 + 16))(v15);
        }

        if (!v16)
        {
          break;
        }
      }

      v13 = v13[1];
      if (!v13)
      {
        goto LABEL_19;
      }
    }

    v17 = 0;
  }

  CA::Transaction::unlock(this);
  return v17;
}

uint64_t CA::Layer::set_model_layer(CA::Layer *this, CA::Transaction *a2, CA::Layer *a3)
{
  v6 = *(a2 + 28);
  if ((v6 & 0x80000000) != 0 || !*(a3 + v6 + 68))
  {
    CA::Layer::thread_flags_(a3, a2);
  }

  v7 = *(a2 + 15);
  v8 = *(v7 + 224);
  if (!v8)
  {
    v10 = *(v7 + 128);
    v9 = *(v7 + 136);
    if (!v9)
    {
      v9 = x_pool_new_(*(v7 + 128));
      *(v7 + 136) = v9;
    }

    v8 = x_hash_table_new_(0, 0, 0, 0, v10, v9);
    *(v7 + 224) = v8;
  }

  return hash_table_modify(v8, this, a3, 0);
}

id CAObject_valueForAtom(void *a1, unsigned int a2)
{
  v4 = objc_opt_class();
  v5 = classDescription(v4);
  v6 = propertyInfoForAtom(v5, a2, 0);
  if (v6)
  {
    v7 = *(v6 + 2);
    if (v7 && (v8 = *(v6 + 2), *(v6 + 2)))
    {

      return CA_valueForKey(a1, v7, v8);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    String = CAAtomGetString(a2);

    return [a1 valueForUndefinedKey:String];
  }
}

void CA::Transaction::Shared::time(CA::Transaction::Shared *this)
{
  if (*(this + 18) == 0.0)
  {
    v2 = mach_absolute_time();
    *(this + 18) = CATimeWithHostTime(v2);
  }
}

uint64_t x_heap_malloc(uint64_t *a1, unint64_t a2)
{
  v2 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v2 < a2)
  {
    return 0;
  }

  if (v2 >= 0x801)
  {
    v3 = malloc_type_malloc((a2 + 7) & 0xFFFFFFFFFFFFFFF8, 0xE799E484uLL);
    *a1 = x_list_prepend(*a1, v3);
    return v3;
  }

  v6 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;

  return x_heap_malloc_small_(a1, v6);
}

void CA::Layer::setter(CA::Transaction *a1, const void *a2, const CGAffineTransform *a3, double *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = CA::Transaction::ensure_compat(a1);
  v9 = *(v8 + 29);
  *(v8 + 29) = v9 + 1;
  if (!v9)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  memset(&v43, 0, sizeof(v43));
  v10 = *(a1 + 9);
  if (!v10 || (CA::AttrList::get(v10, a2, a3, &v43) & 1) == 0)
  {
    CA::Layer::default_value(a1, a2, a3, &v43);
  }

  switch(a3)
  {
    case 2:
    case 3:
      v14 = *a4;
      if (*&v43.a != *a4 && (!*&v43.a || !v14 || !CFEqual(*&v43.a, v14)))
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    case 6:
    case 7:
    case 8:
      a_low = LOBYTE(v43.a);
      v12 = *a4;
      goto LABEL_23;
    case 9:
    case 10:
      a_low = LOWORD(v43.a);
      v12 = *a4;
      goto LABEL_23;
    case 11:
    case 12:
      a_low = LODWORD(v43.a);
      v12 = *a4;
LABEL_23:
      if (a_low != v12)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    case 17:
      if (*&v43.a != *a4)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    case 18:
      a = v43.a;
      v20 = *a4;
      goto LABEL_49;
    case 19:
    case 20:
      if (v43.a != *a4 || v43.b != a4[1])
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    case 21:
      v50.origin = *&v43.a;
      v50.size = *&v43.c;
      if (CGRectEqualToRect(v50, *a4))
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    case 22:
      v39 = v45;
      v40 = v46;
      v41 = v47;
      v42 = v48;
      t1 = v43;
      v38 = v44;
      v21 = *(a4 + 5);
      v33 = *(a4 + 4);
      v34 = v21;
      v22 = *(a4 + 7);
      v35 = *(a4 + 6);
      v36 = v22;
      v23 = *(a4 + 1);
      *&v31.a = *a4;
      *&v31.c = v23;
      v24 = *(a4 + 3);
      *&v31.tx = *(a4 + 2);
      v32 = v24;
      if (v43.a != v31.a)
      {
        goto LABEL_24;
      }

      v25 = 1;
      break;
    case 23:
      t1 = v43;
      v29 = *(a4 + 1);
      *&v31.a = *a4;
      *&v31.c = v29;
      *&v31.tx = *(a4 + 2);
      if (CGAffineTransformEqualToTransform(&t1, &v31))
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    case 24:
      v30 = v43.a == *a4 && v43.b == a4[1];
      if (!v30 || v43.c != a4[2])
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    case 25:
      if (*&v44 != a4[6] || *(&v44 + 1) != a4[7] || v43.tx != a4[4] || v43.ty != a4[5] || v43.a != *a4 || v43.b != a4[1] || v43.c != a4[2])
      {
        goto LABEL_24;
      }

      a = v43.d;
      v20 = a4[3];
LABEL_49:
      if (a != v20)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    default:
      if (*&v43.a == *a4)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
  }

  while (v25 != 16)
  {
    v26 = v25;
    v27 = *(&t1.a + v25);
    v28 = *(&v31.a + v25++);
    if (v27 != v28)
    {
      if ((v26 - 1) <= 0xE)
      {
LABEL_24:
        t1.a = 0.0;
        String = CAAtomGetString(a2);
        CA::Layer::begin_change(a1, v8, String, &t1, v16);
        v17 = CA::Layer::writable_state(a1, v8);
        v18 = *(v17 + 4);
        if (!v18)
        {
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          v18 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0x1020040EDED9539uLL);
        }

        *(v17 + 4) = CA::AttrList::set(v18, a2, a3, a4);
        CA::Layer::end_change(a1, v8, a2, String, *&t1.a);
      }

      break;
    }
  }

LABEL_29:
  CA::Transaction::unlock(v8);
}

void *x_hash_table_new_(unint64_t (*a1)(uint64_t a1), BOOL (*a2)(uint64_t a1, uint64_t a2), uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a6 && *(a6 + 16) != 32)
  {
    return 0;
  }

  if (a1 == x_int_hash || a1 == 0)
  {
    v11 = x_pointer_hash;
  }

  else
  {
    v11 = a1;
  }

  if (a2 == x_int_compare || a2 == 0)
  {
    v13 = x_pointer_compare;
  }

  else
  {
    v13 = a2;
  }

  if (a5)
  {
    v14 = x_heap_malloc_small_(a5, 0x58uLL);
    v15 = v14;
    if (!v14)
    {
      return v15;
    }

    *v14 = 4;
    *(v14 + 8) = 15;
    v16 = x_heap_malloc_small_(a5, 0x80uLL);
    if (v16)
    {
      v16[6] = 0u;
      v16[7] = 0u;
      v16[4] = 0u;
      v16[5] = 0u;
      v16[2] = 0u;
      v16[3] = 0u;
      *v16 = 0u;
      v16[1] = 0u;
      v15[2] = v16;
LABEL_25:
      v15[3] = 0;
      v15[4] = v11;
      v15[5] = v13;
      v15[6] = a3;
      v15[7] = a4;
      v15[8] = a5;
      v19 = v15[10] & 0xFC | (2 * (v13 == x_pointer_compare));
      v15[9] = a6;
      *(v15 + 80) = v19;
      if (a5 && !a6)
      {
        v15[9] = x_pool_new_(a5);
        *(v15 + 80) |= 1u;
      }

      return v15;
    }

    v15[2] = 0;
    return 0;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v17 = malloc_type_zone_malloc(malloc_zone, 0x58uLL, 0x10A004008FC4215uLL);
  v15 = v17;
  if (v17)
  {
    *v17 = 4;
    *(v17 + 1) = 15;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v18 = malloc_type_zone_calloc(malloc_zone, 1uLL, 8 * (1 << *v15), 0x2004093837F09uLL);
    v15[2] = v18;
    if (v18)
    {
      goto LABEL_25;
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v15);
    return 0;
  }

  return v15;
}

id CA_valueForKey(void *a1, const char *a2, int a3)
{
  v4 = 0;
  v21 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    switch(a3)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        v5 = [a1 a2];
        goto LABEL_5;
      case 6:
        v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, a2, 0, v16, v17, v18)}];
        goto LABEL_5;
      case 7:
        v5 = [MEMORY[0x1E696AD98] numberWithChar:{objc_msgSend(a1, a2, 0, v16, v17, v18)}];
        goto LABEL_5;
      case 8:
        v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(a1, a2, 0, v16, v17, v18)}];
        goto LABEL_5;
      case 9:
        v5 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(a1, a2, 0, v16, v17, v18)}];
        goto LABEL_5;
      case 10:
        v5 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(a1, a2, 0, v16, v17, v18)}];
        goto LABEL_5;
      case 11:
        v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a1, a2, 0, v16, v17, v18)}];
        goto LABEL_5;
      case 12:
        v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a1, a2, 0, v16, v17, v18)}];
        goto LABEL_5;
      case 13:
        v5 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(a1, a2, 0, v16, v17, v18)}];
        goto LABEL_5;
      case 14:
        v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(a1, a2, 0, v16, v17, v18)}];
        goto LABEL_5;
      case 15:
        v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(a1, a2, 0, v16, v17, v18)}];
        goto LABEL_5;
      case 16:
        v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a1, a2, 0, v16, v17, v18)}];
        goto LABEL_5;
      case 17:
        v7 = MEMORY[0x1E696AD98];
        [a1 a2];
        v5 = [v7 numberWithFloat:?];
        goto LABEL_5;
      case 18:
        v9 = MEMORY[0x1E696AD98];
        [a1 a2];
        v5 = [v9 numberWithDouble:?];
        goto LABEL_5;
      case 19:
        v12 = MEMORY[0x1E696B098];
        [a1 a2];
        v5 = [v12 valueWithPoint:?];
        goto LABEL_5;
      case 20:
        v13 = MEMORY[0x1E696B098];
        [a1 a2];
        v5 = [v13 valueWithSize:?];
        goto LABEL_5;
      case 21:
        v10 = MEMORY[0x1E696B098];
        [a1 a2];
        v5 = [v10 valueWithRect:?];
        goto LABEL_5;
      case 22:
        v11 = MEMORY[0x1E696B098];
        [a1 a2];
        v5 = [v11 valueWithCATransform3D:buf];
        goto LABEL_5;
      case 23:
        [a1 a2];
        v5 = [MEMORY[0x1E696B098] value:&v16 withObjCType:"{CGAffineTransform=dddddd}"];
        goto LABEL_5;
      case 24:
        v14 = MEMORY[0x1E696B098];
        [a1 a2];
        v5 = [v14 valueWithCAPoint3D:?];
        goto LABEL_5;
      case 25:
        v8 = MEMORY[0x1E696B098];
        [a1 a2];
        v5 = [v8 valueWithCACornerRadii:buf];
LABEL_5:
        v4 = v5;
        break;
      default:
        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v15 = x_log_get_api::log;
        if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v20 = a3;
          _os_log_error_impl(&dword_183AA6000, v15, OS_LOG_TYPE_ERROR, "unhandled getter type: %d", buf, 8u);
        }

        v4 = 0;
        break;
    }
  }

  return v4;
}

char *propertyInfoForAtom(uint64_t **a1, unsigned int a2, uint64_t ***a3)
{
  if (!a1)
  {
    return 0;
  }

  while (1)
  {
    v3 = *(a1 + 6);
    if (v3)
    {
      break;
    }

LABEL_13:
    a1 = *a1;
    if (!a1)
    {
      return 0;
    }
  }

  v4 = a1[2];
  v5 = 32 * v3 - 32;
  v6 = &v4[v5];
  v7 = v5 >> 5;
  if (v7 < 2)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v8 = &v4[32 * (v7 >> 1)];
    if (*v8 == a2)
    {
      break;
    }

    if (*v8 > a2)
    {
      v6 = v8;
    }

    else
    {
      v4 = v8;
    }

    v7 = (v6 - v4) >> 5;
    if (v7 <= 1)
    {
LABEL_12:
      while (v4 <= v6)
      {
        if (*v4 == a2)
        {
          goto LABEL_16;
        }

        v4 += 32;
      }

      goto LABEL_13;
    }
  }

  v4 = v8;
LABEL_16:
  if (a3)
  {
    *a3 = a1;
  }

  return v4;
}

CAAnimation *CALayerCreateImplicitAnimation(CAMediaTimingFunction *a1, void *a2, unsigned int a3)
{
  v5 = a1;
  v12 = *MEMORY[0x1E69E9840];
  if (!CALayerCreateImplicitAnimation::timingFunction)
  {
    a1 = [CAMediaTimingFunction functionWithName:@"default"];
    CALayerCreateImplicitAnimation::timingFunction = a1;
  }

  v11 = 0;
  v6 = CA::Transaction::ensure_compat(a1);
  if (!CA::Transaction::get_value(*(v6 + 13), 37, 7, &v11) || (v11 & 1) == 0)
  {
    v5 = [(CAMediaTimingFunction *)v5 presentationLayer];
  }

  if (!v5)
  {
    return 0;
  }

  v7 = a3 ? CAObject_valueForAtom(v5, a3) : CAObject_valueForKeyPath(v5, a2);
  v8 = v7;
  if (!v7)
  {
    return 0;
  }

  v9 = +[(CAAnimation *)CABasicAnimation];
  [(CAAnimation *)v9 setFromValue:v8];
  [(CAAnimation *)v9 setKeyPath:a2];
  [(CAAnimation *)v9 setTimingFunction:CALayerCreateImplicitAnimation::timingFunction];
  [(CAAnimation *)v9 setFillMode:@"backwards"];
  if (dyld_program_sdk_at_least())
  {
    v9->_flags |= 1u;
  }

  return v9;
}

CALayer *CA::Layer::presentation_layer(CA::Layer *this, CA::Transaction::Shared **a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  do
  {
    v3 = this;
    this = CA::Layer::model_layer(this, a2);
  }

  while (this != v3 && this);
  if ((*(v3 + 1) & 0x4000) == 0)
  {
    return 0;
  }

  v5 = a2[15];
  v6 = *(a2 + 29);
  *(a2 + 29) = v6 + 1;
  if (!v6)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v7 = *(v5 + 27);
  if (!v7 || (v4 = x_hash_table_lookup(v7, v3, 0)) == 0)
  {
    v8 = *(v3 + 2);
    v4 = objc_alloc(objc_opt_class());
    if (v4)
    {
      v9 = *(v3 + 1);
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v10 = malloc_type_zone_malloc(malloc_zone, 0x128uLL, 0x165299FDuLL);
      v11 = v10;
      if (v10)
      {
        v12 = 152;
        if ((v9 & 0x100000) == 0)
        {
          v12 = 40;
        }

        *v10 = 0;
        *(v10 + 1) = 0;
        *(v10 + 3) = 0;
        *(v10 + 4) = 0;
        *(v10 + 2) = v4;
        CA::Layer::State::State((v10 + 10), v3 + v12, a2);
        *(v11 + 19) = 0;
        *(v11 + 20) = 0;
        v11[44] = 0;
        *(v11 + 21) = 0;
        *(v11 + 46) = 0u;
        *(v11 + 50) = 0u;
        *(v11 + 54) = 0u;
        *(v11 + 58) = 0u;
        *(v11 + 248) = 0;
        *(v11 + 32) = 0;
        *(v11 + 33) = 0;
        *(v11 + 35) = 0;
        *(v11 + 36) = 0;
        *v11 = 1;
        v11[1] = v9 & 0xFFEDFFFF | 0x20000;
        *(v11 + 34) = 0;
        v4->_attr.layer = v11;
      }

      CA::Layer::set_model_layer(v11, a2, v3);
      v4 = [(CALayer *)v4 initWithLayer:v8];
      if (v4)
      {
        CA::Layer::apply_modifiers_to_layer(*(v3 + 36), v4);
        v13 = *(v3 + 35);
        if (v13)
        {
          CA::Transaction::Shared::time(a2[15]);
          v21[0] = v14;
          if (CA::Layer::convert_time(a2, v21, 0, v8, v15))
          {
            v16 = *v21;
            do
            {
              if (*(v13 + 57) == 1 && (*(v13 + 67) & 1) == 0)
              {
                [v13[1] applyForTime:v4 presentationObject:v8 modelObject:v16];
              }

              v13 = *v13;
            }

            while (v13);
          }

          atomic_fetch_or(v11 + 1, 0x8000u);
        }

        if (!*a2[15])
        {
          CA::Transaction::ensure_implicit(a2, 1);
        }

        v17 = *(v5 + 27);
        if (!v17)
        {
          v19 = *(v5 + 16);
          v18 = *(v5 + 17);
          if (!v18)
          {
            v18 = x_pool_new_(*(v5 + 16));
            *(v5 + 17) = v18;
          }

          v17 = x_hash_table_new_(0, 0, 0, 0, v19, v18);
          *(v5 + 27) = v17;
        }

        hash_table_modify(v17, v3, v4, 0);
      }
    }
  }

  CA::Transaction::unlock(a2);
  return v4;
}

uint64_t CA::Layer::render_timing(uint64_t this, CA::Transaction *a2, CA::Transaction *a3)
{
  v3 = this;
  if (*(a2 + 58))
  {
    this = CAMediaTimingCopyRenderTiming(*(a2 + 2));
    *v3 = this;
    if (!this)
    {
      this = CA::Layer::writable_state(a2, a3);
      *(this + 16) &= ~0x10000u;
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

uint64_t CADisplayTimerSetInterval(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v33[1] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 16));
  v6 = *(a1 + 256);
  v7 = a2 - v6;
  if (v6 <= a2)
  {
    v6 = a2;
  }

  if (v7 < 0)
  {
    v7 = -v7;
  }

  if (v7 > v6 >> 5)
  {
    *(a1 + 256) = a2;
  }

  v8 = mach_absolute_time();
  if (v8 <= *(a1 + 224))
  {
    v9 = *(a1 + 224);
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 264);
  v11 = *(a1 + 256) * a3;
  v30 = 0;
  v31 = v10;
  v32 = v11;
  v33[0] = 0;
  phase = get_phase(&v30, v9, v33);
  v13 = v33[0];
  *(a1 + 208) = a3 * a2;
  *(a1 + 216) = v11;
  if ((*(a1 + 200) & 1) == 0)
  {
    v14 = v9 - phase + v13;
    if (!phase)
    {
      v14 = v9;
    }

    v15 = *(a1 + 232);
    v16 = v14 != v15 && v15 > v9;
    if (!v16 || v15 - v9 <= CAHostTimeWithTime(0.0005))
    {
      v23 = *(a1 + 192);
      if (!v23)
      {
        goto LABEL_30;
      }

      v24 = *(a1 + 184);
      v27 = a1;
      v28 = 1;
      v25 = v15;
      v26 = v11;
      goto LABEL_29;
    }

    mk_timer_cancel();
    *(a1 + 200) = 1;
    v17 = *(a1 + 192);
    if (v17)
    {
      v17(a1, 2, *(a1 + 232), *(a1 + 216), *(a1 + 184));
    }

    v18 = *(a1 + 264);
    v19 = *(a1 + 216);
    v30 = 0;
    v31 = v18;
    v32 = v19;
    v33[0] = 0;
    v20 = get_phase(&v30, v9, v33);
    v21 = v9 - v20 + v33[0];
    if (!v20)
    {
      v21 = v9;
    }

    v22 = *(a1 + 248);
    if (v21 <= v22)
    {
      v22 = 0;
    }

    *(a1 + 232) = v21;
    *(a1 + 240) = v22;
    mk_timer_arm_leeway();
    *(a1 + 200) = 0;
    v23 = *(a1 + 192);
    if (v23)
    {
      v24 = *(a1 + 184);
      v25 = *(a1 + 232);
      v26 = *(a1 + 216);
      v27 = a1;
      v28 = 0;
LABEL_29:
      v23(v27, v28, v25, v26, v24);
    }
  }

LABEL_30:

  return pthread_mutex_unlock((a1 + 16));
}

void CA::Display::DisplayLink::timer_status_callback(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (CA::Transaction::_update_cycle_support_enabled != 1)
  {
    return;
  }

  os_unfair_lock_lock(&CA::Display::DisplayLink::_next_wakeup_info_lock);
  v9 = CA::Display::DisplayLink::_next_wakeup_info_count;
  if (CA::Display::DisplayLink::_next_wakeup_info_count != 4)
  {
LABEL_3:
    v10 = (&CA::Display::DisplayLink::_next_wakeup_info_list + 40 * v9);
    if (v9)
    {
      v11 = 40 * v9;
      v12 = &CA::Display::DisplayLink::_next_wakeup_info_list;
      while (*v12 != a5)
      {
        v12 = (v12 + 40);
        v11 -= 40;
        if (!v11)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v12 = &CA::Display::DisplayLink::_next_wakeup_info_list;
    }

    if (v12 != v10)
    {
      if (a2 == 2)
      {
        v13 = *(v12 + 3);
        if (v13)
        {
          if (v13 == 1)
          {
            CFRelease(*(v12 + 4));
          }

          else
          {
            v14 = 0;
            do
            {
              CFRelease(*(*(v12 + 4) + 8 * v14++));
            }

            while (v14 < *(v12 + 3));
            free(*(v12 + 4));
          }
        }

        *(v12 + 3) = 0;
        v15 = &CA::Display::DisplayLink::_next_wakeup_info_list + 40 * --CA::Display::DisplayLink::_next_wakeup_info_count;
        v45 = *(v12 + 4);
        v43 = *v12;
        v44 = v12[1];
        v16 = *v15;
        v17 = *(v15 + 1);
        *(v12 + 4) = *(v15 + 4);
        *v12 = v16;
        v12[1] = v17;
        *v15 = v43;
        *(v15 + 1) = v44;
        *(v15 + 4) = v45;
        goto LABEL_51;
      }

      v10 = v12;
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v18 = mach_absolute_time();
  v9 = CA::Display::DisplayLink::_next_wakeup_info_count;
  if (CA::Display::DisplayLink::_next_wakeup_info_count)
  {
    v19 = v18;
    v20 = 0;
    do
    {
      v21 = &CA::Display::DisplayLink::_next_wakeup_info_list + 40 * v20;
      if (*(v21 + 1) >= v19)
      {
        ++v20;
      }

      else
      {
        CA::Display::DisplayLink::_timer_status_callback(_CADisplayTimer *,CADisplayTimerAction,unsigned long long,unsigned long long,void *)::$_2::operator()(&CA::Display::DisplayLink::_next_wakeup_info_list + 40 * v20);
        v9 = CA::Display::DisplayLink::_next_wakeup_info_count - 1;
        CA::Display::DisplayLink::_next_wakeup_info_count = v9;
        v22 = &CA::Display::DisplayLink::_next_wakeup_info_list + 40 * v9;
        v23 = *v21;
        v24 = *(v21 + 1);
        v25 = *(v21 + 4);
        v26 = *(v22 + 4);
        v27 = *(v22 + 1);
        *v21 = *v22;
        *(v21 + 1) = v27;
        *(v21 + 4) = v26;
        *(v22 + 4) = v25;
        *v22 = v23;
        *(v22 + 1) = v24;
      }
    }

    while (v20 < v9);
    if (!a2 && v9 == 4)
    {
      goto LABEL_51;
    }

    goto LABEL_3;
  }

  v10 = &CA::Display::DisplayLink::_next_wakeup_info_list;
LABEL_29:
  if (a2 != 2)
  {
    CA::Display::DisplayLink::_next_wakeup_info_count = v9 + 1;
    *v10 = 0u;
    v10[1] = 0u;
    *(v10 + 4) = 0;
LABEL_31:
    *v10 = a5;
    *(v10 + 1) = a3;
    v28 = a4;
    v29 = *(a5 + 8);
    v30 = (v29 + 464);
    v31 = (*(v29 + 705) & 8) == 0;
    v32 = 64;
    if (v31)
    {
      v32 = 48;
    }

    v33 = CAHostTimeWithTime(*(v30 + v32));
    *(v10 + 2) = vcvtad_u64_f64(v28 / CA::Display::DisplayTimingsControl::granularity(v30, v33));
    v34 = *(a5 + 24);
    if (v34)
    {
      v35 = 0;
      v36 = v34;
      do
      {
        v37 = v35++;
        v36 = *(v36 + 8);
      }

      while (v36);
      if (v35 == *(v10 + 3))
      {
        v40 = *(v10 + 4);
        v39 = (v10 + 2);
        v38 = v40;
        if (v37)
        {
          v39 = v38;
        }

        for (; v35; --v35)
        {
          if (!CFEqual(*v39, *v34))
          {
            CFRelease(*v39);
            *v39 = CFRetain(*v34);
          }

          v34 = *(v34 + 8);
          ++v39;
        }
      }

      else
      {
        CA::Display::DisplayLink::_timer_status_callback(_CADisplayTimer *,CADisplayTimerAction,unsigned long long,unsigned long long,void *)::$_2::operator()(v10);
        CA::Display::DisplayLink::_timer_status_callback(_CADisplayTimer *,CADisplayTimerAction,unsigned long long,unsigned long long,void *)::$_3::operator()(v10, v34);
      }
    }

    else
    {
      v41 = *(v10 + 3);
      if (v41)
      {
        if (v41 == 1)
        {
          CFRelease(*(v10 + 4));
        }

        else
        {
          v42 = 0;
          do
          {
            CFRelease(*(*(v10 + 4) + 8 * v42++));
          }

          while (v42 < *(v10 + 3));
          free(*(v10 + 4));
        }
      }

      *(v10 + 3) = 0;
    }
  }

LABEL_51:
  os_unfair_lock_unlock(&CA::Display::DisplayLink::_next_wakeup_info_lock);
  if (a2 == 2)
  {
    if (CA::Display::DisplayLink::_will_fire_handler_external)
    {
      (*(CA::Display::DisplayLink::_will_fire_handler_external + 16))();
    }
  }
}

void CA::Render::Array::~Array(CA::Render::Array *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF2031B0;
  v3 = *(this + 3);
  if ((v3 & 0x100) == 0)
  {
    v4 = *(this + 4);
    if (v4)
    {
      for (i = 0; i < v4; ++i)
      {
        v6 = *(this + i + 3);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
          }

          v4 = *(this + 4);
        }
      }

      v3 = *(this + 3);
    }
  }

  --dword_1ED4EAA3C;
  *this = &unk_1EF1F6D08;
  if (v3 < 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

{
  CA::Render::Array::~Array(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

void *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(void *result, unsigned int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
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
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

unint64_t CA::Display::DisplayTimingsControl::granularity(CA::Display::DisplayTimingsControl *this, unint64_t a2)
{
  os_unfair_lock_lock(this + 3);
  if ((*(this + 241) & 8) != 0)
  {
    a2 = CAHostTimeWithTime(*(this + 8));
  }

  else
  {
    v4 = *(this + 3);
    if (v4)
    {
      a2 = atomic_load((v4 + 16));
    }
  }

  os_unfair_lock_unlock(this + 3);
  return a2;
}

uint64_t CAMediaTimingCopyRenderTiming(unint64_t a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock(&timing_lock);
    if (timing_cache)
    {
      v32[0] = 0;
      v2 = x_hash_table_lookup(timing_cache, a1 ^ 0x8000000000000000, v32);
      if (v32[0])
      {
        v3 = v2;
LABEL_54:
        if (v3)
        {
          v30 = (v3 + 8);
          if (!atomic_fetch_add((v3 + 8), 1u))
          {
            v3 = 0;
            atomic_fetch_add(v30, 0xFFFFFFFF);
          }
        }

LABEL_57:
        os_unfair_lock_unlock(&timing_lock);
        return v3;
      }
    }

    os_unfair_lock_unlock(&timing_lock);
    [a1 beginTime];
    v5 = v4;
    [a1 timeOffset];
    v7 = v6;
    [a1 duration];
    v9 = v8;
    [a1 speed];
    v11 = v10;
    if (v5 >= 0.000001 || v5 <= 0.0)
    {
      v13 = v5;
    }

    else
    {
      v13 = 0.0;
    }

    [a1 repeatCount];
    v15 = v14;
    [a1 repeatDuration];
    v17 = v16;
    v18 = [a1 autoreverses];
    v19 = v18;
    if (v17 <= 0.0 || v15 <= 0.0)
    {
      v22 = v17;
    }

    else
    {
      v20 = v9 + v9;
      if (!v18)
      {
        v20 = v9;
      }

      v21 = v20 * v15;
      v22 = 0.0;
      if (v17 < v21)
      {
        goto LABEL_21;
      }
    }

    v17 = v22;
    if (v15 > 0.0)
    {
      v23 = v15;
      goto LABEL_23;
    }

LABEL_21:
    v23 = 0.0;
    if (v17 > 0.0)
    {
      v19 = v18 | 8;
      v23 = v17;
    }

LABEL_23:
    v24 = [a1 fillMode];
    v25 = v24;
    if (!v24)
    {
LABEL_35:
      if (!v19 && (v13 == 0.0 ? (v26 = v9 == INFINITY) : (v26 = 0), v26 && v7 == 0.0 && v11 == 1.0 && v23 == 0.0))
      {
        v3 = 0;
      }

      else
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v27 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x40uLL, 0xDEEC3011uLL);
        v3 = v27;
        if (v27)
        {
          *(v27 + 2) = 1;
          ++dword_1ED4EAB20;
          *v27 = &unk_1EF2015A8;
          v28 = 58;
        }

        else
        {
          v28 = MEMORY[0xC];
        }

        *(v27 + 3) = v28 | (v19 << 8);
        v27[5] = v13;
        v27[6] = v7;
        *(v27 + 4) = v11;
        v27[3] = v23;
        v27[4] = v9;
      }

      os_unfair_lock_lock(&timing_lock);
      v29 = timing_cache;
      if (!timing_cache)
      {
        v29 = x_hash_table_new_(0, 0, 0, release_timing, 0, 0);
        timing_cache = v29;
      }

      if (!hash_table_modify(v29, a1 ^ 0x8000000000000000, v3, 0))
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    if (v24 == @"forwards")
    {
LABEL_29:
      v19 |= 2u;
      goto LABEL_35;
    }

    if (v24 != @"backwards")
    {
      if (v24 != @"both")
      {
        if (([(__CFString *)v24 isEqualToString:@"forwards"]& 1) != 0 || [(__CFString *)v25 isEqualToString:@"frozen"])
        {
          goto LABEL_29;
        }

        if ([(__CFString *)v25 isEqualToString:@"backwards"])
        {
          goto LABEL_31;
        }

        if (([(__CFString *)v25 isEqualToString:@"both"]& 1) == 0 && ![(__CFString *)v25 isEqualToString:@"extended"])
        {
          goto LABEL_35;
        }
      }

      v19 |= 6u;
      goto LABEL_35;
    }

LABEL_31:
    v19 |= 4u;
    goto LABEL_35;
  }

  return 0;
}

uint64_t CA::AttrList::splice_shared_node(uint64_t result, _DWORD *a2)
{
  v2 = a2[2];
  if (v2 < 0)
  {
    a2[2] = v2 & 0x7FFFFFFF;
    if (*a2)
    {
      *(*a2 + 8) |= 0x80000000;
    }

    else
    {
      v4 = *(result + 8);
      *(result + 8) = v4 & 7;
      *((v4 & 0xFFFFFFFFFFFFFFF8) + 8) &= 7uLL;
    }
  }

  else
  {
    v3 = (*(result + 8) & 0xFFFFFFFFFFFFFFF8);
    *a2 = *v3;
    *v3 = a2;
  }

  return result;
}

void CA::AttrList::free(CA::AttrList *this, const void *a2)
{
  v3 = *(this + 1);
  if ((*(this + 2) & 7) != 0)
  {
    *(this + 1) = v3 & 0xFFFFFFFFFFFFFFF8 | ((v3 & 7) - 1);
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      *(v4 + 8) &= 7uLL;
    }

    v5 = *this;
    if (*this)
    {
      v6 = v5 + 2;
      if ((v5[2] & 0x80000000) != 0)
      {
        v7 = this;
LABEL_11:
        *v7 = 0;
        *v6 &= ~0x80000000;
      }

      else
      {
        while (1)
        {
          v7 = v5;
          CA::AttrList::Node::free_memory(v5, a2);
          v5 = *v7;
          if (!*v7)
          {
            break;
          }

          if ((v5[2] & 0x80000000) != 0)
          {
            v6 = v5 + 2;
            goto LABEL_11;
          }
        }
      }

      v8 = *this;
      if (*this)
      {
        do
        {
          v9 = *v8;
          free(v8);
          v8 = v9;
        }

        while (v9);
      }
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v10 = malloc_zone;

    malloc_zone_free(v10, this);
  }
}

uint64_t CA::AttrList::copy_(CA::AttrList *this)
{
  if (*(this + 1) >= 8uLL)
  {
    v5 = *this;
    if (*this)
    {
      v6 = 0;
      do
      {
        v7 = v6;
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v6 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x10E2040FD5748B5uLL);
        *(v6 + 2) = v5[1] & 0xFFFFFF;
        CA::AttrList::Node::alloc_memory(v6, *(v5 + 11) & 0x7F);
        switch(*(v5 + 11) & 0x7F)
        {
          case 1:
            **(v6 + 2) = *v5[2];
            break;
          case 2:
            v10 = v5[2];
            if (v10)
            {
              v10 = CFRetain(v10);
            }

            goto LABEL_21;
          case 3:
            v10 = CAValueCopyPointer(v5[2]);
            goto LABEL_21;
          case 4:
            v16 = v5[2];
            if (*(v16 + 8) == 1)
            {
              WeakRetained = objc_loadWeakRetained(v16);
            }

            else
            {
              WeakRetained = *v16;
            }

            v29 = WeakRetained;
            X::WeakDetails::Ptr::set(*(v6 + 2), WeakRetained, 1);

            break;
          case 5:
            v10 = _Block_copy(v5[2]);
LABEL_21:
            *(v6 + 2) = v10;
            break;
          case 6:
          case 7:
          case 8:
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
          case 0xD:
          case 0xE:
          case 0xF:
          case 0x10:
            *(v6 + 2) = v5[2];
            break;
          case 0x11:
          case 0x12:
            *(v6 + 2) = v5[2];
            break;
          case 0x13:
          case 0x14:
            v8 = *(v6 + 2);
            v9 = *v5[2];
            goto LABEL_28;
          case 0x15:
            v18 = v5[2];
            v12 = *(v6 + 2);
            v13 = *v18;
            v14 = v18[1];
            goto LABEL_26;
          case 0x16:
            v19 = v5[2];
            v20 = *(v6 + 2);
            v21 = v19[1];
            v22 = v19[2];
            v23 = v19[3];
            *v20 = *v19;
            v20[1] = v21;
            v20[2] = v22;
            v20[3] = v23;
            v24 = v19[5];
            v25 = v19[6];
            v26 = v19[7];
            v20[4] = v19[4];
            v20[5] = v24;
            v20[6] = v25;
            v20[7] = v26;
            break;
          case 0x17:
            v27 = v5[2];
            v12 = *(v6 + 2);
            v13 = *v27;
            v14 = v27[1];
            v15 = v27[2];
            goto LABEL_25;
          case 0x18:
            v28 = v5[2];
            v8 = *(v6 + 2);
            v9 = *v28;
            *(v8 + 16) = *(v28 + 2);
LABEL_28:
            *v8 = v9;
            break;
          case 0x19:
            v11 = v5[2];
            v12 = *(v6 + 2);
            v13 = *v11;
            v14 = v11[1];
            v15 = v11[2];
            v12[3] = v11[3];
LABEL_25:
            v12[2] = v15;
LABEL_26:
            *v12 = v13;
            v12[1] = v14;
            break;
          default:
            break;
        }

        *v6 = v7;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    result = malloc_type_zone_malloc(malloc_zone, 0x10uLL, 0x1020040EDED9539uLL);
    *result = v6;
    *(result + 8) = 0;
  }

  else
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    result = malloc_type_zone_malloc(malloc_zone, 0x10uLL, 0x1020040EDED9539uLL);
    *(result + 8) = this;
    v3 = *this;
    v4 = *(this + 1);
    *result = *this;
    *(this + 1) = v4 & 7 | result;
    *(v3 + 2) |= 0x80000000;
  }

  return result;
}

void CA::Render::BasicAnimation0::next_time(uint64_t *a1, void *a2, int a3, uint64_t a4, int a5, double *a6, CA::Render::Layer *a7, float64x2_t *a8, int8x16_t a9, double a10, int8x16_t a11, _DWORD *a12)
{
  v15 = a4;
  v16 = *&a10;
  v17 = *a9.i64;
  v19 = *a6;
  CA::Render::Animation::next_time(a1, a2, a3, a9, a10, a11, a4, a5, a6);
  CA::Render::PropertyAnimation::significant_change_next_time(a1, 0, 0, v15, a6, a7, a8, a12, v17, v16, v19, a1[14], a1[15], a1[16]);
}

void CA::Render::Animation::next_time(uint64_t a1, void *a2, int a3, int8x16_t a4, double a5, int8x16_t a6, uint64_t a7, int a8, double *a9)
{
  if (*&a5 == 0.0)
  {
    return;
  }

  v46 = v21;
  v47 = v20;
  v48 = v19;
  v49 = v18;
  v50 = v17;
  v51 = v14;
  v52 = v13;
  v53 = v12;
  v54 = v11;
  v55 = v10;
  v56 = v9;
  v27 = *&a5;
  v28 = *a4.i64;
  v30 = *(a1 + 40);
  if (v30)
  {
    if (*(v30 + 16) == 0.0)
    {
      return;
    }

    v31 = *(v30 + 40);
    *a4.i64 = CA::Render::Timing::end_time(v30);
  }

  else
  {
    v31 = 0.0;
    a4.i64[0] = 0x7FF0000000000000;
  }

  if (v27 >= 0.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = *a4.i64;
  }

  v33 = v32 > v28;
  if (v27 <= 0.0)
  {
    v33 = v32 < v28;
  }

  if (v33)
  {
    v34 = v32 < *a9;
    if (v27 <= 0.0)
    {
      v34 = v32 > *a9;
    }

    if (!v34)
    {
      return;
    }

LABEL_75:
    *a9 = v32;
    return;
  }

  if (v27 < 0.0)
  {
    *a4.i64 = v31;
  }

  v35 = *a4.i64 > v28;
  if (v27 <= 0.0)
  {
    v35 = *a4.i64 < v28;
  }

  if (v35)
  {
    v37 = *(a1 + 28);
    v36 = *(a1 + 32);
    if (!a2)
    {
      goto LABEL_57;
    }

    a4.i32[0] = *(a1 + 24);
    v38 = *(a1 + 40);
    if (v38)
    {
      if (*(v38 + 16) == 0.0)
      {
        goto LABEL_57;
      }
    }

    if (*a4.i32 == 0.0 && v37 == 0.0 && v36 == 0.0)
    {
      if (CAPrefers60HzAPT(void)::once != -1)
      {
        dispatch_once(&CAPrefers60HzAPT(void)::once, &__block_literal_global_3);
      }

      a4.i32[1] = 0;
      if (CAPrefers60HzAPT(void)::enabled)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = 120.0;
      }

      if (CAPrefers60HzAPT(void)::enabled)
      {
        v37 = 80.0;
      }

      else
      {
        v37 = 120.0;
      }

      if (CAPrefers60HzAPT(void)::enabled)
      {
        *a4.i32 = 60.0;
      }

      else
      {
        *a4.i32 = 120.0;
      }
    }

    v39 = *(a1 + 88);
    if (a8 && !v39)
    {
      if ((*(a1 + 14) & 0x80) != 0)
      {
        if (*a4.i32 > 60.0)
        {
          *a4.i32 = 60.0;
        }

        LODWORD(a5) = 1117782016;
        if (v37 <= 80.0)
        {
          *&a5 = v37;
        }

        a6.i32[0] = 1114636288;
        if (v36 <= 60.0)
        {
          *a6.i32 = v36;
        }

        v39 = 0;
        if (v36 == 0.0)
        {
          *a6.i32 = v36;
        }

        goto LABEL_51;
      }

      v39 = 0;
    }

    *&a5 = v37;
    *a6.i32 = v36;
LABEL_51:
    if (!a3 || a3 == 2 && (*(a1 + 14) & 0x10) != 0)
    {
      [a2 addFrameRateRange:{*a4.i64, a5, *a6.i64, v22, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v15, v16}];
    }

    if ((v39 + 0x10000) >= 0x20000)
    {
      [a2 addReason:{v39, *a4.i64, a5, *a6.i64}];
    }

LABEL_57:
    v40 = 48.0;
    if (v37 >= 48.0)
    {
      v40 = v37;
    }

    if (v37 == 0.0 || v36 != 0.0)
    {
      v40 = v36;
    }

    if (v40 != 0.0)
    {
      *a4.i64 = 1.0 / v40;
      if (*a4.i64 != 0.0)
      {
        v42 = *(a1 + 40);
        if (v42)
        {
          *a4.i64 = *a4.i64 * *(v42 + 16);
        }

        if (*a4.i64 != 0.0)
        {
          if ((*(a1 + 13) & 0x80) != 0)
          {
            v28 = v32 + ceil((v28 - v32) / *a4.i64) * *a4.i64;
          }

          else
          {
            v43 = *a4.i64 + v28;
            *a4.i64 = -*a4.i64;
            a6.i64[0] = 0x3F61111111111111;
            v44.f64[0] = NAN;
            v44.f64[1] = NAN;
            v28 = v43 + *vbslq_s8(vnegq_f64(v44), a6, a4).i64;
          }
        }
      }
    }

    v45 = v28 < *a9;
    if (v27 <= 0.0)
    {
      v45 = v28 > *a9;
    }

    v32 = v28;
    if (v45)
    {
      goto LABEL_75;
    }
  }
}

void CA::Render::PropertyAnimation::significant_change_next_time(CA::Render::Animation *a1, uint64_t a2, uint64_t a3, int a4, double *a5, CA::Render::Layer *a6, float64x2_t *a7, _DWORD *a8, double a9, float a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v111 = *MEMORY[0x1E69E9840];
  if (!a7 || *(a1 + 6) != 0.0 && (*(a6 + 45) & 0x40) == 0)
  {
    return;
  }

  v23 = *(a1 + 12);
  if (!v23)
  {
    goto LABEL_8;
  }

  if (v23)
  {
    v24 = v23 >> 1;
    goto LABEL_10;
  }

  if (*v23)
  {
    v24 = *(v23 + 4);
  }

  else
  {
LABEL_8:
    v24 = 0;
  }

LABEL_10:
  v25 = CAAtomIndexInArray(10, CA::Render::PropertyAnimation::significant_change_next_time(double,float,double({block_pointer})(double),double({block_pointer})(double),unsigned int,double &,double,CA::Render::Layer const*,CA::Vec2<double> const*,unsigned int &,CA::Render::Object *,CA::Render::Object *,CA::Render::Object *)const::atoms, v24);
  if (v25 != -1)
  {
    v27 = v25;
    v110 = 0;
    v109 = 0;
    if (v23)
    {
      if (v23)
      {
        v28 = 1;
        if (HIDWORD(v23))
        {
          v28 = 2;
        }

        v79 = v28;
      }

      else
      {
        v79 = *v23;
        if (v79 > 3)
        {
          return;
        }
      }
    }

    else
    {
      v79 = 0;
    }

    CA::Render::key_path_atoms(v23, &v109, v26);
    if ((*a8 & (1 << v27)) == 0)
    {
      v84 = a9;
      v83 = 0;
      if (CA::Render::Animation::map_time(a1, &v84, 0, &v83, 0))
      {
        if (a2)
        {
          v84 = (*(a2 + 16))(a2, v84);
        }

        v32.n128_u64[1] = 0;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v92 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v85 = 0u;
        if (a12 && a13)
        {
          if (*(a12 + 12) == 62)
          {
            v33 = *(a12 + 16);
            if (v33 > 0x18)
            {
              v33 = 24;
              goto LABEL_43;
            }

            if (v33)
            {
LABEL_43:
              for (i = 0; i != v33; ++i)
              {
                v97.f64[i] = *(a12 + 24 + 8 * i);
              }

LABEL_47:
              if (*(a13 + 12) == 62)
              {
                keypath_value = *(a13 + 16);
                if (keypath_value > 0x18)
                {
                  keypath_value = 24;
                  goto LABEL_51;
                }

                if (keypath_value)
                {
LABEL_51:
                  for (j = 0; j != keypath_value; ++j)
                  {
                    v85.f64[j] = *(a13 + 24 + 8 * j);
                  }

                  goto LABEL_114;
                }
              }

LABEL_113:
              keypath_value = 0;
              goto LABEL_114;
            }
          }

          v33 = 0;
          goto LABEL_47;
        }

        if (a12 && a14)
        {
          if (*(a12 + 12) == 62)
          {
            v33 = *(a12 + 16);
            if (v33 > 0x18)
            {
              v33 = 24;
              goto LABEL_55;
            }

            if (v33)
            {
LABEL_55:
              for (k = 0; k != v33; ++k)
              {
                v97.f64[k] = *(a12 + 24 + 8 * k);
              }

LABEL_59:
              if (*(a14 + 12) == 62)
              {
                keypath_value = *(a14 + 16);
                if (keypath_value > 0x18)
                {
                  keypath_value = 24;
                  goto LABEL_63;
                }

                if (keypath_value)
                {
LABEL_63:
                  for (m = 0; m != keypath_value; ++m)
                  {
                    v85.f64[m] = *(a14 + 24 + 8 * m);
                  }

                  goto LABEL_67;
                }
              }

              keypath_value = 0;
LABEL_67:
              if (v33 >= keypath_value)
              {
                v39 = keypath_value;
              }

              else
              {
                v39 = v33;
              }

              if (v39)
              {
                v40 = &v85;
                v41 = &v97;
                do
                {
                  v42 = v41->f64[0];
                  v41 = (v41 + 8);
                  v30.f64[0] = v40->f64[0];
                  v40->f64[0] = v40->f64[0] + v42;
                  v40 = (v40 + 8);
                  --v39;
                }

                while (v39);
              }

              goto LABEL_114;
            }
          }

          v33 = 0;
          goto LABEL_59;
        }

        if (a13 && a14)
        {
          if (*(a14 + 12) == 62)
          {
            v33 = *(a14 + 16);
            if (v33 > 0x18)
            {
              v33 = 24;
              goto LABEL_79;
            }

            if (v33)
            {
LABEL_79:
              for (n = 0; n != v33; ++n)
              {
                v97.f64[n] = *(a14 + 24 + 8 * n);
              }

LABEL_83:
              if (*(a13 + 12) == 62)
              {
                keypath_value = *(a13 + 16);
                if (keypath_value > 0x18)
                {
                  keypath_value = 24;
                  goto LABEL_87;
                }

                if (keypath_value)
                {
LABEL_87:
                  for (ii = 0; ii != keypath_value; ++ii)
                  {
                    v85.f64[ii] = *(a13 + 24 + 8 * ii);
                  }

                  goto LABEL_91;
                }
              }

              keypath_value = 0;
LABEL_91:
              if (v33 >= keypath_value)
              {
                v45 = keypath_value;
              }

              else
              {
                v45 = v33;
              }

              if (v45)
              {
                v46 = &v97;
                v47 = &v85;
                do
                {
                  v48 = v47->f64[0];
                  v47 = (v47 + 8);
                  v30.f64[0] = v46->f64[0];
                  v46->f64[0] = v48 - v46->f64[0];
                  v46 = (v46 + 8);
                  --v45;
                }

                while (v45);
              }

              goto LABEL_114;
            }
          }

          v33 = 0;
          goto LABEL_83;
        }

        if (a12)
        {
          if (*(a12 + 12) == 62)
          {
            v33 = *(a12 + 16);
            if (v33 > 0x18)
            {
              v33 = 24;
              goto LABEL_99;
            }

            if (v33)
            {
LABEL_99:
              for (jj = 0; jj != v33; ++jj)
              {
                v97.f64[jj] = *(a12 + 24 + 8 * jj);
              }

              goto LABEL_103;
            }
          }

          v33 = 0;
LABEL_103:
          keypath_value = CA::Render::Layer::get_keypath_value(a6, a1 + 12, 0x18uLL, &v85, 0);
          goto LABEL_114;
        }

        if (a13)
        {
          v33 = CA::Render::Layer::get_keypath_value(a6, a1 + 12, 0x18uLL, &v97, 0);
          if (*(a13 + 12) != 62)
          {
            keypath_value = 0;
            goto LABEL_114;
          }

          keypath_value = *(a13 + 16);
          if (keypath_value <= 0x18)
          {
            if (!keypath_value)
            {
              goto LABEL_113;
            }
          }

          else
          {
            keypath_value = 24;
          }

          for (kk = 0; kk != keypath_value; ++kk)
          {
            v85.f64[kk] = *(a13 + 24 + 8 * kk);
          }

LABEL_114:
          v52 = 0.0;
          v53 = 0.00833333333;
          position_range = INFINITY;
          if (v24 > 538)
          {
            if (v24 <= 637)
            {
              if (v24 == 539)
              {
                goto LABEL_137;
              }

              if (v24 != 569)
              {
                goto LABEL_147;
              }

              v57 = v79 - 1;
              v58 = HIDWORD(v109);
              goto LABEL_175;
            }

            if (v24 == 638 || v24 == 644)
            {
              goto LABEL_137;
            }

            if (v24 != 716)
            {
              goto LABEL_147;
            }

            position_range = INFINITY;
            if (v79 == 1)
            {
              if (v33 == 16 && keypath_value == 16)
              {
                if (!CA::Mat4Impl::mat4_is_translation(&v97, v29) || !CA::Mat4Impl::mat4_is_translation(&v85, v55) || *&v104 != *&v92)
                {
                  goto LABEL_144;
                }

                v56 = vmulq_f64(*a7, vsubq_f64(v91, v103));
                v32 = vmulq_f64(v56, v56);
                position_range = sqrt(vaddvq_f64(v32));
LABEL_176:
                v52 = 0.5;
              }
            }

            else if (v79 && HIDWORD(v109) == 720)
            {
              v57 = v79 - 2;
LABEL_174:
              v58 = v110;
LABEL_175:
              position_range = CA::Render::get_position_range(v58, v57, &v97, &v85, v33, keypath_value, *a7, v30, v31);
              goto LABEL_176;
            }
          }

          else
          {
            if (v24 > 81)
            {
              if (v24 != 82)
              {
                if (v24 == 131)
                {
                  position_range = 1.0;
                  v52 = 0.00392156863;
LABEL_146:
                  v53 = dbl_183E21760[(a4 - 1) < 0x4F];
                  goto LABEL_147;
                }

                if (v24 != 147)
                {
                  goto LABEL_147;
                }

LABEL_137:
                position_range = vabdd_f64(v97.f64[0], v85.f64[0]);
                v52 = 0.00392156863;
                if (v33 >= 2)
                {
                  v59 = v33 - 1;
                  v60 = &v85.f64[1];
                  v61 = &v97.f64[1];
                  do
                  {
                    v62 = *v61++;
                    v63 = v62;
                    v64 = *v60++;
                    position_range = fmax(position_range, vabdd_f64(v63, v64));
                    --v59;
                  }

                  while (v59);
                }

                goto LABEL_146;
              }

              v57 = v79 - 2;
              if (v79 < 2)
              {
                position_range = INFINITY;
                if (v79 == 1 && v33 >= 4 && keypath_value >= 4)
                {
                  v72 = vmulq_f64(*a7, vsubq_f64(v85, v97));
                  v73 = vmulq_f64(vsubq_f64(v86, v98), *a7);
                  v32 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v72, v72), vmulq_f64(v73, v73)));
                  position_range = v32.n128_f64[1];
                  v52 = 0.5;
                  if (v32.n128_f64[0] > v32.n128_f64[1])
                  {
                    position_range = v32.n128_f64[0];
                  }
                }

                goto LABEL_147;
              }

              if (HIDWORD(v109) != 654 && HIDWORD(v109) != 547)
              {
LABEL_144:
                position_range = INFINITY;
                goto LABEL_147;
              }

              goto LABEL_174;
            }

            if (v24 == 62 || v24 == 74)
            {
              goto LABEL_137;
            }
          }

LABEL_147:
          if ((*&position_range & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v65 = fabsf(a10);
            v32.n128_f64[0] = v52 / position_range;
            if (v83)
            {
              v32.n128_f64[0] = -(v52 / position_range);
            }

            v66 = *(a1 + 5);
            if (v66 && *(v66 + 16) < 0.0)
            {
              v32.n128_f64[0] = -v32.n128_f64[0];
            }

            v67 = (v53 + -0.00208333333) * v65;
            v68 = v84;
            v69 = (*(*a1 + 176))(a1, v32, v84) + v68;
            if (v69 > 1.0)
            {
              v69 = 1.0;
            }

            if (v69 < 0.0)
            {
              v69 = 0.0;
            }

            v82 = v69;
            if (a3)
            {
              v82 = (*(a3 + 16))(a3);
            }

            CA::Render::Animation::inverse_map_time(a1, &v82, a9);
            v70 = fmax(v82 + -0.00208333333, v67 + a9);
            v71 = v70 < a11;
            if (a10 <= 0.0)
            {
              v71 = v70 > a11;
            }

            if (v71)
            {
              *a5 = v70;
            }

            if (position_range != 0.0)
            {
              *a8 |= 1 << v27;
            }
          }

          return;
        }

        if (!a14)
        {
          return;
        }

        v50 = CA::Render::Layer::get_keypath_value(a6, a1 + 12, 0x18uLL, &v97, 0);
        v33 = v50;
        if (*(a14 + 12) == 62)
        {
          keypath_value = *(a14 + 16);
          if (keypath_value > 0x18)
          {
            keypath_value = 24;
            goto LABEL_179;
          }

          if (keypath_value)
          {
LABEL_179:
            for (mm = 0; mm != keypath_value; ++mm)
            {
              v85.f64[mm] = *(a14 + 24 + 8 * mm);
            }

            goto LABEL_181;
          }

          keypath_value = 0;
        }

        else
        {
          keypath_value = 0;
        }

LABEL_181:
        if (v50 >= keypath_value)
        {
          v75 = keypath_value;
        }

        else
        {
          v75 = v50;
        }

        if (v75)
        {
          v76 = &v85;
          v77 = &v97;
          do
          {
            v78 = v77->f64[0];
            v77 = (v77 + 8);
            v30.f64[0] = v76->f64[0];
            v76->f64[0] = v76->f64[0] + v78;
            v76 = (v76 + 8);
            --v75;
          }

          while (v75);
        }

        goto LABEL_114;
      }
    }
  }
}

uint64_t CA::Render::Animation::inverse_map_time(uint64_t this, double *a2, double a3)
{
  v3 = *(this + 40);
  if (v3)
  {
    v6 = *(v3 + 32);
    v7 = *(this + 48);
    if (v7)
    {
      v8 = *a2;
      if (*(v7 + 16) == 4)
      {
        v8 = CA::Render::TimingFunction::evaluate_inverse((v7 + 24), a2, v8, 0.001 / v6);
      }
    }

    else
    {
      v8 = *a2;
    }

    *a2 = v8 * v6;

    return CA::Render::Timing::inverse_map_time(v3, a2, a3);
  }

  return this;
}

uint64_t CA::Render::Timing::inverse_map_time(uint64_t this, double *a2, double a3)
{
  v3 = *(this + 32);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v4 = *(this + 16);
    v5 = floor((*(this + 48) + (a3 - *(this + 40)) * v4) / v3);
    v6 = *a2;
    if (*(this + 13) & 1) != 0 && (v5)
    {
      v6 = v3 - v6;
    }

    v7 = v6 + v5 * v3;
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      *a2 = v7;
    }
  }

  else
  {
    v4 = *(this + 16);
  }

  if (v4 == 0.0 || (v4 != 1.0 ? (v8 = 1.0 / v4) : (v8 = v4), a3 = *(this + 40) + (*a2 - *(this + 48)) * v8, (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL))
  {
    *a2 = a3;
  }

  return this;
}

double CA::Render::SpringAnimation::time_function(CA::Render::SpringAnimation *this, double a2)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = INFINITY;
  }

  return CA::Render::SpringAnimation::State::eval((this + 192), v3 * a2);
}

double CA::Render::SpringAnimation::inverse_delta_time_function(CA::Render::SpringAnimation *this, double a2, double a3)
{
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = INFINITY;
  }

  v7 = 0.0;
  if (*(this + 25) >= 1.0)
  {
    v8 = v6 * a3;
    v9 = *(this + 24);
    v10 = exp(-(v6 * a3 * v9));
    v11 = *(this + 28);
    v12 = (*(this + 27) * v9 + v11 * (v9 * v8 + -1.0)) * v10;
    v13 = v10 * v9;
    if (v12 >= 0.0)
    {
      v14 = v13;
    }

    else
    {
      v14 = *(this + 28);
    }

    if (v11 <= v9)
    {
      v14 = v13;
    }

    if (v12 > 0.0)
    {
      v13 = -v11;
    }

    if (v11 >= 0.0)
    {
      v13 = v14;
    }

    v7 = fmax(a2 / fmax(fabs(v12), v13), 0.0);
  }

  return v7 / v6;
}

uint64_t *std::__tree<std::tuple<unsigned short,unsigned short>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t CA::Render::Surface::implicitly_opaque(CA::Render::Surface *this)
{
  v1 = *(this + 31);
  if (v1 == -1 || (v2 = 1, v1 <= 0x23) && ((0xC99B4EB03uLL >> v1) & 1) != 0)
  {
    v2 = *(this + 16);
    if (v2)
    {
      return CA::Render::fourcc_has_alpha(*(this + 36)) ^ 1;
    }
  }

  return v2;
}

void CA::Render::PortalState::Dependence::run(CA::Render::PortalState::Dependence *this, CA::Render::Update *a2, double a3, CA::Render::Handle *a4, int a5)
{
  v59 = *MEMORY[0x1E69E9840];
  if ((*(this + 60) & 1) == 0)
  {
    v5 = *(a2 + 68);
    if (*(this + 14) != v5)
    {
      *(this + 14) = v5;
      v6 = *(this + 6);
      if (a5)
      {
        *(v6 + 212) = 1;
      }

      *(v6 + 56) = a3;
      v7 = *(a4 + 5);
      if (v7)
      {
        if ((*(v6 + 12) & 0x200) != 0)
        {
          v8 = *(v7 + 4);
          if (v8)
          {
            *&v58 = 0;
            v57 = 0u;
            v56 = 0u;
            v55 = 0u;
            v54 = 0u;
            v53 = 0u;
            v52 = 0u;
            v51 = 0u;
            v50 = 0u;
            v9 = (v8 + 8);
            *&v49 = v6;
            if (!atomic_fetch_add((v8 + 8), 1u))
            {
              v8 = 0;
              atomic_fetch_add(v9, 0xFFFFFFFF);
            }

            *(&v49 + 1) = v8;
            *(&v58 + 1) = *(v7 + 3);
            v50 = xmmword_183E20E00;
            v51 = 0uLL;
            v52 = xmmword_183E20E60;
            v53 = 0uLL;
            v54 = 0uLL;
            v55 = xmmword_183E20E00;
            v56 = 0uLL;
            v57 = xmmword_183E20E60;
            v48[0] = &unk_1EF204020;
            v48[1] = &v50;
            CA::Render::LayerNode::MapGeometry::map(v48, v7, 0);
            v11 = 1.0;
            do
            {
              v12 = v7;
              LOBYTE(v10) = *(*(v7 + 4) + 36);
              v10 = LODWORD(v10);
              v11 = v10 * (0.0039216 * v11);
              v7 = *(v7 + 11);
            }

            while (v7);
            v13 = *(v12 + 5);
            if (v13)
            {
              *(v13 + 104) |= 0x1000000000000000uLL;
            }

            *&v58 = v11;
            os_unfair_lock_lock(&CA::Render::_cross_display_sources_lock);
            v15 = CA::Render::_cross_display_sources;
            v14 = qword_1EA84F508;
            v16 = CA::Render::_cross_display_sources;
            if (CA::Render::_cross_display_sources != qword_1EA84F508)
            {
              do
              {
                if (*v16 == v6)
                {
                  break;
                }

                v16 += 160;
              }

              while (v16 != qword_1EA84F508);
            }

            if (v16 == qword_1EA84F508)
            {
              v24 = qword_1EA84F508 - CA::Render::_cross_display_sources;
              v25 = 0xCCCCCCCCCCCCCCCDLL * ((qword_1EA84F508 - CA::Render::_cross_display_sources) >> 5) + 1;
              if (qword_1EA84F518 < v25)
              {
                v26 = off_1EA84F510;
                v27 = (qword_1EA84F518 + 1) | ((qword_1EA84F518 + 1) >> 1) | (((qword_1EA84F518 + 1) | ((qword_1EA84F518 + 1) >> 1)) >> 2);
                v28 = v27 | (v27 >> 4) | ((v27 | (v27 >> 4)) >> 8);
                v29 = v28 | (v28 >> 16) | ((v28 | (v28 >> 16)) >> 32);
                if (v29 + 1 > v25)
                {
                  v30 = v29 + 1;
                }

                else
                {
                  v30 = 0xCCCCCCCCCCCCCCCDLL * ((qword_1EA84F508 - CA::Render::_cross_display_sources) >> 5) + 1;
                }

                v31 = malloc_type_malloc(160 * v30, 0x1060040ACFB3375uLL);
                v32 = v31;
                v33 = CA::Render::_cross_display_sources;
                v34 = qword_1EA84F508;
                if (CA::Render::_cross_display_sources != qword_1EA84F508)
                {
                  v35 = v31;
                  do
                  {
                    *v35 = *v33;
                    v36 = v33[2];
                    v37 = v33[3];
                    v38 = v33[4];
                    *(v35 + 1) = v33[1];
                    *(v35 + 2) = v36;
                    *(v35 + 3) = v37;
                    *(v35 + 4) = v38;
                    v39 = v33[6];
                    v40 = v33[7];
                    v41 = v33[8];
                    *(v35 + 5) = v33[5];
                    *(v35 + 6) = v39;
                    *(v35 + 7) = v40;
                    *(v35 + 8) = v41;
                    *(v35 + 9) = v33[9];
                    v35 += 160;
                    v33 += 10;
                  }

                  while (v33 != v34);
                }

                if (v15 != v26)
                {
                  free(CA::Render::_cross_display_sources);
                }

                v14 = &v32[v24];
                CA::Render::_cross_display_sources = v32;
                qword_1EA84F508 = &v32[v24];
                qword_1EA84F518 = v30;
              }

              *v14 = v49;
              v42 = v51;
              v43 = v52;
              v44 = v53;
              *(v14 + 1) = v50;
              *(v14 + 2) = v42;
              *(v14 + 3) = v43;
              *(v14 + 4) = v44;
              v45 = v55;
              v46 = v56;
              v47 = v57;
              *(v14 + 5) = v54;
              *(v14 + 6) = v45;
              *(v14 + 7) = v46;
              *(v14 + 8) = v47;
              *(v14 + 9) = v58;
              qword_1EA84F508 += 160;
              os_unfair_lock_unlock(&CA::Render::_cross_display_sources_lock);
            }

            else
            {
              v17 = *(v16 + 1);
              *v16 = v49;
              v18 = v51;
              v19 = v52;
              v20 = v53;
              *(v16 + 1) = v50;
              *(v16 + 2) = v18;
              *(v16 + 3) = v19;
              *(v16 + 4) = v20;
              v21 = v55;
              v22 = v56;
              v23 = v57;
              *(v16 + 5) = v54;
              *(v16 + 6) = v21;
              *(v16 + 7) = v22;
              *(v16 + 8) = v23;
              *(v16 + 9) = v58;
              os_unfair_lock_unlock(&CA::Render::_cross_display_sources_lock);
              if (v17)
              {
                if (atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
                {
                  (*(*v17 + 16))(v17);
                }
              }
            }
          }
        }
      }
    }
  }
}

void async_collect_callback(void *a1)
{
  v1 = mach_absolute_time();
  v2 = CATimeWithHostTime(v1);
  marked_volatile = 0;
  CABackingStoreCollect(v2);
  if (marked_volatile == 1 && (*&next_collect_time == 0.0 || v2 < *&next_collect_time))
  {
    next_collect_time = *&v2;
    CA::call_at_time(backing_store_callback, 0, v2, v3);
  }

  pending_async_collect = 0;
}

void CABackingStoreCollect(double a1)
{
  if (buffer_list)
  {
    v3 = CABackingStoreCollect_(a1, 0);
    if (v3 != INFINITY)
    {
      if (v3 <= a1 + 0.5)
      {
        v3 = a1 + 0.5;
      }

      if (*&next_collect_time == 0.0 || v3 < *&next_collect_time)
      {
        next_collect_time = *&v3;

        CA::call_at_time(backing_store_callback, 0, v3, v2);
      }
    }
  }
}

double CABackingStoreCollect_(double a1, int a2)
{
  v4 = a1 + -5.0;
  if (CA::Render::memory_once != -1)
  {
    dispatch_once_f(&CA::Render::memory_once, 0, CA::Render::init_memory_warnings_);
  }

  v5 = *&CA::Render::last_memory_warning;
  pthread_mutex_lock(&buffer_list_mutex);
  v6 = v5 <= v4;
  if (v5 <= v4)
  {
    v7 = 0.35;
  }

  else
  {
    v7 = 0.0;
  }

  if (v6)
  {
    v8 = 10.0;
  }

  else
  {
    v8 = 1.0;
  }

  if (a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a1 - v7;
  }

  if (a2)
  {
    v10 = a1;
  }

  else
  {
    v10 = a1 - v8;
  }

  v11 = buffer_list;
  if (!buffer_list)
  {
    v13 = INFINITY;
    goto LABEL_62;
  }

  v12 = a1 + 0.5;
  v13 = INFINITY;
  do
  {
    if ((a2 & 1) == 0)
    {
      v14 = *(v11 + 472);
      if (v14 > a1)
      {
        if (v13 >= v14)
        {
          v13 = *(v11 + 472);
        }

        goto LABEL_59;
      }
    }

    if (pthread_mutex_trylock((v11 + 16)))
    {
      goto LABEL_59;
    }

    *(v11 + 472) = 0x7FF0000000000000;
    v15 = *(v11 + 400);
    if (!v15)
    {
      v20 = INFINITY;
      goto LABEL_56;
    }

    v16 = 0;
    do
    {
      v17 = *(v15 + 48);
      if (v17 == 0.0)
      {
        *(v15 + 48) = a1;
        v17 = a1;
      }

      if (*(v15 + 16) || *(v15 + 24))
      {
        if (v15 == *(v11 + 400))
        {
          if ((*(v11 + 492) & 0x100) == 0)
          {
            goto LABEL_47;
          }

          CABackingStoreReleaseImages(v11);
          v17 = *(v15 + 48);
          if (v17 <= v9)
          {
            {
              v16 = 1;
            }

            else
            {
            }

            goto LABEL_47;
          }
        }

        else
        {
          if (v17 <= v10)
          {
            CABackingStoreDeleteBuffer(v15);
            goto LABEL_47;
          }

          if (v17 <= v9)
          {
            {
              v16 = 1;
            }

            else
            {
            }

            v18 = *(v15 + 48) + v8;
LABEL_41:
            if (v18 < *(v11 + 472))
            {
              *(v11 + 472) = v18;
            }

            goto LABEL_47;
          }
        }

        v18 = v17 + v7;
        goto LABEL_41;
      }

LABEL_47:
      v15 = *v15;
    }

    while (v15);
    if (v16)
    {
      v19 = *(v11 + 492);
      v20 = *(v11 + 472);
      if (v19)
      {
        if (v12 < v20)
        {
          *(v11 + 472) = v12;
          v20 = a1 + 0.5;
        }

        if ((a2 & 1) == 0)
        {
          *(v11 + 492) = v19 & 0xFF00 | (v19 - 1);
        }
      }
    }

    else
    {
      v20 = *(v11 + 472);
    }

LABEL_56:
    if (v20 < v13)
    {
      v13 = v20;
    }

    pthread_mutex_unlock((v11 + 16));
LABEL_59:
    v11 = *(v11 + 168);
  }

  while (v11);
LABEL_62:
  pthread_mutex_unlock(&buffer_list_mutex);
  return v13;
}

void CA::Render::Updater::prepare_portal(CA::Render::Update **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v175 = *MEMORY[0x1E69E9840];
  v4 = *(a4 + 56);
  if (v4)
  {
    if ((*(v4 + 13) & 1) == 0)
    {
      v5 = *(v4 + 48);
      if (v5)
      {
        v7 = a3;
        v9 = BYTE10(xmmword_1ED4E988C);
        v10 = *a1;
        v145 = *(*a1 + 344);
        v162 = 1.0;
        v161 = 0;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        *(v4 + 213) = 0;
        if ((*(a4 + 13) & 0x20) != 0)
        {
          *(v10 + 13) |= 0x4000000000uLL;
          v125 = *(v10 + 10);
          v126 = *(v10 + 11);
          if (v126 >= v125)
          {
            if (v125 == 0.0 || v126 <= v125)
            {
              v128 = *(v10 + 12) | 0x4000000000;
            }

            else
            {
              v128 = 0x4000000000;
            }

            *(v10 + 12) = v128;
            *(v10 + 11) = v125;
          }

          *(a2 + 64) |= 0x10000007uLL;
          if ((*(v10 + 344) & 1) == 0)
          {
            v129 = a3;
            do
            {
              v130 = v129;
              v129 = *(v129 + 88);
            }

            while (v129);
            v131 = *(v130 + 40);
            if (v131)
            {
              *(v131 + 104) |= 0x1000000000000000uLL;
            }
          }

          v169 = 0u;
          v170 = 0u;
          v167 = 0u;
          v168 = 0u;
          v165 = 0u;
          v166 = 0u;
          memset(buf, 0, sizeof(buf));
          matched = CA::Render::PortalState::match_cross_display_layer(v4, buf, &v162, &v161);
          if (matched)
          {
            v22 = matched;
            v134 = *(*(matched + 19) + 24);
            if (v134)
            {
              LODWORD(v134) = *(v134 + 16);
            }

            if (v134 == *(v4 + 28))
            {
              v135 = *(matched + 10);
              v136 = *(matched + 11);
              v137 = *(matched + 12);
              v171.f64[0] = *(matched + 9);
              v171.f64[1] = v135;
              v172.f64[0] = v136 + v171.f64[0];
              v172.f64[1] = v135;
              v173.f64[0] = v136 + v171.f64[0];
              v173.f64[1] = v137 + v135;
              v174.f64[0] = v171.f64[0];
              v174.f64[1] = v137 + v135;
              v153 = xmmword_183E20E00;
              v154 = 0u;
              v155 = xmmword_183E20E60;
              v156 = 0u;
              v157 = 0u;
              v158 = xmmword_183E20E00;
              v159 = 0u;
              v160 = xmmword_183E20E60;
              *&v163[0].f64[0] = &unk_1EF204020;
              *&v163[0].f64[1] = &v153;
              v138 = *(v7 + 88);
              if (v138)
              {
                CA::Render::LayerNode::MapGeometry::map(v163, 0, v138);
              }

              CA::Mat4Impl::mat4_concat(buf, buf[0].f64, &v153, v133);
              v140 = &v171;
              v141 = 64;
              do
              {
                CA::Mat4Impl::mat4_apply_to_point2(buf, v140->f64, v139);
                ++v140;
                v141 -= 16;
              }

              while (v141);
LABEL_80:
              *(v4 + 12) |= 0x100u;
              *(v4 + 213) = 1;
              v151 = *(a2 + 32);
              v152 = *(a2 + 48);
              v54 = *(a2 + 16);
              ++*(a2 + 132);
              *(a2 + 40) = 0;
              *(a2 + 48) = 0;
              *(a2 + 32) = 0x7FF0000000000000;
              *(a2 + 16) = *(v4 + 56);
              v55 = *a1;
              memset(buf, 0, sizeof(buf));
              LODWORD(v165) = 1065353216;
              std::vector<std::unordered_map<void *,CA::Render::LayerNode *>>::push_back[abi:nn200100](v55 + 108, buf);
              std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(buf);
              CA::Render::Layer::set_modifiers(v22, 0);
              v59 = *(v7 + 88);
              if (v59)
              {
                v60 = *(v22 + 136);
                if (v60)
                {
                  v62 = *(v60 + 168);
                  v61 = *(v60 + 176);
                }

                else
                {
                  v61 = 0.0;
                  if ((*(v22 + 50) & 0x40) == 0)
                  {
                    v61 = 0.5;
                  }

                  v62 = v61;
                }

                v149[0] = v62;
                v149[1] = v61;
                v63 = vmlaq_n_f64(v171, vsubq_f64(v172, v171), v62);
                v64 = vmlaq_n_f64(v63, vmlaq_n_f64(vsubq_f64(v174, v63), vsubq_f64(v173, v174), v62), v61);
                v150 = v64;
                *v144 = v64;
                if ((*(a4 + 13) & 8) != 0)
                {
                  v163[0] = vsubq_f64(v171, v64);
                  v163[1] = vsubq_f64(v172, v64);
                  v163[2] = vsubq_f64(v173, v64);
                  v163[3] = vsubq_f64(v174, v64);
                  v169 = 0u;
                  v170 = 0u;
                  v167 = 0u;
                  v168 = 0u;
                  v165 = 0u;
                  v166 = 0u;
                  memset(buf, 0, sizeof(buf));
                  v148 = *(v22 + 88);
                  CA::Mat4Impl::mat4_set_corner_matrix(buf, v163, &v148, v149);
                  v147 = 716;
                  CA::Render::Layer::set_property_value(v22, &v147, 1, 0, 0x10, buf[0].f64, v65);
                  if ((v145 & 1) == 0)
                  {
                    v66 = 0;
                    v67 = 0;
                    v68 = *(v4 + 96);
                    v69 = *(v4 + 112);
                    v70 = *(v4 + 128);
                    v153 = *(v4 + 80);
                    v154 = v68;
                    v155 = v69;
                    v71 = *(v4 + 144);
                    v72 = *(v4 + 160);
                    v58 = *(v4 + 176);
                    v73 = *(v4 + 192);
                    v156 = v70;
                    v157 = v71;
                    v158 = v72;
                    v159 = v58;
                    v160 = v73;
                    do
                    {
                      if (*(&v153 + v67) != buf[0].f64[v67])
                      {
                        break;
                      }

                      v66 = v67++ > 0xE;
                    }

                    while (v67 != 16);
                    if (!v66)
                    {
                      *(a2 + 64) |= 0x10000003uLL;
                      v74 = buf[1];
                      v58 = v165;
                      v75 = v166;
                      v76 = v167;
                      v77 = v168;
                      v78 = v169;
                      v79 = v170;
                      *(v4 + 80) = buf[0];
                      *(v4 + 96) = v74;
                      *(v4 + 112) = v58;
                      *(v4 + 128) = v75;
                      *(v4 + 144) = v76;
                      *(v4 + 160) = v77;
                      *(v4 + 176) = v78;
                      *(v4 + 192) = v79;
                    }
                  }

                  *(v22 + 40) &= ~0x80000000000uLL;
                }

                else
                {
                  CA::Render::Layer::set_transform(v22, 0);
                }

                if ((*(a4 + 13) & 4) != 0)
                {
                  if ((*(*(v59 + 32) + 13) & 9) != 0)
                  {
                    v83 = *(v59 + 56);
                    if (v83)
                    {
                      CA::Mat4Impl::mat4_apply_to_point2(v83, v150.f64, v57);
                    }

                    else
                    {
                      v150 = vaddq_f64(*v144, *(v59 + 64));
                    }
                  }

                  v90 = *(v7 + 56);
                  if (v90)
                  {
                    v91 = *(v90 + 16);
                    v92 = *(v90 + 32);
                    v93 = *(v90 + 48);
                    buf[0] = *v90;
                    buf[1] = v91;
                    v165 = v92;
                    v166 = v93;
                    v94 = *(v90 + 80);
                    v95 = *(v90 + 96);
                    v96 = *(v90 + 112);
                    v167 = *(v90 + 64);
                    v168 = v94;
                    v169 = v95;
                    v170 = v96;
                    CA::Mat4Impl::mat4_invert(buf, buf, v57);
                    CA::Mat4Impl::mat4_unapply_inverse_to_point2(buf, v150.f64, v97);
                  }

                  else
                  {
                    v150 = vsubq_f64(v150, *(v7 + 64));
                  }
                }

                else
                {
                  v80 = *(v7 + 32);
                  v81 = *(v80 + 136);
                  if (v81)
                  {
                    v82 = *(v81 + 168);
                  }

                  else
                  {
                    v84 = 0.0;
                    if ((*(v80 + 50) & 0x40) == 0)
                    {
                      v84 = 0.5;
                    }

                    v82 = vdupq_lane_s64(*&v84, 0);
                  }

                  v150 = vmulq_f64(*(v80 + 88), v82);
                  __asm { FMOV            V0.2D, #0.5 }

                  buf[0] = _Q0;
                  CA::Render::Layer::set_anchor_point(v22, buf);
                }

                if ((v145 & 1) == 0)
                {
                  v98 = *(v4 + 64);
                  if (v98 != v150.f64[0])
                  {
                    if (v98 >= 0.0 == v150.f64[0] < 0.0)
                    {
                      goto LABEL_121;
                    }

                    v101 = *&v98 - *&v150.f64[0];
                    if ((*&v98 - *&v150.f64[0]) < 0)
                    {
                      v101 = *&v150.f64[0] - *&v98;
                    }

                    if (v101 > 3)
                    {
                      goto LABEL_121;
                    }
                  }

                  v99 = *(v4 + 72);
                  if (v99 != v150.f64[1])
                  {
                    if (v99 >= 0.0 == v150.f64[1] < 0.0)
                    {
                      goto LABEL_121;
                    }

                    v100 = *&v99 - *&v150.f64[1];
                    if ((*&v99 - *&v150.f64[1]) < 0)
                    {
                      v100 = *&v150.f64[1] - *&v99;
                    }

                    if (v100 >= 4)
                    {
LABEL_121:
                      *(a2 + 64) |= 0x10000003uLL;
                      *(v4 + 64) = v150;
                    }
                  }
                }

                *(v22 + 56) = v150;
              }

              if ((*(a4 + 13) & 2) != 0)
              {
                v103 = *(v7 + 88);
                if (v103)
                {
                  v104 = 1.0;
                  do
                  {
                    LOBYTE(v58) = *(*(v103 + 32) + 36);
                    *&v58 = v58;
                    v104 = (v104 * 0.0039216) * *&v58;
                    v103 = *(v103 + 88);
                  }

                  while (v103);
                }

                else
                {
                  v104 = 1.0;
                }

                v105 = v162 / v104;
                v106 = fabs(v162 / v104);
                v107 = 0.0;
                if (v106 <= 2139095039)
                {
                  if (v105 > 1.0)
                  {
                    v105 = 1.0;
                  }

                  if (v105 >= 0.0)
                  {
                    v107 = v105;
                  }
                }

                if ((v145 & 1) == 0 && *(v4 + 208) != v107)
                {
                  *(a2 + 64) |= 0x10000003uLL;
                  *(v4 + 208) = v107;
                }

                v102 = ((v107 * 255.0) + 0.5);
              }

              else
              {
                LOBYTE(v102) = -1;
              }

              *(v22 + 36) = v102;
              v108 = *(a4 + 48);
              if (v108)
              {
                v109 = *(v108 + 16);
                if (v109)
                {
                  v110 = 8 * v109;
                  v111 = (v108 + 24);
                  do
                  {
                    v112 = *v111;
                    is_object = CA::Render::Layer::keypath_is_object(v22, (*v111 + 16), v57);
                    v57 = *(v112 + 24);
                    if (is_object)
                    {
                      CA::Render::Layer::set_keypath_object(v22, (v112 + 16), v57);
                    }

                    else if (*(v57 + 12) == 62)
                    {
                      CA::Render::Layer::set_keypath_value(v22, (v112 + 16), 0, *(v57 + 16), (v57 + 24));
                    }

                    ++v111;
                    v110 -= 8;
                  }

                  while (v110);
                }
              }

              v114 = *a2;
              v115 = *(*a2 + 24);
              if ((*(a4 + 12) & 0x1000) != 0)
              {
                v116 = *(*a2 + 24);
              }

              else
              {
                v116 = v115 | 0x8000000;
              }

              v117 = v116 | 0x24000000;
              *(v114 + 24) = v117;
              if ((*(a4 + 13) & 8) != 0)
              {
                v118 = *(v7 + 88);
                if (v118)
                {
                  *(v114 + 24) = (*(v118 + 24) ^ v161) & 1 ^ v117;
                }
              }

              v119 = v115 & 0xC000001;
              v120 = *(v22 + 12);
              if ((v120 & 0x1000) != 0 || !CA::Render::Layer::is_containerable(v22, v56))
              {
                v121 = v120 & 0xFFFFF7FF;
              }

              else
              {
                v121 = v120 | 0x800;
              }

              *(v22 + 12) = v121;
              v122 = *(*a1 + 145);
              *(*a1 + 145) = a4;
              CA::Render::Updater::prepare_sublayer0(a1, a2, v22);
              v123 = *a1;
              *(v123 + 145) = v122;
              *(*a2 + 24) = *(*a2 + 24) & 0xFFFFFFFFF3FFFFFELL | v119;
              CA::Render::Update::pop_dependence_group(v123, v124);
              *(a2 + 16) = v54;
              *(a2 + 32) = v151;
              *(a2 + 48) = v152;
              --*(a2 + 132);
              *(v4 + 12) &= ~0x100u;
            }

            if (atomic_fetch_add((v22 + 8), 0xFFFFFFFF) == 1)
            {
              (*(*v22 + 16))(v22);
            }
          }
        }

        else
        {
          v11 = *(v10 + 109);
          v12 = *(v10 + 108);
          do
          {
            if (v11 == v12)
            {
              if ((*(v10 + 344) & 1) == 0)
              {
                do
                {
                  v25 = v7;
                  v7 = *(v7 + 88);
                }

                while (v7);
                v26 = *(v25 + 40);
                if (v26)
                {
                  *(v26 + 104) |= 0x1000000000000000uLL;
                }
              }

              goto LABEL_30;
            }

            v11 -= 5;
            v13 = std::__hash_table<std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::__unordered_map_hasher<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::hash<CA::Render::Object *>,std::equal_to<CA::Render::Object *>,true>,std::__unordered_map_equal<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::equal_to<CA::Render::Object *>,std::hash<CA::Render::Object *>,true>,std::allocator<std::__hash_value_type<CA::Render::Object *,x_link_struct>>>::find<CA::Render::Object *>(v11, v5);
          }

          while (!v13);
          v14 = v13[3];
          CA::Render::Update::mark_root_dependence(*(v10 + 172), v14, v7);
          if (v14)
          {
            if (v9)
            {
              if (x_log_get_render(void)::once[0] != -1)
              {
                dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
              }

              v15 = x_log_get_render(void)::log;
              if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
              {
                v16 = *(a4 + 24);
                v17 = *(a4 + 32);
                v18 = *(a4 + 40);
                LODWORD(buf[0].f64[0]) = 134218496;
                *(buf[0].f64 + 4) = v16;
                WORD2(buf[0].f64[1]) = 2048;
                *(&buf[0].f64[1] + 6) = v17;
                HIWORD(buf[1].f64[0]) = 1024;
                LODWORD(buf[1].f64[1]) = v18;
                _os_log_impl(&dword_183AA6000, v15, OS_LOG_TYPE_DEFAULT, "Portal %lx found source %lx from context %x", buf, 0x1Cu);
              }
            }

            v19 = *(v14 + 40);
            if (v19 && (*(v19 + 104) & 0x10000001) != 0)
            {
              *(a2 + 64) |= 0x10000001uLL;
            }

            if (*(v4 + 212) == 1)
            {
              *(a2 + 64) |= 0x10000001uLL;
              *(v4 + 212) = 0;
            }

            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            v20 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA0uLL, 0xDEEC3011uLL);
            v22 = v20;
            if (v20)
            {
              CA::Render::Layer::Layer(v20, *(v14 + 32));
            }

            if (*(a4 + 13))
            {
              *(v14 + 116) = 0;
              if (*(a4 + 14))
              {
                v31 = *a1;
                buf[0].f64[0] = *(v14 + 32);
                std::__hash_table<CA::Render::Layer const*,std::hash<CA::Render::Layer const*>,std::equal_to<CA::Render::Layer const*>,std::allocator<CA::Render::Layer const*>>::__emplace_unique_key_args<CA::Render::Layer const*,CA::Render::Layer const* const&>(v31 + 112, *&buf[0].f64[0]);
                a1[7] = (a1[7] + 1);
              }
            }

            else
            {
              v23 = *(a4 + 44);
              if (v23 != 255)
              {
                v24 = (*(v14 + 116) | (*(v14 + 116) << 24)) & 0xFF00FF00FF00FFLL;
                *(v14 + 116) = ((((v24 + v24 * v23) >> 8) & 0xFF00FF00FF00FFLL) >> 24) | ((v24 + v24 * v23) >> 8) & 0xFF00FF;
              }
            }

            if ((*(a4 + 13) & 2) != 0)
            {
              if (*(v14 + 280))
              {
                v162 = 0.0;
              }

              else
              {
                v32 = 1.0;
                v33 = v14;
                do
                {
                  LOBYTE(v21) = *(*(v33 + 32) + 36);
                  v21 = LODWORD(v21);
                  v32 = v21 * (0.0039216 * v32);
                  v33 = *(v33 + 88);
                }

                while (v33);
                v162 = v32;
              }
            }

            v161 = *(v14 + 24);
            v34 = *(v7 + 88);
            if (v34)
            {
              v35 = *(v14 + 88);
              if (v35)
              {
                v36 = *(v34 + 5);
                if (v36)
                {
                  v37 = *(v35 + 40);
                  if (v37)
                  {
                    v38 = *(*(v34 + 4) + 136);
                    if (v38 && (v39 = *v38) != 0)
                    {
                      v40 = *(v39 + 12) == 48 ? v39 : 0;
                    }

                    else
                    {
                      v40 = 0;
                    }

                    v41 = *(*(v35 + 32) + 136);
                    if (v41)
                    {
                      v42 = *v41;
                      if (v42)
                      {
                        if (v40 && *(v42 + 12) == 48)
                        {
                          v43 = *(v42 + 160);
                          if (v43)
                          {
                            v44 = *(v43 + 16);
                            if (!v44)
                            {
                              v44 = *(v42 + 160);
                            }

                            v45 = *(v40 + 20);
                            if (v45)
                            {
                              if (*(v45 + 16))
                              {
                                v46 = *(v45 + 16);
                              }

                              else
                              {
                                v46 = *(v40 + 20);
                              }

                              if (v42 == v40)
                              {
                                __assert_rtn("set_shared_state", "render-sdf-layer.cpp", 1190, "target != this");
                              }

                              if (v44 == v46)
                              {
                                v47 = v46;
                              }

                              else
                              {
                                v143 = v44;
                                CA::Render::SDFState::remove_copy(v46, v40);
                                v47 = v143;
                                v48 = *(v40 + 20);
                                v49 = *(v48 + 16);
                                if (v49 != v143)
                                {
                                  if (v49 && atomic_fetch_add(v49 + 2, 0xFFFFFFFF) == 1)
                                  {
                                    v142 = v48;
                                    (*(*v49 + 16))(v49);
                                    v48 = v142;
                                    v47 = v143;
                                  }

                                  v50 = v47;
                                  if (!atomic_fetch_add(v47 + 2, 1u))
                                  {
                                    v50 = 0;
                                    atomic_fetch_add(v47 + 2, 0xFFFFFFFF);
                                  }

                                  *(v48 + 16) = v50;
                                }
                              }

                              CA::Render::SDFState::add_copy(v47, v40);
                              v37 = *(v35 + 40);
                              v36 = *(v34 + 5);
                              v34 = *(v7 + 88);
                            }
                          }

                          *(v36 + 80) = *(v37 + 80);
                        }
                      }
                    }
                  }
                }
              }
            }

            v51 = *(v22 + 80);
            v52 = *(v22 + 88);
            v53 = *(v22 + 96);
            v171.f64[0] = *(v22 + 72);
            v171.f64[1] = v51;
            v172.f64[0] = v52 + v171.f64[0];
            v172.f64[1] = v51;
            v173.f64[0] = v52 + v171.f64[0];
            v173.f64[1] = v53 + v51;
            v174.f64[0] = v171.f64[0];
            v174.f64[1] = v53 + v51;
            if (v34)
            {
              *&buf[0].f64[0] = &unk_1EF1FECF0;
              *&buf[0].f64[1] = 4;
              *&buf[1].f64[0] = &v171;
              CA::Render::LayerNode::MapGeometry::map(buf, v14, v34);
            }

            goto LABEL_80;
          }

LABEL_30:
          if (v9)
          {
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v27 = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v28 = *(a4 + 24);
              v29 = *(a4 + 32);
              v30 = *(a4 + 40);
              LODWORD(buf[0].f64[0]) = 134218496;
              *(buf[0].f64 + 4) = v28;
              WORD2(buf[0].f64[1]) = 2048;
              *(&buf[0].f64[1] + 6) = v29;
              HIWORD(buf[1].f64[0]) = 1024;
              LODWORD(buf[1].f64[1]) = v30;
              _os_log_impl(&dword_183AA6000, v27, OS_LOG_TYPE_DEFAULT, "Portal %lx cannot find source %lx from context %x", buf, 0x1Cu);
            }
          }

          *(a2 + 64) |= 1uLL;
        }
      }
    }
  }
}

void std::vector<std::unordered_map<void *,CA::Render::LayerNode *>>::push_back[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    if (v6 + 1 > 0x666666666666666)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0x666666666666666)
      {
        operator new();
      }

      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v10 = 8 * ((v3 - *a1) >> 3);
    std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(v10, a2);
    v5 = v10 + 40;
    v11 = *a1;
    v12 = a1[1];
    v13 = v10 + *a1 - v12;
    if (v12 != *a1)
    {
      v14 = *a1;
      v15 = v13;
      do
      {
        v16 = std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(v15, v14);
        v14 += 5;
        v15 = v16 + 40;
      }

      while (v14 != v12);
      do
      {
        std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v11);
        v11 += 40;
      }

      while (v11 != v12);
    }

    v17 = *a1;
    *a1 = v13;
    a1[1] = v5;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v5 = std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(v3, a2) + 40;
  }

  a1[1] = v5;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t CA::Render::Layer::set_modifiers(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (a2 || *(result + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(result);
    result = v3[17];
    if (result != v2)
    {
      if (result && atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
      {
        result = (*(*result + 16))(result);
      }

      if (v2)
      {
        v4 = (v2 + 8);
        if (!atomic_fetch_add((v2 + 8), 1u))
        {
          v2 = 0;
          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }

      v3[17] = v2;
    }
  }

  return result;
}

void *CA::Render::Layer::set_anchor_point(void *result, uint64_t a2)
{
  if (result[17])
  {
    goto LABEL_2;
  }

  v3 = *(a2 + 8);
  if (*a2 == 0.5 && v3 == 0.5)
  {
    v5 = result[6] & 0xFFBFFFFF;
  }

  else
  {
    if (*a2 != 0.0 || v3 != 0.0)
    {
LABEL_2:
      result = CA::Render::Layer::ensure_ext(result);
      *(result + 21) = *a2;
      return result;
    }

    v5 = *(result + 12) | 0x400000;
  }

  *(result + 12) = v5;
  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::can_update(unsigned __int8 **this, char a2, double a3, double a4)
{
  v4 = atomic_load(this[96]);
  if (v4 != 1)
  {
    v5 = atomic_load(this[96] + 1);
    if (v5 != 1)
    {
      return 255;
    }
  }

  v6 = atomic_load(this[96] + 3);
  if ((a2 & 4) != 0)
  {
    if (v6 != 2)
    {
      return 255;
    }
  }

  else if (v6)
  {
    return 255;
  }

  v8 = atomic_load(this[96] + 5);
  if (v8 != 1)
  {
    return 233;
  }

  if (!this[82])
  {
    return 254;
  }

  v9 = this + 3192;
  if (*(this + 29523))
  {
    return 253;
  }

  v10 = atomic_load(this[96]);
  if (v10 == 2)
  {
    return 252;
  }

  v11 = atomic_load(this[96]);
  if (v11 == 3)
  {
    return 252;
  }

  if ((*(this + 905) & 8) != 0)
  {
    return 251;
  }

  if (CA::WindowServer::IOMFBDisplay::can_update_(this, a2, a3, a4))
  {
    result = 0;
    v9[988] = 0;
  }

  else
  {
    ++*v9;
    ++v9[988];
    return 250;
  }

  return result;
}

CA::Render::Update *CA::Render::Update::Update(CA::Render::Update *this, const CA::Bounds *a2, unint64_t a3, double a4, const CVTimeStamp *a5, unsigned int a6, int a7, int a8, const CA::Bounds *a9, unsigned int a10)
{
  v23 = *MEMORY[0x1E69E9840];
  *(this + 9) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 20) = 0;
  *(this + 200) = *a9;
  v13 = (this + 200);
  *(this + 10) = a4;
  *(this + 11) = 0x7FF0000000000000;
  *(this + 14) = a4;
  *(this + 15) = 0x3F91111111111111;
  *(this + 21) = a5;
  *(this + 22) = 0;
  *(this + 23) = -1;
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 27) = 0;
  if (!a6)
  {
    a6 = atomic_fetch_add(CA::Render::Update::_update_counter, 1u) + 1;
  }

  *(this + 68) = a6;
  *(this + 69) = a7;
  *(this + 70) = a8;
  *(this + 71) = CA::Render::LayerHost::_seed[0];
  *(this + 72) = 0;
  *(this + 73) = a10;
  *(this + 19) = 0uLL;
  *(this + 20) = 0uLL;
  *(this + 42) = -1;
  *(this + 98) = 0;
  *(this + 344) = 0uLL;
  *(this + 360) = 0uLL;
  *(this + 376) = 0uLL;
  *(this + 396) = xmmword_183E20F10;
  *(this + 412) = 1065353216;
  *(this + 53) = 0x3FE0000000000000;
  *(this + 54) = 0x4010000000000000;
  *(this + 447) = 0;
  *(this + 55) = 0;
  *(this + 452) = 0x100000001;
  *(this + 460) = 0uLL;
  *(this + 476) = 0uLL;
  *(this + 492) = 0;
  *(this + 124) = 1065353216;
  *(this + 500) = 0uLL;
  *(this + 129) = -1;
  *(this + 68) = 0;
  *(this + 138) = 0;
  *(this + 524) = 0uLL;
  *(this + 70) = 1;
  *(this + 71) = 1;
  *(this + 36) = 0uLL;
  *(this + 74) = this + 624;
  *(this + 75) = this + 624;
  *(this + 76) = this + 624;
  *(this + 81) = 0;
  *(this + 616) = 0uLL;
  *(this + 632) = 0uLL;
  *(this + 102) = 0;
  *(this + 49) = 0uLL;
  *(this + 50) = 0uLL;
  *(this + 103) = 0x7FEFFFFFFFFFFFFFLL;
  *(this + 104) = 0x7FF0000000000000;
  *(this + 840) = 0uLL;
  *(this + 856) = 0uLL;
  *(this + 872) = 0uLL;
  *(this + 888) = 0uLL;
  *(this + 904) = 0uLL;
  *(this + 115) = 0;
  *(this + 232) = 1065353216;
  *(this + 59) = 0uLL;
  *(this + 117) = this + 944;
  *(this + 968) = 0uLL;
  *(this + 120) = this + 968;
  *(this + 127) = 0;
  *(this + 984) = 0uLL;
  *(this + 1000) = 0uLL;
  *(this + 128) = this + 1056;
  *(this + 129) = this + 1056;
  *(this + 130) = this + 1056;
  *(this + 131) = 16;
  *(this + 146) = 0;
  *(this + 72) = 0uLL;
  *(this + 71) = 0uLL;
  *(this + 70) = 0uLL;
  *(this + 1176) = xmmword_183E212E0;
  *(this + 1192) = xmmword_183E212F0;
  *(this + 1208) &= 0xFCu;
  *(this + 152) = this + 1248;
  *(this + 153) = this + 1248;
  v14 = *(this + 172) & 0xFFFFFC0000000000;
  *(this + 154) = this + 1248;
  *(this + 155) = 8;
  v15 = v14 | (a10 >> 5) & 0x80000 ^ 0xB0000;
  *(this + 172) = v15;
  v16 = 0x8000000000000;
  if ((byte_1ED4E985E & 1) == 0)
  {
    if (CA::CAPSEProcessor::needs_processing(this))
    {
      v16 = 0x8040000000000;
    }

    v15 = *(this + 172);
  }

  *(this + 172) = v16 | v15 & 0xFF0003FFFFFFFFFFLL;
  if (a2 && a3 > 0x1F)
  {
    *a2 = 0;
    *(a2 + 1) = a2 + 32;
    *(a2 + 2) = a3 - 32;
    *(a2 + 3) = 0x2000;
    *this = a2;
  }

  else
  {
    v17 = x_heap_new(0x2000uLL);
    *this = v17;
    if (!v17)
    {
      return this;
    }
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (byte_1ED4E980B == 1)
  {
    v18 = *&dword_1ED4E973C;
  }

  else
  {
    v18 = 0;
  }

  *(this + 130) = v18;
  *(this + 30) = this + 240;
  *(this + 31) = this + 240;
  *(this + 33) = 0;
  if (BYTE12(xmmword_1ED4E97EC) | BYTE12(ca_debug_options))
  {
    v19 = CA::Shape::new_shape(v13, a2);
  }

  else
  {
    v19 = 1;
  }

  *(this + 2) = v19;
  *(this + 4) = 1;
  *(this + 5) = 1;
  *(this + 6) = 1;
  *(this + 7) = 1;
  *(this + 8) = 1;
  *(this + 9) = 1;
  *(this + 113) = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 1065353216;
  std::vector<std::unordered_map<void *,CA::Render::LayerNode *>>::push_back[abi:nn200100](this + 108, v21);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v21);
  return this;
}

uint64_t CA::WindowServer::IOMFBDisplay::can_update_(CA::WindowServer::IOMFBDisplay *this, char a2, double a3, double a4)
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = this + 25660;
  if ((a2 & 8) != 0)
  {
    v93 = *(this + 29529);
  }

  else
  {
    v93 = 0;
  }

  v98 = 0.0;
  v8 = (*(this + 336) & 0x1C00) == 0 && *(this + 7372) > 3;
  memset(v97, 0, sizeof(v97));
  if (!(*(*this + 2312))(this))
  {
    goto LABEL_19;
  }

  v9 = *(v7 + 102);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = CA::WindowServer::IOMFBDisplay::swap_wait_timeout(this, v9, 1, v93 & 1, &v98);
  if (BYTE11(xmmword_1ED4E980C) != 1)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_14:
    X::Stream::printf(v97, "swap_wait (_post_replay_swap_id %u) = 0x%x\n", *(v7 + 102), v10);
    if (v10)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  kdebug_trace();
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v10)
  {
    goto LABEL_19;
  }

LABEL_15:
  *(v7 + 102) = 0;
  v7[3864] = 0;
  if ((byte_1ED4E9808 & 1) == 0)
  {
    v11 = *(this + 3337);
    if (v11)
    {
      --*(v11 + 8);
      *(this + 3337) = 0;
    }
  }

  v7[3865] = 1;
LABEL_19:
  pthread_mutex_lock((this + 25848));
  v12 = *(v7 + 45);
  if (v12 >= 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12;
  }

  if (v8)
  {
    X::Stream::printf(v97, "current %u, swapped %u\n", *(v7 + 43), *(v7 + 44));
  }

  if (!v12)
  {
    v45 = 0;
LABEL_102:
    v14 = 0;
    goto LABEL_123;
  }

  v14 = 0;
  v15 = a2 & 1;
  v16 = *(v7 + 43);
  v17 = this + 25912;
  v94 = 1;
  while (1)
  {
    v18 = v16 == *(v7 + 45) ? 0 : v16;
    if (v18 != *(v7 + 44) || CA::WindowServer::page_flipping_disabled == 1)
    {
      break;
    }

LABEL_89:
    v16 = v18 + 1;
    if (!--v13)
    {
      goto LABEL_122;
    }
  }

  v19 = (*(this + 160) & 0x100) != 0 && (*(*this + 144))(this) == 3;
  v20 = &v17[48 * v18];
  v21 = v20[40];
  if ((v21 & 2) != 0 && ((v15 | v21) & 1) == 0 && !v19)
  {
    *(v7 + 46) = 4;
  }

  if (v8)
  {
    X::Stream::printf(v97, "checking page %u (seed %u, swap_id %u)\n", v18, *v20, *(v20 + 6));
  }

  v22 = *v20;
  if (!*v20)
  {
    v30 = v20[40];
LABEL_73:
    if ((v30 & 0x40) != 0)
    {
      v37 = *(v20 + 2);
      if (v37)
      {
        if (*(v37 + 16))
        {
          if (x_log_get_sharedevent(void)::once != -1)
          {
            dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
          }

          v38 = x_log_get_sharedevent(void)::log;
          if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_183AA6000, v38, OS_LOG_TYPE_ERROR, "swap aborted, ensure shared events are complete for detached", buf, 2u);
          }

          CA::CASharedEvent::force_complete(*(*(v20 + 2) + 16), [*(*(*(v20 + 2) + 16) + 32) signaledValue] + 1, 0, 1);
          v30 = v20[40];
          v17 = this + 25912;
        }
      }
    }

    if (v30 < 0)
    {
      v41 = *(v20 + 1);
      if (v41)
      {
        v42 = *(v41 + 32);
        if (v42)
        {
          if (*(v42 + 16))
          {
            if (x_log_get_sharedevent(void)::once != -1)
            {
              dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
            }

            v43 = x_log_get_sharedevent(void)::log;
            if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_183AA6000, v43, OS_LOG_TYPE_ERROR, "swap aborted, ensure shared events are complete for framebuffer", buf, 2u);
            }

            v44 = *(*(*(v20 + 1) + 32) + 16);
            CA::CASharedEvent::force_complete(v44, [v44[4] signaledValue] + 1, 0, 1);
            v30 = v20[40];
            v17 = this + 25912;
          }
        }
      }
    }

LABEL_82:
    v20[40] = v30 & 0x3F;
    if (*(v20 + 4))
    {
      (*(**(this + 3345) + 32))(*(this + 3345));
      *(v20 + 4) = 0;
    }

    v39 = *(v20 + 1);
    if (v39)
    {
      *(v20 + 1) = 0;
      --*(v39 + 8);
      *(v39 + 68) &= ~1u;
    }

    v40 = *(v20 + 2);
    if (v40)
    {
      CA::WindowServer::Surface::unref(v40);
      *(v20 + 2) = 0;
    }

    v20[40] &= 0xFCu;
    ++v14;
    goto LABEL_89;
  }

  v23 = *(v20 + 6);
  if (!v23)
  {
LABEL_68:
    if (*(v7 + 99) > v22)
    {
      v22 = *(v7 + 99);
    }

    *(v7 + 99) = v22;
    v36 = *(v7 + 100);
    if (v36 <= *v20)
    {
      v36 = *v20;
    }

    *(v7 + 100) = v36;
    *v20 = 0;
    v30 = v20[40] & 0xF3;
    v20[40] = v30;
    if (v23)
    {
      goto LABEL_82;
    }

    goto LABEL_73;
  }

  v96 = v14;
  v24 = v8;
  if (CA::WindowServer::page_flipping_disabled)
  {
    v25 = 0;
  }

  else
  {
    v25 = 0x80000000;
  }

  if ((a2 & 2) != 0)
  {
    v25 = 0;
  }

  v92 = *(v7 + 46);
  v26 = *&v17[48 * ((v18 + 1) % *(v7 + 45)) + 24];
  if (v26 <= v23)
  {
    v27 = *(v20 + 6);
  }

  else
  {
    v27 = *&v17[48 * ((v18 + 1) % *(v7 + 45)) + 24];
  }

  if (v26 <= v23)
  {
    v28 = v25;
  }

  else
  {
    v28 = v25 + 1;
  }

  if ((v7[3853] & 1) == 0 && ((v94 ^ 1) & 1) == 0)
  {
    v29 = CA::WindowServer::IOMFBDisplay::swap_wait_timeout(this, v27, v28, v93 & 1, &v98);
    v94 = 0;
    if (!v24)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v29 = CA::WindowServer::IOMFBDisplay::swap_wait(this, v27, v28, v93 & 1);
  if (v24)
  {
LABEL_58:
    X::Stream::printf(v97, "swap_wait (%u, flags %u) = 0x%x\n", v27, v28, v91);
  }

LABEL_59:
  if (!v29)
  {
    if ((*(this + 160) & 4) == 0 || (v31 = *(v20 + 1)) == 0 || (v32 = *(v31 + 32)) == 0 || (v33 = *(v32 + 16)) == 0 || (v34 = *(v33 + 32)) == 0 || [v34 signaledValue] == *(v33 + 48) || (v35 = *(*(*(v20 + 1) + 32) + 16), *(v35 + 64) - 1 < (objc_msgSend(*(v35 + 32), "signaledValue") + 1)))
    {
      *(v20 + 6) = 0;
      v22 = *v20;
      v8 = v24;
      v14 = v96;
      v15 = a2 & 1;
      v17 = this + 25912;
      goto LABEL_68;
    }
  }

  v45 = (a2 & 1) == 0 && v92 != 0;
  LODWORD(v8) = v24;
  v14 = v96;
  if (*(v20 + 4) && (*(**(this + 3345) + 24))(*(this + 3345)))
  {
    v47 = *(v20 + 6);
    if (v7[3853])
    {
      v48 = CA::WindowServer::IOMFBDisplay::swap_wait(this, v47, 1, v93 & 1);
    }

    else
    {
      v48 = CA::WindowServer::IOMFBDisplay::swap_wait_timeout(this, v47, 1, v93 & 1, &v98);
    }

    v49 = v48;
    if (v8)
    {
      X::Stream::printf(v97, "swap_wait (%u, flags %u) = 0x%x\n", *(v20 + 6), -2147483647, v91);
    }

    if (!v49)
    {
      (*(**(this + 3345) + 32))(*(this + 3345), *(v20 + 4));
      *(v20 + 4) = 0;
      v50 = *(v7 + 100);
      if (v50 <= *v20)
      {
        v50 = *v20;
      }

      *(v7 + 100) = v50;
      if (!v45)
      {
LABEL_122:
        v45 = 0;
        goto LABEL_123;
      }

      goto LABEL_102;
    }
  }

  if (v45)
  {
    goto LABEL_102;
  }

LABEL_123:
  *v7 = v14;
  v51 = v14 - (*(*this + 2312))(this);
  v52 = v51 > 0;
  if (v8)
  {
    v53 = (*(*this + 2312))(this);
    X::Stream::printf(v97, "pages_available %u, replay_active %u, short_pipeline_activated %u\n", v51, v53, v45);
  }

  v54 = this + 48 * *(v7 + 44) + 25912;
  v55 = *(this + 48 * *(v7 + 44) + 25952);
  if ((v55 & 4) != 0)
  {
    if ((*(this + 48 * *(v7 + 44) + 25952) & 8) == 0)
    {
      v56 = CA::IOMobileFramebuffer::swap_wait((this + 25696));
      v55 = v54[40] & 0xF7 | (8 * (v56 != -536870187));
      v54[40] = v55;
      if (v8)
      {
        X::Stream::printf(v97, "swap_wait (%u, flags %u) = displayed? %u\n", v56 != -536870187, v90, v91);
        v55 = v54[40];
      }
    }

    if ((v55 & 8) != 0)
    {
      v57 = *v54 - 1;
      if (*(v7 + 99) > v57)
      {
        v57 = *(v7 + 99);
      }

      *(v7 + 396) = vdup_n_s32(v57);
    }
  }

  if (v7[3853] == 1)
  {
    v58 = *(this + 3620);
    if (*(this + 3621) != v58)
    {
      do
      {
        v59 = *v58;
        if (!(*(**(this + 3345) + 24))(*(this + 3345), *v58))
        {
          break;
        }

        (*(**(this + 3345) + 32))(*(this + 3345), v59);
        v60 = *(v7 + 849);
        if (v60 <= *(v58 + 2))
        {
          v60 = *(v58 + 2);
        }

        *(v7 + 849) = v60;
        v61 = *(this + 3620);
        v62 = v58 + 2;
        v63 = *(this + 3621);
        while (v62 != v63)
        {
          *(v62 - 2) = *v62;
          *(v62 - 2) = *(v62 + 2);
          v62 += 2;
        }

        if (v63 <= v61)
        {
          __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
        }

        v64 = (v63 - 16);
        *(this + 3621) = v64;
      }

      while (v58 != v64);
    }

    if (!*(v54 + 4) || (*(**(this + 3345) + 24))(*(this + 3345)))
    {
      v65 = *(v7 + 100);
      if (v65 <= *(v7 + 849))
      {
        v65 = *(v7 + 849);
      }

      *(v7 + 100) = v65;
    }
  }

  if ((a2 & 1) == 0)
  {
    v66 = *(v7 + 46);
    if (v66)
    {
      *(v7 + 46) = v66 - 1;
    }
  }

  v67 = *(this + 3287);
  if (v67)
  {
    v68 = *(v67 + 292);
  }

  else
  {
    v68 = 1;
  }

  *(v7 + 1942) = 0;
  v69 = *(this + 3582);
  if (v69 != 0.0)
  {
    v70 = CAHostTimeWithTime(v69);
    v71 = 1;
    v72 = CA::WindowServer::IOMFBDisplay::timing_granularity(this, 1);
    v73 = 2 * v72 * (*(*this + 784))(this);
    v79 = v70 > v73;
    v74 = v70 - v73;
    v75 = v73 >> 5;
    v76 = v79 && v74 >= v75;
    v77 = !v76;
    v7[3884] = v77;
    if (v76)
    {
      v78 = CAHostTimeWithTime(*(this + 3583));
      v79 = v78 > v74 && v78 - v74 > v74 >> 5;
      v71 = v79;
      v7[3884] = v71;
    }

    if (v71 && v51 == 1)
    {
      v52 = (*(*this + 2312))(this);
    }
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v80 = *&dword_1ED4E9740;
  if (*&dword_1ED4E9740 != 2 && *(this + 3298) > a4)
  {
    *(this + 3298) = a4;
  }

  if (v51 == 1)
  {
    if (!(((a2 & 1) == 0) | v68 & 1))
    {
      goto LABEL_194;
    }

LABEL_191:
    if ((*(*this + 2312))(this) & 1) != 0 || v7[3884] == 1 || (v7[3885])
    {
      goto LABEL_194;
    }

    if (BYTE1(xmmword_1ED4E988C) & 1) != 0 || (*(this + 336) & 0x1C00) == 0 || (*(this + 82) & 0x8000000000000000) == 0 || (BYTE2(xmmword_1ED4E98AC))
    {
      v89 = (*(*this + 760))(this);
      *(this + 3684) = v89;
      CAHostTimeWithTime(v89);
      kdebug_trace();
    }

    if (v80 != 2)
    {
      *(this + 3298) = a3;
    }
  }

  else
  {
    v81 = (*(*this + 760))(this);
    v82 = 0;
    v83 = v81 * 2.5;
    if (v83 < 0.026)
    {
      v83 = 0.026;
    }

    if (a3 != 0.0 && v80 != 2)
    {
      v82 = *(this + 3299) < a3 && *(this + 3685) > 0.0 && a3 - *(this + 3298) < v83;
    }

    if (((v82 | BYTE1(xmmword_1ED4E988C)) & 1) != 0 && ((a2 & 1) == 0) | v68 & 1)
    {
      goto LABEL_191;
    }

LABEL_194:
    v84 = *(this + 3684);
    *(this + 3684) = 0;
    CAHostTimeWithTime(0.0);
    kdebug_trace();
    if (v80 != 2 && v84 > 0.0)
    {
      kdebug_trace();
    }
  }

  if (v8)
  {
    v85 = x_stream_finish(v97);
    if (v85)
    {
      v86 = v85;
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v87 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v100 = v86;
        _os_log_error_impl(&dword_183AA6000, v87, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      free(v86);
    }
  }

  pthread_mutex_unlock((this + 25848));
  return v52;
}