uint64_t absl::lts_20240722::CheckForMutexCorruption(uint64_t this, char a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((this & ((8 * this) ^ 0x20) & 0x28) != 0)
  {
    return absl::lts_20240722::CheckForMutexCorruption(this, a2, a3, a4, a5, a6, a7, a8);
  }

  return this;
}

uint64_t absl::lts_20240722::Enqueue(uint64_t rep, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = rep;
  v10 = *(a2 + 40);
  if (!v10)
  {
    v18 = *(a2 + 32);
    v19 = *(v18 + 32);
    if (v19)
    {
      v20 = v19 == a2;
    }

    else
    {
      v20 = 1;
    }

    if (!v20 && (*(v18 + 20) & 1) == 0)
    {
      absl::lts_20240722::Enqueue(rep, a2, a3, a4, a5, a6, a7, a8);
    }

    *(v18 + 32) = a2;
    *(v18 + 8) = 0;
    *(v18 + 16) = 1;
    *(v18 + 18) = (a4 & 2) != 0;
    if ((a4 & 4) == 0)
    {
      v21 = a4;
      v22 = a3;
      rep = absl::lts_20240722::base_internal::CycleClock::Now().__d_.__rep_;
      a3 = v22;
      a4 = v21;
      if (*(v18 + 48) < rep)
      {
        v23 = rep;
        v80 = 0;
        v24 = pthread_self();
        v25 = pthread_getschedparam(v24, &v80, &v79);
        if (v25)
        {
          rep = absl::lts_20240722::raw_log_internal::RawLog(2, "mutex.cc", 948, "pthread_getschedparam failed: %d", v26, v27, v28, v29, v25);
        }

        else
        {
          *(v18 + 24) = v79.sched_priority;
          *(v18 + 48) = v23 + absl::lts_20240722::base_internal::CycleClock::Frequency(v25);
        }

        a4 = v21;
        a3 = v22;
      }
    }

    if (!v9)
    {
      *v18 = v18;
      *(v18 + 40) = a3;
      v33 = v18;
      *(v18 + 19) = 0;
      goto LABEL_114;
    }

    v30 = *(v18 + 24);
    v31 = *(v9 + 24);
    if (v30 <= v31)
    {
      goto LABEL_35;
    }

    if (*(v9 + 19))
    {
      if (*a2 != &absl::lts_20240722::kExclusiveS || *(a2 + 8))
      {
LABEL_35:
        v32 = *v9;
        if ((a4 & 1) == 0 || v30 < *(v32 + 24) || *(v9 + 19) == 1 && (*a2 != &absl::lts_20240722::kExclusiveS || *(a2 + 8)))
        {
          *v18 = v32;
          *v9 = v18;
          *(v18 + 40) = *(v9 + 40);
          *(v18 + 19) = *(v9 + 19);
          v33 = v18;
          if (*(v9 + 16) != 1)
          {
            goto LABEL_114;
          }

          v33 = v18;
          if (v31 != v30)
          {
            goto LABEL_114;
          }

          v34 = *(v9 + 32);
          v35 = *(v18 + 32);
          v33 = v18;
          if (*v34 != *v35)
          {
            goto LABEL_114;
          }

          v36 = v34[1];
          v37 = v35[1];
          if (v36 && v37)
          {
            v33 = v18;
            if (v36[2] != v37[2])
            {
              goto LABEL_114;
            }

            v33 = v18;
            if (v36[3] != v37[3])
            {
              goto LABEL_114;
            }

            v39 = *v36;
            v38 = v36[1];
            v41 = *v37;
            v40 = v37[1];
            v42 = v39 == v41 && v38 == v40;
            v33 = v18;
            if (!v42)
            {
              goto LABEL_114;
            }

            goto LABEL_65;
          }

          v33 = v18;
          if (v36 == v37)
          {
LABEL_65:
            *(v9 + 8) = v18;
            v33 = v18;
          }

LABEL_114:
          *(v18 + 28) = 1;
          return v33;
        }

        *v18 = v32;
        *v9 = v18;
        v49 = *v18;
        if (absl::lts_20240722::MuEquivalentWaiter(v18, *v18))
        {
          *(v18 + 8) = v49;
        }

LABEL_113:
        v33 = v9;
        goto LABEL_114;
      }

      v45 = *v9;
      v44 = v9;
    }

    else
    {
      v43 = v9;
      do
      {
        v44 = v43;
        v45 = *v43;
        v46 = *(*v43 + 8);
        v43 = *v43;
        if (v46)
        {
          v47 = *(v46 + 8);
          if (v47)
          {
            v48 = v45;
            do
            {
              rep = v46;
              v46 = v47;
              *(v48 + 8) = v47;
              v47 = *(v47 + 8);
              v48 = rep;
            }

            while (v47);
          }

          *(v45 + 8) = v46;
          v43 = v46;
        }
      }

      while (v30 <= v43[6]);
    }

    *v18 = v45;
    *v44 = v18;
    if (*(v44 + 1))
    {
      v50 = *(v44 + 4);
      v51 = *(v18 + 32);
      if (*v50 != *v51 || v44[6] != v30)
      {
        goto LABEL_120;
      }

      v52 = v50[1];
      v53 = v51[1];
      if (v52)
      {
        v54 = v53 == 0;
      }

      else
      {
        v54 = 1;
      }

      if (v54)
      {
        if (v52 != v53)
        {
          goto LABEL_120;
        }
      }

      else if (v52[2] != v53[2] || v52[3] != v53[3] || ((v56 = *v52, v55 = v52[1], v58 = *v53, v57 = v53[1], v56 == v58) ? (v59 = v55 == v57) : (v59 = 0), !v59))
      {
LABEL_120:
        absl::lts_20240722::Enqueue(rep, a2, a3, a4, a5, a6, a7, a8);
      }
    }

    if (v44 == v9)
    {
      v60 = *(v18 + 32);
      goto LABEL_99;
    }

    v60 = *(v18 + 32);
    if (*(v44 + 16) == 1)
    {
      v61 = *(v44 + 4);
      if (*v61 == *v60 && v44[6] == v30)
      {
        v62 = v61[1];
        v63 = v60[1];
        if (v62 && v63)
        {
          if (v62[2] != v63[2] || v62[3] != v63[3])
          {
            goto LABEL_99;
          }

          v65 = *v62;
          v64 = v62[1];
          v67 = *v63;
          v66 = v63[1];
          if (v65 != v67 || v64 != v66)
          {
            goto LABEL_99;
          }
        }

        else if (v62 != v63)
        {
          goto LABEL_99;
        }

        *(v44 + 1) = v18;
      }
    }

LABEL_99:
    v69 = *v18;
    v70 = *(*v18 + 32);
    if (*v60 != *v70 || v30 != *(v69 + 24))
    {
      goto LABEL_113;
    }

    v71 = v60[1];
    v72 = v70[1];
    if (v71 && v72)
    {
      if (v71[2] != v72[2] || v71[3] != v72[3])
      {
        goto LABEL_113;
      }

      v74 = *v71;
      v73 = v71[1];
      v76 = *v72;
      v75 = v72[1];
      if (v74 != v76 || v73 != v75)
      {
        goto LABEL_113;
      }
    }

    else if (v71 != v72)
    {
      goto LABEL_113;
    }

    *(v18 + 8) = v69;
    goto LABEL_113;
  }

  v11 = 0;
  *(a2 + 40) = 0;
  while (1)
  {
    v12 = *v10;
    if ((*v10 & 1) == 0)
    {
      v13 = *v10;
      atomic_compare_exchange_strong_explicit(v10, &v13, v12 | 1, memory_order_acquire, memory_order_acquire);
      if (v13 == v12)
      {
        break;
      }
    }

    {
      v14 = dword_2810C0ECC;
      {
        goto LABEL_8;
      }

LABEL_13:
      v15 = v14 == v11;
      if (v14 <= v11)
      {
        goto LABEL_9;
      }

LABEL_3:
      ++v11;
    }

    else
    {
      v14 = dword_2810C0ECC;
      {
        goto LABEL_13;
      }

LABEL_8:
      v15 = v14 == v11;
      if (v14 > v11)
      {
        goto LABEL_3;
      }

LABEL_9:
      v79.sched_priority = 0;
      if (v15)
      {
        rep = AbslInternalMutexYield_lts_20240722();
        ++v11;
      }

      else
      {
        rep = AbslInternalSleepFor_lts_20240722(qword_2810C0ED0, dword_2810C0ED8);
        v11 = 0;
      }
    }
  }

  v16 = *(a2 + 32);
  if (*(v16 + 32))
  {
    absl::lts_20240722::Enqueue(rep, a2, a3, a4, a5, a6, a7, a8);
  }

  *(v16 + 32) = a2;
  v17 = v16;
  if ((v12 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    *v16 = *(v12 & 0xFFFFFFFFFFFFFFFCLL);
    v17 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  }

  *v17 = v16;
  *(v16 + 28) = 1;
  atomic_store(v12 & 2 | *(a2 + 32), v10);
  return v9;
}

void *absl::lts_20240722::Mutex::AssertReaderHeld(void *this, const void *a2)
{
  if ((*this & 9) == 0)
  {
    absl::lts_20240722::Mutex::AssertReaderHeld(this, a2);
  }

  return this;
}

void *absl::lts_20240722::Mutex::AssertHeld(void *this, const void *a2)
{
  if ((*this & 8) == 0)
  {
    absl::lts_20240722::Mutex::AssertHeld(this, a2);
  }

  return this;
}

uint64_t absl::lts_20240722::GetSynchEvent(unint64_t this, const void *a2)
{
  v2 = this % 0x407;
  v3 = dword_27E25F584;
  if (dword_27E25F584 & 1) != 0 || (atomic_compare_exchange_strong_explicit(&dword_27E25F584, &v3, v3 | 1, memory_order_acquire, memory_order_acquire), (v3))
  {
    v7 = this;
    absl::lts_20240722::base_internal::SpinLock::SlowLock(&dword_27E25F584);
    this = v7;
    v4 = absl::lts_20240722::synch_event[v2];
    if (v4)
    {
LABEL_4:
      while ((*(v4 + 16) ^ this) != 0xF03A5F7BF03A5F7BLL)
      {
        v4 = *(v4 + 8);
        if (!v4)
        {
          goto LABEL_8;
        }
      }

      ++*v4;
    }
  }

  else
  {
    v4 = absl::lts_20240722::synch_event[v2];
    if (v4)
    {
      goto LABEL_4;
    }
  }

LABEL_8:
  v5 = atomic_exchange_explicit(&dword_27E25F584, dword_27E25F584 & 2, memory_order_release);
  if (v5 < 8)
  {
    return v4;
  }

  v8 = v4;
  absl::lts_20240722::base_internal::SpinLock::SlowUnlock(&dword_27E25F584, v5);
  return v8;
}

void *absl::lts_20240722::Condition::Condition(void *this, BOOL (*a2)(void *), void *a3)
{
  this[1] = 0;
  this[2] = absl::lts_20240722::Condition::CallVoidPtrFunction;
  this[3] = a3;
  *this = a2;
  return this;
}

void absl::lts_20240722::base_internal::CallOnceImpl<absl::lts_20240722::anonymous namespace::GetMutexGlobals(void)::$_0>(atomic_uint *a1)
{
  v1 = a1;
  v2 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v2, 0x65C2937Bu, memory_order_relaxed, memory_order_relaxed);
  if (v2)
  {
    if (a1)
    {
      return;
    }
  }

  v3 = absl::lts_20240722::base_internal::NumCPUs(a1);
  if (v3 >= 2)
  {
    unk_2810C0EC8 = 0xFA00001388;
    qword_2810C0ED0 = 0;
    dword_2810C0ED8 = 40000;
    if (atomic_exchange_explicit(v1, 0xDDu, memory_order_release) != 94570706)
    {
      return;
    }

LABEL_18:
    ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(v1);
    return;
  }

  unk_2810C0EC8 = 0;
  v4 = absl::lts_20240722::Now(v3);
  v6 = v5;
  v7 = AbslInternalMutexYield_lts_20240722();
  v21 = absl::lts_20240722::Now(v7);
  v22 = v8;
  v9 = absl::lts_20240722::Duration::operator-=(&v21, v4, v6);
  v10 = *(v9 + 2);
  v21 = *v9;
  v22 = v10;
  v11 = absl::lts_20240722::Duration::operator*=(&v21, 5);
  v12 = *(v11 + 8);
  qword_2810C0ED0 = *v11;
  dword_2810C0ED8 = v12;
  v21 = 0;
  v22 = 4000000;
  v13 = v12 > 0x3D0900;
  v14 = qword_2810C0ED0 > 0;
  if (!qword_2810C0ED0)
  {
    v14 = v13;
  }

  if (v14)
  {
    v15 = &v21;
  }

  else
  {
    v15 = &qword_2810C0ED0;
  }

  v16 = *v15;
  dword_2810C0ED8 = *(v15 + 2);
  qword_2810C0ED0 = v16;
  v21 = 0;
  v22 = 40000;
  v17 = dword_2810C0ED8 >> 6 < 0x271;
  v18 = v16 < 0;
  if (qword_2810C0ED0)
  {
    v17 = v18;
  }

  if (v17)
  {
    v19 = &v21;
  }

  else
  {
    v19 = &qword_2810C0ED0;
  }

  v20 = *(v19 + 2);
  qword_2810C0ED0 = *v19;
  dword_2810C0ED8 = v20;
  if (atomic_exchange_explicit(v1, 0xDDu, memory_order_release) == 94570706)
  {
    goto LABEL_18;
  }
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return absl::lts_20240722::Enqueue(a1, v8, v9, 2, a5, a6, a7, a8);
}

_DWORD *AbslInternalPerThreadSemWait_lts_20240722(absl::lts_20240722::base_internal *a1)
{
  ThreadIdentity = absl::lts_20240722::base_internal::CurrentThreadIdentityIfPresent(a1);
  if (!ThreadIdentity)
  {
    ThreadIdentity = absl::lts_20240722::synchronization_internal::CreateThreadIdentity(0, v2, v3, v4, v5, v6, v7, v8);
  }

  v10 = *(ThreadIdentity + 328);
  if (v10 <= 1)
  {
    v10 = 1;
  }

  *(ThreadIdentity + 332) = v10;
  *(ThreadIdentity + 336) = 0;
  v11 = *(ThreadIdentity + 320);
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 1u, memory_order_relaxed);
  }

  result = absl::lts_20240722::synchronization_internal::PthreadWaiter::Wait(ThreadIdentity + 64, a1);
  v13 = *(ThreadIdentity + 320);
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 0xFFFFFFFF, memory_order_relaxed);
  }

  *(ThreadIdentity + 336) = 0;
  *(ThreadIdentity + 332) = 0;
  return result;
}

absl::lts_20240722::synchronization_internal::PthreadWaiter *absl::lts_20240722::synchronization_internal::PthreadWaiter::PthreadWaiter(absl::lts_20240722::synchronization_internal::PthreadWaiter *this)
{
  *(this + 14) = 0;
  v2 = pthread_mutex_init(this, 0);
  if (v2)
  {
    absl::lts_20240722::synchronization_internal::PthreadWaiter::PthreadWaiter(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = pthread_cond_init((this + 64), 0);
  if (v10)
  {
    absl::lts_20240722::synchronization_internal::PthreadWaiter::PthreadWaiter(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  return this;
}

_DWORD *absl::lts_20240722::synchronization_internal::PthreadWaiter::Wait(uint64_t a1, uint64_t a2)
{
  v4 = pthread_mutex_lock(a1);
  if (v4)
  {
    absl::lts_20240722::synchronization_internal::PthreadWaiter::Wait(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = *(a1 + 116);
  ++*(a1 + 112);
  if (!v12)
  {
    if (a2 == -1)
    {
      while (1)
      {
        v27 = pthread_cond_wait((a1 + 64), a1);
        if (v27)
        {
          break;
        }

        v12 = *(a1 + 116);
        if (v12)
        {
          goto LABEL_3;
        }

        absl::lts_20240722::synchronization_internal::WaiterBase::MaybeBecomeIdle(v27);
      }

      result = absl::lts_20240722::raw_log_internal::RawLog(3, "pthread_waiter.cc", 123, "pthread_cond_wait failed: %d", v28, v29, v30, v31, v27);
      goto LABEL_27;
    }

    v35 = a2;
    if (a2)
    {
      v34.tv_sec = absl::lts_20240722::synchronization_internal::KernelTimeout::MakeRelativeTimespec(&v35);
      v34.tv_nsec = v32;
      v21 = pthread_cond_timedwait_relative_np((a1 + 64), a1, &v34);
      if (v21 != 60)
      {
        if (!v21)
        {
          while (1)
          {
            v12 = *(a1 + 116);
            if (v12)
            {
              goto LABEL_3;
            }

            absl::lts_20240722::synchronization_internal::WaiterBase::MaybeBecomeIdle(v21);
            v35 = a2;
            v34.tv_sec = absl::lts_20240722::synchronization_internal::KernelTimeout::MakeRelativeTimespec(&v35);
            v34.tv_nsec = v33;
            v21 = pthread_cond_timedwait_relative_np((a1 + 64), a1, &v34);
            if (v21)
            {
LABEL_21:
              if (v21 != 60)
              {
                goto LABEL_26;
              }

              goto LABEL_22;
            }
          }
        }

        goto LABEL_26;
      }
    }

    else
    {
      v34.tv_sec = absl::lts_20240722::synchronization_internal::KernelTimeout::MakeAbsTimespec(&v35);
      v34.tv_nsec = v20;
      v21 = pthread_cond_timedwait((a1 + 64), a1, &v34);
      if (v21 != 60)
      {
        if (!v21)
        {
          while (1)
          {
            v12 = *(a1 + 116);
            if (v12)
            {
              goto LABEL_3;
            }

            absl::lts_20240722::synchronization_internal::WaiterBase::MaybeBecomeIdle(v21);
            v35 = a2;
            v34.tv_sec = absl::lts_20240722::synchronization_internal::KernelTimeout::MakeAbsTimespec(&v35);
            v34.tv_nsec = v26;
            v21 = pthread_cond_timedwait((a1 + 64), a1, &v34);
            if (v21)
            {
              goto LABEL_21;
            }
          }
        }

LABEL_26:
        result = absl::lts_20240722::raw_log_internal::RawLog(3, "pthread_waiter.cc", 132, "PthreadWaiter::TimedWait() failed: %d", v22, v23, v24, v25, v21);
        goto LABEL_27;
      }
    }

LABEL_22:
    v13 = 0;
    goto LABEL_4;
  }

LABEL_3:
  *(a1 + 116) = v12 - 1;
  v13 = 1;
LABEL_4:
  --*(a1 + 112);
  v14 = pthread_mutex_unlock(a1);
  if (!v14)
  {
    return v13;
  }

  result = absl::lts_20240722::raw_log_internal::RawLog(3, "pthread_waiter.cc", 52, "pthread_mutex_unlock failed: %d", v15, v16, v17, v18, v14);
LABEL_27:
  __break(1u);
  return result;
}

void sub_23C979354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

void sub_23C979368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

void sub_23C97937C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

void sub_23C979390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

void sub_23C9793A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

void sub_23C9793B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

void sub_23C9793CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

void sub_23C9793E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

void sub_23C9793F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

void sub_23C97940C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::synchronization_internal::anonymous namespace::PthreadMutexHolder::~PthreadMutexHolder(pthread_mutex_t **this)
{
  v1 = pthread_mutex_unlock(*this);
  if (v1)
  {
    absl::lts_20240722::raw_log_internal::RawLog(3, "pthread_waiter.cc", 52, "pthread_mutex_unlock failed: %d", v2, v3, v4, v5, v1);
    __break(1u);
  }
}

uint64_t absl::lts_20240722::synchronization_internal::PthreadWaiter::Post(absl::lts_20240722::synchronization_internal::PthreadWaiter *this)
{
  v2 = pthread_mutex_lock(this);
  if (v2)
  {
    absl::lts_20240722::synchronization_internal::PthreadWaiter::Wait(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = *(this + 28);
  ++*(this + 29);
  if (v10)
  {
    v11 = pthread_cond_signal((this + 64));
    if (v11)
    {
      result = absl::lts_20240722::raw_log_internal::RawLog(3, "pthread_waiter.cc", 158, "pthread_cond_signal failed: %d", v12, v13, v14, v15, v11);
LABEL_9:
      __break(1u);
      return result;
    }
  }

  result = pthread_mutex_unlock(this);
  if (result)
  {
    result = absl::lts_20240722::raw_log_internal::RawLog(3, "pthread_waiter.cc", 52, "pthread_mutex_unlock failed: %d", v17, v18, v19, v20, result);
    goto LABEL_9;
  }

  return result;
}

void sub_23C97952C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::synchronization_internal::WaiterBase::MaybeBecomeIdle(absl::lts_20240722::synchronization_internal::WaiterBase *this)
{
  result = absl::lts_20240722::base_internal::CurrentThreadIdentityIfPresent(this);
  if ((*(result + 336) & 1) == 0 && *(result + 328) - *(result + 332) >= 61)
  {
    *(result + 336) = 1;
  }

  return result;
}

void absl::lts_20240722::base_internal::ThrowStdOutOfRange(absl::lts_20240722::base_internal *this, const char *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, this);
  __cxa_throw(exception, off_278BC2E20, MEMORY[0x277D825F8]);
}

unint64_t absl::lts_20240722::Now(absl::lts_20240722 *this)
{
  v1.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v2.__d_.__rep_ = std::chrono::system_clock::from_time_t(0).__d_.__rep_;
  if (v1.__d_.__rep_ - v2.__d_.__rep_ < 0)
  {
    return (-(-1000 * (v1.__d_.__rep_ - v2.__d_.__rep_) % 0x3B9ACA00uLL) >> 61) - -1000 * (v1.__d_.__rep_ - v2.__d_.__rep_) / 0x3B9ACA00uLL;
  }

  else
  {
    return 1000 * (v1.__d_.__rep_ - v2.__d_.__rep_) / 0x3B9ACA00uLL;
  }
}

unint64_t *AbslInternalSleepFor_lts_20240722(unint64_t *this, unsigned int a2)
{
  v3 = this;
  v6 = this;
  v7 = a2;
  while (v3)
  {
    if (v3 <= 0)
    {
      return this;
    }

    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_8;
    }

    v4 = 0;
LABEL_9:
    __rmtp.tv_sec = absl::lts_20240722::ToTimespec(v3, v4);
    __rmtp.tv_nsec = v5;
      ;
    }

    v2 = v2 & 0xFFFFFFFF00000000 | v4;
    this = absl::lts_20240722::Duration::operator-=(&v6, v3, v2);
    v3 = v6;
    a2 = v7;
  }

  if (a2)
  {
LABEL_8:
    v4 = a2;
    goto LABEL_9;
  }

  return this;
}

unint64_t absl::lts_20240722::IDivDuration(unint64_t this, unsigned int a2, unint64_t a3, Duration *a4, uint64_t a5)
{
  if (a2 == 0xFFFFFFFFLL || a4 == 0xFFFFFFFFLL)
  {
  }

  if (!a3)
  {
    if (a4 > 3999)
    {
      if (a4 == 4000)
      {
        if (this <= 0x8637BD04B55)
        {
          *a5 = 0;
          *(a5 + 8) = a2 % 0xFA0;
          return a2 / 0xFA0uLL + 1000000 * this;
        }
      }

      else if (a4 == 4000000 && this <= 0x20C49BA5A64AF6)
      {
        *a5 = 0;
        *(a5 + 8) = a2 % 0x3D0900;
        return a2 / 0x3D0900uLL + 1000 * this;
      }
    }

    else if (a4 == 4)
    {
      if (this <= 0x225C17CFFLL)
      {
        *a5 = 0;
        *(a5 + 8) = a2 & 3;
        return 1000000000 * this + (a2 >> 2);
      }
    }

    else if (a4 == 400 && this <= 0xD6BF94D454)
    {
      *a5 = 0;
      *(a5 + 8) = a2 % 0x190;
      return a2 / 0x190uLL + 10000000 * this;
    }
  }

  if (a3 < 1 || a4)
  {
  }

  if ((this & 0x8000000000000000) != 0)
  {
    if (a2)
    {
      v5 = -1;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5 - this;
    v7 = (v5 - this) / a3;
    v8 = v6 % a3;
    v9 = -v8;
    if (a2)
    {
      v9 = ~v8;
    }

    *a5 = v9;
    *(a5 + 8) = a2;
    return -v7;
  }

  else if (a3 == 1)
  {
    *a5 = 0;
    *(a5 + 8) = a2;
  }

  else
  {
    *a5 = this % a3;
    *(a5 + 8) = a2;
    this /= a3;
  }

  return this;
}

unint64_t *absl::lts_20240722::Duration::operator+=(unint64_t *result, unint64_t a2, unsigned int a3)
{
  v3 = *(result + 2);
  if (v3 != -1)
  {
    if (a3 != 0xFFFFFFFFLL)
    {
      v4 = *result;
      *result += a2;
      if (4000000000 - a3 <= v3)
      {
        ++*result;
        LODWORD(v3) = v3 + 294967296;
      }

      *(result + 2) = v3 + a3;
      v5 = *result;
      if ((a2 & 0x8000000000000000) != 0)
      {
        if (*result <= v4)
        {
          return result;
        }

        a2 = 0x8000000000000000;
      }

      else
      {
        if (*result >= v4)
        {
          return result;
        }

        a2 = 0x7FFFFFFFFFFFFFFFLL;
      }

      a3 = -1;
    }

    *result = a2;
    *(result + 2) = a3;
  }

  return result;
}

unint64_t *absl::lts_20240722::Duration::operator-=(unint64_t *result, uint64_t a2, unsigned int a3)
{
  v3 = *(result + 2);
  if (v3 != -1)
  {
    if (a3 == -1)
    {
      v4 = (a2 >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v5 = *result;
      *result -= a2;
      if (v3 < a3)
      {
        --*result;
        v3 -= 294967296;
      }

      *(result + 2) = v3 - a3;
      v6 = *result;
      if (a2 < 0)
      {
        if (*result > v5)
        {
          return result;
        }

        v4 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        if (*result <= v5)
        {
          return result;
        }

        v4 = 0x8000000000000000;
      }
    }

    *result = v4;
    *(result + 2) = -1;
  }

  return result;
}

uint64_t absl::lts_20240722::Duration::operator*=(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  if (v3 == -1)
  {
    *result = ((v2 ^ a2) >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    *(result + 8) = -1;
    return result;
  }

  if (v2 < 0)
  {
    v3 = -294967296 - v3;
  }

  v4 = v2 ^ (v2 >> 63);
  v5 = 4000000000 * v4 + v3;
  if (__CFADD__(4000000000 * v4, v3))
  {
    v6 = ((v4 * 0xEE6B2800uLL) >> 64) + 1;
  }

  else
  {
    v6 = (v4 * 0xEE6B2800uLL) >> 64;
  }

  v7 = a2 ^ (a2 >> 63);
  v8 = __CFADD__(v7, a2 >> 63);
  v9 = v7 + (a2 >> 63);
  v10 = v8;
  if (!v6)
  {
    if (!((v5 | v9) >> 32))
    {
      v11 = v5 * v9;
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  if (v9 | v10)
  {
    v12 = v10;
    if (!is_mul_ok(v6, v9))
    {
      v12 = 1;
    }

    if (__CFADD__((v9 * v5) >> 64, v6 * v9 + v10 * v5))
    {
      v12 = 1;
    }

    if (v12 == 1)
    {
      v13 = (v2 ^ a2) >> 63;
      v14 = -1;
      v15 = -1;
      goto LABEL_38;
    }

LABEL_22:
    v14 = (__PAIR128__(v6, v5) * __PAIR128__(v10, v9)) >> 64;
    v15 = v5 * v9;
    v16 = v2 ^ a2;
    if (!v14)
    {
      v18 = v15 / 0xEE6B2800;
      v19 = v15 % 0xEE6B2800;
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_48;
    }

    if (v14 < 0x77359400)
    {
      v17 = result;
      v18 = __udivti3();
      result = v17;
      v19 = v15 + 294967296 * v18;
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_48;
    }

    v13 = v16 >> 63;
LABEL_38:
    v23 = v14 == 2000000000 && v15 == 0;
    v18 = 0x8000000000000000;
    if (!v13)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v21 = (v13 & v23) == 0;
    v19 = -1;
    if (!v21)
    {
      v19 = 0;
    }

    goto LABEL_48;
  }

  v11 = 0;
LABEL_27:
  v20 = v2 ^ a2;
  v18 = v11 / 0xEE6B2800;
  v19 = v11 % 0xEE6B2800;
  if (v20 < 0)
  {
LABEL_28:
    v21 = v19 == 0;
    if (v19)
    {
      v19 = -294967296 - v19;
    }

    else
    {
      v19 = 0;
    }

    if (v21)
    {
      v18 = -v18;
    }

    else
    {
      v18 = ~v18;
    }
  }

LABEL_48:
  *result = v18;
  *(result + 8) = v19;
  return result;
}

unint64_t absl::lts_20240722::ToInt64Nanoseconds(unint64_t this, unsigned int a2)
{
  if (!(this >> 33))
  {
    return (a2 >> 2) + 1000000000 * this;
  }

  v6 = v2;
  v7 = v3;
  return absl::lts_20240722::IDivDuration(this, a2, 0, 4, v5);
}

unint64_t absl::lts_20240722::ToInt64Microseconds(unint64_t this, unsigned int a2)
{
  if (!(this >> 43))
  {
    return 1000000 * this + a2 / 0xFA0uLL;
  }

  v6 = v2;
  v7 = v3;
  return absl::lts_20240722::IDivDuration(this, a2, 0, 0xFA0, v5);
}

char *absl::lts_20240722::ToTimespec(uint64_t this, int a2)
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  if (this)
  {
    v2 = (this >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((a2 + 3) < 0xEE6B2800)
  {
    v3 = this;
  }

  else
  {
    v3 = (this + 1);
  }

  if (this >= 0)
  {
    v3 = this;
  }

  if (a2 == -1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t absl::lts_20240722::anonymous namespace::IDivSlowPath(absl::lts_20240722::_anonymous_namespace_ *this, uint64_t a2, unsigned int a3, uint64_t a4, Duration *a5, uint64_t a6)
{
  v6 = a2 ^ a4;
  if (a3 == -1 || !(a4 | a5))
  {
    *a6 = (a2 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    *(a6 + 8) = -1;
    return (v6 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a5 == 0xFFFFFFFFLL)
  {
    result = 0;
    *a6 = a2;
    *(a6 + 8) = a3;
    return result;
  }

  v9 = -294967296 - a3;
  if (a2 >= 0)
  {
    v9 = a3;
  }

  v11 = a2 ^ (a2 >> 63);
  v12 = (v11 * 0xEE6B2800uLL) >> 64;
  v11 *= 4000000000;
  v13 = v11 + v9;
  if (__CFADD__(v11, v9))
  {
    v14 = v12 + 1;
  }

  else
  {
    v14 = v12;
  }

  v15 = -294967296 - a5;
  if (a4 >= 0)
  {
    v15 = a5;
  }

  v16 = a4 ^ (a4 >> 63);
  v17 = 4000000000 * v16 + v15;
  if (__CFADD__(4000000000 * v16, v15))
  {
    v18 = ((v16 * 0xEE6B2800uLL) >> 64) + 1;
  }

  else
  {
    v18 = (v16 * 0xEE6B2800uLL) >> 64;
  }

  v19 = this;
  v20 = __udivti3();
  v22 = (v21 | (v20 >> 63)) != 0;
  if ((v22 & v19) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  if ((v22 & v19) != 0)
  {
    v24 = (v6 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v24 = v20;
  }

  v25 = __PAIR128__(v14, v13) - __PAIR128__(v23, v24) * __PAIR128__(v18, v17);
  if (*(&v25 + 1))
  {
    if (*(&v25 + 1) >= 0x77359400uLL)
    {
      if (v25)
      {
        v30 = 0;
      }

      else
      {
        v30 = *(&v25 + 1) == 2000000000;
      }

      v32 = !v30 || a2 >= 0;
      *a6 = (a2 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      *(a6 + 8) = v32 << 31 >> 31;
      if ((v6 & 0x8000000000000000) == 0)
      {
        return v24 & 0x7FFFFFFFFFFFFFFFLL;
      }

      goto LABEL_43;
    }

    v26 = __udivti3();
  }

  else
  {
    v26 = v25 / 0xEE6B2800;
  }

  v27 = v25 + 294967296 * v26;
  v28 = ~v26;
  v29 = -294967296 - v27;
  if (!v27)
  {
    v28 = -v26;
    v29 = 0;
  }

  if (a2 < 0)
  {
    v27 = v29;
  }

  else
  {
    v28 = v26;
  }

  *a6 = v28;
  *(a6 + 8) = v27;
  if ((v6 & 0x8000000000000000) == 0)
  {
    return v24 & 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_43:
  if (v24 | v23)
  {
    return -v24 | 0x8000000000000000;
  }

  return v24 & 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t absl::lts_20240722::ToUnixNanos(unint64_t a1, unsigned int a2)
{
  if (!(a1 >> 33))
  {
    return (a2 >> 2) + 1000000000 * a1;
  }

  v9 = v2;
  v10 = v3;
  v7 = 0;
  v8 = 0;
  result = absl::lts_20240722::IDivDuration(a1, a2, 0, 4, &v7);
  v5 = result - 1;
  if (result == 0x8000000000000000)
  {
    v5 = 0x8000000000000000;
  }

  if (v7 <= -1 && result <= 0)
  {
    return v5;
  }

  return result;
}

uint64_t absl::lts_20240722::ToTimeval(uint64_t result, int a2)
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  if (result)
  {
    v2 = (result >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a2 == 0xFFFFFFFFLL)
  {
    return v2;
  }

  return result;
}

uint64_t absl::lts_20240722::TimeZone::At@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL && a3 == -1)
  {
    result = absl::lts_20240722::time_internal::cctz::detail::impl::n_day(0x7FFFFFFFFFFFFFFFLL, 12, 31, 0);
    *a4 = result;
    *(a4 + 8) = v6 & 0xFFFFFFFFFFLL;
    *(a4 + 16) = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  if (a2 == 0x8000000000000000 && a3 == -1)
  {
    *a4 = xmmword_23CE35850;
    *(a4 + 16) = 0x8000000000000000;
LABEL_9:
    *(a4 + 24) = 0xFFFFFFFFLL;
    *(a4 + 32) = 0;
    *(a4 + 40) = "-00";
    return result;
  }

  v7 = result;
  std::chrono::system_clock::from_time_t(0).__d_.__rep_;
  result = absl::lts_20240722::time_internal::cctz::time_zone::lookup(v7);
  *a4 = v9;
  *(a4 + 8) = v10;
  *(a4 + 12) = v11;
  *(a4 + 16) = 0;
  *(a4 + 24) = a3;
  *(a4 + 28) = v12;
  *(a4 + 32) = v13;
  *(a4 + 40) = v14;
  return result;
}

uint64_t absl::lts_20240722::time_internal::cctz::detail::impl::n_sec(uint64_t this, uint64_t a2, uint64_t a3, int64_t a4, int64_t a5, int64_t a6)
{
  if (a6 > 0x3B)
  {
    v7 = a6 / 60 + ((a6 % 60) >> 63);
    v8 = v7 / 60 + a5 / 60;
    v9 = v7 % 60 + a5 % 60;
    v10 = 12;
    v11 = a2 / 12 + this;
    v12 = a2 % 12;
    if (a2 % 12 <= 0)
    {
      v12 = a2 % 12 + 12;
      --v11;
    }

    if (a2 != 12)
    {
      v10 = v12;
      this = v11;
    }

    v13 = (((137 * v9) >> 8) >> 5) + (((v9 + ((-119 * v9) >> 8)) & 0x80) >> 7);
    v14 = v8 + v13 + ((v9 - 60 * v13) >> 7);
    v15 = v14 / 24;
    LOBYTE(v14) = v14 % 24 + a4 % 24;
    v16 = (((43 * v14) >> 15) & 1) + ((43 * v14) >> 10);
    v17 = v15 + a4 / 24 + v16 + ((v14 - 24 * v16) >> 7);
    v18 = v10;
    return absl::lts_20240722::time_internal::cctz::detail::impl::n_day(this, v18, a3, v17);
  }

  if (a5 > 0x3B)
  {
    v19 = 12;
    v20 = a2 / 12 + this;
    v21 = a2 % 12;
    if (a2 % 12 <= 0)
    {
      v21 = a2 % 12 + 12;
      --v20;
    }

    if (a2 != 12)
    {
      v19 = v21;
      this = v20;
    }

    v22 = a5 / 60 + ((a5 % 60) >> 63);
    v23 = v22 / 24;
    LOBYTE(v22) = v22 % 24 + a4 % 24;
    v24 = (((43 * v22) >> 15) & 1) + ((43 * v22) >> 10);
    v17 = v23 + a4 / 24 + v24 + ((v22 - 24 * v24) >> 7);
    v18 = v19;
    return absl::lts_20240722::time_internal::cctz::detail::impl::n_day(this, v18, a3, v17);
  }

  if (a4 > 0x17)
  {
    v25 = a2 / 12 + this;
    v26 = a2 % 12;
    if (a2 % 12 <= 0)
    {
      v26 = a2 % 12 + 12;
      --v25;
    }

    if (a2 == 12)
    {
      LOBYTE(v26) = 12;
    }

    else
    {
      this = v25;
    }

    v17 = a4 / 24 + ((a4 % 24) >> 63);
    v18 = v26;
    return absl::lts_20240722::time_internal::cctz::detail::impl::n_day(this, v18, a3, v17);
  }

  if ((a2 - 1) > 0xB || (a3 - 1) >= 0x1C)
  {
    if (a2 == 12)
    {
      LOBYTE(v6) = 12;
    }

    else
    {
      this += a2 / 12;
      v6 = a2 % 12;
      if (a2 % 12 <= 0)
      {
        --this;
        LOBYTE(v6) = v6 + 12;
      }
    }

    v18 = v6;
    v17 = 0;
    return absl::lts_20240722::time_internal::cctz::detail::impl::n_day(this, v18, a3, v17);
  }

  return this;
}

uint64_t absl::lts_20240722::time_internal::cctz::detail::impl::n_day(uint64_t this, int a2, uint64_t a3, uint64_t a4)
{
  v4 = this % 400 + 400 * (a4 / 146097);
  if (a4 % 146097 >= 0)
  {
    v5 = a4 % 146097;
  }

  else
  {
    v4 -= 400;
    v5 = a4 % 146097 + 146097;
  }

  v6 = v4 + 400 * (a3 / 146097);
  v7 = v5 + a3 % 146097;
  if (v7 < 1)
  {
    if (v7 < -364)
    {
      v8 = v6 - 400;
      v7 += 146097;
      if (v7 < 0x16E)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v8 = v6 - 1;
      if (a2 > 2)
      {
        v9 = v4 + 400 * (a3 / 146097);
      }

      else
      {
        v9 = v6 - 1;
      }

      if ((v9 & 3) != 0)
      {
        v7 += 365;
        if (v7 < 0x16E)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v10 = 0x8F5C28F5C28F5C29 * v9;
        v11 = __ROR8__(v10 + 0x51EB851EB851EB8, 2);
        v12 = __ROR8__(v10 + 0x51EB851EB851EB0, 4) < 0xA3D70A3D70A3D7uLL || v11 > 0x28F5C28F5C28F5CLL;
        v13 = 365;
        if (v12)
        {
          v13 = 366;
        }

        v7 += v13;
        if (v7 < 0x16E)
        {
          goto LABEL_69;
        }
      }
    }
  }

  else
  {
    v8 = v6 + 400;
    if (v7 > 0x23AB1)
    {
      v7 -= 146097;
    }

    else
    {
      v8 = v4 + 400 * (a3 / 146097);
    }

    if (v7 < 0x16E)
    {
      goto LABEL_69;
    }
  }

  v14 = a2 > 2;
  if (a2 <= 2)
  {
    v15 = v8;
  }

  else
  {
    v15 = v8 + 1;
  }

  v16 = v15 % 400;
  v17 = v15 % 400 + 400;
  if (v16 < 0)
  {
    LODWORD(v16) = v17;
  }

  if (v16 > 300 || v16 == 0)
  {
    v19 = 36525;
  }

  else
  {
    v19 = 36524;
  }

  while (v7 > v19)
  {
    v7 -= v19;
    v8 += 100;
    if (v16 <= 299)
    {
      v20 = 100;
    }

    else
    {
      v20 = -300;
    }

    LODWORD(v16) = v20 + v16;
    if (v16 > 300 || v16 == 0)
    {
      v19 = 36525;
    }

    else
    {
      v19 = 36524;
    }
  }

  v22 = v7;
  v23 = 1461;
  if (v16)
  {
LABEL_48:
    if (v16 <= 300)
    {
      if ((v16 - 1) % 100 >= 96)
      {
        v23 = 1460;
      }

      else
      {
        v23 = 1461;
      }
    }
  }

  while (1)
  {
    v24 = v22 >= v23;
    v25 = v22 - v23;
    if (v25 == 0 || !v24)
    {
      break;
    }

    v8 += 4;
    if (v16 <= 395)
    {
      v26 = 4;
    }

    else
    {
      v26 = -396;
    }

    LODWORD(v16) = v26 + v16;
    v22 = v25;
    v23 = 1461;
    if (v16)
    {
      goto LABEL_48;
    }
  }

  do
  {
    while (1)
    {
      v7 = v22;
      if (((v14 + v8) & 3) == 0)
      {
        break;
      }

      ++v8;
      v22 -= 365;
      if (v7 <= 365)
      {
        goto LABEL_68;
      }
    }

    v27 = 0x8F5C28F5C28F5C29 * (v14 + v8);
    v28 = __ROR8__(v27 + 0x51EB851EB851EB8, 2);
    if (__ROR8__(v27 + 0x51EB851EB851EB0, 4) < 0xA3D70A3D70A3D7uLL || v28 > 0x28F5C28F5C28F5CLL)
    {
      v30 = 366;
    }

    else
    {
      v30 = 365;
    }

    ++v8;
    v31 = __OFSUB__(v7, v30);
    v22 = v7 - v30;
  }

  while (!((v22 < 0) ^ v31 | (v22 == 0)));
LABEL_68:
  --v8;
LABEL_69:
  if (v7 >= 29)
  {
    if ((v8 & 3) != 0)
    {
      goto LABEL_80;
    }

    while (1)
    {
      v32 = __ROR8__(0x51EB851EB851EB0 - 0x70A3D70A3D70A3D7 * v8, 4) < 0xA3D70A3D70A3D7uLL;
      v33 = __ROR8__(0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v8, 2) > 0x28F5C28F5C28F5CuLL || v32;
      v34 = a2 == 2 && v33;
      v35 = dword_23CE35860[a2] + v34;
      v31 = __OFSUB__(v7, v35);
      v36 = v7 - v35;
      if ((v36 < 0) ^ v31 | (v36 == 0))
      {
        break;
      }

      while (1)
      {
        if ((a2 + 1) <= 12)
        {
          LOBYTE(a2) = a2 + 1;
        }

        else
        {
          ++v8;
          LOBYTE(a2) = 1;
        }

        v7 = v36;
        if ((v8 & 3) == 0)
        {
          break;
        }

LABEL_80:
        v37 = dword_23CE35860[a2];
        v31 = __OFSUB__(v7, v37);
        v36 = v7 - v37;
        if ((v36 < 0) ^ v31 | (v36 == 0))
        {
          return this - this % 400 + v8;
        }
      }
    }
  }

  return this - this % 400 + v8;
}

void *absl::lts_20240722::time_internal::cctz::FixedOffsetToName@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *result;
  if (*result && (v3 - 86401) > 0xFFFFFFFFFFFD5CFELL)
  {
    if (v3 >= 0)
    {
      v5 = 43;
    }

    else
    {
      v5 = 45;
    }

    v6 = v3 % 60;
    v7 = v3 % 60 - 60;
    if (v3 % 60 <= 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = -1;
    }

    if (v6 <= 0)
    {
      v7 = v3 % 60;
    }

    v9 = v8 - v3 / 60;
    v10 = v3 >= 0;
    if (v3 < 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = v3 / 60;
    }

    if (v10)
    {
      LOBYTE(v12) = v6;
    }

    else
    {
      v12 = -v7;
    }

    v13 = (((34953 * v11) >> 16) >> 5) + (((v11 + ((-30583 * v11) >> 16)) & 0x8000) >> 15);
    v14 = v11 - 60 * v13;
    v21 = 67;
    v20 = *"Fixed/UTC";
    v15 = (((103 * v13) >> 15) & 1) + ((103 * v13) >> 10);
    v22 = v5;
    v23 = v16;
    v24 = v15;
    v25 = 58;
    v28 = 58;
    v17 = (((103 * v12) >> 15) & 1) + ((103 * v12) >> 10);
    v31 = 0;
    result = strlen(&v20);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v18 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    a2[23] = result;
    if (result)
    {
      result = memcpy(a2, &v20, result);
    }

    *(v18 + a2) = 0;
    v19 = *MEMORY[0x277D85DE8];
  }

  else
  {
    a2[23] = 3;
    *a2 = 4412501;
    v4 = *MEMORY[0x277D85DE8];
  }

  return result;
}

std::string *absl::lts_20240722::time_internal::cctz::FixedOffsetToAbbr@<X0>(void *a1@<X0>, std::string *a2@<X8>)
{
  result = absl::lts_20240722::time_internal::cctz::FixedOffsetToName(a1, a2);
  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size == 18)
  {
    std::string::erase(a2, 0, 9uLL);
    std::string::erase(a2, 6uLL, 1uLL);
    result = std::string::erase(a2, 3uLL, 1uLL);
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = a2->__r_.__value_.__r.__words[0];
      if (*(a2->__r_.__value_.__r.__words[0] + 5) != 48)
      {
        return result;
      }
    }

    else
    {
      v5 = a2;
      if (a2->__r_.__value_.__s.__data_[5] != 48)
      {
        return result;
      }
    }

    if (v5->__r_.__value_.__s.__data_[6] != 48)
    {
      return result;
    }

    result = std::string::erase(a2, 5uLL, 2uLL);
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = a2->__r_.__value_.__r.__words[0];
      if (*(a2->__r_.__value_.__r.__words[0] + 3) != 48)
      {
        return result;
      }
    }

    else
    {
      v6 = a2;
      if (a2->__r_.__value_.__s.__data_[3] != 48)
      {
        return result;
      }
    }

    if (v6->__r_.__value_.__s.__data_[4] == 48)
    {
      return std::string::erase(a2, 3uLL, 2uLL);
    }
  }

  return result;
}

void sub_23C97ACB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::time_internal::cctz::time_zone::Impl::UTC(absl::lts_20240722::time_internal::cctz::time_zone::Impl *this)
{
  if ((atomic_load_explicit(qword_2810C1568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2810C1568))
  {
    operator new();
  }

  return qword_2810C1560;
}

void sub_23C97ADA8(_Unwind_Exception *a1)
{
  MEMORY[0x23EED9460](v1, 0x1032C402ED93987);
  __cxa_guard_abort(qword_2810C1568);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::time_internal::cctz::time_zone::Impl::Impl(absl::lts_20240722::time_internal::cctz::time_zone::Impl *this)
{
  *(this + 23) = 3;
  *this = 4412501;
  absl::lts_20240722::time_internal::cctz::TimeZoneIf::UTC(this);
}

void sub_23C97AE30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::time_internal::cctz::TimeZoneInfo::ResetToBuiltinUTC(uint64_t a1, void *a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = a1 + 32;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4);
  if (v6 == v5)
  {
    std::vector<absl::lts_20240722::time_internal::cctz::TransitionType>::__append(v4, 1 - v7);
    v6 = *(a1 + 40);
  }

  else if (v7 >= 2)
  {
    v6 = v5 + 48;
    *(a1 + 40) = v5 + 48;
  }

  *(v6 - 48) = *a2;
  *(v6 - 8) = 0;
  v8 = *(a1 + 8);
  *(a1 + 16) = v8;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - v8) >> 4) <= 0xB)
  {
    operator new();
  }

  for (i = 0; i != 12; ++i)
  {
    v10 = qword_23CE358E0[i];
    v11 = std::vector<absl::lts_20240722::time_internal::cctz::Transition>::emplace<>((a1 + 8), *(a1 + 16));
    *v11 = v10;
    *(v11 + 8) = 0;
    v12 = absl::lts_20240722::time_internal::cctz::detail::impl::n_sec(1970, 1, 1, 0, v10 / 60, v10 % 60);
    v14 = absl::lts_20240722::time_internal::cctz::detail::impl::n_sec(v12, v13, v13 >> 8, v13 << 40 >> 56, (v13 >> 24) + *(v6 - 48) / 60, (v13 << 24 >> 56) + *(v6 - 48) % 60);
    v11[2] = v14;
    v11[3] = v15 & 0xFFFFFFFFFFLL;
    v11[4] = absl::lts_20240722::time_internal::cctz::detail::impl::n_sec(v14, v15, v15 >> 8, v15 << 40 >> 56, v15 >> 24, (v15 << 24 >> 56) - 1);
    v11[5] = v16 & 0xFFFFFFFFFFLL;
  }

  *(a1 + 56) = 0;
  absl::lts_20240722::time_internal::cctz::FixedOffsetToAbbr(a2, &v24);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *(a1 + 64) = v24;
  std::string::append((a1 + 64), 1uLL, 0);
  if (*(a1 + 135) < 0)
  {
    **(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  else
  {
    *(a1 + 112) = 0;
    *(a1 + 135) = 0;
  }

  *(a1 + 136) = 0;
  v17 = absl::lts_20240722::time_internal::cctz::detail::impl::n_sec(1970, 1, 1, 0, 0x222222222222222, 7);
  *(v6 - 40) = absl::lts_20240722::time_internal::cctz::detail::impl::n_sec(v17, v18, v18 >> 8, v18 << 40 >> 56, (v18 >> 24) + *(v6 - 48) / 60, (v18 << 24 >> 56) + *(v6 - 48) % 60);
  *(v6 - 32) = v19 & 0xFFFFFFFFFFLL;
  v20 = absl::lts_20240722::time_internal::cctz::detail::impl::n_sec(1970, 1, 1, 0, 0xFDDDDDDDDDDDDDDELL, -8);
  *(v6 - 24) = absl::lts_20240722::time_internal::cctz::detail::impl::n_sec(v20, v21, v21 >> 8, v21 << 40 >> 56, (v21 >> 24) + *(v6 - 48) / 60, (v21 << 24 >> 56) + *(v6 - 48) % 60);
  *(v6 - 16) = v22 & 0xFFFFFFFFFFLL;
  std::vector<absl::lts_20240722::time_internal::cctz::Transition>::shrink_to_fit((a1 + 8));
  return 1;
}

void *std::vector<absl::lts_20240722::time_internal::cctz::Transition>::emplace<>(void *a1, char *__src)
{
  v2 = __src;
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v9 = *a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * (&v4[-*a1] >> 4) + 1;
    if (v10 > 0x555555555555555)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v9) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v24 = a1;
    if (v12)
    {
      if (v12 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = 0;
    v22 = 16 * ((__src - v9) >> 4);
    v23 = v22;
    std::__split_buffer<absl::lts_20240722::time_internal::cctz::Transition>::emplace_back<>(&v21);
    v13 = v22;
    memcpy(v23, v2, a1[1] - v2);
    v14 = *a1;
    v15 = v22;
    *&v23 = v23 + a1[1] - v2;
    a1[1] = v2;
    v16 = v2 - v14;
    v17 = (v15 - (v2 - v14));
    memcpy(v17, v14, v16);
    v18 = *a1;
    *a1 = v17;
    v19 = a1[2];
    *(a1 + 1) = v23;
    *&v23 = v18;
    *(&v23 + 1) = v19;
    v21 = v18;
    v22 = v18;
    if (v18)
    {
      operator delete(v18);
    }

    return v13;
  }

  else
  {
    if (__src != v4)
    {
      v6 = __src + 48;
      if (v4 < 0x30)
      {
        a1[1] = v4;
        if (v4 == v6)
        {
LABEL_21:
          *v2 = 0;
          v2[1] = 0;
          v2[2] = 1970;
          *(v2 + 12) = 257;
          *(v2 + 26) = 0;
          *(v2 + 15) = 0;
          v2[4] = 1970;
          *(v2 + 20) = 257;
          *(v2 + 42) = 0;
          *(v2 + 23) = 0;
          return v2;
        }
      }

      else
      {
        v7 = *(v4 - 3);
        v8 = *(v4 - 1);
        *(v4 + 1) = *(v4 - 2);
        *(v4 + 2) = v8;
        *v4 = v7;
        a1[1] = v4 + 48;
        if (v4 == v6)
        {
          goto LABEL_21;
        }
      }

      memmove(__src + 48, __src, v4 - v6);
      goto LABEL_21;
    }

    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *v4 = 0u;
    *(v4 + 2) = 1970;
    *(v4 + 12) = 257;
    *(v4 + 4) = 1970;
    *(v4 + 20) = 257;
    a1[1] = v4 + 48;
  }

  return v2;
}

void sub_23C97B3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (a12 == a11)
  {
    v13 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void std::vector<absl::lts_20240722::time_internal::cctz::Transition>::shrink_to_fit(size_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = &v1[-*a1];
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      if (0xAAAAAAAAAAAAAAABLL * (v4 >> 4) < 0x555555555555556)
      {
        v6 = &v1[-*a1];
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (v4 < v3)
    {
      v7 = 16 * (v4 >> 4);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      *a1 = v9;
      a1[1] = v7;
      a1[2] = v7;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

void sub_23C97B5BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::time_internal::cctz::TimeZoneInfo::BreakTime@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6.__d_.__rep_ = std::chrono::system_clock::from_time_t(0).__d_.__rep_;
  v7 = *a2;
  v8 = v6.__d_.__rep_ / -1000000 + *a2;
  v9 = *(a1 + 8);
  if (v8 >= *v9)
  {
    v17 = *(a1 + 16);
    v18 = *(v17 - 6);
    v19 = __OFSUB__(v8, v18);
    v20 = v8 - v18;
    if (v20 < 0 != v19)
    {
      v21 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v9) >> 4);
      v22 = *(a1 + 152);
      if (!v22 || v22 >= v21 || (v23 = &v9[6 * v22], v24 = *(v23 - 6), v19 = __OFSUB__(v8, v24), v25 = v8 - v24, (v25 < 0) ^ v19) || v8 >= *v23)
      {
        if (v17 == v9)
        {
          v30 = *(a1 + 8);
        }

        else
        {
          v30 = *(a1 + 8);
          do
          {
            v31 = v21 >> 1;
            v32 = &v30[48 * (v21 >> 1)];
            v34 = *v32;
            v33 = (v32 + 6);
            v21 += ~(v21 >> 1);
            if (v8 < v34)
            {
              v21 = v31;
            }

            else
            {
              v30 = v33;
            }
          }

          while (v21);
        }

        *(a1 + 152) = 0xAAAAAAAAAAAAAAABLL * ((v30 - v9) >> 4);
        v10 = *(a1 + 32) + 48 * *(v30 - 40);
        v11 = *(v30 - 4);
        v36 = *(v30 - 3);
        v37 = v8 - *(v30 - 6);
        v16 = v36;
        v12 = v36 >> 8;
        v13 = v36 << 40 >> 56;
        v14 = v37 / 60 + (v36 >> 24);
        v15 = v37 % 60 + (v36 << 24 >> 56);
      }

      else
      {
        v10 = *(a1 + 32) + 48 * *(v23 - 40);
        v11 = *(v23 - 4);
        v26 = *(v23 - 3);
        v16 = v26;
        v12 = v26 >> 8;
        v13 = v26 << 40 >> 56;
        v14 = v25 / 60 + (v26 >> 24);
        v15 = v25 % 60 + (v26 << 24 >> 56);
      }
    }

    else
    {
      if (*(a1 + 136) == 1)
      {
        v27 = v20 / 0x2F0605980 + 1;
        v40 = v7 - 0x2F0605980 * v27;
        (*(*a1 + 16))(a1, &v40);
        result = absl::lts_20240722::time_internal::cctz::detail::impl::n_sec(*a3 + 400 * v27, *(a3 + 8), *(a3 + 9), *(a3 + 10), *(a3 + 11), *(a3 + 12));
        *a3 = result;
        *(a3 + 8) = v29 & 0xFFFFFFFFFFLL;
        return result;
      }

      v10 = *(a1 + 32) + 48 * *(v17 - 40);
      v11 = *(v17 - 4);
      v35 = *(v17 - 3);
      v16 = v35;
      v12 = v35 >> 8;
      v13 = v35 << 40 >> 56;
      v14 = v20 / 60 + (v35 >> 24);
      v15 = v20 % 60 + (v35 << 24 >> 56);
    }
  }

  else
  {
    v10 = *(a1 + 32) + 48 * *(a1 + 56);
    v11 = absl::lts_20240722::time_internal::cctz::detail::impl::n_sec(1970, 1, 1, 0, v8 / 60, v8 % 60);
    v12 = v16 >> 8;
    v13 = v16 << 40 >> 56;
    v14 = (v16 >> 24) + *v10 / 60;
    v15 = (v16 << 24 >> 56) + *v10 % 60;
    v16 = v16;
  }

  result = absl::lts_20240722::time_internal::cctz::detail::impl::n_sec(v11, v16, v12, v13, v14, v15);
  *a3 = result;
  *(a3 + 8) = v38 & 0xFFFFFFFFFFLL;
  *(a3 + 16) = *v10;
  *(a3 + 20) = *(v10 + 40);
  v39 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v39 = *v39;
  }

  *(a3 + 24) = v39 + *(v10 + 41);
  return result;
}

uint64_t absl::lts_20240722::time_internal::cctz::TimeZoneInfo::MakeTime@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *a2;
  v7 = *(v4 + 16);
  if (*a2 < v7)
  {
    goto LABEL_51;
  }

  if (*a2 == v7)
  {
    v8 = *(a2 + 8);
    v9 = *(v4 + 24);
    if (v8 < v9)
    {
      goto LABEL_51;
    }

    if (v8 == v9)
    {
      v10 = *(a2 + 9);
      v11 = *(v4 + 25);
      if (v10 < v11)
      {
        goto LABEL_51;
      }

      if (v10 == v11)
      {
        v12 = *(a2 + 10);
        v13 = *(v4 + 26);
        if (v12 < v13)
        {
          goto LABEL_51;
        }

        if (v12 == v13)
        {
          v14 = *(a2 + 11);
          v15 = *(v4 + 27);
          if (v14 < v15 || v14 == v15 && *(a2 + 12) < *(v4 + 28))
          {
            goto LABEL_51;
          }
        }
      }
    }
  }

  v16 = *(v5 - 32);
  if (v6 < v16)
  {
    goto LABEL_13;
  }

  if (v6 != v16)
  {
LABEL_43:
    v19 = *(result + 16);
    goto LABEL_46;
  }

  v28 = *(a2 + 8);
  v29 = *(v5 - 24);
  if (v28 >= v29)
  {
    if (v28 != v29)
    {
      goto LABEL_43;
    }

    v30 = *(a2 + 9);
    v31 = *(v5 - 23);
    if (v30 >= v31)
    {
      if (v30 != v31)
      {
        goto LABEL_43;
      }

      v32 = *(a2 + 10);
      v33 = *(v5 - 22);
      if (v32 >= v33)
      {
        if (v32 != v33)
        {
          goto LABEL_43;
        }

        v34 = *(a2 + 11);
        v35 = *(v5 - 21);
        if (v34 >= v35)
        {
          if (v34 == v35)
          {
            v36 = *(a2 + 12);
            v19 = *(result + 16);
            if (v36 >= *(v5 - 20))
            {
              goto LABEL_46;
            }

            goto LABEL_13;
          }

          goto LABEL_43;
        }
      }
    }
  }

LABEL_13:
  v17 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4);
  v18 = *(result + 160);
  if (!v18)
  {
    goto LABEL_16;
  }

  if (v18 >= v17)
  {
    goto LABEL_16;
  }

  v19 = v4 + 48 * v18;
  v20 = *(v19 - 32);
  if (v6 < v20)
  {
    goto LABEL_16;
  }

  if (v6 == v20)
  {
    v94 = *(a2 + 8);
    v95 = *(v19 - 24);
    if (v94 < v95)
    {
      goto LABEL_16;
    }

    if (v94 == v95)
    {
      v96 = *(a2 + 9);
      v97 = *(v19 - 23);
      if (v96 < v97)
      {
        goto LABEL_16;
      }

      if (v96 == v97)
      {
        v98 = *(a2 + 10);
        v99 = *(v19 - 22);
        if (v98 < v99)
        {
          goto LABEL_16;
        }

        if (v98 == v99)
        {
          v100 = *(a2 + 11);
          v101 = *(v19 - 21);
          if (v100 < v101 || v100 == v101 && *(a2 + 12) < *(v19 - 20))
          {
            goto LABEL_16;
          }
        }
      }
    }
  }

  v102 = *(v19 + 16);
  if (v6 >= v102)
  {
    if (v6 != v102)
    {
      goto LABEL_16;
    }

    v103 = *(a2 + 8);
    v104 = *(v19 + 24);
    if (v103 >= v104)
    {
      if (v103 != v104 || (v105 = *(a2 + 9), v106 = *(v19 + 25), v105 >= v106) && (v105 != v106 || (v107 = *(a2 + 10), v108 = *(v19 + 26), v107 >= v108) && (v107 != v108 || (v109 = *(a2 + 11), v110 = *(v19 + 27), v109 >= v110) && (v109 != v110 || *(a2 + 12) >= *(v19 + 28)))))
      {
LABEL_16:
        if (v5 == v4)
        {
          v19 = *(result + 8);
        }

        else
        {
          v21 = *(a2 + 8);
          v22 = *(a2 + 9);
          v23 = *(a2 + 10);
          v24 = *(a2 + 11);
          v19 = *(result + 8);
          do
          {
            v25 = v17 >> 1;
            v26 = v19 + 48 * (v17 >> 1);
            v27 = *(v26 + 16);
            if (v6 >= v27 && (v6 != v27 || *(v26 + 24) <= v21 && (v21 != *(v26 + 24) || *(v26 + 25) <= v22 && (v22 != *(v26 + 25) || *(v26 + 26) <= v23 && (v23 != *(v26 + 26) || *(v26 + 27) <= v24 && (v24 != *(v26 + 27) || *(a2 + 12) >= *(v26 + 28)))))))
            {
              v19 = v26 + 48;
              v25 = v17 + ~v25;
            }

            v17 = v25;
          }

          while (v25);
        }

        *(result + 160) = 0xAAAAAAAAAAAAAAABLL * ((v19 - v4) >> 4);
      }
    }
  }

LABEL_46:
  if (v19 == v4)
  {
    v6 = *a2;
LABEL_51:
    v40 = *(v4 + 32);
    if (v40 >= v6)
    {
      if (v40 != v6)
      {
        goto LABEL_66;
      }

      v41 = *(v4 + 40);
      v42 = *(a2 + 8);
      if (v41 >= v42)
      {
        if (v41 != v42 || (v43 = *(v4 + 41), v44 = *(a2 + 9), v43 >= v44) && (v43 != v44 || (v45 = *(v4 + 42), v46 = *(a2 + 10), v45 >= v46) && (v45 != v46 || (v47 = *(v4 + 43), v48 = *(a2 + 11), v47 >= v48) && (v47 != v48 || *(v4 + 44) >= *(a2 + 12)))))
        {
LABEL_66:
          v49 = *(result + 32) + 48 * *(result + 56);
          v50 = *(v49 + 24);
          if (v6 < v50)
          {
            goto LABEL_67;
          }

          if (v6 != v50)
          {
            goto LABEL_78;
          }

          v51 = *(a2 + 8);
          v52 = *(v49 + 32);
          if (v51 < v52 || v51 == v52 && ((v53 = *(a2 + 9), v54 = *(v49 + 33), v53 < v54) || v53 == v54 && ((v55 = *(a2 + 10), v56 = *(v49 + 34), v55 < v56) || v55 == v56 && ((v57 = *(a2 + 11), v58 = *(v49 + 35), v57 < v58) || v57 == v58 && *(a2 + 12) < *(v49 + 36)))))
          {
LABEL_67:
            *a3 = 0;
            *(a3 + 24) = 0x8000000000000000;
            *(a3 + 8) = vnegq_f64(0);
          }

          else
          {
LABEL_78:
            v59 = *(a2 + 8);
            v61 = absl::lts_20240722::time_internal::cctz::detail::impl::n_sec(1970, 1, 1, 0, *v49 / 60, *v49 % 60);
            v63 = v62 >> 8;
            v64 = 60 * (24 * absl::lts_20240722::time_internal::cctz::detail::impl::day_difference(v6, v59, v59 >> 8, v61, v62, v62 >> 8) + ((v59 << 8) >> 24) - ((v62 << 8) >> 24)) + (v59 >> 24) - (v62 >> 24);
            result = std::chrono::system_clock::from_time_t(0).__d_.__rep_;
            *a3 = 0;
            v65 = result / 1000000 + ((v59 >> 8) >> 24) - (v63 >> 24) + 60 * v64;
            *(a3 + 16) = v65;
            *(a3 + 24) = v65;
            *(a3 + 8) = v65;
          }

          return result;
        }
      }
    }

    v39 = a3;
    v19 = v4;
    goto LABEL_53;
  }

  if (v19 != v5)
  {
    v37 = *(v19 + 32);
    v38 = *a2;
    if (v37 >= *a2)
    {
      if (v37 != *a2)
      {
        goto LABEL_96;
      }

      v78 = *(v19 + 40);
      v79 = *(a2 + 8);
      if (v78 >= v79)
      {
        if (v78 != v79 || (v80 = *(v19 + 41), v81 = *(a2 + 9), v80 >= v81) && (v80 != v81 || (v82 = *(v19 + 42), v83 = *(a2 + 10), v82 >= v83) && (v82 != v83 || (v84 = *(v19 + 43), v85 = *(a2 + 11), v84 >= v85) && (v84 != v85 || *(v19 + 44) >= *(a2 + 12)))))
        {
LABEL_96:
          v86 = *(v19 - 16);
          if (v86 < v38)
          {
            goto LABEL_97;
          }

          if (v86 == v38)
          {
            v126 = *(v19 - 8);
            v127 = *(a2 + 8);
            if (v126 < v127 || v126 == v127 && ((v128 = *(v19 - 7), v129 = *(a2 + 9), v128 < v129) || v128 == v129 && ((v130 = *(v19 - 6), v131 = *(a2 + 10), v130 < v131) || v130 == v131 && ((v132 = *(v19 - 5), v133 = *(a2 + 11), v132 < v133) || v132 == v133 && *(v19 - 4) < *(a2 + 12)))))
            {
LABEL_97:
              v87 = *(v19 - 48);
              v88 = *(a2 + 8);
              v89 = *(v19 - 24);
              v90 = v89 >> 8;
              v92 = 60 * (24 * absl::lts_20240722::time_internal::cctz::detail::impl::day_difference(v38, v88, v88 >> 8, *(v19 - 32), v89, v89 >> 8) + ((v88 << 8) >> 24) - ((v89 << 8) >> 24)) + (v88 >> 24) - (v89 >> 24);
              result = std::chrono::system_clock::from_time_t(0).__d_.__rep_;
              *a3 = 0;
              v93 = result / 1000000 + v87 + ((v88 >> 8) >> 24) - (v90 >> 24) + 60 * v92;
              *(a3 + 16) = v93;
              *(a3 + 24) = v93;
              *(a3 + 8) = v93;
              return result;
            }
          }

          v119 = a3;
          v120 = (v19 - 48);
          goto LABEL_145;
        }
      }
    }

    v39 = a3;
LABEL_53:
  }

  v66 = *(v19 - 16);
  v67 = *a2;
  if (v66 >= *a2)
  {
    if (v66 != *a2)
    {
      goto LABEL_130;
    }

    v111 = *(v19 - 8);
    v112 = *(a2 + 8);
    if (v111 >= v112)
    {
      if (v111 != v112 || (v113 = *(v19 - 7), v114 = *(a2 + 9), v113 >= v114) && (v113 != v114 || (v115 = *(v19 - 6), v116 = *(a2 + 10), v115 >= v116) && (v115 != v116 || (v117 = *(v19 - 5), v118 = *(a2 + 11), v117 >= v118) && (v117 != v118 || *(v19 - 4) >= *(a2 + 12)))))
      {
LABEL_130:
        v119 = a3;
        v120 = (v19 - 48);
LABEL_145:
      }
    }
  }

  if (*(result + 136) != 1 || (v69 = *(result + 144), v67 <= v69))
  {
    v121 = *(result + 32) + 48 * *(v19 - 40);
    v123 = *(v121 + 8);
    v122 = (v121 + 8);
    v124 = v123 == v67;
    if (v123 >= v67)
    {
      if (!v124)
      {
        goto LABEL_159;
      }

      v134 = v122[8];
      v135 = *(a2 + 8);
      if (v134 >= v135)
      {
        if (v134 != v135 || (v136 = v122[9], v137 = *(a2 + 9), v136 >= v137) && (v136 != v137 || (v138 = v122[10], v139 = *(a2 + 10), v138 >= v139) && (v138 != v139 || (v140 = v122[11], v141 = *(a2 + 11), v140 >= v141) && (v140 != v141 || v122[12] >= *(a2 + 12)))))
        {
LABEL_159:
          v142 = *(v19 - 48);
          v143 = *(a2 + 8);
          v144 = *(v19 - 24);
          v145 = v144 >> 8;
          v146 = 60 * (24 * absl::lts_20240722::time_internal::cctz::detail::impl::day_difference(*a2, v143, v143 >> 8, *(v19 - 32), v144, v144 >> 8) + ((v143 << 8) >> 24) - ((v144 << 8) >> 24)) + (v143 >> 24) - (v144 >> 24);
          result = std::chrono::system_clock::from_time_t(0).__d_.__rep_;
          *a3 = 0;
          v147 = result / 1000000 + v142 + ((v143 >> 8) >> 24) - (v145 >> 24) + 60 * v146;
          *(a3 + 16) = v147;
          *(a3 + 24) = v147;
          *(a3 + 8) = v147;
          return result;
        }
      }
    }

    *a3 = 0;
LABEL_133:
    *(a3 + 24) = 0x7FFFFFFFFFFFFFFFLL;
    v125.f64[0] = NAN;
    v125.f64[1] = NAN;
    *(a3 + 8) = vnegq_f64(v125);
    return result;
  }

  v70 = v67 + ~v69;
  v71 = v70 / 400 + 1;
  v72 = result;
  v148[0] = absl::lts_20240722::time_internal::cctz::detail::impl::n_sec(v67 - 400 * v71, *(a2 + 8), *(a2 + 9), *(a2 + 10), *(a2 + 11), *(a2 + 12));
  v148[1] = v73 & 0xFFFFFFFFFFLL;
  result = (*(*v72 + 24))(v72, v148);
  if (v70 >= 0x440D117690)
  {
    goto LABEL_133;
  }

  v74 = (0x2F0605980 * v71) ^ 0x7FFFFFFFFFFFFFFFLL;
  v75.f64[0] = NAN;
  v75.f64[1] = NAN;
  *(a3 + 8) = vbslq_s8(vcgtq_s64(*(a3 + 8), vdupq_n_s64(v74)), vnegq_f64(v75), vaddq_s64(*(a3 + 8), vdupq_n_s64(0x2F0605980 * v71)));
  v76 = *(a3 + 24);
  v77 = v76 + 0x2F0605980 * v71;
  if (v74 < v76)
  {
    v77 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a3 + 24) = v77;
  return result;
}

std::chrono::system_clock::time_point absl::lts_20240722::time_internal::cctz::anonymous namespace::MakeSkipped(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 1;
  v6 = *a2;
  v7 = a3[1];
  v8 = a2[5];
  v9 = 60 * (24 * absl::lts_20240722::time_internal::cctz::detail::impl::day_difference(*a3, v7, v7 >> 8, a2[4], v8, v8 >> 8) + ((v7 << 8) >> 24) - ((v8 << 8) >> 24)) + (v7 >> 24) - (v8 >> 24);
  *(a1 + 8) = v6 + std::chrono::system_clock::from_time_t(0).__d_.__rep_ / 1000000 + ((v7 >> 8) >> 24) - ((v8 >> 8) >> 24) + 60 * v9 - 1;
  v10 = *a2;
  *(a1 + 16) = std::chrono::system_clock::from_time_t(0).__d_.__rep_ / 1000000 + v10;
  v11 = *a2;
  v12 = a2[2];
  v13 = a2[3];
  v14 = *a3;
  v15 = a3[1];
  v16 = v15 >> 8;
  v17 = 60 * (24 * absl::lts_20240722::time_internal::cctz::detail::impl::day_difference(v12, v13, v13 >> 8, v14, v15, v15 >> 8) + ((v13 << 8) >> 24) - ((v15 << 8) >> 24)) + (v13 >> 24) - (v15 >> 24);
  result.__d_.__rep_ = std::chrono::system_clock::from_time_t(0).__d_.__rep_;
  *(a1 + 24) = result.__d_.__rep_ / 1000000 + v11 + (v16 >> 24) - ((v13 >> 8) >> 24) - 60 * v17;
  return result;
}

std::chrono::system_clock::time_point absl::lts_20240722::time_internal::cctz::anonymous namespace::MakeRepeated(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 2;
  v6 = *a2;
  v7 = a2[5];
  v8 = a3[1];
  v9 = ~(60 * (60 * (24 * absl::lts_20240722::time_internal::cctz::detail::impl::day_difference(a2[4], v7, v7 >> 8, *a3, v8, v8 >> 8) + ((v7 << 8) >> 24) - ((v8 << 8) >> 24)) + (v7 >> 24) - (v8 >> 24)) + ((v7 >> 8) >> 24) - ((v8 >> 8) >> 24));
  *(a1 + 8) = std::chrono::system_clock::from_time_t(0).__d_.__rep_ / 1000000 + v6 + v9;
  v10 = *a2;
  *(a1 + 16) = std::chrono::system_clock::from_time_t(0).__d_.__rep_ / 1000000 + v10;
  v11 = *a2;
  v12 = *a3;
  v13 = a3[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = v15 >> 8;
  v17 = 60 * (24 * absl::lts_20240722::time_internal::cctz::detail::impl::day_difference(v12, v13, v13 >> 8, v14, v15, v15 >> 8) + ((v13 << 8) >> 24) - ((v15 << 8) >> 24)) + (v13 >> 24) - (v15 >> 24);
  result.__d_.__rep_ = std::chrono::system_clock::from_time_t(0).__d_.__rep_;
  *(a1 + 24) = result.__d_.__rep_ / 1000000 + v11 + ((v13 >> 8) >> 24) - (v16 >> 24) + 60 * v17;
  return result;
}

void absl::lts_20240722::time_internal::cctz::TimeZoneInfo::Version(absl::lts_20240722::time_internal::cctz::TimeZoneInfo *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 111) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 11), *(this + 12));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 88);
    a2->__r_.__value_.__r.__words[2] = *(this + 13);
  }
}

uint64_t absl::lts_20240722::time_internal::cctz::TimeZoneInfo::Description(absl::lts_20240722::time_internal::cctz::TimeZoneInfo *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "#trans=", 7);
  MEMORY[0x23EED91A0](v2, 0xAAAAAAAAAAAAAAABLL * ((*(this + 2) - *(this + 1)) >> 4));
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, " #types=", 8);
  MEMORY[0x23EED91A0](v3, 0xAAAAAAAAAAAAAAABLL * ((*(this + 5) - *(this + 4)) >> 4));
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, " spec='", 7);
  v7 = *(this + 14);
  v6 = this + 112;
  v5 = v7;
  v8 = v6[23];
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = v6[23];
  }

  else
  {
    v10 = *(v6 + 1);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v9, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "'", 1);
  std::stringbuf::str();
  v13 = *MEMORY[0x277D82828];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x23EED93A0](&v17);
}

void sub_23C97C890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::time_internal::cctz::TimeZoneInfo::NextTransition(void *a1, void *a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 == v4)
  {
    return 0;
  }

  v8 = 48;
  if (*v3 >= 0xF800000000000001)
  {
    v8 = 0;
  }

  v9 = &v3[v8];
  v10.__d_.__rep_ = std::chrono::system_clock::from_time_t(0).__d_.__rep_;
  if (v4 == v9)
  {
    v13 = v9;
  }

  else
  {
    v11 = v10.__d_.__rep_ / -1000000 + *a2;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v9) >> 4);
    v13 = v9;
    do
    {
      v14 = v12 >> 1;
      v15 = &v13[48 * (v12 >> 1)];
      v17 = *v15;
      v16 = (v15 + 6);
      v12 += ~(v12 >> 1);
      if (v11 < v17)
      {
        v12 = v14;
      }

      else
      {
        v13 = v16;
      }
    }

    while (v12);
    for (; v13 != v4; v13 += 48)
    {
      v18 = v13 - 40;
      if (v13 == v9)
      {
        v18 = (a1 + 7);
      }

      v19 = *v18;
      if (v19 != v13[8])
      {
        v20 = a1[4];
        v21 = v20 + 48 * v19;
        v22 = v20 + 48 * v13[8];
        if (*v21 != *v22 || *(v21 + 40) != *(v22 + 40) || *(v21 + 41) != *(v22 + 41))
        {
          break;
        }
      }
    }
  }

  if (v13 == v4)
  {
    return 0;
  }

  *a3 = absl::lts_20240722::time_internal::cctz::detail::impl::n_sec(*(v13 + 4), *(v13 + 5), *(v13 + 5) >> 8, (*(v13 + 5) << 40) >> 56, *(v13 + 5) >> 24, ((*(v13 + 5) << 24) >> 56) + 1);
  *(a3 + 8) = v23 & 0xFFFFFFFFFFLL;
  *(a3 + 16) = *(v13 + 1);
  return 1;
}

uint64_t absl::lts_20240722::time_internal::cctz::TimeZoneInfo::PrevTransition(void *a1, void *a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 == v4)
  {
    return 0;
  }

  v8 = 48;
  if (*v3 >= 0xF800000000000001)
  {
    v8 = 0;
  }

  v9 = &v3[v8];
  v10 = std::chrono::system_clock::from_time_t(0).__d_.__rep_ / -1000000 + *a2;
  if (std::chrono::system_clock::from_time_t(0).__d_.__rep_ / 1000000 + v10 == *a2)
  {
    goto LABEL_9;
  }

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    ++v10;
LABEL_9:
    if (v4 == v9)
    {
      return 0;
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v9) >> 4);
    v4 = v9;
    do
    {
      v12 = v11 >> 1;
      v13 = &v4[48 * (v11 >> 1)];
      v15 = *v13;
      v14 = (v13 + 6);
      v11 += ~(v11 >> 1);
      if (v15 < v10)
      {
        v4 = v14;
      }

      else
      {
        v11 = v12;
      }
    }

    while (v11);
    if (v4 == v9)
    {
      return 0;
    }

    while (1)
    {
      v16 = v4 - 48;
      v17 = v4 - 88;
      if (v4 - 48 == v9)
      {
        v17 = (a1 + 7);
      }

      v18 = *v17;
      if (v18 != *(v4 - 40))
      {
        v19 = a1[4];
        v20 = v19 + 48 * v18;
        v21 = v19 + 48 * *(v4 - 40);
        if (*v20 != *v21 || *(v20 + 40) != *(v21 + 40) || *(v20 + 41) != *(v21 + 41))
        {
          break;
        }
      }

      v4 -= 48;
      if (v16 == v9)
      {
        return 0;
      }
    }

    if (v4 == v9)
    {
      return 0;
    }

LABEL_25:
    *a3 = absl::lts_20240722::time_internal::cctz::detail::impl::n_sec(*(v4 - 2), *(v4 - 1), *(v4 - 1) >> 8, (*(v4 - 1) << 40) >> 56, *(v4 - 1) >> 24, ((*(v4 - 1) << 24) >> 56) + 1);
    *(a3 + 8) = v22 & 0xFFFFFFFFFFLL;
    *(a3 + 16) = *(v4 - 2);
    return 1;
  }

  if (v4 != v9)
  {
    goto LABEL_25;
  }

  return 0;
}

void absl::lts_20240722::time_internal::cctz::TimeZoneInfo::~TimeZoneInfo(void **this)
{
  *this = &unk_284F390F0;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
    if ((*(this + 111) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 87) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(this + 111) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[11]);
  if ((*(this + 87) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = this[4];
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  operator delete(this[8]);
  v2 = this[4];
  if (v2)
  {
LABEL_5:
    this[5] = v2;
    operator delete(v2);
  }

LABEL_6:
  v3 = this[1];
  if (v3)
  {
    this[2] = v3;
    operator delete(v3);
  }

  ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(this);
}

{
  *this = &unk_284F390F0;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
    if ((*(this + 111) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 87) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(this + 111) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[11]);
  if ((*(this + 87) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = this[4];
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  operator delete(this[8]);
  v2 = this[4];
  if (!v2)
  {
LABEL_6:
    v3 = this[1];
    if (v3)
    {
      this[2] = v3;
      operator delete(v3);
    }

    ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(this);

    JUMPOUT(0x23EED9460);
  }

LABEL_5:
  this[5] = v2;
  operator delete(v2);
  goto LABEL_6;
}

uint64_t absl::lts_20240722::time_internal::cctz::detail::impl::day_difference(uint64_t this, int a2, int a3, uint64_t a4, int a5, int a6)
{
  v6 = a4 % 400;
  v7 = a4 % 400 - a4 + 400 * (this / 400);
  v8 = a2 < 3;
  v9 = this % 400 - v8;
  v10 = this % 400 - v8 + 65137;
  if (v9 >= 0)
  {
    LOWORD(v10) = v9;
  }

  v11 = (((5243 * v10) >> 21) + ((5243 * v10) >> 31));
  v12 = v9 - 400 * v11;
  if (a2 <= 2)
  {
    v13 = 9;
  }

  else
  {
    v13 = -3;
  }

  v14 = ((26215 * (153 * (v13 + a2) + 2)) >> 17) + ((26215 * (153 * (v13 + a2) + 2)) >> 31);
  v15 = v6 - (a5 < 3);
  v16 = v15 - 399;
  if (v15 >= 0)
  {
    v16 = v15;
  }

  v17 = ((5243 * v16) >> 21) + ((5243 * v16) >> 31);
  v18 = v15 - 400 * v17;
  if (a5 <= 2)
  {
    v19 = 9;
  }

  else
  {
    v19 = -3;
  }

  v20 = -26215 * (153 * (v19 + a5) + 2);
  v21 = a3 - a6 + v14 + ((v20 >> 17) + (v20 >> 31)) + (((v12 + ((v12 >> 29) & 3)) << 16) >> 18) + (((-5243 * v12) >> 19) + ((-5243 * v12) >> 31)) + 146097 * (v11 - v17) + 365 * (v12 - v18) + -((v18 + ((v18 >> 29) & 3)) >> 2) + (((5243 * v18) >> 19) + ((5243 * v18) >> 31));
  if (v7 >= 1 && v21 < 0)
  {
    v21 += 292194;
    v7 -= 800;
  }

  else if (v7 < 0 && v21 >= 1)
  {
    v21 -= 292194;
    v7 += 800;
  }

  return v21 + 146097 * (v7 / 400);
}

void std::vector<absl::lts_20240722::time_internal::cctz::TransitionType>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 48 * a2;
      do
      {
        *v3 = 0uLL;
        *(v3 + 16) = 0uLL;
        *(v3 + 32) = 0uLL;
        *(v3 + 8) = 1970;
        *(v3 + 16) = 257;
        *(v3 + 24) = 1970;
        *(v3 + 32) = 257;
        v3 += 48;
      }

      while (v3 != v9);
      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x555555555555555)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x2AAAAAAAAAAAAAALL)
    {
      v8 = 0x555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = 48 * v5;
    v11 = 48 * v5 + 48 * a2;
    v12 = 48 * v5;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 0uLL;
      *(v12 + 8) = 1970;
      *(v12 + 16) = 257;
      *(v12 + 24) = 1970;
      *(v12 + 32) = 257;
      v12 += 48;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v10 - v14;
    memcpy((v10 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

double std::__split_buffer<absl::lts_20240722::time_internal::cctz::Transition>::emplace_back<>(void *a1)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    v3 = a1[1];
    v4 = &v3[-*a1];
    if (v3 <= *a1)
    {
      v8 = 0x5555555555555556 * (&v2[-*a1] >> 4);
      if (v2 == *a1)
      {
        v8 = 1;
      }

      if (v8 < 0x555555555555556)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v5 = (0xAAAAAAAAAAAAAAABLL * (v4 >> 4) + 1) / -2;
    v6 = &v3[-48 * ((0xAAAAAAAAAAAAAAABLL * (v4 >> 4) + 1) / 2)];
    v7 = v2 - v3;
    if (v2 != v3)
    {
      memmove(&v3[-48 * ((0xAAAAAAAAAAAAAAABLL * (v4 >> 4) + 1) / 2)], v3, v2 - v3);
      v3 = a1[1];
    }

    v2 = &v6[v7];
    a1[1] = &v3[48 * v5];
    a1[2] = &v6[v7];
  }

  result = 0.0;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *v2 = 0u;
  *(v2 + 2) = 1970;
  *(v2 + 12) = 257;
  *(v2 + 4) = 1970;
  *(v2 + 20) = 257;
  a1[2] += 48;
  return result;
}

uint64_t absl::lts_20240722::time_internal::cctz::time_zone::lookup(uint64_t *a1)
{
  v1 = *a1;
  if (!v1)
  {
    v1 = absl::lts_20240722::time_internal::cctz::time_zone::Impl::UTC(0);
  }

  v2 = *(**(v1 + 24) + 16);

  return v2();
}

uint64_t absl::lts_20240722::debugging_internal::Utf8ForCodePoint::Utf8ForCodePoint(uint64_t this, unint64_t a2)
{
  *this = 0;
  if (a2 > 0x7F)
  {
    if (a2 > 0x7FF)
    {
      if (a2 >> 11 != 27)
      {
        if (a2 >> 16)
        {
          if (a2 >> 16 <= 0x10)
          {
            *(this + 4) = 4;
            *this = (a2 >> 18) | 0xF0;
            *(this + 1) = (a2 >> 12) & 0x3F | 0x80;
            *(this + 2) = (a2 >> 6) & 0x3F | 0x80;
            *(this + 3) = a2 & 0x3F | 0x80;
          }
        }

        else
        {
          *(this + 4) = 3;
          *this = (a2 >> 12) | 0xE0;
          *(this + 1) = (a2 >> 6) & 0x3F | 0x80;
          *(this + 2) = a2 & 0x3F | 0x80;
        }
      }
    }

    else
    {
      *(this + 4) = 2;
      *this = (a2 >> 6) | 0xC0;
      *(this + 1) = a2 & 0x3F | 0x80;
    }
  }

  else
  {
    *(this + 4) = 1;
    *this = a2;
  }

  return this;
}

uint64_t absl::lts_20240722::log_internal::RegisterAndInitialize(unint64_t a1)
{
  v2 = 0;
  v3 = atomic_load(qword_2810C1598);
  atomic_compare_exchange_strong((a1 + 16), &v2, v3);
  if (!v2)
  {
    v4 = v3;
    atomic_compare_exchange_strong(qword_2810C1598, &v4, a1);
    if (v4 != v3)
    {
      v5 = v4;
      do
      {
        atomic_store(v4, (a1 + 16));
        atomic_compare_exchange_strong(qword_2810C1598, &v5, a1);
        v6 = v5 == v4;
        v4 = v5;
      }

      while (!v6);
    }
  }

  v7 = *a1;
  v8 = strlen(*a1);
  LODWORD(result) = absl::lts_20240722::log_internal::VLogLevel(v7, v8);
  v10 = 0x7FFFFFFF;
  atomic_compare_exchange_strong((a1 + 8), &v10, result);
  if (v10 == 0x7FFFFFFF)
  {
    return result;
  }

  else
  {
    return v10;
  }
}

uint64_t absl::lts_20240722::log_internal::VLogLevel(char *a1, size_t a2)
{
  v2 = dword_2810C1584;
  if (dword_2810C1584 & 1) != 0 || (atomic_compare_exchange_strong_explicit(&dword_2810C1584, &v2, v2 | 1, memory_order_acquire, memory_order_acquire), (v2))
  {
    v6 = a1;
    v7 = a2;
    absl::lts_20240722::base_internal::SpinLock::SlowLock(&dword_2810C1584);
    a1 = v6;
    a2 = v7;
  }

  v4 = atomic_exchange_explicit(&dword_2810C1584, dword_2810C1584 & 2, memory_order_release);
  if (v4 >= 8)
  {
    absl::lts_20240722::base_internal::SpinLock::SlowUnlock(&dword_2810C1584, v4);
  }

  return v3;
}

void sub_23C97D5AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::base_internal::SpinLockHolder::~SpinLockHolder(va);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::log_internal::anonymous namespace::VLogLevel(char *__s, size_t a2, uint64_t *a3, uint64_t a4)
{
  if (a3)
  {
    v5 = *a3;
    v6 = a3[1];
    if (*a3 != v6)
    {
      v7 = a2;
      if (!a2)
      {
        v17 = 0;
        v16 = __s;
        goto LABEL_25;
      }

      v9 = 0;
      v10 = __s - 1;
      v11 = __s + 1;
      v12 = -1;
      while (a2 != v9)
      {
        v13 = v12;
        v14 = v10[a2];
        ++v12;
        --v11;
        --v10;
        ++v9;
        if (v14 == 47)
        {
          v15 = &v11[a2];
          if (a2 == v12)
          {
            v16 = __s;
          }

          else
          {
            v16 = v15;
          }

          if (a2 == v12)
          {
            v17 = a2;
          }

          else
          {
            v17 = v13 + 1;
          }

          if (!v17)
          {
            goto LABEL_25;
          }

          goto LABEL_17;
        }
      }

      v16 = __s;
      v17 = a2;
LABEL_17:
      v18 = memchr(v16, 46, v17);
      v19 = v18 - v16;
      if (v18)
      {
        v20 = v19 == -1;
      }

      else
      {
        v20 = 1;
      }

      v21 = v7 - v17 + v19;
      if (!v20)
      {
        v17 = v18 - v16;
        v7 = v21;
      }

      if (v17 >= 4 && *&v16[v17 - 4] == 1819175213)
      {
        v17 -= 4;
        v7 -= 4;
      }

      do
      {
LABEL_25:
        v22 = *(v5 + 23);
        if (*(v5 + 24) == 1)
        {
          if ((v22 & 0x80) != 0)
          {
            if (absl::lts_20240722::log_internal::FNMatch(*v5, *(v5 + 8), __s, v7))
            {
              goto LABEL_37;
            }
          }

          else if (absl::lts_20240722::log_internal::FNMatch(v5, v22, __s, v7))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if ((v22 & 0x80) != 0)
          {
            v23 = *v5;
            v22 = *(v5 + 8);
          }

          else
          {
            v23 = v5;
          }

          if (absl::lts_20240722::log_internal::FNMatch(v23, v22, v16, v17))
          {
LABEL_37:
            v24 = *(v5 + 28);
            if (v24 == -32768)
            {
              return a4;
            }

            else
            {
              return v24;
            }
          }
        }

        v5 += 32;
      }

      while (v5 != v6);
    }
  }

  return a4;
}

uint64_t std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v8 = 32 * v2;
  __p = 0;
  v17 = 32 * v2;
  v18 = 32 * v2;
  v19 = 0;
  v10 = (a2 + 24);
  v9 = *(a2 + 24);
  if (v9)
  {
    if (v9 == a2)
    {
      *(32 * v2 + 0x18) = 32 * v2;
      (*(*v9 + 24))(v9);
      v8 = v18;
      goto LABEL_16;
    }

    *(32 * v2 + 0x18) = v9;
  }

  else
  {
    v10 = (v8 + 24);
  }

  *v10 = 0;
LABEL_16:
  v18 = v8 + 32;
  std::vector<std::function<void ()(void)>>::__swap_out_circular_buffer(a1, &__p);
  v11 = a1[1];
  v12 = v17;
  while (1)
  {
    v13 = v18;
    if (v18 == v12)
    {
      break;
    }

    v18 -= 32;
    v14 = *(v13 - 8);
    if (v14 == v13 - 32)
    {
      (*(*v14 + 32))(v14);
    }

    else if (v14)
    {
      (*(*v14 + 40))(v14);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_23C97D900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::function<void ()(void)>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v6 = *result;
  v5 = result[1];
  v7 = v5 - *result;
  if (v5 == *result)
  {
    goto LABEL_15;
  }

  v8 = (v4 - 32 * ((v5 - *result) >> 5) + 24);
  v9 = *result;
  do
  {
    v11 = v9[3];
    v10 = v8;
    if (!v11)
    {
      goto LABEL_4;
    }

    if (v9 != v11)
    {
      *v8 = v11;
      v10 = v9 + 3;
LABEL_4:
      *v10 = 0;
      goto LABEL_5;
    }

    *v8 = (v8 - 3);
    (*(*v9[3] + 24))();
LABEL_5:
    v9 += 4;
    v8 += 4;
  }

  while (v9 != v5);
  v12 = v6;
  do
  {
    result = v6[3];
    if (v6 == result)
    {
      result = (*(*result + 32))(result);
    }

    else if (result)
    {
      result = (*(*result + 40))(result);
    }

    v6 += 4;
    v12 += 4;
  }

  while (v6 != v5);
LABEL_15:
  a2[1] = v4 - v7;
  v13 = *v3;
  *v3 = v4 - v7;
  v3[1] = v13;
  a2[1] = v13;
  v14 = v3[1];
  v3[1] = a2[2];
  a2[2] = v14;
  v15 = v3[2];
  v3[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    while (1)
    {
      *(a1 + 16) = i - 32;
      v4 = *(i - 8);
      if (v4 != i - 32)
      {
        break;
      }

      (*(*v4 + 32))(v4);
      i = *(a1 + 16);
      if (i == v3)
      {
        goto LABEL_8;
      }
    }

    if (v4)
    {
      (*(*v4 + 40))(v4);
    }
  }

LABEL_8:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void operations_research::sat::OrthogonalPackingInfeasibilityDetector::~OrthogonalPackingInfeasibilityDetector(operations_research::sat::OrthogonalPackingInfeasibilityDetector *this)
{
  if (dword_27E25CAE8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::OrthogonalPackingInfeasibilityDetector::~OrthogonalPackingInfeasibilityDetector()::$_0::operator() const(void)::site, dword_27E25CAE8))
  {
    operator new();
  }

  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

void operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetDffConflict(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  v17 = a13;
  v18 = a14;
  v19 = a12;
  v42[0] = a1;
  v42[1] = a2;
  v41[0] = a3;
  v41[1] = a4;
  v40[0] = a8;
  v40[1] = a9;
  v34[0] = v42;
  v34[1] = v41;
  v35 = a2;
  v36 = &a11;
  v37 = &a13;
  v38 = &a10;
  v39 = v40;
  *a7 = 2;
  *(a7 + 4) = 0u;
  *(a7 + 20) = 0u;
  *(a7 + 36) = 0;
  if (v19 > v17)
  {
    operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetDffConflict(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<int const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*)::$_0::operator()(&v31, v34);
    v20 = v33;
    v21 = *__p;
    *a7 = v31;
    *(a7 + 16) = v21;
    *(a7 + 32) = v20;
    *v18 = 0;
  }

  if (a6)
  {
    v22 = 0;
    v23 = 0;
    v24 = a6 - 1;
    do
    {
      v25 = a11 - *(v42[0] + 8 * *(a5 + 4 * v22)) + 1;
      if (a11 < 2 * v25)
      {
        break;
      }

      v26 = v23 + 1;
      LODWORD(v27) = *(a5 + 4 * v23);
      do
      {
        v23 = v26;
        v19 += *(v41[0] + 8 * v27) * (a10 - *(v40[0] + 8 * v27));
        v22 = v26;
        if (a6 <= v26)
        {
          break;
        }

        v28 = *(v42[0] + 8 * v27);
        v27 = *(a5 + 4 * v26++);
      }

      while (*(v42[0] + 8 * v27) == v28);
      if ((v24 & 0x80000000) == 0)
      {
        while (1)
        {
          v29 = *(a5 + 4 * v24);
          if (*(v42[0] + 8 * v29) >= v25)
          {
            break;
          }

          v19 -= *(v41[0] + 8 * v29) * *(v40[0] + 8 * v29);
          if (v24-- <= 0)
          {
            v24 = -1;
            break;
          }
        }
      }

      if (v19 > a13)
      {
        operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetDffConflict(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<int const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*)::$_0::operator()(&v31, v34);
        if (operations_research::sat::OrthogonalPackingResult::IsBetterThan(&v31, a7))
        {
          *a7 = v31;
          if (&v31 != a7)
          {
            std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__assign_with_size[abi:ne200100]<operations_research::sat::OrthogonalPackingResult::Item*,operations_research::sat::OrthogonalPackingResult::Item*>((a7 + 16), __p[0], __p[1], 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3));
          }

          *v18 = v25;
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }

    while (a6 > v22);
  }
}

void sub_23C97E384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v15 = *(v13 + 16);
  if (!v15)
  {
    _Unwind_Resume(exception_object);
  }

  *(v13 + 24) = v15;
  operator delete(v15);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetDffConflict(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<int const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetDffConflict(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<int const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*)::$_0::operator() const(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&)#1} &,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,false>(0, 0, 0, 1);
  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v3, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/2d_orthogonal_packing.cc", 223);
  absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v3, "build_result called with no conflict");
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v3);
}

void sub_23C97E6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v15 = *v13;
  if (*v13)
  {
    *(v12 + 24) = v15;
    operator delete(v15);
  }

  operator delete(v11);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::OrthogonalPackingResult::IsBetterThan(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 != 2 && *a2 == 2;
  if (v2 == 2 || v3 == 2)
  {
    return v4;
  }

  if (v3 == 1)
  {
    if (!v2)
    {
      operations_research::sat::OrthogonalPackingResult::IsBetterThan(v37);
    }

    return v2 == 1;
  }

  if (v2)
  {
    operations_research::sat::OrthogonalPackingResult::IsBetterThan(v37);
  }

  v7 = *(a2 + 2);
  v8 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 3) - v7) >> 3);
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3);
  if (v8 < v11)
  {
    return 0;
  }

  if (v8 > v11)
  {
    return 1;
  }

  if (v10 == v9)
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    v12 = v11 - 1;
    if (v11 > 1 && ((v13 = v12 > 0x7FFFFFFE, v14 = v12 >> 31, !v13) ? (v15 = v14 == 0) : (v15 = 0), v15))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v16 = v11 & 0xFFFFFFFE;
      v17 = v11 & 0xFFFFFFFE;
      v26 = (v9 + 32);
      v27 = (v7 + 32);
      v28 = v16;
      do
      {
        v29 = *(v26 - 3);
        v30 = *(v26 - 2);
        v31 = *v26;
        v32 = v26[1];
        v26 += 6;
        v22 += v30 * v29;
        v23 += v32 * v31;
        v33 = *(v27 - 3);
        v34 = *(v27 - 2);
        v35 = *v27;
        v36 = v27[1];
        v27 += 6;
        v24 += v34 * v33;
        v25 += v36 * v35;
        v28 -= 2;
      }

      while (v28);
      v18 = v23 + v22;
      v19 = v25 + v24;
      if (v11 == v16)
      {
        return v18 - *(a1 + 1) < v19 - *(a2 + 1);
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
    }

    v20 = v17 + 1;
    do
    {
      v21 = 24 * v16;
      v18 += *(v9 + v21 + 16) * *(v9 + v21 + 8);
      v19 += *(v7 + v21 + 16) * *(v7 + v21 + 8);
      v16 = v20++;
    }

    while (v11 > v16);
  }

  return v18 - *(a1 + 1) < v19 - *(a2 + 1);
}

void operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetAllCandidatesForKForDff2(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a3)
  {
    v13 = 0;
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = 2 * *(a2 + 8 * v13);
      if (v16 > a6)
      {
        v14 += 2 * *(a4 + 8 * v13);
      }

      else if (v16 == a6)
      {
        v14 += *(a4 + 8 * v13);
      }

      v13 = v15++;
    }

    while (a3 > v13);
  }

  else
  {
    v14 = 0;
  }

  v17 = v14 <= 2 * a8;
  v18 = a6 / 2 + 2;
  if (v18 <= 0)
  {
    v18 = 0;
  }

  *a9 = v18;
  v20 = (a9 + 1);
  v19 = a9[1];
  v21 = (v18 + 63) >> 6;
  v22 = a9[2] - v19;
  v23 = v22 >> 3;
  v53 = 0;
  if (v21 <= v22 >> 3)
  {
    if (v21 < v22 >> 3)
    {
      a9[2] = &v19[8 * v21];
    }
  }

  else
  {
    std::vector<unsigned long long>::__append((a9 + 1), v21 - (v22 >> 3), &v53);
    v19 = *v20;
  }

  if (v21 >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v21;
  }

  bzero(v19, 8 * v24);
  if (a7 > 1)
  {
    v25 = *v20;
    v26 = 3;
    if (a7 + 1 > 3)
    {
      v26 = a7 + 1;
    }

    v27 = 0x200000000;
    v28 = 2;
    do
    {
      *&v25[((v27 >> 32) >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28++;
      v27 += 0x100000000;
    }

    while (v26 != v28);
  }

  if (a7 >= 1)
  {
    v29 = (v17 + a6);
    v30 = *v20;
    if (a3)
    {
      v31 = 1;
      while (1)
      {
        v32 = 0x1000000000000uLL / v31 + 1;
        if (v31 >= 2)
        {
          *&v30[((v32 * v29) >> 51) & 0x1FF8] |= 1 << ((v32 * v29) >> 48);
        }

        v33 = 0;
        v34 = *v20;
        v35 = 1;
        do
        {
          v36 = *(a2 + 8 * v33);
          v37 = 2 * v36;
          if (v36 < a6 && v37 > a6)
          {
            LOWORD(v36) = a6 + 1 - v36;
LABEL_30:
            *&v34[((v36 * v32) >> 51) & 0x1FF8] |= 1 << ((v36 * v32) >> 48);
            goto LABEL_31;
          }

          if (v37 < a6)
          {
            goto LABEL_30;
          }

LABEL_31:
          v33 = v35++;
        }

        while (a3 > v33);
        if (++v31 > a7)
        {
          goto LABEL_43;
        }
      }
    }

    v39 = 1;
    do
    {
      if (v39 >= 2)
      {
        *&v30[((v29 + v29 * (0x1000000000000uLL / v39)) >> 51) & 0x1FF8] |= 1 << ((v29 + v29 * (0x1000000000000uLL / v39)) >> 48);
      }

      ++v39;
    }

    while (v39 <= a7);
  }

LABEL_43:
  v40 = a9[1];
  *v40 &= 0xFFFFFFFFFFFFFFFCLL;
  if ((a6 / 4 + 1) > 0)
  {
    v41 = a6 / 4 + 1;
  }

  else
  {
    v41 = 0;
  }

  if (v41 >= 1 && v41 < *a9)
  {
    v43 = v40 + ((((v41 & 0x7FFFFFFF) + 63) >> 3) & 0x1FFFFFF8);
    *(v43 - 1) &= ~(-2 << (v41 - 1));
  }

  *a9 = v41;
  v44 = (v41 + 63) >> 6;
  v53 = 0;
  v45 = (a9[2] - v40) >> 3;
  if (v44 <= v45)
  {
    if (v44 < v45)
    {
      a9[2] = &v40[v44];
    }
  }

  else
  {
    std::vector<unsigned long long>::__append((a9 + 1), v44 - v45, &v53);
    v41 = *a9;
  }

  v46 = a6 / 3 + 2;
  if (v46 <= 0)
  {
    v46 = 0;
  }

  v47 = v46 >= 1 && v46 < v41;
  v48 = *v20;
  if (v47)
  {
    v49 = *v20 + ((((v46 & 0x7FFFFFFF) + 63) >> 3) & 0x1FFFFFF8);
    *(v49 - 1) &= ~(-2 << (v46 - 1));
  }

  *a9 = v46;
  v50 = (v46 + 63) >> 6;
  v53 = 0;
  v51 = (a9[2] - v48) >> 3;
  if (v50 <= v51)
  {
    if (v50 < v51)
    {
      a9[2] = v48 + 8 * v50;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append((a9 + 1), v50 - v51, &v53);
  }

  v52 = *v20;
  *(*v20 + (((a6 / 4 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << ((a6 / 4) + 1);
  if (a6 > 3)
  {
    *&v52[((a6 / 3 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << ((a6 / 3) + 1);
  }
}

void operations_research::sat::OrthogonalPackingInfeasibilityDetector::CheckFeasibilityWithDualFunction2(uint64_t this@<X7>, uint64_t a2@<X0>, void *a3@<X1>, unint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, unint64_t a8@<X6>, uint64_t a9@<X8>, uint64_t a10, int a11)
{
  v119 = this;
  if (this == 1)
  {
    *a9 = 2;
    *(a9 + 4) = 0u;
    *(a9 + 20) = 0u;
    *(a9 + 36) = 0;
    return;
  }

  v12 = this;
  v13 = a4;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  if (this >= 0xFFFF)
  {
    v16 = 49 - __clz(this + 1);
    v17 = this >> v16;
    if (a4)
    {
      std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(&v116, a4);
      v18 = 0;
      v19 = 1;
      v20 = v116;
      do
      {
        v21 = a3[v18];
        v22 = 2 * v21;
        v23 = 2 * (v21 >> v16);
        if (2 * v21 == v12)
        {
          v23 = v17;
        }

        v24 = 2 * (v17 - ((v12 - v21) >> v16));
        if (v22 <= v12)
        {
          v24 = v23;
        }

        v20[v18] = v24;
        v18 = v19++;
      }

      while (v13 > v18);
    }

    v12 = 2 * v17;
    v119 = 2 * v17;
    if ((2 * v17) >= 0xFFFF)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,long long>(&v119, 0xFFFFLL, "x_bb_size < std::numeric_limits<uint16_t>::max()");
    }

    a3 = v116;
    v13 = (v117 - v116) >> 3;
  }

  v105 = a9;
  v114 = 0u;
  v115 = 0u;
  v25 = operations_research::sat::FloorSquareRoot(v12);
  v26 = v12 / 4 + 1;
  if (v25 * v13 >= v26)
  {
    v27 = v12 / 4 + 1;
  }

  else
  {
    v27 = v25 * v13;
  }

  v109 = a3;
  if (v27 <= 5 * a11)
  {
    operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetAllCandidatesForKForDff2(v25, a3, v13, a5, a6, v12, v25, a10, &v114);
    if (v27 <= a11)
    {
      goto LABEL_77;
    }

    v31 = (v115 - *(&v114 + 1)) >> 3;
    if (v115 == *(&v114 + 1))
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      if (!v31)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v32 = **(&v114 + 1);
      if (**(&v114 + 1))
      {
        v33 = 0;
      }

      else
      {
        if (v31 == 1)
        {
LABEL_62:
          v36 = 0;
          goto LABEL_63;
        }

        v54 = 1;
        v33 = 64;
        while (1)
        {
          v32 = *(*(&v114 + 1) + 8 * v54);
          if (v32)
          {
            break;
          }

          ++v54;
          v33 += 64;
          if (v31 == v54)
          {
            goto LABEL_62;
          }
        }
      }

      v34 = v33 | __clz(__rbit64(v32));
      v35 = (v32 - 1) & v32;
      v36 = 0;
      if (!v31)
      {
LABEL_63:
        if (v36 <= a11)
        {
          goto LABEL_77;
        }

        if (a11)
        {
          operator new();
        }

        if (*(&v114 + 1) != v115)
        {
          v55 = **(&v114 + 1);
          if (**(&v114 + 1))
          {
            v56 = 0;
LABEL_69:
            v57 = v56 | __clz(__rbit64(v55));
            v58 = ((v55 - 1) & v55);
LABEL_76:
            v120[1] = 0;
            v120[2] = 0;
            *&v111 = *(&v114 + 1);
            *(&v111 + 1) = __PAIR64__(v57, v31);
            __p = v58;
            v120[0] = *(&v114 + 1);
            std::__sample[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::Bitset64<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::Iterator,operations_research::Bitset64<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::Iterator,std::__wrap_iter<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*>,long,absl::lts_20240722::BitGenRef>(&v111, v120, 0, a11, (a2 + 176));
            bzero(*(&v114 + 1), v115 - *(&v114 + 1));
            goto LABEL_77;
          }

          if (v31 != 1)
          {
            v59 = 1;
            v56 = 64;
            do
            {
              v55 = *(*(&v114 + 1) + 8 * v59);
              if (v55)
              {
                goto LABEL_69;
              }

              ++v59;
              v56 += 64;
            }

            while (v31 != v59);
          }

          LODWORD(v31) = 0;
        }

        v57 = 0;
        v58 = 0;
        goto LABEL_76;
      }
    }

    while (1)
    {
      ++v36;
      v53 = v34 >> 6;
      if (!v35)
      {
        break;
      }

LABEL_53:
      v34 = __clz(__rbit64(v35)) | (v53 << 6);
      v35 &= v35 - 1;
    }

    while (v31 - 1 != v53)
    {
      v35 = *(*(&v114 + 1) + 8 * ++v53);
      if (v35)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_63;
  }

  if (v26 <= 0)
  {
    v26 = 0;
  }

  v28 = v26 & 0x7FFFFFFF;
  if ((v26 & 0x7FFFFFFF) != 0 && v26 < v114)
  {
    v29 = *(&v114 + 1);
    v30 = *(&v114 + 1) + (((v28 + 63) >> 3) & 0x1FFFFFF8);
    *(v30 - 8) &= ~(-2 << (v26 - 1));
  }

  else
  {
    v29 = *(&v114 + 1);
  }

  *&v114 = v26;
  v37 = (v28 + 63) >> 6;
  *&v111 = 0;
  v38 = (v115 - v29) >> 3;
  if (v37 <= v38)
  {
    if (v37 < v38)
    {
      *&v115 = v29 + 8 * v37;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(&v114 + 8, v37 - v38, &v111);
  }

  if (a11 >= 1)
  {
    v39 = 0;
    do
    {
      if (v12 >= 8)
      {
        *&v111 = 1;
        *(&v111 + 1) = v12 >> 2;
        v120[0] = 0;
        v41 = *(a2 + 184);
        v42 = v12 >> 2;
        v43 = 1;
        if (v41 == absl::lts_20240722::BitGenRef::NotAMock)
        {
          goto LABEL_42;
        }

        if (!(v41)(*(a2 + 176), &absl::lts_20240722::base_internal::FastTypeTag<long long ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<long long>,std::tuple<long long,long long>)>::dummy_var, &v111, v120))
        {
          v42 = *(&v111 + 1);
          v43 = v111;
LABEL_42:
          v44 = (*(a2 + 192))(*(a2 + 176));
          v45 = v42 - v43 - (v42 != 0x8000000000000000);
          v46 = v45 + 1;
          if (((v45 + 1) & v45) != 0)
          {
            v47 = (v46 * v44) >> 64;
            if (v46 > v46 * v44)
            {
              v48 = ~v45 % v46;
              if (v48 > v46 * v44)
              {
                do
                {
                  v49 = (*(a2 + 192))(*(a2 + 176));
                }

                while (v48 > v49 * v46);
                v47 = (v49 * v46) >> 64;
              }
            }
          }

          else
          {
            LODWORD(v47) = v44 & v45;
          }

          v40 = v47 + v43;
          goto LABEL_49;
        }

        v40 = v120[0];
      }

      else
      {
        v40 = 1;
      }

LABEL_49:
      v50 = v40 >> 6;
      v51 = *(*(&v114 + 1) + 8 * v50);
      v52 = 1 << v40;
      if ((v51 & v52) == 0)
      {
        *(*(&v114 + 1) + 8 * v50) = v51 | v52;
        ++v39;
      }
    }

    while (v39 < a11);
  }

LABEL_77:
  *a9 = 2;
  *(a9 + 4) = 0u;
  *(a9 + 20) = 0u;
  *(a9 + 36) = 0;
  if (v13 << 32)
  {
    if (!(v13 >> 61))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v64 = 0;
  v65 = *(&v114 + 1);
  v66 = (v115 - *(&v114 + 1)) >> 3;
  if (v115 == *(&v114 + 1))
  {
    v62 = 0;
    v63 = 0;
    if (!v66)
    {
      goto LABEL_152;
    }

LABEL_86:
    v67 = v66 - 1;
    while (1)
    {
      v68 = v62;
      v69 = 0x1000000000000uLL / v62 + 1;
      v70 = (v69 * v12) >> 48;
      if (v13 < 1)
      {
        v71 = 0;
      }

      else
      {
        v71 = 0;
        v72 = v13 & 0x7FFFFFFF;
        v73 = v109;
        v74 = a5;
        v75 = v64;
        do
        {
          v79 = *v73++;
          v78 = v79;
          v80 = 2 * v79 == v12;
          if (2 * v79 > v12)
          {
            v76 = 2 * (v70 - (((v12 - v78) * v69) >> 48));
          }

          else
          {
            v76 = (v69 * v12) >> 48;
            if (!v80)
            {
              v76 = ((v78 * v69) >> 47) & 0x1FFFE;
            }
          }

          *v75++ = v76;
          v77 = *v74++;
          v71 += v77 * v76;
          --v72;
        }

        while (v72);
      }

      if (2 * v12 <= v12)
      {
        v81 = (v69 * v12) >> 48;
        v82 = a10;
        if (v12)
        {
          v81 = ((v69 * v12) >> 47) & 0x1FFFE;
        }
      }

      else
      {
        v81 = 2 * v70;
        v82 = a10;
      }

      v120[0] = 0;
      v83 = v64;
      operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetDffConflict(v109, v13, a5, a6, a7, a8, &v111, v64, 0, v81, v12, v71, v81 * v82, v120);
      if (!v111)
      {
        *&v111 = 0x400000000;
        v84 = v120[0];
        v85 = __p;
        v86 = v113;
        if (__p != v113)
        {
          v87 = v12 - v120[0];
          while (1)
          {
            v92 = *v85;
            v93 = *(v109 + 8 * v92);
            v94 = v84 <= v93 ? *(v109 + 8 * v92) : 0;
            v95 = v87 >= v93 ? v94 : v12;
            if (2 * v95 <= v12)
            {
              v96 = (v69 * v12) >> 48;
              if (2 * v95 != v12)
              {
                v96 = ((v95 * v69) >> 47) & 0x1FFFE;
              }
            }

            else
            {
              v96 = 2 * (v70 - (((v12 - v95) * v69) >> 48));
            }

            if (v70 < v96 || (v12 & 1) != 0)
            {
              break;
            }

            v97 = v96 & 1;
            v98 = v12 >> 1;
            if (v70 != v96)
            {
              goto LABEL_132;
            }

            v90 = v12 >> 1;
            if ((v96 & 1) == 0)
            {
              goto LABEL_132;
            }

LABEL_108:
            if (v84 <= v90)
            {
              v91 = v90;
            }

            else
            {
              v91 = v84;
            }

            if (!v90)
            {
              v91 = 0;
            }

            if (v87 < v90)
            {
              v91 = v12 - v84 + 1;
            }

            *(v85 + 1) = v91;
            *(v85 + 2) = *(a5 + 8 * v92);
            v85 += 6;
            if (v85 == v86)
            {
              goto LABEL_139;
            }
          }

          v97 = v96 & 1;
          v98 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_132:
          v99 = v97 + v96;
          v100 = v12 - (v70 - ((v99 + (v99 >> 63)) >> 1)) * v68;
          if (v12 < 2 * v100)
          {
            v101 = v100 - v68;
            v102 = v12 / 2 + 1 <= v101 + 1 ? v101 + 1 : v12 / 2 + 1;
            if (v102 < v98)
            {
              v98 = v102;
            }
          }

          v88 = v99 * v68 / 2;
          v89 = (v99 * v68 + ((v99 * v68) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
          if (v88 >= v98)
          {
            v88 = v98;
          }

          if (v89 >= v12)
          {
            v90 = v98;
          }

          else
          {
            v90 = v88;
          }

          goto LABEL_108;
        }

LABEL_139:
        if (operations_research::sat::OrthogonalPackingResult::IsBetterThan(&v111, v105))
        {
          *v105 = v111;
          if (&v111 != v105)
          {
            std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__assign_with_size[abi:ne200100]<operations_research::sat::OrthogonalPackingResult::Item*,operations_research::sat::OrthogonalPackingResult::Item*>((v105 + 16), __p, v113, 0xAAAAAAAAAAAAAAABLL * ((v113 - __p) >> 3));
          }
        }
      }

      if (__p)
      {
        v113 = __p;
        operator delete(__p);
      }

      v103 = v68 >> 6;
      v64 = v83;
      if (!v63)
      {
        while (v67 != v103)
        {
          v63 = *(v65 + 8 * ++v103);
          if (v63)
          {
            goto LABEL_87;
          }
        }

        goto LABEL_152;
      }

LABEL_87:
      v62 = __clz(__rbit64(v63)) | (v103 << 6);
      v63 &= v63 - 1;
    }
  }

  v60 = **(&v114 + 1);
  if (**(&v114 + 1))
  {
    v61 = 0;
  }

  else
  {
    if (v66 == 1)
    {
      goto LABEL_152;
    }

    v104 = 1;
    v61 = 64;
    while (1)
    {
      v60 = *(*(&v114 + 1) + 8 * v104);
      if (v60)
      {
        break;
      }

      ++v104;
      v61 += 64;
      if (v66 == v104)
      {
        goto LABEL_152;
      }
    }
  }

  v62 = v61 | __clz(__rbit64(v60));
  v63 = (v60 - 1) & v60;
  if (v66)
  {
    goto LABEL_86;
  }

LABEL_152:
  if (*(&v114 + 1))
  {
    *&v115 = *(&v114 + 1);
    operator delete(*(&v114 + 1));
  }

  if (v116)
  {
    v117 = v116;
    operator delete(v116);
  }
}

void sub_23C97F6DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  v33 = *(v31 - 168);
  if (v33)
  {
    *(v31 - 160) = v33;
    operator delete(v33);
    v34 = *(v31 - 144);
    if (!v34)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v34 = *(v31 - 144);
    if (!v34)
    {
      goto LABEL_3;
    }
  }

  *(v31 - 136) = v34;
  operator delete(v34);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::OrthogonalPackingInfeasibilityDetector::RelaxConflictWithBruteForce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = (*(a2 + 24) - *(a2 + 16)) >> 3;
  if (-1431655765 * v5 <= 2 * a5)
  {
    if (0xAAAAAAAB00000000 * v5)
    {
      if (((-1431655765 * v5) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return 0;
}

void sub_23C97FD48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = *(v19 - 104);
  if (v21)
  {
    operator delete(v21);
    if (!v18)
    {
LABEL_3:
      if (!v17)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!v18)
  {
    goto LABEL_3;
  }

  operator delete(v18);
  if (!v17)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v17);
  _Unwind_Resume(exception_object);
}

void std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
  if (v9 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
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

  v12 = 8 * (v8 >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = v12 + 24;
  v13 = v12 - v8;
  memcpy((v12 - v8), v7, v8);
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

void operations_research::sat::OrthogonalPackingInfeasibilityDetector::TestFeasibilityImpl(std::vector<int> *this@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v93 = *MEMORY[0x277D85DE8];
  v87 = a2;
  v88 = a3;
  v85 = a4;
  v86 = a5;
  v16 = a3;
  v17 = this->__end_ - this->__begin_;
  if (a3 <= v17)
  {
    if (a3 < v17)
    {
      this->__end_ = &this->__begin_[a3];
    }
  }

  else
  {
    std::vector<int>::__append(this, a3 - v17);
  }

  begin = this[1].__begin_;
  v19 = this[1].__end_ - begin;
  if (v16 <= v19)
  {
    if (v16 < v19)
    {
      this[1].__end_ = &begin[v16];
    }
  }

  else
  {
    std::vector<int>::__append(this + 1, v16 - v19);
  }

  if (v16 < 1)
  {
    goto LABEL_18;
  }

  v20 = 0;
  v21 = 0;
  v79 = a7 * a6;
  v22 = this->__begin_;
  v23 = this[1].__begin_;
  do
  {
    v24 = a2[v20];
    v25 = a4[v20];
    v22[v20] = v20;
    v23[v20] = v20;
    if (v24 > a6 || v25 > a7)
    {
      *a9 = 0u;
      *(a9 + 32) = 0;
      *(a9 + 16) = 0u;
      *(a9 + 4) = 1;
      LODWORD(v89) = v20;
      *(&v89 + 1) = v24;
      v90 = v25;
      std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__assign_with_size[abi:ne200100]<operations_research::sat::OrthogonalPackingResult::Item const*,operations_research::sat::OrthogonalPackingResult::Item const*>((a9 + 16), &v89, &v91, 1uLL);
      goto LABEL_19;
    }

    v21 += v25 * v24;
    ++v20;
  }

  while ((a3 & 0x7FFFFFFF) != v20);
  if (v16 == 1)
  {
    goto LABEL_18;
  }

  v28 = this->__begin_;
  end = this->__end_;
  v30 = 126 - 2 * __clz(end - this->__begin_);
  v31 = end == this->__begin_;
  *&v89 = &v87;
  *(&v89 + 1) = &v85;
  v32 = v31 ? 0 : v30;
  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::TestFeasibilityImpl(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::OrthogonalPackingOptions const&)::$_1 &,int *,false>(v28, end, &v89, v32, 1);
  v33 = this[1].__begin_;
  v34 = this[1].__end_;
  v35 = 126 - 2 * __clz(v34 - v33);
  *&v89 = &v85;
  *(&v89 + 1) = &v87;
  v36 = v34 == v33 ? 0 : v35;
  HeuristicSchedulingSolution = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::TestFeasibilityImpl(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::OrthogonalPackingOptions const&)::$_1 &,int *,false>(v33, v34, &v89, v36, 1);
  if (*a8 == 1)
  {
    v38 = this->__end_;
    v39 = v38 - this->__begin_;
    if (v38 != this->__begin_)
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = v39 >> 2;
      v44 = this[1].__begin_;
      while (1)
      {
        HeuristicSchedulingSolution = v42;
        if (this[1].__end_ - v44 <= v42)
        {
          break;
        }

        v45 = this->__begin_[v40];
        v46 = v44[v42];
        HeuristicSchedulingSolution = v87[v45];
        if (v45 == v46)
        {
          if (HeuristicSchedulingSolution <= v85[v45])
          {
            ++v41;
          }

          else
          {
            ++v42;
          }

          v40 = v41;
          if (v43 <= v41)
          {
            break;
          }
        }

        else
        {
          HeuristicSchedulingSolution += v87[v46];
          if (HeuristicSchedulingSolution > a6 && v85[v46] + v85[v45] > a7)
          {
            *a9 = 0u;
            *(a9 + 32) = 0;
            *(a9 + 16) = 0u;
            *(a9 + 4) = 2;
            LODWORD(v89) = v45;
            *(&v89 + 1) = a2[v45];
            v90 = a4[v45];
            LODWORD(v91) = v46;
            *(&v91 + 1) = a2[v46];
            v92 = a4[v46];
            std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__assign_with_size[abi:ne200100]<operations_research::sat::OrthogonalPackingResult::Item const*,operations_research::sat::OrthogonalPackingResult::Item const*>((a9 + 16), &v89, &v93, 2uLL);
            goto LABEL_19;
          }

          if (HeuristicSchedulingSolution > a6)
          {
            ++v41;
          }

          else
          {
            ++v42;
          }

          v40 = v41;
          if (v43 <= v41)
          {
            break;
          }
        }
      }
    }

    if (v16 == 2)
    {
LABEL_18:
      *a9 = 1;
      *(a9 + 4) = 0u;
      *(a9 + 20) = 0u;
      *(a9 + 36) = 0;
      goto LABEL_19;
    }
  }

  *a9 = 2;
  *(a9 + 4) = 0u;
  *(a9 + 20) = 0u;
  *(a9 + 36) = 0;
  v78 = a9;
  if (v21 > v79)
  {
    *a9 = 0x100000000;
    if (a3 << 32)
    {
      if (!(v16 >> 60))
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v48 = *v85 * *v87;
    operator new();
  }

  v49 = *(a9 + 16);
  v50 = *(a9 + 24);
  v51 = (a9 + 16);
  v52 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v49) >> 3);
  if (*a8)
  {
    v53 = 3;
  }

  else
  {
    v53 = 2;
  }

  if (v52 != v53)
  {
    if (*(a8 + 1) == 1)
    {
      operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetDffConflict(v87, v88, v85, v86, this->__begin_, this->__end_ - this->__begin_, &v89, v87, v88, a6, a6, v21, v79, &v84);
      if (operations_research::sat::OrthogonalPackingResult::IsBetterThan(&v89, v78))
      {
        *v78 = v89;
        if (&v89 != v78)
        {
          std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__assign_with_size[abi:ne200100]<operations_research::sat::OrthogonalPackingResult::Item*,operations_research::sat::OrthogonalPackingResult::Item*>(v51, v90, v91, 0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 3));
        }
      }

      operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetDffConflict(v85, v86, v87, v88, this[1].__begin_, this[1].__end_ - this[1].__begin_, &v81, v85, v86, a7, a7, v21, v79, &v84);
      v89 = v81;
      if (v90)
      {
        *&v91 = v90;
        operator delete(v90);
      }

      v54 = v82;
      v90 = v82;
      v91 = v83;
      v55 = v83;
      if (v82 != v83)
      {
        if ((v83 - 24) == v82)
        {
          goto LABEL_124;
        }

        v58 = (0xAAAAAAAAAAAAAABLL * (v83 - 24 - v82)) >> 3;
        v59 = !is_mul_ok(v58, 0x18uLL);
        if ((&v82[1] + 24 * v58) < &v82[1])
        {
          goto LABEL_124;
        }

        if (&v82->u64[3 * v58 + 1] < &v82->u64[1])
        {
          goto LABEL_124;
        }

        if (v59)
        {
          goto LABEL_124;
        }

        v60 = v58 + 1;
        v61 = (v82 + 24 * (v60 & 0x3FFFFFFFFFFFFFFELL));
        v62 = v82 + 2;
        v63 = v60 & 0x3FFFFFFFFFFFFFFELL;
        do
        {
          *(v62 - 24) = vextq_s8(*(v62 - 24), *(v62 - 24), 8uLL);
          *v62 = vextq_s8(*v62, *v62, 8uLL);
          v62 += 3;
          v63 -= 2;
        }

        while (v63);
        v54 = v61;
        if (v60 != (v60 & 0x3FFFFFFFFFFFFFFELL))
        {
LABEL_124:
          do
          {
            *(v54 + 8) = vextq_s8(*(v54 + 8), *(v54 + 8), 8uLL);
            v54 = (v54 + 24);
          }

          while (v54 != v55);
        }
      }

      if (operations_research::sat::OrthogonalPackingResult::IsBetterThan(&v89, v78))
      {
        *v78 = v89;
        if (&v89 != v78)
        {
          std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__assign_with_size[abi:ne200100]<operations_research::sat::OrthogonalPackingResult::Item*,operations_research::sat::OrthogonalPackingResult::Item*>(v51, v90, v91, 0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 3));
        }
      }

      HeuristicSchedulingSolution = v90;
      if (v90)
      {
        *&v91 = v90;
        operator delete(v90);
      }

      v52 = 0xAAAAAAAAAAAAAAABLL * ((*(v78 + 24) - *(v78 + 16)) >> 3);
    }

    if (v52 != v53)
    {
      if (*(a8 + 2) == 1)
      {
        {
          ++this[6].__begin_;
          v56 = *v78;
          if (!*v78)
          {
            v57 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v89, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/2d_orthogonal_packing.cc", 768);
            absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v57);
          }

          goto LABEL_100;
        }

        if (*(a8 + 2))
        {
          operations_research::sat::OrthogonalPackingInfeasibilityDetector::CheckFeasibilityWithDualFunction2(a6, this, v87, v88, v85, v86, this->__begin_, this->__end_ - this->__begin_, &v89, a7, *(a8 + 8));
          if (operations_research::sat::OrthogonalPackingResult::IsBetterThan(&v89, v78))
          {
            *v78 = v89;
            if (&v89 != v78)
            {
              std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__assign_with_size[abi:ne200100]<operations_research::sat::OrthogonalPackingResult::Item*,operations_research::sat::OrthogonalPackingResult::Item*>(v51, v90, v91, 0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 3));
            }
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*(v78 + 24) - *(v78 + 16)) >> 3) == v53)
          {
            if (v90)
            {
              *&v91 = v90;
              operator delete(v90);
            }

            goto LABEL_19;
          }

          operations_research::sat::OrthogonalPackingInfeasibilityDetector::CheckFeasibilityWithDualFunction2(a7, this, v85, v86, v87, v88, this[1].__begin_, this[1].__end_ - this[1].__begin_, &v81, a6, *(a8 + 8));
          v89 = v81;
          if (v90)
          {
            *&v91 = v90;
            operator delete(v90);
          }

          v64 = v82;
          v90 = v82;
          v91 = v83;
          v65 = v83;
          if (v82 != v83)
          {
            if ((v83 - 24) == v82)
            {
              goto LABEL_125;
            }

            v72 = (0xAAAAAAAAAAAAAABLL * (v83 - 24 - v82)) >> 3;
            v73 = !is_mul_ok(v72, 0x18uLL);
            if ((&v82[1] + 24 * v72) < &v82[1])
            {
              goto LABEL_125;
            }

            if (&v82->u64[3 * v72 + 1] < &v82->u64[1])
            {
              goto LABEL_125;
            }

            if (v73)
            {
              goto LABEL_125;
            }

            v74 = v72 + 1;
            v75 = (v82 + 24 * (v74 & 0x3FFFFFFFFFFFFFFELL));
            v76 = v82 + 2;
            v77 = v74 & 0x3FFFFFFFFFFFFFFELL;
            do
            {
              *(v76 - 24) = vextq_s8(*(v76 - 24), *(v76 - 24), 8uLL);
              *v76 = vextq_s8(*v76, *v76, 8uLL);
              v76 += 3;
              v77 -= 2;
            }

            while (v77);
            v64 = v75;
            if (v74 != (v74 & 0x3FFFFFFFFFFFFFFELL))
            {
LABEL_125:
              do
              {
                *(v64 + 8) = vextq_s8(*(v64 + 8), *(v64 + 8), 8uLL);
                v64 = (v64 + 24);
              }

              while (v64 != v65);
            }
          }

          if (operations_research::sat::OrthogonalPackingResult::IsBetterThan(&v89, v78))
          {
            *v78 = v89;
            if (&v89 != v78)
            {
              std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__assign_with_size[abi:ne200100]<operations_research::sat::OrthogonalPackingResult::Item*,operations_research::sat::OrthogonalPackingResult::Item*>(v51, v90, v91, 0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 3));
            }
          }

          HeuristicSchedulingSolution = v90;
          if (v90)
          {
            *&v91 = v90;
            operator delete(v90);
          }
        }
      }

      v56 = *v78;
LABEL_100:
      if (v56 == 2)
      {
        operations_research::sat::BruteForceOrthogonalPacking(v87, v88, v85, a6, a7, *(a8 + 4), &v89);
        v66 = v89;
        v67 = this[6].__end_;
        if (v89 != 2)
        {
          v67 = (v67 + 1);
        }

        this[6].__end_ = v67;
        if (v66)
        {
          if (v66 == 1)
          {
            *v78 = 0x500000000;
            std::vector<operations_research::sat::OrthogonalPackingResult::Item>::resize(v51, v16);
            v68 = 0;
            v69 = *v51 + 16;
            do
            {
              v70 = a2[v68];
              v71 = a4[v68];
              *(v69 - 4) = v68;
              *(v69 - 1) = v70;
              *v69 = v71;
              ++v68;
              v69 += 3;
            }

            while ((a3 & 0x7FFFFFFF) != v68);
          }
        }

        else
        {
          *v78 = 1;
        }

        HeuristicSchedulingSolution = *(&v89 + 1);
        if (*(&v89 + 1))
        {
          v90 = *(&v89 + 1);
          operator delete(*(&v89 + 1));
        }

        v56 = *v78;
      }

      if (!v56)
      {
        this[7].__begin_ = (this[7].__begin_ + operations_research::sat::OrthogonalPackingInfeasibilityDetector::RelaxConflictWithBruteForce(HeuristicSchedulingSolution, v78, a6, a7, *(a8 + 4)));
      }
    }
  }

LABEL_19:
  v27 = *MEMORY[0x277D85DE8];
}

void sub_23C980B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p)
{
  v26 = *(v24 - 128);
  if (v26)
  {
    *(v24 - 120) = v26;
    operator delete(v26);
  }

  v27 = *(a20 + 16);
  if (v27)
  {
    *(a20 + 24) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<operations_research::sat::OrthogonalPackingResult::Item>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

BOOL operations_research::sat::anonymous namespace::FindHeuristicSchedulingSolution(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = 0x8000000000000002;
  v13 = *a9;
  *(a9 + 8) = *a9;
  v14 = *(a9 + 16);
  if (v13 >= v14)
  {
    v16 = v14 - v13;
    v17 = v16 >> 3;
    if ((v16 >> 3) <= 1)
    {
      v17 = 1;
    }

    v18 = v16 >= 0x7FFFFFFFFFFFFFF0;
    v19 = 0xFFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v19 = v17;
    }

    if (!(v19 >> 60))
    {
      operator new();
    }

LABEL_70:
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *v13 = 0x8000000000000002;
  v13[1] = a8;
  v15 = v13 + 2;
  *(a9 + 8) = v15;
  if (v15 < v14)
  {
    *v15 = 0x7FFFFFFFFFFFFFFELL;
    v13[3] = a8;
    v20 = (v13 + 4);
    goto LABEL_22;
  }

  v21 = *a9;
  v22 = v15 - *a9;
  v23 = v22 >> 4;
  v24 = (v22 >> 4) + 1;
  if (v24 >> 60)
  {
LABEL_69:
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if ((v14 - v21) >> 3 > v24)
  {
    v24 = (v14 - v21) >> 3;
  }

  if (v14 - v21 >= 0x7FFFFFFFFFFFFFF0)
  {
    v25 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = v24;
  }

  if (v25)
  {
    if (!(v25 >> 60))
    {
      operator new();
    }

    goto LABEL_70;
  }

  v26 = (16 * v23);
  *v26 = 0x7FFFFFFFFFFFFFFELL;
  v26[1] = a8;
  v20 = 16 * v23 + 16;
  v27 = &v26[-2 * (v22 >> 4)];
  memcpy(v27, v21, v22);
  *a9 = v27;
  *(a9 + 8) = v20;
  *(a9 + 16) = 0;
  if (v21)
  {
    operator delete(v21);
  }

LABEL_22:
  *(a9 + 8) = v20;
  if (!a6)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  v77 = a6;
  v78 = a6 - 1;
  v76 = a7;
  while (1)
  {
    v32 = 0;
    v33 = *(a5 + 4 * v28);
    v34 = *(a1 + 8 * v33);
    v35 = *(a3 + 8 * v33);
    v36 = v12 & ~(v12 >> 63);
    v37 = *a9;
    do
    {
      do
      {
        v38 = v32++;
      }

      while (v37[2 * v32] <= v36);
      v39 = &v37[2 * v38];
      v40 = v39[1];
      v41 = v40 < v35;
      v42 = v40 - v35;
    }

    while (v41);
    v43 = a7 - v34;
    v44 = *v39;
    if (v36 <= v44)
    {
      v36 = v44;
    }

    result = v36 <= v43;
    if (v36 > v43)
    {
      return result;
    }

    if (v78 != v28)
    {
      v82 = v29;
      v83 = v36;
      v46 = v32;
      v47 = v38 + 1;
      v48 = v36 + v34;
      a10[1] = *a10;
      *&v84 = v36;
      *(&v84 + 1) = v42;
      std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](a10, &v84);
      v49 = *a9;
      v50 = (*a9 + 16 * v46);
      v51 = *v50;
      if (*v50 < v48)
      {
        v52 = a10[1];
        do
        {
          v53 = v50[1] - v35;
          v54 = a10[2];
          if (v52 < v54)
          {
            *v52 = v51;
            v52[1] = v53;
            v52 += 2;
          }

          else
          {
            v55 = *a10;
            v56 = v52 - *a10;
            v57 = v56 >> 4;
            v58 = (v56 >> 4) + 1;
            if (v58 >> 60)
            {
              goto LABEL_69;
            }

            v59 = v54 - v55;
            if (v59 >> 3 > v58)
            {
              v58 = v59 >> 3;
            }

            if (v59 >= 0x7FFFFFFFFFFFFFF0)
            {
              v60 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v60 = v58;
            }

            if (v60)
            {
              if (!(v60 >> 60))
              {
                operator new();
              }

              goto LABEL_70;
            }

            v61 = (16 * v57);
            *v61 = v51;
            v61[1] = v53;
            v52 = (16 * v57 + 16);
            v62 = &v61[-2 * (v56 >> 4)];
            memcpy(v62, v55, v56);
            *a10 = v62;
            a10[1] = v52;
            a10[2] = 0;
            if (v55)
            {
              operator delete(v55);
            }
          }

          a10[1] = v52;
          ++v47;
          v49 = *a9;
          v50 = (*a9 + 16 * v47);
          v51 = *v50;
        }

        while (*v50 < v48);
        a7 = v76;
      }

      if (v51 > v48)
      {
        v63 = *(a10[1] - 8) + v35;
        *&v84 = v48;
        *(&v84 + 1) = v63;
        std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](a10, &v84);
        v49 = *a9;
      }

      v64 = v47;
      if (v47 < ((*(a9 + 8) - v49) >> 4))
      {
        v65 = a10[1];
        v66 = v47 + 1;
        do
        {
          v67 = a10[2];
          if (v65 < v67)
          {
            *v65++ = *&v49[2 * v64];
          }

          else
          {
            v68 = *a10;
            v69 = v65 - *a10;
            v70 = v69 >> 4;
            v71 = (v69 >> 4) + 1;
            if (v71 >> 60)
            {
              goto LABEL_69;
            }

            v72 = v67 - v68;
            if (v72 >> 3 > v71)
            {
              v71 = v72 >> 3;
            }

            if (v72 >= 0x7FFFFFFFFFFFFFF0)
            {
              v73 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v73 = v71;
            }

            if (v73)
            {
              if (!(v73 >> 60))
              {
                operator new();
              }

              goto LABEL_70;
            }

            v74 = (16 * v70);
            *v74 = *&v49[2 * v64];
            v65 = (16 * v70 + 16);
            v75 = &v74[-(v69 >> 4)];
            memcpy(v75, v68, v69);
            *a10 = v75;
            a10[1] = v65;
            a10[2] = 0;
            if (v68)
            {
              operator delete(v68);
            }
          }

          a10[1] = v65;
          v64 = v66;
          v49 = *a9;
          ++v66;
        }

        while (v64 < (*(a9 + 8) - *a9) >> 4);
      }

      *a9 = *a10;
      *a10 = v49;
      v30 = *(a9 + 8);
      *(a9 + 8) = a10[1];
      a10[1] = v30;
      v31 = *(a9 + 16);
      *(a9 + 16) = a10[2];
      a10[2] = v31;
      v12 = v83;
      v29 = v82 + 1;
      v28 = v82 + 1;
      if (v77 > v28)
      {
        continue;
      }
    }

    return 1;
  }
}

void operations_research::sat::OrthogonalPackingInfeasibilityDetector::TestFeasibility(std::vector<int> *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _DWORD *a9@<X8>)
{
  ++a1[4].__begin_;
  operations_research::sat::OrthogonalPackingInfeasibilityDetector::TestFeasibilityImpl(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if (!*a9)
  {
    ++a1[4].__end_;
    v11 = a9[1];
    if (v11 <= 2)
    {
      switch(v11)
      {
        case 1:
          v12 = 120;
          break;
        case 2:
          v12 = 112;
          break;
        case 0:
          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v13, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/2d_orthogonal_packing.cc", 856);
          absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v13, "Should never happen");
          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v13);
        default:
          return;
      }
    }

    else
    {
      switch(v11)
      {
        case 3:
          v12 = 136;
          break;
        case 5:
          v12 = 160;
          break;
        case 4:
          v12 = 128;
          break;
        default:
          return;
      }
    }

    ++*(&a1->__begin_ + v12);
  }
}

void sub_23C98123C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<20>(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(a1, __s, v4);
  return a1;
}

uint64_t operations_research::sat::OrthogonalPackingResult::TryUseSlackToReduceItemSize(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 16) + 24 * a2;
  v5 = (v4 + 8);
  v6 = 8;
  if (a3)
  {
    v6 = 16;
    v7 = (v4 + 16);
  }

  else
  {
    v7 = (v4 + 8);
  }

  if (!a3)
  {
    v5 = (v4 + 16);
  }

  v8 = *(v4 + v6);
  if (v8 <= a4)
  {
    return 0;
  }

  v9 = *v5;
  v10 = *(a1 + 8);
  if (v9 > v10)
  {
    return 0;
  }

  v12 = v8 - v10 / v9;
  if (v12 <= a4)
  {
    v12 = a4;
  }

  *(a1 + 8) = v10 + (v12 - v8) * v9;
  *v7 = v12;
  return 1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetDffConflict(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<int const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*)::$_0::operator() const(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&)#1} &,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,false>(uint64_t result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v82 = *(a2 - 1);
      v83 = *(v8 + 8);
      if (v82 > v83)
      {
        v84 = *v8;
        *v8 = *(a2 - 4);
        *(a2 - 4) = v84;
        *(v8 + 8) = v82;
        *(a2 - 1) = v83;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = (v8 + 16);
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 0;
          v99 = v8;
          do
          {
            v101 = *(v99 + 3);
            v102 = *(v99 + 1);
            v99 = v95;
            if (v101 > v102)
            {
              v103 = *v95;
              v104 = v98;
              do
              {
                v105 = v8 + v104;
                *(v105 + 16) = *(v8 + v104);
                *(v105 + 24) = *(v8 + v104 + 8);
                if (!v104)
                {
                  v100 = v8;
                  goto LABEL_126;
                }

                v104 -= 16;
              }

              while (v101 > *(v105 - 8));
              v100 = v8 + v104 + 16;
LABEL_126:
              *v100 = v103;
              *(v100 + 8) = v101;
            }

            v95 = v99 + 4;
            v98 += 16;
          }

          while (v99 + 4 != a2);
        }
      }

      else if (!v97)
      {
        v146 = (v8 + 24);
        do
        {
          v147 = *(v7 + 24);
          v148 = *(v7 + 8);
          v7 = v95;
          if (v147 > v148)
          {
            v149 = *v95;
            v150 = v146;
            do
            {
              v151 = v150;
              *(v150 - 2) = *(v150 - 6);
              v152 = *(v150 - 2);
              v150 -= 2;
              *v151 = v152;
            }

            while (v147 > *(v151 - 4));
            *(v150 - 2) = v149;
            *v150 = v147;
          }

          v95 = (v7 + 16);
          v146 += 2;
        }

        while ((v7 + 16) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v106 = (v9 - 2) >> 1;
        v107 = v106;
        do
        {
          v109 = 16 * v107;
          if (v106 >= (16 * v107) >> 4)
          {
            v110 = (v109 >> 3) | 1;
            v111 = v8 + 16 * v110;
            if ((v109 >> 3) + 2 < v9)
            {
              v112 = *(v111 + 8);
              v113 = *(v111 + 24);
              v111 += 16 * (v112 > v113);
              if (v112 > v113)
              {
                v110 = (v109 >> 3) + 2;
              }
            }

            v114 = v8 + v109;
            v115 = *(v111 + 8);
            v116 = *(v114 + 8);
            if (v115 <= v116)
            {
              v117 = *v114;
              do
              {
                v118 = v114;
                v114 = v111;
                *v118 = *v111;
                *(v118 + 8) = v115;
                if (v106 < v110)
                {
                  break;
                }

                v119 = (2 * v110) | 1;
                v111 = v8 + 16 * v119;
                v120 = 2 * v110 + 2;
                if (v120 < v9)
                {
                  v121 = *(v111 + 8);
                  result = *(v111 + 24);
                  v111 += 16 * (v121 > result);
                  if (v121 > result)
                  {
                    v119 = v120;
                  }
                }

                v115 = *(v111 + 8);
                v110 = v119;
              }

              while (v115 <= v116);
              *v114 = v117;
              *(v114 + 8) = v116;
            }
          }

          v108 = v107-- <= 0;
        }

        while (!v108);
        do
        {
          v122 = 0;
          v123 = *v8;
          v124 = *(v8 + 8);
          v125 = v8;
          do
          {
            v129 = v125 + 16 * v122;
            v128 = v129 + 16;
            v130 = (2 * v122) | 1;
            v122 = 2 * v122 + 2;
            if (v122 < v9)
            {
              v126 = *(v129 + 24);
              result = *(v129 + 40);
              v127 = v129 + 32;
              if (v126 <= result)
              {
                v122 = v130;
              }

              else
              {
                v128 = v127;
              }
            }

            else
            {
              v122 = v130;
            }

            *v125 = *v128;
            *(v125 + 8) = *(v128 + 8);
            v125 = v128;
          }

          while (v122 <= ((v9 - 2) >> 1));
          if (v128 == a2 - 4)
          {
            *v128 = v123;
            *(v128 + 8) = v124;
          }

          else
          {
            *v128 = *(a2 - 4);
            *(v128 + 8) = *(a2 - 1);
            *(a2 - 4) = v123;
            *(a2 - 1) = v124;
            v131 = (v128 - v8 + 16) >> 4;
            v108 = v131 < 2;
            v132 = v131 - 2;
            if (!v108)
            {
              v133 = v132 >> 1;
              v134 = v8 + 16 * (v132 >> 1);
              v135 = *(v134 + 8);
              v136 = *(v128 + 8);
              if (v135 > v136)
              {
                v137 = *v128;
                do
                {
                  v138 = v128;
                  v128 = v134;
                  *v138 = *v134;
                  *(v138 + 8) = v135;
                  if (!v133)
                  {
                    break;
                  }

                  v133 = (v133 - 1) >> 1;
                  v134 = v8 + 16 * v133;
                  v135 = *(v134 + 8);
                }

                while (v135 > v136);
                *v128 = v137;
                *(v128 + 8) = v136;
              }
            }
          }

          a2 -= 4;
          v108 = v9-- <= 2;
        }

        while (!v108);
      }

      return result;
    }

    v10 = v8 + 16 * (v9 >> 1);
    v11 = *(a2 - 1);
    if (v9 < 0x81)
    {
      v15 = *(v8 + 8);
      v16 = *(v10 + 8);
      if (v15 > v16)
      {
        v17 = *v10;
        if (v11 > v15)
        {
          *v10 = *(a2 - 4);
          *(a2 - 4) = v17;
          *(v10 + 8) = v11;
          goto LABEL_37;
        }

        *v10 = *v8;
        *v8 = v17;
        *(v10 + 8) = v15;
        *(v8 + 8) = v16;
        v36 = *(a2 - 1);
        if (v36 > v16)
        {
          *v8 = *(a2 - 4);
          *(a2 - 4) = v17;
          *(v8 + 8) = v36;
LABEL_37:
          *(a2 - 1) = v16;
        }

LABEL_38:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      if (v11 <= v15)
      {
        goto LABEL_38;
      }

      v22 = *v8;
      *v8 = *(a2 - 4);
      *(a2 - 4) = v22;
      *(v8 + 8) = v11;
      *(a2 - 1) = v15;
      v23 = *(v8 + 8);
      v24 = *(v10 + 8);
      if (v23 <= v24)
      {
        goto LABEL_38;
      }

      v25 = *v10;
      *v10 = *v8;
      *v8 = v25;
      *(v10 + 8) = v23;
      *(v8 + 8) = v24;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_39:
      v37 = *v8;
      v38 = *(v8 + 8);
LABEL_64:
      v57 = 0;
      do
      {
        v58 = *(v8 + v57 + 24);
        v57 += 16;
      }

      while (v58 > v38);
      v59 = v8 + v57;
      v60 = a2;
      if (v57 == 16)
      {
        v63 = a2;
        while (v59 < v63)
        {
          v61 = v63 - 4;
          v64 = *(v63 - 1);
          v63 -= 4;
          if (v64 > v38)
          {
            goto LABEL_72;
          }
        }

        v61 = v63;
        v8 = v59;
      }

      else
      {
        do
        {
          v61 = v60 - 4;
          v62 = *(v60 - 1);
          v60 -= 4;
        }

        while (v62 <= v38);
LABEL_72:
        v8 = v59;
        if (v59 < v61)
        {
          v65 = v61;
          do
          {
            v66 = *v8;
            *v8 = *v65;
            *v65 = v66;
            v67 = *(v8 + 8);
            *(v8 + 8) = *(v65 + 8);
            *(v65 + 8) = v67;
            do
            {
              v68 = *(v8 + 24);
              v8 += 16;
            }

            while (v68 > v38);
            do
            {
              v69 = *(v65 - 8);
              v65 -= 16;
            }

            while (v69 <= v38);
          }

          while (v8 < v65);
        }
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      *(v8 - 16) = v37;
      *(v8 - 8) = v38;
      if (v59 < v61)
      {
        goto LABEL_83;
      }

      v70 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetDffConflict(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<int const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*)::$_0::operator() const(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&)#1} &,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>(v7, (v8 - 16));
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetDffConflict(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<int const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*)::$_0::operator() const(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&)#1} &,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>(v8, a2);
      if (result)
      {
        a2 = (v8 - 16);
        if (!v70)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v70)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetDffConflict(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<int const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*)::$_0::operator() const(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&)#1} &,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,false>(v7, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v12 = *(v10 + 8);
      v13 = *(v8 + 8);
      if (v12 <= v13)
      {
        if (v11 > v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 4);
          *(a2 - 4) = v18;
          *(v10 + 8) = v11;
          *(a2 - 1) = v12;
          v19 = *(v10 + 8);
          v20 = *(v8 + 8);
          if (v19 > v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            *(v8 + 8) = v19;
            *(v10 + 8) = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 <= v12)
        {
          *v8 = *v10;
          *v10 = v14;
          *(v8 + 8) = v12;
          *(v10 + 8) = v13;
          v26 = *(a2 - 1);
          if (v26 <= v13)
          {
            goto LABEL_29;
          }

          *v10 = *(a2 - 4);
          *(a2 - 4) = v14;
          *(v10 + 8) = v26;
        }

        else
        {
          *v8 = *(a2 - 4);
          *(a2 - 4) = v14;
          *(v8 + 8) = v11;
        }

        *(a2 - 1) = v13;
      }

LABEL_29:
      v27 = (v10 - 16);
      v28 = *(v10 - 8);
      v29 = *(v8 + 24);
      v30 = *(a2 - 3);
      if (v28 <= v29)
      {
        if (v30 > v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 8);
          *(a2 - 8) = v32;
          *(v10 - 8) = v30;
          *(a2 - 3) = v28;
          v33 = *(v10 - 8);
          v34 = *(v8 + 24);
          if (v33 > v34)
          {
            v35 = *(v8 + 16);
            *(v8 + 16) = *v27;
            *v27 = v35;
            *(v8 + 24) = v33;
            *(v10 - 8) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 16);
        if (v30 <= v28)
        {
          *(v8 + 16) = *v27;
          *v27 = v31;
          *(v8 + 24) = v28;
          *(v10 - 8) = v29;
          v39 = *(a2 - 3);
          if (v39 <= v29)
          {
            goto LABEL_43;
          }

          *v27 = *(a2 - 8);
          *(a2 - 8) = v31;
          *(v10 - 8) = v39;
        }

        else
        {
          *(v8 + 16) = *(a2 - 8);
          *(a2 - 8) = v31;
          *(v8 + 24) = v30;
        }

        *(a2 - 3) = v29;
      }

LABEL_43:
      v40 = *(v10 + 24);
      v41 = *(v8 + 40);
      v42 = *(a2 - 5);
      if (v40 <= v41)
      {
        if (v42 > v40)
        {
          v44 = *(v10 + 16);
          *(v10 + 16) = *(a2 - 12);
          *(a2 - 12) = v44;
          *(v10 + 24) = v42;
          *(a2 - 5) = v40;
          v45 = *(v10 + 24);
          v46 = *(v8 + 40);
          if (v45 > v46)
          {
            v47 = *(v8 + 32);
            *(v8 + 32) = *(v10 + 16);
            *(v10 + 16) = v47;
            *(v8 + 40) = v45;
            *(v10 + 24) = v46;
          }
        }
      }

      else
      {
        v43 = *(v8 + 32);
        if (v42 <= v40)
        {
          *(v8 + 32) = *(v10 + 16);
          *(v10 + 16) = v43;
          *(v8 + 40) = v40;
          *(v10 + 24) = v41;
          v48 = *(a2 - 5);
          if (v48 <= v41)
          {
            goto LABEL_52;
          }

          *(v10 + 16) = *(a2 - 12);
          *(a2 - 12) = v43;
          *(v10 + 24) = v48;
        }

        else
        {
          *(v8 + 32) = *(a2 - 12);
          *(a2 - 12) = v43;
          *(v8 + 40) = v42;
        }

        *(a2 - 5) = v41;
      }

LABEL_52:
      v49 = *(v10 + 8);
      v50 = *(v10 - 8);
      v51 = *(v10 + 24);
      if (v49 <= v50)
      {
        v52 = *v10;
        if (v51 <= v49)
        {
          v50 = *(v10 + 8);
        }

        else
        {
          v53 = *(v10 + 16);
          *v10 = v53;
          *(v10 + 16) = v52;
          *(v10 + 8) = v51;
          *(v10 + 24) = v49;
          if (v51 <= v50)
          {
            v50 = v51;
            v52 = v53;
          }

          else
          {
            v52 = *v27;
            *v27 = v53;
            *v10 = v52;
            *(v10 - 8) = v51;
            *(v10 + 8) = v50;
          }
        }
      }

      else
      {
        v52 = *v27;
        if (v51 <= v49)
        {
          *v27 = *v10;
          *v10 = v52;
          *(v10 - 8) = v49;
          *(v10 + 8) = v50;
          if (v51 > v50)
          {
            v54 = *(v10 + 16);
            *v10 = v54;
            *(v10 + 16) = v52;
            *(v10 + 8) = v51;
            *(v10 + 24) = v50;
            v50 = v51;
            v52 = v54;
          }
        }

        else
        {
          *v27 = *(v10 + 16);
          *(v10 + 16) = v52;
          *(v10 - 8) = v51;
          *(v10 + 24) = v50;
          v52 = *v10;
          v50 = v49;
        }
      }

      v55 = *v8;
      *v8 = v52;
      *v10 = v55;
      v56 = *(v8 + 8);
      *(v8 + 8) = v50;
      *(v10 + 8) = v56;
      --a3;
      if (a4)
      {
        goto LABEL_39;
      }

LABEL_63:
      v38 = *(v8 + 8);
      v37 = *v8;
      if (*(v8 - 8) > v38)
      {
        goto LABEL_64;
      }

      if (v38 <= *(a2 - 1))
      {
        v73 = v8 + 16;
        do
        {
          v8 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v74 = *(v73 + 8);
          v73 += 16;
        }

        while (v38 <= v74);
      }

      else
      {
        v71 = v8;
        do
        {
          v8 = v71 + 16;
          v72 = *(v71 + 24);
          v71 += 16;
        }

        while (v38 <= v72);
      }

      v75 = a2;
      if (v8 < a2)
      {
        v76 = a2;
        do
        {
          v75 = v76 - 4;
          v77 = *(v76 - 1);
          v76 -= 4;
        }

        while (v38 > v77);
      }

      while (v8 < v75)
      {
        v78 = *v8;
        *v8 = *v75;
        *v75 = v78;
        v79 = *(v8 + 8);
        *(v8 + 8) = *(v75 + 1);
        *(v75 + 1) = v79;
        do
        {
          v80 = *(v8 + 24);
          v8 += 16;
        }

        while (v38 <= v80);
        do
        {
          v81 = *(v75 - 1);
          v75 -= 4;
        }

        while (v38 > v81);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 16) = v37;
      *(v8 - 8) = v38;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      v89 = (v8 + 24);
      v90 = *(v8 + 24);
      v92 = (v8 + 8);
      v91 = *(v8 + 8);
      v93 = *(v8 + 40);
      if (v90 <= v91)
      {
        if (v93 > v90)
        {
          v143 = *(v8 + 16);
          v144 = *(v8 + 32);
          *(v8 + 16) = v144;
          *(v8 + 32) = v143;
          *(v8 + 24) = v93;
          *(v8 + 40) = v90;
          if (v93 > v91)
          {
            v145 = *v8;
            *v8 = v144;
            *(v8 + 16) = v145;
            goto LABEL_184;
          }

LABEL_185:
          v93 = v90;
        }
      }

      else
      {
        v94 = *v8;
        if (v93 > v90)
        {
          *v8 = *(v8 + 32);
          *(v8 + 32) = v94;
          goto LABEL_183;
        }

        *v8 = *(v8 + 16);
        *(v8 + 16) = v94;
        *(v8 + 8) = v90;
        *(v8 + 24) = v91;
        if (v93 > v91)
        {
          *(v8 + 16) = *(v8 + 32);
          *(v8 + 32) = v94;
          v92 = (v8 + 24);
LABEL_183:
          v89 = (v8 + 40);
          v90 = v91;
LABEL_184:
          *v92 = v93;
          *v89 = v91;
          goto LABEL_185;
        }
      }

      v154 = *(a2 - 1);
      if (v154 > v93)
      {
        v155 = *(v8 + 32);
        *(v8 + 32) = *(a2 - 4);
        *(a2 - 4) = v155;
        *(v8 + 40) = v154;
        *(a2 - 1) = v93;
        v156 = *(v8 + 40);
        v157 = *(v8 + 24);
        if (v156 > v157)
        {
          v158 = *(v8 + 16);
          v159 = *(v8 + 32);
          *(v8 + 16) = v159;
          *(v8 + 32) = v158;
          *(v8 + 24) = v156;
          *(v8 + 40) = v157;
          v160 = *(v8 + 8);
          if (v156 > v160)
          {
            v161 = *v8;
            *v8 = v159;
            *(v8 + 16) = v161;
            *(v8 + 8) = v156;
            *(v8 + 24) = v160;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetDffConflict(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<int const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*)::$_0::operator() const(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&)#1} &,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,0>(v8, (v8 + 16), (v8 + 32), (v8 + 48), a2 - 4);
    }

    goto LABEL_10;
  }

  v85 = *(v8 + 24);
  v86 = *(v8 + 8);
  v87 = *(a2 - 1);
  if (v85 <= v86)
  {
    if (v87 > v85)
    {
      v139 = *(v8 + 16);
      *(v8 + 16) = *(a2 - 4);
      *(a2 - 4) = v139;
      *(v8 + 24) = v87;
      *(a2 - 1) = v85;
      v140 = *(v8 + 24);
      v141 = *(v8 + 8);
      if (v140 > v141)
      {
        v142 = *v8;
        *v8 = *(v8 + 16);
        *(v8 + 16) = v142;
        *(v8 + 8) = v140;
        *(v8 + 24) = v141;
      }
    }
  }

  else
  {
    v88 = *v8;
    if (v87 <= v85)
    {
      *v8 = *(v8 + 16);
      *(v8 + 16) = v88;
      *(v8 + 8) = v85;
      *(v8 + 24) = v86;
      v153 = *(a2 - 1);
      if (v153 <= v86)
      {
        return result;
      }

      *(v8 + 16) = *(a2 - 4);
      *(a2 - 4) = v88;
      *(v8 + 24) = v153;
    }

    else
    {
      *v8 = *(a2 - 4);
      *(a2 - 4) = v88;
      *(v8 + 8) = v87;
    }

    *(a2 - 1) = v86;
  }

  return result;
}

int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetDffConflict(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<int const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*)::$_0::operator() const(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&)#1} &,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,0>(int *result, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *(a2 + 1);
  v6 = *(result + 1);
  v7 = *(a3 + 1);
  if (v5 > v6)
  {
    v8 = *result;
    if (v7 <= v5)
    {
      *result = *a2;
      *a2 = v8;
      *(result + 1) = v5;
      *(a2 + 1) = v6;
      v5 = *(a3 + 1);
      if (v5 <= v6)
      {
        goto LABEL_11;
      }

      *a2 = *a3;
      *a3 = v8;
      *(a2 + 1) = v5;
    }

    else
    {
      *result = *a3;
      *a3 = v8;
      *(result + 1) = v7;
    }

    *(a3 + 1) = v6;
    v5 = v6;
LABEL_11:
    v13 = *(a4 + 1);
    if (v13 <= v5)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v7 <= v5)
  {
    v5 = *(a3 + 1);
    v13 = *(a4 + 1);
    if (v13 <= v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = *a2;
    *a2 = *a3;
    *a3 = v9;
    *(a2 + 1) = v7;
    *(a3 + 1) = v5;
    v10 = *(a2 + 1);
    v11 = *(result + 1);
    if (v10 <= v11)
    {
      goto LABEL_11;
    }

    v12 = *result;
    *result = *a2;
    *a2 = v12;
    *(result + 1) = v10;
    *(a2 + 1) = v11;
    v5 = *(a3 + 1);
    v13 = *(a4 + 1);
    if (v13 <= v5)
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  v14 = *a3;
  *a3 = *a4;
  *a4 = v14;
  *(a3 + 1) = v13;
  *(a4 + 1) = v5;
  v15 = *(a3 + 1);
  v16 = *(a2 + 1);
  if (v15 > v16)
  {
    v17 = *a2;
    *a2 = *a3;
    *a3 = v17;
    *(a2 + 1) = v15;
    *(a3 + 1) = v16;
    v18 = *(a2 + 1);
    v19 = *(result + 1);
    if (v18 > v19)
    {
      v20 = *result;
      *result = *a2;
      *a2 = v20;
      *(result + 1) = v18;
      *(a2 + 1) = v19;
    }
  }

LABEL_16:
  v21 = *(a5 + 1);
  v22 = *(a4 + 1);
  if (v21 > v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    *(a4 + 1) = v21;
    *(a5 + 1) = v22;
    v24 = *(a4 + 1);
    v25 = *(a3 + 1);
    if (v24 > v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      *(a3 + 1) = v24;
      *(a4 + 1) = v25;
      v27 = *(a3 + 1);
      v28 = *(a2 + 1);
      if (v27 > v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        *(a2 + 1) = v27;
        *(a3 + 1) = v28;
        v30 = *(a2 + 1);
        v31 = *(result + 1);
        if (v30 > v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          *(result + 1) = v30;
          *(a2 + 1) = v31;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetDffConflict(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<int const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*)::$_0::operator() const(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&)#1} &,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>(uint64_t a1, int *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v7 = *(a1 + 24);
      v8 = *(a1 + 8);
      v9 = *(a2 - 1);
      if (v7 <= v8)
      {
        if (v9 <= v7)
        {
          return 1;
        }

        v23 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 4);
        *(a2 - 4) = v23;
        *(a1 + 24) = v9;
        *(a2 - 1) = v7;
        v24 = *(a1 + 24);
        v25 = *(a1 + 8);
        if (v24 <= v25)
        {
          return 1;
        }

        v26 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 16) = v26;
        *(a1 + 8) = v24;
        *(a1 + 24) = v25;
        return 1;
      }

      else
      {
        v10 = *a1;
        if (v9 <= v7)
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v10;
          *(a1 + 8) = v7;
          *(a1 + 24) = v8;
          v33 = *(a2 - 1);
          if (v33 <= v8)
          {
            return 1;
          }

          *(a1 + 16) = *(a2 - 4);
          *(a2 - 4) = v10;
          *(a1 + 24) = v33;
          *(a2 - 1) = v8;
          return 1;
        }

        else
        {
          *a1 = *(a2 - 4);
          *(a2 - 4) = v10;
          *(a1 + 8) = v9;
          *(a2 - 1) = v8;
          return 1;
        }
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::GetDffConflict(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<int const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*)::$_0::operator() const(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&)#1} &,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2 - 4);
        return 1;
      }

LABEL_14:
      v11 = *(a1 + 24);
      v13 = (a1 + 8);
      v12 = *(a1 + 8);
      v15 = (a1 + 40);
      v14 = *(a1 + 40);
      if (v11 <= v12)
      {
        if (v14 <= v11 || (v27 = *(a1 + 16), v28 = *(a1 + 32), *(a1 + 16) = v28, *(a1 + 32) = v27, *(a1 + 24) = v14, *(a1 + 40) = v11, v14 <= v12))
        {
LABEL_34:
          v34 = (a1 + 48);
          if ((a1 + 48) == a2)
          {
            return 1;
          }

          v35 = 0;
          v36 = 0;
          v37 = (a1 + 32);
          while (1)
          {
            v38 = *(v34 + 1);
            if (v38 > *(v37 + 1))
            {
              break;
            }

LABEL_37:
            v37 = v34;
            v35 += 16;
            v34 += 4;
            if (v34 == a2)
            {
              return 1;
            }
          }

          v39 = *v34;
          v40 = v35;
          do
          {
            v41 = a1 + v40;
            *(v41 + 48) = *(a1 + v40 + 32);
            *(v41 + 56) = *(a1 + v40 + 40);
            if (v40 == -32)
            {
              *a1 = v39;
              *(a1 + 8) = v38;
              if (++v36 != 8)
              {
                goto LABEL_37;
              }

              return v34 + 4 == a2;
            }

            v40 -= 16;
          }

          while (v38 > *(v41 + 24));
          v42 = a1 + v40;
          *(v42 + 48) = v39;
          *(v42 + 56) = v38;
          if (++v36 != 8)
          {
            goto LABEL_37;
          }

          return v34 + 4 == a2;
        }

        v29 = *a1;
        *a1 = v28;
        *(a1 + 16) = v29;
        v15 = (a1 + 24);
      }

      else
      {
        v16 = *a1;
        if (v14 <= v11)
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v16;
          *(a1 + 8) = v11;
          *(a1 + 24) = v12;
          if (v14 <= v12)
          {
            goto LABEL_34;
          }

          *(a1 + 16) = *(a1 + 32);
          *(a1 + 32) = v16;
          v13 = (a1 + 24);
        }

        else
        {
          *a1 = *(a1 + 32);
          *(a1 + 32) = v16;
        }
      }

      *v13 = v14;
      *v15 = v12;
      goto LABEL_34;
    }

    v17 = (a1 + 24);
    v18 = *(a1 + 24);
    v20 = (a1 + 8);
    v19 = *(a1 + 8);
    v21 = *(a1 + 40);
    if (v18 <= v19)
    {
      if (v21 <= v18)
      {
        goto LABEL_50;
      }

      v30 = *(a1 + 16);
      v31 = *(a1 + 32);
      *(a1 + 16) = v31;
      *(a1 + 32) = v30;
      *(a1 + 24) = v21;
      *(a1 + 40) = v18;
      if (v21 <= v19)
      {
        goto LABEL_49;
      }

      v32 = *a1;
      *a1 = v31;
      *(a1 + 16) = v32;
    }

    else
    {
      v22 = *a1;
      if (v21 <= v18)
      {
        *a1 = *(a1 + 16);
        *(a1 + 16) = v22;
        *(a1 + 8) = v18;
        *(a1 + 24) = v19;
        if (v21 <= v19)
        {
          goto LABEL_50;
        }

        *(a1 + 16) = *(a1 + 32);
        *(a1 + 32) = v22;
        v20 = (a1 + 24);
      }

      else
      {
        *a1 = *(a1 + 32);
        *(a1 + 32) = v22;
      }

      v17 = (a1 + 40);
      v18 = v19;
    }

    *v20 = v21;
    *v17 = v19;
LABEL_49:
    v21 = v18;
LABEL_50:
    v43 = *(a2 - 1);
    if (v43 <= v21)
    {
      return 1;
    }

    v44 = *(a1 + 32);
    *(a1 + 32) = *(a2 - 4);
    *(a2 - 4) = v44;
    *(a1 + 40) = v43;
    *(a2 - 1) = v21;
    v45 = *(a1 + 40);
    v46 = *(a1 + 24);
    if (v45 <= v46)
    {
      return 1;
    }

    v47 = *(a1 + 16);
    v48 = *(a1 + 32);
    *(a1 + 16) = v48;
    *(a1 + 32) = v47;
    *(a1 + 24) = v45;
    *(a1 + 40) = v46;
    v49 = *(a1 + 8);
    if (v45 <= v49)
    {
      return 1;
    }

    v50 = *a1;
    *a1 = v48;
    *(a1 + 16) = v50;
    *(a1 + 8) = v45;
    *(a1 + 24) = v49;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  v4 = *(a2 - 1);
  v5 = *(a1 + 8);
  if (v4 <= v5)
  {
    return 1;
  }

  v6 = *a1;
  *a1 = *(a2 - 4);
  *(a2 - 4) = v6;
  *(a1 + 8) = v4;
  *(a2 - 1) = v5;
  return 1;
}

char *std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__assign_with_size[abi:ne200100]<operations_research::sat::OrthogonalPackingResult::Item*,operations_research::sat::OrthogonalPackingResult::Item*>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,long long>(void *a1, uint64_t a2, char *a3)
{
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::CheckOpMessageBuilder(&v6, a3);
  MEMORY[0x23EED91B0](&v6, *a1);
  v5 = absl::lts_20240722::log_internal::CheckOpMessageBuilder::ForVar2(&v6);
  MEMORY[0x23EED91B0](v5, a2);
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::NewString(&v6);
}

void sub_23C982870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    v10 = 24 * a2;
    if (24 * a2)
    {
      bzero(*(a1 + 8), 24 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 24 * v5;
    v12 = 24 * a2;
    if (24 * a2)
    {
      bzero(v11, v12);
      v9 = v11 + v12;
    }

    else
    {
      v9 = v11;
    }

    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = (v11 - v14);
    memcpy(v15, *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void std::vector<unsigned long long>::__append(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if ((a2 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = &v5[a2];
      v19 = *a3;
      v20 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v20 < 3)
      {
        goto LABEL_36;
      }

      v21 = v20 + 1;
      v22 = &v5[v21 & 0x3FFFFFFFFFFFFFFCLL];
      v23 = vdupq_n_s64(v19);
      v24 = (v5 + 2);
      v25 = v21 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v24[-1] = v23;
        *v24 = v23;
        v24 += 2;
        v25 -= 4;
      }

      while (v25);
      v5 = v22;
      if (v21 != (v21 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_36:
        do
        {
          *v5++ = v19;
        }

        while (v5 != v18);
      }

      v5 = v18;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = (v5 - *a1) >> 3;
    v7 = v6 + a2;
    if ((v6 + a2) >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v26 = 8 * v6;
    if ((a2 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v26 + 8 * a2;
      v11 = *a3;
      v12 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      v13 = (8 * v6);
      if (v12 < 3)
      {
        goto LABEL_37;
      }

      v14 = v12 + 1;
      v13 = (v26 + 8 * (v14 & 0x3FFFFFFFFFFFFFFCLL));
      v15 = vdupq_n_s64(v11);
      v16 = (v26 + 16);
      v17 = v14 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_37:
        do
        {
          *v13++ = v11;
        }

        while (v13 != v10);
      }
    }

    else
    {
      v10 = 8 * v6;
    }

    v27 = *a1;
    v28 = *(a1 + 8) - *a1;
    v29 = v26 - v28;
    memcpy((v26 - v28), *a1, v28);
    *a1 = v29;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v27)
    {

      operator delete(v27);
    }
  }
}

void std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if ((a2 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 3;
    if ((v5 + a2) >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v6 = v3 - *a1;
    v7 = v6 >> 2;
    if (v6 >> 2 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (8 * v5);
    if ((a2 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = 8 * a2;
      bzero(v12, 8 * a2);
      v10 = &v12[v9];
    }

    else
    {
      v10 = v12;
    }

    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(v15, *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void *std::__sample[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::Bitset64<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::Iterator,operations_research::Bitset64<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::Iterator,std::__wrap_iter<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*>,long,absl::lts_20240722::BitGenRef>(uint64_t *a1, uint64_t a2, void *a3, int64_t a4, void *a5)
{
  v8 = *a1;
  v10 = *(a1 + 2);
  v9 = *(a1 + 3);
  v11 = a1[2];
  if (*(a2 + 8))
  {
    v12 = *(a2 + 12);
    v13 = *(a2 + 16);
    v14 = 0;
    if (v9 != v12 || v11 != v13)
    {
      while (1)
      {
        while (1)
        {
          v16 = v9 >> 6;
          if (v11)
          {
            break;
          }

          while (v10 - 1 != v16)
          {
            v11 = *(v8 + 8 * ++v16);
            if (v11)
            {
              goto LABEL_9;
            }
          }

          v10 = 0;
          v11 = 0;
          ++v14;
          if (v9 == v12)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v9 = __clz(__rbit64(v11)) | (v16 << 6);
        v11 &= v11 - 1;
        ++v14;
        if (v9 == v12)
        {
LABEL_10:
          if (v11 == v13)
          {
            break;
          }
        }
      }
    }
  }

  else
  {
    v14 = 0;
    if (v10)
    {
      v17 = v10 - 1;
      while (1)
      {
        ++v14;
        v18 = v9 >> 6;
        if (!v11)
        {
          break;
        }

LABEL_16:
        v9 = __clz(__rbit64(v11)) | (v18 << 6);
        v11 &= v11 - 1;
      }

      while (v17 != v18)
      {
        v11 = *(v8 + 8 * ++v18);
        if (v11)
        {
          goto LABEL_16;
        }
      }
    }
  }

  if (v14 >= a4)
  {
    v19 = a4;
  }

  else
  {
    v19 = v14;
  }

  if (v19)
  {
    while (1)
    {
      if (v14 == 1)
      {
        v25 = 0;
      }

      else
      {
        if (!v14)
        {
          v30 = (a5[2])(*a5);
          v26 = *(a1 + 3);
          if (v30 >= v19)
          {
            goto LABEL_42;
          }

LABEL_41:
          *a3++ = v26;
          --v19;
          goto LABEL_42;
        }

        v20 = __clz(v14);
        if (((v14 << v20) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v21 = 64;
        }

        else
        {
          v21 = 63;
        }

        v22 = v21 - v20;
        v23 = v22 >> 6;
        if ((v22 & 0x3F) != 0)
        {
          ++v23;
        }

        if (v23 <= v22)
        {
          v24 = 0xFFFFFFFFFFFFFFFFLL >> -(v22 / v23);
        }

        else
        {
          v24 = 0;
        }

        do
        {
          v25 = (a5[2])(*a5) & v24;
        }

        while (v25 >= v14);
      }

      v26 = *(a1 + 3);
      if (v25 < v19)
      {
        goto LABEL_41;
      }

LABEL_42:
      v27 = v26 >> 6;
      v28 = a1[2];
      if (v28)
      {
LABEL_26:
        *(a1 + 3) = __clz(__rbit64(v28)) | (v27 << 6);
        a1[2] = (v28 - 1) & v28;
        --v14;
        if (!v19)
        {
          return a3;
        }
      }

      else
      {
        v29 = *(a1 + 2) - 1;
        while (v29 != v27)
        {
          v28 = *(*a1 + 8 * ++v27);
          a1[2] = v28;
          if (v28)
          {
            goto LABEL_26;
          }
        }

        *(a1 + 2) = 0;
        --v14;
        if (!v19)
        {
          return a3;
        }
      }
    }
  }

  return a3;
}

void std::vector<BOOL>::__construct_at_end[abi:ne200100](void *a1, unint64_t a2, int a3)
{
  v3 = a1[1];
  v4 = v3 + a2;
  a1[1] = v3 + a2;
  if (!v3 || ((v4 - 1) ^ (v3 - 1)) >= 0x40)
  {
    if (v4 >= 0x41)
    {
      v5 = (v4 - 1) >> 6;
    }

    else
    {
      v5 = 0;
    }

    *(*a1 + 8 * v5) = 0;
  }

  if (a2)
  {
    v6 = (*a1 + 8 * (v3 >> 6));
    v7 = v3 & 0x3F;
    if (a3)
    {
      if ((v3 & 0x3F) != 0)
      {
        v8 = (64 - v7);
        if (v8 >= a2)
        {
          v9 = a2;
        }

        else
        {
          v9 = v8;
        }

        *v6++ |= (0xFFFFFFFFFFFFFFFFLL >> (v8 - v9)) & (-1 << v3);
        a2 -= v9;
      }

      v10 = a2 >> 6;
      if (a2 >= 0x40)
      {
        v11 = a2;
        memset(v6, 255, 8 * v10);
        LOBYTE(a2) = v11;
      }

      if ((a2 & 0x3F) != 0)
      {
        v12 = v6[v10] | (0xFFFFFFFFFFFFFFFFLL >> -(a2 & 0x3F));
LABEL_27:
        v6[v10] = v12;
      }
    }

    else
    {
      if ((v3 & 0x3F) != 0)
      {
        v13 = (64 - v7);
        if (v13 >= a2)
        {
          v14 = a2;
        }

        else
        {
          v14 = v13;
        }

        *v6++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (v13 - v14)) & (-1 << v3));
        a2 -= v14;
      }

      v10 = a2 >> 6;
      if (a2 >= 0x40)
      {
        v15 = a2;
        bzero(v6, 8 * v10);
        LOBYTE(a2) = v15;
      }

      if ((a2 & 0x3F) != 0)
      {
        v12 = v6[v10] & ~(0xFFFFFFFFFFFFFFFFLL >> -(a2 & 0x3F));
        goto LABEL_27;
      }
    }
  }
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if ((__n & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = 4 * __n;
      bzero(this->__end_, 4 * __n);
      end = (end + v11);
    }

    this->__end_ = end;
  }

  else
  {
    v5 = end - this->__begin_;
    if ((v5 + __n) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v6 = value - this->__begin_;
    v7 = v6 >> 1;
    if (v6 >> 1 <= v5 + __n)
    {
      v7 = v5 + __n;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v8 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      if (!(v8 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (4 * v5);
    if ((__n & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = 4 * __n;
      bzero(v12, 4 * __n);
      v10 = &v12[v9];
    }

    else
    {
      v10 = v12;
    }

    begin = this->__begin_;
    v14 = this->__end_ - this->__begin_;
    v15 = &v12[-v14];
    memcpy(v15, this->__begin_, v14);
    this->__begin_ = v15;
    this->__end_ = v10;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

char *std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__assign_with_size[abi:ne200100]<operations_research::sat::OrthogonalPackingResult::Item const*,operations_research::sat::OrthogonalPackingResult::Item const*>(char **a1, char *__src, char *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      v19 = result;
      memmove(result, __src, v18);
      result = v19;
    }

    a1[1] = &result[v18];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != result)
    {
      result = memmove(result, __src, v13);
      v12 = a1[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        v16 += 24;
        v14 += 24;
        v15 += 24;
      }

      while (v14 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::TestFeasibilityImpl(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::OrthogonalPackingOptions const&)::$_1 &,int *,false>(uint64_t result, int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v133 = **a3;
          v134 = *a3[1];
          v135 = *v11;
          v136 = v11[1];
          v137 = *(v133 + 8 * *v11);
          v138 = *(v133 + 8 * v136);
          if (v137 < v138 || v138 >= v137 && *(v134 + 8 * v135) < *(v134 + 8 * v136))
          {
            v139 = *(a2 - 1);
            v140 = *(v133 + 8 * v139);
            if (v138 < v140 || v140 >= v138 && *(v134 + 8 * v136) < *(v134 + 8 * v139))
            {
              *v11 = v139;
              *(a2 - 1) = v135;
            }

            else
            {
              *v11 = v136;
              v11[1] = v135;
              v247 = *(a2 - 1);
              v248 = *(v133 + 8 * v247);
              if (v137 < v248 || v248 >= v137 && *(v134 + 8 * v135) < *(v134 + 8 * v247))
              {
                v11[1] = v247;
                *(a2 - 1) = v135;
              }
            }
          }

          else
          {
            v229 = *(a2 - 1);
            v230 = *(v133 + 8 * v229);
            if (v138 < v230 || v230 >= v138 && *(v134 + 8 * v136) < *(v134 + 8 * v229))
            {
              v11[1] = v229;
              *(a2 - 1) = v136;
              v232 = *v11;
              v231 = v11[1];
              v233 = *(v133 + 8 * *v11);
              v234 = *(v133 + 8 * v231);
              if (v233 < v234 || v234 >= v233 && *(v134 + 8 * v232) < *(v134 + 8 * v231))
              {
                *v11 = v231;
                v11[1] = v232;
              }
            }
          }

          return result;
        case 4:
          v131 = **a3;
          v132 = *a3[1];

          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::TestFeasibilityImpl(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::OrthogonalPackingOptions const&)::$_1 &,int *,0>(v11, v11 + 1, v11 + 2, a2 - 1, v131, v132);
        case 5:
          result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::TestFeasibilityImpl(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::OrthogonalPackingOptions const&)::$_1 &,int *,0>(v11, v11 + 1, v11 + 2, v11 + 3, **a3, *a3[1]);
          v146 = *(a2 - 1);
          v147 = v11[3];
          v148 = **a3;
          v149 = *a3[1];
          v150 = *(v148 + 8 * v147);
          v151 = *(v148 + 8 * v146);
          if (v150 < v151 || v151 >= v150 && *(v149 + 8 * v147) < *(v149 + 8 * v146))
          {
            v11[3] = v146;
            *(a2 - 1) = v147;
            v153 = v11[2];
            v152 = v11[3];
            v154 = *(v148 + 8 * v153);
            v155 = *(v148 + 8 * v152);
            if (v154 < v155 || v155 >= v154 && *(v149 + 8 * v153) < *(v149 + 8 * v152))
            {
              v11[2] = v152;
              v11[3] = v153;
              v156 = v11[1];
              v157 = *(v148 + 8 * v156);
              if (v157 < v155 || v155 >= v157 && *(v149 + 8 * v156) < *(v149 + 8 * v152))
              {
                v11[1] = v152;
                v11[2] = v156;
                v158 = *v11;
                v159 = *(v148 + 8 * *v11);
                if (v159 < v155 || v155 >= v159 && *(v149 + 8 * v158) < *(v149 + 8 * v152))
                {
                  *v11 = v152;
                  v11[1] = v158;
                }
              }
            }
          }

          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v141 = *(a2 - 1);
        v142 = *v11;
        v143 = **a3;
        v144 = *(v143 + 8 * *v11);
        v145 = *(v143 + 8 * v141);
        if (v144 < v145 || v145 >= v144 && *(*a3[1] + 8 * v142) < *(*a3[1] + 8 * v141))
        {
          *v11 = v141;
          *(a2 - 1) = v142;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v175 = (v12 - 2) >> 1;
        v176 = v175;
        do
        {
          v178 = v176;
          v179 = 4 * v176;
          if (v175 >= v179 >> 2)
          {
            v180 = v179 >> 1;
            v181 = (v179 >> 1) | 1;
            v182 = &v11[v181];
            v183 = v180 + 2;
            v184 = **a3;
            v185 = *a3[1];
            if (v183 < v12)
            {
              v186 = v182[1];
              v187 = *v182;
              v188 = *(v184 + 8 * v186);
              v189 = *(v184 + 8 * v187);
              if (v188 < v189 || v189 >= v188 && *(v185 + 8 * v186) < *(v185 + 8 * v187))
              {
                ++v182;
                v181 = v183;
              }
            }

            v190 = v11[v178];
            v191 = *v182;
            v192 = *(v184 + 8 * v190);
            v193 = *(v184 + 8 * *v182);
            if (v192 >= v193 && (v193 < v192 || *(v185 + 8 * v190) >= *(v185 + 8 * v191)))
            {
              v11[v178] = v191;
              if (v175 >= v181)
              {
                while (1)
                {
                  v194 = 2 * v181;
                  v181 = (2 * v181) | 1;
                  v177 = &v11[v181];
                  v195 = v194 + 2;
                  if (v195 < v12)
                  {
                    v196 = v177[1];
                    v197 = *v177;
                    v198 = *(v184 + 8 * v196);
                    v199 = *(v184 + 8 * v197);
                    if (v198 < v199 || v199 >= v198 && *(v185 + 8 * v196) < *(v185 + 8 * v197))
                    {
                      ++v177;
                      v181 = v195;
                    }
                  }

                  v200 = *v177;
                  v201 = *(v184 + 8 * *v177);
                  if (v192 < v201 || v201 >= v192 && *(v185 + 8 * v190) < *(v185 + 8 * v200))
                  {
                    break;
                  }

                  *v182 = v200;
                  v182 = v177;
                  if (v175 < v181)
                  {
                    goto LABEL_241;
                  }
                }
              }

              v177 = v182;
LABEL_241:
              *v177 = v190;
            }
          }

          v176 = v178 - 1;
        }

        while (v178);
        do
        {
          v203 = 0;
          v204 = *v11;
          v205 = *a3;
          v206 = a3[1];
          v207 = v11;
          do
          {
            v208 = v207;
            v209 = &v207[v203];
            v207 = v209 + 1;
            v210 = 2 * v203;
            result = (2 * v203) | 1;
            v203 = result;
            v211 = v210 + 2;
            if (v211 < v12)
            {
              v213 = v209[2];
              v212 = v209 + 2;
              result = v213;
              v214 = *(v212 - 1);
              v215 = *(*v205 + 8 * v213);
              v216 = *(*v205 + 8 * v214);
              if (v215 < v216 || v216 >= v215 && (result = *(*v206 + 8 * result), result < *(*v206 + 8 * v214)))
              {
                v207 = v212;
                v203 = v211;
              }
            }

            *v208 = *v207;
          }

          while (v203 <= ((v12 - 2) >> 1));
          if (v207 == --a2)
          {
            *v207 = v204;
          }

          else
          {
            *v207 = *a2;
            *a2 = v204;
            v217 = (v207 - v11 + 4) >> 2;
            v218 = v217 - 2;
            if (v217 >= 2)
            {
              v219 = v218 >> 1;
              v220 = &v11[v218 >> 1];
              v221 = *v220;
              v222 = *v207;
              v223 = **a3;
              v224 = *a3[1];
              v225 = *(v223 + 8 * *v207);
              result = *(v223 + 8 * *v220);
              if (v225 < result || result >= v225 && (result = *(v224 + 8 * v222), result < *(v224 + 8 * v221)))
              {
                *v207 = v221;
                if (v218 >= 2)
                {
                  while (1)
                  {
                    v227 = v219 - 1;
                    v219 = (v219 - 1) >> 1;
                    v226 = &v11[v219];
                    v228 = *v226;
                    result = *(v223 + 8 * *v226);
                    if (v225 >= result)
                    {
                      if (result < v225)
                      {
                        break;
                      }

                      result = *(v224 + 8 * v222);
                      if (result >= *(v224 + 8 * v228))
                      {
                        break;
                      }
                    }

                    *v220 = v228;
                    v220 = &v11[v219];
                    if (v227 <= 1)
                    {
                      goto LABEL_279;
                    }
                  }
                }

                v226 = v220;
LABEL_279:
                *v226 = v222;
              }
            }
          }
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v11[v12 >> 1];
    v15 = v14;
    v16 = **a3;
    v17 = *a3[1];
    if (v12 >= 0x81)
    {
      v18 = *v14;
      v19 = *v11;
      v20 = *(v16 + 8 * *v11);
      v21 = *(v16 + 8 * *v14);
      if (v20 < v21 || v21 >= v20 && *(v17 + 8 * v19) < *(v17 + 8 * v18))
      {
        v22 = *v10;
        v23 = *(v16 + 8 * *v10);
        if (v21 < v23 || v23 >= v21 && *(v17 + 8 * v18) < *(v17 + 8 * v22))
        {
          *v11 = v22;
        }

        else
        {
          *v11 = v18;
          *v14 = v19;
          v42 = *v10;
          v43 = *(v16 + 8 * *v10);
          if (v20 >= v43 && (v43 < v20 || *(v17 + 8 * v19) >= *(v17 + 8 * v42)))
          {
            goto LABEL_34;
          }

          *v14 = v42;
        }

        *v10 = v19;
        goto LABEL_34;
      }

      v30 = *v10;
      v31 = *(v16 + 8 * *v10);
      if (v21 < v31 || v31 >= v21 && *(v17 + 8 * v18) < *(v17 + 8 * v30))
      {
        *v14 = v30;
        *v10 = v18;
        v32 = *v14;
        v33 = *v11;
        v34 = *(v16 + 8 * *v11);
        v35 = *(v16 + 8 * *v14);
        if (v34 < v35 || v35 >= v34 && *(v17 + 8 * v33) < *(v17 + 8 * v32))
        {
          *v11 = v32;
          *v14 = v33;
        }
      }

LABEL_34:
      v44 = v13 - 1;
      v45 = v11[v13 - 1];
      v46 = v11[1];
      v47 = *(v16 + 8 * v46);
      v48 = *(v16 + 8 * v45);
      if (v47 < v48 || v48 >= v47 && *(v17 + 8 * v46) < *(v17 + 8 * v45))
      {
        v49 = *(a2 - 2);
        v50 = *(v16 + 8 * v49);
        if (v48 < v50 || v50 >= v48 && *(v17 + 8 * v45) < *(v17 + 8 * v49))
        {
          v11[1] = v49;
        }

        else
        {
          v11[1] = v45;
          v11[v44] = v46;
          v59 = *(a2 - 2);
          v60 = *(v16 + 8 * v59);
          if (v47 >= v60 && (v60 < v47 || *(v17 + 8 * v46) >= *(v17 + 8 * v59)))
          {
            goto LABEL_52;
          }

          v11[v44] = v59;
        }

        *(a2 - 2) = v46;
        goto LABEL_52;
      }

      v51 = *(a2 - 2);
      v52 = *(v16 + 8 * v51);
      if (v48 < v52 || v52 >= v48 && *(v17 + 8 * v45) < *(v17 + 8 * v51))
      {
        v11[v44] = v51;
        *(a2 - 2) = v45;
        v53 = v11[v44];
        v54 = v11[1];
        v55 = *(v16 + 8 * v54);
        v56 = *(v16 + 8 * v53);
        if (v55 < v56 || v56 >= v55 && *(v17 + 8 * v54) < *(v17 + 8 * v53))
        {
          v11[1] = v53;
          v11[v44] = v54;
        }
      }

LABEL_52:
      v63 = v14[1];
      v61 = v14 + 1;
      v62 = v63;
      v64 = v11[2];
      v65 = *(v16 + 8 * v64);
      v66 = *(v16 + 8 * v63);
      if (v65 < v66 || v66 >= v65 && *(v17 + 8 * v64) < *(v17 + 8 * v62))
      {
        v67 = *(a2 - 3);
        v68 = *(v16 + 8 * v67);
        if (v66 < v68 || v68 >= v66 && *(v17 + 8 * v62) < *(v17 + 8 * v67))
        {
          v11[2] = v67;
        }

        else
        {
          v11[2] = v62;
          *v61 = v64;
          v75 = *(a2 - 3);
          v76 = *(v16 + 8 * v75);
          if (v65 >= v76 && (v76 < v65 || *(v17 + 8 * v64) >= *(v17 + 8 * v75)))
          {
            goto LABEL_65;
          }

          *v61 = v75;
        }

        *(a2 - 3) = v64;
        goto LABEL_65;
      }

      v69 = *(a2 - 3);
      v70 = *(v16 + 8 * v69);
      if (v66 < v70 || v70 >= v66 && *(v17 + 8 * v62) < *(v17 + 8 * v69))
      {
        *v61 = v69;
        *(a2 - 3) = v62;
        v71 = *v61;
        v72 = v11[2];
        v73 = *(v16 + 8 * v72);
        v74 = *(v16 + 8 * *v61);
        if (v73 < v74 || v74 >= v73 && *(v17 + 8 * v72) < *(v17 + 8 * v71))
        {
          v11[2] = v71;
          *v61 = v72;
        }
      }

LABEL_65:
      v77 = v11[v44];
      v78 = *v15;
      v79 = *(v16 + 8 * v77);
      v80 = *(v16 + 8 * *v15);
      if (v79 < v80 || v80 >= v79 && *(v17 + 8 * v77) < *(v17 + 8 * v78))
      {
        v81 = *v61;
        result = *(v16 + 8 * *v61);
        if (v80 < result || result >= v80 && *(v17 + 8 * v78) < *(v17 + 8 * v81))
        {
          v11[v44] = v81;
        }

        else
        {
          v11[v44] = v78;
          *v15 = v77;
          if (v79 >= result && (result < v79 || *(v17 + 8 * v77) >= *(v17 + 8 * v81)))
          {
            v78 = v77;
            goto LABEL_78;
          }

          *v15 = v81;
          v78 = v81;
        }
      }

      else
      {
        v82 = *v61;
        result = *(v16 + 8 * *v61);
        if (v80 >= result && (result < v80 || *(v17 + 8 * v78) >= *(v17 + 8 * v82)))
        {
          goto LABEL_78;
        }

        *v15 = v82;
        *v61 = v78;
        if (v79 >= result && (result < v79 || *(v17 + 8 * v77) >= *(v17 + 8 * v82)))
        {
          v78 = v82;
          goto LABEL_78;
        }

        v11[v44] = v82;
        v61 = v15;
        v78 = v77;
      }

      *v61 = v77;
LABEL_78:
      v83 = *v11;
      *v11 = v78;
      *v15 = v83;
      goto LABEL_79;
    }

    v24 = *v11;
    v25 = *v14;
    v26 = *(v16 + 8 * *v15);
    v27 = *(v16 + 8 * *v11);
    if (v26 >= v27 && (v27 < v26 || *(v17 + 8 * v25) >= *(v17 + 8 * v24)))
    {
      v36 = *v10;
      v37 = *(v16 + 8 * *v10);
      if (v27 < v37 || v37 >= v27 && *(v17 + 8 * v24) < *(v17 + 8 * v36))
      {
        *v11 = v36;
        *v10 = v24;
        v38 = *v11;
        v39 = *v15;
        v40 = *(v16 + 8 * *v15);
        v41 = *(v16 + 8 * *v11);
        if (v40 < v41 || v41 >= v40 && *(v17 + 8 * v39) < *(v17 + 8 * v38))
        {
          *v15 = v38;
          *v11 = v39;
        }
      }

      goto LABEL_79;
    }

    v28 = *v10;
    v29 = *(v16 + 8 * *v10);
    if (v27 < v29 || v29 >= v27 && *(v17 + 8 * v24) < *(v17 + 8 * v28))
    {
      *v15 = v28;
    }

    else
    {
      *v15 = v24;
      *v11 = v25;
      v57 = *v10;
      v58 = *(v16 + 8 * *v10);
      if (v26 >= v58 && (v58 < v26 || *(v17 + 8 * v25) >= *(v17 + 8 * v57)))
      {
        goto LABEL_79;
      }

      *v11 = v57;
    }

    *v10 = v25;
LABEL_79:
    --a4;
    v84 = *v11;
    if ((a5 & 1) != 0 || (v85 = *(v11 - 1), v86 = *(v16 + 8 * v84), v87 = *(v16 + 8 * v85), v86 < v87) || v87 >= v86 && *(v17 + 8 * v84) < *(v17 + 8 * v85))
    {
      v88 = 0;
      v89 = **a3;
      v90 = *a3[1];
      v91 = *(v89 + 8 * v84);
      while (1)
      {
        v92 = v11[v88 + 1];
        v93 = *(v89 + 8 * v92);
        if (v91 >= v93 && (v93 < v91 || *(v90 + 8 * v84) >= *(v90 + 8 * v92)))
        {
          break;
        }

        ++v88;
      }

      v94 = &v11[v88];
      v95 = &v11[v88 + 1];
      if (v88 * 4)
      {
        v96 = *v10;
        v97 = *(v89 + 8 * v96);
        v98 = a2 - 1;
        if (v91 >= v97)
        {
          v98 = a2 - 1;
          do
          {
            if (v97 >= v91 && *(v90 + 8 * v84) < *(v90 + 8 * v96))
            {
              break;
            }

            v99 = *--v98;
            v96 = v99;
            v97 = *(v89 + 8 * v99);
          }

          while (v91 >= v97);
        }
      }

      else
      {
        v98 = a2;
        if (v95 < a2)
        {
          v100 = *v10;
          v101 = *(v89 + 8 * v100);
          v98 = a2 - 1;
          if (v91 >= v101)
          {
            v98 = a2 - 1;
            do
            {
              if (v101 < v91)
              {
                if (v95 >= v98)
                {
                  break;
                }
              }

              else if (v95 >= v98 || *(v90 + 8 * v84) < *(v90 + 8 * v100))
              {
                break;
              }

              v112 = *--v98;
              v100 = v112;
              v101 = *(v89 + 8 * v112);
            }

            while (v91 >= v101);
          }
        }
      }

      if (v95 < v98)
      {
        v102 = *v98;
        v103 = v92;
        v104 = v95;
        v105 = v98;
        do
        {
          *v104++ = v102;
          *v105 = v103;
          while (1)
          {
            v103 = *v104;
            v106 = *(v89 + 8 * *v104);
            if (v91 >= v106 && (v106 < v91 || *(v90 + 8 * v84) >= *(v90 + 8 * v103)))
            {
              break;
            }

            ++v104;
          }

          v107 = *--v105;
          v102 = v107;
          v108 = *(v89 + 8 * v107);
          if (v91 >= v108)
          {
            v109 = v102;
            do
            {
              if (v108 >= v91 && *(v90 + 8 * v84) < *(v90 + 8 * v109))
              {
                break;
              }

              v110 = *--v105;
              v102 = v110;
              v109 = v110;
              v108 = *(v89 + 8 * v110);
            }

            while (v91 >= v108);
          }
        }

        while (v104 < v105);
        v94 = v104 - 1;
      }

      if (v94 != v11)
      {
        *v11 = *v94;
      }

      *v94 = v84;
      if (v95 < v98)
      {
        goto LABEL_117;
      }

      v111 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::TestFeasibilityImpl(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::OrthogonalPackingOptions const&)::$_1 &,int *>(v11, v94, a3);
      v11 = v94 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::TestFeasibilityImpl(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::OrthogonalPackingOptions const&)::$_1 &,int *>(v94 + 1, a2, a3);
      if (result)
      {
        a2 = v94;
        if (v111)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v111)
      {
LABEL_117:
        result = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::OrthogonalPackingInfeasibilityDetector::TestFeasibilityImpl(absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,operations_research::sat::OrthogonalPackingOptions const&)::$_1 &,int *,false>(v9, v94, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v94 + 1;
      }
    }

    else
    {
      v113 = *v10;
      v114 = *(v16 + 8 * *v10);
      if (v114 < v86 || v86 >= v114 && *(v17 + 8 * v113) < *(v17 + 8 * v84))
      {
        do
        {
          v116 = v11[1];
          ++v11;
          v115 = v116;
          v117 = *(v16 + 8 * v116);
        }

        while (v117 >= v86 && (v86 < v117 || *(v17 + 8 * v115) >= *(v17 + 8 * v84)));
      }

      else
      {
        for (++v11; v11 < a2; ++v11)
        {
          v118 = *v11;
          v119 = *(v16 + 8 * v118);
          if (v119 < v86 || v86 >= v119 && *(v17 + 8 * v118) < *(v17 + 8 * v84))
          {
            break;
          }
        }
      }

      v120 = a2;
      if (v11 < a2)
      {
        v120 = a2 - 1;
        while (v114 < v86 || v86 >= v114 && *(v17 + 8 * v113) < *(v17 + 8 * v84))
        {
          v121 = *--v120;
          v113 = v121;
          v114 = *(v16 + 8 * v121);
        }
      }

      if (v11 < v120)
      {
        v122 = *v11;
        v123 = *v120;
        do
        {
          *v11 = v123;
          *v120 = v122;
          v124 = v11[1];
          ++v11;
          v122 = v124;
          v125 = *(v16 + 8 * v124);
          if (v125 >= v86)
          {
            v126 = v122;
            do
            {
              if (v86 >= v125 && *(v17 + 8 * v126) < *(v17 + 8 * v84))
              {
                break;
              }

              v127 = v11[1];
              ++v11;
              v122 = v127;
              v126 = v127;
              v125 = *(v16 + 8 * v127);
            }

            while (v125 >= v86);
          }

          do
          {
            do
            {
              v128 = *--v120;
              v123 = v128;
              v129 = *(v16 + 8 * v128);
            }

            while (v129 < v86);
          }

          while (v86 >= v129 && *(v17 + 8 * v123) < *(v17 + 8 * v84));
        }

        while (v11 < v120);
      }

      v130 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v130;
      }

      a5 = 0;
      *v130 = v84;
    }
  }

  v160 = *a3;
  v161 = a3[1];
  if ((a5 & 1) == 0)
  {
    if (v11 != a2)
    {
      v235 = v11 + 1;
      if (v11 + 1 != a2)
      {
        v236 = *v160;
        v237 = *v161;
        do
        {
          v238 = v9;
          v9 = v235;
          v240 = *v238;
          v239 = v238[1];
          v241 = *(v236 + 8 * *v238);
          v242 = *(v236 + 8 * v239);
          if (v241 < v242 || v242 >= v241 && *(v237 + 8 * v240) < *(v237 + 8 * v239))
          {
            do
            {
              do
              {
                v243 = v238;
                v244 = v240;
                v245 = *--v238;
                v240 = v245;
                v238[2] = v244;
                v246 = *(v236 + 8 * v245);
              }

              while (v246 < v242);
            }

            while (v242 >= v246 && *(v237 + 8 * v240) < *(v237 + 8 * v239));
            *v243 = v239;
          }

          v235 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }
    }

    return result;
  }

  if (v11 == a2)
  {
    return result;
  }

  v162 = v11 + 1;
  if (v11 + 1 == a2)
  {
    return result;
  }

  v163 = 0;
  v164 = *v160;
  v165 = *v161;
  v166 = v11;
  while (2)
  {
    v168 = v166;
    v166 = v162;
    v170 = *v168;
    v169 = v168[1];
    v171 = *(v164 + 8 * *v168);
    v172 = *(v164 + 8 * v169);
    if (v171 >= v172 && (v172 < v171 || *(v165 + 8 * v170) >= *(v165 + 8 * v169)))
    {
      goto LABEL_225;
    }

    v168[1] = v170;
    v167 = v11;
    if (v168 == v11)
    {
      goto LABEL_224;
    }

    v173 = v163;
    while (2)
    {
      v174 = *(v11 + v173 - 4);
      result = *(v164 + 8 * v174);
      if (result < v172)
      {
LABEL_229:
        --v168;
        *(v11 + v173) = v174;
        v173 -= 4;
        if (!v173)
        {
          v167 = v11;
          goto LABEL_224;
        }

        continue;
      }

      break;
    }

    if (v172 >= result)
    {
      result = *(v165 + 8 * v174);
      if (result >= *(v165 + 8 * v169))
      {
        v167 = v168;
        goto LABEL_224;
      }

      goto LABEL_229;
    }

    v167 = (v11 + v173);
LABEL_224:
    *v167 = v169;
LABEL_225:
    v162 = v166 + 1;
    v163 += 4;
    if (v166 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}