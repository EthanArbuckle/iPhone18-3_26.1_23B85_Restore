void sub_240207530(_Unwind_Exception *a1)
{
  sub_240204D84((v1 + 336));

  sub_2401C1DF4(v1 + 32);
  sub_2401C1DF4(v1 + 16);
  sub_240204DF8(v3);
  MEMORY[0x245CBCA30](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_240207570(uint64_t *a1)
{
  sub_240204B04((*a1 + 216));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    free(*(v2 + 408));
    v3 = *(v2 + 400);
    *(v2 + 400) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 392);
    *(v2 + 392) = 0;
    if (v4)
    {
      free(*(v4 + 64));
      free(*(v4 + 40));
      free(*(v4 + 16));
      v5 = *(v4 + 8);
      if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }

      MEMORY[0x245CBCA30](v4, 0x10E0C40FDDF1BE6);
    }

    v6 = *(v2 + 384);
    *(v2 + 384) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    if (*(v2 + 376) == 1)
    {
      sub_24023E4D8((v2 + 368));
    }

    v7 = *(v2 + 360);
    *(v2 + 360) = 0;
    if (v7)
    {
      v8 = v7[3];
      if (v8)
      {
        v9 = v7[4];
        v10 = v7[3];
        if (v9 != v8)
        {
          do
          {
            v11 = *(v9 - 1);
            if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v11->__on_zero_shared)(v11);
              std::__shared_weak_count::__release_weak(v11);
            }

            v9 -= 16;
          }

          while (v9 != v8);
          v10 = v7[3];
        }

        v7[4] = v8;
        operator delete(v10);
      }

      v12 = *v7;
      if (*v7)
      {
        v13 = v7[1];
        v14 = *v7;
        if (v13 != v12)
        {
          do
          {
            v15 = *(v13 - 2);
            if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v15->__on_zero_shared)(v15);
              std::__shared_weak_count::__release_weak(v15);
            }

            v13 -= 24;
          }

          while (v13 != v12);
          v14 = *v7;
        }

        v7[1] = v12;
        operator delete(v14);
      }

      MEMORY[0x245CBCA30](v7, 0x20C40A759441BLL);
    }

    v16 = *(v2 + 336);
    if (v16)
    {
      v17 = *(v2 + 344);
      v18 = *(v2 + 336);
      if (v17 != v16)
      {
        do
        {
          v19 = *(v17 - 8);
          if (v19)
          {
            free(v19);
            *(v17 - 8) = 0;
          }

          v17 -= 32;
        }

        while (v17 != v16);
        v18 = *(v2 + 336);
      }

      *(v2 + 344) = v16;
      operator delete(v18);
    }

    v20 = *(v2 + 40);
    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }

    v21 = *(v2 + 24);
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }

    v22 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v22)
    {
      if (*(v22 + 47) < 0)
      {
        operator delete(*(v22 + 24));
      }

      MEMORY[0x245CBCA30](v22, 0x1012C409C40065ELL);
    }

    MEMORY[0x245CBCA30](v2, 0x10E2C40F1CA144BLL);
  }

  return a1;
}

void sub_240207914()
{
  v2 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v0 = qword_280C03978;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2401B8000, v0, OS_LOG_TYPE_INFO, "Initializing FaceKitProcessor.", buf, 2u);
  }

  kdebug_trace();
  os_unfair_lock_lock(&unk_280C03818);
  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280C039F0))
    {
      sub_240222DDC();
    }
  }

  sub_240222FB8();
  sub_24023FC1C();
}

void sub_24020B040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  __cxa_guard_abort(&qword_280C039F0);
  sub_24020B1C0(&a27);
  sub_2401C1DF4(&a33);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(&unk_280C03818);
  kdebug_trace();
  _Unwind_Resume(a1);
}

uint64_t sub_24020B1C0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_24020B22C(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = result;
    free(*(v3 + 64));
    free(*(v3 + 40));
    free(*(v3 + 16));
    v5 = *(v3 + 8);
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    MEMORY[0x245CBCA30](v3, 0x10E0C40FDDF1BE6);
    return v4;
  }

  return result;
}

void *sub_24020B2E4(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    free(*(v1 + 64));
    free(*(v1 + 40));
    free(*(v1 + 16));
    v3 = *(v1 + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    MEMORY[0x245CBCA30](v1, 0x10E0C40FDDF1BE6);
    return v2;
  }

  return result;
}

uint64_t sub_24020B394(uint64_t a1)
{
  v2 = *(a1 + 880);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 864);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 848);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 832);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (*(a1 + 816) == 1 && *(a1 + 815) < 0)
  {
    operator delete(*(a1 + 792));
    if ((*(a1 + 783) & 0x80000000) == 0)
    {
LABEL_16:
      if ((*(a1 + 759) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    }
  }

  else if ((*(a1 + 783) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*(a1 + 760));
  if ((*(a1 + 759) & 0x80000000) == 0)
  {
LABEL_17:
    if ((*(a1 + 735) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(*(a1 + 736));
  if ((*(a1 + 735) & 0x80000000) == 0)
  {
LABEL_18:
    if ((*(a1 + 711) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(*(a1 + 712));
  if ((*(a1 + 711) & 0x80000000) == 0)
  {
LABEL_19:
    if ((*(a1 + 687) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(*(a1 + 688));
  if ((*(a1 + 687) & 0x80000000) == 0)
  {
LABEL_20:
    if ((*(a1 + 663) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(*(a1 + 664));
  if ((*(a1 + 663) & 0x80000000) == 0)
  {
LABEL_21:
    if ((*(a1 + 639) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(*(a1 + 640));
  if ((*(a1 + 639) & 0x80000000) == 0)
  {
LABEL_22:
    if ((*(a1 + 615) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(*(a1 + 616));
  if ((*(a1 + 615) & 0x80000000) == 0)
  {
LABEL_23:
    if ((*(a1 + 591) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(*(a1 + 592));
  if ((*(a1 + 591) & 0x80000000) == 0)
  {
LABEL_24:
    if ((*(a1 + 567) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(*(a1 + 568));
  if ((*(a1 + 567) & 0x80000000) == 0)
  {
LABEL_25:
    if ((*(a1 + 543) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(*(a1 + 544));
  if ((*(a1 + 543) & 0x80000000) == 0)
  {
LABEL_26:
    if ((*(a1 + 519) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_42;
  }

LABEL_41:
  operator delete(*(a1 + 520));
  if ((*(a1 + 519) & 0x80000000) == 0)
  {
LABEL_27:
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_28;
    }

    goto LABEL_43;
  }

LABEL_42:
  operator delete(*(a1 + 496));
  v6 = *(a1 + 64);
  if (!v6)
  {
LABEL_28:
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_47:
    operator delete(*a1);
    return a1;
  }

LABEL_43:
  v8 = *(a1 + 72);
  v9 = v6;
  if (v8 != v6)
  {
    do
    {
      v8 = sub_24020B670(v8 - 1168);
    }

    while (v8 != v6);
    v9 = *(a1 + 64);
  }

  *(a1 + 72) = v6;
  operator delete(v9);
  if (*(a1 + 23) < 0)
  {
    goto LABEL_47;
  }

  return a1;
}

uint64_t sub_24020B670(uint64_t a1)
{
  v2 = *(a1 + 1160);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 1144) == 1)
  {
    free(*(a1 + 1120));
  }

  if (*(a1 + 1112) == 1)
  {
    sub_240258180((a1 + 1104));
  }

  v3 = *(a1 + 984);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  if (*(a1 + 968) == 1)
  {
    free(*(a1 + 944));
  }

  if (*(a1 + 936) == 1)
  {
    sub_240258180((a1 + 928));
  }

  v4 = *(a1 + 808);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  if (*(a1 + 792) == 1)
  {
    free(*(a1 + 768));
  }

  if (*(a1 + 760) == 1)
  {
    sub_240258180((a1 + 752));
  }

  v5 = *(a1 + 632);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 616);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (*(a1 + 600) == 1 && *(a1 + 599) < 0)
  {
    operator delete(*(a1 + 576));
  }

  v7 = *(a1 + 568);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (*(a1 + 552) == 1 && *(a1 + 551) < 0)
  {
    operator delete(*(a1 + 528));
  }

  if (*(a1 + 512) == 1)
  {
    free(*(a1 + 488));
  }

  if (*(a1 + 288) == 1)
  {
    free(*(a1 + 264));
  }

  if (*(a1 + 200) == 1 && *(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1)
  {
    free(*(a1 + 64));
  }

  if (*(a1 + 56) == 1)
  {
    free(*(a1 + 32));
  }

  if (*(a1 + 24) == 1)
  {
    free(*a1);
  }

  return a1;
}

double sub_24020B990@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(a1 + 8))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_24020B9D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285226ED8;
  a2[1] = v2;
  return result;
}

void sub_24020BA68(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4[0] = *(a1 + 16);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_24023A100(&v5, v4, *(a1 + 8), *(a1 + 32), *(a1 + 40), **(a1 + 48));
  *a2 = v5;
  v5 = 0uLL;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_24020BB30(void *a1)
{
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void sub_24020BBAC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 sub_24020BC28(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285227E18;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 32) = result;
  return result;
}

void sub_24020BCFC(void *a1)
{
  *a1 = &unk_285227E18;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CBCA30);
}

void *sub_24020BDA4(void *result)
{
  *result = &unk_285227E18;
  v1 = result[3];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_24020BE30(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = v1[8];
    if (v2)
    {
      (*(*v2 + 24))(v2);
    }

    v3 = v1[9];
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[7];
    if (v4 == v1 + 4)
    {
      (*(*v4 + 32))(v4);
      v5 = v1[3];
      if (!v5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

      v5 = v1[3];
      if (!v5)
      {
LABEL_16:

        JUMPOUT(0x245CBCA30);
      }
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    goto LABEL_16;
  }

  return result;
}

void sub_24020BFA8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285227DE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_24020C01C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4[0] = *(a1 + 16);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_24023A100(&v5, v4, *(a1 + 8), *(a1 + 32), *(a1 + 40), **(a1 + 48));
  *a2 = v5;
  v5 = 0uLL;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_24020C0E4(void *a1)
{
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void sub_24020C160(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 sub_24020C1DC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285227E60;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 32) = result;
  return result;
}

void sub_24020C2B0(void *a1)
{
  *a1 = &unk_285227E60;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CBCA30);
}

void *sub_24020C358(void *result)
{
  *result = &unk_285227E60;
  v1 = result[3];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_24020C3E0(void *a1, CVPixelBufferRef pixelBuffer)
{
  if (CVPixelBufferIsPlanar(pixelBuffer))
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    result = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidth(pixelBuffer);
    HeightOfPlane = CVPixelBufferGetHeight(pixelBuffer);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(pixelBuffer);
    result = CVPixelBufferGetBaseAddress(pixelBuffer);
  }

  *a1 = 0;
  a1[1] = WidthOfPlane | (HeightOfPlane << 32);
  a1[2] = (BytesPerRowOfPlane << 32) | 1;
  a1[3] = result;
  return result;
}

uint64_t sub_24020C4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v258 = *MEMORY[0x277D85DE8];
  v12 = a3 + 52;
  *&v239 = a3 + 52;
  size[0] = &v239;
  *&v254[0] = size;
  *(&v254[0] + 1) = a3 + 88;
  v242.i64[0] = 0;
  v242.i32[2] = 0;
  sub_24020D5E0(v242.f32, v254);
  *&v255 = a2 + 60;
  size[0] = &v255;
  *&v254[0] = size;
  *(&v254[0] + 1) = a2 + 96;
  *&v239 = 0;
  DWORD2(v239) = 0;
  sub_24020D5E0(&v239, v254);
  v14 = vsub_f32(*v242.f32, *&v239);
  if ((vaddv_f32(vmul_f32(v14, v14)) + ((v242.f32[2] - *(&v239 + 2)) * (v242.f32[2] - *(&v239 + 2)))) <= 0.00001)
  {
    v15 = *(a3 + 60) - *(a2 + 68);
    v16 = *(a3 + 72) - *(a2 + 80);
    if ((((v15 * v15) + (v16 * v16)) + ((*(a3 + 84) - *(a2 + 92)) * (*(a3 + 84) - *(a2 + 92)))) <= 0.00001)
    {
      v17 = *(a3 + 16);
      v18 = *(a3 + 28);
      *&v19 = v17;
      *(&v19 + 1) = v18;
      v254[0] = v19;
      *&v254[1] = *(a3 + 40);
      v20 = -*v18.i32;
      *v13.i32 = vmuls_lane_f32(-*v18.i32, v17, 1) + (v17.f32[0] * *&v18.i32[1]);
      DWORD2(v254[1]) = v13.i32[0];
      if (fabsf(*v13.i32) >= 1.0e-15)
      {
        v23.i32[0] = vdup_lane_s32(v18, 1).u32[0];
        v23.f32[1] = -v17.f32[1];
        v23.i64[1] = __PAIR64__(v17.u32[0], LODWORD(v20));
        v242 = vdivq_f32(v23, vdupq_lane_s32(v13, 0));
        *&v255 = &v242;
        *&v239 = &v255;
        *(&v239 + 1) = &v254[1];
        *&v249 = 0;
        sub_24020D6A4(&v249, &v239);
        *size = v242;
        v251 = v249;
        v21 = (v242.f32[0] * v242.f32[3]) - (v242.f32[2] * v242.f32[1]);
      }

      else
      {
        size[0] = 0;
        size[1] = 0;
        v21 = 1.0;
        v251 = 0;
      }

      v252.f32[0] = v21;
      *&v255 = a2 + 60;
      *(&v255 + 1) = 3;
      *&v249 = v12;
      *(&v249 + 1) = 3;
      v247 = &v249;
      v24 = &v255;
      *&v239 = &v255;
      *(&v239 + 1) = &v247;
      v254[0] = 0uLL;
      v25 = v254;
      sub_24020D724(v254, &v239);
      v242 = v254[0];
      v243 = 0;
      v244 = (*v254 * *(v254 + 3)) - (*(v254 + 2) * *(v254 + 1));
      *&v26 = *(a2 + 24);
      v27 = vmuls_lane_f32(-COERCE_FLOAT(*(a2 + 36)), *&v26, 1) + (*&v26 * COERCE_FLOAT(HIDWORD(*(a2 + 36))));
      *(&v26 + 1) = *(a2 + 36);
      v239 = v26;
      v240 = *(a2 + 48);
      v28 = v240;
      v241 = v27;
      v247 = &v239;
      v248 = &v242;
      v249 = 0uLL;
      sub_24020D868(&v249, &v247);
      v245 = &v239;
      v246 = &v243;
      *(v254 + 4) = 0;
      sub_2401CE980(v254 + 1, &v245);
      v255 = v249;
      v29 = vadd_f32(*(v254 + 4), v28);
      v256 = v29;
      v257 = (*&v249 * *(&v249 + 3)) - (*(&v249 + 2) * *(&v249 + 1));
      v30 = size;
      v247 = &v255;
      v248 = size;
      v249 = 0uLL;
      sub_24020D868(&v249, &v247);
      v245 = &v255;
      v246 = &v251;
      *(v254 + 4) = 0;
      sub_2401CE980(v254 + 1, &v245);
      v31 = 0;
      v236 = v249;
      v32 = vadd_f32(*(v254 + 4), v29);
      v237 = v32;
      v238 = (*&v249 * *(&v249 + 3)) - (*(&v249 + 2) * *(&v249 + 1));
      HIDWORD(size[1]) = 0;
      *(size + 4) = 0;
      LODWORD(size[0]) = 1065353216;
      v251 = 1065353216;
      v253 = 1065353216;
      v33 = 0x100000000;
      v34 = &v236;
      do
      {
        v35 = *v34++;
        *(size + v31) = v35;
        v36 = v33 < 1;
        v37 = (v33 >> 30) & 0x3FFFFFFFCLL;
        if (v33 < 1)
        {
          v37 = 0;
        }

        v38 = v31 + v37;
        v39 = (v33 + 1);
        v40 = v33 & 0xFFFFFFFF00000000;
        if (!v36)
        {
          v39 = 0;
        }

        v33 = v39 | v40;
        v31 = v38 + 4;
      }

      while (v31 != 24);
      v252 = v32;
      v242.i64[0] = size;
      v242.i64[1] = a4;
      memset(v254, 0, 36);
      sub_2401EDF8C(v254, &v242);
      v41 = *(a1 + 48);
      v42 = (v41 | (v41 << 32));
      if (v41 > *(a5 + 8) || v41 > *(a5 + 12))
      {
        v43 = *(a5 + 24);
        if (v43)
        {
          free(v43);
          *(a5 + 24) = 0;
        }

        *a5 = 0;
        *(a5 + 8) = v42;
        *(a5 + 16) = ((((4 * v41 + 15) & 0xFFFFFFF0) >> 4) << 36) | 4;
        size[0] = v41 * ((4 * v41 + 15) & 0xFFFFFFF0);
        if (size[0])
        {
          v44 = malloc_type_malloc(size[0], 0x100004052888210uLL);
        }

        else
        {
          v44 = 0;
        }

        *(a5 + 24) = v44;
      }

      else
      {
        *a5 = 0;
        *(a5 + 8) = v42;
      }

      kdebug_trace();
      v45 = *a2;
      PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
      if (PixelFormatType == 825306677 || PixelFormatType == 1647392359 || PixelFormatType == 825437747)
      {
        v47 = *(a2 + 124);
        if (v47 == 1)
        {
          v234 = *(a2 + 112);
          CVPixelBufferLockBaseAddress(v45, 1uLL);
          Width = CVPixelBufferGetWidth(v45);
          Height = CVPixelBufferGetHeight(v45);
          BytesPerRow = CVPixelBufferGetBytesPerRow(v45);
          BaseAddress = CVPixelBufferGetBaseAddress(v45);
          if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
          {
            sub_240222DDC();
          }

          *v99.i32 = a6 / v234;
          v106 = vdupq_lane_s32(v99, 0);
          v107 = Width - 1;
          if (*(qword_280C03828 + 109) == 1)
          {
            v108 = *(a5 + 12);
            if (v108 >= 1)
            {
              v109 = *(a5 + 8);
              if (v109 >= 1)
              {
                v110 = 0;
                *v100.i32 = v107;
                v111 = vdupq_lane_s32(v100, 0);
                *v101.i32 = (Height - 1);
                v112 = vdupq_lane_s32(v101, 0);
                v113 = vdupq_lane_s32(*(v254 + 12), 0);
                v114 = vdupq_lane_s32(*&v254[1], 0);
                v115 = vdupq_lane_s32(*(&v254[1] + 4), 0);
                __asm { FMOV            V23.4S, #4.0 }

                v117 = vmulq_n_f32(_Q23, *v254);
                v118 = vmulq_n_f32(_Q23, *(v254 + 1));
                v119 = vdupq_n_s32(BytesPerRow >> 1);
                v120 = vmulq_n_f32(_Q23, *(v254 + 2));
                v121 = vmlaq_f32(vdupq_lane_s32(*&vshrq_n_u64(*(&v254[1] + 4), 0x20uLL), 0), xmmword_2402709B0, vdupq_lane_s32(*&v254[0], 0));
                v122 = *(a5 + 24);
                v123 = vmlaq_f32(vdupq_laneq_s32(*(&v254[1] + 4), 2), xmmword_2402709B0, vdupq_lane_s32(*(v254 + 4), 0));
                v124 = vmlaq_f32(vdupq_laneq_s32(*(&v254[1] + 4), 3), xmmword_2402709B0, vdupq_lane_s32(*(v254 + 8), 0));
                do
                {
                  v125 = 0;
                  v126 = v124;
                  v127 = v123;
                  v128 = v121;
                  do
                  {
                    v129 = vcvtaq_s32_f32(vmaxnmq_f32(vminnmq_f32(vdivq_f32(v127, v126), v112), 0));
                    v130 = vmlaq_s32(vcvtaq_s32_f32(vmaxnmq_f32(vminnmq_f32(vdivq_f32(v128, v126), v111), 0)), v129, v119);
                    v130.i16[0] = BaseAddress[v130.i32[0]];
                    v129.i16[0] = BaseAddress[v130.i32[1]];
                    LOWORD(v104) = BaseAddress[v130.i32[2]];
                    v130.f32[0] = v130.u32[0];
                    v104 = LODWORD(v104);
                    LOWORD(v105) = BaseAddress[v130.i32[3]];
                    v105 = LODWORD(v105);
                    v130.f32[1] = v129.u32[0];
                    v130.i64[1] = __PAIR64__(LODWORD(v105), LODWORD(v104));
                    *v122++ = vdivq_f32(vmulq_n_f32(vandq_s8(v130, vcgeq_f32(v106, v130)), v234), v126);
                    v128 = vaddq_f32(v117, v128);
                    v127 = vaddq_f32(v118, v127);
                    v126 = vaddq_f32(v120, v126);
                    v125 += 4;
                  }

                  while (v125 < v109);
                  v121 = vaddq_f32(v113, v121);
                  v123 = vaddq_f32(v114, v123);
                  v124 = vaddq_f32(v115, v124);
                  ++v110;
                }

                while (v110 != v108);
              }
            }
          }

          else
          {
            v135 = *(a5 + 12);
            if (v135 >= 1)
            {
              v136 = *(a5 + 8);
              if (v136)
              {
                v137 = 0;
                v138 = vdupq_n_s32(v107);
                v139 = vdupq_n_s32(Height - 1);
                v140 = ((*(v254 + 1) * 262140.0) + 0.5);
                v141 = ((*v254 * 262140.0) + 0.5);
                v142 = vdupq_n_s32(BytesPerRow >> 1);
                v143 = vdupq_n_s32(4 * v141);
                v144 = vdupq_n_s32(4 * v140);
                v145 = vdupq_n_s32(((*(v254 + 3) * 262140.0) + 0.5) - v136 * v141);
                v146 = vmlaq_s32(vdupq_n_s32(((*(&v254[1] + 2) * 262140.0) + 0.5)), vdupq_n_s32(v141), xmmword_240270930);
                v147 = vdupq_n_s32(((*&v254[1] * 262140.0) + 0.5) - v136 * v140);
                v148 = (*(a5 + 20) >> 2) - v136;
                v149 = vmlaq_s32(vdupq_n_s32(((*(&v254[1] + 3) * 262140.0) + 0.5)), vdupq_n_s32(v140), xmmword_240270930);
                v150 = *(a5 + 24);
                v151.i64[0] = 0x2000000020000;
                v151.i64[1] = 0x2000000020000;
                do
                {
                  v152 = (v150 + 4 * v136);
                  do
                  {
                    v153 = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(v149, v151), 0x12uLL), v139), 0);
                    v154 = vmlaq_s32(vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(v146, v151), 0x12uLL), v138), 0), v153, v142);
                    v154.i16[0] = BaseAddress[v154.i32[0]];
                    v153.i16[0] = BaseAddress[v154.i32[1]];
                    v154.f32[0] = v154.u32[0];
                    LOWORD(v102) = BaseAddress[v154.i32[2]];
                    v102 = LODWORD(v102);
                    LOWORD(v103) = BaseAddress[v154.i32[3]];
                    v154.f32[1] = v153.u32[0];
                    v154.f32[2] = v102;
                    v154.f32[3] = v103;
                    *v150++ = vmulq_n_f32(vandq_s8(v154, vcgeq_f32(v106, v154)), v234);
                    v146 = vaddq_s32(v146, v143);
                    v149 = vaddq_s32(v149, v144);
                  }

                  while (v150 < v152);
                  v150 = (v150 + 4 * v148);
                  v146 = vaddq_s32(v146, v145);
                  v149 = vaddq_s32(v149, v147);
                  ++v137;
                }

                while (v137 != v135);
              }
            }
          }

          goto LABEL_91;
        }

        if (v47 == 2)
        {
          CVPixelBufferLockBaseAddress(v45, 1uLL);
          LODWORD(v25) = CVPixelBufferGetWidth(v45);
          LODWORD(v30) = CVPixelBufferGetHeight(v45);
          LODWORD(v24) = CVPixelBufferGetBytesPerRow(v45);
          v42 = CVPixelBufferGetBaseAddress(v45);
          *v48.i32 = *(a2 + 112) * 0.001;
          *v49.i32 = *(a2 + 116) * 0.001;
          v232 = v49;
          v233 = v48;
          v50 = ((1.0 / a6) - *v49.i32) / *v48.i32;
          *v51.i32 = nextafterf(*(a2 + 120), 0.0);
          if (v50 >= *v51.i32)
          {
            v58 = *v51.i32;
          }

          else
          {
            v58 = v50;
          }

          v59.i32[1] = v233.i32[1];
          if (*v233.i32 <= 0.0)
          {
            *v59.i32 = 0.0;
          }

          else
          {
            *v59.i32 = v50;
          }

          if (*v233.i32 <= 0.0)
          {
            *v51.i32 = v58;
          }

          v230 = v51;
          v231 = v59;
          if (atomic_load_explicit(&qword_280C039F0, memory_order_acquire))
          {
            goto LABEL_36;
          }

          goto LABEL_97;
        }

LABEL_96:
        sub_2401F0C48();
LABEL_97:
        if (__cxa_guard_acquire(&qword_280C039F0))
        {
          sub_240222DDC();
        }

LABEL_36:
        v60 = vdupq_lane_s32(v233, 0);
        v61 = vdupq_lane_s32(v232, 0);
        v62 = vdupq_lane_s32(v230, 0);
        v63 = vdupq_lane_s32(v231, 0);
        if (*(qword_280C03828 + 109) == 1)
        {
          v64 = *(a5 + 12);
          if (v64 >= 1)
          {
            v65 = *(a5 + 8);
            if (v65 >= 1)
            {
              v66 = 0;
              *v52.i32 = (v25 - 1);
              v67 = vdupq_lane_s32(v52, 0);
              *v53.i32 = (v30 - 1);
              v68 = vdupq_lane_s32(v53, 0);
              v69 = vdupq_lane_s32(*(v254 + 12), 0);
              v70 = vdupq_lane_s32(*&v254[1], 0);
              v71 = vdupq_lane_s32(*(&v254[1] + 4), 0);
              __asm { FMOV            V26.4S, #4.0 }

              v77 = vmulq_n_f32(_Q26, *v254);
              v78 = vmulq_n_f32(_Q26, *(v254 + 1));
              v79 = vdupq_n_s32(v24 >> 1);
              v80 = vmulq_n_f32(_Q26, *(v254 + 2));
              v81 = vmlaq_f32(vdupq_lane_s32(*&vshrq_n_u64(*(&v254[1] + 4), 0x20uLL), 0), xmmword_2402709B0, vdupq_lane_s32(*&v254[0], 0));
              v82 = *(a5 + 24);
              v83 = vmlaq_f32(vdupq_laneq_s32(*(&v254[1] + 4), 2), xmmword_2402709B0, vdupq_lane_s32(*(v254 + 4), 0));
              v84 = vmlaq_f32(vdupq_laneq_s32(*(&v254[1] + 4), 3), xmmword_2402709B0, vdupq_lane_s32(*(v254 + 8), 0));
              do
              {
                v85 = 0;
                v86 = v84;
                v87 = v83;
                v88 = v81;
                do
                {
                  v89 = vcvtaq_s32_f32(vmaxnmq_f32(vminnmq_f32(vdivq_f32(v87, v86), v68), 0));
                  v90 = vmlaq_s32(vcvtaq_s32_f32(vmaxnmq_f32(vminnmq_f32(vdivq_f32(v88, v86), v67), 0)), v89, v79);
                  v90.i16[0] = v42[v90.i32[0]];
                  v89.i16[0] = v42[v90.i32[1]];
                  v56.i16[0] = v42[v90.i32[2]];
                  v90.f32[0] = v90.u32[0];
                  v57.i16[0] = v42[v90.i32[3]];
                  v90.f32[1] = v89.u32[0];
                  v90.f32[2] = v56.u32[0];
                  v90.f32[3] = v57.u32[0];
                  v91 = vandq_s8(vcgeq_f32(v62, v90), vcgeq_f32(v90, v63));
                  v92 = vmlaq_f32(v61, v60, v90);
                  v93 = vrecpeq_f32(v92);
                  v57 = vrecpsq_f32(v92, v93);
                  v94 = vmulq_f32(v93, v57);
                  v56 = vrecpsq_f32(v92, v94);
                  *v82++ = vdivq_f32(vandq_s8(vmulq_f32(v94, v56), v91), v86);
                  v88 = vaddq_f32(v77, v88);
                  v87 = vaddq_f32(v78, v87);
                  v86 = vaddq_f32(v80, v86);
                  v85 += 4;
                }

                while (v85 < v65);
                v81 = vaddq_f32(v69, v81);
                v83 = vaddq_f32(v70, v83);
                v84 = vaddq_f32(v71, v84);
                ++v66;
              }

              while (v66 != v64);
            }
          }
        }

        else
        {
          v155 = *(a5 + 12);
          if (v155 >= 1)
          {
            v156 = *(a5 + 8);
            if (v156)
            {
              v157 = 0;
              v158 = vdupq_n_s32(v25 - 1);
              v159 = vdupq_n_s32(v30 - 1);
              v160 = ((*(v254 + 1) * 262140.0) + 0.5);
              v161 = ((*v254 * 262140.0) + 0.5);
              v162 = vdupq_n_s32(v24 >> 1);
              v163 = vdupq_n_s32(4 * v161);
              v164 = vdupq_n_s32(4 * v160);
              v165 = vdupq_n_s32(((*(v254 + 3) * 262140.0) + 0.5) - v156 * v161);
              v166 = vmlaq_s32(vdupq_n_s32(((*(&v254[1] + 2) * 262140.0) + 0.5)), vdupq_n_s32(v161), xmmword_240270930);
              v167 = vdupq_n_s32(((*&v254[1] * 262140.0) + 0.5) - v156 * v160);
              v168 = (*(a5 + 20) >> 2) - v156;
              v169 = vmlaq_s32(vdupq_n_s32(((*(&v254[1] + 3) * 262140.0) + 0.5)), vdupq_n_s32(v160), xmmword_240270930);
              v170 = *(a5 + 24);
              v171.i64[0] = 0x2000000020000;
              v171.i64[1] = 0x2000000020000;
              do
              {
                v172 = (v170 + 4 * v156);
                do
                {
                  v173 = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(v169, v171), 0x12uLL), v159), 0);
                  v174 = vmlaq_s32(vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(v166, v171), 0x12uLL), v158), 0), v173, v162);
                  v174.i16[0] = v42[v174.i32[0]];
                  v173.i16[0] = v42[v174.i32[1]];
                  v54.i16[0] = v42[v174.i32[2]];
                  v174.f32[0] = v174.u32[0];
                  v55.i16[0] = v42[v174.i32[3]];
                  v174.f32[1] = v173.u32[0];
                  v174.f32[2] = v54.u32[0];
                  v174.f32[3] = v55.u32[0];
                  v175 = vandq_s8(vcgeq_f32(v62, v174), vcgeq_f32(v174, v63));
                  v55 = vmlaq_f32(v61, v60, v174);
                  v176 = vrecpeq_f32(v55);
                  v177 = vmulq_f32(v176, vrecpsq_f32(v55, v176));
                  v54 = vrecpsq_f32(v55, v177);
                  *v170++ = vandq_s8(vmulq_f32(v177, v54), v175);
                  v166 = vaddq_s32(v166, v163);
                  v169 = vaddq_s32(v169, v164);
                }

                while (v170 < v172);
                v170 = (v170 + 4 * v168);
                v166 = vaddq_s32(v166, v165);
                v169 = vaddq_s32(v169, v167);
                ++v157;
              }

              while (v157 != v155);
            }
          }
        }

LABEL_91:
        v22 = 1;
        CVPixelBufferUnlockBaseAddress(v45, 1uLL);
        goto LABEL_92;
      }

      v131 = *(a2 + 124);
      if (v131 == 1)
      {
        v235 = *(a2 + 112);
        if (PixelFormatType == 1717855600 || PixelFormatType == 1278226534)
        {
          CVPixelBufferLockBaseAddress(v45, 1uLL);
          v178 = CVPixelBufferGetWidth(v45);
          v179 = CVPixelBufferGetHeight(v45);
          v180 = CVPixelBufferGetBytesPerRow(v45);
          v181 = CVPixelBufferGetBaseAddress(v45);
          if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
          {
            sub_240222DDC();
          }

          *v182.i32 = a6 / v235;
          v185 = vdupq_lane_s32(v182, 0);
          v186 = v178 - 1;
          if (*(qword_280C03828 + 109) == 1)
          {
            v187 = *(a5 + 12);
            if (v187 >= 1)
            {
              v188 = *(a5 + 8);
              if (v188 >= 1)
              {
                v189 = 0;
                *v183.i32 = v186;
                v190 = vdupq_lane_s32(v183, 0);
                *v184.i32 = (v179 - 1);
                v191 = vdupq_lane_s32(v184, 0);
                v192 = vdupq_lane_s32(*(v254 + 12), 0);
                v193 = vdupq_lane_s32(*&v254[1], 0);
                v194 = vdupq_lane_s32(*(&v254[1] + 4), 0);
                __asm { FMOV            V23.4S, #4.0 }

                v196 = vmulq_n_f32(_Q23, *v254);
                v197 = vmulq_n_f32(_Q23, *(v254 + 1));
                v198 = vdupq_n_s32(v180 >> 2);
                v199 = vmulq_n_f32(_Q23, *(v254 + 2));
                v200 = vmlaq_f32(vdupq_lane_s32(*&vshrq_n_u64(*(&v254[1] + 4), 0x20uLL), 0), xmmword_2402709B0, vdupq_lane_s32(*&v254[0], 0));
                v201 = *(a5 + 24);
                v202 = vmlaq_f32(vdupq_laneq_s32(*(&v254[1] + 4), 2), xmmword_2402709B0, vdupq_lane_s32(*(v254 + 4), 0));
                v203 = vmlaq_f32(vdupq_laneq_s32(*(&v254[1] + 4), 3), xmmword_2402709B0, vdupq_lane_s32(*(v254 + 8), 0));
                do
                {
                  v204 = 0;
                  v205 = v203;
                  v206 = v202;
                  v207 = v200;
                  do
                  {
                    v208 = vmlaq_s32(vcvtaq_s32_f32(vmaxnmq_f32(vminnmq_f32(vdivq_f32(v207, v205), v190), 0)), vcvtaq_s32_f32(vmaxnmq_f32(vminnmq_f32(vdivq_f32(v206, v205), v191), 0)), v198);
                    v208.i32[0] = v181[v208.i32[0]];
                    v208.i32[1] = v181[v208.i32[1]];
                    v208.i32[2] = v181[v208.i32[2]];
                    v208.i32[3] = v181[v208.i32[3]];
                    *v201++ = vdivq_f32(vmulq_n_f32(vandq_s8(v208, vcgeq_f32(v185, v208)), v235), v205);
                    v207 = vaddq_f32(v196, v207);
                    v206 = vaddq_f32(v197, v206);
                    v205 = vaddq_f32(v199, v205);
                    v204 += 4;
                  }

                  while (v204 < v188);
                  v200 = vaddq_f32(v192, v200);
                  v202 = vaddq_f32(v193, v202);
                  v203 = vaddq_f32(v194, v203);
                  ++v189;
                }

                while (v189 != v187);
              }
            }
          }

          else
          {
            v210 = *(a5 + 12);
            if (v210 >= 1)
            {
              v211 = *(a5 + 8);
              if (v211)
              {
                v212 = 0;
                v213 = vdupq_n_s32(v186);
                v214 = vdupq_n_s32(v179 - 1);
                v215 = ((*(v254 + 1) * 262140.0) + 0.5);
                v216 = ((*v254 * 262140.0) + 0.5);
                v217 = vdupq_n_s32(v180 >> 2);
                v218 = vdupq_n_s32(4 * v216);
                v219 = vdupq_n_s32(4 * v215);
                v220 = vdupq_n_s32(((*(v254 + 3) * 262140.0) + 0.5) - v211 * v216);
                v221 = vmlaq_s32(vdupq_n_s32(((*(&v254[1] + 2) * 262140.0) + 0.5)), vdupq_n_s32(v216), xmmword_240270930);
                v222 = vdupq_n_s32(((*&v254[1] * 262140.0) + 0.5) - v211 * v215);
                v223 = (*(a5 + 20) >> 2) - v211;
                v224 = vmlaq_s32(vdupq_n_s32(((*(&v254[1] + 3) * 262140.0) + 0.5)), vdupq_n_s32(v215), xmmword_240270930);
                v225 = *(a5 + 24);
                v226.i64[0] = 0x2000000020000;
                v226.i64[1] = 0x2000000020000;
                do
                {
                  v227 = (v225 + 4 * v211);
                  do
                  {
                    v228 = vmlaq_s32(vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(v221, v226), 0x12uLL), v213), 0), vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(v224, v226), 0x12uLL), v214), 0), v217);
                    v228.i32[0] = v181[v228.i32[0]];
                    v228.i32[1] = v181[v228.i32[1]];
                    v228.i32[2] = v181[v228.i32[2]];
                    v228.i32[3] = v181[v228.i32[3]];
                    *v225++ = vmulq_n_f32(vandq_s8(v228, vcgeq_f32(v185, v228)), v235);
                    v221 = vaddq_s32(v221, v218);
                    v224 = vaddq_s32(v224, v219);
                  }

                  while (v225 < v227);
                  v225 = (v225 + 4 * v223);
                  v221 = vaddq_s32(v221, v220);
                  v224 = vaddq_s32(v224, v222);
                  ++v212;
                }

                while (v212 != v210);
              }
            }
          }

          goto LABEL_91;
        }

        v209 = PixelFormatType;
        v133 = sub_24024BD20();
        if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          LODWORD(size[0]) = 67109120;
          HIDWORD(size[0]) = v209;
          v134 = "unknown depth buffer format (%u)";
          goto LABEL_95;
        }
      }

      else
      {
        if (v131 != 2)
        {
          goto LABEL_96;
        }

        v132 = PixelFormatType;
        if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
        {
          qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
          __cxa_guard_release(&qword_280C03A00);
        }

        v133 = qword_280C03978;
        if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          LODWORD(size[0]) = 67109120;
          HIDWORD(size[0]) = v132;
          v134 = "unknown depth buffer format (%u) for normalized disparity";
LABEL_95:
          _os_log_error_impl(&dword_2401B8000, v133, OS_LOG_TYPE_ERROR, v134, size, 8u);
        }
      }

      v22 = 0;
LABEL_92:
      kdebug_trace();
      return v22;
    }
  }

  return 0;
}

void sub_24020D598(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280C039F0);
  kdebug_trace();
  _Unwind_Resume(a1);
}

float *sub_24020D5E0(float *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  if (v3 == result)
  {
    v12 = 0;
    v11 = 0;
    result = sub_24020D5E0(&v11);
    *v2 = v11;
    *(v2 + 2) = v12;
  }

  else
  {
    v4 = ***a2;
    v5 = v4[6];
    v6 = v4[7];
    v7 = v4[3];
    v8 = v4[4];
    v9 = v4[5];
    v10 = v4[8];
    *result = ((0.0 - (*v4 * *v3)) - (v4[1] * v3[1])) - (v4[2] * v3[2]);
    result[1] = ((0.0 - (v7 * *v3)) - (v8 * v3[1])) - (v9 * v3[2]);
    result[2] = ((0.0 - (v5 * *v3)) - (v6 * v3[1])) - (v10 * v3[2]);
  }

  return result;
}

float *sub_24020D6A4(float *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  if (v3 == result)
  {
    v7 = 0;
    result = sub_24020D6A4(&v7);
    *v2 = v7;
  }

  else
  {
    v4 = **a2;
    v5 = v4[1];
    v6 = v4[3];
    *result = (0.0 - (*v4 * *v3)) - (v4[2] * v3[1]);
    result[1] = (0.0 - (v5 * *v3)) - (v6 * v3[1]);
  }

  return result;
}

float *sub_24020D724(float *result, uint64_t **a2)
{
  v2 = result;
  v3 = **a2;
  if ((v3 - 4 * *(*a2 + 3)) == result)
  {
    v24 = 0uLL;
    result = sub_24020D724(&v24);
    *v2 = v24;
  }

  else
  {
    v4 = *(*a2 + 2);
    if (v4)
    {
      v5 = 0;
      v6 = *a2[1];
      v7 = *(v6 + 8);
      v8 = *v6;
      v9 = 4 * (3 * v4);
      v10 = 4 * v4;
      v11 = 4 * v7;
      v12 = 0.0;
      v13 = v8;
      do
      {
        v12 = v12 + (*(v3 + v5) * *v13);
        v5 += v10;
        v13 = (v13 + v11);
      }

      while (v9 != v5);
      v14 = 0;
      *result = v12;
      v15 = v3 + 4;
      v16 = 0.0;
      v17 = v8;
      do
      {
        v16 = v16 + (*(v15 + v14) * *v17);
        v14 += v10;
        v17 = (v17 + v11);
      }

      while (v9 != v14);
      v18 = 0;
      result[1] = v16;
      v19 = v8 + 1;
      v20 = 0.0;
      v21 = v19;
      do
      {
        v20 = v20 + (*(v3 + v18) * *v21);
        v18 += v10;
        v21 = (v21 + v11);
      }

      while (v9 != v18);
      v22 = 0;
      result[2] = v20;
      v23 = 0.0;
      do
      {
        v23 = v23 + (*(v15 + v22) * *v19);
        v22 += v10;
        v19 = (v19 + v11);
      }

      while (v9 != v22);
    }

    else
    {
      *result = 0;
      v23 = 0.0;
      result[2] = 0.0;
    }

    result[3] = v23;
  }

  return result;
}

double sub_24020D868(uint64_t a1, float **a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = a2[1], v4 == a1))
  {
    v6 = 0uLL;
    sub_24020D868(&v6);
    result = *&v6;
    *a1 = v6;
  }

  else
  {
    *a1 = ((*v3 * *v4) + 0.0) + (v3[2] * v4[1]);
    *(a1 + 4) = ((v3[1] * *v4) + 0.0) + (v3[3] * v4[1]);
    *(a1 + 8) = ((*v3 * v4[2]) + 0.0) + (v3[2] * v4[3]);
    *&result = ((v3[1] * v4[2]) + 0.0) + (v3[3] * v4[3]);
    *(a1 + 12) = LODWORD(result);
  }

  return result;
}

void sub_24020D924(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v1091 = *MEMORY[0x277D85DE8];
  if (!*a3)
  {

    sub_24021D088();
  }

  kdebug_trace();
  os_unfair_lock_lock(&unk_280C03818);
  v967 = a3;
  texture = *(*a3 + 88);
  v6 = *(*a3 + 200);
  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
  {
    sub_240222DDC();
  }

  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
  {
    sub_240222DDC();
  }

  if (*(qword_280C03828 + 324) == 1)
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v7 = qword_280C03978;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2401B8000, v7, OS_LOG_TYPE_DEFAULT, "Force enabling return of debug information.", buf, 2u);
    }
  }

  v8 = *v967;
  v9 = *(*v967 + 88);
  if (v9)
  {
    v10 = *a2;
    if (*(*a2 + 384))
    {
      kdebug_trace();
      v1041 = 0;
      v1040 = 0;
      v1042 = 0;
      (*(**(v10 + 384) + 16))(*(v10 + 384), v9, &v1040);
      v11 = v1040;
      v12 = v1041;
      while (v11 != v12)
      {
        if (v11[32] == 1)
        {
          v11[32] = 0;
        }

        v11 += 48;
      }

      kdebug_trace();
    }

    else
    {
      CVPixelBufferGetWidth(*(*v967 + 88));
      v13 = v8[11];
      if (v13)
      {
        CVPixelBufferGetHeight(v13);
      }

      v14 = v8[41];
      v15 = v8[42];
      v1042 = 0;
      v1040 = 0;
      v1041 = 0;
      if (v15 != v14)
      {
        if (((v15 - v14) >> 5) <= 0x555555555555555)
        {
          operator new();
        }

        sub_2401BDE28();
      }
    }
  }

  else
  {
    v1041 = 0;
    v1040 = 0;
    v1042 = 0;
  }

  v16 = *(*v967 + 80);
  v1038 = *(*v967 + 72);
  v1039 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  if (texture)
  {
    v17 = *v967;
    v18 = *(*v967 + 104);
    v19 = *(*v967 + 128);
    *v1034 = *(*v967 + 112);
    *&v1034[16] = v19;
    v20 = *(v17 + 144);
    *&v1035[4] = *(v17 + 148);
    *&v1035[20] = *(v17 + 164);
    v21 = *(v17 + 180);
    *v1035 = v20;
    *&v1035[36] = v21;
    v1037 = *(v17 + 192);
    v1036 = *(v17 + 184);
  }

  else
  {
    *&v1034[4] = 0;
    *&v1034[12] = 0x3F80000000000000uLL;
    *v1034 = 1065353216;
    *&v1034[28] = 0;
    *&v1035[16] = 0x3F80000000000000;
    *&v1035[8] = 0;
    *&v1035[24] = 0;
    *&v1035[32] = 0x3F80000000000000;
    __asm { FMOV            V0.2S, #1.0 }

    *v1035 = _D0;
    v1036 = 0;
    v18 = 0x100000001;
    v1037 = 0.0;
  }

  *&v1033 = &off_285227260;
  *(&v1033 + 1) = v18;
  if (v6)
  {
    v25 = *v967;
    v26 = *(*v967 + 240);
    *v1029 = *(*v967 + 224);
    *&v1029[16] = v26;
    v27 = *(v25 + 276);
    *&v1030[4] = *(v25 + 260);
    v28 = *(v25 + 216);
    v1027 = &off_285227260;
    v1028 = v28;
    v29 = *(v25 + 292);
    *v1030 = *(v25 + 256);
    *&v1030[36] = v29;
    *&v1030[20] = v27;
    v30 = *(v25 + 296);
    v1032 = *(v25 + 304);
    v1031 = v30;
    if ((**(*a2 + 8) & 1) != 0 || (*memptr = &v1035[4], v1087[0] = memptr, *buf = v1087, *&buf[8] = &v1036, *v1085 = 0, *&v1085[8] = 0, sub_24020D5E0(v1085, buf), __p[0] = &v1030[4], v1087[0] = __p, *buf = v1087, *&buf[8] = &v1031, *memptr = 0, *&memptr[8] = 0, sub_24020D5E0(memptr, buf), v32 = vsub_f32(*v1085, *memptr), (vaddv_f32(vmul_f32(v32, v32)) + ((*&v1085[8] - *&memptr[8]) * (*&v1085[8] - *&memptr[8]))) <= 0.00001) && ((((*&v1035[12] - *&v1030[12]) * (*&v1035[12] - *&v1030[12])) + ((*&v1035[24] - *&v1030[24]) * (*&v1035[24] - *&v1030[24]))) + ((*&v1035[36] - *&v1030[36]) * (*&v1035[36] - *&v1030[36]))) <= 0.00001)
    {
      v963 = 1;
    }

    else
    {
      if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(&qword_280C03A00);
      }

      v33 = qword_280C03978;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2401B8000, v33, OS_LOG_TYPE_ERROR, "RGB and depth must be registered", buf, 2u);
      }

      v963 = 0;
    }
  }

  else
  {
    v963 = 0;
    v1027 = &off_285227260;
    v1028 = 0x100000001;
    *&v1029[12] = 0x3F80000000000000;
    *&v1030[24] = 0;
    *&v1030[32] = 0x3F80000000000000;
    *&v1029[4] = 0;
    *&v1029[20] = 0;
    *v1029 = 1065353216;
    *&v1029[28] = 0;
    *&v1030[16] = 0x3F80000000000000;
    *&v1030[8] = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *v1030 = _D0;
    v1031 = 0;
    v1032 = 0.0;
  }

  v34 = *v967;
  v35 = *(*v967 + 48);
  v964 = *v967;
  if (v35)
  {
    if (v35 != 1)
    {
      goto LABEL_1112;
    }

    *buf = *(v34 + 24);
    *&buf[16] = *(v34 + 40);
    Seconds = CMTimeGetSeconds(buf);
  }

  else
  {
    Seconds = *(v34 + 24);
  }

  v956 = Seconds * 1000.0;
  if (*(*a2 + 88) == 1 && (sub_240269ECC(v964 + 24, *a2 + 56) + 1) <= 1u)
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v37 = qword_280C03978;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *a2;
      v39 = *(*a2 + 80);
      if (v39)
      {
        if (v39 != 1)
        {
          goto LABEL_1112;
        }

        *buf = *(v38 + 56);
        *&buf[16] = *(v38 + 72);
        v40 = CMTimeGetSeconds(buf);
      }

      else
      {
        v40 = *(v38 + 56);
      }

      *buf = 134218240;
      *&buf[4] = v40 * 1000.0;
      *&buf[12] = 2048;
      *&buf[14] = v956;
      _os_log_impl(&dword_2401B8000, v37, OS_LOG_TYPE_DEFAULT, "Non-increasing timestamp: last %.12g ms, current %.12g ms", buf, 0x16u);
    }
  }

  if (texture)
  {
    v41 = *v967;
    v42 = *a2;
    if (*(*a2 + 208) != 1 || (v43 = *(v42 + 112), v43 != *(v41 + 104)) || (v44 = *(v42 + 116), v44 != *(v41 + 108)) || vabds_f32(*(v42 + 120), *(v41 + 112)) >= (*(v42 + 120) * 0.05) || vabds_f32(*(v42 + 136), *(v41 + 128)) >= (*(v42 + 136) * 0.05) || vabds_f32(*(v42 + 144), *(v41 + 136)) >= (v43 * 0.05) || vabds_f32(*(v42 + 148), *(v41 + 140)) >= (v44 * 0.05) || !sub_240259558((v42 + 156), (v41 + 148)) || *(v42 + 192) != *(v41 + 184) || *(v42 + 196) != *(v41 + 188) || *(v42 + 200) != *(v41 + 192))
    {
      v45 = *(v42 + 96);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = *(v41 + 104);
        v47 = *(v41 + 108);
        *buf = 67109376;
        *&buf[4] = v46;
        *&buf[8] = 1024;
        *&buf[10] = v47;
        _os_log_impl(&dword_2401B8000, v45, OS_LOG_TYPE_DEFAULT, "Color camera resolution: %d x %d", buf, 0xEu);
        v45 = *(v42 + 96);
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v48 = *(v41 + 112);
        v49 = *(v41 + 124);
        v50 = *(v41 + 136);
        v51 = *(v41 + 116);
        v52 = *(v41 + 128);
        v53 = *(v41 + 140);
        v54 = *(v41 + 120);
        v55 = *(v41 + 132);
        v56 = *(v41 + 144);
        *buf = 134220032;
        *&buf[4] = v48;
        *&buf[12] = 2048;
        *&buf[14] = v49;
        *&buf[22] = 2048;
        *&buf[24] = v50;
        *v1054 = 2048;
        *&v1054[2] = v51;
        *&v1054[10] = 2048;
        *&v1054[12] = v52;
        v1055 = 2048;
        v1056 = v53;
        v1057 = 2048;
        v1058 = v54;
        v1059 = 2048;
        v1060 = v55;
        v1061 = 2048;
        v1062 = v56;
        _os_log_impl(&dword_2401B8000, v45, OS_LOG_TYPE_DEFAULT, "Color camera intrinsics: (%.3f %.3f %.3f), (%.3f %.3f %.3f), (%.3f %.3f %.3f)", buf, 0x5Cu);
        v45 = *(v42 + 96);
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v57 = *(v41 + 148);
        v58 = *(v41 + 160);
        v59 = *(v41 + 172);
        v60 = *(v41 + 184);
        v61 = *(v41 + 152);
        v62 = *(v41 + 164);
        v63 = *(v41 + 176);
        v64 = *(v41 + 188);
        v65 = *(v41 + 156);
        v66 = *(v41 + 168);
        v67 = *(v41 + 180);
        v68 = *(v41 + 192);
        *buf = 134220800;
        *&buf[4] = v57;
        *&buf[12] = 2048;
        *&buf[14] = v58;
        *&buf[22] = 2048;
        *&buf[24] = v59;
        *v1054 = 2048;
        *&v1054[2] = v60;
        *&v1054[10] = 2048;
        *&v1054[12] = v61;
        v1055 = 2048;
        v1056 = v62;
        v1057 = 2048;
        v1058 = v63;
        v1059 = 2048;
        v1060 = v64;
        v1061 = 2048;
        v1062 = v65;
        v1063 = 2048;
        v1064 = v66;
        v1065 = 2048;
        v1066 = v67;
        v1067 = 2048;
        v1068 = v68;
        _os_log_impl(&dword_2401B8000, v45, OS_LOG_TYPE_DEFAULT, "Color camera extrinsics: (%.3f %.3f %.3f %.3f), (%.3f %.3f %.3f %.3f), (%.3f %.3f %.3f %.3f)", buf, 0x7Au);
      }

      if (*(v42 + 208) == 1)
      {
        *(v42 + 208) = 0;
      }

      *(v42 + 104) = &off_285227260;
      *(v42 + 112) = *(v41 + 104);
      v69 = *(v41 + 112);
      v70 = *(v41 + 128);
      *(v42 + 152) = *(v41 + 144);
      *(v42 + 136) = v70;
      *(v42 + 120) = v69;
      v71 = *(v41 + 148);
      v72 = *(v41 + 164);
      *(v42 + 188) = *(v41 + 180);
      *(v42 + 172) = v72;
      *(v42 + 156) = v71;
      v73 = *(v41 + 184);
      *(v42 + 200) = *(v41 + 192);
      *(v42 + 192) = v73;
      *(v42 + 208) = 1;
    }
  }

  kdebug_trace();
  kdebug_trace();
  v74 = *a2;
  if (*(*a2 + 88))
  {
    v1087[3].i32[0] = 0;
    v1087[0] = 0x3FF0000000000000;
    sub_240269D58(buf, v74 + 56, v1087);
    if (sub_240269ECC(v964 + 24, buf) == 1)
    {
      if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(&qword_280C03A00);
      }

      v75 = qword_280C03978;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v76 = *a2;
        v77 = *(*a2 + 80);
        if (v77)
        {
          if (v77 != 1)
          {
            goto LABEL_1112;
          }

          *buf = *(v76 + 56);
          *&buf[16] = *(v76 + 72);
          v78 = CMTimeGetSeconds(buf);
        }

        else
        {
          v78 = *(v76 + 56);
        }

        *buf = 134218240;
        *&buf[4] = v78 * 1000.0;
        *&buf[12] = 2048;
        *&buf[14] = v956;
        _os_log_impl(&dword_2401B8000, v75, OS_LOG_TYPE_DEFAULT, "Timestamp gap detected, discarding all current face tracks: last %.12g ms, current %.12g ms", buf, 0x16u);
      }

      v79 = *a2;
      v80 = *(*a2 + 360);
      v81 = *v80;
      v82 = v80[1];
      v83 = v80;
      if (v82 != *v80)
      {
        do
        {
          v84 = *(v82 - 16);
          if (v84 && !atomic_fetch_add(&v84->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v84->__on_zero_shared)(v84);
            std::__shared_weak_count::__release_weak(v84);
          }

          v82 -= 24;
        }

        while (v82 != v81);
        v83 = *(v79 + 360);
      }

      v80[1] = v81;
      v85 = v83[3];
      for (i = v83[4]; i != v85; i -= 16)
      {
        v87 = *(i - 8);
        if (v87 && !atomic_fetch_add(&v87->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v87->__on_zero_shared)(v87);
          std::__shared_weak_count::__release_weak(v87);
        }
      }

      v83[4] = v85;
    }
  }

  v88 = *a2;
  v89 = *(*a2 + 88);
  v90 = *(v964 + 40);
  *(v88 + 56) = *(v964 + 24);
  *(v88 + 72) = v90;
  if ((v89 & 1) == 0)
  {
    *(v88 + 88) = 1;
  }

  v91 = *a2;
  v981 = *(*(*a2 + 8) + 12);
  v998 = *a2;
  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
  {
    sub_240222DDC();
  }

  v92 = *(qword_280C03828 + 112);
  v93 = *(v91 + 360);
  v94 = *v93;
  v95 = v93[1];
  v96 = 0xAAAAAAAAAAAAAAABLL * ((v95 - *v93) >> 3);
  if (v96 < 2)
  {
    goto LABEL_156;
  }

  v97 = 0;
  key = (v96 - 1);
  v991 = (v96 & 0x7FFFFFFF) - 1;
  LODWORD(v90.f64[0]) = 136315394;
  v989 = 24;
  while (2)
  {
    v98 = *(**(v91 + 360) + 24 * v97);
    v99 = *v98;
    if (!*(*v98 + 128))
    {
      goto LABEL_108;
    }

    v100 = v989;
    v101 = v991;
    while (1)
    {
      v102 = *(**(v998 + 360) + v100);
      v103 = *v102;
      v104 = *(*v102 + 128);
      if (!v104)
      {
        goto LABEL_113;
      }

      v105 = *(v99 + 44);
      v106 = vcvtq_f64_f32(v105);
      v107 = *(v103 + 44);
      v108 = vcvtq_f64_f32(v107);
      v109 = vcgt_f32(v107, v105);
      v110.i64[0] = v109.i32[0];
      v110.i64[1] = v109.i32[1];
      v111 = vaddq_f64(v108, vcvtq_f64_f32(*(v103 + 52)));
      v112 = vaddq_f64(v106, vcvtq_f64_f32(*(v99 + 52)));
      v113 = vsubq_f64(vbslq_s8(vcgtq_f64(v112, v111), v111, v112), vbslq_s8(v110, v108, v106));
      v114 = vcgt_f32(v105, v107);
      v110.i64[0] = v114.i32[0];
      v110.i64[1] = v114.i32[1];
      v115 = vsubq_f64(vbslq_s8(vcgtq_f64(v111, v112), v111, v112), vbslq_s8(v110, v108, v106));
      v116 = vzip1q_s64(v113, v115);
      v90 = vzip2q_s64(v113, v115);
      *&v90.f64[0] = vbic_s8(vcvt_f32_f64(vmulq_f64(v116, v90)), vmovn_s64(vcltzq_f64(vminnmq_f64(v116, v90))));
      if (*(v90.f64 + 1) <= 0.0)
      {
        goto LABEL_113;
      }

      *v90.f64 = *v90.f64 / *(v90.f64 + 1);
      if (*v90.f64 <= 0.7)
      {
        goto LABEL_113;
      }

      v117 = *(*v98 + 128);
      if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(&qword_280C03A00);
      }

      v118 = qword_280C03978;
      v119 = os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT);
      if (v104 > v117)
      {
        break;
      }

      if (!v119)
      {
        goto LABEL_112;
      }

      v120 = *(*v102 + 24);
      v121 = *(*v102 + 32);
      if (v121)
      {
        atomic_fetch_add_explicit(&v121->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v120)
      {
        v122 = (*v120 + 160);
        if (!v121)
        {
          goto LABEL_128;
        }
      }

      else
      {
        v122 = "(null)";
        if (!v121)
        {
          goto LABEL_128;
        }
      }

      if (!atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v121->__on_zero_shared)(v121);
        std::__shared_weak_count::__release_weak(v121);
      }

LABEL_128:
      v123 = *(*v98 + 24);
      v124 = *(*v98 + 32);
      if (v124)
      {
        atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v123)
      {
        v125 = (*v123 + 160);
        if (v124)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v125 = "(null)";
        if (v124)
        {
LABEL_134:
          if (!atomic_fetch_add(&v124->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v124->__on_zero_shared)(v124);
            std::__shared_weak_count::__release_weak(v124);
          }
        }
      }

      *buf = 136315394;
      *&buf[4] = v122;
      *&buf[12] = 2080;
      *&buf[14] = v125;
      _os_log_impl(&dword_2401B8000, v118, OS_LOG_TYPE_DEFAULT, "duplicate tracks for same face, discarding %s in favor of %s", buf, 0x16u);
LABEL_112:

      sub_24023B8E4(v102);
LABEL_113:
      v100 += 24;
      if (!--v101)
      {
        goto LABEL_108;
      }
    }

    if (v119)
    {
      v126 = *(*v98 + 24);
      v127 = *(*v98 + 32);
      if (v127)
      {
        atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v126)
      {
        v128 = (*v126 + 160);
        if (!v127)
        {
          goto LABEL_147;
        }
      }

      else
      {
        v128 = "(null)";
        if (!v127)
        {
          goto LABEL_147;
        }
      }

      if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v127->__on_zero_shared)(v127);
        std::__shared_weak_count::__release_weak(v127);
      }

LABEL_147:
      v129 = *(*v102 + 24);
      v130 = *(*v102 + 32);
      if (v130)
      {
        atomic_fetch_add_explicit(&v130->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v129)
      {
        v131 = (*v129 + 160);
        if (!v130)
        {
          goto LABEL_106;
        }
      }

      else
      {
        v131 = "(null)";
        if (!v130)
        {
          goto LABEL_106;
        }
      }

      if (!atomic_fetch_add(&v130->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v130->__on_zero_shared)(v130);
        std::__shared_weak_count::__release_weak(v130);
      }

LABEL_106:
      *buf = 136315394;
      *&buf[4] = v128;
      *&buf[12] = 2080;
      *&buf[14] = v131;
      _os_log_impl(&dword_2401B8000, v118, OS_LOG_TYPE_DEFAULT, "duplicate tracks for same face, discarding %s in favor of %s", buf, 0x16u);
    }

    sub_24023B8E4(v98);
LABEL_108:
    ++v97;
    --v991;
    v989 += 24;
    v91 = v998;
    if (v97 != key)
    {
      continue;
    }

    break;
  }

  v93 = *(v998 + 360);
  v94 = *v93;
  v95 = v93[1];
LABEL_156:
  v132 = v94;
  if (v94 != v95)
  {
    while (*(**v132 + 128))
    {
      v132 = (v132 + 24);
      if (v132 == v95)
      {
        goto LABEL_177;
      }
    }

    if (v132 != v95)
    {
      v133 = (v132 + 24);
      if ((v132 + 24) != v95)
      {
        do
        {
          if (*(**v133 + 128))
          {
            v134 = *v133;
            *v133 = 0;
            *(v133 + 1) = 0;
            v135 = *(v132 + 1);
            *v132 = v134;
            if (v135 && !atomic_fetch_add(&v135->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v135->__on_zero_shared)(v135);
              std::__shared_weak_count::__release_weak(v135);
            }

            LODWORD(v90.f64[0]) = *(v133 + 4);
            *(v132 + 4) = LODWORD(v90.f64[0]);
            v132 = (v132 + 24);
          }

          v133 = (v133 + 24);
        }

        while (v133 != v95);
        v95 = v93[1];
      }
    }
  }

  if (v132 != v95)
  {
    do
    {
      v136 = *(v95 - 2);
      if (v136 && !atomic_fetch_add(&v136->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v136->__on_zero_shared)(v136);
        std::__shared_weak_count::__release_weak(v136);
      }

      v95 = (v95 - 24);
    }

    while (v95 != v132);
    v93[1] = v132;
  }

LABEL_177:
  v137 = *(v91 + 360);
  v138 = *v137;
  v139 = v137[1];
  __asm { FMOV            V7.4S, #1.0 }

  if (*v137 != v139)
  {
    LODWORD(v90.f64[0]) = 1.0;
    v141 = *v137;
    do
    {
      v142 = **v141;
      v143.i64[0] = __PAIR64__(*&v1034[16], *v1034);
      *v144.f32 = vsub_f32(*(v142 + 44), *&v1034[24]);
      v143.i64[1] = __PAIR64__(*&v1034[16], *v1034);
      v144.i64[1] = *(v142 + 52);
      v145 = vmulq_f32(vdivq_f32(_Q7, v143), v144);
      v146 = vextq_s8(v145, v145, 8uLL).u64[0];
      v147 = *&v145.i32[2];
      if (*&v145.i32[2] < *&v145.i32[3])
      {
        v147 = *&v145.i32[3];
      }

      v148 = vadd_f32(vmul_f32(v146, 0x3F0000003F000000), *v145.i8);
      v148.f32[0] = vaddv_f32(vmul_f32(v148, v148));
      v141[4] = (v147 * v147) / (((v148.f32[0] * (v92 + 1.0)) + 1.0) * ((v148.f32[0] * (v92 + 1.0)) + 1.0));
      v141 += 6;
    }

    while (v141 != v139);
  }

  v990 = _Q7;
  v149 = v139 - v138;
  v150 = v1040;
  v151 = v1041;
  if (v1040 != v1041)
  {
    v969 = (v139 - v138);
    v152 = 0xAAAAAAAAAAAAAAABLL * (v149 >> 3);
    if (v152 <= 1)
    {
      v153 = 1;
    }

    else
    {
      v153 = v152;
    }

    __asm
    {
      FMOV            V11.2S, #-0.25
      FMOV            V12.2S, #1.5
      FMOV            V15.2S, #0.25
    }

    do
    {
      v90.f64[0] = *(v150 + 4);
      v157 = *(v150 + 12);
      *buf = *(v150 + 20);
      *&buf[16] = *(v150 + 9);
      if (v157.f32[0] >= 0.0 && v157.f32[1] >= 0.0 && (v157.f32[0] * v157.f32[1]) >= 0.00000011921)
      {
        v159 = vadd_f32(*&v90.f64[0], vmul_f32(v157, _D11));
        v992 = vmul_f32(v157, _D12);
        if (v138 == v139)
        {
LABEL_187:
          *v155.f32 = vadd_f32(v159, 0x3F0000003F000000);
          *v156.f32 = vcvt_f32_u32(vmax_s32(*(&v1033 + 8), 0x100000001));
          v156.i64[1] = v156.i64[0];
          *&v155.u32[2] = v992;
          v90 = vmulq_f32(v155, vdivq_f32(_Q7, v156));
          v155.i64[0] = vextq_s8(v90, v90, 8uLL).u64[0];
          *&v90.f64[0] = vadd_f32(*&v90.f64[0], vmul_f32(*v155.f32, _D15));
          *v155.f32 = vadd_f32(*&v90.f64[0], vmul_f32(*v155.f32, 0x3F0000003F000000));
          v155.i64[1] = *&v90.f64[0];
          LODWORD(v90.f64[0]) = vmovn_s32(vmvnq_s8(vcgeq_f32(xmmword_240270BD0, v155))).u32[0];
          HIDWORD(v90.f64[0]) = vmovn_s32(vmvnq_s8(vcgeq_f32(v155, xmmword_240270BD0))).i32[1];
          LOWORD(v90.f64[0]) = vmaxv_u16(*&v90.f64[0]);
          if ((LOBYTE(v90.f64[0]) & 1) == 0)
          {
            operator new();
          }
        }

        else
        {
          v160 = **(v91 + 360);
          v161 = vcvtq_f64_f32(v159);
          v162 = vaddq_f64(v161, vcvtq_f64_f32(v992));
          v163 = v153;
          while (1)
          {
            v164 = **v160;
            if (v164[16])
            {
              v165 = *(v164 + 44);
              v166 = vcvtq_f64_f32(v165);
              v167 = *(v164 + 52);
              v168 = vcgt_f32(v165, v159);
              v169.i64[0] = v168.i32[0];
              v169.i64[1] = v168.i32[1];
              v170 = vbslq_s8(v169, v166, v161);
              v171 = vaddq_f64(v166, vcvtq_f64_f32(v167));
              v172 = vsubq_f64(vbslq_s8(vcgtq_f64(v162, v171), v171, v162), v170);
              v171.f64[0] = fmin(v172.f64[0], v172.f64[1]);
              v173 = vmuld_lane_f64(v172.f64[0], v172, 1);
              if (v171.f64[0] < 0.0)
              {
                v173 = 0.0;
              }

              v174 = vzip1_s32(v167, v992);
              v175 = vzip2_s32(v167, v992);
              v176 = vbic_s8(vmul_f32(v174, v175), vcltz_f32(vminnm_f32(v174, v175)));
              if (*v176.i32 >= *&v176.i32[1])
              {
                v176.i32[0] = v176.i32[1];
              }

              v177 = v173 / *v176.i32;
              if (*v176.i32 <= 0.0)
              {
                v177 = 0.0;
              }

              if (v177 >= 0.5)
              {
                break;
              }
            }

            v160 += 3;
            if (!--v163)
            {
              goto LABEL_187;
            }
          }

          LODWORD(v90.f64[0]) = 1061997773;
          if (v177 >= 0.8)
          {
            v164[10] = *(v150 + 5);
          }
        }
      }

      v150 += 48;
    }

    while (v150 != v151);
    v178 = *(v91 + 360);
    v138 = *v178;
    v139 = v178[1];
    v149 = v969;
  }

  v179 = v138 + v149;
  v180 = v139 - (v138 + v149);
  v181 = 0xAAAAAAAAAAAAAAABLL * (v180 >> 3);
  if (v180 < 1)
  {
    v186 = 0;
    v183 = 0;
  }

  else
  {
    v182 = MEMORY[0x277D826F0];
    v183 = 0xAAAAAAAAAAAAAAABLL * (v180 >> 3);
    while (1)
    {
      v184 = operator new(24 * v183, v182);
      if (v184)
      {
        break;
      }

      v185 = v183 >> 1;
      v395 = v183 > 1;
      v183 >>= 1;
      if (!v395)
      {
        v186 = 0;
        v183 = v185;
        goto LABEL_216;
      }
    }

    v186 = v184;
  }

LABEL_216:
  sub_2401F8198(v179, v139, buf, v181, v186, v183, *v90.f64);
  if (v186)
  {
    operator delete(v186);
  }

  v187 = *(v91 + 360);
  v188 = 0xAAAAAAAAAAAAAAABLL * ((v187[1] - *v187) >> 3);
  if (v188 >= 2)
  {
    v189 = v188 - 1;
    v190 = *v187 + 24;
    do
    {
      v191 = v190;
      v192 = v189;
      do
      {
        v193 = *(v191 + 16);
        v194 = *(v191 - 8);
        if (v193 > (v194 + v194))
        {
          v195 = *v191;
          *(v191 - 8) = v193;
          v196 = *(v191 - 24);
          *(v191 - 24) = v195;
          *v191 = v196;
          *(v191 + 16) = v194;
        }

        v191 += 24;
        --v192;
      }

      while (v192);
      --v188;
      --v189;
    }

    while (v188 > 1);
    v187 = *(v91 + 360);
  }

  v198 = v187[3];
  v197 = v187[4];
  if (v197 == v198)
  {
    v200 = v187;
  }

  else
  {
    do
    {
      v199 = *(v197 - 8);
      if (v199 && !atomic_fetch_add(&v199->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v199->__on_zero_shared)(v199);
        std::__shared_weak_count::__release_weak(v199);
      }

      v197 -= 16;
    }

    while (v197 != v198);
    v200 = *(v91 + 360);
    v197 = v200[3];
  }

  v187[4] = v198;
  if (v981 > (v200[5] - v197) >> 4)
  {
    if ((v981 & 0x80000000) == 0)
    {
      operator new();
    }

LABEL_1104:
    sub_2401BDE28();
  }

  v201 = -1431655765 * ((*(*(v91 + 360) + 8) - **(v91 + 360)) >> 3);
  keya = v201;
  if (v201 >= v981)
  {
    v201 = v981;
  }

  v993 = v201;
  if (v201 >= 1)
  {
    v202 = 0;
    v203 = 24 * v201;
    while (1)
    {
      v204 = *(v998 + 360);
      v205 = *v204;
      v206 = v204[4];
      v207 = v204[5];
      if (v206 >= v207)
      {
        v210 = v204[3];
        v211 = (v206 - v210) >> 4;
        v212 = v211 + 1;
        if ((v211 + 1) >> 60)
        {
          goto LABEL_1104;
        }

        v213 = v207 - v210;
        if (v213 >> 3 > v212)
        {
          v212 = v213 >> 3;
        }

        if (v213 >= 0x7FFFFFFFFFFFFFF0)
        {
          v214 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v214 = v212;
        }

        if (v214)
        {
          if (!(v214 >> 60))
          {
            operator new();
          }

          goto LABEL_1105;
        }

        v215 = 16 * v211;
        v216 = *(v205 + v202);
        *(16 * v211) = v216;
        if (*(&v216 + 1))
        {
          atomic_fetch_add_explicit((*(&v216 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v209 = (v215 + 16);
        v217 = v204[3];
        v218 = v204[4] - v217;
        v219 = v215 - v218;
        memcpy((v215 - v218), v217, v218);
        v204[3] = v219;
        v204[4] = v209;
        v204[5] = 0;
        if (v217)
        {
          operator delete(v217);
        }
      }

      else
      {
        *v206 = *(v205 + v202);
        v208 = *(v205 + v202 + 8);
        v206[1] = v208;
        if (v208)
        {
          atomic_fetch_add_explicit((v208 + 8), 1uLL, memory_order_relaxed);
        }

        v209 = v206 + 2;
      }

      v204[4] = v209;
      v220 = **(v205 + v202);
      if (!*(v220 + 128))
      {
        break;
      }

LABEL_243:
      v202 += 24;
      if (v203 == v202)
      {
        goto LABEL_274;
      }
    }

    _D12.i32[0] = *(v220 + 44);
    _D11.i32[0] = *(v220 + 48);
    v222 = *(v220 + 52);
    v221 = *(v220 + 56);
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v223 = qword_280C03978;
    if (!os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
    {
LABEL_242:

      goto LABEL_243;
    }

    v224 = **(v205 + v202);
    v225 = *(v224 + 24);
    v226 = *(v224 + 32);
    if (v226)
    {
      atomic_fetch_add_explicit(&v226->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v225)
    {
      v227 = (*v225 + 160);
      if (!v226)
      {
        goto LABEL_241;
      }
    }

    else
    {
      v227 = "(null)";
      if (!v226)
      {
LABEL_241:
        *buf = 136316162;
        *&buf[4] = v227;
        *&buf[12] = 2048;
        *&buf[14] = (_D12.f32[0] + (v222 * 0.5));
        *&buf[22] = 2048;
        *&buf[24] = (_D11.f32[0] + (v221 * 0.5));
        *v1054 = 2048;
        *&v1054[2] = v222;
        *&v1054[10] = 2048;
        *&v1054[12] = v221;
        _os_log_impl(&dword_2401B8000, v223, OS_LOG_TYPE_DEFAULT, "new track for user %s at (%.0f,%.0f), bbox size (%.0f,%.0f)", buf, 0x34u);
        goto LABEL_242;
      }
    }

    if (!atomic_fetch_add(&v226->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v226->__on_zero_shared)(v226);
      std::__shared_weak_count::__release_weak(v226);
    }

    goto LABEL_241;
  }

LABEL_274:
  if (v981 < keya)
  {
    v228 = keya - v981;
    v229 = 24 * v981;
    while (1)
    {
      v230 = **(v998 + 360);
      v231 = *(v230 + v229);
      if (*(*v231 + 128))
      {
        break;
      }

LABEL_276:
      sub_24023B8E4(v231);
      v229 += 24;
      if (!--v228)
      {
        goto LABEL_292;
      }
    }

    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v232 = qword_280C03978;
    if (!os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
    {
LABEL_289:

      v231 = *(v230 + v229);
      goto LABEL_276;
    }

    v233 = **(v230 + v229);
    v234 = *(v233 + 24);
    v235 = *(v233 + 32);
    if (v235)
    {
      atomic_fetch_add_explicit(&v235->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v234)
    {
      v236 = (*v234 + 160);
      if (!v235)
      {
        goto LABEL_288;
      }
    }

    else
    {
      v236 = "(null)";
      if (!v235)
      {
LABEL_288:
        *buf = 136315394;
        *&buf[4] = v236;
        *&buf[12] = 1024;
        *&buf[14] = v993;
        _os_log_impl(&dword_2401B8000, v232, OS_LOG_TYPE_DEFAULT, "resetting track for user %s: exceeded number of faces to track (%d)", buf, 0x12u);
        goto LABEL_289;
      }
    }

    if (!atomic_fetch_add(&v235->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v235->__on_zero_shared)(v235);
      std::__shared_weak_count::__release_weak(v235);
    }

    goto LABEL_288;
  }

LABEL_292:
  v982 = (*(v998 + 360) + 24);
  v988 = *(v998 + 360);
  v237 = *(v988 + 32) - *v982;
  v238 = (v237 >> 4);
  kdebug_trace();
  v239 = v237 >> 4;
  v240 = *a2;
  v241 = -1431655765 * ((v1041 - v1040) >> 4);
  v242.i64[0] = 0x100000001;
  v242.i64[1] = __PAIR64__(v963, texture != 0);
  *(*a2 + 216) = vaddq_s32(*(*a2 + 216), v242);
  if (v241 >= 3)
  {
    v243 = 3;
  }

  else
  {
    v243 = v241;
  }

  ++*(v240 + 4 * v243 + 236);
  ++*(v240 + 4 * v239 + 252);
  if (!texture)
  {
    v246 = v239 > 0;
    goto LABEL_469;
  }

  if (*(v988 + 24) != *(v988 + 32))
  {
    (*(**(v240 + 400) + 16))(*(v240 + 400), v982, texture, v964 + 24);
  }

  if (v239 < 1)
  {
    v246 = 0;
    goto LABEL_469;
  }

  if (*(*a2 + 376) != 1)
  {
    v246 = 1;
    goto LABEL_469;
  }

  kdebug_trace();
  v999 = *a2;
  v244 = *(*(*a2 + 8) + 48);
  if (v244 == 1)
  {
    v245 = 3;
  }

  else if (v244 == 2)
  {
    v245 = 0;
  }

  else
  {
    v247 = *(v988 + 24);
    v248 = *(v988 + 32);
    if (v247 == v248)
    {
      v249 = 0;
    }

    else
    {
      v249 = 0;
      v250 = *(v999 + 48);
      do
      {
        v251 = *v247;
        v247 += 2;
        v252 = llroundf(-1.0 - log2f(v250 / *(*v251 + 52)));
        if (v252 < 0)
        {
          v252 = -1;
        }

        if (v249 <= v252 + 1)
        {
          v249 = v252 + 1;
        }
      }

      while (v247 != v248);
    }

    if (v249 >= 3)
    {
      v245 = 3;
    }

    else
    {
      v245 = v249;
    }
  }

  CVPixelBufferRetain(texture);
  Width = CVPixelBufferGetWidth(texture);
  v957 = v237;
  v958 = (v237 >> 4);
  v954 = v237 >> 4;
  Height = CVPixelBufferGetHeight(texture);
  PixelFormatType = CVPixelBufferGetPixelFormatType(texture);
  v255 = *(v999 + 368);
  if (*v255 == Width && *(v255 + 4) == Height && PixelFormatType == *(v255 + 20) && *(v255 + 12) >= v245)
  {
    goto LABEL_384;
  }

  v994 = v245;
  pixelBuffer = v245;
  if (v245 > ((*(v255 + 40) - *(v255 + 24)) >> 3))
  {
    operator new();
  }

  v255 = *(v999 + 368);
  *(v255 + 56) = *(v255 + 48);
  *v255 = Width;
  *(v255 + 4) = Height;
  v256 = PixelFormatType;
  *(v255 + 16) = v245;
  *(v255 + 20) = PixelFormatType;
  *(v255 + 12) = v245;
  if (v245 < 1)
  {
    goto LABEL_384;
  }

  v257 = 0;
  v258 = (Height / 2);
  v259 = (Width / 2);
  keyb = *MEMORY[0x277CD2A50];
  while (v259 >= 17 && v258 > 16)
  {
    v260 = *(v999 + 368);
    v262 = v260[3];
    v261 = v260[4];
    v263 = v261 - v262;
    if (v257 < ((v261 - v262) >> 3))
    {
      goto LABEL_359;
    }

    v264 = v260[5];
    if (v261 < v264)
    {
      *v261 = 0;
      v260[4] = v261 + 8;
      goto LABEL_359;
    }

    v265 = v263 >> 3;
    v266 = (v263 >> 3) + 1;
    if (v266 >> 61)
    {
      sub_2401BDE28();
    }

    v267 = v264 - v262;
    if (v267 >> 2 > v266)
    {
      v266 = v267 >> 2;
    }

    if (v267 >= 0x7FFFFFFFFFFFFFF8)
    {
      v268 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v268 = v266;
    }

    if (v268)
    {
      if (!(v268 >> 61))
      {
        operator new();
      }

      goto LABEL_1105;
    }

    v269 = v263 >> 3;
    *(8 * v265) = 0;
    v270 = 8 * v265 + 8;
    if (v262 != v261)
    {
      v271 = v261 - v262 - 8;
      v272 = v262;
      v273 = 0;
      if (v271 >= 0x98 && ((v262 + (v271 & 0xFFFFFFFFFFFFFFF8)) == -8 || (v272 = v262, v273 = 0, v262 >= v263 + (v271 & 0xFFFFFFFFFFFFFFF8) - 8 * v269 + 8)))
      {
        v274 = (v271 >> 3) + 1;
        v272 = &v262[v274 & 0x3FFFFFFFFFFFFFFCLL];
        v275 = (-8 * v269 + 8 * v265 + 16);
        v276 = v262;
        v277 = v274 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v278 = *(v276 + 1);
          *(v275 - 1) = *v276;
          *v275 = v278;
          *v276 = 0uLL;
          *(v276 + 1) = 0uLL;
          v276 += 4;
          v275 += 2;
          v277 -= 4;
        }

        while (v277);
        if (v274 != (v274 & 0x3FFFFFFFFFFFFFFCLL))
        {
          v273 = (8 * (v274 & 0x3FFFFFFFFFFFFFFCLL));
          goto LABEL_350;
        }
      }

      else
      {
        do
        {
LABEL_350:
          *v273++ = *v272;
          *v272++ = 0;
        }

        while (v272 != v261);
      }

      do
      {
        if (*v262)
        {
          CVPixelBufferRelease(*v262);
        }

        ++v262;
      }

      while (v262 != v261);
      v262 = v260[3];
    }

    v260[3] = 0;
    v260[4] = v270;
    v260[5] = 0;
    if (v262)
    {
      operator delete(v262);
    }

    v262 = *(*(v999 + 368) + 24);
    v260[4] = v270;
    v256 = PixelFormatType;
LABEL_359:
    v279 = &v262[v257];
    v280 = *v279;
    if (!*v279)
    {
      goto LABEL_375;
    }

    IsPlanar = CVPixelBufferIsPlanar(*v279);
    if (v259 != CVPixelBufferGetWidth(v280) || v258 != CVPixelBufferGetHeight(v280) || CVPixelBufferGetPixelFormatType(v280) != v256)
    {
LABEL_373:
      if (*v279)
      {
        CVPixelBufferRelease(*v279);
        *v279 = 0;
      }

LABEL_375:
      cva::pixelBufferCreate(v259, v258, v256, &v262[v257], 0x10, 0x10u, 0, 1u, 0, v952);
      if (!*v279)
      {
        if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
        {
          qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
          __cxa_guard_release(&qword_280C03A00);
        }

        v307 = qword_280C03978;
        if (os_log_type_enabled(v307, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2401B8000, v307, OS_LOG_TYPE_ERROR, "failed to create/update buffer", buf, 2u);
        }

LABEL_950:

LABEL_951:
        CVPixelBufferRelease(texture);
        if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
        {
          qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
          __cxa_guard_release(&qword_280C03A00);
        }

        v855 = qword_280C03978;
        if (os_log_type_enabled(v855, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2401B8000, v855, OS_LOG_TYPE_ERROR, "could not generate image pyramid", buf, 2u);
        }

        sub_24021D088();
      }

      IOSurface = CVPixelBufferGetIOSurface(*(*(*(v999 + 368) + 24) + 8 * v257));
      if (IOSurface)
      {
        IOSurfaceSetValue(IOSurface, keyb, @"AppleCVA:ImagePyramid");
      }

      goto LABEL_327;
    }

    if (IsPlanar)
    {
      v282 = 0;
      v283 = 1;
      while (v282 < CVPixelBufferGetPlaneCount(v280))
      {
        v283 = v283 && (CVPixelBufferGetBytesPerRowOfPlane(v280, v282++) & 0xF) == 0;
      }

      if (!v283)
      {
        goto LABEL_373;
      }
    }

    else if ((CVPixelBufferGetBytesPerRow(v280) & 0xF) != 0)
    {
      goto LABEL_373;
    }

LABEL_327:
    v259 = v259 >> 1;
    v258 = v258 >> 1;
    if (++v257 == v994)
    {
      v255 = *(v999 + 368);
      goto LABEL_383;
    }
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v285 = qword_280C03978;
  if (os_log_type_enabled(v285, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    *&buf[4] = v257;
    *&buf[8] = 1024;
    *&buf[10] = v259;
    *&buf[14] = 1024;
    *&buf[16] = v258;
    _os_log_impl(&dword_2401B8000, v285, OS_LOG_TYPE_INFO, "image size in pyramid is becoming too small, size for level %d is %d/%d, stopping!", buf, 0x14u);
  }

  v255 = *(v999 + 368);
  *(v255 + 16) = v257;
LABEL_383:
  v245 = pixelBuffer;
LABEL_384:
  v286 = *(v255 + 16);
  if (v286 >= v245)
  {
    v286 = v245;
  }

  *(v255 + 8) = v286;
  if (*(v255 + 24) != *(v255 + 32) && !*(v255 + 72))
  {
    operator new();
  }

  v287 = *(v255 + 48);
  if (v287 == *(v255 + 56))
  {
    v288 = *(v255 + 8);
    v289 = 0x6DB6DB6DB6DB6DB7;
    if (0x6DB6DB6DB6DB6DB7 * ((*(v255 + 64) - v287) >> 2) < v288)
    {
      if ((v288 & 0x80000000) == 0)
      {
        operator new();
      }

LABEL_1119:
      sub_2401BDE28();
    }

    *(v1087 + 4) = 0;
    v1087[0].i32[0] = 1065353216;
    *&v1087[1].i32[1] = xmmword_2402708C0;
    if (*(v255 + 8) >= 1)
    {
      v290 = 0;
      while (1)
      {
        *&v1085[4] = 0;
        *v1085 = 1056964608;
        *&v1085[12] = 1056964608;
        *&v1085[16] = 0;
        *&v1085[24] = 1048576000;
        __p[0] = v1085;
        __p[1] = v1087;
        *&memptr[8] = 0;
        *memptr = 0;
        sub_24020D868(memptr, __p);
        *__dst = v1085;
        *&__dst[8] = &v1087[2];
        *&buf[4] = 0;
        sub_2401CE980(&buf[4], __dst);
        v292.i32[0] = *&memptr[12];
        *v293.i32 = vmuls_lane_f32(-*&memptr[8], *memptr, 1) + (*memptr * *&memptr[12]);
        v1087[0] = *memptr;
        v1087[1] = *&memptr[8];
        v1087[2] = vadd_f32(*&buf[4], 0);
        v1087[3].i32[0] = v293.i32[0];
        if (fabsf(*v293.i32) < 1.0e-15)
        {
          break;
        }

        v292.f32[1] = -*&memptr[4];
        v292.i64[1] = __PAIR64__(*memptr, -*&memptr[8]);
        v995 = vdivq_f32(v292, vdupq_lane_s32(v293, 0));
        *buf = v995;
        *memptr = buf;
        *v1085 = memptr;
        *&v1085[8] = &v1087[2];
        __p[0] = 0;
        sub_24020D6A4(__p, v1085);
        _D12.i32[0] = v995.i32[3];
        v294 = HIDWORD(__p[0]);
        _D11.i32[0] = __p[0];
        v295 = (v995.f32[1] * COERCE_FLOAT(v995.i32[2] ^ 0x80000000)) + (v995.f32[0] * v995.f32[3]);
        v297 = *(v255 + 56);
        v296 = *(v255 + 64);
        if (v297 < v296)
        {
          *v297 = v995;
          v297[1].i32[0] = _D11.i32[0];
          v291 = &v297[1].i64[1] + 4;
          v297[1].i32[1] = v294;
          v297[1].f32[2] = v295;
        }

        else
        {
          v298 = *(v255 + 48);
          v299 = ((v297 - v298) >> 2) * v289;
          v300 = v299 + 1;
          if ((v299 + 1) > 0x924924924924924)
          {
            goto LABEL_1119;
          }

          v301 = v289;
          v302 = ((v296 - v298) >> 2) * v289;
          if (2 * v302 > v300)
          {
            v300 = 2 * v302;
          }

          if (v302 >= 0x492492492492492)
          {
            v303 = 0x924924924924924;
          }

          else
          {
            v303 = v300;
          }

          if (v303)
          {
            if (v303 <= 0x924924924924924)
            {
              operator new();
            }

            goto LABEL_1105;
          }

          v304 = 28 * v299;
          *v304 = v995;
          *(v304 + 16) = _D11.i32[0];
          *(v304 + 20) = v294;
          *(v304 + 24) = v295;
          v305 = 28 * v299 - (v297 - v298);
          if (v298 != v297)
          {
            v306 = 28 * v299 - (v297 - v298);
            do
            {
              *v306 = *v298;
              *(v306 + 16) = v298[1].i64[0];
              *(v306 + 24) = v298[1].i32[2];
              v298 = (v298 + 28);
              v306 += 28;
            }

            while (v298 != v297);
            v298 = *(v255 + 48);
          }

          v291 = v304 + 28;
          *(v255 + 48) = v305;
          *(v255 + 56) = v304 + 28;
          *(v255 + 64) = 0;
          if (v298)
          {
            operator delete(v298);
          }

          v289 = v301;
        }

        *(v255 + 56) = v291;
        if (++v290 >= *(v255 + 8))
        {
          goto LABEL_419;
        }
      }

      if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(&qword_280C03A00);
      }

      v931 = qword_280C03978;
      if (os_log_type_enabled(v931, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2401B8000, v931, OS_LOG_TYPE_ERROR, "failed to set transformation in image pyramid", buf, 2u);
      }

      v950 = *(v999 + 368);
      v951 = *(v950 + 80);
      *(v950 + 72) = 0;
      *(v950 + 80) = 0;
      if (v951 && !atomic_fetch_add(&v951->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v951->__on_zero_shared)(v951);
        std::__shared_weak_count::__release_weak(v951);
      }

      goto LABEL_951;
    }

LABEL_419:
    v255 = *(v999 + 368);
  }

  if (*(v255 + 8) < 1)
  {
    goto LABEL_468;
  }

  v308 = 0;
  v309 = 1;
  v310 = texture;
  while (2)
  {
    if (!v309)
    {
      goto LABEL_947;
    }

    v311 = v310;
    v310 = *(*(v255 + 24) + 8 * v308);
    if (***(v255 + 72))
    {
      if (v311)
      {
        if (v310)
        {
          if (CVPixelBufferGetIOSurface(v311))
          {
            if (CVPixelBufferGetIOSurface(v310))
            {
              *v1085 = xmmword_285227FE0;
              *&v1085[16] = qword_285227FF0;
              v312 = CVPixelBufferGetWidth(v311);
              v313 = CVPixelBufferGetHeight(v311);
              v314 = CVPixelBufferGetWidth(v310);
              v315 = CVPixelBufferGetHeight(v310);
              *v1054 = 0;
              *buf = 0u;
              v316 = vmin_u32((*&vmax_s32(__PAIR64__(v315, v314), 0) & 0xFFFFFFFEFFFFFFFELL), (*&vshr_n_u32(vmax_s32(__PAIR64__(v313, v312), 0), 1uLL) & 0xFFFFFFFEFFFFFFFELL));
              *&buf[16] = vshll_n_u32(vadd_s32(v316, v316), 0x10uLL);
              *&v1054[8] = v316;
              CVPixelBufferGetIOSurface(v311);
              CVPixelBufferGetIOSurface(v310);
              v317 = IOSurfaceAcceleratorTransformSurface();
              v309 = v317 == 0;
              if (v317)
              {
                v318 = CFCopyDescription(v311);
                v319 = CFCopyDescription(v310);
                if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
                {
                  qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
                  __cxa_guard_release(&qword_280C03A00);
                }

                v320 = qword_280C03978;
                if (os_log_type_enabled(v320, OS_LOG_TYPE_ERROR))
                {
                  cva::ItemHandler::ItemHandler(__dst, v318);
                  cva::ItemHandler::getValue<std::string>();
                }

                CFRelease(v318);
                CFRelease(v319);
              }

LABEL_452:
              v255 = *(v999 + 368);
              if (++v308 < *(v255 + 8))
              {
                continue;
              }

              if (!v309)
              {
LABEL_947:
                if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
                {
                  qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
                  __cxa_guard_release(&qword_280C03A00);
                }

                v307 = qword_280C03978;
                if (os_log_type_enabled(v307, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_2401B8000, v307, OS_LOG_TYPE_ERROR, "failure during hardware scaling", buf, 2u);
                }

                goto LABEL_950;
              }

LABEL_468:
              CVPixelBufferRelease(texture);
              kdebug_trace();
              v246 = 1;
              LODWORD(v239) = v954;
              v237 = v957;
              v238 = v958;
LABEL_469:
              *v1024 = 0u;
              *v1025 = 0u;
              v1026 = 1065353216;
              kdebug_trace();
              (*(**(*a2 + 400) + 32))(*(*a2 + 400), v982, v1024);
              kdebug_trace();
              v323 = *(v988 + 24);
              v322 = *(v988 + 32);
              *&buf[8] = 0;
              *buf = 0;
              v1023 = 0;
              v1021 = 0;
              v1022 = 0;
              if (v322 != v323)
              {
                if (((v322 - v323) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                sub_2401BDE28();
              }

              if (!texture)
              {
                goto LABEL_1084;
              }

              v953 = v246;
              v324 = *a2;
              v326 = *(*a2 + 336);
              v325 = *(*a2 + 344);
              v327 = (v325 - v326) >> 5;
              v328 = v238 - v327;
              if (v238 > v327)
              {
                v329 = *(v324 + 352);
                if (v328 > (v329 - v325) >> 5)
                {
                  if (v238 >> 59)
                  {
                    sub_2401BDE28();
                  }

                  v330 = v329 - v326;
                  v331 = (v329 - v326) >> 4;
                  if (v331 <= v238)
                  {
                    v331 = v238;
                  }

                  if (v330 >= 0x7FFFFFFFFFFFFFE0)
                  {
                    v332 = 0x7FFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v332 = v331;
                  }

                  if (!(v332 >> 59))
                  {
                    operator new();
                  }

                  goto LABEL_1105;
                }

                v335 = v325 + 32 * v328;
                v336 = (v325 + 8);
                v337 = 32 * v238 - 32 * v327;
                do
                {
                  *v336 = 0;
                  v336[1] = 0;
                  v336[2] = 0;
                  v336 += 4;
                  v337 -= 32;
                }

                while (v337);
                *(v324 + 344) = v335;
                v1020 = 0;
                v1019 = 0;
LABEL_494:
                if (v238 < 0x276276276276277)
                {
                  operator new();
                }

                sub_2401BDE28();
              }

              if (v238 < v327)
              {
                v333 = v326 + 32 * v238;
                while (v325 != v333)
                {
                  v334 = *(v325 - 8);
                  if (v334)
                  {
                    free(v334);
                    *(v325 - 8) = 0;
                  }

                  v325 -= 32;
                }

                *(v324 + 344) = v333;
              }

              v1019 = 0;
              v1018 = 0;
              v1020 = 0;
              if (v237 << 28)
              {
                goto LABEL_494;
              }

              v955 = v239;
              if (v239 >= 1)
              {
                v338 = 0;
                v339 = -1.0;
                __asm { FMOV            V0.4S, #4.0 }

                v959 = _Q0;
                v1000 = vdupq_n_s32(0x437F0000u);
                do
                {
                  v341 = *&(*v982)[v338];
                  v343 = *(*v341 + 8);
                  v342 = *(*v341 + 16);
                  if (v342 && (atomic_fetch_add_explicit(&v342->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v342->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
                  {
                    (v342->__on_zero_shared)(v342);
                    std::__shared_weak_count::__release_weak(v342);
                    if (!v343)
                    {
LABEL_502:
                      kdebug_trace();
                      operator new();
                    }
                  }

                  else if (!v343)
                  {
                    goto LABEL_502;
                  }

                  kdebug_trace();
                  v344 = *a2;
                  v346 = *(*v341 + 136);
                  v345 = *(*v341 + 144);
                  v996 = v341;
                  if (v345 && (atomic_fetch_add_explicit(&v345->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v345->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
                  {
                    (v345->__on_zero_shared)(v345);
                    std::__shared_weak_count::__release_weak(v345);
                    if (!v346)
                    {
LABEL_528:
                      operator new();
                    }
                  }

                  else if (!v346)
                  {
                    goto LABEL_528;
                  }

                  v347 = *(*v341 + 24);
                  v348 = *(*v341 + 32);
                  if (v348)
                  {
                    atomic_fetch_add_explicit(&v348->__shared_owners_, 1uLL, memory_order_relaxed);
                    if (!atomic_fetch_add(&v348->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      v349 = v347;
                      (v348->__on_zero_shared)(v348);
                      std::__shared_weak_count::__release_weak(v348);
                      v347 = v349;
                    }
                  }

                  keyc = v338;
                  v350 = *(*v341 + 136);
                  v351 = *(*v341 + 144);
                  if (v351)
                  {
                    atomic_fetch_add_explicit(&v351->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v352 = v350;
                  if ((*(v350 + 1016) & 1) == 0)
                  {
                    v353 = *v347;
                    if (*(*v347 + 16) == 1)
                    {
                      v354 = *(v344 + 32);
                      v355 = *(v353 + 144);
                      v356 = *(v353 + 152);
                      if (v356)
                      {
                        atomic_fetch_add_explicit((v356 + 8), 1uLL, memory_order_relaxed);
                      }

                      if (v351)
                      {
                        atomic_fetch_add_explicit(&v351->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      *(v350 + 1016) = 1;
                      if (v355)
                      {
                        *pixelBuffera = v355;
                        kdebug_trace();
                        if (v356)
                        {
                          atomic_fetch_add_explicit((v356 + 8), 1uLL, memory_order_relaxed);
                        }

                        v357 = *(v352 + 1032);
                        *(v352 + 1024) = *pixelBuffera;
                        if (v357 && !atomic_fetch_add(&v357->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v357->__on_zero_shared)(v357);
                          std::__shared_weak_count::__release_weak(v357);
                        }

                        if (v351)
                        {
                          atomic_fetch_add_explicit(&v351->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        operator new();
                      }

                      kdebug_trace();
                      (*(**(*v354 + 16) + 16))(buf);
                      v358 = *buf;
                      *buf = 0;
                      v359 = *(v352 + 72);
                      *(v352 + 72) = v358;
                      if (v359)
                      {
                        (*(*v359 + 8))(v359);
                        v360 = *buf;
                        *buf = 0;
                        if (v360)
                        {
                          (*(*v360 + 8))(v360);
                        }
                      }

                      (*(**(*v354 + 16) + 24))(buf);
                      operator new();
                    }
                  }

                  if (v351 && !atomic_fetch_add(&v351->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v351->__on_zero_shared)(v351);
                    std::__shared_weak_count::__release_weak(v351);
                  }

                  kdebug_trace();
                  v361 = *a2;
                  v362 = v1018;
                  v364 = *(*v996 + 8);
                  v363 = *(*v996 + 16);
                  v978 = *v996;
                  *v1002 = v364;
                  *&v1002[8] = v363;
                  if (v363)
                  {
                    atomic_fetch_add_explicit((v363 + 8), 1uLL, memory_order_relaxed);
                  }

                  v365 = *(v361 + 48);
                  if (v365 > *(v364 + 24) || v365 > *(v364 + 28))
                  {
                    v366 = *(v364 + 40);
                    if (v366)
                    {
                      free(v366);
                      *(v364 + 40) = 0;
                    }

                    *(v364 + 16) = 0;
                    *(v364 + 24) = v365 | (v365 << 32);
                    *(v364 + 32) = ((((v365 + 15) & 0xFFFFFFF0) >> 4) << 36) | 1;
                    *buf = v365 * ((v365 + 15) & 0xFFFFFFF0);
                    if (*buf)
                    {
                      v367 = malloc_type_malloc(*buf, 0x100004077774924uLL);
                    }

                    else
                    {
                      v367 = 0;
                    }

                    *(v364 + 40) = v367;
                  }

                  else
                  {
                    *(v364 + 16) = 0;
                    *(v364 + 24) = v365 | (v365 << 32);
                  }

                  *&v1043[4] = 0;
                  *v1043 = 1065353216;
                  *&v1043[12] = xmmword_2402708C0;
                  if (*(v361 + 376) != 1 || ((v368 = llroundf(v339 - log2f(v365 / *(v978 + 52))), v368 < 0) ? (v369 = -1) : (v369 = v368), (v370 = *(v361 + 368), *(v370 + 8) - 1 >= v369) ? (v371 = v369) : (v371 = *(v370 + 8) - 1), (v371 & 0x80000000) != 0))
                  {
                    v372 = texture;
                  }

                  else
                  {
                    v372 = *(*(v370 + 24) + 8 * v371);
                    v373 = *(v370 + 48) + 28 * v371;
                    v374 = *v373;
                    v375 = *(v373 + 4);
                    v376 = *(v373 + 12);
                    v377 = *(v373 + 16);
                    LODWORD(v373) = *(v373 + 24);
                    *v1043 = v374;
                    *&v1043[4] = v375;
                    *&v1043[12] = v376;
                    *&v1043[16] = v377;
                    *&v1043[24] = v373;
                  }

                  v378.i32[1] = 0;
                  memset(memptr, 0, sizeof(memptr));
                  pixelBufferb = v372;
                  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
                  {
                    sub_240222DDC();
                  }

                  v379 = 36 * v338;
                  v380 = &v362[104 * v338];
                  if (*(qword_280C03828 + 109) == 1)
                  {
                    sub_2402595F8(v365, v978 + 40, v1043, &v1033, &v362[104 * v338], v379, memptr);
                  }

                  else
                  {
                    v378.i32[0] = *&v1043[24];
                    if (fabsf(*&v1043[24]) >= 1.0e-15)
                    {
                      v383.i32[0] = *&v1043[12];
                      v383.f32[1] = -*&v1043[4];
                      v383.f32[2] = -*&v1043[8];
                      v383.i32[3] = *v1043;
                      *buf = vdivq_f32(v383, vdupq_lane_s32(v378, 0));
                      *v1085 = buf;
                      v1087[0] = v1085;
                      v1087[1] = &v1043[16];
                      __p[0] = 0;
                      sub_24020D6A4(__p, v1087);
                      *__dst = *buf;
                      *&__dst[16] = __p[0];
                      v384.i32[0] = *buf;
                      v970 = v384;
                      v381 = (*buf * *&buf[12]) - (*&buf[8] * *&buf[4]);
                      v382 = __p[0];
                    }

                    else
                    {
                      memset(__dst, 0, 24);
                      v381 = 1.0;
                      v382 = 0;
                      v970 = 0;
                    }

                    *&__dst[24] = v381;
                    *v1085 = *(v978 + 40);
                    *&v1085[4] = *(v978 + 44);
                    *&v1085[32] = *(v978 + 72);
                    *&v1085[20] = *(v978 + 60);
                    v1087[0] = __dst;
                    v1087[1] = &v1085[4];
                    *&buf[4] = 0;
                    sub_2401CE980(&buf[4], v1087);
                    *&v385 = vadd_f32(v382, *&buf[4]);
                    *(&v385 + 1) = vmul_f32(*&vdupq_lane_s32(v970, 0), *&v1085[12]);
                    *&v1085[4] = v385;
                    *(v380 + 1) = *(&v1033 + 1);
                    if (v380 != &v1033)
                    {
                      v386 = *v1034;
                      v387 = *&v1034[16];
                      *(v380 + 12) = *v1035;
                      *(v380 + 1) = v386;
                      *(v380 + 2) = v387;
                      v388 = *&v1035[4];
                      v389 = *&v1035[20];
                      *(v380 + 21) = *&v1035[36];
                      *(v380 + 68) = v389;
                      *(v380 + 52) = v388;
                      v390 = v1036;
                      *(v380 + 24) = v1037;
                      *(v380 + 11) = v390;
                    }

                    v391 = 0;
                    *&buf[12] = 0;
                    *&buf[4] = 0;
                    *buf = 1065353216;
                    *&buf[16] = 1065353216;
                    v392 = 0x100000000;
                    v393 = __dst;
                    *v1054 = 1065353216;
                    do
                    {
                      v394 = *v393++;
                      *&buf[v391] = v394;
                      v395 = v392 < 1;
                      v396 = (v392 >> 30) & 0x3FFFFFFFCLL;
                      if (v392 < 1)
                      {
                        v396 = 0;
                      }

                      v397 = v391 + v396;
                      v398 = (v392 + 1);
                      v399 = v392 & 0xFFFFFFFF00000000;
                      if (!v395)
                      {
                        v398 = 0;
                      }

                      v392 = v398 | v399;
                      v391 = v397 + 4;
                    }

                    while (v391 != 24);
                    *&buf[24] = v382;
                    v1087[0] = buf;
                    v1087[1] = (v380 + 16);
                    sub_2401EDF8C((v380 + 16), v1087);
                    v1047 = vadd_f32(vmul_f32(*&v1085[12], 0x3F0000003F000000), *&v1085[4]);
                    v971 = v365 / *&v1085[12];
                    v400 = __sincosf_stret(*&v1085[20] / -57.296);
                    *&v1049[0] = __PAIR64__(LODWORD(v400.__sinval), LODWORD(v400.__cosval));
                    *(v1049 + 2) = -v400.__sinval;
                    HIDWORD(v1049[0]) = LODWORD(v400.__cosval);
                    _D11.f32[0] = v400.__sinval * v971;
                    v401.i32[0] = v365;
                    __p[0] = vdup_lane_s32(vmul_f32(vcvt_f32_s32(vadd_s32(v401, -1)), 0x3F0000003F000000), 0);
                    *buf = __p;
                    *&buf[8] = 0;
                    v402 = v1049;
                    v1087[0] = v1049;
                    v1087[1] = &v1047;
                    sub_2401CE980(&buf[8], v1087);
                    *v403.f32 = vmul_n_f32(*&buf[8], v971);
                    *&buf[8] = v403.i64[0];
                    _Q3.i64[0] = __PAIR64__(LODWORD(v400.__cosval), -v400.__sinval);
                    _Q3.i64[1] = **buf;
                    v403.i64[1] = v403.i64[0];
                    _Q1.i64[1] = v403.i64[0];
                    _Q1.f32[0] = v971;
                    _Q1.f32[1] = v971;
                    v406 = vsubq_f32(_Q3, v403);
                    _Q1.i64[0] = vmulq_f32(_Q3, _Q1).u64[0];
                    _S2 = _Q1.i32[1];
                    *v1069 = _Q1.i32[1];
                    __asm { FMLA            S3, S2, V1.S[1] }

                    _Q1.i64[1] = v406.i64[1];
                    v965 = *&v406.u32[2];
                    *&v1069[8] = _Q1;
                    *&v1069[4] = v400.__sinval * v971;
                    *&v1069[24] = _Q3.i32[0];
                    *&v1086[0] = *(v380 + 5);
                    v1087[0] = v1069;
                    v1087[1] = v1086;
                    *&buf[4] = 0;
                    sub_2401CE980(&buf[4], v1087);
                    v408 = 0;
                    v409 = 0;
                    v410 = *&buf[4];
                    *(v380 + 2) = v365;
                    *(v380 + 3) = v365;
                    *(v380 + 5) = vadd_f32(v410, v965);
                    *(v380 + 4) = *(v380 + 4) * v971;
                    *(v380 + 8) = *(v380 + 8) * v971;
                    *&buf[28] = 0;
                    *&buf[20] = 0;
                    *&buf[12] = 0;
                    *&buf[4] = 0;
                    *buf = 1065353216;
                    *&buf[16] = 1065353216;
                    *v1054 = 1065353216;
                    *&v1054[4] = 0;
                    *&v1054[12] = 0;
                    do
                    {
                      v411 = *v402++;
                      *&buf[v409] = v411;
                      v409 += 4 * (v408 > 0) + 4;
                      if (v408 <= 0)
                      {
                        ++v408;
                      }

                      else
                      {
                        v408 = 0;
                      }
                    }

                    while (v409 != 24);
                    v1087[3].i32[1] = 0;
                    *(&v1087[2] + 4) = 0;
                    v1087[1].i32[1] = 0;
                    *(v1087 + 4) = 0;
                    v1087[0].i32[0] = 1065353216;
                    v1087[2].i32[0] = 1065353216;
                    v1088 = 1065353216;
                    v1089 = 0;
                    v1090 = 0.0;
                    __p[0] = buf;
                    __p[1] = v380 + 52;
                    sub_2401EDF8C(v1087, __p);
                    v1006 = buf;
                    v1007 = v380 + 88;
                    *(__p + 4) = 0;
                    HIDWORD(__p[1]) = 0;
                    sub_2401EE13C(__p + 1, &v1006);
                    *&v412 = vadd_f32(*(__p + 4), *&v1054[4]);
                    v1089 = v412;
                    v1090 = *(&__p[1] + 1) + *&v1054[12];
                    if (v380 + 52 != v1087)
                    {
                      v412 = *v1087[0].f32;
                      v413 = *v1087[2].f32;
                      *(v380 + 21) = v1088;
                      *(v380 + 52) = v412;
                      *(v380 + 68) = v413;
                      v414 = v1089;
                      *(v380 + 24) = v1090;
                      *(v380 + 11) = v414;
                    }

                    LODWORD(v412) = *&v1069[24];
                    if (fabsf(*&v1069[24]) >= 1.0e-15)
                    {
                      v418.i32[0] = *&v1069[12];
                      v418.f32[1] = -*&v1069[4];
                      v418.f32[2] = -*&v1069[8];
                      v418.i32[3] = *v1069;
                      *__p = vdivq_f32(v418, vdupq_lane_s32(*&v412, 0));
                      *&v1049[0] = __p;
                      v1006 = v1049;
                      v1007 = &v1069[16];
                      *&v1086[0] = 0;
                      sub_24020D6A4(v1086, &v1006);
                      *v1087[0].f32 = *__p;
                      v416 = v1086[0];
                      v1087[2] = *&v1086[0];
                      v417 = (*__p * *(&__p[1] + 1)) - (*&__p[1] * *(__p + 1));
                      v415 = HIDWORD(*&v1086[0]);
                    }

                    else
                    {
                      LODWORD(v415) = 0;
                      v416 = 0;
                      memset(v1087, 0, 24);
                      v417 = 1.0;
                    }

                    v419 = 0;
                    v1087[3].f32[0] = v417;
                    *&buf[12] = 0;
                    *&buf[4] = 0;
                    *buf = 1065353216;
                    *&buf[16] = 1065353216;
                    v420 = 0x100000000;
                    v421 = v1087;
                    *v1054 = 1065353216;
                    do
                    {
                      v422 = v421->i32[0];
                      v421 = (v421 + 4);
                      *&buf[v419] = v422;
                      v423 = v420 < 1;
                      v424 = (v420 >> 30) & 0x3FFFFFFFCLL;
                      if (v420 < 1)
                      {
                        v424 = 0;
                      }

                      v425 = v419 + v424;
                      v426 = (v420 + 1);
                      v427 = v420 & 0xFFFFFFFF00000000;
                      if (!v423)
                      {
                        v426 = 0;
                      }

                      v420 = v426 | v427;
                      v419 = v425 + 4;
                    }

                    while (v419 != 24);
                    v428 = 0;
                    *&buf[24] = v416;
                    *&buf[28] = v415;
                    *&memptr[32] = *v1054;
                    *memptr = *buf;
                    *&memptr[16] = *&buf[16];
                    *&buf[12] = 0;
                    *&buf[4] = 0;
                    *buf = 1065353216;
                    *&buf[16] = 1065353216;
                    v429 = 0x100000000;
                    v430 = v1043;
                    *v1054 = 1065353216;
                    do
                    {
                      v431 = *v430++;
                      *&buf[v428] = v431;
                      v432 = v429 < 1;
                      v433 = (v429 >> 30) & 0x3FFFFFFFCLL;
                      if (v429 < 1)
                      {
                        v433 = 0;
                      }

                      v434 = v428 + v433;
                      v435 = (v429 + 1);
                      v436 = v429 & 0xFFFFFFFF00000000;
                      if (!v432)
                      {
                        v435 = 0;
                      }

                      v429 = v435 | v436;
                      v428 = v434 + 4;
                    }

                    while (v428 != 24);
                    *&buf[24] = *&v1043[16];
                    v1087[0] = buf;
                    v1087[1] = memptr;
                    sub_2401EDF8C(v379, v1087);
                  }

                  v437 = CVPixelBufferGetPixelFormatType(v372);
                  kdebug_trace();
                  CVPixelBufferLockBaseAddress(v372, 1uLL);
                  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
                  {
                    sub_240222DDC();
                  }

                  if (*(qword_280C03828 + 109) == 1)
                  {
                    if (v437 <= 1278226487)
                    {
                      if (v437 == 875704422 || v437 == 875704438)
                      {
                        goto LABEL_613;
                      }
                    }

                    else
                    {
                      if (v437 == 2019963440 || v437 == 2016686640)
                      {
                        if (CVPixelBufferIsPlanar(v372))
                        {
                          WidthOfPlane = CVPixelBufferGetWidthOfPlane(v372, 0);
                          HeightOfPlane = CVPixelBufferGetHeightOfPlane(v372, 0);
                          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v372, 0);
                          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v372, 0);
                        }

                        else
                        {
                          WidthOfPlane = CVPixelBufferGetWidth(v372);
                          HeightOfPlane = CVPixelBufferGetHeight(v372);
                          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(v372);
                          BaseAddressOfPlane = CVPixelBufferGetBaseAddress(v372);
                        }

                        v546 = BaseAddressOfPlane;
                        v547 = *(v364 + 24);
                        v548 = *(v364 + 28);
                        *v549.i32 = nextafterf((WidthOfPlane - 1), 0.0);
                        v973 = v549;
                        *v550.i32 = nextafterf((HeightOfPlane - 1), 0.0);
                        v540 = 1;
                        if (v548 >= 1 && v547 >= 1)
                        {
                          v551 = 0;
                          v552 = vdupq_n_s32(BytesPerRowOfPlane >> 1);
                          v553 = vdupq_lane_s32(v973, 0);
                          v554 = vdupq_lane_s32(v550, 0);
                          v555 = vdupq_lane_s32(*&memptr[12], 0);
                          v556 = vdupq_lane_s32(*&memptr[16], 0);
                          v557 = vdupq_lane_s32(*&memptr[20], 0);
                          v558 = vmulq_n_f32(v959, *memptr);
                          v559 = vmulq_n_f32(v959, *&memptr[4]);
                          v560 = vmulq_n_f32(v959, *&memptr[8]);
                          v561 = *(v364 + 40);
                          v562 = vmlaq_f32(vdupq_lane_s32(*&vshrq_n_u64(*&memptr[20], 0x20uLL), 0), xmmword_2402709B0, vdupq_lane_s32(*memptr, 0));
                          v563 = vmlaq_f32(vdupq_laneq_s32(*&memptr[20], 2), xmmword_2402709B0, vdupq_lane_s32(*&memptr[4], 0));
                          v564 = vmlaq_f32(vdupq_laneq_s32(*&memptr[20], 3), xmmword_2402709B0, vdupq_lane_s32(*&memptr[8], 0));
                          do
                          {
                            v565 = 0;
                            v566 = v564;
                            v567 = v563;
                            v568 = v562;
                            do
                            {
                              v569 = vmaxnmq_f32(vminnmq_f32(vdivq_f32(v568, v566), v553), 0);
                              v570 = vmaxnmq_f32(vminnmq_f32(vdivq_f32(v567, v566), v554), 0);
                              v571 = vcvtq_s32_f32(v569);
                              v572 = vcvtq_s32_f32(v570);
                              v573 = vsubq_f32(v569, vcvtq_f32_s32(v571));
                              v574 = vcvtq_f32_s32(v572);
                              v575 = vmlaq_s32(v571, v552, v572);
                              v576 = vsubq_f32(v570, v574);
                              v577 = vaddq_s32(v575, v552);
                              v578 = &v546[2 * v575.i32[0]];
                              v575.i16[0] = *v578;
                              v572.f32[0] = v575.u32[0];
                              v579 = &v546[2 * v575.i32[1]];
                              v575.i16[0] = *v579;
                              v580 = v575.u32[0];
                              v581 = &v546[2 * v575.i32[2]];
                              v575.i16[0] = *v581;
                              v582 = &v546[2 * v575.i32[3]];
                              v574.i16[0] = *v582;
                              *&v583 = v575.u32[0];
                              *&v584 = v574.u32[0];
                              v575.i16[0] = v578[1];
                              v575.f32[0] = v575.u32[0];
                              v574.i16[0] = v579[1];
                              _D11.i16[0] = v581[1];
                              _D12.f32[0] = v574.u32[0];
                              _D11.f32[0] = _D11.u32[0];
                              v574.i16[0] = v582[1];
                              *&v585 = v574.u32[0];
                              v586 = vsubq_f32(v990, v573);
                              v572.f32[1] = v580;
                              v575.i32[1] = _D12.i32[0];
                              v587 = &v546[2 * v577.i32[0]];
                              v572.i64[1] = __PAIR64__(v584, v583);
                              v577.i16[0] = *v587;
                              v577.f32[0] = v577.u32[0];
                              v588 = &v546[2 * v577.i32[1]];
                              LOWORD(v580) = *v588;
                              v575.i64[1] = __PAIR64__(v585, _D11.u32[0]);
                              v589 = LODWORD(v580);
                              v590 = &v546[2 * v577.i32[2]];
                              LOWORD(v583) = *v590;
                              v591 = v583;
                              v592 = &v546[2 * v577.i32[3]];
                              v577.f32[1] = v589;
                              LOWORD(v589) = *v592;
                              v577.f32[2] = v591;
                              LOWORD(v591) = v587[1];
                              v577.f32[3] = LODWORD(v589);
                              v593.f32[0] = LODWORD(v591);
                              LOWORD(v591) = *(v588 + 1);
                              v594 = LODWORD(v591);
                              LOWORD(v584) = *(v590 + 1);
                              v593.f32[1] = v594;
                              LOWORD(v594) = *(v592 + 1);
                              v593.f32[2] = v584;
                              v593.f32[3] = LODWORD(v594);
                              *v561++ = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmulq_f32(vmlaq_f32(vmulq_f32(vsubq_f32(v990, v576), vmlaq_f32(vmulq_f32(v586, v572), v575, v573)), vmlaq_f32(vmulq_f32(v586, v577), v593, v573), v576), vdupq_n_s32(0x3B800000u)), v1000))), *v554.f32).u32[0];
                              v568 = vaddq_f32(v558, v568);
                              v567 = vaddq_f32(v559, v567);
                              v566 = vaddq_f32(v560, v566);
                              v565 += 4;
                            }

                            while (v565 < v547);
                            v562 = vaddq_f32(v555, v562);
                            v563 = vaddq_f32(v556, v563);
                            v564 = vaddq_f32(v557, v564);
                            ++v551;
                          }

                          while (v551 != v548);
                          v540 = 1;
                          v339 = -1.0;
                        }

                        goto LABEL_636;
                      }

                      if (v437 == 1278226488)
                      {
LABEL_613:
                        sub_24020C3E0(buf, v372);
                        v490 = *(v364 + 24);
                        v491 = *(v364 + 28);
                        *v492.i32 = nextafterf((*&buf[8] - 1), 0.0);
                        v972 = v492;
                        *v493.i32 = nextafterf((*&buf[12] - 1), 0.0);
                        if (v491 >= 1 && v490 >= 1)
                        {
                          v496 = 0;
                          v497 = vdupq_lane_s32(v972, 0);
                          v498 = vdupq_lane_s32(v493, 0);
                          v499 = vdupq_lane_s32(*&memptr[12], 0);
                          v500 = vdupq_lane_s32(*&memptr[16], 0);
                          v501 = vdupq_lane_s32(*&memptr[20], 0);
                          v502 = vmulq_n_f32(v959, *memptr);
                          v503 = vmulq_n_f32(v959, *&memptr[4]);
                          v504 = vmulq_n_f32(v959, *&memptr[8]);
                          v505 = vdupq_lane_s32(*&buf[20], 0);
                          v506 = *&buf[24];
                          v507 = *(v364 + 40);
                          v508 = vmlaq_f32(vdupq_lane_s32(*&vshrq_n_u64(*&memptr[20], 0x20uLL), 0), xmmword_2402709B0, vdupq_lane_s32(*memptr, 0));
                          v509 = vmlaq_f32(vdupq_laneq_s32(*&memptr[20], 2), xmmword_2402709B0, vdupq_lane_s32(*&memptr[4], 0));
                          v510 = vmlaq_f32(vdupq_laneq_s32(*&memptr[20], 3), xmmword_2402709B0, vdupq_lane_s32(*&memptr[8], 0));
                          do
                          {
                            v511 = 0;
                            v512 = v510;
                            v513 = v509;
                            v514 = v508;
                            do
                            {
                              v515 = vmaxnmq_f32(vminnmq_f32(vdivq_f32(v514, v512), v497), 0);
                              v516 = vmaxnmq_f32(vminnmq_f32(vdivq_f32(v513, v512), v498), 0);
                              v517 = vcvtq_s32_f32(v515);
                              v518 = vcvtq_s32_f32(v516);
                              v519 = vcvtq_f32_s32(v518);
                              v520 = vsubq_f32(v515, vcvtq_f32_s32(v517));
                              v521 = vsubq_f32(v516, v519);
                              v522 = vmlaq_s32(v517, v505, v518);
                              v523 = vaddq_s32(v522, v505);
                              v524 = (v506 + v522.i32[0]);
                              v522.i8[0] = *v524;
                              v522.f32[0] = v522.u32[0];
                              v525 = (v506 + v522.i32[1]);
                              v516.i8[0] = *v525;
                              v526 = (v506 + v522.i32[2]);
                              v519.i8[0] = *v526;
                              v527 = v516.u32[0];
                              v528 = (v506 + v522.i32[3]);
                              LOBYTE(v494) = *v528;
                              v516.i8[0] = v524[1];
                              v516.f32[0] = v516.u32[0];
                              v529 = LODWORD(v494);
                              LOBYTE(v495) = v525[1];
                              v530 = LODWORD(v495);
                              _D11.i8[0] = v526[1];
                              _D11.f32[0] = _D11.u32[0];
                              _D12.i8[0] = v528[1];
                              _D12.f32[0] = _D12.u32[0];
                              v522.f32[1] = v527;
                              v531 = (v506 + v523.i32[0]);
                              v516.f32[1] = v530;
                              v523.i8[0] = *v531;
                              v523.f32[0] = v523.u32[0];
                              v532 = (v506 + v523.i32[1]);
                              LOBYTE(v527) = *v532;
                              v522.f32[2] = v519.u32[0];
                              v523.f32[1] = LODWORD(v527);
                              v533 = vsubq_f32(v990, v520);
                              v516.i64[1] = __PAIR64__(_D12.u32[0], _D11.u32[0]);
                              v534 = (v506 + v523.i32[2]);
                              LOBYTE(v527) = *v534;
                              *&v535 = LODWORD(v527);
                              v536 = (v506 + v523.i32[3]);
                              v522.f32[3] = v529;
                              LOBYTE(v529) = *v536;
                              *&v537 = LODWORD(v529);
                              v523.i64[1] = __PAIR64__(v537, v535);
                              LOBYTE(v535) = v531[1];
                              v538.f32[0] = v535;
                              LOBYTE(v530) = v532[1];
                              v539 = LODWORD(v530);
                              LOBYTE(v537) = v534[1];
                              v494 = v537;
                              v538.f32[1] = v539;
                              LOBYTE(v539) = v536[1];
                              v495 = LODWORD(v539);
                              v538.i64[1] = __PAIR64__(LODWORD(v495), LODWORD(v494));
                              *v507++ = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmlaq_f32(vmulq_f32(vsubq_f32(v990, v521), vmlaq_f32(vmulq_f32(v533, v522), v516, v520)), vmlaq_f32(vmulq_f32(v533, v523), v538, v520), v521), v1000))), *v498.f32).u32[0];
                              v514 = vaddq_f32(v502, v514);
                              v513 = vaddq_f32(v503, v513);
                              v512 = vaddq_f32(v504, v512);
                              v511 += 4;
                            }

                            while (v511 < v490);
                            v508 = vaddq_f32(v499, v508);
                            v509 = vaddq_f32(v500, v509);
                            v510 = vaddq_f32(v501, v510);
                            ++v496;
                          }

                          while (v496 != v491);
                        }

LABEL_619:
                        v540 = 1;
                        goto LABEL_636;
                      }
                    }

                    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
                    {
                      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
                      __cxa_guard_release(&qword_280C03A00);
                    }

                    v545 = qword_280C03978;
                    if (os_log_type_enabled(v545, OS_LOG_TYPE_ERROR))
                    {
                      buf[23] = 4;
                      *buf = bswap32(v437);
                      buf[4] = 0;
                      v1087[0].i32[0] = 67109378;
                      v1087[0].i32[1] = v437;
                      v1087[1].i16[0] = 2080;
                      *(&v1087[1] + 2) = buf;
                      _os_log_error_impl(&dword_2401B8000, v545, OS_LOG_TYPE_ERROR, "not a valid format for processing, format 0x%x ('%s')", v1087, 0x12u);
                      if ((buf[23] & 0x80000000) != 0)
                      {
                        goto LABEL_648;
                      }
                    }
                  }

                  else
                  {
                    if (v437 == 875704422 || v437 == 1278226488 || v437 == 875704438)
                    {
                      sub_24020C3E0(buf, v372);
                      v438 = *(v364 + 28);
                      if (v438 >= 1)
                      {
                        v439 = 0;
                        v440 = *&buf[24];
                        v441 = vdupq_n_s32((*&buf[8] << 10) - 1025);
                        v442 = vdupq_n_s32((*&buf[12] << 10) - 1025);
                        _V3.S[1] = *&memptr[28];
                        _V2.S[1] = *&memptr[4];
                        _V4.S[1] = *&memptr[16];
                        v446 = *(v364 + 40);
                        _S5 = 1216348160;
                        __asm { FMLA            S6, S5, V4.S[1] }

                        v449 = _S6;
                        v450 = *(v364 + 24);
                        __asm { FMLA            S6, S5, V2.S[1] }

                        v452 = v449 - v450 * _S6;
                        v453 = ((*memptr * 262140.0) + 0.5);
                        __asm { FMLA            S2, S5, V3.S[1] }

                        v455 = vmlaq_s32(vdupq_n_s32(_S2), vdupq_n_s32(_S6), xmmword_240270930);
                        v456 = vmlaq_s32(vdupq_n_s32(((*&memptr[24] * 262140.0) + 0.5)), vdupq_n_s32(v453), xmmword_240270930);
                        v457 = vdupq_n_s32(*&buf[20]);
                        v458 = *&buf[24] + *&buf[20];
                        v459 = vdupq_n_s32(4 * v453);
                        v460 = vdupq_n_s32(4 * _S6);
                        v461 = vdupq_n_s32(((*&memptr[12] * 262140.0) + 0.5) - v450 * v453);
                        v462 = vdupq_n_s32(v452);
                        do
                        {
                          if (v450)
                          {
                            v463 = &v446[v450];
                            v464.i64[0] = 0x8000000080;
                            v464.i64[1] = 0x8000000080;
                            v465.i64[0] = 0x300000003;
                            v465.i64[1] = 0x300000003;
                            v466.i64[0] = 0x100000001;
                            v466.i64[1] = 0x100000001;
                            v467.i64[0] = 0x40000000400;
                            v467.i64[1] = 0x40000000400;
                            v468.i64[0] = 0x8000000080000;
                            v468.i64[1] = 0x8000000080000;
                            do
                            {
                              v469 = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(v455, v464), 8uLL), v442), 0);
                              v470 = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(v456, v464), 8uLL), v441), 0);
                              v471 = vsraq_n_s32(vmulq_s32(vshrq_n_s32(v469, 0xAuLL), v457), v470, 0xAuLL);
                              v472 = v471.i32[0];
                              v473 = *(v440 + v471.i32[0]);
                              v474 = v471.i32[1];
                              v475 = v471.i32[2];
                              v476 = *(v440 + v471.i32[1]);
                              v477 = *(v440 + v471.i32[2]);
                              v478 = v471.i32[3];
                              v479 = *(v440 + v471.i32[3]);
                              v480 = vaddq_s32(v471, v466);
                              v481 = v480.i32[0];
                              v482 = v480.i32[1];
                              v483.i64[0] = __PAIR64__(v476, v473);
                              v484 = v480.i32[2];
                              v480.i32[0] = *(v440 + v480.i32[0]);
                              v480.i32[1] = *(v440 + v480.i32[1]);
                              v483.i64[1] = __PAIR64__(v479, v477);
                              v485 = vandq_s8(v470, v465);
                              v486.i32[0] = *(v458 + v472);
                              v486.i32[1] = *(v458 + v474);
                              v486.i32[2] = *(v458 + v475);
                              v480.i32[2] = *(v440 + v480.i32[2]);
                              v487 = vandq_s8(v469, v465);
                              v488.i32[0] = *(v458 + v481);
                              v488.i32[1] = *(v458 + v482);
                              v486.i32[3] = *(v458 + v478);
                              v488.i32[2] = *(v458 + v484);
                              v488.i32[3] = *(v458 + v480.i32[3]);
                              v480.i32[3] = *(v440 + v480.i32[3]);
                              v489 = vsubq_s32(v467, v485);
                              *v446 = vuzp1_s8(vmovn_s32(vshrq_n_u32(vaddq_s32(vmlaq_s32(vmulq_s32(vmlaq_s32(vmulq_s32(v486, v489), v488, v485), v487), vmlaq_s32(vmulq_s32(v483, v489), v480, v485), vsubq_s32(v467, v487)), v468), 0x14uLL)), *v441.i8).u32[0];
                              v446 += 4;
                              v456 = vaddq_s32(v456, v459);
                              v455 = vaddq_s32(v455, v460);
                            }

                            while (v446 < v463);
                            v450 = *(v364 + 24);
                            v438 = *(v364 + 28);
                          }

                          v446 += *(v364 + 36) - v450;
                          v456 = vaddq_s32(v456, v461);
                          v455 = vaddq_s32(v455, v462);
                          ++v439;
                        }

                        while (v439 < v438);
                      }

                      goto LABEL_619;
                    }

                    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
                    {
                      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
                      __cxa_guard_release(&qword_280C03A00);
                    }

                    v545 = qword_280C03978;
                    if (os_log_type_enabled(v545, OS_LOG_TYPE_ERROR))
                    {
                      buf[23] = 4;
                      *buf = bswap32(v437);
                      buf[4] = 0;
                      v1087[0].i32[0] = 67109378;
                      v1087[0].i32[1] = v437;
                      v1087[1].i16[0] = 2080;
                      *(&v1087[1] + 2) = buf;
                      _os_log_error_impl(&dword_2401B8000, v545, OS_LOG_TYPE_ERROR, "not a valid format for processing, format 0x%x ('%s')", v1087, 0x12u);
                      if ((buf[23] & 0x80000000) != 0)
                      {
LABEL_648:
                        operator delete(*buf);
                      }
                    }
                  }

                  v540 = 0;
LABEL_636:
                  CVPixelBufferUnlockBaseAddress(pixelBufferb, 1uLL);
                  kdebug_trace();
                  if (*&v1002[8] && !atomic_fetch_add((*&v1002[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (*(**&v1002[8] + 16))(*&v1002[8]);
                    std::__shared_weak_count::__release_weak(*&v1002[8]);
                  }

                  if ((v540 & 1) == 0)
                  {
                    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
                    {
                      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
                      __cxa_guard_release(&qword_280C03A00);
                    }

                    v599 = qword_280C03978;
                    if (os_log_type_enabled(v599, OS_LOG_TYPE_DEBUG))
                    {
                      v932 = *(v978 + 80);
                      *buf = 67109120;
                      *&buf[4] = v932;
                      _os_log_debug_impl(&dword_2401B8000, v599, OS_LOG_TYPE_DEBUG, "Computing the crop for face %d failed.", buf, 8u);
                    }

                    sub_24021D088();
                  }

                  v595 = *(*v996 + 8);
                  v596 = *(*v996 + 16);
                  if (v596)
                  {
                    atomic_fetch_add_explicit(&v596->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v597 = v1018 + 104 * keyc;
                  *v595 = v597[4];
                  v595[1] = v597[10];
                  v595[2] = v597[11];
                  if (v596 && !atomic_fetch_add(&v596->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v596->__on_zero_shared)(v596);
                    std::__shared_weak_count::__release_weak(v596);
                  }

                  v338 = keyc + 1;
                }

                while (keyc + 1 != ((v237 >> 4) & 0x7FFFFFFF));
              }

              if (!v953)
              {
                goto LABEL_1077;
              }

              if (*(*a2 + 392))
              {
                v598 = 0;
              }

              else
              {
                v598 = *(*v967 + 384);
              }

              v960 = v598;
              kdebug_trace();
              v600 = *(v988 + 24);
              v601 = *(v988 + 32);
              if (v600 != v601)
              {
                while (1)
                {
                  v602 = **v600;
                  v604 = *(v602 + 8);
                  v603 = *(v602 + 16);
                  *__dst = v604;
                  *&__dst[8] = v603;
                  if (v603)
                  {
                    atomic_fetch_add_explicit(&v603->__shared_owners_, 1uLL, memory_order_relaxed);
                    v602 = **v600;
                  }

                  v605 = *a2;
                  if (!*(*a2 + 392))
                  {
                    break;
                  }

                  if (v603)
                  {
                    goto LABEL_679;
                  }

LABEL_667:
                  v600 += 2;
                  if (v600 == v601)
                  {
                    goto LABEL_683;
                  }
                }

                if ((v960 & (*v602 < 50)) != 0)
                {
                  v607 = *(v602 + 136);
                  v606 = *(v602 + 144);
                  *v1069 = v607;
                  *&v1069[8] = v606;
                  if (v606)
                  {
                    atomic_fetch_add_explicit((v606 + 8), 1uLL, memory_order_relaxed);
                    v605 = *a2;
                  }

                  v1016 = v604;
                  v1017 = v603;
                  if (v603)
                  {
                    atomic_fetch_add_explicit(&v603->__shared_owners_, 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit(&v603->__shared_owners_, 1uLL, memory_order_relaxed);
                    v608 = v603;
                  }

                  else
                  {
                    v608 = 0;
                  }

                  *buf = sub_2402073CC;
                  *&buf[8] = 0;
                  *&buf[16] = v605;
                  *&buf[24] = v604;
                  *v1054 = v608;
                  v1087[3] = 0;
                  operator new();
                }

                (*(**(v605 + 16) + 16))(*(v605 + 16), 0, v604);
                if (!v603)
                {
                  goto LABEL_667;
                }

LABEL_679:
                if (!atomic_fetch_add(&v603->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v603->__on_zero_shared)(v603);
                  std::__shared_weak_count::__release_weak(v603);
                }

                goto LABEL_667;
              }

LABEL_683:
              kdebug_trace();
              kdebug_trace();
              memset(buf, 0, 24);
              if (v955 >= 1)
              {
                v609 = 0;
                v610 = (v237 >> 4) & 0x7FFFFFFF;
                do
                {
                  v611 = *(**&(*v982)[v609] + 8);
                  v612 = *(**&(*v982)[v609] + 16);
                  if (v612)
                  {
                    atomic_fetch_add_explicit((v612 + 8), 1uLL, memory_order_relaxed);
                  }

                  v613 = *(*buf + v609 * 16 + 8);
                  *(*buf + v609 * 16) = v611;
                  if (v613 && !atomic_fetch_add(&v613->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v613->__on_zero_shared)(v613);
                    std::__shared_weak_count::__release_weak(v613);
                  }

                  ++v609;
                  --v610;
                }

                while (v610);
              }

              v614 = *(*a2 + 16);
              if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
              {
                sub_240222DDC();
              }

              (*(*v614 + 24))(v614, buf, *(qword_280C03828 + 196), *(*(*a2 + 8) + 3));
              v615 = *buf;
              if (*buf)
              {
                v616 = *&buf[8];
                v617 = *buf;
                if (*&buf[8] != *buf)
                {
                  do
                  {
                    v618 = *(v616 - 8);
                    if (v618 && !atomic_fetch_add(&v618->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v618->__on_zero_shared)(v618);
                      std::__shared_weak_count::__release_weak(v618);
                    }

                    v616 -= 16;
                  }

                  while (v616 != v615);
                  v617 = *buf;
                }

                *&buf[8] = v615;
                operator delete(v617);
              }

              kdebug_trace();
              if (v955 < 1)
              {
                kdebug_trace();
                if (!(*(**(*a2 + 400) + 48))(*(*a2 + 400)))
                {
                  goto LABEL_1062;
                }

                v854 = *(v988 + 24);
                v853 = *(v988 + 32);
                if (v853 == v854)
                {
                  if ((atomic_load_explicit(&qword_280C03928, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03928))
                  {
                    dword_280C03820 = 1059760811;
                    __cxa_guard_release(&qword_280C03928);
                  }

                  v856 = *(v988 + 24);
                  v857 = *(v988 + 32);
                  if (v856 == v857)
                  {
                    goto LABEL_1062;
                  }

                  v858 = 0;
                  while (1)
                  {
                    v859 = *(**v856 + 52);
                    *&v860 = vsub_f32(*(**v856 + 44), vmul_n_f32(v859, (*&dword_280C03820 + -1.0) * 0.5));
                    v861 = vmul_n_f32(v859, *&dword_280C03820);
                    if (((v858 >> 4) + 1) >> 60)
                    {
                      goto LABEL_1113;
                    }

                    if (v858 >> 4 != -1)
                    {
                      break;
                    }

                    *(&v860 + 1) = v861;
                    v862 = (16 * (v858 >> 4));
                    *v862 = v860;
                    v863 = v862 + 1;
                    if (v858)
                    {
                      v864 = v858 - 16;
                      v865 = 0;
                      v866 = 0;
                      if ((v858 - 16) < 0xD0)
                      {
                        goto LABEL_1149;
                      }

                      v867 = (v864 & 0xFFFFFFFFFFFFFFF0) + 8;
                      v868 = (v864 & 0xFFFFFFFFFFFFFFF0) + 16;
                      _CF = (v864 & 0xFFFFFFFFFFFFFFF0) == 0xFFFFFFFFFFFFFFF8 || v867 == 0;
                      v870 = !_CF;
                      v871 = (v864 & 0xFFFFFFFFFFFFFFF0) == 0xFFFFFFFFFFFFFFF0 || v867 <= 8;
                      v872 = !v871;
                      v873 = (v864 & 0xFFFFFFFFFFFFFFF0) + 8 <= 8 || v868 == 0;
                      v874 = !v873;
                      v875 = (v864 & 0xFFFFFFFFFFFFFFF0) + 16 <= 8 || v868 <= 8;
                      v876 = !v875;
                      v877 = v867 <= 8 || v868 == 0;
                      v865 = 0;
                      v866 = 0;
                      if (!v877)
                      {
                        goto LABEL_1149;
                      }

                      v865 = 0;
                      v866 = 0;
                      if (v870)
                      {
                        goto LABEL_1149;
                      }

                      v865 = 0;
                      v866 = 0;
                      if (v872)
                      {
                        goto LABEL_1149;
                      }

                      v865 = 0;
                      v866 = 0;
                      if (v874)
                      {
                        goto LABEL_1149;
                      }

                      v865 = 0;
                      v866 = 0;
                      if (v876)
                      {
                        goto LABEL_1149;
                      }

                      v878 = (v864 >> 4) + 1;
                      v866 = (16 * (v878 & 0x1FFFFFFFFFFFFFFCLL));
                      v865 = v866;
                      v879 = 32;
                      v880 = 32;
                      v881 = v878 & 0x1FFFFFFFFFFFFFFCLL;
                      do
                      {
                        v883 = *(v880 - 32);
                        v882 = *(v880 - 16);
                        v885 = *v880;
                        v884 = *(v880 + 16);
                        v880 += 64;
                        *(v879 - 32) = v883;
                        *(v879 - 16) = v882;
                        *v879 = v885;
                        *(v879 + 16) = v884;
                        v879 += 64;
                        v881 -= 4;
                      }

                      while (v881);
                      if (v878 != (v878 & 0x1FFFFFFFFFFFFFFCLL))
                      {
LABEL_1149:
                        do
                        {
                          *v866 = *v865;
                          v866[1] = v865[1];
                          v865 += 2;
                          v866 += 2;
                        }

                        while (v865 != v858);
                      }

                      else
                      {
                        operator delete(0);
                      }
                    }

                    v856 += 16;
                    v858 = v863;
                    if (v856 == v857)
                    {
                      v887 = *(v988 + 24);
                      v886 = *(v988 + 32);
                      if (v886 != v887)
                      {
                        v888 = 0;
                        v889 = 16;
                        while (1)
                        {
                          v890 = v888 + 1;
                          v891 = (v886 - v887) >> 4;
                          if (*(**(v887 + 16 * v888) + 128) && v890 < v891)
                          {
                            break;
                          }

LABEL_1007:
                          v889 += 16;
                          ++v888;
                          if (v890 >= v891)
                          {
                            goto LABEL_1062;
                          }
                        }

                        v893 = (16 * v888);
                        v894 = v889;
                        v895 = v888 + 1;
                        while (2)
                        {
                          if (*(**(v894 + v887) + 128))
                          {
                            v896 = *(16 * v888 + 8);
                            if (v896.f32[0] >= 0.0 && v896.f32[1] >= 0.0)
                            {
                              v897 = vcvtq_f64_f32(*v894);
                              v898 = vaddq_f64(v897, vcvtq_f64_f32(v894[1]));
                              v899 = vcvtq_f64_f32(*v893);
                              v900 = vaddq_f64(vcvtq_f64_f32(v896), v899);
                              v901 = vcgt_f32(*v894, *v893);
                              v902.i64[0] = v901.i32[0];
                              v902.i64[1] = v901.i32[1];
                              v903 = vsubq_f64(vbslq_s8(vcgtq_f64(v900, v898), v898, v900), vbslq_s8(v902, v897, v899));
                              v904 = fmin(v903.f64[0], v903.f64[1]);
                              v905 = vmuld_lane_f64(v903.f64[0], v903, 1);
                              if (v904 < 0.0)
                              {
                                v905 = 0.0;
                              }

                              v906 = v896.f32[0] * v896.f32[1];
                              if (v906 > 0.0 && (v905 / v906) >= 0.1)
                              {
                                v907 = (v887 + 16 * v888);
                                v908 = **v907;
                                if (v908[16])
                                {
                                  v909 = (*(v908[12] + ((v908[15] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v908[15] & 0x7FLL));
                                  v910 = *v909;
                                  v911 = v909[1];
                                  if (v911)
                                  {
                                    atomic_fetch_add_explicit(&v911->__shared_owners_, 1uLL, memory_order_relaxed);
                                  }

                                  if (*(v910 + 252))
                                  {
LABEL_1026:
                                    if (!v911)
                                    {
                                      goto LABEL_1032;
                                    }

                                    goto LABEL_1030;
                                  }
                                }

                                else
                                {
                                  v910 = 0;
                                  v911 = 0;
                                  if (MEMORY[0xFC])
                                  {
                                    goto LABEL_1026;
                                  }
                                }

                                *(v910 + 252) = 101;
                                if (!v911)
                                {
                                  goto LABEL_1032;
                                }

LABEL_1030:
                                if (!atomic_fetch_add(&v911->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                {
                                  (v911->__on_zero_shared)(v911);
                                  std::__shared_weak_count::__release_weak(v911);
                                }

LABEL_1032:
                                v912 = **v907;
                                if (v912[16])
                                {
                                  v913 = *(v912[12] + ((v912[15] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v912[15] & 0x7FLL);
                                  v914 = *(v913 + 16);
                                  v915 = *(v913 + 24);
                                  if (v915)
                                  {
                                    atomic_fetch_add_explicit(&v915->__shared_owners_, 1uLL, memory_order_relaxed);
                                  }

                                  if (*(v914 + 252))
                                  {
LABEL_1036:
                                    if (!v915)
                                    {
                                      goto LABEL_1042;
                                    }

                                    goto LABEL_1040;
                                  }
                                }

                                else
                                {
                                  v914 = 0;
                                  v915 = 0;
                                  if (MEMORY[0xFC])
                                  {
                                    goto LABEL_1036;
                                  }
                                }

                                *(v914 + 252) = 101;
                                if (!v915)
                                {
                                  goto LABEL_1042;
                                }

LABEL_1040:
                                if (!atomic_fetch_add(&v915->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                {
                                  (v915->__on_zero_shared)(v915);
                                  std::__shared_weak_count::__release_weak(v915);
                                }

LABEL_1042:
                                v916 = *v982;
                                v917 = **(v894 + *v982);
                                if (v917[16])
                                {
                                  v918 = (*(v917[12] + ((v917[15] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v917[15] & 0x7FLL));
                                  v919 = *v918;
                                  v920 = v918[1];
                                  if (v920)
                                  {
                                    atomic_fetch_add_explicit(&v920->__shared_owners_, 1uLL, memory_order_relaxed);
                                  }

                                  if (*(v919 + 252))
                                  {
LABEL_1046:
                                    if (!v920)
                                    {
                                      goto LABEL_1052;
                                    }

                                    goto LABEL_1050;
                                  }
                                }

                                else
                                {
                                  v919 = 0;
                                  v920 = 0;
                                  if (MEMORY[0xFC])
                                  {
                                    goto LABEL_1046;
                                  }
                                }

                                *(v919 + 252) = 101;
                                if (!v920)
                                {
                                  goto LABEL_1052;
                                }

LABEL_1050:
                                if (!atomic_fetch_add(&v920->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                {
                                  (v920->__on_zero_shared)(v920);
                                  std::__shared_weak_count::__release_weak(v920);
                                }

LABEL_1052:
                                v921 = **(v894 + v916);
                                if (v921[16])
                                {
                                  v922 = *(v921[12] + ((v921[15] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v921[15] & 0x7FLL);
                                  v923 = *(v922 + 16);
                                  v924 = *(v922 + 24);
                                  if (v924)
                                  {
                                    atomic_fetch_add_explicit(&v924->__shared_owners_, 1uLL, memory_order_relaxed);
                                  }

                                  if (*(v923 + 252))
                                  {
LABEL_1056:
                                    if (!v924)
                                    {
                                      goto LABEL_1013;
                                    }

                                    goto LABEL_1060;
                                  }
                                }

                                else
                                {
                                  v923 = 0;
                                  v924 = 0;
                                  if (MEMORY[0xFC])
                                  {
                                    goto LABEL_1056;
                                  }
                                }

                                *(v923 + 252) = 101;
                                if (!v924)
                                {
                                  goto LABEL_1013;
                                }

LABEL_1060:
                                if (!atomic_fetch_add(&v924->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                {
                                  (v924->__on_zero_shared)(v924);
                                  std::__shared_weak_count::__release_weak(v924);
                                }

LABEL_1013:
                                v887 = *(v988 + 24);
                                v886 = *(v988 + 32);
                              }
                            }
                          }

                          ++v895;
                          v891 = (v886 - v887) >> 4;
                          v894 += 2;
                          if (v895 >= v891)
                          {
                            goto LABEL_1007;
                          }

                          continue;
                        }
                      }

LABEL_1062:
                      (*(**(*a2 + 400) + 24))(*(*a2 + 400));
                      kdebug_trace();
                      if (v960)
                      {
                        v925 = **(*a2 + 32);
                        v926 = *(v925 + 8);
                        if (v926 >= v956 || v926 + 1000.0 <= v956)
                        {
                          v928 = atomic_load(v925);
                          if (v928 <= 0)
                          {
                            kdebug_trace();
                            memset(buf, 0, 24);
                            v929 = *(v988 + 24);
                            v930 = *(v988 + 32);
                            if (v930 != v929)
                            {
                              if (((v930 - v929) & 0x8000000000000000) == 0)
                              {
                                operator new();
                              }

                              sub_2401BDE28();
                            }

                            kdebug_trace();
                          }
                        }
                      }

LABEL_1077:
                      v933 = v1018;
                      if (v1018)
                      {
                        v934 = v1018;
                        if (v1019 != v1018)
                        {
                          v935 = v1019 - 104;
                          v936 = v1019 - 104;
                          v937 = (v1019 - 104);
                          do
                          {
                            v938 = *v937;
                            v937 -= 13;
                            (*v938)(v936);
                            v935 -= 104;
                            _ZF = v936 == v933;
                            v936 = v937;
                          }

                          while (!_ZF);
                          v934 = v1018;
                        }

                        v1019 = v933;
                        operator delete(v934);
                      }

LABEL_1084:
                      v939 = *(v988 + 24);
                      if (*(v988 + 32) != v939)
                      {
                        v940 = 0;
                        v941 = 0;
                        do
                        {
                          v942 = **(v939 + v940);
                          if (v942[16])
                          {
                            v943 = (*(v942[12] + ((v942[15] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v942[15] & 0x7FLL));
                            v945 = *v943;
                            v944 = v943[1];
                            if (v944)
                            {
                              atomic_fetch_add_explicit(&v944->__shared_owners_, 1uLL, memory_order_relaxed);
                              if (!atomic_fetch_add(&v944->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                              {
                                (v944->__on_zero_shared)(v944);
                                std::__shared_weak_count::__release_weak(v944);
                              }
                            }

                            if (*(v1021 + v940))
                            {
                              v946 = *(v945 + 241);
                              v947 = *(v945 + 252);
                              if ((v946 & 1) != 0 || v947)
                              {
                                v948 = v947 == 0;
                                if ((v947 & 0xFFFFFFFC) == 0xC8)
                                {
                                  v947 = 6;
                                }

                                if ((v946 & v948) != 0)
                                {
                                  v949 = 7;
                                }

                                else
                                {
                                  v949 = v947;
                                }

                                v1087[0].i32[0] = v949;
                                cva::ItemHandler::createValue<int>();
                              }
                            }
                          }

                          ++v941;
                          v939 = *(v988 + 24);
                          v940 += 16;
                        }

                        while (v941 < (*(v988 + 32) - v939) >> 4);
                      }

                      operator new();
                    }
                  }

                  if (!(((v858 >> 4) + 1) >> 60))
                  {
                    operator new();
                  }

LABEL_1105:
                  sub_2401BDE28();
                }

                if (((v853 - v854) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

LABEL_1113:
                sub_2401BDE28();
              }

              v619 = **v982;
              v1015 = v619;
              if (*(&v619 + 1))
              {
                atomic_fetch_add_explicit((*(&v619 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v620 = *(*v619 + 8);
              v621 = *(*v619 + 16);
              if (v621)
              {
                atomic_fetch_add_explicit(&v621->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v623 = *(v620 + 64);
              v622 = *(v620 + 72);
              if (v622)
              {
                atomic_fetch_add_explicit(&v622->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v1013 = v623;
              v1014 = v622;
              if (v621)
              {
                if (!atomic_fetch_add(&v621->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v621->__on_zero_shared)(v621);
                  std::__shared_weak_count::__release_weak(v621);
                }

                v623 = v1013;
              }

              if (!v623)
              {
                if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
                {
                  qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
                  __cxa_guard_release(&qword_280C03A00);
                }

                v645 = qword_280C03978;
                if (os_log_type_enabled(v645, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_2401B8000, v645, OS_LOG_TYPE_ERROR, "net output invalid", buf, 2u);
                }

                sub_24021D088();
              }

              kdebug_trace();
              v624 = v1013;
              memset(v1012, 0, sizeof(v1012));
              v625 = v1013->f32[1];
              v626 = v1013[1].f32[0];
              v627 = __sincosf_stret(v1013->f32[0]);
              v628 = __sincosf_stret(v625);
              v629 = __sincosf_stret(v626);
              *&v1006 = v628.__cosval * v629.__cosval;
              *(&v1006 + 1) = (v628.__sinval * (v627.__sinval * v629.__cosval)) + (v627.__cosval * v629.__sinval);
              *&v1007 = (v628.__sinval * -(v627.__cosval * v629.__cosval)) + (v627.__sinval * v629.__sinval);
              *(&v1007 + 1) = -(v628.__cosval * v629.__sinval);
              v1008 = (-(v627.__sinval * v628.__sinval) * v629.__sinval) + (v627.__cosval * v629.__cosval);
              v1009 = ((v627.__cosval * v628.__sinval) * v629.__sinval) + (v629.__cosval * v627.__sinval);
              sinval = v628.__sinval;
              v1011.f32[0] = -(v628.__cosval * v627.__sinval);
              v1011.f32[1] = v627.__cosval * v628.__cosval;
              if (v1012 != (v624 + 12))
              {
                v630 = *(v624 + 12);
                *&v1012[8] = *(v624 + 20);
                *v1012 = v630;
              }

              v1051 = 0;
              v1052 = 0.0;
              v631 = *(v1018 + 21);
              v632 = *(v1018 + 52);
              v633 = *(v1018 + 68);
              v634 = vtrn2q_s32(vextq_s8(v633, v632, 4uLL), v632);
              v635 = vtrn2q_s32(vextq_s8(v632, v633, 4uLL), v633);
              v1049[1] = vextq_s8(v635, v635, 8uLL);
              v1049[0] = vextq_s8(v634, v634, 8uLL);
              v1050 = v631;
              v1087[0] = v1049;
              *buf = v1087;
              *&buf[8] = v1018 + 88;
              sub_24021D1B4(&v1051, buf);
              *&v1002[28] = 0;
              *&v1002[20] = 0;
              *&v1002[12] = 0x3F80000000000000;
              *&v1002[4] = 0;
              *v1002 = 1065353216;
              v1003 = 1065353216;
              v1004 = 0;
              v1005 = 0.0;
              *buf = v1049;
              *&buf[8] = &v1006;
              sub_2401EDF8C(v1002, buf);
              v1087[0] = v1049;
              v1087[1] = v1012;
              *&buf[4] = 0;
              *&buf[12] = 0;
              sub_2401EE13C(&buf[4], v1087);
              v1004 = vadd_f32(*&buf[4], v1051);
              v1005 = *&buf[12] + v1052;
              v966 = 0;
              v637 = *a2;
              if (!v963 || *(*(v637 + 8) + 8) != 1)
              {
LABEL_776:
                v702 = *(v637 + 8);
                v703 = 0.0;
                if (v702[3] == 1)
                {
                  v703 = v1013[10].f32[0];
                }

                if (v702[4] == 1)
                {
                  v704 = v1013;
                  v705 = *v1012;
                  v706 = sinval;
                  v707 = *&v1012[4];
                  v708 = v1011;
                  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
                  {
                    sub_240222DDC();
                  }

                  v709 = vmul_f32(v707, v707);
                  v710 = 1.0 / sqrtf(((v705 * v705) + v709.f32[0]) + v709.f32[1]);
                  v709.f32[0] = v705 * v710;
                  if (cosf((*(qword_280C03828 + 224) * 3.1416) / 180.0) >= -(v636 + ((v706 * v709.f32[0]) + vmul_f32(v708, vmul_n_f32(v707, v710)).f32[0])))
                  {
                    v703 = 0.0;
                  }

                  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
                  {
                    sub_240222DDC();
                  }

                  v711 = *(qword_280C03828 + 228);
                  v712 = *(v704 + 24);
                  if (v712[40] > v711 || v712[41] > v711 || v712[42] > v711 || v712[43] > v711)
                  {
                    v703 = 0.0;
                  }

                  v637 = *a2;
                  v702 = *(*a2 + 8);
                }

                v713 = v1015;
                v714 = v702[8];
                v962 = *(v637 + 16);
                v715 = *(*v1015 + 152);
                if (!v715)
                {
                  sub_24023E708();
                }

                *&buf[28] = 0;
                *&buf[20] = 0;
                *&buf[12] = 0;
                *&buf[4] = 0;
                *buf = 1065353216;
                *&buf[16] = 1065353216;
                *v1054 = 1065353216;
                *&v1054[4] = 0;
                *&v1054[12] = 0;
                v979 = v1015;
                if (*(v715 + 128) > 1)
                {
                  v716 = *(v715 + 168);
                  if (!v716)
                  {
                    v717 = *(v715 + 144);
                    v718 = *(v715 + 152);
                    v719 = v718 - v717;
                    v720 = 113 * ((v718 - v717) >> 3) - 1;
                    if (v718 == v717)
                    {
                      v720 = 0;
                    }

                    if ((v720 - *(v715 + 176)) < 0x71)
                    {
                      v721 = *(v715 + 160);
                      v722 = *(v715 + 136);
                      if (v719 < v721 - v722)
                      {
                        if (v717 != v722)
                        {
                          operator new();
                        }

                        operator new();
                      }

                      if (v721 == v722)
                      {
                        v723 = 1;
                      }

                      else
                      {
                        v723 = (v721 - v722) >> 2;
                      }

                      if (!(v723 >> 61))
                      {
                        operator new();
                      }

                      goto LABEL_1105;
                    }

                    *(v715 + 168) = 113;
                    v1087[0] = *(v718 - 8);
                    *(v715 + 152) = v718 - 8;
                    sub_24023AE30((v715 + 136), v1087);
                    v716 = *(v715 + 168);
                  }

                  v725 = *(v715 + 144);
                  v726 = (v725 + 8 * (v716 / 0x71));
                  v727 = *v726 - 4068 * (v716 / 0x71) + 36 * v716;
                  if (*(v715 + 152) == v725)
                  {
                    v727 = 0;
                  }

                  if (v727 == *v726)
                  {
                    v727 = *(v726 - 1) + 4068;
                  }

                  v728 = *v1002;
                  v729 = *&v1002[16];
                  *(v727 - 4) = v1003;
                  *(v727 - 20) = v729;
                  *(v727 - 36) = v728;
                  v730 = vaddq_s64(*(v715 + 168), xmmword_240270BF0);
                  *(v715 + 168) = v730;
                  v731 = v730.i32[2];
                  v732 = v730.i32[2];
                  v734 = *(v715 + 184);
                  v733 = *(v715 + 192);
                  v735 = 0xAAAAAAAAAAAAAAABLL * (&v733[-v734] >> 2);
                  v736 = v730.i32[2] - v735;
                  v961 = v714;
                  if (v730.i32[2] <= v735)
                  {
                    if (v730.i32[2] < v735)
                    {
                      v733 = (v734 + 12 * v730.i32[2]);
                      *(v715 + 192) = v733;
                    }
                  }

                  else
                  {
                    v737 = *(v715 + 200);
                    if (0xAAAAAAAAAAAAAAABLL * ((v737 - v733) >> 2) < v736)
                    {
                      if (v730.i32[2] > 0x1555555555555555)
                      {
                        sub_2401BDE28();
                      }

                      v738 = 0xAAAAAAAAAAAAAAABLL * ((v737 - v734) >> 2);
                      if (2 * v738 > v730.i32[2])
                      {
                        v732 = 2 * v738;
                      }

                      if (v738 >= 0xAAAAAAAAAAAAAAALL)
                      {
                        v732 = 0x1555555555555555;
                      }

                      if (v732 <= 0x1555555555555555)
                      {
                        operator new();
                      }

                      goto LABEL_1105;
                    }

                    bzero(v733, 12 * ((12 * v736 - 12) / 0xC) + 12);
                    v733 += 12 * ((12 * v736 - 12) / 0xC) + 12;
                    *(v715 + 192) = v733;
                    v734 = *(v715 + 184);
                  }

                  if ((-1431655765 * (&v733[-v734] >> 2)) >= 1)
                  {
                    v739 = 0;
                    v740 = 0;
                    do
                    {
                      v741 = v740 + *(v715 + 168);
                      v742 = *(*(v715 + 144) + 8 * (v741 / 0x71)) - 4068 * (v741 / 0x71);
                      __p[0] = v1002;
                      *v1085 = v742 + 36 * v741;
                      *&v1085[8] = __p;
                      memset(v1087, 0, sizeof(v1087));
                      v1088 = 0;
                      sub_240222548(v1087, v1085);
                      *&memptr[8] = 0;
                      *memptr = 0;
                      sub_240222718(v1087, memptr);
                      v743 = *(v715 + 184) + v739;
                      *v743 = *memptr;
                      *(v743 + 8) = *&memptr[8];
                      ++v740;
                      v734 = *(v715 + 184);
                      v739 += 12;
                    }

                    while (v740 < (-1431655765 * ((*(v715 + 192) - v734) >> 2)));
                  }

                  v744 = 0.0;
                  v745 = 0.0;
                  if (v731 >= 1)
                  {
                    v746 = v731 & 0x7FFFFFFF;
                    v747 = (v734 + 4);
                    do
                    {
                      v748 = *(v747 - 1) * *(v747 - 1);
                      v749 = *v747;
                      v747 = (v747 + 12);
                      v750 = vmul_f32(v749, v749);
                      v751 = sqrtf((v748 + v750.f32[0]) + v750.f32[1]);
                      if (v745 < v751)
                      {
                        v745 = v751;
                      }

                      --v746;
                    }

                    while (v746);
                  }

                  v752 = v745 * *(v715 + 132);
                  v753 = -v752;
                  if (v752 >= 10.0)
                  {
                    v753 = -10.0;
                  }

                  v754 = expf(v753);
                  if (v731 >= 1)
                  {
                    v755 = 1.0;
                    v744 = 0.0;
                    v756 = v731;
                    do
                    {
                      v744 = v755 + v744;
                      v755 = v754 * v755;
                      --v756;
                    }

                    while (v756);
                  }

                  v757 = 1.0 / v744;
                  v758 = (1.0 / v744) * *v734;
                  _D7 = vmul_n_f32(*(v734 + 4), 1.0 / v744);
                  if (v731 > 1)
                  {
                    v760 = (v731 & 0x7FFFFFFF) - 1;
                    v761 = (v734 + 16);
                    do
                    {
                      v757 = v754 * v757;
                      v758 = v758 + (v757 * *(v761 - 1));
                      v762 = *v761;
                      v761 = (v761 + 12);
                      _D7 = vadd_f32(_D7, vmul_n_f32(v762, v757));
                      --v760;
                    }

                    while (v760);
                  }

                  v763 = *(v715 + 176);
                  v764 = *(v715 + 128);
                  v1001 = _D7;
                  if (v764 <= v763)
                  {
                    v770 = *(v715 + 152);
                    do
                    {
                      v771 = *(v715 + 168);
                      if (v770 == *(v715 + 144))
                      {
                        v772 = 0;
                      }

                      else
                      {
                        v772 = 113 * ((v770 - *(v715 + 144)) >> 3) - 1;
                      }

                      v773 = v763 - 1;
                      *(v715 + 176) = v763 - 1;
                      if ((v772 - (v763 + v771) + 1) >= 0xE2)
                      {
                        operator delete(*(v770 - 8));
                        _D7 = v1001;
                        v770 = *(v715 + 152) - 8;
                        *(v715 + 152) = v770;
                        v773 = *(v715 + 176);
                        v764 = *(v715 + 128);
                      }

                      v763 = v773;
                    }

                    while (v764 <= v773);
                  }

                  v765 = vmul_f32(_D7, _D7);
                  v766 = v765.f32[1] + (v765.f32[0] + (v758 * v758));
                  if (v766 >= 0.0061)
                  {
                    v774 = sqrtf(v766);
                    v775 = __sincosf_stret(v774);
                    cosval = v775.__cosval;
                    _D7 = v1001;
                    v768 = v775.__sinval / v774;
                    v767 = (1.0 / v766) * (1.0 - v775.__cosval);
                  }

                  else
                  {
                    v767 = 0.5 - (v766 * ((v766 / -720.0) + 0.041667));
                    v768 = 1.0 - (v766 * (0.16667 - (v766 * ((v766 / -5040.0) + 0.0083333))));
                    cosval = 1.0 - (v766 * v767);
                  }

                  v714 = v961;
                  v776 = v758 * v767;
                  v777 = v767 * _D7.f32[0];
                  _S2 = vmuls_lane_f32(v767, _D7, 1);
                  v779 = cosval + (v776 * v758);
                  v780 = cosval + (v777 * _D7.f32[0]);
                  __asm { FMLA            S1, S2, V7.S[1] }

                  v1088 = _S1;
                  v782 = vmuls_lane_f32(v777, _D7, 1);
                  v783 = v758 * v768;
                  v784 = vrev64_s32(vmul_n_f32(_D7, v768));
                  v1087[2].f32[0] = v780;
                  v1087[3].f32[1] = v782 - v783;
                  v785 = vmul_n_f32(_D7, v776);
                  v1087[0].f32[0] = v779;
                  v1087[0].i32[1] = vadd_f32(v785, v784).u32[0];
                  v1087[1] = vrev64_s32(vsub_f32(v785, v784));
                  v784.f32[0] = v782;
                  v785.f32[0] = v783;
                  *(&v1087[2] + 4) = vadd_f32(v784, v785);
                  *v1085 = v1087;
                  *&v1085[8] = v1002;
                  memset(buf, 0, sizeof(buf));
                  *v1054 = 0;
                  sub_2401EDF8C(buf, v1085);
                }

                else
                {
                  *buf = *v1002;
                  *&buf[16] = *&v1002[16];
                  *v1054 = v1003;
                }

                sub_24023BE6C(v1087, v715 + 208, &v1004);
                *&v1054[4] = v1087[0];
                *&v1054[12] = v1087[1].i32[0];
                *v1087[0].f32 = *v1002;
                *v1087[2].f32 = *&v1002[16];
                v1088 = v1003;
                v1089 = v1004;
                v1090 = v1005;
                *v1085 = *buf;
                *&v1085[16] = *&buf[16];
                *&v1085[32] = *v1054;
                *&v1085[36] = *&v1054[4];
                *&v1085[44] = *&v1054[12];
                if (v714)
                {
                  v786 = *v713;
                  if ((v966 & 0x100000000) != 0)
                  {
                    *(v786 + 160) = v966;
                    *(v786 + 164) = BYTE4(v966);
                  }

                  else if (!*(v786 + 128))
                  {
                    *(v786 + 160) = 1065353216;
                    *(v786 + 164) = 1;
                  }

                  v787 = *(*v713 + 152);
                  LODWORD(__p[0]) = *(*v713 + 160);
                  v974 = *__p;
                  sub_24023C490(memptr, v787 + 528, __p);
                  v997 = *memptr;
                  v1084 = 0.0;
                  v1083 = 0;
                  v788 = vtrn2q_s32(vextq_s8(*&v1035[20], *&v1035[4], 4uLL), *&v1035[4]);
                  v789 = vtrn2q_s32(vextq_s8(*&v1035[4], *&v1035[20], 4uLL), *&v1035[20]);
                  *&memptr[16] = vextq_s8(v789, v789, 8uLL);
                  *memptr = vextq_s8(v788, v788, 8uLL);
                  *&memptr[32] = *&v1035[36];
                  *__dst = memptr;
                  __p[0] = __dst;
                  __p[1] = &v1036;
                  sub_24021D1B4(&v1083, __p);
                  v1078 = 0x3F800000uLL;
                  HIDWORD(__p[1]) = 0;
                  *(__p + 4) = 0;
                  LODWORD(__p[0]) = 1065353216;
                  v1079 = 1065353216;
                  v1080 = 0;
                  v1081 = 0.0;
                  *__dst = &v1035[4];
                  *&__dst[8] = v1002;
                  sub_2401EDF8C(__p, __dst);
                  *v1069 = &v1035[4];
                  *&v1069[8] = &v1004;
                  *&__dst[4] = 0;
                  *&__dst[12] = 0;
                  sub_2401EE13C(&__dst[4], v1069);
                  v790 = v1036;
                  v1080 = vadd_f32(*&__dst[4], v1036);
                  v791 = v1037;
                  v1081 = *&__dst[12] + v1037;
                  *&__dst[28] = 0;
                  *&__dst[12] = 0x3F80000000000000uLL;
                  *&__dst[4] = 0;
                  *__dst = 1065353216;
                  v1074 = 1065353216;
                  v1075 = 0;
                  v1076 = 0.0;
                  *v1069 = &v1035[4];
                  *&v1069[8] = buf;
                  sub_2401EDF8C(__dst, v1069);
                  *v1043 = &v1035[4];
                  *&v1043[8] = &v1054[4];
                  *&v1069[4] = 0;
                  *&v1069[12] = 0;
                  sub_2401EE13C(&v1069[4], v1043);
                  v1075 = vadd_f32(*&v1069[4], v790);
                  v1076 = *&v1069[12] + v791;
                  *v1043 = *__p;
                  *&v1043[16] = v1078;
                  v1044 = v1079;
                  v1045 = vmul_n_f32(v1080, v974);
                  v1046 = v1081 * v974;
                  *&v1069[4] = 0;
                  *&v1069[20] = 0;
                  *&v1069[12] = 0;
                  *&v1069[28] = 0;
                  *v1069 = 1065353216;
                  *&v1069[16] = 1065353216;
                  v1070 = 1065353216;
                  v1072 = 0.0;
                  v1071 = 0;
                  *&v1086[0] = memptr;
                  *(&v1086[0] + 1) = v1043;
                  sub_2401EDF8C(v1069, v1086);
                  v1047 = memptr;
                  v1048 = &v1045;
                  *(v1086 + 4) = 0;
                  HIDWORD(v1086[0]) = 0;
                  sub_2401EE13C(v1086 + 1, &v1047);
                  v792 = v1083;
                  v793 = v1084;
                  *v1087[0].f32 = *v1069;
                  *v1087[2].f32 = *&v1069[16];
                  v1088 = v1070;
                  v1089 = vadd_f32(*(v1086 + 4), v1083);
                  v1090 = *(v1086 + 3) + v1084;
                  *v1043 = *__dst;
                  *&v1043[16] = *&__dst[16];
                  v1044 = v1074;
                  v1045 = vmul_n_f32(v1075, v997);
                  v1046 = v1076 * v997;
                  *&v1069[4] = 0;
                  *&v1069[12] = 0x3F80000000000000uLL;
                  *&v1069[28] = 0;
                  *v1069 = 1065353216;
                  v1070 = 1065353216;
                  v1072 = 0.0;
                  v1071 = 0;
                  *&v1086[0] = memptr;
                  *(&v1086[0] + 1) = v1043;
                  sub_2401EDF8C(v1069, v1086);
                  v1047 = memptr;
                  v1048 = &v1045;
                  v713 = v979;
                  *(v1086 + 4) = 0;
                  HIDWORD(v1086[0]) = 0;
                  sub_2401EE13C(v1086 + 1, &v1047);
                  v1071 = vadd_f32(*(v1086 + 4), v792);
                  v1072 = *(v1086 + 3) + v793;
                  *v1085 = *v1069;
                  *&v1085[16] = *&v1069[16];
                  *&v1085[32] = v1070;
                  *&v1085[36] = v1071;
                  *&v1085[44] = *(v1086 + 3) + v793;
                }

                v794 = *(*v713 + 152);
                v795 = 384;
                if (v703 > 0.5)
                {
                  v795 = 400;
                }

                v796 = v794 + v795;
                v798 = *v796;
                v797 = *(v796 + 8);
                if (v797)
                {
                  atomic_fetch_add_explicit((v797 + 8), 1uLL, memory_order_relaxed);
                  v794 = *(*v713 + 152);
                }

                v799 = (v794 + 264);
                v800 = v1013;
                v801 = &v1013[3];
                v802 = *(v794 + 280);
                v803 = v1013[5].u32[0];
                if (v802 == v803)
                {
                  if (!v798)
                  {
                    v798 = (v794 + 360);
                    if (*(v794 + 376) != v802)
                    {
                      *(v794 + 376) = v802;
                      if (v802)
                      {
                        v804 = *(v794 + 360);
                        if (*(v794 + 368) < v802)
                        {
                          free(v804);
                          v805 = (4 * v802 + 31) & 0x7FFFFFFE0;
                          *(v794 + 360) = 0;
                          *(v794 + 368) = v805 >> 2;
                          *memptr = 0;
                          malloc_type_posix_memalign(memptr, 0x20uLL, v805, 0xE1AC2527uLL);
                          v804 = *memptr;
                          *(v794 + 360) = *memptr;
                        }
                      }

                      else
                      {
                        free(*v798);
                        v804 = 0;
                        *v798 = 0;
                        *(v794 + 368) = 0;
                      }

                      v836 = *(v794 + 376);
                      if (v836)
                      {
                        memset_pattern16(v804, &unk_240270D20, 4 * v836);
                      }
                    }
                  }

                  v809 = *(v794 + 280);
                  if (!v809)
                  {
LABEL_885:
                    *memptr = 0;
                    malloc_type_posix_memalign(memptr, 0x20uLL, (4 * v809 + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
                    v810 = *memptr;
                    if (v809)
                    {
                      memcpy(*memptr, *v799, 4 * v809);
                    }

                    v811 = *(v794 + 280);
                    v812 = *(v962 + 8);
                    v813 = *(v812 + 80);
                    if (v813 >= 1)
                    {
                      v814 = 0;
                      v815 = *(v812 + 64);
                      v816 = 3 * v813;
                      do
                      {
                        v817 = v815 + 4 * v814;
                        v819 = *(v817 + 4);
                        v818 = *(v817 + 8);
                        v820 = v810[v819] - v810[v818];
                        v821 = fminf(v820, 1.0);
                        v822 = v820 > 0.0;
                        if (v820 < 0.0)
                        {
                          v821 = 0.0;
                        }

                        v810[v819] = v821;
                        v823 = fminf(-v820, 1.0);
                        if (v822)
                        {
                          v823 = 0.0;
                        }

                        v810[v818] = v823;
                        v814 += 3;
                      }

                      while (v816 != v814);
                    }

                    if (v811)
                    {
                      v824 = (v811 - 1) & 0x3FFFFFFFFFFFFFFFLL;
                      v825 = v810;
                      if (v824 > 6)
                      {
                        v826 = (v824 + 1) & 0x7FFFFFFFFFFFFFF8;
                        v827 = (v810 + 4);
                        v828 = v826;
                        do
                        {
                          v829 = vandq_s8(vminnmq_f32(*v827, v990), vcgezq_f32(*v827));
                          v827[-1] = vandq_s8(vminnmq_f32(v827[-1], v990), vcgezq_f32(v827[-1]));
                          *v827 = v829;
                          v827 += 2;
                          v828 -= 8;
                        }

                        while (v828);
                        if (v824 + 1 == v826)
                        {
                          goto LABEL_904;
                        }

                        v825 = &v810[v826];
                      }

                      do
                      {
                        v830 = fminf(*v825, 1.0);
                        if (*v825 >= 0.0)
                        {
                          v831 = v830;
                        }

                        else
                        {
                          v831 = 0.0;
                        }

                        *v825++ = v831;
                      }

                      while (v825 != &v810[v811]);
                    }

LABEL_904:
                    sub_24023BE6C(__p, *(*v713 + 152) + 416, v1013 + 6);
                    *v1069 = 0;
                    *v1043 = 0;
                    v832 = v1013;
                    v833 = v1014;
                    if (v1014)
                    {
                      atomic_fetch_add_explicit(&v1014->__shared_owners_, 1uLL, memory_order_relaxed);
                      v834 = sub_240237F64(v832, __p, v810, v1069, v1043);
                      if (!atomic_fetch_add(&v833->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v833->__on_zero_shared)(v833, v834);
                        std::__shared_weak_count::__release_weak(v833);
                      }
                    }

                    else
                    {
                      sub_240237F64(v1013, __p, v810, v1069, v1043);
                    }

                    v835 = *(*v713 + 152);
                    *__dst = v703;
                    sub_24023C490(memptr, v835 + 472, __dst);
                    operator new();
                  }

                  v837 = *(v794 + 264);
                  v838 = *(v794 + 288);
                  v839 = *v801;
                  v840 = *v798;
                  do
                  {
                    v845 = *v837;
                    v846 = *v837 + (*(v794 + 336) * *v838);
                    v847 = vabds_f32(*v839, v846);
                    v848 = *(v794 + 316);
                    v841 = 0.0;
                    if (v847 >= v848)
                    {
                      if (v847 < *(v794 + 320))
                      {
                        v841 = (v847 - v848) * *(v794 + 344);
                      }

                      else
                      {
                        v849 = *(v794 + 324);
                        v841 = 1.0;
                        if (v847 >= v849)
                        {
                          v841 = 0.0;
                          if (v847 < *(v794 + 328))
                          {
                            v841 = 1.0 - ((v847 - v849) * *(v794 + 348));
                          }
                        }
                      }
                    }

                    v842 = *v840++;
                    v843 = fminf(*(v794 + 340) + (v841 / ((*(v794 + 312) * v842) + 1.0)), 1.0);
                    v844 = (v846 * (1.0 - v843)) + (v843 * *v839);
                    *v837++ = v844;
                    *v838 = ((1.0 - *(v794 + 352)) * *v838) + (*(v794 + 352) * (v844 - v845));
                    ++v838;
                    ++v839;
                    --v809;
                  }

                  while (v809);
                }

                else
                {
                  if (v799 != v801)
                  {
                    if (v1013[5].i32[0])
                    {
                      v806 = *(v794 + 264);
                      if (*(v794 + 272) < v803)
                      {
                        free(v806);
                        v807 = (4 * v803 + 31) & 0x7FFFFFFE0;
                        *(v794 + 264) = 0;
                        *(v794 + 272) = v807 >> 2;
                        *memptr = 0;
                        malloc_type_posix_memalign(memptr, 0x20uLL, v807, 0xE1AC2527uLL);
                        v806 = *memptr;
                        *(v794 + 264) = *memptr;
                      }

                      memcpy(v806, *v801, 4 * v803);
                    }

                    else
                    {
                      free(*v799);
                      *v799 = 0;
                      *(v794 + 272) = 0;
                    }

                    v803 = *(v800 + 40);
                    *(v794 + 280) = v803;
                  }

                  if (v803 != *(v794 + 304))
                  {
                    *(v794 + 304) = v803;
                    if (v803)
                    {
                      if (*(v794 + 296) < v803)
                      {
                        free(*(v794 + 288));
                        v808 = (4 * v803 + 31) & 0x7FFFFFFE0;
                        *(v794 + 288) = 0;
                        *(v794 + 296) = v808 >> 2;
                        *memptr = 0;
                        malloc_type_posix_memalign(memptr, 0x20uLL, v808, 0xE1AC2527uLL);
                        *(v794 + 288) = *memptr;
                      }
                    }

                    else
                    {
                      free(*(v794 + 288));
                      *(v794 + 288) = 0;
                      *(v794 + 296) = 0;
                    }

                    v803 = *(v794 + 304);
                  }

                  if (v803)
                  {
                    bzero(*(v794 + 288), 4 * v803);
                  }
                }

                v809 = *(v794 + 280);
                goto LABEL_885;
              }

              kdebug_trace();
              sub_240206034(&v1013[23], *&v1013[3], v1013[5].i32[0], *a2 + 408);
              *&buf[28] = 0;
              *&buf[20] = 0;
              *&buf[12] = 0;
              *&buf[4] = 0;
              *buf = 1065353216;
              *&buf[16] = 1065353216;
              *v1054 = 1065353216;
              *&v1054[4] = 0;
              *&v1054[12] = 0;
              v1087[0] = &v1030[4];
              v1087[1] = v1002;
              sub_2401EDF8C(buf, v1087);
              *v1085 = &v1030[4];
              *&v1085[8] = &v1004;
              *(v1087 + 4) = 0;
              v1087[1].i32[1] = 0;
              sub_2401EE13C(v1087 + 1, v1085);
              *&v1054[4] = vadd_f32(*(v1087 + 4), v1031);
              *&v1054[12] = v1087[1].f32[1] + v1032;
              v638 = *a2;
              if ((v1087[1].f32[1] + v1032) > *(*(*a2 + 8) + 92))
              {
LABEL_775:
                kdebug_trace();
                v637 = *a2;
                goto LABEL_776;
              }

              v639 = *v967;
              v640 = *(*v967 + 240);
              *v1087[0].f32 = *(*v967 + 224);
              *v1087[2].f32 = v640;
              v1088 = *(v639 + 256);
              v641 = *(v638 + 424);
              memset(memptr, 0, 24);
              if (v641)
              {
                if ((v641 & 0x80000000) == 0)
                {
                  operator new();
                }

                sub_2401BDE28();
              }

              v642 = *(v639 + 200);
              v643 = CVPixelBufferGetPixelFormatType(v642);
              if (v643 == 825306677 || v643 == 1647392359 || v643 == 825437747)
              {
                v644 = *(v639 + 324);
                if (v644 != 1)
                {
                  if (v644 == 2)
                  {
                    CVPixelBufferLockBaseAddress(v642, 1uLL);
                    CVPixelBufferGetWidth(v642);
                    CVPixelBufferGetHeight(v642);
                    CVPixelBufferGetBytesPerRow(v642);
                    CVPixelBufferGetBaseAddress(v642);
                    nextafterf(*(v639 + 320), 0.0);
LABEL_740:
                    CVPixelBufferUnlockBaseAddress(v642, 1uLL);
                    v651 = *memptr;
LABEL_741:
                    v652 = v651;
LABEL_742:
                    v653 = *(v638 + 424);
                    v654 = *(&v651 + 1);
                    v655 = (*(&v651 + 1) - v652) >> 2;
                    if (v655 < 10 || (v656 = v655, (v653 * 0.75) > v655))
                    {
                      if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
                      {
                        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
                        __cxa_guard_release(&qword_280C03A00);
                      }

                      v665 = qword_280C03978;
                      if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
                      {
                        v1087[0].i32[0] = 67109376;
                        v1087[0].i32[1] = v655;
                        v1087[1].i16[0] = 1024;
                        *(v1087[1].i32 + 2) = v653;
                        v666 = v665;
                        v667 = "skipping pose refinement: low number of valid depth pixels (%d/%d)";
                        v668 = 14;
LABEL_771:
                        _os_log_impl(&dword_2401B8000, v666, OS_LOG_TYPE_INFO, v667, v1087, v668);
                      }

LABEL_772:
                      v700 = 0;
                      v701 = 0;
                      if (!v652)
                      {
LABEL_774:
                        v966 = v701 | v700;
                        goto LABEL_775;
                      }

LABEL_773:
                      operator delete(v652);
                      goto LABEL_774;
                    }

                    v657 = (v656 * 0.25);
                    v658 = &v652[4 * v657];
                    if (v658 != *(&v651 + 1))
                    {
                      sub_2402435B8(v652, &v652[4 * v657], *(&v651 + 1));
                    }

                    v659 = (v656 * 0.75);
                    v660 = &v652[4 * v659];
                    if (v660 != v654)
                    {
                      sub_2402435B8(v658 + 1, v660, v654);
                    }

                    v661 = (v659 - v657 + 1);
                    if (v659 - v657 < 0)
                    {
                      v669 = 0.0;
                      v670 = 0.0 / v661;
                      goto LABEL_767;
                    }

                    v662 = (v659 - v657 + 1);
                    if (v662 > 7)
                    {
                      v663 = v662 & 0xFFFFFFF8;
                      v671 = &v652[4 * v657 + 16];
                      v664 = 0.0;
                      v672 = v663;
                      do
                      {
                        v673 = v671[-1];
                        v674 = vcvt_hight_f64_f32(v673);
                        v675 = vcvtq_f64_f32(*v673.f32);
                        v676 = vcvt_hight_f64_f32(*v671);
                        v677 = vcvtq_f64_f32(*v671->f32);
                        v664 = v664 + v675.f64[0] + v675.f64[1] + v674.f64[0] + v674.f64[1] + v677.f64[0] + v677.f64[1] + v676.f64[0] + v676.f64[1];
                        v671 += 2;
                        v672 -= 8;
                      }

                      while (v672);
                      if (v663 == v662)
                      {
LABEL_760:
                        v670 = v664 / v661;
                        if (v662 > 7)
                        {
                          v681 = v662 & 0xFFFFFFF8;
                          v682 = vdupq_lane_s64(*&v670, 0);
                          v683 = &v652[4 * v657 + 16];
                          v669 = 0.0;
                          v684 = v681;
                          do
                          {
                            v685 = *v683[-2].f32;
                            v686 = vcvt_hight_f64_f32(v685);
                            v687 = vsubq_f64(vcvtq_f64_f32(*v685.f32), v682);
                            v688 = vsubq_f64(v686, v682);
                            v689 = vsubq_f64(vcvtq_f64_f32(*v683), v682);
                            v690 = vsubq_f64(vcvt_hight_f64_f32(*v683->f32), v682);
                            v691 = vmulq_f64(v688, v688);
                            v692 = vmulq_f64(v687, v687);
                            v693 = vmulq_f64(v690, v690);
                            v694 = vmulq_f64(v689, v689);
                            v669 = v669 + v692.f64[0] + v692.f64[1] + v691.f64[0] + v691.f64[1] + v694.f64[0] + v694.f64[1] + v693.f64[0] + v693.f64[1];
                            v683 += 4;
                            v684 -= 8;
                          }

                          while (v684);
                          if (v681 == v662)
                          {
LABEL_767:
                            v698 = sqrt(v669 / (v659 - v657));
                            if (v698 <= 0.05)
                            {
                              *&v724 = v670;
                              v701 = v724;
                              v700 = 0x100000000;
                              if (!v652)
                              {
                                goto LABEL_774;
                              }

                              goto LABEL_773;
                            }

                            if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
                            {
                              qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
                              __cxa_guard_release(&qword_280C03A00);
                            }

                            v699 = qword_280C03978;
                            if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
                            {
                              v1087[0].i32[0] = 134217984;
                              *(v1087 + 4) = *&v698;
                              v666 = v699;
                              v667 = "skipping pose refinement: the scaling ratios have a high variance (stddev=%g)";
                              v668 = 12;
                              goto LABEL_771;
                            }

                            goto LABEL_772;
                          }
                        }

                        else
                        {
                          v681 = 0;
                          v669 = 0.0;
                        }

                        v695 = v662 - v681;
                        v696 = &v652[4 * v681 + 4 * v657];
                        do
                        {
                          v697 = *v696++;
                          v669 = v669 + (v697 - v670) * (v697 - v670);
                          --v695;
                        }

                        while (v695);
                        goto LABEL_767;
                      }
                    }

                    else
                    {
                      v663 = 0;
                      v664 = 0.0;
                    }

                    v678 = v662 - v663;
                    v679 = &v652[4 * v663 + 4 * v657];
                    do
                    {
                      v680 = *v679++;
                      v664 = v664 + v680;
                      --v678;
                    }

                    while (v678);
                    goto LABEL_760;
                  }

                  goto LABEL_1112;
                }

LABEL_739:
                CVPixelBufferLockBaseAddress(v642, 1uLL);
                CVPixelBufferGetWidth(v642);
                CVPixelBufferGetHeight(v642);
                CVPixelBufferGetBytesPerRow(v642);
                CVPixelBufferGetBaseAddress(v642);
                goto LABEL_740;
              }

              v646 = *(v639 + 324);
              if (v646 == 1)
              {
                if (v643 == 1717855600 || v643 == 1278226534)
                {
                  goto LABEL_739;
                }

                v850 = v643;
                if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
                {
                  qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
                  __cxa_guard_release(&qword_280C03A00);
                }

                v851 = qword_280C03978;
                if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
                {
                  *v1085 = 67109120;
                  *&v1085[4] = v850;
                  v649 = v851;
                  v650 = "unknown depth buffer format (%u)";
LABEL_927:
                  _os_log_error_impl(&dword_2401B8000, v649, OS_LOG_TYPE_ERROR, v650, v1085, 8u);
                  v852 = *memptr;
                  if (!*memptr)
                  {
                    goto LABEL_928;
                  }

                  goto LABEL_925;
                }

LABEL_924:
                v852 = *memptr;
                if (!*memptr)
                {
LABEL_928:
                  v652 = 0;
                  *(&v651 + 1) = 0;
                  goto LABEL_742;
                }

LABEL_925:
                *&memptr[8] = v852;
                operator delete(v852);
                v651 = 0uLL;
                goto LABEL_741;
              }

              if (v646 == 2)
              {
                v647 = v643;
                if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
                {
                  qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
                  __cxa_guard_release(&qword_280C03A00);
                }

                v648 = qword_280C03978;
                if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
                {
                  *v1085 = 67109120;
                  *&v1085[4] = v647;
                  v649 = v648;
                  v650 = "unknown depth buffer format (%u) for normalized disparity";
                  goto LABEL_927;
                }

                goto LABEL_924;
              }

LABEL_1112:
              sub_2401F0C48();
              goto LABEL_1113;
            }

            if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
            {
              qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
              __cxa_guard_release(&qword_280C03A00);
            }

            v321 = qword_280C03978;
            if (os_log_type_enabled(v321, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_2401B8000, v321, OS_LOG_TYPE_ERROR, "output pixel buffer must be backed by an IOSurface", buf, 2u);
            }
          }

          else
          {
            if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
            {
              qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
              __cxa_guard_release(&qword_280C03A00);
            }

            v321 = qword_280C03978;
            if (os_log_type_enabled(v321, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_2401B8000, v321, OS_LOG_TYPE_ERROR, "input pixel buffer must be backed by an IOSurface", buf, 2u);
            }
          }
        }

        else
        {
          if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
          {
            qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
            __cxa_guard_release(&qword_280C03A00);
          }

          v321 = qword_280C03978;
          if (os_log_type_enabled(v321, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2401B8000, v321, OS_LOG_TYPE_ERROR, "no output defined", buf, 2u);
          }
        }
      }

      else
      {
        if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
        {
          qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
          __cxa_guard_release(&qword_280C03A00);
        }

        v321 = qword_280C03978;
        if (os_log_type_enabled(v321, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2401B8000, v321, OS_LOG_TYPE_ERROR, "no input defined", buf, 2u);
        }
      }
    }

    else
    {
      if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(&qword_280C03A00);
      }

      v321 = qword_280C03978;
      if (os_log_type_enabled(v321, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2401B8000, v321, OS_LOG_TYPE_ERROR, "hardware scaler not initialized", buf, 2u);
      }
    }

    break;
  }

  v309 = 0;
  goto LABEL_452;
}

void sub_24021C8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, CVPixelBufferRef texture, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p)
{
  __cxa_guard_abort(&qword_280C039F0);
  sub_2401E213C(&STACK[0x480]);
  kdebug_trace();
  if (__p)
  {
    operator delete(__p);
  }

  sub_24021D274(&STACK[0x2C0]);
  sub_2401E213C(&STACK[0x2D8]);
  sub_24021D310(&STACK[0x2F0]);
  sub_2401C1DF4(&STACK[0x3E8]);
  v62 = STACK[0x3F8];
  if (STACK[0x3F8])
  {
    STACK[0x400] = v62;
    operator delete(v62);
  }

  os_unfair_lock_unlock(&unk_280C03818);
  _Unwind_Resume(a1);
}

void sub_24021D168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  cva::ItemHandler::~ItemHandler(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_2401C1DF4(&a18);
  _Unwind_Resume(a1);
}

void sub_24021D19C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

float *sub_24021D1B4(float *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  if (v3 == result)
  {
    v12 = 0;
    v11 = 0;
    result = sub_24021D1B4(&v11);
    *v2 = v11;
    *(v2 + 2) = v12;
  }

  else
  {
    v4 = **a2;
    v6 = v4[7];
    v5 = v4[8];
    v7 = v4[5];
    v8 = v4[1];
    v9 = v4[4];
    v10 = v4[2];
    *result = ((0.0 - (*v4 * *v3)) - (v4[3] * v3[1])) - (v4[6] * v3[2]);
    result[1] = ((0.0 - (v8 * *v3)) - (v9 * v3[1])) - (v6 * v3[2]);
    result[2] = ((0.0 - (v10 * *v3)) - (v7 * v3[1])) - (v5 * v3[2]);
  }

  return result;
}

void **sub_24021D274(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 104;
      v6 = v3 - 104;
      v7 = v3 - 104;
      do
      {
        v8 = *v7;
        v7 -= 104;
        (*v8)(v6);
        v5 -= 104;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_24021D310(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[6];
      if (v6)
      {
        do
        {
          v7 = *v6;
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      v8 = v2[4];
      v2[4] = 0;
      if (v8)
      {
        operator delete(v8);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_24021D3A0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226D98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_24021D414(uint64_t a1)
{
  v1 = (a1 + 24);
  v2 = atomic_load((a1 + 24));
  if (v2)
  {
    os_unfair_lock_lock((a1 + 28));
    v4 = atomic_load(v1);
    if ((v4 & 1) == 0)
    {
LABEL_21:
      os_unfair_lock_unlock((a1 + 28));
      return;
    }

    if (*a1)
    {
      Width = CVPixelBufferGetWidth(*a1);
      if (*a1)
      {
        Height = CVPixelBufferGetHeight(*a1);
        v7 = *a1;
        v16 = Width;
        v17 = Height;
        if (v7)
        {
          PixelFormatType = CVPixelBufferGetPixelFormatType(v7);
        }

        else
        {
          PixelFormatType = 0;
        }

LABEL_9:
        v15 = PixelFormatType;
        v10 = (a1 + 8);
        v9 = *(a1 + 8);
        if (!v9)
        {
          goto LABEL_17;
        }

        v11 = CVPixelBufferGetWidth(v9);
        v12 = *v10;
        if (*v10)
        {
          LODWORD(v12) = CVPixelBufferGetHeight(v12);
        }

        if (Width != v11 || v12 != v17)
        {
          goto LABEL_17;
        }

        v13 = *v10;
        if (*v10)
        {
          LODWORD(v13) = CVPixelBufferGetPixelFormatType(v13);
        }

        if (v13 != PixelFormatType)
        {
LABEL_17:
          kdebug_trace();
          cva::DictionaryHandler::DictionaryHandler(v14);
          cva::ItemHandler::createValue<int>();
        }

        kdebug_trace();
        VTPixelTransferSessionTransferImage(*(a1 + 16), *a1, *(a1 + 8));
        if (*a1)
        {
          CVPixelBufferRelease(*a1);
          *a1 = 0;
        }

        atomic_store(0, (a1 + 24));
        kdebug_trace();
        goto LABEL_21;
      }
    }

    else
    {
      Width = 0;
    }

    PixelFormatType = 0;
    v16 = Width;
    v17 = 0;
    goto LABEL_9;
  }
}

void sub_24021D7A8(uint64_t a1, std::__shared_weak_count **a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (a5 <= (v8 - v9) >> 4)
    {
      v14 = v9 - a2;
      v15 = (v9 - a2) >> 4;
      if (v15 >= a5)
      {
        v18 = &v9[-16 * a5];
        if (v18 >= v9)
        {
          v20 = *(a1 + 8);
        }

        else
        {
          v19 = &v9[-16 * a5];
          v20 = *(a1 + 8);
          do
          {
            *v20++ = *v19;
            *v19 = 0;
            *(v19 + 1) = 0;
            v19 += 16;
          }

          while (v19 < v9);
        }

        *(a1 + 8) = v20;
        if (v9 != &a2[2 * a5])
        {
          v35 = (v9 - 8);
          v36 = (&a2[2 * a5] - v9);
          v37 = v18 - 16;
          do
          {
            v38 = *v37;
            *v37 = 0;
            *(v37 + 1) = 0;
            v39 = *v35;
            *(v35 - 1) = v38;
            if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v39->__on_zero_shared)(v39);
              std::__shared_weak_count::__release_weak(v39);
            }

            v35 -= 2;
            v37 -= 16;
            v36 += 16;
          }

          while (v36);
        }

        v40 = &v6[a5];
        v41 = a2 + 1;
        do
        {
          v42 = *v6;
          *v6 = 0;
          *(v6 + 1) = 0;
          v43 = *v41;
          *(v41 - 1) = v42;
          if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v43->__on_zero_shared)(v43);
            std::__shared_weak_count::__release_weak(v43);
          }

          ++v6;
          v41 += 2;
        }

        while (v6 != v40);
      }

      else
      {
        v16 = (a3 + v14);
        if ((a3 + v14) == a4)
        {
          v17 = *(a1 + 8);
        }

        else
        {
          v31 = a3 + v14;
          v17 = *(a1 + 8);
          do
          {
            *v17 = *v31;
            v17 += 16;
            *v31 = 0;
            *(v31 + 8) = 0;
            v31 += 16;
          }

          while (v31 != a4);
        }

        *(a1 + 8) = v17;
        if (v15 >= 1)
        {
          v32 = &v17[-16 * a5];
          if (v32 >= v9)
          {
            v34 = v17;
          }

          else
          {
            v33 = &v17[-16 * a5];
            v34 = v17;
            do
            {
              *v34 = *v33;
              v34 += 16;
              *v33 = 0;
              *(v33 + 1) = 0;
              v33 += 16;
            }

            while (v33 < v9);
          }

          *(a1 + 8) = v34;
          if (v17 != &a2[2 * a5])
          {
            v44 = (v17 - 8);
            v45 = &a2[2 * a5] - v17;
            v46 = v32 - 16;
            do
            {
              v47 = *v46;
              *v46 = 0;
              *(v46 + 1) = 0;
              v48 = *v44;
              *(v44 - 1) = v47;
              if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v48->__on_zero_shared)(v48);
                std::__shared_weak_count::__release_weak(v48);
              }

              v44 -= 2;
              v46 -= 16;
              v45 += 16;
            }

            while (v45);
          }

          if (v9 != a2)
          {
            v49 = a2 + 1;
            do
            {
              v50 = *v6;
              *v6 = 0;
              *(v6 + 1) = 0;
              v51 = *v49;
              *(v49 - 1) = v50;
              if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v51->__on_zero_shared)(v51);
                std::__shared_weak_count::__release_weak(v51);
              }

              ++v6;
              v49 += 2;
            }

            while (v6 != v16);
          }
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 + (&v9[-*a1] >> 4);
      if (v11 >> 60)
      {
        sub_2401BDE28();
      }

      v12 = v8 - v10;
      if (v12 >> 3 > v11)
      {
        v11 = v12 >> 3;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (!(v13 >> 60))
        {
          operator new();
        }

        sub_2401BDE28();
      }

      v21 = 16 * ((a2 - v10) >> 4);
      v22 = 16 * a5;
      v23 = (v21 + 16 * a5);
      v24 = v21;
      do
      {
        *v24++ = *v6;
        *v6 = 0;
        *(v6++ + 1) = 0;
        v22 -= 16;
      }

      while (v22);
      v25 = *(a1 + 8) - a2;
      memcpy(v23, a2, v25);
      v27 = &v23[v25];
      *(a1 + 8) = a2;
      v28 = *a1;
      v29 = a2 - *a1;
      v30 = v21 - v29;
      memcpy((v21 - v29), *a1, v29);
      *a1 = v30;
      *(a1 + 8) = v27;
      *(a1 + 16) = 0;
      if (v28)
      {

        operator delete(v28);
      }
    }
  }
}

uint64_t sub_24021DF50(uint64_t a1)
{
  v1 = **(a1 + 8);
  kdebug_trace();
  if ((*(**(v1 + 48) + 24))(*(v1 + 48)))
  {
    kdebug_trace();
    kdebug_trace();
    pixelTransferSessionOut = 0;
    v2 = VTPixelTransferSessionCreate(*MEMORY[0x277CBECE8], &pixelTransferSessionOut);
    v3 = pixelTransferSessionOut;
    if (v2 && pixelTransferSessionOut)
    {
      VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
      CFRelease(v3);
      v3 = 0;
    }

    v4 = *(v1 + 32);
    if (v4)
    {
      VTPixelTransferSessionInvalidate(*(v1 + 32));
      CFRelease(v4);
    }

    *(v1 + 32) = v3;
    result = kdebug_trace();
    atomic_fetch_add((v1 + 160), 0xFFFFFFFF);
    atomic_store(1u, (v1 + 156));
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v6 = qword_280C03978;
    if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2401B8000, v6, OS_LOG_TYPE_ERROR, "Error during the initialization of the faceprinter.", v7, 2u);
    }

    atomic_fetch_add((v1 + 160), 0xFFFFFFFF);
    return kdebug_trace();
  }

  return result;
}

uint64_t sub_24021E148(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285227EA8;
  a2[1] = v2;
  return result;
}

void sub_24021E1DC(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; i += 2)
    {
      v9 = *i;
      v10 = **i;
      if (*(v10 + 128) < 2uLL || (*(v10 + 168) & 1) != 0)
      {
        continue;
      }

      v11 = (*(*(v10 + 96) + ((*(v10 + 120) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(v10 + 120) & 0x7FLL));
      v12 = *v11;
      v13 = v11[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = *(v12 + 252);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }
      }

      else
      {
        v8 = *(v12 + 252);
      }

      if (v8)
      {
        continue;
      }

      v14 = *(*v9 + 24);
      v15 = *(*v9 + 32);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = *v14;
      if (*(v16 + 80) == 1)
      {
        v17 = sub_240269ECC(a3, v16 + 48) < 2u;
        if (!v15)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v17 = 1;
        if (!v15)
        {
          goto LABEL_18;
        }
      }

      if (atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_18:
        if (v17)
        {
          goto LABEL_19;
        }

        continue;
      }

      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
      if (v17)
      {
LABEL_19:
        v18 = *(a4 + 8);
        v19 = *(a4 + 16);
        if (v18 >= v19)
        {
          v22 = (v18 - *a4) >> 4;
          v23 = v22 + 1;
          if ((v22 + 1) >> 60)
          {
            sub_2401BDE28();
          }

          v24 = v19 - *a4;
          if (v24 >> 3 > v23)
          {
            v23 = v24 >> 3;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF0)
          {
            v25 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            if (!(v25 >> 60))
            {
              operator new();
            }

            sub_2401BDE28();
          }

          v26 = 16 * v22;
          v27 = *i;
          *(16 * v22) = *i;
          if (*(&v27 + 1))
          {
            atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v21 = (v26 + 16);
          v28 = *a4;
          v29 = *(a4 + 8) - *a4;
          v30 = v26 - v29;
          memcpy((v26 - v29), *a4, v29);
          *a4 = v30;
          *(a4 + 8) = v21;
          *(a4 + 16) = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          v20 = i[1];
          *v18 = *i;
          v18[1] = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
          }

          v21 = v18 + 2;
        }

        *(a4 + 8) = v21;
      }
    }
  }
}

void sub_24021E460(uint64_t a1)
{
  v1 = **(a1 + 8);
  sub_24021D414(v1 + 16);
  atomic_fetch_add((v1 + 160), 0xFFFFFFFF);
}

uint64_t sub_24021E4A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285227EF0;
  a2[1] = v2;
  return result;
}

uint64_t sub_24021E534(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = **(a1 + 8);
  kdebug_trace();
  if (((*(**(v2 + 48) + 32))(*(v2 + 48), *(v2 + 24), v1) & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v3 = qword_280C03978;
    if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_2401B8000, v3, OS_LOG_TYPE_ERROR, "Error getting faceprints.", v12, 2u);
    }
  }

  os_unfair_lock_lock((v2 + 152));
  v5 = *(v2 + 128);
  v4 = *(v2 + 136);
  if (v5 == v4)
  {
    *(v2 + 128) = *v1;
    *v1 = v5;
    v9 = *(v2 + 136);
    *(v2 + 136) = *(v1 + 8);
    *(v1 + 8) = v9;
    v10 = *(v2 + 144);
    *(v2 + 144) = *(v1 + 16);
    *(v1 + 16) = v10;
  }

  else
  {
    sub_24021D7A8(v2 + 128, v4, *v1, *(v1 + 8), (*(v1 + 8) - *v1) >> 4);
    v6 = *v1;
    v7 = *(v1 + 8);
    if (v7 != *v1)
    {
      do
      {
        v8 = *(v7 - 1);
        if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }

        --v7;
      }

      while (v7 != v6);
    }

    *(v1 + 8) = v6;
  }

  os_unfair_lock_unlock((v2 + 152));
  atomic_fetch_add((v2 + 160), 0xFFFFFFFF);
  return kdebug_trace();
}

void sub_24021E754(void *a1)
{
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void sub_24021E7D0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_24021E84C(uint64_t result, uint64_t a2)
{
  *a2 = &unk_285227FA8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_24021E900(void *a1)
{
  *a1 = &unk_285227FA8;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CBCA30);
}

void *sub_24021E9A8(void *result)
{
  *result = &unk_285227FA8;
  v1 = result[3];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_24021EA34(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

void sub_24021EB04(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285227F70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_24021EB7C(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  free(*(a1 + 120));
  v2 = *(a1 + 64);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_24021EC14(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285227F38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_24021EC88(uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 24;
  v3 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v4 = a1 + 16;
  v5 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v6 = a1 + 24;
  v7 = MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 24);
  v9 = *(MEMORY[0x277D82818] + 16);
  *a1 = v9;
  *(a1 + *(v9 - 24)) = v8;
  *(a1 + 8) = 0;
  v10 = (a1 + *(*a1 - 24));
  std::ios_base::init(v10, (a1 + 24));
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  v11 = v7[5];
  v12 = v7[4];
  *(a1 + 16) = v12;
  *(v4 + *(v12 - 24)) = v11;
  v13 = v7[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v7[6];
  *a1 = v2;
  *(a1 + 128) = v3;
  v14 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v5;
  *(a1 + 24) = v14;
  MEMORY[0x245CBC950](a1 + 32);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  sub_24021EF68(v6);
  return a1;
}

uint64_t sub_24021EF68(uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void *sub_24021F0B0(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245CBC760](v20, a1);
  if (v20[0] != 1)
  {
    goto LABEL_30;
  }

  v6 = a1 + *(*a1 - 24);
  v7 = *(v6 + 5);
  v8 = a2 + a3;
  if ((*(v6 + 2) & 0xB0) == 0x20)
  {
    v9 = a2 + a3;
  }

  else
  {
    v9 = a2;
  }

  v10 = *(v6 + 36);
  if (v10 == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v11 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
    v10 = (v11->__vftable[2].~facet_0)(v11, 32);
    std::locale::~locale(&__b);
    *(v6 + 36) = v10;
    if (!v7)
    {
      goto LABEL_29;
    }
  }

  else if (!v7)
  {
    goto LABEL_29;
  }

  v12 = *(v6 + 3);
  v13 = v12 <= a3;
  v14 = v12 - a3;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if (v9 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v9 - a2) != v9 - a2)
  {
    goto LABEL_29;
  }

  if (v15 >= 1)
  {
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2401BDE28();
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    v22 = v15;
    memset(&__b, v10, v15);
    *(&__b.__locale_ + v15) = 0;
    if (v22 >= 0)
    {
      p_b = &__b;
    }

    else
    {
      p_b = __b.__locale_;
    }

    v17 = (*(*v7 + 96))(v7, p_b, v15);
    v18 = v17;
    if ((v22 & 0x80000000) == 0)
    {
      if (v17 != v15)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    operator delete(__b.__locale_);
    if (v18 != v15)
    {
LABEL_29:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
      goto LABEL_30;
    }
  }

LABEL_26:
  if (v8 - v9 >= 1 && (*(*v7 + 96))(v7, v9, v8 - v9) != v8 - v9)
  {
    goto LABEL_29;
  }

  *(v6 + 3) = 0;
LABEL_30:
  MEMORY[0x245CBC770](v20);
  return a1;
}

void sub_24021F368(void **a1, void *a2, uint64_t a3)
{
  v68[0] = 0;
  v68[1] = 0;
  v67 = v68;
  if (*(*a1 + 4))
  {
    operator new();
  }

  *v64 = 0u;
  *__p = 0u;
  v66 = 1.0;
  v4 = 0;
  prime = 0;
  if (prime != 1)
  {
    if ((prime & (v4 - 1)) != 0)
    {
      prime = std::__next_prime(v4);
      v56 = v64[1];
      v57 = prime >= v64[1];
      if (prime > v64[1])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v56 = 0;
      v57 = 1;
      if (prime)
      {
        goto LABEL_5;
      }
    }

    if (v57)
    {
      goto LABEL_6;
    }

    v58 = vcvtps_u32_f32(__p[1] / v66);
    if (v56 < 3 || (v59 = vcnt_s8(v56), v59.i16[0] = vaddlv_u8(v59), v59.u32[0] > 1uLL))
    {
      v61 = prime;
      v58 = std::__next_prime(v58);
      prime = v61;
    }

    else
    {
      v60 = 1 << -__clz(v58 - 1);
      if (v58 >= 2)
      {
        v58 = v60;
      }
    }

    if (prime <= v58)
    {
      prime = v58;
    }

    if (prime >= v56)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  prime = 2;
LABEL_5:
  sub_24021FBF8(v64, prime);
LABEL_6:
  a2[1] = *a2;
  v6 = v67;
  if (v67 == v68)
  {
    goto LABEL_50;
  }

  v7 = a2[1];
  while (2)
  {
    v8 = *(v6 + 7);
    if (!v64[1])
    {
      goto LABEL_30;
    }

    v9 = vcnt_s8(v64[1]);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = *(v6 + 7);
      if (v64[1] <= v8)
      {
        v10 = v8 % LODWORD(v64[1]);
      }
    }

    else
    {
      v10 = (LODWORD(v64[1]) - 1) & v8;
    }

    v11 = *(v64[0] + v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_30:
      operator new();
    }

    if (v9.u32[0] < 2uLL)
    {
      while (1)
      {
        v14 = v12[1];
        if (v14 == v8)
        {
          if (*(v12 + 4) == v8)
          {
            goto LABEL_31;
          }
        }

        else if ((v14 & (v64[1] - 1)) != v10)
        {
          goto LABEL_30;
        }

        v12 = *v12;
        if (!v12)
        {
          goto LABEL_30;
        }
      }
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v8)
      {
        break;
      }

      if (v13 >= v64[1])
      {
        v13 %= v64[1];
      }

      if (v13 != v10)
      {
        goto LABEL_30;
      }

LABEL_19:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_30;
      }
    }

    if (*(v12 + 4) != v8)
    {
      goto LABEL_19;
    }

LABEL_31:
    *(v12 + 5) = (v7 - *a2) >> 2;
    v15 = a2[2];
    if (v7 >= v15)
    {
      v16 = *a2;
      v17 = v7 - *a2;
      v18 = v17 >> 2;
      v19 = (v17 >> 2) + 1;
      if (v19 >> 62)
      {
        sub_2401BDE28();
      }

      v20 = v15 - v16;
      if (v20 >> 1 > v19)
      {
        v19 = v20 >> 1;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (!(v21 >> 62))
        {
          operator new();
        }

        sub_2401BDE28();
      }

      *(4 * v18) = v8;
      v7 = (4 * v18 + 4);
      memcpy(0, v16, v17);
      *a2 = 0;
      a2[1] = v7;
      a2[2] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7++ = v8;
    }

    a2[1] = v7;
    v22 = v6[1];
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
    }

    else
    {
      do
      {
        v23 = v6[2];
        v24 = *v23 == v6;
        v6 = v23;
      }

      while (!v24);
    }

    v6 = v23;
    if (v23 != v68)
    {
      continue;
    }

    break;
  }

LABEL_50:
  v25 = *(*a1 + 4);
  if (v25)
  {
    v26 = v64[1];
    if (v64[1])
    {
      v27 = **a1;
      v28 = &v27[3 * v25];
      v29 = v64[1] - 1;
      v30 = v64[0];
      if ((v64[1] & (v64[1] - 1)) != 0)
      {
        while (1)
        {
          v48 = *v27;
          v49 = v48;
          if (v26 <= v48)
          {
            v49 = v48 % v26;
          }

          v50 = v30[v49];
          if (!v50)
          {
            break;
          }

          do
          {
            while (1)
            {
              v50 = *v50;
              if (!v50)
              {
                goto LABEL_116;
              }

              v51 = v50[1];
              if (v51 == v48)
              {
                break;
              }

              if (v51 >= v26)
              {
                v51 %= v26;
              }

              if (v51 != v49)
              {
                goto LABEL_116;
              }
            }
          }

          while (*(v50 + 4) != v48);
          *v27++ = *(v50 + 5);
          if (v27 == v28)
          {
            goto LABEL_61;
          }
        }
      }

      else
      {
        v31 = v64[1] + 0xFFFFFFFF;
        while (1)
        {
          v32 = *v27;
          v33 = v30[v31 & v32];
          if (!v33)
          {
            break;
          }

          do
          {
            while (1)
            {
              v33 = *v33;
              if (!v33)
              {
                goto LABEL_116;
              }

              v34 = v33[1];
              if (v34 == v32)
              {
                break;
              }

              if ((v34 & v29) != (v31 & v32))
              {
                goto LABEL_116;
              }
            }
          }

          while (*(v33 + 4) != v32);
          *v27++ = *(v33 + 5);
          if (v27 == v28)
          {
            goto LABEL_61;
          }
        }
      }
    }

LABEL_116:
    abort();
  }

LABEL_61:
  v35 = *(a3 + 16);
  if (v35)
  {
    v36 = v64[1];
    if (v64[1])
    {
      v37 = *a3;
      v38 = *a3 + 4 * (3 * v35);
      v39 = v64[1] - 1;
      v40 = v64[0];
      if ((v64[1] & (v64[1] - 1)) != 0)
      {
        while (1)
        {
          v52 = *v37;
          v53 = v52;
          if (v36 <= v52)
          {
            v53 = v52 % v36;
          }

          v54 = v40[v53];
          if (!v54)
          {
            break;
          }

          do
          {
            while (1)
            {
              v54 = *v54;
              if (!v54)
              {
                goto LABEL_116;
              }

              v55 = v54[1];
              if (v55 == v52)
              {
                break;
              }

              if (v55 >= v36)
              {
                v55 %= v36;
              }

              if (v55 != v53)
              {
                goto LABEL_116;
              }
            }
          }

          while (*(v54 + 4) != v52);
          *v37++ = *(v54 + 5);
          if (v37 == v38)
          {
            goto LABEL_72;
          }
        }
      }

      else
      {
        v41 = v64[1] + 0xFFFFFFFF;
        while (1)
        {
          v42 = *v37;
          v43 = v40[v41 & v42];
          if (!v43)
          {
            break;
          }

          do
          {
            while (1)
            {
              v43 = *v43;
              if (!v43)
              {
                goto LABEL_116;
              }

              v44 = v43[1];
              if (v44 == v42)
              {
                break;
              }

              if ((v44 & v39) != (v41 & v42))
              {
                goto LABEL_116;
              }
            }
          }

          while (*(v43 + 4) != v42);
          *v37++ = *(v43 + 5);
          if (v37 == v38)
          {
            goto LABEL_72;
          }
        }
      }
    }

    goto LABEL_116;
  }

LABEL_72:
  v45 = __p[0];
  if (__p[0])
  {
    do
    {
      v46 = *v45;
      operator delete(v45);
      v45 = v46;
    }

    while (v46);
  }

  v47 = v64[0];
  v64[0] = 0;
  if (v47)
  {
    operator delete(v47);
  }

  sub_24021FD84(v68[0]);
}

void sub_24021FBF8(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2401BDE28();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_24021FD84(void *a1)
{
  if (a1)
  {
    sub_24021FD84(*a1);
    sub_24021FD84(a1[1]);

    operator delete(a1);
  }
}

void sub_24021FDD4()
{
  v1 = 16;
  strcpy(__p, "landmarks.binary");
  sub_240203C3C();
}

void sub_240220230(uint64_t a1)
{
  free(*(a1 + 48));
  v2 = *(a1 + 24);

  free(v2);
}

void sub_24022026C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226A18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_2402202E0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 8) < a2)
    {
      free(*a1);
      v4 = (4 * a2 + 31) & 0x7FFFFFFFFFFFFFE0;
      *a1 = 0;
      *(a1 + 8) = v4 >> 2;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v4, 0xE1AC2527uLL);
      *a1 = memptr;
    }
  }

  else
  {
    free(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

void sub_240220374(void *a1, int a2, int a3, char *__s, const char *a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = strlen(__s);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_119;
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
  }

  __dst.__r_.__value_.__s.__data_[v9] = 0;
  v10 = std::string::append(&__dst, "/", 1uLL);
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = strlen(__s);
  v13 = std::string::append(&v58, __s, v12);
  v14 = v13->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  sub_240203E84(&v55);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      operator delete(__dst.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v58.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_11:
    __dst = v55;
    goto LABEL_16;
  }

LABEL_15:
  sub_2401C2FCC(&__dst, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
LABEL_16:
  if (*a5)
  {
    *(&v59.__r_.__value_.__s + 23) = 5;
    strcpy(&v59, "main_");
    v15 = strlen(a5);
    v16 = std::string::append(&v59, a5, v15);
    v17 = v16->__r_.__value_.__r.__words[2];
    *v52 = *&v16->__r_.__value_.__l.__data_;
    v53 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    HIBYTE(v53) = 4;
    strcpy(v52, "main");
  }

  v18 = 0x280C03000uLL;
  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0)
  {
    v49 = __cxa_guard_acquire(&qword_280C03A00);
    v18 = 0x280C03000;
    if (v49)
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
      v18 = 0x280C03000;
    }
  }

  v19 = *(v18 + 2424);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v44 = &v55;
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v44 = v55.__r_.__value_.__r.__words[0];
    }

    v45 = v52;
    if (v53 < 0)
    {
      v45 = v52[0];
    }

    LODWORD(v59.__r_.__value_.__l.__data_) = 136315394;
    *(v59.__r_.__value_.__r.__words + 4) = v44;
    WORD2(v59.__r_.__value_.__r.__words[1]) = 2080;
    *(&v59.__r_.__value_.__r.__words[1] + 6) = v45;
    _os_log_debug_impl(&dword_2401B8000, v19, OS_LOG_TYPE_DEBUG, "Creating E5RT regressor from %s, configuration %s", &v59, 0x16u);
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  v21 = strlen(p_dst);
  if (v21 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_119;
  }

  v22 = v21;
  if (v21 >= 0x17)
  {
    operator new();
  }

  *(&v58.__r_.__value_.__s + 23) = v21;
  if (v21)
  {
    memcpy(&v58, p_dst, v21);
  }

  v58.__r_.__value_.__s.__data_[v22] = 0;
  v23 = std::string::append(&v58, ".bundle", 7uLL);
  v24 = v23->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  cva::Path::Path();
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v58.__r_.__value_.__l.__data_);
LABEL_33:
  if (cva::Path::exists(v57))
  {
    cva::Path::string(v57);
    operator new();
  }

  v25 = strlen(p_dst);
  if (v25 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_119;
  }

  v26 = v25;
  if (v25 >= 0x17)
  {
    operator new();
  }

  *(&v58.__r_.__value_.__s + 23) = v25;
  if (v25)
  {
    memcpy(&v58, p_dst, v25);
  }

  v58.__r_.__value_.__s.__data_[v26] = 0;
  v27 = std::string::append(&v58, ".mil", 4uLL);
  v28 = v27->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = *&v27->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  cva::Path::Path();
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }
  }

  else if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(v58.__r_.__value_.__l.__data_);
LABEL_45:
  if (cva::Path::exists(v56))
  {
    goto LABEL_57;
  }

  cva::Path::~Path(v56);
  v29 = strlen(p_dst);
  if (v29 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_119;
  }

  v30 = v29;
  if (v29 >= 0x17)
  {
    operator new();
  }

  *(&v58.__r_.__value_.__s + 23) = v29;
  if (v29)
  {
    memcpy(&v58, p_dst, v29);
  }

  v58.__r_.__value_.__s.__data_[v30] = 0;
  v31 = std::string::append(&v58, ".espresso.net", 0xDuLL);
  v32 = v31->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  cva::Path::Path();
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }
  }

  else if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_56;
  }

  operator delete(v58.__r_.__value_.__l.__data_);
LABEL_56:
  if (cva::Path::exists(v56))
  {
LABEL_57:
    cva::Path::string(v56);
    operator new();
  }

  cva::Path::~Path(v56);
  cva::Path::~Path(v57);
  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v33 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
  {
    v46 = &v55;
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v46 = v55.__r_.__value_.__r.__words[0];
    }

    v47 = v52;
    if (v53 < 0)
    {
      v47 = v52[0];
    }

    LODWORD(v59.__r_.__value_.__l.__data_) = 136315394;
    *(v59.__r_.__value_.__r.__words + 4) = v46;
    WORD2(v59.__r_.__value_.__r.__words[1]) = 2080;
    *(&v59.__r_.__value_.__r.__words[1] + 6) = v47;
    _os_log_error_impl(&dword_2401B8000, v33, OS_LOG_TYPE_ERROR, "Failed to create E5RT regressor from %s, configuration %s", &v59, 0x16u);
  }

  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v55.__r_.__value_.__l.__size_;
  }

  if (size + 11 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_119:
    sub_2401BDE28();
  }

  if (size + 11 >= 0x17)
  {
    operator new();
  }

  memset(&v59, 0, sizeof(v59));
  *(&v59.__r_.__value_.__s + 23) = size + 11;
  if (size)
  {
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v55;
    }

    else
    {
      v35 = v55.__r_.__value_.__r.__words[0];
    }

    memmove(&v59, v35, size);
  }

  strcpy(&v59 + size, "_legacy.mil");
  cva::Path::Path();
  v36 = cva::Path::exists(&v58);
  cva::Path::~Path(&v58);
  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v37 = qword_280C03978;
  if (v36)
  {
    if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_DEBUG))
    {
      v48 = &v59;
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v48 = v59.__r_.__value_.__r.__words[0];
      }

      LODWORD(v58.__r_.__value_.__l.__data_) = 136315394;
      *(v58.__r_.__value_.__r.__words + 4) = v48;
      WORD2(v58.__r_.__value_.__r.__words[1]) = 2080;
      *(&v58.__r_.__value_.__r.__words[1] + 6) = a5;
      _os_log_debug_impl(&dword_2401B8000, v37, OS_LOG_TYPE_DEBUG, "Creating fallback espresso regressor from %s, configuration %s", &v58, 0x16u);
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &v59;
    }

    else
    {
      v38 = v59.__r_.__value_.__r.__words[0];
    }

    v39 = strlen(v38);
    if (v39 <= 0x7FFFFFFFFFFFFFF7)
    {
      v40 = v39;
      if (v39 >= 0x17)
      {
        operator new();
      }

      *(&v58.__r_.__value_.__s + 23) = v39;
      if (v39)
      {
        memmove(&v58, v38, v39);
      }

      v58.__r_.__value_.__s.__data_[v40] = 0;
      v42 = strlen(a5);
      if (v42 <= 0x7FFFFFFFFFFFFFF7)
      {
        v43 = v42;
        if (v42 < 0x17)
        {
          v51 = v42;
          if (v42)
          {
            memcpy(&__p, a5, v42);
          }

          *(&__p + v43) = 0;
          sub_24024CB90();
        }

        operator new();
      }
    }

    goto LABEL_119;
  }

  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
  {
    v41 = &v59;
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v41 = v59.__r_.__value_.__r.__words[0];
    }

    LODWORD(v58.__r_.__value_.__l.__data_) = 136315138;
    *(v58.__r_.__value_.__r.__words + 4) = v41;
    _os_log_error_impl(&dword_2401B8000, v37, OS_LOG_TYPE_ERROR, "Failed to create espresso regressor from %s. Missing resources.", &v58, 0xCu);
  }

  *a1 = 0;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_101:
      if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_105:
      operator delete(v55.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_101;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_105;
  }
}

void sub_240221420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, int a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_2402517D0(&a31);
  sub_2402517D0(&a32);
  (*(*v38 + 8))(v38);
  cva::Path::~Path(&a25);
  cva::Path::~Path(&a27);
  _Unwind_Resume(a1);
}

void sub_240221598(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int a5, unsigned int a6, uint64_t a7, unsigned int a8, double a9, float a10, __n128 a11, double a12, double a13, double a14, float64x2_t a15, uint64_t a16)
{
  if (a1)
  {
    if (a2)
    {
      v16 = a7;
      if (a7)
      {
        if (a16)
        {
          v17 = 0;
          LODWORD(v18) = 0;
          v19 = (a3 - 1);
          v20 = (a9 + a9) * a9;
          v84 = (a10 + a10) * a10;
          v74 = a6;
          v75 = a8;
          v80 = vdupq_lane_s64(*&v84, 0);
          v81 = vdupq_lane_s64(*&v20, 0);
          v21 = a1 + 16;
          v68 = a1 + 32;
          v69 = a2 + 16;
          v22 = 4 * a4;
          v85 = v20;
          do
          {
            a15.f64[0] = *(v16 + 8 * v17);
            if (v18 < v19 && *(a1 + 8 * v18 + 8) <= a15.f64[0])
            {
              v18 = v18;
              while (v19 - 1 != v18)
              {
                v25 = *(v21 + 8 * v18++);
                if (v25 > a15.f64[0])
                {
                  goto LABEL_17;
                }
              }

              LODWORD(v18) = v19;
            }

LABEL_17:
            if (v19 >= v18 + 1)
            {
              v26 = v18 + 1;
            }

            else
            {
              v26 = v19;
            }

            v27 = 0.0;
            v28 = fmax(a15.f64[0] - *(a1 + 8 * v18), 0.0);
            v29 = fmax(*(a1 + 8 * v26) - a15.f64[0], 0.0);
            v30 = v28 + v29;
            v31 = 1.0;
            v32 = 0.0;
            if (v28 + v29 >= 0.000000001)
            {
              v32 = v28 / v30;
              v31 = v29 / v30;
            }

            a11.n128_f64[0] = v32 * *(a2 + 4 * (v26 * a4)) + v31 * *(a2 + 4 * (v18 * a4));
            v33 = (v18 - a5) & ~((v18 - a5) >> 31);
            v34 = v18 + a5;
            if (v19 < v18 + a5)
            {
              v34 = v19;
            }

            v35 = 0.0;
            if (v33 > v34)
            {
              goto LABEL_7;
            }

            v36 = (v34 + 1);
            v86 = a15;
            v87 = a11;
            if ((v36 - v33) >= 8 && a4 == 1)
            {
              v82 = vdupq_lane_s64(a11.n128_i64[0], 0);
              v83 = vdupq_lane_s64(*&a15.f64[0], 0);
              v73 = v36 - v33;
              v37 = (v36 - v33) & 0xFFFFFFFFFFFFFFF8;
              v38 = (v69 + 4 * v33);
              v39 = (v68 + 8 * v33);
              v71 = (v34 + 1);
              v72 = v37;
              do
              {
                v40 = vsubq_f64(v39[-2], v83);
                v41 = vsubq_f64(v39[-1], v83);
                v42 = vsubq_f64(*v39, v83);
                v43 = vsubq_f64(v39[1], v83);
                v44 = v38[-1];
                v106 = vsubq_f64(vcvtq_f64_f32(*v44.f32), v82);
                v105 = vsubq_f64(vcvt_hight_f64_f32(v44), v82);
                v107 = vsubq_f64(vcvt_hight_f64_f32(*v38), v82);
                v108 = vsubq_f64(vcvtq_f64_f32(*v38->f32), v82);
                v97 = vdivq_f64(vmulq_f64(v41, vnegq_f64(v41)), v81);
                __x = vdivq_f64(vmulq_f64(v40, vnegq_f64(v40)), v81);
                v100 = vdivq_f64(vmulq_f64(v42, vnegq_f64(v42)), v81);
                v103 = vdivq_f64(vmulq_f64(v43, vnegq_f64(v43)), v81);
                v95 = exp(__x.f64[1]);
                v45.f64[0] = exp(__x.f64[0]);
                v45.f64[1] = v95;
                v96 = v45;
                __x.f64[0] = exp(v97.f64[1]);
                v46.f64[0] = exp(v97.f64[0]);
                v46.f64[1] = __x.f64[0];
                __xa = v46;
                v97.f64[0] = exp(v100.f64[1]);
                v47.f64[0] = exp(v100.f64[0]);
                v47.f64[1] = v97.f64[0];
                v92 = v47;
                v100.f64[0] = exp(v103.f64[1]);
                v48.f64[0] = exp(v103.f64[0]);
                v48.f64[1] = v100.f64[0];
                v91 = v48;
                v98 = vdivq_f64(vmulq_f64(v105, vnegq_f64(v105)), v80);
                v88 = vdivq_f64(vmulq_f64(v106, vnegq_f64(v106)), v80);
                v101 = vdivq_f64(vmulq_f64(v108, vnegq_f64(v108)), v80);
                v104 = vdivq_f64(vmulq_f64(v107, vnegq_f64(v107)), v80);
                v89 = exp(v88.f64[1]);
                v49.f64[0] = exp(v88.f64[0]);
                v49.f64[1] = v89;
                v90 = v49;
                v88.f64[0] = exp(v98.f64[1]);
                v50.f64[0] = exp(v98.f64[0]);
                v50.f64[1] = v88.f64[0];
                v99 = v50;
                v88.f64[0] = exp(v101.f64[1]);
                v51.f64[0] = exp(v101.f64[0]);
                v51.f64[1] = v88.f64[0];
                v102 = v51;
                v88.f64[0] = exp(v104.f64[1]);
                v52.f64[0] = exp(v104.f64[0]);
                v52.f64[1] = v88.f64[0];
                v53 = vmulq_f64(__xa, v99);
                v54 = vmulq_f64(v96, v90);
                v55 = vmulq_f64(v91, v52);
                a15 = vmulq_f64(v92, v102);
                v56 = vmulq_f64(v53, v105);
                v57 = vmulq_f64(v54, v106);
                v58 = vmulq_f64(v55, v107);
                v59 = vmulq_f64(a15, v108);
                v35 = v35 + v57.f64[0] + v57.f64[1] + v56.f64[0] + v56.f64[1] + v59.f64[0] + v59.f64[1] + v58.f64[0] + v58.f64[1];
                v27 = v27 + v54.f64[0] + v54.f64[1] + v53.f64[0] + v53.f64[1] + a15.f64[0] + a15.f64[1] + v55.f64[0] + v55.f64[1];
                v38 += 2;
                v39 += 4;
                v37 -= 8;
              }

              while (v37);
              if (v73 == v72)
              {
                v16 = a7;
                v20 = v85;
                a11 = v87;
                goto LABEL_7;
              }

              v33 += v72;
              v16 = a7;
              v36 = v71;
              v20 = v85;
              a15.f64[0] = v86.f64[0];
              a11.n128_u64[0] = v87.n128_u64[0];
            }

            v60 = v36 - v33;
            v61 = (a2 + v22 * v33);
            v62 = (a1 + 8 * v33);
            do
            {
              v63 = *v62++;
              v64 = *v61 - a11.n128_f64[0];
              v65 = exp(-((v63 - a15.f64[0]) * (v63 - a15.f64[0])) / v20);
              v66 = exp(-(v64 * v64) / v84);
              a15 = v86;
              a11 = v87;
              v20 = v85;
              v67 = v65 * v66;
              v35 = v35 + v67 * v64;
              v27 = v27 + v67;
              v61 = (v61 + v22);
              --v60;
            }

            while (v60);
LABEL_7:
            v23 = v35 / v27;
            if (v27 <= 1.0e-10)
            {
              v23 = 0.0;
            }

            v24 = a11.n128_f64[0] + v23;
            *(a16 + 4 * v17 * v75) = v24;
            ++v17;
          }

          while (v17 != v74);
        }
      }
    }
  }
}

void sub_240221B0C(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, double a8, float a9, float a10)
{
  if (!a1)
  {
    return;
  }

  if (!a2)
  {
    return;
  }

  if (!a6)
  {
    return;
  }

  v10 = a7;
  if (!a7)
  {
    return;
  }

  v11 = 0;
  LODWORD(v12) = 0;
  v13 = (a3 - 1);
  v14 = a8;
  v158 = (a9 + a9) * a9;
  v159 = (v14 + v14) * v14;
  v146 = a5;
  v15 = v13 - 1;
  v142 = a1 + 16;
  v143 = a2 + 32;
  v157 = (a10 + a10) * a10;
  v16 = 0.5;
  v147 = a3 - 1;
  v145 = v13 - 1;
  do
  {
    v17 = *(a6 + 8 * v11);
    if (v12 < v13 && *(a1 + 8 * v12 + 8) <= v17)
    {
      v12 = v12;
      while (v15 != v12)
      {
        v18 = *(v142 + 8 * v12++);
        if (v18 > v17)
        {
          goto LABEL_13;
        }
      }

      LODWORD(v12) = v13;
    }

LABEL_13:
    if (v13 >= v12 + 1)
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = v13;
    }

    v20 = v17 - *(a1 + 8 * v12);
    v21 = 0.0;
    v22 = fmaxf(v20, 0.0);
    v160 = *(a6 + 8 * v11);
    v23 = *(a1 + 8 * v19) - v17;
    v24 = fmaxf(v23, 0.0);
    v25 = v22 + v24;
    v26 = 1.0;
    if ((v22 + v24) >= 0.000000001)
    {
      v21 = v22 / v25;
      v26 = v24 / v25;
    }

    v174 = v26;
    v176 = v21;
    v27 = a2 + (v12 << 6);
    *&v28 = *v27;
    *&v29 = *(v27 + 20);
    v30 = *(v27 + 40);
    v172 = *(v27 + 56);
    v31 = a2 + (v19 << 6);
    *&v32 = *v31;
    *&v33 = *(v31 + 20);
    v34 = *(v31 + 32);
    v35 = *(v31 + 40);
    v36 = *(v27 + 48);
    v37 = *(v31 + 48);
    v38 = *(v31 + 56);
    DWORD2(v28) = *(v27 + 8);
    HIDWORD(v28) = *(v27 + 16);
    DWORD2(v32) = *(v31 + 8);
    HIDWORD(v32) = *(v31 + 16);
    *(&v29 + 1) = *(v27 + 32);
    v180[0] = v28;
    v180[1] = v29;
    v181 = v30;
    *(&v33 + 1) = v34;
    v178[0] = v32;
    v178[1] = v33;
    v179 = v35;
    v184 = v180;
    v185[0] = v178;
    v185[1] = &v184;
    v186 = 0u;
    v187 = 0u;
    v188 = 0.0;
    sub_240222548(&v186, v185);
    v190 = 0.0;
    v189 = 0;
    sub_240222718(&v186, &v189);
    v39 = v176 * *&v189;
    v40 = v176 * *(&v189 + 1);
    v41 = v176 * v190;
    v42 = ((v39 * v39) + (v40 * v40)) + (v41 * v41);
    if (v42 >= 0.0061)
    {
      v46 = sqrtf(v42);
      v47 = __sincosf_stret(v46);
      cosval = v47.__cosval;
      v44 = v47.__sinval / v46;
      v16 = 0.5;
      v43 = (1.0 / v42) * (1.0 - v47.__cosval);
    }

    else
    {
      v43 = v16 - (v42 * ((v42 / -720.0) + 0.041667));
      v44 = 1.0 - (v42 * (0.16667 - (v42 * ((v42 / -5040.0) + 0.0083333))));
      cosval = 1.0 - (v42 * v43);
    }

    v48 = v40 * v43;
    v49 = cosval + ((v39 * v43) * v39);
    v50 = cosval + ((v40 * v43) * v40);
    v193 = cosval + ((v41 * v43) * v41);
    v51 = v40 * (v39 * v43);
    v52 = v41 * (v39 * v43);
    v53 = v41 * v48;
    v54 = v39 * v44;
    v55 = v41 * v44;
    *&v191 = v49;
    *(&v191 + 1) = v51 + (v41 * v44);
    v56 = v40 * v44;
    *(&v192 + 2) = v56 + v52;
    *(&v192 + 3) = v53 - v54;
    *(&v191 + 2) = v52 - v56;
    *(&v191 + 3) = v51 - v55;
    *&v192 = v50;
    *(&v192 + 1) = v53 + v54;
    v194[0] = &v191;
    v194[1] = v180;
    memset(v182, 0, sizeof(v182));
    v183 = 0;
    sub_2401EDF8C(v182, v194);
    v164 = vadd_f32(vmul_n_f32(v36, v174), vmul_n_f32(v37, v176));
    v163 = (v174 * v172) + (v176 * v38);
    v58 = (v12 - a4) & ~((v12 - a4) >> 31);
    v59 = v12 + a4;
    if (v13 < v12 + a4)
    {
      v59 = v13;
    }

    if (v58 > v59)
    {
      v60 = 0;
      v61 = 0.0;
      v62 = 0.0;
      v63 = 0.0;
      v64 = 0.0;
      goto LABEL_68;
    }

    v65 = 0;
    v66 = (v59 + 1) - v58;
    v67 = (v143 + (v58 << 6));
    v68 = (a1 + 8 * v58);
    v69 = 0.0;
    *&v57 = 0;
    v70 = 0.0;
    v71 = 0.0;
    v72 = 0.0;
    v73 = 0.0;
    do
    {
      v168 = v72;
      v169 = v71;
      v170 = v70;
      v171 = v69;
      v173 = v73;
      v175 = v57;
      v177 = v65;
      v84 = *v68 - v160;
      *&v85 = v67[-4];
      *&v86 = *(v67 - 12);
      v87 = v67[1].f32[0];
      v167 = v67[2];
      DWORD2(v85) = v67[-3].i32[0];
      HIDWORD(v85) = v67[-2].i32[0];
      v165 = v84;
      v166 = v67[3].f32[0];
      *(&v86 + 1) = *v67;
      v186 = v85;
      v187 = v86;
      v188 = v87;
      *&v178[0] = v182;
      *&v180[0] = &v186;
      *(&v180[0] + 1) = v178;
      v191 = 0u;
      v192 = 0u;
      v193 = 0.0;
      sub_240222548(&v191, v180);
      v88 = v192;
      v89 = (*(&v192 + 1) - *(&v192 + 3)) * 0.5;
      v90 = (*(&v192 + 2) - *(&v191 + 2)) * 0.5;
      v91 = *&v191;
      v92 = (*(&v191 + 1) - *(&v191 + 3)) * 0.5;
      v93 = v193;
      v94 = -1.0;
      v95 = (((*&v191 + *&v192) + v193) + -1.0) * 0.5;
      v96 = ((v90 * v90) + (v89 * v89)) + (v92 * v92);
      if (v95 < -1.0 && (v95 + 1.0) > -0.00001)
      {
        goto LABEL_49;
      }

      v99 = (v95 + -1.0) < 0.00001 && v95 > 1.0;
      if (v95 > 0.99 || v99)
      {
        v102 = (v96 * ((v96 * (((v96 * 5.0) / 112.0) + 0.075)) + 0.16667)) + 1.0;
        v76 = v89 * v102;
        v77 = v90 * v102;
        goto LABEL_47;
      }

      if (v95 > -0.99)
      {
        v100 = (*(&v192 + 1) - *(&v192 + 3)) * 0.5;
        v101 = (*(&v192 + 2) - *(&v191 + 2)) * 0.5;
        v102 = acosf(v95) / sqrtf(v96);
        v76 = v100 * v102;
        v77 = v101 * v102;
LABEL_47:
        v75 = v92 * v102;
        goto LABEL_30;
      }

      v94 = (((*&v191 + *&v192) + v193) + -1.0) * 0.5;
LABEL_49:
      v161 = *(&v191 + 2);
      v162 = *(&v192 + 3);
      v154 = *(&v191 + 1);
      v155 = *(&v191 + 3);
      v152 = (*(&v192 + 2) - *(&v191 + 2)) * 0.5;
      v153 = (*(&v192 + 1) - *(&v192 + 3)) * 0.5;
      v156 = (*(&v191 + 1) - *(&v191 + 3)) * 0.5;
      v103 = *(&v192 + 2);
      v104 = asinf(sqrtf(v96));
      v105 = ((3.1416 - v104) * (3.1416 - v104)) / (1.0 - v94);
      v106 = (v91 - v94) * v105;
      v107 = (*&v88 - v94) * v105;
      v108 = (v93 - v94) * v105;
      v109 = v105 * 0.5;
      if (v106 <= v107)
      {
        v112 = (*(&v88 + 1) + v162) * v109;
        if (v107 <= v108)
        {
          v74 = sqrtf(v108);
          if (v156 >= 0.0)
          {
            v75 = v74;
          }

          else
          {
            v75 = -v74;
          }

          v76 = ((v103 + v161) * v109) * (1.0 / v75);
          v77 = v112 * (1.0 / v75);
        }

        else
        {
          v113 = sqrtf(v107);
          if (v152 >= 0.0)
          {
            v77 = v113;
          }

          else
          {
            v77 = -v113;
          }

          v76 = ((v154 + v155) * v109) * (1.0 / v77);
          v75 = v112 * (1.0 / v77);
        }
      }

      else
      {
        v110 = (v103 + v161) * v109;
        if (v106 <= v108)
        {
          v114 = sqrtf(v108);
          if (v156 >= 0.0)
          {
            v75 = v114;
          }

          else
          {
            v75 = -v114;
          }

          v76 = v110 * (1.0 / v75);
          v77 = ((*(&v88 + 1) + v162) * v109) * (1.0 / v75);
        }

        else
        {
          v111 = sqrtf(v106);
          if (v153 >= 0.0)
          {
            v76 = v111;
          }

          else
          {
            v76 = -v111;
          }

          v77 = ((v154 + v155) * v109) * (1.0 / v76);
          v75 = v110 * (1.0 / v76);
        }
      }

LABEL_30:
      v78 = sqrtf(((v76 * v76) + (v77 * v77)) + (v75 * v75));
      v79 = expf(-(v165 * v165) / v159);
      v80 = v79 * expf(-(v78 * v78) / v158);
      v81 = vsub_f32(v167, v164);
      v82 = sqrtf(vaddv_f32(vmul_f32(v81, v81)) + ((v166 - v163) * (v166 - v163)));
      v83 = v79 * expf(-(v82 * v82) / v157);
      v70 = v170 + (v76 * v80);
      v71 = v169 + (v77 * v80);
      v72 = v168 + (v75 * v80);
      v69 = v171 + v80;
      v65 = vadd_f32(v177, vmul_n_f32(v81, v83));
      v73 = v173 + ((v166 - v163) * v83);
      v57 = v175;
      *&v57 = *&v175 + v83;
      v67 += 8;
      ++v68;
      --v66;
    }

    while (v66);
    v64 = 0.0;
    v63 = 0.0;
    v62 = 0.0;
    v61 = 0.0;
    if (v69 > 1.0e-10)
    {
      v61 = v70 / v69;
      v62 = v71 / v69;
      v63 = v72 / v69;
    }

    v60 = 0;
    v10 = a7;
    v16 = 0.5;
    if (*&v57 > 1.0e-10)
    {
      v60 = vdiv_f32(v65, vdup_lane_s32(*&v57, 0));
      v64 = v73 / *&v57;
    }

LABEL_68:
    v115 = (v10 + (v11 << 6));
    v116 = *MEMORY[0x277D860B8];
    v117 = *(MEMORY[0x277D860B8] + 16);
    v118 = *(MEMORY[0x277D860B8] + 48);
    v115[2] = *(MEMORY[0x277D860B8] + 32);
    v115[3] = v118;
    *v115 = v116;
    v115[1] = v117;
    v119 = (v63 * v63) + ((v62 * v62) + (v61 * v61));
    if (v119 >= 0.0061)
    {
      v123 = sqrtf(v119);
      v124 = __sincosf_stret(v123);
      v122 = v124.__cosval;
      v121 = v124.__sinval / v123;
      v16 = 0.5;
      v120 = (1.0 / v119) * (1.0 - v124.__cosval);
    }

    else
    {
      v120 = v16 - (v119 * ((v119 / -720.0) + 0.041667));
      v121 = 1.0 - (v119 * (0.16667 - (v119 * ((v119 / -5040.0) + 0.0083333))));
      v122 = 1.0 - (v119 * v120);
    }

    v125 = v62 * v120;
    v126 = v122 + ((v61 * v120) * v61);
    v127 = v122 + ((v62 * v120) * v62);
    v188 = v122 + ((v63 * v120) * v63);
    v128 = v62 * (v61 * v120);
    v129 = v63 * (v61 * v120);
    v130 = v63 * v125;
    v131 = v61 * v121;
    v132 = v63 * v121;
    *&v186 = v126;
    *(&v186 + 1) = v128 + (v63 * v121);
    v133 = v62 * v121;
    *(&v187 + 2) = v133 + v129;
    *(&v187 + 3) = v130 - v131;
    *(&v186 + 3) = v128 - v132;
    *(&v186 + 2) = v129 - v133;
    *&v187 = v127;
    *(&v187 + 1) = v130 + v131;
    *&v180[0] = &v186;
    *(&v180[0] + 1) = v182;
    v191 = 0u;
    v192 = 0u;
    v193 = 0.0;
    v134 = &v191;
    sub_2401EDF8C(&v191, v180);
    v135 = 0;
    v136 = 0;
    do
    {
      v137 = *v134++;
      *(v115 + v136) = v137;
      v136 += 4 * (v135 > 1) + 4;
      if (v135 <= 1)
      {
        ++v135;
      }

      else
      {
        v135 = 0;
      }
    }

    while (v136 != 48);
    v138 = 0;
    *&v191 = vadd_f32(v164, v60);
    *(&v191 + 2) = v163 + v64;
    v139 = &v191;
    v140 = 48;
    do
    {
      v141 = *v139++;
      *(v115 + v140) = v141;
      v140 += 4 * (v138 > 1) + 4;
      if (v138 <= 1)
      {
        ++v138;
      }

      else
      {
        v138 = 0;
      }
    }

    while (v140 != 64);
    ++v11;
    LODWORD(v13) = v147;
    v15 = v145;
  }

  while (v11 != v146);
}