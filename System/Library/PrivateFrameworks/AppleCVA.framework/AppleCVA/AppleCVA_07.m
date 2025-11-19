uint64_t sub_24026B6C4(uint64_t a1)
{
  *a1 = &unk_285227420;
  if (*(a1 + 639) < 0)
  {
    operator delete(*(a1 + 616));
  }

  *(a1 + 32) = &unk_285226DD8;
  *(a1 + 464) = &unk_285226E28;
  *(a1 + 48) = &unk_285226E00;
  MEMORY[0x245CBC6E0](a1 + 56);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBC9C0](a1 + 464);
  return a1;
}

uint64_t sub_24026B79C(uint64_t a1, __int128 *a2, _DWORD *a3)
{
  *(a1 + 8) = *a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 32;
  *a1 = &unk_285227420;
  *(a1 + 512) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_285226E00;
  *(a1 + 32) = &unk_285227A98;
  *(a1 + 464) = &unk_285227AC0;
  std::ios_base::init((a1 + 464), (a1 + 56));
  *(a1 + 600) = 0;
  *(a1 + 608) = -1;
  *(a1 + 32) = &unk_285226DD8;
  *(a1 + 464) = &unk_285226E28;
  *(a1 + 48) = &unk_285226E00;
  MEMORY[0x245CBC6D0](a1 + 56);
  v6 = (a1 + 616);
  if (*(a2 + 23) < 0)
  {
    sub_2401C2FCC(v6, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 632) = *(a2 + 2);
    *v6 = v7;
  }

  *(a1 + 640) = 0;
  if (*a3 == 3)
  {
    cva::Path::Path();
    v8 = cva::Path::exists(v14);
    cva::Path::~Path(v14);
    if ((v8 & 1) == 0)
    {
      v14[0] = 2;
      (*(*a1 + 136))(a1, v14);
    }
  }

  if (((*(*a1 + 136))(a1, a3) & 1) == 0)
  {
    sub_2402546E0(&v12);
    if (*(a2 + 23) >= 0)
    {
      LOBYTE(v9) = a2;
    }

    else
    {
      v9 = *a2;
    }

    sub_2402552EC(v14, &v12, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/utils/src/fsFileDevice.cpp", 0x30u, "Could not open file device %s", v9);
    sub_240256698(v14);
    v10 = v13;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  return a1;
}

uint64_t sub_24026BA44(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  if ((*(*a1 + 104))(a1) < a2)
  {
    return 0;
  }

  a1[2] = a2;
  return 1;
}

void sub_24026BADC(_DWORD *a1)
{
  if (a1[2] == 2)
  {
    operator new();
  }

  (*(*a1 + 112))();
  sub_24026A5C8();
}

uint64_t sub_24026BC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = -1;
  if ((a3 & 0x8000000000000000) == 0 && *(a1 + 8) != 2)
  {
    v3 = 0;
    if (a2)
    {
      if (a3)
      {
        v6 = *(a1 + 16);
        (*(*a1 + 128))(a1, v6);
        v8 = a1;
        if (*(a1 + 8) == 2)
        {
          v9 = -1;
        }

        else
        {
          v10 = (*(*a1 + 144))(a1, a2, a3);
          v11 = v10;
          if (v10 < 1)
          {
            v9 = v10;
            v8 = a1;
          }

          else
          {
            v8 = a1;
            v9 = v11;
            *(a1 + 16) += v11;
          }
        }

        (*(*v8 + 128))(v8, v6);
        return v9;
      }
    }
  }

  return v3;
}

uint64_t sub_24026BD64(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return -1;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = v3 + a2;
  v5 = (*(*a1 + 104))(a1);
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v4 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ((*(*a1 + 128))(a1, v7))
  {
    return a1[2] - v3;
  }

  else
  {
    return -1;
  }
}

void sub_24026BE20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8) == 2)
  {
    *(a2 + 23) = 0;
    *a2 = 0;
  }

  else
  {
    __c = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    do
    {
      if ((*(*a1 + 32))(a1))
      {
        break;
      }

      if (*(a1 + 8) == 2)
      {
        break;
      }

      v4 = (*(*a1 + 144))(a1, &__c, 1);
      if (v4 < 1)
      {
        break;
      }

      *(a1 + 16) += v4;
      if (v4 != 1)
      {
        break;
      }

      std::string::push_back(a2, __c);
    }

    while (__c != 10);
  }
}

void sub_24026BF1C(uint64_t a1, _DWORD *a2)
{
  if (a2[2] == 2)
  {
    operator new();
  }

  (*(*a2 + 112))(a2);
  sub_24026A5C8();
}

uint64_t sub_24026C0A0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return *(v1 + *(*v1 - 24) + 32);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL sub_24026C0D0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 1;
  }

  std::ios_base::clear((v1 + *(*v1 - 24)), 0);
  std::istream::seekg();
  v3 = *(a1 + 16);
  std::istream::tellg();
  return v3 >= v5;
}

void sub_24026C17C(uint64_t a1)
{
  *a1 = &unk_285227400;
  *(a1 + 24) = &unk_2852272A0;
  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 48))
    {
      v1 = a1;
      v2 = sub_24026A708(*(a1 + 48));
      MEMORY[0x245CBCA30](v2, 0x20C4093837F09);
      a1 = v1;
    }

    *(a1 + 48) = 0;
  }

  *a1 = &unk_2852274D0;
  if (*(a1 + 16) == 1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1;
      (*(*v3 + 8))(*(a1 + 8));
      a1 = v4;
    }

    *(a1 + 8) = 0;
  }

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_24026C294(uint64_t result)
{
  *result = &unk_285227400;
  *(result + 24) = &unk_2852272A0;
  if (*(result + 56) == 1)
  {
    if (*(result + 48))
    {
      v1 = result;
      v2 = sub_24026A708(*(result + 48));
      MEMORY[0x245CBCA30](v2, 0x20C4093837F09);
      result = v1;
    }

    *(result + 48) = 0;
  }

  *result = &unk_2852274D0;
  if (*(result + 16) == 1)
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 8));
      result = v4;
    }

    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_24026C38C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void sub_24026C3BC(void *a1)
{
  *a1 = &unk_285227570;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x245CBCA30);
}

void *sub_24026C47C(void *a1)
{
  *a1 = &unk_285227570;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

void sub_24026C51C(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 8));
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 24))(a1, &v6);
  v5 = v7;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  *(a1 + 120) = 1;
  std::mutex::unlock((a1 + 8));
  std::condition_variable::notify_one((a1 + 72));
}

uint64_t sub_24026C5FC(uint64_t a1)
{
  result = *(a1 + 152);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void sub_24026C62C(uint64_t a1)
{
  *a1 = &unk_285227160;
  v2 = a1 + 128;
  v3 = *(a1 + 152);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_2852274F0;
  std::condition_variable::~condition_variable((a1 + 72));
  std::mutex::~mutex((a1 + 8));

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_24026C71C(uint64_t a1)
{
  *a1 = &unk_285227160;
  v2 = a1 + 128;
  v3 = *(a1 + 152);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_2852274F0;
  std::condition_variable::~condition_variable((a1 + 72));
  std::mutex::~mutex((a1 + 8));
  return a1;
}

uint64_t sub_24026C7F0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*v1)
    {
      os_release(*v1);
    }

    JUMPOUT(0x245CBCA30);
  }

  return result;
}

void sub_24026C850(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_24026C88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v4 = *v3;
  if (*(*v3 + 8) == 1)
  {
    return -1;
  }

  v6 = v3[4] + v3[3] - v4[2];
  if (v6 < a3)
  {
    a3 = v6;
  }

  result = (*(*v4 + 152))(v4, a2, a3);
  if (result >= 1)
  {
    v4[2] += result;
  }

  return result;
}

uint64_t sub_24026C918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v4 = *v3;
  if (*(*v3 + 8) == 2)
  {
    return -1;
  }

  v6 = v3[4] + v3[3] - v4[2];
  if (v6 < a3)
  {
    a3 = v6;
  }

  result = (*(*v4 + 144))(v4, a2, a3);
  if (result >= 1)
  {
    v4[2] += result;
  }

  return result;
}

uint64_t sub_24026C9A4(uint64_t a1, uint64_t a2)
{
  if (a2 < 0 || (*(*a1 + 104))(a1) < a2)
  {
    return 0;
  }

  *(a1 + 16) = a2;
  v5 = *(***(a1 + 24) + 128);

  return v5();
}

void sub_24026CACC(void *a1)
{
  *a1 = &unk_285227350;
  v2 = a1[3];
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = v2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      v2 = v4;
    }

    MEMORY[0x245CBCA30](v2, 0x1060C40484961F0);
    v1 = vars8;
  }

  JUMPOUT(0x245CBCA30);
}

void *sub_24026CBA8(void *a1)
{
  v1 = a1;
  *a1 = &unk_285227350;
  v2 = a1[3];
  if (v2)
  {
    v3 = v1;
    v4 = *(v2 + 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    MEMORY[0x245CBCA30](v2, 0x1060C40484961F0);
    return v3;
  }

  return v1;
}

void sub_24026CC68(uint64_t a1)
{
  sub_24026CCA0(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_24026CCA0(uint64_t a1)
{
  *a1 = &unk_285227190;
  sub_24026CDCC(a1, 0);
  if (*(a1 + 128) == 1)
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = v2;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        v2 = v4;
      }

      MEMORY[0x245CBCA30](v2, 0x1020C407E10CFCBLL);
    }
  }

  v5 = *(a1 + 112);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  std::mutex::~mutex((a1 + 40));
  std::thread::~thread((a1 + 32));
  v6 = *(a1 + 24);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_24026CDCC(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  atomic_store(v3, (a1 + 8));
  std::mutex::lock((a1 + 40));
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 16);
      if (v7)
      {
        std::mutex::lock((v7 + 16));
        std::condition_variable::notify_all((v7 + 80));
        std::mutex::unlock((v7 + 16));
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  std::mutex::unlock((a1 + 40));
  v9 = *(a1 + 32);
  v8 = (a1 + 32);
  if (v9)
  {

    std::thread::join(v8);
  }
}

uint64_t **sub_24026CEBC(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (!v2)
  {
    return a1;
  }

  if (*(v2 + 80) == 1)
  {
    v3 = v2[9];
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        if ((*(v2 + 39) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }
  }

  if (*(v2 + 39) < 0)
  {
LABEL_6:
    operator delete(v2[2]);
  }

LABEL_7:
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    v5 = MEMORY[0x245CBC800]();
    MEMORY[0x245CBCA30](v5, 0x20C4093837F09);
  }

  MEMORY[0x245CBCA30](v2, 0x1032C40E68F9261);
  return a1;
}

void sub_24026CFA0(uint64_t *a1)
{
  v4 = a1;
  v25 = a1;
  v1 = std::__thread_local_data();
  v2 = *v4;
  *v4 = 0;
  pthread_setspecific(v1->__key_, v2);
  v3 = v4[1];
  sub_24026D34C(v3, (v4 + 2));
  v30 = (v3 + 40);
  v31 = 1;
  std::mutex::lock((v3 + 40));
  LODWORD(v4) = 60000;
  do
  {
    v5 = *(v3 + 24);
    if (!v5)
    {
      break;
    }

    v6 = std::__shared_weak_count::lock(v5);
    if (!v6)
    {
      break;
    }

    v7 = v6;
    v8 = *(v3 + 16);
    if (!v8 || (v9 = atomic_load((v3 + 8)), v9 == 1))
    {
      v10 = 0;
      goto LABEL_8;
    }

    v11 = atomic_load((v3 + 8));
    if (v11 == 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = v4;
    }

    v28 = 0;
    v29 = 0;
    if ((*(*v8 + 24))(v8, &v28, v4, &v30))
    {
      if ((v31 & 1) == 0)
      {
        std::__throw_system_error(1, "unique_lock::unlock: not locked");
LABEL_45:
        std::__throw_system_error(11, "unique_lock::lock: already locked");
LABEL_46:
        std::__throw_system_error(1, "unique_lock::lock: references null mutex");
        sub_24026D34C(v23, v24);
        return;
      }

      std::mutex::unlock(v30);
      v31 = 0;
      v12 = v28;
      v13 = *(v3 + 112);
      v26 = *(v3 + 104);
      v27 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v12 + 16))(v12, &v26);
      v14 = v27;
      if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      if (!v30)
      {
        goto LABEL_46;
      }

      if (v31 == 1)
      {
        goto LABEL_45;
      }

      std::mutex::lock(v30);
      v31 = 1;
    }

    else
    {
      v15 = atomic_load((v3 + 8));
      if (v15 == 2)
      {
        v10 = 0;
        v16 = v29;
        if (v29)
        {
          goto LABEL_27;
        }

        goto LABEL_8;
      }
    }

    v10 = 1;
    v16 = v29;
    if (v29)
    {
LABEL_27:
      if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }
    }

LABEL_8:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  while ((v10 & 1) != 0);
  if (v31 == 1)
  {
    std::mutex::unlock(v30);
  }

  if (*(v3 + 128) == 1)
  {
    v17 = *(v3 + 120);
    if (*(v17 + 56) == 1)
    {
      os_workgroup_leave(**v17, (v17 + 16));
      v18 = *(v3 + 120);
      *(v18 + 56) = 0;
      v19 = *(v18 + 8);
      *v18 = 0;
      *(v18 + 8) = 0;
      if (v19)
      {
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }
    }

    if (*(v3 + 128) == 1)
    {
      v20 = *(v3 + 120);
      if (v20)
      {
        v21 = *(v20 + 8);
        if (v21)
        {
          if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v22 = v20;
            (v21->__on_zero_shared)(v21);
            std::__shared_weak_count::__release_weak(v21);
            v20 = v22;
          }
        }

        MEMORY[0x245CBCA30](v20, 0x1020C407E10CFCBLL);
      }

      *(v3 + 128) = 0;
    }
  }

  sub_24026CEBC(&v25);
}

void sub_24026D34C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 8))
    {
      goto LABEL_7;
    }

    v4 = *a2;
    goto LABEL_6;
  }

  v4 = a2;
  if (*(a2 + 23))
  {
LABEL_6:
    pthread_setname_np(v4);
  }

LABEL_7:
  v5 = pthread_self();
  v16 = 0;
  if (!pthread_getschedparam(v5, &v16, &v17))
  {
    v6 = (a2 + 32);
    if (!*(a2 + 36))
    {
      v6 = &v17;
    }

    sched_priority = v6->sched_priority;
    v8 = (a2 + 24);
    if (!*(a2 + 28))
    {
      v8 = &v16;
    }

    v9 = *v8;
    v17.sched_priority = sched_priority;
    pthread_setschedparam(v5, v9, &v17);
  }

  if (*(a2 + 41) == 1)
  {
    if (*(a2 + 40) == 1)
    {
      pthread_set_fixedpriority_self();
    }

    else
    {
      pthread_set_timeshare_self();
    }
  }

  if (*(a2 + 64) == 1)
  {
    if (*(a1 + 128) == 1)
    {
      v10 = *(a1 + 120);
      if (*(v10 + 56) == 1)
      {
        os_workgroup_leave(**v10, (v10 + 16));
        v11 = *(a1 + 120);
        *(v11 + 56) = 0;
        v12 = *(v11 + 8);
        *v11 = 0;
        *(v11 + 8) = 0;
        if (v12)
        {
          if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }
        }
      }

      if (*(a1 + 128) == 1)
      {
        v13 = *(a1 + 120);
        if (v13)
        {
          v14 = *(v13 + 8);
          if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v15 = v13;
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
            v13 = v15;
          }

          MEMORY[0x245CBCA30](v13, 0x1020C407E10CFCBLL);
        }

        *(a1 + 128) = 0;
      }
    }

    if (*(a2 + 48))
    {
      operator new();
    }
  }
}

void sub_24026D6A0(uint64_t a1, int a2)
{
  v4 = **(a1 + 8);
  std::mutex::lock((v4 + 16));
  *(v4 + 128) = 1;
  std::mutex::unlock((v4 + 16));
  if ((a2 & 1) == 0)
  {
    (*(***(a1 + 8) + 48))(**(a1 + 8));
    (*(***(a1 + 8) + 40))(**(a1 + 8));
  }

  v5 = *(*(a1 + 8) + 24) - *(*(a1 + 8) + 16);
  if ((v5 >> 4) >= 1)
  {
    v6 = 0;
    v7 = (v5 >> 4) & 0x7FFFFFFF;
    do
    {
      sub_24026CDCC(*(*(*(a1 + 8) + 16) + v6), a2);
      v6 += 16;
      --v7;
    }

    while (v7);
  }
}

void sub_24026D7B4(uint64_t a1)
{
  sub_24026D7EC(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_24026D7EC(uint64_t a1)
{
  *a1 = &unk_2852282C8;
  v2 = **(a1 + 8);
  std::mutex::lock((v2 + 16));
  *(v2 + 128) = 1;
  std::mutex::unlock((v2 + 16));
  v3 = *(a1 + 8);
  v4 = *(v3 + 24) - *(v3 + 16);
  if ((v4 >> 4) >= 1)
  {
    v5 = 0;
    v6 = (v4 >> 4) & 0x7FFFFFFF;
    do
    {
      sub_24026CDCC(*(*(*(a1 + 8) + 16) + v5), 1);
      v5 += 16;
      --v6;
    }

    while (v6);
    v3 = *(a1 + 8);
    if (!v3)
    {
      return a1;
    }
  }

  if (*(v3 + 104) == 1)
  {
    v7 = *(v3 + 96);
    if (v7)
    {
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        if ((*(v3 + 63) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }
  }

  if (*(v3 + 63) < 0)
  {
LABEL_9:
    operator delete(*(v3 + 40));
  }

LABEL_10:
  v8 = *(v3 + 16);
  if (v8)
  {
    v9 = *(v3 + 24);
    v10 = *(v3 + 16);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 8);
        if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }

        v9 -= 16;
      }

      while (v9 != v8);
      v10 = *(v3 + 16);
    }

    *(v3 + 24) = v8;
    operator delete(v10);
  }

  v12 = *(v3 + 8);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  MEMORY[0x245CBCA30](v3, 0x1032C406B5009FBLL);
  return a1;
}

void sub_24026DA20(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226778;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_24026DABC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226708;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_24026E514(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v1 = *(a1 + 80);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a1;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        a1 = v5;
        if ((*(v5 + 47) & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }
  }

  if (*(a1 + 47) < 0)
  {
LABEL_5:
    v2 = a1;
    operator delete(*(a1 + 24));
    a1 = v2;
  }

LABEL_6:
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = a1;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a1 = v4;
  }

  operator delete(a1);
}

void sub_24026E614(uint64_t a1)
{
  if (*(a1 + 88) != 1 || (v2 = *(a1 + 80)) == 0 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    operator delete(*(a1 + 24));
    v3 = *(a1 + 16);
    if (!v3)
    {
      return;
    }

    goto LABEL_9;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (*(a1 + 47) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

LABEL_9:
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

char *sub_24026E70C(char *result, uint64_t a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  *a2 = &unk_285226E48;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (result[47] < 0)
  {
    result = sub_2401C2FCC((a2 + 24), *(result + 3), *(result + 4));
  }

  else
  {
    v6 = *(result + 24);
    *(a2 + 40) = *(result + 5);
    *(a2 + 24) = v6;
  }

  v7 = *(v3 + 3);
  *(a2 + 64) = *(v3 + 32);
  *(a2 + 48) = v7;
  *(a2 + 72) = 0;
  *(a2 + 88) = 0;
  if (v3[88] == 1)
  {
    v8 = *(v3 + 10);
    *(a2 + 72) = *(v3 + 9);
    *(a2 + 80) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *(a2 + 88) = 1;
  }

  return result;
}

void sub_24026E8B0(uint64_t a1)
{
  *a1 = &unk_285226E48;
  if (*(a1 + 88) == 1 && (v1 = *(a1 + 80)) != 0 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v4;
    if ((*(v4 + 47) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(a1 + 47) & 0x80000000) == 0)
  {
LABEL_6:
    v3 = *(a1 + 16);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    JUMPOUT(0x245CBCA30);
  }

  v2 = a1;
  operator delete(*(a1 + 24));
  a1 = v2;
  goto LABEL_6;
}

uint64_t sub_24026E9DC(uint64_t result)
{
  *result = &unk_285226E48;
  if (*(result + 88) != 1 || (v1 = *(result + 80)) == 0 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(result + 47) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = result;
  (v1->__on_zero_shared)(v1);
  std::__shared_weak_count::__release_weak(v1);
  result = v5;
  if (*(v5 + 47) < 0)
  {
LABEL_5:
    v2 = result;
    operator delete(*(result + 24));
    result = v2;
  }

LABEL_6:
  v3 = *(result + 16);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void cva::ItemHandler::createValue<std::string>()
{
    ;
  }
}

void cva::ItemHandler::createValue<BOOL>()
{
    ;
  }
}

void cva::ItemHandler::createValue<double>()
{
    ;
  }
}

void cva::ItemHandler::createValue<float>()
{
    ;
  }
}

void cva::ItemHandler::createValue<int>()
{
    ;
  }
}

void cva::ItemHandler::createValue<unsigned int>()
{
    ;
  }
}

void cva::ItemHandler::createMatrix<float>()
{
    ;
  }
}

void cva::ItemHandler::createVector<float>()
{
    ;
  }
}

void cva::ItemHandler::createVector<int>()
{
    ;
  }
}

void cva::ItemHandler::createVector<unsigned int>()
{
    ;
  }
}

uint64_t cva::ItemHandler::ItemHandler()
{
  return MEMORY[0x28214FDB0]();
}

{
  return MEMORY[0x28214FDB8]();
}

void cva::imageViewFromPixelBuffer<float>()
{
    ;
  }
}

void cva::imageViewFromPixelBuffer<unsigned char>()
{
    ;
  }
}

void cva::imageViewFromPixelBuffer<unsigned short>()
{
    ;
  }
}

void cva::createCVPixelBufferFromImageCopy<unsigned char>()
{
    ;
  }
}

void cva::VecLib<float>::gemm()
{
    ;
  }
}

void cva::ItemHandler::getValue<std::string>()
{
    ;
  }
}

void cva::ItemHandler::getValue<BOOL>()
{
    ;
  }
}

void cva::ItemHandler::getValue<double>()
{
    ;
  }
}

void cva::ItemHandler::getValue<float>()
{
    ;
  }
}

void cva::ItemHandler::getValue<int>()
{
    ;
  }
}

void cva::ItemHandler::getValue<unsigned int>()
{
    ;
  }
}

void cva::ItemHandler::getValue<unsigned long long>()
{
    ;
  }
}

void cva::ItemHandler::getMatrix<float>()
{
    ;
  }
}

void cva::ItemHandler::getVector<float>()
{
    ;
  }
}

void cva::ItemHandler::getVector<int>()
{
    ;
  }
}

uint64_t std::istream::seekg()
{
  return MEMORY[0x2821F77E0]();
}

{
  return MEMORY[0x2821F77E8]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
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

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float2x2 __invert_f2(simd_float2x2 a1)
{
  MEMORY[0x282204398](a1, *(&a1 + 8));
  result.columns[1] = v2;
  result.columns[0] = v1;
  return result;
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}