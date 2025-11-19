uint64_t OALSource::StartRenderer(OALSource *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v3 = pthread_self();
  v4 = *(v2 + 480);
  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v11 = (*(*(this + 10) + 16))();
  if (!*(this + 45))
  {
    v5 = 0;
    goto LABEL_10;
  }

  v5 = 0;
  v6 = *(this + 76);
  v7 = v6 - 1;
  if ((v6 - 56577) > 5)
  {
    if (v6 == 4114)
    {
      goto LABEL_10;
    }

    if (v6 == 4115)
    {
      v5 = OALSource::Resume(this);
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 = OALSource::SetupMixerBus(this, (this + 376));
      if (!v5)
      {
        v5 = OALSource::AddRenderProc(this);
        if (!v5)
        {
          *(this + 76) = 4114;
          *(this + 60) = 0;
          goto LABEL_10;
        }
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v10 = *this;
      *buf = 136315906;
      v13 = "oalSource.cpp";
      v14 = 1024;
      v15 = 1391;
      v16 = 2048;
      v17 = v10;
      v18 = 2048;
      v19 = v5;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::StartRenderer FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
    }
  }

  else if (((1 << v7) & 0x32) == 0)
  {
    if (((1 << v7) & 9) != 0)
    {
      operator new();
    }

    operator new();
  }

LABEL_10:
  if (v11 == 1)
  {
    (*(*(this + 10) + 24))(this + 80);
  }

  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_23A030634(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OALSource::Resume(OALSource *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v3 = pthread_self();
  v4 = *(v2 + 480);
  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v5 = (*(*(this + 10) + 16))();
  v6 = *(this + 76);
  if (v6 != 4115)
  {
    if (v6 == 56579)
    {
      operator new();
    }

LABEL_13:
    v7 = 0;
LABEL_14:
    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  *(this + 86) = 1;
  v7 = OALSource::AddRenderProc(this);
  if (!v7)
  {
    *(this + 76) = 4114;
    v9 = *(this + 52);
    if (v9)
    {
      SourceNotifications::CallSourceNotifications(v9, 4112);
    }

    goto LABEL_13;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_14;
  }

  v8 = *this;
  *buf = 136315906;
  v13 = "oalSource.cpp";
  v14 = 1024;
  v15 = 1634;
  v16 = 2048;
  v17 = v8;
  v18 = 2048;
  v19 = v7;
  _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::Resume FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
  if (v5)
  {
LABEL_15:
    (*(*(this + 10) + 24))(this + 80);
  }

LABEL_16:
  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_23A0308D0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OALSource::AddRenderProc(OALSource *this)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((*(this + 236) & 1) == 0)
  {
    v4 = *(this + 58);
    if (v4 == -1)
    {
      v1 = 0xFFFFFFFFLL;
    }

    else
    {
      *(this + 27) = OALSource::SourceInputProc;
      *(this + 28) = this;
      v5 = OALContext::SetBusRenderProc(*(this + 1), v4, (this + 216));
      if (v5 || (v5 = AUGraphUpdate(*(*(*(this + 1) + 16) + 16), 0), v5))
      {
        v1 = v5;
      }

      else
      {
        v1 = OALContext::SetBusEnable(*(this + 1), *(this + 58), 1);
        if (!v1)
        {
          *(this + 236) = 1;
          v10 = *MEMORY[0x277D85DE8];
          return v1;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v6 = *this;
        v11 = 136315906;
        v12 = "oalSource.cpp";
        v13 = 1024;
        v14 = 2594;
        v15 = 2048;
        v16 = v6;
        v17 = 2048;
        v18 = v1;
        _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::AddRenderProc FAILED - OALSource = %ld : result = %ld", &v11, 0x26u);
        v7 = *MEMORY[0x277D85DE8];
        return v1;
      }
    }

    v8 = *MEMORY[0x277D85DE8];
    return v1;
  }

  v1 = 0;
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t OALSource::Play(OALSource *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v3 = pthread_self();
  v4 = *(v2 + 480);
  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v15 = (*(*(this + 10) + 16))();
  if (*(this + 71) == 1735095154)
  {
    started = OALSource::StartRenderer(this);
    goto LABEL_6;
  }

  if (!*(this + 12))
  {
    v6 = 0;
    if (v15 != 1)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v8 = *(this + 76);
  v9 = v8 - 1;
  if ((v8 - 56577) <= 5)
  {
    if (((1 << v9) & 0x32) == 0)
    {
      if (((1 << v9) & 9) != 0)
      {
        operator new();
      }

      operator new();
    }

LABEL_20:
    operator new();
  }

  if (v8 == 4115)
  {
    started = OALSource::Resume(this);
LABEL_6:
    v6 = started;
    if (!started)
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  if (v8 == 4114)
  {
    *(this + 86) = -1;
    goto LABEL_20;
  }

  OALSource::PrepBufferQueueForPlayback(this);
  v12 = *(this + 3);
  v6 = 0xFFFFFFFFLL;
  if (!*v12 || (v13 = *v12 + ((*(this + 14) << 48) >> 43), v13 == v12[1]) || (v6 = OALSource::SetupMixerBus(this, (*(v13 + 8) + 304)), v6) || (v6 = OALSource::AddRenderProc(this), v6))
  {
LABEL_7:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = *this;
      *buf = 136315906;
      v17 = "oalSource.cpp";
      v18 = 1024;
      v19 = 1481;
      v20 = 2048;
      v21 = v7;
      v22 = 2048;
      v23 = v6;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::Play FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
      if (v15 != 1)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_21:
    if (v15 != 1)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  *(this + 19) = 1;
  *(this + 76) = 4114;
  v14 = *(this + 52);
  if (v14)
  {
    SourceNotifications::CallSourceNotifications(v14, 4112);
  }

  v6 = 0;
  *(this + 86) = 1;
  *(this + 60) = 0;
  if (v15 == 1)
  {
LABEL_22:
    (*(*(this + 10) + 24))(this + 80);
  }

LABEL_23:
  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_23A030EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CAGuard::Locker::~Locker(&a9);
  if (v10 != v11)
  {
    atomic_fetch_add((v9 + 64), 0xFFFFFFFF);
  }

  _Unwind_Resume(a1);
}

void OALSource::Rewind(OALSource *this)
{
  v2 = *(this + 1);
  v3 = pthread_self();
  v4 = *(v2 + 480);
  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v32 = (*(*(this + 10) + 16))();
  *(this + 85) = 0;
  v5 = *(this + 76);
  if (v5 <= 56576)
  {
    switch(v5)
    {
      case 4114:
        *(this + 76) = 56580;
        *(this + 86) = -1;
        operator new();
      case 4115:
        v19 = *(this + 58);
        if (v19 != -1)
        {
          OALContext::SetBusAsAvailable(*(this + 1), v19);
          *(this + 58) = -1;
        }

        OALSource::ClearActiveQueue(this);
        v20 = *(this + 3);
        v21 = *(this + 4);
        *(this + 3) = v21;
        *(this + 4) = v20;
        v23 = *v21;
        v22 = v21[1];
        v24 = *(v20 + 8) - *v20;
        v25 = v22 - *v21;
        v7 = v22 == *v21;
        *(v21 + 6) = v25 >> 5;
        *(v20 + 24) = v24 >> 5;
        *(this + 12) = *(v20 + 24) + *(v21 + 6);
        if (!v7)
        {
          v26 = v25 - 32;
          v27 = v23;
          if (v26 < 0x20)
          {
            goto LABEL_38;
          }

          v28 = (v26 >> 5) + 1;
          v27 = v23 + 32 * (v28 & 0xFFFFFFFFFFFFFFELL);
          v29 = (v23 + 48);
          v30 = v28 & 0xFFFFFFFFFFFFFFELL;
          do
          {
            *(v29 - 4) = 0;
            *v29 = 0;
            v29 += 8;
            v30 -= 2;
          }

          while (v30);
          if (v28 != (v28 & 0xFFFFFFFFFFFFFFELL))
          {
LABEL_38:
            do
            {
              *(v27 + 16) = 0;
              v27 += 32;
            }

            while (v27 != v22);
          }
        }

        break;
      case 4116:
        OALSource::ClearActiveQueue(this);
        v8 = *(this + 3);
        v9 = *(this + 4);
        *(this + 3) = v9;
        *(this + 4) = v8;
        v11 = *v9;
        v10 = v9[1];
        v12 = *(v8 + 8) - *v8;
        v13 = v10 - *v9;
        v7 = v10 == *v9;
        *(v9 + 6) = v13 >> 5;
        *(v8 + 24) = v12 >> 5;
        *(this + 12) = *(v8 + 24) + *(v9 + 6);
        if (!v7)
        {
          v14 = v13 - 32;
          v15 = v11;
          if (v14 < 0x20)
          {
            goto LABEL_39;
          }

          v16 = (v14 >> 5) + 1;
          v15 = v11 + 32 * (v16 & 0xFFFFFFFFFFFFFFELL);
          v17 = (v11 + 48);
          v18 = v16 & 0xFFFFFFFFFFFFFFELL;
          do
          {
            *(v17 - 4) = 0;
            *v17 = 0;
            v17 += 8;
            v18 -= 2;
          }

          while (v18);
          if (v16 != (v16 & 0xFFFFFFFFFFFFFFELL))
          {
LABEL_39:
            do
            {
              *(v15 + 16) = 0;
              v15 += 32;
            }

            while (v15 != v10);
          }
        }

        break;
      default:
        goto LABEL_10;
    }

    *(this + 14) = 0;
    *(this + 60) = 0;
    *(this + 76) = 4113;
    v31 = *(this + 52);
    if (v31)
    {
      SourceNotifications::CallSourceNotifications(v31, 4112);
    }
  }

  else
  {
    v6 = v5 - 56577;
    v7 = v6 > 5 || v6 == 3;
    if (!v7)
    {
      *(this + 76) = 56580;
      operator new();
    }
  }

LABEL_10:
  if (v32 == 1)
  {
    (*(*(this + 10) + 24))(this + 80);
  }

  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }
}

void sub_23A03125C(_Unwind_Exception *exception_object)
{
  if (v2 != v3)
  {
    atomic_fetch_add((v1 + 64), 0xFFFFFFFF);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OALSource::Pause(OALSource *this)
{
  v2 = *(this + 1);
  v3 = pthread_self();
  v4 = *(v2 + 480);
  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  result = (*(*(this + 10) + 16))();
  v6 = *(this + 76);
  if ((v6 - 56578) <= 4 && ((1 << (v6 - 2)) & 0x19) != 0)
  {
    operator new();
  }

  if (v6 == 4114)
  {
    *(this + 86) = -1;
    operator new();
  }

  if (result == 1)
  {
    result = (*(*(this + 10) + 24))(this + 80);
  }

  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }

  return result;
}

void sub_23A031454(_Unwind_Exception *exception_object)
{
  if (v2 != v3)
  {
    atomic_fetch_add((v1 + 64), 0xFFFFFFFF);
  }

  _Unwind_Resume(exception_object);
}

void OALSource::Stop(OALSource *this)
{
  v2 = *(this + 1);
  v3 = pthread_self();
  v4 = *(v2 + 480);
  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v10 = (*(*(this + 10) + 16))();
  *(this + 85) = 0;
  v5 = *(this + 76);
  if ((v5 - 56578) <= 4 && v5 != 56580)
  {
    operator new();
  }

  if (v5 == 4114)
  {
    *(this + 76) = 56577;
    *(this + 86) = -1;
    operator new();
  }

  if (v5 == 4115)
  {
    v7 = *(this + 58);
    if (v7 != -1)
    {
      OALContext::SetBusAsAvailable(*(this + 1), v7);
      *(this + 58) = -1;
      *(this + 76) = 4116;
      v8 = *(this + 52);
      if (v8)
      {
        SourceNotifications::CallSourceNotifications(v8, 4112);
      }

      if (*(*(this + 3) + 24))
      {
        v9 = *(this + 52);
        if (v9)
        {
          SourceNotifications::CallSourceNotifications(v9, 4118);
        }
      }
    }
  }

  if (v10 == 1)
  {
    (*(*(this + 10) + 24))(this + 80);
  }

  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }
}

void sub_23A0316B8(_Unwind_Exception *exception_object)
{
  if (v2 != v3)
  {
    atomic_fetch_add((v1 + 64), 0xFFFFFFFF);
  }

  _Unwind_Resume(exception_object);
}

void SourceNotifications::CallSourceNotifications(SourceNotifications *this, int a2)
{
  v2 = *(this + 3);
  if (v2)
  {
    v5 = (*(*v2 + 16))(*(this + 3));
    v7 = *this;
    v6 = *(this + 1);
    if (*this != v6)
    {
      v8 = *this;
      do
      {
        if (*v8 == a2)
        {
          global_queue = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = ___ZN19SourceNotifications26CallSourceNotificationsImpEj_block_invoke;
          block[3] = &__block_descriptor_tmp;
          block[4] = this;
          block[5] = v7;
          v11 = a2;
          dispatch_async(global_queue, block);
          v6 = *(this + 1);
        }

        v8 += 6;
        v7 += 24;
      }

      while (v8 != v6);
    }

    if (v5)
    {
      (*(*v2 + 24))(v2);
    }
  }
}

uint64_t OALSource::GetQueueOffset(OALSource *this, int a2)
{
  v4 = *(this + 1);
  v5 = pthread_self();
  v6 = *(v4 + 480);
  if (v5 != v6)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v7 = (*(*(this + 10) + 16))(this + 80);
  if (a2 == 1)
  {
    v33 = *(this + 4);
    v34 = *v33;
    if (*v33 == v33[1])
    {
      v35 = 0;
      v36 = *(this + 14);
      if (v36)
      {
LABEL_31:
        v37 = 0;
        v38 = 0;
        v39 = 8;
        do
        {
          while (1)
          {
            v40 = *(this + 3);
            if (*v40 + v39 - 8 != v40[1])
            {
              break;
            }

            ++v37;
            v39 += 32;
            if (v37 >= v36)
            {
              goto LABEL_35;
            }
          }

          FrameCount = OALBuffer::GetFrameCount(*(*v40 + v39));
          v36 = *(this + 14);
          v38 += FrameCount;
          ++v37;
          v39 += 32;
        }

        while (v37 < v36);
LABEL_35:
        v42 = 32 * v36;
        v43 = *(this + 3);
        v44 = *v43;
        v45 = v43[1];
        v46 = v44 + 32 * v36;
        if (v46 == v45)
        {
          goto LABEL_58;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v35 = 0;
      do
      {
        v35 += OALBuffer::GetFrameCount(*(v34 + 8));
        v34 += 32;
      }

      while (v34 != v33[1]);
      v36 = *(this + 14);
      if (v36)
      {
        goto LABEL_31;
      }
    }

    v42 = 0;
    v38 = 0;
    v50 = *(this + 3);
    v44 = *v50;
    v45 = v50[1];
    v46 = v44;
    if (v44 == v45)
    {
      goto LABEL_58;
    }

LABEL_46:
    v51 = *(*(v46 + 8) + 320);
    if (v51)
    {
      v52 = *(v46 + 16) / v51;
      if (*(this + 71) == 1735095154)
      {
LABEL_59:
        v58 = (this + 376);
        goto LABEL_60;
      }

LABEL_48:
      v53 = v44 + v42;
      if (v44)
      {
        v54 = v53 == v45;
      }

      else
      {
        v54 = 1;
      }

      if (v54)
      {
        v55 = *(this + 4);
        v53 = *v55;
        v56 = v55[1];
        if (!v53 || v53 == v56)
        {
          goto LABEL_82;
        }
      }

      v58 = (*(v53 + 8) + 304);
LABEL_60:
      v49 = ((v38 + v35 + v52) / *v58);
      if (!v7)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }

LABEL_58:
    v52 = 0;
    if (*(this + 71) == 1735095154)
    {
      goto LABEL_59;
    }

    goto LABEL_48;
  }

  if (a2 == 2)
  {
    v22 = *(this + 4);
    v23 = *v22;
    if (*v22 == v22[1])
    {
      v24 = 0;
      v25 = *(this + 14);
      if (v25)
      {
LABEL_21:
        v26 = 0;
        v27 = 0;
        v28 = 8;
        do
        {
          while (1)
          {
            v29 = *(this + 3);
            if (*v29 + v28 - 8 != v29[1])
            {
              break;
            }

            ++v26;
            v28 += 32;
            if (v26 >= v25)
            {
              goto LABEL_25;
            }
          }

          v30 = OALBuffer::GetFrameCount(*(*v29 + v28));
          v25 = *(this + 14);
          v27 += v30;
          ++v26;
          v28 += 32;
        }

        while (v26 < v25);
LABEL_25:
        v31 = *(this + 3);
        v32 = *v31 + 32 * v25;
        if (v32 == v31[1])
        {
LABEL_42:
          v49 = (v27 + v24);
          if (!v7)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        }

LABEL_39:
        v48 = *(*(v32 + 8) + 320);
        if (v48)
        {
          v49 = v27 + v24 + *(v32 + 16) / v48;
          if (!v7)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v24 = 0;
      do
      {
        v24 += OALBuffer::GetFrameCount(*(v23 + 8));
        v23 += 32;
      }

      while (v23 != v22[1]);
      v25 = *(this + 14);
      if (v25)
      {
        goto LABEL_21;
      }
    }

    v27 = 0;
    v47 = *(this + 3);
    v32 = *v47;
    if (*v47 == v47[1])
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (a2 != 3)
  {
    goto LABEL_82;
  }

  v8 = *(this + 4);
  v9 = *v8;
  if (*v8 != v8[1])
  {
    v10 = 0;
    do
    {
      v10 += OALBuffer::GetFrameCount(*(v9 + 8));
      v9 += 32;
    }

    while (v9 != v8[1]);
    v11 = *(this + 14);
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_63:
    v17 = 0;
    v13 = 0;
    v59 = *(this + 3);
    v19 = *v59;
    v20 = v59[1];
    v21 = v19;
    if (v19 == v20)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  v10 = 0;
  v11 = *(this + 14);
  if (!v11)
  {
    goto LABEL_63;
  }

LABEL_11:
  v12 = 0;
  v13 = 0;
  v14 = 8;
  do
  {
    while (1)
    {
      v15 = *(this + 3);
      if (*v15 + v14 - 8 != v15[1])
      {
        break;
      }

      ++v12;
      v14 += 32;
      if (v12 >= v11)
      {
        goto LABEL_15;
      }
    }

    v16 = OALBuffer::GetFrameCount(*(*v15 + v14));
    v11 = *(this + 14);
    v13 += v16;
    ++v12;
    v14 += 32;
  }

  while (v12 < v11);
LABEL_15:
  v17 = 32 * v11;
  v18 = *(this + 3);
  v19 = *v18;
  v20 = v18[1];
  v21 = v19 + 32 * v11;
  if (v21 == v20)
  {
    goto LABEL_66;
  }

LABEL_64:
  v60 = *(*(v21 + 8) + 320);
  if (v60)
  {
    v61 = *(v21 + 16) / v60;
    goto LABEL_67;
  }

LABEL_66:
  v61 = 0;
LABEL_67:
  v62 = v13 + v10 + v61;
  if (*(this + 71) == 1735095154)
  {
    v49 = *(this + 100) * v62;
    if (!v7)
    {
      goto LABEL_84;
    }

LABEL_83:
    (*(*(this + 10) + 24))(this + 80);
    goto LABEL_84;
  }

  v63 = v19 + v17;
  if (v19)
  {
    v64 = v63 == v20;
  }

  else
  {
    v64 = 1;
  }

  if (v64 && ((v65 = *(this + 4), v63 = *v65, v66 = v65[1], v63) ? (v67 = v63 == v66) : (v67 = 1), v67) || (v68 = *(v63 + 8), (v69 = *(v68 + 324)) == 0))
  {
LABEL_82:
    v49 = 0;
    if (!v7)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v49 = *(v68 + 320) * (v62 / v69);
  if (v7)
  {
    goto LABEL_83;
  }

LABEL_84:
  if (v5 != v6)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }

  return v49;
}

void sub_23A031D54(_Unwind_Exception *exception_object)
{
  if (v2 != v3)
  {
    atomic_fetch_add((v1 + 64), 0xFFFFFFFF);
  }

  _Unwind_Resume(exception_object);
}

float OALSource::GetQueueOffsetSecondsFloat(OALSource *this)
{
  v2 = this + 80;
  v3 = (*(*(this + 10) + 16))(this + 80);
  v4 = *(v2 - 6);
  v5 = *v4;
  if (*v4 != v4[1])
  {
    v6 = 0;
    do
    {
      v6 += OALBuffer::GetFrameCount(*(v5 + 8));
      v5 += 32;
    }

    while (v5 != v4[1]);
    v7 = *(this + 14);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_12:
    v13 = 0;
    v9 = 0;
    v18 = *(this + 3);
    v15 = *v18;
    v16 = v18[1];
    v17 = v15;
    if (v15 == v16)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v6 = 0;
  v7 = *(this + 14);
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_5:
  v8 = 0;
  v9 = 0;
  v10 = 8;
  do
  {
    while (1)
    {
      v11 = *(this + 3);
      if (*v11 + v10 - 8 != v11[1])
      {
        break;
      }

      ++v8;
      v10 += 32;
      if (v8 >= v7)
      {
        goto LABEL_9;
      }
    }

    FrameCount = OALBuffer::GetFrameCount(*(*v11 + v10));
    v7 = *(this + 14);
    v9 += FrameCount;
    ++v8;
    v10 += 32;
  }

  while (v8 < v7);
LABEL_9:
  v13 = 32 * v7;
  v14 = *(this + 3);
  v15 = *v14;
  v16 = v14[1];
  v17 = v15 + 32 * v7;
  if (v17 == v16)
  {
LABEL_25:
    v20 = 0;
    if (*(this + 71) == 1735095154)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

LABEL_13:
  v19 = *(*(v17 + 8) + 320);
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = *(v17 + 16) / v19;
  if (*(this + 71) == 1735095154)
  {
LABEL_26:
    v27 = (this + 376);
    goto LABEL_27;
  }

LABEL_15:
  v21 = v15 + v13;
  if (v15)
  {
    v22 = v21 == v16;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = *(this + 4);
    v21 = *v23;
    v24 = v23[1];
    v25 = 0.0;
    if (!v21 || v21 == v24)
    {
      goto LABEL_28;
    }
  }

  v27 = (*(v21 + 8) + 304);
LABEL_27:
  v25 = (v9 + v6 + v20) / *v27;
LABEL_28:
  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  return v25;
}

uint64_t OALSource::SetQueueOffset(OALSource *this, int a2, float a3)
{
  if (a3 < 0.0)
  {
    goto LABEL_52;
  }

  switch(a2)
  {
    case 3:
      if (*(this + 71) == 1735095154)
      {
        v5 = a3 / *(this + 100);
      }

      else
      {
        v7 = *(this + 3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *v7 + ((*(this + 14) << 48) >> 43);
        if (v8)
        {
          v11 = v10 == v9;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          v5 = 0;
        }

        else
        {
          v5 = *(*(v10 + 8) + 324) * (a3 / *(*(v10 + 8) + 320));
        }
      }

      break;
    case 2:
      v5 = a3;
      break;
    case 1:
      if (*(this + 71) == 1735095154)
      {
        v4 = (this + 376);
      }

      else
      {
        v12 = *(this + 3);
        v13 = *v12;
        v14 = v12[1];
        v15 = *v12 + ((*(this + 14) << 48) >> 43);
        if (v13)
        {
          v16 = v15 == v14;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          v5 = 0;
          goto LABEL_24;
        }

        v4 = (*(v15 + 8) + 304);
      }

      v5 = (*v4 * a3);
LABEL_24:
      if (v5 >= a3)
      {
        break;
      }

LABEL_52:
      exception = __cxa_allocate_exception(4uLL);
      *exception = 40963;
      __cxa_throw(exception, MEMORY[0x277D827C0], 0);
    default:
      return 40963;
  }

  v17 = *(this + 1);
  v18 = pthread_self();
  v19 = *(v17 + 480);
  if (v18 != v19)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v20 = (*(*(this + 10) + 16))();
  result = 0;
  v21 = *(this + 76);
  if (v21 > 56576)
  {
    if ((v21 - 56577) >= 6)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  if ((v21 - 4115) >= 2 && v21 != 4113)
  {
    if (v21 != 4114)
    {
LABEL_35:
      if (!v20)
      {
        goto LABEL_47;
      }

LABEL_46:
      v26 = result;
      (*(*(this + 10) + 24))(this + 80);
      result = v26;
      goto LABEL_47;
    }

LABEL_30:
    v22 = *(this + 3);
    v23 = *v22;
    if (*v22 == v22[1])
    {
      if (v5)
      {
LABEL_34:
        result = 40963;
        goto LABEL_35;
      }
    }

    else
    {
      v24 = 0;
      do
      {
        v24 += OALBuffer::GetFrameCount(*(v23 + 8));
        v23 += 32;
      }

      while (v23 != v22[1]);
      if (v5 > v24)
      {
        goto LABEL_34;
      }
    }

    *(this + 86) = -1;
    *(this + 89) = v5;
    operator new();
  }

  result = 0;
  *(this + 85) = v5;
  if (v20)
  {
    goto LABEL_46;
  }

LABEL_47:
  if (v18 != v19)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }

  return result;
}

void sub_23A03231C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CAGuard::Locker::~Locker(&a9);
  if (v10 != v11)
  {
    atomic_fetch_add((v9 + 64), 0xFFFFFFFF);
  }

  _Unwind_Resume(a1);
}

uint64_t OALSource::SetRenderCallback(OALSource *this, uint64_t a2, int a3, unsigned int a4, void *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = *(this + 1);
  v11 = pthread_self();
  v12 = *(v10 + 480);
  if (v11 != v12)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v13 = (*(*(this + 10) + 16))();
  v14 = *(this + 76);
  if ((v14 - 56577) <= 5)
  {
    if (((1 << (v14 - 1)) & 0x36) == 0)
    {
      if (!a2)
      {
        *(this + 71) = 4144;
        *(this + 45) = 0;
      }

      operator new();
    }

LABEL_10:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v15 = *this;
      *buf = 136315906;
      v19 = "oalSource.cpp";
      v20 = 1024;
      v21 = 2084;
      v22 = 2048;
      v23 = v15;
      v24 = 2048;
      a2 = 40964;
      v25 = 40964;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::SetRenderCallback FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      a2 = 40964;
      if (!v13)
      {
        goto LABEL_15;
      }
    }

LABEL_14:
    (*(*(this + 10) + 24))(this + 80);
    goto LABEL_15;
  }

  if ((v14 - 4114) < 2)
  {
    goto LABEL_10;
  }

  OALSource::FlushBufferQueue(this);
  if (a2)
  {
    *(this + 45) = a2;
    *(this + 46) = a5;
    FillInASBD(this + 376, a3, a4);
    *(this + 71) = 1735095154;
    CAStreamBasicDescription::Print((this + 376), *MEMORY[0x277D85E08]);
    a2 = 0;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(this + 71) = 4144;
    *(this + 45) = 0;
    if (v13)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  if (v11 != v12)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }

  v16 = *MEMORY[0x277D85DE8];
  return a2;
}

void sub_23A032618(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OALSource::AddNotification(OALSource *this, int a2, void (*a3)(unsigned int, unsigned int, void *), void *a4)
{
  v4 = *(this + 52);
  if (!v4)
  {
    operator new();
  }

  return SourceNotifications::AddSourceNotification(v4, a2, a3, a4);
}

void sub_23A032724(_Unwind_Exception *a1)
{
  MEMORY[0x23EE824D0](v3, 0x10F1C40976EDA9DLL);
  v5 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v5;
    operator delete(v5);
    MEMORY[0x23EE824D0](v2, v1);
    _Unwind_Resume(a1);
  }

  MEMORY[0x23EE824D0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t SourceNotifications::AddSourceNotification(SourceNotifications *this, int a2, void (*a3)(unsigned int, unsigned int, void *), void *a4)
{
  v8 = *(this + 3);
  v9 = (*(*v8 + 16))(v8);
  v10 = v9;
  v11 = *this;
  v12 = *(this + 1);
  if (*this != v12)
  {
    while (*v11 != a2 || *(v11 + 8) != a3 || *(v11 + 16) != a4)
    {
      v11 += 24;
      if (v11 == v12)
      {
        goto LABEL_10;
      }
    }
  }

  if (v11 != v12)
  {
    v13 = 4294967246;
    if (!v9)
    {
      return v13;
    }

    goto LABEL_11;
  }

LABEL_10:
  LODWORD(v15) = a2;
  *(&v15 + 1) = a3;
  v16 = a4;
  std::vector<SourceNotifyInfo>::push_back[abi:ne200100](this, &v15);
  v13 = 0;
  if (v10)
  {
LABEL_11:
    (*(*v8 + 24))(v8);
  }

  return v13;
}

void sub_23A032898(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CAMutex::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

uint64_t OALSource::RemoveNotification(uint64_t this, int a2, void (*a3)(unsigned int, unsigned int, void *), void *a4)
{
  v4 = *(this + 416);
  if (v4)
  {
    v8 = v4[3];
    this = (*(*v8 + 16))(v8);
    v10 = *v4;
    v9 = v4[1];
    if (*v4 != v9)
    {
      while (*v10 != a2 || *(v10 + 8) != a3 || *(v10 + 16) != a4)
      {
        v10 += 24;
        if (v10 == v9)
        {
          goto LABEL_12;
        }
      }
    }

    if (v10 != v9)
    {
      v11 = v9 - (v10 + 24);
      if (v9 != v10 + 24)
      {
        v12 = this;
        memmove(v10, (v10 + 24), v9 - (v10 + 24));
        this = v12;
      }

      v4[1] = v10 + v11;
    }

LABEL_12:
    if (this)
    {
      return (*(*v8 + 24))(v8);
    }
  }

  return this;
}

uint64_t OALSource::SetRenderQuality(OALSource *this, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!IsValidRenderQuality(a2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = *this;
      v12 = 136315650;
      v13 = "oalSource.cpp";
      v14 = 1024;
      v15 = 2157;
      v16 = 2048;
      v17 = v8;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d OALSource::SetRenderQuality called - OALSource = %ld: Invalid Render Quality", &v12, 0x1Cu);
    }

    v5 = 4294967246;
LABEL_9:
    v9 = *MEMORY[0x277D85DE8];
    return v5;
  }

  *(this + 111) = a2;
  v4 = *(this + 58);
  if (v4 == -1)
  {
    v5 = 0;
    v11 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v5 = OALContext::SetSourceDesiredRenderQualityOnBus(*(this + 1), a2, v4);
  if (!v5 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_9;
  }

  v6 = *this;
  v12 = 136315906;
  v13 = "oalSource.cpp";
  v14 = 1024;
  v15 = 2551;
  v16 = 2048;
  v17 = v6;
  v18 = 2048;
  v19 = v5;
  _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::UpdateBusRenderQuality FAILED - OALSource = %ld : result = %ld", &v12, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

void *OALSource::ClearMessageQueue(void *this)
{
  while (1)
  {
    v1 = this[53];
    if (!v1)
    {
      break;
    }

    v2 = this[53];
    atomic_compare_exchange_strong(this + 53, &v2, 0);
    if (v2 == v1)
    {
      this = 0;
      do
      {
        v3 = this;
        this = v1;
        v1 = *v1;
        *this = v3;
      }

      while (v1);
      do
      {
        v4 = *this;
        MEMORY[0x23EE824D0]();
        this = v4;
      }

      while (v4);
      return this;
    }
  }

  return this;
}

void OALSource::UpdateQueue(OALSource *this)
{
  if (*(this + 14))
  {
    v2 = 0;
    do
    {
      v3 = *(this + 3);
      v4 = *v3;
      v5 = v3[1];
      if (v4)
      {
        v6 = v4 == v5;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        v7 = *(this + 4);
        v8 = *v4;
        v9 = *(v4 + 1);
        v10 = v4[6];
        LODWORD(v18) = v8;
        *(&v18 + 1) = v9;
        v19 = 0;
        v20 = v10;
        std::vector<BufferInfo>::push_back[abi:ne200100](v7, &v18);
        *(v7 + 24) = (*(v7 + 8) - *v7) >> 5;
        v11 = *(this + 3);
        v13 = *v11;
        v12 = v11[1];
        if (*v11 == v12)
        {
          v16 = *v11;
        }

        else
        {
          v14 = v12 - (v13 + 32);
          if (v12 != v13 + 32)
          {
            memmove(*v11, v13 + 32, v12 - (v13 + 32));
          }

          v15 = *v11;
          v16 = &v13[v14];
          v11[1] = &v13[v14];
          v13 = v15;
        }

        *(v11 + 6) = (v16 - v13) >> 5;
        *(this + 12) = *(*(this + 4) + 24) + *(*(this + 3) + 24);
        v17 = *(this + 52);
        if (v17)
        {
          SourceNotifications::CallSourceNotifications(v17, 4118);
        }
      }

      ++v2;
    }

    while (v2 < *(this + 14));
    *(this + 14) = 0;
  }
}

uint64_t OALSource::CalculateDistanceAndAzimuth(uint64_t this, float *a2, float *a3, float *a4, float *a5)
{
  *a5 = 1.0;
  v5 = *(this + 8);
  v6 = v5[89];
  v7 = v5[90];
  v8 = v5[91];
  v9 = v5[93];
  v10 = v5[94];
  v11 = v5[95];
  v12 = v5[96];
  v13 = v5[97];
  v14 = v5[98];
  if (*(this + 284) != 1735095154)
  {
    v18 = *(this + 24);
    v15 = 0.0;
    if (*v18)
    {
      v19 = *v18 + ((*(this + 56) << 48) >> 43);
      v16 = 0.0;
      v17 = 0.0;
      if (v19 == v18[1])
      {
        goto LABEL_62;
      }

      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      if (*(*(v19 + 8) + 332) != 1)
      {
        goto LABEL_62;
      }

      goto LABEL_8;
    }

LABEL_32:
    v16 = 0.0;
    v17 = 0.0;
    goto LABEL_62;
  }

  if (!*(this + 360))
  {
    v15 = 0.0;
    goto LABEL_32;
  }

  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if (*(this + 404) != 1)
  {
    goto LABEL_62;
  }

LABEL_8:
  v20 = *(this + 244) - v5[87];
  v21 = *(this + 248) - v5[88];
  if (*(this + 280))
  {
    v21 = *(this + 248);
    v20 = *(this + 244);
    v22 = *(this + 240);
  }

  else
  {
    v22 = *(this + 240) - v5[86];
  }

  v23 = (v10 * v14) - (v11 * v13);
  v24 = (v11 * v12) - (v9 * v14);
  v25 = (v9 * v13) - (v10 * v12);
  v26 = sqrtf(((v24 * v24) + (v23 * v23)) + (v25 * v25));
  if (v26 != 0.0)
  {
    v27 = 1.0 / v26;
    v23 = v23 * v27;
    v24 = v24 * v27;
    v25 = v25 * v27;
  }

  v28 = sqrtf(((v10 * v10) + (v9 * v9)) + (v11 * v11));
  if (v28 != 0.0)
  {
    v29 = 1.0 / v28;
    v9 = v9 * v29;
    v10 = v10 * v29;
    v11 = v11 * v29;
  }

  v15 = sqrtf(((v20 * v20) + (v22 * v22)) + (v21 * v21));
  v30 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  v35 = 0.0;
  v85 = v5[90];
  if (v15 > 0.0)
  {
    v83 = v5[89];
    v84 = v5[91];
    v36 = v22 * (1.0 / v15);
    v37 = v20 * (1.0 / v15);
    v38 = v21 * (1.0 / v15);
    v39 = (v24 * v11) - (v25 * v10);
    v40 = (v25 * v9) - (v23 * v11);
    v41 = (v23 * v10) - (v24 * v9);
    v42 = ((v37 * v40) + (v36 * v39)) + (v38 * v41);
    v79 = v39;
    v80 = v38;
    v43 = v36 - (v42 * v39);
    v44 = v37 - (v42 * v40);
    v45 = v38 - (v42 * v41);
    v46 = sqrtf(((v44 * v44) + (v43 * v43)) + (v45 * v45));
    v81 = v36;
    v82 = v37;
    v77 = v40;
    v78 = v41;
    v47 = this;
    v48 = a5;
    v49 = a2;
    v50 = a3;
    v51 = a4;
    if (v46 != 0.0)
    {
      v52 = 1.0 / v46;
      v43 = v43 * v52;
      v44 = v44 * v52;
      v45 = v45 * v52;
    }

    v53 = acosf(((v24 * v44) + (v43 * v23)) + (v45 * v25)) * 180.0 / 3.14159265;
    v54 = fabsf(v53);
    if (v54 >= 1.0e15 || v54 <= 1.0e-15)
    {
      v53 = 0.0;
    }

    if ((((v10 * v44) + (v43 * v9)) + (v45 * v11)) < 0.0)
    {
      v53 = 360.0 - v53;
    }

    if (v53 < 0.0 || v53 > 270.0)
    {
      v57 = 450.0;
    }

    else
    {
      v57 = 90.0;
    }

    v16 = v57 - v53;
    a4 = v51;
    a3 = v50;
    a2 = v49;
    a5 = v48;
    this = v47;
    v6 = v83;
    v8 = v84;
    v7 = v85;
    v31 = v81;
    v30 = v82;
    v34 = v79;
    v35 = v80;
    v33 = v77;
    v32 = v78;
  }

  if (v31 != 0.0 || v30 != 0.0 || v35 != 0.0)
  {
    v58 = this;
    v59 = a5;
    v60 = a2;
    v61 = a3;
    v62 = a4;
    v63 = v30;
    v64 = v31;
    v65 = v35;
    v66 = acosf(((v30 * v33) + (v31 * v34)) + (v35 * v32)) * -180.0 / 3.14159274 + 90.0;
    v67 = fabsf(v66);
    if (v67 >= 1.0e15 || v67 <= 1.0e-15)
    {
      v66 = 0.0;
    }

    if (v66 <= 90.0)
    {
      v17 = v66;
    }

    else
    {
      v17 = 180.0 - v66;
    }

    if (v17 < -90.0)
    {
      v17 = -180.0 - v17;
    }

    a4 = v62;
    a3 = v61;
    a2 = v60;
    a5 = v59;
    this = v58;
    v7 = v85;
    v30 = v63;
    v31 = v64;
    v35 = v65;
  }

  v69 = v5[84];
  if (v69 > 0.0)
  {
    v70 = *(this + 252);
    v71 = *(this + 256);
    v72 = *(this + 260);
    if (v6 != 0.0 || v7 != 0.0 || v8 != 0.0 || v70 != 0.0 || v71 != 0.0 || v72 != 0.0)
    {
      v73 = sqrtf(((v30 * v30) + (v31 * v31)) + (v35 * v35));
      v74 = (v5[83] - (v69 * fminf(-(((v7 * v30) + (v31 * v6)) + (v35 * v8)) / v73, v5[83] / v69))) / (v5[83] - (v69 * fminf(-(((v30 * v71) + (v31 * v70)) + (v35 * v72)) / v73, v5[83] / v69)));
      v75 = 1.0;
      if (v74 != 0.0)
      {
        v76 = fabsf(v74);
        v75 = 16.0;
        if (v76 <= 1.0e15)
        {
          v75 = 0.125;
          if (v76 >= 1.0e-15)
          {
            v75 = 16.0;
            if (v74 <= 16.0)
            {
              v75 = v74;
              if (v74 < 0.125)
              {
                v75 = 0.125;
              }
            }
          }
        }
      }

      *a5 = v75;
    }
  }

LABEL_62:
  *a2 = v15;
  *a3 = v16;
  *a4 = v17;
  return this;
}

uint64_t OALSource::ConeAttenuation(OALSource *this)
{
  v2 = *(this + 66);
  if (v2 == 0.0 && *(this + 67) == 0.0 && *(this + 68) == 0.0 || (v3 = *(this + 72), v3 == 360.0) && *(this + 73) == 360.0)
  {
    if (*(this + 75) != 1.0)
    {
      *(this + 75) = 1065353216;
      return 1;
    }

    return 0;
  }

  v5 = *(this + 1);
  v6 = v5[86] - *(this + 60);
  v7 = v5[87] - *(this + 61);
  v8 = v5[88] - *(this + 62);
  v9 = sqrtf(((v7 * v7) + (v6 * v6)) + (v8 * v8));
  if (v9 != 0.0)
  {
    v10 = 1.0 / v9;
    v6 = v6 * v10;
    v7 = v7 * v10;
    v8 = v8 * v10;
  }

  v11 = *(this + 67);
  v12 = *(this + 68);
  v13 = sqrtf(((v11 * v11) + (v2 * v2)) + (v12 * v12));
  if (v13 != 0.0)
  {
    v14 = 1.0 / v13;
    v2 = v2 * v14;
    v11 = v11 * v14;
    v12 = v12 * v14;
  }

  v15 = acosf(((v7 * v11) + (v6 * v2)) + (v8 * v12)) * 180.0 / 3.14159265;
  v16 = fabsf(v15);
  v17 = fabsf(v3) * 0.5;
  v18 = 1.0;
  if (v16 > v17)
  {
    v19 = fabsf(*(this + 73)) * 0.5;
    if (v16 >= v19)
    {
      v18 = *(this + 74);
      if (v18 != *(this + 75))
      {
        goto LABEL_16;
      }

      return 0;
    }

    v18 = 1.0 - ((v16 - v17) / (v19 - v17)) + (((v16 - v17) / (v19 - v17)) * *(this + 74));
  }

  if (v18 != *(this + 75))
  {
LABEL_16:
    *(this + 75) = v18;
    return 1;
  }

  return 0;
}

uint64_t OALSource::UpdateBusFormat(OALSource *this)
{
  if (*(this + 71) == 1735095154)
  {
    v2 = this + 376;
    v3 = *(this + 58);
    if (v3 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *(this + 3);
    v6 = *v5;
    v7 = v5[1];
    v8 = *v5 + ((*(this + 14) << 48) >> 43);
    if (v6)
    {
      v9 = v8 == v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }

    v2 = (*(v8 + 8) + 304);
    v3 = *(this + 58);
    if (v3 == -1)
    {
LABEL_3:
      result = OALContext::SetBusFormat(*(this + 1), v3, v2);
      if (result)
      {
        return result;
      }

      goto LABEL_15;
    }
  }

  *(this + 27) = 0;
  *(this + 28) = 0;
  if (!OALContext::SetBusRenderProc(*(this + 1), v3, (this + 216)))
  {
    AUGraphUpdate(*(*(*(this + 1) + 16) + 16), 0);
  }

  OALContext::SetBusEnable(*(this + 1), *(this + 58), 1);
  *(this + 236) = 0;
  result = OALContext::SetBusFormat(*(this + 1), *(this + 58), v2);
  if (!result)
  {
LABEL_15:
    result = OALSource::AddRenderProc(this);
    if (!result)
    {
      *(this + 18) = 0;
    }
  }

  return result;
}

uint64_t OALSource::SourceInputProc(OALSource *this, void *a2, unsigned int *a3, const AudioTimeStamp *a4, unsigned int a5, AudioBufferList *a6, AudioBufferList *a7)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = *this;
  v9 = OALSource::DoRender(this, a6, a5);
  v10 = *this;
  if (v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315650;
    v14 = "oalSource.cpp";
    v15 = 1024;
    v16 = 2649;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: SourceInputProc FAILED - result = %ld", &v13, 0x1Cu);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t OALSource::DoRender(OALSource *this, AudioBufferList *a2, unsigned int a3)
{
  v142 = *MEMORY[0x277D85DE8];
  if (*(this + 71) == 1735095154)
  {
    v6 = *(this + 100) * a3;
    v7 = (this + 408);
    goto LABEL_53;
  }

  v8 = *(this + 3);
  v9 = *v8;
  v10 = v8[1];
  v11 = *v8 + ((*(this + 14) << 48) >> 43);
  if (v9)
  {
    v12 = v11 == v10;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  v14 = v11;
  if (v12)
  {
    v15 = *(this + 4);
    v14 = *v15;
    v16 = v15[1];
    if (!v14 || v14 == v16)
    {
      v6 = 0;
      goto LABEL_19;
    }
  }

  v18 = *(v14 + 8);
  v19 = *(v18 + 324);
  if (v19)
  {
    v6 = *(v18 + 320) * (a3 / v19);
    if (v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v6 = 0;
    if (v13)
    {
LABEL_19:
      v20 = 0;
      mData = a2->mBuffers[0].mData;
      atomic_fetch_add(this + 17, 1u);
      if (*(this + 16))
      {
        goto LABEL_57;
      }

      goto LABEL_20;
    }
  }

  v7 = (*(v11 + 8) + 336);
LABEL_53:
  if (*v7 == 8)
  {
    v20 = -128;
  }

  else
  {
    v20 = 0;
  }

  mData = a2->mBuffers[0].mData;
  atomic_fetch_add(this + 17, 1u);
  if (*(this + 16))
  {
LABEL_57:
    v47 = *this;
    if (a2->mNumberBuffers)
    {
      v48 = 0;
      p_mData = &a2->mBuffers[0].mData;
      do
      {
        bzero(*p_mData, *(p_mData - 1));
        ++v48;
        p_mData += 2;
      }

      while (v48 < a2->mNumberBuffers);
    }

    result = 0;
    goto LABEL_176;
  }

LABEL_20:
  if (*(this + 19) == 1)
  {
    v22 = *(this + 58);
    if (v22 != -1)
    {
      v23 = AudioUnitReset(*(*(this + 1) + 32), 1u, v22);
      if (v23)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v24 = *this;
          *buf = 136315906;
          *&buf[4] = "oalSource.cpp";
          v136 = 1024;
          v137 = 1290;
          v138 = 2048;
          v139 = v24;
          v140 = 2048;
          v141 = v23;
          _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::ResetMixerBus FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
        }
      }
    }

    *(this + 19) = 0;
  }

  if (*(this + 71) != 1735095154)
  {
    OALSource::UpdateQueue(this);
    v29 = *(this + 3);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(this + 14);
    v33 = *v29 + 32 * v32;
    if (*v29)
    {
      v34 = v33 == v31;
    }

    else
    {
      v34 = 1;
    }

    if (!v34)
    {
      v50 = v32 + 1;
      while (!*v33 || !*(*(v33 + 8) + 288))
      {
        *(v33 + 20) = 2;
        *(this + 14) = v50;
        v33 = v30 + 32 * v50++;
        if (v33 == v31)
        {
          goto LABEL_37;
        }
      }

LABEL_64:
      if (*(this + 71) == 1735095154)
      {
        v51 = (this + 400);
        v52 = 1;
      }

      else
      {
        v54 = *(this + 3);
        v55 = *v54;
        v56 = v54[1];
        v57 = *v54 + ((*(this + 14) << 48) >> 43);
        if (v55)
        {
          v58 = v57 == v56;
        }

        else
        {
          v58 = 1;
        }

        if (v58 && ((v59 = *(this + 4), v57 = *v59, v60 = v59[1], v57) ? (v61 = v57 == v60) : (v61 = 1), v61) || (v62 = *(v57 + 8), (v63 = *(v62 + 324)) == 0))
        {
          v53 = 0;
          goto LABEL_88;
        }

        v52 = v63 == 1;
        v51 = (v62 + 320);
      }

      v53 = *v51 * v52;
LABEL_88:
      OALSource::ChangeChannelSettings(this);
      v66 = *(v33 + 8);
      v67 = *(v33 + 16);
      if (*(v66 + 300) - v67 < v6)
      {
        v28 = 0;
        if (!a3)
        {
          goto LABEL_165;
        }

        v133 = (this + 400);
        while (1)
        {
          if (*(this + 60))
          {
            goto LABEL_165;
          }

          v68 = *(this + 3);
          v69 = *v68;
          v70 = v68[1];
          v71 = *(this + 14);
          v72 = *v68 + 32 * v71;
          if (*v68)
          {
            v73 = v72 == v70;
          }

          else
          {
            v73 = 1;
          }

          if (v73)
          {
LABEL_158:
            *(this + 60) = 1;
            OALContext::SetBusNeedsPostRender(*(this + 1), *(this + 58), 1);
            goto LABEL_165;
          }

          while (1)
          {
            if (*v72)
            {
              v74 = *(v72 + 8);
              v75 = *(v74 + 288);
              if (v75)
              {
                break;
              }
            }

            *(v72 + 20) = 2;
            *(this + 14) = ++v71;
            v72 = v69 + 32 * v71;
            if (v72 == v70)
            {
              goto LABEL_158;
            }
          }

          *(v72 + 20) = 1;
          v76 = *(this + 71);
          v77 = (this + 400);
          v78 = v28;
          if (v76 != 1735095154)
          {
            v79 = 32 * v71;
            v80 = v69 + v79;
            if (v69 + v79 == v70 && ((v81 = *(this + 4), v80 = *v81, v82 = v81[1], v80) ? (v83 = v80 == v82) : (v83 = 1), v83) || (v84 = *(v80 + 8), (v85 = *(v84 + 324)) == 0))
            {
              v86 = a2->mBuffers[0].mData;
              v88 = (v72 + 16);
              v87 = *(v72 + 16);
              v89 = (*(v74 + 300) - v87);
              goto LABEL_114;
            }

            v77 = (v84 + 320);
            v78 = v28 / v85;
          }

          v86 = a2->mBuffers[0].mData + (*v77 * v78);
          v88 = (v72 + 16);
          v87 = *(v72 + 16);
          v89 = (*(v74 + 300) - v87);
          if (v76 == 1735095154)
          {
            v90 = v89 / *v133;
            if (v90 >= a3 - v28)
            {
              v90 = a3 - v28;
            }

            v132 = v90;
            v91 = *v133 * v90;
            goto LABEL_123;
          }

          v79 = 32 * v71;
LABEL_114:
          v92 = v69 + v79;
          if (v92 == v70)
          {
            v132 = 0;
            v94 = *(this + 4);
            v92 = *v94;
            if (!*v94 || v92 == v94[1])
            {
              v91 = 0;
              goto LABEL_123;
            }
          }

          else
          {
            v93 = *(*(v92 + 8) + 324) * (v89 / *(*(v92 + 8) + 320));
            if (v93 >= a3 - v28)
            {
              v93 = a3 - v28;
            }

            v132 = v93;
          }

          v95 = *(v92 + 8);
          v91 = *(v95 + 324);
          if (v91)
          {
            v91 = *(v95 + 320) * (v132 / v91);
          }

LABEL_123:
          if ((*(this + 237) & 1) == 0)
          {
            v131 = v88;
            v130 = v91;
            memcpy(v86, (v75 + v87), v91);
            v91 = v130;
            v88 = v131;
            v87 = *(v72 + 16);
            v74 = *(v72 + 8);
            v76 = *(this + 71);
          }

          v96 = v87 + v91;
          *v88 = v87 + v91;
          v97 = *(v74 + 300);
          if (v76 == 1735095154)
          {
            v98 = 1;
            v99 = (this + 400);
            goto LABEL_133;
          }

          v100 = *(this + 3);
          if (*v100 && (v101 = *v100 + ((*(this + 14) << 48) >> 43), v101 != v100[1]) || (v102 = *(this + 4), (v101 = *v102) != 0) && v101 != v102[1])
          {
            v103 = *(v101 + 8);
            v104 = *(v103 + 324);
            if (v104)
            {
              v98 = v104 == 1;
              v99 = (v103 + 320);
LABEL_133:
              if (v97 - v96 < *v99 * v98)
              {
                v105 = *(this + 14);
                *(this + 14) = v105 + 1;
                v106 = *(this + 3);
                v107 = *v106;
                if (!*v106 || (v108 = v106[1], v109 = v107 + 32 * (v105 + 1), v109 == v108))
                {
LABEL_141:
                  if (*(this + 69) == 1)
                  {
                    OALSource::ClearActiveQueue(this);
                    v111 = *(this + 3);
                    v112 = *(this + 4);
                    *(this + 3) = v112;
                    *(this + 4) = v111;
                    v114 = *v112;
                    v113 = v112[1];
                    v115 = *(v111 + 8) - *v111;
                    v116 = v113 - *v112;
                    v12 = v113 == *v112;
                    *(v112 + 6) = v116 >> 5;
                    *(v111 + 24) = v115 >> 5;
                    *(this + 12) = *(v111 + 24) + *(v112 + 6);
                    if (!v12)
                    {
                      v117 = v116 - 32;
                      v118 = v114;
                      if (v117 < 0x20)
                      {
                        goto LABEL_179;
                      }

                      v119 = (v117 >> 5) + 1;
                      v118 = v114 + 32 * (v119 & 0xFFFFFFFFFFFFFFELL);
                      v120 = (v114 + 48);
                      v121 = v119 & 0xFFFFFFFFFFFFFFELL;
                      do
                      {
                        *(v120 - 4) = 0;
                        *v120 = 0;
                        v120 += 8;
                        v121 -= 2;
                      }

                      while (v121);
                      if (v119 != (v119 & 0xFFFFFFFFFFFFFFELL))
                      {
LABEL_179:
                        do
                        {
                          *(v118 + 16) = 0;
                          v118 += 32;
                        }

                        while (v118 != v113);
                      }
                    }

                    *(this + 14) = 0;
                    *(this + 60) = 0;
                    v122 = *(this + 52);
                    if (v122 && *(this + 69))
                    {
                      SourceNotifications::CallSourceNotifications(v122, 36864);
                    }
                  }

                  else
                  {
                    *(this + 60) = 1;
                    OALContext::SetBusNeedsPostRender(*(this + 1), *(this + 58), 1);
                  }
                }

                else
                {
                  v110 = v105 + 2;
                  while (!*v109 || !*(*(v109 + 8) + 288))
                  {
                    *(v109 + 20) = 2;
                    *(this + 14) = v110;
                    v109 = v107 + 32 * v110++;
                    if (v109 == v108)
                    {
                      goto LABEL_141;
                    }
                  }
                }
              }
            }
          }

          v28 += v132;
          if (v28 >= a3)
          {
            goto LABEL_165;
          }
        }
      }

      if ((*(this + 237) & 1) == 0)
      {
        v123 = *(this + 86);
        if (v123 == -1 || v123 == 1)
        {
          memcpy(mData, (*(v66 + 288) + v67), v6);
          LODWORD(v67) = *(v33 + 16);
        }

        else
        {
          a2->mBuffers[0].mData = (*(v66 + 288) + v67);
        }
      }

      *(v33 + 16) = v67 + v6;
      v124 = v6;
      if (*(this + 71) == 1735095154)
      {
        v28 = v124 / *(this + 100);
      }

      else
      {
        v28 = 0;
        v125 = *(this + 3);
        if (*v125)
        {
          v126 = *v125 + ((*(this + 14) << 48) >> 43);
          if (v126 != v125[1])
          {
            v28 = *(*(v126 + 8) + 324) * (v124 / *(*(v126 + 8) + 320));
          }
        }
      }

LABEL_165:
      if ((*(this + 237) & 1) == 0 && v28 < a3)
      {
        memset(a2->mBuffers[0].mData + v28 * v53, v20, v6 - v28 * v53);
      }

      v127 = *(this + 86);
      if (v127 == -1)
      {
        v128 = 1;
      }

      else
      {
        if (v127 != 1)
        {
          goto LABEL_173;
        }

        v128 = 0;
      }

      OALSource::Ramp(this, a2, v128);
      *(this + 86) = -2;
LABEL_173:
      if (*(this + 237))
      {
        result = 1397312581;
      }

      else
      {
        result = 0;
      }

      goto LABEL_176;
    }

LABEL_37:
    if (*(this + 69))
    {
      v35 = *(this + 4);
      *(this + 3) = v35;
      *(this + 4) = v29;
      v37 = *v35;
      v36 = *(v35 + 8);
      v38 = v31 - v30;
      v39 = v36 - *v35;
      v12 = v36 == *v35;
      *(v35 + 24) = v39 >> 5;
      *(v29 + 6) = v38 >> 5;
      *(this + 12) = *(v29 + 6) + *(v35 + 24);
      if (v12)
      {
        v53 = 0;
        v28 = 0;
        *(this + 14) = 0;
        *(this + 60) = 0;
        goto LABEL_165;
      }

      v40 = v39 - 32;
      v41 = v37;
      if (v40 <= 0x1F)
      {
        goto LABEL_180;
      }

      v42 = (v40 >> 5) + 1;
      v41 = v37 + 32 * (v42 & 0xFFFFFFFFFFFFFFELL);
      v43 = (v37 + 48);
      v44 = v42 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v43 - 4) = 0;
        *v43 = 0;
        v43 += 8;
        v44 -= 2;
      }

      while (v44);
      if (v42 != (v42 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_180:
        do
        {
          *(v41 + 16) = 0;
          v41 += 32;
        }

        while (v41 != v36);
      }

      *(this + 14) = 0;
      *(this + 60) = 0;
      if (v37)
      {
        v45 = 1;
        v33 = v37;
        while (!*v33 || !*(*(v33 + 8) + 288))
        {
          *(v33 + 20) = 2;
          *(this + 14) = v45;
          v33 = v37 + 32 * v45++;
          if (v33 == v36)
          {
            goto LABEL_68;
          }
        }

        v46 = *(this + 52);
        if (v46)
        {
          SourceNotifications::CallSourceNotifications(v46, 36864);
        }

        goto LABEL_64;
      }
    }

    else
    {
      *(this + 60) = 1;
      OALContext::SetBusNeedsPostRender(*(this + 1), *(this + 58), 1);
    }

LABEL_68:
    v53 = 0;
    v28 = 0;
    goto LABEL_165;
  }

  v25 = *(this + 45);
  if (!v25)
  {
    result = 1397312581;
    goto LABEL_176;
  }

  *buf = mData;
  v134 = v6;
  result = v25(*this, v6, buf, &v134, *(this + 46));
  if (!result)
  {
    v27 = v134;
    if (*(this + 71) == 1735095154)
    {
      v28 = v27 / *(this + 100);
      if (v28 <= a3)
      {
LABEL_86:
        OALSource::ChangeChannelSettings(this);
        v53 = 0;
        goto LABEL_165;
      }
    }

    else
    {
      v28 = 0;
      v64 = *(this + 3);
      if (!*v64)
      {
        goto LABEL_86;
      }

      v65 = *v64 + ((*(this + 14) << 48) >> 43);
      if (v65 == v64[1])
      {
        goto LABEL_86;
      }

      v28 = *(*(v65 + 8) + 324) * (v27 / *(*(v65 + 8) + 320));
      if (v28 <= a3)
      {
        goto LABEL_86;
      }
    }

    result = 4294967246;
  }

LABEL_176:
  atomic_fetch_add(this + 17, 0xFFFFFFFF);
  v129 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OALSource::Ramp(uint64_t this, AudioBufferList *a2, int a3)
{
  v3 = *(this + 284);
  if (v3 == 1735095154)
  {
    v4 = *(this + 408);
    if (v4 != 8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *(this + 24);
    v9 = *v8;
    v10 = v8[1];
    v11 = *v8 + ((*(this + 56) << 48) >> 43);
    if (v9)
    {
      v12 = v11 == v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return this;
    }

    v4 = *(*(v11 + 8) + 336);
    if (v4 != 8)
    {
LABEL_3:
      if (v4 != 16)
      {
        return this;
      }

      mNumberChannels = a2->mBuffers[0].mNumberChannels;
      v6 = a2->mBuffers[0].mDataByteSize >> 1;
      if (v3 == 1735095154)
      {
        v7 = (this + 376);
      }

      else
      {
        v16 = *(this + 24);
        v17 = 0.0;
        if (!*v16)
        {
          goto LABEL_17;
        }

        v18 = *v16 + ((*(this + 56) << 48) >> 43);
        if (v18 == v16[1])
        {
          goto LABEL_17;
        }

        v7 = (*(v18 + 8) + 304);
      }

      v17 = *v7 * 0.00579999993;
LABEL_17:
      v19 = vcvtmd_u64_f64(v17);
      if (v6 / mNumberChannels < v19)
      {
        v19 = v6 / mNumberChannels;
      }

      v20 = 1.0;
      if (a3)
      {
        v20 = -1.0;
      }

      if (v19)
      {
        v21 = vcvtd_n_s64_f64((v20 / v19), 0xFuLL);
        v22 = v6 - v19 * mNumberChannels;
        if (!a3)
        {
          v22 = 0;
        }

        v23 = (a2->mBuffers[0].mData + 2 * v22);
        if (mNumberChannels <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = mNumberChannels;
        }

        if (mNumberChannels >= 0x10)
        {
          v40 = 0;
          for (i = 0; i < v19; ++i)
          {
            v42 = v23 + 2;
            v23 = (v23 + 2 * (v24 & 0xFFFFFFF0));
            v43 = vdupq_n_s16(v40);
            this = v24 & 0xFFFFFFF0;
            do
            {
              v44 = vshrn_high_n_s32(vshrn_n_s32(vmull_s16(*v43.i8, *v42), 0xFuLL), vmull_high_s16(v43, *v42->i8), 0xFuLL);
              *v42[-2].i8 = vshrn_high_n_s32(vshrn_n_s32(vmull_s16(*v43.i8, v42[-2]), 0xFuLL), vmull_high_s16(v43, *v42[-2].i8), 0xFuLL);
              *v42->i8 = v44;
              v42 += 4;
              this -= 16;
            }

            while (this);
            v45 = v24 - (v24 & 0xFFFFFFF0);
            if ((v24 & 0xFFFFFFF0) != v24)
            {
              do
              {
                this = (v23->i16[0] * v40) >> 15;
                v23->i16[0] = this;
                v23 = (v23 + 2);
                --v45;
              }

              while (v45);
            }

            v40 += v21;
          }
        }

        else
        {
          v25 = 0;
          for (j = 0; j < v19; ++j)
          {
            v27 = v24;
            do
            {
              v23->i16[0] = (v23->i16[0] * v25) >> 15;
              v23 = (v23 + 2);
              --v27;
            }

            while (v27);
            v25 += v21;
          }
        }
      }

      return this;
    }
  }

  v14 = a2->mBuffers[0].mNumberChannels;
  mDataByteSize = a2->mBuffers[0].mDataByteSize;
  if (v3 == 1735095154)
  {
    v15 = (this + 376);
  }

  else
  {
    v28 = *(this + 24);
    v29 = 0.0;
    if (!*v28)
    {
      goto LABEL_37;
    }

    v30 = *v28 + ((*(this + 56) << 48) >> 43);
    if (v30 == v28[1])
    {
      goto LABEL_37;
    }

    v15 = (*(v30 + 8) + 304);
  }

  v29 = *v15 * 0.00579999993;
LABEL_37:
  v31 = vcvtmd_u64_f64(v29);
  if (mDataByteSize / v14 < v31)
  {
    v31 = mDataByteSize / v14;
  }

  v32 = 1.0;
  if (a3)
  {
    v32 = -1.0;
  }

  if (v31)
  {
    v33 = vcvtd_n_s64_f64((v32 / v31), 0xFuLL);
    v34 = mDataByteSize - v31 * v14;
    if (!a3)
    {
      v34 = 0;
    }

    v35 = (a2->mBuffers[0].mData + v34);
    if (v14 <= 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = v14;
    }

    if (v14 > 0xF)
    {
      v46 = v36 & 0xFFFFFFF0;
      if (v46 == v36)
      {
        v47 = 0;
        v48 = 0;
        v49.i64[0] = 0x8080808080808080;
        v49.i64[1] = 0x8080808080808080;
        do
        {
          v50 = 0;
          v51 = vdupq_n_s16(v48);
          do
          {
            v52 = veorq_s8(v35[v50 / 0x10], v49);
            v53 = vmovl_high_s8(v52);
            v54 = vmovl_s8(*v52.i8);
            v66.val[3] = vshrq_n_u32(vmull_high_s16(v51, v53), 0xFuLL);
            v66.val[2] = vshrq_n_u32(vmull_s16(*v51.i8, *v53.i8), 0xFuLL);
            v66.val[1] = vshrq_n_u32(vmull_high_s16(v51, v54), 0xFuLL);
            v66.val[0] = vshrq_n_u32(vmull_s16(*v51.i8, *v54.i8), 0xFuLL);
            v35[v50 / 0x10] = veorq_s8(vqtbl4q_s8(v66, xmmword_23A03A4A0), v49);
            v50 += 16;
          }

          while (v46 != v50);
          v48 += v33;
          ++v47;
          v35 = (v35 + v46);
        }

        while (v47 < v31);
      }

      else
      {
        v55 = 0;
        v56 = 0;
        v57 = v36 - v46;
        v58.i64[0] = 0x8080808080808080;
        v58.i64[1] = 0x8080808080808080;
        do
        {
          v59 = v35;
          v35 = (v35 + v46);
          v60 = vdupq_n_s16(v56);
          v61 = v46;
          do
          {
            v62 = veorq_s8(*v59, v58);
            v63 = vmovl_high_s8(v62);
            v64 = vmovl_s8(*v62.i8);
            v67.val[3] = vshrq_n_u32(vmull_high_s16(v60, v63), 0xFuLL);
            v67.val[2] = vshrq_n_u32(vmull_s16(*v60.i8, *v63.i8), 0xFuLL);
            v67.val[1] = vshrq_n_u32(vmull_high_s16(v60, v64), 0xFuLL);
            v67.val[0] = vshrq_n_u32(vmull_s16(*v60.i8, *v64.i8), 0xFuLL);
            *v59++ = veorq_s8(vqtbl4q_s8(v67, xmmword_23A03A4A0), v58);
            v61 -= 16;
          }

          while (v61);
          v65 = v57;
          do
          {
            v35->i8[0] = (((v35->i8[0] ^ 0x7FFF80u) * v56) >> 15) ^ 0x80;
            v35 = (v35 + 1);
            --v65;
          }

          while (v65);
          v56 += v33;
          ++v55;
        }

        while (v55 < v31);
      }
    }

    else
    {
      v37 = 0;
      v38 = 0;
      do
      {
        v39 = v36;
        do
        {
          v35->i8[0] = (((v35->i8[0] ^ 0x7FFF80u) * v38) >> 15) ^ 0x80;
          v35 = (v35 + 1);
          --v39;
        }

        while (v39);
        v38 += v33;
        ++v37;
      }

      while (v37 < v31);
    }
  }

  return this;
}

uint64_t OALSource::DoPostRender(OALSource *this)
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(this + 58);
  atomic_fetch_add(this + 17, 1u);
  if (*(this + 16))
  {
    v4 = *this;
    v5 = *(this + 58);
    v6 = 0;
    goto LABEL_112;
  }

  if (*(this + 86) == -2)
  {
    do
    {
      v7 = *(this + 53);
      if (!v7)
      {
        goto LABEL_97;
      }

      v8 = *(this + 53);
      atomic_compare_exchange_strong(this + 53, &v8, 0);
    }

    while (v8 != v7);
    v9 = 0;
    do
    {
      v10 = v9;
      v9 = v7;
      v7 = *v7;
      *v9 = v10;
    }

    while (v7);
    v11 = 0;
    do
    {
      v13 = *(v9 + 2);
      if (v13 <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            if (*(this + 76) != 4116)
            {
              v19 = *(this + 58);
              if (v19 != -1)
              {
                *(this + 27) = 0;
                *(this + 28) = 0;
                if (!OALContext::SetBusRenderProc(*(this + 1), v19, (this + 216)))
                {
                  AUGraphUpdate(*(*(*(this + 1) + 16) + 16), 0);
                }

                OALContext::SetBusEnable(*(this + 1), *(this + 58), 1);
                *(this + 236) = 0;
                v20 = *(this + 58);
                if (v20 != -1)
                {
                  OALContext::SetBusAsAvailable(*(this + 1), v20);
                  *(this + 58) = -1;
                }
              }

              *(this + 76) = 4116;
              v21 = *(this + 52);
              if (v21)
              {
                SourceNotifications::CallSourceNotifications(v21, 4112);
              }

              v22 = *(*(this + 3) + 24);
              OALSource::ClearActiveQueue(this);
              if (v22)
              {
                v23 = *(this + 52);
                if (v23)
                {
                  SourceNotifications::CallSourceNotifications(v23, 4118);
                }
              }
            }
          }

          else
          {
            if (v13 != 2)
            {
              goto LABEL_90;
            }

            if (*(this + 76) != 4113)
            {
              v16 = *(this + 58);
              if (v16 != -1)
              {
                *(this + 27) = 0;
                *(this + 28) = 0;
                if (!OALContext::SetBusRenderProc(*(this + 1), v16, (this + 216)))
                {
                  AUGraphUpdate(*(*(*(this + 1) + 16) + 16), 0);
                }

                OALContext::SetBusEnable(*(this + 1), *(this + 58), 1);
                *(this + 236) = 0;
                v17 = *(this + 58);
                if (v17 != -1)
                {
                  OALContext::SetBusAsAvailable(*(this + 1), v17);
                  *(this + 58) = -1;
                }
              }

              *(this + 76) = 4113;
              v18 = *(this + 52);
              if (v18)
              {
                SourceNotifications::CallSourceNotifications(v18, 4112);
              }

              *(this + 60) = 0;
            }
          }

          goto LABEL_12;
        }

        if (v13 == 3)
        {
          v50 = v9[2];
          v51 = *v50;
          OALSource::FlushBufferQueue(this);
          if (v51)
          {
            v52 = *(this + 3);
            if (*v52 == *(v52 + 8))
            {
              *(this + 14) = 0;
              *(this + 60) = 0;
            }

            *buf = v51;
            *&v67[4] = v50;
            *&v67[12] = 0;
            *&v67[20] = 0;
            std::vector<BufferInfo>::push_back[abi:ne200100](v52, buf);
            *(v52 + 24) = (*(v52 + 8) - *v52) >> 5;
            *(this + 12) = *(*(this + 4) + 24) + *(*(this + 3) + 24);
            OALBuffer::UseThisBuffer(v50, this);
            *(this + 71) = 4136;
            *(v9[2] + 352) = 0;
            *(this + 76) = 4116;
            v53 = *(this + 52);
            if (!v53)
            {
              goto LABEL_12;
            }

LABEL_88:
            SourceNotifications::CallSourceNotifications(v53, 4112);
          }

          else
          {
            *(this + 71) = 4144;
            *(this + 352) = 0;
            *(v9[2] + 352) = 0;
            *(this + 76) = 4116;
            v53 = *(this + 52);
            if (v53)
            {
              goto LABEL_88;
            }
          }

LABEL_12:
          *(this + 86) = 0;
          goto LABEL_13;
        }

        if (v13 == 4)
        {
          *(this + 86) = 0;
          v6 = OALSource::Play(this);
          if (v6)
          {
            goto LABEL_92;
          }
        }

        else
        {
          *(this + 76) = 4115;
          v14 = *(this + 52);
          if (v14)
          {
            SourceNotifications::CallSourceNotifications(v14, 4112);
          }

          v15 = *(this + 58);
          if (v15 != -1)
          {
            *(this + 27) = 0;
            *(this + 28) = 0;
            if (!OALContext::SetBusRenderProc(*(this + 1), v15, (this + 216)))
            {
              AUGraphUpdate(*(*(*(this + 1) + 16) + 16), 0);
            }

            OALContext::SetBusEnable(*(this + 1), *(this + 58), 1);
            *(this + 236) = 0;
          }

          *(this + 86) = 0;
          v11 = 1;
        }
      }

      else
      {
        if (v13 > 8)
        {
          if (v13 == 11)
          {
            OALSource::ClearActiveQueue(this);
            v37 = *(this + 3);
            v38 = *(this + 4);
            *(this + 3) = v38;
            *(this + 4) = v37;
            v40 = *v38;
            v39 = v38[1];
            v41 = *(v37 + 8) - *v37;
            v42 = v39 - *v38;
            v29 = v39 == *v38;
            *(v38 + 6) = v42 >> 5;
            *(v37 + 24) = v41 >> 5;
            *(this + 12) = *(v37 + 24) + *(v38 + 6);
            if (!v29)
            {
              v43 = v42 - 32;
              v44 = v40;
              if (v43 < 0x20)
              {
                goto LABEL_115;
              }

              v45 = (v43 >> 5) + 1;
              v44 = v40 + 32 * (v45 & 0xFFFFFFFFFFFFFFELL);
              v46 = (v40 + 48);
              v47 = v45 & 0xFFFFFFFFFFFFFFELL;
              do
              {
                *(v46 - 4) = 0;
                *v46 = 0;
                v46 += 8;
                v47 -= 2;
              }

              while (v47);
              if (v45 != (v45 & 0xFFFFFFFFFFFFFFELL))
              {
LABEL_115:
                do
                {
                  *(v44 + 16) = 0;
                  v44 += 32;
                }

                while (v44 != v39);
              }
            }

            *(this + 14) = 0;
            *(this + 60) = 0;
            v48 = *(this + 52);
            if (v48 && *(this + 69))
            {
              SourceNotifications::CallSourceNotifications(v48, 36864);
            }

            OALContext::SetBusEnable(*(this + 1), *(this + 58), 1);
            if ((v11 & 1) != 0 && OALSource::AddRenderProc(this))
            {
              v11 = 1;
            }

            else
            {
              *(this + 76) = 4114;
              v54 = *(this + 52);
              if (v54)
              {
                SourceNotifications::CallSourceNotifications(v54, 4112);
              }

              v11 = 0;
              *(this + 86) = 1;
            }

            goto LABEL_13;
          }

          if (v13 != 12)
          {
            if (v13 == 9)
            {
              OALSource::StopRenderingToBus(this);
              *(this + 76) = 4116;
              v57 = *(this + 52);
              if (v57)
              {
                SourceNotifications::CallSourceNotifications(v57, 4112);
              }

              OALSource::FlushBufferQueue(this);
              *(this + 4) = 1;
              OALSource::ClearMessageQueue(this);
              *(this + 86) = 0;
              break;
            }

LABEL_90:
            v55 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *v67 = "oalSource.cpp";
              *&v67[8] = 1024;
              *&v67[10] = 3070;
              _os_log_impl(&dword_23A012000, v55, OS_LOG_TYPE_DEBUG, "%25s:%-5d      MQ:WARNING - UNIMPLEMENTED MESSAGE...", buf, 0x12u);
            }

            goto LABEL_13;
          }

          OALSource::PostRenderAddBuffersToQueue(this, *(v9 + 6));
          goto LABEL_12;
        }

        if (v13 == 6)
        {
          *(this + 86) = 1;
          v6 = OALSource::AddRenderProc(this);
          if (v6)
          {
            goto LABEL_92;
          }

          *(this + 76) = 4114;
          v49 = *(this + 52);
          if (v49)
          {
            SourceNotifications::CallSourceNotifications(v49, 4112);
          }
        }

        else
        {
          if (v13 != 7)
          {
            OALSource::PostRenderRemoveBuffersFromQueue(this, *(v9 + 6));
            goto LABEL_12;
          }

          OALSource::ClearActiveQueue(this);
          v24 = *(this + 3);
          v25 = *(this + 4);
          *(this + 3) = v25;
          *(this + 4) = v24;
          v27 = *v25;
          v26 = v25[1];
          v28 = *(v24 + 8) - *v24;
          v30 = v26 - *v25;
          v29 = v26 == *v25;
          *(v25 + 6) = v30 >> 5;
          *(v24 + 24) = v28 >> 5;
          *(this + 12) = *(v24 + 24) + *(v25 + 6);
          if (!v29)
          {
            v31 = v30 - 32;
            v32 = v27;
            if (v31 < 0x20)
            {
              goto LABEL_116;
            }

            v33 = (v31 >> 5) + 1;
            v32 = v27 + 32 * (v33 & 0xFFFFFFFFFFFFFFELL);
            v34 = (v27 + 48);
            v35 = v33 & 0xFFFFFFFFFFFFFFELL;
            do
            {
              *(v34 - 4) = 0;
              *v34 = 0;
              v34 += 8;
              v35 -= 2;
            }

            while (v35);
            if (v33 != (v33 & 0xFFFFFFFFFFFFFFELL))
            {
LABEL_116:
              do
              {
                *(v32 + 16) = 0;
                v32 += 32;
              }

              while (v32 != v26);
            }
          }

          *(this + 14) = 0;
          *(this + 60) = 0;
          v36 = *(this + 52);
          if (v36 && *(this + 69))
          {
            SourceNotifications::CallSourceNotifications(v36, 36864);
          }

          v6 = OALSource::AdvanceQueueToFrameIndex(this, *(this + 89));
          if (v6)
          {
LABEL_92:
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v56 = *this;
              *buf = 136315906;
              *v67 = "oalSource.cpp";
              *&v67[8] = 1024;
              *&v67[10] = 3108;
              *&v67[14] = 2048;
              *&v67[16] = v56;
              v68 = 2048;
              v69 = v6;
              _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::DoPostRender FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
            }

            goto LABEL_111;
          }

          OALContext::SetBusEnable(*(this + 1), *(this + 58), 1);
          *(this + 89) = 0;
          *(this + 86) = 1;
        }
      }

LABEL_13:
      v12 = *v9;
      MEMORY[0x23EE824D0](v9, 0x1020C40CC5CF236);
      v9 = v12;
    }

    while (v12);
  }

LABEL_97:
  if (*(this + 60) == 1)
  {
    v58 = *(this + 58);
    if (v58 != -1)
    {
      *(this + 27) = 0;
      *(this + 28) = 0;
      if (!OALContext::SetBusRenderProc(*(this + 1), v58, (this + 216)))
      {
        AUGraphUpdate(*(*(*(this + 1) + 16) + 16), 0);
      }

      OALContext::SetBusEnable(*(this + 1), *(this + 58), 1);
      *(this + 236) = 0;
      v59 = *(this + 58);
      if (v59 != -1)
      {
        OALContext::SetBusAsAvailable(*(this + 1), v59);
        *(this + 58) = -1;
      }
    }

    *(this + 76) = 4116;
    v60 = *(this + 52);
    if (v60)
    {
      SourceNotifications::CallSourceNotifications(v60, 4112);
    }

    v61 = *(*(this + 3) + 24);
    OALSource::ClearActiveQueue(this);
    if (v61)
    {
      v62 = *(this + 52);
      if (v62)
      {
        SourceNotifications::CallSourceNotifications(v62, 4118);
      }
    }
  }

  if (!*(this + 53))
  {
    OALContext::SetBusNeedsPostRender(*(this + 1), *(this + 58), 0);
  }

  v6 = 0;
LABEL_111:
  v63 = *this;
LABEL_112:
  atomic_fetch_add(this + 17, 0xFFFFFFFF);
  v64 = *MEMORY[0x277D85DE8];
  return v6;
}

void std::vector<BufferInfo>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    std::vector<SourceAttachedInfo>::__throw_length_error[abi:ne200100]();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t OALSource::SetReverbSendLevel(OALSource *this, float a2)
{
  if (a2 < 0.0 || a2 > 1.0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 40963;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  v5 = (this + 80);
  result = (*(*(this + 10) + 16))(this + 80);
  if (v5[88] != a2)
  {
    *(this + 108) = a2;
    v7 = *(this + 58);
    if (v7 != -1)
    {
      v8 = *(this + 1);
      if (*(v8 + 492))
      {
        v9 = result;
        AudioUnitSetParameter(*(v8 + 32), 8u, 1u, v7, a2 * 100.0, 0);
        result = v9;
      }
    }
  }

  if (result)
  {
    return (*(*v5 + 24))(v5);
  }

  return result;
}

uint64_t OALSource::SetOcclusion(uint64_t this, AudioUnitParameterValue a2)
{
  if (a2 < -100.0 || a2 > 0.0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 40963;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  if (*(this + 436) != a2)
  {
    *(this + 436) = a2;
    v3 = *(this + 232);
    if (v3 != -1)
    {
      v4 = *(*(this + 8) + 32);

      return AudioUnitSetParameter(v4, 0xAu, 1u, v3, a2, 0);
    }
  }

  return this;
}

uint64_t OALSource::SetObstruction(OALSource *this, AudioUnitParameterValue a2)
{
  if (a2 < -100.0 || a2 > 0.0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 40963;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  v4 = (this + 80);
  result = (*(*(this + 10) + 16))(this + 80);
  if (v4[90] != a2)
  {
    *(this + 110) = a2;
    v6 = *(this + 58);
    if (v6 != -1)
    {
      v7 = *(*(this + 1) + 32);
      v8 = result;
      AudioUnitSetParameter(v7, 0xBu, 1u, v6, a2, 0);
      result = v8;
    }
  }

  if (result)
  {
    return (*(*v4 + 24))(v4);
  }

  return result;
}

void CAMutex::Locker::~Locker(CAMutex::Locker *this)
{
  if (*(this + 8) == 1)
  {
    (*(**this + 24))(*this);
  }
}

uint64_t CAStreamBasicDescription::Print(CAStreamBasicDescription *this, __sFILE *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__dst = 0u;
  CA::StreamDescription::AsString(this, __p);
  if (v7 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  strlcpy(__dst, v3, 0x100uLL);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  result = fprintf(a2, "%s%s %s\n", "", "AudioStreamBasicDescription:", __dst);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A035358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CA::StreamDescription::AsString(CA::StreamDescription *this@<X0>, uint64_t a2@<X8>)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  if (v4 == 1718773105)
  {
    caulk::make_string("%2u ch, %6.0f Hz, 'freq'", a2, *(this + 7), *this);
    goto LABEL_95;
  }

  if (v4 == 1819304813 && *(this + 5) == 1)
  {
    v5 = *(this + 6);
    if (v5 == *(this + 4))
    {
      v6 = *(this + 8);
      if (v5 >= v6 >> 3)
      {
        v7 = *(this + 7);
        if (v7)
        {
          v8 = *(this + 3);
          if ((v8 & 0x20) == 0)
          {
            if (v5 % v7)
            {
              goto LABEL_36;
            }

            v5 /= v7;
          }

          if ((v8 & 2) != 0 || 8 * v5 != v6)
          {
            goto LABEL_36;
          }

          if (v8)
          {
            if ((v8 & 0x1F84) != 0)
            {
              goto LABEL_36;
            }

            if (v5 == 4)
            {
              v10 = 1;
            }

            else
            {
              v10 = 4 * (v5 == 8);
            }
          }

          else
          {
            if ((v8 & 4) == 0)
            {
              goto LABEL_36;
            }

            v9 = (v8 >> 7) & 0x3F;
            if (v9 == 24 && v5 == 4)
            {
              v10 = 3;
            }

            else if (v9 || v5 != 4)
            {
              if (v5 == 2 && v9 == 0)
              {
                v10 = 2;
              }

              else
              {
                v10 = 0;
              }
            }

            else
            {
              v10 = 5;
            }
          }

          if (v10)
          {
            v12 = *(this + 7);
            if (v12 < 2)
            {
              v13 = "";
            }

            else if ((*(this + 12) & 0x20) != 0)
            {
              v13 = ", deinterleaved";
            }

            else
            {
              v13 = ", interleaved";
            }

            caulk::make_string("%2u ch, %6.0f Hz, %s%s", a2, v12, *this, *(&off_278B468E8 + v10), v13);
            goto LABEL_95;
          }
        }
      }
    }
  }

LABEL_36:
  v14 = *(this + 7);
  v15 = *this;
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v4 == 0;
  }

  if (v16 && v15 == 0.0)
  {
    caulk::make_string("%2u ch, %6.0f Hz", a2, 0, *this);
    goto LABEL_95;
  }

  v17 = bswap32(v4);
  v18 = v17 & 0xFF000000;
  v19 = v17 - 32;
  v20 = v17;
  v21 = (v17 >> 8) - 32;
  *(&v64.__r_.__value_.__s + 23) = 4;
  if (((v17 >> 24) - 32) >= 0x5F)
  {
    v18 = 771751936;
  }

  if (((v17 << 8 >> 24) - 32) >= 0x5F)
  {
    v22 = 3014656;
  }

  else
  {
    v22 = v17 & 0xFF0000;
  }

  v23 = v22 | v18;
  v24 = v17 & 0xFF00;
  if (v21 >= 0x5F)
  {
    v24 = 11776;
  }

  if (v19 >= 0x5F)
  {
    v25 = 46;
  }

  else
  {
    v25 = v20;
  }

  LODWORD(v64.__r_.__value_.__l.__data_) = v23 | v24 | v25;
  v64.__r_.__value_.__s.__data_[4] = 0;
  caulk::make_string("%2u ch, %6.0f Hz, %s (0x%08X) ", &v62, v14, *&v15, &v64, *(this + 3));
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
    v26 = *(this + 2);
    if (v26 <= 1819304812)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v26 = *(this + 2);
    if (v26 <= 1819304812)
    {
LABEL_52:
      if (v26 != 1634492771 && v26 != 1634497332 && v26 != 1718378851)
      {
LABEL_96:
        caulk::make_string("%u bits/channel, %u bytes/packet, %u frames/packet, %u bytes/frame", &v64, *(this + 8), *(this + 4), *(this + 5), *(this + 6));
        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v62;
        }

        else
        {
          v37 = v62.__r_.__value_.__r.__words[0];
        }

        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v62.__r_.__value_.__l.__size_;
        }

LABEL_88:
        v39 = std::string::insert(&v64, 0, v37, size);
        v40 = *&v39->__r_.__value_.__l.__data_;
        *(a2 + 16) = *(&v39->__r_.__value_.__l + 2);
        *a2 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_91;
        }

        v41 = v64.__r_.__value_.__r.__words[0];
        goto LABEL_90;
      }

LABEL_71:
      v34 = *(this + 3);
      if ((v34 - 1) < 4 || !v34 && (v26 == 1634497332 || v26 == 1936487278 || v26 == 1936487267))
      {
        caulk::make_string("from %u-bit source, ", &v64, CA::StreamDescription::AsString(void)const::kSourceBits[v34]);
        if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v64;
        }

        else
        {
          v35 = v64.__r_.__value_.__r.__words[0];
        }

        if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v36 = v64.__r_.__value_.__l.__size_;
        }

        std::string::append(&v62, v35, v36);
        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::append(&v62, "from UNKNOWN source bit depth, ", 0x1FuLL);
      }

      caulk::make_string("%u frames/packet", &v64, *(this + 5));
      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v62;
      }

      else
      {
        v37 = v62.__r_.__value_.__r.__words[0];
      }

      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v62.__r_.__value_.__l.__size_;
      }

      goto LABEL_88;
    }
  }

  if (v26 == 1936487278 || v26 == 1936487267)
  {
    goto LABEL_71;
  }

  if (v26 != 1819304813)
  {
    goto LABEL_96;
  }

  v27 = *(this + 3);
  v28 = *(this + 6);
  v29 = "";
  if (!v28)
  {
    goto LABEL_63;
  }

  if ((v27 & 0x20) != 0)
  {
    v30 = 1;
  }

  else
  {
    v30 = *(this + 7);
    if (!v30)
    {
LABEL_63:
      v31 = " signed";
      if ((v27 & 4) == 0)
      {
        v31 = " unsigned";
      }

      if (v27)
      {
        v32 = "float";
      }

      else
      {
        v32 = "integer";
      }

      if (v27)
      {
        v33 = "";
      }

      else
      {
        v33 = v31;
      }

LABEL_128:
      v64.__r_.__value_.__s.__data_[0] = 0;
      if ((v27 & 0x20) != 0)
      {
        v47 = ", deinterleaved";
      }

      else
      {
        v47 = "";
      }

      v44 = "";
      v48 = "";
      goto LABEL_132;
    }
  }

  v43 = v28 / v30;
  if (v28 / v30 < 2)
  {
    v46 = " signed";
    if ((v27 & 4) == 0)
    {
      v46 = " unsigned";
    }

    if (v27)
    {
      v32 = "float";
    }

    else
    {
      v32 = "integer";
    }

    if (v27)
    {
      v33 = "";
    }

    else
    {
      v33 = v46;
    }

    if (v30 > v28)
    {
      goto LABEL_128;
    }

    v43 = 1;
    v44 = "";
  }

  else
  {
    if ((v27 & 2) != 0)
    {
      v44 = " big-endian";
    }

    else
    {
      v44 = " little-endian";
    }

    v45 = " unsigned";
    if ((v27 & 4) != 0)
    {
      v45 = " signed";
    }

    if (v27)
    {
      v32 = "float";
    }

    else
    {
      v32 = "integer";
    }

    if (v27)
    {
      v33 = "";
    }

    else
    {
      v33 = v45;
    }
  }

  v50 = *(this + 7);
  if ((v27 & 0x20) != 0)
  {
    v50 = 1;
  }

  if (v50)
  {
    v50 = 8 * (v28 / v50);
  }

  if (v50 == *(this + 8))
  {
    v64.__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if ((v27 & 8) != 0)
    {
      v51 = "";
    }

    else
    {
      v51 = "un";
    }

    snprintf(&v64, 0x20uLL, "%spacked in %u bytes", v51, v43);
    v28 = *(this + 6);
    v27 = *(this + 3);
    if (!v28)
    {
      goto LABEL_152;
    }
  }

  v52 = *(this + 7);
  if ((v27 & 0x20) != 0)
  {
    v52 = 1;
  }

  if (v52)
  {
    v28 = 8 * (v28 / v52);
  }

  else
  {
    v28 = 0;
  }

LABEL_152:
  v53 = *(this + 8);
  v54 = " high-aligned";
  if ((v27 & 0x10) == 0)
  {
    v54 = " low-aligned";
  }

  if ((v53 & 7) == 0 && v28 == v53)
  {
    v48 = "";
  }

  else
  {
    v48 = v54;
  }

  if ((v27 & 0x20) != 0)
  {
    v47 = ", deinterleaved";
  }

  else
  {
    v47 = "";
  }

  if (!v64.__r_.__value_.__s.__data_[0])
  {
LABEL_132:
    if (*v48)
    {
      v29 = ", ";
    }

    v49 = *(this + 8);
    if (((v27 >> 7) & 0x3F) != 0)
    {
      goto LABEL_135;
    }

    goto LABEL_165;
  }

  v29 = ", ";
  v56 = *(this + 8);
  if (((v27 >> 7) & 0x3F) != 0)
  {
LABEL_135:
    snprintf(__str, 0x14uLL, "%u.%u");
    goto LABEL_166;
  }

LABEL_165:
  snprintf(__str, 0x14uLL, "%u");
LABEL_166:
  caulk::make_string("%s-bit%s%s %s%s%s%s%s", &v61, __str, v44, v33, v32, v29, &v64, v48, v47);
  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v57 = &v62;
  }

  else
  {
    v57 = v62.__r_.__value_.__r.__words[0];
  }

  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v58 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v58 = v62.__r_.__value_.__l.__size_;
  }

  v59 = std::string::insert(&v61, 0, v57, v58);
  v60 = *&v59->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v59->__r_.__value_.__l + 2);
  *a2 = v60;
  v59->__r_.__value_.__l.__size_ = 0;
  v59->__r_.__value_.__r.__words[2] = 0;
  v59->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    v41 = v61.__r_.__value_.__r.__words[0];
LABEL_90:
    operator delete(v41);
  }

LABEL_91:
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

LABEL_95:
  v42 = *MEMORY[0x277D85DE8];
}

void sub_23A035AF4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

std::string *caulk::make_string@<X0>(caulk *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  result = vsnprintf(0, 0, this, va);
  if (result <= 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::string::append(a2, (result + 1), 0);
  v6 = *(a2 + 8);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  result = vsnprintf(v8, v9, this, va);
  v10 = *(a2 + 23);
  if ((v10 & 0x8000000000000000) == 0)
  {
    if (v10 >= result)
    {
      *(a2 + 23) = result;
      *(a2 + result) = 0;
      return result;
    }

    return std::string::append(a2, result - v10, 0);
  }

  v10 = *(a2 + 8);
  if (v10 < result)
  {
    return std::string::append(a2, result - v10, 0);
  }

  *(a2 + 8) = result;
  *(*a2 + result) = 0;
  return result;
}

void std::vector<SourceNotifyInfo>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<SourceAttachedInfo>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 8 * ((v3 - *a1) >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = 24 * v8 + 24;
  v13 = 24 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void CAMutex::CAMutex(CAMutex *this, const char *a2)
{
  *this = &unk_284D29FF8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  v2 = pthread_mutex_init((this + 24), 0);
  if (v2)
  {
    v3 = v2;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284D2A090;
    exception[2] = v3;
  }
}

void CAMutex::~CAMutex(CAMutex *this)
{
  *this = &unk_284D29FF8;
  pthread_mutex_destroy((this + 24));
}

{
  *this = &unk_284D29FF8;
  pthread_mutex_destroy((this + 24));
}

{
  *this = &unk_284D29FF8;
  pthread_mutex_destroy((this + 24));

  JUMPOUT(0x23EE824D0);
}

uint64_t CAMutex::Lock(CAMutex *this)
{
  v2 = pthread_self();
  if (pthread_equal(v2, *(this + 2)))
  {
    return 0;
  }

  v4 = pthread_mutex_lock((this + 24));
  if (v4)
  {
    v5 = v4;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284D2A090;
    exception[2] = v5;
  }

  *(this + 2) = v2;
  return 1;
}

uint64_t CAMutex::Unlock(CAMutex *this)
{
  v2 = pthread_self();
  result = pthread_equal(v2, *(this + 2));
  if (result)
  {
    *(this + 2) = 0;
    result = pthread_mutex_unlock((this + 24));
    if (result)
    {
      v4 = result;
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_284D2A090;
      exception[2] = v4;
    }
  }

  return result;
}

uint64_t CAMutex::Try(CAMutex *this, BOOL *a2)
{
  *a2 = 0;
  v4 = pthread_self();
  if (pthread_equal(v4, *(this + 2)))
  {
    result = 1;
    *a2 = 0;
  }

  else
  {
    v6 = pthread_mutex_trylock((this + 24));
    if (v6 == 16)
    {
      result = 0;
      *a2 = 0;
    }

    else
    {
      if (v6)
      {
        v7 = v6;
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &unk_284D2A090;
        exception[2] = v7;
      }

      *(this + 2) = v4;
      result = 1;
      *a2 = 1;
    }
  }

  return result;
}

void CAException::~CAException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x23EE824D0);
}

double CAHostTimeBase::Initialize(CAHostTimeBase *this)
{
  mach_timebase_info(&info);
  CAHostTimeBase::sMinDelta = 1;
  CAHostTimeBase::sToNanosNumerator = info.numer;
  CAHostTimeBase::sToNanosDenominator = info.denom;
  *&CAHostTimeBase::sFrequency = info.denom / info.numer * 1000000000.0;
  result = 1.0 / *&CAHostTimeBase::sFrequency;
  *&CAHostTimeBase::sInverseFrequency = 1.0 / *&CAHostTimeBase::sFrequency;
  return result;
}

void CAGuard::CAGuard(CAGuard *this, const char *a2)
{
  CAMutex::CAMutex(this, a2);
  *v2 = &unk_284D2A0B8;
  v3 = pthread_cond_init((v2 + 88), 0);
  if (v3)
  {
    v4 = v3;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284D2A090;
    exception[2] = v4;
  }
}

void CAGuard::~CAGuard(CAGuard *this)
{
  *this = &unk_284D2A0B8;
  pthread_cond_destroy((this + 88));

  CAMutex::~CAMutex(this);
}

{
  *this = &unk_284D2A0B8;
  pthread_cond_destroy((this + 88));
  CAMutex::~CAMutex(this);

  JUMPOUT(0x23EE824D0);
}

pthread_t CAGuard::Wait(CAGuard *this)
{
  v2 = pthread_self();
  if (!pthread_equal(v2, *(this + 2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284D2A090;
    exception[2] = 1;
  }

  *(this + 2) = 0;
  v3 = pthread_cond_wait((this + 88), (this + 24));
  if (v3)
  {
    v6 = v3;
    v7 = __cxa_allocate_exception(0x10uLL);
    *v7 = &unk_284D2A090;
    v7[2] = v6;
  }

  result = pthread_self();
  *(this + 2) = result;
  return result;
}

BOOL CAGuard::WaitFor(CAGuard *this, unint64_t a2)
{
  v4 = pthread_self();
  if (!pthread_equal(v4, *(this + 2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284D2A090;
    exception[2] = 1;
  }

  if (a2 <= 0x3B9AC9FF)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2 / 0x3B9ACA00;
    a2 %= 0x3B9ACA00uLL;
  }

  v11.tv_sec = v5;
  v11.tv_nsec = a2;
  *(this + 2) = 0;
  v6 = pthread_cond_timedwait_relative_np((this + 88), (this + 24), &v11);
  v7 = v6;
  if (v6 && v6 != 60)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    *v10 = &unk_284D2A090;
    v10[2] = v7;
  }

  *(this + 2) = pthread_self();
  return v7 == 60;
}

uint64_t CAGuard::WaitUntil(CAGuard *this, uint64_t a2)
{
  v4 = mach_absolute_time();
  pthread_once(&CAHostTimeBase::sIsInited, CAHostTimeBase::Initialize);
  if (CAHostTimeBase::sToNanosNumerator != CAHostTimeBase::sToNanosDenominator)
  {
    v4 = __udivti3();
  }

  if (a2 <= v4)
  {
    return 1;
  }

  v5 = *(*this + 64);

  return v5(this, a2 - v4);
}

uint64_t CAGuard::Notify(CAGuard *this)
{
  result = pthread_cond_signal((this + 88));
  if (result)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284D2A090;
    exception[2] = v2;
  }

  return result;
}

uint64_t CAGuard::NotifyAll(CAGuard *this)
{
  result = pthread_cond_broadcast((this + 88));
  if (result)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284D2A090;
    exception[2] = v2;
  }

  return result;
}

void OALCaptureDevice::OALCaptureDevice(OALCaptureDevice *this, const char *a2, uint64_t a3, unsigned int a4, int a5, unsigned int a6)
{
  *this = a3;
  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0x3FF0000000000000;
  *(this + 26) = a6;
  *(this + 14) = 0;
  *(this + 30) = 0;
  FillInASBD(this + 40, a5, a4);
  if (*(this + 14) > a6)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 40963;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  v9 = OALCaptureDevice::InitializeAU(this, v8);
  if (v9)
  {
    v19 = v9;
    v20 = __cxa_allocate_exception(4uLL);
    *v20 = v19;
    __cxa_throw(v20, MEMORY[0x277D827C0], 0);
  }

  v10 = *(this + 13);
  if ((v10 & 0x20) != 0)
  {
    v11 = *(this + 17);
  }

  else
  {
    v11 = 1;
  }

  if ((v10 & 0x20) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(this + 17);
  }

  v13 = operator new(16 * v11 + 32);
  *v13 = "WriteBufferList";
  v13[1] = 0;
  *(v13 + 4) = 0;
  *(v13 + 6) = v11;
  if (v11)
  {
    v14 = (v13 + 4);
    if (v11 == 1)
    {
      v15 = 1;
      do
      {
LABEL_15:
        *v14 = v12;
        *(v14 + 1) = 0;
        *(v14 + 1) = 0;
        v14 += 16;
        --v15;
      }

      while (v15);
      goto LABEL_16;
    }

    v15 = v11 - (v11 & 0xFFFFFFFE);
    v14 += 16 * (v11 & 0xFFFFFFFE);
    v16 = v13 + 7;
    v17 = v11 & 0xFFFFFFFE;
    do
    {
      *(v16 - 6) = v12;
      *(v16 - 5) = 0;
      *(v16 - 2) = v12;
      *(v16 - 1) = 0;
      *(v16 - 2) = 0;
      *v16 = 0;
      v16 += 4;
      v17 -= 2;
    }

    while (v17);
    if ((v11 & 0xFFFFFFFE) != v11)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  *(this + 14) = v13;
  operator new();
}

void sub_23A0368FC(void *a1, int a2)
{
  v4 = v3;
  MEMORY[0x23EE824D0](v4, 0x1010C40829CE571);
  v7 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v8 = *v7;
    v9 = v2[10];
    if (v9)
    {
      OALRingBuffer::~OALRingBuffer(v9);
      MEMORY[0x23EE824D0]();
      v10 = v2[11];
      if (!v10)
      {
LABEL_4:
        v11 = v2[14];
        if (!v11)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v10 = v2[11];
      if (!v10)
      {
        goto LABEL_4;
      }
    }

    MEMORY[0x23EE824D0](v10, 0x1000C4077774924);
    v11 = v2[14];
    if (!v11)
    {
      goto LABEL_15;
    }

LABEL_12:
    v15 = *(v11 + 8);
    if (v15)
    {
      MEMORY[0x23EE824B0](v15, 0x1000C8077774924);
    }

    MEMORY[0x23EE824D0](v11, 0x10D0C40C0CFF4BFLL);
LABEL_15:
    exception = __cxa_allocate_exception(4uLL);
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  v12 = v2[10];
  if (v12)
  {
    OALRingBuffer::~OALRingBuffer(v12);
    MEMORY[0x23EE824D0]();
    v13 = v2[11];
    if (!v13)
    {
LABEL_8:
      v14 = v2[14];
      if (!v14)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v13 = v2[11];
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  MEMORY[0x23EE824D0](v13, 0x1000C4077774924);
  v14 = v2[14];
  if (!v14)
  {
    goto LABEL_21;
  }

LABEL_18:
  v17 = *(v14 + 8);
  if (v17)
  {
    MEMORY[0x23EE824B0](v17, 0x1000C8077774924);
  }

  MEMORY[0x23EE824D0](v14, 0x10D0C40C0CFF4BFLL);
LABEL_21:
  v18 = __cxa_allocate_exception(4uLL);
  *v18 = -1;
  __cxa_throw(v18, MEMORY[0x277D827C0], 0);
}

uint64_t OALCaptureDevice::InitializeAU(OALCaptureDevice *this, const char *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  inData = 0;
  v11.componentFlagsMask = 0;
  *&v11.componentType = xmmword_23A03A3D0;
  Next = AudioComponentFindNext(0, &v11);
  if (Next)
  {
    v4 = AudioComponentInstanceNew(Next, this + 4);
    if (v4)
    {
      goto LABEL_7;
    }

    inData = 0;
    v4 = AudioUnitSetProperty(*(this + 4), 0x7D3u, 2u, 0, &inData, 4u);
    if (v4)
    {
      goto LABEL_7;
    }

    inData = 1;
    v4 = AudioUnitSetProperty(*(this + 4), 0x7D3u, 1u, 1u, &inData, 4u);
    if (v4)
    {
      goto LABEL_7;
    }

    v5 = *(this + 56);
    v13[0] = *(this + 40);
    v13[1] = v5;
    v14 = *(this + 9);
    v4 = AudioUnitSetProperty(*(this + 4), 8u, 2u, 1u, v13, 0x28u);
    if (v4 || (v12[0] = OALCaptureDevice::InputProc, v12[1] = this, v4 = AudioUnitSetProperty(*(this + 4), 0x7D5u, 0, 0, v12, 0x10u), v4))
    {
LABEL_7:
      v6 = v4;
    }

    else
    {
      v6 = AudioUnitInitialize(*(this + 4));
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = *this;
      *buf = 136315906;
      v17 = "oalCaptureDevice.cpp";
      v18 = 1024;
      v19 = 172;
      v20 = 2048;
      v21 = v7;
      v22 = 2048;
      v23 = v6;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALContext::InitializeAU FAILED - OALContext = %ld : result = %ld", buf, 0x26u);
    }

    v8 = *(this + 4);
    if (v8)
    {
      AudioComponentInstanceDispose(v8);
      *(this + 4) = 0;
    }
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void OALCaptureDevice::~OALCaptureDevice(OALCaptureDevice *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    AudioComponentInstanceDispose(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    MEMORY[0x23EE824D0](v3, 0x1000C4077774924);
  }

  v4 = *(this + 10);
  if (v4)
  {
    OALRingBuffer::~OALRingBuffer(v4);
    MEMORY[0x23EE824D0]();
  }

  v5 = *(this + 14);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      MEMORY[0x23EE824B0](v6, 0x1000C8077774924);
    }

    MEMORY[0x23EE824D0](v5, 0x10D0C40C0CFF4BFLL);
  }
}

uint64_t OALCaptureDevice::InputProc(OALCaptureDevice *this, void *a2, const AudioTimeStamp *a3, const AudioTimeStamp *a4, UInt32 inNumberFrames, unsigned int a6, AudioBufferList *a7)
{
  v29 = *MEMORY[0x277D85DE8];
  ioActionFlags = 0;
  v9 = *(this + 14);
  v10 = *(v9 + 24);
  if (*(v9 + 24))
  {
    if (v10 == 1)
    {
      v11 = 0;
LABEL_7:
      v14 = (v9 + 16 * v11 + 40);
      v15 = v10 - v11;
      do
      {
        *v14 = 0;
        v14 += 2;
        --v15;
      }

      while (v15);
      goto LABEL_9;
    }

    v11 = v10 & 0xFFFFFFFE;
    v12 = (v9 + 56);
    v13 = v11;
    do
    {
      *(v12 - 2) = 0;
      *v12 = 0;
      v12 += 4;
      v13 -= 2;
    }

    while (v13);
    if (v11 != v10)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  v16 = AudioUnitRender(*(this + 4), &ioActionFlags, a3, 1u, inNumberFrames, (v9 + 24));
  if (v16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v17 = *this;
      *buf = 136315906;
      v22 = "oalCaptureDevice.cpp";
      v23 = 1024;
      v24 = 200;
      v25 = 2048;
      v26 = v17;
      v27 = 2048;
      v28 = v16;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALContext::InputProc FAILED - OALContext = %ld : result = %ld", buf, 0x26u);
    }
  }

  else if (OALRingBuffer::Store(*(this + 10), *(v9 + 40), inNumberFrames, *(this + 2)))
  {
    *(this + 2) += inNumberFrames;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

void OALCaptureDevice::StartCapture(AudioUnit *this)
{
  AudioOutputUnitStart(this[4]);
  *(this + 12) = 1;
  v2 = this[10];

  OALRingBuffer::Clear(v2);
}

void OALCaptureDevice::StopCapture(AudioUnit *this)
{
  AudioOutputUnitStop(this[4]);
  *(this + 12) = 0;
  v2 = this[10];

  OALRingBuffer::Clear(v2);
}

uint64_t OALCaptureDevice::GetFrames(OALCaptureDevice *this, unsigned int a2, unsigned __int8 *__dst, double a4, double a5)
{
  v31 = *MEMORY[0x277D85DE8];
  if ((*(this + 12) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v21 = *this;
      v23 = 136315906;
      v24 = "oalCaptureDevice.cpp";
      v25 = 1024;
      v26 = 241;
      v27 = 2048;
      v28 = v21;
      v29 = 2048;
      v30 = 40964;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALContext::GetFrames FAILED, device not currently capturing - OALContext = %ld : result = %ld", &v23, 0x26u);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 40964;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  v7 = *(this + 10);
  v9 = *(v7 + 3);
  v8 = *(v7 + 4);
  v10 = *(this + 3);
  if (v10 < v9)
  {
    *(this + 3) = v9;
    v10 = v9;
  }

  v11 = v8 - v10;
  LODWORD(a5) = *(this + 26);
  v12 = *(this + 12);
  v13 = v12 * *&a5;
  if (v13 < v11)
  {
    v11 = v13;
  }

  if ((v11 / v12) >= a2)
  {
    result = OALRingBuffer::Fetch(v7, __dst, a2, v10);
    if (result)
    {
      v17 = result;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v18 = *this;
        v23 = 136315906;
        v24 = "oalCaptureDevice.cpp";
        v25 = 1024;
        v26 = 255;
        v27 = 2048;
        v28 = v18;
        v29 = 2048;
        v30 = -1;
        _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALContext::GetFrames FAILED, err returned from mRingBuffer->Fetch - OALContext = %ld : result = %ld", &v23, 0x26u);
      }

      result = v17;
      v19 = *MEMORY[0x277D85DE8];
    }

    else
    {
      *(this + 3) += a2;
      v20 = *MEMORY[0x277D85DE8];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v14 = *this;
      v23 = 136315906;
      v24 = "oalCaptureDevice.cpp";
      v25 = 1024;
      v26 = 247;
      v27 = 2048;
      v28 = v14;
      v29 = 2048;
      v30 = -1;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALContext::GetFrames FAILED, not enough captured frames - OALContext = %ld : result = %ld", &v23, 0x26u);
    }

    result = 0xFFFFFFFFLL;
    v16 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t OALCaptureDevice::AvailableFrames(OALCaptureDevice *this, double a2, double a3)
{
  v3 = *(this + 10);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  v6 = *(this + 3);
  if (v6 < v5)
  {
    *(this + 3) = v5;
    LODWORD(v6) = v5;
  }

  v7 = v4 - v6;
  LODWORD(a3) = *(this + 26);
  v8 = *(this + 12);
  v9 = v8 * *&a3;
  if (v9 < v7)
  {
    v7 = v9;
  }

  return (v7 / v8);
}

void OALRingBuffer::OALRingBuffer(OALRingBuffer *this)
{
  *this = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
}

void OALRingBuffer::Allocate(OALRingBuffer *this, int a2, int a3)
{
  v6 = *this;
  if (v6)
  {
    free(v6);
    *this = 0;
  }

  *(this + 20) = 0;
  *(this + 28) = 0;
  *(this + 9) = 0;
  *(this + 2) = a2;
  *(this + 3) = a3;
  v7 = (a3 * a2);
  *(this + 4) = v7;
  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  *this = v8;
  if (v8)
  {
    bzero(v8, *(this + 4));
  }

  *(this + 20) = 0;
  *(this + 28) = 0;
  *(this + 9) = 0;
}

void OALRingBuffer::~OALRingBuffer(OALRingBuffer *this)
{
  if (*this)
  {
    v1 = this;
    free(*this);
    this = v1;
    *v1 = 0;
  }

  *(this + 20) = 0;
  *(this + 12) = 0;
  *(this + 9) = 0;
  *(this + 28) = 0;
}

void OALRingBuffer::Clear(OALRingBuffer *this)
{
  v2 = *this;
  if (v2)
  {
    bzero(v2, *(this + 4));
  }

  *(this + 28) = 0;
  *(this + 20) = 0;
  *(this + 9) = 0;
}

BOOL OALRingBuffer::Store(OALRingBuffer *this, const unsigned __int8 *a2, unsigned int a3, uint64_t a4)
{
  v5 = *(this + 3);
  if (v5 >= a3)
  {
    v6 = a4 + a3;
    v7 = *(this + 4);
    if (v7 + v5 <= a4)
    {
      if (*this)
      {
        v19 = this;
        v20 = a2;
        v21 = a4;
        bzero(*this, *(this + 4));
        a4 = v21;
        this = v19;
        a2 = v20;
      }

      *(this + 3) = 0;
    }

    else
    {
      v8 = *(this + 3);
      if (v8)
      {
        if (v6 > v7)
        {
          if (v7 < a4)
          {
            v9 = a2;
            v10 = *(this + 2);
            v11 = *(this + 4);
            v12 = *(this + 5);
            v13 = (v12 + v10 * (v7 - v8)) % v11;
            v14 = a4;
            v15 = (v12 + v10 * (a4 - v8)) % v11;
            v16 = v15 - v13;
            if (v15 <= v13)
            {
              v25 = this;
              bzero((*this + v13), v11 - v13);
              v17 = v25;
              v18 = *v25;
              v16 = v15;
            }

            else
            {
              v17 = this;
              v18 = (*this + v13);
            }

            bzero(v18, v16);
            a2 = v9;
            this = v17;
            LODWORD(a4) = v14;
          }

          *(this + 4) = v6;
          v26 = v6 - *(this + 3);
          v8 = *(this + 3);
          if (v26 > v8)
          {
            *(this + 5) = (*(this + 5) + (v26 - v8) * *(this + 2)) % *(this + 4);
            *(this + 3) = v26;
            LODWORD(v8) = v26;
          }
        }

        v27 = *(this + 2);
        v28 = *(this + 4);
        v29 = *(this + 5);
        v30 = (v29 + v27 * (a4 - v8)) % v28;
        v31 = (v29 + v27 * (v6 - v8)) % v28;
        v22 = v31 - v30;
        if (v31 <= v30)
        {
          v32 = v28 - v30;
          v33 = this;
          v34 = a2;
          memcpy((*this + v30), a2, v32);
          v23 = *v33;
          a2 = &v34[v32];
          v22 = v31;
        }

        else
        {
          v23 = (*this + v30);
        }

        goto LABEL_12;
      }
    }

    *(this + 5) = 0;
    *(this + 3) = a4;
    *(this + 4) = v6;
    v22 = *(this + 2) * a3;
    v23 = *this;
LABEL_12:
    memcpy(v23, a2, v22);
  }

  return v5 >= a3;
}

uint64_t OALRingBuffer::Fetch(OALRingBuffer *this, unsigned __int8 *__dst, unsigned int a3, uint64_t a4)
{
  v4 = *(this + 3);
  if (a4 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a4 + a3;
  if (v5 > *(this + 4))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(this + 2);
  v8 = *(this + 4);
  v9 = *(this + 5);
  v10 = (v9 + v7 * (a4 - v4)) % v8;
  v11 = (v9 + v7 * (v5 - v4)) % v8;
  v12 = v11 - v10;
  if (v11 <= v10)
  {
    v16 = v8 - v10;
    memcpy(__dst, (*this + v10), v16);
    v15 = *this;
    v14 = &__dst[v16];
    v12 = v11;
  }

  else
  {
    v13 = (*this + v10);
    v14 = __dst;
    v15 = v13;
  }

  memcpy(v14, v15, v12);
  return 0;
}

void OALCaptureMixer::OALCaptureMixer(OALCaptureMixer *this, OpaqueAudioComponentInstance *a2, double a3, int a4, unsigned int a5)
{
  v14 = *MEMORY[0x277D85DE8];
  *this = a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = a5;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  FillInASBD(this + 8, a4, a3);
  if (*(this + 6) <= a5)
  {
    v13 = 0;
    memset(outData, 0, sizeof(outData));
    ioDataSize = 40;
    Property = AudioUnitGetProperty(*this, 8u, 0, 0, outData, &ioDataSize);
    if (!Property)
    {
      operator new();
    }

    v9 = Property;
    exception = __cxa_allocate_exception(0x104uLL);
    CAXException::CAXException(exception, "AudioUnitGetProperty(mMixerUnit, kAudioUnitProperty_StreamFormat, 0, 0, &mixerOutFormat, &propSize)", v9);
  }

  v8 = __cxa_allocate_exception(4uLL);
  *v8 = 40963;
  __cxa_throw(v8, MEMORY[0x277D827C0], 0);
}

void sub_23A037A84(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void CAXException::CAXException(CAXException *this, const char *__s, int a3)
{
  *(this + 64) = a3;
  if (__s)
  {
    if (strlen(__s) < 0x100)
    {
      strlcpy(this, __s, 0x100uLL);
    }

    else
    {
      v5 = *__s;
      v6 = *(__s + 1);
      v7 = *(__s + 3);
      *(this + 2) = *(__s + 2);
      *(this + 3) = v7;
      *this = v5;
      *(this + 1) = v6;
      v8 = *(__s + 4);
      v9 = *(__s + 5);
      v10 = *(__s + 7);
      *(this + 6) = *(__s + 6);
      *(this + 7) = v10;
      *(this + 4) = v8;
      *(this + 5) = v9;
      v11 = *(__s + 8);
      v12 = *(__s + 9);
      v13 = *(__s + 11);
      *(this + 10) = *(__s + 10);
      *(this + 11) = v13;
      *(this + 8) = v11;
      *(this + 9) = v12;
      v14 = *(__s + 12);
      v15 = *(__s + 13);
      v16 = *(__s + 14);
      *(this + 239) = *(__s + 239);
      *(this + 13) = v15;
      *(this + 14) = v16;
      *(this + 12) = v14;
      *(this + 255) = 0;
    }
  }

  else
  {
    *this = 0;
  }
}

void OALCaptureMixer::~OALCaptureMixer(OALCaptureMixer *this)
{
  if (*(this + 20))
  {
    v2 = 1;
    atomic_compare_exchange_strong(this + 20, &v2, 0);
    AudioUnitRemoveRenderNotify(*this, OALCaptureMixer::RenderCallback, this);
    OALRingBuffer::Clear(*(this + 6));
  }

  v3 = *(this + 6);
  if (v3)
  {
    OALRingBuffer::~OALRingBuffer(v3);
    MEMORY[0x23EE824D0]();
    *(this + 6) = 0;
  }

  v4 = *(this + 12);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      MEMORY[0x23EE824B0](v5, 0x1000C8077774924);
    }

    MEMORY[0x23EE824D0](v4, 0x10D0C40C0CFF4BFLL);
    *(this + 12) = 0;
  }

  v6 = *(this + 11);
  if (v6)
  {
    AudioConverterDispose(v6);
    *(this + 11) = 0;
  }
}

void OALCaptureMixer::StopCapture(atomic_uint *this)
{
  if (this[20])
  {
    v1 = 1;
    atomic_compare_exchange_strong(this + 20, &v1, 0);
    AudioUnitRemoveRenderNotify(*this, OALCaptureMixer::RenderCallback, this);
    v3 = *(this + 6);

    OALRingBuffer::Clear(v3);
  }
}

void OALCaptureMixer::StartCapture(OALCaptureMixer *this)
{
  v2 = *(this + 20);
  if (!v2)
  {
    v5 = v1;
    atomic_compare_exchange_strong(this + 20, &v2, 1u);
    AudioUnitAddRenderNotify(*this, OALCaptureMixer::RenderCallback, this);
    v4 = *(this + 6);

    OALRingBuffer::Clear(v4);
  }
}

uint64_t OALCaptureMixer::RenderCallback(OALCaptureMixer *this, _DWORD *a2, unsigned int *a3, const AudioTimeStamp *a4, unsigned int a5, void *inInputDataProcUserData, AudioBufferList *a7)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!*(this + 20))
  {
LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  result = 0;
  if (!a4 && (*a2 & 0x108) == 8)
  {
    v15[0] = a5;
    v10 = *(this + 12);
    v11 = AudioConverterFillComplexBuffer(*(this + 11), OALCaptureMixer::ConverterProc, inInputDataProcUserData, v15, (v10 + 24), 0);
    if (v11)
    {
      v13 = v11;
      exception = __cxa_allocate_exception(0x104uLL);
      CAXException::CAXException(exception, "AudioConverterFillComplexBuffer(THIS->mAudioConverter, ConverterProc, ioData, &packetCount, abl, NULL)", v13);
    }

    if (OALRingBuffer::Store(*(this + 6), *(v10 + 40), a5, *(this + 8)))
    {
      *(this + 8) += a5;
    }

    goto LABEL_7;
  }

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OALCaptureMixer::ConverterProc(OALCaptureMixer *this, OpaqueAudioConverter *a2, unsigned int *a3, AudioBufferList *a4, AudioStreamPacketDescription **a5, void *a6)
{
  v6 = *a5;
  if (v6)
  {
    v7 = a3 + 4;
    v8 = a5 + 2;
    do
    {
      *v7 = *v8;
      *(v7 - 1) = *(v8 - 1);
      v7 += 4;
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t OALCaptureMixer::GetFrames(OALCaptureMixer *this, unsigned int a2, unsigned __int8 *__dst)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!*(this + 20))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315650;
      v17 = "oalCaptureMixer.cpp";
      v18 = 1024;
      v19 = 196;
      v20 = 2048;
      v21 = 40964;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALCaptureMixer::GetFrames FAILED, device not currently capturing - result = %ld", &v16, 0x1Cu);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = 40964;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  v4 = *(this + 6);
  v6 = *(v4 + 3);
  v5 = *(v4 + 4);
  v7 = *(this + 9);
  if (v7 < v6)
  {
    *(this + 9) = v6;
    v7 = v6;
  }

  v8 = v5 - v7;
  if (*(this + 14) < v8)
  {
    v8 = *(this + 14);
  }

  if (v8 >= a2)
  {
    result = OALRingBuffer::Fetch(v4, __dst, a2, v7);
    if (result)
    {
      v12 = result;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315650;
        v17 = "oalCaptureMixer.cpp";
        v18 = 1024;
        v19 = 210;
        v20 = 2048;
        v21 = -1;
        _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALCaptureMixer::GetFrames FAILED, err returned from mRingBuffer->Fetch - result = %ld", &v16, 0x1Cu);
      }

      result = v12;
      v13 = *MEMORY[0x277D85DE8];
    }

    else
    {
      *(this + 9) += a2;
      v14 = *MEMORY[0x277D85DE8];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315650;
      v17 = "oalCaptureMixer.cpp";
      v18 = 1024;
      v19 = 202;
      v20 = 2048;
      v21 = -1;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALCaptureMixer::GetFrames FAILED, not enough captured frames - result = %ld", &v16, 0x1Cu);
    }

    result = 0xFFFFFFFFLL;
    v10 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t OALCaptureMixer::AvailableFrames(OALCaptureMixer *this)
{
  v1 = *(this + 6);
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(this + 9);
  if (v4 < v3)
  {
    *(this + 9) = v3;
    LODWORD(v4) = v3;
  }

  v5 = v2 - v4;
  v6 = *(this + 14);
  if (v6 >= v5)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

uint64_t CABufferList::AllocateBuffers(uint64_t this, unsigned int a2)
{
  if (*(this + 36) < a2)
  {
    *(this + 24);
    operator new[]();
  }

  return this;
}

void alSourceAddNotification_cold_1(char a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_23A012000, MEMORY[0x277D86220], v1, "%25s:%-5d ERROR: alSourceAddNotification FAILED", v2, v3, v4, v5, v7);
  }

  __cxa_end_catch();
  v6 = *MEMORY[0x277D85DE8];
}

void alSourceRemoveNotification_cold_1(char a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_23A012000, MEMORY[0x277D86220], v1, "%25s:%-5d ERROR: alSourceRemoveNotification FAILED", v2, v3, v4, v5, v7);
  }

  __cxa_end_catch();
  v6 = *MEMORY[0x277D85DE8];
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}