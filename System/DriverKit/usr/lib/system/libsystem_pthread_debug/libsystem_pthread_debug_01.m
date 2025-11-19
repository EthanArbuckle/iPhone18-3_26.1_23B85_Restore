uint64_t _pthread_rwlock_lock_wait(uint64_t a1, char a2)
{
  do
  {
    v2 = *(a1 + 16);
    if (a2)
    {
      v6 = __psynch_rw_rdlock();
    }

    else
    {
      v6 = __psynch_rw_wrlock();
    }

    if (v6 == -1)
    {
      v7 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    }

    else
    {
      v7 = 0;
    }
  }

  while (v7 == 4);
  if (v7)
  {
    qword_28028 = "BUG IN LIBPTHREAD: kernel rwlock returned unknown error";
    qword_28058 = v7;
    __break(0xB001u);
  }

  else
  {
    v15 = a1;
    v14 = v6;
    v13 = (v6 & 0x40) != 0;
    v17 = a1;
    v16 = &v12;
    v12 = ((a1 + 47) & 0xFFFFFFFFFFFFFFF0);
    v11 = 0uLL;
    v10 = 0uLL;
    v20 = v12;
    v19 = &v11;
    v18 = 1;
    *&v11 = *v12;
    do
    {
      v10 = v11;
      if (v13 || (BYTE4(v11) & 2) != 0)
      {
        LODWORD(v10) = _pthread_rwlock_modbits(v11, v14, BYTE4(v11) & 4);
        DWORD1(v10) += v14 & 0xFFFFFF00;
        if (!v13)
        {
          DWORD1(v10) &= 0xFFFFFF00;
        }

        DWORD1(v10) &= ~4u;
      }

      v33 = v12;
      v32 = &v11;
      v31 = &v10;
      v30 = 1;
      v29 = 0;
      v28 = 0;
      v27 = v11;
      v26 = 0;
      v24 = v10;
      v23 = v10;
      v25 = v10;
      v3 = v11;
      v4 = v11;
      atomic_compare_exchange_strong_explicit(v12, &v4, v10, memory_order_relaxed, memory_order_relaxed);
      if (v4 != v3)
      {
        v27 = v4;
      }

      v22 = v4 == v3;
      v26 = v4 == v3;
      *v32 = v27;
      v21 = v26;
      v29 = v26;
      if (v26)
      {
        v28 = 1;
      }
    }

    while (!v28);
  }

  return v7;
}

int pthread_rwlock_rdlock(pthread_rwlock_t *a1)
{
  v11 = a1;
  v10 = 1;
  v9 = 0;
  v13 = a1;
  if (a1->__sig != 1381452875)
  {
    return _pthread_rwlock_lock_slow(v11, v10 & 1, v9 & 1);
  }

  v15 = v11;
  v14 = &v8;
  v8 = (&v11->__opaque[39] & 0xFFFFFFFFFFFFFFF0);
  v7 = 0uLL;
  v6 = 0uLL;
  v33 = v8;
  v32 = &v7;
  v31 = 3;
  v7 = *v8;
  if ((v7 & 2) != 0)
  {
    return _pthread_rwlock_lock_slow(v11, v10 & 1, v9 & 1);
  }

  v5 = 0;
  do
  {
    v6 = v7;
    if (v10)
    {
      v5 = (v7 & 5) == 0;
    }

    else
    {
      v5 = (v7 & 0x40) != 0;
    }

    if ((v9 & 1) == 0 || v5)
    {
      if (!v5)
      {
        return _pthread_rwlock_lock_slow(v11, v10 & 1, v9 & 1);
      }

      if (v10)
      {
        if (diff_genseq(v7, SDWORD2(v7)) >= 0xFFFFFF00)
        {
          return _pthread_rwlock_lock_slow(v11, v10 & 1, v9 & 1);
        }

        LODWORD(v6) = v6 & 0xFFFFFFBF;
      }

      else
      {
        LODWORD(v6) = v6 & 0xFFFFFF00;
        LODWORD(v6) = v6 | 0x83;
      }

      LODWORD(v6) = v6 + 256;
      DWORD1(v6) += 256;
    }

    v30 = v8;
    v29 = &v7;
    v28 = &v6;
    v27 = 1;
    v26 = 0;
    v25 = 0;
    v24 = v7;
    v23 = 0;
    v21 = v6;
    v20 = v6;
    v22 = v6;
    v1 = v7;
    v2 = v7;
    atomic_compare_exchange_strong_explicit(v8, &v2, v6, memory_order_acquire, memory_order_acquire);
    if (v2 != v1)
    {
      v24 = v2;
    }

    v19 = v2 == v1;
    v23 = v2 == v1;
    *v29 = v24;
    v18 = v23;
    v26 = v23;
    if (v23)
    {
      v25 = 1;
    }
  }

  while (!v25);
  if (v5)
  {
    if ((v10 & 1) == 0)
    {
      v17 = v11;
      v16 = &v4;
      v4 = (&v11->__opaque[23] & 0xFFFFFFFFFFFFFFF8);
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      *v4 = *(StatusReg - 8);
    }

    return 0;
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      __break(1u);
      JUMPOUT(0x187D8);
    }

    return 16;
  }
}

int pthread_rwlock_tryrdlock(pthread_rwlock_t *a1)
{
  v11 = a1;
  v10 = 1;
  v9 = 1;
  v13 = a1;
  if (a1->__sig != 1381452875)
  {
    return _pthread_rwlock_lock_slow(v11, v10 & 1, v9 & 1);
  }

  v15 = v11;
  v14 = &v8;
  v8 = (&v11->__opaque[39] & 0xFFFFFFFFFFFFFFF0);
  v7 = 0uLL;
  v6 = 0uLL;
  v33 = v8;
  v32 = &v7;
  v31 = 3;
  v7 = *v8;
  if ((v7 & 2) != 0)
  {
    return _pthread_rwlock_lock_slow(v11, v10 & 1, v9 & 1);
  }

  v5 = 0;
  do
  {
    v6 = v7;
    if (v10)
    {
      v5 = (v7 & 5) == 0;
    }

    else
    {
      v5 = (v7 & 0x40) != 0;
    }

    if ((v9 & 1) == 0 || v5)
    {
      if (!v5)
      {
        return _pthread_rwlock_lock_slow(v11, v10 & 1, v9 & 1);
      }

      if (v10)
      {
        if (diff_genseq(v7, SDWORD2(v7)) >= 0xFFFFFF00)
        {
          return _pthread_rwlock_lock_slow(v11, v10 & 1, v9 & 1);
        }

        LODWORD(v6) = v6 & 0xFFFFFFBF;
      }

      else
      {
        LODWORD(v6) = v6 & 0xFFFFFF00;
        LODWORD(v6) = v6 | 0x83;
      }

      LODWORD(v6) = v6 + 256;
      DWORD1(v6) += 256;
    }

    v30 = v8;
    v29 = &v7;
    v28 = &v6;
    v27 = 1;
    v26 = 0;
    v25 = 0;
    v24 = v7;
    v23 = 0;
    v21 = v6;
    v20 = v6;
    v22 = v6;
    v1 = v7;
    v2 = v7;
    atomic_compare_exchange_strong_explicit(v8, &v2, v6, memory_order_acquire, memory_order_acquire);
    if (v2 != v1)
    {
      v24 = v2;
    }

    v19 = v2 == v1;
    v23 = v2 == v1;
    *v29 = v24;
    v18 = v23;
    v26 = v23;
    if (v23)
    {
      v25 = 1;
    }
  }

  while (!v25);
  if (v5)
  {
    if ((v10 & 1) == 0)
    {
      v17 = v11;
      v16 = &v4;
      v4 = (&v11->__opaque[23] & 0xFFFFFFFFFFFFFFF8);
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      *v4 = *(StatusReg - 8);
    }

    return 0;
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      __break(1u);
      JUMPOUT(0x18E18);
    }

    return 16;
  }
}

int pthread_rwlock_wrlock(pthread_rwlock_t *a1)
{
  v11 = a1;
  v10 = 0;
  v9 = 0;
  v13 = a1;
  if (a1->__sig != 1381452875)
  {
    return _pthread_rwlock_lock_slow(v11, v10 & 1, v9 & 1);
  }

  v15 = v11;
  v14 = &v8;
  v8 = (&v11->__opaque[39] & 0xFFFFFFFFFFFFFFF0);
  v7 = 0uLL;
  v6 = 0uLL;
  v33 = v8;
  v32 = &v7;
  v31 = 3;
  v7 = *v8;
  if ((v7 & 2) != 0)
  {
    return _pthread_rwlock_lock_slow(v11, v10 & 1, v9 & 1);
  }

  v5 = 0;
  do
  {
    v6 = v7;
    if (v10)
    {
      v5 = (v7 & 5) == 0;
    }

    else
    {
      v5 = (v7 & 0x40) != 0;
    }

    if ((v9 & 1) == 0 || v5)
    {
      if (!v5)
      {
        return _pthread_rwlock_lock_slow(v11, v10 & 1, v9 & 1);
      }

      if (v10)
      {
        if (diff_genseq(v7, SDWORD2(v7)) >= 0xFFFFFF00)
        {
          return _pthread_rwlock_lock_slow(v11, v10 & 1, v9 & 1);
        }

        LODWORD(v6) = v6 & 0xFFFFFFBF;
      }

      else
      {
        LODWORD(v6) = v6 & 0xFFFFFF00;
        LODWORD(v6) = v6 | 0x83;
      }

      LODWORD(v6) = v6 + 256;
      DWORD1(v6) += 256;
    }

    v30 = v8;
    v29 = &v7;
    v28 = &v6;
    v27 = 1;
    v26 = 0;
    v25 = 0;
    v24 = v7;
    v23 = 0;
    v21 = v6;
    v20 = v6;
    v22 = v6;
    v1 = v7;
    v2 = v7;
    atomic_compare_exchange_strong_explicit(v8, &v2, v6, memory_order_acquire, memory_order_acquire);
    if (v2 != v1)
    {
      v24 = v2;
    }

    v19 = v2 == v1;
    v23 = v2 == v1;
    *v29 = v24;
    v18 = v23;
    v26 = v23;
    if (v23)
    {
      v25 = 1;
    }
  }

  while (!v25);
  if (v5)
  {
    if ((v10 & 1) == 0)
    {
      v17 = v11;
      v16 = &v4;
      v4 = (&v11->__opaque[23] & 0xFFFFFFFFFFFFFFF8);
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      *v4 = *(StatusReg - 8);
    }

    return 0;
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      __break(1u);
      JUMPOUT(0x19454);
    }

    return 16;
  }
}

int pthread_rwlock_trywrlock(pthread_rwlock_t *a1)
{
  v11 = a1;
  v10 = 0;
  v9 = 1;
  v13 = a1;
  if (a1->__sig != 1381452875)
  {
    return _pthread_rwlock_lock_slow(v11, v10 & 1, v9 & 1);
  }

  v15 = v11;
  v14 = &v8;
  v8 = (&v11->__opaque[39] & 0xFFFFFFFFFFFFFFF0);
  v7 = 0uLL;
  v6 = 0uLL;
  v33 = v8;
  v32 = &v7;
  v31 = 3;
  v7 = *v8;
  if ((v7 & 2) != 0)
  {
    return _pthread_rwlock_lock_slow(v11, v10 & 1, v9 & 1);
  }

  v5 = 0;
  do
  {
    v6 = v7;
    if (v10)
    {
      v5 = (v7 & 5) == 0;
    }

    else
    {
      v5 = (v7 & 0x40) != 0;
    }

    if ((v9 & 1) == 0 || v5)
    {
      if (!v5)
      {
        return _pthread_rwlock_lock_slow(v11, v10 & 1, v9 & 1);
      }

      if (v10)
      {
        if (diff_genseq(v7, SDWORD2(v7)) >= 0xFFFFFF00)
        {
          return _pthread_rwlock_lock_slow(v11, v10 & 1, v9 & 1);
        }

        LODWORD(v6) = v6 & 0xFFFFFFBF;
      }

      else
      {
        LODWORD(v6) = v6 & 0xFFFFFF00;
        LODWORD(v6) = v6 | 0x83;
      }

      LODWORD(v6) = v6 + 256;
      DWORD1(v6) += 256;
    }

    v30 = v8;
    v29 = &v7;
    v28 = &v6;
    v27 = 1;
    v26 = 0;
    v25 = 0;
    v24 = v7;
    v23 = 0;
    v21 = v6;
    v20 = v6;
    v22 = v6;
    v1 = v7;
    v2 = v7;
    atomic_compare_exchange_strong_explicit(v8, &v2, v6, memory_order_acquire, memory_order_acquire);
    if (v2 != v1)
    {
      v24 = v2;
    }

    v19 = v2 == v1;
    v23 = v2 == v1;
    *v29 = v24;
    v18 = v23;
    v26 = v23;
    if (v23)
    {
      v25 = 1;
    }
  }

  while (!v25);
  if (v5)
  {
    if ((v10 & 1) == 0)
    {
      v17 = v11;
      v16 = &v4;
      v4 = (&v11->__opaque[23] & 0xFFFFFFFFFFFFFFF8);
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      *v4 = *(StatusReg - 8);
    }

    return 0;
  }

  else
  {
    if ((v9 & 1) == 0)
    {
      __break(1u);
      JUMPOUT(0x19A94);
    }

    return 16;
  }
}

uint64_t _pthread_rwlock_unlock_slow(void *a1, int a2)
{
  v26 = a1;
  v25 = a2;
  v24 = 0;
  v23 = 3;
  v29 = a1;
  v28 = 0;
  v31 = a1;
  if (*a1 == 1381452875)
  {
    v30 = v28;
  }

  else
  {
    v30 = _pthread_rwlock_check_init_slow(v29);
  }

  v24 = v30;
  if (v30)
  {
    return v24;
  }

  else
  {
    v33 = v26;
    v32 = &v22;
    v22 = ((v26 + 47) & 0xFFFFFFFFFFFFFFF0);
    v21 = 0uLL;
    v20 = 0uLL;
    v38 = v22;
    v37 = &v21;
    v36 = v23;
    v21 = *v22;
    if ((v21 & 0x40) != 0)
    {
      return 0;
    }

    else
    {
      if ((v21 & 2) != 0)
      {
        v35 = v26;
        v34 = &v19;
        v19 = ((v26 + 31) & 0xFFFFFFFFFFFFFFF8);
        *v19 = 0;
      }

      do
      {
        v23 &= ~v25;
        v20 = v21;
        if ((v23 & 2) != 0)
        {
          DWORD2(v20) += 256;
        }

        v18 = 0;
        v17 = v21 & 0xFFFFFF00;
        if (DWORD2(v20) == (v21 & 0xFFFFFF00))
        {
          LODWORD(v20) = v17 | 0xC0;
          DWORD1(v20) = v17 | 1;
        }

        else if ((v21 & 7) != 0 && DWORD2(v20) == (DWORD1(v21) & 0xFFFFFF00))
        {
          v18 = 1;
          LODWORD(v20) = v17 | 1;
          DWORD1(v20) |= 2u;
          if ((v21 & 4) != 0)
          {
            DWORD1(v20) |= 4u;
          }
        }

        v16 = v23;
        v65 = v22;
        v64 = &v21;
        v63 = &v20;
        v62 = v23;
        v61 = 0;
        v60 = 0;
        switch(v23)
        {
          case 1:
            v52 = *v64;
            v51 = 0;
            v49 = *v63;
            v48 = v49;
            v50 = v49;
            v10 = v52;
            v11 = v52;
            atomic_compare_exchange_strong_explicit(v65, &v11, v49, memory_order_release, memory_order_relaxed);
            if (v11 != v10)
            {
              v52 = v11;
            }

            v47 = v11 == v10;
            v51 = v11 == v10;
            *v64 = v52;
            v46 = v51;
            v61 = v51;
            if (v51)
            {
              v60 = 1;
            }

            break;
          case 2:
            v45 = *(v64 + 2);
            v44 = 0;
            v42 = *(v63 + 2);
            v41 = v42;
            v43 = v42;
            v12 = v45;
            v13 = v45;
            atomic_compare_exchange_strong_explicit((v65 + 8), &v13, v42, memory_order_release, memory_order_relaxed);
            if (v13 != v12)
            {
              v45 = v13;
            }

            v40 = v13 == v12;
            v44 = v13 == v12;
            *(v64 + 2) = v45;
            v39 = v44;
            v61 = v44;
            if (v44)
            {
              v60 = 2;
            }

            break;
          case 3:
            v59 = *v64;
            v58 = 0;
            v56 = *v63;
            v55 = v56;
            v57 = v56;
            _X1 = *(&v59 + 1);
            _KR00_16 = v56;
            __asm { CASPL           X0, X1, X2, X3, [X8] }

            *&v9 = _X0;
            *(&v9 + 1) = *(&v59 + 1);
            v15 = _X0 == v59;
            if ((_X0 ^ v59) != 0)
            {
              v59 = v9;
            }

            v54 = v15;
            v58 = v15;
            *v64 = v59;
            v53 = v58;
            v61 = v58 != 0;
            if (v58)
            {
              v60 = 3;
            }

            break;
          default:
            __break(1u);
            JUMPOUT(0x1A088);
        }

        v25 = v60;
      }

      while (v16 != v60);
      if (v18)
      {
        return _pthread_rwlock_unlock_drop(v26);
      }

      return v24;
    }
  }
}

uint64_t _pthread_rwlock_unlock_drop(uint64_t a1)
{
  do
  {
    v1 = *(a1 + 16);
    if (__psynch_rw_unlock() == -1)
    {
      v3 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    }

    else
    {
      v3 = 0;
    }
  }

  while (v3 == 4);
  if (v3)
  {
    qword_28028 = "BUG IN LIBPTHREAD: kernel rwunlock returned unknown error";
    qword_28058 = v3;
    __break(0xB001u);
  }

  return v3;
}

int pthread_rwlock_unlock(pthread_rwlock_t *a1)
{
  v24 = a1;
  v23 = 3;
  v22 = 0;
  v26 = a1;
  if (a1->__sig != 1381452875)
  {
    return _pthread_rwlock_unlock_slow(v24, v22);
  }

  v28 = v24;
  v27 = &v21;
  v21 = (&v24->__opaque[39] & 0xFFFFFFFFFFFFFFF0);
  v20 = 0uLL;
  v19 = 0uLL;
  v33 = v21;
  v32 = &v20;
  v31 = v23;
  v20 = *v21;
  if ((v20 & 0x40) != 0)
  {
    return 0;
  }

  if ((v20 & 2) != 0)
  {
    v30 = v24;
    v29 = &v18;
    v18 = (&v24->__opaque[23] & 0xFFFFFFFFFFFFFFF8);
    *v18 = 0;
  }

  do
  {
    if (v22)
    {
      return _pthread_rwlock_unlock_slow(v24, v22);
    }

    v19 = v20;
    if ((v23 & 2) != 0)
    {
      DWORD2(v19) += 256;
    }

    v17 = v20 & 0xFFFFFF00;
    if (DWORD2(v19) == (v20 & 0xFFFFFF00))
    {
      LODWORD(v19) = v17 | 0xC0;
      DWORD1(v19) = v17 | 1;
    }

    else
    {
      v16 = 1;
      if ((v20 & 7) != 0)
      {
        v16 = DWORD2(v19) != (DWORD1(v20) & 0xFFFFFF00);
      }

      if (!v16)
      {
        return _pthread_rwlock_unlock_slow(v24, v22);
      }
    }

    v15 = v23;
    v60 = v21;
    v59 = &v20;
    v58 = &v19;
    v57 = v23;
    v56 = 0;
    v55 = 0;
    switch(v23)
    {
      case 1:
        v47 = *v59;
        v46 = 0;
        v44 = *v58;
        v43 = v44;
        v45 = v44;
        v9 = v47;
        v10 = v47;
        atomic_compare_exchange_strong_explicit(v60, &v10, v44, memory_order_release, memory_order_relaxed);
        if (v10 != v9)
        {
          v47 = v10;
        }

        v42 = v10 == v9;
        v46 = v10 == v9;
        *v59 = v47;
        v41 = v46;
        v56 = v46;
        if (v46)
        {
          v55 = 1;
        }

        break;
      case 2:
        v40 = *(v59 + 2);
        v39 = 0;
        v37 = *(v58 + 2);
        v36 = v37;
        v38 = v37;
        v11 = v40;
        v12 = v40;
        atomic_compare_exchange_strong_explicit((v60 + 8), &v12, v37, memory_order_release, memory_order_relaxed);
        if (v12 != v11)
        {
          v40 = v12;
        }

        v35 = v12 == v11;
        v39 = v12 == v11;
        *(v59 + 2) = v40;
        v34 = v39;
        v56 = v39;
        if (v39)
        {
          v55 = 2;
        }

        break;
      case 3:
        v54 = *v59;
        v53 = 0;
        v51 = *v58;
        v50 = v51;
        v52 = v51;
        _X1 = *(&v54 + 1);
        _KR00_16 = v51;
        __asm { CASPL           X0, X1, X2, X3, [X8] }

        *&v8 = _X0;
        *(&v8 + 1) = *(&v54 + 1);
        v14 = _X0 == v54;
        if (_X0 != v54)
        {
          v54 = v8;
        }

        v49 = v14;
        v53 = v14;
        *v59 = v54;
        v48 = v53;
        v56 = v53 != 0;
        if (v53)
        {
          v55 = 3;
        }

        break;
      default:
        __break(1u);
        JUMPOUT(0x1A774);
    }

    v22 = v55;
  }

  while (v15 != v55);
  return 0;
}

uint64_t _pthread_rwlock_check_init_slow(uint64_t a1)
{
  v7 = 22;
  if (*a1 == 766030772)
  {
    v26 = a1 + 8;
    v25 = 327680;
    v27 = 3;
    v28 = 3;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = *(StatusReg + 24);
    v23 = 0;
    v22 = v24;
    v21 = v24;
    v1 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 8), &v1, v24, memory_order_acquire, memory_order_acquire);
    if (v1)
    {
      v23 = v1;
    }

    v20 = v1 == 0;
    if (v1)
    {
      os_unfair_lock_lock_with_options();
    }

    if (*a1 == 766030772)
    {
      v15 = a1;
      v14 = 0;
      v19 = a1;
      v18 = &v13;
      v13 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
      v17 = a1;
      v16 = &v12;
      v12 = ((a1 + 47) & 0xFFFFFFFFFFFFFFF0);
      if (v13 != (a1 + 24))
      {
        *(v15 + 12) = *(v15 + 12) & 0xDFFFFFFF | 0x20000000;
        *(v15 + 24) = -1;
      }

      if (v12 != (v15 + 32))
      {
        v2 = v15;
        *(v15 + 32) = -1;
        *(v2 + 40) = -1;
      }

      v3 = v15;
      *(v15 + 48) = -1;
      *(v3 + 56) = -1;
      *v13 = 0;
      *&v11 = 0x1000000C0;
      DWORD2(v11) = 0;
      *v12 = v11;
      if (v14 && *(v14 + 8) == 1)
      {
        *(v15 + 12) = *(v15 + 12) & 0x3FFFFFFF | 0x40000000;
        *(v15 + 16) = 16;
      }

      else
      {
        *(v15 + 12) = *(v15 + 12) & 0x3FFFFFFF | 0x80000000;
        *(v15 + 16) = 32;
      }

      BYTE1(v10[2]) = 0;
      HIWORD(v10[2]) = 0;
      _platform_bzero();
      strcpy(v10, "KLWRKLWR");
      *(v15 + 64) = ~v15;
      *(v15 + 196) = v10[0];
      *(v15 + 20) = v10[0];
      v9 = v15;
      *(v15 + 4) = v10[2];
      atomic_store(v10[1], v9);
      v7 = 0;
    }

    else if (*a1 == 1381452875)
    {
      v7 = 0;
    }

    v35 = (a1 + 8);
    v36 = 3;
    v37 = 3;
    v38 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v34 = *(v38 + 24);
    v33 = 0;
    v32 = v34;
    v31 = 0;
    v4 = v34;
    v5 = v34;
    atomic_compare_exchange_strong_explicit((a1 + 8), &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != v4)
    {
      v32 = v5;
    }

    v30 = v5 == v4;
    if (v5 != v4)
    {
      os_unfair_lock_unlock(v35);
    }
  }

  else if (*a1 == 1381452875)
  {
    return 0;
  }

  return v7;
}

uint64_t _pthread_rwlock_modbits(int a1, unsigned __int8 a2, int a3)
{
  v4 = (a1 | a2) & 0xBF;
  if ((a2 & 1) == 0 && (a1 & 4) == 0)
  {
    v4 = (a1 | a2) & 0xBE;
  }

  if (a3 && (a3 & 4) != 0 && (v4 & 4) == 0 && (v4 & 2) == 0)
  {
    v4 |= 5u;
  }

  return a1 & 0xFFFFFF00 | v4;
}

int pthread_key_create(pthread_key_t *a1, void (__cdecl *a2)(void *))
{
  v4 = 35;
  os_unfair_lock_lock_with_options();
  for (i = 256; i < 0x300; ++i)
  {
    if (_pthread_key_set_destructor(i, a2))
    {
      *a1 = i;
      v4 = 0;
      break;
    }
  }

  os_unfair_lock_unlock(&__pthread_tsd_lock);
  return v4;
}

uint64_t _pthread_key_set_destructor(uint64_t a1, uint64_t a2)
{
  v4 = (&_pthread_keys + 8 * a1);
  v3 = 0;
  if (a2)
  {
    v3 = a2;
  }

  if (*v4)
  {
    v5 = 0;
  }

  else
  {
    *v4 = ~v3;
    v5 = 1;
  }

  return v5 & 1;
}

int pthread_key_delete(pthread_key_t a1)
{
  v3 = 22;
  os_unfair_lock_lock_with_options();
  if (a1 >= 0x100 && a1 < 0x300 && (_pthread_key_unset_destructor(a1) & 1) != 0)
  {
    os_unfair_lock_lock_with_options();
    for (i = __pthread_head; i; i = *(i + 2))
    {
      *&i[2 * a1 + 56] = 0;
    }

    os_unfair_lock_unlock(&_pthread_list_lock);
    v3 = 0;
  }

  os_unfair_lock_unlock(&__pthread_tsd_lock);
  return v3;
}

uint64_t _pthread_key_unset_destructor(uint64_t a1)
{
  if (_pthread_keys[a1])
  {
    _pthread_keys[a1] = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t _pthread_setspecific(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = 22;
  if (a2 >= 0xA && a2 < 0x300)
  {
    destructor = _pthread_key_get_destructor(a2, 0);
    if (a2 < 0x100 || (destructor & 1) != 0)
    {
      *(a1 + 224 + 8 * a2) = a3;
      v5 = 0;
      if (a2 < 0x100)
      {
        _pthread_key_set_destructor(a2, 0);
      }

      if (a2 > *(a1 + 76))
      {
        *(a1 + 76) = a2;
      }
    }
  }

  return v5;
}

uint64_t _pthread_setspecific_static(unint64_t a1, uint64_t a2)
{
  v3 = 22;
  if (a1 < 0x100)
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * a1) = a2;
    return 0;
  }

  return v3;
}

int pthread_introspection_setspecific_np(pthread_t thread, pthread_key_t key, const void *value)
{
  if (*&_pthread_self()->__opaque[34] != 1)
  {
    qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: Calling pthread_introspection_setspecific_np outside of a CREATE introspection hook";
    __break(0xB001u);
  }

  return _pthread_setspecific(thread, key, value);
}

void *__cdecl pthread_introspection_getspecific_np(pthread_t thread, pthread_key_t key)
{
  if (*&_pthread_self()->__opaque[34] != 4)
  {
    qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: Calling pthread_introspection_getspecific_np outside of a DESTROY introspection hook";
    __break(0xB001u);
  }

  return *&thread->__opaque[8 * key + 208];
}

uint64_t _pthread_tsd_cleanup_new(uint64_t result)
{
  v5 = result;
  for (i = 0; i < 4; ++i)
  {
    for (j = 256; j <= *(v5 + 76); ++j)
    {
      result = _pthread_tsd_cleanup_key(v5, j);
    }

    for (k = 125; k <= 0xD1; ++k)
    {
      result = _pthread_tsd_cleanup_key(v5, k);
    }

    for (m = 10; m <= __pthread_tsd_max; ++m)
    {
      result = _pthread_tsd_cleanup_key(v5, m);
    }
  }

  *(v5 + 76) = 0;
  return result;
}

uint64_t pthread_key_init_np(int a1, uint64_t a2)
{
  v3 = 22;
  if (a1 >= 10 && a1 < 256)
  {
    os_unfair_lock_lock_with_options();
    _pthread_key_set_destructor(a1, a2);
    if (a1 > __pthread_tsd_max)
    {
      __pthread_tsd_max = a1;
    }

    os_unfair_lock_unlock(&__pthread_tsd_lock);
    return 0;
  }

  return v3;
}

pthread_t pthread_self(void)
{
  v1 = (_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224);
  if ((v1->__sig ^ _pthread_ptr_munge_token) != v1)
  {
    abort_with_reason();
  }

  return v1;
}

uint64_t _pthread_key_get_destructor(uint64_t a1, uint64_t *a2)
{
  v4 = _pthread_keys[a1];
  if (v4)
  {
    if (a2)
    {
      v3 = 0;
      if (v4 != -1)
      {
        v3 = ~v4;
      }

      *a2 = v3;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t _pthread_tsd_cleanup_key(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  result = _pthread_key_get_destructor(a2, &v5);
  if (result)
  {
    v4 = (v7 + 224 + 8 * v6);
    v3 = *v4;
    if (*v4)
    {
      *v4 = 0;
      if (v5)
      {
        return v5(v3);
      }
    }
  }

  return result;
}

int pthread_join(pthread_t a1, void **a2)
{
  _pthread_testcancel_if_cancelable_variant_0();
  v2 = _pthread_conformance_0();
  return _pthread_join(a1, a2, v2);
}

int sigwait(const sigset_t *a1, int *a2)
{
  v3 = 0;
  _pthread_testcancel_if_cancelable_variant_0();
  if (__sigwait() == -1)
  {
    v3 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    _pthread_testcancel_if_cancelable_variant_0();
    if (v3 == 4)
    {
      return 0;
    }
  }

  return v3;
}

int pthread_atfork(void (*a1)(void), void (*a2)(void), void (*a3)(void))
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  v20 = 16;
  v19 = 320;
  v18 = _pthread_globals_init;
  v17 = &_os_alloc_once_table[32];
  if (_os_alloc_once_table[32] == -1)
  {
    v21 = v17[1];
  }

  else
  {
    v16 = _os_alloc_once();
    v21 = v16;
  }

  v9 = v21;
  v14 = v21 + 12;
  os_unfair_lock_lock_with_options();
  if (!*(v21 + 16))
  {
    *(v9 + 264) = v9 + 24;
LABEL_14:
    v5 = (*(v9 + 264) + 24 * *(v9 + 16));
    *v5 = v13;
    v5[1] = v12;
    v5[2] = v11;
    ++*(v9 + 16);
    goto LABEL_15;
  }

  if (*(v9 + 16) == 10)
  {
    if (*(v9 + 264) != v9 + 24)
    {
      v8 = *(v9 + 264);
      qword_28028 = "BUG IN LIBPTHREAD: expected atfork to be inline";
      qword_28058 = v8;
      __break(0xB001u);
    }

    v7 = 0;
    address = 0;
    v7 = mach_vm_map(mach_task_self_, &address, 24 * (vm_page_size / 0x18), vm_page_size - 1, 1224736769, 0, 0, 0, 3, 7, 1u);
    if (!v7)
    {
      *(v9 + 264) = address;
      v3 = *(v9 + 264);
      _platform_memmove();
      _platform_bzero();
      goto LABEL_14;
    }

    v10 = 12;
  }

  else
  {
    if (*(v9 + 16) < vm_page_size / 0x18)
    {
      goto LABEL_14;
    }

    v10 = 12;
  }

LABEL_15:
  v15 = v9 + 12;
  os_unfair_lock_unlock((v9 + 12));
  return v10;
}

uint64_t _pthread_atfork_prepare_handlers()
{
  if (_os_alloc_once_table[32] == -1)
  {
    v3 = _os_alloc_once_table[33];
  }

  else
  {
    v3 = _os_alloc_once();
  }

  result = os_unfair_lock_lock_with_options();
  for (i = *(v3 + 16); i; --i)
  {
    v1 = (*(v3 + 264) + 24 * (i - 1));
    if (*v1)
    {
      result = (*v1)(result);
    }
  }

  return result;
}

uint64_t _pthread_atfork_prepare()
{
  if (_os_alloc_once_table[32] == -1)
  {
    v2 = _os_alloc_once_table[33];
  }

  else
  {
    v2 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  *v2 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 224;
  v1 = *v2 + 72;
  return os_unfair_lock_lock_with_options();
}

void _pthread_atfork_parent()
{
  if (_os_alloc_once_table[32] == -1)
  {
    v0 = _os_alloc_once_table[33];
  }

  else
  {
    v0 = _os_alloc_once();
  }

  os_unfair_lock_unlock((*v0 + 72));
  os_unfair_lock_unlock((v0 + 8));
}

void _pthread_atfork_parent_handlers()
{
  if (_os_alloc_once_table[32] == -1)
  {
    v2 = _os_alloc_once_table[33];
  }

  else
  {
    v2 = _os_alloc_once();
  }

  for (i = 0; i < *(v2 + 16); ++i)
  {
    v0 = *(v2 + 264) + 24 * i;
    if (*(v0 + 8))
    {
      (*(v0 + 8))();
    }
  }

  os_unfair_lock_unlock((v2 + 12));
}

uint64_t _pthread_atfork_child()
{
  v9 = 16;
  v8 = 320;
  v7 = _pthread_globals_init;
  v6 = &_os_alloc_once_table[32];
  if (_os_alloc_once_table[32] == -1)
  {
    v10 = v6[1];
  }

  else
  {
    v5 = _os_alloc_once();
    v10 = v5;
  }

  v2 = v10;
  v4 = v10 + 8;
  v3 = 0;
  *(v10 + 8) = 0;
  __is_threaded = 0;
  _pthread_main_thread_postfork_init(*v2);
  memset(__b, 0, sizeof(__b));
  return _pthread_bsdthread_init(__b);
}

void _pthread_atfork_child_handlers()
{
  if (_os_alloc_once_table[32] == -1)
  {
    v2 = _os_alloc_once_table[33];
  }

  else
  {
    v2 = _os_alloc_once();
  }

  for (i = 0; i < *(v2 + 16); ++i)
  {
    v0 = *(v2 + 264) + 24 * i;
    if (*(v0 + 16))
    {
      (*(v0 + 16))();
    }
  }

  *(v2 + 12) = 0;
}

float pthread_dependency_init_np(_OWORD *a1, _opaque_pthread_t *a2, unsigned __int8 *a3)
{
  if (a3)
  {
    v3 = *a3;
  }

  result = COERCE_FLOAT(pthread_mach_thread_np(a2));
  *a1 = LODWORD(result);
  return result;
}

uint64_t _pthread_dependency_fulfill_slow(uint64_t a1, unsigned int a2)
{
  if (a2 == -1)
  {
    qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: Fufilling pthread_dependency_t twice";
    __break(0xB001u);
  }

  if (a2 != *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24))
  {
    qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: Fulfilled a dependency not owned by current thread";
    qword_28058 = a2;
    __break(0xB001u);
  }

  result = __ulock_wake();
  if ((-result | 2) != 2)
  {
    qword_28028 = "BUG IN LIBPTHREAD: __ulock_wake() failed";
    qword_28058 = -result;
    __break(0xB001u);
  }

  return result;
}

uint64_t pthread_dependency_fulfill_np(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2;
  v2 = atomic_exchange_explicit((result + 4), 0xFFFFFFFF, memory_order_release);
  if (v2)
  {
    return _pthread_dependency_fulfill_slow(result, v2);
  }

  return result;
}

uint64_t pthread_dependency_wait_np(uint64_t result)
{
  v6 = result;
  v1 = 0;
  atomic_compare_exchange_strong_explicit((result + 4), &v1, *result, memory_order_relaxed, memory_order_relaxed);
  if (!v1)
  {
    while (1)
    {
      v2 = *v6;
      result = __ulock_wait();
      v4 = -result;
      if (result)
      {
        if (v4 != 4 && v4 != 14)
        {
          break;
        }
      }

      if (v6[1] != *v6)
      {
        goto LABEL_11;
      }
    }

    if (v4 == 105)
    {
      v3 = *v6;
      qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: Waiting on orphaned dependency";
      qword_28058 = v3;
      __break(0xB001u);
    }

    qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: __ulock_wait() failed";
    qword_28058 = -result;
    __break(0xB001u);
  }

LABEL_11:
  explicit = atomic_load_explicit((v6 + 1), memory_order_acquire);
  if (explicit == -1)
  {
    return *(v6 + 1);
  }

  qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: Corrupted pthread_dependency_t";
  qword_28058 = explicit;
  __break(0xB001u);
  return result;
}

void thread_chkstk_darwin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = v10;
  v19 = v11;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  if (&a9 < *(StatusReg - 48))
  {
    v13 = *(StatusReg - 40);
    if (&a9 > v13)
    {
      if (&a9 >= v9 && &a9 - v9 >= v13)
      {
        return;
      }

      v14 = *(v13 - 8);
    }
  }

  v15 = &a9;
  if (v9 >= 0x1000)
  {
    do
    {
      v15 -= 512;
      v16 = *v15;
      v9 -= 4096;
    }

    while (v9 > 0x1000);
  }

  v17 = *(v15 - v9);
}

void _pthread_mutex_corruption_abort()
{
  qword_28028 = "BUG IN CLIENT OF LIBPTHREAD: pthread_mutex corruption: mutex owner changed in the middle of lock/unlock";
  __break(0xB001u);
  __bsdthread_create();
}